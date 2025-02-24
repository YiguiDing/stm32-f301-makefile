# 添加STM32F30x_DSP_StdPeriph_Lib_V1.3.0库

# 依赖关系: 
# 	1. 启动文件(startup_stm32f30x.s) <- 系统初始化文件(system_stm32f30x.c)
# 	2. 标准外设库(STM32F30x_StdPeriph_Driver) <- 外设寄存器描述(stm32f30x.h) <- 内核寄存器描述(core_cm4.h)

# ################################################################# ASM sources ################################################################# 
# 启动文件: startup_stm32f30x.s
ASM_SOURCES += library/STM32F30x_DSP_StdPeriph_Lib_V1.3.0/Libraries/CMSIS/Device/ST/STM32F30x/Source/Templates/gcc_ride7/startup_stm32f30x.s
# ################################################################# C sources ################################################################# 
# 系统初始化文件: system_stm32f30x.c
C_SOURCES += library/STM32F30x_DSP_StdPeriph_Lib_V1.3.0/Libraries/CMSIS/Device/ST/STM32F30x/Source/Templates/system_stm32f30x.c
# 标准外设库: stm32f30x_gpio.c
C_SOURCES += $(wildcard library/STM32F30x_DSP_StdPeriph_Lib_V1.3.0/Libraries/STM32F30x_StdPeriph_Driver/src/*.c)
# DSP库：
C_SOURCES += $(wildcard library/STM32F30x_DSP_StdPeriph_Lib_V1.3.0/Libraries/CMSIS/DSP_Lib/Source/CommonTables/*.c) # sin/cos表
C_SOURCES += $(wildcard library/STM32F30x_DSP_StdPeriph_Lib_V1.3.0/Libraries/CMSIS/DSP_Lib/Source/FastMathFunctions/*.c) # sin() and cos()
# C_SOURCES += $(wildcard library/STM32F30x_DSP_StdPeriph_Lib_V1.3.0/Libraries/CMSIS/DSP_Lib/Source/BasicMathFunctions/*.c) # 基本运算：加减乘除
# ################################################################# CPP sources ################################################################# 
CPP_SOURCES += 
# ################################################################# C/CPP header ################################################################# 
# 系统初始化头文件: system_stm32f30x.h
# 外设寄存器描述: stm32f30x.h
C_CPP_INCLUDES += -I library/STM32F30x_DSP_StdPeriph_Lib_V1.3.0/Libraries/CMSIS/Device/ST/STM32F30x/Include/
# 内核寄存器描述: core_cm4.h core_cmInstr.h core_cmFunc.h core_cmSimd.h
# DSP库：arm_math.h
C_CPP_INCLUDES += -I library/STM32F30x_DSP_StdPeriph_Lib_V1.3.0/Libraries/CMSIS/Include/
# 标准外设库: stm32f30x_gpio.h
C_CPP_INCLUDES += -I library/STM32F30x_DSP_StdPeriph_Lib_V1.3.0/Libraries/STM32F30x_StdPeriph_Driver/inc
# ################################################################# LD_SCRIPT ################################################################# 
LD_SCRIPT += library/STM32F30x_DSP_StdPeriph_Lib_V1.3.0/Projects/STM32F30x_StdPeriph_Templates/TrueSTUDIO/STM32F302x8/STM32F302R8_FLASH.ld