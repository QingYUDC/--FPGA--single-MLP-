import torch
import os
import numpy as np

# 1. 必须包含和你训练时一模一样的网络类结构，否则无法加载模型
class Net(torch.nn.Module):
    def __init__(self):
        super(Net,self).__init__()
        self.model = torch.nn.Sequential(
            #The size of the picture is 28x28
            torch.nn.Conv2d(in_channels = 1,out_channels = 16,kernel_size = 3,stride = 1,padding = 1),
            torch.nn.ReLU(),
            torch.nn.MaxPool2d(kernel_size = 2,stride = 2),
            
            #The size of the picture is 14x14
            torch.nn.Conv2d(in_channels = 16,out_channels = 32,kernel_size = 3,stride = 1,padding = 1),
            torch.nn.ReLU(),
            torch.nn.MaxPool2d(kernel_size = 2,stride = 2),
            
            #The size of the picture is 7x7
            torch.nn.Conv2d(in_channels = 32,out_channels = 64,kernel_size = 3,stride = 1,padding = 1),
            torch.nn.ReLU(),
            
            torch.nn.Flatten(),
            torch.nn.Linear(in_features = 7 * 7 * 64,out_features = 128),
            torch.nn.ReLU(),
            torch.nn.Linear(in_features = 128,out_features = 10),
            torch.nn.Softmax(dim=1)
        )
        
    def forward(self,input):
        output = self.model(input)
        return output

# ================= 配置参数 =================
# 你的模型存放路径
MODEL_PATH = r"D:\MINIST手写数字识别\my_model\trained_model.pth"
# 输出的 .mem 文件存放目录
OUTPUT_DIR = r"D:\MINIST手写数字识别\my_model\fpga_mem"

SCALE_FACTOR = 256.0  # 定点化放大倍数：256相当于小数点后保留8位 (Q8.8格式)
BIT_WIDTH = 16        # 在FPGA中打算用多少位的寄存器存权重 (常用 8, 16, 32)
# ============================================

def float_to_hex(f_val, scale, bits):
    """将浮点数转为定点数，并格式化为Verilog支持的十六进制补码"""
    # 1. 放大并四舍五入转为整数
    int_val = int(round(f_val * scale))
    
    # 2. 限制在位宽表示范围内 (防溢出)
    max_val = (1 << (bits - 1)) - 1  # 比如16位最大为 32767
    min_val = -(1 << (bits - 1))     # 比如16位最小为 -32768
    if int_val > max_val: int_val = max_val
    if int_val < min_val: int_val = min_val
        
    # 3. 计算负数的二进制补码
    if int_val < 0:
        int_val = (1 << bits) + int_val
        
    # 4. 格式化为十六进制，去掉前缀'0x'，并补齐前导0
    hex_format = f"{{:0{bits//4}x}}"
    return hex_format.format(int_val)

if __name__ == "__main__":
    os.makedirs(OUTPUT_DIR, exist_ok=True)
    
    # 2. 加载模型 (强制映射到CPU，避免没有GPU时报错)
    model = torch.load(MODEL_PATH, map_location=torch.device('cpu'), weights_only=False)
    model.eval()
    
    # 3. 提取所有层的权重和偏置
    state_dict = model.state_dict()
    
    for layer_name, tensor in state_dict.items():
        # 将 PyTorch 张量展平为 1 维 NumPy 数组
        # 展平规则：PyTorch对于Conv2d权重的内存顺序是 [out_channel, in_channel, H, W]
        flat_data = tensor.detach().cpu().numpy().flatten()
        
        # 处理文件名，把点替换为下划线 (例如 model.0.weight 变成 model_0_weight.mem)
        safe_name = layer_name.replace(".", "_")
        filename = os.path.join(OUTPUT_DIR, f"{safe_name}.mem")
        
        # 4. 写入 .mem 文件
        with open(filename, "w") as f:
            for val in flat_data:
                hex_str = float_to_hex(val, SCALE_FACTOR, BIT_WIDTH)
                f.write(hex_str + "\n")
                
        print(f"✅ 成功导出: {safe_name}.mem | 包含数据个数: {len(flat_data)}")

    print(f"\n🎉 恭喜！所有矩阵已全部转换为16位定点十六进制 .mem 文件。")
    print(f"文件保存在：{OUTPUT_DIR}")