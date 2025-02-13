#include "stm32f30x.h"
#include "delay.h"

int main(void)
{
    // 1. 启用APB_GPIOC外设时钟
    RCC_AHBPeriphClockCmd(RCC_AHBPeriph_GPIOC, ENABLE);
    // 2. 初始化GPIOC_13 为上拉输出、速度50MHz
    GPIO_InitTypeDef GPIO_InitStruct = {GPIO_Pin_13, GPIO_Mode_OUT, GPIO_Speed_Level_3, GPIO_PuPd_UP};
    GPIO_Init(GPIOC, &GPIO_InitStruct);
    // 3.设置输出低电平
    // GPIO_WriteBit(GPIOC, GPIO_Pin_13, 1); // 灭
    // GPIO_WriteBit(GPIOC, GPIO_Pin_13, 0); // 亮
    while (1)
    {
        GPIO_WriteBit(GPIOC, GPIO_Pin_13, Bit_SET);
        Delay_ms(500);
        GPIO_WriteBit(GPIOC, GPIO_Pin_13, Bit_RESET);
        Delay_ms(500);
    }
}