; ModuleID = './main.elf.bc'
source_filename = "llvm-link"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "thumbv7m-none-unknown-eabi"

%struct.avm_module_s = type { i16, i32*, i8 (i8*)*, i8 ()*, i8 ()* }
%struct.SixAxis = type { float, float, float, float, float, float }
%struct.pid_st = type { float, float, float*, float*, float, float, float, float, i16, i16*, i16* }

@_estack = external dso_local global i32, align 4
@g_pfnVectors = dso_local local_unnamed_addr constant [120 x void ()*] [void ()* bitcast (i32* @_estack to void ()*), void ()* @Reset_Handler, void ()* @NMI_Handler, void ()* @HardFault_Handler, void ()* @MemManage_Handler, void ()* @BusFault_Handler, void ()* @UsageFault_Handler, void ()* null, void ()* null, void ()* null, void ()* null, void ()* @SVC_Handler, void ()* @DebugMon_Handler, void ()* null, void ()* @PendSV_Handler, void ()* @SysTick_Handler, void ()* @WWDG_IRQHandler, void ()* @PVD_IRQHandler, void ()* @TAMPER_IRQHandler, void ()* @RTC_IRQHandler, void ()* @FLASH_IRQHandler, void ()* @RCC_IRQHandler, void ()* @EXTI0_IRQHandler, void ()* @EXTI1_IRQHandler, void ()* @EXTI2_IRQHandler, void ()* @EXTI3_IRQHandler, void ()* @EXTI4_IRQHandler, void ()* @DMA1_Channel1_IRQHandler, void ()* @DMA1_Channel2_IRQHandler, void ()* @DMA1_Channel3_IRQHandler, void ()* @DMA1_Channel4_IRQHandler, void ()* @DMA1_Channel5_IRQHandler, void ()* @DMA1_Channel6_IRQHandler, void ()* @DMA1_Channel7_IRQHandler, void ()* @ADC1_2_IRQHandler, void ()* @USB_HP_CAN1_TX_IRQHandler, void ()* @USB_LP_CAN1_RX0_IRQHandler, void ()* @CAN1_RX1_IRQHandler, void ()* @CAN1_SCE_IRQHandler, void ()* @EXTI9_5_IRQHandler, void ()* @TIM1_BRK_IRQHandler, void ()* @TIM1_UP_IRQHandler, void ()* @TIM1_TRG_COM_IRQHandler, void ()* @TIM1_CC_IRQHandler, void ()* @TIM2_IRQHandler, void ()* @TIM3_IRQHandler, void ()* @TIM4_IRQHandler, void ()* @I2C1_EV_IRQHandler, void ()* @I2C1_ER_IRQHandler, void ()* @I2C2_EV_IRQHandler, void ()* @I2C2_ER_IRQHandler, void ()* @SPI1_IRQHandler, void ()* @SPI2_IRQHandler, void ()* @USART1_IRQHandler, void ()* @USART2_IRQHandler, void ()* @USART3_IRQHandler, void ()* @EXTI15_10_IRQHandler, void ()* @RTCAlarm_IRQHandler, void ()* @USBWakeUp_IRQHandler, void ()* @TIM8_BRK_IRQHandler, void ()* @TIM8_UP_IRQHandler, void ()* @TIM8_TRG_COM_IRQHandler, void ()* @TIM8_CC_IRQHandler, void ()* @ADC3_IRQHandler, void ()* @FSMC_IRQHandler, void ()* @SDIO_IRQHandler, void ()* @TIM5_IRQHandler, void ()* @SPI3_IRQHandler, void ()* @UART4_IRQHandler, void ()* @UART5_IRQHandler, void ()* @TIM6_IRQHandler, void ()* @TIM7_IRQHandler, void ()* @DMA2_Channel1_IRQHandler, void ()* @DMA2_Channel2_IRQHandler, void ()* @DMA2_Channel3_IRQHandler, void ()* @DMA2_Channel4_5_IRQHandler, void ()* null, void ()* null, void ()* null, void ()* null, void ()* null, void ()* null, void ()* null, void ()* null, void ()* null, void ()* null, void ()* null, void ()* null, void ()* null, void ()* null, void ()* null, void ()* null, void ()* null, void ()* null, void ()* null, void ()* null, void ()* null, void ()* null, void ()* null, void ()* null, void ()* null, void ()* null, void ()* null, void ()* null, void ()* null, void ()* null, void ()* null, void ()* null, void ()* null, void ()* null, void ()* null, void ()* null, void ()* null, void ()* null, void ()* null, void ()* null, void ()* null, void ()* null, void ()* null, void ()* inttoptr (i32 -236914593 to void ()*)], section ".isr_vectors", align 4, !dbg !0
@_sidata = external dso_local local_unnamed_addr global i32, align 4
@_sdata = external dso_local global i32, align 4
@_edata = external dso_local global i32, align 4
@_sbss = external dso_local global i32, align 4
@_ebss = external dso_local global i32, align 4
@_isr_vectors_offs = external dso_local global i32, align 4
@SystemCoreClock = dso_local local_unnamed_addr global i32 72000000, align 4, !dbg !65
@AHBPrescTable = dso_local constant [16 x i8] c"\00\00\00\00\00\00\00\00\01\02\03\04\06\07\08\09", align 1, !dbg !133
@avm_core_module_st = dso_local global %struct.avm_module_s { i16 0, i32* null, i8 (i8*)* @avm_core_init, i8 ()* null, i8 ()* null }, align 4, !dbg !140
@avm_modules_pool = dso_local local_unnamed_addr global [6 x %struct.avm_module_s*] [%struct.avm_module_s* @avm_core_module_st, %struct.avm_module_s* @avm_uart_module_st, %struct.avm_module_s* @avm_i2c_module_st, %struct.avm_module_s* @avm_motor_module_st, %struct.avm_module_s* @avm_mpu_module_st, %struct.avm_module_s* null], align 4, !dbg !182
@avm_core_init.avm_modules_num = internal global i8 0, align 1, !dbg !204
@avm_i2c_module_st = dso_local global %struct.avm_module_s { i16 0, i32* null, i8 (i8*)* @avm_i2c_init, i8 ()* null, i8 ()* null }, align 4, !dbg !212
@avm_motor_module_st = dso_local global %struct.avm_module_s { i16 0, i32* null, i8 (i8*)* @avm_motor_init, i8 ()* null, i8 ()* null }, align 4, !dbg !256
@avm_mpu_module_st = dso_local global %struct.avm_module_s { i16 0, i32* null, i8 (i8*)* @avm_mpu_init, i8 ()* null, i8 ()* null }, align 4, !dbg !341
@IMU_Comput.g_q0 = internal unnamed_addr global float 1.000000e+00, align 4, !dbg !349
@IMU_Comput.g_q1 = internal unnamed_addr global float 0.000000e+00, align 4, !dbg !374
@IMU_Comput.g_q2 = internal unnamed_addr global float 0.000000e+00, align 4, !dbg !376
@IMU_Comput.g_q3 = internal unnamed_addr global float 0.000000e+00, align 4, !dbg !378
@IMU_Comput.g_exInt = internal unnamed_addr global float 0.000000e+00, align 4, !dbg !380
@IMU_Comput.g_eyInt = internal unnamed_addr global float 0.000000e+00, align 4, !dbg !382
@IMU_Comput.g_ezInt = internal unnamed_addr global float 0.000000e+00, align 4, !dbg !384
@avm_uart_conf = internal global [2 x i32] [i32 72, i32 115200], align 4, !dbg !402
@avm_uart_module_st = dso_local global %struct.avm_module_s { i16 0, i32* getelementptr inbounds ([2 x i32], [2 x i32]* @avm_uart_conf, i32 0, i32 0), i8 (i8*)* @avm_uart_init, i8 ()* null, i8 ()* null }, align 4, !dbg !581
@g_Pitch = dso_local local_unnamed_addr global float 0.000000e+00, align 4, !dbg !388
@.str = private unnamed_addr constant [2 x i8] c"@\00", align 1
@g_Yaw = dso_local local_unnamed_addr global float 0.000000e+00, align 4, !dbg !386
@.str.1 = private unnamed_addr constant [3 x i8] c"\0A\0D\00", align 1
@.str.2 = private unnamed_addr constant [22 x i8] c"Running bootloader...\00", align 1
@__const.uart_short2char.cache = private unnamed_addr constant [6 x i8] c"00000\00", align 1
@__const.uart_int2char.cache = private unnamed_addr constant [11 x i8] c"0000000000\00", align 1
@g_Roll = dso_local global float 0.000000e+00, align 4, !dbg !390
@avm_euler = dso_local global %struct.SixAxis zeroinitializer, align 4, !dbg !392
@avm_pid = dso_local global %struct.pid_st { float 0.000000e+00, float 0.000000e+00, float* @g_Roll, float* getelementptr inbounds (%struct.SixAxis, %struct.SixAxis* @avm_euler, i32 0, i32 0), float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, i16 0, i16* inttoptr (i32 1073742904 to i16*), i16* inttoptr (i32 1073742912 to i16*) }, align 4, !dbg !593

@MemManage_Handler = weak dso_local alias void (), void ()* @Default_Handler
@BusFault_Handler = weak dso_local alias void (), void ()* @Default_Handler
@UsageFault_Handler = weak dso_local alias void (), void ()* @Default_Handler
@SVC_Handler = weak dso_local alias void (), void ()* @Default_Handler
@DebugMon_Handler = weak dso_local alias void (), void ()* @Default_Handler
@PendSV_Handler = weak dso_local alias void (), void ()* @Default_Handler
@SysTick_Handler = weak dso_local alias void (), void ()* @Default_Handler
@WWDG_IRQHandler = weak dso_local alias void (), void ()* @Default_Handler
@PVD_IRQHandler = weak dso_local alias void (), void ()* @Default_Handler
@TAMPER_IRQHandler = weak dso_local alias void (), void ()* @Default_Handler
@RTC_IRQHandler = weak dso_local alias void (), void ()* @Default_Handler
@FLASH_IRQHandler = weak dso_local alias void (), void ()* @Default_Handler
@RCC_IRQHandler = weak dso_local alias void (), void ()* @Default_Handler
@EXTI0_IRQHandler = weak dso_local alias void (), void ()* @Default_Handler
@EXTI1_IRQHandler = weak dso_local alias void (), void ()* @Default_Handler
@EXTI2_IRQHandler = weak dso_local alias void (), void ()* @Default_Handler
@EXTI3_IRQHandler = weak dso_local alias void (), void ()* @Default_Handler
@EXTI4_IRQHandler = weak dso_local alias void (), void ()* @Default_Handler
@DMA1_Channel1_IRQHandler = weak dso_local alias void (), void ()* @Default_Handler
@DMA1_Channel2_IRQHandler = weak dso_local alias void (), void ()* @Default_Handler
@DMA1_Channel3_IRQHandler = weak dso_local alias void (), void ()* @Default_Handler
@DMA1_Channel4_IRQHandler = weak dso_local alias void (), void ()* @Default_Handler
@DMA1_Channel5_IRQHandler = weak dso_local alias void (), void ()* @Default_Handler
@DMA1_Channel6_IRQHandler = weak dso_local alias void (), void ()* @Default_Handler
@DMA1_Channel7_IRQHandler = weak dso_local alias void (), void ()* @Default_Handler
@ADC1_2_IRQHandler = weak dso_local alias void (), void ()* @Default_Handler
@USB_HP_CAN1_TX_IRQHandler = weak dso_local alias void (), void ()* @Default_Handler
@USB_LP_CAN1_RX0_IRQHandler = weak dso_local alias void (), void ()* @Default_Handler
@CAN1_RX1_IRQHandler = weak dso_local alias void (), void ()* @Default_Handler
@CAN1_SCE_IRQHandler = weak dso_local alias void (), void ()* @Default_Handler
@EXTI9_5_IRQHandler = weak dso_local alias void (), void ()* @Default_Handler
@TIM1_BRK_IRQHandler = weak dso_local alias void (), void ()* @Default_Handler
@TIM1_UP_IRQHandler = weak dso_local alias void (), void ()* @Default_Handler
@TIM1_TRG_COM_IRQHandler = weak dso_local alias void (), void ()* @Default_Handler
@TIM1_CC_IRQHandler = weak dso_local alias void (), void ()* @Default_Handler
@TIM2_IRQHandler = weak dso_local alias void (), void ()* @Default_Handler
@TIM3_IRQHandler = weak dso_local alias void (), void ()* @Default_Handler
@TIM4_IRQHandler = weak dso_local alias void (), void ()* @Default_Handler
@I2C1_EV_IRQHandler = weak dso_local alias void (), void ()* @Default_Handler
@I2C1_ER_IRQHandler = weak dso_local alias void (), void ()* @Default_Handler
@I2C2_EV_IRQHandler = weak dso_local alias void (), void ()* @Default_Handler
@I2C2_ER_IRQHandler = weak dso_local alias void (), void ()* @Default_Handler
@SPI1_IRQHandler = weak dso_local alias void (), void ()* @Default_Handler
@SPI2_IRQHandler = weak dso_local alias void (), void ()* @Default_Handler
@USART2_IRQHandler = weak dso_local alias void (), void ()* @Default_Handler
@USART3_IRQHandler = weak dso_local alias void (), void ()* @Default_Handler
@EXTI15_10_IRQHandler = weak dso_local alias void (), void ()* @Default_Handler
@RTCAlarm_IRQHandler = weak dso_local alias void (), void ()* @Default_Handler
@USBWakeUp_IRQHandler = weak dso_local alias void (), void ()* @Default_Handler
@TIM8_BRK_IRQHandler = weak dso_local alias void (), void ()* @Default_Handler
@TIM8_UP_IRQHandler = weak dso_local alias void (), void ()* @Default_Handler
@TIM8_TRG_COM_IRQHandler = weak dso_local alias void (), void ()* @Default_Handler
@TIM8_CC_IRQHandler = weak dso_local alias void (), void ()* @Default_Handler
@ADC3_IRQHandler = weak dso_local alias void (), void ()* @Default_Handler
@FSMC_IRQHandler = weak dso_local alias void (), void ()* @Default_Handler
@SDIO_IRQHandler = weak dso_local alias void (), void ()* @Default_Handler
@TIM5_IRQHandler = weak dso_local alias void (), void ()* @Default_Handler
@SPI3_IRQHandler = weak dso_local alias void (), void ()* @Default_Handler
@UART4_IRQHandler = weak dso_local alias void (), void ()* @Default_Handler
@UART5_IRQHandler = weak dso_local alias void (), void ()* @Default_Handler
@TIM6_IRQHandler = weak dso_local alias void (), void ()* @Default_Handler
@TIM7_IRQHandler = weak dso_local alias void (), void ()* @Default_Handler
@DMA2_Channel1_IRQHandler = weak dso_local alias void (), void ()* @Default_Handler
@DMA2_Channel2_IRQHandler = weak dso_local alias void (), void ()* @Default_Handler
@DMA2_Channel3_IRQHandler = weak dso_local alias void (), void ()* @Default_Handler
@DMA2_Channel4_5_IRQHandler = weak dso_local alias void (), void ()* @Default_Handler
@MMI_Handler = weak dso_local alias void (), void ()* @Default_Handler

; Function Attrs: noinline noreturn nounwind alignstack(8)
define dso_local void @Reset_Handler() #0 !dbg !630 {
  tail call void @__Init_Data(), !dbg !632
  store volatile i32 or (i32 and (i32 ptrtoint (i32* @_isr_vectors_offs to i32), i32 536870784), i32 134217728), i32* inttoptr (i32 -536810232 to i32*), align 8, !dbg !633, !tbaa !634
  tail call void @SystemInit() #15, !dbg !639
  %1 = tail call i32 @main() #15, !dbg !640
  br label %2, !dbg !641

2:                                                ; preds = %2, %0
  br label %2, !dbg !641, !llvm.loop !642
}

declare extern_weak dso_local void @NMI_Handler() #1

declare extern_weak dso_local void @HardFault_Handler() #1

; Function Attrs: nofree noinline norecurse noreturn nosync nounwind readnone
define dso_local void @Default_Handler() #2 !dbg !644 {
  br label %1, !dbg !645

1:                                                ; preds = %1, %0
  br label %1, !dbg !645, !llvm.loop !646
}

; Function Attrs: nofree noinline norecurse nosync nounwind
define dso_local void @__Init_Data() local_unnamed_addr #3 !dbg !648 {
  call void @llvm.dbg.value(metadata i32* @_sidata, metadata !650, metadata !DIExpression()), !dbg !653
  call void @llvm.dbg.value(metadata i32* @_sdata, metadata !652, metadata !DIExpression()), !dbg !653
  br i1 icmp ult (i32* @_sdata, i32* @_edata), label %1, label %5, !dbg !654

1:                                                ; preds = %0
  %2 = call i32 @llvm.umax.i32(i32 ptrtoint (i32* @_edata to i32), i32 add (i32 ptrtoint (i32* @_sdata to i32), i32 4)), !dbg !655
  %3 = add i32 %2, add (i32 xor (i32 ptrtoint (i32* @_sdata to i32), i32 -1), i32 4), !dbg !655
  %4 = and i32 %3, -4, !dbg !655
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* align 4 bitcast (i32* @_sdata to i8*), i8* align 4 bitcast (i32* @_sidata to i8*), i32 %4, i1 false), !dbg !657, !tbaa !658
  call void @llvm.dbg.value(metadata i32 undef, metadata !652, metadata !DIExpression()), !dbg !653
  call void @llvm.dbg.value(metadata i32 undef, metadata !650, metadata !DIExpression()), !dbg !653
  call void @llvm.dbg.value(metadata i32 undef, metadata !650, metadata !DIExpression(DW_OP_plus_uconst, 4, DW_OP_stack_value)), !dbg !653
  call void @llvm.dbg.value(metadata i32 undef, metadata !652, metadata !DIExpression(DW_OP_plus_uconst, 4, DW_OP_stack_value)), !dbg !653
  br label %5, !dbg !660

5:                                                ; preds = %1, %0
  call void @llvm.dbg.value(metadata i32* @_sbss, metadata !652, metadata !DIExpression()), !dbg !653
  br i1 icmp ult (i32* @_sbss, i32* @_ebss), label %6, label %10, !dbg !660

6:                                                ; preds = %5
  %7 = call i32 @llvm.umax.i32(i32 ptrtoint (i32* @_ebss to i32), i32 add (i32 ptrtoint (i32* @_sbss to i32), i32 4)), !dbg !660
  %8 = add i32 %7, add (i32 xor (i32 ptrtoint (i32* @_sbss to i32), i32 -1), i32 4), !dbg !660
  %9 = and i32 %8, -4, !dbg !660
  call void @llvm.memset.p0i8.i32(i8* align 4 bitcast (i32* @_sbss to i8*), i8 0, i32 %9, i1 false), !dbg !661, !tbaa !658
  call void @llvm.dbg.value(metadata i32 undef, metadata !652, metadata !DIExpression()), !dbg !653
  call void @llvm.dbg.value(metadata i32 undef, metadata !652, metadata !DIExpression(DW_OP_plus_uconst, 4, DW_OP_stack_value)), !dbg !653
  br label %10, !dbg !662

10:                                               ; preds = %6, %5
  ret void, !dbg !662
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.value(metadata, metadata, metadata) #4

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umax.i32(i32, i32) #4

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i32(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i32, i1 immarg) #5

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0i8.i32(i8* nocapture writeonly, i8, i32, i1 immarg) #6

; Function Attrs: noinline noreturn nounwind
define dso_local i32 @main() local_unnamed_addr #7 !dbg !663 {
  %1 = load i8 (i8*)*, i8 (i8*)** getelementptr inbounds (%struct.avm_module_s, %struct.avm_module_s* @avm_core_module_st, i32 0, i32 2), align 4, !dbg !666, !tbaa !667
  %2 = tail call zeroext i8 %1(i8* noundef null) #15, !dbg !671
  br label %3, !dbg !672

3:                                                ; preds = %3, %0
  br label %3, !dbg !672, !llvm.loop !673
}

; Function Attrs: nofree noinline nounwind
define dso_local void @SystemInit() local_unnamed_addr #8 !dbg !675 {
  %1 = load volatile i32, i32* inttoptr (i32 1073876992 to i32*), align 4096, !dbg !676, !tbaa !677
  %2 = or i32 %1, 1, !dbg !676
  store volatile i32 %2, i32* inttoptr (i32 1073876992 to i32*), align 4096, !dbg !676, !tbaa !677
  %3 = load volatile i32, i32* inttoptr (i32 1073876996 to i32*), align 4, !dbg !679, !tbaa !680
  %4 = and i32 %3, -117506048, !dbg !679
  store volatile i32 %4, i32* inttoptr (i32 1073876996 to i32*), align 4, !dbg !679, !tbaa !680
  %5 = load volatile i32, i32* inttoptr (i32 1073876992 to i32*), align 4096, !dbg !681, !tbaa !677
  %6 = and i32 %5, -17367041, !dbg !681
  store volatile i32 %6, i32* inttoptr (i32 1073876992 to i32*), align 4096, !dbg !681, !tbaa !677
  %7 = load volatile i32, i32* inttoptr (i32 1073876992 to i32*), align 4096, !dbg !682, !tbaa !677
  %8 = and i32 %7, -262145, !dbg !682
  store volatile i32 %8, i32* inttoptr (i32 1073876992 to i32*), align 4096, !dbg !682, !tbaa !677
  %9 = load volatile i32, i32* inttoptr (i32 1073876996 to i32*), align 4, !dbg !683, !tbaa !680
  %10 = and i32 %9, -8323073, !dbg !683
  store volatile i32 %10, i32* inttoptr (i32 1073876996 to i32*), align 4, !dbg !683, !tbaa !680
  store volatile i32 10420224, i32* inttoptr (i32 1073877000 to i32*), align 8, !dbg !684, !tbaa !685
  tail call fastcc void @SetSysClock(), !dbg !686
  store volatile i32 134217728, i32* inttoptr (i32 -536810232 to i32*), align 8, !dbg !687, !tbaa !634
  ret void, !dbg !688
}

; Function Attrs: nofree noinline nounwind
define internal fastcc void @SetSysClock() unnamed_addr #8 !dbg !689 {
  tail call fastcc void @SetSysClockTo72(), !dbg !690
  ret void, !dbg !691
}

; Function Attrs: nofree noinline nounwind
define internal fastcc void @SetSysClockTo72() unnamed_addr #8 !dbg !692 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = bitcast i32* %1 to i8*, !dbg !696
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %3), !dbg !696
  call void @llvm.dbg.declare(metadata i32* %1, metadata !694, metadata !DIExpression()), !dbg !697
  store volatile i32 0, i32* %1, align 4, !dbg !697, !tbaa !698
  %4 = bitcast i32* %2 to i8*, !dbg !696
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %4), !dbg !696
  call void @llvm.dbg.declare(metadata i32* %2, metadata !695, metadata !DIExpression()), !dbg !699
  store volatile i32 0, i32* %2, align 4, !dbg !699, !tbaa !698
  %5 = load volatile i32, i32* inttoptr (i32 1073876992 to i32*), align 4096, !dbg !700, !tbaa !677
  %6 = or i32 %5, 65536, !dbg !700
  store volatile i32 %6, i32* inttoptr (i32 1073876992 to i32*), align 4096, !dbg !700, !tbaa !677
  br label %7, !dbg !701

7:                                                ; preds = %14, %0
  %8 = load volatile i32, i32* inttoptr (i32 1073876992 to i32*), align 4096, !dbg !702, !tbaa !677
  %9 = and i32 %8, 131072, !dbg !704
  store volatile i32 %9, i32* %2, align 4, !dbg !705, !tbaa !698
  %10 = load volatile i32, i32* %1, align 4, !dbg !706, !tbaa !698
  %11 = add i32 %10, 1, !dbg !706
  store volatile i32 %11, i32* %1, align 4, !dbg !706, !tbaa !698
  %12 = load volatile i32, i32* %2, align 4, !dbg !707, !tbaa !698
  %13 = icmp eq i32 %12, 0, !dbg !708
  br i1 %13, label %14, label %17, !dbg !709

14:                                               ; preds = %7
  %15 = load volatile i32, i32* %1, align 4, !dbg !710, !tbaa !698
  %16 = icmp eq i32 %15, 1280, !dbg !711
  br i1 %16, label %17, label %7, !dbg !712, !llvm.loop !713

17:                                               ; preds = %7, %14
  %18 = load volatile i32, i32* inttoptr (i32 1073876992 to i32*), align 4096, !dbg !715, !tbaa !677
  %19 = and i32 %18, 131072, !dbg !717
  %20 = icmp eq i32 %19, 0, !dbg !718
  br i1 %20, label %22, label %21, !dbg !719

21:                                               ; preds = %17
  store volatile i32 1, i32* %2, align 4, !dbg !720, !tbaa !698
  br label %23, !dbg !722

22:                                               ; preds = %17
  store volatile i32 0, i32* %2, align 4, !dbg !723, !tbaa !698
  br label %23

23:                                               ; preds = %22, %21
  %24 = load volatile i32, i32* %2, align 4, !dbg !725, !tbaa !698
  %25 = icmp eq i32 %24, 1, !dbg !727
  br i1 %25, label %26, label %80, !dbg !728

26:                                               ; preds = %23
  %27 = load volatile i32, i32* inttoptr (i32 1073881088 to i32*), align 8192, !dbg !729, !tbaa !731
  %28 = or i32 %27, 16, !dbg !729
  store volatile i32 %28, i32* inttoptr (i32 1073881088 to i32*), align 8192, !dbg !729, !tbaa !731
  %29 = load volatile i32, i32* inttoptr (i32 1073881088 to i32*), align 8192, !dbg !733, !tbaa !731
  %30 = and i32 %29, -4, !dbg !733
  store volatile i32 %30, i32* inttoptr (i32 1073881088 to i32*), align 8192, !dbg !733, !tbaa !731
  %31 = load volatile i32, i32* inttoptr (i32 1073881088 to i32*), align 8192, !dbg !734, !tbaa !731
  %32 = or i32 %31, 2, !dbg !734
  store volatile i32 %32, i32* inttoptr (i32 1073881088 to i32*), align 8192, !dbg !734, !tbaa !731
  %33 = load volatile i32, i32* inttoptr (i32 1073876996 to i32*), align 4, !dbg !735, !tbaa !680
  store volatile i32 %33, i32* inttoptr (i32 1073876996 to i32*), align 4, !dbg !735, !tbaa !680
  %34 = load volatile i32, i32* inttoptr (i32 1073876996 to i32*), align 4, !dbg !736, !tbaa !680
  store volatile i32 %34, i32* inttoptr (i32 1073876996 to i32*), align 4, !dbg !736, !tbaa !680
  %35 = load volatile i32, i32* inttoptr (i32 1073876996 to i32*), align 4, !dbg !737, !tbaa !680
  %36 = or i32 %35, 1024, !dbg !737
  store volatile i32 %36, i32* inttoptr (i32 1073876996 to i32*), align 4, !dbg !737, !tbaa !680
  %37 = load volatile i32, i32* inttoptr (i32 1073876996 to i32*), align 4, !dbg !738, !tbaa !680
  %38 = and i32 %37, -4128769, !dbg !738
  store volatile i32 %38, i32* inttoptr (i32 1073876996 to i32*), align 4, !dbg !738, !tbaa !680
  %39 = load volatile i32, i32* inttoptr (i32 1073876996 to i32*), align 4, !dbg !739, !tbaa !680
  %40 = or i32 %39, 1900544, !dbg !739
  store volatile i32 %40, i32* inttoptr (i32 1073876996 to i32*), align 4, !dbg !739, !tbaa !680
  %41 = load volatile i32, i32* inttoptr (i32 1073876992 to i32*), align 4096, !dbg !740, !tbaa !677
  %42 = or i32 %41, 16777216, !dbg !740
  store volatile i32 %42, i32* inttoptr (i32 1073876992 to i32*), align 4096, !dbg !740, !tbaa !677
  br label %43, !dbg !741

43:                                               ; preds = %55, %26
  %44 = load volatile i32, i32* inttoptr (i32 1073876992 to i32*), align 4096, !dbg !742, !tbaa !677
  %45 = and i32 %44, 33554432, !dbg !743
  %46 = icmp eq i32 %45, 0, !dbg !744
  br i1 %46, label %47, label %59, !dbg !741, !llvm.loop !745

47:                                               ; preds = %43
  %48 = load volatile i32, i32* inttoptr (i32 1073876992 to i32*), align 4096, !dbg !742, !tbaa !677
  %49 = and i32 %48, 33554432, !dbg !743
  %50 = icmp eq i32 %49, 0, !dbg !744
  br i1 %50, label %51, label %59, !dbg !741, !llvm.loop !745

51:                                               ; preds = %47
  %52 = load volatile i32, i32* inttoptr (i32 1073876992 to i32*), align 4096, !dbg !742, !tbaa !677
  %53 = and i32 %52, 33554432, !dbg !743
  %54 = icmp eq i32 %53, 0, !dbg !744
  br i1 %54, label %55, label %59, !dbg !741, !llvm.loop !745

55:                                               ; preds = %51
  %56 = load volatile i32, i32* inttoptr (i32 1073876992 to i32*), align 4096, !dbg !742, !tbaa !677
  %57 = and i32 %56, 33554432, !dbg !743
  %58 = icmp eq i32 %57, 0, !dbg !744
  br i1 %58, label %43, label %59, !dbg !741, !llvm.loop !745

59:                                               ; preds = %55, %51, %47, %43
  %60 = load volatile i32, i32* inttoptr (i32 1073876996 to i32*), align 4, !dbg !747, !tbaa !680
  %61 = and i32 %60, -4, !dbg !747
  store volatile i32 %61, i32* inttoptr (i32 1073876996 to i32*), align 4, !dbg !747, !tbaa !680
  %62 = load volatile i32, i32* inttoptr (i32 1073876996 to i32*), align 4, !dbg !748, !tbaa !680
  %63 = or i32 %62, 2, !dbg !748
  store volatile i32 %63, i32* inttoptr (i32 1073876996 to i32*), align 4, !dbg !748, !tbaa !680
  br label %64, !dbg !749

64:                                               ; preds = %76, %59
  %65 = load volatile i32, i32* inttoptr (i32 1073876996 to i32*), align 4, !dbg !750, !tbaa !680
  %66 = and i32 %65, 12, !dbg !751
  %67 = icmp eq i32 %66, 8, !dbg !752
  br i1 %67, label %80, label %68, !dbg !749, !llvm.loop !753

68:                                               ; preds = %64
  %69 = load volatile i32, i32* inttoptr (i32 1073876996 to i32*), align 4, !dbg !750, !tbaa !680
  %70 = and i32 %69, 12, !dbg !751
  %71 = icmp eq i32 %70, 8, !dbg !752
  br i1 %71, label %80, label %72, !dbg !749, !llvm.loop !753

72:                                               ; preds = %68
  %73 = load volatile i32, i32* inttoptr (i32 1073876996 to i32*), align 4, !dbg !750, !tbaa !680
  %74 = and i32 %73, 12, !dbg !751
  %75 = icmp eq i32 %74, 8, !dbg !752
  br i1 %75, label %80, label %76, !dbg !749, !llvm.loop !753

76:                                               ; preds = %72
  %77 = load volatile i32, i32* inttoptr (i32 1073876996 to i32*), align 4, !dbg !750, !tbaa !680
  %78 = and i32 %77, 12, !dbg !751
  %79 = icmp eq i32 %78, 8, !dbg !752
  br i1 %79, label %80, label %64, !dbg !749, !llvm.loop !753

80:                                               ; preds = %64, %68, %72, %76, %23
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %4), !dbg !755
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %3), !dbg !755
  ret void, !dbg !755
}

; Function Attrs: argmemonly nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0i8(i64 immarg, i8* nocapture) #9

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #4

; Function Attrs: argmemonly nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0i8(i64 immarg, i8* nocapture) #9

; Function Attrs: mustprogress nofree noinline norecurse nounwind willreturn
define dso_local void @SystemCoreClockUpdate() local_unnamed_addr #10 !dbg !756 {
  call void @llvm.dbg.value(metadata i32 0, metadata !758, metadata !DIExpression()), !dbg !761
  call void @llvm.dbg.value(metadata i32 0, metadata !759, metadata !DIExpression()), !dbg !761
  call void @llvm.dbg.value(metadata i32 0, metadata !760, metadata !DIExpression()), !dbg !761
  %1 = load volatile i32, i32* inttoptr (i32 1073876996 to i32*), align 4, !dbg !762, !tbaa !680
  %2 = and i32 %1, 12, !dbg !763
  call void @llvm.dbg.value(metadata i32 %2, metadata !758, metadata !DIExpression()), !dbg !761
  %3 = icmp eq i32 %2, 8, !dbg !764
  br i1 %3, label %4, label %22, !dbg !764

4:                                                ; preds = %0
  %5 = load volatile i32, i32* inttoptr (i32 1073876996 to i32*), align 4, !dbg !765, !tbaa !680
  call void @llvm.dbg.value(metadata i32 %5, metadata !759, metadata !DIExpression(DW_OP_constu, 3932160, DW_OP_and, DW_OP_stack_value)), !dbg !761
  %6 = load volatile i32, i32* inttoptr (i32 1073876996 to i32*), align 4, !dbg !767, !tbaa !680
  %7 = and i32 %6, 65536, !dbg !768
  call void @llvm.dbg.value(metadata i32 %7, metadata !760, metadata !DIExpression()), !dbg !761
  %8 = lshr i32 %5, 18, !dbg !769
  %9 = and i32 %8, 15, !dbg !769
  %10 = add nuw nsw i32 %9, 2, !dbg !770
  call void @llvm.dbg.value(metadata i32 %10, metadata !759, metadata !DIExpression()), !dbg !761
  %11 = icmp eq i32 %7, 0, !dbg !771
  br i1 %11, label %12, label %14, !dbg !773

12:                                               ; preds = %4
  %13 = mul nuw nsw i32 %10, 4000000, !dbg !774
  br label %22, !dbg !776

14:                                               ; preds = %4
  %15 = load volatile i32, i32* inttoptr (i32 1073876996 to i32*), align 4, !dbg !777, !tbaa !680
  %16 = and i32 %15, 131072, !dbg !780
  %17 = icmp eq i32 %16, 0, !dbg !781
  br i1 %17, label %20, label %18, !dbg !782

18:                                               ; preds = %14
  %19 = mul nuw nsw i32 %10, 4000000, !dbg !783
  br label %22, !dbg !785

20:                                               ; preds = %14
  %21 = mul nuw nsw i32 %10, 8000000, !dbg !786
  br label %22

22:                                               ; preds = %0, %12, %20, %18
  %23 = phi i32 [ %13, %12 ], [ %21, %20 ], [ %19, %18 ], [ 8000000, %0 ]
  store i32 %23, i32* @SystemCoreClock, align 4, !dbg !788, !tbaa !698
  %24 = load volatile i32, i32* inttoptr (i32 1073876996 to i32*), align 4, !dbg !789, !tbaa !680
  %25 = lshr i32 %24, 4, !dbg !790
  %26 = and i32 %25, 15, !dbg !790
  %27 = getelementptr inbounds [16 x i8], [16 x i8]* @AHBPrescTable, i32 0, i32 %26, !dbg !791
  %28 = load volatile i8, i8* %27, align 1, !dbg !791, !tbaa !792
  %29 = zext i8 %28 to i32, !dbg !791
  call void @llvm.dbg.value(metadata i32 %29, metadata !758, metadata !DIExpression()), !dbg !761
  %30 = lshr i32 %23, %29, !dbg !793
  store i32 %30, i32* @SystemCoreClock, align 4, !dbg !793, !tbaa !698
  ret void, !dbg !794
}

; Function Attrs: noinline nounwind
define internal zeroext i8 @avm_core_init(i8* nocapture noundef readnone %0) #11 !dbg !206 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !208, metadata !DIExpression()), !dbg !795
  tail call fastcc void @NVIC_SetPriorityGrouping(), !dbg !796
  %2 = load %struct.avm_module_s*, %struct.avm_module_s** getelementptr inbounds ([6 x %struct.avm_module_s*], [6 x %struct.avm_module_s*]* @avm_modules_pool, i32 0, i32 0), align 4, !dbg !797, !tbaa !798
  call void @llvm.dbg.value(metadata %struct.avm_module_s* %2, metadata !209, metadata !DIExpression()), !dbg !795
  %3 = load i8, i8* @avm_core_init.avm_modules_num, align 1, !tbaa !792
  %4 = zext i8 %3 to i32, !dbg !799
  %5 = getelementptr inbounds [6 x %struct.avm_module_s*], [6 x %struct.avm_module_s*]* @avm_modules_pool, i32 0, i32 %4, !dbg !799
  %6 = load %struct.avm_module_s*, %struct.avm_module_s** %5, align 4, !dbg !799, !tbaa !798
  %7 = icmp eq %struct.avm_module_s* %6, null, !dbg !802
  br i1 %7, label %44, label %8, !dbg !803

8:                                                ; preds = %1, %34
  %9 = phi %struct.avm_module_s* [ %40, %34 ], [ %6, %1 ]
  %10 = phi i8 [ %37, %34 ], [ %3, %1 ]
  %11 = zext i8 %10 to i16, !dbg !804
  %12 = getelementptr inbounds %struct.avm_module_s, %struct.avm_module_s* %9, i32 0, i32 0, !dbg !806
  store i16 %11, i16* %12, align 4, !dbg !807, !tbaa !808
  %13 = add i8 %10, 1, !dbg !809
  %14 = zext i8 %13 to i32, !dbg !799
  %15 = getelementptr inbounds [6 x %struct.avm_module_s*], [6 x %struct.avm_module_s*]* @avm_modules_pool, i32 0, i32 %14, !dbg !799
  %16 = load %struct.avm_module_s*, %struct.avm_module_s** %15, align 4, !dbg !799, !tbaa !798
  %17 = icmp eq %struct.avm_module_s* %16, null, !dbg !802
  br i1 %17, label %42, label %18, !dbg !803, !llvm.loop !810

18:                                               ; preds = %8
  %19 = zext i8 %13 to i16, !dbg !804
  %20 = getelementptr inbounds %struct.avm_module_s, %struct.avm_module_s* %16, i32 0, i32 0, !dbg !806
  store i16 %19, i16* %20, align 4, !dbg !807, !tbaa !808
  %21 = add i8 %10, 2, !dbg !809
  %22 = zext i8 %21 to i32, !dbg !799
  %23 = getelementptr inbounds [6 x %struct.avm_module_s*], [6 x %struct.avm_module_s*]* @avm_modules_pool, i32 0, i32 %22, !dbg !799
  %24 = load %struct.avm_module_s*, %struct.avm_module_s** %23, align 4, !dbg !799, !tbaa !798
  %25 = icmp eq %struct.avm_module_s* %24, null, !dbg !802
  br i1 %25, label %42, label %26, !dbg !803, !llvm.loop !810

26:                                               ; preds = %18
  %27 = zext i8 %21 to i16, !dbg !804
  %28 = getelementptr inbounds %struct.avm_module_s, %struct.avm_module_s* %24, i32 0, i32 0, !dbg !806
  store i16 %27, i16* %28, align 4, !dbg !807, !tbaa !808
  %29 = add i8 %10, 3, !dbg !809
  %30 = zext i8 %29 to i32, !dbg !799
  %31 = getelementptr inbounds [6 x %struct.avm_module_s*], [6 x %struct.avm_module_s*]* @avm_modules_pool, i32 0, i32 %30, !dbg !799
  %32 = load %struct.avm_module_s*, %struct.avm_module_s** %31, align 4, !dbg !799, !tbaa !798
  %33 = icmp eq %struct.avm_module_s* %32, null, !dbg !802
  br i1 %33, label %42, label %34, !dbg !803, !llvm.loop !810

34:                                               ; preds = %26
  %35 = zext i8 %29 to i16, !dbg !804
  %36 = getelementptr inbounds %struct.avm_module_s, %struct.avm_module_s* %32, i32 0, i32 0, !dbg !806
  store i16 %35, i16* %36, align 4, !dbg !807, !tbaa !808
  %37 = add i8 %10, 4, !dbg !809
  %38 = zext i8 %37 to i32, !dbg !799
  %39 = getelementptr inbounds [6 x %struct.avm_module_s*], [6 x %struct.avm_module_s*]* @avm_modules_pool, i32 0, i32 %38, !dbg !799
  %40 = load %struct.avm_module_s*, %struct.avm_module_s** %39, align 4, !dbg !799, !tbaa !798
  %41 = icmp eq %struct.avm_module_s* %40, null, !dbg !802
  br i1 %41, label %42, label %8, !dbg !803, !llvm.loop !810

42:                                               ; preds = %34, %26, %18, %8
  %43 = phi i8 [ %13, %8 ], [ %21, %18 ], [ %29, %26 ], [ %37, %34 ], !dbg !809
  store i8 %43, i8* @avm_core_init.avm_modules_num, align 1, !dbg !809, !tbaa !792
  br label %44, !dbg !803

44:                                               ; preds = %42, %1
  %45 = getelementptr inbounds %struct.avm_module_s, %struct.avm_module_s* %2, i32 0, i32 1, !dbg !812
  store i32* bitcast (i8* @avm_core_init.avm_modules_num to i32*), i32** %45, align 4, !dbg !813, !tbaa !814
  call void @llvm.dbg.value(metadata %struct.avm_module_s** getelementptr inbounds ([6 x %struct.avm_module_s*], [6 x %struct.avm_module_s*]* @avm_modules_pool, i32 0, i32 1), metadata !210, metadata !DIExpression()), !dbg !795
  %46 = load %struct.avm_module_s*, %struct.avm_module_s** getelementptr inbounds ([6 x %struct.avm_module_s*], [6 x %struct.avm_module_s*]* @avm_modules_pool, i32 0, i32 1), align 4, !dbg !815, !tbaa !798
  %47 = icmp eq %struct.avm_module_s* %46, null, !dbg !818
  br i1 %47, label %60, label %48, !dbg !819

48:                                               ; preds = %44, %48
  %49 = phi %struct.avm_module_s* [ %58, %48 ], [ %46, %44 ]
  %50 = phi %struct.avm_module_s** [ %57, %48 ], [ getelementptr inbounds ([6 x %struct.avm_module_s*], [6 x %struct.avm_module_s*]* @avm_modules_pool, i32 0, i32 1), %44 ]
  call void @llvm.dbg.value(metadata %struct.avm_module_s** %50, metadata !210, metadata !DIExpression()), !dbg !795
  %51 = getelementptr inbounds %struct.avm_module_s, %struct.avm_module_s* %49, i32 0, i32 2, !dbg !820
  %52 = load i8 (i8*)*, i8 (i8*)** %51, align 4, !dbg !820, !tbaa !667
  %53 = getelementptr inbounds %struct.avm_module_s, %struct.avm_module_s* %49, i32 0, i32 1, !dbg !822
  %54 = bitcast i32** %53 to i8**, !dbg !822
  %55 = load i8*, i8** %54, align 4, !dbg !822, !tbaa !814
  %56 = tail call zeroext i8 %52(i8* noundef %55) #15, !dbg !823
  %57 = getelementptr inbounds %struct.avm_module_s*, %struct.avm_module_s** %50, i32 1, !dbg !824
  call void @llvm.dbg.value(metadata %struct.avm_module_s** %57, metadata !210, metadata !DIExpression()), !dbg !795
  %58 = load %struct.avm_module_s*, %struct.avm_module_s** %57, align 4, !dbg !815, !tbaa !798
  %59 = icmp eq %struct.avm_module_s* %58, null, !dbg !818
  br i1 %59, label %60, label %48, !dbg !819, !llvm.loop !825

60:                                               ; preds = %48, %44
  ret i8 0, !dbg !827
}

; Function Attrs: nofree noinline norecurse nounwind
define internal fastcc void @NVIC_SetPriorityGrouping() unnamed_addr #12 !dbg !828 {
  call void @llvm.dbg.value(metadata i32 4, metadata !832, metadata !DIExpression()), !dbg !835
  call void @llvm.dbg.value(metadata i32 4, metadata !834, metadata !DIExpression()), !dbg !835
  %1 = load volatile i32, i32* inttoptr (i32 -536810228 to i32*), align 4, !dbg !836, !tbaa !837
  call void @llvm.dbg.value(metadata i32 %1, metadata !833, metadata !DIExpression()), !dbg !835
  %2 = and i32 %1, 63743, !dbg !838
  call void @llvm.dbg.value(metadata i32 %2, metadata !833, metadata !DIExpression()), !dbg !835
  %3 = or i32 %2, 100271104, !dbg !839
  call void @llvm.dbg.value(metadata i32 %3, metadata !833, metadata !DIExpression()), !dbg !835
  store volatile i32 %3, i32* inttoptr (i32 -536810228 to i32*), align 4, !dbg !840, !tbaa !837
  ret void, !dbg !841
}

; Function Attrs: noinline nounwind
define dso_local void @jump2ISP() local_unnamed_addr #11 !dbg !842 {
  store volatile i32 0, i32* inttoptr (i32 -536813552 to i32*), align 16, !dbg !843, !tbaa !844
  store volatile i32 0, i32* inttoptr (i32 -536813544 to i32*), align 8, !dbg !846, !tbaa !847
  %1 = load i32, i32* inttoptr (i32 536866816 to i32*), align 4096, !dbg !848, !tbaa !698
  call void @llvm.dbg.value(metadata i32 %1, metadata !849, metadata !DIExpression()) #15, !dbg !853
  tail call void asm sideeffect "MSR msp, $0\0A", "r"(i32 %1) #15, !dbg !855, !srcloc !856
  %2 = load i32, i32* inttoptr (i32 536866820 to i32*), align 4, !dbg !857, !tbaa !698
  %3 = inttoptr i32 %2 to void ()*, !dbg !858
  tail call void %3() #15, !dbg !859
  ret void, !dbg !860
}

; Function Attrs: nofree noinline norecurse nounwind
define dso_local void @delay_ms(i32 noundef %0) local_unnamed_addr #12 !dbg !861 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !865, metadata !DIExpression()), !dbg !868
  %2 = mul i32 %0, 9000, !dbg !869
  store volatile i32 %2, i32* inttoptr (i32 -536813548 to i32*), align 4, !dbg !870, !tbaa !871
  store volatile i32 0, i32* inttoptr (i32 -536813544 to i32*), align 8, !dbg !872, !tbaa !847
  store volatile i32 1, i32* inttoptr (i32 -536813552 to i32*), align 16, !dbg !873, !tbaa !844
  call void @llvm.dbg.value(metadata i32 undef, metadata !866, metadata !DIExpression()), !dbg !874
  br label %3, !dbg !875

3:                                                ; preds = %15, %1
  %4 = load volatile i32, i32* inttoptr (i32 -536813552 to i32*), align 16, !dbg !874, !tbaa !844
  call void @llvm.dbg.value(metadata i32 %4, metadata !866, metadata !DIExpression()), !dbg !874
  %5 = and i32 %4, 65537, !dbg !876
  %6 = icmp eq i32 %5, 1, !dbg !876
  br i1 %6, label %7, label %19, !dbg !878, !llvm.loop !879

7:                                                ; preds = %3
  %8 = load volatile i32, i32* inttoptr (i32 -536813552 to i32*), align 16, !dbg !874, !tbaa !844
  call void @llvm.dbg.value(metadata i32 %8, metadata !866, metadata !DIExpression()), !dbg !874
  %9 = and i32 %8, 65537, !dbg !876
  %10 = icmp eq i32 %9, 1, !dbg !876
  br i1 %10, label %11, label %19, !dbg !878, !llvm.loop !879

11:                                               ; preds = %7
  %12 = load volatile i32, i32* inttoptr (i32 -536813552 to i32*), align 16, !dbg !874, !tbaa !844
  call void @llvm.dbg.value(metadata i32 %12, metadata !866, metadata !DIExpression()), !dbg !874
  %13 = and i32 %12, 65537, !dbg !876
  %14 = icmp eq i32 %13, 1, !dbg !876
  br i1 %14, label %15, label %19, !dbg !878, !llvm.loop !879

15:                                               ; preds = %11
  %16 = load volatile i32, i32* inttoptr (i32 -536813552 to i32*), align 16, !dbg !874, !tbaa !844
  call void @llvm.dbg.value(metadata i32 %16, metadata !866, metadata !DIExpression()), !dbg !874
  %17 = and i32 %16, 65537, !dbg !876
  %18 = icmp eq i32 %17, 1, !dbg !876
  br i1 %18, label %3, label %19, !dbg !878, !llvm.loop !879

19:                                               ; preds = %15, %11, %7, %3
  store volatile i32 0, i32* inttoptr (i32 -536813552 to i32*), align 16, !dbg !881, !tbaa !844
  store volatile i32 0, i32* inttoptr (i32 -536813544 to i32*), align 8, !dbg !882, !tbaa !847
  ret void, !dbg !883
}

; Function Attrs: nofree noinline norecurse nounwind
define dso_local void @delay_us(i32 noundef %0) local_unnamed_addr #12 !dbg !884 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !886, metadata !DIExpression()), !dbg !889
  %2 = mul i32 %0, 9, !dbg !890
  store volatile i32 %2, i32* inttoptr (i32 -536813548 to i32*), align 4, !dbg !891, !tbaa !871
  store volatile i32 0, i32* inttoptr (i32 -536813544 to i32*), align 8, !dbg !892, !tbaa !847
  store volatile i32 1, i32* inttoptr (i32 -536813552 to i32*), align 16, !dbg !893, !tbaa !844
  call void @llvm.dbg.value(metadata i32 undef, metadata !887, metadata !DIExpression()), !dbg !894
  br label %3, !dbg !895

3:                                                ; preds = %15, %1
  %4 = load volatile i32, i32* inttoptr (i32 -536813552 to i32*), align 16, !dbg !894, !tbaa !844
  call void @llvm.dbg.value(metadata i32 %4, metadata !887, metadata !DIExpression()), !dbg !894
  %5 = and i32 %4, 65537, !dbg !896
  %6 = icmp eq i32 %5, 1, !dbg !896
  br i1 %6, label %7, label %19, !dbg !898, !llvm.loop !899

7:                                                ; preds = %3
  %8 = load volatile i32, i32* inttoptr (i32 -536813552 to i32*), align 16, !dbg !894, !tbaa !844
  call void @llvm.dbg.value(metadata i32 %8, metadata !887, metadata !DIExpression()), !dbg !894
  %9 = and i32 %8, 65537, !dbg !896
  %10 = icmp eq i32 %9, 1, !dbg !896
  br i1 %10, label %11, label %19, !dbg !898, !llvm.loop !899

11:                                               ; preds = %7
  %12 = load volatile i32, i32* inttoptr (i32 -536813552 to i32*), align 16, !dbg !894, !tbaa !844
  call void @llvm.dbg.value(metadata i32 %12, metadata !887, metadata !DIExpression()), !dbg !894
  %13 = and i32 %12, 65537, !dbg !896
  %14 = icmp eq i32 %13, 1, !dbg !896
  br i1 %14, label %15, label %19, !dbg !898, !llvm.loop !899

15:                                               ; preds = %11
  %16 = load volatile i32, i32* inttoptr (i32 -536813552 to i32*), align 16, !dbg !894, !tbaa !844
  call void @llvm.dbg.value(metadata i32 %16, metadata !887, metadata !DIExpression()), !dbg !894
  %17 = and i32 %16, 65537, !dbg !896
  %18 = icmp eq i32 %17, 1, !dbg !896
  br i1 %18, label %3, label %19, !dbg !898, !llvm.loop !899

19:                                               ; preds = %15, %11, %7, %3
  store volatile i32 0, i32* inttoptr (i32 -536813552 to i32*), align 16, !dbg !901, !tbaa !844
  store volatile i32 0, i32* inttoptr (i32 -536813544 to i32*), align 8, !dbg !902, !tbaa !847
  ret void, !dbg !903
}

; Function Attrs: nofree noinline norecurse nounwind
define internal zeroext i8 @avm_i2c_init(i8* nocapture noundef readnone %0) #12 !dbg !904 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !906, metadata !DIExpression()), !dbg !907
  tail call void @IIC_init(), !dbg !908
  ret i8 0, !dbg !909
}

; Function Attrs: nofree noinline norecurse nounwind
define dso_local void @IIC_init() local_unnamed_addr #12 !dbg !910 {
  %1 = load volatile i32, i32* inttoptr (i32 1073877016 to i32*), align 8, !dbg !911, !tbaa !912
  %2 = or i32 %1, 8, !dbg !911
  store volatile i32 %2, i32* inttoptr (i32 1073877016 to i32*), align 8, !dbg !911, !tbaa !912
  %3 = load volatile i32, i32* inttoptr (i32 1073810436 to i32*), align 4, !dbg !913, !tbaa !914
  %4 = and i32 %3, 16777215, !dbg !913
  store volatile i32 %4, i32* inttoptr (i32 1073810436 to i32*), align 4, !dbg !913, !tbaa !914
  %5 = load volatile i32, i32* inttoptr (i32 1073810436 to i32*), align 4, !dbg !916, !tbaa !914
  %6 = or i32 %5, 1996488704, !dbg !916
  store volatile i32 %6, i32* inttoptr (i32 1073810436 to i32*), align 4, !dbg !916, !tbaa !914
  store volatile i32 1, i32* inttoptr (i32 1109492152 to i32*), align 8, !dbg !917, !tbaa !658
  store volatile i32 1, i32* inttoptr (i32 1109492156 to i32*), align 4, !dbg !918, !tbaa !658
  ret void, !dbg !919
}

; Function Attrs: nofree noinline norecurse nounwind
define dso_local void @IIC_Start() local_unnamed_addr #12 !dbg !920 {
  store volatile i32 1, i32* inttoptr (i32 1109492152 to i32*), align 8, !dbg !921, !tbaa !658
  store volatile i32 1, i32* inttoptr (i32 1109492156 to i32*), align 4, !dbg !922, !tbaa !658
  tail call fastcc void @delay_custom(), !dbg !923
  store volatile i32 0, i32* inttoptr (i32 1109492152 to i32*), align 8, !dbg !924, !tbaa !658
  tail call fastcc void @delay_custom(), !dbg !925
  store volatile i32 0, i32* inttoptr (i32 1109492156 to i32*), align 4, !dbg !926, !tbaa !658
  ret void, !dbg !927
}

; Function Attrs: nofree noinline norecurse nounwind
define internal fastcc void @delay_custom() unnamed_addr #12 !dbg !928 {
  %1 = alloca i32, align 4
  store volatile i32 1, i32* %1, align 4, !tbaa !698
  call void @llvm.dbg.declare(metadata i32* %1, metadata !933, metadata !DIExpression()), !dbg !934
  %2 = load volatile i32, i32* %1, align 4, !dbg !935, !tbaa !698
  %3 = shl i32 %2, 2, !dbg !935
  store volatile i32 %3, i32* %1, align 4, !dbg !935, !tbaa !698
  %4 = load volatile i32, i32* %1, align 4, !dbg !937, !tbaa !698
  %5 = icmp eq i32 %4, 0, !dbg !939
  br i1 %5, label %26, label %6, !dbg !939

6:                                                ; preds = %0, %21
  %7 = load volatile i32, i32* %1, align 4, !dbg !940, !tbaa !698
  %8 = add i32 %7, -1, !dbg !940
  store volatile i32 %8, i32* %1, align 4, !dbg !940, !tbaa !698
  %9 = load volatile i32, i32* %1, align 4, !dbg !937, !tbaa !698
  %10 = icmp eq i32 %9, 0, !dbg !939
  br i1 %10, label %26, label %11, !dbg !939, !llvm.loop !941

11:                                               ; preds = %6
  %12 = load volatile i32, i32* %1, align 4, !dbg !940, !tbaa !698
  %13 = add i32 %12, -1, !dbg !940
  store volatile i32 %13, i32* %1, align 4, !dbg !940, !tbaa !698
  %14 = load volatile i32, i32* %1, align 4, !dbg !937, !tbaa !698
  %15 = icmp eq i32 %14, 0, !dbg !939
  br i1 %15, label %26, label %16, !dbg !939, !llvm.loop !941

16:                                               ; preds = %11
  %17 = load volatile i32, i32* %1, align 4, !dbg !940, !tbaa !698
  %18 = add i32 %17, -1, !dbg !940
  store volatile i32 %18, i32* %1, align 4, !dbg !940, !tbaa !698
  %19 = load volatile i32, i32* %1, align 4, !dbg !937, !tbaa !698
  %20 = icmp eq i32 %19, 0, !dbg !939
  br i1 %20, label %26, label %21, !dbg !939, !llvm.loop !941

21:                                               ; preds = %16
  %22 = load volatile i32, i32* %1, align 4, !dbg !940, !tbaa !698
  %23 = add i32 %22, -1, !dbg !940
  store volatile i32 %23, i32* %1, align 4, !dbg !940, !tbaa !698
  %24 = load volatile i32, i32* %1, align 4, !dbg !937, !tbaa !698
  %25 = icmp eq i32 %24, 0, !dbg !939
  br i1 %25, label %26, label %6, !dbg !939, !llvm.loop !941

26:                                               ; preds = %6, %11, %16, %21, %0
  ret void, !dbg !943
}

; Function Attrs: nofree noinline norecurse nounwind
define dso_local void @IIC_Stop() local_unnamed_addr #12 !dbg !944 {
  store volatile i32 0, i32* inttoptr (i32 1109492156 to i32*), align 4, !dbg !945, !tbaa !658
  tail call fastcc void @delay_custom(), !dbg !946
  store volatile i32 0, i32* inttoptr (i32 1109492152 to i32*), align 8, !dbg !947, !tbaa !658
  tail call fastcc void @delay_custom(), !dbg !948
  store volatile i32 1, i32* inttoptr (i32 1109492156 to i32*), align 4, !dbg !949, !tbaa !658
  tail call fastcc void @delay_custom(), !dbg !950
  store volatile i32 1, i32* inttoptr (i32 1109492152 to i32*), align 8, !dbg !951, !tbaa !658
  tail call fastcc void @delay_custom(), !dbg !952
  ret void, !dbg !953
}

; Function Attrs: nofree noinline norecurse nounwind
define dso_local void @IIC_Ack(i8 noundef zeroext %0) local_unnamed_addr #12 !dbg !954 {
  call void @llvm.dbg.value(metadata i8 %0, metadata !958, metadata !DIExpression()), !dbg !959
  store volatile i32 0, i32* inttoptr (i32 1109492156 to i32*), align 4, !dbg !960, !tbaa !658
  tail call fastcc void @delay_custom(), !dbg !961
  %2 = zext i8 %0 to i32, !dbg !962
  store volatile i32 %2, i32* inttoptr (i32 1109492152 to i32*), align 8, !dbg !963, !tbaa !658
  tail call fastcc void @delay_custom(), !dbg !964
  store volatile i32 1, i32* inttoptr (i32 1109492156 to i32*), align 4, !dbg !965, !tbaa !658
  tail call fastcc void @delay_custom(), !dbg !966
  store volatile i32 0, i32* inttoptr (i32 1109492156 to i32*), align 4, !dbg !967, !tbaa !658
  tail call fastcc void @delay_custom(), !dbg !968
  ret void, !dbg !969
}

; Function Attrs: nofree noinline norecurse nounwind
define dso_local zeroext i8 @IIC_Wait_Ack() local_unnamed_addr #12 !dbg !970 {
  store volatile i32 0, i32* inttoptr (i32 1109492156 to i32*), align 4, !dbg !971, !tbaa !658
  tail call fastcc void @delay_custom(), !dbg !972
  store volatile i32 1, i32* inttoptr (i32 1109492152 to i32*), align 8, !dbg !973, !tbaa !658
  tail call fastcc void @delay_custom(), !dbg !974
  store volatile i32 1, i32* inttoptr (i32 1109492156 to i32*), align 4, !dbg !975, !tbaa !658
  tail call fastcc void @delay_custom(), !dbg !976
  %1 = load volatile i32, i32* inttoptr (i32 1109492024 to i32*), align 8, !dbg !977, !tbaa !658
  %2 = icmp eq i32 %1, 0, !dbg !977
  store volatile i32 0, i32* inttoptr (i32 1109492156 to i32*), align 4, !dbg !979, !tbaa !658
  br i1 %2, label %4, label %3, !dbg !980

3:                                                ; preds = %0
  tail call fastcc void @delay_custom(), !dbg !981
  br label %4, !dbg !983

4:                                                ; preds = %0, %3
  %5 = phi i8 [ 0, %3 ], [ 1, %0 ], !dbg !979
  ret i8 %5, !dbg !984
}

; Function Attrs: nofree noinline norecurse nounwind
define dso_local void @IIC_Send(i8 noundef zeroext %0) local_unnamed_addr #12 !dbg !985 {
  call void @llvm.dbg.value(metadata i8 %0, metadata !987, metadata !DIExpression()), !dbg !989
  store volatile i32 0, i32* inttoptr (i32 1109492156 to i32*), align 4, !dbg !990, !tbaa !658
  call void @llvm.dbg.value(metadata i8 0, metadata !988, metadata !DIExpression()), !dbg !989
  call void @llvm.dbg.value(metadata i8 %0, metadata !987, metadata !DIExpression()), !dbg !989
  call void @llvm.dbg.value(metadata i8 0, metadata !988, metadata !DIExpression()), !dbg !989
  call void @llvm.dbg.value(metadata i8 %0, metadata !987, metadata !DIExpression()), !dbg !989
  tail call fastcc void @delay_custom(), !dbg !991
  %2 = lshr i8 %0, 7, !dbg !995
  %3 = zext i8 %2 to i32, !dbg !995
  store volatile i32 %3, i32* inttoptr (i32 1109492152 to i32*), align 8, !dbg !996, !tbaa !658
  call void @llvm.dbg.value(metadata i8 %0, metadata !987, metadata !DIExpression(DW_OP_constu, 1, DW_OP_shl, DW_OP_stack_value)), !dbg !989
  tail call fastcc void @delay_custom(), !dbg !997
  store volatile i32 1, i32* inttoptr (i32 1109492156 to i32*), align 4, !dbg !998, !tbaa !658
  tail call fastcc void @delay_custom(), !dbg !999
  store volatile i32 0, i32* inttoptr (i32 1109492156 to i32*), align 4, !dbg !1000, !tbaa !658
  call void @llvm.dbg.value(metadata i8 1, metadata !988, metadata !DIExpression()), !dbg !989
  call void @llvm.dbg.value(metadata i8 1, metadata !988, metadata !DIExpression()), !dbg !989
  call void @llvm.dbg.value(metadata i8 %0, metadata !987, metadata !DIExpression(DW_OP_constu, 1, DW_OP_shl, DW_OP_stack_value)), !dbg !989
  tail call fastcc void @delay_custom(), !dbg !991
  %4 = lshr i8 %0, 6, !dbg !995
  %5 = and i8 %4, 1, !dbg !995
  %6 = zext i8 %5 to i32, !dbg !995
  store volatile i32 %6, i32* inttoptr (i32 1109492152 to i32*), align 8, !dbg !996, !tbaa !658
  call void @llvm.dbg.value(metadata i8 %0, metadata !987, metadata !DIExpression(DW_OP_constu, 2, DW_OP_shl, DW_OP_stack_value)), !dbg !989
  tail call fastcc void @delay_custom(), !dbg !997
  store volatile i32 1, i32* inttoptr (i32 1109492156 to i32*), align 4, !dbg !998, !tbaa !658
  tail call fastcc void @delay_custom(), !dbg !999
  store volatile i32 0, i32* inttoptr (i32 1109492156 to i32*), align 4, !dbg !1000, !tbaa !658
  call void @llvm.dbg.value(metadata i8 2, metadata !988, metadata !DIExpression()), !dbg !989
  call void @llvm.dbg.value(metadata i8 2, metadata !988, metadata !DIExpression()), !dbg !989
  call void @llvm.dbg.value(metadata i8 %0, metadata !987, metadata !DIExpression(DW_OP_constu, 2, DW_OP_shl, DW_OP_stack_value)), !dbg !989
  tail call fastcc void @delay_custom(), !dbg !991
  %7 = lshr i8 %0, 5, !dbg !995
  %8 = and i8 %7, 1, !dbg !995
  %9 = zext i8 %8 to i32, !dbg !995
  store volatile i32 %9, i32* inttoptr (i32 1109492152 to i32*), align 8, !dbg !996, !tbaa !658
  call void @llvm.dbg.value(metadata i8 %0, metadata !987, metadata !DIExpression(DW_OP_constu, 3, DW_OP_shl, DW_OP_stack_value)), !dbg !989
  tail call fastcc void @delay_custom(), !dbg !997
  store volatile i32 1, i32* inttoptr (i32 1109492156 to i32*), align 4, !dbg !998, !tbaa !658
  tail call fastcc void @delay_custom(), !dbg !999
  store volatile i32 0, i32* inttoptr (i32 1109492156 to i32*), align 4, !dbg !1000, !tbaa !658
  call void @llvm.dbg.value(metadata i8 3, metadata !988, metadata !DIExpression()), !dbg !989
  call void @llvm.dbg.value(metadata i8 3, metadata !988, metadata !DIExpression()), !dbg !989
  call void @llvm.dbg.value(metadata i8 %0, metadata !987, metadata !DIExpression(DW_OP_constu, 3, DW_OP_shl, DW_OP_stack_value)), !dbg !989
  tail call fastcc void @delay_custom(), !dbg !991
  %10 = lshr i8 %0, 4, !dbg !995
  %11 = and i8 %10, 1, !dbg !995
  %12 = zext i8 %11 to i32, !dbg !995
  store volatile i32 %12, i32* inttoptr (i32 1109492152 to i32*), align 8, !dbg !996, !tbaa !658
  call void @llvm.dbg.value(metadata i8 %0, metadata !987, metadata !DIExpression(DW_OP_constu, 4, DW_OP_shl, DW_OP_stack_value)), !dbg !989
  tail call fastcc void @delay_custom(), !dbg !997
  store volatile i32 1, i32* inttoptr (i32 1109492156 to i32*), align 4, !dbg !998, !tbaa !658
  tail call fastcc void @delay_custom(), !dbg !999
  store volatile i32 0, i32* inttoptr (i32 1109492156 to i32*), align 4, !dbg !1000, !tbaa !658
  call void @llvm.dbg.value(metadata i8 4, metadata !988, metadata !DIExpression()), !dbg !989
  call void @llvm.dbg.value(metadata i8 4, metadata !988, metadata !DIExpression()), !dbg !989
  call void @llvm.dbg.value(metadata i8 %0, metadata !987, metadata !DIExpression(DW_OP_constu, 4, DW_OP_shl, DW_OP_stack_value)), !dbg !989
  tail call fastcc void @delay_custom(), !dbg !991
  %13 = lshr i8 %0, 3, !dbg !995
  %14 = and i8 %13, 1, !dbg !995
  %15 = zext i8 %14 to i32, !dbg !995
  store volatile i32 %15, i32* inttoptr (i32 1109492152 to i32*), align 8, !dbg !996, !tbaa !658
  call void @llvm.dbg.value(metadata i8 %0, metadata !987, metadata !DIExpression(DW_OP_constu, 5, DW_OP_shl, DW_OP_stack_value)), !dbg !989
  tail call fastcc void @delay_custom(), !dbg !997
  store volatile i32 1, i32* inttoptr (i32 1109492156 to i32*), align 4, !dbg !998, !tbaa !658
  tail call fastcc void @delay_custom(), !dbg !999
  store volatile i32 0, i32* inttoptr (i32 1109492156 to i32*), align 4, !dbg !1000, !tbaa !658
  call void @llvm.dbg.value(metadata i8 5, metadata !988, metadata !DIExpression()), !dbg !989
  call void @llvm.dbg.value(metadata i8 5, metadata !988, metadata !DIExpression()), !dbg !989
  call void @llvm.dbg.value(metadata i8 %0, metadata !987, metadata !DIExpression(DW_OP_constu, 5, DW_OP_shl, DW_OP_stack_value)), !dbg !989
  tail call fastcc void @delay_custom(), !dbg !991
  %16 = lshr i8 %0, 2, !dbg !995
  %17 = and i8 %16, 1, !dbg !995
  %18 = zext i8 %17 to i32, !dbg !995
  store volatile i32 %18, i32* inttoptr (i32 1109492152 to i32*), align 8, !dbg !996, !tbaa !658
  call void @llvm.dbg.value(metadata i8 %0, metadata !987, metadata !DIExpression(DW_OP_constu, 6, DW_OP_shl, DW_OP_stack_value)), !dbg !989
  tail call fastcc void @delay_custom(), !dbg !997
  store volatile i32 1, i32* inttoptr (i32 1109492156 to i32*), align 4, !dbg !998, !tbaa !658
  tail call fastcc void @delay_custom(), !dbg !999
  store volatile i32 0, i32* inttoptr (i32 1109492156 to i32*), align 4, !dbg !1000, !tbaa !658
  call void @llvm.dbg.value(metadata i8 6, metadata !988, metadata !DIExpression()), !dbg !989
  call void @llvm.dbg.value(metadata i8 6, metadata !988, metadata !DIExpression()), !dbg !989
  call void @llvm.dbg.value(metadata i8 %0, metadata !987, metadata !DIExpression(DW_OP_constu, 6, DW_OP_shl, DW_OP_stack_value)), !dbg !989
  tail call fastcc void @delay_custom(), !dbg !991
  %19 = lshr i8 %0, 1, !dbg !995
  %20 = and i8 %19, 1, !dbg !995
  %21 = zext i8 %20 to i32, !dbg !995
  store volatile i32 %21, i32* inttoptr (i32 1109492152 to i32*), align 8, !dbg !996, !tbaa !658
  %22 = and i8 %0, 1, !dbg !995
  call void @llvm.dbg.value(metadata i8 %0, metadata !987, metadata !DIExpression(DW_OP_constu, 7, DW_OP_shl, DW_OP_stack_value)), !dbg !989
  tail call fastcc void @delay_custom(), !dbg !997
  store volatile i32 1, i32* inttoptr (i32 1109492156 to i32*), align 4, !dbg !998, !tbaa !658
  tail call fastcc void @delay_custom(), !dbg !999
  store volatile i32 0, i32* inttoptr (i32 1109492156 to i32*), align 4, !dbg !1000, !tbaa !658
  call void @llvm.dbg.value(metadata i8 7, metadata !988, metadata !DIExpression()), !dbg !989
  call void @llvm.dbg.value(metadata i8 7, metadata !988, metadata !DIExpression()), !dbg !989
  call void @llvm.dbg.value(metadata i8 %0, metadata !987, metadata !DIExpression(DW_OP_constu, 7, DW_OP_shl, DW_OP_stack_value)), !dbg !989
  tail call fastcc void @delay_custom(), !dbg !991
  %23 = zext i8 %22 to i32, !dbg !995
  store volatile i32 %23, i32* inttoptr (i32 1109492152 to i32*), align 8, !dbg !996, !tbaa !658
  call void @llvm.dbg.value(metadata i8 %0, metadata !987, metadata !DIExpression(DW_OP_constu, 7, DW_OP_shl, DW_OP_constu, 1, DW_OP_shl, DW_OP_stack_value)), !dbg !989
  tail call fastcc void @delay_custom(), !dbg !997
  store volatile i32 1, i32* inttoptr (i32 1109492156 to i32*), align 4, !dbg !998, !tbaa !658
  tail call fastcc void @delay_custom(), !dbg !999
  store volatile i32 0, i32* inttoptr (i32 1109492156 to i32*), align 4, !dbg !1000, !tbaa !658
  call void @llvm.dbg.value(metadata i8 8, metadata !988, metadata !DIExpression()), !dbg !989
  ret void, !dbg !1001
}

; Function Attrs: nofree noinline norecurse nounwind
define dso_local zeroext i8 @IIC_Read() local_unnamed_addr #12 !dbg !1002 {
  call void @llvm.dbg.value(metadata i8 0, metadata !1005, metadata !DIExpression()), !dbg !1006
  store volatile i32 1, i32* inttoptr (i32 1109492152 to i32*), align 8, !dbg !1007, !tbaa !658
  call void @llvm.dbg.value(metadata i8 0, metadata !1004, metadata !DIExpression()), !dbg !1006
  call void @llvm.dbg.value(metadata i8 0, metadata !1005, metadata !DIExpression()), !dbg !1006
  call void @llvm.dbg.value(metadata i8 0, metadata !1005, metadata !DIExpression()), !dbg !1006
  call void @llvm.dbg.value(metadata i8 0, metadata !1004, metadata !DIExpression()), !dbg !1006
  store volatile i32 0, i32* inttoptr (i32 1109492156 to i32*), align 4, !dbg !1008, !tbaa !658
  tail call fastcc void @delay_custom(), !dbg !1012
  store volatile i32 1, i32* inttoptr (i32 1109492156 to i32*), align 4, !dbg !1013, !tbaa !658
  tail call fastcc void @delay_custom(), !dbg !1014
  call void @llvm.dbg.value(metadata i8 0, metadata !1005, metadata !DIExpression()), !dbg !1006
  %1 = load volatile i32, i32* inttoptr (i32 1109492024 to i32*), align 8, !dbg !1015, !tbaa !658
  %2 = trunc i32 %1 to i8, !dbg !1016
  call void @llvm.dbg.value(metadata i8 %2, metadata !1005, metadata !DIExpression()), !dbg !1006
  call void @llvm.dbg.value(metadata i8 1, metadata !1004, metadata !DIExpression()), !dbg !1006
  call void @llvm.dbg.value(metadata i8 %2, metadata !1005, metadata !DIExpression()), !dbg !1006
  call void @llvm.dbg.value(metadata i8 1, metadata !1004, metadata !DIExpression()), !dbg !1006
  store volatile i32 0, i32* inttoptr (i32 1109492156 to i32*), align 4, !dbg !1008, !tbaa !658
  tail call fastcc void @delay_custom(), !dbg !1012
  store volatile i32 1, i32* inttoptr (i32 1109492156 to i32*), align 4, !dbg !1013, !tbaa !658
  tail call fastcc void @delay_custom(), !dbg !1014
  call void @llvm.dbg.value(metadata i8 %2, metadata !1005, metadata !DIExpression(DW_OP_constu, 1, DW_OP_shl, DW_OP_stack_value)), !dbg !1006
  %3 = load volatile i32, i32* inttoptr (i32 1109492024 to i32*), align 8, !dbg !1015, !tbaa !658
  %4 = trunc i32 %3 to i8, !dbg !1016
  call void @llvm.dbg.value(metadata !DIArgList(i8 %2, i8 %4), metadata !1005, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_constu, 1, DW_OP_shl, DW_OP_LLVM_arg, 1, DW_OP_or, DW_OP_stack_value)), !dbg !1006
  call void @llvm.dbg.value(metadata i8 2, metadata !1004, metadata !DIExpression()), !dbg !1006
  call void @llvm.dbg.value(metadata !DIArgList(i8 %2, i8 %4), metadata !1005, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_constu, 1, DW_OP_shl, DW_OP_LLVM_arg, 1, DW_OP_or, DW_OP_stack_value)), !dbg !1006
  call void @llvm.dbg.value(metadata i8 2, metadata !1004, metadata !DIExpression()), !dbg !1006
  store volatile i32 0, i32* inttoptr (i32 1109492156 to i32*), align 4, !dbg !1008, !tbaa !658
  tail call fastcc void @delay_custom(), !dbg !1012
  store volatile i32 1, i32* inttoptr (i32 1109492156 to i32*), align 4, !dbg !1013, !tbaa !658
  tail call fastcc void @delay_custom(), !dbg !1014
  %5 = shl i8 %2, 2, !dbg !1017
  %6 = shl i8 %4, 1, !dbg !1017
  %7 = or i8 %5, %6, !dbg !1017
  call void @llvm.dbg.value(metadata i8 %7, metadata !1005, metadata !DIExpression()), !dbg !1006
  %8 = load volatile i32, i32* inttoptr (i32 1109492024 to i32*), align 8, !dbg !1015, !tbaa !658
  %9 = trunc i32 %8 to i8, !dbg !1016
  %10 = or i8 %7, %9, !dbg !1016
  call void @llvm.dbg.value(metadata i8 %10, metadata !1005, metadata !DIExpression()), !dbg !1006
  call void @llvm.dbg.value(metadata i8 3, metadata !1004, metadata !DIExpression()), !dbg !1006
  call void @llvm.dbg.value(metadata i8 %10, metadata !1005, metadata !DIExpression()), !dbg !1006
  call void @llvm.dbg.value(metadata i8 3, metadata !1004, metadata !DIExpression()), !dbg !1006
  store volatile i32 0, i32* inttoptr (i32 1109492156 to i32*), align 4, !dbg !1008, !tbaa !658
  tail call fastcc void @delay_custom(), !dbg !1012
  store volatile i32 1, i32* inttoptr (i32 1109492156 to i32*), align 4, !dbg !1013, !tbaa !658
  tail call fastcc void @delay_custom(), !dbg !1014
  call void @llvm.dbg.value(metadata i8 %10, metadata !1005, metadata !DIExpression(DW_OP_constu, 1, DW_OP_shl, DW_OP_stack_value)), !dbg !1006
  %11 = load volatile i32, i32* inttoptr (i32 1109492024 to i32*), align 8, !dbg !1015, !tbaa !658
  %12 = trunc i32 %11 to i8, !dbg !1016
  call void @llvm.dbg.value(metadata !DIArgList(i8 %10, i8 %12), metadata !1005, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_constu, 1, DW_OP_shl, DW_OP_LLVM_arg, 1, DW_OP_or, DW_OP_stack_value)), !dbg !1006
  call void @llvm.dbg.value(metadata i8 4, metadata !1004, metadata !DIExpression()), !dbg !1006
  call void @llvm.dbg.value(metadata !DIArgList(i8 %10, i8 %12), metadata !1005, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_constu, 1, DW_OP_shl, DW_OP_LLVM_arg, 1, DW_OP_or, DW_OP_stack_value)), !dbg !1006
  call void @llvm.dbg.value(metadata i8 4, metadata !1004, metadata !DIExpression()), !dbg !1006
  store volatile i32 0, i32* inttoptr (i32 1109492156 to i32*), align 4, !dbg !1008, !tbaa !658
  tail call fastcc void @delay_custom(), !dbg !1012
  store volatile i32 1, i32* inttoptr (i32 1109492156 to i32*), align 4, !dbg !1013, !tbaa !658
  tail call fastcc void @delay_custom(), !dbg !1014
  %13 = shl i8 %10, 2, !dbg !1017
  %14 = shl i8 %12, 1, !dbg !1017
  %15 = or i8 %13, %14, !dbg !1017
  call void @llvm.dbg.value(metadata i8 %15, metadata !1005, metadata !DIExpression()), !dbg !1006
  %16 = load volatile i32, i32* inttoptr (i32 1109492024 to i32*), align 8, !dbg !1015, !tbaa !658
  %17 = trunc i32 %16 to i8, !dbg !1016
  %18 = or i8 %15, %17, !dbg !1016
  call void @llvm.dbg.value(metadata i8 %18, metadata !1005, metadata !DIExpression()), !dbg !1006
  call void @llvm.dbg.value(metadata i8 5, metadata !1004, metadata !DIExpression()), !dbg !1006
  call void @llvm.dbg.value(metadata i8 %18, metadata !1005, metadata !DIExpression()), !dbg !1006
  call void @llvm.dbg.value(metadata i8 5, metadata !1004, metadata !DIExpression()), !dbg !1006
  store volatile i32 0, i32* inttoptr (i32 1109492156 to i32*), align 4, !dbg !1008, !tbaa !658
  tail call fastcc void @delay_custom(), !dbg !1012
  store volatile i32 1, i32* inttoptr (i32 1109492156 to i32*), align 4, !dbg !1013, !tbaa !658
  tail call fastcc void @delay_custom(), !dbg !1014
  call void @llvm.dbg.value(metadata i8 %18, metadata !1005, metadata !DIExpression(DW_OP_constu, 1, DW_OP_shl, DW_OP_stack_value)), !dbg !1006
  %19 = load volatile i32, i32* inttoptr (i32 1109492024 to i32*), align 8, !dbg !1015, !tbaa !658
  %20 = trunc i32 %19 to i8, !dbg !1016
  call void @llvm.dbg.value(metadata !DIArgList(i8 %18, i8 %20), metadata !1005, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_constu, 1, DW_OP_shl, DW_OP_LLVM_arg, 1, DW_OP_or, DW_OP_stack_value)), !dbg !1006
  call void @llvm.dbg.value(metadata i8 6, metadata !1004, metadata !DIExpression()), !dbg !1006
  call void @llvm.dbg.value(metadata !DIArgList(i8 %18, i8 %20), metadata !1005, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_constu, 1, DW_OP_shl, DW_OP_LLVM_arg, 1, DW_OP_or, DW_OP_stack_value)), !dbg !1006
  call void @llvm.dbg.value(metadata i8 6, metadata !1004, metadata !DIExpression()), !dbg !1006
  store volatile i32 0, i32* inttoptr (i32 1109492156 to i32*), align 4, !dbg !1008, !tbaa !658
  tail call fastcc void @delay_custom(), !dbg !1012
  store volatile i32 1, i32* inttoptr (i32 1109492156 to i32*), align 4, !dbg !1013, !tbaa !658
  tail call fastcc void @delay_custom(), !dbg !1014
  %21 = shl i8 %18, 2, !dbg !1017
  %22 = shl i8 %20, 1, !dbg !1017
  %23 = or i8 %21, %22, !dbg !1017
  call void @llvm.dbg.value(metadata i8 %23, metadata !1005, metadata !DIExpression()), !dbg !1006
  %24 = load volatile i32, i32* inttoptr (i32 1109492024 to i32*), align 8, !dbg !1015, !tbaa !658
  %25 = trunc i32 %24 to i8, !dbg !1016
  %26 = or i8 %23, %25, !dbg !1016
  call void @llvm.dbg.value(metadata i8 %26, metadata !1005, metadata !DIExpression()), !dbg !1006
  call void @llvm.dbg.value(metadata i8 7, metadata !1004, metadata !DIExpression()), !dbg !1006
  call void @llvm.dbg.value(metadata i8 %26, metadata !1005, metadata !DIExpression()), !dbg !1006
  call void @llvm.dbg.value(metadata i8 7, metadata !1004, metadata !DIExpression()), !dbg !1006
  store volatile i32 0, i32* inttoptr (i32 1109492156 to i32*), align 4, !dbg !1008, !tbaa !658
  tail call fastcc void @delay_custom(), !dbg !1012
  store volatile i32 1, i32* inttoptr (i32 1109492156 to i32*), align 4, !dbg !1013, !tbaa !658
  tail call fastcc void @delay_custom(), !dbg !1014
  %27 = shl i8 %26, 1, !dbg !1017
  call void @llvm.dbg.value(metadata i8 %27, metadata !1005, metadata !DIExpression()), !dbg !1006
  %28 = load volatile i32, i32* inttoptr (i32 1109492024 to i32*), align 8, !dbg !1015, !tbaa !658
  %29 = trunc i32 %28 to i8, !dbg !1016
  %30 = or i8 %27, %29, !dbg !1016
  call void @llvm.dbg.value(metadata i8 %30, metadata !1005, metadata !DIExpression()), !dbg !1006
  call void @llvm.dbg.value(metadata i8 8, metadata !1004, metadata !DIExpression()), !dbg !1006
  store volatile i32 0, i32* inttoptr (i32 1109492156 to i32*), align 4, !dbg !1018, !tbaa !658
  ret i8 %30, !dbg !1019
}

; Function Attrs: noinline nounwind
define internal zeroext i8 @avm_motor_init(i8* nocapture noundef readnone %0) #11 !dbg !1020 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !1022, metadata !DIExpression()), !dbg !1023
  tail call void @motor_PWM_Init(i16 noundef zeroext -29536, i16 noundef zeroext 40), !dbg !1024
  store volatile i16 1620, i16* inttoptr (i32 1073742912 to i16*), align 64, !dbg !1024, !tbaa !1026
  store volatile i16 1620, i16* inttoptr (i32 1073742908 to i16*), align 4, !dbg !1024, !tbaa !1028
  store volatile i16 1620, i16* inttoptr (i32 1073742904 to i16*), align 8, !dbg !1024, !tbaa !1029
  store volatile i16 1620, i16* inttoptr (i32 1073742900 to i16*), align 4, !dbg !1024, !tbaa !1030
  tail call void @delay_ms(i32 noundef 4000) #15, !dbg !1024
  store volatile i16 1650, i16* inttoptr (i32 1073742912 to i16*), align 64, !dbg !1024, !tbaa !1026
  store volatile i16 1650, i16* inttoptr (i32 1073742908 to i16*), align 4, !dbg !1024, !tbaa !1028
  store volatile i16 1650, i16* inttoptr (i32 1073742904 to i16*), align 8, !dbg !1024, !tbaa !1029
  store volatile i16 1650, i16* inttoptr (i32 1073742900 to i16*), align 4, !dbg !1024, !tbaa !1030
  ret i8 0, !dbg !1031
}

; Function Attrs: nofree noinline norecurse nounwind
define dso_local void @motor_PWM_Init(i16 noundef zeroext %0, i16 noundef zeroext %1) local_unnamed_addr #12 !dbg !1032 {
  call void @llvm.dbg.value(metadata i16 %0, metadata !1036, metadata !DIExpression()), !dbg !1038
  call void @llvm.dbg.value(metadata i16 %1, metadata !1037, metadata !DIExpression()), !dbg !1038
  %3 = load volatile i32, i32* inttoptr (i32 1073877020 to i32*), align 4, !dbg !1039, !tbaa !1040
  %4 = or i32 %3, 2, !dbg !1039
  store volatile i32 %4, i32* inttoptr (i32 1073877020 to i32*), align 4, !dbg !1039, !tbaa !1040
  %5 = load volatile i32, i32* inttoptr (i32 1073877016 to i32*), align 8, !dbg !1041, !tbaa !912
  %6 = or i32 %5, 4, !dbg !1041
  store volatile i32 %6, i32* inttoptr (i32 1073877016 to i32*), align 8, !dbg !1041, !tbaa !912
  %7 = load volatile i32, i32* inttoptr (i32 1073877016 to i32*), align 8, !dbg !1042, !tbaa !912
  %8 = or i32 %7, 8, !dbg !1042
  store volatile i32 %8, i32* inttoptr (i32 1073877016 to i32*), align 8, !dbg !1042, !tbaa !912
  %9 = load volatile i32, i32* inttoptr (i32 1073809408 to i32*), align 2048, !dbg !1043, !tbaa !1044
  %10 = and i32 %9, 16777215, !dbg !1043
  store volatile i32 %10, i32* inttoptr (i32 1073809408 to i32*), align 2048, !dbg !1043, !tbaa !1044
  %11 = load volatile i32, i32* inttoptr (i32 1073809408 to i32*), align 2048, !dbg !1045, !tbaa !1044
  %12 = or i32 %11, -1157627904, !dbg !1045
  store volatile i32 %12, i32* inttoptr (i32 1073809408 to i32*), align 2048, !dbg !1045, !tbaa !1044
  %13 = load volatile i32, i32* inttoptr (i32 1073809420 to i32*), align 4, !dbg !1046, !tbaa !1047
  %14 = or i32 %13, 128, !dbg !1046
  store volatile i32 %14, i32* inttoptr (i32 1073809420 to i32*), align 4, !dbg !1046, !tbaa !1047
  %15 = load volatile i32, i32* inttoptr (i32 1073809420 to i32*), align 4, !dbg !1048, !tbaa !1047
  %16 = or i32 %15, 64, !dbg !1048
  store volatile i32 %16, i32* inttoptr (i32 1073809420 to i32*), align 4, !dbg !1048, !tbaa !1047
  %17 = load volatile i32, i32* inttoptr (i32 1073810432 to i32*), align 1024, !dbg !1049, !tbaa !1044
  %18 = and i32 %17, -256, !dbg !1049
  store volatile i32 %18, i32* inttoptr (i32 1073810432 to i32*), align 1024, !dbg !1049, !tbaa !1044
  %19 = load volatile i32, i32* inttoptr (i32 1073810432 to i32*), align 1024, !dbg !1050, !tbaa !1044
  %20 = or i32 %19, 187, !dbg !1050
  store volatile i32 %20, i32* inttoptr (i32 1073810432 to i32*), align 1024, !dbg !1050, !tbaa !1044
  %21 = load volatile i32, i32* inttoptr (i32 1073810444 to i32*), align 4, !dbg !1051, !tbaa !1047
  %22 = or i32 %21, 1, !dbg !1051
  store volatile i32 %22, i32* inttoptr (i32 1073810444 to i32*), align 4, !dbg !1051, !tbaa !1047
  %23 = load volatile i32, i32* inttoptr (i32 1073810444 to i32*), align 4, !dbg !1052, !tbaa !1047
  %24 = or i32 %23, 2, !dbg !1052
  store volatile i32 %24, i32* inttoptr (i32 1073810444 to i32*), align 4, !dbg !1052, !tbaa !1047
  %25 = add i16 %0, -1, !dbg !1053
  store volatile i16 %25, i16* inttoptr (i32 1073742892 to i16*), align 4, !dbg !1054, !tbaa !1055
  %26 = add i16 %1, -1, !dbg !1056
  store volatile i16 %26, i16* inttoptr (i32 1073742888 to i16*), align 8, !dbg !1057, !tbaa !1058
  %27 = load volatile i16, i16* inttoptr (i32 1073742872 to i16*), align 8, !dbg !1059, !tbaa !1060
  %28 = or i16 %27, 96, !dbg !1059
  store volatile i16 %28, i16* inttoptr (i32 1073742872 to i16*), align 8, !dbg !1059, !tbaa !1060
  %29 = load volatile i16, i16* inttoptr (i32 1073742872 to i16*), align 8, !dbg !1061, !tbaa !1060
  %30 = or i16 %29, 8, !dbg !1061
  store volatile i16 %30, i16* inttoptr (i32 1073742872 to i16*), align 8, !dbg !1061, !tbaa !1060
  %31 = load volatile i16, i16* inttoptr (i32 1073742872 to i16*), align 8, !dbg !1062, !tbaa !1060
  %32 = or i16 %31, 24576, !dbg !1062
  store volatile i16 %32, i16* inttoptr (i32 1073742872 to i16*), align 8, !dbg !1062, !tbaa !1060
  %33 = load volatile i16, i16* inttoptr (i32 1073742872 to i16*), align 8, !dbg !1063, !tbaa !1060
  %34 = or i16 %33, 2048, !dbg !1063
  store volatile i16 %34, i16* inttoptr (i32 1073742872 to i16*), align 8, !dbg !1063, !tbaa !1060
  %35 = load volatile i16, i16* inttoptr (i32 1073742876 to i16*), align 4, !dbg !1064, !tbaa !1065
  %36 = or i16 %35, 96, !dbg !1064
  store volatile i16 %36, i16* inttoptr (i32 1073742876 to i16*), align 4, !dbg !1064, !tbaa !1065
  %37 = load volatile i16, i16* inttoptr (i32 1073742876 to i16*), align 4, !dbg !1066, !tbaa !1065
  %38 = or i16 %37, 8, !dbg !1066
  store volatile i16 %38, i16* inttoptr (i32 1073742876 to i16*), align 4, !dbg !1066, !tbaa !1065
  %39 = load volatile i16, i16* inttoptr (i32 1073742876 to i16*), align 4, !dbg !1067, !tbaa !1065
  %40 = or i16 %39, 24576, !dbg !1067
  store volatile i16 %40, i16* inttoptr (i32 1073742876 to i16*), align 4, !dbg !1067, !tbaa !1065
  %41 = load volatile i16, i16* inttoptr (i32 1073742876 to i16*), align 4, !dbg !1068, !tbaa !1065
  %42 = or i16 %41, 2048, !dbg !1068
  store volatile i16 %42, i16* inttoptr (i32 1073742876 to i16*), align 4, !dbg !1068, !tbaa !1065
  %43 = load volatile i16, i16* inttoptr (i32 1073742880 to i16*), align 32, !dbg !1069, !tbaa !1070
  %44 = or i16 %43, 1, !dbg !1069
  store volatile i16 %44, i16* inttoptr (i32 1073742880 to i16*), align 32, !dbg !1069, !tbaa !1070
  %45 = load volatile i16, i16* inttoptr (i32 1073742880 to i16*), align 32, !dbg !1071, !tbaa !1070
  %46 = or i16 %45, 16, !dbg !1071
  store volatile i16 %46, i16* inttoptr (i32 1073742880 to i16*), align 32, !dbg !1071, !tbaa !1070
  %47 = load volatile i16, i16* inttoptr (i32 1073742880 to i16*), align 32, !dbg !1072, !tbaa !1070
  %48 = or i16 %47, 256, !dbg !1072
  store volatile i16 %48, i16* inttoptr (i32 1073742880 to i16*), align 32, !dbg !1072, !tbaa !1070
  %49 = load volatile i16, i16* inttoptr (i32 1073742880 to i16*), align 32, !dbg !1073, !tbaa !1070
  %50 = or i16 %49, 4096, !dbg !1073
  store volatile i16 %50, i16* inttoptr (i32 1073742880 to i16*), align 32, !dbg !1073, !tbaa !1070
  store volatile i16 128, i16* inttoptr (i32 1073742848 to i16*), align 1024, !dbg !1074, !tbaa !1075
  %51 = load volatile i16, i16* inttoptr (i32 1073742848 to i16*), align 1024, !dbg !1076, !tbaa !1075
  %52 = or i16 %51, 1, !dbg !1076
  store volatile i16 %52, i16* inttoptr (i32 1073742848 to i16*), align 1024, !dbg !1076, !tbaa !1075
  ret void, !dbg !1077
}

; Function Attrs: noinline nounwind
define internal zeroext i8 @avm_mpu_init(i8* nocapture noundef readnone %0) #11 !dbg !1078 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !1080, metadata !DIExpression()), !dbg !1081
  tail call void @delay_ms(i32 noundef 7) #15, !dbg !1082
  tail call void @MPU_init(), !dbg !1083
  ret i8 0, !dbg !1084
}

; Function Attrs: noinline nounwind
define dso_local void @MPU_init() local_unnamed_addr #11 !dbg !1085 {
  tail call void @IIC_init() #15, !dbg !1086
  br label %1, !dbg !1087

1:                                                ; preds = %1, %0
  tail call void @MPU_Sigle_Write(i8 noundef zeroext 107, i8 noundef zeroext 0), !dbg !1088
  tail call void @MPU_Sigle_Write(i8 noundef zeroext 25, i8 noundef zeroext 7), !dbg !1090
  tail call void @MPU_Sigle_Write(i8 noundef zeroext 26, i8 noundef zeroext 6), !dbg !1091
  tail call void @MPU_Sigle_Write(i8 noundef zeroext 27, i8 noundef zeroext 24), !dbg !1092
  tail call void @MPU_Sigle_Write(i8 noundef zeroext 28, i8 noundef zeroext 1), !dbg !1093
  %2 = tail call zeroext i8 @MPU_Sigle_Read(i32 noundef 117), !dbg !1094
  %3 = icmp eq i8 %2, 104, !dbg !1094
  br i1 %3, label %4, label %1, !dbg !1095, !llvm.loop !1096

4:                                                ; preds = %1
  ret void, !dbg !1098
}

; Function Attrs: noinline nounwind
define dso_local void @MPU_Sigle_Write(i8 noundef zeroext %0, i8 noundef zeroext %1) local_unnamed_addr #11 !dbg !1099 {
  call void @llvm.dbg.value(metadata i8 %0, metadata !1103, metadata !DIExpression()), !dbg !1105
  call void @llvm.dbg.value(metadata i8 %1, metadata !1104, metadata !DIExpression()), !dbg !1105
  tail call void @IIC_Start() #15, !dbg !1106
  tail call void @IIC_Send(i8 noundef zeroext -48) #15, !dbg !1107
  %3 = tail call zeroext i8 @IIC_Wait_Ack() #15, !dbg !1108
  %4 = icmp eq i8 %3, 0, !dbg !1108
  br i1 %4, label %5, label %6, !dbg !1110

5:                                                ; preds = %2
  store volatile i32 1, i32* inttoptr (i32 1109557640 to i32*), align 8, !dbg !1111, !tbaa !658
  br label %6, !dbg !1112

6:                                                ; preds = %5, %2
  tail call void @IIC_Send(i8 noundef zeroext %0) #15, !dbg !1113
  %7 = tail call zeroext i8 @IIC_Wait_Ack() #15, !dbg !1114
  tail call void @IIC_Send(i8 noundef zeroext %1) #15, !dbg !1115
  %8 = tail call zeroext i8 @IIC_Wait_Ack() #15, !dbg !1116
  tail call void @IIC_Stop() #15, !dbg !1117
  ret void, !dbg !1118
}

; Function Attrs: noinline nounwind
define dso_local zeroext i8 @MPU_Sigle_Read(i32 noundef %0) local_unnamed_addr #11 !dbg !1119 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !1123, metadata !DIExpression()), !dbg !1125
  tail call void @IIC_Start() #15, !dbg !1126
  tail call void @IIC_Send(i8 noundef zeroext -48) #15, !dbg !1127
  %2 = tail call zeroext i8 @IIC_Wait_Ack() #15, !dbg !1128
  %3 = trunc i32 %0 to i8, !dbg !1129
  tail call void @IIC_Send(i8 noundef zeroext %3) #15, !dbg !1130
  %4 = tail call zeroext i8 @IIC_Wait_Ack() #15, !dbg !1131
  tail call void @IIC_Start() #15, !dbg !1132
  tail call void @IIC_Send(i8 noundef zeroext -47) #15, !dbg !1133
  %5 = tail call zeroext i8 @IIC_Wait_Ack() #15, !dbg !1134
  %6 = tail call zeroext i8 @IIC_Read() #15, !dbg !1135
  call void @llvm.dbg.value(metadata i8 %6, metadata !1124, metadata !DIExpression()), !dbg !1125
  tail call void @IIC_Ack(i8 noundef zeroext 1) #15, !dbg !1136
  tail call void @IIC_Stop() #15, !dbg !1137
  ret i8 %6, !dbg !1138
}

; Function Attrs: noinline nounwind
define dso_local signext i16 @MPU_GetData(i8 noundef zeroext %0) local_unnamed_addr #11 !dbg !1139 {
  call void @llvm.dbg.value(metadata i8 %0, metadata !1143, metadata !DIExpression()), !dbg !1146
  %2 = zext i8 %0 to i32, !dbg !1147
  %3 = tail call zeroext i8 @MPU_Sigle_Read(i32 noundef %2), !dbg !1148
  call void @llvm.dbg.value(metadata i8 %3, metadata !1144, metadata !DIExpression()), !dbg !1146
  %4 = add nuw nsw i32 %2, 1, !dbg !1149
  %5 = tail call zeroext i8 @MPU_Sigle_Read(i32 noundef %4), !dbg !1150
  call void @llvm.dbg.value(metadata i8 %5, metadata !1145, metadata !DIExpression()), !dbg !1146
  %6 = zext i8 %3 to i16, !dbg !1151
  %7 = shl nuw i16 %6, 8, !dbg !1152
  %8 = zext i8 %5 to i16, !dbg !1153
  %9 = or i16 %7, %8, !dbg !1154
  ret i16 %9, !dbg !1155
}

; Function Attrs: noinline nounwind
define dso_local void @MPU6050_getStructData(%struct.SixAxis* nocapture noundef %0) local_unnamed_addr #11 !dbg !1156 {
  call void @llvm.dbg.value(metadata %struct.SixAxis* %0, metadata !1162, metadata !DIExpression()), !dbg !1163
  %2 = tail call signext i16 @MPU_GetData(i8 noundef zeroext 67), !dbg !1164
  %3 = sitofp i16 %2 to float, !dbg !1165
  %4 = fdiv float %3, 0x4030666660000000, !dbg !1166
  %5 = getelementptr inbounds %struct.SixAxis, %struct.SixAxis* %0, i32 0, i32 0, !dbg !1167
  store float %4, float* %5, align 4, !dbg !1168, !tbaa !1169
  %6 = tail call signext i16 @MPU_GetData(i8 noundef zeroext 69), !dbg !1172
  %7 = sitofp i16 %6 to float, !dbg !1173
  %8 = fdiv float %7, 0x4030666660000000, !dbg !1174
  %9 = getelementptr inbounds %struct.SixAxis, %struct.SixAxis* %0, i32 0, i32 1, !dbg !1175
  store float %8, float* %9, align 4, !dbg !1176, !tbaa !1177
  %10 = tail call signext i16 @MPU_GetData(i8 noundef zeroext 71), !dbg !1178
  %11 = sitofp i16 %10 to float, !dbg !1179
  %12 = fdiv float %11, 0x4030666660000000, !dbg !1180
  %13 = getelementptr inbounds %struct.SixAxis, %struct.SixAxis* %0, i32 0, i32 2, !dbg !1181
  store float %12, float* %13, align 4, !dbg !1182, !tbaa !1183
  %14 = tail call signext i16 @MPU_GetData(i8 noundef zeroext 59), !dbg !1184
  %15 = sitofp i16 %14 to float, !dbg !1185
  %16 = fdiv float %15, 0x409A1F51E0000000, !dbg !1186
  %17 = getelementptr inbounds %struct.SixAxis, %struct.SixAxis* %0, i32 0, i32 3, !dbg !1187
  store float %16, float* %17, align 4, !dbg !1188, !tbaa !1189
  %18 = tail call signext i16 @MPU_GetData(i8 noundef zeroext 61), !dbg !1190
  %19 = sitofp i16 %18 to float, !dbg !1191
  %20 = fdiv float %19, 0x409A1F51E0000000, !dbg !1192
  %21 = getelementptr inbounds %struct.SixAxis, %struct.SixAxis* %0, i32 0, i32 4, !dbg !1193
  store float %20, float* %21, align 4, !dbg !1194, !tbaa !1195
  %22 = tail call signext i16 @MPU_GetData(i8 noundef zeroext 63), !dbg !1196
  %23 = sitofp i16 %22 to float, !dbg !1197
  %24 = fdiv float %23, 0x409A1F51E0000000, !dbg !1198
  %25 = getelementptr inbounds %struct.SixAxis, %struct.SixAxis* %0, i32 0, i32 5, !dbg !1199
  %26 = load float, float* %5, align 4, !dbg !1200, !tbaa !1169
  %27 = fadd float %26, 0x3FF95D6380000000, !dbg !1200
  store float %27, float* %5, align 4, !dbg !1200, !tbaa !1169
  %28 = load float, float* %9, align 4, !dbg !1201, !tbaa !1177
  %29 = fadd float %28, 0x3FE95CFAA0000000, !dbg !1201
  store float %29, float* %9, align 4, !dbg !1201, !tbaa !1177
  %30 = load float, float* %13, align 4, !dbg !1202, !tbaa !1183
  %31 = fadd float %30, 0x400018C7E0000000, !dbg !1202
  store float %31, float* %13, align 4, !dbg !1202, !tbaa !1183
  %32 = load float, float* %17, align 4, !dbg !1203, !tbaa !1189
  %33 = fadd float %32, 0.000000e+00, !dbg !1203
  store float %33, float* %17, align 4, !dbg !1203, !tbaa !1189
  %34 = load float, float* %21, align 4, !dbg !1204, !tbaa !1195
  %35 = fadd float %34, 0.000000e+00, !dbg !1204
  store float %35, float* %21, align 4, !dbg !1204, !tbaa !1195
  %36 = fadd float %24, 0x3FC99999A0000000, !dbg !1205
  store float %36, float* %25, align 4, !dbg !1205, !tbaa !1206
  ret void, !dbg !1207
}

; Function Attrs: mustprogress nofree noinline nounwind willreturn
define dso_local void @IMU_Comput([6 x i32] %0) local_unnamed_addr #13 !dbg !351 {
  %2 = extractvalue [6 x i32] %0, 0
  %3 = bitcast i32 %2 to float
  call void @llvm.dbg.value(metadata float %3, metadata !366, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32)), !dbg !1208
  %4 = extractvalue [6 x i32] %0, 1
  %5 = bitcast i32 %4 to float
  call void @llvm.dbg.value(metadata float %5, metadata !366, metadata !DIExpression(DW_OP_LLVM_fragment, 32, 32)), !dbg !1208
  %6 = extractvalue [6 x i32] %0, 2
  %7 = bitcast i32 %6 to float
  call void @llvm.dbg.value(metadata float %7, metadata !366, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 32)), !dbg !1208
  %8 = extractvalue [6 x i32] %0, 3
  %9 = bitcast i32 %8 to float
  call void @llvm.dbg.value(metadata float %9, metadata !366, metadata !DIExpression(DW_OP_LLVM_fragment, 96, 32)), !dbg !1208
  %10 = extractvalue [6 x i32] %0, 4
  %11 = bitcast i32 %10 to float
  call void @llvm.dbg.value(metadata float %11, metadata !366, metadata !DIExpression(DW_OP_LLVM_fragment, 128, 32)), !dbg !1208
  %12 = extractvalue [6 x i32] %0, 5
  %13 = bitcast i32 %12 to float
  call void @llvm.dbg.value(metadata float %13, metadata !366, metadata !DIExpression(DW_OP_LLVM_fragment, 160, 32)), !dbg !1208
  %14 = fmul float %11, %11, !dbg !1209
  %15 = tail call float @llvm.fmuladd.f32(float %9, float %9, float %14), !dbg !1210
  %16 = tail call float @llvm.fmuladd.f32(float %13, float %13, float %15), !dbg !1211
  %17 = tail call float @sqrtf(float noundef %16) #14, !dbg !1212
  call void @llvm.dbg.value(metadata float %17, metadata !367, metadata !DIExpression()), !dbg !1208
  %18 = fdiv float %9, %17, !dbg !1213
  call void @llvm.dbg.value(metadata float %18, metadata !366, metadata !DIExpression(DW_OP_LLVM_fragment, 96, 32)), !dbg !1208
  %19 = fdiv float %11, %17, !dbg !1214
  call void @llvm.dbg.value(metadata float %19, metadata !366, metadata !DIExpression(DW_OP_LLVM_fragment, 128, 32)), !dbg !1208
  %20 = fdiv float %13, %17, !dbg !1215
  call void @llvm.dbg.value(metadata float %20, metadata !366, metadata !DIExpression(DW_OP_LLVM_fragment, 160, 32)), !dbg !1208
  %21 = load float, float* @IMU_Comput.g_q1, align 4, !dbg !1216, !tbaa !1217
  %22 = load float, float* @IMU_Comput.g_q3, align 4, !dbg !1218, !tbaa !1217
  %23 = load float, float* @IMU_Comput.g_q0, align 4, !dbg !1219, !tbaa !1217
  %24 = load float, float* @IMU_Comput.g_q2, align 4, !dbg !1220, !tbaa !1217
  %25 = fneg float %23, !dbg !1221
  %26 = fmul float %24, %25, !dbg !1221
  %27 = tail call float @llvm.fmuladd.f32(float %21, float %22, float %26), !dbg !1221
  %28 = fmul float %27, 2.000000e+00, !dbg !1222
  call void @llvm.dbg.value(metadata float %28, metadata !368, metadata !DIExpression()), !dbg !1208
  %29 = fmul float %22, %24, !dbg !1223
  %30 = tail call float @llvm.fmuladd.f32(float %23, float %21, float %29), !dbg !1224
  %31 = fmul float %30, 2.000000e+00, !dbg !1225
  call void @llvm.dbg.value(metadata float %31, metadata !369, metadata !DIExpression()), !dbg !1208
  %32 = fneg float %21, !dbg !1226
  %33 = fmul float %21, %32, !dbg !1226
  %34 = tail call float @llvm.fmuladd.f32(float %23, float %23, float %33), !dbg !1226
  %35 = fneg float %24, !dbg !1227
  %36 = tail call float @llvm.fmuladd.f32(float %35, float %24, float %34), !dbg !1227
  %37 = tail call float @llvm.fmuladd.f32(float %22, float %22, float %36), !dbg !1228
  call void @llvm.dbg.value(metadata float %37, metadata !370, metadata !DIExpression()), !dbg !1208
  %38 = fneg float %20, !dbg !1229
  %39 = fmul float %31, %38, !dbg !1229
  %40 = tail call float @llvm.fmuladd.f32(float %19, float %37, float %39), !dbg !1229
  call void @llvm.dbg.value(metadata float %40, metadata !371, metadata !DIExpression()), !dbg !1208
  %41 = fneg float %18, !dbg !1230
  %42 = fmul float %37, %41, !dbg !1230
  %43 = tail call float @llvm.fmuladd.f32(float %20, float %28, float %42), !dbg !1230
  call void @llvm.dbg.value(metadata float %43, metadata !372, metadata !DIExpression()), !dbg !1208
  %44 = fneg float %19, !dbg !1231
  %45 = fmul float %28, %44, !dbg !1231
  %46 = tail call float @llvm.fmuladd.f32(float %18, float %31, float %45), !dbg !1231
  call void @llvm.dbg.value(metadata float %46, metadata !373, metadata !DIExpression()), !dbg !1208
  %47 = load float, float* @IMU_Comput.g_exInt, align 4, !dbg !1232, !tbaa !1217
  %48 = tail call float @llvm.fmuladd.f32(float %40, float 0x3F60624DE0000000, float %47), !dbg !1232
  store float %48, float* @IMU_Comput.g_exInt, align 4, !dbg !1232, !tbaa !1217
  %49 = load float, float* @IMU_Comput.g_eyInt, align 4, !dbg !1233, !tbaa !1217
  %50 = tail call float @llvm.fmuladd.f32(float %43, float 0x3F60624DE0000000, float %49), !dbg !1233
  store float %50, float* @IMU_Comput.g_eyInt, align 4, !dbg !1233, !tbaa !1217
  %51 = load float, float* @IMU_Comput.g_ezInt, align 4, !dbg !1234, !tbaa !1217
  %52 = tail call float @llvm.fmuladd.f32(float %46, float 0x3F60624DE0000000, float %51), !dbg !1234
  store float %52, float* @IMU_Comput.g_ezInt, align 4, !dbg !1234, !tbaa !1217
  %53 = tail call float @llvm.fmuladd.f32(float %40, float 1.000000e+02, float %48), !dbg !1235
  %54 = fadd float %53, %3, !dbg !1236
  call void @llvm.dbg.value(metadata float %54, metadata !366, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32)), !dbg !1208
  %55 = tail call float @llvm.fmuladd.f32(float %43, float 1.000000e+02, float %50), !dbg !1237
  %56 = fadd float %55, %5, !dbg !1238
  call void @llvm.dbg.value(metadata float %56, metadata !366, metadata !DIExpression(DW_OP_LLVM_fragment, 32, 32)), !dbg !1208
  %57 = tail call float @llvm.fmuladd.f32(float %46, float 1.000000e+02, float %52), !dbg !1239
  %58 = fadd float %57, %7, !dbg !1240
  call void @llvm.dbg.value(metadata float %58, metadata !366, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 32)), !dbg !1208
  %59 = fmul float %56, %35, !dbg !1241
  %60 = tail call float @llvm.fmuladd.f32(float %32, float %54, float %59), !dbg !1241
  %61 = fneg float %22, !dbg !1242
  %62 = tail call float @llvm.fmuladd.f32(float %61, float %58, float %60), !dbg !1242
  %63 = tail call float @llvm.fmuladd.f32(float %62, float 0x3F50624DE0000000, float %23), !dbg !1243
  store float %63, float* @IMU_Comput.g_q0, align 4, !dbg !1243, !tbaa !1217
  %64 = fmul float %24, %58, !dbg !1244
  %65 = tail call float @llvm.fmuladd.f32(float %63, float %54, float %64), !dbg !1245
  %66 = tail call float @llvm.fmuladd.f32(float %61, float %56, float %65), !dbg !1246
  %67 = tail call float @llvm.fmuladd.f32(float %66, float 0x3F50624DE0000000, float %21), !dbg !1247
  store float %67, float* @IMU_Comput.g_q1, align 4, !dbg !1247, !tbaa !1217
  %68 = fneg float %67, !dbg !1248
  %69 = fmul float %58, %68, !dbg !1248
  %70 = tail call float @llvm.fmuladd.f32(float %63, float %56, float %69), !dbg !1248
  %71 = tail call float @llvm.fmuladd.f32(float %22, float %54, float %70), !dbg !1249
  %72 = tail call float @llvm.fmuladd.f32(float %71, float 0x3F50624DE0000000, float %24), !dbg !1250
  store float %72, float* @IMU_Comput.g_q2, align 4, !dbg !1250, !tbaa !1217
  %73 = fmul float %56, %67, !dbg !1251
  %74 = tail call float @llvm.fmuladd.f32(float %63, float %58, float %73), !dbg !1252
  %75 = fneg float %72, !dbg !1253
  %76 = tail call float @llvm.fmuladd.f32(float %75, float %54, float %74), !dbg !1253
  %77 = tail call float @llvm.fmuladd.f32(float %76, float 0x3F50624DE0000000, float %22), !dbg !1254
  store float %77, float* @IMU_Comput.g_q3, align 4, !dbg !1254, !tbaa !1217
  %78 = fmul float %67, %67, !dbg !1255
  %79 = tail call float @llvm.fmuladd.f32(float %63, float %63, float %78), !dbg !1256
  %80 = tail call float @llvm.fmuladd.f32(float %72, float %72, float %79), !dbg !1257
  %81 = tail call float @llvm.fmuladd.f32(float %77, float %77, float %80), !dbg !1258
  %82 = tail call float @sqrtf(float noundef %81) #14, !dbg !1259
  call void @llvm.dbg.value(metadata float %82, metadata !367, metadata !DIExpression()), !dbg !1208
  %83 = load float, float* @IMU_Comput.g_q0, align 4, !dbg !1260, !tbaa !1217
  %84 = fdiv float %83, %82, !dbg !1261
  store float %84, float* @IMU_Comput.g_q0, align 4, !dbg !1262, !tbaa !1217
  %85 = load float, float* @IMU_Comput.g_q1, align 4, !dbg !1263, !tbaa !1217
  %86 = fdiv float %85, %82, !dbg !1264
  store float %86, float* @IMU_Comput.g_q1, align 4, !dbg !1265, !tbaa !1217
  %87 = load float, float* @IMU_Comput.g_q2, align 4, !dbg !1266, !tbaa !1217
  %88 = fdiv float %87, %82, !dbg !1267
  store float %88, float* @IMU_Comput.g_q2, align 4, !dbg !1268, !tbaa !1217
  %89 = load float, float* @IMU_Comput.g_q3, align 4, !dbg !1269, !tbaa !1217
  %90 = fdiv float %89, %82, !dbg !1270
  store float %90, float* @IMU_Comput.g_q3, align 4, !dbg !1271, !tbaa !1217
  %91 = fmul float %86, -2.000000e+00, !dbg !1272
  %92 = fmul float %84, 2.000000e+00, !dbg !1273
  %93 = fmul float %92, %88, !dbg !1274
  %94 = tail call float @llvm.fmuladd.f32(float %91, float %90, float %93), !dbg !1275
  %95 = fpext float %94 to double, !dbg !1276
  %96 = tail call double @asin(double noundef %95) #15, !dbg !1277
  %97 = fmul double %96, 5.730000e+01, !dbg !1278
  %98 = fptrunc double %97 to float, !dbg !1277
  store float %98, float* @g_Pitch, align 4, !dbg !1279, !tbaa !1217
  %99 = load float, float* @IMU_Comput.g_q2, align 4, !dbg !1280, !tbaa !1217
  %100 = fmul float %99, 2.000000e+00, !dbg !1281
  %101 = load float, float* @IMU_Comput.g_q3, align 4, !dbg !1282, !tbaa !1217
  %102 = load float, float* @IMU_Comput.g_q0, align 4, !dbg !1283, !tbaa !1217
  %103 = fmul float %102, 2.000000e+00, !dbg !1284
  %104 = load float, float* @IMU_Comput.g_q1, align 4, !dbg !1285, !tbaa !1217
  %105 = fmul float %103, %104, !dbg !1286
  %106 = tail call float @llvm.fmuladd.f32(float %100, float %101, float %105), !dbg !1287
  %107 = fpext float %106 to double, !dbg !1288
  %108 = fmul float %104, -2.000000e+00, !dbg !1289
  %109 = fneg float %100, !dbg !1290
  %110 = fmul float %99, %109, !dbg !1290
  %111 = tail call float @llvm.fmuladd.f32(float %108, float %104, float %110), !dbg !1290
  %112 = fadd float %111, 1.000000e+00, !dbg !1291
  %113 = fpext float %112 to double, !dbg !1292
  %114 = tail call double @atan2(double noundef %107, double noundef %113) #15, !dbg !1293
  %115 = fmul double %114, 5.730000e+01, !dbg !1294
  %116 = fptrunc double %115 to float, !dbg !1293
  store float %116, float* @g_Roll, align 4, !dbg !1295, !tbaa !1217
  %117 = load float, float* @IMU_Comput.g_q1, align 4, !dbg !1296, !tbaa !1217
  %118 = load float, float* @IMU_Comput.g_q2, align 4, !dbg !1297, !tbaa !1217
  %119 = load float, float* @IMU_Comput.g_q0, align 4, !dbg !1298, !tbaa !1217
  %120 = load float, float* @IMU_Comput.g_q3, align 4, !dbg !1299, !tbaa !1217
  %121 = fmul float %119, %120, !dbg !1300
  %122 = tail call float @llvm.fmuladd.f32(float %117, float %118, float %121), !dbg !1301
  %123 = fmul float %122, 2.000000e+00, !dbg !1302
  %124 = fpext float %123 to double, !dbg !1303
  %125 = fmul float %117, %117, !dbg !1304
  %126 = tail call float @llvm.fmuladd.f32(float %119, float %119, float %125), !dbg !1305
  %127 = fneg float %118, !dbg !1306
  %128 = tail call float @llvm.fmuladd.f32(float %127, float %118, float %126), !dbg !1306
  %129 = fneg float %120, !dbg !1307
  %130 = tail call float @llvm.fmuladd.f32(float %129, float %120, float %128), !dbg !1307
  %131 = fpext float %130 to double, !dbg !1308
  %132 = tail call double @atan2(double noundef %124, double noundef %131) #15, !dbg !1309
  %133 = fmul double %132, 5.730000e+01, !dbg !1310
  %134 = fptrunc double %133 to float, !dbg !1309
  store float %134, float* @g_Yaw, align 4, !dbg !1311, !tbaa !1217
  ret void, !dbg !1312
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare float @llvm.fmuladd.f32(float, float, float) #4

declare float @sqrtf(float) local_unnamed_addr

; Function Attrs: mustprogress nofree nounwind willreturn writeonly
declare dso_local double @asin(double noundef) local_unnamed_addr #14

; Function Attrs: mustprogress nofree nounwind willreturn writeonly
declare dso_local double @atan2(double noundef, double noundef) local_unnamed_addr #14

; Function Attrs: nofree noinline norecurse nounwind
define internal zeroext i8 @avm_uart_init(i8* nocapture noundef readonly %0) #12 !dbg !1313 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !1315, metadata !DIExpression()), !dbg !1316
  %2 = bitcast i8* %0 to i32*, !dbg !1317
  %3 = load i32, i32* %2, align 4, !dbg !1318, !tbaa !698
  %4 = getelementptr inbounds i8, i8* %0, i32 4, !dbg !1319
  %5 = bitcast i8* %4 to i32*, !dbg !1319
  %6 = load i32, i32* %5, align 4, !dbg !1319, !tbaa !698
  tail call void @uart_init(i32 noundef %3, i32 noundef %6), !dbg !1320
  ret i8 0, !dbg !1321
}

; Function Attrs: nofree noinline norecurse nounwind
define dso_local void @uart_init(i32 noundef %0, i32 noundef %1) local_unnamed_addr #12 !dbg !1322 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !1326, metadata !DIExpression()), !dbg !1331
  call void @llvm.dbg.value(metadata i32 %1, metadata !1327, metadata !DIExpression()), !dbg !1331
  %3 = mul i32 %0, 1000000, !dbg !1332
  %4 = uitofp i32 %3 to float, !dbg !1333
  %5 = shl i32 %1, 4, !dbg !1334
  %6 = uitofp i32 %5 to float, !dbg !1335
  %7 = fdiv float %4, %6, !dbg !1336
  call void @llvm.dbg.value(metadata float %7, metadata !1328, metadata !DIExpression()), !dbg !1331
  %8 = fptoui float %7 to i16, !dbg !1337
  call void @llvm.dbg.value(metadata i16 %8, metadata !1329, metadata !DIExpression()), !dbg !1331
  %9 = uitofp i16 %8 to float, !dbg !1338
  %10 = fsub float %7, %9, !dbg !1339
  %11 = fmul float %10, 1.600000e+01, !dbg !1340
  %12 = fptoui float %11 to i16, !dbg !1341
  call void @llvm.dbg.value(metadata i16 %12, metadata !1330, metadata !DIExpression()), !dbg !1331
  %13 = shl i16 %8, 4, !dbg !1342
  call void @llvm.dbg.value(metadata i16 %13, metadata !1329, metadata !DIExpression()), !dbg !1331
  %14 = add i16 %13, %12, !dbg !1343
  call void @llvm.dbg.value(metadata i16 %14, metadata !1329, metadata !DIExpression()), !dbg !1331
  %15 = load volatile i32, i32* inttoptr (i32 1073877016 to i32*), align 8, !dbg !1344, !tbaa !912
  %16 = or i32 %15, 4, !dbg !1344
  store volatile i32 %16, i32* inttoptr (i32 1073877016 to i32*), align 8, !dbg !1344, !tbaa !912
  %17 = load volatile i32, i32* inttoptr (i32 1073877016 to i32*), align 8, !dbg !1345, !tbaa !912
  %18 = or i32 %17, 16384, !dbg !1345
  store volatile i32 %18, i32* inttoptr (i32 1073877016 to i32*), align 8, !dbg !1345, !tbaa !912
  %19 = load volatile i32, i32* inttoptr (i32 1073809412 to i32*), align 4, !dbg !1346, !tbaa !914
  %20 = and i32 %19, -4081, !dbg !1346
  store volatile i32 %20, i32* inttoptr (i32 1073809412 to i32*), align 4, !dbg !1346, !tbaa !914
  %21 = load volatile i32, i32* inttoptr (i32 1073809412 to i32*), align 4, !dbg !1347, !tbaa !914
  %22 = or i32 %21, 2224, !dbg !1347
  store volatile i32 %22, i32* inttoptr (i32 1073809412 to i32*), align 4, !dbg !1347, !tbaa !914
  %23 = load volatile i32, i32* inttoptr (i32 1073877004 to i32*), align 4, !dbg !1348, !tbaa !1349
  %24 = or i32 %23, 16384, !dbg !1348
  store volatile i32 %24, i32* inttoptr (i32 1073877004 to i32*), align 4, !dbg !1348, !tbaa !1349
  %25 = load volatile i32, i32* inttoptr (i32 1073877004 to i32*), align 4, !dbg !1350, !tbaa !1349
  %26 = and i32 %25, -16385, !dbg !1350
  store volatile i32 %26, i32* inttoptr (i32 1073877004 to i32*), align 4, !dbg !1350, !tbaa !1349
  store volatile i16 %14, i16* inttoptr (i32 1073821704 to i16*), align 8, !dbg !1351, !tbaa !1352
  %27 = load volatile i16, i16* inttoptr (i32 1073821708 to i16*), align 4, !dbg !1354, !tbaa !1355
  %28 = or i16 %27, 8204, !dbg !1354
  store volatile i16 %28, i16* inttoptr (i32 1073821708 to i16*), align 4, !dbg !1354, !tbaa !1355
  %29 = load volatile i16, i16* inttoptr (i32 1073821708 to i16*), align 4, !dbg !1356, !tbaa !1355
  %30 = or i16 %29, 256, !dbg !1356
  store volatile i16 %30, i16* inttoptr (i32 1073821708 to i16*), align 4, !dbg !1356, !tbaa !1355
  %31 = load volatile i16, i16* inttoptr (i32 1073821708 to i16*), align 4, !dbg !1357, !tbaa !1355
  %32 = or i16 %31, 32, !dbg !1357
  store volatile i16 %32, i16* inttoptr (i32 1073821708 to i16*), align 4, !dbg !1357, !tbaa !1355
  %33 = load volatile i16, i16* inttoptr (i32 1073821696 to i16*), align 2048, !dbg !1358, !tbaa !1359
  tail call fastcc void @NVIC_EnableIRQ(), !dbg !1360
  tail call fastcc void @NVIC_SetPriority(), !dbg !1361
  ret void, !dbg !1362
}

; Function Attrs: nofree noinline norecurse nounwind
define internal fastcc void @NVIC_EnableIRQ() unnamed_addr #12 !dbg !1363 {
  call void @llvm.dbg.value(metadata i32 37, metadata !1368, metadata !DIExpression()), !dbg !1369
  store volatile i32 32, i32* inttoptr (i32 -536813308 to i32*), align 4, !dbg !1370, !tbaa !698
  ret void, !dbg !1371
}

; Function Attrs: nofree noinline norecurse nounwind
define internal fastcc void @NVIC_SetPriority() unnamed_addr #12 !dbg !1372 {
  call void @llvm.dbg.value(metadata i32 37, metadata !1376, metadata !DIExpression()), !dbg !1378
  call void @llvm.dbg.value(metadata i32 3, metadata !1377, metadata !DIExpression()), !dbg !1378
  store volatile i8 48, i8* inttoptr (i32 -536812507 to i8*), align 1, !dbg !1379, !tbaa !792
  ret void, !dbg !1382
}

; Function Attrs: noinline nounwind
define dso_local void @USART1_IRQHandler() #11 !dbg !1383 {
  %1 = load volatile i16, i16* inttoptr (i32 1073821696 to i16*), align 2048, !dbg !1389, !tbaa !1359
  %2 = and i16 %1, 32, !dbg !1390
  %3 = icmp eq i16 %2, 0, !dbg !1390
  br i1 %3, label %31, label %4, !dbg !1391

4:                                                ; preds = %0
  %5 = load volatile i16, i16* inttoptr (i32 1073821700 to i16*), align 4, !dbg !1392, !tbaa !1393
  call void @llvm.dbg.value(metadata i16 %5, metadata !1385, metadata !DIExpression(DW_OP_LLVM_convert, 16, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1394
  %6 = trunc i16 %5 to i8, !dbg !1395
  switch i8 %6, label %31 [
    i8 36, label %7
    i8 62, label %30
  ], !dbg !1395

7:                                                ; preds = %4
  tail call void @MPU6050_getStructData(%struct.SixAxis* noundef nonnull @avm_euler) #15, !dbg !1396
  %8 = load i32, i32* bitcast (%struct.SixAxis* @avm_euler to i32*), align 4, !dbg !1398
  %9 = insertvalue [6 x i32] undef, i32 %8, 0, !dbg !1398
  %10 = load i32, i32* bitcast (float* getelementptr inbounds (%struct.SixAxis, %struct.SixAxis* @avm_euler, i32 0, i32 1) to i32*), align 4, !dbg !1398
  %11 = insertvalue [6 x i32] %9, i32 %10, 1, !dbg !1398
  %12 = load i32, i32* bitcast (float* getelementptr inbounds (%struct.SixAxis, %struct.SixAxis* @avm_euler, i32 0, i32 2) to i32*), align 4, !dbg !1398
  %13 = insertvalue [6 x i32] %11, i32 %12, 2, !dbg !1398
  %14 = load i32, i32* bitcast (float* getelementptr inbounds (%struct.SixAxis, %struct.SixAxis* @avm_euler, i32 0, i32 3) to i32*), align 4, !dbg !1398
  %15 = insertvalue [6 x i32] %13, i32 %14, 3, !dbg !1398
  %16 = load i32, i32* bitcast (float* getelementptr inbounds (%struct.SixAxis, %struct.SixAxis* @avm_euler, i32 0, i32 4) to i32*), align 4, !dbg !1398
  %17 = insertvalue [6 x i32] %15, i32 %16, 4, !dbg !1398
  %18 = load i32, i32* bitcast (float* getelementptr inbounds (%struct.SixAxis, %struct.SixAxis* @avm_euler, i32 0, i32 5) to i32*), align 4, !dbg !1398
  %19 = insertvalue [6 x i32] %17, i32 %18, 5, !dbg !1398
  tail call void @IMU_Comput([6 x i32] %19) #15, !dbg !1398
  tail call void @pid_SingleAxis(%struct.pid_st* noundef nonnull @avm_pid, float noundef 0.000000e+00) #15, !dbg !1399
  %20 = load float, float* @g_Pitch, align 4, !dbg !1400, !tbaa !1217
  %21 = tail call zeroext i8 @uart_Float2Char(float noundef %20), !dbg !1401
  tail call void @uart_sendStr(i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i32 0, i32 0)), !dbg !1402
  %22 = load float, float* @g_Roll, align 4, !dbg !1403, !tbaa !1217
  %23 = tail call zeroext i8 @uart_Float2Char(float noundef %22), !dbg !1404
  tail call void @uart_sendStr(i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i32 0, i32 0)), !dbg !1405
  %24 = load float, float* @g_Yaw, align 4, !dbg !1406, !tbaa !1217
  %25 = tail call zeroext i8 @uart_Float2Char(float noundef %24), !dbg !1407
  tail call void @uart_sendStr(i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i32 0, i32 0)), !dbg !1408
  %26 = load i16*, i16** getelementptr inbounds (%struct.pid_st, %struct.pid_st* @avm_pid, i32 0, i32 9), align 4, !dbg !1409, !tbaa !1410
  %27 = load volatile i16, i16* %26, align 2, !dbg !1412, !tbaa !1413
  tail call void @uart_short2char(i16 noundef signext %27), !dbg !1414
  tail call void @uart_sendStr(i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i32 0, i32 0)), !dbg !1415
  %28 = load i16*, i16** getelementptr inbounds (%struct.pid_st, %struct.pid_st* @avm_pid, i32 0, i32 10), align 4, !dbg !1416, !tbaa !1417
  %29 = load volatile i16, i16* %28, align 2, !dbg !1418, !tbaa !1413
  tail call void @uart_short2char(i16 noundef signext %29), !dbg !1419
  tail call void @uart_sendStr(i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i32 0, i32 0)), !dbg !1420
  br label %31, !dbg !1421

30:                                               ; preds = %4
  tail call void @uart_sendStr(i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @.str.2, i32 0, i32 0)), !dbg !1422
  tail call void @jump2ISP() #15, !dbg !1423
  br label %31, !dbg !1423

31:                                               ; preds = %7, %4, %30, %0
  ret void, !dbg !1424
}

; Function Attrs: nofree noinline nounwind
define dso_local zeroext i8 @uart_Float2Char(float noundef %0) local_unnamed_addr #8 !dbg !1425 {
  %2 = alloca i64, align 8
  %3 = bitcast i64* %2 to [8 x i8]*
  call void @llvm.dbg.value(metadata float %0, metadata !1429, metadata !DIExpression()), !dbg !1442
  call void @llvm.dbg.value(metadata i8 0, metadata !1432, metadata !DIExpression()), !dbg !1442
  %4 = bitcast i64* %2 to i8*, !dbg !1443
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %4) #15, !dbg !1443
  call void @llvm.dbg.declare(metadata [8 x i8]* %3, metadata !1434, metadata !DIExpression()), !dbg !1444
  store i64 0, i64* %2, align 8, !dbg !1444
  %5 = fcmp olt float %0, 0.000000e+00, !dbg !1445
  br i1 %5, label %6, label %8, !dbg !1447

6:                                                ; preds = %1
  %7 = fneg float %0, !dbg !1448
  call void @llvm.dbg.value(metadata float %7, metadata !1429, metadata !DIExpression()), !dbg !1442
  tail call void @uart_sendData(i8 noundef zeroext 45), !dbg !1450
  br label %8, !dbg !1451

8:                                                ; preds = %6, %1
  %9 = phi float [ %7, %6 ], [ %0, %1 ]
  call void @llvm.dbg.value(metadata float %9, metadata !1429, metadata !DIExpression()), !dbg !1442
  %10 = fcmp ult float %9, 1.000000e+00, !dbg !1452
  %11 = fptoui float %9 to i8, !dbg !1454
  %12 = uitofp i8 %11 to float, !dbg !1454
  %13 = select i1 %10, float 0.000000e+00, float %12, !dbg !1454
  %14 = fsub float %9, %13, !dbg !1454
  call void @llvm.dbg.value(metadata float %14, metadata !1431, metadata !DIExpression()), !dbg !1442
  call void @llvm.dbg.value(metadata i8 undef, metadata !1430, metadata !DIExpression()), !dbg !1442
  %15 = icmp eq i8 %11, 0, !dbg !1455
  %16 = select i1 %10, i1 true, i1 %15, !dbg !1455
  br i1 %16, label %27, label %17, !dbg !1456

17:                                               ; preds = %8
  %18 = bitcast i64* %2 to i8*
  %19 = getelementptr inbounds [8 x i8], [8 x i8]* %3, i32 0, i32 1
  %20 = getelementptr inbounds [8 x i8], [8 x i8]* %3, i32 0, i32 2
  call void @llvm.dbg.value(metadata i8 0, metadata !1432, metadata !DIExpression()), !dbg !1442
  call void @llvm.dbg.value(metadata i8 %11, metadata !1430, metadata !DIExpression()), !dbg !1442
  %21 = freeze i8 %11
  %22 = udiv i8 %21, 10, !dbg !1457
  %23 = mul i8 %22, 10
  %24 = sub i8 %21, %23
  %25 = or i8 %24, 48, !dbg !1459
  call void @llvm.dbg.value(metadata i8 undef, metadata !1430, metadata !DIExpression()), !dbg !1442
  call void @llvm.dbg.value(metadata i8 1, metadata !1432, metadata !DIExpression()), !dbg !1442
  %26 = icmp ult i8 %11, 10, !dbg !1460
  br i1 %26, label %35, label %28, !dbg !1461, !llvm.loop !1462

27:                                               ; preds = %8
  store i8 48, i8* %4, align 8, !dbg !1464, !tbaa !792
  call void @llvm.dbg.value(metadata i8 1, metadata !1432, metadata !DIExpression()), !dbg !1442
  br label %99, !dbg !1466

28:                                               ; preds = %17
  call void @llvm.dbg.value(metadata i8 %22, metadata !1430, metadata !DIExpression()), !dbg !1442
  call void @llvm.dbg.value(metadata i8 1, metadata !1432, metadata !DIExpression()), !dbg !1442
  call void @llvm.dbg.value(metadata i8 undef, metadata !1430, metadata !DIExpression()), !dbg !1442
  %29 = urem i8 %22, 10, !dbg !1467
  %30 = or i8 %29, 48, !dbg !1459
  store i8 %30, i8* %19, align 1, !dbg !1468, !tbaa !792
  call void @llvm.dbg.value(metadata i8 undef, metadata !1430, metadata !DIExpression()), !dbg !1442
  call void @llvm.dbg.value(metadata i8 2, metadata !1432, metadata !DIExpression()), !dbg !1442
  %31 = icmp ult i8 %11, 100, !dbg !1460
  br i1 %31, label %35, label %32, !dbg !1461, !llvm.loop !1462

32:                                               ; preds = %28
  %33 = udiv i8 %11, 100, !dbg !1457
  call void @llvm.dbg.value(metadata i8 %33, metadata !1430, metadata !DIExpression()), !dbg !1442
  call void @llvm.dbg.value(metadata i8 2, metadata !1432, metadata !DIExpression()), !dbg !1442
  call void @llvm.dbg.value(metadata i8 undef, metadata !1430, metadata !DIExpression()), !dbg !1442
  %34 = or i8 %33, 48, !dbg !1459
  store i8 %34, i8* %20, align 2, !dbg !1468, !tbaa !792
  call void @llvm.dbg.value(metadata i8 0, metadata !1430, metadata !DIExpression()), !dbg !1442
  call void @llvm.dbg.value(metadata i8 3, metadata !1432, metadata !DIExpression()), !dbg !1442
  br label %35, !dbg !1461, !llvm.loop !1462

35:                                               ; preds = %32, %28, %17
  %36 = phi i1 [ false, %32 ], [ false, %28 ], [ true, %17 ]
  %37 = phi i32 [ 2, %32 ], [ 1, %28 ], [ 0, %17 ], !dbg !1469
  %38 = phi i8 [ 3, %32 ], [ 2, %28 ], [ 1, %17 ], !dbg !1470
  store i8 %25, i8* %18, align 8, !dbg !1468, !tbaa !792
  call void @llvm.dbg.value(metadata i8 undef, metadata !1432, metadata !DIExpression()), !dbg !1442
  call void @llvm.dbg.value(metadata i8 0, metadata !1436, metadata !DIExpression()), !dbg !1471
  br i1 %36, label %68, label %39, !dbg !1472

39:                                               ; preds = %35
  %40 = add nsw i32 %37, -1, !dbg !1472
  %41 = and i32 %37, 3, !dbg !1472
  %42 = icmp ult i32 %40, 3, !dbg !1472
  br i1 %42, label %43, label %70, !dbg !1472

43:                                               ; preds = %70, %39
  %44 = phi i32 [ 0, %39 ], [ %96, %70 ]
  %45 = icmp eq i32 %41, 0, !dbg !1472
  br i1 %45, label %68, label %46, !dbg !1472

46:                                               ; preds = %43
  call void @llvm.dbg.value(metadata i32 %44, metadata !1436, metadata !DIExpression()), !dbg !1471
  %47 = getelementptr inbounds [8 x i8], [8 x i8]* %3, i32 0, i32 %44, !dbg !1473
  %48 = load i8, i8* %47, align 1, !dbg !1473, !tbaa !792
  call void @llvm.dbg.value(metadata i8 %48, metadata !1433, metadata !DIExpression()), !dbg !1442
  %49 = sub nsw i32 %37, %44, !dbg !1476
  %50 = getelementptr inbounds [8 x i8], [8 x i8]* %3, i32 0, i32 %49, !dbg !1477
  %51 = load i8, i8* %50, align 1, !dbg !1477, !tbaa !792
  store i8 %51, i8* %47, align 1, !dbg !1478, !tbaa !792
  store i8 %48, i8* %50, align 1, !dbg !1479, !tbaa !792
  %52 = add nuw nsw i32 %44, 1, !dbg !1480
  call void @llvm.dbg.value(metadata i32 %52, metadata !1436, metadata !DIExpression()), !dbg !1471
  %53 = icmp eq i32 %41, 1, !dbg !1472
  br i1 %53, label %68, label %54, !dbg !1472

54:                                               ; preds = %46
  call void @llvm.dbg.value(metadata i32 %52, metadata !1436, metadata !DIExpression()), !dbg !1471
  %55 = getelementptr inbounds [8 x i8], [8 x i8]* %3, i32 0, i32 %52, !dbg !1473
  %56 = load i8, i8* %55, align 1, !dbg !1473, !tbaa !792
  call void @llvm.dbg.value(metadata i8 %56, metadata !1433, metadata !DIExpression()), !dbg !1442
  %57 = sub nsw i32 %37, %52, !dbg !1476
  %58 = getelementptr inbounds [8 x i8], [8 x i8]* %3, i32 0, i32 %57, !dbg !1477
  %59 = load i8, i8* %58, align 1, !dbg !1477, !tbaa !792
  store i8 %59, i8* %55, align 1, !dbg !1478, !tbaa !792
  store i8 %56, i8* %58, align 1, !dbg !1479, !tbaa !792
  %60 = add nuw nsw i32 %44, 2, !dbg !1480
  call void @llvm.dbg.value(metadata i32 %60, metadata !1436, metadata !DIExpression()), !dbg !1471
  %61 = icmp eq i32 %41, 2, !dbg !1472
  br i1 %61, label %68, label %62, !dbg !1472

62:                                               ; preds = %54
  call void @llvm.dbg.value(metadata i32 %60, metadata !1436, metadata !DIExpression()), !dbg !1471
  %63 = getelementptr inbounds [8 x i8], [8 x i8]* %3, i32 0, i32 %60, !dbg !1473
  %64 = load i8, i8* %63, align 1, !dbg !1473, !tbaa !792
  call void @llvm.dbg.value(metadata i8 %64, metadata !1433, metadata !DIExpression()), !dbg !1442
  %65 = sub nsw i32 %37, %60, !dbg !1476
  %66 = getelementptr inbounds [8 x i8], [8 x i8]* %3, i32 0, i32 %65, !dbg !1477
  %67 = load i8, i8* %66, align 1, !dbg !1477, !tbaa !792
  store i8 %67, i8* %63, align 1, !dbg !1478, !tbaa !792
  store i8 %64, i8* %66, align 1, !dbg !1479, !tbaa !792
  call void @llvm.dbg.value(metadata i32 %60, metadata !1436, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !1471
  br label %68

68:                                               ; preds = %43, %62, %54, %46, %35
  call void @llvm.dbg.value(metadata i8 %38, metadata !1432, metadata !DIExpression()), !dbg !1442
  %69 = zext i8 %38 to i32, !dbg !1481
  br label %99

70:                                               ; preds = %39, %70
  %71 = phi i32 [ %96, %70 ], [ 0, %39 ]
  %72 = phi i32 [ %97, %70 ], [ 0, %39 ]
  call void @llvm.dbg.value(metadata i32 %71, metadata !1436, metadata !DIExpression()), !dbg !1471
  %73 = getelementptr inbounds [8 x i8], [8 x i8]* %3, i32 0, i32 %71, !dbg !1473
  %74 = load i8, i8* %73, align 4, !dbg !1473, !tbaa !792
  call void @llvm.dbg.value(metadata i8 %74, metadata !1433, metadata !DIExpression()), !dbg !1442
  %75 = sub nsw i32 %37, %71, !dbg !1476
  %76 = getelementptr inbounds [8 x i8], [8 x i8]* %3, i32 0, i32 %75, !dbg !1477
  %77 = load i8, i8* %76, align 1, !dbg !1477, !tbaa !792
  store i8 %77, i8* %73, align 4, !dbg !1478, !tbaa !792
  store i8 %74, i8* %76, align 1, !dbg !1479, !tbaa !792
  %78 = or i32 %71, 1, !dbg !1480
  call void @llvm.dbg.value(metadata i32 %78, metadata !1436, metadata !DIExpression()), !dbg !1471
  call void @llvm.dbg.value(metadata i32 %78, metadata !1436, metadata !DIExpression()), !dbg !1471
  %79 = getelementptr inbounds [8 x i8], [8 x i8]* %3, i32 0, i32 %78, !dbg !1473
  %80 = load i8, i8* %79, align 1, !dbg !1473, !tbaa !792
  call void @llvm.dbg.value(metadata i8 %80, metadata !1433, metadata !DIExpression()), !dbg !1442
  %81 = sub nsw i32 %37, %78, !dbg !1476
  %82 = getelementptr inbounds [8 x i8], [8 x i8]* %3, i32 0, i32 %81, !dbg !1477
  %83 = load i8, i8* %82, align 1, !dbg !1477, !tbaa !792
  store i8 %83, i8* %79, align 1, !dbg !1478, !tbaa !792
  store i8 %80, i8* %82, align 1, !dbg !1479, !tbaa !792
  %84 = or i32 %71, 2, !dbg !1480
  call void @llvm.dbg.value(metadata i32 %84, metadata !1436, metadata !DIExpression()), !dbg !1471
  call void @llvm.dbg.value(metadata i32 %84, metadata !1436, metadata !DIExpression()), !dbg !1471
  %85 = getelementptr inbounds [8 x i8], [8 x i8]* %3, i32 0, i32 %84, !dbg !1473
  %86 = load i8, i8* %85, align 2, !dbg !1473, !tbaa !792
  call void @llvm.dbg.value(metadata i8 %86, metadata !1433, metadata !DIExpression()), !dbg !1442
  %87 = sub nsw i32 %37, %84, !dbg !1476
  %88 = getelementptr inbounds [8 x i8], [8 x i8]* %3, i32 0, i32 %87, !dbg !1477
  %89 = load i8, i8* %88, align 1, !dbg !1477, !tbaa !792
  store i8 %89, i8* %85, align 2, !dbg !1478, !tbaa !792
  store i8 %86, i8* %88, align 1, !dbg !1479, !tbaa !792
  %90 = or i32 %71, 3, !dbg !1480
  call void @llvm.dbg.value(metadata i32 %90, metadata !1436, metadata !DIExpression()), !dbg !1471
  call void @llvm.dbg.value(metadata i32 %90, metadata !1436, metadata !DIExpression()), !dbg !1471
  %91 = getelementptr inbounds [8 x i8], [8 x i8]* %3, i32 0, i32 %90, !dbg !1473
  %92 = load i8, i8* %91, align 1, !dbg !1473, !tbaa !792
  call void @llvm.dbg.value(metadata i8 %92, metadata !1433, metadata !DIExpression()), !dbg !1442
  %93 = sub nsw i32 %37, %90, !dbg !1476
  %94 = getelementptr inbounds [8 x i8], [8 x i8]* %3, i32 0, i32 %93, !dbg !1477
  %95 = load i8, i8* %94, align 1, !dbg !1477, !tbaa !792
  store i8 %95, i8* %91, align 1, !dbg !1478, !tbaa !792
  store i8 %92, i8* %94, align 1, !dbg !1479, !tbaa !792
  %96 = add nuw nsw i32 %71, 4, !dbg !1480
  call void @llvm.dbg.value(metadata i32 %96, metadata !1436, metadata !DIExpression()), !dbg !1471
  %97 = add i32 %72, 4, !dbg !1472
  %98 = icmp eq i32 %97, 0, !dbg !1472
  br i1 %98, label %43, label %70, !dbg !1472, !llvm.loop !1482

99:                                               ; preds = %68, %27
  %100 = phi i32 [ %69, %68 ], [ 1, %27 ]
  %101 = phi i8 [ %38, %68 ], [ 1, %27 ], !dbg !1484
  %102 = getelementptr inbounds [8 x i8], [8 x i8]* %3, i32 0, i32 %100, !dbg !1484
  store i8 46, i8* %102, align 1, !dbg !1484, !tbaa !792
  call void @llvm.dbg.value(metadata i8 %101, metadata !1432, metadata !DIExpression()), !dbg !1442
  %103 = add i8 %101, 1, !dbg !1485
  call void @llvm.dbg.value(metadata i8 %103, metadata !1432, metadata !DIExpression()), !dbg !1442
  %104 = fmul float %14, 1.000000e+01, !dbg !1486
  %105 = fptoui float %104 to i32, !dbg !1487
  %106 = urem i32 %105, 10, !dbg !1488
  %107 = trunc i32 %106 to i8, !dbg !1487
  %108 = or i8 %107, 48, !dbg !1487
  %109 = add i8 %101, 2, !dbg !1489
  call void @llvm.dbg.value(metadata i8 %109, metadata !1432, metadata !DIExpression()), !dbg !1442
  %110 = zext i8 %103 to i32, !dbg !1490
  %111 = getelementptr inbounds [8 x i8], [8 x i8]* %3, i32 0, i32 %110, !dbg !1490
  store i8 %108, i8* %111, align 1, !dbg !1491, !tbaa !792
  %112 = fmul float %14, 1.000000e+02, !dbg !1492
  %113 = fptoui float %112 to i32, !dbg !1493
  %114 = urem i32 %113, 10, !dbg !1494
  %115 = trunc i32 %114 to i8, !dbg !1493
  %116 = or i8 %115, 48, !dbg !1493
  %117 = add i8 %101, 3, !dbg !1495
  call void @llvm.dbg.value(metadata i8 %117, metadata !1432, metadata !DIExpression()), !dbg !1442
  %118 = zext i8 %109 to i32, !dbg !1496
  %119 = getelementptr inbounds [8 x i8], [8 x i8]* %3, i32 0, i32 %118, !dbg !1496
  store i8 %116, i8* %119, align 1, !dbg !1497, !tbaa !792
  %120 = fmul float %14, 1.000000e+03, !dbg !1498
  %121 = fptoui float %120 to i32, !dbg !1499
  %122 = urem i32 %121, 10, !dbg !1500
  %123 = trunc i32 %122 to i8, !dbg !1499
  %124 = or i8 %123, 48, !dbg !1499
  %125 = add i8 %101, 4, !dbg !1501
  call void @llvm.dbg.value(metadata i8 %125, metadata !1432, metadata !DIExpression()), !dbg !1442
  %126 = zext i8 %117 to i32, !dbg !1502
  %127 = getelementptr inbounds [8 x i8], [8 x i8]* %3, i32 0, i32 %126, !dbg !1502
  store i8 %124, i8* %127, align 1, !dbg !1503, !tbaa !792
  %128 = fmul float %14, 1.000000e+04, !dbg !1504
  %129 = fptoui float %128 to i32, !dbg !1505
  %130 = urem i32 %129, 10, !dbg !1506
  %131 = trunc i32 %130 to i8, !dbg !1505
  %132 = or i8 %131, 48, !dbg !1505
  %133 = add i8 %101, 5, !dbg !1507
  call void @llvm.dbg.value(metadata i8 %133, metadata !1432, metadata !DIExpression()), !dbg !1442
  %134 = zext i8 %125 to i32, !dbg !1508
  %135 = getelementptr inbounds [8 x i8], [8 x i8]* %3, i32 0, i32 %134, !dbg !1508
  store i8 %132, i8* %135, align 1, !dbg !1509, !tbaa !792
  %136 = add i8 %101, 6, !dbg !1510
  call void @llvm.dbg.value(metadata i8 %136, metadata !1432, metadata !DIExpression()), !dbg !1442
  %137 = zext i8 %133 to i32, !dbg !1511
  %138 = getelementptr inbounds [8 x i8], [8 x i8]* %3, i32 0, i32 %137, !dbg !1511
  store i8 0, i8* %138, align 1, !dbg !1512, !tbaa !792
  call void @llvm.dbg.value(metadata i8 0, metadata !1440, metadata !DIExpression()), !dbg !1513
  %139 = icmp eq i8 %136, 0, !dbg !1514
  br i1 %139, label %142, label %140, !dbg !1516

140:                                              ; preds = %99
  %141 = zext i8 %136 to i32, !dbg !1514
  br label %143, !dbg !1516

142:                                              ; preds = %143, %99
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %4) #15, !dbg !1517
  ret i8 %136, !dbg !1518

143:                                              ; preds = %140, %143
  %144 = phi i32 [ 0, %140 ], [ %147, %143 ]
  call void @llvm.dbg.value(metadata i32 %144, metadata !1440, metadata !DIExpression()), !dbg !1513
  %145 = getelementptr inbounds [8 x i8], [8 x i8]* %3, i32 0, i32 %144, !dbg !1519
  %146 = load i8, i8* %145, align 1, !dbg !1519, !tbaa !792
  tail call void @uart_sendData(i8 noundef zeroext %146), !dbg !1521
  %147 = add nuw nsw i32 %144, 1, !dbg !1522
  call void @llvm.dbg.value(metadata i32 %147, metadata !1440, metadata !DIExpression()), !dbg !1513
  %148 = icmp eq i32 %147, %141, !dbg !1514
  br i1 %148, label %142, label %143, !dbg !1516, !llvm.loop !1523
}

; Function Attrs: nofree noinline norecurse nounwind
define dso_local void @uart_sendStr(i8* nocapture noundef readonly %0) local_unnamed_addr #12 !dbg !1525 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !1530, metadata !DIExpression()), !dbg !1531
  %2 = load i8, i8* %0, align 1, !dbg !1532, !tbaa !792
  %3 = icmp eq i8 %2, 0, !dbg !1533
  br i1 %3, label %10, label %4, !dbg !1533

4:                                                ; preds = %1, %4
  %5 = phi i8 [ %8, %4 ], [ %2, %1 ]
  %6 = phi i8* [ %7, %4 ], [ %0, %1 ]
  call void @llvm.dbg.value(metadata i8* %6, metadata !1530, metadata !DIExpression()), !dbg !1531
  %7 = getelementptr inbounds i8, i8* %6, i32 1, !dbg !1534
  call void @llvm.dbg.value(metadata i8* %7, metadata !1530, metadata !DIExpression()), !dbg !1531
  tail call void @uart_sendData(i8 noundef zeroext %5), !dbg !1535
  %8 = load i8, i8* %7, align 1, !dbg !1532, !tbaa !792
  %9 = icmp eq i8 %8, 0, !dbg !1533
  br i1 %9, label %10, label %4, !dbg !1533, !llvm.loop !1536

10:                                               ; preds = %4, %1
  ret void, !dbg !1538
}

; Function Attrs: nofree noinline nounwind
define dso_local void @uart_short2char(i16 noundef signext %0) local_unnamed_addr #8 !dbg !1539 {
  %2 = alloca [6 x i8], align 1
  call void @llvm.dbg.value(metadata i16 %0, metadata !1543, metadata !DIExpression()), !dbg !1549
  %3 = getelementptr inbounds [6 x i8], [6 x i8]* %2, i32 0, i32 0, !dbg !1550
  call void @llvm.lifetime.start.p0i8(i64 6, i8* nonnull %3) #15, !dbg !1550
  call void @llvm.dbg.declare(metadata [6 x i8]* %2, metadata !1544, metadata !DIExpression()), !dbg !1551
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* noundef nonnull align 1 dereferenceable(6) %3, i8* noundef nonnull align 1 dereferenceable(6) getelementptr inbounds ([6 x i8], [6 x i8]* @__const.uart_short2char.cache, i32 0, i32 0), i32 6, i1 false), !dbg !1551
  call void @llvm.dbg.value(metadata i32 4, metadata !1546, metadata !DIExpression()), !dbg !1549
  call void @llvm.dbg.value(metadata i32 4, metadata !1546, metadata !DIExpression()), !dbg !1549
  %4 = sdiv i16 %0, 10, !dbg !1552
  %5 = mul i16 %4, 10
  %6 = sub i16 %0, %5
  %7 = getelementptr inbounds [6 x i8], [6 x i8]* %2, i32 0, i32 4, !dbg !1554
  %8 = trunc i16 %6 to i8, !dbg !1555
  %9 = add nsw i8 %8, 48, !dbg !1555
  store i8 %9, i8* %7, align 1, !dbg !1555, !tbaa !792
  call void @llvm.dbg.value(metadata i32 3, metadata !1546, metadata !DIExpression()), !dbg !1549
  call void @llvm.dbg.value(metadata i32 3, metadata !1546, metadata !DIExpression()), !dbg !1549
  %10 = srem i16 %4, 10, !dbg !1556
  %11 = getelementptr inbounds [6 x i8], [6 x i8]* %2, i32 0, i32 3, !dbg !1554
  %12 = trunc i16 %10 to i8, !dbg !1555
  %13 = add nsw i8 %12, 48, !dbg !1555
  store i8 %13, i8* %11, align 1, !dbg !1555, !tbaa !792
  call void @llvm.dbg.value(metadata i32 2, metadata !1546, metadata !DIExpression()), !dbg !1549
  call void @llvm.dbg.value(metadata i32 2, metadata !1546, metadata !DIExpression()), !dbg !1549
  %14 = sdiv i16 %0, 100, !dbg !1552
  %15 = srem i16 %14, 10, !dbg !1556
  %16 = getelementptr inbounds [6 x i8], [6 x i8]* %2, i32 0, i32 2, !dbg !1554
  %17 = trunc i16 %15 to i8, !dbg !1555
  %18 = add nsw i8 %17, 48, !dbg !1555
  store i8 %18, i8* %16, align 1, !dbg !1555, !tbaa !792
  call void @llvm.dbg.value(metadata i32 1, metadata !1546, metadata !DIExpression()), !dbg !1549
  call void @llvm.dbg.value(metadata i32 1, metadata !1546, metadata !DIExpression()), !dbg !1549
  %19 = sdiv i16 %0, 1000, !dbg !1552
  %20 = trunc i16 %19 to i8, !dbg !1556
  %21 = srem i8 %20, 10, !dbg !1556
  %22 = getelementptr inbounds [6 x i8], [6 x i8]* %2, i32 0, i32 1, !dbg !1554
  %23 = add nsw i8 %21, 48, !dbg !1555
  store i8 %23, i8* %22, align 1, !dbg !1555, !tbaa !792
  call void @llvm.dbg.value(metadata i32 0, metadata !1546, metadata !DIExpression()), !dbg !1549
  call void @llvm.dbg.value(metadata i32 0, metadata !1546, metadata !DIExpression()), !dbg !1549
  %24 = sdiv i16 %0, 10000, !dbg !1552
  %25 = trunc i16 %24 to i8, !dbg !1556
  %26 = srem i8 %25, 10, !dbg !1556
  %27 = add nsw i8 %26, 48, !dbg !1555
  store i8 %27, i8* %3, align 1, !dbg !1555, !tbaa !792
  call void @llvm.dbg.value(metadata i32 -1, metadata !1546, metadata !DIExpression()), !dbg !1549
  call void @uart_sendStr(i8* noundef nonnull %3), !dbg !1557
  call void @llvm.lifetime.end.p0i8(i64 6, i8* nonnull %3) #15, !dbg !1558
  ret void, !dbg !1558
}

; Function Attrs: nofree noinline norecurse nounwind
define dso_local void @uart_sendData(i8 noundef zeroext %0) local_unnamed_addr #12 !dbg !1559 {
  call void @llvm.dbg.value(metadata i8 %0, metadata !1561, metadata !DIExpression()), !dbg !1562
  %2 = zext i8 %0 to i16, !dbg !1563
  store volatile i16 %2, i16* inttoptr (i32 1073821700 to i16*), align 4, !dbg !1564, !tbaa !1393
  br label %3, !dbg !1565

3:                                                ; preds = %15, %1
  %4 = load volatile i16, i16* inttoptr (i32 1073821696 to i16*), align 2048, !dbg !1566, !tbaa !1359
  %5 = and i16 %4, 64, !dbg !1567
  %6 = icmp eq i16 %5, 0, !dbg !1568
  br i1 %6, label %7, label %19, !dbg !1565, !llvm.loop !1569

7:                                                ; preds = %3
  %8 = load volatile i16, i16* inttoptr (i32 1073821696 to i16*), align 2048, !dbg !1566, !tbaa !1359
  %9 = and i16 %8, 64, !dbg !1567
  %10 = icmp eq i16 %9, 0, !dbg !1568
  br i1 %10, label %11, label %19, !dbg !1565, !llvm.loop !1569

11:                                               ; preds = %7
  %12 = load volatile i16, i16* inttoptr (i32 1073821696 to i16*), align 2048, !dbg !1566, !tbaa !1359
  %13 = and i16 %12, 64, !dbg !1567
  %14 = icmp eq i16 %13, 0, !dbg !1568
  br i1 %14, label %15, label %19, !dbg !1565, !llvm.loop !1569

15:                                               ; preds = %11
  %16 = load volatile i16, i16* inttoptr (i32 1073821696 to i16*), align 2048, !dbg !1566, !tbaa !1359
  %17 = and i16 %16, 64, !dbg !1567
  %18 = icmp eq i16 %17, 0, !dbg !1568
  br i1 %18, label %3, label %19, !dbg !1565, !llvm.loop !1569

19:                                               ; preds = %15, %11, %7, %3
  ret void, !dbg !1571
}

; Function Attrs: nofree noinline nounwind
define dso_local void @uart_int2char(i32 noundef %0) local_unnamed_addr #8 !dbg !1572 {
  %2 = alloca [11 x i8], align 1
  call void @llvm.dbg.value(metadata i32 %0, metadata !1574, metadata !DIExpression()), !dbg !1585
  %3 = getelementptr inbounds [11 x i8], [11 x i8]* %2, i32 0, i32 0, !dbg !1586
  call void @llvm.lifetime.start.p0i8(i64 11, i8* nonnull %3) #15, !dbg !1586
  call void @llvm.dbg.declare(metadata [11 x i8]* %2, metadata !1575, metadata !DIExpression()), !dbg !1587
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* noundef nonnull align 1 dereferenceable(11) %3, i8* noundef nonnull align 1 dereferenceable(11) getelementptr inbounds ([11 x i8], [11 x i8]* @__const.uart_int2char.cache, i32 0, i32 0), i32 11, i1 false), !dbg !1587
  call void @llvm.dbg.value(metadata i8 9, metadata !1579, metadata !DIExpression()), !dbg !1585
  call void @llvm.dbg.value(metadata i32 9, metadata !1579, metadata !DIExpression()), !dbg !1585
  %4 = udiv i32 %0, 10, !dbg !1588
  %5 = mul i32 %4, 10
  %6 = sub i32 %0, %5
  %7 = getelementptr inbounds [11 x i8], [11 x i8]* %2, i32 0, i32 9, !dbg !1590
  %8 = trunc i32 %6 to i8, !dbg !1591
  %9 = or i8 %8, 48, !dbg !1591
  store i8 %9, i8* %7, align 1, !dbg !1591, !tbaa !792
  call void @llvm.dbg.value(metadata i32 8, metadata !1579, metadata !DIExpression()), !dbg !1585
  call void @llvm.dbg.value(metadata i32 8, metadata !1579, metadata !DIExpression()), !dbg !1585
  %10 = urem i32 %4, 10, !dbg !1592
  %11 = getelementptr inbounds [11 x i8], [11 x i8]* %2, i32 0, i32 8, !dbg !1590
  %12 = trunc i32 %10 to i8, !dbg !1591
  %13 = or i8 %12, 48, !dbg !1591
  store i8 %13, i8* %11, align 1, !dbg !1591, !tbaa !792
  call void @llvm.dbg.value(metadata i32 7, metadata !1579, metadata !DIExpression()), !dbg !1585
  call void @llvm.dbg.value(metadata i32 7, metadata !1579, metadata !DIExpression()), !dbg !1585
  %14 = udiv i32 %0, 100, !dbg !1588
  %15 = urem i32 %14, 10, !dbg !1592
  %16 = getelementptr inbounds [11 x i8], [11 x i8]* %2, i32 0, i32 7, !dbg !1590
  %17 = trunc i32 %15 to i8, !dbg !1591
  %18 = or i8 %17, 48, !dbg !1591
  store i8 %18, i8* %16, align 1, !dbg !1591, !tbaa !792
  call void @llvm.dbg.value(metadata i32 6, metadata !1579, metadata !DIExpression()), !dbg !1585
  call void @llvm.dbg.value(metadata i32 6, metadata !1579, metadata !DIExpression()), !dbg !1585
  %19 = udiv i32 %0, 1000, !dbg !1588
  %20 = urem i32 %19, 10, !dbg !1592
  %21 = getelementptr inbounds [11 x i8], [11 x i8]* %2, i32 0, i32 6, !dbg !1590
  %22 = trunc i32 %20 to i8, !dbg !1591
  %23 = or i8 %22, 48, !dbg !1591
  store i8 %23, i8* %21, align 1, !dbg !1591, !tbaa !792
  call void @llvm.dbg.value(metadata i32 5, metadata !1579, metadata !DIExpression()), !dbg !1585
  call void @llvm.dbg.value(metadata i32 5, metadata !1579, metadata !DIExpression()), !dbg !1585
  %24 = udiv i32 %0, 10000, !dbg !1588
  %25 = urem i32 %24, 10, !dbg !1592
  %26 = getelementptr inbounds [11 x i8], [11 x i8]* %2, i32 0, i32 5, !dbg !1590
  %27 = trunc i32 %25 to i8, !dbg !1591
  %28 = or i8 %27, 48, !dbg !1591
  store i8 %28, i8* %26, align 1, !dbg !1591, !tbaa !792
  call void @llvm.dbg.value(metadata i32 4, metadata !1579, metadata !DIExpression()), !dbg !1585
  call void @llvm.dbg.value(metadata i32 4, metadata !1579, metadata !DIExpression()), !dbg !1585
  %29 = udiv i32 %0, 100000, !dbg !1588
  %30 = trunc i32 %29 to i16, !dbg !1592
  %31 = urem i16 %30, 10, !dbg !1592
  %32 = getelementptr inbounds [11 x i8], [11 x i8]* %2, i32 0, i32 4, !dbg !1590
  %33 = trunc i16 %31 to i8, !dbg !1591
  %34 = or i8 %33, 48, !dbg !1591
  store i8 %34, i8* %32, align 1, !dbg !1591, !tbaa !792
  call void @llvm.dbg.value(metadata i32 3, metadata !1579, metadata !DIExpression()), !dbg !1585
  call void @llvm.dbg.value(metadata i32 3, metadata !1579, metadata !DIExpression()), !dbg !1585
  %35 = udiv i32 %0, 1000000, !dbg !1588
  %36 = trunc i32 %35 to i16, !dbg !1592
  %37 = urem i16 %36, 10, !dbg !1592
  %38 = getelementptr inbounds [11 x i8], [11 x i8]* %2, i32 0, i32 3, !dbg !1590
  %39 = trunc i16 %37 to i8, !dbg !1591
  %40 = or i8 %39, 48, !dbg !1591
  store i8 %40, i8* %38, align 1, !dbg !1591, !tbaa !792
  call void @llvm.dbg.value(metadata i32 2, metadata !1579, metadata !DIExpression()), !dbg !1585
  call void @llvm.dbg.value(metadata i32 2, metadata !1579, metadata !DIExpression()), !dbg !1585
  %41 = udiv i32 %0, 10000000, !dbg !1588
  %42 = trunc i32 %41 to i16, !dbg !1592
  %43 = urem i16 %42, 10, !dbg !1592
  %44 = getelementptr inbounds [11 x i8], [11 x i8]* %2, i32 0, i32 2, !dbg !1590
  %45 = trunc i16 %43 to i8, !dbg !1591
  %46 = or i8 %45, 48, !dbg !1591
  store i8 %46, i8* %44, align 1, !dbg !1591, !tbaa !792
  call void @llvm.dbg.value(metadata i32 1, metadata !1579, metadata !DIExpression()), !dbg !1585
  call void @llvm.dbg.value(metadata i32 1, metadata !1579, metadata !DIExpression()), !dbg !1585
  %47 = udiv i32 %0, 100000000, !dbg !1588
  %48 = trunc i32 %47 to i8, !dbg !1592
  %49 = urem i8 %48, 10, !dbg !1592
  %50 = getelementptr inbounds [11 x i8], [11 x i8]* %2, i32 0, i32 1, !dbg !1590
  %51 = or i8 %49, 48, !dbg !1591
  store i8 %51, i8* %50, align 1, !dbg !1591, !tbaa !792
  call void @llvm.dbg.value(metadata i32 0, metadata !1579, metadata !DIExpression()), !dbg !1585
  call void @llvm.dbg.value(metadata i32 0, metadata !1579, metadata !DIExpression()), !dbg !1585
  %52 = udiv i32 %0, 1000000000, !dbg !1588
  %53 = trunc i32 %52 to i8, !dbg !1591
  %54 = or i8 %53, 48, !dbg !1591
  store i8 %54, i8* %3, align 1, !dbg !1591, !tbaa !792
  call void @llvm.dbg.value(metadata i32 -1, metadata !1579, metadata !DIExpression()), !dbg !1585
  call void @uart_sendStr(i8* noundef nonnull %3), !dbg !1593
  call void @llvm.lifetime.end.p0i8(i64 11, i8* nonnull %3) #15, !dbg !1594
  ret void, !dbg !1594
}

; Function Attrs: nofree noinline nounwind
define dso_local void @pid_SingleAxis(%struct.pid_st* nocapture noundef %0, float noundef %1) local_unnamed_addr #8 !dbg !1595 {
  call void @llvm.dbg.value(metadata %struct.pid_st* %0, metadata !1601, metadata !DIExpression()), !dbg !1603
  call void @llvm.dbg.value(metadata float %1, metadata !1602, metadata !DIExpression()), !dbg !1603
  %3 = getelementptr inbounds %struct.pid_st, %struct.pid_st* %0, i32 0, i32 2, !dbg !1604
  %4 = load float*, float** %3, align 4, !dbg !1604, !tbaa !1605
  %5 = load float, float* %4, align 4, !dbg !1606, !tbaa !1217
  %6 = fsub float %5, %1, !dbg !1607
  %7 = getelementptr inbounds %struct.pid_st, %struct.pid_st* %0, i32 0, i32 4, !dbg !1608
  store float %6, float* %7, align 4, !dbg !1609, !tbaa !1610
  %8 = getelementptr inbounds %struct.pid_st, %struct.pid_st* %0, i32 0, i32 6, !dbg !1611
  %9 = load float, float* %8, align 4, !dbg !1612, !tbaa !1613
  %10 = fadd float %6, %9, !dbg !1612
  store float %10, float* %8, align 4, !dbg !1612, !tbaa !1613
  %11 = fcmp ogt float %10, 3.000000e+01, !dbg !1614
  br i1 %11, label %14, label %12, !dbg !1616

12:                                               ; preds = %2
  %13 = fcmp olt float %10, -3.000000e+01, !dbg !1617
  br i1 %13, label %14, label %16, !dbg !1619

14:                                               ; preds = %12, %2
  %15 = phi float [ 3.000000e+01, %2 ], [ -3.000000e+01, %12 ]
  store float %15, float* %8, align 4, !dbg !1620, !tbaa !1613
  br label %16, !dbg !1621

16:                                               ; preds = %14, %12
  %17 = phi float [ %10, %12 ], [ %15, %14 ], !dbg !1622
  %18 = load float, float* %4, align 4, !dbg !1621, !tbaa !1217
  %19 = getelementptr inbounds %struct.pid_st, %struct.pid_st* %0, i32 0, i32 1, !dbg !1623
  %20 = load float, float* %19, align 4, !dbg !1623, !tbaa !1624
  %21 = fsub float %18, %20, !dbg !1625
  %22 = getelementptr inbounds %struct.pid_st, %struct.pid_st* %0, i32 0, i32 7, !dbg !1626
  store float %21, float* %22, align 4, !dbg !1627, !tbaa !1628
  %23 = tail call float @llvm.fmuladd.f32(float %6, float 3.000000e+00, float %17), !dbg !1629
  %24 = tail call float @llvm.fmuladd.f32(float %21, float 0x3FD3333340000000, float %23), !dbg !1630
  %25 = fptosi float %24 to i16, !dbg !1631
  %26 = getelementptr inbounds %struct.pid_st, %struct.pid_st* %0, i32 0, i32 8, !dbg !1632
  %27 = load float, float* %4, align 4, !dbg !1633, !tbaa !1217
  store float %27, float* %19, align 4, !dbg !1634, !tbaa !1624
  %28 = sitofp i16 %25 to float, !dbg !1635
  %29 = getelementptr inbounds %struct.pid_st, %struct.pid_st* %0, i32 0, i32 3, !dbg !1636
  %30 = load float*, float** %29, align 4, !dbg !1636, !tbaa !1637
  %31 = load float, float* %30, align 4, !dbg !1638, !tbaa !1217
  %32 = fadd float %31, %28, !dbg !1639
  %33 = getelementptr inbounds %struct.pid_st, %struct.pid_st* %0, i32 0, i32 5, !dbg !1640
  store float %32, float* %33, align 4, !dbg !1641, !tbaa !1642
  %34 = load float, float* %30, align 4, !dbg !1643, !tbaa !1217
  %35 = getelementptr inbounds %struct.pid_st, %struct.pid_st* %0, i32 0, i32 0, !dbg !1644
  %36 = load float, float* %35, align 4, !dbg !1644, !tbaa !1645
  %37 = fsub float %34, %36, !dbg !1646
  store float %37, float* %22, align 4, !dbg !1647, !tbaa !1628
  %38 = fmul float %37, 0x3FD3333340000000, !dbg !1648
  %39 = fadd float %32, %38, !dbg !1649
  %40 = fptosi float %39 to i16, !dbg !1650
  store i16 %40, i16* %26, align 4, !dbg !1651, !tbaa !1652
  %41 = getelementptr inbounds %struct.pid_st, %struct.pid_st* %0, i32 0, i32 9, !dbg !1653
  %42 = load i16*, i16** %41, align 4, !dbg !1653, !tbaa !1410
  %43 = load volatile i16, i16* %42, align 2, !dbg !1655, !tbaa !1413
  %44 = zext i16 %43 to i32, !dbg !1655
  %45 = sext i16 %40 to i32, !dbg !1656
  %46 = add nsw i32 %44, %45, !dbg !1657
  %47 = icmp sgt i32 %46, 3600, !dbg !1658
  br i1 %47, label %56, label %48, !dbg !1659

48:                                               ; preds = %16
  %49 = load volatile i16, i16* %42, align 2, !dbg !1660, !tbaa !1413
  %50 = zext i16 %49 to i32, !dbg !1660
  %51 = add nsw i32 %50, %45, !dbg !1662
  %52 = icmp slt i32 %51, 1620, !dbg !1663
  br i1 %52, label %56, label %53, !dbg !1664

53:                                               ; preds = %48
  %54 = load volatile i16, i16* %42, align 2, !dbg !1665, !tbaa !1413
  %55 = add i16 %54, %40, !dbg !1665
  br label %56

56:                                               ; preds = %48, %16, %53
  %57 = phi i16 [ %55, %53 ], [ 3600, %16 ], [ 1620, %48 ]
  store volatile i16 %57, i16* %42, align 2, !dbg !1666, !tbaa !1413
  %58 = getelementptr inbounds %struct.pid_st, %struct.pid_st* %0, i32 0, i32 10, !dbg !1667
  %59 = load i16*, i16** %58, align 4, !dbg !1667, !tbaa !1417
  %60 = load volatile i16, i16* %59, align 2, !dbg !1669, !tbaa !1413
  %61 = zext i16 %60 to i32, !dbg !1669
  %62 = load i16, i16* %26, align 4, !dbg !1670, !tbaa !1652
  %63 = sext i16 %62 to i32, !dbg !1671
  %64 = sub nsw i32 %61, %63, !dbg !1672
  %65 = icmp sgt i32 %64, 3600, !dbg !1673
  br i1 %65, label %74, label %66, !dbg !1674

66:                                               ; preds = %56
  %67 = load volatile i16, i16* %59, align 2, !dbg !1675, !tbaa !1413
  %68 = zext i16 %67 to i32, !dbg !1675
  %69 = sub nsw i32 %68, %63, !dbg !1677
  %70 = icmp slt i32 %69, 1620, !dbg !1678
  br i1 %70, label %74, label %71, !dbg !1679

71:                                               ; preds = %66
  %72 = load volatile i16, i16* %59, align 2, !dbg !1680, !tbaa !1413
  %73 = sub i16 %72, %62, !dbg !1680
  br label %74

74:                                               ; preds = %66, %56, %71
  %75 = phi i16 [ %73, %71 ], [ 3600, %56 ], [ 1620, %66 ]
  store volatile i16 %75, i16* %59, align 2, !dbg !1681, !tbaa !1413
  %76 = load float, float* %30, align 4, !dbg !1682, !tbaa !1217
  store float %76, float* %35, align 4, !dbg !1683, !tbaa !1645
  ret void, !dbg !1684
}

attributes #0 = { noinline noreturn nounwind alignstack=8 "frame-pointer"="all" "interrupt" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="cortex-m3" "target-features"="+armv7-m,+hwdiv,+soft-float,+strict-align,+thumb-mode,-aes,-bf16,-cdecp0,-cdecp1,-cdecp2,-cdecp3,-cdecp4,-cdecp5,-cdecp6,-cdecp7,-crc,-crypto,-d32,-dotprod,-dsp,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-hwdiv-arm,-i8mm,-lob,-mve,-mve.fp,-neon,-pacbti,-ras,-sb,-sha2,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #1 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="cortex-m3" "target-features"="+armv7-m,+hwdiv,+soft-float,+strict-align,+thumb-mode,-aes,-bf16,-cdecp0,-cdecp1,-cdecp2,-cdecp3,-cdecp4,-cdecp5,-cdecp6,-cdecp7,-crc,-crypto,-d32,-dotprod,-dsp,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-hwdiv-arm,-i8mm,-lob,-mve,-mve.fp,-neon,-pacbti,-ras,-sb,-sha2,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nofree noinline norecurse noreturn nosync nounwind readnone "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="cortex-m3" "target-features"="+armv7-m,+hwdiv,+soft-float,+strict-align,+thumb-mode,-aes,-bf16,-cdecp0,-cdecp1,-cdecp2,-cdecp3,-cdecp4,-cdecp5,-cdecp6,-cdecp7,-crc,-crypto,-d32,-dotprod,-dsp,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-hwdiv-arm,-i8mm,-lob,-mve,-mve.fp,-neon,-pacbti,-ras,-sb,-sha2,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { nofree noinline norecurse nosync nounwind "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="cortex-m3" "target-features"="+armv7-m,+hwdiv,+soft-float,+strict-align,+thumb-mode,-aes,-bf16,-cdecp0,-cdecp1,-cdecp2,-cdecp3,-cdecp4,-cdecp5,-cdecp6,-cdecp7,-crc,-crypto,-d32,-dotprod,-dsp,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-hwdiv-arm,-i8mm,-lob,-mve,-mve.fp,-neon,-pacbti,-ras,-sb,-sha2,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nofree nosync nounwind readnone speculatable willreturn }
attributes #5 = { argmemonly nofree nounwind willreturn }
attributes #6 = { argmemonly nofree nounwind willreturn writeonly }
attributes #7 = { noinline noreturn nounwind "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="cortex-m3" "target-features"="+armv7-m,+hwdiv,+soft-float,+strict-align,+thumb-mode,-aes,-bf16,-cdecp0,-cdecp1,-cdecp2,-cdecp3,-cdecp4,-cdecp5,-cdecp6,-cdecp7,-crc,-crypto,-d32,-dotprod,-dsp,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-hwdiv-arm,-i8mm,-lob,-mve,-mve.fp,-neon,-pacbti,-ras,-sb,-sha2,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { nofree noinline nounwind "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="cortex-m3" "target-features"="+armv7-m,+hwdiv,+soft-float,+strict-align,+thumb-mode,-aes,-bf16,-cdecp0,-cdecp1,-cdecp2,-cdecp3,-cdecp4,-cdecp5,-cdecp6,-cdecp7,-crc,-crypto,-d32,-dotprod,-dsp,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-hwdiv-arm,-i8mm,-lob,-mve,-mve.fp,-neon,-pacbti,-ras,-sb,-sha2,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #9 = { argmemonly nofree nosync nounwind willreturn }
attributes #10 = { mustprogress nofree noinline norecurse nounwind willreturn "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="cortex-m3" "target-features"="+armv7-m,+hwdiv,+soft-float,+strict-align,+thumb-mode,-aes,-bf16,-cdecp0,-cdecp1,-cdecp2,-cdecp3,-cdecp4,-cdecp5,-cdecp6,-cdecp7,-crc,-crypto,-d32,-dotprod,-dsp,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-hwdiv-arm,-i8mm,-lob,-mve,-mve.fp,-neon,-pacbti,-ras,-sb,-sha2,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #11 = { noinline nounwind "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="cortex-m3" "target-features"="+armv7-m,+hwdiv,+soft-float,+strict-align,+thumb-mode,-aes,-bf16,-cdecp0,-cdecp1,-cdecp2,-cdecp3,-cdecp4,-cdecp5,-cdecp6,-cdecp7,-crc,-crypto,-d32,-dotprod,-dsp,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-hwdiv-arm,-i8mm,-lob,-mve,-mve.fp,-neon,-pacbti,-ras,-sb,-sha2,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #12 = { nofree noinline norecurse nounwind "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="cortex-m3" "target-features"="+armv7-m,+hwdiv,+soft-float,+strict-align,+thumb-mode,-aes,-bf16,-cdecp0,-cdecp1,-cdecp2,-cdecp3,-cdecp4,-cdecp5,-cdecp6,-cdecp7,-crc,-crypto,-d32,-dotprod,-dsp,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-hwdiv-arm,-i8mm,-lob,-mve,-mve.fp,-neon,-pacbti,-ras,-sb,-sha2,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #13 = { mustprogress nofree noinline nounwind willreturn "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="cortex-m3" "target-features"="+armv7-m,+hwdiv,+soft-float,+strict-align,+thumb-mode,-aes,-bf16,-cdecp0,-cdecp1,-cdecp2,-cdecp3,-cdecp4,-cdecp5,-cdecp6,-cdecp7,-crc,-crypto,-d32,-dotprod,-dsp,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-hwdiv-arm,-i8mm,-lob,-mve,-mve.fp,-neon,-pacbti,-ras,-sb,-sha2,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #14 = { mustprogress nofree nounwind willreturn writeonly "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="cortex-m3" "target-features"="+armv7-m,+hwdiv,+soft-float,+strict-align,+thumb-mode,-aes,-bf16,-cdecp0,-cdecp1,-cdecp2,-cdecp3,-cdecp4,-cdecp5,-cdecp6,-cdecp7,-crc,-crypto,-d32,-dotprod,-dsp,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-hwdiv-arm,-i8mm,-lob,-mve,-mve.fp,-neon,-pacbti,-ras,-sb,-sha2,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #15 = { nounwind }

!llvm.dbg.cu = !{!2, !617, !67, !142, !214, !258, !343, !404, !595}
!llvm.ident = !{!620, !620, !620, !620, !620, !620, !620, !620, !620}
!llvm.module.flags = !{!621, !622, !623, !624, !625, !626, !627, !628, !629}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "g_pfnVectors", scope: !2, file: !3, line: 91, type: !58, isLocal: false, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C99, file: !3, producer: "Ubuntu clang version 14.0.6", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !4, globals: !57, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "startup.c", directory: "/home/mjshen/RTOSExploration/Avem/src", checksumkind: CSK_MD5, checksum: "cbd9238780a989b8c894aa43530e4d57")
!4 = !{!5, !12}
!5 = !DIDerivedType(tag: DW_TAG_typedef, name: "u32", file: !6, line: 513, baseType: !7)
!6 = !DIFile(filename: "libs/STM32_USB-FS-Device_Lib_V4.0.0/Libraries/CMSIS/Device/ST/STM32F10x/Include/stm32f10x.h", directory: "/home/mjshen/RTOSExploration/Avem", checksumkind: CSK_MD5, checksum: "1c2128df8a82e2d2915878006b067356")
!7 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint32_t", file: !8, line: 48, baseType: !9)
!8 = !DIFile(filename: "gcc-arm-none-eabi-8-2018-q4-major/bin/../lib/gcc/arm-none-eabi/8.2.1/../../../../arm-none-eabi/include/sys/_stdint.h", directory: "/home/mjshen/RTOSExploration", checksumkind: CSK_MD5, checksum: "ab914e287601b2385e57880e6599aa6b")
!9 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint32_t", file: !10, line: 79, baseType: !11)
!10 = !DIFile(filename: "gcc-arm-none-eabi-8-2018-q4-major/bin/../lib/gcc/arm-none-eabi/8.2.1/../../../../arm-none-eabi/include/machine/_default_types.h", directory: "/home/mjshen/RTOSExploration", checksumkind: CSK_MD5, checksum: "f7024d0682a918b41f94e8be9cd90461")
!11 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!12 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !13, size: 32)
!13 = !DIDerivedType(tag: DW_TAG_typedef, name: "SCB_Type", file: !14, line: 336, baseType: !15)
!14 = !DIFile(filename: "libs/STM32_USB-FS-Device_Lib_V4.0.0/Libraries/CMSIS/Include/core_cm3.h", directory: "/home/mjshen/RTOSExploration/Avem", checksumkind: CSK_MD5, checksum: "f6a877e01832adc7c6f3e6a91cff33f2")
!15 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !14, line: 313, size: 1120, elements: !16)
!16 = !{!17, !20, !21, !22, !23, !24, !25, !33, !34, !35, !36, !37, !38, !39, !40, !44, !45, !46, !50, !54, !56}
!17 = !DIDerivedType(tag: DW_TAG_member, name: "CPUID", scope: !15, file: !14, line: 315, baseType: !18, size: 32)
!18 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !19)
!19 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !7)
!20 = !DIDerivedType(tag: DW_TAG_member, name: "ICSR", scope: !15, file: !14, line: 316, baseType: !19, size: 32, offset: 32)
!21 = !DIDerivedType(tag: DW_TAG_member, name: "VTOR", scope: !15, file: !14, line: 317, baseType: !19, size: 32, offset: 64)
!22 = !DIDerivedType(tag: DW_TAG_member, name: "AIRCR", scope: !15, file: !14, line: 318, baseType: !19, size: 32, offset: 96)
!23 = !DIDerivedType(tag: DW_TAG_member, name: "SCR", scope: !15, file: !14, line: 319, baseType: !19, size: 32, offset: 128)
!24 = !DIDerivedType(tag: DW_TAG_member, name: "CCR", scope: !15, file: !14, line: 320, baseType: !19, size: 32, offset: 160)
!25 = !DIDerivedType(tag: DW_TAG_member, name: "SHP", scope: !15, file: !14, line: 321, baseType: !26, size: 96, offset: 192)
!26 = !DICompositeType(tag: DW_TAG_array_type, baseType: !27, size: 96, elements: !31)
!27 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !28)
!28 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint8_t", file: !8, line: 24, baseType: !29)
!29 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint8_t", file: !10, line: 43, baseType: !30)
!30 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!31 = !{!32}
!32 = !DISubrange(count: 12)
!33 = !DIDerivedType(tag: DW_TAG_member, name: "SHCSR", scope: !15, file: !14, line: 322, baseType: !19, size: 32, offset: 288)
!34 = !DIDerivedType(tag: DW_TAG_member, name: "CFSR", scope: !15, file: !14, line: 323, baseType: !19, size: 32, offset: 320)
!35 = !DIDerivedType(tag: DW_TAG_member, name: "HFSR", scope: !15, file: !14, line: 324, baseType: !19, size: 32, offset: 352)
!36 = !DIDerivedType(tag: DW_TAG_member, name: "DFSR", scope: !15, file: !14, line: 325, baseType: !19, size: 32, offset: 384)
!37 = !DIDerivedType(tag: DW_TAG_member, name: "MMFAR", scope: !15, file: !14, line: 326, baseType: !19, size: 32, offset: 416)
!38 = !DIDerivedType(tag: DW_TAG_member, name: "BFAR", scope: !15, file: !14, line: 327, baseType: !19, size: 32, offset: 448)
!39 = !DIDerivedType(tag: DW_TAG_member, name: "AFSR", scope: !15, file: !14, line: 328, baseType: !19, size: 32, offset: 480)
!40 = !DIDerivedType(tag: DW_TAG_member, name: "PFR", scope: !15, file: !14, line: 329, baseType: !41, size: 64, offset: 512)
!41 = !DICompositeType(tag: DW_TAG_array_type, baseType: !18, size: 64, elements: !42)
!42 = !{!43}
!43 = !DISubrange(count: 2)
!44 = !DIDerivedType(tag: DW_TAG_member, name: "DFR", scope: !15, file: !14, line: 330, baseType: !18, size: 32, offset: 576)
!45 = !DIDerivedType(tag: DW_TAG_member, name: "ADR", scope: !15, file: !14, line: 331, baseType: !18, size: 32, offset: 608)
!46 = !DIDerivedType(tag: DW_TAG_member, name: "MMFR", scope: !15, file: !14, line: 332, baseType: !47, size: 128, offset: 640)
!47 = !DICompositeType(tag: DW_TAG_array_type, baseType: !18, size: 128, elements: !48)
!48 = !{!49}
!49 = !DISubrange(count: 4)
!50 = !DIDerivedType(tag: DW_TAG_member, name: "ISAR", scope: !15, file: !14, line: 333, baseType: !51, size: 160, offset: 768)
!51 = !DICompositeType(tag: DW_TAG_array_type, baseType: !18, size: 160, elements: !52)
!52 = !{!53}
!53 = !DISubrange(count: 5)
!54 = !DIDerivedType(tag: DW_TAG_member, name: "RESERVED0", scope: !15, file: !14, line: 334, baseType: !55, size: 160, offset: 928)
!55 = !DICompositeType(tag: DW_TAG_array_type, baseType: !7, size: 160, elements: !52)
!56 = !DIDerivedType(tag: DW_TAG_member, name: "CPACR", scope: !15, file: !14, line: 335, baseType: !19, size: 32, offset: 1088)
!57 = !{!0}
!58 = !DICompositeType(tag: DW_TAG_array_type, baseType: !59, size: 3840, elements: !63)
!59 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !60)
!60 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !61, size: 32)
!61 = !DISubroutineType(types: !62)
!62 = !{null}
!63 = !{!64}
!64 = !DISubrange(count: 120)
!65 = !DIGlobalVariableExpression(var: !66, expr: !DIExpression())
!66 = distinct !DIGlobalVariable(name: "SystemCoreClock", scope: !67, file: !135, line: 168, type: !7, isLocal: false, isDefinition: true)
!67 = distinct !DICompileUnit(language: DW_LANG_C99, file: !68, producer: "Ubuntu clang version 14.0.6", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !69, retainedTypes: !75, globals: !132, splitDebugInlining: false, nameTableKind: None)
!68 = !DIFile(filename: "/home/mjshen/RTOSExploration/Avem/libs/STM32_USB-FS-Device_Lib_V4.0.0/Libraries/CMSIS/Device/ST/STM32F10x/Source/Templates/system_stm32f10x.c", directory: "/home/mjshen/RTOSExploration/Avem/libs/STM32_USB-FS-Device_Lib_V4.0.0/Libraries/CMSIS/Device/ST/STM32F10x/Source/Templates", checksumkind: CSK_MD5, checksum: "06a753527f3679037b7585ec5825a1b5")
!69 = !{!70}
!70 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !71, line: 529, baseType: !11, size: 32, elements: !72)
!71 = !DIFile(filename: "Include/stm32f10x.h", directory: "/home/mjshen/RTOSExploration/Avem/libs/STM32_USB-FS-Device_Lib_V4.0.0/Libraries/CMSIS/Device/ST/STM32F10x", checksumkind: CSK_MD5, checksum: "1c2128df8a82e2d2915878006b067356")
!72 = !{!73, !74}
!73 = !DIEnumerator(name: "RESET", value: 0)
!74 = !DIEnumerator(name: "SET", value: 1)
!75 = !{!7, !76, !90, !116, !28, !119}
!76 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !77, size: 32)
!77 = !DIDerivedType(tag: DW_TAG_typedef, name: "RCC_TypeDef", file: !71, line: 1108, baseType: !78)
!78 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !71, line: 1086, size: 320, elements: !79)
!79 = !{!80, !81, !82, !83, !84, !85, !86, !87, !88, !89}
!80 = !DIDerivedType(tag: DW_TAG_member, name: "CR", scope: !78, file: !71, line: 1088, baseType: !19, size: 32)
!81 = !DIDerivedType(tag: DW_TAG_member, name: "CFGR", scope: !78, file: !71, line: 1089, baseType: !19, size: 32, offset: 32)
!82 = !DIDerivedType(tag: DW_TAG_member, name: "CIR", scope: !78, file: !71, line: 1090, baseType: !19, size: 32, offset: 64)
!83 = !DIDerivedType(tag: DW_TAG_member, name: "APB2RSTR", scope: !78, file: !71, line: 1091, baseType: !19, size: 32, offset: 96)
!84 = !DIDerivedType(tag: DW_TAG_member, name: "APB1RSTR", scope: !78, file: !71, line: 1092, baseType: !19, size: 32, offset: 128)
!85 = !DIDerivedType(tag: DW_TAG_member, name: "AHBENR", scope: !78, file: !71, line: 1093, baseType: !19, size: 32, offset: 160)
!86 = !DIDerivedType(tag: DW_TAG_member, name: "APB2ENR", scope: !78, file: !71, line: 1094, baseType: !19, size: 32, offset: 192)
!87 = !DIDerivedType(tag: DW_TAG_member, name: "APB1ENR", scope: !78, file: !71, line: 1095, baseType: !19, size: 32, offset: 224)
!88 = !DIDerivedType(tag: DW_TAG_member, name: "BDCR", scope: !78, file: !71, line: 1096, baseType: !19, size: 32, offset: 256)
!89 = !DIDerivedType(tag: DW_TAG_member, name: "CSR", scope: !78, file: !71, line: 1097, baseType: !19, size: 32, offset: 288)
!90 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !91, size: 32)
!91 = !DIDerivedType(tag: DW_TAG_typedef, name: "SCB_Type", file: !92, line: 336, baseType: !93)
!92 = !DIFile(filename: "Include/core_cm3.h", directory: "/home/mjshen/RTOSExploration/Avem/libs/STM32_USB-FS-Device_Lib_V4.0.0/Libraries/CMSIS", checksumkind: CSK_MD5, checksum: "f6a877e01832adc7c6f3e6a91cff33f2")
!93 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !92, line: 313, size: 1120, elements: !94)
!94 = !{!95, !96, !97, !98, !99, !100, !101, !102, !103, !104, !105, !106, !107, !108, !109, !110, !111, !112, !113, !114, !115}
!95 = !DIDerivedType(tag: DW_TAG_member, name: "CPUID", scope: !93, file: !92, line: 315, baseType: !18, size: 32)
!96 = !DIDerivedType(tag: DW_TAG_member, name: "ICSR", scope: !93, file: !92, line: 316, baseType: !19, size: 32, offset: 32)
!97 = !DIDerivedType(tag: DW_TAG_member, name: "VTOR", scope: !93, file: !92, line: 317, baseType: !19, size: 32, offset: 64)
!98 = !DIDerivedType(tag: DW_TAG_member, name: "AIRCR", scope: !93, file: !92, line: 318, baseType: !19, size: 32, offset: 96)
!99 = !DIDerivedType(tag: DW_TAG_member, name: "SCR", scope: !93, file: !92, line: 319, baseType: !19, size: 32, offset: 128)
!100 = !DIDerivedType(tag: DW_TAG_member, name: "CCR", scope: !93, file: !92, line: 320, baseType: !19, size: 32, offset: 160)
!101 = !DIDerivedType(tag: DW_TAG_member, name: "SHP", scope: !93, file: !92, line: 321, baseType: !26, size: 96, offset: 192)
!102 = !DIDerivedType(tag: DW_TAG_member, name: "SHCSR", scope: !93, file: !92, line: 322, baseType: !19, size: 32, offset: 288)
!103 = !DIDerivedType(tag: DW_TAG_member, name: "CFSR", scope: !93, file: !92, line: 323, baseType: !19, size: 32, offset: 320)
!104 = !DIDerivedType(tag: DW_TAG_member, name: "HFSR", scope: !93, file: !92, line: 324, baseType: !19, size: 32, offset: 352)
!105 = !DIDerivedType(tag: DW_TAG_member, name: "DFSR", scope: !93, file: !92, line: 325, baseType: !19, size: 32, offset: 384)
!106 = !DIDerivedType(tag: DW_TAG_member, name: "MMFAR", scope: !93, file: !92, line: 326, baseType: !19, size: 32, offset: 416)
!107 = !DIDerivedType(tag: DW_TAG_member, name: "BFAR", scope: !93, file: !92, line: 327, baseType: !19, size: 32, offset: 448)
!108 = !DIDerivedType(tag: DW_TAG_member, name: "AFSR", scope: !93, file: !92, line: 328, baseType: !19, size: 32, offset: 480)
!109 = !DIDerivedType(tag: DW_TAG_member, name: "PFR", scope: !93, file: !92, line: 329, baseType: !41, size: 64, offset: 512)
!110 = !DIDerivedType(tag: DW_TAG_member, name: "DFR", scope: !93, file: !92, line: 330, baseType: !18, size: 32, offset: 576)
!111 = !DIDerivedType(tag: DW_TAG_member, name: "ADR", scope: !93, file: !92, line: 331, baseType: !18, size: 32, offset: 608)
!112 = !DIDerivedType(tag: DW_TAG_member, name: "MMFR", scope: !93, file: !92, line: 332, baseType: !47, size: 128, offset: 640)
!113 = !DIDerivedType(tag: DW_TAG_member, name: "ISAR", scope: !93, file: !92, line: 333, baseType: !51, size: 160, offset: 768)
!114 = !DIDerivedType(tag: DW_TAG_member, name: "RESERVED0", scope: !93, file: !92, line: 334, baseType: !55, size: 160, offset: 928)
!115 = !DIDerivedType(tag: DW_TAG_member, name: "CPACR", scope: !93, file: !92, line: 335, baseType: !19, size: 32, offset: 1088)
!116 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint16_t", file: !8, line: 36, baseType: !117)
!117 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint16_t", file: !10, line: 57, baseType: !118)
!118 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!119 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !120, size: 32)
!120 = !DIDerivedType(tag: DW_TAG_typedef, name: "FLASH_TypeDef", file: !71, line: 930, baseType: !121)
!121 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !71, line: 911, size: 288, elements: !122)
!122 = !{!123, !124, !125, !126, !127, !128, !129, !130, !131}
!123 = !DIDerivedType(tag: DW_TAG_member, name: "ACR", scope: !121, file: !71, line: 913, baseType: !19, size: 32)
!124 = !DIDerivedType(tag: DW_TAG_member, name: "KEYR", scope: !121, file: !71, line: 914, baseType: !19, size: 32, offset: 32)
!125 = !DIDerivedType(tag: DW_TAG_member, name: "OPTKEYR", scope: !121, file: !71, line: 915, baseType: !19, size: 32, offset: 64)
!126 = !DIDerivedType(tag: DW_TAG_member, name: "SR", scope: !121, file: !71, line: 916, baseType: !19, size: 32, offset: 96)
!127 = !DIDerivedType(tag: DW_TAG_member, name: "CR", scope: !121, file: !71, line: 917, baseType: !19, size: 32, offset: 128)
!128 = !DIDerivedType(tag: DW_TAG_member, name: "AR", scope: !121, file: !71, line: 918, baseType: !19, size: 32, offset: 160)
!129 = !DIDerivedType(tag: DW_TAG_member, name: "RESERVED", scope: !121, file: !71, line: 919, baseType: !19, size: 32, offset: 192)
!130 = !DIDerivedType(tag: DW_TAG_member, name: "OBR", scope: !121, file: !71, line: 920, baseType: !19, size: 32, offset: 224)
!131 = !DIDerivedType(tag: DW_TAG_member, name: "WRPR", scope: !121, file: !71, line: 921, baseType: !19, size: 32, offset: 256)
!132 = !{!65, !133}
!133 = !DIGlobalVariableExpression(var: !134, expr: !DIExpression())
!134 = distinct !DIGlobalVariable(name: "AHBPrescTable", scope: !67, file: !135, line: 173, type: !136, isLocal: false, isDefinition: true)
!135 = !DIFile(filename: "system_stm32f10x.c", directory: "/home/mjshen/RTOSExploration/Avem/libs/STM32_USB-FS-Device_Lib_V4.0.0/Libraries/CMSIS/Device/ST/STM32F10x/Source/Templates", checksumkind: CSK_MD5, checksum: "06a753527f3679037b7585ec5825a1b5")
!136 = !DICompositeType(tag: DW_TAG_array_type, baseType: !137, size: 128, elements: !138)
!137 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !27)
!138 = !{!139}
!139 = !DISubrange(count: 16)
!140 = !DIGlobalVariableExpression(var: !141, expr: !DIExpression())
!141 = distinct !DIGlobalVariable(name: "avm_core_module_st", scope: !142, file: !184, line: 5, type: !187, isLocal: false, isDefinition: true)
!142 = distinct !DICompileUnit(language: DW_LANG_C99, file: !143, producer: "Ubuntu clang version 14.0.6", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !144, globals: !181, splitDebugInlining: false, nameTableKind: None)
!143 = !DIFile(filename: "/home/mjshen/RTOSExploration/Avem/libs/module/avm_core.c", directory: "/home/mjshen/RTOSExploration/Avem/libs/module", checksumkind: CSK_MD5, checksum: "fc24f6cd1bef1f76759dc0e57a10b1de")
!144 = !{!145, !154, !60, !7, !155, !156}
!145 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !146, size: 32)
!146 = !DIDerivedType(tag: DW_TAG_typedef, name: "SysTick_Type", file: !147, line: 581, baseType: !148)
!147 = !DIFile(filename: "STM32_USB-FS-Device_Lib_V4.0.0/Libraries/CMSIS/Include/core_cm3.h", directory: "/home/mjshen/RTOSExploration/Avem/libs", checksumkind: CSK_MD5, checksum: "f6a877e01832adc7c6f3e6a91cff33f2")
!148 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !147, line: 575, size: 128, elements: !149)
!149 = !{!150, !151, !152, !153}
!150 = !DIDerivedType(tag: DW_TAG_member, name: "CTRL", scope: !148, file: !147, line: 577, baseType: !19, size: 32)
!151 = !DIDerivedType(tag: DW_TAG_member, name: "LOAD", scope: !148, file: !147, line: 578, baseType: !19, size: 32, offset: 32)
!152 = !DIDerivedType(tag: DW_TAG_member, name: "VAL", scope: !148, file: !147, line: 579, baseType: !19, size: 32, offset: 64)
!153 = !DIDerivedType(tag: DW_TAG_member, name: "CALIB", scope: !148, file: !147, line: 580, baseType: !18, size: 32, offset: 96)
!154 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !11, size: 32)
!155 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 32)
!156 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !157, size: 32)
!157 = !DIDerivedType(tag: DW_TAG_typedef, name: "SCB_Type", file: !147, line: 336, baseType: !158)
!158 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !147, line: 313, size: 1120, elements: !159)
!159 = !{!160, !161, !162, !163, !164, !165, !166, !167, !168, !169, !170, !171, !172, !173, !174, !175, !176, !177, !178, !179, !180}
!160 = !DIDerivedType(tag: DW_TAG_member, name: "CPUID", scope: !158, file: !147, line: 315, baseType: !18, size: 32)
!161 = !DIDerivedType(tag: DW_TAG_member, name: "ICSR", scope: !158, file: !147, line: 316, baseType: !19, size: 32, offset: 32)
!162 = !DIDerivedType(tag: DW_TAG_member, name: "VTOR", scope: !158, file: !147, line: 317, baseType: !19, size: 32, offset: 64)
!163 = !DIDerivedType(tag: DW_TAG_member, name: "AIRCR", scope: !158, file: !147, line: 318, baseType: !19, size: 32, offset: 96)
!164 = !DIDerivedType(tag: DW_TAG_member, name: "SCR", scope: !158, file: !147, line: 319, baseType: !19, size: 32, offset: 128)
!165 = !DIDerivedType(tag: DW_TAG_member, name: "CCR", scope: !158, file: !147, line: 320, baseType: !19, size: 32, offset: 160)
!166 = !DIDerivedType(tag: DW_TAG_member, name: "SHP", scope: !158, file: !147, line: 321, baseType: !26, size: 96, offset: 192)
!167 = !DIDerivedType(tag: DW_TAG_member, name: "SHCSR", scope: !158, file: !147, line: 322, baseType: !19, size: 32, offset: 288)
!168 = !DIDerivedType(tag: DW_TAG_member, name: "CFSR", scope: !158, file: !147, line: 323, baseType: !19, size: 32, offset: 320)
!169 = !DIDerivedType(tag: DW_TAG_member, name: "HFSR", scope: !158, file: !147, line: 324, baseType: !19, size: 32, offset: 352)
!170 = !DIDerivedType(tag: DW_TAG_member, name: "DFSR", scope: !158, file: !147, line: 325, baseType: !19, size: 32, offset: 384)
!171 = !DIDerivedType(tag: DW_TAG_member, name: "MMFAR", scope: !158, file: !147, line: 326, baseType: !19, size: 32, offset: 416)
!172 = !DIDerivedType(tag: DW_TAG_member, name: "BFAR", scope: !158, file: !147, line: 327, baseType: !19, size: 32, offset: 448)
!173 = !DIDerivedType(tag: DW_TAG_member, name: "AFSR", scope: !158, file: !147, line: 328, baseType: !19, size: 32, offset: 480)
!174 = !DIDerivedType(tag: DW_TAG_member, name: "PFR", scope: !158, file: !147, line: 329, baseType: !41, size: 64, offset: 512)
!175 = !DIDerivedType(tag: DW_TAG_member, name: "DFR", scope: !158, file: !147, line: 330, baseType: !18, size: 32, offset: 576)
!176 = !DIDerivedType(tag: DW_TAG_member, name: "ADR", scope: !158, file: !147, line: 331, baseType: !18, size: 32, offset: 608)
!177 = !DIDerivedType(tag: DW_TAG_member, name: "MMFR", scope: !158, file: !147, line: 332, baseType: !47, size: 128, offset: 640)
!178 = !DIDerivedType(tag: DW_TAG_member, name: "ISAR", scope: !158, file: !147, line: 333, baseType: !51, size: 160, offset: 768)
!179 = !DIDerivedType(tag: DW_TAG_member, name: "RESERVED0", scope: !158, file: !147, line: 334, baseType: !55, size: 160, offset: 928)
!180 = !DIDerivedType(tag: DW_TAG_member, name: "CPACR", scope: !158, file: !147, line: 335, baseType: !19, size: 32, offset: 1088)
!181 = !{!140, !182, !204}
!182 = !DIGlobalVariableExpression(var: !183, expr: !DIExpression())
!183 = distinct !DIGlobalVariable(name: "avm_modules_pool", scope: !142, file: !184, line: 39, type: !185, isLocal: false, isDefinition: true)
!184 = !DIFile(filename: "avm_core.c", directory: "/home/mjshen/RTOSExploration/Avem/libs/module", checksumkind: CSK_MD5, checksum: "fc24f6cd1bef1f76759dc0e57a10b1de")
!185 = !DICompositeType(tag: DW_TAG_array_type, baseType: !186, size: 192, elements: !202)
!186 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !187, size: 32)
!187 = !DIDerivedType(tag: DW_TAG_typedef, name: "avm_module_t", file: !188, line: 4, baseType: !189)
!188 = !DIFile(filename: "avm_core.h", directory: "/home/mjshen/RTOSExploration/Avem/libs/module", checksumkind: CSK_MD5, checksum: "81ff38b28cf7846d1b43b3611bdfab46")
!189 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "avm_module_s", file: !188, line: 19, size: 160, elements: !190)
!190 = !{!191, !192, !193, !197, !201}
!191 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !189, file: !188, line: 20, baseType: !118, size: 16)
!192 = !DIDerivedType(tag: DW_TAG_member, name: "confs", scope: !189, file: !188, line: 21, baseType: !154, size: 32, offset: 32)
!193 = !DIDerivedType(tag: DW_TAG_member, name: "init_module", scope: !189, file: !188, line: 22, baseType: !194, size: 32, offset: 64)
!194 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !195, size: 32)
!195 = !DISubroutineType(types: !196)
!196 = !{!30, !155}
!197 = !DIDerivedType(tag: DW_TAG_member, name: "enable_module", scope: !189, file: !188, line: 23, baseType: !198, size: 32, offset: 96)
!198 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !199, size: 32)
!199 = !DISubroutineType(types: !200)
!200 = !{!30}
!201 = !DIDerivedType(tag: DW_TAG_member, name: "disable_module", scope: !189, file: !188, line: 24, baseType: !198, size: 32, offset: 128)
!202 = !{!203}
!203 = !DISubrange(count: 6)
!204 = !DIGlobalVariableExpression(var: !205, expr: !DIExpression())
!205 = distinct !DIGlobalVariable(name: "avm_modules_num", scope: !206, file: !184, line: 53, type: !30, isLocal: true, isDefinition: true)
!206 = distinct !DISubprogram(name: "avm_core_init", scope: !184, file: !184, line: 48, type: !195, scopeLine: 48, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !142, retainedNodes: !207)
!207 = !{!208, !209, !210}
!208 = !DILocalVariable(name: "arg", arg: 1, scope: !206, file: !184, line: 48, type: !155)
!209 = !DILocalVariable(name: "p_core", scope: !206, file: !184, line: 51, type: !186)
!210 = !DILocalVariable(name: "this", scope: !206, file: !184, line: 60, type: !211)
!211 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !186, size: 32)
!212 = !DIGlobalVariableExpression(var: !213, expr: !DIExpression())
!213 = distinct !DIGlobalVariable(name: "avm_i2c_module_st", scope: !214, file: !247, line: 5, type: !248, isLocal: false, isDefinition: true)
!214 = distinct !DICompileUnit(language: DW_LANG_C99, file: !215, producer: "Ubuntu clang version 14.0.6", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !216, globals: !246, splitDebugInlining: false, nameTableKind: None)
!215 = !DIFile(filename: "/home/mjshen/RTOSExploration/Avem/libs/module/avm_i2c.c", directory: "/home/mjshen/RTOSExploration/Avem/libs/module", checksumkind: CSK_MD5, checksum: "0e7cc63d5a0f1b4dca6beac304455642")
!216 = !{!7, !217, !232, !243, !11}
!217 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !218, size: 32)
!218 = !DIDerivedType(tag: DW_TAG_typedef, name: "RCC_TypeDef", file: !219, line: 1108, baseType: !220)
!219 = !DIFile(filename: "STM32_USB-FS-Device_Lib_V4.0.0/Libraries/CMSIS/Device/ST/STM32F10x/Include/stm32f10x.h", directory: "/home/mjshen/RTOSExploration/Avem/libs", checksumkind: CSK_MD5, checksum: "1c2128df8a82e2d2915878006b067356")
!220 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !219, line: 1086, size: 320, elements: !221)
!221 = !{!222, !223, !224, !225, !226, !227, !228, !229, !230, !231}
!222 = !DIDerivedType(tag: DW_TAG_member, name: "CR", scope: !220, file: !219, line: 1088, baseType: !19, size: 32)
!223 = !DIDerivedType(tag: DW_TAG_member, name: "CFGR", scope: !220, file: !219, line: 1089, baseType: !19, size: 32, offset: 32)
!224 = !DIDerivedType(tag: DW_TAG_member, name: "CIR", scope: !220, file: !219, line: 1090, baseType: !19, size: 32, offset: 64)
!225 = !DIDerivedType(tag: DW_TAG_member, name: "APB2RSTR", scope: !220, file: !219, line: 1091, baseType: !19, size: 32, offset: 96)
!226 = !DIDerivedType(tag: DW_TAG_member, name: "APB1RSTR", scope: !220, file: !219, line: 1092, baseType: !19, size: 32, offset: 128)
!227 = !DIDerivedType(tag: DW_TAG_member, name: "AHBENR", scope: !220, file: !219, line: 1093, baseType: !19, size: 32, offset: 160)
!228 = !DIDerivedType(tag: DW_TAG_member, name: "APB2ENR", scope: !220, file: !219, line: 1094, baseType: !19, size: 32, offset: 192)
!229 = !DIDerivedType(tag: DW_TAG_member, name: "APB1ENR", scope: !220, file: !219, line: 1095, baseType: !19, size: 32, offset: 224)
!230 = !DIDerivedType(tag: DW_TAG_member, name: "BDCR", scope: !220, file: !219, line: 1096, baseType: !19, size: 32, offset: 256)
!231 = !DIDerivedType(tag: DW_TAG_member, name: "CSR", scope: !220, file: !219, line: 1097, baseType: !19, size: 32, offset: 288)
!232 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !233, size: 32)
!233 = !DIDerivedType(tag: DW_TAG_typedef, name: "GPIO_TypeDef", file: !219, line: 1020, baseType: !234)
!234 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !219, line: 1011, size: 224, elements: !235)
!235 = !{!236, !237, !238, !239, !240, !241, !242}
!236 = !DIDerivedType(tag: DW_TAG_member, name: "CRL", scope: !234, file: !219, line: 1013, baseType: !19, size: 32)
!237 = !DIDerivedType(tag: DW_TAG_member, name: "CRH", scope: !234, file: !219, line: 1014, baseType: !19, size: 32, offset: 32)
!238 = !DIDerivedType(tag: DW_TAG_member, name: "IDR", scope: !234, file: !219, line: 1015, baseType: !19, size: 32, offset: 64)
!239 = !DIDerivedType(tag: DW_TAG_member, name: "ODR", scope: !234, file: !219, line: 1016, baseType: !19, size: 32, offset: 96)
!240 = !DIDerivedType(tag: DW_TAG_member, name: "BSRR", scope: !234, file: !219, line: 1017, baseType: !19, size: 32, offset: 128)
!241 = !DIDerivedType(tag: DW_TAG_member, name: "BRR", scope: !234, file: !219, line: 1018, baseType: !19, size: 32, offset: 160)
!242 = !DIDerivedType(tag: DW_TAG_member, name: "LCKR", scope: !234, file: !219, line: 1019, baseType: !19, size: 32, offset: 192)
!243 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !244, size: 32)
!244 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !245)
!245 = !DIBasicType(name: "unsigned long", size: 32, encoding: DW_ATE_unsigned)
!246 = !{!212}
!247 = !DIFile(filename: "avm_i2c.c", directory: "/home/mjshen/RTOSExploration/Avem/libs/module", checksumkind: CSK_MD5, checksum: "0e7cc63d5a0f1b4dca6beac304455642")
!248 = !DIDerivedType(tag: DW_TAG_typedef, name: "avm_module_t", file: !188, line: 4, baseType: !249)
!249 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "avm_module_s", file: !188, line: 19, size: 160, elements: !250)
!250 = !{!251, !252, !253, !254, !255}
!251 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !249, file: !188, line: 20, baseType: !118, size: 16)
!252 = !DIDerivedType(tag: DW_TAG_member, name: "confs", scope: !249, file: !188, line: 21, baseType: !154, size: 32, offset: 32)
!253 = !DIDerivedType(tag: DW_TAG_member, name: "init_module", scope: !249, file: !188, line: 22, baseType: !194, size: 32, offset: 64)
!254 = !DIDerivedType(tag: DW_TAG_member, name: "enable_module", scope: !249, file: !188, line: 23, baseType: !198, size: 32, offset: 96)
!255 = !DIDerivedType(tag: DW_TAG_member, name: "disable_module", scope: !249, file: !188, line: 24, baseType: !198, size: 32, offset: 128)
!256 = !DIGlobalVariableExpression(var: !257, expr: !DIExpression())
!257 = distinct !DIGlobalVariable(name: "avm_motor_module_st", scope: !258, file: !332, line: 5, type: !333, isLocal: false, isDefinition: true)
!258 = distinct !DICompileUnit(language: DW_LANG_C99, file: !259, producer: "Ubuntu clang version 14.0.6", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !260, globals: !331, splitDebugInlining: false, nameTableKind: None)
!259 = !DIFile(filename: "/home/mjshen/RTOSExploration/Avem/libs/module/avm_motor.c", directory: "/home/mjshen/RTOSExploration/Avem/libs/module", checksumkind: CSK_MD5, checksum: "ffcf33f092fdb4a913792a749f470553")
!260 = !{!7, !261, !275, !286, !118}
!261 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !262, size: 32)
!262 = !DIDerivedType(tag: DW_TAG_typedef, name: "RCC_TypeDef", file: !219, line: 1108, baseType: !263)
!263 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !219, line: 1086, size: 320, elements: !264)
!264 = !{!265, !266, !267, !268, !269, !270, !271, !272, !273, !274}
!265 = !DIDerivedType(tag: DW_TAG_member, name: "CR", scope: !263, file: !219, line: 1088, baseType: !19, size: 32)
!266 = !DIDerivedType(tag: DW_TAG_member, name: "CFGR", scope: !263, file: !219, line: 1089, baseType: !19, size: 32, offset: 32)
!267 = !DIDerivedType(tag: DW_TAG_member, name: "CIR", scope: !263, file: !219, line: 1090, baseType: !19, size: 32, offset: 64)
!268 = !DIDerivedType(tag: DW_TAG_member, name: "APB2RSTR", scope: !263, file: !219, line: 1091, baseType: !19, size: 32, offset: 96)
!269 = !DIDerivedType(tag: DW_TAG_member, name: "APB1RSTR", scope: !263, file: !219, line: 1092, baseType: !19, size: 32, offset: 128)
!270 = !DIDerivedType(tag: DW_TAG_member, name: "AHBENR", scope: !263, file: !219, line: 1093, baseType: !19, size: 32, offset: 160)
!271 = !DIDerivedType(tag: DW_TAG_member, name: "APB2ENR", scope: !263, file: !219, line: 1094, baseType: !19, size: 32, offset: 192)
!272 = !DIDerivedType(tag: DW_TAG_member, name: "APB1ENR", scope: !263, file: !219, line: 1095, baseType: !19, size: 32, offset: 224)
!273 = !DIDerivedType(tag: DW_TAG_member, name: "BDCR", scope: !263, file: !219, line: 1096, baseType: !19, size: 32, offset: 256)
!274 = !DIDerivedType(tag: DW_TAG_member, name: "CSR", scope: !263, file: !219, line: 1097, baseType: !19, size: 32, offset: 288)
!275 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !276, size: 32)
!276 = !DIDerivedType(tag: DW_TAG_typedef, name: "GPIO_TypeDef", file: !219, line: 1020, baseType: !277)
!277 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !219, line: 1011, size: 224, elements: !278)
!278 = !{!279, !280, !281, !282, !283, !284, !285}
!279 = !DIDerivedType(tag: DW_TAG_member, name: "CRL", scope: !277, file: !219, line: 1013, baseType: !19, size: 32)
!280 = !DIDerivedType(tag: DW_TAG_member, name: "CRH", scope: !277, file: !219, line: 1014, baseType: !19, size: 32, offset: 32)
!281 = !DIDerivedType(tag: DW_TAG_member, name: "IDR", scope: !277, file: !219, line: 1015, baseType: !19, size: 32, offset: 64)
!282 = !DIDerivedType(tag: DW_TAG_member, name: "ODR", scope: !277, file: !219, line: 1016, baseType: !19, size: 32, offset: 96)
!283 = !DIDerivedType(tag: DW_TAG_member, name: "BSRR", scope: !277, file: !219, line: 1017, baseType: !19, size: 32, offset: 128)
!284 = !DIDerivedType(tag: DW_TAG_member, name: "BRR", scope: !277, file: !219, line: 1018, baseType: !19, size: 32, offset: 160)
!285 = !DIDerivedType(tag: DW_TAG_member, name: "LCKR", scope: !277, file: !219, line: 1019, baseType: !19, size: 32, offset: 192)
!286 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !287, size: 32)
!287 = !DIDerivedType(tag: DW_TAG_typedef, name: "TIM_TypeDef", file: !219, line: 1238, baseType: !288)
!288 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !219, line: 1196, size: 640, elements: !289)
!289 = !{!290, !292, !293, !294, !295, !296, !297, !298, !299, !300, !301, !302, !303, !304, !305, !306, !307, !308, !309, !310, !311, !312, !313, !314, !315, !316, !317, !318, !319, !320, !321, !322, !323, !324, !325, !326, !327, !328, !329, !330}
!290 = !DIDerivedType(tag: DW_TAG_member, name: "CR1", scope: !288, file: !219, line: 1198, baseType: !291, size: 16)
!291 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !116)
!292 = !DIDerivedType(tag: DW_TAG_member, name: "RESERVED0", scope: !288, file: !219, line: 1199, baseType: !116, size: 16, offset: 16)
!293 = !DIDerivedType(tag: DW_TAG_member, name: "CR2", scope: !288, file: !219, line: 1200, baseType: !291, size: 16, offset: 32)
!294 = !DIDerivedType(tag: DW_TAG_member, name: "RESERVED1", scope: !288, file: !219, line: 1201, baseType: !116, size: 16, offset: 48)
!295 = !DIDerivedType(tag: DW_TAG_member, name: "SMCR", scope: !288, file: !219, line: 1202, baseType: !291, size: 16, offset: 64)
!296 = !DIDerivedType(tag: DW_TAG_member, name: "RESERVED2", scope: !288, file: !219, line: 1203, baseType: !116, size: 16, offset: 80)
!297 = !DIDerivedType(tag: DW_TAG_member, name: "DIER", scope: !288, file: !219, line: 1204, baseType: !291, size: 16, offset: 96)
!298 = !DIDerivedType(tag: DW_TAG_member, name: "RESERVED3", scope: !288, file: !219, line: 1205, baseType: !116, size: 16, offset: 112)
!299 = !DIDerivedType(tag: DW_TAG_member, name: "SR", scope: !288, file: !219, line: 1206, baseType: !291, size: 16, offset: 128)
!300 = !DIDerivedType(tag: DW_TAG_member, name: "RESERVED4", scope: !288, file: !219, line: 1207, baseType: !116, size: 16, offset: 144)
!301 = !DIDerivedType(tag: DW_TAG_member, name: "EGR", scope: !288, file: !219, line: 1208, baseType: !291, size: 16, offset: 160)
!302 = !DIDerivedType(tag: DW_TAG_member, name: "RESERVED5", scope: !288, file: !219, line: 1209, baseType: !116, size: 16, offset: 176)
!303 = !DIDerivedType(tag: DW_TAG_member, name: "CCMR1", scope: !288, file: !219, line: 1210, baseType: !291, size: 16, offset: 192)
!304 = !DIDerivedType(tag: DW_TAG_member, name: "RESERVED6", scope: !288, file: !219, line: 1211, baseType: !116, size: 16, offset: 208)
!305 = !DIDerivedType(tag: DW_TAG_member, name: "CCMR2", scope: !288, file: !219, line: 1212, baseType: !291, size: 16, offset: 224)
!306 = !DIDerivedType(tag: DW_TAG_member, name: "RESERVED7", scope: !288, file: !219, line: 1213, baseType: !116, size: 16, offset: 240)
!307 = !DIDerivedType(tag: DW_TAG_member, name: "CCER", scope: !288, file: !219, line: 1214, baseType: !291, size: 16, offset: 256)
!308 = !DIDerivedType(tag: DW_TAG_member, name: "RESERVED8", scope: !288, file: !219, line: 1215, baseType: !116, size: 16, offset: 272)
!309 = !DIDerivedType(tag: DW_TAG_member, name: "CNT", scope: !288, file: !219, line: 1216, baseType: !291, size: 16, offset: 288)
!310 = !DIDerivedType(tag: DW_TAG_member, name: "RESERVED9", scope: !288, file: !219, line: 1217, baseType: !116, size: 16, offset: 304)
!311 = !DIDerivedType(tag: DW_TAG_member, name: "PSC", scope: !288, file: !219, line: 1218, baseType: !291, size: 16, offset: 320)
!312 = !DIDerivedType(tag: DW_TAG_member, name: "RESERVED10", scope: !288, file: !219, line: 1219, baseType: !116, size: 16, offset: 336)
!313 = !DIDerivedType(tag: DW_TAG_member, name: "ARR", scope: !288, file: !219, line: 1220, baseType: !291, size: 16, offset: 352)
!314 = !DIDerivedType(tag: DW_TAG_member, name: "RESERVED11", scope: !288, file: !219, line: 1221, baseType: !116, size: 16, offset: 368)
!315 = !DIDerivedType(tag: DW_TAG_member, name: "RCR", scope: !288, file: !219, line: 1222, baseType: !291, size: 16, offset: 384)
!316 = !DIDerivedType(tag: DW_TAG_member, name: "RESERVED12", scope: !288, file: !219, line: 1223, baseType: !116, size: 16, offset: 400)
!317 = !DIDerivedType(tag: DW_TAG_member, name: "CCR1", scope: !288, file: !219, line: 1224, baseType: !291, size: 16, offset: 416)
!318 = !DIDerivedType(tag: DW_TAG_member, name: "RESERVED13", scope: !288, file: !219, line: 1225, baseType: !116, size: 16, offset: 432)
!319 = !DIDerivedType(tag: DW_TAG_member, name: "CCR2", scope: !288, file: !219, line: 1226, baseType: !291, size: 16, offset: 448)
!320 = !DIDerivedType(tag: DW_TAG_member, name: "RESERVED14", scope: !288, file: !219, line: 1227, baseType: !116, size: 16, offset: 464)
!321 = !DIDerivedType(tag: DW_TAG_member, name: "CCR3", scope: !288, file: !219, line: 1228, baseType: !291, size: 16, offset: 480)
!322 = !DIDerivedType(tag: DW_TAG_member, name: "RESERVED15", scope: !288, file: !219, line: 1229, baseType: !116, size: 16, offset: 496)
!323 = !DIDerivedType(tag: DW_TAG_member, name: "CCR4", scope: !288, file: !219, line: 1230, baseType: !291, size: 16, offset: 512)
!324 = !DIDerivedType(tag: DW_TAG_member, name: "RESERVED16", scope: !288, file: !219, line: 1231, baseType: !116, size: 16, offset: 528)
!325 = !DIDerivedType(tag: DW_TAG_member, name: "BDTR", scope: !288, file: !219, line: 1232, baseType: !291, size: 16, offset: 544)
!326 = !DIDerivedType(tag: DW_TAG_member, name: "RESERVED17", scope: !288, file: !219, line: 1233, baseType: !116, size: 16, offset: 560)
!327 = !DIDerivedType(tag: DW_TAG_member, name: "DCR", scope: !288, file: !219, line: 1234, baseType: !291, size: 16, offset: 576)
!328 = !DIDerivedType(tag: DW_TAG_member, name: "RESERVED18", scope: !288, file: !219, line: 1235, baseType: !116, size: 16, offset: 592)
!329 = !DIDerivedType(tag: DW_TAG_member, name: "DMAR", scope: !288, file: !219, line: 1236, baseType: !291, size: 16, offset: 608)
!330 = !DIDerivedType(tag: DW_TAG_member, name: "RESERVED19", scope: !288, file: !219, line: 1237, baseType: !116, size: 16, offset: 624)
!331 = !{!256}
!332 = !DIFile(filename: "avm_motor.c", directory: "/home/mjshen/RTOSExploration/Avem/libs/module", checksumkind: CSK_MD5, checksum: "ffcf33f092fdb4a913792a749f470553")
!333 = !DIDerivedType(tag: DW_TAG_typedef, name: "avm_module_t", file: !188, line: 4, baseType: !334)
!334 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "avm_module_s", file: !188, line: 19, size: 160, elements: !335)
!335 = !{!336, !337, !338, !339, !340}
!336 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !334, file: !188, line: 20, baseType: !118, size: 16)
!337 = !DIDerivedType(tag: DW_TAG_member, name: "confs", scope: !334, file: !188, line: 21, baseType: !154, size: 32, offset: 32)
!338 = !DIDerivedType(tag: DW_TAG_member, name: "init_module", scope: !334, file: !188, line: 22, baseType: !194, size: 32, offset: 64)
!339 = !DIDerivedType(tag: DW_TAG_member, name: "enable_module", scope: !334, file: !188, line: 23, baseType: !198, size: 32, offset: 96)
!340 = !DIDerivedType(tag: DW_TAG_member, name: "disable_module", scope: !334, file: !188, line: 24, baseType: !198, size: 32, offset: 128)
!341 = !DIGlobalVariableExpression(var: !342, expr: !DIExpression())
!342 = distinct !DIGlobalVariable(name: "avm_mpu_module_st", scope: !343, file: !352, line: 5, type: !394, isLocal: false, isDefinition: true)
!343 = distinct !DICompileUnit(language: DW_LANG_C99, file: !344, producer: "Ubuntu clang version 14.0.6", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !345, globals: !348, splitDebugInlining: false, nameTableKind: None)
!344 = !DIFile(filename: "/home/mjshen/RTOSExploration/Avem/libs/module/avm_mpu6050.c", directory: "/home/mjshen/RTOSExploration/Avem/libs/module", checksumkind: CSK_MD5, checksum: "0a6d3f72b58f848b690f49c93e410d1b")
!345 = !{!243, !11, !7, !346, !347}
!346 = !DIBasicType(name: "short", size: 16, encoding: DW_ATE_signed)
!347 = !DIBasicType(name: "float", size: 32, encoding: DW_ATE_float)
!348 = !{!341, !349, !374, !376, !378, !380, !382, !384, !386, !388, !390, !392}
!349 = !DIGlobalVariableExpression(var: !350, expr: !DIExpression())
!350 = distinct !DIGlobalVariable(name: "g_q0", scope: !351, file: !352, line: 114, type: !347, isLocal: true, isDefinition: true)
!351 = distinct !DISubprogram(name: "IMU_Comput", scope: !352, file: !352, line: 113, type: !353, scopeLine: 113, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !343, retainedNodes: !365)
!352 = !DIFile(filename: "avm_mpu6050.c", directory: "/home/mjshen/RTOSExploration/Avem/libs/module", checksumkind: CSK_MD5, checksum: "0a6d3f72b58f848b690f49c93e410d1b")
!353 = !DISubroutineType(types: !354)
!354 = !{null, !355}
!355 = !DIDerivedType(tag: DW_TAG_typedef, name: "SixAxis", file: !356, line: 62, baseType: !357)
!356 = !DIFile(filename: "avm_mpu6050.h", directory: "/home/mjshen/RTOSExploration/Avem/libs/module", checksumkind: CSK_MD5, checksum: "7ca90c792aa70499945426f5120627de")
!357 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !356, line: 55, size: 192, elements: !358)
!358 = !{!359, !360, !361, !362, !363, !364}
!359 = !DIDerivedType(tag: DW_TAG_member, name: "gX", scope: !357, file: !356, line: 56, baseType: !347, size: 32)
!360 = !DIDerivedType(tag: DW_TAG_member, name: "gY", scope: !357, file: !356, line: 57, baseType: !347, size: 32, offset: 32)
!361 = !DIDerivedType(tag: DW_TAG_member, name: "gZ", scope: !357, file: !356, line: 58, baseType: !347, size: 32, offset: 64)
!362 = !DIDerivedType(tag: DW_TAG_member, name: "aX", scope: !357, file: !356, line: 59, baseType: !347, size: 32, offset: 96)
!363 = !DIDerivedType(tag: DW_TAG_member, name: "aY", scope: !357, file: !356, line: 60, baseType: !347, size: 32, offset: 128)
!364 = !DIDerivedType(tag: DW_TAG_member, name: "aZ", scope: !357, file: !356, line: 61, baseType: !347, size: 32, offset: 160)
!365 = !{!366, !367, !368, !369, !370, !371, !372, !373}
!366 = !DILocalVariable(name: "cache", arg: 1, scope: !351, file: !352, line: 113, type: !355)
!367 = !DILocalVariable(name: "norm", scope: !351, file: !352, line: 118, type: !347)
!368 = !DILocalVariable(name: "vx", scope: !351, file: !352, line: 119, type: !347)
!369 = !DILocalVariable(name: "vy", scope: !351, file: !352, line: 119, type: !347)
!370 = !DILocalVariable(name: "vz", scope: !351, file: !352, line: 119, type: !347)
!371 = !DILocalVariable(name: "ex", scope: !351, file: !352, line: 120, type: !347)
!372 = !DILocalVariable(name: "ey", scope: !351, file: !352, line: 120, type: !347)
!373 = !DILocalVariable(name: "ez", scope: !351, file: !352, line: 120, type: !347)
!374 = !DIGlobalVariableExpression(var: !375, expr: !DIExpression())
!375 = distinct !DIGlobalVariable(name: "g_q1", scope: !351, file: !352, line: 114, type: !347, isLocal: true, isDefinition: true)
!376 = !DIGlobalVariableExpression(var: !377, expr: !DIExpression())
!377 = distinct !DIGlobalVariable(name: "g_q2", scope: !351, file: !352, line: 114, type: !347, isLocal: true, isDefinition: true)
!378 = !DIGlobalVariableExpression(var: !379, expr: !DIExpression())
!379 = distinct !DIGlobalVariable(name: "g_q3", scope: !351, file: !352, line: 114, type: !347, isLocal: true, isDefinition: true)
!380 = !DIGlobalVariableExpression(var: !381, expr: !DIExpression())
!381 = distinct !DIGlobalVariable(name: "g_exInt", scope: !351, file: !352, line: 115, type: !347, isLocal: true, isDefinition: true)
!382 = !DIGlobalVariableExpression(var: !383, expr: !DIExpression())
!383 = distinct !DIGlobalVariable(name: "g_eyInt", scope: !351, file: !352, line: 115, type: !347, isLocal: true, isDefinition: true)
!384 = !DIGlobalVariableExpression(var: !385, expr: !DIExpression())
!385 = distinct !DIGlobalVariable(name: "g_ezInt", scope: !351, file: !352, line: 115, type: !347, isLocal: true, isDefinition: true)
!386 = !DIGlobalVariableExpression(var: !387, expr: !DIExpression())
!387 = distinct !DIGlobalVariable(name: "g_Yaw", scope: !343, file: !352, line: 110, type: !347, isLocal: false, isDefinition: true)
!388 = !DIGlobalVariableExpression(var: !389, expr: !DIExpression())
!389 = distinct !DIGlobalVariable(name: "g_Pitch", scope: !343, file: !352, line: 110, type: !347, isLocal: false, isDefinition: true)
!390 = !DIGlobalVariableExpression(var: !391, expr: !DIExpression())
!391 = distinct !DIGlobalVariable(name: "g_Roll", scope: !343, file: !352, line: 110, type: !347, isLocal: false, isDefinition: true)
!392 = !DIGlobalVariableExpression(var: !393, expr: !DIExpression())
!393 = distinct !DIGlobalVariable(name: "avm_euler", scope: !343, file: !352, line: 111, type: !355, isLocal: false, isDefinition: true)
!394 = !DIDerivedType(tag: DW_TAG_typedef, name: "avm_module_t", file: !188, line: 4, baseType: !395)
!395 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "avm_module_s", file: !188, line: 19, size: 160, elements: !396)
!396 = !{!397, !398, !399, !400, !401}
!397 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !395, file: !188, line: 20, baseType: !118, size: 16)
!398 = !DIDerivedType(tag: DW_TAG_member, name: "confs", scope: !395, file: !188, line: 21, baseType: !154, size: 32, offset: 32)
!399 = !DIDerivedType(tag: DW_TAG_member, name: "init_module", scope: !395, file: !188, line: 22, baseType: !194, size: 32, offset: 64)
!400 = !DIDerivedType(tag: DW_TAG_member, name: "enable_module", scope: !395, file: !188, line: 23, baseType: !198, size: 32, offset: 96)
!401 = !DIDerivedType(tag: DW_TAG_member, name: "disable_module", scope: !395, file: !188, line: 24, baseType: !198, size: 32, offset: 128)
!402 = !DIGlobalVariableExpression(var: !403, expr: !DIExpression())
!403 = distinct !DIGlobalVariable(name: "avm_uart_conf", scope: !404, file: !583, line: 4, type: !592, isLocal: true, isDefinition: true)
!404 = distinct !DICompileUnit(language: DW_LANG_C99, file: !405, producer: "Ubuntu clang version 14.0.6", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !406, retainedTypes: !478, globals: !580, splitDebugInlining: false, nameTableKind: None)
!405 = !DIFile(filename: "/home/mjshen/RTOSExploration/Avem/libs/module/avm_uart.c", directory: "/home/mjshen/RTOSExploration/Avem/libs/module", checksumkind: CSK_MD5, checksum: "c79a9a9311bd76fbd7a1ba3c951eeb70")
!406 = !{!407}
!407 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "IRQn", file: !219, line: 177, baseType: !408, size: 32, elements: !409)
!408 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!409 = !{!410, !411, !412, !413, !414, !415, !416, !417, !418, !419, !420, !421, !422, !423, !424, !425, !426, !427, !428, !429, !430, !431, !432, !433, !434, !435, !436, !437, !438, !439, !440, !441, !442, !443, !444, !445, !446, !447, !448, !449, !450, !451, !452, !453, !454, !455, !456, !457, !458, !459, !460, !461, !462, !463, !464, !465, !466, !467, !468, !469, !470, !471, !472, !473, !474, !475, !476, !477}
!410 = !DIEnumerator(name: "NonMaskableInt_IRQn", value: -14)
!411 = !DIEnumerator(name: "MemoryManagement_IRQn", value: -12)
!412 = !DIEnumerator(name: "BusFault_IRQn", value: -11)
!413 = !DIEnumerator(name: "UsageFault_IRQn", value: -10)
!414 = !DIEnumerator(name: "SVCall_IRQn", value: -5)
!415 = !DIEnumerator(name: "DebugMonitor_IRQn", value: -4)
!416 = !DIEnumerator(name: "PendSV_IRQn", value: -2)
!417 = !DIEnumerator(name: "SysTick_IRQn", value: -1)
!418 = !DIEnumerator(name: "WWDG_IRQn", value: 0)
!419 = !DIEnumerator(name: "PVD_IRQn", value: 1)
!420 = !DIEnumerator(name: "TAMPER_IRQn", value: 2)
!421 = !DIEnumerator(name: "RTC_IRQn", value: 3)
!422 = !DIEnumerator(name: "FLASH_IRQn", value: 4)
!423 = !DIEnumerator(name: "RCC_IRQn", value: 5)
!424 = !DIEnumerator(name: "EXTI0_IRQn", value: 6)
!425 = !DIEnumerator(name: "EXTI1_IRQn", value: 7)
!426 = !DIEnumerator(name: "EXTI2_IRQn", value: 8)
!427 = !DIEnumerator(name: "EXTI3_IRQn", value: 9)
!428 = !DIEnumerator(name: "EXTI4_IRQn", value: 10)
!429 = !DIEnumerator(name: "DMA1_Channel1_IRQn", value: 11)
!430 = !DIEnumerator(name: "DMA1_Channel2_IRQn", value: 12)
!431 = !DIEnumerator(name: "DMA1_Channel3_IRQn", value: 13)
!432 = !DIEnumerator(name: "DMA1_Channel4_IRQn", value: 14)
!433 = !DIEnumerator(name: "DMA1_Channel5_IRQn", value: 15)
!434 = !DIEnumerator(name: "DMA1_Channel6_IRQn", value: 16)
!435 = !DIEnumerator(name: "DMA1_Channel7_IRQn", value: 17)
!436 = !DIEnumerator(name: "ADC1_2_IRQn", value: 18)
!437 = !DIEnumerator(name: "USB_HP_CAN1_TX_IRQn", value: 19)
!438 = !DIEnumerator(name: "USB_LP_CAN1_RX0_IRQn", value: 20)
!439 = !DIEnumerator(name: "CAN1_RX1_IRQn", value: 21)
!440 = !DIEnumerator(name: "CAN1_SCE_IRQn", value: 22)
!441 = !DIEnumerator(name: "EXTI9_5_IRQn", value: 23)
!442 = !DIEnumerator(name: "TIM1_BRK_IRQn", value: 24)
!443 = !DIEnumerator(name: "TIM1_UP_IRQn", value: 25)
!444 = !DIEnumerator(name: "TIM1_TRG_COM_IRQn", value: 26)
!445 = !DIEnumerator(name: "TIM1_CC_IRQn", value: 27)
!446 = !DIEnumerator(name: "TIM2_IRQn", value: 28)
!447 = !DIEnumerator(name: "TIM3_IRQn", value: 29)
!448 = !DIEnumerator(name: "TIM4_IRQn", value: 30)
!449 = !DIEnumerator(name: "I2C1_EV_IRQn", value: 31)
!450 = !DIEnumerator(name: "I2C1_ER_IRQn", value: 32)
!451 = !DIEnumerator(name: "I2C2_EV_IRQn", value: 33)
!452 = !DIEnumerator(name: "I2C2_ER_IRQn", value: 34)
!453 = !DIEnumerator(name: "SPI1_IRQn", value: 35)
!454 = !DIEnumerator(name: "SPI2_IRQn", value: 36)
!455 = !DIEnumerator(name: "USART1_IRQn", value: 37)
!456 = !DIEnumerator(name: "USART2_IRQn", value: 38)
!457 = !DIEnumerator(name: "USART3_IRQn", value: 39)
!458 = !DIEnumerator(name: "EXTI15_10_IRQn", value: 40)
!459 = !DIEnumerator(name: "RTCAlarm_IRQn", value: 41)
!460 = !DIEnumerator(name: "USBWakeUp_IRQn", value: 42)
!461 = !DIEnumerator(name: "TIM8_BRK_IRQn", value: 43)
!462 = !DIEnumerator(name: "TIM8_UP_IRQn", value: 44)
!463 = !DIEnumerator(name: "TIM8_TRG_COM_IRQn", value: 45)
!464 = !DIEnumerator(name: "TIM8_CC_IRQn", value: 46)
!465 = !DIEnumerator(name: "ADC3_IRQn", value: 47)
!466 = !DIEnumerator(name: "FSMC_IRQn", value: 48)
!467 = !DIEnumerator(name: "SDIO_IRQn", value: 49)
!468 = !DIEnumerator(name: "TIM5_IRQn", value: 50)
!469 = !DIEnumerator(name: "SPI3_IRQn", value: 51)
!470 = !DIEnumerator(name: "UART4_IRQn", value: 52)
!471 = !DIEnumerator(name: "UART5_IRQn", value: 53)
!472 = !DIEnumerator(name: "TIM6_IRQn", value: 54)
!473 = !DIEnumerator(name: "TIM7_IRQn", value: 55)
!474 = !DIEnumerator(name: "DMA2_Channel1_IRQn", value: 56)
!475 = !DIEnumerator(name: "DMA2_Channel2_IRQn", value: 57)
!476 = !DIEnumerator(name: "DMA2_Channel3_IRQn", value: 58)
!477 = !DIEnumerator(name: "DMA2_Channel4_5_IRQn", value: 59)
!478 = !{!347, !7, !479, !493, !504, !116, !522, !30, !11, !154, !523, !555}
!479 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !480, size: 32)
!480 = !DIDerivedType(tag: DW_TAG_typedef, name: "RCC_TypeDef", file: !219, line: 1108, baseType: !481)
!481 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !219, line: 1086, size: 320, elements: !482)
!482 = !{!483, !484, !485, !486, !487, !488, !489, !490, !491, !492}
!483 = !DIDerivedType(tag: DW_TAG_member, name: "CR", scope: !481, file: !219, line: 1088, baseType: !19, size: 32)
!484 = !DIDerivedType(tag: DW_TAG_member, name: "CFGR", scope: !481, file: !219, line: 1089, baseType: !19, size: 32, offset: 32)
!485 = !DIDerivedType(tag: DW_TAG_member, name: "CIR", scope: !481, file: !219, line: 1090, baseType: !19, size: 32, offset: 64)
!486 = !DIDerivedType(tag: DW_TAG_member, name: "APB2RSTR", scope: !481, file: !219, line: 1091, baseType: !19, size: 32, offset: 96)
!487 = !DIDerivedType(tag: DW_TAG_member, name: "APB1RSTR", scope: !481, file: !219, line: 1092, baseType: !19, size: 32, offset: 128)
!488 = !DIDerivedType(tag: DW_TAG_member, name: "AHBENR", scope: !481, file: !219, line: 1093, baseType: !19, size: 32, offset: 160)
!489 = !DIDerivedType(tag: DW_TAG_member, name: "APB2ENR", scope: !481, file: !219, line: 1094, baseType: !19, size: 32, offset: 192)
!490 = !DIDerivedType(tag: DW_TAG_member, name: "APB1ENR", scope: !481, file: !219, line: 1095, baseType: !19, size: 32, offset: 224)
!491 = !DIDerivedType(tag: DW_TAG_member, name: "BDCR", scope: !481, file: !219, line: 1096, baseType: !19, size: 32, offset: 256)
!492 = !DIDerivedType(tag: DW_TAG_member, name: "CSR", scope: !481, file: !219, line: 1097, baseType: !19, size: 32, offset: 288)
!493 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !494, size: 32)
!494 = !DIDerivedType(tag: DW_TAG_typedef, name: "GPIO_TypeDef", file: !219, line: 1020, baseType: !495)
!495 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !219, line: 1011, size: 224, elements: !496)
!496 = !{!497, !498, !499, !500, !501, !502, !503}
!497 = !DIDerivedType(tag: DW_TAG_member, name: "CRL", scope: !495, file: !219, line: 1013, baseType: !19, size: 32)
!498 = !DIDerivedType(tag: DW_TAG_member, name: "CRH", scope: !495, file: !219, line: 1014, baseType: !19, size: 32, offset: 32)
!499 = !DIDerivedType(tag: DW_TAG_member, name: "IDR", scope: !495, file: !219, line: 1015, baseType: !19, size: 32, offset: 64)
!500 = !DIDerivedType(tag: DW_TAG_member, name: "ODR", scope: !495, file: !219, line: 1016, baseType: !19, size: 32, offset: 96)
!501 = !DIDerivedType(tag: DW_TAG_member, name: "BSRR", scope: !495, file: !219, line: 1017, baseType: !19, size: 32, offset: 128)
!502 = !DIDerivedType(tag: DW_TAG_member, name: "BRR", scope: !495, file: !219, line: 1018, baseType: !19, size: 32, offset: 160)
!503 = !DIDerivedType(tag: DW_TAG_member, name: "LCKR", scope: !495, file: !219, line: 1019, baseType: !19, size: 32, offset: 192)
!504 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !505, size: 32)
!505 = !DIDerivedType(tag: DW_TAG_typedef, name: "USART_TypeDef", file: !219, line: 1260, baseType: !506)
!506 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !219, line: 1244, size: 224, elements: !507)
!507 = !{!508, !509, !510, !511, !512, !513, !514, !515, !516, !517, !518, !519, !520, !521}
!508 = !DIDerivedType(tag: DW_TAG_member, name: "SR", scope: !506, file: !219, line: 1246, baseType: !291, size: 16)
!509 = !DIDerivedType(tag: DW_TAG_member, name: "RESERVED0", scope: !506, file: !219, line: 1247, baseType: !116, size: 16, offset: 16)
!510 = !DIDerivedType(tag: DW_TAG_member, name: "DR", scope: !506, file: !219, line: 1248, baseType: !291, size: 16, offset: 32)
!511 = !DIDerivedType(tag: DW_TAG_member, name: "RESERVED1", scope: !506, file: !219, line: 1249, baseType: !116, size: 16, offset: 48)
!512 = !DIDerivedType(tag: DW_TAG_member, name: "BRR", scope: !506, file: !219, line: 1250, baseType: !291, size: 16, offset: 64)
!513 = !DIDerivedType(tag: DW_TAG_member, name: "RESERVED2", scope: !506, file: !219, line: 1251, baseType: !116, size: 16, offset: 80)
!514 = !DIDerivedType(tag: DW_TAG_member, name: "CR1", scope: !506, file: !219, line: 1252, baseType: !291, size: 16, offset: 96)
!515 = !DIDerivedType(tag: DW_TAG_member, name: "RESERVED3", scope: !506, file: !219, line: 1253, baseType: !116, size: 16, offset: 112)
!516 = !DIDerivedType(tag: DW_TAG_member, name: "CR2", scope: !506, file: !219, line: 1254, baseType: !291, size: 16, offset: 128)
!517 = !DIDerivedType(tag: DW_TAG_member, name: "RESERVED4", scope: !506, file: !219, line: 1255, baseType: !116, size: 16, offset: 144)
!518 = !DIDerivedType(tag: DW_TAG_member, name: "CR3", scope: !506, file: !219, line: 1256, baseType: !291, size: 16, offset: 160)
!519 = !DIDerivedType(tag: DW_TAG_member, name: "RESERVED5", scope: !506, file: !219, line: 1257, baseType: !116, size: 16, offset: 176)
!520 = !DIDerivedType(tag: DW_TAG_member, name: "GTPR", scope: !506, file: !219, line: 1258, baseType: !291, size: 16, offset: 192)
!521 = !DIDerivedType(tag: DW_TAG_member, name: "RESERVED6", scope: !506, file: !219, line: 1259, baseType: !116, size: 16, offset: 208)
!522 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_unsigned_char)
!523 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !524, size: 32)
!524 = !DIDerivedType(tag: DW_TAG_typedef, name: "NVIC_Type", file: !147, line: 296, baseType: !525)
!525 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !147, line: 281, size: 28704, elements: !526)
!526 = !{!527, !531, !535, !536, !537, !538, !539, !540, !541, !542, !546, !550, !554}
!527 = !DIDerivedType(tag: DW_TAG_member, name: "ISER", scope: !525, file: !147, line: 283, baseType: !528, size: 256)
!528 = !DICompositeType(tag: DW_TAG_array_type, baseType: !19, size: 256, elements: !529)
!529 = !{!530}
!530 = !DISubrange(count: 8)
!531 = !DIDerivedType(tag: DW_TAG_member, name: "RESERVED0", scope: !525, file: !147, line: 284, baseType: !532, size: 768, offset: 256)
!532 = !DICompositeType(tag: DW_TAG_array_type, baseType: !7, size: 768, elements: !533)
!533 = !{!534}
!534 = !DISubrange(count: 24)
!535 = !DIDerivedType(tag: DW_TAG_member, name: "ICER", scope: !525, file: !147, line: 285, baseType: !528, size: 256, offset: 1024)
!536 = !DIDerivedType(tag: DW_TAG_member, name: "RSERVED1", scope: !525, file: !147, line: 286, baseType: !532, size: 768, offset: 1280)
!537 = !DIDerivedType(tag: DW_TAG_member, name: "ISPR", scope: !525, file: !147, line: 287, baseType: !528, size: 256, offset: 2048)
!538 = !DIDerivedType(tag: DW_TAG_member, name: "RESERVED2", scope: !525, file: !147, line: 288, baseType: !532, size: 768, offset: 2304)
!539 = !DIDerivedType(tag: DW_TAG_member, name: "ICPR", scope: !525, file: !147, line: 289, baseType: !528, size: 256, offset: 3072)
!540 = !DIDerivedType(tag: DW_TAG_member, name: "RESERVED3", scope: !525, file: !147, line: 290, baseType: !532, size: 768, offset: 3328)
!541 = !DIDerivedType(tag: DW_TAG_member, name: "IABR", scope: !525, file: !147, line: 291, baseType: !528, size: 256, offset: 4096)
!542 = !DIDerivedType(tag: DW_TAG_member, name: "RESERVED4", scope: !525, file: !147, line: 292, baseType: !543, size: 1792, offset: 4352)
!543 = !DICompositeType(tag: DW_TAG_array_type, baseType: !7, size: 1792, elements: !544)
!544 = !{!545}
!545 = !DISubrange(count: 56)
!546 = !DIDerivedType(tag: DW_TAG_member, name: "IP", scope: !525, file: !147, line: 293, baseType: !547, size: 1920, offset: 6144)
!547 = !DICompositeType(tag: DW_TAG_array_type, baseType: !27, size: 1920, elements: !548)
!548 = !{!549}
!549 = !DISubrange(count: 240)
!550 = !DIDerivedType(tag: DW_TAG_member, name: "RESERVED5", scope: !525, file: !147, line: 294, baseType: !551, size: 20608, offset: 8064)
!551 = !DICompositeType(tag: DW_TAG_array_type, baseType: !7, size: 20608, elements: !552)
!552 = !{!553}
!553 = !DISubrange(count: 644)
!554 = !DIDerivedType(tag: DW_TAG_member, name: "STIR", scope: !525, file: !147, line: 295, baseType: !19, size: 32, offset: 28672)
!555 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !556, size: 32)
!556 = !DIDerivedType(tag: DW_TAG_typedef, name: "SCB_Type", file: !147, line: 336, baseType: !557)
!557 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !147, line: 313, size: 1120, elements: !558)
!558 = !{!559, !560, !561, !562, !563, !564, !565, !566, !567, !568, !569, !570, !571, !572, !573, !574, !575, !576, !577, !578, !579}
!559 = !DIDerivedType(tag: DW_TAG_member, name: "CPUID", scope: !557, file: !147, line: 315, baseType: !18, size: 32)
!560 = !DIDerivedType(tag: DW_TAG_member, name: "ICSR", scope: !557, file: !147, line: 316, baseType: !19, size: 32, offset: 32)
!561 = !DIDerivedType(tag: DW_TAG_member, name: "VTOR", scope: !557, file: !147, line: 317, baseType: !19, size: 32, offset: 64)
!562 = !DIDerivedType(tag: DW_TAG_member, name: "AIRCR", scope: !557, file: !147, line: 318, baseType: !19, size: 32, offset: 96)
!563 = !DIDerivedType(tag: DW_TAG_member, name: "SCR", scope: !557, file: !147, line: 319, baseType: !19, size: 32, offset: 128)
!564 = !DIDerivedType(tag: DW_TAG_member, name: "CCR", scope: !557, file: !147, line: 320, baseType: !19, size: 32, offset: 160)
!565 = !DIDerivedType(tag: DW_TAG_member, name: "SHP", scope: !557, file: !147, line: 321, baseType: !26, size: 96, offset: 192)
!566 = !DIDerivedType(tag: DW_TAG_member, name: "SHCSR", scope: !557, file: !147, line: 322, baseType: !19, size: 32, offset: 288)
!567 = !DIDerivedType(tag: DW_TAG_member, name: "CFSR", scope: !557, file: !147, line: 323, baseType: !19, size: 32, offset: 320)
!568 = !DIDerivedType(tag: DW_TAG_member, name: "HFSR", scope: !557, file: !147, line: 324, baseType: !19, size: 32, offset: 352)
!569 = !DIDerivedType(tag: DW_TAG_member, name: "DFSR", scope: !557, file: !147, line: 325, baseType: !19, size: 32, offset: 384)
!570 = !DIDerivedType(tag: DW_TAG_member, name: "MMFAR", scope: !557, file: !147, line: 326, baseType: !19, size: 32, offset: 416)
!571 = !DIDerivedType(tag: DW_TAG_member, name: "BFAR", scope: !557, file: !147, line: 327, baseType: !19, size: 32, offset: 448)
!572 = !DIDerivedType(tag: DW_TAG_member, name: "AFSR", scope: !557, file: !147, line: 328, baseType: !19, size: 32, offset: 480)
!573 = !DIDerivedType(tag: DW_TAG_member, name: "PFR", scope: !557, file: !147, line: 329, baseType: !41, size: 64, offset: 512)
!574 = !DIDerivedType(tag: DW_TAG_member, name: "DFR", scope: !557, file: !147, line: 330, baseType: !18, size: 32, offset: 576)
!575 = !DIDerivedType(tag: DW_TAG_member, name: "ADR", scope: !557, file: !147, line: 331, baseType: !18, size: 32, offset: 608)
!576 = !DIDerivedType(tag: DW_TAG_member, name: "MMFR", scope: !557, file: !147, line: 332, baseType: !47, size: 128, offset: 640)
!577 = !DIDerivedType(tag: DW_TAG_member, name: "ISAR", scope: !557, file: !147, line: 333, baseType: !51, size: 160, offset: 768)
!578 = !DIDerivedType(tag: DW_TAG_member, name: "RESERVED0", scope: !557, file: !147, line: 334, baseType: !55, size: 160, offset: 928)
!579 = !DIDerivedType(tag: DW_TAG_member, name: "CPACR", scope: !557, file: !147, line: 335, baseType: !19, size: 32, offset: 1088)
!580 = !{!581, !402}
!581 = !DIGlobalVariableExpression(var: !582, expr: !DIExpression())
!582 = distinct !DIGlobalVariable(name: "avm_uart_module_st", scope: !404, file: !583, line: 6, type: !584, isLocal: false, isDefinition: true)
!583 = !DIFile(filename: "avm_uart.c", directory: "/home/mjshen/RTOSExploration/Avem/libs/module", checksumkind: CSK_MD5, checksum: "c79a9a9311bd76fbd7a1ba3c951eeb70")
!584 = !DIDerivedType(tag: DW_TAG_typedef, name: "avm_module_t", file: !188, line: 4, baseType: !585)
!585 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "avm_module_s", file: !188, line: 19, size: 160, elements: !586)
!586 = !{!587, !588, !589, !590, !591}
!587 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !585, file: !188, line: 20, baseType: !118, size: 16)
!588 = !DIDerivedType(tag: DW_TAG_member, name: "confs", scope: !585, file: !188, line: 21, baseType: !154, size: 32, offset: 32)
!589 = !DIDerivedType(tag: DW_TAG_member, name: "init_module", scope: !585, file: !188, line: 22, baseType: !194, size: 32, offset: 64)
!590 = !DIDerivedType(tag: DW_TAG_member, name: "enable_module", scope: !585, file: !188, line: 23, baseType: !198, size: 32, offset: 96)
!591 = !DIDerivedType(tag: DW_TAG_member, name: "disable_module", scope: !585, file: !188, line: 24, baseType: !198, size: 32, offset: 128)
!592 = !DICompositeType(tag: DW_TAG_array_type, baseType: !11, size: 64, elements: !42)
!593 = !DIGlobalVariableExpression(var: !594, expr: !DIExpression())
!594 = distinct !DIGlobalVariable(name: "avm_pid", scope: !595, file: !599, line: 15, type: !600, isLocal: false, isDefinition: true)
!595 = distinct !DICompileUnit(language: DW_LANG_C99, file: !596, producer: "Ubuntu clang version 14.0.6", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !597, globals: !598, splitDebugInlining: false, nameTableKind: None)
!596 = !DIFile(filename: "/home/mjshen/RTOSExploration/Avem/libs/module/avm_pid.c", directory: "/home/mjshen/RTOSExploration/Avem/libs/module", checksumkind: CSK_MD5, checksum: "83391c05fe41722cde1f18573cbb36a9")
!597 = !{!346, !118}
!598 = !{!593}
!599 = !DIFile(filename: "avm_pid.c", directory: "/home/mjshen/RTOSExploration/Avem/libs/module", checksumkind: CSK_MD5, checksum: "83391c05fe41722cde1f18573cbb36a9")
!600 = !DIDerivedType(tag: DW_TAG_typedef, name: "pid_st", file: !601, line: 30, baseType: !602)
!601 = !DIFile(filename: "avm_pid.h", directory: "/home/mjshen/RTOSExploration/Avem/libs/module", checksumkind: CSK_MD5, checksum: "06f5805b7c1f68d8b5a50a4823cf3e76")
!602 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !601, line: 18, size: 352, elements: !603)
!603 = !{!604, !605, !606, !608, !609, !610, !611, !612, !613, !614, !616}
!604 = !DIDerivedType(tag: DW_TAG_member, name: "InnerLast", scope: !602, file: !601, line: 19, baseType: !347, size: 32)
!605 = !DIDerivedType(tag: DW_TAG_member, name: "OutterLast", scope: !602, file: !601, line: 20, baseType: !347, size: 32, offset: 32)
!606 = !DIDerivedType(tag: DW_TAG_member, name: "Feedback", scope: !602, file: !601, line: 21, baseType: !607, size: 32, offset: 64)
!607 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !347, size: 32)
!608 = !DIDerivedType(tag: DW_TAG_member, name: "Gyro", scope: !602, file: !601, line: 22, baseType: !607, size: 32, offset: 96)
!609 = !DIDerivedType(tag: DW_TAG_member, name: "Error", scope: !602, file: !601, line: 23, baseType: !347, size: 32, offset: 128)
!610 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !602, file: !601, line: 24, baseType: !347, size: 32, offset: 160)
!611 = !DIDerivedType(tag: DW_TAG_member, name: "i", scope: !602, file: !601, line: 25, baseType: !347, size: 32, offset: 192)
!612 = !DIDerivedType(tag: DW_TAG_member, name: "d", scope: !602, file: !601, line: 26, baseType: !347, size: 32, offset: 224)
!613 = !DIDerivedType(tag: DW_TAG_member, name: "output", scope: !602, file: !601, line: 27, baseType: !346, size: 16, offset: 256)
!614 = !DIDerivedType(tag: DW_TAG_member, name: "Channel1", scope: !602, file: !601, line: 28, baseType: !615, size: 32, offset: 288)
!615 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !291, size: 32)
!616 = !DIDerivedType(tag: DW_TAG_member, name: "Channel2", scope: !602, file: !601, line: 29, baseType: !615, size: 32, offset: 320)
!617 = distinct !DICompileUnit(language: DW_LANG_C99, file: !618, producer: "Ubuntu clang version 14.0.6", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !619, splitDebugInlining: false, nameTableKind: None)
!618 = !DIFile(filename: "main.c", directory: "/home/mjshen/RTOSExploration/Avem/src", checksumkind: CSK_MD5, checksum: "5039076196fb027f1101e9bfbb081b90")
!619 = !{!155}
!620 = !{!"Ubuntu clang version 14.0.6"}
!621 = !{i32 7, !"Dwarf Version", i32 5}
!622 = !{i32 2, !"Debug Info Version", i32 3}
!623 = !{i32 1, !"wchar_size", i32 4}
!624 = !{i32 1, !"min_enum_size", i32 4}
!625 = !{i32 1, !"branch-target-enforcement", i32 0}
!626 = !{i32 1, !"sign-return-address", i32 0}
!627 = !{i32 1, !"sign-return-address-all", i32 0}
!628 = !{i32 1, !"sign-return-address-with-bkey", i32 0}
!629 = !{i32 7, !"frame-pointer", i32 2}
!630 = distinct !DISubprogram(name: "Reset_Handler", scope: !3, file: !3, line: 242, type: !61, scopeLine: 242, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !631)
!631 = !{}
!632 = !DILocation(line: 243, column: 2, scope: !630)
!633 = !DILocation(line: 245, column: 12, scope: !630)
!634 = !{!635, !636, i64 8}
!635 = !{!"", !636, i64 0, !636, i64 4, !636, i64 8, !636, i64 12, !636, i64 16, !636, i64 20, !637, i64 24, !636, i64 36, !636, i64 40, !636, i64 44, !636, i64 48, !636, i64 52, !636, i64 56, !636, i64 60, !637, i64 64, !636, i64 72, !636, i64 76, !637, i64 80, !637, i64 96, !637, i64 116, !636, i64 136}
!636 = !{!"int", !637, i64 0}
!637 = !{!"omnipotent char", !638, i64 0}
!638 = !{!"Simple C/C++ TBAA"}
!639 = !DILocation(line: 246, column: 2, scope: !630)
!640 = !DILocation(line: 247, column: 2, scope: !630)
!641 = !DILocation(line: 248, column: 2, scope: !630)
!642 = distinct !{!642, !641, !643}
!643 = !DILocation(line: 248, column: 12, scope: !630)
!644 = distinct !DISubprogram(name: "Default_Handler", scope: !3, file: !3, line: 320, type: !61, scopeLine: 321, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !631)
!645 = !DILocation(line: 322, column: 1, scope: !644)
!646 = distinct !{!646, !645, !647}
!647 = !DILocation(line: 322, column: 12, scope: !644)
!648 = distinct !DISubprogram(name: "__Init_Data", scope: !3, file: !3, line: 229, type: !61, scopeLine: 229, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !649)
!649 = !{!650, !652}
!650 = !DILocalVariable(name: "src", scope: !648, file: !3, line: 230, type: !651)
!651 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !245, size: 32)
!652 = !DILocalVariable(name: "dst", scope: !648, file: !3, line: 230, type: !651)
!653 = !DILocation(line: 0, scope: !648)
!654 = !DILocation(line: 234, column: 6, scope: !648)
!655 = !DILocation(line: 235, column: 3, scope: !656)
!656 = distinct !DILexicalBlock(scope: !648, file: !3, line: 234, column: 6)
!657 = !DILocation(line: 236, column: 13, scope: !656)
!658 = !{!659, !659, i64 0}
!659 = !{!"long", !637, i64 0}
!660 = !DILocation(line: 239, column: 2, scope: !648)
!661 = !DILocation(line: 240, column: 12, scope: !648)
!662 = !DILocation(line: 241, column: 1, scope: !648)
!663 = distinct !DISubprogram(name: "main", scope: !618, file: !618, line: 3, type: !664, scopeLine: 3, flags: DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !617, retainedNodes: !631)
!664 = !DISubroutineType(types: !665)
!665 = !{!408}
!666 = !DILocation(line: 14, column: 21, scope: !663)
!667 = !{!668, !670, i64 8}
!668 = !{!"avm_module_s", !669, i64 0, !670, i64 4, !670, i64 8, !670, i64 12, !670, i64 16}
!669 = !{!"short", !637, i64 0}
!670 = !{!"any pointer", !637, i64 0}
!671 = !DILocation(line: 14, column: 2, scope: !663)
!672 = !DILocation(line: 18, column: 2, scope: !663)
!673 = distinct !{!673, !672, !674}
!674 = !DILocation(line: 19, column: 2, scope: !663)
!675 = distinct !DISubprogram(name: "SystemInit", scope: !135, file: !135, line: 218, type: !61, scopeLine: 219, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !67, retainedNodes: !631)
!676 = !DILocation(line: 222, column: 11, scope: !675)
!677 = !{!678, !636, i64 0}
!678 = !{!"", !636, i64 0, !636, i64 4, !636, i64 8, !636, i64 12, !636, i64 16, !636, i64 20, !636, i64 24, !636, i64 28, !636, i64 32, !636, i64 36}
!679 = !DILocation(line: 226, column: 13, scope: !675)
!680 = !{!678, !636, i64 4}
!681 = !DILocation(line: 232, column: 11, scope: !675)
!682 = !DILocation(line: 235, column: 11, scope: !675)
!683 = !DILocation(line: 238, column: 13, scope: !675)
!684 = !DILocation(line: 257, column: 12, scope: !675)
!685 = !{!678, !636, i64 8}
!686 = !DILocation(line: 268, column: 3, scope: !675)
!687 = !DILocation(line: 273, column: 13, scope: !675)
!688 = !DILocation(line: 275, column: 1, scope: !675)
!689 = distinct !DISubprogram(name: "SetSysClock", scope: !135, file: !135, line: 425, type: !61, scopeLine: 426, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !67, retainedNodes: !631)
!690 = !DILocation(line: 438, column: 3, scope: !689)
!691 = !DILocation(line: 443, column: 1, scope: !689)
!692 = distinct !DISubprogram(name: "SetSysClockTo72", scope: !135, file: !135, line: 993, type: !61, scopeLine: 994, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !67, retainedNodes: !693)
!693 = !{!694, !695}
!694 = !DILocalVariable(name: "StartUpCounter", scope: !692, file: !135, line: 995, type: !19)
!695 = !DILocalVariable(name: "HSEStatus", scope: !692, file: !135, line: 995, type: !19)
!696 = !DILocation(line: 995, column: 3, scope: !692)
!697 = !DILocation(line: 995, column: 17, scope: !692)
!698 = !{!636, !636, i64 0}
!699 = !DILocation(line: 995, column: 37, scope: !692)
!700 = !DILocation(line: 999, column: 11, scope: !692)
!701 = !DILocation(line: 1002, column: 3, scope: !692)
!702 = !DILocation(line: 1004, column: 22, scope: !703)
!703 = distinct !DILexicalBlock(scope: !692, file: !135, line: 1003, column: 3)
!704 = !DILocation(line: 1004, column: 25, scope: !703)
!705 = !DILocation(line: 1004, column: 15, scope: !703)
!706 = !DILocation(line: 1005, column: 19, scope: !703)
!707 = !DILocation(line: 1006, column: 12, scope: !692)
!708 = !DILocation(line: 1006, column: 22, scope: !692)
!709 = !DILocation(line: 1006, column: 28, scope: !692)
!710 = !DILocation(line: 1006, column: 32, scope: !692)
!711 = !DILocation(line: 1006, column: 47, scope: !692)
!712 = !DILocation(line: 1006, column: 3, scope: !703)
!713 = distinct !{!713, !701, !714}
!714 = !DILocation(line: 1006, column: 70, scope: !692)
!715 = !DILocation(line: 1008, column: 13, scope: !716)
!716 = distinct !DILexicalBlock(scope: !692, file: !135, line: 1008, column: 7)
!717 = !DILocation(line: 1008, column: 16, scope: !716)
!718 = !DILocation(line: 1008, column: 33, scope: !716)
!719 = !DILocation(line: 1008, column: 7, scope: !692)
!720 = !DILocation(line: 1010, column: 15, scope: !721)
!721 = distinct !DILexicalBlock(scope: !716, file: !135, line: 1009, column: 3)
!722 = !DILocation(line: 1011, column: 3, scope: !721)
!723 = !DILocation(line: 1014, column: 15, scope: !724)
!724 = distinct !DILexicalBlock(scope: !716, file: !135, line: 1013, column: 3)
!725 = !DILocation(line: 1017, column: 7, scope: !726)
!726 = distinct !DILexicalBlock(scope: !692, file: !135, line: 1017, column: 7)
!727 = !DILocation(line: 1017, column: 17, scope: !726)
!728 = !DILocation(line: 1017, column: 7, scope: !692)
!729 = !DILocation(line: 1020, column: 16, scope: !730)
!730 = distinct !DILexicalBlock(scope: !726, file: !135, line: 1018, column: 3)
!731 = !{!732, !636, i64 0}
!732 = !{!"", !636, i64 0, !636, i64 4, !636, i64 8, !636, i64 12, !636, i64 16, !636, i64 20, !636, i64 24, !636, i64 28, !636, i64 32}
!733 = !DILocation(line: 1023, column: 16, scope: !730)
!734 = !DILocation(line: 1024, column: 16, scope: !730)
!735 = !DILocation(line: 1028, column: 15, scope: !730)
!736 = !DILocation(line: 1031, column: 15, scope: !730)
!737 = !DILocation(line: 1034, column: 15, scope: !730)
!738 = !DILocation(line: 1060, column: 15, scope: !730)
!739 = !DILocation(line: 1062, column: 15, scope: !730)
!740 = !DILocation(line: 1066, column: 13, scope: !730)
!741 = !DILocation(line: 1069, column: 5, scope: !730)
!742 = !DILocation(line: 1069, column: 17, scope: !730)
!743 = !DILocation(line: 1069, column: 20, scope: !730)
!744 = !DILocation(line: 1069, column: 37, scope: !730)
!745 = distinct !{!745, !741, !746}
!746 = !DILocation(line: 1071, column: 5, scope: !730)
!747 = !DILocation(line: 1074, column: 15, scope: !730)
!748 = !DILocation(line: 1075, column: 15, scope: !730)
!749 = !DILocation(line: 1078, column: 5, scope: !730)
!750 = !DILocation(line: 1078, column: 18, scope: !730)
!751 = !DILocation(line: 1078, column: 23, scope: !730)
!752 = !DILocation(line: 1078, column: 49, scope: !730)
!753 = distinct !{!753, !749, !754}
!754 = !DILocation(line: 1080, column: 5, scope: !730)
!755 = !DILocation(line: 1086, column: 1, scope: !692)
!756 = distinct !DISubprogram(name: "SystemCoreClockUpdate", scope: !135, file: !135, line: 312, type: !61, scopeLine: 313, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !67, retainedNodes: !757)
!757 = !{!758, !759, !760}
!758 = !DILocalVariable(name: "tmp", scope: !756, file: !135, line: 314, type: !7)
!759 = !DILocalVariable(name: "pllmull", scope: !756, file: !135, line: 314, type: !7)
!760 = !DILocalVariable(name: "pllsource", scope: !756, file: !135, line: 314, type: !7)
!761 = !DILocation(line: 0, scope: !756)
!762 = !DILocation(line: 325, column: 14, scope: !756)
!763 = !DILocation(line: 325, column: 19, scope: !756)
!764 = !DILocation(line: 327, column: 3, scope: !756)
!765 = !DILocation(line: 338, column: 22, scope: !766)
!766 = distinct !DILexicalBlock(scope: !756, file: !135, line: 328, column: 3)
!767 = !DILocation(line: 339, column: 24, scope: !766)
!768 = !DILocation(line: 339, column: 29, scope: !766)
!769 = !DILocation(line: 342, column: 27, scope: !766)
!770 = !DILocation(line: 342, column: 34, scope: !766)
!771 = !DILocation(line: 344, column: 21, scope: !772)
!772 = distinct !DILexicalBlock(scope: !766, file: !135, line: 344, column: 11)
!773 = !DILocation(line: 344, column: 11, scope: !766)
!774 = !DILocation(line: 347, column: 44, scope: !775)
!775 = distinct !DILexicalBlock(scope: !772, file: !135, line: 345, column: 7)
!776 = !DILocation(line: 348, column: 7, scope: !775)
!777 = !DILocation(line: 357, column: 19, scope: !778)
!778 = distinct !DILexicalBlock(scope: !779, file: !135, line: 357, column: 13)
!779 = distinct !DILexicalBlock(scope: !772, file: !135, line: 350, column: 7)
!780 = !DILocation(line: 357, column: 24, scope: !778)
!781 = !DILocation(line: 357, column: 45, scope: !778)
!782 = !DILocation(line: 357, column: 13, scope: !779)
!783 = !DILocation(line: 359, column: 46, scope: !784)
!784 = distinct !DILexicalBlock(scope: !778, file: !135, line: 358, column: 9)
!785 = !DILocation(line: 360, column: 9, scope: !784)
!786 = !DILocation(line: 363, column: 39, scope: !787)
!787 = distinct !DILexicalBlock(scope: !778, file: !135, line: 362, column: 9)
!788 = !DILocation(line: 0, scope: !766)
!789 = !DILocation(line: 415, column: 30, scope: !756)
!790 = !DILocation(line: 415, column: 52, scope: !756)
!791 = !DILocation(line: 415, column: 9, scope: !756)
!792 = !{!637, !637, i64 0}
!793 = !DILocation(line: 417, column: 19, scope: !756)
!794 = !DILocation(line: 418, column: 1, scope: !756)
!795 = !DILocation(line: 0, scope: !206)
!796 = !DILocation(line: 49, column: 2, scope: !206)
!797 = !DILocation(line: 51, column: 25, scope: !206)
!798 = !{!670, !670, i64 0}
!799 = !DILocation(line: 54, column: 7, scope: !800)
!800 = distinct !DILexicalBlock(scope: !801, file: !184, line: 54, column: 2)
!801 = distinct !DILexicalBlock(scope: !206, file: !184, line: 54, column: 2)
!802 = !DILocation(line: 54, column: 41, scope: !800)
!803 = !DILocation(line: 54, column: 2, scope: !801)
!804 = !DILocation(line: 55, column: 46, scope: !805)
!805 = distinct !DILexicalBlock(scope: !800, file: !184, line: 54, column: 68)
!806 = !DILocation(line: 55, column: 38, scope: !805)
!807 = !DILocation(line: 55, column: 44, scope: !805)
!808 = !{!668, !669, i64 0}
!809 = !DILocation(line: 54, column: 64, scope: !800)
!810 = distinct !{!810, !803, !811}
!811 = !DILocation(line: 56, column: 2, scope: !801)
!812 = !DILocation(line: 58, column: 10, scope: !206)
!813 = !DILocation(line: 58, column: 16, scope: !206)
!814 = !{!668, !670, i64 4}
!815 = !DILocation(line: 61, column: 7, scope: !816)
!816 = distinct !DILexicalBlock(scope: !817, file: !184, line: 61, column: 2)
!817 = distinct !DILexicalBlock(scope: !206, file: !184, line: 61, column: 2)
!818 = !DILocation(line: 61, column: 13, scope: !816)
!819 = !DILocation(line: 61, column: 2, scope: !817)
!820 = !DILocation(line: 62, column: 13, scope: !821)
!821 = distinct !DILexicalBlock(scope: !816, file: !184, line: 61, column: 29)
!822 = !DILocation(line: 62, column: 34, scope: !821)
!823 = !DILocation(line: 62, column: 4, scope: !821)
!824 = !DILocation(line: 61, column: 25, scope: !816)
!825 = distinct !{!825, !819, !826}
!826 = !DILocation(line: 63, column: 2, scope: !817)
!827 = !DILocation(line: 65, column: 2, scope: !206)
!828 = distinct !DISubprogram(name: "NVIC_SetPriorityGrouping", scope: !147, file: !147, line: 1276, type: !829, scopeLine: 1277, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !142, retainedNodes: !831)
!829 = !DISubroutineType(types: !830)
!830 = !{null, !7}
!831 = !{!832, !833, !834}
!832 = !DILocalVariable(name: "PriorityGroup", arg: 1, scope: !828, file: !147, line: 1276, type: !7)
!833 = !DILocalVariable(name: "reg_value", scope: !828, file: !147, line: 1278, type: !7)
!834 = !DILocalVariable(name: "PriorityGroupTmp", scope: !828, file: !147, line: 1279, type: !7)
!835 = !DILocation(line: 0, scope: !828)
!836 = !DILocation(line: 1281, column: 22, scope: !828)
!837 = !{!635, !636, i64 12}
!838 = !DILocation(line: 1282, column: 13, scope: !828)
!839 = !DILocation(line: 1284, column: 60, scope: !828)
!840 = !DILocation(line: 1286, column: 14, scope: !828)
!841 = !DILocation(line: 1287, column: 1, scope: !828)
!842 = distinct !DISubprogram(name: "jump2ISP", scope: !184, file: !184, line: 13, type: !61, scopeLine: 13, flags: DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !142, retainedNodes: !631)
!843 = !DILocation(line: 14, column: 16, scope: !842)
!844 = !{!845, !636, i64 0}
!845 = !{!"", !636, i64 0, !636, i64 4, !636, i64 8, !636, i64 12}
!846 = !DILocation(line: 15, column: 15, scope: !842)
!847 = !{!845, !636, i64 8}
!848 = !DILocation(line: 16, column: 12, scope: !842)
!849 = !DILocalVariable(name: "topOfMainStack", arg: 1, scope: !850, file: !851, line: 452, type: !7)
!850 = distinct !DISubprogram(name: "__set_MSP", scope: !851, file: !851, line: 452, type: !829, scopeLine: 453, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !142, retainedNodes: !852)
!851 = !DIFile(filename: "STM32_USB-FS-Device_Lib_V4.0.0/Libraries/CMSIS/Include/core_cmFunc.h", directory: "/home/mjshen/RTOSExploration/Avem/libs", checksumkind: CSK_MD5, checksum: "ea967caa0be25cf8b67b46f5564b9e0d")
!852 = !{!849}
!853 = !DILocation(line: 0, scope: !850, inlinedAt: !854)
!854 = distinct !DILocation(line: 16, column: 2, scope: !842)
!855 = !DILocation(line: 454, column: 3, scope: !850, inlinedAt: !854)
!856 = !{i64 985492}
!857 = !DILocation(line: 17, column: 19, scope: !842)
!858 = !DILocation(line: 17, column: 3, scope: !842)
!859 = !DILocation(line: 17, column: 2, scope: !842)
!860 = !DILocation(line: 18, column: 1, scope: !842)
!861 = distinct !DISubprogram(name: "delay_ms", scope: !184, file: !184, line: 20, type: !862, scopeLine: 20, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !142, retainedNodes: !864)
!862 = !DISubroutineType(types: !863)
!863 = !{null, !11}
!864 = !{!865, !866}
!865 = !DILocalVariable(name: "t", arg: 1, scope: !861, file: !184, line: 20, type: !11)
!866 = !DILocalVariable(name: "tmp", scope: !867, file: !184, line: 24, type: !11)
!867 = distinct !DILexicalBlock(scope: !861, file: !184, line: 24, column: 2)
!868 = !DILocation(line: 0, scope: !861)
!869 = !DILocation(line: 21, column: 23, scope: !861)
!870 = !DILocation(line: 21, column: 16, scope: !861)
!871 = !{!845, !636, i64 4}
!872 = !DILocation(line: 22, column: 15, scope: !861)
!873 = !DILocation(line: 23, column: 16, scope: !861)
!874 = !DILocation(line: 0, scope: !867)
!875 = !DILocation(line: 24, column: 6, scope: !867)
!876 = !DILocation(line: 24, column: 49, scope: !877)
!877 = distinct !DILexicalBlock(scope: !867, file: !184, line: 24, column: 2)
!878 = !DILocation(line: 24, column: 2, scope: !867)
!879 = distinct !{!879, !878, !880}
!880 = !DILocation(line: 24, column: 103, scope: !867)
!881 = !DILocation(line: 25, column: 16, scope: !861)
!882 = !DILocation(line: 26, column: 15, scope: !861)
!883 = !DILocation(line: 27, column: 1, scope: !861)
!884 = distinct !DISubprogram(name: "delay_us", scope: !184, file: !184, line: 30, type: !862, scopeLine: 30, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !142, retainedNodes: !885)
!885 = !{!886, !887}
!886 = !DILocalVariable(name: "t", arg: 1, scope: !884, file: !184, line: 30, type: !11)
!887 = !DILocalVariable(name: "tmp", scope: !888, file: !184, line: 34, type: !11)
!888 = distinct !DILexicalBlock(scope: !884, file: !184, line: 34, column: 2)
!889 = !DILocation(line: 0, scope: !884)
!890 = !DILocation(line: 31, column: 20, scope: !884)
!891 = !DILocation(line: 31, column: 16, scope: !884)
!892 = !DILocation(line: 32, column: 15, scope: !884)
!893 = !DILocation(line: 33, column: 16, scope: !884)
!894 = !DILocation(line: 0, scope: !888)
!895 = !DILocation(line: 34, column: 6, scope: !888)
!896 = !DILocation(line: 34, column: 49, scope: !897)
!897 = distinct !DILexicalBlock(scope: !888, file: !184, line: 34, column: 2)
!898 = !DILocation(line: 34, column: 2, scope: !888)
!899 = distinct !{!899, !898, !900}
!900 = !DILocation(line: 34, column: 103, scope: !888)
!901 = !DILocation(line: 35, column: 16, scope: !884)
!902 = !DILocation(line: 36, column: 15, scope: !884)
!903 = !DILocation(line: 37, column: 1, scope: !884)
!904 = distinct !DISubprogram(name: "avm_i2c_init", scope: !247, file: !247, line: 13, type: !195, scopeLine: 13, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !214, retainedNodes: !905)
!905 = !{!906}
!906 = !DILocalVariable(name: "arg", arg: 1, scope: !904, file: !247, line: 13, type: !155)
!907 = !DILocation(line: 0, scope: !904)
!908 = !DILocation(line: 14, column: 5, scope: !904)
!909 = !DILocation(line: 15, column: 5, scope: !904)
!910 = distinct !DISubprogram(name: "IIC_init", scope: !247, file: !247, line: 22, type: !61, scopeLine: 22, flags: DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !214, retainedNodes: !631)
!911 = !DILocation(line: 23, column: 18, scope: !910)
!912 = !{!678, !636, i64 24}
!913 = !DILocation(line: 24, column: 16, scope: !910)
!914 = !{!915, !636, i64 4}
!915 = !{!"", !636, i64 0, !636, i64 4, !636, i64 8, !636, i64 12, !636, i64 16, !636, i64 20, !636, i64 24}
!916 = !DILocation(line: 25, column: 16, scope: !910)
!917 = !DILocation(line: 26, column: 9, scope: !910)
!918 = !DILocation(line: 27, column: 9, scope: !910)
!919 = !DILocation(line: 38, column: 1, scope: !910)
!920 = distinct !DISubprogram(name: "IIC_Start", scope: !247, file: !247, line: 40, type: !61, scopeLine: 40, flags: DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !214, retainedNodes: !631)
!921 = !DILocation(line: 41, column: 9, scope: !920)
!922 = !DILocation(line: 42, column: 9, scope: !920)
!923 = !DILocation(line: 43, column: 5, scope: !920)
!924 = !DILocation(line: 44, column: 9, scope: !920)
!925 = !DILocation(line: 45, column: 5, scope: !920)
!926 = !DILocation(line: 46, column: 9, scope: !920)
!927 = !DILocation(line: 47, column: 1, scope: !920)
!928 = distinct !DISubprogram(name: "delay_custom", scope: !247, file: !247, line: 18, type: !929, scopeLine: 18, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !214, retainedNodes: !932)
!929 = !DISubroutineType(types: !930)
!930 = !{null, !931}
!931 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !11)
!932 = !{!933}
!933 = !DILocalVariable(name: "nus", arg: 1, scope: !928, file: !247, line: 18, type: !931)
!934 = !DILocation(line: 18, column: 48, scope: !928)
!935 = !DILocation(line: 19, column: 13, scope: !936)
!936 = distinct !DILexicalBlock(scope: !928, file: !247, line: 19, column: 5)
!937 = !DILocation(line: 19, column: 19, scope: !938)
!938 = distinct !DILexicalBlock(scope: !936, file: !247, line: 19, column: 5)
!939 = !DILocation(line: 19, column: 5, scope: !936)
!940 = !DILocation(line: 19, column: 27, scope: !938)
!941 = distinct !{!941, !939, !942}
!942 = !DILocation(line: 19, column: 30, scope: !936)
!943 = !DILocation(line: 20, column: 1, scope: !928)
!944 = distinct !DISubprogram(name: "IIC_Stop", scope: !247, file: !247, line: 49, type: !61, scopeLine: 49, flags: DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !214, retainedNodes: !631)
!945 = !DILocation(line: 50, column: 9, scope: !944)
!946 = !DILocation(line: 51, column: 5, scope: !944)
!947 = !DILocation(line: 52, column: 9, scope: !944)
!948 = !DILocation(line: 53, column: 5, scope: !944)
!949 = !DILocation(line: 54, column: 9, scope: !944)
!950 = !DILocation(line: 55, column: 5, scope: !944)
!951 = !DILocation(line: 56, column: 9, scope: !944)
!952 = !DILocation(line: 57, column: 5, scope: !944)
!953 = !DILocation(line: 58, column: 1, scope: !944)
!954 = distinct !DISubprogram(name: "IIC_Ack", scope: !247, file: !247, line: 60, type: !955, scopeLine: 60, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !214, retainedNodes: !957)
!955 = !DISubroutineType(types: !956)
!956 = !{null, !30}
!957 = !{!958}
!958 = !DILocalVariable(name: "ack", arg: 1, scope: !954, file: !247, line: 60, type: !30)
!959 = !DILocation(line: 0, scope: !954)
!960 = !DILocation(line: 61, column: 9, scope: !954)
!961 = !DILocation(line: 62, column: 5, scope: !954)
!962 = !DILocation(line: 63, column: 11, scope: !954)
!963 = !DILocation(line: 63, column: 9, scope: !954)
!964 = !DILocation(line: 64, column: 5, scope: !954)
!965 = !DILocation(line: 65, column: 9, scope: !954)
!966 = !DILocation(line: 66, column: 5, scope: !954)
!967 = !DILocation(line: 67, column: 9, scope: !954)
!968 = !DILocation(line: 68, column: 5, scope: !954)
!969 = !DILocation(line: 69, column: 1, scope: !954)
!970 = distinct !DISubprogram(name: "IIC_Wait_Ack", scope: !247, file: !247, line: 71, type: !199, scopeLine: 71, flags: DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !214, retainedNodes: !631)
!971 = !DILocation(line: 72, column: 9, scope: !970)
!972 = !DILocation(line: 73, column: 5, scope: !970)
!973 = !DILocation(line: 74, column: 9, scope: !970)
!974 = !DILocation(line: 75, column: 5, scope: !970)
!975 = !DILocation(line: 76, column: 9, scope: !970)
!976 = !DILocation(line: 77, column: 5, scope: !970)
!977 = !DILocation(line: 78, column: 8, scope: !978)
!978 = distinct !DILexicalBlock(scope: !970, file: !247, line: 78, column: 8)
!979 = !DILocation(line: 0, scope: !970)
!980 = !DILocation(line: 78, column: 8, scope: !970)
!981 = !DILocation(line: 80, column: 9, scope: !982)
!982 = distinct !DILexicalBlock(scope: !978, file: !247, line: 78, column: 18)
!983 = !DILocation(line: 81, column: 9, scope: !982)
!984 = !DILocation(line: 86, column: 1, scope: !970)
!985 = distinct !DISubprogram(name: "IIC_Send", scope: !247, file: !247, line: 88, type: !955, scopeLine: 88, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !214, retainedNodes: !986)
!986 = !{!987, !988}
!987 = !DILocalVariable(name: "dat", arg: 1, scope: !985, file: !247, line: 88, type: !30)
!988 = !DILocalVariable(name: "i", scope: !985, file: !247, line: 89, type: !30)
!989 = !DILocation(line: 0, scope: !985)
!990 = !DILocation(line: 90, column: 9, scope: !985)
!991 = !DILocation(line: 92, column: 9, scope: !992)
!992 = distinct !DILexicalBlock(scope: !993, file: !247, line: 91, column: 28)
!993 = distinct !DILexicalBlock(scope: !994, file: !247, line: 91, column: 5)
!994 = distinct !DILexicalBlock(scope: !985, file: !247, line: 91, column: 5)
!995 = !DILocation(line: 93, column: 25, scope: !992)
!996 = !DILocation(line: 93, column: 13, scope: !992)
!997 = !DILocation(line: 95, column: 9, scope: !992)
!998 = !DILocation(line: 96, column: 13, scope: !992)
!999 = !DILocation(line: 97, column: 9, scope: !992)
!1000 = !DILocation(line: 98, column: 13, scope: !992)
!1001 = !DILocation(line: 100, column: 1, scope: !985)
!1002 = distinct !DISubprogram(name: "IIC_Read", scope: !247, file: !247, line: 102, type: !199, scopeLine: 102, flags: DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !214, retainedNodes: !1003)
!1003 = !{!1004, !1005}
!1004 = !DILocalVariable(name: "i", scope: !1002, file: !247, line: 103, type: !30)
!1005 = !DILocalVariable(name: "dat", scope: !1002, file: !247, line: 103, type: !30)
!1006 = !DILocation(line: 0, scope: !1002)
!1007 = !DILocation(line: 104, column: 9, scope: !1002)
!1008 = !DILocation(line: 106, column: 13, scope: !1009)
!1009 = distinct !DILexicalBlock(scope: !1010, file: !247, line: 105, column: 28)
!1010 = distinct !DILexicalBlock(scope: !1011, file: !247, line: 105, column: 5)
!1011 = distinct !DILexicalBlock(scope: !1002, file: !247, line: 105, column: 5)
!1012 = !DILocation(line: 107, column: 9, scope: !1009)
!1013 = !DILocation(line: 108, column: 13, scope: !1009)
!1014 = !DILocation(line: 109, column: 9, scope: !1009)
!1015 = !DILocation(line: 111, column: 16, scope: !1009)
!1016 = !DILocation(line: 111, column: 13, scope: !1009)
!1017 = !DILocation(line: 110, column: 12, scope: !1009)
!1018 = !DILocation(line: 113, column: 9, scope: !1002)
!1019 = !DILocation(line: 114, column: 5, scope: !1002)
!1020 = distinct !DISubprogram(name: "avm_motor_init", scope: !332, file: !332, line: 13, type: !195, scopeLine: 13, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !258, retainedNodes: !1021)
!1021 = !{!1022}
!1022 = !DILocalVariable(name: "arg", arg: 1, scope: !1020, file: !332, line: 13, type: !155)
!1023 = !DILocation(line: 0, scope: !1020)
!1024 = !DILocation(line: 14, column: 5, scope: !1025)
!1025 = distinct !DILexicalBlock(scope: !1020, file: !332, line: 14, column: 5)
!1026 = !{!1027, !669, i64 64}
!1027 = !{!"", !669, i64 0, !669, i64 2, !669, i64 4, !669, i64 6, !669, i64 8, !669, i64 10, !669, i64 12, !669, i64 14, !669, i64 16, !669, i64 18, !669, i64 20, !669, i64 22, !669, i64 24, !669, i64 26, !669, i64 28, !669, i64 30, !669, i64 32, !669, i64 34, !669, i64 36, !669, i64 38, !669, i64 40, !669, i64 42, !669, i64 44, !669, i64 46, !669, i64 48, !669, i64 50, !669, i64 52, !669, i64 54, !669, i64 56, !669, i64 58, !669, i64 60, !669, i64 62, !669, i64 64, !669, i64 66, !669, i64 68, !669, i64 70, !669, i64 72, !669, i64 74, !669, i64 76, !669, i64 78}
!1028 = !{!1027, !669, i64 60}
!1029 = !{!1027, !669, i64 56}
!1030 = !{!1027, !669, i64 52}
!1031 = !DILocation(line: 15, column: 5, scope: !1020)
!1032 = distinct !DISubprogram(name: "motor_PWM_Init", scope: !332, file: !332, line: 19, type: !1033, scopeLine: 19, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !258, retainedNodes: !1035)
!1033 = !DISubroutineType(types: !1034)
!1034 = !{null, !118, !118}
!1035 = !{!1036, !1037}
!1036 = !DILocalVariable(name: "arr", arg: 1, scope: !1032, file: !332, line: 19, type: !118)
!1037 = !DILocalVariable(name: "psc", arg: 2, scope: !1032, file: !332, line: 19, type: !118)
!1038 = !DILocation(line: 0, scope: !1032)
!1039 = !DILocation(line: 23, column: 18, scope: !1032)
!1040 = !{!678, !636, i64 28}
!1041 = !DILocation(line: 24, column: 18, scope: !1032)
!1042 = !DILocation(line: 25, column: 18, scope: !1032)
!1043 = !DILocation(line: 27, column: 16, scope: !1032)
!1044 = !{!915, !636, i64 0}
!1045 = !DILocation(line: 28, column: 16, scope: !1032)
!1046 = !DILocation(line: 29, column: 16, scope: !1032)
!1047 = !{!915, !636, i64 12}
!1048 = !DILocation(line: 30, column: 16, scope: !1032)
!1049 = !DILocation(line: 32, column: 16, scope: !1032)
!1050 = !DILocation(line: 33, column: 16, scope: !1032)
!1051 = !DILocation(line: 34, column: 16, scope: !1032)
!1052 = !DILocation(line: 35, column: 16, scope: !1032)
!1053 = !DILocation(line: 37, column: 21, scope: !1032)
!1054 = !DILocation(line: 37, column: 15, scope: !1032)
!1055 = !{!1027, !669, i64 44}
!1056 = !DILocation(line: 38, column: 21, scope: !1032)
!1057 = !DILocation(line: 38, column: 15, scope: !1032)
!1058 = !{!1027, !669, i64 40}
!1059 = !DILocation(line: 40, column: 17, scope: !1032)
!1060 = !{!1027, !669, i64 24}
!1061 = !DILocation(line: 41, column: 17, scope: !1032)
!1062 = !DILocation(line: 42, column: 17, scope: !1032)
!1063 = !DILocation(line: 43, column: 17, scope: !1032)
!1064 = !DILocation(line: 44, column: 17, scope: !1032)
!1065 = !{!1027, !669, i64 28}
!1066 = !DILocation(line: 45, column: 17, scope: !1032)
!1067 = !DILocation(line: 46, column: 17, scope: !1032)
!1068 = !DILocation(line: 47, column: 17, scope: !1032)
!1069 = !DILocation(line: 49, column: 16, scope: !1032)
!1070 = !{!1027, !669, i64 32}
!1071 = !DILocation(line: 50, column: 16, scope: !1032)
!1072 = !DILocation(line: 51, column: 16, scope: !1032)
!1073 = !DILocation(line: 52, column: 16, scope: !1032)
!1074 = !DILocation(line: 54, column: 15, scope: !1032)
!1075 = !{!1027, !669, i64 0}
!1076 = !DILocation(line: 55, column: 15, scope: !1032)
!1077 = !DILocation(line: 57, column: 1, scope: !1032)
!1078 = distinct !DISubprogram(name: "avm_mpu_init", scope: !352, file: !352, line: 13, type: !195, scopeLine: 13, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !343, retainedNodes: !1079)
!1079 = !{!1080}
!1080 = !DILocalVariable(name: "arg", arg: 1, scope: !1078, file: !352, line: 13, type: !155)
!1081 = !DILocation(line: 0, scope: !1078)
!1082 = !DILocation(line: 15, column: 5, scope: !1078)
!1083 = !DILocation(line: 16, column: 5, scope: !1078)
!1084 = !DILocation(line: 17, column: 5, scope: !1078)
!1085 = distinct !DISubprogram(name: "MPU_init", scope: !352, file: !352, line: 62, type: !61, scopeLine: 62, flags: DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !343, retainedNodes: !631)
!1086 = !DILocation(line: 63, column: 5, scope: !1085)
!1087 = !DILocation(line: 64, column: 5, scope: !1085)
!1088 = !DILocation(line: 65, column: 9, scope: !1089)
!1089 = distinct !DILexicalBlock(scope: !1085, file: !352, line: 64, column: 8)
!1090 = !DILocation(line: 66, column: 9, scope: !1089)
!1091 = !DILocation(line: 67, column: 9, scope: !1089)
!1092 = !DILocation(line: 68, column: 9, scope: !1089)
!1093 = !DILocation(line: 69, column: 9, scope: !1089)
!1094 = !DILocation(line: 70, column: 13, scope: !1085)
!1095 = !DILocation(line: 70, column: 5, scope: !1089)
!1096 = distinct !{!1096, !1087, !1097}
!1097 = !DILocation(line: 70, column: 30, scope: !1085)
!1098 = !DILocation(line: 71, column: 1, scope: !1085)
!1099 = distinct !DISubprogram(name: "MPU_Sigle_Write", scope: !352, file: !352, line: 21, type: !1100, scopeLine: 21, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !343, retainedNodes: !1102)
!1100 = !DISubroutineType(types: !1101)
!1101 = !{null, !30, !30}
!1102 = !{!1103, !1104}
!1103 = !DILocalVariable(name: "reg_addr", arg: 1, scope: !1099, file: !352, line: 21, type: !30)
!1104 = !DILocalVariable(name: "reg_data", arg: 2, scope: !1099, file: !352, line: 21, type: !30)
!1105 = !DILocation(line: 0, scope: !1099)
!1106 = !DILocation(line: 22, column: 5, scope: !1099)
!1107 = !DILocation(line: 23, column: 5, scope: !1099)
!1108 = !DILocation(line: 24, column: 9, scope: !1109)
!1109 = distinct !DILexicalBlock(scope: !1099, file: !352, line: 24, column: 8)
!1110 = !DILocation(line: 24, column: 8, scope: !1099)
!1111 = !DILocation(line: 25, column: 8, scope: !1109)
!1112 = !DILocation(line: 25, column: 3, scope: !1109)
!1113 = !DILocation(line: 27, column: 5, scope: !1099)
!1114 = !DILocation(line: 28, column: 5, scope: !1099)
!1115 = !DILocation(line: 30, column: 5, scope: !1099)
!1116 = !DILocation(line: 31, column: 5, scope: !1099)
!1117 = !DILocation(line: 33, column: 5, scope: !1099)
!1118 = !DILocation(line: 34, column: 1, scope: !1099)
!1119 = distinct !DISubprogram(name: "MPU_Sigle_Read", scope: !352, file: !352, line: 36, type: !1120, scopeLine: 36, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !343, retainedNodes: !1122)
!1120 = !DISubroutineType(types: !1121)
!1121 = !{!30, !11}
!1122 = !{!1123, !1124}
!1123 = !DILocalVariable(name: "reg_addr", arg: 1, scope: !1119, file: !352, line: 36, type: !11)
!1124 = !DILocalVariable(name: "reg_data", scope: !1119, file: !352, line: 37, type: !30)
!1125 = !DILocation(line: 0, scope: !1119)
!1126 = !DILocation(line: 38, column: 5, scope: !1119)
!1127 = !DILocation(line: 39, column: 5, scope: !1119)
!1128 = !DILocation(line: 40, column: 5, scope: !1119)
!1129 = !DILocation(line: 42, column: 14, scope: !1119)
!1130 = !DILocation(line: 42, column: 5, scope: !1119)
!1131 = !DILocation(line: 43, column: 5, scope: !1119)
!1132 = !DILocation(line: 45, column: 5, scope: !1119)
!1133 = !DILocation(line: 46, column: 5, scope: !1119)
!1134 = !DILocation(line: 47, column: 5, scope: !1119)
!1135 = !DILocation(line: 49, column: 16, scope: !1119)
!1136 = !DILocation(line: 50, column: 5, scope: !1119)
!1137 = !DILocation(line: 51, column: 5, scope: !1119)
!1138 = !DILocation(line: 52, column: 5, scope: !1119)
!1139 = distinct !DISubprogram(name: "MPU_GetData", scope: !352, file: !352, line: 55, type: !1140, scopeLine: 55, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !343, retainedNodes: !1142)
!1140 = !DISubroutineType(types: !1141)
!1141 = !{!346, !30}
!1142 = !{!1143, !1144, !1145}
!1143 = !DILocalVariable(name: "REG_Addr", arg: 1, scope: !1139, file: !352, line: 55, type: !30)
!1144 = !DILocalVariable(name: "H", scope: !1139, file: !352, line: 56, type: !30)
!1145 = !DILocalVariable(name: "L", scope: !1139, file: !352, line: 56, type: !30)
!1146 = !DILocation(line: 0, scope: !1139)
!1147 = !DILocation(line: 57, column: 24, scope: !1139)
!1148 = !DILocation(line: 57, column: 9, scope: !1139)
!1149 = !DILocation(line: 58, column: 32, scope: !1139)
!1150 = !DILocation(line: 58, column: 9, scope: !1139)
!1151 = !DILocation(line: 59, column: 20, scope: !1139)
!1152 = !DILocation(line: 59, column: 21, scope: !1139)
!1153 = !DILocation(line: 59, column: 26, scope: !1139)
!1154 = !DILocation(line: 59, column: 25, scope: !1139)
!1155 = !DILocation(line: 59, column: 5, scope: !1139)
!1156 = distinct !DISubprogram(name: "MPU6050_getStructData", scope: !352, file: !352, line: 73, type: !1157, scopeLine: 73, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !343, retainedNodes: !1161)
!1157 = !DISubroutineType(types: !1158)
!1158 = !{null, !1159}
!1159 = !DIDerivedType(tag: DW_TAG_typedef, name: "pSixAxis", file: !356, line: 62, baseType: !1160)
!1160 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !357, size: 32)
!1161 = !{!1162}
!1162 = !DILocalVariable(name: "cache", arg: 1, scope: !1156, file: !352, line: 73, type: !1159)
!1163 = !DILocation(line: 0, scope: !1156)
!1164 = !DILocation(line: 74, column: 24, scope: !1156)
!1165 = !DILocation(line: 74, column: 17, scope: !1156)
!1166 = !DILocation(line: 74, column: 48, scope: !1156)
!1167 = !DILocation(line: 74, column: 12, scope: !1156)
!1168 = !DILocation(line: 74, column: 15, scope: !1156)
!1169 = !{!1170, !1171, i64 0}
!1170 = !{!"", !1171, i64 0, !1171, i64 4, !1171, i64 8, !1171, i64 12, !1171, i64 16, !1171, i64 20}
!1171 = !{!"float", !637, i64 0}
!1172 = !DILocation(line: 75, column: 24, scope: !1156)
!1173 = !DILocation(line: 75, column: 17, scope: !1156)
!1174 = !DILocation(line: 75, column: 48, scope: !1156)
!1175 = !DILocation(line: 75, column: 12, scope: !1156)
!1176 = !DILocation(line: 75, column: 15, scope: !1156)
!1177 = !{!1170, !1171, i64 4}
!1178 = !DILocation(line: 76, column: 24, scope: !1156)
!1179 = !DILocation(line: 76, column: 17, scope: !1156)
!1180 = !DILocation(line: 76, column: 48, scope: !1156)
!1181 = !DILocation(line: 76, column: 12, scope: !1156)
!1182 = !DILocation(line: 76, column: 15, scope: !1156)
!1183 = !{!1170, !1171, i64 8}
!1184 = !DILocation(line: 78, column: 24, scope: !1156)
!1185 = !DILocation(line: 78, column: 17, scope: !1156)
!1186 = !DILocation(line: 78, column: 49, scope: !1156)
!1187 = !DILocation(line: 78, column: 12, scope: !1156)
!1188 = !DILocation(line: 78, column: 15, scope: !1156)
!1189 = !{!1170, !1171, i64 12}
!1190 = !DILocation(line: 79, column: 24, scope: !1156)
!1191 = !DILocation(line: 79, column: 17, scope: !1156)
!1192 = !DILocation(line: 79, column: 49, scope: !1156)
!1193 = !DILocation(line: 79, column: 12, scope: !1156)
!1194 = !DILocation(line: 79, column: 15, scope: !1156)
!1195 = !{!1170, !1171, i64 16}
!1196 = !DILocation(line: 80, column: 24, scope: !1156)
!1197 = !DILocation(line: 80, column: 17, scope: !1156)
!1198 = !DILocation(line: 80, column: 49, scope: !1156)
!1199 = !DILocation(line: 80, column: 12, scope: !1156)
!1200 = !DILocation(line: 83, column: 15, scope: !1156)
!1201 = !DILocation(line: 84, column: 15, scope: !1156)
!1202 = !DILocation(line: 85, column: 15, scope: !1156)
!1203 = !DILocation(line: 87, column: 15, scope: !1156)
!1204 = !DILocation(line: 88, column: 15, scope: !1156)
!1205 = !DILocation(line: 89, column: 15, scope: !1156)
!1206 = !{!1170, !1171, i64 20}
!1207 = !DILocation(line: 91, column: 1, scope: !1156)
!1208 = !DILocation(line: 0, scope: !351)
!1209 = !DILocation(line: 122, column: 45, scope: !351)
!1210 = !DILocation(line: 122, column: 35, scope: !351)
!1211 = !DILocation(line: 122, column: 55, scope: !351)
!1212 = !DILocation(line: 122, column: 12, scope: !351)
!1213 = !DILocation(line: 125, column: 25, scope: !351)
!1214 = !DILocation(line: 126, column: 25, scope: !351)
!1215 = !DILocation(line: 127, column: 25, scope: !351)
!1216 = !DILocation(line: 130, column: 15, scope: !351)
!1217 = !{!1171, !1171, i64 0}
!1218 = !DILocation(line: 130, column: 22, scope: !351)
!1219 = !DILocation(line: 130, column: 29, scope: !351)
!1220 = !DILocation(line: 130, column: 36, scope: !351)
!1221 = !DILocation(line: 130, column: 27, scope: !351)
!1222 = !DILocation(line: 130, column: 12, scope: !351)
!1223 = !DILocation(line: 131, column: 34, scope: !351)
!1224 = !DILocation(line: 131, column: 27, scope: !351)
!1225 = !DILocation(line: 131, column: 12, scope: !351)
!1226 = !DILocation(line: 132, column: 20, scope: !351)
!1227 = !DILocation(line: 132, column: 32, scope: !351)
!1228 = !DILocation(line: 132, column: 44, scope: !351)
!1229 = !DILocation(line: 135, column: 25, scope: !351)
!1230 = !DILocation(line: 136, column: 25, scope: !351)
!1231 = !DILocation(line: 137, column: 25, scope: !351)
!1232 = !DILocation(line: 140, column: 13, scope: !351)
!1233 = !DILocation(line: 141, column: 13, scope: !351)
!1234 = !DILocation(line: 142, column: 13, scope: !351)
!1235 = !DILocation(line: 145, column: 25, scope: !351)
!1236 = !DILocation(line: 145, column: 14, scope: !351)
!1237 = !DILocation(line: 146, column: 25, scope: !351)
!1238 = !DILocation(line: 146, column: 14, scope: !351)
!1239 = !DILocation(line: 147, column: 25, scope: !351)
!1240 = !DILocation(line: 147, column: 14, scope: !351)
!1241 = !DILocation(line: 150, column: 31, scope: !351)
!1242 = !DILocation(line: 150, column: 49, scope: !351)
!1243 = !DILocation(line: 150, column: 10, scope: !351)
!1244 = !DILocation(line: 151, column: 37, scope: !351)
!1245 = !DILocation(line: 151, column: 30, scope: !351)
!1246 = !DILocation(line: 151, column: 48, scope: !351)
!1247 = !DILocation(line: 151, column: 10, scope: !351)
!1248 = !DILocation(line: 152, column: 30, scope: !351)
!1249 = !DILocation(line: 152, column: 48, scope: !351)
!1250 = !DILocation(line: 152, column: 10, scope: !351)
!1251 = !DILocation(line: 153, column: 37, scope: !351)
!1252 = !DILocation(line: 153, column: 30, scope: !351)
!1253 = !DILocation(line: 153, column: 48, scope: !351)
!1254 = !DILocation(line: 153, column: 10, scope: !351)
!1255 = !DILocation(line: 156, column: 33, scope: !351)
!1256 = !DILocation(line: 156, column: 27, scope: !351)
!1257 = !DILocation(line: 156, column: 39, scope: !351)
!1258 = !DILocation(line: 156, column: 51, scope: !351)
!1259 = !DILocation(line: 156, column: 12, scope: !351)
!1260 = !DILocation(line: 157, column: 12, scope: !351)
!1261 = !DILocation(line: 157, column: 17, scope: !351)
!1262 = !DILocation(line: 157, column: 10, scope: !351)
!1263 = !DILocation(line: 158, column: 12, scope: !351)
!1264 = !DILocation(line: 158, column: 17, scope: !351)
!1265 = !DILocation(line: 158, column: 10, scope: !351)
!1266 = !DILocation(line: 159, column: 12, scope: !351)
!1267 = !DILocation(line: 159, column: 17, scope: !351)
!1268 = !DILocation(line: 159, column: 10, scope: !351)
!1269 = !DILocation(line: 160, column: 12, scope: !351)
!1270 = !DILocation(line: 160, column: 17, scope: !351)
!1271 = !DILocation(line: 160, column: 10, scope: !351)
!1272 = !DILocation(line: 162, column: 23, scope: !351)
!1273 = !DILocation(line: 162, column: 41, scope: !351)
!1274 = !DILocation(line: 162, column: 48, scope: !351)
!1275 = !DILocation(line: 162, column: 37, scope: !351)
!1276 = !DILocation(line: 162, column: 20, scope: !351)
!1277 = !DILocation(line: 162, column: 15, scope: !351)
!1278 = !DILocation(line: 162, column: 56, scope: !351)
!1279 = !DILocation(line: 162, column: 13, scope: !351)
!1280 = !DILocation(line: 163, column: 24, scope: !351)
!1281 = !DILocation(line: 163, column: 22, scope: !351)
!1282 = !DILocation(line: 163, column: 31, scope: !351)
!1283 = !DILocation(line: 163, column: 42, scope: !351)
!1284 = !DILocation(line: 163, column: 40, scope: !351)
!1285 = !DILocation(line: 163, column: 49, scope: !351)
!1286 = !DILocation(line: 163, column: 47, scope: !351)
!1287 = !DILocation(line: 163, column: 36, scope: !351)
!1288 = !DILocation(line: 163, column: 20, scope: !351)
!1289 = !DILocation(line: 163, column: 58, scope: !351)
!1290 = !DILocation(line: 163, column: 70, scope: !351)
!1291 = !DILocation(line: 163, column: 86, scope: !351)
!1292 = !DILocation(line: 163, column: 55, scope: !351)
!1293 = !DILocation(line: 163, column: 14, scope: !351)
!1294 = !DILocation(line: 163, column: 91, scope: !351)
!1295 = !DILocation(line: 163, column: 12, scope: !351)
!1296 = !DILocation(line: 164, column: 24, scope: !351)
!1297 = !DILocation(line: 164, column: 31, scope: !351)
!1298 = !DILocation(line: 164, column: 38, scope: !351)
!1299 = !DILocation(line: 164, column: 45, scope: !351)
!1300 = !DILocation(line: 164, column: 43, scope: !351)
!1301 = !DILocation(line: 164, column: 36, scope: !351)
!1302 = !DILocation(line: 164, column: 21, scope: !351)
!1303 = !DILocation(line: 164, column: 19, scope: !351)
!1304 = !DILocation(line: 164, column: 68, scope: !351)
!1305 = !DILocation(line: 164, column: 62, scope: !351)
!1306 = !DILocation(line: 164, column: 74, scope: !351)
!1307 = !DILocation(line: 164, column: 86, scope: !351)
!1308 = !DILocation(line: 164, column: 52, scope: !351)
!1309 = !DILocation(line: 164, column: 13, scope: !351)
!1310 = !DILocation(line: 164, column: 99, scope: !351)
!1311 = !DILocation(line: 164, column: 11, scope: !351)
!1312 = !DILocation(line: 165, column: 1, scope: !351)
!1313 = distinct !DISubprogram(name: "avm_uart_init", scope: !583, file: !583, line: 15, type: !195, scopeLine: 15, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !404, retainedNodes: !1314)
!1314 = !{!1315}
!1315 = !DILocalVariable(name: "conf", arg: 1, scope: !1313, file: !583, line: 15, type: !155)
!1316 = !DILocation(line: 0, scope: !1313)
!1317 = !DILocation(line: 16, column: 16, scope: !1313)
!1318 = !DILocation(line: 16, column: 15, scope: !1313)
!1319 = !DILocation(line: 16, column: 42, scope: !1313)
!1320 = !DILocation(line: 16, column: 5, scope: !1313)
!1321 = !DILocation(line: 17, column: 5, scope: !1313)
!1322 = distinct !DISubprogram(name: "uart_init", scope: !583, file: !583, line: 21, type: !1323, scopeLine: 21, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !404, retainedNodes: !1325)
!1323 = !DISubroutineType(types: !1324)
!1324 = !{null, !11, !11}
!1325 = !{!1326, !1327, !1328, !1329, !1330}
!1326 = !DILocalVariable(name: "pclk2", arg: 1, scope: !1322, file: !583, line: 21, type: !11)
!1327 = !DILocalVariable(name: "bound", arg: 2, scope: !1322, file: !583, line: 21, type: !11)
!1328 = !DILocalVariable(name: "temp", scope: !1322, file: !583, line: 22, type: !347)
!1329 = !DILocalVariable(name: "mantissa", scope: !1322, file: !583, line: 23, type: !118)
!1330 = !DILocalVariable(name: "fraction", scope: !1322, file: !583, line: 24, type: !118)
!1331 = !DILocation(line: 0, scope: !1322)
!1332 = !DILocation(line: 25, column: 25, scope: !1322)
!1333 = !DILocation(line: 25, column: 12, scope: !1322)
!1334 = !DILocation(line: 25, column: 41, scope: !1322)
!1335 = !DILocation(line: 25, column: 35, scope: !1322)
!1336 = !DILocation(line: 25, column: 34, scope: !1322)
!1337 = !DILocation(line: 26, column: 16, scope: !1322)
!1338 = !DILocation(line: 27, column: 24, scope: !1322)
!1339 = !DILocation(line: 27, column: 22, scope: !1322)
!1340 = !DILocation(line: 27, column: 34, scope: !1322)
!1341 = !DILocation(line: 27, column: 16, scope: !1322)
!1342 = !DILocation(line: 28, column: 14, scope: !1322)
!1343 = !DILocation(line: 29, column: 14, scope: !1322)
!1344 = !DILocation(line: 30, column: 18, scope: !1322)
!1345 = !DILocation(line: 31, column: 18, scope: !1322)
!1346 = !DILocation(line: 33, column: 16, scope: !1322)
!1347 = !DILocation(line: 34, column: 16, scope: !1322)
!1348 = !DILocation(line: 36, column: 19, scope: !1322)
!1349 = !{!678, !636, i64 12}
!1350 = !DILocation(line: 37, column: 19, scope: !1322)
!1351 = !DILocation(line: 39, column: 17, scope: !1322)
!1352 = !{!1353, !669, i64 8}
!1353 = !{!"", !669, i64 0, !669, i64 2, !669, i64 4, !669, i64 6, !669, i64 8, !669, i64 10, !669, i64 12, !669, i64 14, !669, i64 16, !669, i64 18, !669, i64 20, !669, i64 22, !669, i64 24, !669, i64 26}
!1354 = !DILocation(line: 40, column: 17, scope: !1322)
!1355 = !{!1353, !669, i64 12}
!1356 = !DILocation(line: 42, column: 17, scope: !1322)
!1357 = !DILocation(line: 43, column: 17, scope: !1322)
!1358 = !DILocation(line: 46, column: 13, scope: !1322)
!1359 = !{!1353, !669, i64 0}
!1360 = !DILocation(line: 48, column: 2, scope: !1322)
!1361 = !DILocation(line: 49, column: 2, scope: !1322)
!1362 = !DILocation(line: 51, column: 1, scope: !1322)
!1363 = distinct !DISubprogram(name: "NVIC_EnableIRQ", scope: !147, file: !147, line: 1308, type: !1364, scopeLine: 1309, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !404, retainedNodes: !1367)
!1364 = !DISubroutineType(types: !1365)
!1365 = !{null, !1366}
!1366 = !DIDerivedType(tag: DW_TAG_typedef, name: "IRQn_Type", file: !219, line: 482, baseType: !407)
!1367 = !{!1368}
!1368 = !DILocalVariable(name: "IRQn", arg: 1, scope: !1363, file: !147, line: 1308, type: !1366)
!1369 = !DILocation(line: 0, scope: !1363)
!1370 = !DILocation(line: 1310, column: 39, scope: !1363)
!1371 = !DILocation(line: 1311, column: 1, scope: !1363)
!1372 = distinct !DISubprogram(name: "NVIC_SetPriority", scope: !147, file: !147, line: 1390, type: !1373, scopeLine: 1391, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !404, retainedNodes: !1375)
!1373 = !DISubroutineType(types: !1374)
!1374 = !{null, !1366, !7}
!1375 = !{!1376, !1377}
!1376 = !DILocalVariable(name: "IRQn", arg: 1, scope: !1372, file: !147, line: 1390, type: !1366)
!1377 = !DILocalVariable(name: "priority", arg: 2, scope: !1372, file: !147, line: 1390, type: !7)
!1378 = !DILocation(line: 0, scope: !1372)
!1379 = !DILocation(line: 1395, column: 32, scope: !1380)
!1380 = distinct !DILexicalBlock(scope: !1381, file: !147, line: 1394, column: 8)
!1381 = distinct !DILexicalBlock(scope: !1372, file: !147, line: 1392, column: 6)
!1382 = !DILocation(line: 1396, column: 1, scope: !1372)
!1383 = distinct !DISubprogram(name: "USART1_IRQHandler", scope: !583, file: !583, line: 53, type: !61, scopeLine: 53, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !404, retainedNodes: !1384)
!1384 = !{!1385}
!1385 = !DILocalVariable(name: "cmd", scope: !1386, file: !583, line: 55, type: !1388)
!1386 = distinct !DILexicalBlock(scope: !1387, file: !583, line: 54, column: 33)
!1387 = distinct !DILexicalBlock(scope: !1383, file: !583, line: 54, column: 5)
!1388 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !522)
!1389 = !DILocation(line: 54, column: 13, scope: !1387)
!1390 = !DILocation(line: 54, column: 16, scope: !1387)
!1391 = !DILocation(line: 54, column: 5, scope: !1383)
!1392 = !DILocation(line: 55, column: 28, scope: !1386)
!1393 = !{!1353, !669, i64 4}
!1394 = !DILocation(line: 0, scope: !1386)
!1395 = !DILocation(line: 56, column: 3, scope: !1386)
!1396 = !DILocation(line: 58, column: 5, scope: !1397)
!1397 = distinct !DILexicalBlock(scope: !1386, file: !583, line: 56, column: 16)
!1398 = !DILocation(line: 59, column: 5, scope: !1397)
!1399 = !DILocation(line: 60, column: 17, scope: !1397)
!1400 = !DILocation(line: 62, column: 21, scope: !1397)
!1401 = !DILocation(line: 62, column: 5, scope: !1397)
!1402 = !DILocation(line: 63, column: 5, scope: !1397)
!1403 = !DILocation(line: 65, column: 21, scope: !1397)
!1404 = !DILocation(line: 65, column: 5, scope: !1397)
!1405 = !DILocation(line: 66, column: 5, scope: !1397)
!1406 = !DILocation(line: 68, column: 21, scope: !1397)
!1407 = !DILocation(line: 68, column: 5, scope: !1397)
!1408 = !DILocation(line: 69, column: 17, scope: !1397)
!1409 = !DILocation(line: 71, column: 42, scope: !1397)
!1410 = !{!1411, !670, i64 36}
!1411 = !{!"", !1171, i64 0, !1171, i64 4, !670, i64 8, !670, i64 12, !1171, i64 16, !1171, i64 20, !1171, i64 24, !1171, i64 28, !669, i64 32, !670, i64 36, !670, i64 40}
!1412 = !DILocation(line: 71, column: 33, scope: !1397)
!1413 = !{!669, !669, i64 0}
!1414 = !DILocation(line: 71, column: 17, scope: !1397)
!1415 = !DILocation(line: 72, column: 17, scope: !1397)
!1416 = !DILocation(line: 74, column: 42, scope: !1397)
!1417 = !{!1411, !670, i64 40}
!1418 = !DILocation(line: 74, column: 33, scope: !1397)
!1419 = !DILocation(line: 74, column: 17, scope: !1397)
!1420 = !DILocation(line: 75, column: 5, scope: !1397)
!1421 = !DILocation(line: 76, column: 5, scope: !1397)
!1422 = !DILocation(line: 78, column: 5, scope: !1397)
!1423 = !DILocation(line: 79, column: 5, scope: !1397)
!1424 = !DILocation(line: 85, column: 1, scope: !1383)
!1425 = distinct !DISubprogram(name: "uart_Float2Char", scope: !583, file: !583, line: 114, type: !1426, scopeLine: 114, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !404, retainedNodes: !1428)
!1426 = !DISubroutineType(types: !1427)
!1427 = !{!30, !347}
!1428 = !{!1429, !1430, !1431, !1432, !1433, !1434, !1436, !1440}
!1429 = !DILocalVariable(name: "value", arg: 1, scope: !1425, file: !583, line: 114, type: !347)
!1430 = !DILocalVariable(name: "IntegerPart", scope: !1425, file: !583, line: 115, type: !30)
!1431 = !DILocalVariable(name: "DecimalPart", scope: !1425, file: !583, line: 116, type: !347)
!1432 = !DILocalVariable(name: "i", scope: !1425, file: !583, line: 117, type: !30)
!1433 = !DILocalVariable(name: "temp", scope: !1425, file: !583, line: 118, type: !522)
!1434 = !DILocalVariable(name: "array", scope: !1425, file: !583, line: 120, type: !1435)
!1435 = !DICompositeType(tag: DW_TAG_array_type, baseType: !522, size: 64, elements: !529)
!1436 = !DILocalVariable(name: "j", scope: !1437, file: !583, line: 146, type: !30)
!1437 = distinct !DILexicalBlock(scope: !1438, file: !583, line: 146, column: 9)
!1438 = distinct !DILexicalBlock(scope: !1439, file: !583, line: 139, column: 12)
!1439 = distinct !DILexicalBlock(scope: !1425, file: !583, line: 135, column: 8)
!1440 = !DILocalVariable(name: "j", scope: !1441, file: !583, line: 161, type: !30)
!1441 = distinct !DILexicalBlock(scope: !1425, file: !583, line: 161, column: 5)
!1442 = !DILocation(line: 0, scope: !1425)
!1443 = !DILocation(line: 120, column: 5, scope: !1425)
!1444 = !DILocation(line: 120, column: 10, scope: !1425)
!1445 = !DILocation(line: 122, column: 14, scope: !1446)
!1446 = distinct !DILexicalBlock(scope: !1425, file: !583, line: 122, column: 8)
!1447 = !DILocation(line: 122, column: 8, scope: !1425)
!1448 = !DILocation(line: 123, column: 23, scope: !1449)
!1449 = distinct !DILexicalBlock(scope: !1446, file: !583, line: 122, column: 20)
!1450 = !DILocation(line: 124, column: 9, scope: !1449)
!1451 = !DILocation(line: 125, column: 5, scope: !1449)
!1452 = !DILocation(line: 127, column: 14, scope: !1453)
!1453 = distinct !DILexicalBlock(scope: !1425, file: !583, line: 127, column: 8)
!1454 = !DILocation(line: 127, column: 8, scope: !1425)
!1455 = !DILocation(line: 135, column: 20, scope: !1439)
!1456 = !DILocation(line: 135, column: 8, scope: !1425)
!1457 = !DILocation(line: 142, column: 24, scope: !1458)
!1458 = distinct !DILexicalBlock(scope: !1438, file: !583, line: 140, column: 32)
!1459 = !DILocation(line: 141, column: 39, scope: !1458)
!1460 = !DILocation(line: 140, column: 27, scope: !1438)
!1461 = !DILocation(line: 140, column: 9, scope: !1438)
!1462 = distinct !{!1462, !1461, !1463}
!1463 = !DILocation(line: 144, column: 9, scope: !1438)
!1464 = !DILocation(line: 136, column: 18, scope: !1465)
!1465 = distinct !DILexicalBlock(scope: !1439, file: !583, line: 135, column: 26)
!1466 = !DILocation(line: 139, column: 5, scope: !1465)
!1467 = !DILocation(line: 141, column: 35, scope: !1458)
!1468 = !DILocation(line: 141, column: 22, scope: !1458)
!1469 = !DILocation(line: 141, column: 13, scope: !1458)
!1470 = !DILocation(line: 143, column: 14, scope: !1458)
!1471 = !DILocation(line: 0, scope: !1437)
!1472 = !DILocation(line: 146, column: 9, scope: !1437)
!1473 = !DILocation(line: 147, column: 20, scope: !1474)
!1474 = distinct !DILexicalBlock(scope: !1475, file: !583, line: 146, column: 46)
!1475 = distinct !DILexicalBlock(scope: !1437, file: !583, line: 146, column: 9)
!1476 = !DILocation(line: 148, column: 31, scope: !1474)
!1477 = !DILocation(line: 148, column: 24, scope: !1474)
!1478 = !DILocation(line: 148, column: 22, scope: !1474)
!1479 = !DILocation(line: 149, column: 24, scope: !1474)
!1480 = !DILocation(line: 146, column: 42, scope: !1475)
!1481 = !DILocation(line: 152, column: 9, scope: !1438)
!1482 = distinct !{!1482, !1472, !1483}
!1483 = !DILocation(line: 150, column: 9, scope: !1437)
!1484 = !DILocation(line: 0, scope: !1439)
!1485 = !DILocation(line: 154, column: 6, scope: !1425)
!1486 = !DILocation(line: 155, column: 45, scope: !1425)
!1487 = !DILocation(line: 155, column: 18, scope: !1425)
!1488 = !DILocation(line: 155, column: 50, scope: !1425)
!1489 = !DILocation(line: 155, column: 12, scope: !1425)
!1490 = !DILocation(line: 155, column: 5, scope: !1425)
!1491 = !DILocation(line: 155, column: 16, scope: !1425)
!1492 = !DILocation(line: 156, column: 45, scope: !1425)
!1493 = !DILocation(line: 156, column: 18, scope: !1425)
!1494 = !DILocation(line: 156, column: 51, scope: !1425)
!1495 = !DILocation(line: 156, column: 12, scope: !1425)
!1496 = !DILocation(line: 156, column: 5, scope: !1425)
!1497 = !DILocation(line: 156, column: 16, scope: !1425)
!1498 = !DILocation(line: 157, column: 45, scope: !1425)
!1499 = !DILocation(line: 157, column: 18, scope: !1425)
!1500 = !DILocation(line: 157, column: 52, scope: !1425)
!1501 = !DILocation(line: 157, column: 12, scope: !1425)
!1502 = !DILocation(line: 157, column: 5, scope: !1425)
!1503 = !DILocation(line: 157, column: 16, scope: !1425)
!1504 = !DILocation(line: 158, column: 45, scope: !1425)
!1505 = !DILocation(line: 158, column: 18, scope: !1425)
!1506 = !DILocation(line: 158, column: 53, scope: !1425)
!1507 = !DILocation(line: 158, column: 12, scope: !1425)
!1508 = !DILocation(line: 158, column: 5, scope: !1425)
!1509 = !DILocation(line: 158, column: 16, scope: !1425)
!1510 = !DILocation(line: 159, column: 12, scope: !1425)
!1511 = !DILocation(line: 159, column: 5, scope: !1425)
!1512 = !DILocation(line: 159, column: 16, scope: !1425)
!1513 = !DILocation(line: 0, scope: !1441)
!1514 = !DILocation(line: 161, column: 32, scope: !1515)
!1515 = distinct !DILexicalBlock(scope: !1441, file: !583, line: 161, column: 5)
!1516 = !DILocation(line: 161, column: 5, scope: !1441)
!1517 = !DILocation(line: 166, column: 1, scope: !1425)
!1518 = !DILocation(line: 165, column: 5, scope: !1425)
!1519 = !DILocation(line: 162, column: 23, scope: !1520)
!1520 = distinct !DILexicalBlock(scope: !1515, file: !583, line: 161, column: 43)
!1521 = !DILocation(line: 162, column: 9, scope: !1520)
!1522 = !DILocation(line: 161, column: 39, scope: !1515)
!1523 = distinct !{!1523, !1516, !1524}
!1524 = !DILocation(line: 163, column: 5, scope: !1441)
!1525 = distinct !DISubprogram(name: "uart_sendStr", scope: !583, file: !583, line: 168, type: !1526, scopeLine: 168, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !404, retainedNodes: !1529)
!1526 = !DISubroutineType(types: !1527)
!1527 = !{null, !1528}
!1528 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !522, size: 32)
!1529 = !{!1530}
!1530 = !DILocalVariable(name: "cmd", arg: 1, scope: !1525, file: !583, line: 168, type: !1528)
!1531 = !DILocation(line: 0, scope: !1525)
!1532 = !DILocation(line: 169, column: 8, scope: !1525)
!1533 = !DILocation(line: 169, column: 2, scope: !1525)
!1534 = !DILocation(line: 170, column: 21, scope: !1525)
!1535 = !DILocation(line: 170, column: 3, scope: !1525)
!1536 = distinct !{!1536, !1533, !1537}
!1537 = !DILocation(line: 170, column: 23, scope: !1525)
!1538 = !DILocation(line: 171, column: 1, scope: !1525)
!1539 = distinct !DISubprogram(name: "uart_short2char", scope: !583, file: !583, line: 92, type: !1540, scopeLine: 92, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !404, retainedNodes: !1542)
!1540 = !DISubroutineType(types: !1541)
!1541 = !{null, !346}
!1542 = !{!1543, !1544, !1546, !1547}
!1543 = !DILocalVariable(name: "k", arg: 1, scope: !1539, file: !583, line: 92, type: !346)
!1544 = !DILocalVariable(name: "cache", scope: !1539, file: !583, line: 93, type: !1545)
!1545 = !DICompositeType(tag: DW_TAG_array_type, baseType: !522, size: 48, elements: !202)
!1546 = !DILocalVariable(name: "i", scope: !1539, file: !583, line: 94, type: !408)
!1547 = !DILocalVariable(name: "bit", scope: !1539, file: !583, line: 95, type: !1548)
!1548 = !DICompositeType(tag: DW_TAG_array_type, baseType: !118, size: 80, elements: !52)
!1549 = !DILocation(line: 0, scope: !1539)
!1550 = !DILocation(line: 93, column: 2, scope: !1539)
!1551 = !DILocation(line: 93, column: 7, scope: !1539)
!1552 = !DILocation(line: 98, column: 24, scope: !1553)
!1553 = distinct !DILexicalBlock(scope: !1539, file: !583, line: 97, column: 5)
!1554 = !DILocation(line: 98, column: 3, scope: !1553)
!1555 = !DILocation(line: 98, column: 12, scope: !1553)
!1556 = !DILocation(line: 98, column: 33, scope: !1553)
!1557 = !DILocation(line: 100, column: 2, scope: !1539)
!1558 = !DILocation(line: 101, column: 1, scope: !1539)
!1559 = distinct !DISubprogram(name: "uart_sendData", scope: !583, file: !583, line: 87, type: !955, scopeLine: 87, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !404, retainedNodes: !1560)
!1560 = !{!1561}
!1561 = !DILocalVariable(name: "data", arg: 1, scope: !1559, file: !583, line: 87, type: !30)
!1562 = !DILocation(line: 0, scope: !1559)
!1563 = !DILocation(line: 88, column: 18, scope: !1559)
!1564 = !DILocation(line: 88, column: 16, scope: !1559)
!1565 = !DILocation(line: 89, column: 5, scope: !1559)
!1566 = !DILocation(line: 89, column: 20, scope: !1559)
!1567 = !DILocation(line: 89, column: 23, scope: !1559)
!1568 = !DILocation(line: 89, column: 31, scope: !1559)
!1569 = distinct !{!1569, !1565, !1570}
!1570 = !DILocation(line: 89, column: 36, scope: !1559)
!1571 = !DILocation(line: 90, column: 1, scope: !1559)
!1572 = distinct !DISubprogram(name: "uart_int2char", scope: !583, file: !583, line: 103, type: !862, scopeLine: 103, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !404, retainedNodes: !1573)
!1573 = !{!1574, !1575, !1579, !1580}
!1574 = !DILocalVariable(name: "k", arg: 1, scope: !1572, file: !583, line: 103, type: !11)
!1575 = !DILocalVariable(name: "cache", scope: !1572, file: !583, line: 104, type: !1576)
!1576 = !DICompositeType(tag: DW_TAG_array_type, baseType: !522, size: 88, elements: !1577)
!1577 = !{!1578}
!1578 = !DISubrange(count: 11)
!1579 = !DILocalVariable(name: "i", scope: !1572, file: !583, line: 105, type: !30)
!1580 = !DILocalVariable(name: "bit", scope: !1572, file: !583, line: 106, type: !1581)
!1581 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1582, size: 320, elements: !1583)
!1582 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !11)
!1583 = !{!1584}
!1584 = !DISubrange(count: 10)
!1585 = !DILocation(line: 0, scope: !1572)
!1586 = !DILocation(line: 104, column: 2, scope: !1572)
!1587 = !DILocation(line: 104, column: 7, scope: !1572)
!1588 = !DILocation(line: 109, column: 24, scope: !1589)
!1589 = distinct !DILexicalBlock(scope: !1572, file: !583, line: 108, column: 5)
!1590 = !DILocation(line: 109, column: 3, scope: !1589)
!1591 = !DILocation(line: 109, column: 12, scope: !1589)
!1592 = !DILocation(line: 109, column: 33, scope: !1589)
!1593 = !DILocation(line: 111, column: 2, scope: !1572)
!1594 = !DILocation(line: 112, column: 1, scope: !1572)
!1595 = distinct !DISubprogram(name: "pid_SingleAxis", scope: !599, file: !599, line: 24, type: !1596, scopeLine: 24, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !595, retainedNodes: !1600)
!1596 = !DISubroutineType(types: !1597)
!1597 = !{null, !1598, !347}
!1598 = !DIDerivedType(tag: DW_TAG_typedef, name: "pid_pst", file: !601, line: 30, baseType: !1599)
!1599 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !602, size: 32)
!1600 = !{!1601, !1602}
!1601 = !DILocalVariable(name: "temp", arg: 1, scope: !1595, file: !599, line: 24, type: !1598)
!1602 = !DILocalVariable(name: "setPoint", arg: 2, scope: !1595, file: !599, line: 24, type: !347)
!1603 = !DILocation(line: 0, scope: !1595)
!1604 = !DILocation(line: 25, column: 26, scope: !1595)
!1605 = !{!1411, !670, i64 8}
!1606 = !DILocation(line: 25, column: 19, scope: !1595)
!1607 = !DILocation(line: 25, column: 35, scope: !1595)
!1608 = !DILocation(line: 25, column: 11, scope: !1595)
!1609 = !DILocation(line: 25, column: 17, scope: !1595)
!1610 = !{!1411, !1171, i64 16}
!1611 = !DILocation(line: 27, column: 11, scope: !1595)
!1612 = !DILocation(line: 27, column: 13, scope: !1595)
!1613 = !{!1411, !1171, i64 24}
!1614 = !DILocation(line: 28, column: 17, scope: !1615)
!1615 = distinct !DILexicalBlock(scope: !1595, file: !599, line: 28, column: 9)
!1616 = !DILocation(line: 28, column: 9, scope: !1595)
!1617 = !DILocation(line: 30, column: 22, scope: !1618)
!1618 = distinct !DILexicalBlock(scope: !1615, file: !599, line: 30, column: 14)
!1619 = !DILocation(line: 30, column: 14, scope: !1615)
!1620 = !DILocation(line: 0, scope: !1615)
!1621 = !DILocation(line: 33, column: 15, scope: !1595)
!1622 = !DILocation(line: 35, column: 84, scope: !1595)
!1623 = !DILocation(line: 33, column: 39, scope: !1595)
!1624 = !{!1411, !1171, i64 4}
!1625 = !DILocation(line: 33, column: 31, scope: !1595)
!1626 = !DILocation(line: 33, column: 11, scope: !1595)
!1627 = !DILocation(line: 33, column: 13, scope: !1595)
!1628 = !{!1411, !1171, i64 28}
!1629 = !DILocation(line: 35, column: 59, scope: !1595)
!1630 = !DILocation(line: 35, column: 86, scope: !1595)
!1631 = !DILocation(line: 35, column: 20, scope: !1595)
!1632 = !DILocation(line: 35, column: 11, scope: !1595)
!1633 = !DILocation(line: 36, column: 24, scope: !1595)
!1634 = !DILocation(line: 36, column: 22, scope: !1595)
!1635 = !DILocation(line: 38, column: 15, scope: !1595)
!1636 = !DILocation(line: 38, column: 37, scope: !1595)
!1637 = !{!1411, !670, i64 12}
!1638 = !DILocation(line: 38, column: 30, scope: !1595)
!1639 = !DILocation(line: 38, column: 28, scope: !1595)
!1640 = !DILocation(line: 38, column: 11, scope: !1595)
!1641 = !DILocation(line: 38, column: 13, scope: !1595)
!1642 = !{!1411, !1171, i64 20}
!1643 = !DILocation(line: 39, column: 15, scope: !1595)
!1644 = !DILocation(line: 39, column: 35, scope: !1595)
!1645 = !{!1411, !1171, i64 0}
!1646 = !DILocation(line: 39, column: 27, scope: !1595)
!1647 = !DILocation(line: 39, column: 13, scope: !1595)
!1648 = !DILocation(line: 40, column: 68, scope: !1595)
!1649 = !DILocation(line: 40, column: 52, scope: !1595)
!1650 = !DILocation(line: 40, column: 20, scope: !1595)
!1651 = !DILocation(line: 40, column: 18, scope: !1595)
!1652 = !{!1411, !669, i64 32}
!1653 = !DILocation(line: 42, column: 16, scope: !1654)
!1654 = distinct !DILexicalBlock(scope: !1595, file: !599, line: 42, column: 9)
!1655 = !DILocation(line: 42, column: 9, scope: !1654)
!1656 = !DILocation(line: 42, column: 25, scope: !1654)
!1657 = !DILocation(line: 42, column: 24, scope: !1654)
!1658 = !DILocation(line: 42, column: 38, scope: !1654)
!1659 = !DILocation(line: 42, column: 9, scope: !1595)
!1660 = !DILocation(line: 44, column: 14, scope: !1661)
!1661 = distinct !DILexicalBlock(scope: !1654, file: !599, line: 44, column: 14)
!1662 = !DILocation(line: 44, column: 29, scope: !1661)
!1663 = !DILocation(line: 44, column: 43, scope: !1661)
!1664 = !DILocation(line: 44, column: 14, scope: !1654)
!1665 = !DILocation(line: 47, column: 19, scope: !1661)
!1666 = !DILocation(line: 0, scope: !1654)
!1667 = !DILocation(line: 49, column: 16, scope: !1668)
!1668 = distinct !DILexicalBlock(scope: !1595, file: !599, line: 49, column: 9)
!1669 = !DILocation(line: 49, column: 9, scope: !1668)
!1670 = !DILocation(line: 49, column: 31, scope: !1668)
!1671 = !DILocation(line: 49, column: 25, scope: !1668)
!1672 = !DILocation(line: 49, column: 24, scope: !1668)
!1673 = !DILocation(line: 49, column: 38, scope: !1668)
!1674 = !DILocation(line: 49, column: 9, scope: !1595)
!1675 = !DILocation(line: 52, column: 4, scope: !1676)
!1676 = distinct !DILexicalBlock(scope: !1668, file: !599, line: 52, column: 4)
!1677 = !DILocation(line: 52, column: 19, scope: !1676)
!1678 = !DILocation(line: 52, column: 33, scope: !1676)
!1679 = !DILocation(line: 52, column: 4, scope: !1668)
!1680 = !DILocation(line: 54, column: 19, scope: !1676)
!1681 = !DILocation(line: 0, scope: !1668)
!1682 = !DILocation(line: 56, column: 23, scope: !1595)
!1683 = !DILocation(line: 56, column: 21, scope: !1595)
!1684 = !DILocation(line: 57, column: 1, scope: !1595)
