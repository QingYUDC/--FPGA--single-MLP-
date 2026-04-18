/******************************************************************************
 * main.c
 * MNIST LED 识别测试程序（ZedBoard）
 * 功能：循环把 10 张测试图片写入 FPGA，PL 自动计算并直接点亮对应 LED
 * LED 结果会一直保持，直到输入下一张图片
 ******************************************************************************/

#include "xparameters.h"
#include "xil_io.h"
#include "xil_printf.h"
#include "sleep.h"
#include "test_images.h"      // 你的测试图片数组

// IP 基地址（Vitis 自动生成，不要手动修改）
#define IP_BASE XPAR_MNIST_LED_IP_0_S00_AXI_BASEADDR

int main() {
    xil_printf("\r\n=== MNIST LED 识别系统启动 ===\r\n");
    xil_printf("PS 只负责喂图片，PL 自动计算并驱动 LED\r\n\n");

    while(1) {   // 无限循环演示
        for(int img = 0; img < 10; img++) {
            
            // ================== 1. 写入一张图片（784 个像素） ==================
            for(int i = 0; i < 784; i++) {
                Xil_Out8(IP_BASE + i*4, test_images[img][i]);   // 地址 4 字节对齐，只用低 8 位
            }

            xil_printf("已输入第 %d 张图片 (真实标签: %d) → LED 应立即亮起并保持\r\n", 
                       img, test_labels[img]);

            // 等待 4 秒，让你清楚看到 LED 保持亮的状态
            sleep(4);
        }
        
        xil_printf("\r\n=== 一轮演示完成，重新开始 ===\r\n\n");
    }

    return 0;
}