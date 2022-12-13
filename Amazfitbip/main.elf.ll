; ModuleID = './bin/main.elf.bc'
source_filename = "llvm-link"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "thumbv7em-none-unknown-eabihf"

%struct.A_BLOCK_LINK = type { %struct.A_BLOCK_LINK*, i32 }
%struct.tskTaskControlBlock = type { i32*, %struct.xLIST_ITEM, %struct.xLIST_ITEM, i32, i32*, [16 x i8], i32, i32, i32, i8 }
%struct.xLIST_ITEM = type { i32, %struct.xLIST_ITEM*, %struct.xLIST_ITEM*, i8*, %struct.xLIST* }
%struct.xLIST = type { i32, %struct.xLIST_ITEM*, %struct.xMINI_LIST_ITEM }
%struct.xMINI_LIST_ITEM = type { i32, %struct.xLIST_ITEM*, %struct.xLIST_ITEM* }
%struct.vector_table_t = type { i32*, void ()*, void ()*, void ()*, void ()*, void ()*, void ()*, [4 x void ()*], void ()*, void ()*, void ()*, void ()*, void ()*, [82 x void ()*] }
%struct.QueueDefinition = type { i8*, i8*, %union.anon, %struct.xLIST, %struct.xLIST, i32, i32, i32, i8, i8 }
%union.anon = type { %struct.QueuePointers }
%struct.QueuePointers = type { i8*, i8* }
%struct.xTIME_OUT = type { i32, i32 }
%struct.xMEMORY_REGION = type { i8*, i32, i32 }

@.str.1 = private unnamed_addr constant [6 x i8] c"TASK1\00", align 1
@str = private unnamed_addr constant [13 x i8] c"hello world!\00", align 1
@pxEnd = internal unnamed_addr global %struct.A_BLOCK_LINK* null, align 4, !dbg !0
@xBlockAllocatedBit = internal unnamed_addr global i1 false, align 4, !dbg !39
@xFreeBytesRemaining = internal unnamed_addr global i32 0, align 4, !dbg !30
@xStart = internal global %struct.A_BLOCK_LINK zeroinitializer, align 4, !dbg !26
@xMinimumEverFreeBytesRemaining = internal unnamed_addr global i32 0, align 4, !dbg !32
@ucHeap = internal global [3000 x i8] zeroinitializer, align 1, !dbg !34
@uxCriticalNesting = internal unnamed_addr global i32 -1431655766, align 4, !dbg !40
@pxCurrentTCB = dso_local global %struct.tskTaskControlBlock* null, align 4, !dbg !57
@pxReadyTasksLists = internal global [5 x %struct.xLIST] zeroinitializer, align 4, !dbg !122
@uxTopReadyPriority = internal global i32 0, align 4, !dbg !144
@uxTaskNumber = internal unnamed_addr global i32 0, align 4, !dbg !146
@xTasksWaitingTermination = internal global %struct.xLIST zeroinitializer, align 4, !dbg !136
@uxDeletedTasksWaitingCleanUp = internal global i32 0, align 4, !dbg !148
@uxCurrentNumberOfTasks = internal global i32 0, align 4, !dbg !150
@xSchedulerRunning = internal global i32 0, align 4, !dbg !152
@xTickCount = internal global i32 0, align 4, !dbg !155
@xSuspendedTaskList = internal global %struct.xLIST zeroinitializer, align 4, !dbg !138
@uxSchedulerSuspended = internal global i32 0, align 4, !dbg !158
@xPendingReadyList = internal global %struct.xLIST zeroinitializer, align 4, !dbg !134
@.str = private unnamed_addr constant [5 x i8] c"IDLE\00", align 1
@xIdleTaskHandle = internal global %struct.tskTaskControlBlock* null, align 4, !dbg !160
@xNextTaskUnblockTime = internal global i32 0, align 4, !dbg !162
@xYieldPending = internal global i32 0, align 4, !dbg !164
@uxPendedTicks = internal global i32 0, align 4, !dbg !166
@pxDelayedTaskList = internal global %struct.xLIST* null, align 4, !dbg !128
@pxOverflowDelayedTaskList = internal global %struct.xLIST* null, align 4, !dbg !132
@xNumOfOverflows = internal global i32 0, align 4, !dbg !168
@xDelayedTaskList1 = internal global %struct.xLIST zeroinitializer, align 4, !dbg !140
@xDelayedTaskList2 = internal global %struct.xLIST zeroinitializer, align 4, !dbg !142
@rcc_ahb_frequency = dso_local local_unnamed_addr global i32 4000000, align 4, !dbg !171
@switch.table.rcc_osc_ready_int_enable = private unnamed_addr constant [7 x i32] [i32 32, i32 16, i32 8, i32 4, i32 2, i32 1, i32 1024], align 4
@switch.table.rcc_osc_ready_int_disable = private unnamed_addr constant [7 x i32] [i32 -33, i32 -17, i32 -9, i32 -5, i32 -3, i32 -2, i32 -1025], align 4
@rcc_apb1_frequency = dso_local local_unnamed_addr global i32 4000000, align 4, !dbg !188
@rcc_apb2_frequency = dso_local local_unnamed_addr global i32 4000000, align 4, !dbg !190
@_stack = external dso_local global i32, align 4
@vector_table = dso_local local_unnamed_addr global %struct.vector_table_t { i32* @_stack, void ()* @reset_handler, void ()* @nmi_handler, void ()* @hard_fault_handler, void ()* @mem_manage_handler, void ()* @bus_fault_handler, void ()* @usage_fault_handler, [4 x void ()*] zeroinitializer, void ()* @sv_call_handler, void ()* @debug_monitor_handler, void ()* null, void ()* @pend_sv_handler, void ()* @sys_tick_handler, [82 x void ()*] [void ()* @wwdg_isr, void ()* @pvd_pvm_isr, void ()* @tamp_stamp_isr, void ()* @rtc_wkup_isr, void ()* @flash_isr, void ()* @rcc_isr, void ()* @exti0_isr, void ()* @exti1_isr, void ()* @exti2_isr, void ()* @exti3_isr, void ()* @exti4_isr, void ()* @dma1_channel1_isr, void ()* @dma1_channel2_isr, void ()* @dma1_channel3_isr, void ()* @dma1_channel4_isr, void ()* @dma1_channel5_isr, void ()* @dma1_channel6_isr, void ()* @dma1_channel7_isr, void ()* @adc1_2_isr, void ()* @can1_tx_isr, void ()* @can1_rx0_isr, void ()* @can1_rx1_isr, void ()* @can1_sce_isr, void ()* @exti9_5_isr, void ()* @tim1_brk_tim15_isr, void ()* @tim1_up_tim16_isr, void ()* @tim1_trg_com_tim17_isr, void ()* @tim1_cc_isr, void ()* @tim2_isr, void ()* @tim3_isr, void ()* @tim4_isr, void ()* @i2c1_ev_isr, void ()* @i2c1_er_isr, void ()* @i2c2_ev_isr, void ()* @i2c2_er_isr, void ()* @spi1_isr, void ()* @spi2_isr, void ()* @usart1_isr, void ()* @usart2_isr, void ()* @usart3_isr, void ()* @exti15_10_isr, void ()* @rtc_alarm_isr, void ()* @dfsdm3_isr, void ()* @tim8_brk_isr, void ()* @tim8_up_isr, void ()* @tim8_trg_com_isr, void ()* @tim8_cc_isr, void ()* @adc3_isr, void ()* @fmc_isr, void ()* @sdmmc1_isr, void ()* @tim5_isr, void ()* @spi3_isr, void ()* @uart4_isr, void ()* @uart5_isr, void ()* @tim6_dacunder_isr, void ()* @tim7_isr, void ()* @dma2_channel1_isr, void ()* @dma2_channel2_isr, void ()* @dma2_channel3_isr, void ()* @dma2_channel4_isr, void ()* @dma2_channel5_isr, void ()* @dfsdm0_isr, void ()* @dfsdm1_isr, void ()* @dfsdm2_isr, void ()* @comp_isr, void ()* @lptim1_isr, void ()* @lptim2_isr, void ()* @otg_fs_isr, void ()* @dma2_channel6_isr, void ()* @dma2_channel7_isr, void ()* @lpuart1_isr, void ()* @quadspi_isr, void ()* @i2c3_ev_isr, void ()* @i2c3_er_isr, void ()* @sai1_isr, void ()* @sai2_isr, void ()* @swpmi1_isr, void ()* @tsc_isr, void ()* @lcd_isr, void ()* @aes_isr, void ()* @rng_isr, void ()* @fpu_isr] }, section ".vectors", align 4, !dbg !192
@_data_loadaddr = external dso_local global i32, align 4
@_data = external dso_local global i32, align 4
@_edata = external dso_local global i32, align 4
@_ebss = external dso_local global i32, align 4
@__preinit_array_start = external dso_local global void ()*, align 4
@__preinit_array_end = external dso_local global void ()*, align 4
@__init_array_start = external dso_local global void ()*, align 4
@__init_array_end = external dso_local global void ()*, align 4
@__fini_array_start = external dso_local global void ()*, align 4
@__fini_array_end = external dso_local global void ()*, align 4

@nmi_handler = weak dso_local alias void (), void ()* @null_handler
@hard_fault_handler = weak dso_local alias void (), void ()* @blocking_handler
@mem_manage_handler = weak dso_local alias void (), void ()* @blocking_handler
@bus_fault_handler = weak dso_local alias void (), void ()* @blocking_handler
@usage_fault_handler = weak dso_local alias void (), void ()* @blocking_handler
@debug_monitor_handler = weak dso_local alias void (), void ()* @null_handler
@wwdg_isr = weak dso_local alias void (), void ()* @blocking_handler
@pvd_pvm_isr = weak dso_local alias void (), void ()* @blocking_handler
@tamp_stamp_isr = weak dso_local alias void (), void ()* @blocking_handler
@rtc_wkup_isr = weak dso_local alias void (), void ()* @blocking_handler
@flash_isr = weak dso_local alias void (), void ()* @blocking_handler
@rcc_isr = weak dso_local alias void (), void ()* @blocking_handler
@exti0_isr = weak dso_local alias void (), void ()* @blocking_handler
@exti1_isr = weak dso_local alias void (), void ()* @blocking_handler
@exti2_isr = weak dso_local alias void (), void ()* @blocking_handler
@exti3_isr = weak dso_local alias void (), void ()* @blocking_handler
@exti4_isr = weak dso_local alias void (), void ()* @blocking_handler
@dma1_channel1_isr = weak dso_local alias void (), void ()* @blocking_handler
@dma1_channel2_isr = weak dso_local alias void (), void ()* @blocking_handler
@dma1_channel3_isr = weak dso_local alias void (), void ()* @blocking_handler
@dma1_channel4_isr = weak dso_local alias void (), void ()* @blocking_handler
@dma1_channel5_isr = weak dso_local alias void (), void ()* @blocking_handler
@dma1_channel6_isr = weak dso_local alias void (), void ()* @blocking_handler
@dma1_channel7_isr = weak dso_local alias void (), void ()* @blocking_handler
@adc1_2_isr = weak dso_local alias void (), void ()* @blocking_handler
@can1_tx_isr = weak dso_local alias void (), void ()* @blocking_handler
@can1_rx0_isr = weak dso_local alias void (), void ()* @blocking_handler
@can1_rx1_isr = weak dso_local alias void (), void ()* @blocking_handler
@can1_sce_isr = weak dso_local alias void (), void ()* @blocking_handler
@exti9_5_isr = weak dso_local alias void (), void ()* @blocking_handler
@tim1_brk_tim15_isr = weak dso_local alias void (), void ()* @blocking_handler
@tim1_up_tim16_isr = weak dso_local alias void (), void ()* @blocking_handler
@tim1_trg_com_tim17_isr = weak dso_local alias void (), void ()* @blocking_handler
@tim1_cc_isr = weak dso_local alias void (), void ()* @blocking_handler
@tim2_isr = weak dso_local alias void (), void ()* @blocking_handler
@tim3_isr = weak dso_local alias void (), void ()* @blocking_handler
@tim4_isr = weak dso_local alias void (), void ()* @blocking_handler
@i2c1_ev_isr = weak dso_local alias void (), void ()* @blocking_handler
@i2c1_er_isr = weak dso_local alias void (), void ()* @blocking_handler
@i2c2_ev_isr = weak dso_local alias void (), void ()* @blocking_handler
@i2c2_er_isr = weak dso_local alias void (), void ()* @blocking_handler
@spi1_isr = weak dso_local alias void (), void ()* @blocking_handler
@spi2_isr = weak dso_local alias void (), void ()* @blocking_handler
@usart1_isr = weak dso_local alias void (), void ()* @blocking_handler
@usart2_isr = weak dso_local alias void (), void ()* @blocking_handler
@usart3_isr = weak dso_local alias void (), void ()* @blocking_handler
@exti15_10_isr = weak dso_local alias void (), void ()* @blocking_handler
@rtc_alarm_isr = weak dso_local alias void (), void ()* @blocking_handler
@dfsdm3_isr = weak dso_local alias void (), void ()* @blocking_handler
@tim8_brk_isr = weak dso_local alias void (), void ()* @blocking_handler
@tim8_up_isr = weak dso_local alias void (), void ()* @blocking_handler
@tim8_trg_com_isr = weak dso_local alias void (), void ()* @blocking_handler
@tim8_cc_isr = weak dso_local alias void (), void ()* @blocking_handler
@adc3_isr = weak dso_local alias void (), void ()* @blocking_handler
@fmc_isr = weak dso_local alias void (), void ()* @blocking_handler
@sdmmc1_isr = weak dso_local alias void (), void ()* @blocking_handler
@tim5_isr = weak dso_local alias void (), void ()* @blocking_handler
@spi3_isr = weak dso_local alias void (), void ()* @blocking_handler
@uart4_isr = weak dso_local alias void (), void ()* @blocking_handler
@uart5_isr = weak dso_local alias void (), void ()* @blocking_handler
@tim6_dacunder_isr = weak dso_local alias void (), void ()* @blocking_handler
@tim7_isr = weak dso_local alias void (), void ()* @blocking_handler
@dma2_channel1_isr = weak dso_local alias void (), void ()* @blocking_handler
@dma2_channel2_isr = weak dso_local alias void (), void ()* @blocking_handler
@dma2_channel3_isr = weak dso_local alias void (), void ()* @blocking_handler
@dma2_channel4_isr = weak dso_local alias void (), void ()* @blocking_handler
@dma2_channel5_isr = weak dso_local alias void (), void ()* @blocking_handler
@dfsdm0_isr = weak dso_local alias void (), void ()* @blocking_handler
@dfsdm1_isr = weak dso_local alias void (), void ()* @blocking_handler
@dfsdm2_isr = weak dso_local alias void (), void ()* @blocking_handler
@comp_isr = weak dso_local alias void (), void ()* @blocking_handler
@lptim1_isr = weak dso_local alias void (), void ()* @blocking_handler
@lptim2_isr = weak dso_local alias void (), void ()* @blocking_handler
@otg_fs_isr = weak dso_local alias void (), void ()* @blocking_handler
@dma2_channel6_isr = weak dso_local alias void (), void ()* @blocking_handler
@dma2_channel7_isr = weak dso_local alias void (), void ()* @blocking_handler
@lpuart1_isr = weak dso_local alias void (), void ()* @blocking_handler
@quadspi_isr = weak dso_local alias void (), void ()* @blocking_handler
@i2c3_ev_isr = weak dso_local alias void (), void ()* @blocking_handler
@i2c3_er_isr = weak dso_local alias void (), void ()* @blocking_handler
@sai1_isr = weak dso_local alias void (), void ()* @blocking_handler
@sai2_isr = weak dso_local alias void (), void ()* @blocking_handler
@swpmi1_isr = weak dso_local alias void (), void ()* @blocking_handler
@tsc_isr = weak dso_local alias void (), void ()* @blocking_handler
@lcd_isr = weak dso_local alias void (), void ()* @blocking_handler
@aes_isr = weak dso_local alias void (), void ()* @blocking_handler
@rng_isr = weak dso_local alias void (), void ()* @blocking_handler
@fpu_isr = weak dso_local alias void (), void ()* @blocking_handler

; Function Attrs: nofree noinline norecurse noreturn nosync nounwind optsize readnone
define dso_local void @vApplicationStackOverflowHook(%struct.tskTaskControlBlock** nocapture noundef %0, i8* nocapture noundef %1) local_unnamed_addr #0 !dbg !527 {
  call void @llvm.dbg.value(metadata %struct.tskTaskControlBlock** %0, metadata !533, metadata !DIExpression()), !dbg !535
  call void @llvm.dbg.value(metadata i8* %1, metadata !534, metadata !DIExpression()), !dbg !535
  br label %3, !dbg !536

3:                                                ; preds = %3, %2
  br label %3, !dbg !537, !llvm.loop !540
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.value(metadata, metadata, metadata) #1

; Function Attrs: noinline nounwind optsize
define dso_local i32 @_write(i32 noundef %0, i8* nocapture noundef readonly %1, i32 noundef %2) local_unnamed_addr #2 !dbg !543 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !549, metadata !DIExpression()), !dbg !553
  call void @llvm.dbg.value(metadata i8* %1, metadata !550, metadata !DIExpression()), !dbg !553
  call void @llvm.dbg.value(metadata i32 %2, metadata !551, metadata !DIExpression()), !dbg !553
  %4 = add i32 %0, -1, !dbg !554
  %5 = icmp ult i32 %4, 2, !dbg !554
  br i1 %5, label %6, label %20, !dbg !554

6:                                                ; preds = %3
  call void @llvm.dbg.value(metadata i32 0, metadata !552, metadata !DIExpression()), !dbg !553
  %7 = icmp sgt i32 %2, 0, !dbg !556
  br i1 %7, label %8, label %22, !dbg !560

8:                                                ; preds = %6, %15
  %9 = phi i32 [ %18, %15 ], [ 0, %6 ]
  call void @llvm.dbg.value(metadata i32 %9, metadata !552, metadata !DIExpression()), !dbg !553
  %10 = getelementptr inbounds i8, i8* %1, i32 %9, !dbg !561
  %11 = load i8, i8* %10, align 1, !dbg !561, !tbaa !564
  %12 = icmp eq i8 %11, 10, !dbg !567
  br i1 %12, label %13, label %15, !dbg !568

13:                                               ; preds = %8
  tail call void @usart_send_blocking(i32 noundef 1073760256, i16 noundef zeroext 13) #18, !dbg !569
  %14 = load i8, i8* %10, align 1, !dbg !571, !tbaa !564
  br label %15, !dbg !572

15:                                               ; preds = %13, %8
  %16 = phi i8 [ %14, %13 ], [ %11, %8 ], !dbg !571
  %17 = zext i8 %16 to i16, !dbg !571
  tail call void @usart_send_blocking(i32 noundef 1073760256, i16 noundef zeroext %17) #18, !dbg !573
  %18 = add nuw nsw i32 %9, 1, !dbg !574
  call void @llvm.dbg.value(metadata i32 %18, metadata !552, metadata !DIExpression()), !dbg !553
  %19 = icmp eq i32 %18, %2, !dbg !556
  br i1 %19, label %22, label %8, !dbg !560, !llvm.loop !575

20:                                               ; preds = %3
  %21 = tail call i32* @__errno() #18, !dbg !578
  store i32 5, i32* %21, align 4, !dbg !579, !tbaa !580
  br label %22, !dbg !582

22:                                               ; preds = %15, %6, %20
  %23 = phi i32 [ -1, %20 ], [ 0, %6 ], [ %2, %15 ], !dbg !553
  ret i32 %23, !dbg !583
}

; Function Attrs: optsize
declare dso_local i32* @__errno() local_unnamed_addr #3

; Function Attrs: noinline noreturn nounwind optsize
define dso_local i32 @main() local_unnamed_addr #4 !dbg !584 {
  tail call fastcc void @clock_setup() #19, !dbg !588
  tail call fastcc void @usart_setup() #19, !dbg !589
  %1 = tail call i32 @puts(i8* nonnull dereferenceable(1) getelementptr inbounds ([13 x i8], [13 x i8]* @str, i32 0, i32 0)), !dbg !590
  %2 = tail call i32 @xTaskCreate(void (i8*)* noundef nonnull @task1, i8* noundef getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i32 0, i32 0), i16 noundef zeroext 100, i8* noundef null, i32 noundef 4, %struct.tskTaskControlBlock** noundef null) #18, !dbg !591
  tail call void @vTaskStartScheduler() #18, !dbg !592
  br label %3, !dbg !593

3:                                                ; preds = %3, %0
  br label %3, !dbg !594, !llvm.loop !597
}

; Function Attrs: noinline nounwind optsize
define internal fastcc void @clock_setup() unnamed_addr #2 !dbg !600 {
  tail call void @rcc_osc_on(i32 noundef 2) #18, !dbg !601
  %1 = tail call i32 bitcast (void ()* @flash_prefetch_enable to i32 ()*)() #18, !dbg !602
  %2 = tail call i32 bitcast (void (i32)* @flash_set_ws to i32 (i32)*)(i32 noundef 4) #18, !dbg !603
  %3 = tail call i32 bitcast (void ()* @flash_dcache_enable to i32 ()*)() #18, !dbg !604
  %4 = tail call i32 bitcast (void ()* @flash_icache_enable to i32 ()*)() #18, !dbg !605
  tail call void @rcc_set_main_pll(i32 noundef 2, i32 noundef 4, i32 noundef 40, i32 noundef 0, i32 noundef 0, i32 noundef 0) #18, !dbg !606
  tail call void @rcc_osc_on(i32 noundef 0) #18, !dbg !607
  tail call void @rcc_periph_clock_enable(i32 noundef 2434) #18, !dbg !608
  tail call void @rcc_periph_clock_enable(i32 noundef 2834) #18, !dbg !609
  tail call void @rcc_periph_clock_enable(i32 noundef 3072) #18, !dbg !610
  tail call void @rcc_set_sysclk_source(i32 noundef 3) #18, !dbg !611
  tail call void @rcc_wait_for_sysclk_status(i32 noundef 0) #18, !dbg !612
  store i32 80000000, i32* @rcc_ahb_frequency, align 4, !dbg !613, !tbaa !580
  store i32 80000000, i32* @rcc_apb1_frequency, align 4, !dbg !614, !tbaa !580
  store i32 80000000, i32* @rcc_apb2_frequency, align 4, !dbg !615, !tbaa !580
  ret void, !dbg !616
}

; Function Attrs: noinline nounwind optsize
define internal fastcc void @usart_setup() unnamed_addr #2 !dbg !617 {
  tail call void @gpio_mode_setup(i32 noundef 1207961600, i8 noundef zeroext 2, i8 noundef zeroext 0, i16 noundef zeroext 3072) #18, !dbg !618
  tail call void @gpio_set_af(i32 noundef 1207961600, i8 noundef zeroext 7, i16 noundef zeroext 1024) #18, !dbg !619
  tail call void @usart_set_baudrate(i32 noundef 1073760256, i32 noundef 115200) #18, !dbg !620
  tail call void @usart_set_databits(i32 noundef 1073760256, i32 noundef 8) #18, !dbg !621
  tail call void @usart_set_stopbits(i32 noundef 1073760256, i32 noundef 0) #18, !dbg !622
  tail call void @usart_set_mode(i32 noundef 1073760256, i32 noundef 8) #18, !dbg !623
  tail call void @usart_set_parity(i32 noundef 1073760256, i32 noundef 0) #18, !dbg !624
  tail call void @usart_set_flow_control(i32 noundef 1073760256, i32 noundef 0) #18, !dbg !625
  tail call void @usart_enable(i32 noundef 1073760256) #18, !dbg !626
  ret void, !dbg !627
}

; Function Attrs: nofree nounwind
declare noundef i32 @puts(i8* nocapture noundef readonly) local_unnamed_addr #5

; Function Attrs: mustprogress nofree noinline norecurse noreturn nosync nounwind optsize readnone willreturn
define internal void @task1(i8* nocapture noundef %0) #6 !dbg !628 {
  unreachable, !dbg !634
}

; Function Attrs: noinline nounwind optsize
define dso_local i8* @pvPortMalloc(i32 noundef %0) local_unnamed_addr #2 !dbg !635 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !639, metadata !DIExpression()), !dbg !644
  call void @llvm.dbg.value(metadata i8* null, metadata !643, metadata !DIExpression()), !dbg !644
  tail call void @vTaskSuspendAll() #18, !dbg !645
  %2 = load %struct.A_BLOCK_LINK*, %struct.A_BLOCK_LINK** @pxEnd, align 4, !dbg !646, !tbaa !649
  %3 = icmp eq %struct.A_BLOCK_LINK* %2, null, !dbg !651
  br i1 %3, label %4, label %5, !dbg !652

4:                                                ; preds = %1
  tail call fastcc void @prvHeapInit() #19, !dbg !653
  br label %5, !dbg !655

5:                                                ; preds = %1, %4
  %6 = load i1, i1* @xBlockAllocatedBit, align 4, !dbg !656
  %7 = select i1 %6, i32 -2147483648, i32 0, !dbg !656
  %8 = and i32 %7, %0, !dbg !658
  %9 = icmp ne i32 %8, 0, !dbg !659
  %10 = icmp eq i32 %0, 0
  %11 = or i1 %10, %9, !dbg !660
  br i1 %11, label %75, label %12, !dbg !660

12:                                               ; preds = %5
  %13 = add i32 %0, 8, !dbg !661
  call void @llvm.dbg.value(metadata i32 %13, metadata !639, metadata !DIExpression()), !dbg !644
  %14 = and i32 %0, 7, !dbg !665
  %15 = icmp eq i32 %14, 0, !dbg !667
  %16 = add i32 %0, 16, !dbg !668
  %17 = and i32 %16, -8, !dbg !668
  %18 = select i1 %15, i32 %13, i32 %17, !dbg !668
  call void @llvm.dbg.value(metadata i32 %18, metadata !639, metadata !DIExpression()), !dbg !644
  %19 = icmp eq i32 %18, 0, !dbg !669
  %20 = load i32, i32* @xFreeBytesRemaining, align 4
  %21 = icmp ugt i32 %18, %20
  %22 = select i1 %19, i1 true, i1 %21, !dbg !671
  br i1 %22, label %75, label %23, !dbg !671

23:                                               ; preds = %12
  call void @llvm.dbg.value(metadata %struct.A_BLOCK_LINK* @xStart, metadata !641, metadata !DIExpression()), !dbg !644
  %24 = load %struct.A_BLOCK_LINK*, %struct.A_BLOCK_LINK** getelementptr inbounds (%struct.A_BLOCK_LINK, %struct.A_BLOCK_LINK* @xStart, i32 0, i32 0), align 4, !dbg !672, !tbaa !674
  call void @llvm.dbg.value(metadata %struct.A_BLOCK_LINK* %24, metadata !640, metadata !DIExpression()), !dbg !644
  call void @llvm.dbg.value(metadata %struct.A_BLOCK_LINK* @xStart, metadata !641, metadata !DIExpression()), !dbg !644
  %25 = getelementptr inbounds %struct.A_BLOCK_LINK, %struct.A_BLOCK_LINK* %24, i32 0, i32 1, !dbg !676
  %26 = load i32, i32* %25, align 4, !dbg !676, !tbaa !677
  %27 = icmp ult i32 %26, %18, !dbg !678
  br i1 %27, label %28, label %42, !dbg !679

28:                                               ; preds = %23
  call void @llvm.dbg.value(metadata %struct.A_BLOCK_LINK* @xStart, metadata !641, metadata !DIExpression()), !dbg !644
  call void @llvm.dbg.value(metadata %struct.A_BLOCK_LINK* %24, metadata !640, metadata !DIExpression()), !dbg !644
  %29 = getelementptr inbounds %struct.A_BLOCK_LINK, %struct.A_BLOCK_LINK* %24, i32 0, i32 0, !dbg !680
  %30 = load %struct.A_BLOCK_LINK*, %struct.A_BLOCK_LINK** %29, align 4, !dbg !680, !tbaa !674
  %31 = icmp eq %struct.A_BLOCK_LINK* %30, null, !dbg !681
  br i1 %31, label %42, label %32, !dbg !682, !llvm.loop !683

32:                                               ; preds = %28, %38
  %33 = phi %struct.A_BLOCK_LINK* [ %40, %38 ], [ %30, %28 ]
  %34 = phi %struct.A_BLOCK_LINK* [ %33, %38 ], [ %24, %28 ]
  call void @llvm.dbg.value(metadata %struct.A_BLOCK_LINK* %34, metadata !640, metadata !DIExpression()), !dbg !644
  call void @llvm.dbg.value(metadata %struct.A_BLOCK_LINK* %34, metadata !641, metadata !DIExpression()), !dbg !644
  call void @llvm.dbg.value(metadata %struct.A_BLOCK_LINK* %33, metadata !640, metadata !DIExpression()), !dbg !644
  %35 = getelementptr inbounds %struct.A_BLOCK_LINK, %struct.A_BLOCK_LINK* %33, i32 0, i32 1, !dbg !676
  %36 = load i32, i32* %35, align 4, !dbg !676, !tbaa !677
  %37 = icmp ult i32 %36, %18, !dbg !678
  br i1 %37, label %38, label %42, !dbg !679, !llvm.loop !683

38:                                               ; preds = %32
  call void @llvm.dbg.value(metadata %struct.A_BLOCK_LINK* %34, metadata !641, metadata !DIExpression()), !dbg !644
  call void @llvm.dbg.value(metadata %struct.A_BLOCK_LINK* %33, metadata !640, metadata !DIExpression()), !dbg !644
  %39 = getelementptr inbounds %struct.A_BLOCK_LINK, %struct.A_BLOCK_LINK* %33, i32 0, i32 0, !dbg !680
  %40 = load %struct.A_BLOCK_LINK*, %struct.A_BLOCK_LINK** %39, align 4, !dbg !680, !tbaa !674
  %41 = icmp eq %struct.A_BLOCK_LINK* %40, null, !dbg !681
  br i1 %41, label %42, label %32, !dbg !682, !llvm.loop !683

42:                                               ; preds = %32, %38, %28, %23
  %43 = phi %struct.A_BLOCK_LINK* [ %24, %23 ], [ %24, %28 ], [ %33, %38 ], [ %33, %32 ]
  %44 = phi %struct.A_BLOCK_LINK* [ @xStart, %23 ], [ @xStart, %28 ], [ %34, %38 ], [ %34, %32 ], !dbg !685
  %45 = phi i32 [ %26, %23 ], [ %26, %28 ], [ %36, %38 ], [ %36, %32 ], !dbg !676
  %46 = getelementptr inbounds %struct.A_BLOCK_LINK, %struct.A_BLOCK_LINK* %43, i32 0, i32 1, !dbg !676
  %47 = load %struct.A_BLOCK_LINK*, %struct.A_BLOCK_LINK** @pxEnd, align 4, !dbg !686, !tbaa !649
  %48 = icmp eq %struct.A_BLOCK_LINK* %43, %47, !dbg !688
  br i1 %48, label %75, label %49, !dbg !689

49:                                               ; preds = %42
  %50 = getelementptr inbounds %struct.A_BLOCK_LINK, %struct.A_BLOCK_LINK* %44, i32 0, i32 0, !dbg !690
  %51 = bitcast %struct.A_BLOCK_LINK* %44 to i8**, !dbg !690
  %52 = load i8*, i8** %51, align 4, !dbg !690, !tbaa !674
  %53 = getelementptr inbounds i8, i8* %52, i32 8, !dbg !692
  call void @llvm.dbg.value(metadata i8* %53, metadata !643, metadata !DIExpression()), !dbg !644
  %54 = getelementptr inbounds %struct.A_BLOCK_LINK, %struct.A_BLOCK_LINK* %43, i32 0, i32 0, !dbg !693
  %55 = load %struct.A_BLOCK_LINK*, %struct.A_BLOCK_LINK** %54, align 4, !dbg !693, !tbaa !674
  store %struct.A_BLOCK_LINK* %55, %struct.A_BLOCK_LINK** %50, align 4, !dbg !694, !tbaa !674
  %56 = sub i32 %45, %18, !dbg !695
  %57 = icmp ugt i32 %56, 16, !dbg !697
  br i1 %57, label %58, label %64, !dbg !698

58:                                               ; preds = %49
  %59 = bitcast %struct.A_BLOCK_LINK* %43 to i8*, !dbg !699
  %60 = getelementptr inbounds i8, i8* %59, i32 %18, !dbg !701
  %61 = bitcast i8* %60 to %struct.A_BLOCK_LINK*, !dbg !702
  call void @llvm.dbg.value(metadata %struct.A_BLOCK_LINK* %61, metadata !642, metadata !DIExpression()), !dbg !644
  %62 = getelementptr inbounds i8, i8* %60, i32 4, !dbg !703
  %63 = bitcast i8* %62 to i32*, !dbg !703
  store i32 %56, i32* %63, align 4, !dbg !704, !tbaa !677
  store i32 %18, i32* %46, align 4, !dbg !705, !tbaa !677
  tail call fastcc void @prvInsertBlockIntoFreeList(%struct.A_BLOCK_LINK* noundef nonnull %61) #19, !dbg !706
  br label %64, !dbg !707

64:                                               ; preds = %49, %58
  %65 = load i32, i32* %46, align 4, !dbg !708, !tbaa !677
  %66 = load i32, i32* @xFreeBytesRemaining, align 4, !dbg !709, !tbaa !580
  %67 = sub i32 %66, %65, !dbg !709
  store i32 %67, i32* @xFreeBytesRemaining, align 4, !dbg !709, !tbaa !580
  %68 = load i32, i32* @xMinimumEverFreeBytesRemaining, align 4, !dbg !710, !tbaa !580
  %69 = icmp ult i32 %67, %68, !dbg !712
  br i1 %69, label %70, label %71, !dbg !713

70:                                               ; preds = %64
  store i32 %67, i32* @xMinimumEverFreeBytesRemaining, align 4, !dbg !714, !tbaa !580
  br label %71, !dbg !716

71:                                               ; preds = %64, %70
  %72 = load i1, i1* @xBlockAllocatedBit, align 4, !dbg !717
  %73 = select i1 %72, i32 -2147483648, i32 0, !dbg !717
  %74 = or i32 %65, %73, !dbg !718
  store i32 %74, i32* %46, align 4, !dbg !718, !tbaa !677
  store %struct.A_BLOCK_LINK* null, %struct.A_BLOCK_LINK** %54, align 4, !dbg !719, !tbaa !674
  br label %75, !dbg !720

75:                                               ; preds = %5, %42, %71, %12
  %76 = phi i8* [ %53, %71 ], [ null, %42 ], [ null, %12 ], [ null, %5 ], !dbg !644
  call void @llvm.dbg.value(metadata i8* %76, metadata !643, metadata !DIExpression()), !dbg !644
  %77 = tail call i32 @xTaskResumeAll() #18, !dbg !721
  ret i8* %76, !dbg !722
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn
define internal fastcc void @prvHeapInit() unnamed_addr #7 !dbg !723 {
  call void @llvm.dbg.value(metadata i32 3000, metadata !728, metadata !DIExpression()), !dbg !729
  call void @llvm.dbg.value(metadata i32 ptrtoint ([3000 x i8]* @ucHeap to i32), metadata !727, metadata !DIExpression()), !dbg !729
  call void @llvm.dbg.value(metadata i32 select (i1 icmp ne (i32 and (i32 ptrtoint ([3000 x i8]* @ucHeap to i32), i32 7), i32 0), i32 sub (i32 3000, i32 sub (i32 and (i32 add (i32 ptrtoint ([3000 x i8]* @ucHeap to i32), i32 7), i32 -8), i32 ptrtoint ([3000 x i8]* @ucHeap to i32))), i32 3000), metadata !728, metadata !DIExpression()), !dbg !729
  call void @llvm.dbg.value(metadata i32 select (i1 icmp ne (i32 and (i32 ptrtoint ([3000 x i8]* @ucHeap to i32), i32 7), i32 0), i32 and (i32 add (i32 ptrtoint ([3000 x i8]* @ucHeap to i32), i32 7), i32 -8), i32 ptrtoint ([3000 x i8]* @ucHeap to i32)), metadata !727, metadata !DIExpression()), !dbg !729
  call void @llvm.dbg.value(metadata %struct.A_BLOCK_LINK* inttoptr (i32 select (i1 icmp ne (i32 and (i32 ptrtoint ([3000 x i8]* @ucHeap to i32), i32 7), i32 0), i32 and (i32 add (i32 ptrtoint ([3000 x i8]* @ucHeap to i32), i32 7), i32 -8), i32 ptrtoint ([3000 x i8]* @ucHeap to i32)) to %struct.A_BLOCK_LINK*), metadata !726, metadata !DIExpression()), !dbg !729
  store %struct.A_BLOCK_LINK* inttoptr (i32 select (i1 icmp ne (i32 and (i32 ptrtoint ([3000 x i8]* @ucHeap to i32), i32 7), i32 0), i32 and (i32 add (i32 ptrtoint ([3000 x i8]* @ucHeap to i32), i32 7), i32 -8), i32 ptrtoint ([3000 x i8]* @ucHeap to i32)) to %struct.A_BLOCK_LINK*), %struct.A_BLOCK_LINK** getelementptr inbounds (%struct.A_BLOCK_LINK, %struct.A_BLOCK_LINK* @xStart, i32 0, i32 0), align 4, !dbg !730, !tbaa !674
  store i32 0, i32* getelementptr inbounds (%struct.A_BLOCK_LINK, %struct.A_BLOCK_LINK* @xStart, i32 0, i32 1), align 4, !dbg !731, !tbaa !677
  call void @llvm.dbg.value(metadata i32 add (i32 select (i1 icmp ne (i32 and (i32 ptrtoint ([3000 x i8]* @ucHeap to i32), i32 7), i32 0), i32 and (i32 add (i32 ptrtoint ([3000 x i8]* @ucHeap to i32), i32 7), i32 -8), i32 ptrtoint ([3000 x i8]* @ucHeap to i32)), i32 select (i1 icmp ne (i32 and (i32 ptrtoint ([3000 x i8]* @ucHeap to i32), i32 7), i32 0), i32 sub (i32 3000, i32 sub (i32 and (i32 add (i32 ptrtoint ([3000 x i8]* @ucHeap to i32), i32 7), i32 -8), i32 ptrtoint ([3000 x i8]* @ucHeap to i32))), i32 3000)), metadata !727, metadata !DIExpression()), !dbg !729
  call void @llvm.dbg.value(metadata i32 add (i32 add (i32 select (i1 icmp ne (i32 and (i32 ptrtoint ([3000 x i8]* @ucHeap to i32), i32 7), i32 0), i32 and (i32 add (i32 ptrtoint ([3000 x i8]* @ucHeap to i32), i32 7), i32 -8), i32 ptrtoint ([3000 x i8]* @ucHeap to i32)), i32 select (i1 icmp ne (i32 and (i32 ptrtoint ([3000 x i8]* @ucHeap to i32), i32 7), i32 0), i32 sub (i32 3000, i32 sub (i32 and (i32 add (i32 ptrtoint ([3000 x i8]* @ucHeap to i32), i32 7), i32 -8), i32 ptrtoint ([3000 x i8]* @ucHeap to i32))), i32 3000)), i32 -8), metadata !727, metadata !DIExpression()), !dbg !729
  call void @llvm.dbg.value(metadata i32 and (i32 add (i32 add (i32 select (i1 icmp ne (i32 and (i32 ptrtoint ([3000 x i8]* @ucHeap to i32), i32 7), i32 0), i32 and (i32 add (i32 ptrtoint ([3000 x i8]* @ucHeap to i32), i32 7), i32 -8), i32 ptrtoint ([3000 x i8]* @ucHeap to i32)), i32 select (i1 icmp ne (i32 and (i32 ptrtoint ([3000 x i8]* @ucHeap to i32), i32 7), i32 0), i32 sub (i32 3000, i32 sub (i32 and (i32 add (i32 ptrtoint ([3000 x i8]* @ucHeap to i32), i32 7), i32 -8), i32 ptrtoint ([3000 x i8]* @ucHeap to i32))), i32 3000)), i32 -8), i32 -8), metadata !727, metadata !DIExpression()), !dbg !729
  store %struct.A_BLOCK_LINK* inttoptr (i32 and (i32 add (i32 add (i32 select (i1 icmp ne (i32 and (i32 ptrtoint ([3000 x i8]* @ucHeap to i32), i32 7), i32 0), i32 and (i32 add (i32 ptrtoint ([3000 x i8]* @ucHeap to i32), i32 7), i32 -8), i32 ptrtoint ([3000 x i8]* @ucHeap to i32)), i32 select (i1 icmp ne (i32 and (i32 ptrtoint ([3000 x i8]* @ucHeap to i32), i32 7), i32 0), i32 sub (i32 3000, i32 sub (i32 and (i32 add (i32 ptrtoint ([3000 x i8]* @ucHeap to i32), i32 7), i32 -8), i32 ptrtoint ([3000 x i8]* @ucHeap to i32))), i32 3000)), i32 -8), i32 -8) to %struct.A_BLOCK_LINK*), %struct.A_BLOCK_LINK** @pxEnd, align 4, !dbg !732, !tbaa !649
  store i32 0, i32* getelementptr inbounds (%struct.A_BLOCK_LINK, %struct.A_BLOCK_LINK* inttoptr (i32 and (i32 add (i32 add (i32 select (i1 icmp ne (i32 and (i32 ptrtoint ([3000 x i8]* @ucHeap to i32), i32 7), i32 0), i32 and (i32 add (i32 ptrtoint ([3000 x i8]* @ucHeap to i32), i32 7), i32 -8), i32 ptrtoint ([3000 x i8]* @ucHeap to i32)), i32 select (i1 icmp ne (i32 and (i32 ptrtoint ([3000 x i8]* @ucHeap to i32), i32 7), i32 0), i32 sub (i32 3000, i32 sub (i32 and (i32 add (i32 ptrtoint ([3000 x i8]* @ucHeap to i32), i32 7), i32 -8), i32 ptrtoint ([3000 x i8]* @ucHeap to i32))), i32 3000)), i32 -8), i32 -8) to %struct.A_BLOCK_LINK*), i32 0, i32 1), align 4, !dbg !733, !tbaa !677
  store %struct.A_BLOCK_LINK* null, %struct.A_BLOCK_LINK** getelementptr inbounds (%struct.A_BLOCK_LINK, %struct.A_BLOCK_LINK* inttoptr (i32 and (i32 add (i32 add (i32 select (i1 icmp ne (i32 and (i32 ptrtoint ([3000 x i8]* @ucHeap to i32), i32 7), i32 0), i32 and (i32 add (i32 ptrtoint ([3000 x i8]* @ucHeap to i32), i32 7), i32 -8), i32 ptrtoint ([3000 x i8]* @ucHeap to i32)), i32 select (i1 icmp ne (i32 and (i32 ptrtoint ([3000 x i8]* @ucHeap to i32), i32 7), i32 0), i32 sub (i32 3000, i32 sub (i32 and (i32 add (i32 ptrtoint ([3000 x i8]* @ucHeap to i32), i32 7), i32 -8), i32 ptrtoint ([3000 x i8]* @ucHeap to i32))), i32 3000)), i32 -8), i32 -8) to %struct.A_BLOCK_LINK*), i32 0, i32 0), align 8, !dbg !734, !tbaa !674
  call void @llvm.dbg.value(metadata %struct.A_BLOCK_LINK* inttoptr (i32 select (i1 icmp ne (i32 and (i32 ptrtoint ([3000 x i8]* @ucHeap to i32), i32 7), i32 0), i32 and (i32 add (i32 ptrtoint ([3000 x i8]* @ucHeap to i32), i32 7), i32 -8), i32 ptrtoint ([3000 x i8]* @ucHeap to i32)) to %struct.A_BLOCK_LINK*), metadata !725, metadata !DIExpression()), !dbg !729
  store i32 sub (i32 and (i32 add (i32 add (i32 select (i1 icmp ne (i32 and (i32 ptrtoint ([3000 x i8]* @ucHeap to i32), i32 7), i32 0), i32 and (i32 add (i32 ptrtoint ([3000 x i8]* @ucHeap to i32), i32 7), i32 -8), i32 ptrtoint ([3000 x i8]* @ucHeap to i32)), i32 select (i1 icmp ne (i32 and (i32 ptrtoint ([3000 x i8]* @ucHeap to i32), i32 7), i32 0), i32 sub (i32 3000, i32 sub (i32 and (i32 add (i32 ptrtoint ([3000 x i8]* @ucHeap to i32), i32 7), i32 -8), i32 ptrtoint ([3000 x i8]* @ucHeap to i32))), i32 3000)), i32 -8), i32 -8), i32 select (i1 icmp ne (i32 and (i32 ptrtoint ([3000 x i8]* @ucHeap to i32), i32 7), i32 0), i32 and (i32 add (i32 ptrtoint ([3000 x i8]* @ucHeap to i32), i32 7), i32 -8), i32 ptrtoint ([3000 x i8]* @ucHeap to i32))), i32* getelementptr inbounds (%struct.A_BLOCK_LINK, %struct.A_BLOCK_LINK* inttoptr (i32 select (i1 icmp ne (i32 and (i32 ptrtoint ([3000 x i8]* @ucHeap to i32), i32 7), i32 0), i32 and (i32 add (i32 ptrtoint ([3000 x i8]* @ucHeap to i32), i32 7), i32 -8), i32 ptrtoint ([3000 x i8]* @ucHeap to i32)) to %struct.A_BLOCK_LINK*), i32 0, i32 1), align 4, !dbg !735, !tbaa !677
  %1 = load %struct.A_BLOCK_LINK*, %struct.A_BLOCK_LINK** @pxEnd, align 4, !dbg !736, !tbaa !649
  store %struct.A_BLOCK_LINK* %1, %struct.A_BLOCK_LINK** getelementptr inbounds (%struct.A_BLOCK_LINK, %struct.A_BLOCK_LINK* inttoptr (i32 select (i1 icmp ne (i32 and (i32 ptrtoint ([3000 x i8]* @ucHeap to i32), i32 7), i32 0), i32 and (i32 add (i32 ptrtoint ([3000 x i8]* @ucHeap to i32), i32 7), i32 -8), i32 ptrtoint ([3000 x i8]* @ucHeap to i32)) to %struct.A_BLOCK_LINK*), i32 0, i32 0), align 4, !dbg !737, !tbaa !674
  store i32 sub (i32 and (i32 add (i32 add (i32 select (i1 icmp ne (i32 and (i32 ptrtoint ([3000 x i8]* @ucHeap to i32), i32 7), i32 0), i32 and (i32 add (i32 ptrtoint ([3000 x i8]* @ucHeap to i32), i32 7), i32 -8), i32 ptrtoint ([3000 x i8]* @ucHeap to i32)), i32 select (i1 icmp ne (i32 and (i32 ptrtoint ([3000 x i8]* @ucHeap to i32), i32 7), i32 0), i32 sub (i32 3000, i32 sub (i32 and (i32 add (i32 ptrtoint ([3000 x i8]* @ucHeap to i32), i32 7), i32 -8), i32 ptrtoint ([3000 x i8]* @ucHeap to i32))), i32 3000)), i32 -8), i32 -8), i32 select (i1 icmp ne (i32 and (i32 ptrtoint ([3000 x i8]* @ucHeap to i32), i32 7), i32 0), i32 and (i32 add (i32 ptrtoint ([3000 x i8]* @ucHeap to i32), i32 7), i32 -8), i32 ptrtoint ([3000 x i8]* @ucHeap to i32))), i32* @xMinimumEverFreeBytesRemaining, align 4, !dbg !738, !tbaa !580
  store i32 sub (i32 and (i32 add (i32 add (i32 select (i1 icmp ne (i32 and (i32 ptrtoint ([3000 x i8]* @ucHeap to i32), i32 7), i32 0), i32 and (i32 add (i32 ptrtoint ([3000 x i8]* @ucHeap to i32), i32 7), i32 -8), i32 ptrtoint ([3000 x i8]* @ucHeap to i32)), i32 select (i1 icmp ne (i32 and (i32 ptrtoint ([3000 x i8]* @ucHeap to i32), i32 7), i32 0), i32 sub (i32 3000, i32 sub (i32 and (i32 add (i32 ptrtoint ([3000 x i8]* @ucHeap to i32), i32 7), i32 -8), i32 ptrtoint ([3000 x i8]* @ucHeap to i32))), i32 3000)), i32 -8), i32 -8), i32 select (i1 icmp ne (i32 and (i32 ptrtoint ([3000 x i8]* @ucHeap to i32), i32 7), i32 0), i32 and (i32 add (i32 ptrtoint ([3000 x i8]* @ucHeap to i32), i32 7), i32 -8), i32 ptrtoint ([3000 x i8]* @ucHeap to i32))), i32* @xFreeBytesRemaining, align 4, !dbg !739, !tbaa !580
  store i1 true, i1* @xBlockAllocatedBit, align 4, !dbg !740
  ret void, !dbg !741
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize
define internal fastcc void @prvInsertBlockIntoFreeList(%struct.A_BLOCK_LINK* noundef %0) unnamed_addr #8 !dbg !742 {
  call void @llvm.dbg.value(metadata %struct.A_BLOCK_LINK* %0, metadata !746, metadata !DIExpression()), !dbg !749
  call void @llvm.dbg.value(metadata %struct.A_BLOCK_LINK* @xStart, metadata !747, metadata !DIExpression()), !dbg !749
  br label %2, !dbg !750

2:                                                ; preds = %2, %1
  %3 = phi %struct.A_BLOCK_LINK* [ @xStart, %1 ], [ %5, %2 ], !dbg !752
  call void @llvm.dbg.value(metadata %struct.A_BLOCK_LINK* %3, metadata !747, metadata !DIExpression()), !dbg !749
  %4 = getelementptr inbounds %struct.A_BLOCK_LINK, %struct.A_BLOCK_LINK* %3, i32 0, i32 0, !dbg !753
  %5 = load %struct.A_BLOCK_LINK*, %struct.A_BLOCK_LINK** %4, align 4, !dbg !753, !tbaa !674
  %6 = icmp ult %struct.A_BLOCK_LINK* %5, %0, !dbg !755
  br i1 %6, label %2, label %7, !dbg !756, !llvm.loop !757

7:                                                ; preds = %2
  %8 = getelementptr inbounds %struct.A_BLOCK_LINK, %struct.A_BLOCK_LINK* %3, i32 0, i32 0, !dbg !753
  %9 = bitcast %struct.A_BLOCK_LINK* %3 to i8*, !dbg !759
  call void @llvm.dbg.value(metadata i8* %9, metadata !748, metadata !DIExpression()), !dbg !749
  %10 = getelementptr inbounds %struct.A_BLOCK_LINK, %struct.A_BLOCK_LINK* %3, i32 0, i32 1, !dbg !760
  %11 = load i32, i32* %10, align 4, !dbg !760, !tbaa !677
  %12 = getelementptr inbounds i8, i8* %9, i32 %11, !dbg !762
  %13 = bitcast %struct.A_BLOCK_LINK* %0 to i8*, !dbg !763
  %14 = icmp eq i8* %12, %13, !dbg !764
  %15 = getelementptr inbounds %struct.A_BLOCK_LINK, %struct.A_BLOCK_LINK* %0, i32 0, i32 1
  %16 = load i32, i32* %15, align 4, !dbg !749, !tbaa !677
  br i1 %14, label %17, label %19, !dbg !765

17:                                               ; preds = %7
  %18 = add i32 %16, %11, !dbg !766
  store i32 %18, i32* %10, align 4, !dbg !766, !tbaa !677
  call void @llvm.dbg.value(metadata %struct.A_BLOCK_LINK* %3, metadata !746, metadata !DIExpression()), !dbg !749
  br label %19, !dbg !768

19:                                               ; preds = %7, %17
  %20 = phi i8* [ %9, %17 ], [ %13, %7 ], !dbg !769
  %21 = phi i32 [ %18, %17 ], [ %16, %7 ], !dbg !770
  %22 = phi %struct.A_BLOCK_LINK* [ %3, %17 ], [ %0, %7 ]
  call void @llvm.dbg.value(metadata %struct.A_BLOCK_LINK* %22, metadata !746, metadata !DIExpression()), !dbg !749
  call void @llvm.dbg.value(metadata i8* %20, metadata !748, metadata !DIExpression()), !dbg !749
  %23 = getelementptr inbounds i8, i8* %20, i32 %21, !dbg !772
  %24 = bitcast %struct.A_BLOCK_LINK* %5 to i8*, !dbg !773
  %25 = icmp ne i8* %23, %24, !dbg !774
  %26 = load %struct.A_BLOCK_LINK*, %struct.A_BLOCK_LINK** @pxEnd, align 4
  %27 = icmp eq %struct.A_BLOCK_LINK* %5, %26
  %28 = select i1 %25, i1 true, i1 %27, !dbg !775
  br i1 %28, label %36, label %29, !dbg !775

29:                                               ; preds = %19
  %30 = getelementptr inbounds %struct.A_BLOCK_LINK, %struct.A_BLOCK_LINK* %22, i32 0, i32 1, !dbg !770
  %31 = getelementptr inbounds %struct.A_BLOCK_LINK, %struct.A_BLOCK_LINK* %5, i32 0, i32 1, !dbg !776
  %32 = load i32, i32* %31, align 4, !dbg !776, !tbaa !677
  %33 = add i32 %32, %21, !dbg !780
  store i32 %33, i32* %30, align 4, !dbg !780, !tbaa !677
  %34 = getelementptr inbounds %struct.A_BLOCK_LINK, %struct.A_BLOCK_LINK* %5, i32 0, i32 0, !dbg !781
  %35 = load %struct.A_BLOCK_LINK*, %struct.A_BLOCK_LINK** %34, align 4, !dbg !781, !tbaa !674
  br label %36, !dbg !782

36:                                               ; preds = %19, %29
  %37 = phi %struct.A_BLOCK_LINK* [ %35, %29 ], [ %5, %19 ]
  %38 = getelementptr inbounds %struct.A_BLOCK_LINK, %struct.A_BLOCK_LINK* %22, i32 0, i32 0, !dbg !783
  store %struct.A_BLOCK_LINK* %37, %struct.A_BLOCK_LINK** %38, align 4, !dbg !783, !tbaa !674
  %39 = icmp eq %struct.A_BLOCK_LINK* %3, %22, !dbg !784
  br i1 %39, label %41, label %40, !dbg !786

40:                                               ; preds = %36
  store %struct.A_BLOCK_LINK* %22, %struct.A_BLOCK_LINK** %8, align 4, !dbg !787, !tbaa !674
  br label %41, !dbg !789

41:                                               ; preds = %36, %40
  ret void, !dbg !790
}

; Function Attrs: noinline nounwind optsize
define dso_local void @vPortFree(i8* noundef %0) local_unnamed_addr #2 !dbg !791 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !793, metadata !DIExpression()), !dbg !796
  call void @llvm.dbg.value(metadata i8* %0, metadata !794, metadata !DIExpression()), !dbg !796
  %2 = icmp eq i8* %0, null, !dbg !797
  br i1 %2, label %24, label %3, !dbg !799

3:                                                ; preds = %1
  %4 = getelementptr inbounds i8, i8* %0, i32 -8, !dbg !800
  call void @llvm.dbg.value(metadata i8* %4, metadata !794, metadata !DIExpression()), !dbg !796
  %5 = bitcast i8* %4 to %struct.A_BLOCK_LINK*, !dbg !802
  call void @llvm.dbg.value(metadata %struct.A_BLOCK_LINK* %5, metadata !795, metadata !DIExpression()), !dbg !796
  %6 = getelementptr inbounds i8, i8* %0, i32 -4, !dbg !803
  %7 = bitcast i8* %6 to i32*, !dbg !803
  %8 = load i32, i32* %7, align 4, !dbg !803, !tbaa !677
  %9 = load i1, i1* @xBlockAllocatedBit, align 4, !dbg !805
  %10 = select i1 %9, i32 -2147483648, i32 0, !dbg !805
  %11 = and i32 %10, %8, !dbg !806
  %12 = icmp eq i32 %11, 0, !dbg !807
  br i1 %12, label %24, label %13, !dbg !808

13:                                               ; preds = %3
  %14 = bitcast i8* %4 to %struct.A_BLOCK_LINK**, !dbg !809
  %15 = load %struct.A_BLOCK_LINK*, %struct.A_BLOCK_LINK** %14, align 4, !dbg !809, !tbaa !674
  %16 = icmp eq %struct.A_BLOCK_LINK* %15, null, !dbg !812
  br i1 %16, label %17, label %24, !dbg !813

17:                                               ; preds = %13
  %18 = xor i32 %10, -1, !dbg !814
  %19 = and i32 %8, %18, !dbg !816
  store i32 %19, i32* %7, align 4, !dbg !816, !tbaa !677
  tail call void @vTaskSuspendAll() #18, !dbg !817
  %20 = load i32, i32* %7, align 4, !dbg !818, !tbaa !677
  %21 = load i32, i32* @xFreeBytesRemaining, align 4, !dbg !820, !tbaa !580
  %22 = add i32 %21, %20, !dbg !820
  store i32 %22, i32* @xFreeBytesRemaining, align 4, !dbg !820, !tbaa !580
  tail call fastcc void @prvInsertBlockIntoFreeList(%struct.A_BLOCK_LINK* noundef nonnull %5) #19, !dbg !821
  %23 = tail call i32 @xTaskResumeAll() #18, !dbg !822
  br label %24, !dbg !823

24:                                               ; preds = %13, %17, %3, %1
  ret void, !dbg !824
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize readonly willreturn
define dso_local i32 @xPortGetFreeHeapSize() local_unnamed_addr #9 !dbg !825 {
  %1 = load i32, i32* @xFreeBytesRemaining, align 4, !dbg !828, !tbaa !580
  ret i32 %1, !dbg !829
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize readonly willreturn
define dso_local i32 @xPortGetMinimumEverFreeHeapSize() local_unnamed_addr #9 !dbg !830 {
  %1 = load i32, i32* @xMinimumEverFreeBytesRemaining, align 4, !dbg !831, !tbaa !580
  ret i32 %1, !dbg !832
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize readnone willreturn
define dso_local void @vPortInitialiseBlocks() local_unnamed_addr #10 !dbg !833 {
  ret void, !dbg !834
}

; Function Attrs: nofree noinline norecurse nounwind optsize
define dso_local void @vListInitialise(%struct.xLIST* noundef %0) local_unnamed_addr #11 !dbg !835 {
  call void @llvm.dbg.value(metadata %struct.xLIST* %0, metadata !842, metadata !DIExpression()), !dbg !843
  %2 = getelementptr inbounds %struct.xLIST, %struct.xLIST* %0, i32 0, i32 2, !dbg !844
  %3 = getelementptr inbounds %struct.xLIST, %struct.xLIST* %0, i32 0, i32 1, !dbg !845
  %4 = bitcast %struct.xLIST_ITEM** %3 to %struct.xMINI_LIST_ITEM**, !dbg !846
  store %struct.xMINI_LIST_ITEM* %2, %struct.xMINI_LIST_ITEM** %4, align 4, !dbg !846, !tbaa !847
  %5 = getelementptr inbounds %struct.xMINI_LIST_ITEM, %struct.xMINI_LIST_ITEM* %2, i32 0, i32 0, !dbg !851
  store i32 -1, i32* %5, align 4, !dbg !852, !tbaa !853
  %6 = getelementptr inbounds %struct.xLIST, %struct.xLIST* %0, i32 0, i32 2, i32 1, !dbg !854
  %7 = bitcast %struct.xLIST_ITEM** %6 to %struct.xMINI_LIST_ITEM**, !dbg !855
  store %struct.xMINI_LIST_ITEM* %2, %struct.xMINI_LIST_ITEM** %7, align 4, !dbg !855, !tbaa !856
  %8 = getelementptr inbounds %struct.xLIST, %struct.xLIST* %0, i32 0, i32 2, i32 2, !dbg !857
  %9 = bitcast %struct.xLIST_ITEM** %8 to %struct.xMINI_LIST_ITEM**, !dbg !858
  store %struct.xMINI_LIST_ITEM* %2, %struct.xMINI_LIST_ITEM** %9, align 4, !dbg !858, !tbaa !859
  %10 = getelementptr inbounds %struct.xLIST, %struct.xLIST* %0, i32 0, i32 0, !dbg !860
  store volatile i32 0, i32* %10, align 4, !dbg !861, !tbaa !862
  ret void, !dbg !863
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn writeonly
define dso_local void @vListInitialiseItem(%struct.xLIST_ITEM* nocapture noundef writeonly %0) local_unnamed_addr #12 !dbg !864 {
  call void @llvm.dbg.value(metadata %struct.xLIST_ITEM* %0, metadata !869, metadata !DIExpression()), !dbg !870
  %2 = getelementptr inbounds %struct.xLIST_ITEM, %struct.xLIST_ITEM* %0, i32 0, i32 4, !dbg !871
  store %struct.xLIST* null, %struct.xLIST** %2, align 4, !dbg !872, !tbaa !873
  ret void, !dbg !875
}

; Function Attrs: nofree noinline norecurse nounwind optsize
define dso_local void @vListInsertEnd(%struct.xLIST* noundef %0, %struct.xLIST_ITEM* noundef %1) local_unnamed_addr #11 !dbg !876 {
  call void @llvm.dbg.value(metadata %struct.xLIST* %0, metadata !880, metadata !DIExpression()), !dbg !883
  call void @llvm.dbg.value(metadata %struct.xLIST_ITEM* %1, metadata !881, metadata !DIExpression()), !dbg !883
  %3 = getelementptr inbounds %struct.xLIST, %struct.xLIST* %0, i32 0, i32 1, !dbg !884
  %4 = load %struct.xLIST_ITEM*, %struct.xLIST_ITEM** %3, align 4, !dbg !884, !tbaa !847
  call void @llvm.dbg.value(metadata %struct.xLIST_ITEM* %4, metadata !882, metadata !DIExpression()), !dbg !883
  %5 = getelementptr inbounds %struct.xLIST_ITEM, %struct.xLIST_ITEM* %1, i32 0, i32 1, !dbg !885
  store %struct.xLIST_ITEM* %4, %struct.xLIST_ITEM** %5, align 4, !dbg !886, !tbaa !887
  %6 = getelementptr inbounds %struct.xLIST_ITEM, %struct.xLIST_ITEM* %4, i32 0, i32 2, !dbg !888
  %7 = load %struct.xLIST_ITEM*, %struct.xLIST_ITEM** %6, align 4, !dbg !888, !tbaa !889
  %8 = getelementptr inbounds %struct.xLIST_ITEM, %struct.xLIST_ITEM* %1, i32 0, i32 2, !dbg !890
  store %struct.xLIST_ITEM* %7, %struct.xLIST_ITEM** %8, align 4, !dbg !891, !tbaa !889
  %9 = load %struct.xLIST_ITEM*, %struct.xLIST_ITEM** %6, align 4, !dbg !892, !tbaa !889
  %10 = getelementptr inbounds %struct.xLIST_ITEM, %struct.xLIST_ITEM* %9, i32 0, i32 1, !dbg !893
  store %struct.xLIST_ITEM* %1, %struct.xLIST_ITEM** %10, align 4, !dbg !894, !tbaa !887
  store %struct.xLIST_ITEM* %1, %struct.xLIST_ITEM** %6, align 4, !dbg !895, !tbaa !889
  %11 = getelementptr inbounds %struct.xLIST_ITEM, %struct.xLIST_ITEM* %1, i32 0, i32 4, !dbg !896
  store %struct.xLIST* %0, %struct.xLIST** %11, align 4, !dbg !897, !tbaa !873
  %12 = getelementptr inbounds %struct.xLIST, %struct.xLIST* %0, i32 0, i32 0, !dbg !898
  %13 = load volatile i32, i32* %12, align 4, !dbg !899, !tbaa !862
  %14 = add i32 %13, 1, !dbg !899
  store volatile i32 %14, i32* %12, align 4, !dbg !899, !tbaa !862
  ret void, !dbg !900
}

; Function Attrs: nofree noinline norecurse nounwind optsize
define dso_local void @vListInsert(%struct.xLIST* noundef %0, %struct.xLIST_ITEM* noundef %1) local_unnamed_addr #11 !dbg !901 {
  call void @llvm.dbg.value(metadata %struct.xLIST* %0, metadata !903, metadata !DIExpression()), !dbg !908
  call void @llvm.dbg.value(metadata %struct.xLIST_ITEM* %1, metadata !904, metadata !DIExpression()), !dbg !908
  %3 = getelementptr inbounds %struct.xLIST_ITEM, %struct.xLIST_ITEM* %1, i32 0, i32 0, !dbg !909
  %4 = load i32, i32* %3, align 4, !dbg !909, !tbaa !910
  call void @llvm.dbg.value(metadata i32 %4, metadata !906, metadata !DIExpression()), !dbg !908
  %5 = icmp eq i32 %4, -1, !dbg !911
  br i1 %5, label %6, label %11, !dbg !913

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.xLIST, %struct.xLIST* %0, i32 0, i32 2, i32 2, !dbg !914
  %8 = load %struct.xLIST_ITEM*, %struct.xLIST_ITEM** %7, align 4, !dbg !914, !tbaa !859
  call void @llvm.dbg.value(metadata %struct.xLIST_ITEM* %8, metadata !905, metadata !DIExpression()), !dbg !908
  %9 = getelementptr inbounds %struct.xLIST_ITEM, %struct.xLIST_ITEM* %8, i32 0, i32 1
  %10 = load %struct.xLIST_ITEM*, %struct.xLIST_ITEM** %9, align 4, !dbg !916, !tbaa !887
  br label %21, !dbg !917

11:                                               ; preds = %2
  %12 = getelementptr inbounds %struct.xLIST, %struct.xLIST* %0, i32 0, i32 2, !dbg !918
  %13 = bitcast %struct.xMINI_LIST_ITEM* %12 to %struct.xLIST_ITEM*, !dbg !921
  call void @llvm.dbg.value(metadata %struct.xLIST_ITEM* %13, metadata !905, metadata !DIExpression()), !dbg !908
  br label %14, !dbg !922

14:                                               ; preds = %14, %11
  %15 = phi %struct.xLIST_ITEM* [ %13, %11 ], [ %17, %14 ], !dbg !923
  call void @llvm.dbg.value(metadata %struct.xLIST_ITEM* %15, metadata !905, metadata !DIExpression()), !dbg !908
  %16 = getelementptr inbounds %struct.xLIST_ITEM, %struct.xLIST_ITEM* %15, i32 0, i32 1, !dbg !924
  %17 = load %struct.xLIST_ITEM*, %struct.xLIST_ITEM** %16, align 4, !dbg !924, !tbaa !887
  %18 = getelementptr inbounds %struct.xLIST_ITEM, %struct.xLIST_ITEM* %17, i32 0, i32 0, !dbg !926
  %19 = load i32, i32* %18, align 4, !dbg !926, !tbaa !910
  %20 = icmp ugt i32 %19, %4, !dbg !927
  br i1 %20, label %21, label %14, !dbg !928, !llvm.loop !929

21:                                               ; preds = %14, %6
  %22 = phi %struct.xLIST_ITEM* [ %10, %6 ], [ %17, %14 ], !dbg !916
  %23 = phi %struct.xLIST_ITEM* [ %8, %6 ], [ %15, %14 ], !dbg !931
  call void @llvm.dbg.value(metadata %struct.xLIST_ITEM* %23, metadata !905, metadata !DIExpression()), !dbg !908
  %24 = getelementptr inbounds %struct.xLIST_ITEM, %struct.xLIST_ITEM* %23, i32 0, i32 1, !dbg !916
  %25 = getelementptr inbounds %struct.xLIST_ITEM, %struct.xLIST_ITEM* %1, i32 0, i32 1, !dbg !932
  store %struct.xLIST_ITEM* %22, %struct.xLIST_ITEM** %25, align 4, !dbg !933, !tbaa !887
  %26 = getelementptr inbounds %struct.xLIST_ITEM, %struct.xLIST_ITEM* %22, i32 0, i32 2, !dbg !934
  store %struct.xLIST_ITEM* %1, %struct.xLIST_ITEM** %26, align 4, !dbg !935, !tbaa !889
  %27 = getelementptr inbounds %struct.xLIST_ITEM, %struct.xLIST_ITEM* %1, i32 0, i32 2, !dbg !936
  store %struct.xLIST_ITEM* %23, %struct.xLIST_ITEM** %27, align 4, !dbg !937, !tbaa !889
  store %struct.xLIST_ITEM* %1, %struct.xLIST_ITEM** %24, align 4, !dbg !938, !tbaa !887
  %28 = getelementptr inbounds %struct.xLIST_ITEM, %struct.xLIST_ITEM* %1, i32 0, i32 4, !dbg !939
  store %struct.xLIST* %0, %struct.xLIST** %28, align 4, !dbg !940, !tbaa !873
  %29 = getelementptr inbounds %struct.xLIST, %struct.xLIST* %0, i32 0, i32 0, !dbg !941
  %30 = load volatile i32, i32* %29, align 4, !dbg !942, !tbaa !862
  %31 = add i32 %30, 1, !dbg !942
  store volatile i32 %31, i32* %29, align 4, !dbg !942, !tbaa !862
  ret void, !dbg !943
}

; Function Attrs: nofree noinline norecurse nounwind optsize
define dso_local i32 @uxListRemove(%struct.xLIST_ITEM* noundef %0) local_unnamed_addr #11 !dbg !944 {
  call void @llvm.dbg.value(metadata %struct.xLIST_ITEM* %0, metadata !948, metadata !DIExpression()), !dbg !950
  %2 = getelementptr inbounds %struct.xLIST_ITEM, %struct.xLIST_ITEM* %0, i32 0, i32 4, !dbg !951
  %3 = load %struct.xLIST*, %struct.xLIST** %2, align 4, !dbg !951, !tbaa !873
  call void @llvm.dbg.value(metadata %struct.xLIST* %3, metadata !949, metadata !DIExpression()), !dbg !950
  %4 = getelementptr inbounds %struct.xLIST_ITEM, %struct.xLIST_ITEM* %0, i32 0, i32 2, !dbg !952
  %5 = load %struct.xLIST_ITEM*, %struct.xLIST_ITEM** %4, align 4, !dbg !952, !tbaa !889
  %6 = getelementptr inbounds %struct.xLIST_ITEM, %struct.xLIST_ITEM* %0, i32 0, i32 1, !dbg !953
  %7 = load %struct.xLIST_ITEM*, %struct.xLIST_ITEM** %6, align 4, !dbg !953, !tbaa !887
  %8 = getelementptr inbounds %struct.xLIST_ITEM, %struct.xLIST_ITEM* %7, i32 0, i32 2, !dbg !954
  store %struct.xLIST_ITEM* %5, %struct.xLIST_ITEM** %8, align 4, !dbg !955, !tbaa !889
  %9 = load %struct.xLIST_ITEM*, %struct.xLIST_ITEM** %4, align 4, !dbg !956, !tbaa !889
  %10 = getelementptr inbounds %struct.xLIST_ITEM, %struct.xLIST_ITEM* %9, i32 0, i32 1, !dbg !957
  store %struct.xLIST_ITEM* %7, %struct.xLIST_ITEM** %10, align 4, !dbg !958, !tbaa !887
  %11 = getelementptr inbounds %struct.xLIST, %struct.xLIST* %3, i32 0, i32 1, !dbg !959
  %12 = load %struct.xLIST_ITEM*, %struct.xLIST_ITEM** %11, align 4, !dbg !959, !tbaa !847
  %13 = icmp eq %struct.xLIST_ITEM* %12, %0, !dbg !961
  br i1 %13, label %14, label %15, !dbg !962

14:                                               ; preds = %1
  store %struct.xLIST_ITEM* %9, %struct.xLIST_ITEM** %11, align 4, !dbg !963, !tbaa !847
  br label %15, !dbg !965

15:                                               ; preds = %1, %14
  store %struct.xLIST* null, %struct.xLIST** %2, align 4, !dbg !966, !tbaa !873
  %16 = getelementptr inbounds %struct.xLIST, %struct.xLIST* %3, i32 0, i32 0, !dbg !967
  %17 = load volatile i32, i32* %16, align 4, !dbg !968, !tbaa !862
  %18 = add i32 %17, -1, !dbg !968
  store volatile i32 %18, i32* %16, align 4, !dbg !968, !tbaa !862
  %19 = load volatile i32, i32* %16, align 4, !dbg !969, !tbaa !862
  ret i32 %19, !dbg !970
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn writeonly
define dso_local nonnull i32* @pxPortInitialiseStack(i32* noundef writeonly %0, void (i8*)* noundef %1, i8* noundef %2) local_unnamed_addr #12 !dbg !971 {
  call void @llvm.dbg.value(metadata i32* %0, metadata !978, metadata !DIExpression()), !dbg !981
  call void @llvm.dbg.value(metadata void (i8*)* %1, metadata !979, metadata !DIExpression()), !dbg !981
  call void @llvm.dbg.value(metadata i8* %2, metadata !980, metadata !DIExpression()), !dbg !981
  %4 = getelementptr inbounds i32, i32* %0, i32 -1, !dbg !982
  call void @llvm.dbg.value(metadata i32* %4, metadata !978, metadata !DIExpression()), !dbg !981
  store i32 16777216, i32* %4, align 4, !dbg !983, !tbaa !580
  %5 = getelementptr inbounds i32, i32* %0, i32 -2, !dbg !984
  call void @llvm.dbg.value(metadata i32* %5, metadata !978, metadata !DIExpression()), !dbg !981
  %6 = ptrtoint void (i8*)* %1 to i32, !dbg !985
  %7 = and i32 %6, -2, !dbg !986
  store i32 %7, i32* %5, align 4, !dbg !987, !tbaa !580
  %8 = getelementptr inbounds i32, i32* %0, i32 -3, !dbg !988
  call void @llvm.dbg.value(metadata i32* %8, metadata !978, metadata !DIExpression()), !dbg !981
  store i32 ptrtoint (void ()* @prvTaskExitError to i32), i32* %8, align 4, !dbg !989, !tbaa !580
  %9 = getelementptr inbounds i32, i32* %0, i32 -8, !dbg !990
  call void @llvm.dbg.value(metadata i32* %9, metadata !978, metadata !DIExpression()), !dbg !981
  %10 = ptrtoint i8* %2 to i32, !dbg !991
  store i32 %10, i32* %9, align 4, !dbg !992, !tbaa !580
  %11 = getelementptr inbounds i32, i32* %0, i32 -16, !dbg !993
  call void @llvm.dbg.value(metadata i32* %11, metadata !978, metadata !DIExpression()), !dbg !981
  ret i32* %11, !dbg !994
}

; Function Attrs: noinline nounwind optsize
define internal void @prvTaskExitError() #2 !dbg !995 {
  %1 = alloca i32, align 4
  %2 = bitcast i32* %1 to i8*, !dbg !998
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %2), !dbg !998
  call void @llvm.dbg.declare(metadata i32* %1, metadata !997, metadata !DIExpression()), !dbg !999
  store volatile i32 0, i32* %1, align 4, !dbg !999, !tbaa !580
  %3 = tail call i32 asm sideeffect "\09mov $0, $1\09\09\09\09\09\09\09\09\09\09\09\09\0A\09msr basepri, $0\09\09\09\09\09\09\09\09\09\09\09\0A\09isb\09\09\09\09\09\09\09\09\09\09\09\09\09\09\0A\09dsb\09\09\09\09\09\09\09\09\09\09\09\09\09\09\0A", "=r,i,~{memory}"(i32 191) #20, !dbg !1000, !srcloc !1005
  call void @llvm.dbg.value(metadata i32 %3, metadata !1003, metadata !DIExpression()) #20, !dbg !1006
  br label %4, !dbg !1007

4:                                                ; preds = %4, %0
  %5 = load volatile i32, i32* %1, align 4, !dbg !1008, !tbaa !580
  %6 = icmp eq i32 %5, 0, !dbg !1009
  br i1 %6, label %4, label %7, !dbg !1007, !llvm.loop !1010

7:                                                ; preds = %4
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %2), !dbg !1012
  ret void, !dbg !1012
}

; Function Attrs: argmemonly nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0i8(i64 immarg, i8* nocapture) #13

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: argmemonly nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0i8(i64 immarg, i8* nocapture) #13

; Function Attrs: naked noinline nounwind optsize
define dso_local void @vPortSVCHandler() #14 !dbg !1013 {
  tail call void asm sideeffect "\09ldr\09r3, pxCurrentTCBConst2\09\09\0A\09ldr r1, [r3]\09\09\09\09\09\0A\09ldr r0, [r1]\09\09\09\09\09\0A\09ldmia r0!, {r4-r11}\09\09\09\09\0A\09msr psp, r0\09\09\09\09\09\09\0A\09isb\09\09\09\09\09\09\09\09\0A\09mov r0, #0 \09\09\09\09\09\09\0A\09msr\09basepri, r0\09\09\09\09\09\0A\09orr r14, #0xd\09\09\09\09\09\0A\09bx r14\09\09\09\09\09\09\09\0A\09\09\09\09\09\09\09\09\09\0A\09.align 4\09\09\09\09\09\09\0ApxCurrentTCBConst2: .word pxCurrentTCB\09\09\09\09\0A", ""() #20, !dbg !1014, !srcloc !1015
  unreachable, !dbg !1016
}

; Function Attrs: noinline nounwind optsize
define dso_local i32 @xPortStartScheduler() local_unnamed_addr #2 !dbg !1017 {
  %1 = load volatile i32, i32* inttoptr (i32 -536810208 to i32*), align 32, !dbg !1020, !tbaa !580
  %2 = or i32 %1, 16711680, !dbg !1020
  store volatile i32 %2, i32* inttoptr (i32 -536810208 to i32*), align 32, !dbg !1020, !tbaa !580
  %3 = load volatile i32, i32* inttoptr (i32 -536810208 to i32*), align 32, !dbg !1021, !tbaa !580
  %4 = or i32 %3, -16777216, !dbg !1021
  store volatile i32 %4, i32* inttoptr (i32 -536810208 to i32*), align 32, !dbg !1021, !tbaa !580
  tail call void @vPortSetupTimerInterrupt() #19, !dbg !1022
  store i32 0, i32* @uxCriticalNesting, align 4, !dbg !1023, !tbaa !1024
  tail call void @prvPortStartFirstTask() #19, !dbg !1025
  tail call void @vTaskSwitchContext() #18, !dbg !1026
  tail call void @prvTaskExitError() #19, !dbg !1027
  ret i32 0, !dbg !1028
}

; Function Attrs: noinline nounwind optsize
define weak dso_local void @vPortSetupTimerInterrupt() local_unnamed_addr #2 !dbg !1029 {
  store volatile i32 0, i32* inttoptr (i32 -536813552 to i32*), align 16, !dbg !1030, !tbaa !580
  store volatile i32 0, i32* inttoptr (i32 -536813544 to i32*), align 8, !dbg !1031, !tbaa !580
  store volatile i32 9999, i32* inttoptr (i32 -536813548 to i32*), align 4, !dbg !1032, !tbaa !580
  store volatile i32 3, i32* inttoptr (i32 -536813552 to i32*), align 16, !dbg !1033, !tbaa !580
  ret void, !dbg !1034
}

; Function Attrs: naked noinline nounwind optsize
define internal void @prvPortStartFirstTask() #14 !dbg !1035 {
  tail call void asm sideeffect " ldr r0, =0xE000ED08 \09\0A ldr r0, [r0] \09\09\09\0A ldr r0, [r0] \09\09\09\0A msr msp, r0\09\09\09\0A cpsie i\09\09\09\09\0A cpsie f\09\09\09\09\0A dsb\09\09\09\09\09\0A isb\09\09\09\09\09\0A svc 0\09\09\09\09\09\0A nop\09\09\09\09\09\0A", ""() #20, !dbg !1036, !srcloc !1037
  unreachable, !dbg !1038
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize readnone willreturn
define dso_local void @vPortEndScheduler() local_unnamed_addr #10 !dbg !1039 {
  ret void, !dbg !1040
}

; Function Attrs: noinline nounwind optsize
define dso_local void @vPortEnterCritical() local_unnamed_addr #2 !dbg !1041 {
  %1 = tail call i32 asm sideeffect "\09mov $0, $1\09\09\09\09\09\09\09\09\09\09\09\09\0A\09msr basepri, $0\09\09\09\09\09\09\09\09\09\09\09\0A\09isb\09\09\09\09\09\09\09\09\09\09\09\09\09\09\0A\09dsb\09\09\09\09\09\09\09\09\09\09\09\09\09\09\0A", "=r,i,~{memory}"(i32 191) #20, !dbg !1042, !srcloc !1005
  call void @llvm.dbg.value(metadata i32 %1, metadata !1003, metadata !DIExpression()) #20, !dbg !1044
  %2 = load i32, i32* @uxCriticalNesting, align 4, !dbg !1045, !tbaa !1024
  %3 = add i32 %2, 1, !dbg !1045
  store i32 %3, i32* @uxCriticalNesting, align 4, !dbg !1045, !tbaa !1024
  ret void, !dbg !1046
}

; Function Attrs: noinline nounwind optsize
define dso_local void @vPortExitCritical() local_unnamed_addr #2 !dbg !1047 {
  %1 = load i32, i32* @uxCriticalNesting, align 4, !dbg !1048, !tbaa !1024
  %2 = add i32 %1, -1, !dbg !1048
  store i32 %2, i32* @uxCriticalNesting, align 4, !dbg !1048, !tbaa !1024
  %3 = icmp eq i32 %2, 0, !dbg !1049
  br i1 %3, label %4, label %5, !dbg !1051

4:                                                ; preds = %0
  call void @llvm.dbg.value(metadata i32 0, metadata !1052, metadata !DIExpression()) #20, !dbg !1057
  tail call void asm sideeffect "\09msr basepri, $0\09", "r,~{memory}"(i32 0) #20, !dbg !1060, !srcloc !1061
  br label %5, !dbg !1062

5:                                                ; preds = %4, %0
  ret void, !dbg !1063
}

; Function Attrs: naked noinline nounwind optsize
define dso_local void @xPortPendSVHandler() #14 !dbg !1064 {
  tail call void asm sideeffect "\09mrs r0, psp\09\09\09\09\09\09\09\0A\09isb\09\09\09\09\09\09\09\09\09\0A\09\09\09\09\09\09\09\09\09\09\0A\09ldr\09r3, pxCurrentTCBConst\09\09\09\0A\09ldr\09r2, [r3]\09\09\09\09\09\09\0A\09\09\09\09\09\09\09\09\09\09\0A\09stmdb r0!, {r4-r11}\09\09\09\09\09\0A\09str r0, [r2]\09\09\09\09\09\09\0A\09\09\09\09\09\09\09\09\09\09\0A\09stmdb sp!, {r3, r14}\09\09\09\09\0A\09mov r0, $0\09\09\09\09\09\09\09\0A\09msr basepri, r0\09\09\09\09\09\09\0A\09bl vTaskSwitchContext\09\09\09\09\0A\09mov r0, #0\09\09\09\09\09\09\09\0A\09msr basepri, r0\09\09\09\09\09\09\0A\09ldmia sp!, {r3, r14}\09\09\09\09\0A\09\09\09\09\09\09\09\09\09\09\0A\09ldr r1, [r3]\09\09\09\09\09\09\0A\09ldr r0, [r1]\09\09\09\09\09\09\0A\09ldmia r0!, {r4-r11}\09\09\09\09\09\0A\09msr psp, r0\09\09\09\09\09\09\09\0A\09isb\09\09\09\09\09\09\09\09\09\0A\09bx r14\09\09\09\09\09\09\09\09\0A\09\09\09\09\09\09\09\09\09\09\0A\09.align 4\09\09\09\09\09\09\09\0ApxCurrentTCBConst: .word pxCurrentTCB\09\0A", "i"(i32 191) #20, !dbg !1065, !srcloc !1066
  unreachable, !dbg !1067
}

; Function Attrs: noinline nounwind optsize
define dso_local void @xPortSysTickHandler() local_unnamed_addr #2 !dbg !1068 {
  %1 = tail call i32 asm sideeffect "\09mov $0, $1\09\09\09\09\09\09\09\09\09\09\09\09\0A\09msr basepri, $0\09\09\09\09\09\09\09\09\09\09\09\0A\09isb\09\09\09\09\09\09\09\09\09\09\09\09\09\09\0A\09dsb\09\09\09\09\09\09\09\09\09\09\09\09\09\09\0A", "=r,i,~{memory}"(i32 191) #20, !dbg !1069, !srcloc !1005
  call void @llvm.dbg.value(metadata i32 %1, metadata !1003, metadata !DIExpression()) #20, !dbg !1071
  %2 = tail call i32 @xTaskIncrementTick() #18, !dbg !1072
  %3 = icmp eq i32 %2, 0, !dbg !1075
  br i1 %3, label %5, label %4, !dbg !1076

4:                                                ; preds = %0
  store volatile i32 268435456, i32* inttoptr (i32 -536810236 to i32*), align 4, !dbg !1077, !tbaa !580
  br label %5, !dbg !1079

5:                                                ; preds = %4, %0
  call void @llvm.dbg.value(metadata i32 0, metadata !1052, metadata !DIExpression()) #20, !dbg !1080
  tail call void asm sideeffect "\09msr basepri, $0\09", "r,~{memory}"(i32 0) #20, !dbg !1082, !srcloc !1061
  ret void, !dbg !1083
}

; Function Attrs: noinline nounwind optsize
define dso_local i32 @xQueueGenericReset(%struct.QueueDefinition* noundef %0, i32 noundef %1) local_unnamed_addr #2 !dbg !1084 {
  call void @llvm.dbg.value(metadata %struct.QueueDefinition* %0, metadata !1091, metadata !DIExpression()), !dbg !1095
  call void @llvm.dbg.value(metadata i32 %1, metadata !1092, metadata !DIExpression()), !dbg !1095
  call void @llvm.dbg.value(metadata %struct.QueueDefinition* %0, metadata !1093, metadata !DIExpression()), !dbg !1095
  tail call void @vPortEnterCritical() #18, !dbg !1096
  %3 = getelementptr inbounds %struct.QueueDefinition, %struct.QueueDefinition* %0, i32 0, i32 0, !dbg !1097
  %4 = load i8*, i8** %3, align 4, !dbg !1097, !tbaa !1099
  %5 = getelementptr inbounds %struct.QueueDefinition, %struct.QueueDefinition* %0, i32 0, i32 6, !dbg !1101
  %6 = load i32, i32* %5, align 4, !dbg !1101, !tbaa !1102
  %7 = getelementptr inbounds %struct.QueueDefinition, %struct.QueueDefinition* %0, i32 0, i32 7, !dbg !1103
  %8 = load i32, i32* %7, align 4, !dbg !1103, !tbaa !1104
  %9 = mul i32 %8, %6, !dbg !1105
  %10 = getelementptr inbounds i8, i8* %4, i32 %9, !dbg !1106
  %11 = getelementptr inbounds %struct.QueueDefinition, %struct.QueueDefinition* %0, i32 0, i32 2, i32 0, i32 0, !dbg !1107
  store i8* %10, i8** %11, align 4, !dbg !1108, !tbaa !564
  %12 = getelementptr inbounds %struct.QueueDefinition, %struct.QueueDefinition* %0, i32 0, i32 5, !dbg !1109
  store volatile i32 0, i32* %12, align 4, !dbg !1110, !tbaa !1111
  %13 = getelementptr inbounds %struct.QueueDefinition, %struct.QueueDefinition* %0, i32 0, i32 1, !dbg !1112
  store i8* %4, i8** %13, align 4, !dbg !1113, !tbaa !1114
  %14 = add i32 %6, -1, !dbg !1115
  %15 = mul i32 %14, %8, !dbg !1116
  %16 = getelementptr inbounds i8, i8* %4, i32 %15, !dbg !1117
  %17 = getelementptr inbounds %struct.QueueDefinition, %struct.QueueDefinition* %0, i32 0, i32 2, i32 0, i32 1, !dbg !1118
  store i8* %16, i8** %17, align 4, !dbg !1119, !tbaa !564
  %18 = getelementptr inbounds %struct.QueueDefinition, %struct.QueueDefinition* %0, i32 0, i32 8, !dbg !1120
  store volatile i8 -1, i8* %18, align 4, !dbg !1121, !tbaa !1122
  %19 = getelementptr inbounds %struct.QueueDefinition, %struct.QueueDefinition* %0, i32 0, i32 9, !dbg !1123
  store volatile i8 -1, i8* %19, align 1, !dbg !1124, !tbaa !1125
  %20 = icmp eq i32 %1, 0, !dbg !1126
  %21 = getelementptr inbounds %struct.QueueDefinition, %struct.QueueDefinition* %0, i32 0, i32 3, !dbg !1128
  br i1 %20, label %22, label %30, !dbg !1129

22:                                               ; preds = %2
  %23 = getelementptr inbounds %struct.xLIST, %struct.xLIST* %21, i32 0, i32 0, !dbg !1130
  %24 = load volatile i32, i32* %23, align 4, !dbg !1130, !tbaa !1133
  %25 = icmp eq i32 %24, 0, !dbg !1130
  br i1 %25, label %32, label %26, !dbg !1134

26:                                               ; preds = %22
  %27 = tail call i32 @xTaskRemoveFromEventList(%struct.xLIST* noundef nonnull %21) #18, !dbg !1135
  %28 = icmp eq i32 %27, 0, !dbg !1138
  br i1 %28, label %32, label %29, !dbg !1139

29:                                               ; preds = %26
  store volatile i32 268435456, i32* inttoptr (i32 -536810236 to i32*), align 4, !dbg !1140, !tbaa !580
  tail call void asm sideeffect "dsb", "~{memory}"() #20, !dbg !1140, !srcloc !1143
  tail call void asm sideeffect "isb", ""() #20, !dbg !1140, !srcloc !1144
  br label %32, !dbg !1145

30:                                               ; preds = %2
  tail call void @vListInitialise(%struct.xLIST* noundef nonnull %21) #18, !dbg !1146
  %31 = getelementptr inbounds %struct.QueueDefinition, %struct.QueueDefinition* %0, i32 0, i32 4, !dbg !1148
  tail call void @vListInitialise(%struct.xLIST* noundef nonnull %31) #18, !dbg !1149
  br label %32

32:                                               ; preds = %26, %29, %22, %30
  tail call void @vPortExitCritical() #18, !dbg !1150
  ret i32 1, !dbg !1151
}

; Function Attrs: noinline nounwind optsize
define dso_local %struct.QueueDefinition* @xQueueGenericCreate(i32 noundef %0, i32 noundef %1, i8 zeroext %2) local_unnamed_addr #2 !dbg !1152 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !1158, metadata !DIExpression()), !dbg !1164
  call void @llvm.dbg.value(metadata i32 %1, metadata !1159, metadata !DIExpression()), !dbg !1164
  call void @llvm.dbg.value(metadata i8 undef, metadata !1160, metadata !DIExpression()), !dbg !1164
  %4 = icmp eq i32 %1, 0, !dbg !1165
  %5 = mul i32 %1, %0, !dbg !1167
  %6 = add i32 %5, 72, !dbg !1167
  %7 = select i1 %4, i32 72, i32 %6, !dbg !1167
  call void @llvm.dbg.value(metadata i32 undef, metadata !1162, metadata !DIExpression()), !dbg !1164
  %8 = tail call i8* @pvPortMalloc(i32 noundef %7) #18, !dbg !1168
  %9 = bitcast i8* %8 to %struct.QueueDefinition*, !dbg !1169
  call void @llvm.dbg.value(metadata %struct.QueueDefinition* %9, metadata !1161, metadata !DIExpression()), !dbg !1164
  %10 = icmp eq i8* %8, null, !dbg !1170
  br i1 %10, label %13, label %11, !dbg !1172

11:                                               ; preds = %3
  call void @llvm.dbg.value(metadata i8* %8, metadata !1163, metadata !DIExpression()), !dbg !1164
  %12 = getelementptr inbounds i8, i8* %8, i32 72, !dbg !1173
  call void @llvm.dbg.value(metadata i8* %12, metadata !1163, metadata !DIExpression()), !dbg !1164
  tail call fastcc void @prvInitialiseNewQueue(i32 noundef %0, i32 noundef %1, i8* noundef nonnull %12, %struct.QueueDefinition* noundef nonnull %9) #19, !dbg !1175
  br label %13, !dbg !1176

13:                                               ; preds = %3, %11
  ret %struct.QueueDefinition* %9, !dbg !1177
}

; Function Attrs: noinline nounwind optsize
define internal fastcc void @prvInitialiseNewQueue(i32 noundef %0, i32 noundef %1, i8* noundef %2, %struct.QueueDefinition* noundef %3) unnamed_addr #2 !dbg !1178 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !1182, metadata !DIExpression()), !dbg !1187
  call void @llvm.dbg.value(metadata i32 %1, metadata !1183, metadata !DIExpression()), !dbg !1187
  call void @llvm.dbg.value(metadata i8* %2, metadata !1184, metadata !DIExpression()), !dbg !1187
  call void @llvm.dbg.value(metadata i8 undef, metadata !1185, metadata !DIExpression()), !dbg !1187
  call void @llvm.dbg.value(metadata %struct.QueueDefinition* %3, metadata !1186, metadata !DIExpression()), !dbg !1187
  %5 = icmp eq i32 %1, 0, !dbg !1188
  br i1 %5, label %6, label %8, !dbg !1190

6:                                                ; preds = %4
  %7 = bitcast %struct.QueueDefinition* %3 to %struct.QueueDefinition**, !dbg !1191
  store %struct.QueueDefinition* %3, %struct.QueueDefinition** %7, align 4, !dbg !1191, !tbaa !1099
  br label %10, !dbg !1193

8:                                                ; preds = %4
  %9 = getelementptr inbounds %struct.QueueDefinition, %struct.QueueDefinition* %3, i32 0, i32 0, !dbg !1194
  store i8* %2, i8** %9, align 4, !dbg !1196, !tbaa !1099
  br label %10

10:                                               ; preds = %8, %6
  %11 = getelementptr inbounds %struct.QueueDefinition, %struct.QueueDefinition* %3, i32 0, i32 6, !dbg !1197
  store i32 %0, i32* %11, align 4, !dbg !1198, !tbaa !1102
  %12 = getelementptr inbounds %struct.QueueDefinition, %struct.QueueDefinition* %3, i32 0, i32 7, !dbg !1199
  store i32 %1, i32* %12, align 4, !dbg !1200, !tbaa !1104
  %13 = tail call i32 @xQueueGenericReset(%struct.QueueDefinition* noundef nonnull %3, i32 noundef 1) #19, !dbg !1201
  ret void, !dbg !1202
}

; Function Attrs: noinline nounwind optsize
define dso_local %struct.QueueDefinition* @xQueueCreateMutex(i8 noundef zeroext %0) local_unnamed_addr #2 !dbg !1203 {
  call void @llvm.dbg.value(metadata i8 %0, metadata !1207, metadata !DIExpression()), !dbg !1211
  call void @llvm.dbg.value(metadata i32 1, metadata !1209, metadata !DIExpression()), !dbg !1211
  call void @llvm.dbg.value(metadata i32 0, metadata !1210, metadata !DIExpression()), !dbg !1211
  %2 = tail call %struct.QueueDefinition* @xQueueGenericCreate(i32 noundef 1, i32 noundef 0, i8 zeroext undef) #19, !dbg !1212
  call void @llvm.dbg.value(metadata %struct.QueueDefinition* %2, metadata !1208, metadata !DIExpression()), !dbg !1211
  tail call fastcc void @prvInitialiseMutex(%struct.QueueDefinition* noundef %2) #19, !dbg !1213
  ret %struct.QueueDefinition* %2, !dbg !1214
}

; Function Attrs: noinline nounwind optsize
define internal fastcc void @prvInitialiseMutex(%struct.QueueDefinition* noundef %0) unnamed_addr #2 !dbg !1215 {
  call void @llvm.dbg.value(metadata %struct.QueueDefinition* %0, metadata !1219, metadata !DIExpression()), !dbg !1220
  %2 = icmp eq %struct.QueueDefinition* %0, null, !dbg !1221
  br i1 %2, label %10, label %3, !dbg !1223

3:                                                ; preds = %1
  %4 = getelementptr inbounds %struct.QueueDefinition, %struct.QueueDefinition* %0, i32 0, i32 2, !dbg !1224
  %5 = bitcast %union.anon* %4 to %struct.tskTaskControlBlock**, !dbg !1226
  store %struct.tskTaskControlBlock* null, %struct.tskTaskControlBlock** %5, align 4, !dbg !1227, !tbaa !564
  %6 = getelementptr inbounds %struct.QueueDefinition, %struct.QueueDefinition* %0, i32 0, i32 0, !dbg !1228
  store i8* null, i8** %6, align 4, !dbg !1229, !tbaa !1099
  %7 = getelementptr inbounds %struct.QueueDefinition, %struct.QueueDefinition* %0, i32 0, i32 2, i32 0, i32 1, !dbg !1230
  %8 = bitcast i8** %7 to i32*, !dbg !1230
  store i32 0, i32* %8, align 4, !dbg !1231, !tbaa !564
  %9 = tail call i32 @xQueueGenericSend(%struct.QueueDefinition* noundef nonnull %0, i8* noundef null, i32 noundef 0, i32 noundef 0) #19, !dbg !1232
  br label %10, !dbg !1233

10:                                               ; preds = %1, %3
  ret void, !dbg !1234
}

; Function Attrs: noinline nounwind optsize
define dso_local i32 @xQueueGenericSend(%struct.QueueDefinition* noundef %0, i8* nocapture noundef readonly %1, i32 noundef %2, i32 noundef %3) local_unnamed_addr #2 !dbg !1235 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.xTIME_OUT, align 4
  call void @llvm.dbg.value(metadata %struct.QueueDefinition* %0, metadata !1243, metadata !DIExpression()), !dbg !1256
  call void @llvm.dbg.value(metadata i8* %1, metadata !1244, metadata !DIExpression()), !dbg !1256
  call void @llvm.dbg.value(metadata i32 %2, metadata !1245, metadata !DIExpression()), !dbg !1256
  store i32 %2, i32* %5, align 4, !tbaa !580
  call void @llvm.dbg.value(metadata i32 %3, metadata !1246, metadata !DIExpression()), !dbg !1256
  call void @llvm.dbg.value(metadata i32 0, metadata !1247, metadata !DIExpression()), !dbg !1256
  %7 = bitcast %struct.xTIME_OUT* %6 to i8*, !dbg !1257
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %7) #20, !dbg !1257
  call void @llvm.dbg.declare(metadata %struct.xTIME_OUT* %6, metadata !1249, metadata !DIExpression()), !dbg !1258
  call void @llvm.dbg.value(metadata %struct.QueueDefinition* %0, metadata !1255, metadata !DIExpression()), !dbg !1256
  call void @llvm.dbg.value(metadata i32 undef, metadata !1247, metadata !DIExpression()), !dbg !1256
  call void @vPortEnterCritical() #18, !dbg !1259
  %8 = getelementptr inbounds %struct.QueueDefinition, %struct.QueueDefinition* %0, i32 0, i32 5, !dbg !1263
  %9 = load volatile i32, i32* %8, align 4, !dbg !1263, !tbaa !1111
  %10 = getelementptr inbounds %struct.QueueDefinition, %struct.QueueDefinition* %0, i32 0, i32 6, !dbg !1266
  %11 = load i32, i32* %10, align 4, !dbg !1266, !tbaa !1102
  %12 = icmp ult i32 %9, %11, !dbg !1267
  %13 = icmp eq i32 %3, 2
  %14 = or i1 %13, %12, !dbg !1268
  br i1 %14, label %20, label %15, !dbg !1268

15:                                               ; preds = %4
  %16 = getelementptr inbounds %struct.QueueDefinition, %struct.QueueDefinition* %0, i32 0, i32 8
  %17 = getelementptr inbounds %struct.QueueDefinition, %struct.QueueDefinition* %0, i32 0, i32 9
  %18 = getelementptr inbounds %struct.QueueDefinition, %struct.QueueDefinition* %0, i32 0, i32 3
  call void @llvm.dbg.value(metadata i32 %2, metadata !1245, metadata !DIExpression()), !dbg !1256
  %19 = icmp eq i32 %2, 0, !dbg !1269
  br i1 %19, label %34, label %35, !dbg !1272

20:                                               ; preds = %59, %4
  %21 = call fastcc i32 @prvCopyDataToQueue(%struct.QueueDefinition* noundef nonnull %0, i8* noundef %1, i32 noundef %3) #19, !dbg !1273
  call void @llvm.dbg.value(metadata i32 %21, metadata !1248, metadata !DIExpression()), !dbg !1256
  %22 = getelementptr inbounds %struct.QueueDefinition, %struct.QueueDefinition* %0, i32 0, i32 4, !dbg !1276
  %23 = getelementptr inbounds %struct.xLIST, %struct.xLIST* %22, i32 0, i32 0, !dbg !1276
  %24 = load volatile i32, i32* %23, align 4, !dbg !1276, !tbaa !1278
  %25 = icmp eq i32 %24, 0, !dbg !1276
  br i1 %25, label %30, label %26, !dbg !1279

26:                                               ; preds = %20
  %27 = call i32 @xTaskRemoveFromEventList(%struct.xLIST* noundef nonnull %22) #18, !dbg !1280
  %28 = icmp eq i32 %27, 0, !dbg !1283
  br i1 %28, label %33, label %29, !dbg !1284

29:                                               ; preds = %26
  store volatile i32 268435456, i32* inttoptr (i32 -536810236 to i32*), align 4, !dbg !1285, !tbaa !580
  call void asm sideeffect "dsb", "~{memory}"() #20, !dbg !1285, !srcloc !1288
  call void asm sideeffect "isb", ""() #20, !dbg !1285, !srcloc !1289
  br label %33, !dbg !1290

30:                                               ; preds = %20
  %31 = icmp eq i32 %21, 0, !dbg !1291
  br i1 %31, label %33, label %32, !dbg !1293

32:                                               ; preds = %30
  store volatile i32 268435456, i32* inttoptr (i32 -536810236 to i32*), align 4, !dbg !1294, !tbaa !580
  call void asm sideeffect "dsb", "~{memory}"() #20, !dbg !1294, !srcloc !1297
  call void asm sideeffect "isb", ""() #20, !dbg !1294, !srcloc !1298
  br label %33, !dbg !1299

33:                                               ; preds = %32, %30, %29, %26
  call void @vPortExitCritical() #18, !dbg !1300
  br label %66, !dbg !1301

34:                                               ; preds = %63, %15
  call void @vPortExitCritical() #18, !dbg !1302
  br label %66, !dbg !1304

35:                                               ; preds = %15
  call void @vTaskInternalSetTimeOutState(%struct.xTIME_OUT* noundef nonnull %6) #18, !dbg !1305
  call void @llvm.dbg.value(metadata i32 1, metadata !1247, metadata !DIExpression()), !dbg !1256
  br label %36, !dbg !1308

36:                                               ; preds = %63, %35
  call void @llvm.dbg.value(metadata i32 1, metadata !1247, metadata !DIExpression()), !dbg !1256
  call void @vPortExitCritical() #18, !dbg !1309
  call void @vTaskSuspendAll() #18, !dbg !1310
  call void @vPortEnterCritical() #18, !dbg !1311
  %37 = load volatile i8, i8* %16, align 4, !dbg !1312, !tbaa !1122
  %38 = icmp eq i8 %37, -1, !dbg !1312
  br i1 %38, label %39, label %40, !dbg !1315

39:                                               ; preds = %36
  store volatile i8 0, i8* %16, align 4, !dbg !1316, !tbaa !1122
  br label %40, !dbg !1316

40:                                               ; preds = %39, %36
  %41 = load volatile i8, i8* %17, align 1, !dbg !1318, !tbaa !1125
  %42 = icmp eq i8 %41, -1, !dbg !1318
  br i1 %42, label %43, label %44, !dbg !1315

43:                                               ; preds = %40
  store volatile i8 0, i8* %17, align 1, !dbg !1320, !tbaa !1125
  br label %44, !dbg !1320

44:                                               ; preds = %43, %40
  call void @vPortExitCritical() #18, !dbg !1311
  call void @llvm.dbg.value(metadata i32* %5, metadata !1245, metadata !DIExpression(DW_OP_deref)), !dbg !1256
  %45 = call i32 @xTaskCheckForTimeOut(%struct.xTIME_OUT* noundef nonnull %6, i32* noundef nonnull %5) #18, !dbg !1322
  %46 = icmp eq i32 %45, 0, !dbg !1324
  br i1 %46, label %47, label %57, !dbg !1325

47:                                               ; preds = %44
  %48 = call fastcc i32 @prvIsQueueFull(%struct.QueueDefinition* noundef nonnull %0) #19, !dbg !1326
  %49 = icmp eq i32 %48, 0, !dbg !1329
  br i1 %49, label %55, label %50, !dbg !1330

50:                                               ; preds = %47
  %51 = load i32, i32* %5, align 4, !dbg !1331, !tbaa !580
  call void @llvm.dbg.value(metadata i32 %51, metadata !1245, metadata !DIExpression()), !dbg !1256
  call void @vTaskPlaceOnEventList(%struct.xLIST* noundef nonnull %18, i32 noundef %51) #18, !dbg !1333
  call fastcc void @prvUnlockQueue(%struct.QueueDefinition* noundef nonnull %0) #19, !dbg !1334
  %52 = call i32 @xTaskResumeAll() #18, !dbg !1335
  %53 = icmp eq i32 %52, 0, !dbg !1337
  br i1 %53, label %54, label %59, !dbg !1338

54:                                               ; preds = %50
  store volatile i32 268435456, i32* inttoptr (i32 -536810236 to i32*), align 4, !dbg !1339, !tbaa !580
  call void asm sideeffect "dsb", "~{memory}"() #20, !dbg !1339, !srcloc !1342
  call void asm sideeffect "isb", ""() #20, !dbg !1339, !srcloc !1343
  br label %59, !dbg !1344

55:                                               ; preds = %47
  call fastcc void @prvUnlockQueue(%struct.QueueDefinition* noundef nonnull %0) #19, !dbg !1345
  %56 = call i32 @xTaskResumeAll() #18, !dbg !1347
  br label %59

57:                                               ; preds = %44
  call fastcc void @prvUnlockQueue(%struct.QueueDefinition* noundef nonnull %0) #19, !dbg !1348
  %58 = call i32 @xTaskResumeAll() #18, !dbg !1350
  br label %66, !dbg !1351

59:                                               ; preds = %55, %54, %50
  call void @llvm.dbg.value(metadata i32 undef, metadata !1247, metadata !DIExpression()), !dbg !1256
  call void @vPortEnterCritical() #18, !dbg !1259
  %60 = load volatile i32, i32* %8, align 4, !dbg !1263, !tbaa !1111
  %61 = load i32, i32* %10, align 4, !dbg !1266, !tbaa !1102
  %62 = icmp ult i32 %60, %61, !dbg !1267
  br i1 %62, label %20, label %63, !dbg !1268, !llvm.loop !1352

63:                                               ; preds = %59
  %64 = load i32, i32* %5, align 4, !dbg !1355, !tbaa !580
  call void @llvm.dbg.value(metadata i32 %64, metadata !1245, metadata !DIExpression()), !dbg !1256
  %65 = icmp eq i32 %64, 0, !dbg !1269
  br i1 %65, label %34, label %36, !dbg !1272

66:                                               ; preds = %57, %34, %33
  %67 = phi i32 [ 1, %33 ], [ 0, %34 ], [ 0, %57 ], !dbg !1356
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %7) #20, !dbg !1357
  ret i32 %67, !dbg !1357
}

; Function Attrs: noinline nounwind optsize
define internal fastcc i32 @prvCopyDataToQueue(%struct.QueueDefinition* noundef %0, i8* nocapture noundef readonly %1, i32 noundef %2) unnamed_addr #2 !dbg !1358 {
  call void @llvm.dbg.value(metadata %struct.QueueDefinition* %0, metadata !1362, metadata !DIExpression()), !dbg !1367
  call void @llvm.dbg.value(metadata i8* %1, metadata !1363, metadata !DIExpression()), !dbg !1367
  call void @llvm.dbg.value(metadata i32 %2, metadata !1364, metadata !DIExpression()), !dbg !1367
  call void @llvm.dbg.value(metadata i32 0, metadata !1365, metadata !DIExpression()), !dbg !1367
  %4 = getelementptr inbounds %struct.QueueDefinition, %struct.QueueDefinition* %0, i32 0, i32 5, !dbg !1368
  %5 = load volatile i32, i32* %4, align 4, !dbg !1368, !tbaa !1111
  call void @llvm.dbg.value(metadata i32 %5, metadata !1366, metadata !DIExpression()), !dbg !1367
  %6 = getelementptr inbounds %struct.QueueDefinition, %struct.QueueDefinition* %0, i32 0, i32 7, !dbg !1369
  %7 = load i32, i32* %6, align 4, !dbg !1369, !tbaa !1104
  %8 = icmp eq i32 %7, 0, !dbg !1371
  br i1 %8, label %9, label %18, !dbg !1372

9:                                                ; preds = %3
  %10 = getelementptr inbounds %struct.QueueDefinition, %struct.QueueDefinition* %0, i32 0, i32 0, !dbg !1373
  %11 = load i8*, i8** %10, align 4, !dbg !1373, !tbaa !1099
  %12 = icmp eq i8* %11, null, !dbg !1377
  br i1 %12, label %13, label %52, !dbg !1378

13:                                               ; preds = %9
  %14 = getelementptr inbounds %struct.QueueDefinition, %struct.QueueDefinition* %0, i32 0, i32 2, !dbg !1379
  %15 = bitcast %union.anon* %14 to %struct.tskTaskControlBlock**, !dbg !1381
  %16 = load %struct.tskTaskControlBlock*, %struct.tskTaskControlBlock** %15, align 4, !dbg !1381, !tbaa !564
  %17 = tail call i32 @xTaskPriorityDisinherit(%struct.tskTaskControlBlock* noundef %16) #18, !dbg !1382
  call void @llvm.dbg.value(metadata i32 %17, metadata !1365, metadata !DIExpression()), !dbg !1367
  store %struct.tskTaskControlBlock* null, %struct.tskTaskControlBlock** %15, align 4, !dbg !1383, !tbaa !564
  br label %52, !dbg !1384

18:                                               ; preds = %3
  %19 = icmp eq i32 %2, 0, !dbg !1385
  br i1 %19, label %20, label %32, !dbg !1387

20:                                               ; preds = %18
  %21 = getelementptr inbounds %struct.QueueDefinition, %struct.QueueDefinition* %0, i32 0, i32 1, !dbg !1388
  %22 = load i8*, i8** %21, align 4, !dbg !1388, !tbaa !1114
  tail call void @llvm.memcpy.p0i8.p0i8.i32(i8* align 1 %22, i8* align 1 %1, i32 %7, i1 false), !dbg !1390
  %23 = load i32, i32* %6, align 4, !dbg !1391, !tbaa !1104
  %24 = load i8*, i8** %21, align 4, !dbg !1392, !tbaa !1114
  %25 = getelementptr inbounds i8, i8* %24, i32 %23, !dbg !1392
  store i8* %25, i8** %21, align 4, !dbg !1392, !tbaa !1114
  %26 = getelementptr inbounds %struct.QueueDefinition, %struct.QueueDefinition* %0, i32 0, i32 2, i32 0, i32 0, !dbg !1393
  %27 = load i8*, i8** %26, align 4, !dbg !1393, !tbaa !564
  %28 = icmp ult i8* %25, %27, !dbg !1395
  br i1 %28, label %52, label %29, !dbg !1396

29:                                               ; preds = %20
  %30 = getelementptr inbounds %struct.QueueDefinition, %struct.QueueDefinition* %0, i32 0, i32 0, !dbg !1397
  %31 = load i8*, i8** %30, align 4, !dbg !1397, !tbaa !1099
  store i8* %31, i8** %21, align 4, !dbg !1399, !tbaa !1114
  br label %52, !dbg !1400

32:                                               ; preds = %18
  %33 = getelementptr inbounds %struct.QueueDefinition, %struct.QueueDefinition* %0, i32 0, i32 2, i32 0, i32 1, !dbg !1401
  %34 = load i8*, i8** %33, align 4, !dbg !1401, !tbaa !564
  tail call void @llvm.memcpy.p0i8.p0i8.i32(i8* align 1 %34, i8* align 1 %1, i32 %7, i1 false), !dbg !1403
  %35 = load i32, i32* %6, align 4, !dbg !1404, !tbaa !1104
  %36 = load i8*, i8** %33, align 4, !dbg !1405, !tbaa !564
  %37 = sub i32 0, %35, !dbg !1405
  %38 = getelementptr inbounds i8, i8* %36, i32 %37, !dbg !1405
  store i8* %38, i8** %33, align 4, !dbg !1405, !tbaa !564
  %39 = getelementptr inbounds %struct.QueueDefinition, %struct.QueueDefinition* %0, i32 0, i32 0, !dbg !1406
  %40 = load i8*, i8** %39, align 4, !dbg !1406, !tbaa !1099
  %41 = icmp ult i8* %38, %40, !dbg !1408
  br i1 %41, label %42, label %46, !dbg !1409

42:                                               ; preds = %32
  %43 = getelementptr inbounds %struct.QueueDefinition, %struct.QueueDefinition* %0, i32 0, i32 2, i32 0, i32 0, !dbg !1410
  %44 = load i8*, i8** %43, align 4, !dbg !1410, !tbaa !564
  %45 = getelementptr inbounds i8, i8* %44, i32 %37, !dbg !1412
  store i8* %45, i8** %33, align 4, !dbg !1413, !tbaa !564
  br label %46, !dbg !1414

46:                                               ; preds = %32, %42
  %47 = icmp eq i32 %2, 2, !dbg !1415
  %48 = icmp ne i32 %5, 0
  %49 = select i1 %47, i1 %48, i1 false, !dbg !1417
  %50 = sext i1 %49 to i32, !dbg !1417
  %51 = add i32 %5, %50, !dbg !1417
  br label %52, !dbg !1417

52:                                               ; preds = %46, %20, %29, %13, %9
  %53 = phi i32 [ %17, %13 ], [ 0, %9 ], [ 0, %29 ], [ 0, %20 ], [ 0, %46 ], !dbg !1367
  %54 = phi i32 [ %5, %13 ], [ %5, %9 ], [ %5, %29 ], [ %5, %20 ], [ %51, %46 ], !dbg !1367
  call void @llvm.dbg.value(metadata i32 %54, metadata !1366, metadata !DIExpression()), !dbg !1367
  call void @llvm.dbg.value(metadata i32 %53, metadata !1365, metadata !DIExpression()), !dbg !1367
  %55 = add i32 %54, 1, !dbg !1418
  store volatile i32 %55, i32* %4, align 4, !dbg !1419, !tbaa !1111
  ret i32 %53, !dbg !1420
}

; Function Attrs: noinline nounwind optsize
define internal fastcc i32 @prvIsQueueFull(%struct.QueueDefinition* noundef %0) unnamed_addr #2 !dbg !1421 {
  call void @llvm.dbg.value(metadata %struct.QueueDefinition* %0, metadata !1427, metadata !DIExpression()), !dbg !1429
  tail call void @vPortEnterCritical() #18, !dbg !1430
  %2 = getelementptr inbounds %struct.QueueDefinition, %struct.QueueDefinition* %0, i32 0, i32 5, !dbg !1431
  %3 = load volatile i32, i32* %2, align 4, !dbg !1431, !tbaa !1111
  %4 = getelementptr inbounds %struct.QueueDefinition, %struct.QueueDefinition* %0, i32 0, i32 6, !dbg !1434
  %5 = load i32, i32* %4, align 4, !dbg !1434, !tbaa !1102
  %6 = icmp eq i32 %3, %5, !dbg !1435
  %7 = zext i1 %6 to i32
  call void @llvm.dbg.value(metadata i32 %7, metadata !1428, metadata !DIExpression()), !dbg !1429
  tail call void @vPortExitCritical() #18, !dbg !1436
  ret i32 %7, !dbg !1437
}

; Function Attrs: noinline nounwind optsize
define internal fastcc void @prvUnlockQueue(%struct.QueueDefinition* noundef %0) unnamed_addr #2 !dbg !1438 {
  call void @llvm.dbg.value(metadata %struct.QueueDefinition* %0, metadata !1442, metadata !DIExpression()), !dbg !1447
  tail call void @vPortEnterCritical() #18, !dbg !1448
  %2 = getelementptr inbounds %struct.QueueDefinition, %struct.QueueDefinition* %0, i32 0, i32 9, !dbg !1449
  %3 = load volatile i8, i8* %2, align 1, !dbg !1449, !tbaa !1125
  call void @llvm.dbg.value(metadata i8 %3, metadata !1443, metadata !DIExpression()), !dbg !1450
  %4 = getelementptr inbounds %struct.QueueDefinition, %struct.QueueDefinition* %0, i32 0, i32 4, !dbg !1451
  %5 = getelementptr inbounds %struct.xLIST, %struct.xLIST* %4, i32 0, i32 0, !dbg !1451
  call void @llvm.dbg.value(metadata i8 %3, metadata !1443, metadata !DIExpression()), !dbg !1450
  %6 = icmp sgt i8 %3, 0, !dbg !1455
  br i1 %6, label %7, label %18, !dbg !1456

7:                                                ; preds = %1, %15
  %8 = phi i8 [ %16, %15 ], [ %3, %1 ]
  call void @llvm.dbg.value(metadata i8 %8, metadata !1443, metadata !DIExpression()), !dbg !1450
  %9 = load volatile i32, i32* %5, align 4, !dbg !1451, !tbaa !1278
  %10 = icmp eq i32 %9, 0, !dbg !1451
  br i1 %10, label %18, label %11, !dbg !1457

11:                                               ; preds = %7
  %12 = tail call i32 @xTaskRemoveFromEventList(%struct.xLIST* noundef nonnull %4) #18, !dbg !1458
  %13 = icmp eq i32 %12, 0, !dbg !1461
  br i1 %13, label %15, label %14, !dbg !1462

14:                                               ; preds = %11
  tail call void @vTaskMissedYield() #18, !dbg !1463
  br label %15, !dbg !1465

15:                                               ; preds = %14, %11
  %16 = add nsw i8 %8, -1, !dbg !1466
  call void @llvm.dbg.value(metadata i8 %16, metadata !1443, metadata !DIExpression()), !dbg !1450
  %17 = icmp sgt i8 %8, 1, !dbg !1455
  br i1 %17, label %7, label %18, !dbg !1456, !llvm.loop !1467

18:                                               ; preds = %15, %7, %1
  store volatile i8 -1, i8* %2, align 1, !dbg !1469, !tbaa !1125
  tail call void @vPortExitCritical() #18, !dbg !1470
  tail call void @vPortEnterCritical() #18, !dbg !1471
  %19 = getelementptr inbounds %struct.QueueDefinition, %struct.QueueDefinition* %0, i32 0, i32 8, !dbg !1472
  %20 = load volatile i8, i8* %19, align 4, !dbg !1472, !tbaa !1122
  call void @llvm.dbg.value(metadata i8 %20, metadata !1445, metadata !DIExpression()), !dbg !1473
  %21 = getelementptr inbounds %struct.QueueDefinition, %struct.QueueDefinition* %0, i32 0, i32 3, !dbg !1474
  %22 = getelementptr inbounds %struct.xLIST, %struct.xLIST* %21, i32 0, i32 0, !dbg !1474
  %23 = icmp sgt i8 %20, 0, !dbg !1477
  br i1 %23, label %24, label %35, !dbg !1478

24:                                               ; preds = %18, %32
  %25 = phi i8 [ %33, %32 ], [ %20, %18 ]
  call void @llvm.dbg.value(metadata i8 %25, metadata !1445, metadata !DIExpression()), !dbg !1473
  %26 = load volatile i32, i32* %22, align 4, !dbg !1474, !tbaa !1133
  %27 = icmp eq i32 %26, 0, !dbg !1474
  br i1 %27, label %35, label %28, !dbg !1479

28:                                               ; preds = %24
  %29 = tail call i32 @xTaskRemoveFromEventList(%struct.xLIST* noundef nonnull %21) #18, !dbg !1480
  %30 = icmp eq i32 %29, 0, !dbg !1483
  br i1 %30, label %32, label %31, !dbg !1484

31:                                               ; preds = %28
  tail call void @vTaskMissedYield() #18, !dbg !1485
  br label %32, !dbg !1487

32:                                               ; preds = %28, %31
  %33 = add nsw i8 %25, -1, !dbg !1488
  call void @llvm.dbg.value(metadata i8 %33, metadata !1445, metadata !DIExpression()), !dbg !1473
  %34 = icmp sgt i8 %25, 1, !dbg !1477
  br i1 %34, label %24, label %35, !dbg !1478, !llvm.loop !1489

35:                                               ; preds = %32, %24, %18
  store volatile i8 -1, i8* %19, align 4, !dbg !1491, !tbaa !1122
  tail call void @vPortExitCritical() #18, !dbg !1492
  ret void, !dbg !1493
}

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i32(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i32, i1 immarg) #15

; Function Attrs: noinline nounwind optsize
define dso_local i32 @xQueueGenericSendFromISR(%struct.QueueDefinition* noundef %0, i8* nocapture noundef readonly %1, i32* noundef writeonly %2, i32 noundef %3) local_unnamed_addr #2 !dbg !1494 {
  call void @llvm.dbg.value(metadata %struct.QueueDefinition* %0, metadata !1500, metadata !DIExpression()), !dbg !1512
  call void @llvm.dbg.value(metadata i8* %1, metadata !1501, metadata !DIExpression()), !dbg !1512
  call void @llvm.dbg.value(metadata i32* %2, metadata !1502, metadata !DIExpression()), !dbg !1512
  call void @llvm.dbg.value(metadata i32 %3, metadata !1503, metadata !DIExpression()), !dbg !1512
  call void @llvm.dbg.value(metadata %struct.QueueDefinition* %0, metadata !1506, metadata !DIExpression()), !dbg !1512
  %5 = tail call { i32, i32 } asm sideeffect "\09mrs $0, basepri\09\09\09\09\09\09\09\09\09\09\09\0A\09mov $1, $2\09\09\09\09\09\09\09\09\09\09\09\09\0A\09msr basepri, $1\09\09\09\09\09\09\09\09\09\09\09\0A\09isb\09\09\09\09\09\09\09\09\09\09\09\09\09\09\0A\09dsb\09\09\09\09\09\09\09\09\09\09\09\09\09\09\0A", "=r,=r,i,~{memory}"(i32 191) #20, !dbg !1513, !srcloc !1521
  call void @llvm.dbg.value(metadata i32 undef, metadata !1518, metadata !DIExpression()) #20, !dbg !1522
  call void @llvm.dbg.value(metadata i32 undef, metadata !1519, metadata !DIExpression()) #20, !dbg !1522
  call void @llvm.dbg.value(metadata i32 undef, metadata !1505, metadata !DIExpression()), !dbg !1512
  %6 = getelementptr inbounds %struct.QueueDefinition, %struct.QueueDefinition* %0, i32 0, i32 5, !dbg !1523
  %7 = load volatile i32, i32* %6, align 4, !dbg !1523, !tbaa !1111
  %8 = getelementptr inbounds %struct.QueueDefinition, %struct.QueueDefinition* %0, i32 0, i32 6, !dbg !1524
  %9 = load i32, i32* %8, align 4, !dbg !1524, !tbaa !1102
  %10 = icmp ult i32 %7, %9, !dbg !1525
  %11 = icmp eq i32 %3, 2
  %12 = or i1 %11, %10, !dbg !1526
  br i1 %12, label %13, label %31, !dbg !1526

13:                                               ; preds = %4
  %14 = getelementptr inbounds %struct.QueueDefinition, %struct.QueueDefinition* %0, i32 0, i32 9, !dbg !1527
  %15 = load volatile i8, i8* %14, align 1, !dbg !1527, !tbaa !1125
  call void @llvm.dbg.value(metadata i8 %15, metadata !1507, metadata !DIExpression()), !dbg !1528
  %16 = tail call fastcc i32 @prvCopyDataToQueue(%struct.QueueDefinition* noundef nonnull %0, i8* noundef %1, i32 noundef %3) #19, !dbg !1529
  %17 = icmp eq i8 %15, -1, !dbg !1530
  br i1 %17, label %18, label %29, !dbg !1532

18:                                               ; preds = %13
  %19 = getelementptr inbounds %struct.QueueDefinition, %struct.QueueDefinition* %0, i32 0, i32 4, !dbg !1533
  %20 = getelementptr inbounds %struct.xLIST, %struct.xLIST* %19, i32 0, i32 0, !dbg !1533
  %21 = load volatile i32, i32* %20, align 4, !dbg !1533, !tbaa !1278
  %22 = icmp eq i32 %21, 0, !dbg !1533
  br i1 %22, label %31, label %23, !dbg !1537

23:                                               ; preds = %18
  %24 = tail call i32 @xTaskRemoveFromEventList(%struct.xLIST* noundef nonnull %19) #18, !dbg !1538
  %25 = icmp ne i32 %24, 0, !dbg !1541
  %26 = icmp ne i32* %2, null
  %27 = and i1 %26, %25, !dbg !1542
  br i1 %27, label %28, label %31, !dbg !1542

28:                                               ; preds = %23
  store i32 1, i32* %2, align 4, !dbg !1543, !tbaa !1024
  br label %31, !dbg !1547

29:                                               ; preds = %13
  %30 = add nuw i8 %15, 1, !dbg !1548
  store volatile i8 %30, i8* %14, align 1, !dbg !1550, !tbaa !1125
  br label %31

31:                                               ; preds = %4, %29, %18, %28, %23
  %32 = phi i32 [ 1, %23 ], [ 1, %28 ], [ 1, %18 ], [ 1, %29 ], [ 0, %4 ], !dbg !1551
  %33 = extractvalue { i32, i32 } %5, 0, !dbg !1513
  call void @llvm.dbg.value(metadata i32 %33, metadata !1518, metadata !DIExpression()) #20, !dbg !1522
  call void @llvm.dbg.value(metadata i32 %33, metadata !1505, metadata !DIExpression()), !dbg !1512
  call void @llvm.dbg.value(metadata i32 %32, metadata !1504, metadata !DIExpression()), !dbg !1512
  call void @llvm.dbg.value(metadata i32 undef, metadata !1552, metadata !DIExpression()) #20, !dbg !1555
  tail call void asm sideeffect "\09msr basepri, $0\09", "r,~{memory}"(i32 %33) #20, !dbg !1557, !srcloc !1558
  ret i32 %32, !dbg !1559
}

; Function Attrs: noinline nounwind optsize
define dso_local i32 @xQueueGiveFromISR(%struct.QueueDefinition* noundef %0, i32* noundef writeonly %1) local_unnamed_addr #2 !dbg !1560 {
  call void @llvm.dbg.value(metadata %struct.QueueDefinition* %0, metadata !1564, metadata !DIExpression()), !dbg !1574
  call void @llvm.dbg.value(metadata i32* %1, metadata !1565, metadata !DIExpression()), !dbg !1574
  call void @llvm.dbg.value(metadata %struct.QueueDefinition* %0, metadata !1568, metadata !DIExpression()), !dbg !1574
  %3 = tail call { i32, i32 } asm sideeffect "\09mrs $0, basepri\09\09\09\09\09\09\09\09\09\09\09\0A\09mov $1, $2\09\09\09\09\09\09\09\09\09\09\09\09\0A\09msr basepri, $1\09\09\09\09\09\09\09\09\09\09\09\0A\09isb\09\09\09\09\09\09\09\09\09\09\09\09\09\09\0A\09dsb\09\09\09\09\09\09\09\09\09\09\09\09\09\09\0A", "=r,=r,i,~{memory}"(i32 191) #20, !dbg !1575, !srcloc !1521
  call void @llvm.dbg.value(metadata i32 undef, metadata !1518, metadata !DIExpression()) #20, !dbg !1577
  call void @llvm.dbg.value(metadata i32 undef, metadata !1519, metadata !DIExpression()) #20, !dbg !1577
  call void @llvm.dbg.value(metadata i32 undef, metadata !1567, metadata !DIExpression()), !dbg !1574
  %4 = getelementptr inbounds %struct.QueueDefinition, %struct.QueueDefinition* %0, i32 0, i32 5, !dbg !1578
  %5 = load volatile i32, i32* %4, align 4, !dbg !1578, !tbaa !1111
  call void @llvm.dbg.value(metadata i32 %5, metadata !1569, metadata !DIExpression()), !dbg !1579
  %6 = getelementptr inbounds %struct.QueueDefinition, %struct.QueueDefinition* %0, i32 0, i32 6, !dbg !1580
  %7 = load i32, i32* %6, align 4, !dbg !1580, !tbaa !1102
  %8 = icmp ult i32 %5, %7, !dbg !1581
  br i1 %8, label %9, label %27, !dbg !1582

9:                                                ; preds = %2
  %10 = getelementptr inbounds %struct.QueueDefinition, %struct.QueueDefinition* %0, i32 0, i32 9, !dbg !1583
  %11 = load volatile i8, i8* %10, align 1, !dbg !1583, !tbaa !1125
  call void @llvm.dbg.value(metadata i8 %11, metadata !1571, metadata !DIExpression()), !dbg !1584
  %12 = add nuw i32 %5, 1, !dbg !1585
  store volatile i32 %12, i32* %4, align 4, !dbg !1586, !tbaa !1111
  %13 = icmp eq i8 %11, -1, !dbg !1587
  br i1 %13, label %14, label %25, !dbg !1589

14:                                               ; preds = %9
  %15 = getelementptr inbounds %struct.QueueDefinition, %struct.QueueDefinition* %0, i32 0, i32 4, !dbg !1590
  %16 = getelementptr inbounds %struct.xLIST, %struct.xLIST* %15, i32 0, i32 0, !dbg !1590
  %17 = load volatile i32, i32* %16, align 4, !dbg !1590, !tbaa !1278
  %18 = icmp eq i32 %17, 0, !dbg !1590
  br i1 %18, label %27, label %19, !dbg !1594

19:                                               ; preds = %14
  %20 = tail call i32 @xTaskRemoveFromEventList(%struct.xLIST* noundef nonnull %15) #18, !dbg !1595
  %21 = icmp ne i32 %20, 0, !dbg !1598
  %22 = icmp ne i32* %1, null
  %23 = and i1 %22, %21, !dbg !1599
  br i1 %23, label %24, label %27, !dbg !1599

24:                                               ; preds = %19
  store i32 1, i32* %1, align 4, !dbg !1600, !tbaa !1024
  br label %27, !dbg !1604

25:                                               ; preds = %9
  %26 = add nuw i8 %11, 1, !dbg !1605
  store volatile i8 %26, i8* %10, align 1, !dbg !1607, !tbaa !1125
  br label %27

27:                                               ; preds = %2, %25, %14, %24, %19
  %28 = phi i32 [ 1, %19 ], [ 1, %24 ], [ 1, %14 ], [ 1, %25 ], [ 0, %2 ], !dbg !1608
  %29 = extractvalue { i32, i32 } %3, 0, !dbg !1575
  call void @llvm.dbg.value(metadata i32 %29, metadata !1518, metadata !DIExpression()) #20, !dbg !1577
  call void @llvm.dbg.value(metadata i32 %29, metadata !1567, metadata !DIExpression()), !dbg !1574
  call void @llvm.dbg.value(metadata i32 %28, metadata !1566, metadata !DIExpression()), !dbg !1574
  call void @llvm.dbg.value(metadata i32 undef, metadata !1552, metadata !DIExpression()) #20, !dbg !1609
  tail call void asm sideeffect "\09msr basepri, $0\09", "r,~{memory}"(i32 %29) #20, !dbg !1611, !srcloc !1558
  ret i32 %28, !dbg !1612
}

; Function Attrs: noinline nounwind optsize
define dso_local i32 @xQueueReceive(%struct.QueueDefinition* noundef %0, i8* nocapture noundef writeonly %1, i32 noundef %2) local_unnamed_addr #2 !dbg !1613 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.xTIME_OUT, align 4
  call void @llvm.dbg.value(metadata %struct.QueueDefinition* %0, metadata !1618, metadata !DIExpression()), !dbg !1629
  call void @llvm.dbg.value(metadata i8* %1, metadata !1619, metadata !DIExpression()), !dbg !1629
  call void @llvm.dbg.value(metadata i32 %2, metadata !1620, metadata !DIExpression()), !dbg !1629
  store i32 %2, i32* %4, align 4, !tbaa !580
  call void @llvm.dbg.value(metadata i32 0, metadata !1621, metadata !DIExpression()), !dbg !1629
  %6 = bitcast %struct.xTIME_OUT* %5 to i8*, !dbg !1630
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %6) #20, !dbg !1630
  call void @llvm.dbg.declare(metadata %struct.xTIME_OUT* %5, metadata !1622, metadata !DIExpression()), !dbg !1631
  call void @llvm.dbg.value(metadata %struct.QueueDefinition* %0, metadata !1623, metadata !DIExpression()), !dbg !1629
  call void @llvm.dbg.value(metadata i32 undef, metadata !1621, metadata !DIExpression()), !dbg !1629
  call void @vPortEnterCritical() #18, !dbg !1632
  %7 = getelementptr inbounds %struct.QueueDefinition, %struct.QueueDefinition* %0, i32 0, i32 5, !dbg !1633
  %8 = load volatile i32, i32* %7, align 4, !dbg !1633, !tbaa !1111
  call void @llvm.dbg.value(metadata i32 %8, metadata !1624, metadata !DIExpression()), !dbg !1634
  %9 = icmp eq i32 %8, 0, !dbg !1635
  br i1 %9, label %10, label %15, !dbg !1637

10:                                               ; preds = %3
  %11 = getelementptr inbounds %struct.QueueDefinition, %struct.QueueDefinition* %0, i32 0, i32 8
  %12 = getelementptr inbounds %struct.QueueDefinition, %struct.QueueDefinition* %0, i32 0, i32 9
  %13 = getelementptr inbounds %struct.QueueDefinition, %struct.QueueDefinition* %0, i32 0, i32 4
  call void @llvm.dbg.value(metadata i32 %2, metadata !1620, metadata !DIExpression()), !dbg !1629
  %14 = icmp eq i32 %2, 0, !dbg !1638
  br i1 %14, label %58, label %26, !dbg !1641

15:                                               ; preds = %52, %3
  %16 = phi i32 [ %8, %3 ], [ %53, %52 ], !dbg !1633
  call fastcc void @prvCopyDataFromQueue(%struct.QueueDefinition* noundef nonnull %0, i8* noundef %1) #19, !dbg !1642
  %17 = add i32 %16, -1, !dbg !1644
  store volatile i32 %17, i32* %7, align 4, !dbg !1645, !tbaa !1111
  %18 = getelementptr inbounds %struct.QueueDefinition, %struct.QueueDefinition* %0, i32 0, i32 3, !dbg !1646
  %19 = getelementptr inbounds %struct.xLIST, %struct.xLIST* %18, i32 0, i32 0, !dbg !1646
  %20 = load volatile i32, i32* %19, align 4, !dbg !1646, !tbaa !1133
  %21 = icmp eq i32 %20, 0, !dbg !1646
  br i1 %21, label %58, label %22, !dbg !1648

22:                                               ; preds = %15
  %23 = call i32 @xTaskRemoveFromEventList(%struct.xLIST* noundef nonnull %18) #18, !dbg !1649
  %24 = icmp eq i32 %23, 0, !dbg !1652
  br i1 %24, label %58, label %25, !dbg !1653

25:                                               ; preds = %22
  store volatile i32 268435456, i32* inttoptr (i32 -536810236 to i32*), align 4, !dbg !1654, !tbaa !580
  call void asm sideeffect "dsb", "~{memory}"() #20, !dbg !1654, !srcloc !1657
  call void asm sideeffect "isb", ""() #20, !dbg !1654, !srcloc !1658
  br label %58, !dbg !1659

26:                                               ; preds = %10
  call void @vTaskInternalSetTimeOutState(%struct.xTIME_OUT* noundef nonnull %5) #18, !dbg !1660
  call void @llvm.dbg.value(metadata i32 1, metadata !1621, metadata !DIExpression()), !dbg !1629
  br label %27, !dbg !1663

27:                                               ; preds = %55, %26
  call void @llvm.dbg.value(metadata i32 undef, metadata !1621, metadata !DIExpression()), !dbg !1629
  call void @vPortExitCritical() #18, !dbg !1664
  call void @vTaskSuspendAll() #18, !dbg !1665
  call void @vPortEnterCritical() #18, !dbg !1666
  %28 = load volatile i8, i8* %11, align 4, !dbg !1667, !tbaa !1122
  %29 = icmp eq i8 %28, -1, !dbg !1667
  br i1 %29, label %30, label %31, !dbg !1670

30:                                               ; preds = %27
  store volatile i8 0, i8* %11, align 4, !dbg !1671, !tbaa !1122
  br label %31, !dbg !1671

31:                                               ; preds = %30, %27
  %32 = load volatile i8, i8* %12, align 1, !dbg !1673, !tbaa !1125
  %33 = icmp eq i8 %32, -1, !dbg !1673
  br i1 %33, label %34, label %35, !dbg !1670

34:                                               ; preds = %31
  store volatile i8 0, i8* %12, align 1, !dbg !1675, !tbaa !1125
  br label %35, !dbg !1675

35:                                               ; preds = %34, %31
  call void @vPortExitCritical() #18, !dbg !1666
  call void @llvm.dbg.value(metadata i32* %4, metadata !1620, metadata !DIExpression(DW_OP_deref)), !dbg !1629
  %36 = call i32 @xTaskCheckForTimeOut(%struct.xTIME_OUT* noundef nonnull %5, i32* noundef nonnull %4) #18, !dbg !1677
  %37 = icmp eq i32 %36, 0, !dbg !1679
  br i1 %37, label %38, label %48, !dbg !1680

38:                                               ; preds = %35
  %39 = call fastcc i32 @prvIsQueueEmpty(%struct.QueueDefinition* noundef nonnull %0) #19, !dbg !1681
  %40 = icmp eq i32 %39, 0, !dbg !1684
  br i1 %40, label %46, label %41, !dbg !1685

41:                                               ; preds = %38
  %42 = load i32, i32* %4, align 4, !dbg !1686, !tbaa !580
  call void @llvm.dbg.value(metadata i32 %42, metadata !1620, metadata !DIExpression()), !dbg !1629
  call void @vTaskPlaceOnEventList(%struct.xLIST* noundef nonnull %13, i32 noundef %42) #18, !dbg !1688
  call fastcc void @prvUnlockQueue(%struct.QueueDefinition* noundef nonnull %0) #19, !dbg !1689
  %43 = call i32 @xTaskResumeAll() #18, !dbg !1690
  %44 = icmp eq i32 %43, 0, !dbg !1692
  br i1 %44, label %45, label %52, !dbg !1693

45:                                               ; preds = %41
  store volatile i32 268435456, i32* inttoptr (i32 -536810236 to i32*), align 4, !dbg !1694, !tbaa !580
  call void asm sideeffect "dsb", "~{memory}"() #20, !dbg !1694, !srcloc !1697
  call void asm sideeffect "isb", ""() #20, !dbg !1694, !srcloc !1698
  br label %52, !dbg !1699

46:                                               ; preds = %38
  call fastcc void @prvUnlockQueue(%struct.QueueDefinition* noundef nonnull %0) #19, !dbg !1700
  %47 = call i32 @xTaskResumeAll() #18, !dbg !1702
  br label %52

48:                                               ; preds = %35
  call fastcc void @prvUnlockQueue(%struct.QueueDefinition* noundef nonnull %0) #19, !dbg !1703
  %49 = call i32 @xTaskResumeAll() #18, !dbg !1705
  %50 = call fastcc i32 @prvIsQueueEmpty(%struct.QueueDefinition* noundef nonnull %0) #19, !dbg !1706
  %51 = icmp eq i32 %50, 0, !dbg !1708
  br i1 %51, label %52, label %60, !dbg !1709

52:                                               ; preds = %48, %46, %41, %45
  call void @llvm.dbg.value(metadata i32 undef, metadata !1621, metadata !DIExpression()), !dbg !1629
  call void @vPortEnterCritical() #18, !dbg !1632
  %53 = load volatile i32, i32* %7, align 4, !dbg !1633, !tbaa !1111
  call void @llvm.dbg.value(metadata i32 %53, metadata !1624, metadata !DIExpression()), !dbg !1634
  %54 = icmp eq i32 %53, 0, !dbg !1635
  br i1 %54, label %55, label %15, !dbg !1637, !llvm.loop !1710

55:                                               ; preds = %52
  %56 = load i32, i32* %4, align 4, !dbg !1713, !tbaa !580
  call void @llvm.dbg.value(metadata i32 %56, metadata !1620, metadata !DIExpression()), !dbg !1629
  %57 = icmp eq i32 %56, 0, !dbg !1638
  br i1 %57, label %58, label %27, !dbg !1641

58:                                               ; preds = %55, %10, %22, %25, %15
  %59 = phi i32 [ 1, %15 ], [ 1, %25 ], [ 1, %22 ], [ 0, %10 ], [ 0, %55 ]
  call void @vPortExitCritical() #18, !dbg !1714
  br label %60, !dbg !1715

60:                                               ; preds = %48, %58
  %61 = phi i32 [ %59, %58 ], [ 0, %48 ], !dbg !1716
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %6) #20, !dbg !1715
  ret i32 %61, !dbg !1715
}

; Function Attrs: mustprogress nofree noinline nosync nounwind optsize willreturn
define internal fastcc void @prvCopyDataFromQueue(%struct.QueueDefinition* nocapture noundef %0, i8* nocapture noundef writeonly %1) unnamed_addr #16 !dbg !1717 {
  call void @llvm.dbg.value(metadata %struct.QueueDefinition* %0, metadata !1721, metadata !DIExpression()), !dbg !1723
  call void @llvm.dbg.value(metadata i8* %1, metadata !1722, metadata !DIExpression()), !dbg !1723
  %3 = getelementptr inbounds %struct.QueueDefinition, %struct.QueueDefinition* %0, i32 0, i32 7, !dbg !1724
  %4 = load i32, i32* %3, align 4, !dbg !1724, !tbaa !1104
  %5 = icmp eq i32 %4, 0, !dbg !1726
  br i1 %5, label %18, label %6, !dbg !1727

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.QueueDefinition, %struct.QueueDefinition* %0, i32 0, i32 2, i32 0, i32 1, !dbg !1728
  %8 = load i8*, i8** %7, align 4, !dbg !1730, !tbaa !564
  %9 = getelementptr inbounds i8, i8* %8, i32 %4, !dbg !1730
  store i8* %9, i8** %7, align 4, !dbg !1730, !tbaa !564
  %10 = getelementptr inbounds %struct.QueueDefinition, %struct.QueueDefinition* %0, i32 0, i32 2, i32 0, i32 0, !dbg !1731
  %11 = load i8*, i8** %10, align 4, !dbg !1731, !tbaa !564
  %12 = icmp ult i8* %9, %11, !dbg !1733
  br i1 %12, label %16, label %13, !dbg !1734

13:                                               ; preds = %6
  %14 = getelementptr inbounds %struct.QueueDefinition, %struct.QueueDefinition* %0, i32 0, i32 0, !dbg !1735
  %15 = load i8*, i8** %14, align 4, !dbg !1735, !tbaa !1099
  store i8* %15, i8** %7, align 4, !dbg !1737, !tbaa !564
  br label %16, !dbg !1738

16:                                               ; preds = %6, %13
  %17 = phi i8* [ %9, %6 ], [ %15, %13 ], !dbg !1739
  tail call void @llvm.memcpy.p0i8.p0i8.i32(i8* align 1 %1, i8* align 1 %17, i32 %4, i1 false), !dbg !1740
  br label %18, !dbg !1741

18:                                               ; preds = %16, %2
  ret void, !dbg !1742
}

; Function Attrs: noinline nounwind optsize
define internal fastcc i32 @prvIsQueueEmpty(%struct.QueueDefinition* noundef %0) unnamed_addr #2 !dbg !1743 {
  call void @llvm.dbg.value(metadata %struct.QueueDefinition* %0, metadata !1745, metadata !DIExpression()), !dbg !1747
  tail call void @vPortEnterCritical() #18, !dbg !1748
  %2 = getelementptr inbounds %struct.QueueDefinition, %struct.QueueDefinition* %0, i32 0, i32 5, !dbg !1749
  %3 = load volatile i32, i32* %2, align 4, !dbg !1749, !tbaa !1111
  %4 = icmp eq i32 %3, 0, !dbg !1752
  %5 = zext i1 %4 to i32
  call void @llvm.dbg.value(metadata i32 %5, metadata !1746, metadata !DIExpression()), !dbg !1747
  tail call void @vPortExitCritical() #18, !dbg !1753
  ret i32 %5, !dbg !1754
}

; Function Attrs: noinline nounwind optsize
define dso_local i32 @xQueueSemaphoreTake(%struct.QueueDefinition* noundef %0, i32 noundef %1) local_unnamed_addr #2 !dbg !1755 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.xTIME_OUT, align 4
  call void @llvm.dbg.value(metadata %struct.QueueDefinition* %0, metadata !1759, metadata !DIExpression()), !dbg !1779
  call void @llvm.dbg.value(metadata i32 %1, metadata !1760, metadata !DIExpression()), !dbg !1779
  store i32 %1, i32* %3, align 4, !tbaa !580
  call void @llvm.dbg.value(metadata i32 0, metadata !1761, metadata !DIExpression()), !dbg !1779
  %5 = bitcast %struct.xTIME_OUT* %4 to i8*, !dbg !1780
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %5) #20, !dbg !1780
  call void @llvm.dbg.declare(metadata %struct.xTIME_OUT* %4, metadata !1762, metadata !DIExpression()), !dbg !1781
  call void @llvm.dbg.value(metadata %struct.QueueDefinition* %0, metadata !1763, metadata !DIExpression()), !dbg !1779
  call void @llvm.dbg.value(metadata i32 0, metadata !1764, metadata !DIExpression()), !dbg !1779
  call void @llvm.dbg.value(metadata i32 undef, metadata !1761, metadata !DIExpression()), !dbg !1779
  call void @vPortEnterCritical() #18, !dbg !1782
  %6 = getelementptr inbounds %struct.QueueDefinition, %struct.QueueDefinition* %0, i32 0, i32 5, !dbg !1783
  %7 = load volatile i32, i32* %6, align 4, !dbg !1783, !tbaa !1111
  call void @llvm.dbg.value(metadata i32 %7, metadata !1765, metadata !DIExpression()), !dbg !1784
  %8 = icmp eq i32 %7, 0, !dbg !1785
  br i1 %8, label %9, label %17, !dbg !1787

9:                                                ; preds = %2
  %10 = getelementptr inbounds %struct.QueueDefinition, %struct.QueueDefinition* %0, i32 0, i32 8
  %11 = getelementptr inbounds %struct.QueueDefinition, %struct.QueueDefinition* %0, i32 0, i32 9
  %12 = getelementptr inbounds %struct.QueueDefinition, %struct.QueueDefinition* %0, i32 0, i32 0
  %13 = getelementptr inbounds %struct.QueueDefinition, %struct.QueueDefinition* %0, i32 0, i32 2
  %14 = bitcast %union.anon* %13 to %struct.tskTaskControlBlock**
  %15 = getelementptr inbounds %struct.QueueDefinition, %struct.QueueDefinition* %0, i32 0, i32 4
  call void @llvm.dbg.value(metadata i32 0, metadata !1764, metadata !DIExpression()), !dbg !1779
  call void @llvm.dbg.value(metadata i32 %1, metadata !1760, metadata !DIExpression()), !dbg !1779
  %16 = icmp eq i32 %1, 0, !dbg !1788
  br i1 %16, label %84, label %36, !dbg !1791

17:                                               ; preds = %77, %2
  %18 = phi i32 [ %7, %2 ], [ %79, %77 ], !dbg !1783
  %19 = add i32 %18, -1, !dbg !1792
  store volatile i32 %19, i32* %6, align 4, !dbg !1794, !tbaa !1111
  %20 = getelementptr inbounds %struct.QueueDefinition, %struct.QueueDefinition* %0, i32 0, i32 0, !dbg !1795
  %21 = load i8*, i8** %20, align 4, !dbg !1795, !tbaa !1099
  %22 = icmp eq i8* %21, null, !dbg !1798
  br i1 %22, label %23, label %27, !dbg !1799

23:                                               ; preds = %17
  %24 = call %struct.tskTaskControlBlock* @pvTaskIncrementMutexHeldCount() #18, !dbg !1800
  %25 = getelementptr inbounds %struct.QueueDefinition, %struct.QueueDefinition* %0, i32 0, i32 2, !dbg !1802
  %26 = bitcast %union.anon* %25 to %struct.tskTaskControlBlock**, !dbg !1803
  store %struct.tskTaskControlBlock* %24, %struct.tskTaskControlBlock** %26, align 4, !dbg !1804, !tbaa !564
  br label %27, !dbg !1805

27:                                               ; preds = %17, %23
  %28 = getelementptr inbounds %struct.QueueDefinition, %struct.QueueDefinition* %0, i32 0, i32 3, !dbg !1806
  %29 = getelementptr inbounds %struct.xLIST, %struct.xLIST* %28, i32 0, i32 0, !dbg !1806
  %30 = load volatile i32, i32* %29, align 4, !dbg !1806, !tbaa !1133
  %31 = icmp eq i32 %30, 0, !dbg !1806
  br i1 %31, label %84, label %32, !dbg !1808

32:                                               ; preds = %27
  %33 = call i32 @xTaskRemoveFromEventList(%struct.xLIST* noundef nonnull %28) #18, !dbg !1809
  %34 = icmp eq i32 %33, 0, !dbg !1812
  br i1 %34, label %84, label %35, !dbg !1813

35:                                               ; preds = %32
  store volatile i32 268435456, i32* inttoptr (i32 -536810236 to i32*), align 4, !dbg !1814, !tbaa !580
  call void asm sideeffect "dsb", "~{memory}"() #20, !dbg !1814, !srcloc !1817
  call void asm sideeffect "isb", ""() #20, !dbg !1814, !srcloc !1818
  br label %84, !dbg !1819

36:                                               ; preds = %9, %81
  %37 = phi i32 [ %78, %81 ], [ 0, %9 ]
  %38 = phi i1 [ false, %81 ], [ true, %9 ]
  call void @llvm.dbg.value(metadata i32 %37, metadata !1764, metadata !DIExpression()), !dbg !1779
  br i1 %38, label %39, label %40, !dbg !1820

39:                                               ; preds = %36
  call void @vTaskInternalSetTimeOutState(%struct.xTIME_OUT* noundef nonnull %4) #18, !dbg !1821
  call void @llvm.dbg.value(metadata i32 1, metadata !1761, metadata !DIExpression()), !dbg !1779
  br label %40, !dbg !1824

40:                                               ; preds = %36, %39
  call void @llvm.dbg.value(metadata i32 undef, metadata !1761, metadata !DIExpression()), !dbg !1779
  call void @vPortExitCritical() #18, !dbg !1825
  call void @vTaskSuspendAll() #18, !dbg !1826
  call void @vPortEnterCritical() #18, !dbg !1827
  %41 = load volatile i8, i8* %10, align 4, !dbg !1828, !tbaa !1122
  %42 = icmp eq i8 %41, -1, !dbg !1828
  br i1 %42, label %43, label %44, !dbg !1831

43:                                               ; preds = %40
  store volatile i8 0, i8* %10, align 4, !dbg !1832, !tbaa !1122
  br label %44, !dbg !1832

44:                                               ; preds = %43, %40
  %45 = load volatile i8, i8* %11, align 1, !dbg !1834, !tbaa !1125
  %46 = icmp eq i8 %45, -1, !dbg !1834
  br i1 %46, label %47, label %48, !dbg !1831

47:                                               ; preds = %44
  store volatile i8 0, i8* %11, align 1, !dbg !1836, !tbaa !1125
  br label %48, !dbg !1836

48:                                               ; preds = %47, %44
  call void @vPortExitCritical() #18, !dbg !1827
  call void @llvm.dbg.value(metadata i32* %3, metadata !1760, metadata !DIExpression(DW_OP_deref)), !dbg !1779
  %49 = call i32 @xTaskCheckForTimeOut(%struct.xTIME_OUT* noundef nonnull %4, i32* noundef nonnull %3) #18, !dbg !1838
  %50 = icmp eq i32 %49, 0, !dbg !1839
  br i1 %50, label %51, label %68, !dbg !1840

51:                                               ; preds = %48
  %52 = call fastcc i32 @prvIsQueueEmpty(%struct.QueueDefinition* noundef nonnull %0) #19, !dbg !1841
  %53 = icmp eq i32 %52, 0, !dbg !1844
  br i1 %53, label %66, label %54, !dbg !1845

54:                                               ; preds = %51
  %55 = load i8*, i8** %12, align 4, !dbg !1846, !tbaa !1099
  %56 = icmp eq i8* %55, null, !dbg !1850
  br i1 %56, label %57, label %60, !dbg !1851

57:                                               ; preds = %54
  call void @vPortEnterCritical() #18, !dbg !1852
  %58 = load %struct.tskTaskControlBlock*, %struct.tskTaskControlBlock** %14, align 4, !dbg !1854, !tbaa !564
  %59 = call i32 @xTaskPriorityInherit(%struct.tskTaskControlBlock* noundef %58) #18, !dbg !1856
  call void @llvm.dbg.value(metadata i32 %59, metadata !1764, metadata !DIExpression()), !dbg !1779
  call void @vPortExitCritical() #18, !dbg !1857
  br label %60, !dbg !1858

60:                                               ; preds = %54, %57
  %61 = phi i32 [ %59, %57 ], [ %37, %54 ], !dbg !1779
  call void @llvm.dbg.value(metadata i32 %61, metadata !1764, metadata !DIExpression()), !dbg !1779
  %62 = load i32, i32* %3, align 4, !dbg !1859, !tbaa !580
  call void @llvm.dbg.value(metadata i32 %62, metadata !1760, metadata !DIExpression()), !dbg !1779
  call void @vTaskPlaceOnEventList(%struct.xLIST* noundef nonnull %15, i32 noundef %62) #18, !dbg !1860
  call fastcc void @prvUnlockQueue(%struct.QueueDefinition* noundef nonnull %0) #19, !dbg !1861
  %63 = call i32 @xTaskResumeAll() #18, !dbg !1862
  %64 = icmp eq i32 %63, 0, !dbg !1864
  br i1 %64, label %65, label %77, !dbg !1865

65:                                               ; preds = %60
  store volatile i32 268435456, i32* inttoptr (i32 -536810236 to i32*), align 4, !dbg !1866, !tbaa !580
  call void asm sideeffect "dsb", "~{memory}"() #20, !dbg !1866, !srcloc !1869
  call void asm sideeffect "isb", ""() #20, !dbg !1866, !srcloc !1870
  br label %77, !dbg !1871

66:                                               ; preds = %51
  call fastcc void @prvUnlockQueue(%struct.QueueDefinition* noundef nonnull %0) #19, !dbg !1872
  %67 = call i32 @xTaskResumeAll() #18, !dbg !1874
  br label %77

68:                                               ; preds = %48
  call fastcc void @prvUnlockQueue(%struct.QueueDefinition* noundef nonnull %0) #19, !dbg !1875
  %69 = call i32 @xTaskResumeAll() #18, !dbg !1876
  %70 = call fastcc i32 @prvIsQueueEmpty(%struct.QueueDefinition* noundef nonnull %0) #19, !dbg !1877
  %71 = icmp eq i32 %70, 0, !dbg !1878
  br i1 %71, label %77, label %72, !dbg !1879

72:                                               ; preds = %68
  %73 = icmp eq i32 %37, 0, !dbg !1880
  br i1 %73, label %86, label %74, !dbg !1881

74:                                               ; preds = %72
  call void @vPortEnterCritical() #18, !dbg !1882
  %75 = call fastcc i32 @prvGetDisinheritPriorityAfterTimeout(%struct.QueueDefinition* noundef nonnull %0) #19, !dbg !1883
  call void @llvm.dbg.value(metadata i32 %75, metadata !1770, metadata !DIExpression()), !dbg !1884
  %76 = load %struct.tskTaskControlBlock*, %struct.tskTaskControlBlock** %14, align 4, !dbg !1885, !tbaa !564
  call void @vTaskPriorityDisinheritAfterTimeout(%struct.tskTaskControlBlock* noundef %76, i32 noundef %75) #18, !dbg !1886
  br label %84, !dbg !1887

77:                                               ; preds = %68, %66, %60, %65
  %78 = phi i32 [ %61, %65 ], [ %61, %60 ], [ %37, %66 ], [ %37, %68 ], !dbg !1779
  call void @llvm.dbg.value(metadata i32 undef, metadata !1761, metadata !DIExpression()), !dbg !1779
  call void @llvm.dbg.value(metadata i32 %78, metadata !1764, metadata !DIExpression()), !dbg !1779
  call void @vPortEnterCritical() #18, !dbg !1782
  %79 = load volatile i32, i32* %6, align 4, !dbg !1783, !tbaa !1111
  call void @llvm.dbg.value(metadata i32 %79, metadata !1765, metadata !DIExpression()), !dbg !1784
  %80 = icmp eq i32 %79, 0, !dbg !1785
  br i1 %80, label %81, label %17, !dbg !1787, !llvm.loop !1888

81:                                               ; preds = %77
  %82 = load i32, i32* %3, align 4, !dbg !1891, !tbaa !580
  call void @llvm.dbg.value(metadata i32 %78, metadata !1764, metadata !DIExpression()), !dbg !1779
  call void @llvm.dbg.value(metadata i32 %82, metadata !1760, metadata !DIExpression()), !dbg !1779
  %83 = icmp eq i32 %82, 0, !dbg !1788
  br i1 %83, label %84, label %36, !dbg !1791

84:                                               ; preds = %81, %9, %32, %35, %27, %74
  %85 = phi i32 [ 0, %74 ], [ 1, %27 ], [ 1, %35 ], [ 1, %32 ], [ 0, %9 ], [ 0, %81 ]
  call void @vPortExitCritical() #18, !dbg !1892
  br label %86, !dbg !1893

86:                                               ; preds = %84, %72
  %87 = phi i32 [ 0, %72 ], [ %85, %84 ], !dbg !1892
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %5) #20, !dbg !1893
  ret i32 %87, !dbg !1893
}

; Function Attrs: mustprogress nofree noinline norecurse nounwind optsize willreturn
define internal fastcc i32 @prvGetDisinheritPriorityAfterTimeout(%struct.QueueDefinition* noundef %0) unnamed_addr #17 !dbg !1894 {
  call void @llvm.dbg.value(metadata %struct.QueueDefinition* %0, metadata !1899, metadata !DIExpression()), !dbg !1901
  %2 = getelementptr inbounds %struct.QueueDefinition, %struct.QueueDefinition* %0, i32 0, i32 4, i32 0, !dbg !1902
  %3 = load volatile i32, i32* %2, align 4, !dbg !1902, !tbaa !1278
  %4 = icmp eq i32 %3, 0, !dbg !1904
  br i1 %4, label %11, label %5, !dbg !1905

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.QueueDefinition, %struct.QueueDefinition* %0, i32 0, i32 4, i32 2, i32 1, !dbg !1906
  %7 = load %struct.xLIST_ITEM*, %struct.xLIST_ITEM** %6, align 4, !dbg !1906, !tbaa !1908
  %8 = getelementptr inbounds %struct.xLIST_ITEM, %struct.xLIST_ITEM* %7, i32 0, i32 0, !dbg !1906
  %9 = load i32, i32* %8, align 4, !dbg !1906, !tbaa !910
  %10 = sub i32 5, %9, !dbg !1909
  call void @llvm.dbg.value(metadata i32 %10, metadata !1900, metadata !DIExpression()), !dbg !1901
  br label %11, !dbg !1910

11:                                               ; preds = %1, %5
  %12 = phi i32 [ %10, %5 ], [ 0, %1 ], !dbg !1911
  call void @llvm.dbg.value(metadata i32 %12, metadata !1900, metadata !DIExpression()), !dbg !1901
  ret i32 %12, !dbg !1912
}

; Function Attrs: noinline nounwind optsize
define dso_local i32 @xQueuePeek(%struct.QueueDefinition* noundef %0, i8* nocapture noundef writeonly %1, i32 noundef %2) local_unnamed_addr #2 !dbg !1913 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.xTIME_OUT, align 4
  call void @llvm.dbg.value(metadata %struct.QueueDefinition* %0, metadata !1915, metadata !DIExpression()), !dbg !1927
  call void @llvm.dbg.value(metadata i8* %1, metadata !1916, metadata !DIExpression()), !dbg !1927
  call void @llvm.dbg.value(metadata i32 %2, metadata !1917, metadata !DIExpression()), !dbg !1927
  store i32 %2, i32* %4, align 4, !tbaa !580
  call void @llvm.dbg.value(metadata i32 0, metadata !1918, metadata !DIExpression()), !dbg !1927
  %6 = bitcast %struct.xTIME_OUT* %5 to i8*, !dbg !1928
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %6) #20, !dbg !1928
  call void @llvm.dbg.declare(metadata %struct.xTIME_OUT* %5, metadata !1919, metadata !DIExpression()), !dbg !1929
  call void @llvm.dbg.value(metadata %struct.QueueDefinition* %0, metadata !1921, metadata !DIExpression()), !dbg !1927
  call void @llvm.dbg.value(metadata i32 undef, metadata !1918, metadata !DIExpression()), !dbg !1927
  call void @vPortEnterCritical() #18, !dbg !1930
  %7 = getelementptr inbounds %struct.QueueDefinition, %struct.QueueDefinition* %0, i32 0, i32 5, !dbg !1931
  %8 = load volatile i32, i32* %7, align 4, !dbg !1931, !tbaa !1111
  call void @llvm.dbg.value(metadata i32 %8, metadata !1922, metadata !DIExpression()), !dbg !1932
  %9 = icmp eq i32 %8, 0, !dbg !1933
  br i1 %9, label %10, label %15, !dbg !1935

10:                                               ; preds = %3
  %11 = getelementptr inbounds %struct.QueueDefinition, %struct.QueueDefinition* %0, i32 0, i32 8
  %12 = getelementptr inbounds %struct.QueueDefinition, %struct.QueueDefinition* %0, i32 0, i32 9
  %13 = getelementptr inbounds %struct.QueueDefinition, %struct.QueueDefinition* %0, i32 0, i32 4
  call void @llvm.dbg.value(metadata i32 %2, metadata !1917, metadata !DIExpression()), !dbg !1927
  %14 = icmp eq i32 %2, 0, !dbg !1936
  br i1 %14, label %58, label %26, !dbg !1939

15:                                               ; preds = %52, %3
  %16 = getelementptr inbounds %struct.QueueDefinition, %struct.QueueDefinition* %0, i32 0, i32 2, i32 0, i32 1, !dbg !1940
  %17 = load i8*, i8** %16, align 4, !dbg !1940, !tbaa !564
  call void @llvm.dbg.value(metadata i8* %17, metadata !1920, metadata !DIExpression()), !dbg !1927
  call fastcc void @prvCopyDataFromQueue(%struct.QueueDefinition* noundef nonnull %0, i8* noundef %1) #19, !dbg !1942
  store i8* %17, i8** %16, align 4, !dbg !1943, !tbaa !564
  %18 = getelementptr inbounds %struct.QueueDefinition, %struct.QueueDefinition* %0, i32 0, i32 4, !dbg !1944
  %19 = getelementptr inbounds %struct.xLIST, %struct.xLIST* %18, i32 0, i32 0, !dbg !1944
  %20 = load volatile i32, i32* %19, align 4, !dbg !1944, !tbaa !1278
  %21 = icmp eq i32 %20, 0, !dbg !1944
  br i1 %21, label %58, label %22, !dbg !1946

22:                                               ; preds = %15
  %23 = call i32 @xTaskRemoveFromEventList(%struct.xLIST* noundef nonnull %18) #18, !dbg !1947
  %24 = icmp eq i32 %23, 0, !dbg !1950
  br i1 %24, label %58, label %25, !dbg !1951

25:                                               ; preds = %22
  store volatile i32 268435456, i32* inttoptr (i32 -536810236 to i32*), align 4, !dbg !1952, !tbaa !580
  call void asm sideeffect "dsb", "~{memory}"() #20, !dbg !1952, !srcloc !1955
  call void asm sideeffect "isb", ""() #20, !dbg !1952, !srcloc !1956
  br label %58, !dbg !1957

26:                                               ; preds = %10
  call void @vTaskInternalSetTimeOutState(%struct.xTIME_OUT* noundef nonnull %5) #18, !dbg !1958
  call void @llvm.dbg.value(metadata i32 1, metadata !1918, metadata !DIExpression()), !dbg !1927
  br label %27, !dbg !1961

27:                                               ; preds = %55, %26
  call void @llvm.dbg.value(metadata i32 undef, metadata !1918, metadata !DIExpression()), !dbg !1927
  call void @vPortExitCritical() #18, !dbg !1962
  call void @vTaskSuspendAll() #18, !dbg !1963
  call void @vPortEnterCritical() #18, !dbg !1964
  %28 = load volatile i8, i8* %11, align 4, !dbg !1965, !tbaa !1122
  %29 = icmp eq i8 %28, -1, !dbg !1965
  br i1 %29, label %30, label %31, !dbg !1968

30:                                               ; preds = %27
  store volatile i8 0, i8* %11, align 4, !dbg !1969, !tbaa !1122
  br label %31, !dbg !1969

31:                                               ; preds = %30, %27
  %32 = load volatile i8, i8* %12, align 1, !dbg !1971, !tbaa !1125
  %33 = icmp eq i8 %32, -1, !dbg !1971
  br i1 %33, label %34, label %35, !dbg !1968

34:                                               ; preds = %31
  store volatile i8 0, i8* %12, align 1, !dbg !1973, !tbaa !1125
  br label %35, !dbg !1973

35:                                               ; preds = %34, %31
  call void @vPortExitCritical() #18, !dbg !1964
  call void @llvm.dbg.value(metadata i32* %4, metadata !1917, metadata !DIExpression(DW_OP_deref)), !dbg !1927
  %36 = call i32 @xTaskCheckForTimeOut(%struct.xTIME_OUT* noundef nonnull %5, i32* noundef nonnull %4) #18, !dbg !1975
  %37 = icmp eq i32 %36, 0, !dbg !1977
  br i1 %37, label %38, label %48, !dbg !1978

38:                                               ; preds = %35
  %39 = call fastcc i32 @prvIsQueueEmpty(%struct.QueueDefinition* noundef nonnull %0) #19, !dbg !1979
  %40 = icmp eq i32 %39, 0, !dbg !1982
  br i1 %40, label %46, label %41, !dbg !1983

41:                                               ; preds = %38
  %42 = load i32, i32* %4, align 4, !dbg !1984, !tbaa !580
  call void @llvm.dbg.value(metadata i32 %42, metadata !1917, metadata !DIExpression()), !dbg !1927
  call void @vTaskPlaceOnEventList(%struct.xLIST* noundef nonnull %13, i32 noundef %42) #18, !dbg !1986
  call fastcc void @prvUnlockQueue(%struct.QueueDefinition* noundef nonnull %0) #19, !dbg !1987
  %43 = call i32 @xTaskResumeAll() #18, !dbg !1988
  %44 = icmp eq i32 %43, 0, !dbg !1990
  br i1 %44, label %45, label %52, !dbg !1991

45:                                               ; preds = %41
  store volatile i32 268435456, i32* inttoptr (i32 -536810236 to i32*), align 4, !dbg !1992, !tbaa !580
  call void asm sideeffect "dsb", "~{memory}"() #20, !dbg !1992, !srcloc !1995
  call void asm sideeffect "isb", ""() #20, !dbg !1992, !srcloc !1996
  br label %52, !dbg !1997

46:                                               ; preds = %38
  call fastcc void @prvUnlockQueue(%struct.QueueDefinition* noundef nonnull %0) #19, !dbg !1998
  %47 = call i32 @xTaskResumeAll() #18, !dbg !2000
  br label %52

48:                                               ; preds = %35
  call fastcc void @prvUnlockQueue(%struct.QueueDefinition* noundef nonnull %0) #19, !dbg !2001
  %49 = call i32 @xTaskResumeAll() #18, !dbg !2003
  %50 = call fastcc i32 @prvIsQueueEmpty(%struct.QueueDefinition* noundef nonnull %0) #19, !dbg !2004
  %51 = icmp eq i32 %50, 0, !dbg !2006
  br i1 %51, label %52, label %60, !dbg !2007

52:                                               ; preds = %48, %46, %41, %45
  call void @llvm.dbg.value(metadata i32 undef, metadata !1918, metadata !DIExpression()), !dbg !1927
  call void @vPortEnterCritical() #18, !dbg !1930
  %53 = load volatile i32, i32* %7, align 4, !dbg !1931, !tbaa !1111
  call void @llvm.dbg.value(metadata i32 %53, metadata !1922, metadata !DIExpression()), !dbg !1932
  %54 = icmp eq i32 %53, 0, !dbg !1933
  br i1 %54, label %55, label %15, !dbg !1935, !llvm.loop !2008

55:                                               ; preds = %52
  %56 = load i32, i32* %4, align 4, !dbg !2011, !tbaa !580
  call void @llvm.dbg.value(metadata i32 %56, metadata !1917, metadata !DIExpression()), !dbg !1927
  %57 = icmp eq i32 %56, 0, !dbg !1936
  br i1 %57, label %58, label %27, !dbg !1939

58:                                               ; preds = %55, %10, %22, %25, %15
  %59 = phi i32 [ 1, %15 ], [ 1, %25 ], [ 1, %22 ], [ 0, %10 ], [ 0, %55 ]
  call void @vPortExitCritical() #18, !dbg !2012
  br label %60, !dbg !2013

60:                                               ; preds = %48, %58
  %61 = phi i32 [ %59, %58 ], [ 0, %48 ], !dbg !2014
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %6) #20, !dbg !2013
  ret i32 %61, !dbg !2013
}

; Function Attrs: noinline nounwind optsize
define dso_local i32 @xQueueReceiveFromISR(%struct.QueueDefinition* noundef %0, i8* nocapture noundef writeonly %1, i32* noundef writeonly %2) local_unnamed_addr #2 !dbg !2015 {
  call void @llvm.dbg.value(metadata %struct.QueueDefinition* %0, metadata !2019, metadata !DIExpression()), !dbg !2030
  call void @llvm.dbg.value(metadata i8* %1, metadata !2020, metadata !DIExpression()), !dbg !2030
  call void @llvm.dbg.value(metadata i32* %2, metadata !2021, metadata !DIExpression()), !dbg !2030
  call void @llvm.dbg.value(metadata %struct.QueueDefinition* %0, metadata !2024, metadata !DIExpression()), !dbg !2030
  %4 = tail call { i32, i32 } asm sideeffect "\09mrs $0, basepri\09\09\09\09\09\09\09\09\09\09\09\0A\09mov $1, $2\09\09\09\09\09\09\09\09\09\09\09\09\0A\09msr basepri, $1\09\09\09\09\09\09\09\09\09\09\09\0A\09isb\09\09\09\09\09\09\09\09\09\09\09\09\09\09\0A\09dsb\09\09\09\09\09\09\09\09\09\09\09\09\09\09\0A", "=r,=r,i,~{memory}"(i32 191) #20, !dbg !2031, !srcloc !1521
  call void @llvm.dbg.value(metadata i32 undef, metadata !1518, metadata !DIExpression()) #20, !dbg !2033
  call void @llvm.dbg.value(metadata i32 undef, metadata !1519, metadata !DIExpression()) #20, !dbg !2033
  call void @llvm.dbg.value(metadata i32 undef, metadata !2023, metadata !DIExpression()), !dbg !2030
  %5 = getelementptr inbounds %struct.QueueDefinition, %struct.QueueDefinition* %0, i32 0, i32 5, !dbg !2034
  %6 = load volatile i32, i32* %5, align 4, !dbg !2034, !tbaa !1111
  call void @llvm.dbg.value(metadata i32 %6, metadata !2025, metadata !DIExpression()), !dbg !2035
  %7 = icmp eq i32 %6, 0, !dbg !2036
  br i1 %7, label %26, label %8, !dbg !2037

8:                                                ; preds = %3
  %9 = getelementptr inbounds %struct.QueueDefinition, %struct.QueueDefinition* %0, i32 0, i32 8, !dbg !2038
  %10 = load volatile i8, i8* %9, align 4, !dbg !2038, !tbaa !1122
  call void @llvm.dbg.value(metadata i8 %10, metadata !2027, metadata !DIExpression()), !dbg !2039
  tail call fastcc void @prvCopyDataFromQueue(%struct.QueueDefinition* noundef nonnull %0, i8* noundef %1) #19, !dbg !2040
  %11 = add i32 %6, -1, !dbg !2041
  store volatile i32 %11, i32* %5, align 4, !dbg !2042, !tbaa !1111
  %12 = icmp eq i8 %10, -1, !dbg !2043
  br i1 %12, label %13, label %24, !dbg !2045

13:                                               ; preds = %8
  %14 = getelementptr inbounds %struct.QueueDefinition, %struct.QueueDefinition* %0, i32 0, i32 3, !dbg !2046
  %15 = getelementptr inbounds %struct.xLIST, %struct.xLIST* %14, i32 0, i32 0, !dbg !2046
  %16 = load volatile i32, i32* %15, align 4, !dbg !2046, !tbaa !1133
  %17 = icmp eq i32 %16, 0, !dbg !2046
  br i1 %17, label %26, label %18, !dbg !2049

18:                                               ; preds = %13
  %19 = tail call i32 @xTaskRemoveFromEventList(%struct.xLIST* noundef nonnull %14) #18, !dbg !2050
  %20 = icmp ne i32 %19, 0, !dbg !2053
  %21 = icmp ne i32* %2, null
  %22 = and i1 %21, %20, !dbg !2054
  br i1 %22, label %23, label %26, !dbg !2054

23:                                               ; preds = %18
  store i32 1, i32* %2, align 4, !dbg !2055, !tbaa !1024
  br label %26, !dbg !2059

24:                                               ; preds = %8
  %25 = add nuw i8 %10, 1, !dbg !2060
  store volatile i8 %25, i8* %9, align 4, !dbg !2062, !tbaa !1122
  br label %26

26:                                               ; preds = %3, %24, %13, %23, %18
  %27 = phi i32 [ 1, %18 ], [ 1, %23 ], [ 1, %13 ], [ 1, %24 ], [ 0, %3 ], !dbg !2063
  %28 = extractvalue { i32, i32 } %4, 0, !dbg !2031
  call void @llvm.dbg.value(metadata i32 %28, metadata !1518, metadata !DIExpression()) #20, !dbg !2033
  call void @llvm.dbg.value(metadata i32 %28, metadata !2023, metadata !DIExpression()), !dbg !2030
  call void @llvm.dbg.value(metadata i32 %27, metadata !2022, metadata !DIExpression()), !dbg !2030
  call void @llvm.dbg.value(metadata i32 undef, metadata !1552, metadata !DIExpression()) #20, !dbg !2064
  tail call void asm sideeffect "\09msr basepri, $0\09", "r,~{memory}"(i32 %28) #20, !dbg !2066, !srcloc !1558
  ret i32 %27, !dbg !2067
}

; Function Attrs: noinline nounwind optsize
define dso_local i32 @xQueuePeekFromISR(%struct.QueueDefinition* noundef %0, i8* nocapture noundef writeonly %1) local_unnamed_addr #2 !dbg !2068 {
  call void @llvm.dbg.value(metadata %struct.QueueDefinition* %0, metadata !2072, metadata !DIExpression()), !dbg !2078
  call void @llvm.dbg.value(metadata i8* %1, metadata !2073, metadata !DIExpression()), !dbg !2078
  call void @llvm.dbg.value(metadata %struct.QueueDefinition* %0, metadata !2077, metadata !DIExpression()), !dbg !2078
  %3 = tail call { i32, i32 } asm sideeffect "\09mrs $0, basepri\09\09\09\09\09\09\09\09\09\09\09\0A\09mov $1, $2\09\09\09\09\09\09\09\09\09\09\09\09\0A\09msr basepri, $1\09\09\09\09\09\09\09\09\09\09\09\0A\09isb\09\09\09\09\09\09\09\09\09\09\09\09\09\09\0A\09dsb\09\09\09\09\09\09\09\09\09\09\09\09\09\09\0A", "=r,=r,i,~{memory}"(i32 191) #20, !dbg !2079, !srcloc !1521
  call void @llvm.dbg.value(metadata i32 undef, metadata !1518, metadata !DIExpression()) #20, !dbg !2081
  call void @llvm.dbg.value(metadata i32 undef, metadata !1519, metadata !DIExpression()) #20, !dbg !2081
  call void @llvm.dbg.value(metadata i32 undef, metadata !2075, metadata !DIExpression()), !dbg !2078
  %4 = getelementptr inbounds %struct.QueueDefinition, %struct.QueueDefinition* %0, i32 0, i32 5, !dbg !2082
  %5 = load volatile i32, i32* %4, align 4, !dbg !2082, !tbaa !1111
  %6 = icmp eq i32 %5, 0, !dbg !2085
  br i1 %6, label %10, label %7, !dbg !2086

7:                                                ; preds = %2
  %8 = getelementptr inbounds %struct.QueueDefinition, %struct.QueueDefinition* %0, i32 0, i32 2, i32 0, i32 1, !dbg !2087
  %9 = load i8*, i8** %8, align 4, !dbg !2087, !tbaa !564
  call void @llvm.dbg.value(metadata i8* %9, metadata !2076, metadata !DIExpression()), !dbg !2078
  tail call fastcc void @prvCopyDataFromQueue(%struct.QueueDefinition* noundef nonnull %0, i8* noundef %1) #19, !dbg !2089
  store i8* %9, i8** %8, align 4, !dbg !2090, !tbaa !564
  call void @llvm.dbg.value(metadata i32 1, metadata !2074, metadata !DIExpression()), !dbg !2078
  br label %10, !dbg !2091

10:                                               ; preds = %2, %7
  %11 = phi i32 [ 1, %7 ], [ 0, %2 ], !dbg !2092
  %12 = extractvalue { i32, i32 } %3, 0, !dbg !2079
  call void @llvm.dbg.value(metadata i32 %12, metadata !1518, metadata !DIExpression()) #20, !dbg !2081
  call void @llvm.dbg.value(metadata i32 %12, metadata !2075, metadata !DIExpression()), !dbg !2078
  call void @llvm.dbg.value(metadata i32 %11, metadata !2074, metadata !DIExpression()), !dbg !2078
  call void @llvm.dbg.value(metadata i32 undef, metadata !1552, metadata !DIExpression()) #20, !dbg !2093
  tail call void asm sideeffect "\09msr basepri, $0\09", "r,~{memory}"(i32 %12) #20, !dbg !2095, !srcloc !1558
  ret i32 %11, !dbg !2096
}

; Function Attrs: noinline nounwind optsize
define dso_local i32 @uxQueueMessagesWaiting(%struct.QueueDefinition* noundef %0) local_unnamed_addr #2 !dbg !2097 {
  call void @llvm.dbg.value(metadata %struct.QueueDefinition* %0, metadata !2102, metadata !DIExpression()), !dbg !2104
  tail call void @vPortEnterCritical() #18, !dbg !2105
  %2 = getelementptr inbounds %struct.QueueDefinition, %struct.QueueDefinition* %0, i32 0, i32 5, !dbg !2106
  %3 = load volatile i32, i32* %2, align 4, !dbg !2106, !tbaa !1111
  call void @llvm.dbg.value(metadata i32 %3, metadata !2103, metadata !DIExpression()), !dbg !2104
  tail call void @vPortExitCritical() #18, !dbg !2108
  ret i32 %3, !dbg !2109
}

; Function Attrs: noinline nounwind optsize
define dso_local i32 @uxQueueSpacesAvailable(%struct.QueueDefinition* noundef %0) local_unnamed_addr #2 !dbg !2110 {
  call void @llvm.dbg.value(metadata %struct.QueueDefinition* %0, metadata !2112, metadata !DIExpression()), !dbg !2115
  call void @llvm.dbg.value(metadata %struct.QueueDefinition* %0, metadata !2114, metadata !DIExpression()), !dbg !2115
  tail call void @vPortEnterCritical() #18, !dbg !2116
  %2 = getelementptr inbounds %struct.QueueDefinition, %struct.QueueDefinition* %0, i32 0, i32 6, !dbg !2117
  %3 = load i32, i32* %2, align 4, !dbg !2117, !tbaa !1102
  %4 = getelementptr inbounds %struct.QueueDefinition, %struct.QueueDefinition* %0, i32 0, i32 5, !dbg !2119
  %5 = load volatile i32, i32* %4, align 4, !dbg !2119, !tbaa !1111
  %6 = sub i32 %3, %5, !dbg !2120
  call void @llvm.dbg.value(metadata i32 %6, metadata !2113, metadata !DIExpression()), !dbg !2115
  tail call void @vPortExitCritical() #18, !dbg !2121
  ret i32 %6, !dbg !2122
}

; Function Attrs: mustprogress nofree noinline norecurse nounwind optsize willreturn
define dso_local i32 @uxQueueMessagesWaitingFromISR(%struct.QueueDefinition* noundef %0) local_unnamed_addr #17 !dbg !2123 {
  call void @llvm.dbg.value(metadata %struct.QueueDefinition* %0, metadata !2125, metadata !DIExpression()), !dbg !2128
  call void @llvm.dbg.value(metadata %struct.QueueDefinition* %0, metadata !2127, metadata !DIExpression()), !dbg !2128
  %2 = getelementptr inbounds %struct.QueueDefinition, %struct.QueueDefinition* %0, i32 0, i32 5, !dbg !2129
  %3 = load volatile i32, i32* %2, align 4, !dbg !2129, !tbaa !1111
  call void @llvm.dbg.value(metadata i32 %3, metadata !2126, metadata !DIExpression()), !dbg !2128
  ret i32 %3, !dbg !2130
}

; Function Attrs: noinline nounwind optsize
define dso_local void @vQueueDelete(%struct.QueueDefinition* noundef %0) local_unnamed_addr #2 !dbg !2131 {
  call void @llvm.dbg.value(metadata %struct.QueueDefinition* %0, metadata !2135, metadata !DIExpression()), !dbg !2137
  call void @llvm.dbg.value(metadata %struct.QueueDefinition* %0, metadata !2136, metadata !DIExpression()), !dbg !2137
  %2 = bitcast %struct.QueueDefinition* %0 to i8*, !dbg !2138
  tail call void @vPortFree(i8* noundef %2) #18, !dbg !2140
  ret void, !dbg !2141
}

; Function Attrs: mustprogress nofree noinline norecurse nounwind optsize willreturn
define dso_local i32 @xQueueIsQueueEmptyFromISR(%struct.QueueDefinition* noundef %0) local_unnamed_addr #17 !dbg !2142 {
  call void @llvm.dbg.value(metadata %struct.QueueDefinition* %0, metadata !2146, metadata !DIExpression()), !dbg !2149
  call void @llvm.dbg.value(metadata %struct.QueueDefinition* %0, metadata !2148, metadata !DIExpression()), !dbg !2149
  %2 = getelementptr inbounds %struct.QueueDefinition, %struct.QueueDefinition* %0, i32 0, i32 5, !dbg !2150
  %3 = load volatile i32, i32* %2, align 4, !dbg !2150, !tbaa !1111
  %4 = icmp eq i32 %3, 0, !dbg !2152
  %5 = zext i1 %4 to i32
  call void @llvm.dbg.value(metadata i32 %5, metadata !2147, metadata !DIExpression()), !dbg !2149
  ret i32 %5, !dbg !2153
}

; Function Attrs: mustprogress nofree noinline norecurse nounwind optsize willreturn
define dso_local i32 @xQueueIsQueueFullFromISR(%struct.QueueDefinition* noundef %0) local_unnamed_addr #17 !dbg !2154 {
  call void @llvm.dbg.value(metadata %struct.QueueDefinition* %0, metadata !2156, metadata !DIExpression()), !dbg !2159
  call void @llvm.dbg.value(metadata %struct.QueueDefinition* %0, metadata !2158, metadata !DIExpression()), !dbg !2159
  %2 = getelementptr inbounds %struct.QueueDefinition, %struct.QueueDefinition* %0, i32 0, i32 5, !dbg !2160
  %3 = load volatile i32, i32* %2, align 4, !dbg !2160, !tbaa !1111
  %4 = getelementptr inbounds %struct.QueueDefinition, %struct.QueueDefinition* %0, i32 0, i32 6, !dbg !2162
  %5 = load i32, i32* %4, align 4, !dbg !2162, !tbaa !1102
  %6 = icmp eq i32 %3, %5, !dbg !2163
  %7 = zext i1 %6 to i32
  call void @llvm.dbg.value(metadata i32 %7, metadata !2157, metadata !DIExpression()), !dbg !2159
  ret i32 %7, !dbg !2164
}

; Function Attrs: noinline nounwind optsize
define dso_local i32 @xTaskCreate(void (i8*)* noundef %0, i8* noundef %1, i16 noundef zeroext %2, i8* noundef %3, i32 noundef %4, %struct.tskTaskControlBlock** noundef %5) local_unnamed_addr #2 !dbg !2165 {
  call void @llvm.dbg.value(metadata void (i8*)* %0, metadata !2177, metadata !DIExpression()), !dbg !2187
  call void @llvm.dbg.value(metadata i8* %1, metadata !2178, metadata !DIExpression()), !dbg !2187
  call void @llvm.dbg.value(metadata i16 %2, metadata !2179, metadata !DIExpression()), !dbg !2187
  call void @llvm.dbg.value(metadata i8* %3, metadata !2180, metadata !DIExpression()), !dbg !2187
  call void @llvm.dbg.value(metadata i32 %4, metadata !2181, metadata !DIExpression()), !dbg !2187
  call void @llvm.dbg.value(metadata %struct.tskTaskControlBlock** %5, metadata !2182, metadata !DIExpression()), !dbg !2187
  %7 = zext i16 %2 to i32, !dbg !2188
  %8 = shl nuw nsw i32 %7, 2, !dbg !2189
  %9 = tail call i8* @pvPortMalloc(i32 noundef %8) #18, !dbg !2190
  call void @llvm.dbg.value(metadata i8* %9, metadata !2185, metadata !DIExpression()), !dbg !2191
  %10 = icmp eq i8* %9, null, !dbg !2192
  br i1 %10, label %19, label %11, !dbg !2194

11:                                               ; preds = %6
  %12 = tail call i8* @pvPortMalloc(i32 noundef 84) #18, !dbg !2195
  call void @llvm.dbg.value(metadata i8* %12, metadata !2183, metadata !DIExpression()), !dbg !2187
  %13 = icmp eq i8* %12, null, !dbg !2197
  br i1 %13, label %14, label %15, !dbg !2199

14:                                               ; preds = %11
  tail call void @vPortFree(i8* noundef nonnull %9) #18, !dbg !2200
  br label %19

15:                                               ; preds = %11
  %16 = bitcast i8* %12 to %struct.tskTaskControlBlock*, !dbg !2202
  call void @llvm.dbg.value(metadata %struct.tskTaskControlBlock* %16, metadata !2183, metadata !DIExpression()), !dbg !2187
  %17 = getelementptr inbounds i8, i8* %12, i32 48, !dbg !2203
  %18 = bitcast i8* %17 to i8**, !dbg !2205
  store i8* %9, i8** %18, align 4, !dbg !2205, !tbaa !2206
  tail call fastcc void @prvInitialiseNewTask(void (i8*)* noundef %0, i8* noundef %1, i32 noundef %7, i8* noundef %3, i32 noundef %4, %struct.tskTaskControlBlock** noundef %5, %struct.tskTaskControlBlock* noundef nonnull %16) #19, !dbg !2208
  tail call fastcc void @prvAddNewTaskToReadyList(%struct.tskTaskControlBlock* noundef nonnull %16) #19, !dbg !2211
  call void @llvm.dbg.value(metadata i32 1, metadata !2184, metadata !DIExpression()), !dbg !2187
  br label %19, !dbg !2212

19:                                               ; preds = %6, %14, %15
  %20 = phi i32 [ 1, %15 ], [ -1, %14 ], [ -1, %6 ], !dbg !2213
  call void @llvm.dbg.value(metadata i32 %20, metadata !2184, metadata !DIExpression()), !dbg !2187
  ret i32 %20, !dbg !2214
}

; Function Attrs: noinline nounwind optsize
define internal fastcc void @prvInitialiseNewTask(void (i8*)* noundef %0, i8* noundef readonly %1, i32 noundef %2, i8* noundef %3, i32 noundef %4, %struct.tskTaskControlBlock** noundef writeonly %5, %struct.tskTaskControlBlock* noundef %6) unnamed_addr #2 !dbg !2215 {
  call void @llvm.dbg.value(metadata void (i8*)* %0, metadata !2229, metadata !DIExpression()), !dbg !2239
  call void @llvm.dbg.value(metadata i8* %1, metadata !2230, metadata !DIExpression()), !dbg !2239
  call void @llvm.dbg.value(metadata i32 %2, metadata !2231, metadata !DIExpression()), !dbg !2239
  call void @llvm.dbg.value(metadata i8* %3, metadata !2232, metadata !DIExpression()), !dbg !2239
  call void @llvm.dbg.value(metadata i32 %4, metadata !2233, metadata !DIExpression()), !dbg !2239
  call void @llvm.dbg.value(metadata %struct.tskTaskControlBlock** %5, metadata !2234, metadata !DIExpression()), !dbg !2239
  call void @llvm.dbg.value(metadata %struct.tskTaskControlBlock* %6, metadata !2235, metadata !DIExpression()), !dbg !2239
  call void @llvm.dbg.value(metadata %struct.xMEMORY_REGION* undef, metadata !2236, metadata !DIExpression()), !dbg !2239
  %8 = getelementptr inbounds %struct.tskTaskControlBlock, %struct.tskTaskControlBlock* %6, i32 0, i32 4, !dbg !2240
  %9 = load i32*, i32** %8, align 4, !dbg !2240, !tbaa !2206
  %10 = add i32 %2, -1, !dbg !2242
  %11 = getelementptr inbounds i32, i32* %9, i32 %10, !dbg !2243
  call void @llvm.dbg.value(metadata i32* %11, metadata !2237, metadata !DIExpression()), !dbg !2239
  %12 = ptrtoint i32* %11 to i32, !dbg !2244
  %13 = and i32 %12, -8, !dbg !2245
  %14 = inttoptr i32 %13 to i32*, !dbg !2246
  call void @llvm.dbg.value(metadata i32* %14, metadata !2237, metadata !DIExpression()), !dbg !2239
  %15 = icmp eq i8* %1, null, !dbg !2247
  br i1 %15, label %28, label %16, !dbg !2249

16:                                               ; preds = %7, %16
  %17 = phi i32 [ %23, %16 ], [ 0, %7 ]
  call void @llvm.dbg.value(metadata i32 %17, metadata !2238, metadata !DIExpression()), !dbg !2239
  %18 = getelementptr inbounds i8, i8* %1, i32 %17, !dbg !2250
  %19 = load i8, i8* %18, align 1, !dbg !2250, !tbaa !564
  %20 = getelementptr inbounds %struct.tskTaskControlBlock, %struct.tskTaskControlBlock* %6, i32 0, i32 5, i32 %17, !dbg !2255
  store i8 %19, i8* %20, align 1, !dbg !2256, !tbaa !564
  %21 = load i8, i8* %18, align 1, !dbg !2257, !tbaa !564
  %22 = icmp eq i8 %21, 0, !dbg !2259
  call void @llvm.dbg.value(metadata i32 %17, metadata !2238, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !2239
  %23 = add nuw nsw i32 %17, 1
  %24 = icmp eq i32 %23, 16
  %25 = select i1 %22, i1 true, i1 %24, !dbg !2260
  call void @llvm.dbg.value(metadata i32 %23, metadata !2238, metadata !DIExpression()), !dbg !2239
  call void @llvm.dbg.value(metadata i32 %17, metadata !2238, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !2239
  br i1 %25, label %26, label %16, !dbg !2260, !llvm.loop !2261

26:                                               ; preds = %16
  %27 = getelementptr inbounds %struct.tskTaskControlBlock, %struct.tskTaskControlBlock* %6, i32 0, i32 5, i32 15, !dbg !2264
  store i8 0, i8* %27, align 1, !dbg !2265, !tbaa !564
  br label %30, !dbg !2266

28:                                               ; preds = %7
  %29 = getelementptr inbounds %struct.tskTaskControlBlock, %struct.tskTaskControlBlock* %6, i32 0, i32 5, i32 0, !dbg !2267
  store i8 0, i8* %29, align 4, !dbg !2269, !tbaa !564
  br label %30

30:                                               ; preds = %28, %26
  %31 = icmp ult i32 %4, 4, !dbg !2270
  %32 = select i1 %31, i32 %4, i32 4, !dbg !2270
  call void @llvm.dbg.value(metadata i32 %32, metadata !2233, metadata !DIExpression()), !dbg !2239
  %33 = getelementptr inbounds %struct.tskTaskControlBlock, %struct.tskTaskControlBlock* %6, i32 0, i32 3, !dbg !2271
  store i32 %32, i32* %33, align 4, !dbg !2272, !tbaa !2273
  %34 = getelementptr inbounds %struct.tskTaskControlBlock, %struct.tskTaskControlBlock* %6, i32 0, i32 6, !dbg !2274
  store i32 %32, i32* %34, align 4, !dbg !2276, !tbaa !2277
  %35 = getelementptr inbounds %struct.tskTaskControlBlock, %struct.tskTaskControlBlock* %6, i32 0, i32 7, !dbg !2278
  store i32 0, i32* %35, align 4, !dbg !2279, !tbaa !2280
  %36 = getelementptr inbounds %struct.tskTaskControlBlock, %struct.tskTaskControlBlock* %6, i32 0, i32 1, !dbg !2281
  tail call void @vListInitialiseItem(%struct.xLIST_ITEM* noundef nonnull %36) #18, !dbg !2282
  %37 = getelementptr inbounds %struct.tskTaskControlBlock, %struct.tskTaskControlBlock* %6, i32 0, i32 2, !dbg !2283
  tail call void @vListInitialiseItem(%struct.xLIST_ITEM* noundef nonnull %37) #18, !dbg !2284
  %38 = getelementptr inbounds %struct.tskTaskControlBlock, %struct.tskTaskControlBlock* %6, i32 0, i32 1, i32 3, !dbg !2285
  %39 = bitcast i8** %38 to %struct.tskTaskControlBlock**, !dbg !2285
  store %struct.tskTaskControlBlock* %6, %struct.tskTaskControlBlock** %39, align 4, !dbg !2285, !tbaa !2286
  %40 = sub nuw nsw i32 5, %32, !dbg !2287
  %41 = getelementptr inbounds %struct.xLIST_ITEM, %struct.xLIST_ITEM* %37, i32 0, i32 0, !dbg !2287
  store i32 %40, i32* %41, align 4, !dbg !2287, !tbaa !2288
  %42 = getelementptr inbounds %struct.tskTaskControlBlock, %struct.tskTaskControlBlock* %6, i32 0, i32 2, i32 3, !dbg !2289
  %43 = bitcast i8** %42 to %struct.tskTaskControlBlock**, !dbg !2289
  store %struct.tskTaskControlBlock* %6, %struct.tskTaskControlBlock** %43, align 4, !dbg !2289, !tbaa !2290
  %44 = getelementptr inbounds %struct.tskTaskControlBlock, %struct.tskTaskControlBlock* %6, i32 0, i32 8, !dbg !2291
  store volatile i32 0, i32* %44, align 4, !dbg !2293, !tbaa !2294
  %45 = getelementptr inbounds %struct.tskTaskControlBlock, %struct.tskTaskControlBlock* %6, i32 0, i32 9, !dbg !2295
  store volatile i8 0, i8* %45, align 4, !dbg !2296, !tbaa !2297
  %46 = tail call i32* @pxPortInitialiseStack(i32* noundef %14, void (i8*)* noundef %0, i8* noundef %3) #18, !dbg !2298
  %47 = getelementptr inbounds %struct.tskTaskControlBlock, %struct.tskTaskControlBlock* %6, i32 0, i32 0, !dbg !2301
  store i32* %46, i32** %47, align 4, !dbg !2302, !tbaa !2303
  %48 = icmp eq %struct.tskTaskControlBlock** %5, null, !dbg !2304
  br i1 %48, label %50, label %49, !dbg !2306

49:                                               ; preds = %30
  store %struct.tskTaskControlBlock* %6, %struct.tskTaskControlBlock** %5, align 4, !dbg !2307, !tbaa !649
  br label %50, !dbg !2309

50:                                               ; preds = %30, %49
  ret void, !dbg !2310
}

; Function Attrs: noinline nounwind optsize
define internal fastcc void @prvAddNewTaskToReadyList(%struct.tskTaskControlBlock* noundef %0) unnamed_addr #2 !dbg !2311 {
  call void @llvm.dbg.value(metadata %struct.tskTaskControlBlock* %0, metadata !2315, metadata !DIExpression()), !dbg !2316
  tail call void @vPortEnterCritical() #18, !dbg !2317
  %2 = load volatile i32, i32* @uxCurrentNumberOfTasks, align 4, !dbg !2318, !tbaa !1024
  %3 = add i32 %2, 1, !dbg !2318
  store volatile i32 %3, i32* @uxCurrentNumberOfTasks, align 4, !dbg !2318, !tbaa !1024
  %4 = load volatile %struct.tskTaskControlBlock*, %struct.tskTaskControlBlock** @pxCurrentTCB, align 4, !dbg !2320, !tbaa !649
  %5 = icmp eq %struct.tskTaskControlBlock* %4, null, !dbg !2322
  br i1 %5, label %6, label %10, !dbg !2323

6:                                                ; preds = %1
  store volatile %struct.tskTaskControlBlock* %0, %struct.tskTaskControlBlock** @pxCurrentTCB, align 4, !dbg !2324, !tbaa !649
  %7 = load volatile i32, i32* @uxCurrentNumberOfTasks, align 4, !dbg !2326, !tbaa !1024
  %8 = icmp eq i32 %7, 1, !dbg !2328
  br i1 %8, label %9, label %21, !dbg !2329

9:                                                ; preds = %6
  tail call fastcc void @prvInitialiseTaskLists() #19, !dbg !2330
  br label %21, !dbg !2332

10:                                               ; preds = %1
  %11 = load volatile i32, i32* @xSchedulerRunning, align 4, !dbg !2333, !tbaa !1024
  %12 = icmp eq i32 %11, 0, !dbg !2336
  br i1 %12, label %13, label %21, !dbg !2337

13:                                               ; preds = %10
  %14 = load volatile %struct.tskTaskControlBlock*, %struct.tskTaskControlBlock** @pxCurrentTCB, align 4, !dbg !2338, !tbaa !649
  %15 = getelementptr inbounds %struct.tskTaskControlBlock, %struct.tskTaskControlBlock* %14, i32 0, i32 3, !dbg !2341
  %16 = load i32, i32* %15, align 4, !dbg !2341, !tbaa !2273
  %17 = getelementptr inbounds %struct.tskTaskControlBlock, %struct.tskTaskControlBlock* %0, i32 0, i32 3, !dbg !2342
  %18 = load i32, i32* %17, align 4, !dbg !2342, !tbaa !2273
  %19 = icmp ugt i32 %16, %18, !dbg !2343
  br i1 %19, label %21, label %20, !dbg !2344

20:                                               ; preds = %13
  store volatile %struct.tskTaskControlBlock* %0, %struct.tskTaskControlBlock** @pxCurrentTCB, align 4, !dbg !2345, !tbaa !649
  br label %21, !dbg !2347

21:                                               ; preds = %13, %20, %10, %9, %6
  %22 = load i32, i32* @uxTaskNumber, align 4, !dbg !2348, !tbaa !1024
  %23 = add i32 %22, 1, !dbg !2348
  store i32 %23, i32* @uxTaskNumber, align 4, !dbg !2348, !tbaa !1024
  %24 = getelementptr inbounds %struct.tskTaskControlBlock, %struct.tskTaskControlBlock* %0, i32 0, i32 3, !dbg !2349
  %25 = load i32, i32* %24, align 4, !dbg !2349, !tbaa !2273
  %26 = shl nuw i32 1, %25, !dbg !2349
  %27 = load volatile i32, i32* @uxTopReadyPriority, align 4, !dbg !2349, !tbaa !1024
  %28 = or i32 %27, %26, !dbg !2349
  store volatile i32 %28, i32* @uxTopReadyPriority, align 4, !dbg !2349, !tbaa !1024
  %29 = getelementptr inbounds [5 x %struct.xLIST], [5 x %struct.xLIST]* @pxReadyTasksLists, i32 0, i32 %25, !dbg !2349
  %30 = getelementptr inbounds %struct.tskTaskControlBlock, %struct.tskTaskControlBlock* %0, i32 0, i32 1, !dbg !2349
  tail call void @vListInsertEnd(%struct.xLIST* noundef nonnull %29, %struct.xLIST_ITEM* noundef nonnull %30) #18, !dbg !2349
  tail call void @vPortExitCritical() #18, !dbg !2350
  %31 = load volatile i32, i32* @xSchedulerRunning, align 4, !dbg !2351, !tbaa !1024
  %32 = icmp eq i32 %31, 0, !dbg !2353
  br i1 %32, label %40, label %33, !dbg !2354

33:                                               ; preds = %21
  %34 = load volatile %struct.tskTaskControlBlock*, %struct.tskTaskControlBlock** @pxCurrentTCB, align 4, !dbg !2355, !tbaa !649
  %35 = getelementptr inbounds %struct.tskTaskControlBlock, %struct.tskTaskControlBlock* %34, i32 0, i32 3, !dbg !2358
  %36 = load i32, i32* %35, align 4, !dbg !2358, !tbaa !2273
  %37 = load i32, i32* %24, align 4, !dbg !2359, !tbaa !2273
  %38 = icmp ult i32 %36, %37, !dbg !2360
  br i1 %38, label %39, label %40, !dbg !2361

39:                                               ; preds = %33
  store volatile i32 268435456, i32* inttoptr (i32 -536810236 to i32*), align 4, !dbg !2362, !tbaa !580
  tail call void asm sideeffect "dsb", "~{memory}"() #20, !dbg !2362, !srcloc !2365
  tail call void asm sideeffect "isb", ""() #20, !dbg !2362, !srcloc !2366
  br label %40, !dbg !2367

40:                                               ; preds = %21, %39, %33
  ret void, !dbg !2368
}

; Function Attrs: noinline nounwind optsize
define internal fastcc void @prvInitialiseTaskLists() unnamed_addr #2 !dbg !2369 {
  call void @llvm.dbg.value(metadata i32 0, metadata !2371, metadata !DIExpression()), !dbg !2372
  br label %1, !dbg !2373

1:                                                ; preds = %0, %1
  %2 = phi i32 [ 0, %0 ], [ %4, %1 ]
  call void @llvm.dbg.value(metadata i32 %2, metadata !2371, metadata !DIExpression()), !dbg !2372
  %3 = getelementptr inbounds [5 x %struct.xLIST], [5 x %struct.xLIST]* @pxReadyTasksLists, i32 0, i32 %2, !dbg !2375
  tail call void @vListInitialise(%struct.xLIST* noundef nonnull %3) #18, !dbg !2378
  %4 = add nuw nsw i32 %2, 1, !dbg !2379
  call void @llvm.dbg.value(metadata i32 %4, metadata !2371, metadata !DIExpression()), !dbg !2372
  %5 = icmp eq i32 %4, 5, !dbg !2380
  br i1 %5, label %6, label %1, !dbg !2373, !llvm.loop !2381

6:                                                ; preds = %1
  tail call void @vListInitialise(%struct.xLIST* noundef nonnull @xDelayedTaskList1) #18, !dbg !2383
  tail call void @vListInitialise(%struct.xLIST* noundef nonnull @xDelayedTaskList2) #18, !dbg !2384
  tail call void @vListInitialise(%struct.xLIST* noundef nonnull @xPendingReadyList) #18, !dbg !2385
  tail call void @vListInitialise(%struct.xLIST* noundef nonnull @xTasksWaitingTermination) #18, !dbg !2386
  tail call void @vListInitialise(%struct.xLIST* noundef nonnull @xSuspendedTaskList) #18, !dbg !2388
  store volatile %struct.xLIST* @xDelayedTaskList1, %struct.xLIST** @pxDelayedTaskList, align 4, !dbg !2390, !tbaa !649
  store volatile %struct.xLIST* @xDelayedTaskList2, %struct.xLIST** @pxOverflowDelayedTaskList, align 4, !dbg !2391, !tbaa !649
  ret void, !dbg !2392
}

; Function Attrs: noinline nounwind optsize
define dso_local void @vTaskDelete(%struct.tskTaskControlBlock* noundef %0) local_unnamed_addr #2 !dbg !2393 {
  call void @llvm.dbg.value(metadata %struct.tskTaskControlBlock* %0, metadata !2397, metadata !DIExpression()), !dbg !2399
  tail call void @vPortEnterCritical() #18, !dbg !2400
  %2 = icmp eq %struct.tskTaskControlBlock* %0, null, !dbg !2401
  br i1 %2, label %3, label %5, !dbg !2401

3:                                                ; preds = %1
  %4 = load volatile %struct.tskTaskControlBlock*, %struct.tskTaskControlBlock** @pxCurrentTCB, align 4, !dbg !2401, !tbaa !649
  br label %5, !dbg !2401

5:                                                ; preds = %1, %3
  %6 = phi %struct.tskTaskControlBlock* [ %4, %3 ], [ %0, %1 ], !dbg !2401
  call void @llvm.dbg.value(metadata %struct.tskTaskControlBlock* %6, metadata !2398, metadata !DIExpression()), !dbg !2399
  %7 = getelementptr inbounds %struct.tskTaskControlBlock, %struct.tskTaskControlBlock* %6, i32 0, i32 1, !dbg !2403
  %8 = tail call i32 @uxListRemove(%struct.xLIST_ITEM* noundef nonnull %7) #18, !dbg !2405
  %9 = icmp eq i32 %8, 0, !dbg !2406
  br i1 %9, label %10, label %21, !dbg !2407

10:                                               ; preds = %5
  %11 = getelementptr inbounds %struct.tskTaskControlBlock, %struct.tskTaskControlBlock* %6, i32 0, i32 3, !dbg !2408
  %12 = load i32, i32* %11, align 4, !dbg !2408, !tbaa !2273
  %13 = getelementptr inbounds [5 x %struct.xLIST], [5 x %struct.xLIST]* @pxReadyTasksLists, i32 0, i32 %12, i32 0, !dbg !2408
  %14 = load volatile i32, i32* %13, align 4, !dbg !2408, !tbaa !862
  %15 = icmp eq i32 %14, 0, !dbg !2408
  br i1 %15, label %16, label %21, !dbg !2412

16:                                               ; preds = %10
  %17 = shl nuw i32 1, %12, !dbg !2413
  %18 = xor i32 %17, -1, !dbg !2413
  %19 = load volatile i32, i32* @uxTopReadyPriority, align 4, !dbg !2413, !tbaa !1024
  %20 = and i32 %19, %18, !dbg !2413
  store volatile i32 %20, i32* @uxTopReadyPriority, align 4, !dbg !2413, !tbaa !1024
  br label %21, !dbg !2413

21:                                               ; preds = %5, %10, %16
  %22 = getelementptr inbounds %struct.tskTaskControlBlock, %struct.tskTaskControlBlock* %6, i32 0, i32 2, i32 4, !dbg !2415
  %23 = load %struct.xLIST*, %struct.xLIST** %22, align 4, !dbg !2415, !tbaa !2417
  %24 = icmp eq %struct.xLIST* %23, null, !dbg !2418
  br i1 %24, label %28, label %25, !dbg !2419

25:                                               ; preds = %21
  %26 = getelementptr inbounds %struct.tskTaskControlBlock, %struct.tskTaskControlBlock* %6, i32 0, i32 2, !dbg !2415
  %27 = tail call i32 @uxListRemove(%struct.xLIST_ITEM* noundef nonnull %26) #18, !dbg !2420
  br label %28, !dbg !2422

28:                                               ; preds = %21, %25
  %29 = load i32, i32* @uxTaskNumber, align 4, !dbg !2423, !tbaa !1024
  %30 = add i32 %29, 1, !dbg !2423
  store i32 %30, i32* @uxTaskNumber, align 4, !dbg !2423, !tbaa !1024
  %31 = load volatile %struct.tskTaskControlBlock*, %struct.tskTaskControlBlock** @pxCurrentTCB, align 4, !dbg !2424, !tbaa !649
  %32 = icmp eq %struct.tskTaskControlBlock* %6, %31, !dbg !2426
  br i1 %32, label %33, label %36, !dbg !2427

33:                                               ; preds = %28
  tail call void @vListInsertEnd(%struct.xLIST* noundef nonnull @xTasksWaitingTermination, %struct.xLIST_ITEM* noundef nonnull %7) #18, !dbg !2428
  %34 = load volatile i32, i32* @uxDeletedTasksWaitingCleanUp, align 4, !dbg !2430, !tbaa !1024
  %35 = add i32 %34, 1, !dbg !2430
  store volatile i32 %35, i32* @uxDeletedTasksWaitingCleanUp, align 4, !dbg !2430, !tbaa !1024
  br label %39, !dbg !2431

36:                                               ; preds = %28
  %37 = load volatile i32, i32* @uxCurrentNumberOfTasks, align 4, !dbg !2432, !tbaa !1024
  %38 = add i32 %37, -1, !dbg !2432
  store volatile i32 %38, i32* @uxCurrentNumberOfTasks, align 4, !dbg !2432, !tbaa !1024
  tail call fastcc void @prvDeleteTCB(%struct.tskTaskControlBlock* noundef nonnull %6) #19, !dbg !2434
  tail call fastcc void @prvResetNextTaskUnblockTime() #19, !dbg !2435
  br label %39

39:                                               ; preds = %36, %33
  tail call void @vPortExitCritical() #18, !dbg !2436
  %40 = load volatile i32, i32* @xSchedulerRunning, align 4, !dbg !2437, !tbaa !1024
  %41 = icmp eq i32 %40, 0, !dbg !2439
  br i1 %41, label %46, label %42, !dbg !2440

42:                                               ; preds = %39
  %43 = load volatile %struct.tskTaskControlBlock*, %struct.tskTaskControlBlock** @pxCurrentTCB, align 4, !dbg !2441, !tbaa !649
  %44 = icmp eq %struct.tskTaskControlBlock* %6, %43, !dbg !2444
  br i1 %44, label %45, label %46, !dbg !2445

45:                                               ; preds = %42
  store volatile i32 268435456, i32* inttoptr (i32 -536810236 to i32*), align 4, !dbg !2446, !tbaa !580
  tail call void asm sideeffect "dsb", "~{memory}"() #20, !dbg !2446, !srcloc !2449
  tail call void asm sideeffect "isb", ""() #20, !dbg !2446, !srcloc !2450
  br label %46, !dbg !2451

46:                                               ; preds = %45, %42, %39
  ret void, !dbg !2452
}

; Function Attrs: noinline nounwind optsize
define internal fastcc void @prvDeleteTCB(%struct.tskTaskControlBlock* noundef %0) unnamed_addr #2 !dbg !2453 {
  call void @llvm.dbg.value(metadata %struct.tskTaskControlBlock* %0, metadata !2455, metadata !DIExpression()), !dbg !2456
  %2 = getelementptr inbounds %struct.tskTaskControlBlock, %struct.tskTaskControlBlock* %0, i32 0, i32 4, !dbg !2457
  %3 = bitcast i32** %2 to i8**, !dbg !2457
  %4 = load i8*, i8** %3, align 4, !dbg !2457, !tbaa !2206
  tail call void @vPortFree(i8* noundef %4) #18, !dbg !2459
  %5 = bitcast %struct.tskTaskControlBlock* %0 to i8*, !dbg !2460
  tail call void @vPortFree(i8* noundef %5) #18, !dbg !2461
  ret void, !dbg !2462
}

; Function Attrs: nofree noinline norecurse nounwind optsize
define internal fastcc void @prvResetNextTaskUnblockTime() unnamed_addr #11 !dbg !2463 {
  %1 = load volatile %struct.xLIST*, %struct.xLIST** @pxDelayedTaskList, align 4, !dbg !2466, !tbaa !649
  %2 = getelementptr inbounds %struct.xLIST, %struct.xLIST* %1, i32 0, i32 0, !dbg !2466
  %3 = load volatile i32, i32* %2, align 4, !dbg !2466, !tbaa !862
  %4 = icmp eq i32 %3, 0, !dbg !2466
  br i1 %4, label %14, label %5, !dbg !2468

5:                                                ; preds = %0
  %6 = load volatile %struct.xLIST*, %struct.xLIST** @pxDelayedTaskList, align 4, !dbg !2469, !tbaa !649
  %7 = getelementptr inbounds %struct.xLIST, %struct.xLIST* %6, i32 0, i32 2, i32 1, !dbg !2469
  %8 = load %struct.xLIST_ITEM*, %struct.xLIST_ITEM** %7, align 4, !dbg !2469, !tbaa !856
  %9 = getelementptr inbounds %struct.xLIST_ITEM, %struct.xLIST_ITEM* %8, i32 0, i32 3, !dbg !2469
  %10 = bitcast i8** %9 to %struct.tskTaskControlBlock**, !dbg !2469
  %11 = load %struct.tskTaskControlBlock*, %struct.tskTaskControlBlock** %10, align 4, !dbg !2469, !tbaa !2471
  call void @llvm.dbg.value(metadata %struct.tskTaskControlBlock* %11, metadata !2465, metadata !DIExpression()), !dbg !2472
  %12 = getelementptr inbounds %struct.tskTaskControlBlock, %struct.tskTaskControlBlock* %11, i32 0, i32 1, i32 0, !dbg !2473
  %13 = load i32, i32* %12, align 4, !dbg !2473, !tbaa !2474
  br label %14

14:                                               ; preds = %0, %5
  %15 = phi i32 [ %13, %5 ], [ -1, %0 ]
  store volatile i32 %15, i32* @xNextTaskUnblockTime, align 4, !dbg !2475, !tbaa !580
  ret void, !dbg !2476
}

; Function Attrs: noinline nounwind optsize
define dso_local void @vTaskDelayUntil(i32* nocapture noundef %0, i32 noundef %1) local_unnamed_addr #2 !dbg !2477 {
  call void @llvm.dbg.value(metadata i32* %0, metadata !2483, metadata !DIExpression()), !dbg !2490
  call void @llvm.dbg.value(metadata i32 %1, metadata !2484, metadata !DIExpression()), !dbg !2490
  call void @llvm.dbg.value(metadata i32 0, metadata !2487, metadata !DIExpression()), !dbg !2490
  tail call void @vTaskSuspendAll() #19, !dbg !2491
  %3 = load volatile i32, i32* @xTickCount, align 4, !dbg !2492, !tbaa !580
  call void @llvm.dbg.value(metadata i32 %3, metadata !2488, metadata !DIExpression()), !dbg !2493
  %4 = load i32, i32* %0, align 4, !dbg !2494, !tbaa !580
  %5 = add i32 %4, %1, !dbg !2495
  call void @llvm.dbg.value(metadata i32 %5, metadata !2485, metadata !DIExpression()), !dbg !2490
  %6 = icmp ult i32 %3, %4, !dbg !2496
  %7 = icmp ult i32 %5, %4, !dbg !2498
  %8 = icmp ugt i32 %5, %3
  br i1 %6, label %9, label %11, !dbg !2499

9:                                                ; preds = %2
  %10 = select i1 %7, i1 %8, i1 false, !dbg !2500
  br i1 %10, label %14, label %13, !dbg !2500

11:                                               ; preds = %2
  %12 = select i1 %7, i1 true, i1 %8, !dbg !2503
  br i1 %12, label %14, label %13, !dbg !2503

13:                                               ; preds = %11, %9
  call void @llvm.dbg.value(metadata i32 undef, metadata !2487, metadata !DIExpression()), !dbg !2490
  store i32 %5, i32* %0, align 4, !dbg !2506, !tbaa !580
  br label %16, !dbg !2507

14:                                               ; preds = %9, %11
  store i32 %5, i32* %0, align 4, !dbg !2506, !tbaa !580
  %15 = sub i32 %5, %3, !dbg !2508
  tail call fastcc void @prvAddCurrentTaskToDelayedList(i32 noundef %15, i32 noundef 0) #19, !dbg !2511
  br label %16, !dbg !2512

16:                                               ; preds = %13, %14
  %17 = tail call i32 @xTaskResumeAll() #19, !dbg !2513
  call void @llvm.dbg.value(metadata i32 %17, metadata !2486, metadata !DIExpression()), !dbg !2490
  %18 = icmp eq i32 %17, 0, !dbg !2514
  br i1 %18, label %19, label %20, !dbg !2516

19:                                               ; preds = %16
  store volatile i32 268435456, i32* inttoptr (i32 -536810236 to i32*), align 4, !dbg !2517, !tbaa !580
  tail call void asm sideeffect "dsb", "~{memory}"() #20, !dbg !2517, !srcloc !2520
  tail call void asm sideeffect "isb", ""() #20, !dbg !2517, !srcloc !2521
  br label %20, !dbg !2522

20:                                               ; preds = %16, %19
  ret void, !dbg !2523
}

; Function Attrs: nofree noinline norecurse nounwind optsize
define dso_local void @vTaskSuspendAll() local_unnamed_addr #11 !dbg !2524 {
  %1 = load volatile i32, i32* @uxSchedulerSuspended, align 4, !dbg !2525, !tbaa !1024
  %2 = add i32 %1, 1, !dbg !2525
  store volatile i32 %2, i32* @uxSchedulerSuspended, align 4, !dbg !2525, !tbaa !1024
  ret void, !dbg !2526
}

; Function Attrs: noinline nounwind optsize
define internal fastcc void @prvAddCurrentTaskToDelayedList(i32 noundef %0, i32 noundef %1) unnamed_addr #2 !dbg !2527 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !2531, metadata !DIExpression()), !dbg !2535
  call void @llvm.dbg.value(metadata i32 %1, metadata !2532, metadata !DIExpression()), !dbg !2535
  %3 = load volatile i32, i32* @xTickCount, align 4, !dbg !2536, !tbaa !580
  call void @llvm.dbg.value(metadata i32 %3, metadata !2534, metadata !DIExpression()), !dbg !2535
  %4 = load volatile %struct.tskTaskControlBlock*, %struct.tskTaskControlBlock** @pxCurrentTCB, align 4, !dbg !2537, !tbaa !649
  %5 = getelementptr inbounds %struct.tskTaskControlBlock, %struct.tskTaskControlBlock* %4, i32 0, i32 1, !dbg !2539
  %6 = tail call i32 @uxListRemove(%struct.xLIST_ITEM* noundef nonnull %5) #18, !dbg !2540
  %7 = icmp eq i32 %6, 0, !dbg !2541
  br i1 %7, label %8, label %16, !dbg !2542

8:                                                ; preds = %2
  %9 = load volatile %struct.tskTaskControlBlock*, %struct.tskTaskControlBlock** @pxCurrentTCB, align 4, !dbg !2543, !tbaa !649
  %10 = getelementptr inbounds %struct.tskTaskControlBlock, %struct.tskTaskControlBlock* %9, i32 0, i32 3, !dbg !2543
  %11 = load i32, i32* %10, align 4, !dbg !2543, !tbaa !2273
  %12 = shl nuw i32 1, %11, !dbg !2543
  %13 = xor i32 %12, -1, !dbg !2543
  %14 = load volatile i32, i32* @uxTopReadyPriority, align 4, !dbg !2543, !tbaa !1024
  %15 = and i32 %14, %13, !dbg !2543
  store volatile i32 %15, i32* @uxTopReadyPriority, align 4, !dbg !2543, !tbaa !1024
  br label %16, !dbg !2545

16:                                               ; preds = %2, %8
  %17 = icmp eq i32 %0, -1, !dbg !2546
  %18 = icmp ne i32 %1, 0
  %19 = and i1 %17, %18, !dbg !2549
  br i1 %19, label %20, label %23, !dbg !2549

20:                                               ; preds = %16
  %21 = load volatile %struct.tskTaskControlBlock*, %struct.tskTaskControlBlock** @pxCurrentTCB, align 4, !dbg !2550, !tbaa !649
  %22 = getelementptr inbounds %struct.tskTaskControlBlock, %struct.tskTaskControlBlock* %21, i32 0, i32 1, !dbg !2552
  tail call void @vListInsertEnd(%struct.xLIST* noundef nonnull @xSuspendedTaskList, %struct.xLIST_ITEM* noundef nonnull %22) #18, !dbg !2553
  br label %39, !dbg !2554

23:                                               ; preds = %16
  %24 = add i32 %3, %0, !dbg !2555
  call void @llvm.dbg.value(metadata i32 %24, metadata !2533, metadata !DIExpression()), !dbg !2535
  %25 = load volatile %struct.tskTaskControlBlock*, %struct.tskTaskControlBlock** @pxCurrentTCB, align 4, !dbg !2557, !tbaa !649
  %26 = getelementptr inbounds %struct.tskTaskControlBlock, %struct.tskTaskControlBlock* %25, i32 0, i32 1, i32 0, !dbg !2557
  store i32 %24, i32* %26, align 4, !dbg !2557, !tbaa !2474
  %27 = icmp ult i32 %24, %3, !dbg !2558
  br i1 %27, label %28, label %32, !dbg !2560

28:                                               ; preds = %23
  %29 = load volatile %struct.xLIST*, %struct.xLIST** @pxOverflowDelayedTaskList, align 4, !dbg !2561, !tbaa !649
  %30 = load volatile %struct.tskTaskControlBlock*, %struct.tskTaskControlBlock** @pxCurrentTCB, align 4, !dbg !2563, !tbaa !649
  %31 = getelementptr inbounds %struct.tskTaskControlBlock, %struct.tskTaskControlBlock* %30, i32 0, i32 1, !dbg !2564
  tail call void @vListInsert(%struct.xLIST* noundef %29, %struct.xLIST_ITEM* noundef nonnull %31) #18, !dbg !2565
  br label %39, !dbg !2566

32:                                               ; preds = %23
  %33 = load volatile %struct.xLIST*, %struct.xLIST** @pxDelayedTaskList, align 4, !dbg !2567, !tbaa !649
  %34 = load volatile %struct.tskTaskControlBlock*, %struct.tskTaskControlBlock** @pxCurrentTCB, align 4, !dbg !2569, !tbaa !649
  %35 = getelementptr inbounds %struct.tskTaskControlBlock, %struct.tskTaskControlBlock* %34, i32 0, i32 1, !dbg !2570
  tail call void @vListInsert(%struct.xLIST* noundef %33, %struct.xLIST_ITEM* noundef nonnull %35) #18, !dbg !2571
  %36 = load volatile i32, i32* @xNextTaskUnblockTime, align 4, !dbg !2572, !tbaa !580
  %37 = icmp ult i32 %24, %36, !dbg !2574
  br i1 %37, label %38, label %39, !dbg !2575

38:                                               ; preds = %32
  store volatile i32 %24, i32* @xNextTaskUnblockTime, align 4, !dbg !2576, !tbaa !580
  br label %39, !dbg !2578

39:                                               ; preds = %28, %32, %38, %20
  ret void, !dbg !2579
}

; Function Attrs: noinline nounwind optsize
define dso_local i32 @xTaskResumeAll() local_unnamed_addr #2 !dbg !2580 {
  call void @llvm.dbg.value(metadata %struct.tskTaskControlBlock* null, metadata !2582, metadata !DIExpression()), !dbg !2591
  call void @llvm.dbg.value(metadata i32 0, metadata !2583, metadata !DIExpression()), !dbg !2591
  tail call void @vPortEnterCritical() #18, !dbg !2592
  %1 = load volatile i32, i32* @uxSchedulerSuspended, align 4, !dbg !2593, !tbaa !1024
  %2 = add i32 %1, -1, !dbg !2593
  store volatile i32 %2, i32* @uxSchedulerSuspended, align 4, !dbg !2593, !tbaa !1024
  %3 = load volatile i32, i32* @uxSchedulerSuspended, align 4, !dbg !2594, !tbaa !1024
  %4 = icmp eq i32 %3, 0, !dbg !2595
  br i1 %4, label %5, label %52, !dbg !2596

5:                                                ; preds = %0
  %6 = load volatile i32, i32* @uxCurrentNumberOfTasks, align 4, !dbg !2597, !tbaa !1024
  %7 = icmp eq i32 %6, 0, !dbg !2598
  br i1 %7, label %52, label %8, !dbg !2599

8:                                                ; preds = %5
  call void @llvm.dbg.value(metadata %struct.tskTaskControlBlock* null, metadata !2582, metadata !DIExpression()), !dbg !2591
  %9 = load volatile i32, i32* getelementptr inbounds (%struct.xLIST, %struct.xLIST* @xPendingReadyList, i32 0, i32 0), align 4, !dbg !2600, !tbaa !862
  %10 = icmp eq i32 %9, 0, !dbg !2600
  br i1 %10, label %36, label %11, !dbg !2601

11:                                               ; preds = %8, %32
  %12 = load %struct.xLIST_ITEM*, %struct.xLIST_ITEM** getelementptr inbounds (%struct.xLIST, %struct.xLIST* @xPendingReadyList, i32 0, i32 2, i32 1), align 4, !dbg !2602, !tbaa !856
  %13 = getelementptr inbounds %struct.xLIST_ITEM, %struct.xLIST_ITEM* %12, i32 0, i32 3, !dbg !2602
  %14 = bitcast i8** %13 to %struct.tskTaskControlBlock**, !dbg !2602
  %15 = load %struct.tskTaskControlBlock*, %struct.tskTaskControlBlock** %14, align 4, !dbg !2602, !tbaa !2471
  call void @llvm.dbg.value(metadata %struct.tskTaskControlBlock* %15, metadata !2582, metadata !DIExpression()), !dbg !2591
  %16 = getelementptr inbounds %struct.tskTaskControlBlock, %struct.tskTaskControlBlock* %15, i32 0, i32 2, !dbg !2604
  %17 = tail call i32 @uxListRemove(%struct.xLIST_ITEM* noundef nonnull %16) #18, !dbg !2605
  %18 = getelementptr inbounds %struct.tskTaskControlBlock, %struct.tskTaskControlBlock* %15, i32 0, i32 1, !dbg !2606
  %19 = tail call i32 @uxListRemove(%struct.xLIST_ITEM* noundef nonnull %18) #18, !dbg !2607
  %20 = getelementptr inbounds %struct.tskTaskControlBlock, %struct.tskTaskControlBlock* %15, i32 0, i32 3, !dbg !2608
  %21 = load i32, i32* %20, align 4, !dbg !2608, !tbaa !2273
  %22 = shl nuw i32 1, %21, !dbg !2608
  %23 = load volatile i32, i32* @uxTopReadyPriority, align 4, !dbg !2608, !tbaa !1024
  %24 = or i32 %23, %22, !dbg !2608
  store volatile i32 %24, i32* @uxTopReadyPriority, align 4, !dbg !2608, !tbaa !1024
  %25 = getelementptr inbounds [5 x %struct.xLIST], [5 x %struct.xLIST]* @pxReadyTasksLists, i32 0, i32 %21, !dbg !2608
  tail call void @vListInsertEnd(%struct.xLIST* noundef nonnull %25, %struct.xLIST_ITEM* noundef nonnull %18) #18, !dbg !2608
  %26 = load i32, i32* %20, align 4, !dbg !2609, !tbaa !2273
  %27 = load volatile %struct.tskTaskControlBlock*, %struct.tskTaskControlBlock** @pxCurrentTCB, align 4, !dbg !2611, !tbaa !649
  %28 = getelementptr inbounds %struct.tskTaskControlBlock, %struct.tskTaskControlBlock* %27, i32 0, i32 3, !dbg !2612
  %29 = load i32, i32* %28, align 4, !dbg !2612, !tbaa !2273
  %30 = icmp ult i32 %26, %29, !dbg !2613
  br i1 %30, label %32, label %31, !dbg !2614

31:                                               ; preds = %11
  store volatile i32 1, i32* @xYieldPending, align 4, !dbg !2615, !tbaa !1024
  br label %32, !dbg !2617

32:                                               ; preds = %11, %31
  call void @llvm.dbg.value(metadata %struct.tskTaskControlBlock* %15, metadata !2582, metadata !DIExpression()), !dbg !2591
  %33 = load volatile i32, i32* getelementptr inbounds (%struct.xLIST, %struct.xLIST* @xPendingReadyList, i32 0, i32 0), align 4, !dbg !2600, !tbaa !862
  %34 = icmp eq i32 %33, 0, !dbg !2600
  br i1 %34, label %35, label %11, !dbg !2601, !llvm.loop !2618

35:                                               ; preds = %32
  tail call fastcc void @prvResetNextTaskUnblockTime() #19, !dbg !2620
  br label %36, !dbg !2623

36:                                               ; preds = %8, %35
  %37 = load volatile i32, i32* @uxPendedTicks, align 4, !dbg !2624, !tbaa !1024
  call void @llvm.dbg.value(metadata i32 %37, metadata !2584, metadata !DIExpression()), !dbg !2625
  %38 = icmp eq i32 %37, 0, !dbg !2626
  br i1 %38, label %48, label %39, !dbg !2628

39:                                               ; preds = %36, %44
  %40 = phi i32 [ %45, %44 ], [ %37, %36 ], !dbg !2625
  call void @llvm.dbg.value(metadata i32 %40, metadata !2584, metadata !DIExpression()), !dbg !2625
  %41 = tail call i32 @xTaskIncrementTick() #19, !dbg !2629
  %42 = icmp eq i32 %41, 0, !dbg !2633
  br i1 %42, label %44, label %43, !dbg !2634

43:                                               ; preds = %39
  store volatile i32 1, i32* @xYieldPending, align 4, !dbg !2635, !tbaa !1024
  br label %44, !dbg !2637

44:                                               ; preds = %39, %43
  %45 = add i32 %40, -1, !dbg !2638
  call void @llvm.dbg.value(metadata i32 %45, metadata !2584, metadata !DIExpression()), !dbg !2625
  %46 = icmp eq i32 %45, 0, !dbg !2639
  br i1 %46, label %47, label %39, !dbg !2640, !llvm.loop !2641

47:                                               ; preds = %44
  store volatile i32 0, i32* @uxPendedTicks, align 4, !dbg !2644, !tbaa !1024
  br label %48, !dbg !2645

48:                                               ; preds = %36, %47
  %49 = load volatile i32, i32* @xYieldPending, align 4, !dbg !2646, !tbaa !1024
  %50 = icmp eq i32 %49, 0, !dbg !2648
  br i1 %50, label %52, label %51, !dbg !2649

51:                                               ; preds = %48
  call void @llvm.dbg.value(metadata i32 1, metadata !2583, metadata !DIExpression()), !dbg !2591
  store volatile i32 268435456, i32* inttoptr (i32 -536810236 to i32*), align 4, !dbg !2650, !tbaa !580
  tail call void asm sideeffect "dsb", "~{memory}"() #20, !dbg !2650, !srcloc !2653
  tail call void asm sideeffect "isb", ""() #20, !dbg !2650, !srcloc !2654
  br label %52, !dbg !2655

52:                                               ; preds = %0, %5, %48, %51
  %53 = phi i32 [ 1, %51 ], [ 0, %48 ], [ 0, %5 ], [ 0, %0 ], !dbg !2591
  call void @llvm.dbg.value(metadata i32 %53, metadata !2583, metadata !DIExpression()), !dbg !2591
  tail call void @vPortExitCritical() #18, !dbg !2656
  ret i32 %53, !dbg !2657
}

; Function Attrs: noinline nounwind optsize
define dso_local i32 @xTaskIncrementTick() local_unnamed_addr #2 !dbg !2658 {
  call void @llvm.dbg.value(metadata i32 0, metadata !2662, metadata !DIExpression()), !dbg !2670
  %1 = load volatile i32, i32* @uxSchedulerSuspended, align 4, !dbg !2671, !tbaa !1024
  %2 = icmp eq i32 %1, 0, !dbg !2672
  br i1 %2, label %3, label %69, !dbg !2673

3:                                                ; preds = %0
  %4 = load volatile i32, i32* @xTickCount, align 4, !dbg !2674, !tbaa !580
  %5 = add i32 %4, 1, !dbg !2675
  call void @llvm.dbg.value(metadata i32 %5, metadata !2663, metadata !DIExpression()), !dbg !2676
  store volatile i32 %5, i32* @xTickCount, align 4, !dbg !2677, !tbaa !580
  %6 = icmp eq i32 %5, 0, !dbg !2678
  br i1 %6, label %7, label %12, !dbg !2679

7:                                                ; preds = %3
  %8 = load volatile %struct.xLIST*, %struct.xLIST** @pxDelayedTaskList, align 4, !dbg !2680, !tbaa !649
  call void @llvm.dbg.value(metadata %struct.xLIST* %8, metadata !2666, metadata !DIExpression()), !dbg !2681
  %9 = load volatile %struct.xLIST*, %struct.xLIST** @pxOverflowDelayedTaskList, align 4, !dbg !2680, !tbaa !649
  store volatile %struct.xLIST* %9, %struct.xLIST** @pxDelayedTaskList, align 4, !dbg !2680, !tbaa !649
  store volatile %struct.xLIST* %8, %struct.xLIST** @pxOverflowDelayedTaskList, align 4, !dbg !2680, !tbaa !649
  %10 = load volatile i32, i32* @xNumOfOverflows, align 4, !dbg !2680, !tbaa !1024
  %11 = add nsw i32 %10, 1, !dbg !2680
  store volatile i32 %11, i32* @xNumOfOverflows, align 4, !dbg !2680, !tbaa !1024
  tail call fastcc void @prvResetNextTaskUnblockTime() #19, !dbg !2680
  br label %12, !dbg !2682

12:                                               ; preds = %3, %7
  %13 = load volatile i32, i32* @xNextTaskUnblockTime, align 4, !dbg !2683, !tbaa !580
  %14 = icmp ult i32 %5, %13, !dbg !2685
  br i1 %14, label %60, label %15, !dbg !2686

15:                                               ; preds = %12
  call void @llvm.dbg.value(metadata i32 0, metadata !2662, metadata !DIExpression()), !dbg !2670
  %16 = load volatile %struct.xLIST*, %struct.xLIST** @pxDelayedTaskList, align 4, !dbg !2687, !tbaa !649
  %17 = getelementptr inbounds %struct.xLIST, %struct.xLIST* %16, i32 0, i32 0, !dbg !2687
  %18 = load volatile i32, i32* %17, align 4, !dbg !2687, !tbaa !862
  %19 = icmp eq i32 %18, 0, !dbg !2687
  br i1 %19, label %57, label %20, !dbg !2693

20:                                               ; preds = %15, %40
  %21 = phi i32 [ %52, %40 ], [ 0, %15 ]
  call void @llvm.dbg.value(metadata i32 %21, metadata !2662, metadata !DIExpression()), !dbg !2670
  %22 = load volatile %struct.xLIST*, %struct.xLIST** @pxDelayedTaskList, align 4, !dbg !2694, !tbaa !649
  %23 = getelementptr inbounds %struct.xLIST, %struct.xLIST* %22, i32 0, i32 2, i32 1, !dbg !2694
  %24 = load %struct.xLIST_ITEM*, %struct.xLIST_ITEM** %23, align 4, !dbg !2694, !tbaa !856
  %25 = getelementptr inbounds %struct.xLIST_ITEM, %struct.xLIST_ITEM* %24, i32 0, i32 3, !dbg !2694
  %26 = bitcast i8** %25 to %struct.tskTaskControlBlock**, !dbg !2694
  %27 = load %struct.tskTaskControlBlock*, %struct.tskTaskControlBlock** %26, align 4, !dbg !2694, !tbaa !2471
  call void @llvm.dbg.value(metadata %struct.tskTaskControlBlock* %27, metadata !2660, metadata !DIExpression()), !dbg !2670
  %28 = getelementptr inbounds %struct.tskTaskControlBlock, %struct.tskTaskControlBlock* %27, i32 0, i32 1, !dbg !2696
  %29 = getelementptr inbounds %struct.xLIST_ITEM, %struct.xLIST_ITEM* %28, i32 0, i32 0, !dbg !2696
  %30 = load i32, i32* %29, align 4, !dbg !2696, !tbaa !2474
  call void @llvm.dbg.value(metadata i32 %30, metadata !2661, metadata !DIExpression()), !dbg !2670
  %31 = icmp ult i32 %5, %30, !dbg !2697
  br i1 %31, label %57, label %32, !dbg !2699

32:                                               ; preds = %20
  %33 = tail call i32 @uxListRemove(%struct.xLIST_ITEM* noundef nonnull %28) #18, !dbg !2700
  %34 = getelementptr inbounds %struct.tskTaskControlBlock, %struct.tskTaskControlBlock* %27, i32 0, i32 2, i32 4, !dbg !2701
  %35 = load %struct.xLIST*, %struct.xLIST** %34, align 4, !dbg !2701, !tbaa !2417
  %36 = icmp eq %struct.xLIST* %35, null, !dbg !2703
  br i1 %36, label %40, label %37, !dbg !2704

37:                                               ; preds = %32
  %38 = getelementptr inbounds %struct.tskTaskControlBlock, %struct.tskTaskControlBlock* %27, i32 0, i32 2, !dbg !2701
  %39 = tail call i32 @uxListRemove(%struct.xLIST_ITEM* noundef nonnull %38) #18, !dbg !2705
  br label %40, !dbg !2707

40:                                               ; preds = %32, %37
  %41 = getelementptr inbounds %struct.tskTaskControlBlock, %struct.tskTaskControlBlock* %27, i32 0, i32 3, !dbg !2708
  %42 = load i32, i32* %41, align 4, !dbg !2708, !tbaa !2273
  %43 = shl nuw i32 1, %42, !dbg !2708
  %44 = load volatile i32, i32* @uxTopReadyPriority, align 4, !dbg !2708, !tbaa !1024
  %45 = or i32 %44, %43, !dbg !2708
  store volatile i32 %45, i32* @uxTopReadyPriority, align 4, !dbg !2708, !tbaa !1024
  %46 = getelementptr inbounds [5 x %struct.xLIST], [5 x %struct.xLIST]* @pxReadyTasksLists, i32 0, i32 %42, !dbg !2708
  tail call void @vListInsertEnd(%struct.xLIST* noundef nonnull %46, %struct.xLIST_ITEM* noundef nonnull %28) #18, !dbg !2708
  %47 = load i32, i32* %41, align 4, !dbg !2709, !tbaa !2273
  %48 = load volatile %struct.tskTaskControlBlock*, %struct.tskTaskControlBlock** @pxCurrentTCB, align 4, !dbg !2712, !tbaa !649
  %49 = getelementptr inbounds %struct.tskTaskControlBlock, %struct.tskTaskControlBlock* %48, i32 0, i32 3, !dbg !2713
  %50 = load i32, i32* %49, align 4, !dbg !2713, !tbaa !2273
  %51 = icmp ult i32 %47, %50, !dbg !2714
  %52 = select i1 %51, i32 %21, i32 1, !dbg !2715
  call void @llvm.dbg.value(metadata i32 %52, metadata !2662, metadata !DIExpression()), !dbg !2670
  %53 = load volatile %struct.xLIST*, %struct.xLIST** @pxDelayedTaskList, align 4, !dbg !2687, !tbaa !649
  %54 = getelementptr inbounds %struct.xLIST, %struct.xLIST* %53, i32 0, i32 0, !dbg !2687
  %55 = load volatile i32, i32* %54, align 4, !dbg !2687, !tbaa !862
  %56 = icmp eq i32 %55, 0, !dbg !2687
  br i1 %56, label %57, label %20, !dbg !2693, !llvm.loop !2716

57:                                               ; preds = %20, %40, %15
  %58 = phi i32 [ -1, %15 ], [ -1, %40 ], [ %30, %20 ]
  %59 = phi i32 [ 0, %15 ], [ %52, %40 ], [ %21, %20 ]
  store volatile i32 %58, i32* @xNextTaskUnblockTime, align 4, !dbg !2719, !tbaa !580
  br label %60, !dbg !2720

60:                                               ; preds = %57, %12
  %61 = phi i32 [ 0, %12 ], [ %59, %57 ], !dbg !2723
  call void @llvm.dbg.value(metadata i32 %61, metadata !2662, metadata !DIExpression()), !dbg !2670
  %62 = load volatile %struct.tskTaskControlBlock*, %struct.tskTaskControlBlock** @pxCurrentTCB, align 4, !dbg !2720, !tbaa !649
  %63 = getelementptr inbounds %struct.tskTaskControlBlock, %struct.tskTaskControlBlock* %62, i32 0, i32 3, !dbg !2720
  %64 = load i32, i32* %63, align 4, !dbg !2720, !tbaa !2273
  %65 = getelementptr inbounds [5 x %struct.xLIST], [5 x %struct.xLIST]* @pxReadyTasksLists, i32 0, i32 %64, i32 0, !dbg !2720
  %66 = load volatile i32, i32* %65, align 4, !dbg !2720, !tbaa !862
  %67 = icmp ugt i32 %66, 1, !dbg !2724
  %68 = select i1 %67, i32 1, i32 %61, !dbg !2725
  call void @llvm.dbg.value(metadata i32 %68, metadata !2662, metadata !DIExpression()), !dbg !2670
  br label %72, !dbg !2726

69:                                               ; preds = %0
  %70 = load volatile i32, i32* @uxPendedTicks, align 4, !dbg !2727, !tbaa !1024
  %71 = add i32 %70, 1, !dbg !2727
  store volatile i32 %71, i32* @uxPendedTicks, align 4, !dbg !2727, !tbaa !1024
  br label %72

72:                                               ; preds = %69, %60
  %73 = phi i32 [ %68, %60 ], [ 0, %69 ], !dbg !2670
  call void @llvm.dbg.value(metadata i32 %73, metadata !2662, metadata !DIExpression()), !dbg !2670
  %74 = load volatile i32, i32* @xYieldPending, align 4, !dbg !2729, !tbaa !1024
  %75 = icmp eq i32 %74, 0, !dbg !2732
  %76 = select i1 %75, i32 %73, i32 1, !dbg !2733
  call void @llvm.dbg.value(metadata i32 %76, metadata !2662, metadata !DIExpression()), !dbg !2670
  ret i32 %76, !dbg !2734
}

; Function Attrs: noinline nounwind optsize
define dso_local void @vTaskDelay(i32 noundef %0) local_unnamed_addr #2 !dbg !2735 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !2739, metadata !DIExpression()), !dbg !2741
  call void @llvm.dbg.value(metadata i32 0, metadata !2740, metadata !DIExpression()), !dbg !2741
  %2 = icmp eq i32 %0, 0, !dbg !2742
  br i1 %2, label %6, label %3, !dbg !2744

3:                                                ; preds = %1
  tail call void @vTaskSuspendAll() #19, !dbg !2745
  tail call fastcc void @prvAddCurrentTaskToDelayedList(i32 noundef %0, i32 noundef 0) #19, !dbg !2747
  %4 = tail call i32 @xTaskResumeAll() #19, !dbg !2749
  call void @llvm.dbg.value(metadata i32 %4, metadata !2740, metadata !DIExpression()), !dbg !2741
  %5 = icmp eq i32 %4, 0, !dbg !2750
  call void @llvm.dbg.value(metadata i32 undef, metadata !2740, metadata !DIExpression()), !dbg !2741
  br i1 %5, label %6, label %7, !dbg !2751

6:                                                ; preds = %1, %3
  store volatile i32 268435456, i32* inttoptr (i32 -536810236 to i32*), align 4, !dbg !2752, !tbaa !580
  tail call void asm sideeffect "dsb", "~{memory}"() #20, !dbg !2752, !srcloc !2756
  tail call void asm sideeffect "isb", ""() #20, !dbg !2752, !srcloc !2757
  br label %7, !dbg !2758

7:                                                ; preds = %3, %6
  ret void, !dbg !2759
}

; Function Attrs: noinline nounwind optsize
define dso_local i32 @uxTaskPriorityGet(%struct.tskTaskControlBlock* noundef readonly %0) local_unnamed_addr #2 !dbg !2760 {
  call void @llvm.dbg.value(metadata %struct.tskTaskControlBlock* %0, metadata !2765, metadata !DIExpression()), !dbg !2770
  tail call void @vPortEnterCritical() #18, !dbg !2771
  %2 = icmp eq %struct.tskTaskControlBlock* %0, null, !dbg !2772
  br i1 %2, label %3, label %5, !dbg !2772

3:                                                ; preds = %1
  %4 = load volatile %struct.tskTaskControlBlock*, %struct.tskTaskControlBlock** @pxCurrentTCB, align 4, !dbg !2772, !tbaa !649
  br label %5, !dbg !2772

5:                                                ; preds = %1, %3
  %6 = phi %struct.tskTaskControlBlock* [ %4, %3 ], [ %0, %1 ], !dbg !2772
  call void @llvm.dbg.value(metadata %struct.tskTaskControlBlock* %6, metadata !2766, metadata !DIExpression()), !dbg !2770
  %7 = getelementptr inbounds %struct.tskTaskControlBlock, %struct.tskTaskControlBlock* %6, i32 0, i32 3, !dbg !2774
  %8 = load i32, i32* %7, align 4, !dbg !2774, !tbaa !2273
  call void @llvm.dbg.value(metadata i32 %8, metadata !2769, metadata !DIExpression()), !dbg !2770
  tail call void @vPortExitCritical() #18, !dbg !2775
  ret i32 %8, !dbg !2776
}

; Function Attrs: noinline nounwind optsize
define dso_local i32 @uxTaskPriorityGetFromISR(%struct.tskTaskControlBlock* noundef readonly %0) local_unnamed_addr #2 !dbg !2777 {
  call void @llvm.dbg.value(metadata %struct.tskTaskControlBlock* %0, metadata !2779, metadata !DIExpression()), !dbg !2783
  %2 = tail call { i32, i32 } asm sideeffect "\09mrs $0, basepri\09\09\09\09\09\09\09\09\09\09\09\0A\09mov $1, $2\09\09\09\09\09\09\09\09\09\09\09\09\0A\09msr basepri, $1\09\09\09\09\09\09\09\09\09\09\09\0A\09isb\09\09\09\09\09\09\09\09\09\09\09\09\09\09\0A\09dsb\09\09\09\09\09\09\09\09\09\09\09\09\09\09\0A", "=r,=r,i,~{memory}"(i32 191) #20, !dbg !2784, !srcloc !2790
  call void @llvm.dbg.value(metadata i32 undef, metadata !2787, metadata !DIExpression()) #20, !dbg !2791
  call void @llvm.dbg.value(metadata i32 undef, metadata !2788, metadata !DIExpression()) #20, !dbg !2791
  call void @llvm.dbg.value(metadata i32 undef, metadata !2782, metadata !DIExpression()), !dbg !2783
  %3 = icmp eq %struct.tskTaskControlBlock* %0, null, !dbg !2792
  br i1 %3, label %4, label %6, !dbg !2792

4:                                                ; preds = %1
  %5 = load volatile %struct.tskTaskControlBlock*, %struct.tskTaskControlBlock** @pxCurrentTCB, align 4, !dbg !2792, !tbaa !649
  br label %6, !dbg !2792

6:                                                ; preds = %1, %4
  %7 = phi %struct.tskTaskControlBlock* [ %5, %4 ], [ %0, %1 ], !dbg !2792
  %8 = extractvalue { i32, i32 } %2, 0, !dbg !2784
  call void @llvm.dbg.value(metadata i32 %8, metadata !2787, metadata !DIExpression()) #20, !dbg !2791
  call void @llvm.dbg.value(metadata i32 %8, metadata !2782, metadata !DIExpression()), !dbg !2783
  call void @llvm.dbg.value(metadata %struct.tskTaskControlBlock* %7, metadata !2780, metadata !DIExpression()), !dbg !2783
  %9 = getelementptr inbounds %struct.tskTaskControlBlock, %struct.tskTaskControlBlock* %7, i32 0, i32 3, !dbg !2794
  %10 = load i32, i32* %9, align 4, !dbg !2794, !tbaa !2273
  call void @llvm.dbg.value(metadata i32 %10, metadata !2781, metadata !DIExpression()), !dbg !2783
  call void @llvm.dbg.value(metadata i32 undef, metadata !2795, metadata !DIExpression()) #20, !dbg !2798
  tail call void asm sideeffect "\09msr basepri, $0\09", "r,~{memory}"(i32 %8) #20, !dbg !2800, !srcloc !2801
  ret i32 %10, !dbg !2802
}

; Function Attrs: noinline nounwind optsize
define dso_local void @vTaskPrioritySet(%struct.tskTaskControlBlock* noundef %0, i32 noundef %1) local_unnamed_addr #2 !dbg !2803 {
  call void @llvm.dbg.value(metadata %struct.tskTaskControlBlock* %0, metadata !2807, metadata !DIExpression()), !dbg !2813
  call void @llvm.dbg.value(metadata i32 %1, metadata !2808, metadata !DIExpression()), !dbg !2813
  call void @llvm.dbg.value(metadata i32 0, metadata !2812, metadata !DIExpression()), !dbg !2813
  %3 = icmp ult i32 %1, 4, !dbg !2814
  %4 = select i1 %3, i32 %1, i32 4, !dbg !2814
  call void @llvm.dbg.value(metadata i32 %4, metadata !2808, metadata !DIExpression()), !dbg !2813
  tail call void @vPortEnterCritical() #18, !dbg !2815
  %5 = icmp eq %struct.tskTaskControlBlock* %0, null, !dbg !2816
  br i1 %5, label %6, label %8, !dbg !2816

6:                                                ; preds = %2
  %7 = load volatile %struct.tskTaskControlBlock*, %struct.tskTaskControlBlock** @pxCurrentTCB, align 4, !dbg !2816, !tbaa !649
  br label %8, !dbg !2816

8:                                                ; preds = %2, %6
  %9 = phi %struct.tskTaskControlBlock* [ %7, %6 ], [ %0, %2 ], !dbg !2816
  call void @llvm.dbg.value(metadata %struct.tskTaskControlBlock* %9, metadata !2809, metadata !DIExpression()), !dbg !2813
  %10 = getelementptr inbounds %struct.tskTaskControlBlock, %struct.tskTaskControlBlock* %9, i32 0, i32 6, !dbg !2818
  %11 = load i32, i32* %10, align 4, !dbg !2818, !tbaa !2277
  call void @llvm.dbg.value(metadata i32 %11, metadata !2810, metadata !DIExpression()), !dbg !2813
  %12 = icmp eq i32 %11, %4, !dbg !2820
  br i1 %12, label %59, label %13, !dbg !2822

13:                                               ; preds = %8
  %14 = icmp ugt i32 %4, %11, !dbg !2823
  %15 = load volatile %struct.tskTaskControlBlock*, %struct.tskTaskControlBlock** @pxCurrentTCB, align 4, !dbg !2826, !tbaa !649
  br i1 %14, label %16, label %23, !dbg !2827

16:                                               ; preds = %13
  %17 = icmp eq %struct.tskTaskControlBlock* %9, %15, !dbg !2828
  br i1 %17, label %25, label %18, !dbg !2831

18:                                               ; preds = %16
  %19 = load volatile %struct.tskTaskControlBlock*, %struct.tskTaskControlBlock** @pxCurrentTCB, align 4, !dbg !2832, !tbaa !649
  %20 = getelementptr inbounds %struct.tskTaskControlBlock, %struct.tskTaskControlBlock* %19, i32 0, i32 3, !dbg !2835
  %21 = load i32, i32* %20, align 4, !dbg !2835, !tbaa !2273
  %22 = icmp ult i32 %4, %21, !dbg !2836
  br label %25, !dbg !2837

23:                                               ; preds = %13
  %24 = icmp ne %struct.tskTaskControlBlock* %9, %15, !dbg !2838
  br label %25, !dbg !2840

25:                                               ; preds = %23, %18, %16
  %26 = phi i1 [ true, %16 ], [ %22, %18 ], [ %24, %23 ], !dbg !2813
  call void @llvm.dbg.value(metadata i32 undef, metadata !2812, metadata !DIExpression()), !dbg !2813
  %27 = getelementptr inbounds %struct.tskTaskControlBlock, %struct.tskTaskControlBlock* %9, i32 0, i32 3, !dbg !2841
  %28 = load i32, i32* %27, align 4, !dbg !2841, !tbaa !2273
  call void @llvm.dbg.value(metadata i32 %28, metadata !2811, metadata !DIExpression()), !dbg !2813
  %29 = icmp eq i32 %11, %28, !dbg !2842
  br i1 %29, label %30, label %31, !dbg !2845

30:                                               ; preds = %25
  store i32 %4, i32* %27, align 4, !dbg !2846, !tbaa !2273
  br label %31, !dbg !2848

31:                                               ; preds = %25, %30
  store i32 %4, i32* %10, align 4, !dbg !2849, !tbaa !2277
  %32 = getelementptr inbounds %struct.tskTaskControlBlock, %struct.tskTaskControlBlock* %9, i32 0, i32 2, i32 0, !dbg !2850
  %33 = load i32, i32* %32, align 4, !dbg !2850, !tbaa !2288
  %34 = icmp sgt i32 %33, -1, !dbg !2852
  br i1 %34, label %35, label %37, !dbg !2853

35:                                               ; preds = %31
  %36 = sub nuw nsw i32 5, %4, !dbg !2854
  store i32 %36, i32* %32, align 4, !dbg !2854, !tbaa !2288
  br label %37, !dbg !2856

37:                                               ; preds = %31, %35
  %38 = getelementptr inbounds %struct.tskTaskControlBlock, %struct.tskTaskControlBlock* %9, i32 0, i32 1, !dbg !2857
  %39 = getelementptr inbounds %struct.tskTaskControlBlock, %struct.tskTaskControlBlock* %9, i32 0, i32 1, i32 4, !dbg !2857
  %40 = load %struct.xLIST*, %struct.xLIST** %39, align 4, !dbg !2857, !tbaa !2859
  %41 = getelementptr inbounds [5 x %struct.xLIST], [5 x %struct.xLIST]* @pxReadyTasksLists, i32 0, i32 %28, !dbg !2857
  %42 = icmp eq %struct.xLIST* %40, %41, !dbg !2857
  br i1 %42, label %43, label %57, !dbg !2860

43:                                               ; preds = %37
  %44 = tail call i32 @uxListRemove(%struct.xLIST_ITEM* noundef nonnull %38) #18, !dbg !2861
  %45 = icmp eq i32 %44, 0, !dbg !2864
  br i1 %45, label %46, label %51, !dbg !2865

46:                                               ; preds = %43
  %47 = shl nuw i32 1, %28, !dbg !2866
  %48 = xor i32 %47, -1, !dbg !2866
  %49 = load volatile i32, i32* @uxTopReadyPriority, align 4, !dbg !2866, !tbaa !1024
  %50 = and i32 %49, %48, !dbg !2866
  store volatile i32 %50, i32* @uxTopReadyPriority, align 4, !dbg !2866, !tbaa !1024
  br label %51, !dbg !2868

51:                                               ; preds = %43, %46
  %52 = load i32, i32* %27, align 4, !dbg !2869, !tbaa !2273
  %53 = shl nuw i32 1, %52, !dbg !2869
  %54 = load volatile i32, i32* @uxTopReadyPriority, align 4, !dbg !2869, !tbaa !1024
  %55 = or i32 %54, %53, !dbg !2869
  store volatile i32 %55, i32* @uxTopReadyPriority, align 4, !dbg !2869, !tbaa !1024
  %56 = getelementptr inbounds [5 x %struct.xLIST], [5 x %struct.xLIST]* @pxReadyTasksLists, i32 0, i32 %52, !dbg !2869
  tail call void @vListInsertEnd(%struct.xLIST* noundef nonnull %56, %struct.xLIST_ITEM* noundef nonnull %38) #18, !dbg !2869
  br label %57, !dbg !2870

57:                                               ; preds = %37, %51
  br i1 %26, label %59, label %58, !dbg !2871

58:                                               ; preds = %57
  store volatile i32 268435456, i32* inttoptr (i32 -536810236 to i32*), align 4, !dbg !2872, !tbaa !580
  tail call void asm sideeffect "dsb", "~{memory}"() #20, !dbg !2872, !srcloc !2876
  tail call void asm sideeffect "isb", ""() #20, !dbg !2872, !srcloc !2877
  br label %59, !dbg !2878

59:                                               ; preds = %58, %57, %8
  tail call void @vPortExitCritical() #18, !dbg !2879
  ret void, !dbg !2880
}

; Function Attrs: noinline nounwind optsize
define dso_local void @vTaskSuspend(%struct.tskTaskControlBlock* noundef %0) local_unnamed_addr #2 !dbg !2881 {
  call void @llvm.dbg.value(metadata %struct.tskTaskControlBlock* %0, metadata !2883, metadata !DIExpression()), !dbg !2885
  tail call void @vPortEnterCritical() #18, !dbg !2886
  %2 = icmp eq %struct.tskTaskControlBlock* %0, null, !dbg !2887
  br i1 %2, label %3, label %5, !dbg !2887

3:                                                ; preds = %1
  %4 = load volatile %struct.tskTaskControlBlock*, %struct.tskTaskControlBlock** @pxCurrentTCB, align 4, !dbg !2887, !tbaa !649
  br label %5, !dbg !2887

5:                                                ; preds = %1, %3
  %6 = phi %struct.tskTaskControlBlock* [ %4, %3 ], [ %0, %1 ], !dbg !2887
  call void @llvm.dbg.value(metadata %struct.tskTaskControlBlock* %6, metadata !2884, metadata !DIExpression()), !dbg !2885
  %7 = getelementptr inbounds %struct.tskTaskControlBlock, %struct.tskTaskControlBlock* %6, i32 0, i32 1, !dbg !2889
  %8 = tail call i32 @uxListRemove(%struct.xLIST_ITEM* noundef nonnull %7) #18, !dbg !2891
  %9 = icmp eq i32 %8, 0, !dbg !2892
  br i1 %9, label %10, label %21, !dbg !2893

10:                                               ; preds = %5
  %11 = getelementptr inbounds %struct.tskTaskControlBlock, %struct.tskTaskControlBlock* %6, i32 0, i32 3, !dbg !2894
  %12 = load i32, i32* %11, align 4, !dbg !2894, !tbaa !2273
  %13 = getelementptr inbounds [5 x %struct.xLIST], [5 x %struct.xLIST]* @pxReadyTasksLists, i32 0, i32 %12, i32 0, !dbg !2894
  %14 = load volatile i32, i32* %13, align 4, !dbg !2894, !tbaa !862
  %15 = icmp eq i32 %14, 0, !dbg !2894
  br i1 %15, label %16, label %21, !dbg !2898

16:                                               ; preds = %10
  %17 = shl nuw i32 1, %12, !dbg !2899
  %18 = xor i32 %17, -1, !dbg !2899
  %19 = load volatile i32, i32* @uxTopReadyPriority, align 4, !dbg !2899, !tbaa !1024
  %20 = and i32 %19, %18, !dbg !2899
  store volatile i32 %20, i32* @uxTopReadyPriority, align 4, !dbg !2899, !tbaa !1024
  br label %21, !dbg !2899

21:                                               ; preds = %5, %10, %16
  %22 = getelementptr inbounds %struct.tskTaskControlBlock, %struct.tskTaskControlBlock* %6, i32 0, i32 2, i32 4, !dbg !2901
  %23 = load %struct.xLIST*, %struct.xLIST** %22, align 4, !dbg !2901, !tbaa !2417
  %24 = icmp eq %struct.xLIST* %23, null, !dbg !2903
  br i1 %24, label %28, label %25, !dbg !2904

25:                                               ; preds = %21
  %26 = getelementptr inbounds %struct.tskTaskControlBlock, %struct.tskTaskControlBlock* %6, i32 0, i32 2, !dbg !2901
  %27 = tail call i32 @uxListRemove(%struct.xLIST_ITEM* noundef nonnull %26) #18, !dbg !2905
  br label %28, !dbg !2907

28:                                               ; preds = %21, %25
  tail call void @vListInsertEnd(%struct.xLIST* noundef nonnull @xSuspendedTaskList, %struct.xLIST_ITEM* noundef nonnull %7) #18, !dbg !2908
  %29 = getelementptr inbounds %struct.tskTaskControlBlock, %struct.tskTaskControlBlock* %6, i32 0, i32 9, !dbg !2909
  %30 = load volatile i8, i8* %29, align 4, !dbg !2909, !tbaa !2297
  %31 = icmp eq i8 %30, 1, !dbg !2912
  br i1 %31, label %32, label %33, !dbg !2913

32:                                               ; preds = %28
  store volatile i8 0, i8* %29, align 4, !dbg !2914, !tbaa !2297
  br label %33, !dbg !2916

33:                                               ; preds = %32, %28
  tail call void @vPortExitCritical() #18, !dbg !2917
  %34 = load volatile i32, i32* @xSchedulerRunning, align 4, !dbg !2918, !tbaa !1024
  %35 = icmp eq i32 %34, 0, !dbg !2920
  br i1 %35, label %37, label %36, !dbg !2921

36:                                               ; preds = %33
  tail call void @vPortEnterCritical() #18, !dbg !2922
  tail call fastcc void @prvResetNextTaskUnblockTime() #19, !dbg !2924
  tail call void @vPortExitCritical() #18, !dbg !2926
  br label %37, !dbg !2927

37:                                               ; preds = %33, %36
  %38 = load volatile %struct.tskTaskControlBlock*, %struct.tskTaskControlBlock** @pxCurrentTCB, align 4, !dbg !2928, !tbaa !649
  %39 = icmp eq %struct.tskTaskControlBlock* %6, %38, !dbg !2930
  br i1 %39, label %40, label %50, !dbg !2931

40:                                               ; preds = %37
  %41 = load volatile i32, i32* @xSchedulerRunning, align 4, !dbg !2932, !tbaa !1024
  %42 = icmp eq i32 %41, 0, !dbg !2935
  br i1 %42, label %44, label %43, !dbg !2936

43:                                               ; preds = %40
  store volatile i32 268435456, i32* inttoptr (i32 -536810236 to i32*), align 4, !dbg !2937, !tbaa !580
  tail call void asm sideeffect "dsb", "~{memory}"() #20, !dbg !2937, !srcloc !2940
  tail call void asm sideeffect "isb", ""() #20, !dbg !2937, !srcloc !2941
  br label %50, !dbg !2942

44:                                               ; preds = %40
  %45 = load volatile i32, i32* getelementptr inbounds (%struct.xLIST, %struct.xLIST* @xSuspendedTaskList, i32 0, i32 0), align 4, !dbg !2943, !tbaa !862
  %46 = load volatile i32, i32* @uxCurrentNumberOfTasks, align 4, !dbg !2946, !tbaa !1024
  %47 = icmp eq i32 %45, %46, !dbg !2947
  br i1 %47, label %48, label %49, !dbg !2948

48:                                               ; preds = %44
  store volatile %struct.tskTaskControlBlock* null, %struct.tskTaskControlBlock** @pxCurrentTCB, align 4, !dbg !2949, !tbaa !649
  br label %50, !dbg !2951

49:                                               ; preds = %44
  tail call void @vTaskSwitchContext() #19, !dbg !2952
  br label %50

50:                                               ; preds = %37, %43, %49, %48
  ret void, !dbg !2954
}

; Function Attrs: noinline nounwind optsize
define dso_local void @vTaskSwitchContext() local_unnamed_addr #2 !dbg !2955 {
  %1 = load volatile i32, i32* @uxSchedulerSuspended, align 4, !dbg !2964, !tbaa !1024
  %2 = icmp eq i32 %1, 0, !dbg !2965
  br i1 %2, label %4, label %3, !dbg !2966

3:                                                ; preds = %0
  store volatile i32 1, i32* @xYieldPending, align 4, !dbg !2967, !tbaa !1024
  br label %24, !dbg !2969

4:                                                ; preds = %0
  store volatile i32 0, i32* @xYieldPending, align 4, !dbg !2970, !tbaa !1024
  %5 = load volatile i32, i32* @uxTopReadyPriority, align 4, !dbg !2971, !tbaa !1024
  call void @llvm.dbg.value(metadata i32 %5, metadata !2972, metadata !DIExpression()) #20, !dbg !2978
  %6 = tail call i8 asm sideeffect "clz $0, $1", "=r,r,~{memory}"(i32 %5) #20, !dbg !2980, !srcloc !2981
  call void @llvm.dbg.value(metadata i8 %6, metadata !2977, metadata !DIExpression()) #20, !dbg !2978
  %7 = zext i8 %6 to i32, !dbg !2971
  %8 = sub nsw i32 31, %7, !dbg !2971
  call void @llvm.dbg.value(metadata i32 %8, metadata !2957, metadata !DIExpression()), !dbg !2982
  call void @llvm.dbg.value(metadata !DIArgList([5 x %struct.xLIST]* @pxReadyTasksLists, i32 %8), metadata !2961, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_constu, 20, DW_OP_mul, DW_OP_plus, DW_OP_stack_value)), !dbg !2983
  %9 = getelementptr inbounds [5 x %struct.xLIST], [5 x %struct.xLIST]* @pxReadyTasksLists, i32 0, i32 %8, i32 1, !dbg !2984
  %10 = load %struct.xLIST_ITEM*, %struct.xLIST_ITEM** %9, align 4, !dbg !2984, !tbaa !847
  %11 = getelementptr inbounds %struct.xLIST_ITEM, %struct.xLIST_ITEM* %10, i32 0, i32 1, !dbg !2984
  %12 = load %struct.xLIST_ITEM*, %struct.xLIST_ITEM** %11, align 4, !dbg !2984, !tbaa !887
  store %struct.xLIST_ITEM* %12, %struct.xLIST_ITEM** %9, align 4, !dbg !2984, !tbaa !847
  %13 = getelementptr inbounds [5 x %struct.xLIST], [5 x %struct.xLIST]* @pxReadyTasksLists, i32 0, i32 %8, i32 2, !dbg !2985
  %14 = bitcast %struct.xMINI_LIST_ITEM* %13 to %struct.xLIST_ITEM*, !dbg !2985
  %15 = icmp eq %struct.xLIST_ITEM* %12, %14, !dbg !2985
  br i1 %15, label %16, label %19, !dbg !2984

16:                                               ; preds = %4
  %17 = getelementptr inbounds %struct.xLIST_ITEM, %struct.xLIST_ITEM* %12, i32 0, i32 1, !dbg !2987
  %18 = load %struct.xLIST_ITEM*, %struct.xLIST_ITEM** %17, align 4, !dbg !2987, !tbaa !887
  store %struct.xLIST_ITEM* %18, %struct.xLIST_ITEM** %9, align 4, !dbg !2987, !tbaa !847
  br label %19, !dbg !2987

19:                                               ; preds = %16, %4
  %20 = phi %struct.xLIST_ITEM* [ %18, %16 ], [ %12, %4 ], !dbg !2984
  %21 = getelementptr inbounds %struct.xLIST_ITEM, %struct.xLIST_ITEM* %20, i32 0, i32 3, !dbg !2984
  %22 = bitcast i8** %21 to %struct.tskTaskControlBlock**, !dbg !2984
  %23 = load %struct.tskTaskControlBlock*, %struct.tskTaskControlBlock** %22, align 4, !dbg !2984, !tbaa !2471
  store volatile %struct.tskTaskControlBlock* %23, %struct.tskTaskControlBlock** @pxCurrentTCB, align 4, !dbg !2984, !tbaa !649
  br label %24

24:                                               ; preds = %19, %3
  ret void, !dbg !2989
}

; Function Attrs: noinline nounwind optsize
define dso_local void @vTaskResume(%struct.tskTaskControlBlock* noundef %0) local_unnamed_addr #2 !dbg !2990 {
  call void @llvm.dbg.value(metadata %struct.tskTaskControlBlock* %0, metadata !2992, metadata !DIExpression()), !dbg !2995
  call void @llvm.dbg.value(metadata %struct.tskTaskControlBlock* %0, metadata !2993, metadata !DIExpression()), !dbg !2995
  %2 = load volatile %struct.tskTaskControlBlock*, %struct.tskTaskControlBlock** @pxCurrentTCB, align 4, !dbg !2996, !tbaa !649
  %3 = icmp ne %struct.tskTaskControlBlock* %2, %0, !dbg !2998
  %4 = icmp ne %struct.tskTaskControlBlock* %0, null
  %5 = and i1 %4, %3, !dbg !2999
  br i1 %5, label %6, label %25, !dbg !2999

6:                                                ; preds = %1
  tail call void @vPortEnterCritical() #18, !dbg !3000
  %7 = tail call fastcc i32 @prvTaskIsTaskSuspended(%struct.tskTaskControlBlock* noundef nonnull %0) #19, !dbg !3002
  %8 = icmp eq i32 %7, 0, !dbg !3005
  br i1 %8, label %24, label %9, !dbg !3006

9:                                                ; preds = %6
  %10 = getelementptr inbounds %struct.tskTaskControlBlock, %struct.tskTaskControlBlock* %0, i32 0, i32 1, !dbg !3007
  %11 = tail call i32 @uxListRemove(%struct.xLIST_ITEM* noundef nonnull %10) #18, !dbg !3009
  %12 = getelementptr inbounds %struct.tskTaskControlBlock, %struct.tskTaskControlBlock* %0, i32 0, i32 3, !dbg !3010
  %13 = load i32, i32* %12, align 4, !dbg !3010, !tbaa !2273
  %14 = shl nuw i32 1, %13, !dbg !3010
  %15 = load volatile i32, i32* @uxTopReadyPriority, align 4, !dbg !3010, !tbaa !1024
  %16 = or i32 %15, %14, !dbg !3010
  store volatile i32 %16, i32* @uxTopReadyPriority, align 4, !dbg !3010, !tbaa !1024
  %17 = getelementptr inbounds [5 x %struct.xLIST], [5 x %struct.xLIST]* @pxReadyTasksLists, i32 0, i32 %13, !dbg !3010
  tail call void @vListInsertEnd(%struct.xLIST* noundef nonnull %17, %struct.xLIST_ITEM* noundef nonnull %10) #18, !dbg !3010
  %18 = load i32, i32* %12, align 4, !dbg !3011, !tbaa !2273
  %19 = load volatile %struct.tskTaskControlBlock*, %struct.tskTaskControlBlock** @pxCurrentTCB, align 4, !dbg !3013, !tbaa !649
  %20 = getelementptr inbounds %struct.tskTaskControlBlock, %struct.tskTaskControlBlock* %19, i32 0, i32 3, !dbg !3014
  %21 = load i32, i32* %20, align 4, !dbg !3014, !tbaa !2273
  %22 = icmp ult i32 %18, %21, !dbg !3015
  br i1 %22, label %24, label %23, !dbg !3016

23:                                               ; preds = %9
  store volatile i32 268435456, i32* inttoptr (i32 -536810236 to i32*), align 4, !dbg !3017, !tbaa !580
  tail call void asm sideeffect "dsb", "~{memory}"() #20, !dbg !3017, !srcloc !3020
  tail call void asm sideeffect "isb", ""() #20, !dbg !3017, !srcloc !3021
  br label %24, !dbg !3022

24:                                               ; preds = %6, %23, %9
  tail call void @vPortExitCritical() #18, !dbg !3023
  br label %25, !dbg !3024

25:                                               ; preds = %1, %24
  ret void, !dbg !3025
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize readonly willreturn
define internal fastcc i32 @prvTaskIsTaskSuspended(%struct.tskTaskControlBlock* nocapture noundef readonly %0) unnamed_addr #9 !dbg !3026 {
  call void @llvm.dbg.value(metadata %struct.tskTaskControlBlock* %0, metadata !3030, metadata !DIExpression()), !dbg !3034
  call void @llvm.dbg.value(metadata i32 0, metadata !3031, metadata !DIExpression()), !dbg !3034
  call void @llvm.dbg.value(metadata %struct.tskTaskControlBlock* %0, metadata !3032, metadata !DIExpression()), !dbg !3034
  %2 = getelementptr inbounds %struct.tskTaskControlBlock, %struct.tskTaskControlBlock* %0, i32 0, i32 1, i32 4, !dbg !3035
  %3 = load %struct.xLIST*, %struct.xLIST** %2, align 4, !dbg !3035, !tbaa !2859
  %4 = icmp eq %struct.xLIST* %3, @xSuspendedTaskList, !dbg !3035
  br i1 %4, label %5, label %10, !dbg !3037

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.tskTaskControlBlock, %struct.tskTaskControlBlock* %0, i32 0, i32 2, i32 4, !dbg !3038
  %7 = load %struct.xLIST*, %struct.xLIST** %6, align 4, !dbg !3038, !tbaa !2417
  %8 = icmp eq %struct.xLIST* %7, null
  %9 = zext i1 %8 to i32, !dbg !3041
  br label %10, !dbg !3041

10:                                               ; preds = %5, %1
  %11 = phi i32 [ 0, %1 ], [ %9, %5 ], !dbg !3034
  call void @llvm.dbg.value(metadata i32 %11, metadata !3031, metadata !DIExpression()), !dbg !3034
  ret i32 %11, !dbg !3042
}

; Function Attrs: noinline nounwind optsize
define dso_local i32 @xTaskResumeFromISR(%struct.tskTaskControlBlock* noundef %0) local_unnamed_addr #2 !dbg !3043 {
  call void @llvm.dbg.value(metadata %struct.tskTaskControlBlock* %0, metadata !3047, metadata !DIExpression()), !dbg !3051
  call void @llvm.dbg.value(metadata i32 0, metadata !3048, metadata !DIExpression()), !dbg !3051
  call void @llvm.dbg.value(metadata %struct.tskTaskControlBlock* %0, metadata !3049, metadata !DIExpression()), !dbg !3051
  %2 = tail call { i32, i32 } asm sideeffect "\09mrs $0, basepri\09\09\09\09\09\09\09\09\09\09\09\0A\09mov $1, $2\09\09\09\09\09\09\09\09\09\09\09\09\0A\09msr basepri, $1\09\09\09\09\09\09\09\09\09\09\09\0A\09isb\09\09\09\09\09\09\09\09\09\09\09\09\09\09\0A\09dsb\09\09\09\09\09\09\09\09\09\09\09\09\09\09\0A", "=r,=r,i,~{memory}"(i32 191) #20, !dbg !3052, !srcloc !2790
  call void @llvm.dbg.value(metadata i32 undef, metadata !2787, metadata !DIExpression()) #20, !dbg !3054
  call void @llvm.dbg.value(metadata i32 undef, metadata !2788, metadata !DIExpression()) #20, !dbg !3054
  call void @llvm.dbg.value(metadata i32 undef, metadata !3050, metadata !DIExpression()), !dbg !3051
  %3 = tail call fastcc i32 @prvTaskIsTaskSuspended(%struct.tskTaskControlBlock* noundef %0) #19, !dbg !3055
  %4 = icmp eq i32 %3, 0, !dbg !3058
  br i1 %4, label %25, label %5, !dbg !3059

5:                                                ; preds = %1
  %6 = load volatile i32, i32* @uxSchedulerSuspended, align 4, !dbg !3060, !tbaa !1024
  %7 = icmp eq i32 %6, 0, !dbg !3063
  br i1 %7, label %8, label %23, !dbg !3064

8:                                                ; preds = %5
  %9 = getelementptr inbounds %struct.tskTaskControlBlock, %struct.tskTaskControlBlock* %0, i32 0, i32 3, !dbg !3065
  %10 = load i32, i32* %9, align 4, !dbg !3065, !tbaa !2273
  %11 = load volatile %struct.tskTaskControlBlock*, %struct.tskTaskControlBlock** @pxCurrentTCB, align 4, !dbg !3068, !tbaa !649
  %12 = getelementptr inbounds %struct.tskTaskControlBlock, %struct.tskTaskControlBlock* %11, i32 0, i32 3, !dbg !3069
  %13 = load i32, i32* %12, align 4, !dbg !3069, !tbaa !2273
  %14 = icmp uge i32 %10, %13, !dbg !3070
  %15 = zext i1 %14 to i32, !dbg !3071
  call void @llvm.dbg.value(metadata i32 %15, metadata !3048, metadata !DIExpression()), !dbg !3051
  %16 = getelementptr inbounds %struct.tskTaskControlBlock, %struct.tskTaskControlBlock* %0, i32 0, i32 1, !dbg !3072
  %17 = tail call i32 @uxListRemove(%struct.xLIST_ITEM* noundef nonnull %16) #18, !dbg !3073
  %18 = load i32, i32* %9, align 4, !dbg !3074, !tbaa !2273
  %19 = shl nuw i32 1, %18, !dbg !3074
  %20 = load volatile i32, i32* @uxTopReadyPriority, align 4, !dbg !3074, !tbaa !1024
  %21 = or i32 %20, %19, !dbg !3074
  store volatile i32 %21, i32* @uxTopReadyPriority, align 4, !dbg !3074, !tbaa !1024
  %22 = getelementptr inbounds [5 x %struct.xLIST], [5 x %struct.xLIST]* @pxReadyTasksLists, i32 0, i32 %18, !dbg !3074
  tail call void @vListInsertEnd(%struct.xLIST* noundef nonnull %22, %struct.xLIST_ITEM* noundef nonnull %16) #18, !dbg !3074
  br label %25, !dbg !3075

23:                                               ; preds = %5
  %24 = getelementptr inbounds %struct.tskTaskControlBlock, %struct.tskTaskControlBlock* %0, i32 0, i32 2, !dbg !3076
  tail call void @vListInsertEnd(%struct.xLIST* noundef nonnull @xPendingReadyList, %struct.xLIST_ITEM* noundef nonnull %24) #18, !dbg !3078
  br label %25

25:                                               ; preds = %1, %8, %23
  %26 = phi i32 [ %15, %8 ], [ 0, %23 ], [ 0, %1 ], !dbg !3051
  %27 = extractvalue { i32, i32 } %2, 0, !dbg !3052
  call void @llvm.dbg.value(metadata i32 %27, metadata !2787, metadata !DIExpression()) #20, !dbg !3054
  call void @llvm.dbg.value(metadata i32 %27, metadata !3050, metadata !DIExpression()), !dbg !3051
  call void @llvm.dbg.value(metadata i32 %26, metadata !3048, metadata !DIExpression()), !dbg !3051
  call void @llvm.dbg.value(metadata i32 undef, metadata !2795, metadata !DIExpression()) #20, !dbg !3079
  tail call void asm sideeffect "\09msr basepri, $0\09", "r,~{memory}"(i32 %27) #20, !dbg !3081, !srcloc !2801
  ret i32 %26, !dbg !3082
}

; Function Attrs: noinline nounwind optsize
define dso_local void @vTaskStartScheduler() local_unnamed_addr #2 !dbg !3083 {
  %1 = tail call i32 @xTaskCreate(void (i8*)* noundef nonnull @prvIdleTask, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i32 0, i32 0), i16 noundef zeroext 128, i8* noundef null, i32 noundef 0, %struct.tskTaskControlBlock** noundef nonnull @xIdleTaskHandle) #19, !dbg !3086
  call void @llvm.dbg.value(metadata i32 %1, metadata !3085, metadata !DIExpression()), !dbg !3088
  %2 = icmp eq i32 %1, 1, !dbg !3089
  br i1 %2, label %3, label %6, !dbg !3091

3:                                                ; preds = %0
  %4 = tail call i32 asm sideeffect "\09mov $0, $1\09\09\09\09\09\09\09\09\09\09\09\09\0A\09msr basepri, $0\09\09\09\09\09\09\09\09\09\09\09\0A\09isb\09\09\09\09\09\09\09\09\09\09\09\09\09\09\0A\09dsb\09\09\09\09\09\09\09\09\09\09\09\09\09\09\0A", "=r,i,~{memory}"(i32 191) #20, !dbg !3092, !srcloc !3098
  call void @llvm.dbg.value(metadata i32 %4, metadata !3095, metadata !DIExpression()) #20, !dbg !3099
  store volatile i32 -1, i32* @xNextTaskUnblockTime, align 4, !dbg !3100, !tbaa !580
  store volatile i32 1, i32* @xSchedulerRunning, align 4, !dbg !3101, !tbaa !1024
  store volatile i32 0, i32* @xTickCount, align 4, !dbg !3102, !tbaa !580
  %5 = tail call i32 @xPortStartScheduler() #18, !dbg !3103
  br label %6, !dbg !3105

6:                                                ; preds = %0, %3
  ret void, !dbg !3106
}

; Function Attrs: noinline noreturn nounwind optsize
define internal void @prvIdleTask(i8* nocapture noundef readnone %0) #4 !dbg !3107 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !3109, metadata !DIExpression()), !dbg !3110
  br label %2, !dbg !3111

2:                                                ; preds = %5, %1
  tail call fastcc void @prvCheckTasksWaitingTermination() #19, !dbg !3112
  %3 = load volatile i32, i32* getelementptr inbounds ([5 x %struct.xLIST], [5 x %struct.xLIST]* @pxReadyTasksLists, i32 0, i32 0, i32 0), align 4, !dbg !3116, !tbaa !862
  %4 = icmp ugt i32 %3, 1, !dbg !3119
  br i1 %4, label %6, label %5, !dbg !3120

5:                                                ; preds = %2, %6
  br label %2, !dbg !3112, !llvm.loop !3121

6:                                                ; preds = %2
  store volatile i32 268435456, i32* inttoptr (i32 -536810236 to i32*), align 4, !dbg !3124, !tbaa !580
  tail call void asm sideeffect "dsb", "~{memory}"() #20, !dbg !3124, !srcloc !3127
  tail call void asm sideeffect "isb", ""() #20, !dbg !3124, !srcloc !3128
  br label %5, !dbg !3129
}

; Function Attrs: noinline nounwind optsize
define internal fastcc void @prvCheckTasksWaitingTermination() unnamed_addr #2 !dbg !3130 {
  %1 = load volatile i32, i32* @uxDeletedTasksWaitingCleanUp, align 4, !dbg !3134, !tbaa !1024
  %2 = icmp eq i32 %1, 0, !dbg !3135
  br i1 %2, label %16, label %3, !dbg !3136

3:                                                ; preds = %0, %3
  tail call void @vPortEnterCritical() #18, !dbg !3137
  %4 = load %struct.xLIST_ITEM*, %struct.xLIST_ITEM** getelementptr inbounds (%struct.xLIST, %struct.xLIST* @xTasksWaitingTermination, i32 0, i32 2, i32 1), align 4, !dbg !3139, !tbaa !856
  %5 = getelementptr inbounds %struct.xLIST_ITEM, %struct.xLIST_ITEM* %4, i32 0, i32 3, !dbg !3139
  %6 = bitcast i8** %5 to %struct.tskTaskControlBlock**, !dbg !3139
  %7 = load %struct.tskTaskControlBlock*, %struct.tskTaskControlBlock** %6, align 4, !dbg !3139, !tbaa !2471
  call void @llvm.dbg.value(metadata %struct.tskTaskControlBlock* %7, metadata !3132, metadata !DIExpression()), !dbg !3141
  %8 = getelementptr inbounds %struct.tskTaskControlBlock, %struct.tskTaskControlBlock* %7, i32 0, i32 1, !dbg !3142
  %9 = tail call i32 @uxListRemove(%struct.xLIST_ITEM* noundef nonnull %8) #18, !dbg !3143
  %10 = load volatile i32, i32* @uxCurrentNumberOfTasks, align 4, !dbg !3144, !tbaa !1024
  %11 = add i32 %10, -1, !dbg !3144
  store volatile i32 %11, i32* @uxCurrentNumberOfTasks, align 4, !dbg !3144, !tbaa !1024
  %12 = load volatile i32, i32* @uxDeletedTasksWaitingCleanUp, align 4, !dbg !3145, !tbaa !1024
  %13 = add i32 %12, -1, !dbg !3145
  store volatile i32 %13, i32* @uxDeletedTasksWaitingCleanUp, align 4, !dbg !3145, !tbaa !1024
  tail call void @vPortExitCritical() #18, !dbg !3146
  tail call fastcc void @prvDeleteTCB(%struct.tskTaskControlBlock* noundef %7) #19, !dbg !3147
  %14 = load volatile i32, i32* @uxDeletedTasksWaitingCleanUp, align 4, !dbg !3134, !tbaa !1024
  %15 = icmp eq i32 %14, 0, !dbg !3135
  br i1 %15, label %16, label %3, !dbg !3136, !llvm.loop !3148

16:                                               ; preds = %3, %0
  ret void, !dbg !3150
}

; Function Attrs: noinline nounwind optsize
define dso_local void @vTaskEndScheduler() local_unnamed_addr #2 !dbg !3151 {
  %1 = tail call i32 asm sideeffect "\09mov $0, $1\09\09\09\09\09\09\09\09\09\09\09\09\0A\09msr basepri, $0\09\09\09\09\09\09\09\09\09\09\09\0A\09isb\09\09\09\09\09\09\09\09\09\09\09\09\09\09\0A\09dsb\09\09\09\09\09\09\09\09\09\09\09\09\09\09\0A", "=r,i,~{memory}"(i32 191) #20, !dbg !3152, !srcloc !3098
  call void @llvm.dbg.value(metadata i32 %1, metadata !3095, metadata !DIExpression()) #20, !dbg !3154
  store volatile i32 0, i32* @xSchedulerRunning, align 4, !dbg !3155, !tbaa !1024
  tail call void @vPortEndScheduler() #18, !dbg !3156
  ret void, !dbg !3157
}

; Function Attrs: mustprogress nofree noinline norecurse nounwind optsize willreturn
define dso_local i32 @xTaskGetTickCount() local_unnamed_addr #17 !dbg !3158 {
  %1 = load volatile i32, i32* @xTickCount, align 4, !dbg !3163, !tbaa !580
  call void @llvm.dbg.value(metadata i32 %1, metadata !3162, metadata !DIExpression()), !dbg !3165
  ret i32 %1, !dbg !3166
}

; Function Attrs: mustprogress nofree noinline norecurse nounwind optsize willreturn
define dso_local i32 @xTaskGetTickCountFromISR() local_unnamed_addr #17 !dbg !3167 {
  call void @llvm.dbg.value(metadata i32 0, metadata !3170, metadata !DIExpression()), !dbg !3171
  %1 = load volatile i32, i32* @xTickCount, align 4, !dbg !3172, !tbaa !580
  call void @llvm.dbg.value(metadata i32 %1, metadata !3169, metadata !DIExpression()), !dbg !3171
  ret i32 %1, !dbg !3174
}

; Function Attrs: mustprogress nofree noinline norecurse nounwind optsize willreturn
define dso_local i32 @uxTaskGetNumberOfTasks() local_unnamed_addr #17 !dbg !3175 {
  %1 = load volatile i32, i32* @uxCurrentNumberOfTasks, align 4, !dbg !3178, !tbaa !1024
  ret i32 %1, !dbg !3179
}

; Function Attrs: mustprogress nofree noinline norecurse nounwind optsize willreturn
define dso_local nonnull i8* @pcTaskGetName(%struct.tskTaskControlBlock* noundef readnone %0) local_unnamed_addr #17 !dbg !3180 {
  call void @llvm.dbg.value(metadata %struct.tskTaskControlBlock* %0, metadata !3184, metadata !DIExpression()), !dbg !3186
  %2 = icmp eq %struct.tskTaskControlBlock* %0, null, !dbg !3187
  br i1 %2, label %3, label %5, !dbg !3187

3:                                                ; preds = %1
  %4 = load volatile %struct.tskTaskControlBlock*, %struct.tskTaskControlBlock** @pxCurrentTCB, align 4, !dbg !3187, !tbaa !649
  br label %5, !dbg !3187

5:                                                ; preds = %1, %3
  %6 = phi %struct.tskTaskControlBlock* [ %4, %3 ], [ %0, %1 ], !dbg !3187
  call void @llvm.dbg.value(metadata %struct.tskTaskControlBlock* %6, metadata !3185, metadata !DIExpression()), !dbg !3186
  %7 = getelementptr inbounds %struct.tskTaskControlBlock, %struct.tskTaskControlBlock* %6, i32 0, i32 5, i32 0, !dbg !3188
  ret i8* %7, !dbg !3189
}

; Function Attrs: noinline nounwind optsize
define dso_local void @vTaskPlaceOnEventList(%struct.xLIST* noundef %0, i32 noundef %1) local_unnamed_addr #2 !dbg !3190 {
  call void @llvm.dbg.value(metadata %struct.xLIST* %0, metadata !3194, metadata !DIExpression()), !dbg !3196
  call void @llvm.dbg.value(metadata i32 %1, metadata !3195, metadata !DIExpression()), !dbg !3196
  %3 = load volatile %struct.tskTaskControlBlock*, %struct.tskTaskControlBlock** @pxCurrentTCB, align 4, !dbg !3197, !tbaa !649
  %4 = getelementptr inbounds %struct.tskTaskControlBlock, %struct.tskTaskControlBlock* %3, i32 0, i32 2, !dbg !3198
  tail call void @vListInsert(%struct.xLIST* noundef %0, %struct.xLIST_ITEM* noundef nonnull %4) #18, !dbg !3199
  tail call fastcc void @prvAddCurrentTaskToDelayedList(i32 noundef %1, i32 noundef 1) #19, !dbg !3200
  ret void, !dbg !3201
}

; Function Attrs: noinline nounwind optsize
define dso_local void @vTaskPlaceOnUnorderedEventList(%struct.xLIST* noundef %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #2 !dbg !3202 {
  call void @llvm.dbg.value(metadata %struct.xLIST* %0, metadata !3206, metadata !DIExpression()), !dbg !3209
  call void @llvm.dbg.value(metadata i32 %1, metadata !3207, metadata !DIExpression()), !dbg !3209
  call void @llvm.dbg.value(metadata i32 %2, metadata !3208, metadata !DIExpression()), !dbg !3209
  %4 = or i32 %1, -2147483648, !dbg !3210
  %5 = load volatile %struct.tskTaskControlBlock*, %struct.tskTaskControlBlock** @pxCurrentTCB, align 4, !dbg !3210, !tbaa !649
  %6 = getelementptr inbounds %struct.tskTaskControlBlock, %struct.tskTaskControlBlock* %5, i32 0, i32 2, i32 0, !dbg !3210
  store i32 %4, i32* %6, align 4, !dbg !3210, !tbaa !2288
  %7 = load volatile %struct.tskTaskControlBlock*, %struct.tskTaskControlBlock** @pxCurrentTCB, align 4, !dbg !3211, !tbaa !649
  %8 = getelementptr inbounds %struct.tskTaskControlBlock, %struct.tskTaskControlBlock* %7, i32 0, i32 2, !dbg !3212
  tail call void @vListInsertEnd(%struct.xLIST* noundef %0, %struct.xLIST_ITEM* noundef nonnull %8) #18, !dbg !3213
  tail call fastcc void @prvAddCurrentTaskToDelayedList(i32 noundef %2, i32 noundef 1) #19, !dbg !3214
  ret void, !dbg !3215
}

; Function Attrs: noinline nounwind optsize
define dso_local i32 @xTaskRemoveFromEventList(%struct.xLIST* nocapture noundef readonly %0) local_unnamed_addr #2 !dbg !3216 {
  call void @llvm.dbg.value(metadata %struct.xLIST* %0, metadata !3223, metadata !DIExpression()), !dbg !3226
  %2 = getelementptr inbounds %struct.xLIST, %struct.xLIST* %0, i32 0, i32 2, i32 1, !dbg !3227
  %3 = load %struct.xLIST_ITEM*, %struct.xLIST_ITEM** %2, align 4, !dbg !3227, !tbaa !856
  %4 = getelementptr inbounds %struct.xLIST_ITEM, %struct.xLIST_ITEM* %3, i32 0, i32 3, !dbg !3227
  %5 = bitcast i8** %4 to %struct.tskTaskControlBlock**, !dbg !3227
  %6 = load %struct.tskTaskControlBlock*, %struct.tskTaskControlBlock** %5, align 4, !dbg !3227, !tbaa !2471
  call void @llvm.dbg.value(metadata %struct.tskTaskControlBlock* %6, metadata !3224, metadata !DIExpression()), !dbg !3226
  %7 = getelementptr inbounds %struct.tskTaskControlBlock, %struct.tskTaskControlBlock* %6, i32 0, i32 2, !dbg !3228
  %8 = tail call i32 @uxListRemove(%struct.xLIST_ITEM* noundef nonnull %7) #18, !dbg !3229
  %9 = load volatile i32, i32* @uxSchedulerSuspended, align 4, !dbg !3230, !tbaa !1024
  %10 = icmp eq i32 %9, 0, !dbg !3232
  br i1 %10, label %11, label %20, !dbg !3233

11:                                               ; preds = %1
  %12 = getelementptr inbounds %struct.tskTaskControlBlock, %struct.tskTaskControlBlock* %6, i32 0, i32 1, !dbg !3234
  %13 = tail call i32 @uxListRemove(%struct.xLIST_ITEM* noundef nonnull %12) #18, !dbg !3236
  %14 = getelementptr inbounds %struct.tskTaskControlBlock, %struct.tskTaskControlBlock* %6, i32 0, i32 3, !dbg !3237
  %15 = load i32, i32* %14, align 4, !dbg !3237, !tbaa !2273
  %16 = shl nuw i32 1, %15, !dbg !3237
  %17 = load volatile i32, i32* @uxTopReadyPriority, align 4, !dbg !3237, !tbaa !1024
  %18 = or i32 %17, %16, !dbg !3237
  store volatile i32 %18, i32* @uxTopReadyPriority, align 4, !dbg !3237, !tbaa !1024
  %19 = getelementptr inbounds [5 x %struct.xLIST], [5 x %struct.xLIST]* @pxReadyTasksLists, i32 0, i32 %15, !dbg !3237
  tail call void @vListInsertEnd(%struct.xLIST* noundef nonnull %19, %struct.xLIST_ITEM* noundef nonnull %12) #18, !dbg !3237
  br label %21, !dbg !3238

20:                                               ; preds = %1
  tail call void @vListInsertEnd(%struct.xLIST* noundef nonnull @xPendingReadyList, %struct.xLIST_ITEM* noundef nonnull %7) #18, !dbg !3239
  br label %21

21:                                               ; preds = %20, %11
  %22 = getelementptr inbounds %struct.tskTaskControlBlock, %struct.tskTaskControlBlock* %6, i32 0, i32 3, !dbg !3241
  %23 = load i32, i32* %22, align 4, !dbg !3241, !tbaa !2273
  %24 = load volatile %struct.tskTaskControlBlock*, %struct.tskTaskControlBlock** @pxCurrentTCB, align 4, !dbg !3243, !tbaa !649
  %25 = getelementptr inbounds %struct.tskTaskControlBlock, %struct.tskTaskControlBlock* %24, i32 0, i32 3, !dbg !3244
  %26 = load i32, i32* %25, align 4, !dbg !3244, !tbaa !2273
  %27 = icmp ugt i32 %23, %26, !dbg !3245
  br i1 %27, label %28, label %29, !dbg !3246

28:                                               ; preds = %21
  call void @llvm.dbg.value(metadata i32 1, metadata !3225, metadata !DIExpression()), !dbg !3226
  store volatile i32 1, i32* @xYieldPending, align 4, !dbg !3247, !tbaa !1024
  br label %29, !dbg !3249

29:                                               ; preds = %21, %28
  %30 = phi i32 [ 1, %28 ], [ 0, %21 ], !dbg !3250
  call void @llvm.dbg.value(metadata i32 %30, metadata !3225, metadata !DIExpression()), !dbg !3226
  ret i32 %30, !dbg !3251
}

; Function Attrs: noinline nounwind optsize
define dso_local void @vTaskRemoveFromUnorderedEventList(%struct.xLIST_ITEM* noundef %0, i32 noundef %1) local_unnamed_addr #2 !dbg !3252 {
  call void @llvm.dbg.value(metadata %struct.xLIST_ITEM* %0, metadata !3256, metadata !DIExpression()), !dbg !3259
  call void @llvm.dbg.value(metadata i32 %1, metadata !3257, metadata !DIExpression()), !dbg !3259
  %3 = or i32 %1, -2147483648, !dbg !3260
  %4 = getelementptr inbounds %struct.xLIST_ITEM, %struct.xLIST_ITEM* %0, i32 0, i32 0, !dbg !3260
  store i32 %3, i32* %4, align 4, !dbg !3260, !tbaa !910
  %5 = getelementptr inbounds %struct.xLIST_ITEM, %struct.xLIST_ITEM* %0, i32 0, i32 3, !dbg !3261
  %6 = bitcast i8** %5 to %struct.tskTaskControlBlock**, !dbg !3261
  %7 = load %struct.tskTaskControlBlock*, %struct.tskTaskControlBlock** %6, align 4, !dbg !3261, !tbaa !2471
  call void @llvm.dbg.value(metadata %struct.tskTaskControlBlock* %7, metadata !3258, metadata !DIExpression()), !dbg !3259
  %8 = tail call i32 @uxListRemove(%struct.xLIST_ITEM* noundef %0) #18, !dbg !3262
  %9 = getelementptr inbounds %struct.tskTaskControlBlock, %struct.tskTaskControlBlock* %7, i32 0, i32 1, !dbg !3263
  %10 = tail call i32 @uxListRemove(%struct.xLIST_ITEM* noundef nonnull %9) #18, !dbg !3264
  %11 = getelementptr inbounds %struct.tskTaskControlBlock, %struct.tskTaskControlBlock* %7, i32 0, i32 3, !dbg !3265
  %12 = load i32, i32* %11, align 4, !dbg !3265, !tbaa !2273
  %13 = shl nuw i32 1, %12, !dbg !3265
  %14 = load volatile i32, i32* @uxTopReadyPriority, align 4, !dbg !3265, !tbaa !1024
  %15 = or i32 %14, %13, !dbg !3265
  store volatile i32 %15, i32* @uxTopReadyPriority, align 4, !dbg !3265, !tbaa !1024
  %16 = getelementptr inbounds [5 x %struct.xLIST], [5 x %struct.xLIST]* @pxReadyTasksLists, i32 0, i32 %12, !dbg !3265
  tail call void @vListInsertEnd(%struct.xLIST* noundef nonnull %16, %struct.xLIST_ITEM* noundef nonnull %9) #18, !dbg !3265
  %17 = load i32, i32* %11, align 4, !dbg !3266, !tbaa !2273
  %18 = load volatile %struct.tskTaskControlBlock*, %struct.tskTaskControlBlock** @pxCurrentTCB, align 4, !dbg !3268, !tbaa !649
  %19 = getelementptr inbounds %struct.tskTaskControlBlock, %struct.tskTaskControlBlock* %18, i32 0, i32 3, !dbg !3269
  %20 = load i32, i32* %19, align 4, !dbg !3269, !tbaa !2273
  %21 = icmp ugt i32 %17, %20, !dbg !3270
  br i1 %21, label %22, label %23, !dbg !3271

22:                                               ; preds = %2
  store volatile i32 1, i32* @xYieldPending, align 4, !dbg !3272, !tbaa !1024
  br label %23, !dbg !3274

23:                                               ; preds = %22, %2
  ret void, !dbg !3275
}

; Function Attrs: noinline nounwind optsize
define dso_local void @vTaskSetTimeOutState(%struct.xTIME_OUT* nocapture noundef writeonly %0) local_unnamed_addr #2 !dbg !3276 {
  call void @llvm.dbg.value(metadata %struct.xTIME_OUT* %0, metadata !3287, metadata !DIExpression()), !dbg !3288
  tail call void @vPortEnterCritical() #18, !dbg !3289
  %2 = load volatile i32, i32* @xNumOfOverflows, align 4, !dbg !3290, !tbaa !1024
  %3 = getelementptr inbounds %struct.xTIME_OUT, %struct.xTIME_OUT* %0, i32 0, i32 0, !dbg !3292
  store i32 %2, i32* %3, align 4, !dbg !3293, !tbaa !3294
  %4 = load volatile i32, i32* @xTickCount, align 4, !dbg !3296, !tbaa !580
  %5 = getelementptr inbounds %struct.xTIME_OUT, %struct.xTIME_OUT* %0, i32 0, i32 1, !dbg !3297
  store i32 %4, i32* %5, align 4, !dbg !3298, !tbaa !3299
  tail call void @vPortExitCritical() #18, !dbg !3300
  ret void, !dbg !3301
}

; Function Attrs: mustprogress nofree noinline norecurse nounwind optsize willreturn
define dso_local void @vTaskInternalSetTimeOutState(%struct.xTIME_OUT* nocapture noundef writeonly %0) local_unnamed_addr #17 !dbg !3302 {
  call void @llvm.dbg.value(metadata %struct.xTIME_OUT* %0, metadata !3304, metadata !DIExpression()), !dbg !3305
  %2 = load volatile i32, i32* @xNumOfOverflows, align 4, !dbg !3306, !tbaa !1024
  %3 = getelementptr inbounds %struct.xTIME_OUT, %struct.xTIME_OUT* %0, i32 0, i32 0, !dbg !3307
  store i32 %2, i32* %3, align 4, !dbg !3308, !tbaa !3294
  %4 = load volatile i32, i32* @xTickCount, align 4, !dbg !3309, !tbaa !580
  %5 = getelementptr inbounds %struct.xTIME_OUT, %struct.xTIME_OUT* %0, i32 0, i32 1, !dbg !3310
  store i32 %4, i32* %5, align 4, !dbg !3311, !tbaa !3299
  ret void, !dbg !3312
}

; Function Attrs: noinline nounwind optsize
define dso_local i32 @xTaskCheckForTimeOut(%struct.xTIME_OUT* nocapture noundef %0, i32* nocapture noundef %1) local_unnamed_addr #2 !dbg !3313 {
  call void @llvm.dbg.value(metadata %struct.xTIME_OUT* %0, metadata !3317, metadata !DIExpression()), !dbg !3323
  call void @llvm.dbg.value(metadata i32* %1, metadata !3318, metadata !DIExpression()), !dbg !3323
  tail call void @vPortEnterCritical() #18, !dbg !3324
  %3 = load volatile i32, i32* @xTickCount, align 4, !dbg !3325, !tbaa !580
  call void @llvm.dbg.value(metadata i32 %3, metadata !3320, metadata !DIExpression()), !dbg !3326
  %4 = getelementptr inbounds %struct.xTIME_OUT, %struct.xTIME_OUT* %0, i32 0, i32 1, !dbg !3327
  %5 = load i32, i32* %4, align 4, !dbg !3327, !tbaa !3299
  %6 = sub i32 %3, %5, !dbg !3328
  call void @llvm.dbg.value(metadata i32 %6, metadata !3322, metadata !DIExpression()), !dbg !3326
  %7 = load i32, i32* %1, align 4, !dbg !3329, !tbaa !580
  %8 = icmp eq i32 %7, -1, !dbg !3331
  br i1 %8, label %21, label %9, !dbg !3332

9:                                                ; preds = %2
  %10 = load volatile i32, i32* @xNumOfOverflows, align 4, !dbg !3333, !tbaa !1024
  %11 = getelementptr inbounds %struct.xTIME_OUT, %struct.xTIME_OUT* %0, i32 0, i32 0, !dbg !3335
  %12 = load i32, i32* %11, align 4, !dbg !3335, !tbaa !3294
  %13 = icmp eq i32 %10, %12, !dbg !3336
  %14 = icmp ult i32 %3, %5
  %15 = select i1 %13, i1 true, i1 %14, !dbg !3337
  br i1 %15, label %16, label %21, !dbg !3337

16:                                               ; preds = %9
  %17 = icmp ugt i32 %7, %6, !dbg !3338
  br i1 %17, label %18, label %20, !dbg !3340

18:                                               ; preds = %16
  %19 = sub i32 %7, %6, !dbg !3341
  store i32 %19, i32* %1, align 4, !dbg !3341, !tbaa !580
  tail call void @vTaskInternalSetTimeOutState(%struct.xTIME_OUT* noundef nonnull %0) #19, !dbg !3343
  call void @llvm.dbg.value(metadata i32 0, metadata !3319, metadata !DIExpression()), !dbg !3323
  br label %21, !dbg !3344

20:                                               ; preds = %16
  store i32 0, i32* %1, align 4, !dbg !3345, !tbaa !580
  call void @llvm.dbg.value(metadata i32 1, metadata !3319, metadata !DIExpression()), !dbg !3323
  br label %21

21:                                               ; preds = %9, %2, %20, %18
  %22 = phi i32 [ 0, %18 ], [ 1, %20 ], [ 0, %2 ], [ 1, %9 ], !dbg !3347
  call void @llvm.dbg.value(metadata i32 %22, metadata !3319, metadata !DIExpression()), !dbg !3323
  tail call void @vPortExitCritical() #18, !dbg !3348
  ret i32 %22, !dbg !3349
}

; Function Attrs: nofree noinline norecurse nounwind optsize
define dso_local void @vTaskMissedYield() local_unnamed_addr #11 !dbg !3350 {
  store volatile i32 1, i32* @xYieldPending, align 4, !dbg !3351, !tbaa !1024
  ret void, !dbg !3352
}

; Function Attrs: mustprogress nofree noinline norecurse nounwind optsize willreturn
define dso_local %struct.tskTaskControlBlock* @xTaskGetCurrentTaskHandle() local_unnamed_addr #17 !dbg !3353 {
  %1 = load volatile %struct.tskTaskControlBlock*, %struct.tskTaskControlBlock** @pxCurrentTCB, align 4, !dbg !3358, !tbaa !649
  call void @llvm.dbg.value(metadata %struct.tskTaskControlBlock* %1, metadata !3357, metadata !DIExpression()), !dbg !3359
  ret %struct.tskTaskControlBlock* %1, !dbg !3360
}

; Function Attrs: noinline nounwind optsize
define dso_local i32 @xTaskPriorityInherit(%struct.tskTaskControlBlock* noundef %0) local_unnamed_addr #2 !dbg !3361 {
  call void @llvm.dbg.value(metadata %struct.tskTaskControlBlock* %0, metadata !3363, metadata !DIExpression()), !dbg !3366
  call void @llvm.dbg.value(metadata %struct.tskTaskControlBlock* %0, metadata !3364, metadata !DIExpression()), !dbg !3366
  call void @llvm.dbg.value(metadata i32 0, metadata !3365, metadata !DIExpression()), !dbg !3366
  %2 = icmp eq %struct.tskTaskControlBlock* %0, null, !dbg !3367
  br i1 %2, label %58, label %3, !dbg !3369

3:                                                ; preds = %1
  %4 = getelementptr inbounds %struct.tskTaskControlBlock, %struct.tskTaskControlBlock* %0, i32 0, i32 3, !dbg !3370
  %5 = load i32, i32* %4, align 4, !dbg !3370, !tbaa !2273
  %6 = load volatile %struct.tskTaskControlBlock*, %struct.tskTaskControlBlock** @pxCurrentTCB, align 4, !dbg !3373, !tbaa !649
  %7 = getelementptr inbounds %struct.tskTaskControlBlock, %struct.tskTaskControlBlock* %6, i32 0, i32 3, !dbg !3374
  %8 = load i32, i32* %7, align 4, !dbg !3374, !tbaa !2273
  %9 = icmp ult i32 %5, %8, !dbg !3375
  br i1 %9, label %10, label %50, !dbg !3376

10:                                               ; preds = %3
  %11 = getelementptr inbounds %struct.tskTaskControlBlock, %struct.tskTaskControlBlock* %0, i32 0, i32 2, i32 0, !dbg !3377
  %12 = load i32, i32* %11, align 4, !dbg !3377, !tbaa !2288
  %13 = icmp sgt i32 %12, -1, !dbg !3380
  br i1 %13, label %14, label %19, !dbg !3381

14:                                               ; preds = %10
  %15 = load volatile %struct.tskTaskControlBlock*, %struct.tskTaskControlBlock** @pxCurrentTCB, align 4, !dbg !3382, !tbaa !649
  %16 = getelementptr inbounds %struct.tskTaskControlBlock, %struct.tskTaskControlBlock* %15, i32 0, i32 3, !dbg !3382
  %17 = load i32, i32* %16, align 4, !dbg !3382, !tbaa !2273
  %18 = sub i32 5, %17, !dbg !3382
  store i32 %18, i32* %11, align 4, !dbg !3382, !tbaa !2288
  br label %19, !dbg !3384

19:                                               ; preds = %10, %14
  %20 = getelementptr inbounds %struct.tskTaskControlBlock, %struct.tskTaskControlBlock* %0, i32 0, i32 1, !dbg !3385
  %21 = getelementptr inbounds %struct.tskTaskControlBlock, %struct.tskTaskControlBlock* %0, i32 0, i32 1, i32 4, !dbg !3385
  %22 = load %struct.xLIST*, %struct.xLIST** %21, align 4, !dbg !3385, !tbaa !2859
  %23 = getelementptr inbounds [5 x %struct.xLIST], [5 x %struct.xLIST]* @pxReadyTasksLists, i32 0, i32 %5, !dbg !3385
  %24 = icmp eq %struct.xLIST* %22, %23, !dbg !3385
  br i1 %24, label %25, label %46, !dbg !3387

25:                                               ; preds = %19
  %26 = tail call i32 @uxListRemove(%struct.xLIST_ITEM* noundef nonnull %20) #18, !dbg !3388
  %27 = icmp eq i32 %26, 0, !dbg !3391
  br i1 %27, label %28, label %38, !dbg !3392

28:                                               ; preds = %25
  %29 = load i32, i32* %4, align 4, !dbg !3393, !tbaa !2273
  %30 = getelementptr inbounds [5 x %struct.xLIST], [5 x %struct.xLIST]* @pxReadyTasksLists, i32 0, i32 %29, i32 0, !dbg !3393
  %31 = load volatile i32, i32* %30, align 4, !dbg !3393, !tbaa !862
  %32 = icmp eq i32 %31, 0, !dbg !3393
  br i1 %32, label %33, label %38, !dbg !3397

33:                                               ; preds = %28
  %34 = shl nuw i32 1, %29, !dbg !3398
  %35 = xor i32 %34, -1, !dbg !3398
  %36 = load volatile i32, i32* @uxTopReadyPriority, align 4, !dbg !3398, !tbaa !1024
  %37 = and i32 %36, %35, !dbg !3398
  store volatile i32 %37, i32* @uxTopReadyPriority, align 4, !dbg !3398, !tbaa !1024
  br label %38, !dbg !3398

38:                                               ; preds = %25, %28, %33
  %39 = load volatile %struct.tskTaskControlBlock*, %struct.tskTaskControlBlock** @pxCurrentTCB, align 4, !dbg !3400, !tbaa !649
  %40 = getelementptr inbounds %struct.tskTaskControlBlock, %struct.tskTaskControlBlock* %39, i32 0, i32 3, !dbg !3401
  %41 = load i32, i32* %40, align 4, !dbg !3401, !tbaa !2273
  store i32 %41, i32* %4, align 4, !dbg !3402, !tbaa !2273
  %42 = shl nuw i32 1, %41, !dbg !3403
  %43 = load volatile i32, i32* @uxTopReadyPriority, align 4, !dbg !3403, !tbaa !1024
  %44 = or i32 %43, %42, !dbg !3403
  store volatile i32 %44, i32* @uxTopReadyPriority, align 4, !dbg !3403, !tbaa !1024
  %45 = getelementptr inbounds [5 x %struct.xLIST], [5 x %struct.xLIST]* @pxReadyTasksLists, i32 0, i32 %41, !dbg !3403
  tail call void @vListInsertEnd(%struct.xLIST* noundef nonnull %45, %struct.xLIST_ITEM* noundef nonnull %20) #18, !dbg !3403
  br label %58, !dbg !3404

46:                                               ; preds = %19
  %47 = load volatile %struct.tskTaskControlBlock*, %struct.tskTaskControlBlock** @pxCurrentTCB, align 4, !dbg !3405, !tbaa !649
  %48 = getelementptr inbounds %struct.tskTaskControlBlock, %struct.tskTaskControlBlock* %47, i32 0, i32 3, !dbg !3407
  %49 = load i32, i32* %48, align 4, !dbg !3407, !tbaa !2273
  store i32 %49, i32* %4, align 4, !dbg !3408, !tbaa !2273
  br label %58

50:                                               ; preds = %3
  %51 = getelementptr inbounds %struct.tskTaskControlBlock, %struct.tskTaskControlBlock* %0, i32 0, i32 6, !dbg !3409
  %52 = load i32, i32* %51, align 4, !dbg !3409, !tbaa !2277
  %53 = load volatile %struct.tskTaskControlBlock*, %struct.tskTaskControlBlock** @pxCurrentTCB, align 4, !dbg !3412, !tbaa !649
  %54 = getelementptr inbounds %struct.tskTaskControlBlock, %struct.tskTaskControlBlock* %53, i32 0, i32 3, !dbg !3413
  %55 = load i32, i32* %54, align 4, !dbg !3413, !tbaa !2273
  %56 = icmp ult i32 %52, %55, !dbg !3414
  %57 = zext i1 %56 to i32, !dbg !3415
  br label %58, !dbg !3415

58:                                               ; preds = %50, %38, %46, %1
  %59 = phi i32 [ 0, %1 ], [ 1, %46 ], [ 1, %38 ], [ %57, %50 ], !dbg !3366
  call void @llvm.dbg.value(metadata i32 %59, metadata !3365, metadata !DIExpression()), !dbg !3366
  ret i32 %59, !dbg !3416
}

; Function Attrs: noinline nounwind optsize
define dso_local i32 @xTaskPriorityDisinherit(%struct.tskTaskControlBlock* noundef %0) local_unnamed_addr #2 !dbg !3417 {
  call void @llvm.dbg.value(metadata %struct.tskTaskControlBlock* %0, metadata !3419, metadata !DIExpression()), !dbg !3422
  call void @llvm.dbg.value(metadata %struct.tskTaskControlBlock* %0, metadata !3420, metadata !DIExpression()), !dbg !3422
  call void @llvm.dbg.value(metadata i32 0, metadata !3421, metadata !DIExpression()), !dbg !3422
  %2 = icmp eq %struct.tskTaskControlBlock* %0, null, !dbg !3423
  br i1 %2, label %36, label %3, !dbg !3425

3:                                                ; preds = %1
  %4 = getelementptr inbounds %struct.tskTaskControlBlock, %struct.tskTaskControlBlock* %0, i32 0, i32 7, !dbg !3426
  %5 = load i32, i32* %4, align 4, !dbg !3428, !tbaa !2280
  %6 = add i32 %5, -1, !dbg !3428
  store i32 %6, i32* %4, align 4, !dbg !3428, !tbaa !2280
  %7 = getelementptr inbounds %struct.tskTaskControlBlock, %struct.tskTaskControlBlock* %0, i32 0, i32 3, !dbg !3429
  %8 = load i32, i32* %7, align 4, !dbg !3429, !tbaa !2273
  %9 = getelementptr inbounds %struct.tskTaskControlBlock, %struct.tskTaskControlBlock* %0, i32 0, i32 6, !dbg !3431
  %10 = load i32, i32* %9, align 4, !dbg !3431, !tbaa !2277
  %11 = icmp ne i32 %8, %10, !dbg !3432
  %12 = icmp eq i32 %6, 0
  %13 = select i1 %11, i1 %12, i1 false, !dbg !3433
  br i1 %13, label %14, label %36, !dbg !3433

14:                                               ; preds = %3
  %15 = getelementptr inbounds %struct.tskTaskControlBlock, %struct.tskTaskControlBlock* %0, i32 0, i32 1, !dbg !3434
  %16 = tail call i32 @uxListRemove(%struct.xLIST_ITEM* noundef nonnull %15) #18, !dbg !3439
  %17 = icmp eq i32 %16, 0, !dbg !3440
  br i1 %17, label %18, label %28, !dbg !3441

18:                                               ; preds = %14
  %19 = load i32, i32* %7, align 4, !dbg !3442, !tbaa !2273
  %20 = getelementptr inbounds [5 x %struct.xLIST], [5 x %struct.xLIST]* @pxReadyTasksLists, i32 0, i32 %19, i32 0, !dbg !3442
  %21 = load volatile i32, i32* %20, align 4, !dbg !3442, !tbaa !862
  %22 = icmp eq i32 %21, 0, !dbg !3442
  br i1 %22, label %23, label %28, !dbg !3446

23:                                               ; preds = %18
  %24 = shl nuw i32 1, %19, !dbg !3447
  %25 = xor i32 %24, -1, !dbg !3447
  %26 = load volatile i32, i32* @uxTopReadyPriority, align 4, !dbg !3447, !tbaa !1024
  %27 = and i32 %26, %25, !dbg !3447
  store volatile i32 %27, i32* @uxTopReadyPriority, align 4, !dbg !3447, !tbaa !1024
  br label %28, !dbg !3447

28:                                               ; preds = %14, %18, %23
  %29 = load i32, i32* %9, align 4, !dbg !3449, !tbaa !2277
  store i32 %29, i32* %7, align 4, !dbg !3450, !tbaa !2273
  %30 = sub i32 5, %29, !dbg !3451
  %31 = getelementptr inbounds %struct.tskTaskControlBlock, %struct.tskTaskControlBlock* %0, i32 0, i32 2, i32 0, !dbg !3451
  store i32 %30, i32* %31, align 4, !dbg !3451, !tbaa !2288
  %32 = shl nuw i32 1, %29, !dbg !3452
  %33 = load volatile i32, i32* @uxTopReadyPriority, align 4, !dbg !3452, !tbaa !1024
  %34 = or i32 %33, %32, !dbg !3452
  store volatile i32 %34, i32* @uxTopReadyPriority, align 4, !dbg !3452, !tbaa !1024
  %35 = getelementptr inbounds [5 x %struct.xLIST], [5 x %struct.xLIST]* @pxReadyTasksLists, i32 0, i32 %29, !dbg !3452
  tail call void @vListInsertEnd(%struct.xLIST* noundef nonnull %35, %struct.xLIST_ITEM* noundef nonnull %15) #18, !dbg !3452
  call void @llvm.dbg.value(metadata i32 1, metadata !3421, metadata !DIExpression()), !dbg !3422
  br label %36, !dbg !3453

36:                                               ; preds = %1, %28, %3
  %37 = phi i32 [ 1, %28 ], [ 0, %3 ], [ 0, %1 ], !dbg !3422
  call void @llvm.dbg.value(metadata i32 %37, metadata !3421, metadata !DIExpression()), !dbg !3422
  ret i32 %37, !dbg !3454
}

; Function Attrs: noinline nounwind optsize
define dso_local void @vTaskPriorityDisinheritAfterTimeout(%struct.tskTaskControlBlock* noundef %0, i32 noundef %1) local_unnamed_addr #2 !dbg !3455 {
  call void @llvm.dbg.value(metadata %struct.tskTaskControlBlock* %0, metadata !3459, metadata !DIExpression()), !dbg !3465
  call void @llvm.dbg.value(metadata i32 %1, metadata !3460, metadata !DIExpression()), !dbg !3465
  call void @llvm.dbg.value(metadata %struct.tskTaskControlBlock* %0, metadata !3461, metadata !DIExpression()), !dbg !3465
  call void @llvm.dbg.value(metadata i32 1, metadata !3464, metadata !DIExpression()), !dbg !3465
  %3 = icmp eq %struct.tskTaskControlBlock* %0, null, !dbg !3466
  br i1 %3, label %46, label %4, !dbg !3468

4:                                                ; preds = %2
  %5 = getelementptr inbounds %struct.tskTaskControlBlock, %struct.tskTaskControlBlock* %0, i32 0, i32 6, !dbg !3469
  %6 = load i32, i32* %5, align 4, !dbg !3469, !tbaa !2277
  %7 = icmp ult i32 %6, %1, !dbg !3472
  %8 = select i1 %7, i32 %1, i32 %6
  call void @llvm.dbg.value(metadata i32 %8, metadata !3463, metadata !DIExpression()), !dbg !3465
  %9 = getelementptr inbounds %struct.tskTaskControlBlock, %struct.tskTaskControlBlock* %0, i32 0, i32 3, !dbg !3473
  %10 = load i32, i32* %9, align 4, !dbg !3473, !tbaa !2273
  %11 = icmp eq i32 %10, %8, !dbg !3475
  br i1 %11, label %46, label %12, !dbg !3476

12:                                               ; preds = %4
  %13 = getelementptr inbounds %struct.tskTaskControlBlock, %struct.tskTaskControlBlock* %0, i32 0, i32 7, !dbg !3477
  %14 = load i32, i32* %13, align 4, !dbg !3477, !tbaa !2280
  %15 = icmp eq i32 %14, 1, !dbg !3480
  br i1 %15, label %16, label %46, !dbg !3481

16:                                               ; preds = %12
  call void @llvm.dbg.value(metadata i32 %10, metadata !3462, metadata !DIExpression()), !dbg !3465
  store i32 %8, i32* %9, align 4, !dbg !3482, !tbaa !2273
  %17 = getelementptr inbounds %struct.tskTaskControlBlock, %struct.tskTaskControlBlock* %0, i32 0, i32 2, i32 0, !dbg !3484
  %18 = load i32, i32* %17, align 4, !dbg !3484, !tbaa !2288
  %19 = icmp sgt i32 %18, -1, !dbg !3486
  br i1 %19, label %20, label %22, !dbg !3487

20:                                               ; preds = %16
  %21 = sub i32 5, %8, !dbg !3488
  store i32 %21, i32* %17, align 4, !dbg !3488, !tbaa !2288
  br label %22, !dbg !3490

22:                                               ; preds = %16, %20
  %23 = getelementptr inbounds %struct.tskTaskControlBlock, %struct.tskTaskControlBlock* %0, i32 0, i32 1, !dbg !3491
  %24 = getelementptr inbounds %struct.tskTaskControlBlock, %struct.tskTaskControlBlock* %0, i32 0, i32 1, i32 4, !dbg !3491
  %25 = load %struct.xLIST*, %struct.xLIST** %24, align 4, !dbg !3491, !tbaa !2859
  %26 = getelementptr inbounds [5 x %struct.xLIST], [5 x %struct.xLIST]* @pxReadyTasksLists, i32 0, i32 %10, !dbg !3491
  %27 = icmp eq %struct.xLIST* %25, %26, !dbg !3491
  br i1 %27, label %28, label %46, !dbg !3493

28:                                               ; preds = %22
  %29 = tail call i32 @uxListRemove(%struct.xLIST_ITEM* noundef nonnull %23) #18, !dbg !3494
  %30 = icmp eq i32 %29, 0, !dbg !3497
  %31 = load i32, i32* %9, align 4, !dbg !3498, !tbaa !2273
  br i1 %30, label %32, label %41, !dbg !3499

32:                                               ; preds = %28
  %33 = getelementptr inbounds [5 x %struct.xLIST], [5 x %struct.xLIST]* @pxReadyTasksLists, i32 0, i32 %31, i32 0, !dbg !3500
  %34 = load volatile i32, i32* %33, align 4, !dbg !3500, !tbaa !862
  %35 = icmp eq i32 %34, 0, !dbg !3500
  br i1 %35, label %36, label %41, !dbg !3504

36:                                               ; preds = %32
  %37 = shl nuw i32 1, %31, !dbg !3505
  %38 = xor i32 %37, -1, !dbg !3505
  %39 = load volatile i32, i32* @uxTopReadyPriority, align 4, !dbg !3505, !tbaa !1024
  %40 = and i32 %39, %38, !dbg !3505
  store volatile i32 %40, i32* @uxTopReadyPriority, align 4, !dbg !3505, !tbaa !1024
  br label %41, !dbg !3505

41:                                               ; preds = %28, %32, %36
  %42 = shl nuw i32 1, %31, !dbg !3507
  %43 = load volatile i32, i32* @uxTopReadyPriority, align 4, !dbg !3507, !tbaa !1024
  %44 = or i32 %43, %42, !dbg !3507
  store volatile i32 %44, i32* @uxTopReadyPriority, align 4, !dbg !3507, !tbaa !1024
  %45 = getelementptr inbounds [5 x %struct.xLIST], [5 x %struct.xLIST]* @pxReadyTasksLists, i32 0, i32 %31, !dbg !3507
  tail call void @vListInsertEnd(%struct.xLIST* noundef nonnull %45, %struct.xLIST_ITEM* noundef nonnull %23) #18, !dbg !3507
  br label %46, !dbg !3508

46:                                               ; preds = %2, %12, %41, %22, %4
  ret void, !dbg !3509
}

; Function Attrs: mustprogress nofree noinline norecurse nounwind optsize willreturn
define dso_local i32 @uxTaskResetEventItemValue() local_unnamed_addr #17 !dbg !3510 {
  %1 = load volatile %struct.tskTaskControlBlock*, %struct.tskTaskControlBlock** @pxCurrentTCB, align 4, !dbg !3513, !tbaa !649
  %2 = getelementptr inbounds %struct.tskTaskControlBlock, %struct.tskTaskControlBlock* %1, i32 0, i32 2, i32 0, !dbg !3513
  %3 = load i32, i32* %2, align 4, !dbg !3513, !tbaa !2288
  call void @llvm.dbg.value(metadata i32 %3, metadata !3512, metadata !DIExpression()), !dbg !3514
  %4 = load volatile %struct.tskTaskControlBlock*, %struct.tskTaskControlBlock** @pxCurrentTCB, align 4, !dbg !3515, !tbaa !649
  %5 = getelementptr inbounds %struct.tskTaskControlBlock, %struct.tskTaskControlBlock* %4, i32 0, i32 3, !dbg !3515
  %6 = load i32, i32* %5, align 4, !dbg !3515, !tbaa !2273
  %7 = sub i32 5, %6, !dbg !3515
  %8 = load volatile %struct.tskTaskControlBlock*, %struct.tskTaskControlBlock** @pxCurrentTCB, align 4, !dbg !3515, !tbaa !649
  %9 = getelementptr inbounds %struct.tskTaskControlBlock, %struct.tskTaskControlBlock* %8, i32 0, i32 2, i32 0, !dbg !3515
  store i32 %7, i32* %9, align 4, !dbg !3515, !tbaa !2288
  ret i32 %3, !dbg !3516
}

; Function Attrs: mustprogress nofree noinline norecurse nounwind optsize willreturn
define dso_local %struct.tskTaskControlBlock* @pvTaskIncrementMutexHeldCount() local_unnamed_addr #17 !dbg !3517 {
  %1 = load volatile %struct.tskTaskControlBlock*, %struct.tskTaskControlBlock** @pxCurrentTCB, align 4, !dbg !3518, !tbaa !649
  %2 = icmp eq %struct.tskTaskControlBlock* %1, null, !dbg !3520
  br i1 %2, label %8, label %3, !dbg !3521

3:                                                ; preds = %0
  %4 = load volatile %struct.tskTaskControlBlock*, %struct.tskTaskControlBlock** @pxCurrentTCB, align 4, !dbg !3522, !tbaa !649
  %5 = getelementptr inbounds %struct.tskTaskControlBlock, %struct.tskTaskControlBlock* %4, i32 0, i32 7, !dbg !3524
  %6 = load i32, i32* %5, align 4, !dbg !3525, !tbaa !2280
  %7 = add i32 %6, 1, !dbg !3525
  store i32 %7, i32* %5, align 4, !dbg !3525, !tbaa !2280
  br label %8, !dbg !3526

8:                                                ; preds = %3, %0
  %9 = load volatile %struct.tskTaskControlBlock*, %struct.tskTaskControlBlock** @pxCurrentTCB, align 4, !dbg !3527, !tbaa !649
  ret %struct.tskTaskControlBlock* %9, !dbg !3528
}

; Function Attrs: noinline nounwind optsize
define dso_local i32 @ulTaskNotifyTake(i32 noundef %0, i32 noundef %1) local_unnamed_addr #2 !dbg !3529 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !3533, metadata !DIExpression()), !dbg !3536
  call void @llvm.dbg.value(metadata i32 %1, metadata !3534, metadata !DIExpression()), !dbg !3536
  tail call void @vPortEnterCritical() #18, !dbg !3537
  %3 = load volatile %struct.tskTaskControlBlock*, %struct.tskTaskControlBlock** @pxCurrentTCB, align 4, !dbg !3538, !tbaa !649
  %4 = getelementptr inbounds %struct.tskTaskControlBlock, %struct.tskTaskControlBlock* %3, i32 0, i32 8, !dbg !3541
  %5 = load volatile i32, i32* %4, align 4, !dbg !3541, !tbaa !2294
  %6 = icmp eq i32 %5, 0, !dbg !3542
  br i1 %6, label %7, label %12, !dbg !3543

7:                                                ; preds = %2
  %8 = load volatile %struct.tskTaskControlBlock*, %struct.tskTaskControlBlock** @pxCurrentTCB, align 4, !dbg !3544, !tbaa !649
  %9 = getelementptr inbounds %struct.tskTaskControlBlock, %struct.tskTaskControlBlock* %8, i32 0, i32 9, !dbg !3546
  store volatile i8 1, i8* %9, align 4, !dbg !3547, !tbaa !2297
  %10 = icmp eq i32 %1, 0, !dbg !3548
  br i1 %10, label %12, label %11, !dbg !3550

11:                                               ; preds = %7
  tail call fastcc void @prvAddCurrentTaskToDelayedList(i32 noundef %1, i32 noundef 1) #19, !dbg !3551
  store volatile i32 268435456, i32* inttoptr (i32 -536810236 to i32*), align 4, !dbg !3553, !tbaa !580
  tail call void asm sideeffect "dsb", "~{memory}"() #20, !dbg !3553, !srcloc !3555
  tail call void asm sideeffect "isb", ""() #20, !dbg !3553, !srcloc !3556
  br label %12, !dbg !3557

12:                                               ; preds = %2, %11, %7
  tail call void @vPortExitCritical() #18, !dbg !3558
  tail call void @vPortEnterCritical() #18, !dbg !3559
  %13 = load volatile %struct.tskTaskControlBlock*, %struct.tskTaskControlBlock** @pxCurrentTCB, align 4, !dbg !3560, !tbaa !649
  %14 = getelementptr inbounds %struct.tskTaskControlBlock, %struct.tskTaskControlBlock* %13, i32 0, i32 8, !dbg !3562
  %15 = load volatile i32, i32* %14, align 4, !dbg !3562, !tbaa !2294
  call void @llvm.dbg.value(metadata i32 %15, metadata !3535, metadata !DIExpression()), !dbg !3536
  %16 = icmp eq i32 %15, 0, !dbg !3563
  br i1 %16, label %23, label %17, !dbg !3565

17:                                               ; preds = %12
  %18 = icmp eq i32 %0, 0, !dbg !3566
  %19 = add i32 %15, -1, !dbg !3569
  %20 = select i1 %18, i32 %19, i32 0, !dbg !3569
  %21 = load volatile %struct.tskTaskControlBlock*, %struct.tskTaskControlBlock** @pxCurrentTCB, align 4, !dbg !3570, !tbaa !649
  %22 = getelementptr inbounds %struct.tskTaskControlBlock, %struct.tskTaskControlBlock* %21, i32 0, i32 8, !dbg !3570
  store volatile i32 %20, i32* %22, align 4, !dbg !3570, !tbaa !2294
  br label %23, !dbg !3571

23:                                               ; preds = %17, %12
  %24 = load volatile %struct.tskTaskControlBlock*, %struct.tskTaskControlBlock** @pxCurrentTCB, align 4, !dbg !3571, !tbaa !649
  %25 = getelementptr inbounds %struct.tskTaskControlBlock, %struct.tskTaskControlBlock* %24, i32 0, i32 9, !dbg !3572
  store volatile i8 0, i8* %25, align 4, !dbg !3573, !tbaa !2297
  tail call void @vPortExitCritical() #18, !dbg !3574
  ret i32 %15, !dbg !3575
}

; Function Attrs: noinline nounwind optsize
define dso_local i32 @xTaskNotifyWait(i32 noundef %0, i32 noundef %1, i32* noundef writeonly %2, i32 noundef %3) local_unnamed_addr #2 !dbg !3576 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !3581, metadata !DIExpression()), !dbg !3586
  call void @llvm.dbg.value(metadata i32 %1, metadata !3582, metadata !DIExpression()), !dbg !3586
  call void @llvm.dbg.value(metadata i32* %2, metadata !3583, metadata !DIExpression()), !dbg !3586
  call void @llvm.dbg.value(metadata i32 %3, metadata !3584, metadata !DIExpression()), !dbg !3586
  tail call void @vPortEnterCritical() #18, !dbg !3587
  %5 = load volatile %struct.tskTaskControlBlock*, %struct.tskTaskControlBlock** @pxCurrentTCB, align 4, !dbg !3588, !tbaa !649
  %6 = getelementptr inbounds %struct.tskTaskControlBlock, %struct.tskTaskControlBlock* %5, i32 0, i32 9, !dbg !3591
  %7 = load volatile i8, i8* %6, align 4, !dbg !3591, !tbaa !2297
  %8 = icmp eq i8 %7, 2, !dbg !3592
  br i1 %8, label %19, label %9, !dbg !3593

9:                                                ; preds = %4
  %10 = xor i32 %0, -1, !dbg !3594
  %11 = load volatile %struct.tskTaskControlBlock*, %struct.tskTaskControlBlock** @pxCurrentTCB, align 4, !dbg !3596, !tbaa !649
  %12 = getelementptr inbounds %struct.tskTaskControlBlock, %struct.tskTaskControlBlock* %11, i32 0, i32 8, !dbg !3597
  %13 = load volatile i32, i32* %12, align 4, !dbg !3598, !tbaa !2294
  %14 = and i32 %13, %10, !dbg !3598
  store volatile i32 %14, i32* %12, align 4, !dbg !3598, !tbaa !2294
  %15 = load volatile %struct.tskTaskControlBlock*, %struct.tskTaskControlBlock** @pxCurrentTCB, align 4, !dbg !3599, !tbaa !649
  %16 = getelementptr inbounds %struct.tskTaskControlBlock, %struct.tskTaskControlBlock* %15, i32 0, i32 9, !dbg !3600
  store volatile i8 1, i8* %16, align 4, !dbg !3601, !tbaa !2297
  %17 = icmp eq i32 %3, 0, !dbg !3602
  br i1 %17, label %19, label %18, !dbg !3604

18:                                               ; preds = %9
  tail call fastcc void @prvAddCurrentTaskToDelayedList(i32 noundef %3, i32 noundef 1) #19, !dbg !3605
  store volatile i32 268435456, i32* inttoptr (i32 -536810236 to i32*), align 4, !dbg !3607, !tbaa !580
  tail call void asm sideeffect "dsb", "~{memory}"() #20, !dbg !3607, !srcloc !3609
  tail call void asm sideeffect "isb", ""() #20, !dbg !3607, !srcloc !3610
  br label %19, !dbg !3611

19:                                               ; preds = %4, %18, %9
  tail call void @vPortExitCritical() #18, !dbg !3612
  tail call void @vPortEnterCritical() #18, !dbg !3613
  %20 = icmp eq i32* %2, null, !dbg !3614
  br i1 %20, label %25, label %21, !dbg !3617

21:                                               ; preds = %19
  %22 = load volatile %struct.tskTaskControlBlock*, %struct.tskTaskControlBlock** @pxCurrentTCB, align 4, !dbg !3618, !tbaa !649
  %23 = getelementptr inbounds %struct.tskTaskControlBlock, %struct.tskTaskControlBlock* %22, i32 0, i32 8, !dbg !3620
  %24 = load volatile i32, i32* %23, align 4, !dbg !3620, !tbaa !2294
  store i32 %24, i32* %2, align 4, !dbg !3621, !tbaa !580
  br label %25, !dbg !3622

25:                                               ; preds = %21, %19
  %26 = load volatile %struct.tskTaskControlBlock*, %struct.tskTaskControlBlock** @pxCurrentTCB, align 4, !dbg !3623, !tbaa !649
  %27 = getelementptr inbounds %struct.tskTaskControlBlock, %struct.tskTaskControlBlock* %26, i32 0, i32 9, !dbg !3625
  %28 = load volatile i8, i8* %27, align 4, !dbg !3625, !tbaa !2297
  %29 = icmp eq i8 %28, 2, !dbg !3626
  br i1 %29, label %30, label %36, !dbg !3627

30:                                               ; preds = %25
  %31 = xor i32 %1, -1, !dbg !3628
  %32 = load volatile %struct.tskTaskControlBlock*, %struct.tskTaskControlBlock** @pxCurrentTCB, align 4, !dbg !3630, !tbaa !649
  %33 = getelementptr inbounds %struct.tskTaskControlBlock, %struct.tskTaskControlBlock* %32, i32 0, i32 8, !dbg !3631
  %34 = load volatile i32, i32* %33, align 4, !dbg !3632, !tbaa !2294
  %35 = and i32 %34, %31, !dbg !3632
  store volatile i32 %35, i32* %33, align 4, !dbg !3632, !tbaa !2294
  call void @llvm.dbg.value(metadata i32 1, metadata !3585, metadata !DIExpression()), !dbg !3586
  br label %36

36:                                               ; preds = %25, %30
  %37 = phi i32 [ 1, %30 ], [ 0, %25 ], !dbg !3633
  call void @llvm.dbg.value(metadata i32 %37, metadata !3585, metadata !DIExpression()), !dbg !3586
  %38 = load volatile %struct.tskTaskControlBlock*, %struct.tskTaskControlBlock** @pxCurrentTCB, align 4, !dbg !3634, !tbaa !649
  %39 = getelementptr inbounds %struct.tskTaskControlBlock, %struct.tskTaskControlBlock* %38, i32 0, i32 9, !dbg !3635
  store volatile i8 0, i8* %39, align 4, !dbg !3636, !tbaa !2297
  tail call void @vPortExitCritical() #18, !dbg !3637
  ret i32 %37, !dbg !3638
}

; Function Attrs: noinline nounwind optsize
define dso_local i32 @xTaskGenericNotify(%struct.tskTaskControlBlock* noundef %0, i32 noundef %1, i32 noundef %2, i32* noundef writeonly %3) local_unnamed_addr #2 !dbg !3639 {
  call void @llvm.dbg.value(metadata %struct.tskTaskControlBlock* %0, metadata !3644, metadata !DIExpression()), !dbg !3651
  call void @llvm.dbg.value(metadata i32 %1, metadata !3645, metadata !DIExpression()), !dbg !3651
  call void @llvm.dbg.value(metadata i32 %2, metadata !3646, metadata !DIExpression()), !dbg !3651
  call void @llvm.dbg.value(metadata i32* %3, metadata !3647, metadata !DIExpression()), !dbg !3651
  call void @llvm.dbg.value(metadata i32 1, metadata !3649, metadata !DIExpression()), !dbg !3651
  call void @llvm.dbg.value(metadata %struct.tskTaskControlBlock* %0, metadata !3648, metadata !DIExpression()), !dbg !3651
  tail call void @vPortEnterCritical() #18, !dbg !3652
  %5 = icmp eq i32* %3, null, !dbg !3653
  br i1 %5, label %9, label %6, !dbg !3656

6:                                                ; preds = %4
  %7 = getelementptr inbounds %struct.tskTaskControlBlock, %struct.tskTaskControlBlock* %0, i32 0, i32 8, !dbg !3657
  %8 = load volatile i32, i32* %7, align 4, !dbg !3657, !tbaa !2294
  store i32 %8, i32* %3, align 4, !dbg !3659, !tbaa !580
  br label %9, !dbg !3660

9:                                                ; preds = %6, %4
  %10 = getelementptr inbounds %struct.tskTaskControlBlock, %struct.tskTaskControlBlock* %0, i32 0, i32 9, !dbg !3661
  %11 = load volatile i8, i8* %10, align 4, !dbg !3661, !tbaa !2297
  call void @llvm.dbg.value(metadata i8 %11, metadata !3650, metadata !DIExpression()), !dbg !3651
  store volatile i8 2, i8* %10, align 4, !dbg !3662, !tbaa !2297
  switch i32 %2, label %26 [
    i32 1, label %12
    i32 2, label %16
    i32 3, label %20
    i32 4, label %22
  ], !dbg !3663

12:                                               ; preds = %9
  %13 = getelementptr inbounds %struct.tskTaskControlBlock, %struct.tskTaskControlBlock* %0, i32 0, i32 8, !dbg !3664
  %14 = load volatile i32, i32* %13, align 4, !dbg !3666, !tbaa !2294
  %15 = or i32 %14, %1, !dbg !3666
  store volatile i32 %15, i32* %13, align 4, !dbg !3666, !tbaa !2294
  br label %26, !dbg !3667

16:                                               ; preds = %9
  %17 = getelementptr inbounds %struct.tskTaskControlBlock, %struct.tskTaskControlBlock* %0, i32 0, i32 8, !dbg !3668
  %18 = load volatile i32, i32* %17, align 4, !dbg !3669, !tbaa !2294
  %19 = add i32 %18, 1, !dbg !3669
  store volatile i32 %19, i32* %17, align 4, !dbg !3669, !tbaa !2294
  br label %26, !dbg !3670

20:                                               ; preds = %9
  %21 = getelementptr inbounds %struct.tskTaskControlBlock, %struct.tskTaskControlBlock* %0, i32 0, i32 8, !dbg !3671
  store volatile i32 %1, i32* %21, align 4, !dbg !3672, !tbaa !2294
  br label %26, !dbg !3673

22:                                               ; preds = %9
  %23 = icmp eq i8 %11, 2, !dbg !3674
  br i1 %23, label %43, label %24, !dbg !3676

24:                                               ; preds = %22
  %25 = getelementptr inbounds %struct.tskTaskControlBlock, %struct.tskTaskControlBlock* %0, i32 0, i32 8, !dbg !3677
  store volatile i32 %1, i32* %25, align 4, !dbg !3679, !tbaa !2294
  br label %26, !dbg !3680

26:                                               ; preds = %9, %24, %20, %16, %12
  call void @llvm.dbg.value(metadata i32 1, metadata !3649, metadata !DIExpression()), !dbg !3651
  %27 = icmp eq i8 %11, 1, !dbg !3681
  br i1 %27, label %28, label %43, !dbg !3683

28:                                               ; preds = %26
  %29 = getelementptr inbounds %struct.tskTaskControlBlock, %struct.tskTaskControlBlock* %0, i32 0, i32 1, !dbg !3684
  %30 = tail call i32 @uxListRemove(%struct.xLIST_ITEM* noundef nonnull %29) #18, !dbg !3686
  %31 = getelementptr inbounds %struct.tskTaskControlBlock, %struct.tskTaskControlBlock* %0, i32 0, i32 3, !dbg !3687
  %32 = load i32, i32* %31, align 4, !dbg !3687, !tbaa !2273
  %33 = shl nuw i32 1, %32, !dbg !3687
  %34 = load volatile i32, i32* @uxTopReadyPriority, align 4, !dbg !3687, !tbaa !1024
  %35 = or i32 %34, %33, !dbg !3687
  store volatile i32 %35, i32* @uxTopReadyPriority, align 4, !dbg !3687, !tbaa !1024
  %36 = getelementptr inbounds [5 x %struct.xLIST], [5 x %struct.xLIST]* @pxReadyTasksLists, i32 0, i32 %32, !dbg !3687
  tail call void @vListInsertEnd(%struct.xLIST* noundef nonnull %36, %struct.xLIST_ITEM* noundef nonnull %29) #18, !dbg !3687
  %37 = load i32, i32* %31, align 4, !dbg !3688, !tbaa !2273
  %38 = load volatile %struct.tskTaskControlBlock*, %struct.tskTaskControlBlock** @pxCurrentTCB, align 4, !dbg !3690, !tbaa !649
  %39 = getelementptr inbounds %struct.tskTaskControlBlock, %struct.tskTaskControlBlock* %38, i32 0, i32 3, !dbg !3691
  %40 = load i32, i32* %39, align 4, !dbg !3691, !tbaa !2273
  %41 = icmp ugt i32 %37, %40, !dbg !3692
  br i1 %41, label %42, label %43, !dbg !3693

42:                                               ; preds = %28
  store volatile i32 268435456, i32* inttoptr (i32 -536810236 to i32*), align 4, !dbg !3694, !tbaa !580
  tail call void asm sideeffect "dsb", "~{memory}"() #20, !dbg !3694, !srcloc !3697
  tail call void asm sideeffect "isb", ""() #20, !dbg !3694, !srcloc !3698
  br label %43, !dbg !3699

43:                                               ; preds = %22, %26, %42, %28
  %44 = phi i32 [ 1, %26 ], [ 1, %42 ], [ 1, %28 ], [ 0, %22 ]
  tail call void @vPortExitCritical() #18, !dbg !3700
  ret i32 %44, !dbg !3701
}

; Function Attrs: noinline nounwind optsize
define dso_local i32 @xTaskGenericNotifyFromISR(%struct.tskTaskControlBlock* noundef %0, i32 noundef %1, i32 noundef %2, i32* noundef writeonly %3, i32* noundef writeonly %4) local_unnamed_addr #2 !dbg !3702 {
  call void @llvm.dbg.value(metadata %struct.tskTaskControlBlock* %0, metadata !3706, metadata !DIExpression()), !dbg !3715
  call void @llvm.dbg.value(metadata i32 %1, metadata !3707, metadata !DIExpression()), !dbg !3715
  call void @llvm.dbg.value(metadata i32 %2, metadata !3708, metadata !DIExpression()), !dbg !3715
  call void @llvm.dbg.value(metadata i32* %3, metadata !3709, metadata !DIExpression()), !dbg !3715
  call void @llvm.dbg.value(metadata i32* %4, metadata !3710, metadata !DIExpression()), !dbg !3715
  call void @llvm.dbg.value(metadata i32 1, metadata !3713, metadata !DIExpression()), !dbg !3715
  call void @llvm.dbg.value(metadata %struct.tskTaskControlBlock* %0, metadata !3711, metadata !DIExpression()), !dbg !3715
  %6 = tail call { i32, i32 } asm sideeffect "\09mrs $0, basepri\09\09\09\09\09\09\09\09\09\09\09\0A\09mov $1, $2\09\09\09\09\09\09\09\09\09\09\09\09\0A\09msr basepri, $1\09\09\09\09\09\09\09\09\09\09\09\0A\09isb\09\09\09\09\09\09\09\09\09\09\09\09\09\09\0A\09dsb\09\09\09\09\09\09\09\09\09\09\09\09\09\09\0A", "=r,=r,i,~{memory}"(i32 191) #20, !dbg !3716, !srcloc !2790
  call void @llvm.dbg.value(metadata i32 undef, metadata !2787, metadata !DIExpression()) #20, !dbg !3718
  call void @llvm.dbg.value(metadata i32 undef, metadata !2788, metadata !DIExpression()) #20, !dbg !3718
  call void @llvm.dbg.value(metadata i32 undef, metadata !3714, metadata !DIExpression()), !dbg !3715
  %7 = icmp eq i32* %3, null, !dbg !3719
  br i1 %7, label %11, label %8, !dbg !3722

8:                                                ; preds = %5
  %9 = getelementptr inbounds %struct.tskTaskControlBlock, %struct.tskTaskControlBlock* %0, i32 0, i32 8, !dbg !3723
  %10 = load volatile i32, i32* %9, align 4, !dbg !3723, !tbaa !2294
  store i32 %10, i32* %3, align 4, !dbg !3725, !tbaa !580
  br label %11, !dbg !3726

11:                                               ; preds = %8, %5
  %12 = getelementptr inbounds %struct.tskTaskControlBlock, %struct.tskTaskControlBlock* %0, i32 0, i32 9, !dbg !3727
  %13 = load volatile i8, i8* %12, align 4, !dbg !3727, !tbaa !2297
  call void @llvm.dbg.value(metadata i8 %13, metadata !3712, metadata !DIExpression()), !dbg !3715
  store volatile i8 2, i8* %12, align 4, !dbg !3728, !tbaa !2297
  switch i32 %2, label %28 [
    i32 1, label %14
    i32 2, label %18
    i32 3, label %22
    i32 4, label %24
  ], !dbg !3729

14:                                               ; preds = %11
  %15 = getelementptr inbounds %struct.tskTaskControlBlock, %struct.tskTaskControlBlock* %0, i32 0, i32 8, !dbg !3730
  %16 = load volatile i32, i32* %15, align 4, !dbg !3732, !tbaa !2294
  %17 = or i32 %16, %1, !dbg !3732
  store volatile i32 %17, i32* %15, align 4, !dbg !3732, !tbaa !2294
  br label %28, !dbg !3733

18:                                               ; preds = %11
  %19 = getelementptr inbounds %struct.tskTaskControlBlock, %struct.tskTaskControlBlock* %0, i32 0, i32 8, !dbg !3734
  %20 = load volatile i32, i32* %19, align 4, !dbg !3735, !tbaa !2294
  %21 = add i32 %20, 1, !dbg !3735
  store volatile i32 %21, i32* %19, align 4, !dbg !3735, !tbaa !2294
  br label %28, !dbg !3736

22:                                               ; preds = %11
  %23 = getelementptr inbounds %struct.tskTaskControlBlock, %struct.tskTaskControlBlock* %0, i32 0, i32 8, !dbg !3737
  store volatile i32 %1, i32* %23, align 4, !dbg !3738, !tbaa !2294
  br label %28, !dbg !3739

24:                                               ; preds = %11
  %25 = icmp eq i8 %13, 2, !dbg !3740
  br i1 %25, label %55, label %26, !dbg !3742

26:                                               ; preds = %24
  %27 = getelementptr inbounds %struct.tskTaskControlBlock, %struct.tskTaskControlBlock* %0, i32 0, i32 8, !dbg !3743
  store volatile i32 %1, i32* %27, align 4, !dbg !3745, !tbaa !2294
  br label %28, !dbg !3746

28:                                               ; preds = %11, %26, %22, %18, %14
  call void @llvm.dbg.value(metadata i32 1, metadata !3713, metadata !DIExpression()), !dbg !3715
  %29 = icmp eq i8 %13, 1, !dbg !3747
  br i1 %29, label %30, label %55, !dbg !3749

30:                                               ; preds = %28
  %31 = load volatile i32, i32* @uxSchedulerSuspended, align 4, !dbg !3750, !tbaa !1024
  %32 = icmp eq i32 %31, 0, !dbg !3753
  br i1 %32, label %33, label %42, !dbg !3754

33:                                               ; preds = %30
  %34 = getelementptr inbounds %struct.tskTaskControlBlock, %struct.tskTaskControlBlock* %0, i32 0, i32 1, !dbg !3755
  %35 = tail call i32 @uxListRemove(%struct.xLIST_ITEM* noundef nonnull %34) #18, !dbg !3757
  %36 = getelementptr inbounds %struct.tskTaskControlBlock, %struct.tskTaskControlBlock* %0, i32 0, i32 3, !dbg !3758
  %37 = load i32, i32* %36, align 4, !dbg !3758, !tbaa !2273
  %38 = shl nuw i32 1, %37, !dbg !3758
  %39 = load volatile i32, i32* @uxTopReadyPriority, align 4, !dbg !3758, !tbaa !1024
  %40 = or i32 %39, %38, !dbg !3758
  store volatile i32 %40, i32* @uxTopReadyPriority, align 4, !dbg !3758, !tbaa !1024
  %41 = getelementptr inbounds [5 x %struct.xLIST], [5 x %struct.xLIST]* @pxReadyTasksLists, i32 0, i32 %37, !dbg !3758
  tail call void @vListInsertEnd(%struct.xLIST* noundef nonnull %41, %struct.xLIST_ITEM* noundef nonnull %34) #18, !dbg !3758
  br label %44, !dbg !3759

42:                                               ; preds = %30
  %43 = getelementptr inbounds %struct.tskTaskControlBlock, %struct.tskTaskControlBlock* %0, i32 0, i32 2, !dbg !3760
  tail call void @vListInsertEnd(%struct.xLIST* noundef nonnull @xPendingReadyList, %struct.xLIST_ITEM* noundef nonnull %43) #18, !dbg !3762
  br label %44

44:                                               ; preds = %42, %33
  %45 = getelementptr inbounds %struct.tskTaskControlBlock, %struct.tskTaskControlBlock* %0, i32 0, i32 3, !dbg !3763
  %46 = load i32, i32* %45, align 4, !dbg !3763, !tbaa !2273
  %47 = load volatile %struct.tskTaskControlBlock*, %struct.tskTaskControlBlock** @pxCurrentTCB, align 4, !dbg !3765, !tbaa !649
  %48 = getelementptr inbounds %struct.tskTaskControlBlock, %struct.tskTaskControlBlock* %47, i32 0, i32 3, !dbg !3766
  %49 = load i32, i32* %48, align 4, !dbg !3766, !tbaa !2273
  %50 = icmp ugt i32 %46, %49, !dbg !3767
  br i1 %50, label %51, label %55, !dbg !3768

51:                                               ; preds = %44
  %52 = icmp eq i32* %4, null, !dbg !3769
  br i1 %52, label %54, label %53, !dbg !3772

53:                                               ; preds = %51
  store i32 1, i32* %4, align 4, !dbg !3773, !tbaa !1024
  br label %54, !dbg !3775

54:                                               ; preds = %53, %51
  store volatile i32 1, i32* @xYieldPending, align 4, !dbg !3776, !tbaa !1024
  br label %55, !dbg !3777

55:                                               ; preds = %24, %54, %44, %28
  %56 = phi i32 [ 1, %54 ], [ 1, %44 ], [ 1, %28 ], [ 0, %24 ]
  %57 = extractvalue { i32, i32 } %6, 0, !dbg !3716
  call void @llvm.dbg.value(metadata i32 %57, metadata !2787, metadata !DIExpression()) #20, !dbg !3718
  call void @llvm.dbg.value(metadata i32 %57, metadata !3714, metadata !DIExpression()), !dbg !3715
  call void @llvm.dbg.value(metadata i32 undef, metadata !2795, metadata !DIExpression()) #20, !dbg !3778
  tail call void asm sideeffect "\09msr basepri, $0\09", "r,~{memory}"(i32 %57) #20, !dbg !3780, !srcloc !2801
  ret i32 %56, !dbg !3781
}

; Function Attrs: noinline nounwind optsize
define dso_local void @vTaskNotifyGiveFromISR(%struct.tskTaskControlBlock* noundef %0, i32* noundef writeonly %1) local_unnamed_addr #2 !dbg !3782 {
  call void @llvm.dbg.value(metadata %struct.tskTaskControlBlock* %0, metadata !3786, metadata !DIExpression()), !dbg !3791
  call void @llvm.dbg.value(metadata i32* %1, metadata !3787, metadata !DIExpression()), !dbg !3791
  call void @llvm.dbg.value(metadata %struct.tskTaskControlBlock* %0, metadata !3788, metadata !DIExpression()), !dbg !3791
  %3 = tail call { i32, i32 } asm sideeffect "\09mrs $0, basepri\09\09\09\09\09\09\09\09\09\09\09\0A\09mov $1, $2\09\09\09\09\09\09\09\09\09\09\09\09\0A\09msr basepri, $1\09\09\09\09\09\09\09\09\09\09\09\0A\09isb\09\09\09\09\09\09\09\09\09\09\09\09\09\09\0A\09dsb\09\09\09\09\09\09\09\09\09\09\09\09\09\09\0A", "=r,=r,i,~{memory}"(i32 191) #20, !dbg !3792, !srcloc !2790
  call void @llvm.dbg.value(metadata i32 undef, metadata !2787, metadata !DIExpression()) #20, !dbg !3794
  call void @llvm.dbg.value(metadata i32 undef, metadata !2788, metadata !DIExpression()) #20, !dbg !3794
  call void @llvm.dbg.value(metadata i32 undef, metadata !3790, metadata !DIExpression()), !dbg !3791
  %4 = getelementptr inbounds %struct.tskTaskControlBlock, %struct.tskTaskControlBlock* %0, i32 0, i32 9, !dbg !3795
  %5 = load volatile i8, i8* %4, align 4, !dbg !3795, !tbaa !2297
  call void @llvm.dbg.value(metadata i8 %5, metadata !3789, metadata !DIExpression()), !dbg !3791
  store volatile i8 2, i8* %4, align 4, !dbg !3797, !tbaa !2297
  %6 = getelementptr inbounds %struct.tskTaskControlBlock, %struct.tskTaskControlBlock* %0, i32 0, i32 8, !dbg !3798
  %7 = load volatile i32, i32* %6, align 4, !dbg !3799, !tbaa !2294
  %8 = add i32 %7, 1, !dbg !3799
  store volatile i32 %8, i32* %6, align 4, !dbg !3799, !tbaa !2294
  %9 = icmp eq i8 %5, 1, !dbg !3800
  br i1 %9, label %10, label %35, !dbg !3802

10:                                               ; preds = %2
  %11 = load volatile i32, i32* @uxSchedulerSuspended, align 4, !dbg !3803, !tbaa !1024
  %12 = icmp eq i32 %11, 0, !dbg !3806
  br i1 %12, label %13, label %22, !dbg !3807

13:                                               ; preds = %10
  %14 = getelementptr inbounds %struct.tskTaskControlBlock, %struct.tskTaskControlBlock* %0, i32 0, i32 1, !dbg !3808
  %15 = tail call i32 @uxListRemove(%struct.xLIST_ITEM* noundef nonnull %14) #18, !dbg !3810
  %16 = getelementptr inbounds %struct.tskTaskControlBlock, %struct.tskTaskControlBlock* %0, i32 0, i32 3, !dbg !3811
  %17 = load i32, i32* %16, align 4, !dbg !3811, !tbaa !2273
  %18 = shl nuw i32 1, %17, !dbg !3811
  %19 = load volatile i32, i32* @uxTopReadyPriority, align 4, !dbg !3811, !tbaa !1024
  %20 = or i32 %19, %18, !dbg !3811
  store volatile i32 %20, i32* @uxTopReadyPriority, align 4, !dbg !3811, !tbaa !1024
  %21 = getelementptr inbounds [5 x %struct.xLIST], [5 x %struct.xLIST]* @pxReadyTasksLists, i32 0, i32 %17, !dbg !3811
  tail call void @vListInsertEnd(%struct.xLIST* noundef nonnull %21, %struct.xLIST_ITEM* noundef nonnull %14) #18, !dbg !3811
  br label %24, !dbg !3812

22:                                               ; preds = %10
  %23 = getelementptr inbounds %struct.tskTaskControlBlock, %struct.tskTaskControlBlock* %0, i32 0, i32 2, !dbg !3813
  tail call void @vListInsertEnd(%struct.xLIST* noundef nonnull @xPendingReadyList, %struct.xLIST_ITEM* noundef nonnull %23) #18, !dbg !3815
  br label %24

24:                                               ; preds = %22, %13
  %25 = getelementptr inbounds %struct.tskTaskControlBlock, %struct.tskTaskControlBlock* %0, i32 0, i32 3, !dbg !3816
  %26 = load i32, i32* %25, align 4, !dbg !3816, !tbaa !2273
  %27 = load volatile %struct.tskTaskControlBlock*, %struct.tskTaskControlBlock** @pxCurrentTCB, align 4, !dbg !3818, !tbaa !649
  %28 = getelementptr inbounds %struct.tskTaskControlBlock, %struct.tskTaskControlBlock* %27, i32 0, i32 3, !dbg !3819
  %29 = load i32, i32* %28, align 4, !dbg !3819, !tbaa !2273
  %30 = icmp ugt i32 %26, %29, !dbg !3820
  br i1 %30, label %31, label %35, !dbg !3821

31:                                               ; preds = %24
  %32 = icmp eq i32* %1, null, !dbg !3822
  br i1 %32, label %34, label %33, !dbg !3825

33:                                               ; preds = %31
  store i32 1, i32* %1, align 4, !dbg !3826, !tbaa !1024
  br label %34, !dbg !3828

34:                                               ; preds = %33, %31
  store volatile i32 1, i32* @xYieldPending, align 4, !dbg !3829, !tbaa !1024
  br label %35, !dbg !3830

35:                                               ; preds = %34, %24, %2
  %36 = extractvalue { i32, i32 } %3, 0, !dbg !3792
  call void @llvm.dbg.value(metadata i32 %36, metadata !2787, metadata !DIExpression()) #20, !dbg !3794
  call void @llvm.dbg.value(metadata i32 %36, metadata !3790, metadata !DIExpression()), !dbg !3791
  call void @llvm.dbg.value(metadata i32 undef, metadata !2795, metadata !DIExpression()) #20, !dbg !3831
  tail call void asm sideeffect "\09msr basepri, $0\09", "r,~{memory}"(i32 %36) #20, !dbg !3833, !srcloc !2801
  ret void, !dbg !3834
}

; Function Attrs: noinline nounwind optsize
define dso_local i32 @xTaskNotifyStateClear(%struct.tskTaskControlBlock* noundef %0) local_unnamed_addr #2 !dbg !3835 {
  call void @llvm.dbg.value(metadata %struct.tskTaskControlBlock* %0, metadata !3837, metadata !DIExpression()), !dbg !3840
  %2 = icmp eq %struct.tskTaskControlBlock* %0, null, !dbg !3841
  br i1 %2, label %3, label %5, !dbg !3841

3:                                                ; preds = %1
  %4 = load volatile %struct.tskTaskControlBlock*, %struct.tskTaskControlBlock** @pxCurrentTCB, align 4, !dbg !3841, !tbaa !649
  br label %5, !dbg !3841

5:                                                ; preds = %1, %3
  %6 = phi %struct.tskTaskControlBlock* [ %4, %3 ], [ %0, %1 ], !dbg !3841
  call void @llvm.dbg.value(metadata %struct.tskTaskControlBlock* %6, metadata !3838, metadata !DIExpression()), !dbg !3840
  tail call void @vPortEnterCritical() #18, !dbg !3842
  %7 = getelementptr inbounds %struct.tskTaskControlBlock, %struct.tskTaskControlBlock* %6, i32 0, i32 9, !dbg !3843
  %8 = load volatile i8, i8* %7, align 4, !dbg !3843, !tbaa !2297
  %9 = icmp eq i8 %8, 2, !dbg !3846
  br i1 %9, label %10, label %11, !dbg !3847

10:                                               ; preds = %5
  store volatile i8 0, i8* %7, align 4, !dbg !3848, !tbaa !2297
  call void @llvm.dbg.value(metadata i32 1, metadata !3839, metadata !DIExpression()), !dbg !3840
  br label %11, !dbg !3850

11:                                               ; preds = %5, %10
  %12 = phi i32 [ 1, %10 ], [ 0, %5 ], !dbg !3851
  call void @llvm.dbg.value(metadata i32 %12, metadata !3839, metadata !DIExpression()), !dbg !3840
  tail call void @vPortExitCritical() #18, !dbg !3852
  ret i32 %12, !dbg !3853
}

; Function Attrs: noinline nounwind optsize
define dso_local void @sv_call_handler() #2 !dbg !3854 {
  tail call void @vPortSVCHandler() #18, !dbg !3855
  ret void, !dbg !3856
}

; Function Attrs: noinline nounwind optsize
define dso_local void @pend_sv_handler() #2 !dbg !3857 {
  tail call void @xPortPendSVHandler() #18, !dbg !3858
  ret void, !dbg !3859
}

; Function Attrs: noinline nounwind optsize
define dso_local void @sys_tick_handler() #2 !dbg !3860 {
  tail call void @xPortSysTickHandler() #18, !dbg !3861
  ret void, !dbg !3862
}

; Function Attrs: nofree noinline norecurse nounwind optsize
define dso_local void @rcc_osc_ready_int_clear(i32 noundef %0) local_unnamed_addr #11 !dbg !3863 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !3867, metadata !DIExpression()), !dbg !3868
  %2 = icmp ult i32 %0, 7, !dbg !3869
  br i1 %2, label %3, label %8, !dbg !3869

3:                                                ; preds = %1
  %4 = getelementptr inbounds [7 x i32], [7 x i32]* @switch.table.rcc_osc_ready_int_enable, i32 0, i32 %0, !dbg !3869
  %5 = load i32, i32* %4, align 4, !dbg !3869
  %6 = load volatile i32, i32* inttoptr (i32 1073877024 to i32*), align 32, !dbg !3870, !tbaa !580
  %7 = or i32 %6, %5, !dbg !3870
  store volatile i32 %7, i32* inttoptr (i32 1073877024 to i32*), align 32, !dbg !3870, !tbaa !580
  br label %8, !dbg !3872

8:                                                ; preds = %1, %3
  ret void, !dbg !3872
}

; Function Attrs: nofree noinline norecurse nounwind optsize
define dso_local void @rcc_osc_ready_int_enable(i32 noundef %0) local_unnamed_addr #11 !dbg !3873 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !3875, metadata !DIExpression()), !dbg !3876
  %2 = icmp ult i32 %0, 7, !dbg !3877
  br i1 %2, label %3, label %8, !dbg !3877

3:                                                ; preds = %1
  %4 = getelementptr inbounds [7 x i32], [7 x i32]* @switch.table.rcc_osc_ready_int_enable, i32 0, i32 %0, !dbg !3877
  %5 = load i32, i32* %4, align 4, !dbg !3877
  %6 = load volatile i32, i32* inttoptr (i32 1073877016 to i32*), align 8, !dbg !3878, !tbaa !580
  %7 = or i32 %6, %5, !dbg !3878
  store volatile i32 %7, i32* inttoptr (i32 1073877016 to i32*), align 8, !dbg !3878, !tbaa !580
  br label %8, !dbg !3880

8:                                                ; preds = %1, %3
  ret void, !dbg !3880
}

; Function Attrs: nofree noinline norecurse nounwind optsize
define dso_local void @rcc_osc_ready_int_disable(i32 noundef %0) local_unnamed_addr #11 !dbg !3881 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !3883, metadata !DIExpression()), !dbg !3884
  %2 = icmp ult i32 %0, 7, !dbg !3885
  br i1 %2, label %3, label %8, !dbg !3885

3:                                                ; preds = %1
  %4 = getelementptr inbounds [7 x i32], [7 x i32]* @switch.table.rcc_osc_ready_int_disable, i32 0, i32 %0, !dbg !3885
  %5 = load i32, i32* %4, align 4, !dbg !3885
  %6 = load volatile i32, i32* inttoptr (i32 1073877016 to i32*), align 8, !dbg !3886, !tbaa !580
  %7 = and i32 %6, %5, !dbg !3886
  store volatile i32 %7, i32* inttoptr (i32 1073877016 to i32*), align 8, !dbg !3886, !tbaa !580
  br label %8, !dbg !3888

8:                                                ; preds = %1, %3
  ret void, !dbg !3888
}

; Function Attrs: mustprogress nofree noinline norecurse nounwind optsize willreturn
define dso_local i32 @rcc_osc_ready_int_flag(i32 noundef %0) local_unnamed_addr #17 !dbg !3889 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !3893, metadata !DIExpression()), !dbg !3894
  switch i32 %0, label %29 [
    i32 0, label %2
    i32 1, label %6
    i32 2, label %10
    i32 3, label %14
    i32 4, label %18
    i32 5, label %22
    i32 6, label %25
  ], !dbg !3895

2:                                                ; preds = %1
  %3 = load volatile i32, i32* inttoptr (i32 1073877020 to i32*), align 4, !dbg !3896, !tbaa !580
  %4 = lshr i32 %3, 5, !dbg !3898
  %5 = and i32 %4, 1, !dbg !3898
  br label %29, !dbg !3899

6:                                                ; preds = %1
  %7 = load volatile i32, i32* inttoptr (i32 1073877020 to i32*), align 4, !dbg !3900, !tbaa !580
  %8 = lshr i32 %7, 4, !dbg !3901
  %9 = and i32 %8, 1, !dbg !3901
  br label %29, !dbg !3902

10:                                               ; preds = %1
  %11 = load volatile i32, i32* inttoptr (i32 1073877020 to i32*), align 4, !dbg !3903, !tbaa !580
  %12 = lshr i32 %11, 3, !dbg !3904
  %13 = and i32 %12, 1, !dbg !3904
  br label %29, !dbg !3905

14:                                               ; preds = %1
  %15 = load volatile i32, i32* inttoptr (i32 1073877020 to i32*), align 4, !dbg !3906, !tbaa !580
  %16 = lshr i32 %15, 2, !dbg !3907
  %17 = and i32 %16, 1, !dbg !3907
  br label %29, !dbg !3908

18:                                               ; preds = %1
  %19 = load volatile i32, i32* inttoptr (i32 1073877020 to i32*), align 4, !dbg !3909, !tbaa !580
  %20 = lshr i32 %19, 1, !dbg !3910
  %21 = and i32 %20, 1, !dbg !3910
  br label %29, !dbg !3911

22:                                               ; preds = %1
  %23 = load volatile i32, i32* inttoptr (i32 1073877020 to i32*), align 4, !dbg !3912, !tbaa !580
  %24 = and i32 %23, 1, !dbg !3913
  br label %29, !dbg !3914

25:                                               ; preds = %1
  %26 = load volatile i32, i32* inttoptr (i32 1073877020 to i32*), align 4, !dbg !3915, !tbaa !580
  %27 = lshr i32 %26, 10, !dbg !3916
  %28 = and i32 %27, 1, !dbg !3916
  br label %29, !dbg !3917

29:                                               ; preds = %1, %25, %22, %18, %14, %10, %6, %2
  %30 = phi i32 [ %28, %25 ], [ %24, %22 ], [ %21, %18 ], [ %17, %14 ], [ %13, %10 ], [ %9, %6 ], [ %5, %2 ], [ 0, %1 ], !dbg !3894
  ret i32 %30, !dbg !3918
}

; Function Attrs: nofree noinline norecurse nounwind optsize
define dso_local void @rcc_css_int_clear() local_unnamed_addr #11 !dbg !3919 {
  %1 = load volatile i32, i32* inttoptr (i32 1073877024 to i32*), align 32, !dbg !3920, !tbaa !580
  %2 = or i32 %1, 256, !dbg !3920
  store volatile i32 %2, i32* inttoptr (i32 1073877024 to i32*), align 32, !dbg !3920, !tbaa !580
  ret void, !dbg !3921
}

; Function Attrs: mustprogress nofree noinline norecurse nounwind optsize willreturn
define dso_local i32 @rcc_css_int_flag() local_unnamed_addr #17 !dbg !3922 {
  %1 = load volatile i32, i32* inttoptr (i32 1073877020 to i32*), align 4, !dbg !3923, !tbaa !580
  %2 = lshr i32 %1, 8, !dbg !3924
  %3 = and i32 %2, 1, !dbg !3924
  ret i32 %3, !dbg !3925
}

; Function Attrs: mustprogress nofree noinline norecurse nounwind optsize willreturn
define dso_local zeroext i1 @rcc_is_osc_ready(i32 noundef %0) local_unnamed_addr #17 !dbg !3926 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !3931, metadata !DIExpression()), !dbg !3932
  switch i32 %0, label %30 [
    i32 0, label %2
    i32 1, label %6
    i32 2, label %10
    i32 3, label %14
    i32 4, label %18
    i32 5, label %22
    i32 6, label %26
  ], !dbg !3933

2:                                                ; preds = %1
  %3 = load volatile i32, i32* inttoptr (i32 1073876992 to i32*), align 4096, !dbg !3934, !tbaa !580
  %4 = and i32 %3, 33554432, !dbg !3936
  %5 = icmp ne i32 %4, 0, !dbg !3934
  br label %30, !dbg !3937

6:                                                ; preds = %1
  %7 = load volatile i32, i32* inttoptr (i32 1073876992 to i32*), align 4096, !dbg !3938, !tbaa !580
  %8 = and i32 %7, 131072, !dbg !3939
  %9 = icmp ne i32 %8, 0, !dbg !3938
  br label %30, !dbg !3940

10:                                               ; preds = %1
  %11 = load volatile i32, i32* inttoptr (i32 1073876992 to i32*), align 4096, !dbg !3941, !tbaa !580
  %12 = and i32 %11, 1024, !dbg !3942
  %13 = icmp ne i32 %12, 0, !dbg !3941
  br label %30, !dbg !3943

14:                                               ; preds = %1
  %15 = load volatile i32, i32* inttoptr (i32 1073876992 to i32*), align 4096, !dbg !3944, !tbaa !580
  %16 = and i32 %15, 2, !dbg !3945
  %17 = icmp ne i32 %16, 0, !dbg !3944
  br label %30, !dbg !3946

18:                                               ; preds = %1
  %19 = load volatile i32, i32* inttoptr (i32 1073877136 to i32*), align 16, !dbg !3947, !tbaa !580
  %20 = and i32 %19, 2, !dbg !3948
  %21 = icmp ne i32 %20, 0, !dbg !3947
  br label %30, !dbg !3949

22:                                               ; preds = %1
  %23 = load volatile i32, i32* inttoptr (i32 1073877140 to i32*), align 4, !dbg !3950, !tbaa !580
  %24 = and i32 %23, 2, !dbg !3951
  %25 = icmp ne i32 %24, 0, !dbg !3950
  br label %30, !dbg !3952

26:                                               ; preds = %1
  %27 = load volatile i32, i32* inttoptr (i32 1073877144 to i32*), align 8, !dbg !3953, !tbaa !580
  %28 = and i32 %27, 2, !dbg !3954
  %29 = icmp ne i32 %28, 0, !dbg !3953
  br label %30, !dbg !3955

30:                                               ; preds = %1, %26, %22, %18, %14, %10, %6, %2
  %31 = phi i1 [ %29, %26 ], [ %25, %22 ], [ %21, %18 ], [ %17, %14 ], [ %13, %10 ], [ %9, %6 ], [ %5, %2 ], [ false, %1 ], !dbg !3932
  ret i1 %31, !dbg !3956
}

; Function Attrs: nofree noinline norecurse nounwind optsize
define dso_local void @rcc_wait_for_osc_ready(i32 noundef %0) local_unnamed_addr #11 !dbg !3957 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !3959, metadata !DIExpression()), !dbg !3960
  br label %2, !dbg !3961

2:                                                ; preds = %2, %1
  %3 = tail call zeroext i1 @rcc_is_osc_ready(i32 noundef %0) #19, !dbg !3962
  br i1 %3, label %4, label %2, !dbg !3961, !llvm.loop !3963

4:                                                ; preds = %2
  ret void, !dbg !3965
}

; Function Attrs: nofree noinline norecurse nounwind optsize
define dso_local void @rcc_wait_for_sysclk_status(i32 noundef %0) local_unnamed_addr #11 !dbg !3966 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !3968, metadata !DIExpression()), !dbg !3969
  switch i32 %0, label %18 [
    i32 0, label %2
    i32 1, label %6
    i32 2, label %10
    i32 3, label %14
  ], !dbg !3970

2:                                                ; preds = %1, %2
  %3 = load volatile i32, i32* inttoptr (i32 1073877000 to i32*), align 8, !dbg !3971, !tbaa !580
  %4 = and i32 %3, 12, !dbg !3973
  %5 = icmp eq i32 %4, 12, !dbg !3973
  br i1 %5, label %18, label %2, !dbg !3974, !llvm.loop !3975

6:                                                ; preds = %1, %6
  %7 = load volatile i32, i32* inttoptr (i32 1073877000 to i32*), align 8, !dbg !3977, !tbaa !580
  %8 = and i32 %7, 12, !dbg !3978
  %9 = icmp eq i32 %8, 8, !dbg !3978
  br i1 %9, label %18, label %6, !dbg !3979, !llvm.loop !3980

10:                                               ; preds = %1, %10
  %11 = load volatile i32, i32* inttoptr (i32 1073877000 to i32*), align 8, !dbg !3982, !tbaa !580
  %12 = and i32 %11, 12, !dbg !3983
  %13 = icmp eq i32 %12, 4, !dbg !3983
  br i1 %13, label %18, label %10, !dbg !3984, !llvm.loop !3985

14:                                               ; preds = %1, %14
  %15 = load volatile i32, i32* inttoptr (i32 1073877000 to i32*), align 8, !dbg !3987, !tbaa !580
  %16 = and i32 %15, 12, !dbg !3988
  %17 = icmp eq i32 %16, 0, !dbg !3988
  br i1 %17, label %18, label %14, !dbg !3989, !llvm.loop !3990

18:                                               ; preds = %14, %10, %6, %2, %1
  ret void, !dbg !3992
}

; Function Attrs: nofree noinline norecurse nounwind optsize
define dso_local void @rcc_osc_on(i32 noundef %0) local_unnamed_addr #11 !dbg !3993 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !3995, metadata !DIExpression()), !dbg !3996
  switch i32 %0, label %23 [
    i32 0, label %2
    i32 1, label %5
    i32 2, label %8
    i32 3, label %11
    i32 4, label %14
    i32 5, label %17
    i32 6, label %20
  ], !dbg !3997

2:                                                ; preds = %1
  %3 = load volatile i32, i32* inttoptr (i32 1073876992 to i32*), align 4096, !dbg !3998, !tbaa !580
  %4 = or i32 %3, 16777216, !dbg !3998
  store volatile i32 %4, i32* inttoptr (i32 1073876992 to i32*), align 4096, !dbg !3998, !tbaa !580
  br label %23, !dbg !4000

5:                                                ; preds = %1
  %6 = load volatile i32, i32* inttoptr (i32 1073876992 to i32*), align 4096, !dbg !4001, !tbaa !580
  %7 = or i32 %6, 65536, !dbg !4001
  store volatile i32 %7, i32* inttoptr (i32 1073876992 to i32*), align 4096, !dbg !4001, !tbaa !580
  br label %23, !dbg !4002

8:                                                ; preds = %1
  %9 = load volatile i32, i32* inttoptr (i32 1073876992 to i32*), align 4096, !dbg !4003, !tbaa !580
  %10 = or i32 %9, 256, !dbg !4003
  store volatile i32 %10, i32* inttoptr (i32 1073876992 to i32*), align 4096, !dbg !4003, !tbaa !580
  br label %23, !dbg !4004

11:                                               ; preds = %1
  %12 = load volatile i32, i32* inttoptr (i32 1073876992 to i32*), align 4096, !dbg !4005, !tbaa !580
  %13 = or i32 %12, 1, !dbg !4005
  store volatile i32 %13, i32* inttoptr (i32 1073876992 to i32*), align 4096, !dbg !4005, !tbaa !580
  br label %23, !dbg !4006

14:                                               ; preds = %1
  %15 = load volatile i32, i32* inttoptr (i32 1073877136 to i32*), align 16, !dbg !4007, !tbaa !580
  %16 = or i32 %15, 1, !dbg !4007
  store volatile i32 %16, i32* inttoptr (i32 1073877136 to i32*), align 16, !dbg !4007, !tbaa !580
  br label %23, !dbg !4008

17:                                               ; preds = %1
  %18 = load volatile i32, i32* inttoptr (i32 1073877140 to i32*), align 4, !dbg !4009, !tbaa !580
  %19 = or i32 %18, 1, !dbg !4009
  store volatile i32 %19, i32* inttoptr (i32 1073877140 to i32*), align 4, !dbg !4009, !tbaa !580
  br label %23, !dbg !4010

20:                                               ; preds = %1
  %21 = load volatile i32, i32* inttoptr (i32 1073877144 to i32*), align 8, !dbg !4011, !tbaa !580
  %22 = or i32 %21, 1, !dbg !4011
  store volatile i32 %22, i32* inttoptr (i32 1073877144 to i32*), align 8, !dbg !4011, !tbaa !580
  br label %23, !dbg !4012

23:                                               ; preds = %1, %20, %17, %14, %11, %8, %5, %2
  ret void, !dbg !4013
}

; Function Attrs: nofree noinline norecurse nounwind optsize
define dso_local void @rcc_osc_off(i32 noundef %0) local_unnamed_addr #11 !dbg !4014 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !4016, metadata !DIExpression()), !dbg !4017
  switch i32 %0, label %23 [
    i32 0, label %2
    i32 1, label %5
    i32 2, label %8
    i32 3, label %11
    i32 4, label %14
    i32 5, label %17
    i32 6, label %20
  ], !dbg !4018

2:                                                ; preds = %1
  %3 = load volatile i32, i32* inttoptr (i32 1073876992 to i32*), align 4096, !dbg !4019, !tbaa !580
  %4 = and i32 %3, -16777217, !dbg !4019
  store volatile i32 %4, i32* inttoptr (i32 1073876992 to i32*), align 4096, !dbg !4019, !tbaa !580
  br label %23, !dbg !4021

5:                                                ; preds = %1
  %6 = load volatile i32, i32* inttoptr (i32 1073876992 to i32*), align 4096, !dbg !4022, !tbaa !580
  %7 = and i32 %6, -65537, !dbg !4022
  store volatile i32 %7, i32* inttoptr (i32 1073876992 to i32*), align 4096, !dbg !4022, !tbaa !580
  br label %23, !dbg !4023

8:                                                ; preds = %1
  %9 = load volatile i32, i32* inttoptr (i32 1073876992 to i32*), align 4096, !dbg !4024, !tbaa !580
  %10 = and i32 %9, -257, !dbg !4024
  store volatile i32 %10, i32* inttoptr (i32 1073876992 to i32*), align 4096, !dbg !4024, !tbaa !580
  br label %23, !dbg !4025

11:                                               ; preds = %1
  %12 = load volatile i32, i32* inttoptr (i32 1073876992 to i32*), align 4096, !dbg !4026, !tbaa !580
  %13 = and i32 %12, -2, !dbg !4026
  store volatile i32 %13, i32* inttoptr (i32 1073876992 to i32*), align 4096, !dbg !4026, !tbaa !580
  br label %23, !dbg !4027

14:                                               ; preds = %1
  %15 = load volatile i32, i32* inttoptr (i32 1073877136 to i32*), align 16, !dbg !4028, !tbaa !580
  %16 = and i32 %15, -2, !dbg !4028
  store volatile i32 %16, i32* inttoptr (i32 1073877136 to i32*), align 16, !dbg !4028, !tbaa !580
  br label %23, !dbg !4029

17:                                               ; preds = %1
  %18 = load volatile i32, i32* inttoptr (i32 1073877140 to i32*), align 4, !dbg !4030, !tbaa !580
  %19 = and i32 %18, -2, !dbg !4030
  store volatile i32 %19, i32* inttoptr (i32 1073877140 to i32*), align 4, !dbg !4030, !tbaa !580
  br label %23, !dbg !4031

20:                                               ; preds = %1
  %21 = load volatile i32, i32* inttoptr (i32 1073877144 to i32*), align 8, !dbg !4032, !tbaa !580
  %22 = and i32 %21, -2, !dbg !4032
  store volatile i32 %22, i32* inttoptr (i32 1073877144 to i32*), align 8, !dbg !4032, !tbaa !580
  br label %23, !dbg !4033

23:                                               ; preds = %1, %20, %17, %14, %11, %8, %5, %2
  ret void, !dbg !4034
}

; Function Attrs: nofree noinline norecurse nounwind optsize
define dso_local void @rcc_css_enable() local_unnamed_addr #11 !dbg !4035 {
  %1 = load volatile i32, i32* inttoptr (i32 1073876992 to i32*), align 4096, !dbg !4036, !tbaa !580
  %2 = or i32 %1, 524288, !dbg !4036
  store volatile i32 %2, i32* inttoptr (i32 1073876992 to i32*), align 4096, !dbg !4036, !tbaa !580
  ret void, !dbg !4037
}

; Function Attrs: nofree noinline norecurse nounwind optsize
define dso_local void @rcc_css_disable() local_unnamed_addr #11 !dbg !4038 {
  %1 = load volatile i32, i32* inttoptr (i32 1073876992 to i32*), align 4096, !dbg !4039, !tbaa !580
  %2 = and i32 %1, -524289, !dbg !4039
  store volatile i32 %2, i32* inttoptr (i32 1073876992 to i32*), align 4096, !dbg !4039, !tbaa !580
  ret void, !dbg !4040
}

; Function Attrs: nofree noinline norecurse nounwind optsize
define dso_local void @rcc_set_sysclk_source(i32 noundef %0) local_unnamed_addr #11 !dbg !4041 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !4043, metadata !DIExpression()), !dbg !4045
  %2 = load volatile i32, i32* inttoptr (i32 1073877000 to i32*), align 8, !dbg !4046, !tbaa !580
  call void @llvm.dbg.value(metadata i32 %2, metadata !4044, metadata !DIExpression()), !dbg !4045
  %3 = and i32 %2, -4, !dbg !4047
  call void @llvm.dbg.value(metadata i32 %3, metadata !4044, metadata !DIExpression()), !dbg !4045
  %4 = or i32 %3, %0, !dbg !4048
  store volatile i32 %4, i32* inttoptr (i32 1073877000 to i32*), align 8, !dbg !4049, !tbaa !580
  ret void, !dbg !4050
}

; Function Attrs: nofree noinline norecurse nounwind optsize
define dso_local void @rcc_set_pll_source(i32 noundef %0) local_unnamed_addr #11 !dbg !4051 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !4053, metadata !DIExpression()), !dbg !4055
  %2 = load volatile i32, i32* inttoptr (i32 1073877004 to i32*), align 4, !dbg !4056, !tbaa !580
  call void @llvm.dbg.value(metadata i32 %2, metadata !4054, metadata !DIExpression()), !dbg !4055
  %3 = and i32 %2, -4, !dbg !4057
  call void @llvm.dbg.value(metadata i32 %3, metadata !4054, metadata !DIExpression()), !dbg !4055
  %4 = or i32 %3, %0, !dbg !4058
  store volatile i32 %4, i32* inttoptr (i32 1073877004 to i32*), align 4, !dbg !4059, !tbaa !580
  ret void, !dbg !4060
}

; Function Attrs: nofree noinline norecurse nounwind optsize
define dso_local void @rcc_set_ppre2(i32 noundef %0) local_unnamed_addr #11 !dbg !4061 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !4063, metadata !DIExpression()), !dbg !4065
  %2 = load volatile i32, i32* inttoptr (i32 1073877000 to i32*), align 8, !dbg !4066, !tbaa !580
  call void @llvm.dbg.value(metadata i32 %2, metadata !4064, metadata !DIExpression()), !dbg !4065
  %3 = and i32 %2, -14337, !dbg !4067
  call void @llvm.dbg.value(metadata i32 %3, metadata !4064, metadata !DIExpression()), !dbg !4065
  %4 = shl i32 %0, 11, !dbg !4068
  %5 = or i32 %3, %4, !dbg !4069
  store volatile i32 %5, i32* inttoptr (i32 1073877000 to i32*), align 8, !dbg !4070, !tbaa !580
  ret void, !dbg !4071
}

; Function Attrs: nofree noinline norecurse nounwind optsize
define dso_local void @rcc_set_ppre1(i32 noundef %0) local_unnamed_addr #11 !dbg !4072 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !4074, metadata !DIExpression()), !dbg !4076
  %2 = load volatile i32, i32* inttoptr (i32 1073877000 to i32*), align 8, !dbg !4077, !tbaa !580
  call void @llvm.dbg.value(metadata i32 %2, metadata !4075, metadata !DIExpression()), !dbg !4076
  %3 = and i32 %2, -1793, !dbg !4078
  call void @llvm.dbg.value(metadata i32 %3, metadata !4075, metadata !DIExpression()), !dbg !4076
  %4 = shl i32 %0, 8, !dbg !4079
  %5 = or i32 %3, %4, !dbg !4080
  store volatile i32 %5, i32* inttoptr (i32 1073877000 to i32*), align 8, !dbg !4081, !tbaa !580
  ret void, !dbg !4082
}

; Function Attrs: nofree noinline norecurse nounwind optsize
define dso_local void @rcc_set_hpre(i32 noundef %0) local_unnamed_addr #11 !dbg !4083 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !4085, metadata !DIExpression()), !dbg !4087
  %2 = load volatile i32, i32* inttoptr (i32 1073877000 to i32*), align 8, !dbg !4088, !tbaa !580
  call void @llvm.dbg.value(metadata i32 %2, metadata !4086, metadata !DIExpression()), !dbg !4087
  %3 = and i32 %2, -241, !dbg !4089
  call void @llvm.dbg.value(metadata i32 %3, metadata !4086, metadata !DIExpression()), !dbg !4087
  %4 = shl i32 %0, 4, !dbg !4090
  %5 = or i32 %3, %4, !dbg !4091
  store volatile i32 %5, i32* inttoptr (i32 1073877000 to i32*), align 8, !dbg !4092, !tbaa !580
  ret void, !dbg !4093
}

; Function Attrs: nofree noinline norecurse nounwind optsize
define dso_local void @rcc_set_main_pll(i32 noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %5) local_unnamed_addr #11 !dbg !4094 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !4098, metadata !DIExpression()), !dbg !4104
  call void @llvm.dbg.value(metadata i32 %1, metadata !4099, metadata !DIExpression()), !dbg !4104
  call void @llvm.dbg.value(metadata i32 %2, metadata !4100, metadata !DIExpression()), !dbg !4104
  call void @llvm.dbg.value(metadata i32 %3, metadata !4101, metadata !DIExpression()), !dbg !4104
  call void @llvm.dbg.value(metadata i32 %4, metadata !4102, metadata !DIExpression()), !dbg !4104
  call void @llvm.dbg.value(metadata i32 %5, metadata !4103, metadata !DIExpression()), !dbg !4104
  %7 = shl i32 %1, 4, !dbg !4105
  %8 = add i32 %7, -16, !dbg !4105
  %9 = shl i32 %2, 8, !dbg !4106
  %10 = shl i32 %4, 21, !dbg !4107
  %11 = shl i32 %5, 25, !dbg !4108
  %12 = or i32 %9, %0, !dbg !4109
  %13 = or i32 %12, %8, !dbg !4110
  %14 = or i32 %13, %3, !dbg !4111
  %15 = or i32 %14, %10, !dbg !4112
  %16 = or i32 %15, %11, !dbg !4113
  %17 = or i32 %16, 16777216, !dbg !4113
  store volatile i32 %17, i32* inttoptr (i32 1073877004 to i32*), align 4, !dbg !4114, !tbaa !580
  ret void, !dbg !4115
}

; Function Attrs: mustprogress nofree noinline norecurse nounwind optsize willreturn
define dso_local i32 @rcc_system_clock_source() local_unnamed_addr #17 !dbg !4116 {
  %1 = load volatile i32, i32* inttoptr (i32 1073877000 to i32*), align 8, !dbg !4117, !tbaa !580
  %2 = lshr i32 %1, 2, !dbg !4118
  %3 = and i32 %2, 3, !dbg !4119
  ret i32 %3, !dbg !4120
}

; Function Attrs: nofree noinline norecurse nounwind optsize
define dso_local void @rcc_set_msi_range(i32 noundef %0) local_unnamed_addr #11 !dbg !4121 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !4123, metadata !DIExpression()), !dbg !4125
  %2 = load volatile i32, i32* inttoptr (i32 1073876992 to i32*), align 4096, !dbg !4126, !tbaa !580
  call void @llvm.dbg.value(metadata i32 %2, metadata !4124, metadata !DIExpression()), !dbg !4125
  %3 = and i32 %2, -249, !dbg !4127
  call void @llvm.dbg.value(metadata i32 %2, metadata !4124, metadata !DIExpression(DW_OP_constu, 18446744073709551367, DW_OP_and, DW_OP_stack_value)), !dbg !4125
  %4 = shl i32 %0, 4, !dbg !4128
  call void @llvm.dbg.value(metadata !DIArgList(i32 %3, i32 %4), metadata !4124, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_or, DW_OP_stack_value)), !dbg !4125
  %5 = or i32 %4, %3, !dbg !4129
  %6 = or i32 %5, 8, !dbg !4129
  store volatile i32 %6, i32* inttoptr (i32 1073876992 to i32*), align 4096, !dbg !4130, !tbaa !580
  ret void, !dbg !4131
}

; Function Attrs: nofree noinline norecurse nounwind optsize
define dso_local void @rcc_set_msi_range_standby(i32 noundef %0) local_unnamed_addr #11 !dbg !4132 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !4134, metadata !DIExpression()), !dbg !4136
  %2 = load volatile i32, i32* inttoptr (i32 1073877140 to i32*), align 4, !dbg !4137, !tbaa !580
  call void @llvm.dbg.value(metadata i32 %2, metadata !4135, metadata !DIExpression()), !dbg !4136
  %3 = and i32 %2, -3841, !dbg !4138
  call void @llvm.dbg.value(metadata i32 %3, metadata !4135, metadata !DIExpression()), !dbg !4136
  %4 = shl i32 %0, 8, !dbg !4139
  %5 = or i32 %3, %4, !dbg !4140
  call void @llvm.dbg.value(metadata i32 %5, metadata !4135, metadata !DIExpression()), !dbg !4136
  store volatile i32 %5, i32* inttoptr (i32 1073877140 to i32*), align 4, !dbg !4141, !tbaa !580
  ret void, !dbg !4142
}

; Function Attrs: nofree noinline norecurse nounwind optsize
define dso_local void @rcc_peripheral_enable_clock(i32* noundef %0, i32 noundef %1) local_unnamed_addr #11 !dbg !4143 {
  call void @llvm.dbg.value(metadata i32* %0, metadata !4147, metadata !DIExpression()), !dbg !4149
  call void @llvm.dbg.value(metadata i32 %1, metadata !4148, metadata !DIExpression()), !dbg !4149
  %3 = load volatile i32, i32* %0, align 4, !dbg !4150, !tbaa !580
  %4 = or i32 %3, %1, !dbg !4150
  store volatile i32 %4, i32* %0, align 4, !dbg !4150, !tbaa !580
  ret void, !dbg !4151
}

; Function Attrs: nofree noinline norecurse nounwind optsize
define dso_local void @rcc_peripheral_disable_clock(i32* noundef %0, i32 noundef %1) local_unnamed_addr #11 !dbg !4152 {
  call void @llvm.dbg.value(metadata i32* %0, metadata !4154, metadata !DIExpression()), !dbg !4156
  call void @llvm.dbg.value(metadata i32 %1, metadata !4155, metadata !DIExpression()), !dbg !4156
  %3 = xor i32 %1, -1, !dbg !4157
  %4 = load volatile i32, i32* %0, align 4, !dbg !4158, !tbaa !580
  %5 = and i32 %4, %3, !dbg !4158
  store volatile i32 %5, i32* %0, align 4, !dbg !4158, !tbaa !580
  ret void, !dbg !4159
}

; Function Attrs: nofree noinline norecurse nounwind optsize
define dso_local void @rcc_peripheral_reset(i32* noundef %0, i32 noundef %1) local_unnamed_addr #11 !dbg !4160 {
  call void @llvm.dbg.value(metadata i32* %0, metadata !4162, metadata !DIExpression()), !dbg !4164
  call void @llvm.dbg.value(metadata i32 %1, metadata !4163, metadata !DIExpression()), !dbg !4164
  %3 = load volatile i32, i32* %0, align 4, !dbg !4165, !tbaa !580
  %4 = or i32 %3, %1, !dbg !4165
  store volatile i32 %4, i32* %0, align 4, !dbg !4165, !tbaa !580
  ret void, !dbg !4166
}

; Function Attrs: nofree noinline norecurse nounwind optsize
define dso_local void @rcc_peripheral_clear_reset(i32* noundef %0, i32 noundef %1) local_unnamed_addr #11 !dbg !4167 {
  call void @llvm.dbg.value(metadata i32* %0, metadata !4169, metadata !DIExpression()), !dbg !4171
  call void @llvm.dbg.value(metadata i32 %1, metadata !4170, metadata !DIExpression()), !dbg !4171
  %3 = xor i32 %1, -1, !dbg !4172
  %4 = load volatile i32, i32* %0, align 4, !dbg !4173, !tbaa !580
  %5 = and i32 %4, %3, !dbg !4173
  store volatile i32 %5, i32* %0, align 4, !dbg !4173, !tbaa !580
  ret void, !dbg !4174
}

; Function Attrs: nofree noinline norecurse nounwind optsize
define dso_local void @rcc_periph_clock_enable(i32 noundef %0) local_unnamed_addr #11 !dbg !4175 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !4179, metadata !DIExpression()), !dbg !4180
  %2 = and i32 %0, 31, !dbg !4181
  %3 = shl nuw i32 1, %2, !dbg !4181
  %4 = lshr i32 %0, 5, !dbg !4182
  %5 = add nuw nsw i32 %4, 1073876992, !dbg !4182
  %6 = inttoptr i32 %5 to i32*, !dbg !4182
  %7 = load volatile i32, i32* %6, align 4, !dbg !4183, !tbaa !580
  %8 = or i32 %7, %3, !dbg !4183
  store volatile i32 %8, i32* %6, align 4, !dbg !4183, !tbaa !580
  ret void, !dbg !4184
}

; Function Attrs: nofree noinline norecurse nounwind optsize
define dso_local void @rcc_periph_clock_disable(i32 noundef %0) local_unnamed_addr #11 !dbg !4185 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !4187, metadata !DIExpression()), !dbg !4188
  %2 = and i32 %0, 31, !dbg !4189
  %3 = shl nuw i32 1, %2, !dbg !4189
  %4 = xor i32 %3, -1, !dbg !4190
  %5 = lshr i32 %0, 5, !dbg !4191
  %6 = add nuw nsw i32 %5, 1073876992, !dbg !4191
  %7 = inttoptr i32 %6 to i32*, !dbg !4191
  %8 = load volatile i32, i32* %7, align 4, !dbg !4192, !tbaa !580
  %9 = and i32 %8, %4, !dbg !4192
  store volatile i32 %9, i32* %7, align 4, !dbg !4192, !tbaa !580
  ret void, !dbg !4193
}

; Function Attrs: nofree noinline norecurse nounwind optsize
define dso_local void @rcc_periph_reset_pulse(i32 noundef %0) local_unnamed_addr #11 !dbg !4194 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !4198, metadata !DIExpression()), !dbg !4199
  %2 = and i32 %0, 31, !dbg !4200
  %3 = shl nuw i32 1, %2, !dbg !4200
  %4 = lshr i32 %0, 5, !dbg !4201
  %5 = add nuw nsw i32 %4, 1073876992, !dbg !4201
  %6 = inttoptr i32 %5 to i32*, !dbg !4201
  %7 = load volatile i32, i32* %6, align 4, !dbg !4202, !tbaa !580
  %8 = or i32 %7, %3, !dbg !4202
  store volatile i32 %8, i32* %6, align 4, !dbg !4202, !tbaa !580
  %9 = xor i32 %3, -1, !dbg !4203
  %10 = load volatile i32, i32* %6, align 4, !dbg !4204, !tbaa !580
  %11 = and i32 %10, %9, !dbg !4204
  store volatile i32 %11, i32* %6, align 4, !dbg !4204, !tbaa !580
  ret void, !dbg !4205
}

; Function Attrs: nofree noinline norecurse nounwind optsize
define dso_local void @rcc_periph_reset_hold(i32 noundef %0) local_unnamed_addr #11 !dbg !4206 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !4208, metadata !DIExpression()), !dbg !4209
  %2 = and i32 %0, 31, !dbg !4210
  %3 = shl nuw i32 1, %2, !dbg !4210
  %4 = lshr i32 %0, 5, !dbg !4211
  %5 = add nuw nsw i32 %4, 1073876992, !dbg !4211
  %6 = inttoptr i32 %5 to i32*, !dbg !4211
  %7 = load volatile i32, i32* %6, align 4, !dbg !4212, !tbaa !580
  %8 = or i32 %7, %3, !dbg !4212
  store volatile i32 %8, i32* %6, align 4, !dbg !4212, !tbaa !580
  ret void, !dbg !4213
}

; Function Attrs: nofree noinline norecurse nounwind optsize
define dso_local void @rcc_periph_reset_release(i32 noundef %0) local_unnamed_addr #11 !dbg !4214 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !4216, metadata !DIExpression()), !dbg !4217
  %2 = and i32 %0, 31, !dbg !4218
  %3 = shl nuw i32 1, %2, !dbg !4218
  %4 = xor i32 %3, -1, !dbg !4219
  %5 = lshr i32 %0, 5, !dbg !4220
  %6 = add nuw nsw i32 %5, 1073876992, !dbg !4220
  %7 = inttoptr i32 %6 to i32*, !dbg !4220
  %8 = load volatile i32, i32* %7, align 4, !dbg !4221, !tbaa !580
  %9 = and i32 %8, %4, !dbg !4221
  store volatile i32 %9, i32* %7, align 4, !dbg !4221, !tbaa !580
  ret void, !dbg !4222
}

; Function Attrs: nofree noinline norecurse nounwind optsize
define dso_local void @rcc_set_mco(i32 noundef %0) local_unnamed_addr #11 !dbg !4223 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !4225, metadata !DIExpression()), !dbg !4226
  %2 = load volatile i32, i32* inttoptr (i32 1073877000 to i32*), align 8, !dbg !4227, !tbaa !580
  %3 = and i32 %2, -251658241, !dbg !4228
  %4 = shl i32 %0, 24, !dbg !4229
  %5 = or i32 %3, %4, !dbg !4230
  store volatile i32 %5, i32* inttoptr (i32 1073877000 to i32*), align 8, !dbg !4231, !tbaa !580
  ret void, !dbg !4232
}

; Function Attrs: nofree noinline norecurse nounwind optsize
define dso_local void @rcc_osc_bypass_enable(i32 noundef %0) local_unnamed_addr #11 !dbg !4233 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !4235, metadata !DIExpression()), !dbg !4236
  switch i32 %0, label %8 [
    i32 1, label %2
    i32 4, label %5
  ], !dbg !4237

2:                                                ; preds = %1
  %3 = load volatile i32, i32* inttoptr (i32 1073876992 to i32*), align 4096, !dbg !4238, !tbaa !580
  %4 = or i32 %3, 262144, !dbg !4238
  store volatile i32 %4, i32* inttoptr (i32 1073876992 to i32*), align 4096, !dbg !4238, !tbaa !580
  br label %8, !dbg !4240

5:                                                ; preds = %1
  %6 = load volatile i32, i32* inttoptr (i32 1073877136 to i32*), align 16, !dbg !4241, !tbaa !580
  %7 = or i32 %6, 4, !dbg !4241
  store volatile i32 %7, i32* inttoptr (i32 1073877136 to i32*), align 16, !dbg !4241, !tbaa !580
  br label %8, !dbg !4242

8:                                                ; preds = %1, %5, %2
  ret void, !dbg !4243
}

; Function Attrs: nofree noinline norecurse nounwind optsize
define dso_local void @rcc_osc_bypass_disable(i32 noundef %0) local_unnamed_addr #11 !dbg !4244 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !4246, metadata !DIExpression()), !dbg !4247
  switch i32 %0, label %8 [
    i32 1, label %2
    i32 4, label %5
  ], !dbg !4248

2:                                                ; preds = %1
  %3 = load volatile i32, i32* inttoptr (i32 1073876992 to i32*), align 4096, !dbg !4249, !tbaa !580
  %4 = and i32 %3, -262145, !dbg !4249
  store volatile i32 %4, i32* inttoptr (i32 1073876992 to i32*), align 4096, !dbg !4249, !tbaa !580
  br label %8, !dbg !4251

5:                                                ; preds = %1
  %6 = load volatile i32, i32* inttoptr (i32 1073877136 to i32*), align 16, !dbg !4252, !tbaa !580
  %7 = and i32 %6, -5, !dbg !4252
  store volatile i32 %7, i32* inttoptr (i32 1073877136 to i32*), align 16, !dbg !4252, !tbaa !580
  br label %8, !dbg !4253

8:                                                ; preds = %1, %5, %2
  ret void, !dbg !4254
}

; Function Attrs: nofree noinline norecurse nounwind optsize
define dso_local void @gpio_mode_setup(i32 noundef %0, i8 noundef zeroext %1, i8 noundef zeroext %2, i16 noundef zeroext %3) local_unnamed_addr #11 !dbg !4255 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !4259, metadata !DIExpression()), !dbg !4266
  call void @llvm.dbg.value(metadata i8 %1, metadata !4260, metadata !DIExpression()), !dbg !4266
  call void @llvm.dbg.value(metadata i8 %2, metadata !4261, metadata !DIExpression()), !dbg !4266
  call void @llvm.dbg.value(metadata i16 %3, metadata !4262, metadata !DIExpression()), !dbg !4266
  %5 = inttoptr i32 %0 to i32*, !dbg !4267
  %6 = load volatile i32, i32* %5, align 4, !dbg !4267, !tbaa !580
  call void @llvm.dbg.value(metadata i32 %6, metadata !4264, metadata !DIExpression()), !dbg !4266
  %7 = add i32 %0, 12, !dbg !4268
  %8 = inttoptr i32 %7 to i32*, !dbg !4268
  %9 = load volatile i32, i32* %8, align 4, !dbg !4268, !tbaa !580
  call void @llvm.dbg.value(metadata i32 %9, metadata !4265, metadata !DIExpression()), !dbg !4266
  call void @llvm.dbg.value(metadata i16 0, metadata !4263, metadata !DIExpression()), !dbg !4266
  %10 = zext i16 %3 to i32
  call void @llvm.dbg.value(metadata i32 %9, metadata !4265, metadata !DIExpression()), !dbg !4266
  call void @llvm.dbg.value(metadata i32 %6, metadata !4264, metadata !DIExpression()), !dbg !4266
  call void @llvm.dbg.value(metadata i16 0, metadata !4263, metadata !DIExpression()), !dbg !4266
  %11 = zext i8 %1 to i32
  %12 = zext i8 %2 to i32
  br label %13, !dbg !4269

13:                                               ; preds = %4, %30
  %14 = phi i32 [ 0, %4 ], [ %33, %30 ]
  %15 = phi i32 [ %9, %4 ], [ %32, %30 ]
  %16 = phi i32 [ %6, %4 ], [ %31, %30 ]
  call void @llvm.dbg.value(metadata i32 %15, metadata !4265, metadata !DIExpression()), !dbg !4266
  call void @llvm.dbg.value(metadata i32 %16, metadata !4264, metadata !DIExpression()), !dbg !4266
  call void @llvm.dbg.value(metadata i32 %14, metadata !4263, metadata !DIExpression()), !dbg !4266
  %17 = shl nuw i32 1, %14, !dbg !4271
  %18 = and i32 %17, %10, !dbg !4275
  %19 = icmp eq i32 %18, 0, !dbg !4275
  br i1 %19, label %30, label %20, !dbg !4276

20:                                               ; preds = %13
  %21 = shl nuw nsw i32 %14, 1, !dbg !4277
  %22 = shl i32 3, %21, !dbg !4277
  %23 = xor i32 %22, -1, !dbg !4278
  %24 = and i32 %16, %23, !dbg !4279
  call void @llvm.dbg.value(metadata i32 %24, metadata !4264, metadata !DIExpression()), !dbg !4266
  %25 = shl i32 %11, %21, !dbg !4280
  %26 = or i32 %24, %25, !dbg !4281
  call void @llvm.dbg.value(metadata i32 %26, metadata !4264, metadata !DIExpression()), !dbg !4266
  %27 = and i32 %15, %23, !dbg !4282
  call void @llvm.dbg.value(metadata i32 %27, metadata !4265, metadata !DIExpression()), !dbg !4266
  %28 = shl i32 %12, %21, !dbg !4283
  %29 = or i32 %27, %28, !dbg !4284
  call void @llvm.dbg.value(metadata i32 %29, metadata !4265, metadata !DIExpression()), !dbg !4266
  br label %30, !dbg !4285

30:                                               ; preds = %13, %20
  %31 = phi i32 [ %26, %20 ], [ %16, %13 ], !dbg !4266
  %32 = phi i32 [ %29, %20 ], [ %15, %13 ], !dbg !4266
  call void @llvm.dbg.value(metadata i32 %32, metadata !4265, metadata !DIExpression()), !dbg !4266
  call void @llvm.dbg.value(metadata i32 %31, metadata !4264, metadata !DIExpression()), !dbg !4266
  %33 = add nuw nsw i32 %14, 1, !dbg !4286
  call void @llvm.dbg.value(metadata i32 %33, metadata !4263, metadata !DIExpression()), !dbg !4266
  %34 = icmp eq i32 %33, 16, !dbg !4287
  br i1 %34, label %35, label %13, !dbg !4269, !llvm.loop !4288

35:                                               ; preds = %30
  store volatile i32 %31, i32* %5, align 4, !dbg !4290, !tbaa !580
  store volatile i32 %32, i32* %8, align 4, !dbg !4291, !tbaa !580
  ret void, !dbg !4292
}

; Function Attrs: nofree noinline norecurse nounwind optsize
define dso_local void @gpio_set_output_options(i32 noundef %0, i8 noundef zeroext %1, i8 noundef zeroext %2, i16 noundef zeroext %3) local_unnamed_addr #11 !dbg !4293 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !4295, metadata !DIExpression()), !dbg !4301
  call void @llvm.dbg.value(metadata i8 %1, metadata !4296, metadata !DIExpression()), !dbg !4301
  call void @llvm.dbg.value(metadata i8 %2, metadata !4297, metadata !DIExpression()), !dbg !4301
  call void @llvm.dbg.value(metadata i16 %3, metadata !4298, metadata !DIExpression()), !dbg !4301
  %5 = icmp eq i8 %1, 1, !dbg !4302
  %6 = zext i16 %3 to i32, !dbg !4304
  br i1 %5, label %7, label %12, !dbg !4305

7:                                                ; preds = %4
  %8 = add i32 %0, 4, !dbg !4306
  %9 = inttoptr i32 %8 to i32*, !dbg !4306
  %10 = load volatile i32, i32* %9, align 4, !dbg !4308, !tbaa !580
  %11 = or i32 %10, %6, !dbg !4308
  store volatile i32 %11, i32* %9, align 4, !dbg !4308, !tbaa !580
  br label %18, !dbg !4309

12:                                               ; preds = %4
  %13 = xor i32 %6, -1, !dbg !4310
  %14 = add i32 %0, 4, !dbg !4312
  %15 = inttoptr i32 %14 to i32*, !dbg !4312
  %16 = load volatile i32, i32* %15, align 4, !dbg !4313, !tbaa !580
  %17 = and i32 %16, %13, !dbg !4313
  store volatile i32 %17, i32* %15, align 4, !dbg !4313, !tbaa !580
  br label %18

18:                                               ; preds = %12, %7
  %19 = add i32 %0, 8, !dbg !4314
  %20 = inttoptr i32 %19 to i32*, !dbg !4314
  %21 = load volatile i32, i32* %20, align 4, !dbg !4314, !tbaa !580
  call void @llvm.dbg.value(metadata i32 %21, metadata !4300, metadata !DIExpression()), !dbg !4301
  call void @llvm.dbg.value(metadata i16 0, metadata !4299, metadata !DIExpression()), !dbg !4301
  call void @llvm.dbg.value(metadata i32 %21, metadata !4300, metadata !DIExpression()), !dbg !4301
  call void @llvm.dbg.value(metadata i16 0, metadata !4299, metadata !DIExpression()), !dbg !4301
  %22 = zext i8 %2 to i32
  br label %23, !dbg !4315

23:                                               ; preds = %18, %36
  %24 = phi i32 [ 0, %18 ], [ %38, %36 ]
  %25 = phi i32 [ %21, %18 ], [ %37, %36 ]
  call void @llvm.dbg.value(metadata i32 %25, metadata !4300, metadata !DIExpression()), !dbg !4301
  call void @llvm.dbg.value(metadata i32 %24, metadata !4299, metadata !DIExpression()), !dbg !4301
  %26 = shl nuw i32 1, %24, !dbg !4317
  %27 = and i32 %26, %6, !dbg !4321
  %28 = icmp eq i32 %27, 0, !dbg !4321
  br i1 %28, label %36, label %29, !dbg !4322

29:                                               ; preds = %23
  %30 = shl nuw nsw i32 %24, 1, !dbg !4323
  %31 = shl i32 3, %30, !dbg !4323
  %32 = xor i32 %31, -1, !dbg !4324
  %33 = and i32 %25, %32, !dbg !4325
  call void @llvm.dbg.value(metadata i32 %33, metadata !4300, metadata !DIExpression()), !dbg !4301
  %34 = shl i32 %22, %30, !dbg !4326
  %35 = or i32 %33, %34, !dbg !4327
  call void @llvm.dbg.value(metadata i32 %35, metadata !4300, metadata !DIExpression()), !dbg !4301
  br label %36, !dbg !4328

36:                                               ; preds = %23, %29
  %37 = phi i32 [ %35, %29 ], [ %25, %23 ], !dbg !4301
  call void @llvm.dbg.value(metadata i32 %37, metadata !4300, metadata !DIExpression()), !dbg !4301
  %38 = add nuw nsw i32 %24, 1, !dbg !4329
  call void @llvm.dbg.value(metadata i32 %38, metadata !4299, metadata !DIExpression()), !dbg !4301
  %39 = icmp eq i32 %38, 16, !dbg !4330
  br i1 %39, label %40, label %23, !dbg !4315, !llvm.loop !4331

40:                                               ; preds = %36
  store volatile i32 %37, i32* %20, align 4, !dbg !4333, !tbaa !580
  ret void, !dbg !4334
}

; Function Attrs: nofree noinline norecurse nounwind optsize
define dso_local void @gpio_set_af(i32 noundef %0, i8 noundef zeroext %1, i16 noundef zeroext %2) local_unnamed_addr #11 !dbg !4335 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !4339, metadata !DIExpression()), !dbg !4345
  call void @llvm.dbg.value(metadata i8 %1, metadata !4340, metadata !DIExpression()), !dbg !4345
  call void @llvm.dbg.value(metadata i16 %2, metadata !4341, metadata !DIExpression()), !dbg !4345
  %4 = add i32 %0, 32, !dbg !4346
  %5 = inttoptr i32 %4 to i32*, !dbg !4346
  %6 = load volatile i32, i32* %5, align 4, !dbg !4346, !tbaa !580
  call void @llvm.dbg.value(metadata i32 %6, metadata !4343, metadata !DIExpression()), !dbg !4345
  %7 = add i32 %0, 36, !dbg !4347
  %8 = inttoptr i32 %7 to i32*, !dbg !4347
  %9 = load volatile i32, i32* %8, align 4, !dbg !4347, !tbaa !580
  call void @llvm.dbg.value(metadata i32 %9, metadata !4344, metadata !DIExpression()), !dbg !4345
  call void @llvm.dbg.value(metadata i16 0, metadata !4342, metadata !DIExpression()), !dbg !4345
  %10 = zext i16 %2 to i32
  call void @llvm.dbg.value(metadata i32 %6, metadata !4343, metadata !DIExpression()), !dbg !4345
  call void @llvm.dbg.value(metadata i16 0, metadata !4342, metadata !DIExpression()), !dbg !4345
  %11 = zext i8 %1 to i32
  br label %12, !dbg !4348

12:                                               ; preds = %3, %25
  %13 = phi i32 [ 0, %3 ], [ %27, %25 ]
  %14 = phi i32 [ %6, %3 ], [ %26, %25 ]
  call void @llvm.dbg.value(metadata i32 %14, metadata !4343, metadata !DIExpression()), !dbg !4345
  call void @llvm.dbg.value(metadata i32 %13, metadata !4342, metadata !DIExpression()), !dbg !4345
  %15 = shl nuw i32 1, %13, !dbg !4350
  %16 = and i32 %15, %10, !dbg !4354
  %17 = icmp eq i32 %16, 0, !dbg !4354
  br i1 %17, label %25, label %18, !dbg !4355

18:                                               ; preds = %12
  %19 = shl nuw nsw i32 %13, 2, !dbg !4356
  %20 = shl i32 15, %19, !dbg !4356
  %21 = xor i32 %20, -1, !dbg !4357
  %22 = and i32 %14, %21, !dbg !4358
  call void @llvm.dbg.value(metadata i32 %22, metadata !4343, metadata !DIExpression()), !dbg !4345
  %23 = shl i32 %11, %19, !dbg !4359
  %24 = or i32 %22, %23, !dbg !4360
  call void @llvm.dbg.value(metadata i32 %24, metadata !4343, metadata !DIExpression()), !dbg !4345
  br label %25, !dbg !4361

25:                                               ; preds = %12, %18
  %26 = phi i32 [ %24, %18 ], [ %14, %12 ], !dbg !4345
  call void @llvm.dbg.value(metadata i32 %26, metadata !4343, metadata !DIExpression()), !dbg !4345
  %27 = add nuw nsw i32 %13, 1, !dbg !4362
  call void @llvm.dbg.value(metadata i32 %27, metadata !4342, metadata !DIExpression()), !dbg !4345
  %28 = icmp eq i32 %27, 8, !dbg !4363
  br i1 %28, label %29, label %12, !dbg !4348, !llvm.loop !4364

29:                                               ; preds = %25, %43
  %30 = phi i32 [ %45, %43 ], [ 8, %25 ]
  %31 = phi i32 [ %44, %43 ], [ %9, %25 ]
  call void @llvm.dbg.value(metadata i32 %31, metadata !4344, metadata !DIExpression()), !dbg !4345
  call void @llvm.dbg.value(metadata i32 %30, metadata !4342, metadata !DIExpression()), !dbg !4345
  %32 = shl nuw i32 1, %30, !dbg !4366
  %33 = and i32 %32, %10, !dbg !4371
  %34 = icmp eq i32 %33, 0, !dbg !4371
  br i1 %34, label %43, label %35, !dbg !4372

35:                                               ; preds = %29
  %36 = shl nuw nsw i32 %30, 2, !dbg !4373
  %37 = add nsw i32 %36, -32, !dbg !4373
  %38 = shl i32 15, %37, !dbg !4373
  %39 = xor i32 %38, -1, !dbg !4374
  %40 = and i32 %31, %39, !dbg !4375
  call void @llvm.dbg.value(metadata i32 %40, metadata !4344, metadata !DIExpression()), !dbg !4345
  %41 = shl i32 %11, %37, !dbg !4376
  %42 = or i32 %40, %41, !dbg !4377
  call void @llvm.dbg.value(metadata i32 %42, metadata !4344, metadata !DIExpression()), !dbg !4345
  br label %43, !dbg !4378

43:                                               ; preds = %29, %35
  %44 = phi i32 [ %42, %35 ], [ %31, %29 ], !dbg !4345
  call void @llvm.dbg.value(metadata i32 %44, metadata !4344, metadata !DIExpression()), !dbg !4345
  %45 = add nuw nsw i32 %30, 1, !dbg !4379
  call void @llvm.dbg.value(metadata i32 %45, metadata !4342, metadata !DIExpression()), !dbg !4345
  %46 = icmp eq i32 %45, 16, !dbg !4380
  br i1 %46, label %47, label %29, !dbg !4381, !llvm.loop !4382

47:                                               ; preds = %43
  store volatile i32 %26, i32* %5, align 4, !dbg !4384, !tbaa !580
  store volatile i32 %44, i32* %8, align 4, !dbg !4385, !tbaa !580
  ret void, !dbg !4386
}

; Function Attrs: nofree noinline norecurse nounwind optsize
define dso_local void @flash_prefetch_enable() local_unnamed_addr #11 !dbg !4387 {
  %1 = load volatile i32, i32* inttoptr (i32 1073881088 to i32*), align 8192, !dbg !4388, !tbaa !580
  %2 = or i32 %1, 256, !dbg !4388
  store volatile i32 %2, i32* inttoptr (i32 1073881088 to i32*), align 8192, !dbg !4388, !tbaa !580
  ret void, !dbg !4389
}

; Function Attrs: nofree noinline norecurse nounwind optsize
define dso_local void @flash_prefetch_disable() local_unnamed_addr #11 !dbg !4390 {
  %1 = load volatile i32, i32* inttoptr (i32 1073881088 to i32*), align 8192, !dbg !4391, !tbaa !580
  %2 = and i32 %1, -257, !dbg !4391
  store volatile i32 %2, i32* inttoptr (i32 1073881088 to i32*), align 8192, !dbg !4391, !tbaa !580
  ret void, !dbg !4392
}

; Function Attrs: nofree noinline norecurse nounwind optsize
define dso_local void @flash_set_ws(i32 noundef %0) local_unnamed_addr #11 !dbg !4393 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !4395, metadata !DIExpression()), !dbg !4397
  %2 = load volatile i32, i32* inttoptr (i32 1073881088 to i32*), align 8192, !dbg !4398, !tbaa !580
  call void @llvm.dbg.value(metadata i32 %2, metadata !4396, metadata !DIExpression()), !dbg !4397
  %3 = and i32 %2, -8, !dbg !4399
  call void @llvm.dbg.value(metadata i32 %3, metadata !4396, metadata !DIExpression()), !dbg !4397
  %4 = or i32 %3, %0, !dbg !4400
  call void @llvm.dbg.value(metadata i32 %4, metadata !4396, metadata !DIExpression()), !dbg !4397
  store volatile i32 %4, i32* inttoptr (i32 1073881088 to i32*), align 8192, !dbg !4401, !tbaa !580
  ret void, !dbg !4402
}

; Function Attrs: nofree noinline norecurse nounwind optsize
define dso_local void @flash_unlock_option_bytes() local_unnamed_addr #11 !dbg !4403 {
  store volatile i32 135866939, i32* inttoptr (i32 1073881100 to i32*), align 4, !dbg !4404, !tbaa !580
  store volatile i32 1281191551, i32* inttoptr (i32 1073881100 to i32*), align 4, !dbg !4405, !tbaa !580
  ret void, !dbg !4406
}

; Function Attrs: nofree noinline norecurse nounwind optsize
define dso_local void @flash_dcache_enable() local_unnamed_addr #11 !dbg !4407 {
  %1 = load volatile i32, i32* inttoptr (i32 1073881088 to i32*), align 8192, !dbg !4408, !tbaa !580
  %2 = or i32 %1, 1024, !dbg !4408
  store volatile i32 %2, i32* inttoptr (i32 1073881088 to i32*), align 8192, !dbg !4408, !tbaa !580
  ret void, !dbg !4409
}

; Function Attrs: nofree noinline norecurse nounwind optsize
define dso_local void @flash_dcache_disable() local_unnamed_addr #11 !dbg !4410 {
  %1 = load volatile i32, i32* inttoptr (i32 1073881088 to i32*), align 8192, !dbg !4411, !tbaa !580
  %2 = and i32 %1, -1025, !dbg !4411
  store volatile i32 %2, i32* inttoptr (i32 1073881088 to i32*), align 8192, !dbg !4411, !tbaa !580
  ret void, !dbg !4412
}

; Function Attrs: nofree noinline norecurse nounwind optsize
define dso_local void @flash_icache_enable() local_unnamed_addr #11 !dbg !4413 {
  %1 = load volatile i32, i32* inttoptr (i32 1073881088 to i32*), align 8192, !dbg !4414, !tbaa !580
  %2 = or i32 %1, 512, !dbg !4414
  store volatile i32 %2, i32* inttoptr (i32 1073881088 to i32*), align 8192, !dbg !4414, !tbaa !580
  ret void, !dbg !4415
}

; Function Attrs: nofree noinline norecurse nounwind optsize
define dso_local void @flash_icache_disable() local_unnamed_addr #11 !dbg !4416 {
  %1 = load volatile i32, i32* inttoptr (i32 1073881088 to i32*), align 8192, !dbg !4417, !tbaa !580
  %2 = and i32 %1, -513, !dbg !4417
  store volatile i32 %2, i32* inttoptr (i32 1073881088 to i32*), align 8192, !dbg !4417, !tbaa !580
  ret void, !dbg !4418
}

; Function Attrs: nofree noinline norecurse nounwind optsize
define dso_local void @flash_dcache_reset() local_unnamed_addr #11 !dbg !4419 {
  %1 = load volatile i32, i32* inttoptr (i32 1073881088 to i32*), align 8192, !dbg !4420, !tbaa !580
  %2 = or i32 %1, 4096, !dbg !4420
  store volatile i32 %2, i32* inttoptr (i32 1073881088 to i32*), align 8192, !dbg !4420, !tbaa !580
  ret void, !dbg !4421
}

; Function Attrs: nofree noinline norecurse nounwind optsize
define dso_local void @flash_icache_reset() local_unnamed_addr #11 !dbg !4422 {
  %1 = load volatile i32, i32* inttoptr (i32 1073881088 to i32*), align 8192, !dbg !4423, !tbaa !580
  %2 = or i32 %1, 2048, !dbg !4423
  store volatile i32 %2, i32* inttoptr (i32 1073881088 to i32*), align 8192, !dbg !4423, !tbaa !580
  ret void, !dbg !4424
}

; Function Attrs: nofree noinline norecurse nounwind optsize
define dso_local void @usart_set_baudrate(i32 noundef %0, i32 noundef %1) local_unnamed_addr #11 !dbg !4425 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !4429, metadata !DIExpression()), !dbg !4432
  call void @llvm.dbg.value(metadata i32 %1, metadata !4430, metadata !DIExpression()), !dbg !4432
  call void @llvm.dbg.value(metadata i32 undef, metadata !4431, metadata !DIExpression()), !dbg !4432
  %3 = icmp eq i32 %0, 1073821696, !dbg !4433
  %4 = load i32, i32* @rcc_apb2_frequency, align 4, !dbg !4432
  %5 = load i32, i32* @rcc_apb1_frequency, align 4, !dbg !4432
  %6 = select i1 %3, i32 %4, i32 %5, !dbg !4432
  call void @llvm.dbg.value(metadata i32 %6, metadata !4431, metadata !DIExpression()), !dbg !4432
  %7 = icmp eq i32 %0, 1073774592, !dbg !4435
  br i1 %7, label %8, label %19, !dbg !4437

8:                                                ; preds = %2
  %9 = freeze i32 %6
  %10 = udiv i32 %9, %1, !dbg !4438
  %11 = shl i32 %10, 8, !dbg !4440
  %12 = mul i32 %10, %1
  %13 = sub i32 %9, %12
  %14 = shl i32 %13, 8, !dbg !4441
  %15 = lshr i32 %1, 1, !dbg !4442
  %16 = add i32 %14, %15, !dbg !4443
  %17 = udiv i32 %16, %1, !dbg !4444
  %18 = add i32 %17, %11, !dbg !4445
  store volatile i32 %18, i32* inttoptr (i32 1073774604 to i32*), align 4, !dbg !4446, !tbaa !580
  br label %25, !dbg !4447

19:                                               ; preds = %2
  %20 = lshr i32 %1, 1, !dbg !4448
  %21 = add i32 %6, %20, !dbg !4449
  %22 = udiv i32 %21, %1, !dbg !4450
  %23 = add i32 %0, 12, !dbg !4451
  %24 = inttoptr i32 %23 to i32*, !dbg !4451
  store volatile i32 %22, i32* %24, align 4, !dbg !4452, !tbaa !580
  br label %25, !dbg !4453

25:                                               ; preds = %19, %8
  ret void, !dbg !4453
}

; Function Attrs: nofree noinline norecurse nounwind optsize
define dso_local void @usart_set_databits(i32 noundef %0, i32 noundef %1) local_unnamed_addr #11 !dbg !4454 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !4456, metadata !DIExpression()), !dbg !4458
  call void @llvm.dbg.value(metadata i32 %1, metadata !4457, metadata !DIExpression()), !dbg !4458
  %3 = icmp eq i32 %1, 8, !dbg !4459
  %4 = inttoptr i32 %0 to i32*, !dbg !4461
  %5 = load volatile i32, i32* %4, align 4, !dbg !4461, !tbaa !580
  %6 = and i32 %5, -4097, !dbg !4462
  %7 = select i1 %3, i32 0, i32 4096, !dbg !4462
  %8 = or i32 %6, %7, !dbg !4462
  store volatile i32 %8, i32* %4, align 4, !dbg !4461, !tbaa !580
  ret void, !dbg !4463
}

; Function Attrs: nofree noinline norecurse nounwind optsize
define dso_local void @usart_set_stopbits(i32 noundef %0, i32 noundef %1) local_unnamed_addr #11 !dbg !4464 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !4466, metadata !DIExpression()), !dbg !4469
  call void @llvm.dbg.value(metadata i32 %1, metadata !4467, metadata !DIExpression()), !dbg !4469
  %3 = add i32 %0, 4, !dbg !4470
  %4 = inttoptr i32 %3 to i32*, !dbg !4470
  %5 = load volatile i32, i32* %4, align 4, !dbg !4470, !tbaa !580
  call void @llvm.dbg.value(metadata i32 %5, metadata !4468, metadata !DIExpression()), !dbg !4469
  %6 = and i32 %5, -12289, !dbg !4471
  %7 = or i32 %6, %1, !dbg !4472
  call void @llvm.dbg.value(metadata i32 %7, metadata !4468, metadata !DIExpression()), !dbg !4469
  store volatile i32 %7, i32* %4, align 4, !dbg !4473, !tbaa !580
  ret void, !dbg !4474
}

; Function Attrs: nofree noinline norecurse nounwind optsize
define dso_local void @usart_set_parity(i32 noundef %0, i32 noundef %1) local_unnamed_addr #11 !dbg !4475 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !4477, metadata !DIExpression()), !dbg !4480
  call void @llvm.dbg.value(metadata i32 %1, metadata !4478, metadata !DIExpression()), !dbg !4480
  %3 = inttoptr i32 %0 to i32*, !dbg !4481
  %4 = load volatile i32, i32* %3, align 4, !dbg !4481, !tbaa !580
  call void @llvm.dbg.value(metadata i32 %4, metadata !4479, metadata !DIExpression()), !dbg !4480
  %5 = and i32 %4, -1537, !dbg !4482
  %6 = or i32 %5, %1, !dbg !4483
  call void @llvm.dbg.value(metadata i32 %6, metadata !4479, metadata !DIExpression()), !dbg !4480
  store volatile i32 %6, i32* %3, align 4, !dbg !4484, !tbaa !580
  ret void, !dbg !4485
}

; Function Attrs: nofree noinline norecurse nounwind optsize
define dso_local void @usart_set_mode(i32 noundef %0, i32 noundef %1) local_unnamed_addr #11 !dbg !4486 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !4488, metadata !DIExpression()), !dbg !4491
  call void @llvm.dbg.value(metadata i32 %1, metadata !4489, metadata !DIExpression()), !dbg !4491
  %3 = inttoptr i32 %0 to i32*, !dbg !4492
  %4 = load volatile i32, i32* %3, align 4, !dbg !4492, !tbaa !580
  call void @llvm.dbg.value(metadata i32 %4, metadata !4490, metadata !DIExpression()), !dbg !4491
  %5 = and i32 %4, -13, !dbg !4493
  %6 = or i32 %5, %1, !dbg !4494
  call void @llvm.dbg.value(metadata i32 %6, metadata !4490, metadata !DIExpression()), !dbg !4491
  store volatile i32 %6, i32* %3, align 4, !dbg !4495, !tbaa !580
  ret void, !dbg !4496
}

; Function Attrs: nofree noinline norecurse nounwind optsize
define dso_local void @usart_set_flow_control(i32 noundef %0, i32 noundef %1) local_unnamed_addr #11 !dbg !4497 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !4499, metadata !DIExpression()), !dbg !4502
  call void @llvm.dbg.value(metadata i32 %1, metadata !4500, metadata !DIExpression()), !dbg !4502
  %3 = add i32 %0, 8, !dbg !4503
  %4 = inttoptr i32 %3 to i32*, !dbg !4503
  %5 = load volatile i32, i32* %4, align 4, !dbg !4503, !tbaa !580
  call void @llvm.dbg.value(metadata i32 %5, metadata !4501, metadata !DIExpression()), !dbg !4502
  %6 = and i32 %5, -769, !dbg !4504
  %7 = or i32 %6, %1, !dbg !4505
  call void @llvm.dbg.value(metadata i32 %7, metadata !4501, metadata !DIExpression()), !dbg !4502
  store volatile i32 %7, i32* %4, align 4, !dbg !4506, !tbaa !580
  ret void, !dbg !4507
}

; Function Attrs: nofree noinline norecurse nounwind optsize
define dso_local void @usart_enable(i32 noundef %0) local_unnamed_addr #11 !dbg !4508 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !4510, metadata !DIExpression()), !dbg !4511
  %2 = inttoptr i32 %0 to i32*, !dbg !4512
  %3 = load volatile i32, i32* %2, align 4, !dbg !4513, !tbaa !580
  %4 = or i32 %3, 1, !dbg !4513
  store volatile i32 %4, i32* %2, align 4, !dbg !4513, !tbaa !580
  ret void, !dbg !4514
}

; Function Attrs: nofree noinline norecurse nounwind optsize
define dso_local void @usart_disable(i32 noundef %0) local_unnamed_addr #11 !dbg !4515 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !4517, metadata !DIExpression()), !dbg !4518
  %2 = inttoptr i32 %0 to i32*, !dbg !4519
  %3 = load volatile i32, i32* %2, align 4, !dbg !4520, !tbaa !580
  %4 = and i32 %3, -2, !dbg !4520
  store volatile i32 %4, i32* %2, align 4, !dbg !4520, !tbaa !580
  ret void, !dbg !4521
}

; Function Attrs: noinline nounwind optsize
define dso_local void @usart_send_blocking(i32 noundef %0, i16 noundef zeroext %1) local_unnamed_addr #2 !dbg !4522 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !4526, metadata !DIExpression()), !dbg !4528
  call void @llvm.dbg.value(metadata i16 %1, metadata !4527, metadata !DIExpression()), !dbg !4528
  tail call void @usart_wait_send_ready(i32 noundef %0) #18, !dbg !4529
  tail call void @usart_send(i32 noundef %0, i16 noundef zeroext %1) #18, !dbg !4530
  ret void, !dbg !4531
}

; Function Attrs: noinline nounwind optsize
define dso_local zeroext i16 @usart_recv_blocking(i32 noundef %0) local_unnamed_addr #2 !dbg !4532 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !4536, metadata !DIExpression()), !dbg !4537
  tail call void @usart_wait_recv_ready(i32 noundef %0) #18, !dbg !4538
  %2 = tail call zeroext i16 @usart_recv(i32 noundef %0) #18, !dbg !4539
  ret i16 %2, !dbg !4540
}

; Function Attrs: nofree noinline norecurse nounwind optsize
define dso_local void @usart_enable_rx_dma(i32 noundef %0) local_unnamed_addr #11 !dbg !4541 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !4543, metadata !DIExpression()), !dbg !4544
  %2 = add i32 %0, 8, !dbg !4545
  %3 = inttoptr i32 %2 to i32*, !dbg !4545
  %4 = load volatile i32, i32* %3, align 4, !dbg !4546, !tbaa !580
  %5 = or i32 %4, 64, !dbg !4546
  store volatile i32 %5, i32* %3, align 4, !dbg !4546, !tbaa !580
  ret void, !dbg !4547
}

; Function Attrs: nofree noinline norecurse nounwind optsize
define dso_local void @usart_disable_rx_dma(i32 noundef %0) local_unnamed_addr #11 !dbg !4548 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !4550, metadata !DIExpression()), !dbg !4551
  %2 = add i32 %0, 8, !dbg !4552
  %3 = inttoptr i32 %2 to i32*, !dbg !4552
  %4 = load volatile i32, i32* %3, align 4, !dbg !4553, !tbaa !580
  %5 = and i32 %4, -65, !dbg !4553
  store volatile i32 %5, i32* %3, align 4, !dbg !4553, !tbaa !580
  ret void, !dbg !4554
}

; Function Attrs: nofree noinline norecurse nounwind optsize
define dso_local void @usart_enable_tx_dma(i32 noundef %0) local_unnamed_addr #11 !dbg !4555 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !4557, metadata !DIExpression()), !dbg !4558
  %2 = add i32 %0, 8, !dbg !4559
  %3 = inttoptr i32 %2 to i32*, !dbg !4559
  %4 = load volatile i32, i32* %3, align 4, !dbg !4560, !tbaa !580
  %5 = or i32 %4, 128, !dbg !4560
  store volatile i32 %5, i32* %3, align 4, !dbg !4560, !tbaa !580
  ret void, !dbg !4561
}

; Function Attrs: nofree noinline norecurse nounwind optsize
define dso_local void @usart_disable_tx_dma(i32 noundef %0) local_unnamed_addr #11 !dbg !4562 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !4564, metadata !DIExpression()), !dbg !4565
  %2 = add i32 %0, 8, !dbg !4566
  %3 = inttoptr i32 %2 to i32*, !dbg !4566
  %4 = load volatile i32, i32* %3, align 4, !dbg !4567, !tbaa !580
  %5 = and i32 %4, -129, !dbg !4567
  store volatile i32 %5, i32* %3, align 4, !dbg !4567, !tbaa !580
  ret void, !dbg !4568
}

; Function Attrs: nofree noinline norecurse nounwind optsize
define dso_local void @usart_enable_rx_interrupt(i32 noundef %0) local_unnamed_addr #11 !dbg !4569 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !4571, metadata !DIExpression()), !dbg !4572
  %2 = inttoptr i32 %0 to i32*, !dbg !4573
  %3 = load volatile i32, i32* %2, align 4, !dbg !4574, !tbaa !580
  %4 = or i32 %3, 32, !dbg !4574
  store volatile i32 %4, i32* %2, align 4, !dbg !4574, !tbaa !580
  ret void, !dbg !4575
}

; Function Attrs: nofree noinline norecurse nounwind optsize
define dso_local void @usart_disable_rx_interrupt(i32 noundef %0) local_unnamed_addr #11 !dbg !4576 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !4578, metadata !DIExpression()), !dbg !4579
  %2 = inttoptr i32 %0 to i32*, !dbg !4580
  %3 = load volatile i32, i32* %2, align 4, !dbg !4581, !tbaa !580
  %4 = and i32 %3, -33, !dbg !4581
  store volatile i32 %4, i32* %2, align 4, !dbg !4581, !tbaa !580
  ret void, !dbg !4582
}

; Function Attrs: nofree noinline norecurse nounwind optsize
define dso_local void @usart_enable_tx_interrupt(i32 noundef %0) local_unnamed_addr #11 !dbg !4583 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !4585, metadata !DIExpression()), !dbg !4586
  %2 = inttoptr i32 %0 to i32*, !dbg !4587
  %3 = load volatile i32, i32* %2, align 4, !dbg !4588, !tbaa !580
  %4 = or i32 %3, 128, !dbg !4588
  store volatile i32 %4, i32* %2, align 4, !dbg !4588, !tbaa !580
  ret void, !dbg !4589
}

; Function Attrs: nofree noinline norecurse nounwind optsize
define dso_local void @usart_disable_tx_interrupt(i32 noundef %0) local_unnamed_addr #11 !dbg !4590 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !4592, metadata !DIExpression()), !dbg !4593
  %2 = inttoptr i32 %0 to i32*, !dbg !4594
  %3 = load volatile i32, i32* %2, align 4, !dbg !4595, !tbaa !580
  %4 = and i32 %3, -129, !dbg !4595
  store volatile i32 %4, i32* %2, align 4, !dbg !4595, !tbaa !580
  ret void, !dbg !4596
}

; Function Attrs: nofree noinline norecurse nounwind optsize
define dso_local void @usart_enable_error_interrupt(i32 noundef %0) local_unnamed_addr #11 !dbg !4597 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !4599, metadata !DIExpression()), !dbg !4600
  %2 = add i32 %0, 8, !dbg !4601
  %3 = inttoptr i32 %2 to i32*, !dbg !4601
  %4 = load volatile i32, i32* %3, align 4, !dbg !4602, !tbaa !580
  %5 = or i32 %4, 1, !dbg !4602
  store volatile i32 %5, i32* %3, align 4, !dbg !4602, !tbaa !580
  ret void, !dbg !4603
}

; Function Attrs: nofree noinline norecurse nounwind optsize
define dso_local void @usart_disable_error_interrupt(i32 noundef %0) local_unnamed_addr #11 !dbg !4604 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !4606, metadata !DIExpression()), !dbg !4607
  %2 = add i32 %0, 8, !dbg !4608
  %3 = inttoptr i32 %2 to i32*, !dbg !4608
  %4 = load volatile i32, i32* %3, align 4, !dbg !4609, !tbaa !580
  %5 = and i32 %4, -2, !dbg !4609
  store volatile i32 %5, i32* %3, align 4, !dbg !4609, !tbaa !580
  ret void, !dbg !4610
}

; Function Attrs: nofree noinline norecurse nounwind optsize
define dso_local void @usart_enable_data_inversion(i32 noundef %0) local_unnamed_addr #11 !dbg !4611 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !4613, metadata !DIExpression()), !dbg !4614
  %2 = add i32 %0, 4, !dbg !4615
  %3 = inttoptr i32 %2 to i32*, !dbg !4615
  %4 = load volatile i32, i32* %3, align 4, !dbg !4616, !tbaa !580
  %5 = or i32 %4, 262144, !dbg !4616
  store volatile i32 %5, i32* %3, align 4, !dbg !4616, !tbaa !580
  ret void, !dbg !4617
}

; Function Attrs: nofree noinline norecurse nounwind optsize
define dso_local void @usart_disable_data_inversion(i32 noundef %0) local_unnamed_addr #11 !dbg !4618 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !4620, metadata !DIExpression()), !dbg !4621
  %2 = add i32 %0, 4, !dbg !4622
  %3 = inttoptr i32 %2 to i32*, !dbg !4622
  %4 = load volatile i32, i32* %3, align 4, !dbg !4623, !tbaa !580
  %5 = and i32 %4, -262145, !dbg !4623
  store volatile i32 %5, i32* %3, align 4, !dbg !4623, !tbaa !580
  ret void, !dbg !4624
}

; Function Attrs: nofree noinline norecurse nounwind optsize
define dso_local void @usart_enable_tx_inversion(i32 noundef %0) local_unnamed_addr #11 !dbg !4625 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !4627, metadata !DIExpression()), !dbg !4628
  %2 = add i32 %0, 4, !dbg !4629
  %3 = inttoptr i32 %2 to i32*, !dbg !4629
  %4 = load volatile i32, i32* %3, align 4, !dbg !4630, !tbaa !580
  %5 = or i32 %4, 131072, !dbg !4630
  store volatile i32 %5, i32* %3, align 4, !dbg !4630, !tbaa !580
  ret void, !dbg !4631
}

; Function Attrs: nofree noinline norecurse nounwind optsize
define dso_local void @usart_disable_tx_inversion(i32 noundef %0) local_unnamed_addr #11 !dbg !4632 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !4634, metadata !DIExpression()), !dbg !4635
  %2 = add i32 %0, 4, !dbg !4636
  %3 = inttoptr i32 %2 to i32*, !dbg !4636
  %4 = load volatile i32, i32* %3, align 4, !dbg !4637, !tbaa !580
  %5 = and i32 %4, -131073, !dbg !4637
  store volatile i32 %5, i32* %3, align 4, !dbg !4637, !tbaa !580
  ret void, !dbg !4638
}

; Function Attrs: nofree noinline norecurse nounwind optsize
define dso_local void @usart_enable_rx_inversion(i32 noundef %0) local_unnamed_addr #11 !dbg !4639 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !4641, metadata !DIExpression()), !dbg !4642
  %2 = add i32 %0, 4, !dbg !4643
  %3 = inttoptr i32 %2 to i32*, !dbg !4643
  %4 = load volatile i32, i32* %3, align 4, !dbg !4644, !tbaa !580
  %5 = or i32 %4, 65536, !dbg !4644
  store volatile i32 %5, i32* %3, align 4, !dbg !4644, !tbaa !580
  ret void, !dbg !4645
}

; Function Attrs: nofree noinline norecurse nounwind optsize
define dso_local void @usart_disable_rx_inversion(i32 noundef %0) local_unnamed_addr #11 !dbg !4646 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !4648, metadata !DIExpression()), !dbg !4649
  %2 = add i32 %0, 4, !dbg !4650
  %3 = inttoptr i32 %2 to i32*, !dbg !4650
  %4 = load volatile i32, i32* %3, align 4, !dbg !4651, !tbaa !580
  %5 = and i32 %4, -65537, !dbg !4651
  store volatile i32 %5, i32* %3, align 4, !dbg !4651, !tbaa !580
  ret void, !dbg !4652
}

; Function Attrs: nofree noinline norecurse nounwind optsize
define dso_local void @usart_enable_halfduplex(i32 noundef %0) local_unnamed_addr #11 !dbg !4653 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !4655, metadata !DIExpression()), !dbg !4656
  %2 = add i32 %0, 8, !dbg !4657
  %3 = inttoptr i32 %2 to i32*, !dbg !4657
  %4 = load volatile i32, i32* %3, align 4, !dbg !4658, !tbaa !580
  %5 = or i32 %4, 8, !dbg !4658
  store volatile i32 %5, i32* %3, align 4, !dbg !4658, !tbaa !580
  ret void, !dbg !4659
}

; Function Attrs: nofree noinline norecurse nounwind optsize
define dso_local void @usart_disable_halfduplex(i32 noundef %0) local_unnamed_addr #11 !dbg !4660 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !4662, metadata !DIExpression()), !dbg !4663
  %2 = add i32 %0, 8, !dbg !4664
  %3 = inttoptr i32 %2 to i32*, !dbg !4664
  %4 = load volatile i32, i32* %3, align 4, !dbg !4665, !tbaa !580
  %5 = and i32 %4, -9, !dbg !4665
  store volatile i32 %5, i32* %3, align 4, !dbg !4665, !tbaa !580
  ret void, !dbg !4666
}

; Function Attrs: nofree noinline norecurse nounwind optsize
define dso_local void @usart_set_rx_timeout_value(i32 noundef %0, i32 noundef %1) local_unnamed_addr #11 !dbg !4667 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !4669, metadata !DIExpression()), !dbg !4672
  call void @llvm.dbg.value(metadata i32 %1, metadata !4670, metadata !DIExpression()), !dbg !4672
  %3 = add i32 %0, 20, !dbg !4673
  %4 = inttoptr i32 %3 to i32*, !dbg !4673
  %5 = load volatile i32, i32* %4, align 4, !dbg !4673, !tbaa !580
  %6 = and i32 %5, -1048576, !dbg !4674
  call void @llvm.dbg.value(metadata i32 %6, metadata !4671, metadata !DIExpression()), !dbg !4672
  %7 = and i32 %1, 1048575, !dbg !4675
  %8 = or i32 %6, %7, !dbg !4676
  call void @llvm.dbg.value(metadata i32 %8, metadata !4671, metadata !DIExpression()), !dbg !4672
  store volatile i32 %8, i32* %4, align 4, !dbg !4677, !tbaa !580
  ret void, !dbg !4678
}

; Function Attrs: nofree noinline norecurse nounwind optsize
define dso_local void @usart_enable_rx_timeout(i32 noundef %0) local_unnamed_addr #11 !dbg !4679 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !4681, metadata !DIExpression()), !dbg !4682
  %2 = add i32 %0, 4, !dbg !4683
  %3 = inttoptr i32 %2 to i32*, !dbg !4683
  %4 = load volatile i32, i32* %3, align 4, !dbg !4684, !tbaa !580
  %5 = or i32 %4, 8388608, !dbg !4684
  store volatile i32 %5, i32* %3, align 4, !dbg !4684, !tbaa !580
  ret void, !dbg !4685
}

; Function Attrs: nofree noinline norecurse nounwind optsize
define dso_local void @usart_disable_rx_timeout(i32 noundef %0) local_unnamed_addr #11 !dbg !4686 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !4688, metadata !DIExpression()), !dbg !4689
  %2 = add i32 %0, 4, !dbg !4690
  %3 = inttoptr i32 %2 to i32*, !dbg !4690
  %4 = load volatile i32, i32* %3, align 4, !dbg !4691, !tbaa !580
  %5 = and i32 %4, -8388609, !dbg !4691
  store volatile i32 %5, i32* %3, align 4, !dbg !4691, !tbaa !580
  ret void, !dbg !4692
}

; Function Attrs: nofree noinline norecurse nounwind optsize
define dso_local void @usart_enable_rx_timeout_interrupt(i32 noundef %0) local_unnamed_addr #11 !dbg !4693 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !4695, metadata !DIExpression()), !dbg !4696
  %2 = inttoptr i32 %0 to i32*, !dbg !4697
  %3 = load volatile i32, i32* %2, align 4, !dbg !4698, !tbaa !580
  %4 = or i32 %3, 67108864, !dbg !4698
  store volatile i32 %4, i32* %2, align 4, !dbg !4698, !tbaa !580
  ret void, !dbg !4699
}

; Function Attrs: nofree noinline norecurse nounwind optsize
define dso_local void @usart_disable_rx_timeout_interrupt(i32 noundef %0) local_unnamed_addr #11 !dbg !4700 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !4702, metadata !DIExpression()), !dbg !4703
  %2 = inttoptr i32 %0 to i32*, !dbg !4704
  %3 = load volatile i32, i32* %2, align 4, !dbg !4705, !tbaa !580
  %4 = and i32 %3, -67108865, !dbg !4705
  store volatile i32 %4, i32* %2, align 4, !dbg !4705, !tbaa !580
  ret void, !dbg !4706
}

; Function Attrs: nofree noinline norecurse nounwind optsize
define dso_local void @usart_send(i32 noundef %0, i16 noundef zeroext %1) local_unnamed_addr #11 !dbg !4707 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !4709, metadata !DIExpression()), !dbg !4711
  call void @llvm.dbg.value(metadata i16 %1, metadata !4710, metadata !DIExpression()), !dbg !4711
  %3 = and i16 %1, 511, !dbg !4712
  %4 = zext i16 %3 to i32, !dbg !4712
  %5 = add i32 %0, 40, !dbg !4713
  %6 = inttoptr i32 %5 to i32*, !dbg !4713
  store volatile i32 %4, i32* %6, align 4, !dbg !4714, !tbaa !580
  ret void, !dbg !4715
}

; Function Attrs: mustprogress nofree noinline norecurse nounwind optsize willreturn
define dso_local zeroext i16 @usart_recv(i32 noundef %0) local_unnamed_addr #17 !dbg !4716 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !4718, metadata !DIExpression()), !dbg !4719
  %2 = add i32 %0, 36, !dbg !4720
  %3 = inttoptr i32 %2 to i32*, !dbg !4720
  %4 = load volatile i32, i32* %3, align 4, !dbg !4720, !tbaa !580
  %5 = trunc i32 %4 to i16, !dbg !4720
  %6 = and i16 %5, 511, !dbg !4720
  ret i16 %6, !dbg !4721
}

; Function Attrs: nofree noinline norecurse nounwind optsize
define dso_local void @usart_wait_send_ready(i32 noundef %0) local_unnamed_addr #11 !dbg !4722 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !4724, metadata !DIExpression()), !dbg !4725
  %2 = add i32 %0, 28
  %3 = inttoptr i32 %2 to i32*
  br label %4, !dbg !4726

4:                                                ; preds = %4, %1
  %5 = load volatile i32, i32* %3, align 4, !dbg !4727, !tbaa !580
  %6 = and i32 %5, 128, !dbg !4728
  %7 = icmp eq i32 %6, 0, !dbg !4729
  br i1 %7, label %4, label %8, !dbg !4726, !llvm.loop !4730

8:                                                ; preds = %4
  ret void, !dbg !4732
}

; Function Attrs: nofree noinline norecurse nounwind optsize
define dso_local void @usart_wait_recv_ready(i32 noundef %0) local_unnamed_addr #11 !dbg !4733 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !4735, metadata !DIExpression()), !dbg !4736
  %2 = add i32 %0, 28
  %3 = inttoptr i32 %2 to i32*
  br label %4, !dbg !4737

4:                                                ; preds = %4, %1
  %5 = load volatile i32, i32* %3, align 4, !dbg !4738, !tbaa !580
  %6 = and i32 %5, 32, !dbg !4739
  %7 = icmp eq i32 %6, 0, !dbg !4740
  br i1 %7, label %4, label %8, !dbg !4737, !llvm.loop !4741

8:                                                ; preds = %4
  ret void, !dbg !4743
}

; Function Attrs: mustprogress nofree noinline norecurse nounwind optsize willreturn
define dso_local zeroext i1 @usart_get_flag(i32 noundef %0, i32 noundef %1) local_unnamed_addr #17 !dbg !4744 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !4748, metadata !DIExpression()), !dbg !4750
  call void @llvm.dbg.value(metadata i32 %1, metadata !4749, metadata !DIExpression()), !dbg !4750
  %3 = add i32 %0, 28, !dbg !4751
  %4 = inttoptr i32 %3 to i32*, !dbg !4751
  %5 = load volatile i32, i32* %4, align 4, !dbg !4751, !tbaa !580
  %6 = and i32 %5, %1, !dbg !4752
  %7 = icmp ne i32 %6, 0, !dbg !4753
  ret i1 %7, !dbg !4754
}

; Function Attrs: noinline nounwind optsize
define weak dso_local void @reset_handler() #2 !dbg !4755 {
  call void @llvm.dbg.value(metadata i32* @_data_loadaddr, metadata !4757, metadata !DIExpression()), !dbg !4764
  call void @llvm.dbg.value(metadata i32* @_data, metadata !4760, metadata !DIExpression()), !dbg !4764
  br i1 icmp ult (i32* @_data, i32* @_edata), label %4, label %1, !dbg !4765

1:                                                ; preds = %4, %0
  %2 = phi i32* [ @_data, %0 ], [ %9, %4 ], !dbg !4767
  call void @llvm.dbg.value(metadata i32* %2, metadata !4760, metadata !DIExpression()), !dbg !4764
  %3 = icmp ult i32* %2, @_ebss, !dbg !4768
  br i1 %3, label %11, label %15, !dbg !4769

4:                                                ; preds = %0, %4
  %5 = phi i32* [ %9, %4 ], [ @_data, %0 ]
  %6 = phi i32* [ %8, %4 ], [ @_data_loadaddr, %0 ]
  call void @llvm.dbg.value(metadata i32* %5, metadata !4760, metadata !DIExpression()), !dbg !4764
  call void @llvm.dbg.value(metadata i32* %6, metadata !4757, metadata !DIExpression()), !dbg !4764
  %7 = load volatile i32, i32* %6, align 4, !dbg !4770, !tbaa !580
  store volatile i32 %7, i32* %5, align 4, !dbg !4773, !tbaa !580
  %8 = getelementptr inbounds i32, i32* %6, i32 1, !dbg !4774
  call void @llvm.dbg.value(metadata i32* %8, metadata !4757, metadata !DIExpression()), !dbg !4764
  %9 = getelementptr inbounds i32, i32* %5, i32 1, !dbg !4775
  call void @llvm.dbg.value(metadata i32* %9, metadata !4760, metadata !DIExpression()), !dbg !4764
  %10 = icmp ult i32* %9, @_edata, !dbg !4776
  br i1 %10, label %4, label %1, !dbg !4765, !llvm.loop !4777

11:                                               ; preds = %1, %11
  %12 = phi i32* [ %13, %11 ], [ %2, %1 ]
  call void @llvm.dbg.value(metadata i32* %12, metadata !4760, metadata !DIExpression()), !dbg !4764
  %13 = getelementptr inbounds i32, i32* %12, i32 1, !dbg !4779
  call void @llvm.dbg.value(metadata i32* %13, metadata !4760, metadata !DIExpression()), !dbg !4764
  store volatile i32 0, i32* %12, align 4, !dbg !4781, !tbaa !580
  %14 = icmp ult i32* %13, @_ebss, !dbg !4768
  br i1 %14, label %11, label %15, !dbg !4769, !llvm.loop !4782

15:                                               ; preds = %11, %1
  %16 = load volatile i32, i32* inttoptr (i32 -536810220 to i32*), align 4, !dbg !4784, !tbaa !580
  %17 = or i32 %16, 512, !dbg !4784
  store volatile i32 %17, i32* inttoptr (i32 -536810220 to i32*), align 4, !dbg !4784, !tbaa !580
  tail call fastcc void @pre_main() #19, !dbg !4785
  call void @llvm.dbg.value(metadata void ()** @__preinit_array_start, metadata !4761, metadata !DIExpression()), !dbg !4764
  br i1 icmp ult (void ()** @__preinit_array_start, void ()** @__preinit_array_end), label %19, label %18, !dbg !4786

18:                                               ; preds = %19, %15
  call void @llvm.dbg.value(metadata void ()** @__init_array_start, metadata !4761, metadata !DIExpression()), !dbg !4764
  br i1 icmp ult (void ()** @__init_array_start, void ()** @__init_array_end), label %24, label %29, !dbg !4788

19:                                               ; preds = %15, %19
  %20 = phi void ()** [ %22, %19 ], [ @__preinit_array_start, %15 ]
  call void @llvm.dbg.value(metadata void ()** %20, metadata !4761, metadata !DIExpression()), !dbg !4764
  %21 = load void ()*, void ()** %20, align 4, !dbg !4790, !tbaa !649
  tail call void %21() #18, !dbg !4793
  %22 = getelementptr inbounds void ()*, void ()** %20, i32 1, !dbg !4794
  call void @llvm.dbg.value(metadata void ()** %22, metadata !4761, metadata !DIExpression()), !dbg !4764
  %23 = icmp ult void ()** %22, @__preinit_array_end, !dbg !4795
  br i1 %23, label %19, label %18, !dbg !4786, !llvm.loop !4796

24:                                               ; preds = %18, %24
  %25 = phi void ()** [ %27, %24 ], [ @__init_array_start, %18 ]
  call void @llvm.dbg.value(metadata void ()** %25, metadata !4761, metadata !DIExpression()), !dbg !4764
  %26 = load void ()*, void ()** %25, align 4, !dbg !4798, !tbaa !649
  tail call void %26() #18, !dbg !4801
  %27 = getelementptr inbounds void ()*, void ()** %25, i32 1, !dbg !4802
  call void @llvm.dbg.value(metadata void ()** %27, metadata !4761, metadata !DIExpression()), !dbg !4764
  %28 = icmp ult void ()** %27, @__init_array_end, !dbg !4803
  br i1 %28, label %24, label %29, !dbg !4788, !llvm.loop !4804

29:                                               ; preds = %24, %18
  %30 = tail call i32 @main() #18, !dbg !4806
  call void @llvm.dbg.value(metadata void ()** @__fini_array_start, metadata !4761, metadata !DIExpression()), !dbg !4764
  br i1 icmp ult (void ()** @__fini_array_start, void ()** @__fini_array_end), label %31, label %36, !dbg !4807

31:                                               ; preds = %29, %31
  %32 = phi void ()** [ %34, %31 ], [ @__fini_array_start, %29 ]
  call void @llvm.dbg.value(metadata void ()** %32, metadata !4761, metadata !DIExpression()), !dbg !4764
  %33 = load void ()*, void ()** %32, align 4, !dbg !4809, !tbaa !649
  tail call void %33() #18, !dbg !4812
  %34 = getelementptr inbounds void ()*, void ()** %32, i32 1, !dbg !4813
  call void @llvm.dbg.value(metadata void ()** %34, metadata !4761, metadata !DIExpression()), !dbg !4764
  %35 = icmp ult void ()** %34, @__fini_array_end, !dbg !4814
  br i1 %35, label %31, label %36, !dbg !4807, !llvm.loop !4815

36:                                               ; preds = %31, %29
  ret void, !dbg !4817
}

; Function Attrs: nofree noinline norecurse noreturn nosync nounwind optsize readnone
define dso_local void @blocking_handler() #0 !dbg !4818 {
  br label %1, !dbg !4819

1:                                                ; preds = %0, %1
  br label %1, !dbg !4819, !llvm.loop !4820
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize readnone willreturn
define dso_local void @null_handler() #10 !dbg !4822 {
  ret void, !dbg !4823
}

; Function Attrs: nofree noinline norecurse nounwind optsize
define internal fastcc void @pre_main() unnamed_addr #11 !dbg !4824 {
  %1 = load volatile i32, i32* inttoptr (i32 -536810104 to i32*), align 8, !dbg !4826, !tbaa !580
  %2 = or i32 %1, 15728640, !dbg !4826
  store volatile i32 %2, i32* inttoptr (i32 -536810104 to i32*), align 8, !dbg !4826, !tbaa !580
  ret void, !dbg !4827
}

attributes #0 = { nofree noinline norecurse noreturn nosync nounwind optsize readnone "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="cortex-m4" "target-features"="+armv7e-m,+dsp,+fp16,+hwdiv,+strict-align,+thumb-mode,+vfp2sp,+vfp3d16sp,+vfp4d16sp,-aes,-bf16,-cdecp0,-cdecp1,-cdecp2,-cdecp3,-cdecp4,-cdecp5,-cdecp6,-cdecp7,-crc,-crypto,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16fml,-fp64,-fullfp16,-hwdiv-arm,-i8mm,-lob,-mve,-mve.fp,-neon,-pacbti,-ras,-sb,-sha2,-vfp2,-vfp3,-vfp3d16,-vfp3sp,-vfp4,-vfp4d16,-vfp4sp" }
attributes #1 = { nofree nosync nounwind readnone speculatable willreturn }
attributes #2 = { noinline nounwind optsize "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="cortex-m4" "target-features"="+armv7e-m,+dsp,+fp16,+hwdiv,+strict-align,+thumb-mode,+vfp2sp,+vfp3d16sp,+vfp4d16sp,-aes,-bf16,-cdecp0,-cdecp1,-cdecp2,-cdecp3,-cdecp4,-cdecp5,-cdecp6,-cdecp7,-crc,-crypto,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16fml,-fp64,-fullfp16,-hwdiv-arm,-i8mm,-lob,-mve,-mve.fp,-neon,-pacbti,-ras,-sb,-sha2,-vfp2,-vfp3,-vfp3d16,-vfp3sp,-vfp4,-vfp4d16,-vfp4sp" }
attributes #3 = { optsize "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="cortex-m4" "target-features"="+armv7e-m,+dsp,+fp16,+hwdiv,+strict-align,+thumb-mode,+vfp2sp,+vfp3d16sp,+vfp4d16sp,-aes,-bf16,-cdecp0,-cdecp1,-cdecp2,-cdecp3,-cdecp4,-cdecp5,-cdecp6,-cdecp7,-crc,-crypto,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16fml,-fp64,-fullfp16,-hwdiv-arm,-i8mm,-lob,-mve,-mve.fp,-neon,-pacbti,-ras,-sb,-sha2,-vfp2,-vfp3,-vfp3d16,-vfp3sp,-vfp4,-vfp4d16,-vfp4sp" }
attributes #4 = { noinline noreturn nounwind optsize "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="cortex-m4" "target-features"="+armv7e-m,+dsp,+fp16,+hwdiv,+strict-align,+thumb-mode,+vfp2sp,+vfp3d16sp,+vfp4d16sp,-aes,-bf16,-cdecp0,-cdecp1,-cdecp2,-cdecp3,-cdecp4,-cdecp5,-cdecp6,-cdecp7,-crc,-crypto,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16fml,-fp64,-fullfp16,-hwdiv-arm,-i8mm,-lob,-mve,-mve.fp,-neon,-pacbti,-ras,-sb,-sha2,-vfp2,-vfp3,-vfp3d16,-vfp3sp,-vfp4,-vfp4d16,-vfp4sp" }
attributes #5 = { nofree nounwind }
attributes #6 = { mustprogress nofree noinline norecurse noreturn nosync nounwind optsize readnone willreturn "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="cortex-m4" "target-features"="+armv7e-m,+dsp,+fp16,+hwdiv,+strict-align,+thumb-mode,+vfp2sp,+vfp3d16sp,+vfp4d16sp,-aes,-bf16,-cdecp0,-cdecp1,-cdecp2,-cdecp3,-cdecp4,-cdecp5,-cdecp6,-cdecp7,-crc,-crypto,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16fml,-fp64,-fullfp16,-hwdiv-arm,-i8mm,-lob,-mve,-mve.fp,-neon,-pacbti,-ras,-sb,-sha2,-vfp2,-vfp3,-vfp3d16,-vfp3sp,-vfp4,-vfp4d16,-vfp4sp" }
attributes #7 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="cortex-m4" "target-features"="+armv7e-m,+dsp,+fp16,+hwdiv,+strict-align,+thumb-mode,+vfp2sp,+vfp3d16sp,+vfp4d16sp,-aes,-bf16,-cdecp0,-cdecp1,-cdecp2,-cdecp3,-cdecp4,-cdecp5,-cdecp6,-cdecp7,-crc,-crypto,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16fml,-fp64,-fullfp16,-hwdiv-arm,-i8mm,-lob,-mve,-mve.fp,-neon,-pacbti,-ras,-sb,-sha2,-vfp2,-vfp3,-vfp3d16,-vfp3sp,-vfp4,-vfp4d16,-vfp4sp" }
attributes #8 = { nofree noinline norecurse nosync nounwind optsize "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="cortex-m4" "target-features"="+armv7e-m,+dsp,+fp16,+hwdiv,+strict-align,+thumb-mode,+vfp2sp,+vfp3d16sp,+vfp4d16sp,-aes,-bf16,-cdecp0,-cdecp1,-cdecp2,-cdecp3,-cdecp4,-cdecp5,-cdecp6,-cdecp7,-crc,-crypto,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16fml,-fp64,-fullfp16,-hwdiv-arm,-i8mm,-lob,-mve,-mve.fp,-neon,-pacbti,-ras,-sb,-sha2,-vfp2,-vfp3,-vfp3d16,-vfp3sp,-vfp4,-vfp4d16,-vfp4sp" }
attributes #9 = { mustprogress nofree noinline norecurse nosync nounwind optsize readonly willreturn "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="cortex-m4" "target-features"="+armv7e-m,+dsp,+fp16,+hwdiv,+strict-align,+thumb-mode,+vfp2sp,+vfp3d16sp,+vfp4d16sp,-aes,-bf16,-cdecp0,-cdecp1,-cdecp2,-cdecp3,-cdecp4,-cdecp5,-cdecp6,-cdecp7,-crc,-crypto,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16fml,-fp64,-fullfp16,-hwdiv-arm,-i8mm,-lob,-mve,-mve.fp,-neon,-pacbti,-ras,-sb,-sha2,-vfp2,-vfp3,-vfp3d16,-vfp3sp,-vfp4,-vfp4d16,-vfp4sp" }
attributes #10 = { mustprogress nofree noinline norecurse nosync nounwind optsize readnone willreturn "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="cortex-m4" "target-features"="+armv7e-m,+dsp,+fp16,+hwdiv,+strict-align,+thumb-mode,+vfp2sp,+vfp3d16sp,+vfp4d16sp,-aes,-bf16,-cdecp0,-cdecp1,-cdecp2,-cdecp3,-cdecp4,-cdecp5,-cdecp6,-cdecp7,-crc,-crypto,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16fml,-fp64,-fullfp16,-hwdiv-arm,-i8mm,-lob,-mve,-mve.fp,-neon,-pacbti,-ras,-sb,-sha2,-vfp2,-vfp3,-vfp3d16,-vfp3sp,-vfp4,-vfp4d16,-vfp4sp" }
attributes #11 = { nofree noinline norecurse nounwind optsize "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="cortex-m4" "target-features"="+armv7e-m,+dsp,+fp16,+hwdiv,+strict-align,+thumb-mode,+vfp2sp,+vfp3d16sp,+vfp4d16sp,-aes,-bf16,-cdecp0,-cdecp1,-cdecp2,-cdecp3,-cdecp4,-cdecp5,-cdecp6,-cdecp7,-crc,-crypto,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16fml,-fp64,-fullfp16,-hwdiv-arm,-i8mm,-lob,-mve,-mve.fp,-neon,-pacbti,-ras,-sb,-sha2,-vfp2,-vfp3,-vfp3d16,-vfp3sp,-vfp4,-vfp4d16,-vfp4sp" }
attributes #12 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn writeonly "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="cortex-m4" "target-features"="+armv7e-m,+dsp,+fp16,+hwdiv,+strict-align,+thumb-mode,+vfp2sp,+vfp3d16sp,+vfp4d16sp,-aes,-bf16,-cdecp0,-cdecp1,-cdecp2,-cdecp3,-cdecp4,-cdecp5,-cdecp6,-cdecp7,-crc,-crypto,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16fml,-fp64,-fullfp16,-hwdiv-arm,-i8mm,-lob,-mve,-mve.fp,-neon,-pacbti,-ras,-sb,-sha2,-vfp2,-vfp3,-vfp3d16,-vfp3sp,-vfp4,-vfp4d16,-vfp4sp" }
attributes #13 = { argmemonly nofree nosync nounwind willreturn }
attributes #14 = { naked noinline nounwind optsize "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="cortex-m4" "target-features"="+armv7e-m,+dsp,+fp16,+hwdiv,+strict-align,+thumb-mode,+vfp2sp,+vfp3d16sp,+vfp4d16sp,-aes,-bf16,-cdecp0,-cdecp1,-cdecp2,-cdecp3,-cdecp4,-cdecp5,-cdecp6,-cdecp7,-crc,-crypto,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16fml,-fp64,-fullfp16,-hwdiv-arm,-i8mm,-lob,-mve,-mve.fp,-neon,-pacbti,-ras,-sb,-sha2,-vfp2,-vfp3,-vfp3d16,-vfp3sp,-vfp4,-vfp4d16,-vfp4sp" }
attributes #15 = { argmemonly nofree nounwind willreturn }
attributes #16 = { mustprogress nofree noinline nosync nounwind optsize willreturn "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="cortex-m4" "target-features"="+armv7e-m,+dsp,+fp16,+hwdiv,+strict-align,+thumb-mode,+vfp2sp,+vfp3d16sp,+vfp4d16sp,-aes,-bf16,-cdecp0,-cdecp1,-cdecp2,-cdecp3,-cdecp4,-cdecp5,-cdecp6,-cdecp7,-crc,-crypto,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16fml,-fp64,-fullfp16,-hwdiv-arm,-i8mm,-lob,-mve,-mve.fp,-neon,-pacbti,-ras,-sb,-sha2,-vfp2,-vfp3,-vfp3d16,-vfp3sp,-vfp4,-vfp4d16,-vfp4sp" }
attributes #17 = { mustprogress nofree noinline norecurse nounwind optsize willreturn "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="cortex-m4" "target-features"="+armv7e-m,+dsp,+fp16,+hwdiv,+strict-align,+thumb-mode,+vfp2sp,+vfp3d16sp,+vfp4d16sp,-aes,-bf16,-cdecp0,-cdecp1,-cdecp2,-cdecp3,-cdecp4,-cdecp5,-cdecp6,-cdecp7,-crc,-crypto,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16fml,-fp64,-fullfp16,-hwdiv-arm,-i8mm,-lob,-mve,-mve.fp,-neon,-pacbti,-ras,-sb,-sha2,-vfp2,-vfp3,-vfp3d16,-vfp3sp,-vfp4,-vfp4d16,-vfp4sp" }
attributes #18 = { nounwind optsize }
attributes #19 = { optsize }
attributes #20 = { nounwind }

!llvm.dbg.cu = !{!226, !2, !352, !42, !377, !59, !440, !173, !442, !506, !508, !511, !513, !515, !194}
!llvm.ident = !{!517, !517, !517, !517, !517, !517, !517, !517, !517, !517, !517, !517, !517, !517, !517}
!llvm.module.flags = !{!518, !519, !520, !521, !522, !523, !524, !525, !526}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "pxEnd", scope: !2, file: !3, line: 98, type: !15, isLocal: true, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C99, file: !3, producer: "Ubuntu clang version 14.0.6", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !4, globals: !22, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "freertos/heap_4.c", directory: "/home/mjshen/RTOSExploration/Amazfitbip-FreeRTOS", checksumkind: CSK_MD5, checksum: "81584d80c57b325831723cf0d032c090")
!4 = !{!5, !6, !12, !15}
!5 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 32)
!6 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !7, size: 32)
!7 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint8_t", file: !8, line: 24, baseType: !9)
!8 = !DIFile(filename: "gcc-arm-none-eabi-8-2018-q4-major/bin/../lib/gcc/arm-none-eabi/8.2.1/../../../../arm-none-eabi/include/sys/_stdint.h", directory: "/home/mjshen/RTOSExploration", checksumkind: CSK_MD5, checksum: "ab914e287601b2385e57880e6599aa6b")
!9 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint8_t", file: !10, line: 43, baseType: !11)
!10 = !DIFile(filename: "gcc-arm-none-eabi-8-2018-q4-major/bin/../lib/gcc/arm-none-eabi/8.2.1/../../../../arm-none-eabi/include/machine/_default_types.h", directory: "/home/mjshen/RTOSExploration", checksumkind: CSK_MD5, checksum: "f7024d0682a918b41f94e8be9cd90461")
!11 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!12 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !13, line: 46, baseType: !14)
!13 = !DIFile(filename: "/usr/lib/llvm-14/lib/clang/14.0.6/include/stddef.h", directory: "", checksumkind: CSK_MD5, checksum: "2499dd2361b915724b073282bea3a7bc")
!14 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!15 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !16, size: 32)
!16 = !DIDerivedType(tag: DW_TAG_typedef, name: "BlockLink_t", file: !3, line: 73, baseType: !17)
!17 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "A_BLOCK_LINK", file: !3, line: 69, size: 64, elements: !18)
!18 = !{!19, !21}
!19 = !DIDerivedType(tag: DW_TAG_member, name: "pxNextFreeBlock", scope: !17, file: !3, line: 71, baseType: !20, size: 32)
!20 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !17, size: 32)
!21 = !DIDerivedType(tag: DW_TAG_member, name: "xBlockSize", scope: !17, file: !3, line: 72, baseType: !12, size: 32, offset: 32)
!22 = !{!23, !26, !0, !28, !30, !32, !34}
!23 = !DIGlobalVariableExpression(var: !24, expr: !DIExpression(DW_OP_constu, 8, DW_OP_stack_value))
!24 = distinct !DIGlobalVariable(name: "xHeapStructSize", scope: !2, file: !3, line: 95, type: !25, isLocal: true, isDefinition: true)
!25 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !12)
!26 = !DIGlobalVariableExpression(var: !27, expr: !DIExpression())
!27 = distinct !DIGlobalVariable(name: "xStart", scope: !2, file: !3, line: 98, type: !16, isLocal: true, isDefinition: true)
!28 = !DIGlobalVariableExpression(var: !29, expr: !DIExpression())
!29 = distinct !DIGlobalVariable(name: "xBlockAllocatedBit", scope: !2, file: !3, line: 109, type: !12, isLocal: true, isDefinition: true)
!30 = !DIGlobalVariableExpression(var: !31, expr: !DIExpression())
!31 = distinct !DIGlobalVariable(name: "xFreeBytesRemaining", scope: !2, file: !3, line: 102, type: !12, isLocal: true, isDefinition: true)
!32 = !DIGlobalVariableExpression(var: !33, expr: !DIExpression())
!33 = distinct !DIGlobalVariable(name: "xMinimumEverFreeBytesRemaining", scope: !2, file: !3, line: 103, type: !12, isLocal: true, isDefinition: true)
!34 = !DIGlobalVariableExpression(var: !35, expr: !DIExpression())
!35 = distinct !DIGlobalVariable(name: "ucHeap", scope: !2, file: !3, line: 64, type: !36, isLocal: true, isDefinition: true)
!36 = !DICompositeType(tag: DW_TAG_array_type, baseType: !7, size: 24000, elements: !37)
!37 = !{!38}
!38 = !DISubrange(count: 3000)
!39 = !DIGlobalVariableExpression(var: !29, expr: !DIExpression(DW_OP_deref_size, 1, DW_OP_constu, 2147483648, DW_OP_mul, DW_OP_constu, 0, DW_OP_plus, DW_OP_stack_value))
!40 = !DIGlobalVariableExpression(var: !41, expr: !DIExpression())
!41 = distinct !DIGlobalVariable(name: "uxCriticalNesting", scope: !42, file: !43, line: 133, type: !56, isLocal: true, isDefinition: true)
!42 = distinct !DICompileUnit(language: DW_LANG_C99, file: !43, producer: "Ubuntu clang version 14.0.6", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !44, globals: !55, splitDebugInlining: false, nameTableKind: None)
!43 = !DIFile(filename: "freertos/port.c", directory: "/home/mjshen/RTOSExploration/Amazfitbip-FreeRTOS", checksumkind: CSK_MD5, checksum: "e957820b51e55ac1b837c027a448cdb4")
!44 = !{!45, !47, !49, !51, !53, !54}
!45 = !DIDerivedType(tag: DW_TAG_typedef, name: "StackType_t", file: !46, line: 55, baseType: !47)
!46 = !DIFile(filename: "./freertos/portmacro.h", directory: "/home/mjshen/RTOSExploration/Amazfitbip-FreeRTOS", checksumkind: CSK_MD5, checksum: "e32ba059ae5f30a4aa44fcd0fe450ff5")
!47 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint32_t", file: !8, line: 48, baseType: !48)
!48 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint32_t", file: !10, line: 79, baseType: !14)
!49 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !50, size: 32)
!50 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !47)
!51 = !DIDerivedType(tag: DW_TAG_typedef, name: "BaseType_t", file: !46, line: 56, baseType: !52)
!52 = !DIBasicType(name: "long", size: 32, encoding: DW_ATE_signed)
!53 = !DIBasicType(name: "unsigned long", size: 32, encoding: DW_ATE_unsigned)
!54 = !DIDerivedType(tag: DW_TAG_typedef, name: "TickType_t", file: !46, line: 63, baseType: !47)
!55 = !{!40}
!56 = !DIDerivedType(tag: DW_TAG_typedef, name: "UBaseType_t", file: !46, line: 57, baseType: !53)
!57 = !DIGlobalVariableExpression(var: !58, expr: !DIExpression())
!58 = distinct !DIGlobalVariable(name: "pxCurrentTCB", scope: !59, file: !60, line: 334, type: !170, isLocal: false, isDefinition: true)
!59 = distinct !DICompileUnit(language: DW_LANG_C99, file: !60, producer: "Ubuntu clang version 14.0.6", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !61, retainedTypes: !70, globals: !121, splitDebugInlining: false, nameTableKind: None)
!60 = !DIFile(filename: "freertos/tasks.c", directory: "/home/mjshen/RTOSExploration/Amazfitbip-FreeRTOS", checksumkind: CSK_MD5, checksum: "8da74e6ddcb3784976287053d77ea750")
!61 = !{!62}
!62 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !63, line: 90, baseType: !14, size: 32, elements: !64)
!63 = !DIFile(filename: "./freertos/task.h", directory: "/home/mjshen/RTOSExploration/Amazfitbip-FreeRTOS", checksumkind: CSK_MD5, checksum: "b75f9106043329ab6379c980a712a798")
!64 = !{!65, !66, !67, !68, !69}
!65 = !DIEnumerator(name: "eNoAction", value: 0)
!66 = !DIEnumerator(name: "eSetBits", value: 1)
!67 = !DIEnumerator(name: "eIncrement", value: 2)
!68 = !DIEnumerator(name: "eSetValueWithOverwrite", value: 3)
!69 = !DIEnumerator(name: "eSetValueWithoutOverwrite", value: 4)
!70 = !{!12, !5, !71, !47, !51, !56, !49, !54, !7, !118, !107, !110, !119}
!71 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !72, size: 32)
!72 = !DIDerivedType(tag: DW_TAG_typedef, name: "TCB_t", file: !60, line: 330, baseType: !73)
!73 = !DIDerivedType(tag: DW_TAG_typedef, name: "tskTCB", file: !60, line: 326, baseType: !74)
!74 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tskTaskControlBlock", file: !60, line: 252, size: 672, elements: !75)
!75 = !{!76, !79, !104, !105, !106, !108, !113, !114, !115, !116}
!76 = !DIDerivedType(tag: DW_TAG_member, name: "pxTopOfStack", scope: !74, file: !60, line: 254, baseType: !77, size: 32)
!77 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !78, size: 32)
!78 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !45)
!79 = !DIDerivedType(tag: DW_TAG_member, name: "xStateListItem", scope: !74, file: !60, line: 260, baseType: !80, size: 160, offset: 32)
!80 = !DIDerivedType(tag: DW_TAG_typedef, name: "ListItem_t", file: !81, line: 150, baseType: !82)
!81 = !DIFile(filename: "./freertos/list.h", directory: "/home/mjshen/RTOSExploration/Amazfitbip-FreeRTOS", checksumkind: CSK_MD5, checksum: "06f39e6ef0e1ad0589e249c877c218c0")
!82 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xLIST_ITEM", file: !81, line: 140, size: 160, elements: !83)
!83 = !{!84, !85, !87, !88, !89}
!84 = !DIDerivedType(tag: DW_TAG_member, name: "xItemValue", scope: !82, file: !81, line: 143, baseType: !54, size: 32)
!85 = !DIDerivedType(tag: DW_TAG_member, name: "pxNext", scope: !82, file: !81, line: 144, baseType: !86, size: 32, offset: 32)
!86 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !82, size: 32)
!87 = !DIDerivedType(tag: DW_TAG_member, name: "pxPrevious", scope: !82, file: !81, line: 145, baseType: !86, size: 32, offset: 64)
!88 = !DIDerivedType(tag: DW_TAG_member, name: "pvOwner", scope: !82, file: !81, line: 146, baseType: !5, size: 32, offset: 96)
!89 = !DIDerivedType(tag: DW_TAG_member, name: "pvContainer", scope: !82, file: !81, line: 147, baseType: !90, size: 32, offset: 128)
!90 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !91, size: 32)
!91 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xLIST", file: !81, line: 164, size: 160, elements: !92)
!92 = !{!93, !95, !97}
!93 = !DIDerivedType(tag: DW_TAG_member, name: "uxNumberOfItems", scope: !91, file: !81, line: 167, baseType: !94, size: 32)
!94 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !56)
!95 = !DIDerivedType(tag: DW_TAG_member, name: "pxIndex", scope: !91, file: !81, line: 168, baseType: !96, size: 32, offset: 32)
!96 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !80, size: 32)
!97 = !DIDerivedType(tag: DW_TAG_member, name: "xListEnd", scope: !91, file: !81, line: 169, baseType: !98, size: 96, offset: 64)
!98 = !DIDerivedType(tag: DW_TAG_typedef, name: "MiniListItem_t", file: !81, line: 159, baseType: !99)
!99 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xMINI_LIST_ITEM", file: !81, line: 152, size: 96, elements: !100)
!100 = !{!101, !102, !103}
!101 = !DIDerivedType(tag: DW_TAG_member, name: "xItemValue", scope: !99, file: !81, line: 155, baseType: !54, size: 32)
!102 = !DIDerivedType(tag: DW_TAG_member, name: "pxNext", scope: !99, file: !81, line: 156, baseType: !86, size: 32, offset: 32)
!103 = !DIDerivedType(tag: DW_TAG_member, name: "pxPrevious", scope: !99, file: !81, line: 157, baseType: !86, size: 32, offset: 64)
!104 = !DIDerivedType(tag: DW_TAG_member, name: "xEventListItem", scope: !74, file: !60, line: 261, baseType: !80, size: 160, offset: 192)
!105 = !DIDerivedType(tag: DW_TAG_member, name: "uxPriority", scope: !74, file: !60, line: 262, baseType: !56, size: 32, offset: 352)
!106 = !DIDerivedType(tag: DW_TAG_member, name: "pxStack", scope: !74, file: !60, line: 263, baseType: !107, size: 32, offset: 384)
!107 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !45, size: 32)
!108 = !DIDerivedType(tag: DW_TAG_member, name: "pcTaskName", scope: !74, file: !60, line: 264, baseType: !109, size: 128, offset: 416)
!109 = !DICompositeType(tag: DW_TAG_array_type, baseType: !110, size: 128, elements: !111)
!110 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_unsigned_char)
!111 = !{!112}
!112 = !DISubrange(count: 16)
!113 = !DIDerivedType(tag: DW_TAG_member, name: "uxBasePriority", scope: !74, file: !60, line: 280, baseType: !56, size: 32, offset: 544)
!114 = !DIDerivedType(tag: DW_TAG_member, name: "uxMutexesHeld", scope: !74, file: !60, line: 281, baseType: !56, size: 32, offset: 576)
!115 = !DIDerivedType(tag: DW_TAG_member, name: "ulNotifiedValue", scope: !74, file: !60, line: 308, baseType: !50, size: 32, offset: 608)
!116 = !DIDerivedType(tag: DW_TAG_member, name: "ucNotifyState", scope: !74, file: !60, line: 309, baseType: !117, size: 8, offset: 640)
!117 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !7)
!118 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!119 = !DIDerivedType(tag: DW_TAG_typedef, name: "TaskHandle_t", file: !63, line: 70, baseType: !120)
!120 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !74, size: 32)
!121 = !{!57, !122, !128, !132, !134, !136, !138, !140, !142, !144, !146, !148, !150, !152, !155, !158, !160, !162, !164, !166, !168}
!122 = !DIGlobalVariableExpression(var: !123, expr: !DIExpression())
!123 = distinct !DIGlobalVariable(name: "pxReadyTasksLists", scope: !59, file: !60, line: 340, type: !124, isLocal: true, isDefinition: true)
!124 = !DICompositeType(tag: DW_TAG_array_type, baseType: !125, size: 800, elements: !126)
!125 = !DIDerivedType(tag: DW_TAG_typedef, name: "List_t", file: !81, line: 171, baseType: !91)
!126 = !{!127}
!127 = !DISubrange(count: 5)
!128 = !DIGlobalVariableExpression(var: !129, expr: !DIExpression())
!129 = distinct !DIGlobalVariable(name: "pxDelayedTaskList", scope: !59, file: !60, line: 343, type: !130, isLocal: true, isDefinition: true)
!130 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !131)
!131 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !125, size: 32)
!132 = !DIGlobalVariableExpression(var: !133, expr: !DIExpression())
!133 = distinct !DIGlobalVariable(name: "pxOverflowDelayedTaskList", scope: !59, file: !60, line: 344, type: !130, isLocal: true, isDefinition: true)
!134 = !DIGlobalVariableExpression(var: !135, expr: !DIExpression())
!135 = distinct !DIGlobalVariable(name: "xPendingReadyList", scope: !59, file: !60, line: 345, type: !125, isLocal: true, isDefinition: true)
!136 = !DIGlobalVariableExpression(var: !137, expr: !DIExpression())
!137 = distinct !DIGlobalVariable(name: "xTasksWaitingTermination", scope: !59, file: !60, line: 349, type: !125, isLocal: true, isDefinition: true)
!138 = !DIGlobalVariableExpression(var: !139, expr: !DIExpression())
!139 = distinct !DIGlobalVariable(name: "xSuspendedTaskList", scope: !59, file: !60, line: 356, type: !125, isLocal: true, isDefinition: true)
!140 = !DIGlobalVariableExpression(var: !141, expr: !DIExpression())
!141 = distinct !DIGlobalVariable(name: "xDelayedTaskList1", scope: !59, file: !60, line: 341, type: !125, isLocal: true, isDefinition: true)
!142 = !DIGlobalVariableExpression(var: !143, expr: !DIExpression())
!143 = distinct !DIGlobalVariable(name: "xDelayedTaskList2", scope: !59, file: !60, line: 342, type: !125, isLocal: true, isDefinition: true)
!144 = !DIGlobalVariableExpression(var: !145, expr: !DIExpression())
!145 = distinct !DIGlobalVariable(name: "uxTopReadyPriority", scope: !59, file: !60, line: 369, type: !94, isLocal: true, isDefinition: true)
!146 = !DIGlobalVariableExpression(var: !147, expr: !DIExpression())
!147 = distinct !DIGlobalVariable(name: "uxTaskNumber", scope: !59, file: !60, line: 374, type: !56, isLocal: true, isDefinition: true)
!148 = !DIGlobalVariableExpression(var: !149, expr: !DIExpression())
!149 = distinct !DIGlobalVariable(name: "uxDeletedTasksWaitingCleanUp", scope: !59, file: !60, line: 350, type: !94, isLocal: true, isDefinition: true)
!150 = !DIGlobalVariableExpression(var: !151, expr: !DIExpression())
!151 = distinct !DIGlobalVariable(name: "uxCurrentNumberOfTasks", scope: !59, file: !60, line: 367, type: !94, isLocal: true, isDefinition: true)
!152 = !DIGlobalVariableExpression(var: !153, expr: !DIExpression())
!153 = distinct !DIGlobalVariable(name: "xSchedulerRunning", scope: !59, file: !60, line: 370, type: !154, isLocal: true, isDefinition: true)
!154 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !51)
!155 = !DIGlobalVariableExpression(var: !156, expr: !DIExpression())
!156 = distinct !DIGlobalVariable(name: "xTickCount", scope: !59, file: !60, line: 368, type: !157, isLocal: true, isDefinition: true)
!157 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !54)
!158 = !DIGlobalVariableExpression(var: !159, expr: !DIExpression())
!159 = distinct !DIGlobalVariable(name: "uxSchedulerSuspended", scope: !59, file: !60, line: 386, type: !94, isLocal: true, isDefinition: true)
!160 = !DIGlobalVariableExpression(var: !161, expr: !DIExpression())
!161 = distinct !DIGlobalVariable(name: "xIdleTaskHandle", scope: !59, file: !60, line: 376, type: !119, isLocal: true, isDefinition: true)
!162 = !DIGlobalVariableExpression(var: !163, expr: !DIExpression())
!163 = distinct !DIGlobalVariable(name: "xNextTaskUnblockTime", scope: !59, file: !60, line: 375, type: !157, isLocal: true, isDefinition: true)
!164 = !DIGlobalVariableExpression(var: !165, expr: !DIExpression())
!165 = distinct !DIGlobalVariable(name: "xYieldPending", scope: !59, file: !60, line: 372, type: !154, isLocal: true, isDefinition: true)
!166 = !DIGlobalVariableExpression(var: !167, expr: !DIExpression())
!167 = distinct !DIGlobalVariable(name: "uxPendedTicks", scope: !59, file: !60, line: 371, type: !94, isLocal: true, isDefinition: true)
!168 = !DIGlobalVariableExpression(var: !169, expr: !DIExpression())
!169 = distinct !DIGlobalVariable(name: "xNumOfOverflows", scope: !59, file: !60, line: 373, type: !154, isLocal: true, isDefinition: true)
!170 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !71)
!171 = !DIGlobalVariableExpression(var: !172, expr: !DIExpression())
!172 = distinct !DIGlobalVariable(name: "rcc_ahb_frequency", scope: !173, file: !174, line: 42, type: !47, isLocal: false, isDefinition: true)
!173 = distinct !DICompileUnit(language: DW_LANG_C99, file: !174, producer: "Ubuntu clang version 14.0.6", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !175, retainedTypes: !186, globals: !187, splitDebugInlining: false, nameTableKind: None)
!174 = !DIFile(filename: "rcc.c", directory: "/home/mjshen/RTOSExploration/Amazfitbip-FreeRTOS/libopencm3/lib/stm32/l4", checksumkind: CSK_MD5, checksum: "1f05854ffb509fe956a717ab78489f01")
!175 = !{!176}
!176 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "rcc_osc", file: !177, line: 720, baseType: !14, size: 32, elements: !178)
!177 = !DIFile(filename: "../../../include/libopencm3/stm32/l4/rcc.h", directory: "/home/mjshen/RTOSExploration/Amazfitbip-FreeRTOS/libopencm3/lib/stm32/l4", checksumkind: CSK_MD5, checksum: "0ed8d24b44f0fd4649f8c0b1e32a340a")
!178 = !{!179, !180, !181, !182, !183, !184, !185}
!179 = !DIEnumerator(name: "RCC_PLL", value: 0)
!180 = !DIEnumerator(name: "RCC_HSE", value: 1)
!181 = !DIEnumerator(name: "RCC_HSI16", value: 2)
!182 = !DIEnumerator(name: "RCC_MSI", value: 3)
!183 = !DIEnumerator(name: "RCC_LSE", value: 4)
!184 = !DIEnumerator(name: "RCC_LSI", value: 5)
!185 = !DIEnumerator(name: "RCC_HSI48", value: 6)
!186 = !{!49}
!187 = !{!171, !188, !190}
!188 = !DIGlobalVariableExpression(var: !189, expr: !DIExpression())
!189 = distinct !DIGlobalVariable(name: "rcc_apb1_frequency", scope: !173, file: !174, line: 43, type: !47, isLocal: false, isDefinition: true)
!190 = !DIGlobalVariableExpression(var: !191, expr: !DIExpression())
!191 = distinct !DIGlobalVariable(name: "rcc_apb2_frequency", scope: !173, file: !174, line: 44, type: !47, isLocal: false, isDefinition: true)
!192 = !DIGlobalVariableExpression(var: !193, expr: !DIExpression())
!193 = distinct !DIGlobalVariable(name: "vector_table", scope: !194, file: !195, line: 40, type: !197, isLocal: false, isDefinition: true)
!194 = distinct !DICompileUnit(language: DW_LANG_C99, file: !195, producer: "Ubuntu clang version 14.0.6", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !186, globals: !196, splitDebugInlining: false, nameTableKind: None)
!195 = !DIFile(filename: "../../cm3/vector.c", directory: "/home/mjshen/RTOSExploration/Amazfitbip-FreeRTOS/libopencm3/lib/stm32/l4", checksumkind: CSK_MD5, checksum: "eea31a7465401bcdd77e618c87161348")
!196 = !{!192}
!197 = !DIDerivedType(tag: DW_TAG_typedef, name: "vector_table_t", file: !198, line: 62, baseType: !199)
!198 = !DIFile(filename: "../../../include/libopencm3/cm3/vector.h", directory: "/home/mjshen/RTOSExploration/Amazfitbip-FreeRTOS/libopencm3/lib/stm32/l4", checksumkind: CSK_MD5, checksum: "4f74511a3b8d4ce9602767ed6336f7cd")
!199 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !198, line: 47, size: 3136, elements: !200)
!200 = !{!201, !203, !208, !209, !210, !211, !212, !213, !217, !218, !219, !220, !221, !222}
!201 = !DIDerivedType(tag: DW_TAG_member, name: "initial_sp_value", scope: !199, file: !198, line: 48, baseType: !202, size: 32)
!202 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !14, size: 32)
!203 = !DIDerivedType(tag: DW_TAG_member, name: "reset", scope: !199, file: !198, line: 49, baseType: !204, size: 32, offset: 32)
!204 = !DIDerivedType(tag: DW_TAG_typedef, name: "vector_table_entry_t", file: !198, line: 45, baseType: !205)
!205 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !206, size: 32)
!206 = !DISubroutineType(types: !207)
!207 = !{null}
!208 = !DIDerivedType(tag: DW_TAG_member, name: "nmi", scope: !199, file: !198, line: 50, baseType: !204, size: 32, offset: 64)
!209 = !DIDerivedType(tag: DW_TAG_member, name: "hard_fault", scope: !199, file: !198, line: 51, baseType: !204, size: 32, offset: 96)
!210 = !DIDerivedType(tag: DW_TAG_member, name: "memory_manage_fault", scope: !199, file: !198, line: 52, baseType: !204, size: 32, offset: 128)
!211 = !DIDerivedType(tag: DW_TAG_member, name: "bus_fault", scope: !199, file: !198, line: 53, baseType: !204, size: 32, offset: 160)
!212 = !DIDerivedType(tag: DW_TAG_member, name: "usage_fault", scope: !199, file: !198, line: 54, baseType: !204, size: 32, offset: 192)
!213 = !DIDerivedType(tag: DW_TAG_member, name: "reserved_x001c", scope: !199, file: !198, line: 55, baseType: !214, size: 128, offset: 224)
!214 = !DICompositeType(tag: DW_TAG_array_type, baseType: !204, size: 128, elements: !215)
!215 = !{!216}
!216 = !DISubrange(count: 4)
!217 = !DIDerivedType(tag: DW_TAG_member, name: "sv_call", scope: !199, file: !198, line: 56, baseType: !204, size: 32, offset: 352)
!218 = !DIDerivedType(tag: DW_TAG_member, name: "debug_monitor", scope: !199, file: !198, line: 57, baseType: !204, size: 32, offset: 384)
!219 = !DIDerivedType(tag: DW_TAG_member, name: "reserved_x0034", scope: !199, file: !198, line: 58, baseType: !204, size: 32, offset: 416)
!220 = !DIDerivedType(tag: DW_TAG_member, name: "pend_sv", scope: !199, file: !198, line: 59, baseType: !204, size: 32, offset: 448)
!221 = !DIDerivedType(tag: DW_TAG_member, name: "systick", scope: !199, file: !198, line: 60, baseType: !204, size: 32, offset: 480)
!222 = !DIDerivedType(tag: DW_TAG_member, name: "irq", scope: !199, file: !198, line: 61, baseType: !223, size: 2624, offset: 512)
!223 = !DICompositeType(tag: DW_TAG_array_type, baseType: !204, size: 2624, elements: !224)
!224 = !{!225}
!225 = !DISubrange(count: 82)
!226 = distinct !DICompileUnit(language: DW_LANG_C99, file: !227, producer: "Ubuntu clang version 14.0.6", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !228, retainedTypes: !351, splitDebugInlining: false, nameTableKind: None)
!227 = !DIFile(filename: "main.c", directory: "/home/mjshen/RTOSExploration/Amazfitbip-FreeRTOS", checksumkind: CSK_MD5, checksum: "363f5a4e976ccef443ac59e7ea68bd70")
!228 = !{!229, !231}
!229 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "rcc_osc", file: !230, line: 720, baseType: !14, size: 32, elements: !178)
!230 = !DIFile(filename: "./libopencm3/include/libopencm3/stm32/l4/rcc.h", directory: "/home/mjshen/RTOSExploration/Amazfitbip-FreeRTOS", checksumkind: CSK_MD5, checksum: "0ed8d24b44f0fd4649f8c0b1e32a340a")
!231 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "rcc_periph_clken", file: !230, line: 727, baseType: !14, size: 32, elements: !232)
!232 = !{!233, !234, !235, !236, !237, !238, !239, !240, !241, !242, !243, !244, !245, !246, !247, !248, !249, !250, !251, !252, !253, !254, !255, !256, !257, !258, !259, !260, !261, !262, !263, !264, !265, !266, !267, !268, !269, !270, !271, !272, !273, !274, !275, !276, !277, !278, !279, !280, !281, !282, !283, !284, !285, !286, !287, !288, !289, !290, !291, !292, !293, !294, !295, !296, !297, !298, !299, !300, !301, !302, !303, !304, !305, !306, !307, !308, !309, !310, !311, !312, !313, !314, !315, !316, !317, !318, !319, !320, !321, !322, !323, !324, !325, !326, !327, !328, !329, !330, !331, !332, !333, !334, !335, !336, !337, !338, !339, !340, !341, !342, !343, !344, !345, !346, !347, !348, !349, !350}
!233 = !DIEnumerator(name: "RCC_TSC", value: 2320)
!234 = !DIEnumerator(name: "RCC_CRC", value: 2316)
!235 = !DIEnumerator(name: "RCC_FLASH", value: 2312)
!236 = !DIEnumerator(name: "RCC_DMA2", value: 2305)
!237 = !DIEnumerator(name: "RCC_DMA1", value: 2304)
!238 = !DIEnumerator(name: "RCC_RNG", value: 2450)
!239 = !DIEnumerator(name: "RCC_AES", value: 2448)
!240 = !DIEnumerator(name: "RCC_ADC", value: 2445)
!241 = !DIEnumerator(name: "RCC_ADC1", value: 2445)
!242 = !DIEnumerator(name: "RCC_OTGFS", value: 2444)
!243 = !DIEnumerator(name: "RCC_GPIOH", value: 2439)
!244 = !DIEnumerator(name: "RCC_GPIOG", value: 2438)
!245 = !DIEnumerator(name: "RCC_GPIOF", value: 2437)
!246 = !DIEnumerator(name: "RCC_GPIOE", value: 2436)
!247 = !DIEnumerator(name: "RCC_GPIOD", value: 2435)
!248 = !DIEnumerator(name: "RCC_GPIOC", value: 2434)
!249 = !DIEnumerator(name: "RCC_GPIOB", value: 2433)
!250 = !DIEnumerator(name: "RCC_GPIOA", value: 2432)
!251 = !DIEnumerator(name: "RCC_QSPI", value: 2568)
!252 = !DIEnumerator(name: "RCC_FMC", value: 2560)
!253 = !DIEnumerator(name: "RCC_LPTIM1", value: 2847)
!254 = !DIEnumerator(name: "RCC_OPAMP", value: 2846)
!255 = !DIEnumerator(name: "RCC_DAC1", value: 2845)
!256 = !DIEnumerator(name: "RCC_PWR", value: 2844)
!257 = !DIEnumerator(name: "RCC_USB", value: 2842)
!258 = !DIEnumerator(name: "RCC_CAN1", value: 2841)
!259 = !DIEnumerator(name: "RCC_CRS", value: 2840)
!260 = !DIEnumerator(name: "RCC_I2C3", value: 2839)
!261 = !DIEnumerator(name: "RCC_I2C2", value: 2838)
!262 = !DIEnumerator(name: "RCC_I2C1", value: 2837)
!263 = !DIEnumerator(name: "RCC_UART5", value: 2836)
!264 = !DIEnumerator(name: "RCC_UART4", value: 2835)
!265 = !DIEnumerator(name: "RCC_USART3", value: 2834)
!266 = !DIEnumerator(name: "RCC_USART2", value: 2833)
!267 = !DIEnumerator(name: "RCC_SPI3", value: 2831)
!268 = !DIEnumerator(name: "RCC_SPI2", value: 2830)
!269 = !DIEnumerator(name: "RCC_LCD", value: 2825)
!270 = !DIEnumerator(name: "RCC_TIM7", value: 2821)
!271 = !DIEnumerator(name: "RCC_TIM6", value: 2820)
!272 = !DIEnumerator(name: "RCC_TIM5", value: 2819)
!273 = !DIEnumerator(name: "RCC_TIM4", value: 2818)
!274 = !DIEnumerator(name: "RCC_TIM3", value: 2817)
!275 = !DIEnumerator(name: "RCC_TIM2", value: 2816)
!276 = !DIEnumerator(name: "RCC_LPTIM2", value: 2949)
!277 = !DIEnumerator(name: "RCC_SWPMI1", value: 2946)
!278 = !DIEnumerator(name: "RCC_LPUART1", value: 2944)
!279 = !DIEnumerator(name: "RCC_DFSDM", value: 3096)
!280 = !DIEnumerator(name: "RCC_SAI2", value: 3094)
!281 = !DIEnumerator(name: "RCC_SAI1", value: 3093)
!282 = !DIEnumerator(name: "RCC_TIM17", value: 3090)
!283 = !DIEnumerator(name: "RCC_TIM16", value: 3089)
!284 = !DIEnumerator(name: "RCC_TIM15", value: 3088)
!285 = !DIEnumerator(name: "RCC_USART1", value: 3086)
!286 = !DIEnumerator(name: "RCC_TIM8", value: 3085)
!287 = !DIEnumerator(name: "RCC_SPI1", value: 3084)
!288 = !DIEnumerator(name: "RCC_TIM1", value: 3083)
!289 = !DIEnumerator(name: "RCC_SDMMC1", value: 3082)
!290 = !DIEnumerator(name: "RCC_FW", value: 3079)
!291 = !DIEnumerator(name: "RCC_SYSCFG", value: 3072)
!292 = !DIEnumerator(name: "SCC_TSC", value: 3344)
!293 = !DIEnumerator(name: "SCC_CRC", value: 3340)
!294 = !DIEnumerator(name: "SCC_SRAM1", value: 3337)
!295 = !DIEnumerator(name: "SCC_FLASH", value: 3336)
!296 = !DIEnumerator(name: "SCC_DMA2", value: 3329)
!297 = !DIEnumerator(name: "SCC_DMA1", value: 3328)
!298 = !DIEnumerator(name: "SCC_RNG", value: 3474)
!299 = !DIEnumerator(name: "SCC_AES", value: 3472)
!300 = !DIEnumerator(name: "SCC_ADC", value: 3469)
!301 = !DIEnumerator(name: "SCC_ADC1", value: 3469)
!302 = !DIEnumerator(name: "SCC_OTGFS", value: 3468)
!303 = !DIEnumerator(name: "SCC_SRAM2", value: 3465)
!304 = !DIEnumerator(name: "SCC_GPIOH", value: 3463)
!305 = !DIEnumerator(name: "SCC_GPIOG", value: 3462)
!306 = !DIEnumerator(name: "SCC_GPIOF", value: 3461)
!307 = !DIEnumerator(name: "SCC_GPIOE", value: 3460)
!308 = !DIEnumerator(name: "SCC_GPIOD", value: 3459)
!309 = !DIEnumerator(name: "SCC_GPIOC", value: 3458)
!310 = !DIEnumerator(name: "SCC_GPIOB", value: 3457)
!311 = !DIEnumerator(name: "SCC_GPIOA", value: 3456)
!312 = !DIEnumerator(name: "SCC_QSPI", value: 3592)
!313 = !DIEnumerator(name: "SCC_FMC", value: 3584)
!314 = !DIEnumerator(name: "SCC_LPTIM1", value: 2847)
!315 = !DIEnumerator(name: "SCC_OPAMP", value: 2846)
!316 = !DIEnumerator(name: "SCC_DAC1", value: 2845)
!317 = !DIEnumerator(name: "SCC_PWR", value: 2844)
!318 = !DIEnumerator(name: "SCC_CAN1", value: 2841)
!319 = !DIEnumerator(name: "SCC_I2C3", value: 2839)
!320 = !DIEnumerator(name: "SCC_I2C2", value: 2838)
!321 = !DIEnumerator(name: "SCC_I2C1", value: 2837)
!322 = !DIEnumerator(name: "SCC_UART5", value: 2836)
!323 = !DIEnumerator(name: "SCC_UART4", value: 2835)
!324 = !DIEnumerator(name: "SCC_USART3", value: 2834)
!325 = !DIEnumerator(name: "SCC_USART2", value: 2833)
!326 = !DIEnumerator(name: "SCC_SPI3", value: 2831)
!327 = !DIEnumerator(name: "SCC_SPI2", value: 2830)
!328 = !DIEnumerator(name: "SCC_WWDG", value: 2827)
!329 = !DIEnumerator(name: "SCC_LCD", value: 2825)
!330 = !DIEnumerator(name: "SCC_TIM7", value: 2821)
!331 = !DIEnumerator(name: "SCC_TIM6", value: 2820)
!332 = !DIEnumerator(name: "SCC_TIM5", value: 2819)
!333 = !DIEnumerator(name: "SCC_TIM4", value: 2818)
!334 = !DIEnumerator(name: "SCC_TIM3", value: 2817)
!335 = !DIEnumerator(name: "SCC_TIM2", value: 2816)
!336 = !DIEnumerator(name: "SCC_LPTIM2", value: 2949)
!337 = !DIEnumerator(name: "SCC_SWPMI1", value: 2946)
!338 = !DIEnumerator(name: "SCC_LPUART1", value: 2944)
!339 = !DIEnumerator(name: "SCC_DFSDM", value: 3096)
!340 = !DIEnumerator(name: "SCC_SAI2", value: 3094)
!341 = !DIEnumerator(name: "SCC_SAI1", value: 3093)
!342 = !DIEnumerator(name: "SCC_TIM17", value: 3090)
!343 = !DIEnumerator(name: "SCC_TIM16", value: 3089)
!344 = !DIEnumerator(name: "SCC_TIM15", value: 3088)
!345 = !DIEnumerator(name: "SCC_USART1", value: 3086)
!346 = !DIEnumerator(name: "SCC_TIM8", value: 3085)
!347 = !DIEnumerator(name: "SCC_SPI1", value: 3084)
!348 = !DIEnumerator(name: "SCC_TIM1", value: 3083)
!349 = !DIEnumerator(name: "SCC_SDMMC1", value: 3082)
!350 = !DIEnumerator(name: "SCC_SYSCFG", value: 3072)
!351 = !{!5}
!352 = distinct !DICompileUnit(language: DW_LANG_C99, file: !353, producer: "Ubuntu clang version 14.0.6", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !354, splitDebugInlining: false, nameTableKind: None)
!353 = !DIFile(filename: "freertos/list.c", directory: "/home/mjshen/RTOSExploration/Amazfitbip-FreeRTOS", checksumkind: CSK_MD5, checksum: "b9c6d644997d7412c1f0f838c80e497c")
!354 = !{!355, !54, !56}
!355 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !356, size: 32)
!356 = !DIDerivedType(tag: DW_TAG_typedef, name: "ListItem_t", file: !81, line: 150, baseType: !357)
!357 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xLIST_ITEM", file: !81, line: 140, size: 160, elements: !358)
!358 = !{!359, !360, !362, !363, !364}
!359 = !DIDerivedType(tag: DW_TAG_member, name: "xItemValue", scope: !357, file: !81, line: 143, baseType: !54, size: 32)
!360 = !DIDerivedType(tag: DW_TAG_member, name: "pxNext", scope: !357, file: !81, line: 144, baseType: !361, size: 32, offset: 32)
!361 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !357, size: 32)
!362 = !DIDerivedType(tag: DW_TAG_member, name: "pxPrevious", scope: !357, file: !81, line: 145, baseType: !361, size: 32, offset: 64)
!363 = !DIDerivedType(tag: DW_TAG_member, name: "pvOwner", scope: !357, file: !81, line: 146, baseType: !5, size: 32, offset: 96)
!364 = !DIDerivedType(tag: DW_TAG_member, name: "pvContainer", scope: !357, file: !81, line: 147, baseType: !365, size: 32, offset: 128)
!365 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !366, size: 32)
!366 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xLIST", file: !81, line: 164, size: 160, elements: !367)
!367 = !{!368, !369, !370}
!368 = !DIDerivedType(tag: DW_TAG_member, name: "uxNumberOfItems", scope: !366, file: !81, line: 167, baseType: !94, size: 32)
!369 = !DIDerivedType(tag: DW_TAG_member, name: "pxIndex", scope: !366, file: !81, line: 168, baseType: !355, size: 32, offset: 32)
!370 = !DIDerivedType(tag: DW_TAG_member, name: "xListEnd", scope: !366, file: !81, line: 169, baseType: !371, size: 96, offset: 64)
!371 = !DIDerivedType(tag: DW_TAG_typedef, name: "MiniListItem_t", file: !81, line: 159, baseType: !372)
!372 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xMINI_LIST_ITEM", file: !81, line: 152, size: 96, elements: !373)
!373 = !{!374, !375, !376}
!374 = !DIDerivedType(tag: DW_TAG_member, name: "xItemValue", scope: !372, file: !81, line: 155, baseType: !54, size: 32)
!375 = !DIDerivedType(tag: DW_TAG_member, name: "pxNext", scope: !372, file: !81, line: 156, baseType: !361, size: 32, offset: 32)
!376 = !DIDerivedType(tag: DW_TAG_member, name: "pxPrevious", scope: !372, file: !81, line: 157, baseType: !361, size: 32, offset: 64)
!377 = distinct !DICompileUnit(language: DW_LANG_C99, file: !378, producer: "Ubuntu clang version 14.0.6", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !379, splitDebugInlining: false, nameTableKind: None)
!378 = !DIFile(filename: "freertos/queue.c", directory: "/home/mjshen/RTOSExploration/Amazfitbip-FreeRTOS", checksumkind: CSK_MD5, checksum: "2fad080d11525689e52236181332d08d")
!379 = !{!56, !380, !51, !49, !12, !383, !5, !6, !54, !389}
!380 = !DIDerivedType(tag: DW_TAG_typedef, name: "int8_t", file: !8, line: 20, baseType: !381)
!381 = !DIDerivedType(tag: DW_TAG_typedef, name: "__int8_t", file: !10, line: 41, baseType: !382)
!382 = !DIBasicType(name: "signed char", size: 8, encoding: DW_ATE_signed_char)
!383 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !384, size: 32)
!384 = !DIDerivedType(tag: DW_TAG_typedef, name: "Queue_t", file: !378, line: 135, baseType: !385)
!385 = !DIDerivedType(tag: DW_TAG_typedef, name: "xQUEUE", file: !378, line: 131, baseType: !386)
!386 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "QueueDefinition", file: !378, line: 97, size: 576, elements: !387)
!387 = !{!388, !390, !391, !409, !433, !434, !435, !436, !437, !439}
!388 = !DIDerivedType(tag: DW_TAG_member, name: "pcHead", scope: !386, file: !378, line: 99, baseType: !389, size: 32)
!389 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !380, size: 32)
!390 = !DIDerivedType(tag: DW_TAG_member, name: "pcWriteTo", scope: !386, file: !378, line: 100, baseType: !389, size: 32, offset: 32)
!391 = !DIDerivedType(tag: DW_TAG_member, name: "u", scope: !386, file: !378, line: 106, baseType: !392, size: 64, offset: 64)
!392 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !386, file: !378, line: 102, size: 64, elements: !393)
!393 = !{!394, !400}
!394 = !DIDerivedType(tag: DW_TAG_member, name: "xQueue", scope: !392, file: !378, line: 104, baseType: !395, size: 64)
!395 = !DIDerivedType(tag: DW_TAG_typedef, name: "QueuePointers_t", file: !378, line: 71, baseType: !396)
!396 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "QueuePointers", file: !378, line: 67, size: 64, elements: !397)
!397 = !{!398, !399}
!398 = !DIDerivedType(tag: DW_TAG_member, name: "pcTail", scope: !396, file: !378, line: 69, baseType: !389, size: 32)
!399 = !DIDerivedType(tag: DW_TAG_member, name: "pcReadFrom", scope: !396, file: !378, line: 70, baseType: !389, size: 32, offset: 32)
!400 = !DIDerivedType(tag: DW_TAG_member, name: "xSemaphore", scope: !392, file: !378, line: 105, baseType: !401, size: 64)
!401 = !DIDerivedType(tag: DW_TAG_typedef, name: "SemaphoreData_t", file: !378, line: 77, baseType: !402)
!402 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "SemaphoreData", file: !378, line: 73, size: 64, elements: !403)
!403 = !{!404, !408}
!404 = !DIDerivedType(tag: DW_TAG_member, name: "xMutexHolder", scope: !402, file: !378, line: 75, baseType: !405, size: 32)
!405 = !DIDerivedType(tag: DW_TAG_typedef, name: "TaskHandle_t", file: !63, line: 70, baseType: !406)
!406 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !407, size: 32)
!407 = !DICompositeType(tag: DW_TAG_structure_type, name: "tskTaskControlBlock", file: !63, line: 69, flags: DIFlagFwdDecl)
!408 = !DIDerivedType(tag: DW_TAG_member, name: "uxRecursiveCallCount", scope: !402, file: !378, line: 76, baseType: !56, size: 32, offset: 32)
!409 = !DIDerivedType(tag: DW_TAG_member, name: "xTasksWaitingToSend", scope: !386, file: !378, line: 108, baseType: !410, size: 160, offset: 128)
!410 = !DIDerivedType(tag: DW_TAG_typedef, name: "List_t", file: !81, line: 171, baseType: !411)
!411 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xLIST", file: !81, line: 164, size: 160, elements: !412)
!412 = !{!413, !414, !426}
!413 = !DIDerivedType(tag: DW_TAG_member, name: "uxNumberOfItems", scope: !411, file: !81, line: 167, baseType: !94, size: 32)
!414 = !DIDerivedType(tag: DW_TAG_member, name: "pxIndex", scope: !411, file: !81, line: 168, baseType: !415, size: 32, offset: 32)
!415 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !416, size: 32)
!416 = !DIDerivedType(tag: DW_TAG_typedef, name: "ListItem_t", file: !81, line: 150, baseType: !417)
!417 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xLIST_ITEM", file: !81, line: 140, size: 160, elements: !418)
!418 = !{!419, !420, !422, !423, !424}
!419 = !DIDerivedType(tag: DW_TAG_member, name: "xItemValue", scope: !417, file: !81, line: 143, baseType: !54, size: 32)
!420 = !DIDerivedType(tag: DW_TAG_member, name: "pxNext", scope: !417, file: !81, line: 144, baseType: !421, size: 32, offset: 32)
!421 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !417, size: 32)
!422 = !DIDerivedType(tag: DW_TAG_member, name: "pxPrevious", scope: !417, file: !81, line: 145, baseType: !421, size: 32, offset: 64)
!423 = !DIDerivedType(tag: DW_TAG_member, name: "pvOwner", scope: !417, file: !81, line: 146, baseType: !5, size: 32, offset: 96)
!424 = !DIDerivedType(tag: DW_TAG_member, name: "pvContainer", scope: !417, file: !81, line: 147, baseType: !425, size: 32, offset: 128)
!425 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !411, size: 32)
!426 = !DIDerivedType(tag: DW_TAG_member, name: "xListEnd", scope: !411, file: !81, line: 169, baseType: !427, size: 96, offset: 64)
!427 = !DIDerivedType(tag: DW_TAG_typedef, name: "MiniListItem_t", file: !81, line: 159, baseType: !428)
!428 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xMINI_LIST_ITEM", file: !81, line: 152, size: 96, elements: !429)
!429 = !{!430, !431, !432}
!430 = !DIDerivedType(tag: DW_TAG_member, name: "xItemValue", scope: !428, file: !81, line: 155, baseType: !54, size: 32)
!431 = !DIDerivedType(tag: DW_TAG_member, name: "pxNext", scope: !428, file: !81, line: 156, baseType: !421, size: 32, offset: 32)
!432 = !DIDerivedType(tag: DW_TAG_member, name: "pxPrevious", scope: !428, file: !81, line: 157, baseType: !421, size: 32, offset: 64)
!433 = !DIDerivedType(tag: DW_TAG_member, name: "xTasksWaitingToReceive", scope: !386, file: !378, line: 109, baseType: !410, size: 160, offset: 288)
!434 = !DIDerivedType(tag: DW_TAG_member, name: "uxMessagesWaiting", scope: !386, file: !378, line: 111, baseType: !94, size: 32, offset: 448)
!435 = !DIDerivedType(tag: DW_TAG_member, name: "uxLength", scope: !386, file: !378, line: 112, baseType: !56, size: 32, offset: 480)
!436 = !DIDerivedType(tag: DW_TAG_member, name: "uxItemSize", scope: !386, file: !378, line: 113, baseType: !56, size: 32, offset: 512)
!437 = !DIDerivedType(tag: DW_TAG_member, name: "cRxLock", scope: !386, file: !378, line: 115, baseType: !438, size: 8, offset: 544)
!438 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !380)
!439 = !DIDerivedType(tag: DW_TAG_member, name: "cTxLock", scope: !386, file: !378, line: 116, baseType: !438, size: 8, offset: 552)
!440 = distinct !DICompileUnit(language: DW_LANG_C99, file: !441, producer: "Ubuntu clang version 14.0.6", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!441 = !DIFile(filename: "freertos/opencm3.c", directory: "/home/mjshen/RTOSExploration/Amazfitbip-FreeRTOS", checksumkind: CSK_MD5, checksum: "4f6f3bd7637ad08f7c58f2cf0951d556")
!442 = distinct !DICompileUnit(language: DW_LANG_C99, file: !443, producer: "Ubuntu clang version 14.0.6", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !444, retainedTypes: !186, splitDebugInlining: false, nameTableKind: None)
!443 = !DIFile(filename: "../common/rcc_common_all.c", directory: "/home/mjshen/RTOSExploration/Amazfitbip-FreeRTOS/libopencm3/lib/stm32/l4", checksumkind: CSK_MD5, checksum: "8eb2525c9b24a53e0e9c6e50d73f742b")
!444 = !{!445, !446, !176}
!445 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "rcc_periph_clken", file: !177, line: 727, baseType: !14, size: 32, elements: !232)
!446 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "rcc_periph_rst", file: !177, line: 870, baseType: !14, size: 32, elements: !447)
!447 = !{!448, !449, !450, !451, !452, !453, !454, !455, !456, !457, !458, !459, !460, !461, !462, !463, !464, !465, !466, !467, !468, !469, !470, !471, !472, !473, !474, !475, !476, !477, !478, !479, !480, !481, !482, !483, !484, !485, !486, !487, !488, !489, !490, !491, !492, !493, !494, !495, !496, !497, !498, !499, !500, !501, !502, !503, !504, !505}
!448 = !DIEnumerator(name: "RST_TSC", value: 1296)
!449 = !DIEnumerator(name: "RST_CRC", value: 1292)
!450 = !DIEnumerator(name: "RST_FLASH", value: 1288)
!451 = !DIEnumerator(name: "RST_DMA2", value: 1281)
!452 = !DIEnumerator(name: "RST_DMA1", value: 1280)
!453 = !DIEnumerator(name: "RST_RNG", value: 1426)
!454 = !DIEnumerator(name: "RST_AES", value: 1424)
!455 = !DIEnumerator(name: "RST_ADC", value: 1421)
!456 = !DIEnumerator(name: "RST_ADC1", value: 1421)
!457 = !DIEnumerator(name: "RST_OTGFS", value: 1420)
!458 = !DIEnumerator(name: "RST_GPIOH", value: 1415)
!459 = !DIEnumerator(name: "RST_GPIOG", value: 1414)
!460 = !DIEnumerator(name: "RST_GPIOF", value: 1413)
!461 = !DIEnumerator(name: "RST_GPIOE", value: 1412)
!462 = !DIEnumerator(name: "RST_GPIOD", value: 1411)
!463 = !DIEnumerator(name: "RST_GPIOC", value: 1410)
!464 = !DIEnumerator(name: "RST_GPIOB", value: 1409)
!465 = !DIEnumerator(name: "RST_GPIOA", value: 1408)
!466 = !DIEnumerator(name: "RST_QSPI", value: 1544)
!467 = !DIEnumerator(name: "RST_FMC", value: 1536)
!468 = !DIEnumerator(name: "RST_LPTIM1", value: 1823)
!469 = !DIEnumerator(name: "RST_OPAMP", value: 1822)
!470 = !DIEnumerator(name: "RST_DAC1", value: 1821)
!471 = !DIEnumerator(name: "RST_PWR", value: 1820)
!472 = !DIEnumerator(name: "RST_USB", value: 1818)
!473 = !DIEnumerator(name: "RST_CAN1", value: 1817)
!474 = !DIEnumerator(name: "RST_CRS", value: 1816)
!475 = !DIEnumerator(name: "RST_I2C3", value: 1815)
!476 = !DIEnumerator(name: "RST_I2C2", value: 1814)
!477 = !DIEnumerator(name: "RST_I2C1", value: 1813)
!478 = !DIEnumerator(name: "RST_UART5", value: 1812)
!479 = !DIEnumerator(name: "RST_UART4", value: 1811)
!480 = !DIEnumerator(name: "RST_USART3", value: 1810)
!481 = !DIEnumerator(name: "RST_USART2", value: 1809)
!482 = !DIEnumerator(name: "RST_SPI3", value: 1807)
!483 = !DIEnumerator(name: "RST_SPI2", value: 1806)
!484 = !DIEnumerator(name: "RST_LCD", value: 1801)
!485 = !DIEnumerator(name: "RST_TIM7", value: 1797)
!486 = !DIEnumerator(name: "RST_TIM6", value: 1796)
!487 = !DIEnumerator(name: "RST_TIM5", value: 1795)
!488 = !DIEnumerator(name: "RST_TIM4", value: 1794)
!489 = !DIEnumerator(name: "RST_TIM3", value: 1793)
!490 = !DIEnumerator(name: "RST_TIM2", value: 1792)
!491 = !DIEnumerator(name: "RST_LPTIM2", value: 1925)
!492 = !DIEnumerator(name: "RST_SWPMI1", value: 1922)
!493 = !DIEnumerator(name: "RST_LPUART1", value: 1920)
!494 = !DIEnumerator(name: "RST_DFSDM", value: 2072)
!495 = !DIEnumerator(name: "RST_SAI2", value: 2070)
!496 = !DIEnumerator(name: "RST_SAI1", value: 2069)
!497 = !DIEnumerator(name: "RST_TIM17", value: 2066)
!498 = !DIEnumerator(name: "RST_TIM16", value: 2065)
!499 = !DIEnumerator(name: "RST_TIM15", value: 2064)
!500 = !DIEnumerator(name: "RST_USART1", value: 2062)
!501 = !DIEnumerator(name: "RST_TIM8", value: 2061)
!502 = !DIEnumerator(name: "RST_SPI1", value: 2060)
!503 = !DIEnumerator(name: "RST_TIM1", value: 2059)
!504 = !DIEnumerator(name: "RST_SDMMC1", value: 2058)
!505 = !DIEnumerator(name: "RST_SYSCFG", value: 2048)
!506 = distinct !DICompileUnit(language: DW_LANG_C99, file: !507, producer: "Ubuntu clang version 14.0.6", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !186, splitDebugInlining: false, nameTableKind: None)
!507 = !DIFile(filename: "../common/gpio_common_f0234.c", directory: "/home/mjshen/RTOSExploration/Amazfitbip-FreeRTOS/libopencm3/lib/stm32/l4", checksumkind: CSK_MD5, checksum: "e47eb8e09f3d639e16ebc3c51827bbdb")
!508 = distinct !DICompileUnit(language: DW_LANG_C99, file: !509, producer: "Ubuntu clang version 14.0.6", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !510, splitDebugInlining: false, nameTableKind: None)
!509 = !DIFile(filename: "../common/flash_common_all.c", directory: "/home/mjshen/RTOSExploration/Amazfitbip-FreeRTOS/libopencm3/lib/stm32/l4", checksumkind: CSK_MD5, checksum: "5d90650cf13000d350672cc0cca4e34f")
!510 = !{!49, !47}
!511 = distinct !DICompileUnit(language: DW_LANG_C99, file: !512, producer: "Ubuntu clang version 14.0.6", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !186, splitDebugInlining: false, nameTableKind: None)
!512 = !DIFile(filename: "../common/flash_common_idcache.c", directory: "/home/mjshen/RTOSExploration/Amazfitbip-FreeRTOS/libopencm3/lib/stm32/l4", checksumkind: CSK_MD5, checksum: "0f8e70f209bfbc813fb7063b529d26b7")
!513 = distinct !DICompileUnit(language: DW_LANG_C99, file: !514, producer: "Ubuntu clang version 14.0.6", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !186, splitDebugInlining: false, nameTableKind: None)
!514 = !DIFile(filename: "../common/usart_common_all.c", directory: "/home/mjshen/RTOSExploration/Amazfitbip-FreeRTOS/libopencm3/lib/stm32/l4", checksumkind: CSK_MD5, checksum: "82557ef5174150e99f52d192cc0a99a6")
!515 = distinct !DICompileUnit(language: DW_LANG_C99, file: !516, producer: "Ubuntu clang version 14.0.6", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !186, splitDebugInlining: false, nameTableKind: None)
!516 = !DIFile(filename: "../common/usart_common_v2.c", directory: "/home/mjshen/RTOSExploration/Amazfitbip-FreeRTOS/libopencm3/lib/stm32/l4", checksumkind: CSK_MD5, checksum: "0078de1778421e82130773a35e717e39")
!517 = !{!"Ubuntu clang version 14.0.6"}
!518 = !{i32 7, !"Dwarf Version", i32 5}
!519 = !{i32 2, !"Debug Info Version", i32 3}
!520 = !{i32 1, !"wchar_size", i32 4}
!521 = !{i32 1, !"min_enum_size", i32 4}
!522 = !{i32 1, !"branch-target-enforcement", i32 0}
!523 = !{i32 1, !"sign-return-address", i32 0}
!524 = !{i32 1, !"sign-return-address-all", i32 0}
!525 = !{i32 1, !"sign-return-address-with-bkey", i32 0}
!526 = !{i32 7, !"frame-pointer", i32 2}
!527 = distinct !DISubprogram(name: "vApplicationStackOverflowHook", scope: !227, file: !227, line: 18, type: !528, scopeLine: 19, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !226, retainedNodes: !532)
!528 = !DISubroutineType(types: !529)
!529 = !{null, !530, !531}
!530 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !405, size: 32)
!531 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !382, size: 32)
!532 = !{!533, !534}
!533 = !DILocalVariable(name: "pxTask", arg: 1, scope: !527, file: !227, line: 18, type: !530)
!534 = !DILocalVariable(name: "pcTaskName", arg: 2, scope: !527, file: !227, line: 18, type: !531)
!535 = !DILocation(line: 0, scope: !527)
!536 = !DILocation(line: 22, column: 5, scope: !527)
!537 = !DILocation(line: 22, column: 5, scope: !538)
!538 = distinct !DILexicalBlock(scope: !539, file: !227, line: 22, column: 5)
!539 = distinct !DILexicalBlock(scope: !527, file: !227, line: 22, column: 5)
!540 = distinct !{!540, !541, !542}
!541 = !DILocation(line: 22, column: 5, scope: !539)
!542 = !DILocation(line: 22, column: 12, scope: !539)
!543 = distinct !DISubprogram(name: "_write", scope: !227, file: !227, line: 82, type: !544, scopeLine: 83, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !226, retainedNodes: !548)
!544 = !DISubroutineType(types: !545)
!545 = !{!546, !546, !547, !546}
!546 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!547 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !110, size: 32)
!548 = !{!549, !550, !551, !552}
!549 = !DILocalVariable(name: "file", arg: 1, scope: !543, file: !227, line: 82, type: !546)
!550 = !DILocalVariable(name: "ptr", arg: 2, scope: !543, file: !227, line: 82, type: !547)
!551 = !DILocalVariable(name: "len", arg: 3, scope: !543, file: !227, line: 82, type: !546)
!552 = !DILocalVariable(name: "i", scope: !543, file: !227, line: 84, type: !546)
!553 = !DILocation(line: 0, scope: !543)
!554 = !DILocation(line: 86, column: 31, scope: !555)
!555 = distinct !DILexicalBlock(scope: !543, file: !227, line: 86, column: 9)
!556 = !DILocation(line: 87, column: 23, scope: !557)
!557 = distinct !DILexicalBlock(scope: !558, file: !227, line: 87, column: 9)
!558 = distinct !DILexicalBlock(scope: !559, file: !227, line: 87, column: 9)
!559 = distinct !DILexicalBlock(scope: !555, file: !227, line: 86, column: 57)
!560 = !DILocation(line: 87, column: 9, scope: !558)
!561 = !DILocation(line: 88, column: 17, scope: !562)
!562 = distinct !DILexicalBlock(scope: !563, file: !227, line: 88, column: 17)
!563 = distinct !DILexicalBlock(scope: !557, file: !227, line: 87, column: 35)
!564 = !{!565, !565, i64 0}
!565 = !{!"omnipotent char", !566, i64 0}
!566 = !{!"Simple C/C++ TBAA"}
!567 = !DILocation(line: 88, column: 24, scope: !562)
!568 = !DILocation(line: 88, column: 17, scope: !563)
!569 = !DILocation(line: 89, column: 17, scope: !570)
!570 = distinct !DILexicalBlock(scope: !562, file: !227, line: 88, column: 33)
!571 = !DILocation(line: 91, column: 41, scope: !563)
!572 = !DILocation(line: 90, column: 13, scope: !570)
!573 = !DILocation(line: 91, column: 13, scope: !563)
!574 = !DILocation(line: 87, column: 31, scope: !557)
!575 = distinct !{!575, !560, !576, !577}
!576 = !DILocation(line: 92, column: 9, scope: !558)
!577 = !{!"llvm.loop.mustprogress"}
!578 = !DILocation(line: 95, column: 5, scope: !543)
!579 = !DILocation(line: 95, column: 11, scope: !543)
!580 = !{!581, !581, i64 0}
!581 = !{!"int", !565, i64 0}
!582 = !DILocation(line: 96, column: 5, scope: !543)
!583 = !DILocation(line: 97, column: 1, scope: !543)
!584 = distinct !DISubprogram(name: "main", scope: !227, file: !227, line: 112, type: !585, scopeLine: 113, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !226, retainedNodes: !587)
!585 = !DISubroutineType(types: !586)
!586 = !{!546}
!587 = !{}
!588 = !DILocation(line: 114, column: 5, scope: !584)
!589 = !DILocation(line: 115, column: 5, scope: !584)
!590 = !DILocation(line: 116, column: 5, scope: !584)
!591 = !DILocation(line: 117, column: 5, scope: !584)
!592 = !DILocation(line: 118, column: 5, scope: !584)
!593 = !DILocation(line: 119, column: 5, scope: !584)
!594 = !DILocation(line: 119, column: 5, scope: !595)
!595 = distinct !DILexicalBlock(scope: !596, file: !227, line: 119, column: 5)
!596 = distinct !DILexicalBlock(scope: !584, file: !227, line: 119, column: 5)
!597 = distinct !{!597, !598, !599}
!598 = !DILocation(line: 119, column: 5, scope: !596)
!599 = !DILocation(line: 119, column: 13, scope: !596)
!600 = distinct !DISubprogram(name: "clock_setup", scope: !227, file: !227, line: 25, type: !206, scopeLine: 26, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !226, retainedNodes: !587)
!601 = !DILocation(line: 28, column: 5, scope: !600)
!602 = !DILocation(line: 30, column: 5, scope: !600)
!603 = !DILocation(line: 31, column: 5, scope: !600)
!604 = !DILocation(line: 32, column: 5, scope: !600)
!605 = !DILocation(line: 33, column: 5, scope: !600)
!606 = !DILocation(line: 35, column: 5, scope: !600)
!607 = !DILocation(line: 37, column: 5, scope: !600)
!608 = !DILocation(line: 41, column: 5, scope: !600)
!609 = !DILocation(line: 44, column: 2, scope: !600)
!610 = !DILocation(line: 45, column: 5, scope: !600)
!611 = !DILocation(line: 47, column: 5, scope: !600)
!612 = !DILocation(line: 48, column: 5, scope: !600)
!613 = !DILocation(line: 50, column: 23, scope: !600)
!614 = !DILocation(line: 51, column: 24, scope: !600)
!615 = !DILocation(line: 52, column: 24, scope: !600)
!616 = !DILocation(line: 53, column: 1, scope: !600)
!617 = distinct !DISubprogram(name: "usart_setup", scope: !227, file: !227, line: 55, type: !206, scopeLine: 56, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !226, retainedNodes: !587)
!618 = !DILocation(line: 58, column: 5, scope: !617)
!619 = !DILocation(line: 61, column: 5, scope: !617)
!620 = !DILocation(line: 63, column: 5, scope: !617)
!621 = !DILocation(line: 64, column: 5, scope: !617)
!622 = !DILocation(line: 65, column: 5, scope: !617)
!623 = !DILocation(line: 66, column: 5, scope: !617)
!624 = !DILocation(line: 67, column: 5, scope: !617)
!625 = !DILocation(line: 68, column: 5, scope: !617)
!626 = !DILocation(line: 71, column: 5, scope: !617)
!627 = !DILocation(line: 72, column: 1, scope: !617)
!628 = distinct !DISubprogram(name: "task1", scope: !227, file: !227, line: 99, type: !629, scopeLine: 100, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !226, retainedNodes: !631)
!629 = !DISubroutineType(types: !630)
!630 = !{null, !5}
!631 = !{!632, !633}
!632 = !DILocalVariable(name: "args", arg: 1, scope: !628, file: !227, line: 99, type: !5)
!633 = !DILocalVariable(name: "i", scope: !628, file: !227, line: 101, type: !546)
!634 = !DILocation(line: 105, column: 5, scope: !628)
!635 = distinct !DISubprogram(name: "pvPortMalloc", scope: !3, file: !3, line: 113, type: !636, scopeLine: 114, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !638)
!636 = !DISubroutineType(types: !637)
!637 = !{!5, !12}
!638 = !{!639, !640, !641, !642, !643}
!639 = !DILocalVariable(name: "xWantedSize", arg: 1, scope: !635, file: !3, line: 113, type: !12)
!640 = !DILocalVariable(name: "pxBlock", scope: !635, file: !3, line: 115, type: !15)
!641 = !DILocalVariable(name: "pxPreviousBlock", scope: !635, file: !3, line: 115, type: !15)
!642 = !DILocalVariable(name: "pxNewBlockLink", scope: !635, file: !3, line: 115, type: !15)
!643 = !DILocalVariable(name: "pvReturn", scope: !635, file: !3, line: 116, type: !5)
!644 = !DILocation(line: 0, scope: !635)
!645 = !DILocation(line: 118, column: 2, scope: !635)
!646 = !DILocation(line: 122, column: 7, scope: !647)
!647 = distinct !DILexicalBlock(scope: !648, file: !3, line: 122, column: 7)
!648 = distinct !DILexicalBlock(scope: !635, file: !3, line: 119, column: 2)
!649 = !{!650, !650, i64 0}
!650 = !{!"any pointer", !565, i64 0}
!651 = !DILocation(line: 122, column: 13, scope: !647)
!652 = !DILocation(line: 122, column: 7, scope: !648)
!653 = !DILocation(line: 124, column: 4, scope: !654)
!654 = distinct !DILexicalBlock(scope: !647, file: !3, line: 123, column: 3)
!655 = !DILocation(line: 125, column: 3, scope: !654)
!656 = !DILocation(line: 135, column: 23, scope: !657)
!657 = distinct !DILexicalBlock(scope: !648, file: !3, line: 135, column: 7)
!658 = !DILocation(line: 135, column: 21, scope: !657)
!659 = !DILocation(line: 135, column: 44, scope: !657)
!660 = !DILocation(line: 135, column: 7, scope: !648)
!661 = !DILocation(line: 141, column: 17, scope: !662)
!662 = distinct !DILexicalBlock(scope: !663, file: !3, line: 140, column: 4)
!663 = distinct !DILexicalBlock(scope: !664, file: !3, line: 139, column: 8)
!664 = distinct !DILexicalBlock(scope: !657, file: !3, line: 136, column: 3)
!665 = !DILocation(line: 145, column: 23, scope: !666)
!666 = distinct !DILexicalBlock(scope: !662, file: !3, line: 145, column: 9)
!667 = !DILocation(line: 145, column: 51, scope: !666)
!668 = !DILocation(line: 145, column: 9, scope: !662)
!669 = !DILocation(line: 161, column: 22, scope: !670)
!670 = distinct !DILexicalBlock(scope: !664, file: !3, line: 161, column: 8)
!671 = !DILocation(line: 161, column: 28, scope: !670)
!672 = !DILocation(line: 166, column: 22, scope: !673)
!673 = distinct !DILexicalBlock(scope: !670, file: !3, line: 162, column: 4)
!674 = !{!675, !650, i64 0}
!675 = !{!"A_BLOCK_LINK", !650, i64 0, !581, i64 4}
!676 = !DILocation(line: 167, column: 23, scope: !673)
!677 = !{!675, !581, i64 4}
!678 = !DILocation(line: 167, column: 34, scope: !673)
!679 = !DILocation(line: 167, column: 50, scope: !673)
!680 = !DILocation(line: 167, column: 64, scope: !673)
!681 = !DILocation(line: 167, column: 80, scope: !673)
!682 = !DILocation(line: 167, column: 5, scope: !673)
!683 = distinct !{!683, !682, !684, !577}
!684 = !DILocation(line: 171, column: 5, scope: !673)
!685 = !DILocation(line: 0, scope: !673)
!686 = !DILocation(line: 175, column: 20, scope: !687)
!687 = distinct !DILexicalBlock(scope: !673, file: !3, line: 175, column: 9)
!688 = !DILocation(line: 175, column: 17, scope: !687)
!689 = !DILocation(line: 175, column: 9, scope: !673)
!690 = !DILocation(line: 179, column: 63, scope: !691)
!691 = distinct !DILexicalBlock(scope: !687, file: !3, line: 176, column: 5)
!692 = !DILocation(line: 179, column: 81, scope: !691)
!693 = !DILocation(line: 183, column: 50, scope: !691)
!694 = !DILocation(line: 183, column: 39, scope: !691)
!695 = !DILocation(line: 187, column: 32, scope: !696)
!696 = distinct !DILexicalBlock(scope: !691, file: !3, line: 187, column: 10)
!697 = !DILocation(line: 187, column: 48, scope: !696)
!698 = !DILocation(line: 187, column: 10, scope: !691)
!699 = !DILocation(line: 193, column: 39, scope: !700)
!700 = distinct !DILexicalBlock(scope: !696, file: !3, line: 188, column: 6)
!701 = !DILocation(line: 193, column: 63, scope: !700)
!702 = !DILocation(line: 193, column: 24, scope: !700)
!703 = !DILocation(line: 198, column: 23, scope: !700)
!704 = !DILocation(line: 198, column: 34, scope: !700)
!705 = !DILocation(line: 199, column: 27, scope: !700)
!706 = !DILocation(line: 202, column: 7, scope: !700)
!707 = !DILocation(line: 203, column: 6, scope: !700)
!708 = !DILocation(line: 209, column: 38, scope: !691)
!709 = !DILocation(line: 209, column: 26, scope: !691)
!710 = !DILocation(line: 211, column: 32, scope: !711)
!711 = distinct !DILexicalBlock(scope: !691, file: !3, line: 211, column: 10)
!712 = !DILocation(line: 211, column: 30, scope: !711)
!713 = !DILocation(line: 211, column: 10, scope: !691)
!714 = !DILocation(line: 213, column: 38, scope: !715)
!715 = distinct !DILexicalBlock(scope: !711, file: !3, line: 212, column: 6)
!716 = !DILocation(line: 214, column: 6, scope: !715)
!717 = !DILocation(line: 222, column: 29, scope: !691)
!718 = !DILocation(line: 222, column: 26, scope: !691)
!719 = !DILocation(line: 223, column: 31, scope: !691)
!720 = !DILocation(line: 224, column: 5, scope: !691)
!721 = !DILocation(line: 242, column: 11, scope: !635)
!722 = !DILocation(line: 259, column: 2, scope: !635)
!723 = distinct !DISubprogram(name: "prvHeapInit", scope: !3, file: !3, line: 329, type: !206, scopeLine: 330, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !724)
!724 = !{!725, !726, !727, !728}
!725 = !DILocalVariable(name: "pxFirstFreeBlock", scope: !723, file: !3, line: 331, type: !15)
!726 = !DILocalVariable(name: "pucAlignedHeap", scope: !723, file: !3, line: 332, type: !6)
!727 = !DILocalVariable(name: "uxAddress", scope: !723, file: !3, line: 333, type: !12)
!728 = !DILocalVariable(name: "xTotalHeapSize", scope: !723, file: !3, line: 334, type: !12)
!729 = !DILocation(line: 0, scope: !723)
!730 = !DILocation(line: 350, column: 25, scope: !723)
!731 = !DILocation(line: 351, column: 20, scope: !723)
!732 = !DILocation(line: 358, column: 8, scope: !723)
!733 = !DILocation(line: 359, column: 20, scope: !723)
!734 = !DILocation(line: 360, column: 25, scope: !723)
!735 = !DILocation(line: 365, column: 31, scope: !723)
!736 = !DILocation(line: 366, column: 38, scope: !723)
!737 = !DILocation(line: 366, column: 36, scope: !723)
!738 = !DILocation(line: 369, column: 33, scope: !723)
!739 = !DILocation(line: 370, column: 22, scope: !723)
!740 = !DILocation(line: 373, column: 21, scope: !723)
!741 = !DILocation(line: 374, column: 1, scope: !723)
!742 = distinct !DISubprogram(name: "prvInsertBlockIntoFreeList", scope: !3, file: !3, line: 377, type: !743, scopeLine: 378, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !745)
!743 = !DISubroutineType(types: !744)
!744 = !{null, !15}
!745 = !{!746, !747, !748}
!746 = !DILocalVariable(name: "pxBlockToInsert", arg: 1, scope: !742, file: !3, line: 377, type: !15)
!747 = !DILocalVariable(name: "pxIterator", scope: !742, file: !3, line: 379, type: !15)
!748 = !DILocalVariable(name: "puc", scope: !742, file: !3, line: 380, type: !6)
!749 = !DILocation(line: 0, scope: !742)
!750 = !DILocation(line: 384, column: 7, scope: !751)
!751 = distinct !DILexicalBlock(scope: !742, file: !3, line: 384, column: 2)
!752 = !DILocation(line: 0, scope: !751)
!753 = !DILocation(line: 384, column: 41, scope: !754)
!754 = distinct !DILexicalBlock(scope: !751, file: !3, line: 384, column: 2)
!755 = !DILocation(line: 384, column: 57, scope: !754)
!756 = !DILocation(line: 384, column: 2, scope: !751)
!757 = distinct !{!757, !756, !758, !577}
!758 = !DILocation(line: 387, column: 2, scope: !751)
!759 = !DILocation(line: 391, column: 8, scope: !742)
!760 = !DILocation(line: 392, column: 26, scope: !761)
!761 = distinct !DILexicalBlock(scope: !742, file: !3, line: 392, column: 6)
!762 = !DILocation(line: 392, column: 12, scope: !761)
!763 = !DILocation(line: 392, column: 42, scope: !761)
!764 = !DILocation(line: 392, column: 39, scope: !761)
!765 = !DILocation(line: 392, column: 6, scope: !742)
!766 = !DILocation(line: 394, column: 26, scope: !767)
!767 = distinct !DILexicalBlock(scope: !761, file: !3, line: 393, column: 2)
!768 = !DILocation(line: 396, column: 2, scope: !767)
!769 = !DILocation(line: 404, column: 8, scope: !742)
!770 = !DILocation(line: 405, column: 31, scope: !771)
!771 = distinct !DILexicalBlock(scope: !742, file: !3, line: 405, column: 6)
!772 = !DILocation(line: 405, column: 12, scope: !771)
!773 = !DILocation(line: 405, column: 47, scope: !771)
!774 = !DILocation(line: 405, column: 44, scope: !771)
!775 = !DILocation(line: 405, column: 6, scope: !742)
!776 = !DILocation(line: 410, column: 64, scope: !777)
!777 = distinct !DILexicalBlock(scope: !778, file: !3, line: 408, column: 3)
!778 = distinct !DILexicalBlock(scope: !779, file: !3, line: 407, column: 7)
!779 = distinct !DILexicalBlock(scope: !771, file: !3, line: 406, column: 2)
!780 = !DILocation(line: 410, column: 32, scope: !777)
!781 = !DILocation(line: 411, column: 68, scope: !777)
!782 = !DILocation(line: 412, column: 3, scope: !777)
!783 = !DILocation(line: 0, scope: !771)
!784 = !DILocation(line: 427, column: 17, scope: !785)
!785 = distinct !DILexicalBlock(scope: !742, file: !3, line: 427, column: 6)
!786 = !DILocation(line: 427, column: 6, scope: !742)
!787 = !DILocation(line: 429, column: 31, scope: !788)
!788 = distinct !DILexicalBlock(scope: !785, file: !3, line: 428, column: 2)
!789 = !DILocation(line: 430, column: 2, scope: !788)
!790 = !DILocation(line: 435, column: 1, scope: !742)
!791 = distinct !DISubprogram(name: "vPortFree", scope: !3, file: !3, line: 263, type: !629, scopeLine: 264, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !792)
!792 = !{!793, !794, !795}
!793 = !DILocalVariable(name: "pv", arg: 1, scope: !791, file: !3, line: 263, type: !5)
!794 = !DILocalVariable(name: "puc", scope: !791, file: !3, line: 265, type: !6)
!795 = !DILocalVariable(name: "pxLink", scope: !791, file: !3, line: 266, type: !15)
!796 = !DILocation(line: 0, scope: !791)
!797 = !DILocation(line: 268, column: 9, scope: !798)
!798 = distinct !DILexicalBlock(scope: !791, file: !3, line: 268, column: 6)
!799 = !DILocation(line: 268, column: 6, scope: !791)
!800 = !DILocation(line: 272, column: 7, scope: !801)
!801 = distinct !DILexicalBlock(scope: !798, file: !3, line: 269, column: 2)
!802 = !DILocation(line: 275, column: 12, scope: !801)
!803 = !DILocation(line: 281, column: 17, scope: !804)
!804 = distinct !DILexicalBlock(scope: !801, file: !3, line: 281, column: 7)
!805 = !DILocation(line: 281, column: 30, scope: !804)
!806 = !DILocation(line: 281, column: 28, scope: !804)
!807 = !DILocation(line: 281, column: 51, scope: !804)
!808 = !DILocation(line: 281, column: 7, scope: !801)
!809 = !DILocation(line: 283, column: 16, scope: !810)
!810 = distinct !DILexicalBlock(scope: !811, file: !3, line: 283, column: 8)
!811 = distinct !DILexicalBlock(scope: !804, file: !3, line: 282, column: 3)
!812 = !DILocation(line: 283, column: 32, scope: !810)
!813 = !DILocation(line: 283, column: 8, scope: !811)
!814 = !DILocation(line: 287, column: 27, scope: !815)
!815 = distinct !DILexicalBlock(scope: !810, file: !3, line: 284, column: 4)
!816 = !DILocation(line: 287, column: 24, scope: !815)
!817 = !DILocation(line: 289, column: 5, scope: !815)
!818 = !DILocation(line: 292, column: 37, scope: !819)
!819 = distinct !DILexicalBlock(scope: !815, file: !3, line: 290, column: 5)
!820 = !DILocation(line: 292, column: 26, scope: !819)
!821 = !DILocation(line: 294, column: 6, scope: !819)
!822 = !DILocation(line: 296, column: 14, scope: !815)
!823 = !DILocation(line: 297, column: 4, scope: !815)
!824 = !DILocation(line: 308, column: 1, scope: !791)
!825 = distinct !DISubprogram(name: "xPortGetFreeHeapSize", scope: !3, file: !3, line: 311, type: !826, scopeLine: 312, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !587)
!826 = !DISubroutineType(types: !827)
!827 = !{!12}
!828 = !DILocation(line: 313, column: 9, scope: !825)
!829 = !DILocation(line: 313, column: 2, scope: !825)
!830 = distinct !DISubprogram(name: "xPortGetMinimumEverFreeHeapSize", scope: !3, file: !3, line: 317, type: !826, scopeLine: 318, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !587)
!831 = !DILocation(line: 319, column: 9, scope: !830)
!832 = !DILocation(line: 319, column: 2, scope: !830)
!833 = distinct !DISubprogram(name: "vPortInitialiseBlocks", scope: !3, file: !3, line: 323, type: !206, scopeLine: 324, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !587)
!834 = !DILocation(line: 326, column: 1, scope: !833)
!835 = distinct !DISubprogram(name: "vListInitialise", scope: !353, file: !353, line: 37, type: !836, scopeLine: 38, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !352, retainedNodes: !841)
!836 = !DISubroutineType(types: !837)
!837 = !{null, !838}
!838 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !839)
!839 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !840, size: 32)
!840 = !DIDerivedType(tag: DW_TAG_typedef, name: "List_t", file: !81, line: 171, baseType: !366)
!841 = !{!842}
!842 = !DILocalVariable(name: "pxList", arg: 1, scope: !835, file: !353, line: 37, type: !838)
!843 = !DILocation(line: 0, scope: !835)
!844 = !DILocation(line: 42, column: 48, scope: !835)
!845 = !DILocation(line: 42, column: 10, scope: !835)
!846 = !DILocation(line: 42, column: 18, scope: !835)
!847 = !{!848, !650, i64 4}
!848 = !{!"xLIST", !849, i64 0, !650, i64 4, !850, i64 8}
!849 = !{!"long", !565, i64 0}
!850 = !{!"xMINI_LIST_ITEM", !581, i64 0, !650, i64 4, !650, i64 8}
!851 = !DILocation(line: 46, column: 19, scope: !835)
!852 = !DILocation(line: 46, column: 30, scope: !835)
!853 = !{!848, !581, i64 8}
!854 = !DILocation(line: 50, column: 19, scope: !835)
!855 = !DILocation(line: 50, column: 26, scope: !835)
!856 = !{!848, !650, i64 12}
!857 = !DILocation(line: 51, column: 19, scope: !835)
!858 = !DILocation(line: 51, column: 30, scope: !835)
!859 = !{!848, !650, i64 16}
!860 = !DILocation(line: 53, column: 10, scope: !835)
!861 = !DILocation(line: 53, column: 26, scope: !835)
!862 = !{!848, !849, i64 0}
!863 = !DILocation(line: 59, column: 1, scope: !835)
!864 = distinct !DISubprogram(name: "vListInitialiseItem", scope: !353, file: !353, line: 62, type: !865, scopeLine: 63, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !352, retainedNodes: !868)
!865 = !DISubroutineType(types: !866)
!866 = !{null, !867}
!867 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !355)
!868 = !{!869}
!869 = !DILocalVariable(name: "pxItem", arg: 1, scope: !864, file: !353, line: 62, type: !867)
!870 = !DILocation(line: 0, scope: !864)
!871 = !DILocation(line: 65, column: 10, scope: !864)
!872 = !DILocation(line: 65, column: 22, scope: !864)
!873 = !{!874, !650, i64 16}
!874 = !{!"xLIST_ITEM", !581, i64 0, !650, i64 4, !650, i64 8, !650, i64 12, !650, i64 16}
!875 = !DILocation(line: 71, column: 1, scope: !864)
!876 = distinct !DISubprogram(name: "vListInsertEnd", scope: !353, file: !353, line: 74, type: !877, scopeLine: 75, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !352, retainedNodes: !879)
!877 = !DISubroutineType(types: !878)
!878 = !{null, !838, !867}
!879 = !{!880, !881, !882}
!880 = !DILocalVariable(name: "pxList", arg: 1, scope: !876, file: !353, line: 74, type: !838)
!881 = !DILocalVariable(name: "pxNewListItem", arg: 2, scope: !876, file: !353, line: 74, type: !867)
!882 = !DILocalVariable(name: "pxIndex", scope: !876, file: !353, line: 76, type: !867)
!883 = !DILocation(line: 0, scope: !876)
!884 = !DILocation(line: 76, column: 38, scope: !876)
!885 = !DILocation(line: 87, column: 17, scope: !876)
!886 = !DILocation(line: 87, column: 24, scope: !876)
!887 = !{!874, !650, i64 4}
!888 = !DILocation(line: 88, column: 39, scope: !876)
!889 = !{!874, !650, i64 8}
!890 = !DILocation(line: 88, column: 17, scope: !876)
!891 = !DILocation(line: 88, column: 28, scope: !876)
!892 = !DILocation(line: 93, column: 11, scope: !876)
!893 = !DILocation(line: 93, column: 23, scope: !876)
!894 = !DILocation(line: 93, column: 30, scope: !876)
!895 = !DILocation(line: 94, column: 22, scope: !876)
!896 = !DILocation(line: 97, column: 17, scope: !876)
!897 = !DILocation(line: 97, column: 29, scope: !876)
!898 = !DILocation(line: 99, column: 12, scope: !876)
!899 = !DILocation(line: 99, column: 29, scope: !876)
!900 = !DILocation(line: 100, column: 1, scope: !876)
!901 = distinct !DISubprogram(name: "vListInsert", scope: !353, file: !353, line: 103, type: !877, scopeLine: 104, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !352, retainedNodes: !902)
!902 = !{!903, !904, !905, !906}
!903 = !DILocalVariable(name: "pxList", arg: 1, scope: !901, file: !353, line: 103, type: !838)
!904 = !DILocalVariable(name: "pxNewListItem", arg: 2, scope: !901, file: !353, line: 103, type: !867)
!905 = !DILocalVariable(name: "pxIterator", scope: !901, file: !353, line: 105, type: !355)
!906 = !DILocalVariable(name: "xValueOfInsertion", scope: !901, file: !353, line: 106, type: !907)
!907 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !54)
!908 = !DILocation(line: 0, scope: !901)
!909 = !DILocation(line: 106, column: 53, scope: !901)
!910 = !{!874, !581, i64 0}
!911 = !DILocation(line: 122, column: 24, scope: !912)
!912 = distinct !DILexicalBlock(scope: !901, file: !353, line: 122, column: 6)
!913 = !DILocation(line: 122, column: 6, scope: !901)
!914 = !DILocation(line: 124, column: 33, scope: !915)
!915 = distinct !DILexicalBlock(scope: !912, file: !353, line: 123, column: 2)
!916 = !DILocation(line: 157, column: 38, scope: !901)
!917 = !DILocation(line: 125, column: 2, scope: !915)
!918 = !DILocation(line: 150, column: 49, scope: !919)
!919 = distinct !DILexicalBlock(scope: !920, file: !353, line: 150, column: 3)
!920 = distinct !DILexicalBlock(scope: !912, file: !353, line: 127, column: 2)
!921 = !DILocation(line: 150, column: 21, scope: !919)
!922 = !DILocation(line: 150, column: 8, scope: !919)
!923 = !DILocation(line: 0, scope: !919)
!924 = !DILocation(line: 150, column: 73, scope: !925)
!925 = distinct !DILexicalBlock(scope: !919, file: !353, line: 150, column: 3)
!926 = !DILocation(line: 150, column: 81, scope: !925)
!927 = !DILocation(line: 150, column: 92, scope: !925)
!928 = !DILocation(line: 150, column: 3, scope: !919)
!929 = distinct !{!929, !928, !930, !577}
!930 = !DILocation(line: 154, column: 3, scope: !919)
!931 = !DILocation(line: 0, scope: !912)
!932 = !DILocation(line: 157, column: 17, scope: !901)
!933 = !DILocation(line: 157, column: 24, scope: !901)
!934 = !DILocation(line: 158, column: 25, scope: !901)
!935 = !DILocation(line: 158, column: 36, scope: !901)
!936 = !DILocation(line: 159, column: 17, scope: !901)
!937 = !DILocation(line: 159, column: 28, scope: !901)
!938 = !DILocation(line: 160, column: 21, scope: !901)
!939 = !DILocation(line: 164, column: 17, scope: !901)
!940 = !DILocation(line: 164, column: 29, scope: !901)
!941 = !DILocation(line: 166, column: 12, scope: !901)
!942 = !DILocation(line: 166, column: 29, scope: !901)
!943 = !DILocation(line: 167, column: 1, scope: !901)
!944 = distinct !DISubprogram(name: "uxListRemove", scope: !353, file: !353, line: 170, type: !945, scopeLine: 171, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !352, retainedNodes: !947)
!945 = !DISubroutineType(types: !946)
!946 = !{!56, !867}
!947 = !{!948, !949}
!948 = !DILocalVariable(name: "pxItemToRemove", arg: 1, scope: !944, file: !353, line: 170, type: !867)
!949 = !DILocalVariable(name: "pxList", scope: !944, file: !353, line: 174, type: !838)
!950 = !DILocation(line: 0, scope: !944)
!951 = !DILocation(line: 174, column: 41, scope: !944)
!952 = !DILocation(line: 176, column: 55, scope: !944)
!953 = !DILocation(line: 176, column: 18, scope: !944)
!954 = !DILocation(line: 176, column: 26, scope: !944)
!955 = !DILocation(line: 176, column: 37, scope: !944)
!956 = !DILocation(line: 177, column: 18, scope: !944)
!957 = !DILocation(line: 177, column: 30, scope: !944)
!958 = !DILocation(line: 177, column: 37, scope: !944)
!959 = !DILocation(line: 183, column: 14, scope: !960)
!960 = distinct !DILexicalBlock(scope: !944, file: !353, line: 183, column: 6)
!961 = !DILocation(line: 183, column: 22, scope: !960)
!962 = !DILocation(line: 183, column: 6, scope: !944)
!963 = !DILocation(line: 185, column: 19, scope: !964)
!964 = distinct !DILexicalBlock(scope: !960, file: !353, line: 184, column: 2)
!965 = !DILocation(line: 186, column: 2, scope: !964)
!966 = !DILocation(line: 192, column: 30, scope: !944)
!967 = !DILocation(line: 193, column: 12, scope: !944)
!968 = !DILocation(line: 193, column: 29, scope: !944)
!969 = !DILocation(line: 195, column: 17, scope: !944)
!970 = !DILocation(line: 195, column: 2, scope: !944)
!971 = distinct !DISubprogram(name: "pxPortInitialiseStack", scope: !43, file: !43, line: 174, type: !972, scopeLine: 175, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !42, retainedNodes: !977)
!972 = !DISubroutineType(types: !973)
!973 = !{!107, !107, !974, !5}
!974 = !DIDerivedType(tag: DW_TAG_typedef, name: "TaskFunction_t", file: !975, line: 35, baseType: !976)
!975 = !DIFile(filename: "./freertos/projdefs.h", directory: "/home/mjshen/RTOSExploration/Amazfitbip-FreeRTOS", checksumkind: CSK_MD5, checksum: "1280b022bdf0485e48a2512dab20ba0d")
!976 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !629, size: 32)
!977 = !{!978, !979, !980}
!978 = !DILocalVariable(name: "pxTopOfStack", arg: 1, scope: !971, file: !43, line: 174, type: !107)
!979 = !DILocalVariable(name: "pxCode", arg: 2, scope: !971, file: !43, line: 174, type: !974)
!980 = !DILocalVariable(name: "pvParameters", arg: 3, scope: !971, file: !43, line: 174, type: !5)
!981 = !DILocation(line: 0, scope: !971)
!982 = !DILocation(line: 178, column: 14, scope: !971)
!983 = !DILocation(line: 179, column: 16, scope: !971)
!984 = !DILocation(line: 180, column: 14, scope: !971)
!985 = !DILocation(line: 181, column: 20, scope: !971)
!986 = !DILocation(line: 181, column: 45, scope: !971)
!987 = !DILocation(line: 181, column: 16, scope: !971)
!988 = !DILocation(line: 182, column: 14, scope: !971)
!989 = !DILocation(line: 183, column: 16, scope: !971)
!990 = !DILocation(line: 184, column: 15, scope: !971)
!991 = !DILocation(line: 185, column: 18, scope: !971)
!992 = !DILocation(line: 185, column: 16, scope: !971)
!993 = !DILocation(line: 186, column: 15, scope: !971)
!994 = !DILocation(line: 188, column: 2, scope: !971)
!995 = distinct !DISubprogram(name: "prvTaskExitError", scope: !43, file: !43, line: 192, type: !206, scopeLine: 193, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !42, retainedNodes: !996)
!996 = !{!997}
!997 = !DILocalVariable(name: "ulDummy", scope: !995, file: !43, line: 194, type: !50)
!998 = !DILocation(line: 194, column: 1, scope: !995)
!999 = !DILocation(line: 194, column: 19, scope: !995)
!1000 = !DILocation(line: 195, column: 2, scope: !1001, inlinedAt: !1004)
!1001 = distinct !DISubprogram(name: "vPortRaiseBASEPRI", scope: !46, file: !46, line: 191, type: !206, scopeLine: 192, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !42, retainedNodes: !1002)
!1002 = !{!1003}
!1003 = !DILocalVariable(name: "ulNewBASEPRI", scope: !1001, file: !46, line: 193, type: !47)
!1004 = distinct !DILocation(line: 203, column: 2, scope: !995)
!1005 = !{i64 197166, i64 197200, i64 197237, i64 197265}
!1006 = !DILocation(line: 0, scope: !1001, inlinedAt: !1004)
!1007 = !DILocation(line: 204, column: 2, scope: !995)
!1008 = !DILocation(line: 204, column: 9, scope: !995)
!1009 = !DILocation(line: 204, column: 17, scope: !995)
!1010 = distinct !{!1010, !1007, !1011, !577}
!1011 = !DILocation(line: 213, column: 2, scope: !995)
!1012 = !DILocation(line: 214, column: 1, scope: !995)
!1013 = distinct !DISubprogram(name: "vPortSVCHandler", scope: !43, file: !43, line: 217, type: !206, scopeLine: 218, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !42, retainedNodes: !587)
!1014 = !DILocation(line: 219, column: 2, scope: !1013)
!1015 = !{i64 8905, i64 8973, i64 9063, i64 9155, i64 9298, i64 9365, i64 9388, i64 9417, i64 9449, i64 9479, i64 9504, i64 9524, i64 9550}
!1016 = !DILocation(line: 234, column: 1, scope: !1013)
!1017 = distinct !DISubprogram(name: "xPortStartScheduler", scope: !43, file: !43, line: 257, type: !1018, scopeLine: 258, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !42, retainedNodes: !587)
!1018 = !DISubroutineType(types: !1019)
!1019 = !{!51}
!1020 = !DILocation(line: 326, column: 23, scope: !1017)
!1021 = !DILocation(line: 327, column: 23, scope: !1017)
!1022 = !DILocation(line: 331, column: 2, scope: !1017)
!1023 = !DILocation(line: 334, column: 20, scope: !1017)
!1024 = !{!849, !849, i64 0}
!1025 = !DILocation(line: 337, column: 2, scope: !1017)
!1026 = !DILocation(line: 345, column: 2, scope: !1017)
!1027 = !DILocation(line: 346, column: 2, scope: !1017)
!1028 = !DILocation(line: 349, column: 2, scope: !1017)
!1029 = distinct !DISubprogram(name: "vPortSetupTimerInterrupt", scope: !43, file: !43, line: 617, type: !206, scopeLine: 618, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !42, retainedNodes: !587)
!1030 = !DILocation(line: 629, column: 28, scope: !1029)
!1031 = !DILocation(line: 630, column: 37, scope: !1029)
!1032 = !DILocation(line: 633, column: 28, scope: !1029)
!1033 = !DILocation(line: 634, column: 28, scope: !1029)
!1034 = !DILocation(line: 635, column: 1, scope: !1029)
!1035 = distinct !DISubprogram(name: "prvPortStartFirstTask", scope: !43, file: !43, line: 237, type: !206, scopeLine: 238, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !42, retainedNodes: !587)
!1036 = !DILocation(line: 239, column: 2, scope: !1035)
!1037 = !{i64 9744, i64 9834, i64 9862, i64 9890, i64 9966, i64 10023, i64 10046, i64 10066, i64 10086, i64 10147}
!1038 = !DILocation(line: 251, column: 1, scope: !1035)
!1039 = distinct !DISubprogram(name: "vPortEndScheduler", scope: !43, file: !43, line: 353, type: !206, scopeLine: 354, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !42, retainedNodes: !587)
!1040 = !DILocation(line: 358, column: 1, scope: !1039)
!1041 = distinct !DISubprogram(name: "vPortEnterCritical", scope: !43, file: !43, line: 361, type: !206, scopeLine: 362, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !42, retainedNodes: !587)
!1042 = !DILocation(line: 195, column: 2, scope: !1001, inlinedAt: !1043)
!1043 = distinct !DILocation(line: 363, column: 2, scope: !1041)
!1044 = !DILocation(line: 0, scope: !1001, inlinedAt: !1043)
!1045 = !DILocation(line: 364, column: 19, scope: !1041)
!1046 = !DILocation(line: 375, column: 1, scope: !1041)
!1047 = distinct !DISubprogram(name: "vPortExitCritical", scope: !43, file: !43, line: 378, type: !206, scopeLine: 379, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !42, retainedNodes: !587)
!1048 = !DILocation(line: 381, column: 19, scope: !1047)
!1049 = !DILocation(line: 382, column: 24, scope: !1050)
!1050 = distinct !DILexicalBlock(scope: !1047, file: !43, line: 382, column: 6)
!1051 = !DILocation(line: 382, column: 6, scope: !1047)
!1052 = !DILocalVariable(name: "ulNewMaskValue", arg: 1, scope: !1053, file: !46, line: 227, type: !47)
!1053 = distinct !DISubprogram(name: "vPortSetBASEPRI", scope: !46, file: !46, line: 227, type: !1054, scopeLine: 228, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !42, retainedNodes: !1056)
!1054 = !DISubroutineType(types: !1055)
!1055 = !{null, !47}
!1056 = !{!1052}
!1057 = !DILocation(line: 0, scope: !1053, inlinedAt: !1058)
!1058 = distinct !DILocation(line: 384, column: 3, scope: !1059)
!1059 = distinct !DILexicalBlock(scope: !1050, file: !43, line: 383, column: 2)
!1060 = !DILocation(line: 229, column: 2, scope: !1053, inlinedAt: !1058)
!1061 = !{i64 198143}
!1062 = !DILocation(line: 385, column: 2, scope: !1059)
!1063 = !DILocation(line: 386, column: 1, scope: !1047)
!1064 = distinct !DISubprogram(name: "xPortPendSVHandler", scope: !43, file: !43, line: 389, type: !206, scopeLine: 390, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !42, retainedNodes: !587)
!1065 = !DILocation(line: 393, column: 2, scope: !1064)
!1066 = !{i64 15069, i64 15096, i64 15116, i64 15133, i64 15212, i64 15238, i64 15255, i64 15323, i64 15415, i64 15432, i64 15464, i64 15489, i64 15518, i64 15551, i64 15576, i64 15605, i64 15637, i64 15719, i64 15745, i64 15834, i64 15891, i64 15917, i64 15937, i64 15959, i64 15976, i64 15999}
!1067 = !DILocation(line: 423, column: 1, scope: !1064)
!1068 = distinct !DISubprogram(name: "xPortSysTickHandler", scope: !43, file: !43, line: 426, type: !206, scopeLine: 427, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !42, retainedNodes: !587)
!1069 = !DILocation(line: 195, column: 2, scope: !1001, inlinedAt: !1070)
!1070 = distinct !DILocation(line: 432, column: 2, scope: !1068)
!1071 = !DILocation(line: 0, scope: !1001, inlinedAt: !1070)
!1072 = !DILocation(line: 435, column: 7, scope: !1073)
!1073 = distinct !DILexicalBlock(scope: !1074, file: !43, line: 435, column: 7)
!1074 = distinct !DILexicalBlock(scope: !1068, file: !43, line: 433, column: 2)
!1075 = !DILocation(line: 435, column: 28, scope: !1073)
!1076 = !DILocation(line: 435, column: 7, scope: !1074)
!1077 = !DILocation(line: 439, column: 26, scope: !1078)
!1078 = distinct !DILexicalBlock(scope: !1073, file: !43, line: 436, column: 3)
!1079 = !DILocation(line: 440, column: 3, scope: !1078)
!1080 = !DILocation(line: 0, scope: !1053, inlinedAt: !1081)
!1081 = distinct !DILocation(line: 442, column: 2, scope: !1068)
!1082 = !DILocation(line: 229, column: 2, scope: !1053, inlinedAt: !1081)
!1083 = !DILocation(line: 443, column: 1, scope: !1068)
!1084 = distinct !DISubprogram(name: "xQueueGenericReset", scope: !378, file: !378, line: 255, type: !1085, scopeLine: 256, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !377, retainedNodes: !1090)
!1085 = !DISubroutineType(types: !1086)
!1086 = !{!51, !1087, !51}
!1087 = !DIDerivedType(tag: DW_TAG_typedef, name: "QueueHandle_t", file: !1088, line: 48, baseType: !1089)
!1088 = !DIFile(filename: "./freertos/queue.h", directory: "/home/mjshen/RTOSExploration/Amazfitbip-FreeRTOS", checksumkind: CSK_MD5, checksum: "f83e2a840d59ac28c87e655abfa5e2e8")
!1089 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !386, size: 32)
!1090 = !{!1091, !1092, !1093}
!1091 = !DILocalVariable(name: "xQueue", arg: 1, scope: !1084, file: !378, line: 255, type: !1087)
!1092 = !DILocalVariable(name: "xNewQueue", arg: 2, scope: !1084, file: !378, line: 255, type: !51)
!1093 = !DILocalVariable(name: "pxQueue", scope: !1084, file: !378, line: 257, type: !1094)
!1094 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !383)
!1095 = !DILocation(line: 0, scope: !1084)
!1096 = !DILocation(line: 261, column: 2, scope: !1084)
!1097 = !DILocation(line: 263, column: 39, scope: !1098)
!1098 = distinct !DILexicalBlock(scope: !1084, file: !378, line: 262, column: 2)
!1099 = !{!1100, !650, i64 0}
!1100 = !{!"QueueDefinition", !650, i64 0, !650, i64 4, !565, i64 8, !848, i64 16, !848, i64 36, !849, i64 56, !849, i64 60, !849, i64 64, !565, i64 68, !565, i64 69}
!1101 = !DILocation(line: 263, column: 59, scope: !1098)
!1102 = !{!1100, !849, i64 60}
!1103 = !DILocation(line: 263, column: 79, scope: !1098)
!1104 = !{!1100, !849, i64 64}
!1105 = !DILocation(line: 263, column: 68, scope: !1098)
!1106 = !DILocation(line: 263, column: 46, scope: !1098)
!1107 = !DILocation(line: 263, column: 21, scope: !1098)
!1108 = !DILocation(line: 263, column: 28, scope: !1098)
!1109 = !DILocation(line: 264, column: 12, scope: !1098)
!1110 = !DILocation(line: 264, column: 30, scope: !1098)
!1111 = !{!1100, !849, i64 56}
!1112 = !DILocation(line: 265, column: 12, scope: !1098)
!1113 = !DILocation(line: 265, column: 22, scope: !1098)
!1114 = !{!1100, !650, i64 4}
!1115 = !DILocation(line: 266, column: 74, scope: !1098)
!1116 = !DILocation(line: 266, column: 81, scope: !1098)
!1117 = !DILocation(line: 266, column: 50, scope: !1098)
!1118 = !DILocation(line: 266, column: 21, scope: !1098)
!1119 = !DILocation(line: 266, column: 32, scope: !1098)
!1120 = !DILocation(line: 267, column: 12, scope: !1098)
!1121 = !DILocation(line: 267, column: 20, scope: !1098)
!1122 = !{!1100, !565, i64 68}
!1123 = !DILocation(line: 268, column: 12, scope: !1098)
!1124 = !DILocation(line: 268, column: 20, scope: !1098)
!1125 = !{!1100, !565, i64 69}
!1126 = !DILocation(line: 270, column: 17, scope: !1127)
!1127 = distinct !DILexicalBlock(scope: !1098, file: !378, line: 270, column: 7)
!1128 = !DILocation(line: 0, scope: !1127)
!1129 = !DILocation(line: 270, column: 7, scope: !1098)
!1130 = !DILocation(line: 277, column: 8, scope: !1131)
!1131 = distinct !DILexicalBlock(scope: !1132, file: !378, line: 277, column: 8)
!1132 = distinct !DILexicalBlock(scope: !1127, file: !378, line: 271, column: 3)
!1133 = !{!1100, !849, i64 16}
!1134 = !DILocation(line: 277, column: 8, scope: !1132)
!1135 = !DILocation(line: 279, column: 9, scope: !1136)
!1136 = distinct !DILexicalBlock(scope: !1137, file: !378, line: 279, column: 9)
!1137 = distinct !DILexicalBlock(scope: !1131, file: !378, line: 278, column: 4)
!1138 = !DILocation(line: 279, column: 71, scope: !1136)
!1139 = !DILocation(line: 279, column: 9, scope: !1137)
!1140 = !DILocation(line: 281, column: 6, scope: !1141)
!1141 = distinct !DILexicalBlock(scope: !1142, file: !378, line: 281, column: 6)
!1142 = distinct !DILexicalBlock(scope: !1136, file: !378, line: 280, column: 5)
!1143 = !{i64 2148075409}
!1144 = !{i64 2148075460}
!1145 = !DILocation(line: 282, column: 5, scope: !1142)
!1146 = !DILocation(line: 296, column: 4, scope: !1147)
!1147 = distinct !DILexicalBlock(scope: !1127, file: !378, line: 294, column: 3)
!1148 = !DILocation(line: 297, column: 33, scope: !1147)
!1149 = !DILocation(line: 297, column: 4, scope: !1147)
!1150 = !DILocation(line: 300, column: 2, scope: !1084)
!1151 = !DILocation(line: 304, column: 2, scope: !1084)
!1152 = distinct !DISubprogram(name: "xQueueGenericCreate", scope: !378, file: !378, line: 368, type: !1153, scopeLine: 369, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !377, retainedNodes: !1157)
!1153 = !DISubroutineType(types: !1154)
!1154 = !{!1087, !1155, !1155, !1156}
!1155 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !56)
!1156 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !7)
!1157 = !{!1158, !1159, !1160, !1161, !1162, !1163}
!1158 = !DILocalVariable(name: "uxQueueLength", arg: 1, scope: !1152, file: !378, line: 368, type: !1155)
!1159 = !DILocalVariable(name: "uxItemSize", arg: 2, scope: !1152, file: !378, line: 368, type: !1155)
!1160 = !DILocalVariable(name: "ucQueueType", arg: 3, scope: !1152, file: !378, line: 368, type: !1156)
!1161 = !DILocalVariable(name: "pxNewQueue", scope: !1152, file: !378, line: 370, type: !383)
!1162 = !DILocalVariable(name: "xQueueSizeInBytes", scope: !1152, file: !378, line: 371, type: !12)
!1163 = !DILocalVariable(name: "pucQueueStorage", scope: !1152, file: !378, line: 372, type: !6)
!1164 = !DILocation(line: 0, scope: !1152)
!1165 = !DILocation(line: 376, column: 18, scope: !1166)
!1166 = distinct !DILexicalBlock(scope: !1152, file: !378, line: 376, column: 7)
!1167 = !DILocation(line: 376, column: 7, scope: !1152)
!1168 = !DILocation(line: 397, column: 30, scope: !1152)
!1169 = !DILocation(line: 397, column: 16, scope: !1152)
!1170 = !DILocation(line: 399, column: 18, scope: !1171)
!1171 = distinct !DILexicalBlock(scope: !1152, file: !378, line: 399, column: 7)
!1172 = !DILocation(line: 399, column: 7, scope: !1152)
!1173 = !DILocation(line: 404, column: 20, scope: !1174)
!1174 = distinct !DILexicalBlock(scope: !1171, file: !378, line: 400, column: 3)
!1175 = !DILocation(line: 415, column: 4, scope: !1174)
!1176 = !DILocation(line: 416, column: 3, scope: !1174)
!1177 = !DILocation(line: 423, column: 3, scope: !1152)
!1178 = distinct !DISubprogram(name: "prvInitialiseNewQueue", scope: !378, file: !378, line: 429, type: !1179, scopeLine: 430, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !377, retainedNodes: !1181)
!1179 = !DISubroutineType(types: !1180)
!1180 = !{null, !1155, !1155, !6, !1156, !383}
!1181 = !{!1182, !1183, !1184, !1185, !1186}
!1182 = !DILocalVariable(name: "uxQueueLength", arg: 1, scope: !1178, file: !378, line: 429, type: !1155)
!1183 = !DILocalVariable(name: "uxItemSize", arg: 2, scope: !1178, file: !378, line: 429, type: !1155)
!1184 = !DILocalVariable(name: "pucQueueStorage", arg: 3, scope: !1178, file: !378, line: 429, type: !6)
!1185 = !DILocalVariable(name: "ucQueueType", arg: 4, scope: !1178, file: !378, line: 429, type: !1156)
!1186 = !DILocalVariable(name: "pxNewQueue", arg: 5, scope: !1178, file: !378, line: 429, type: !383)
!1187 = !DILocation(line: 0, scope: !1178)
!1188 = !DILocation(line: 435, column: 17, scope: !1189)
!1189 = distinct !DILexicalBlock(scope: !1178, file: !378, line: 435, column: 6)
!1190 = !DILocation(line: 435, column: 6, scope: !1178)
!1191 = !DILocation(line: 441, column: 22, scope: !1192)
!1192 = distinct !DILexicalBlock(scope: !1189, file: !378, line: 436, column: 2)
!1193 = !DILocation(line: 442, column: 2, scope: !1192)
!1194 = !DILocation(line: 446, column: 15, scope: !1195)
!1195 = distinct !DILexicalBlock(scope: !1189, file: !378, line: 444, column: 2)
!1196 = !DILocation(line: 446, column: 22, scope: !1195)
!1197 = !DILocation(line: 451, column: 14, scope: !1178)
!1198 = !DILocation(line: 451, column: 23, scope: !1178)
!1199 = !DILocation(line: 452, column: 14, scope: !1178)
!1200 = !DILocation(line: 452, column: 25, scope: !1178)
!1201 = !DILocation(line: 453, column: 11, scope: !1178)
!1202 = !DILocation(line: 468, column: 1, scope: !1178)
!1203 = distinct !DISubprogram(name: "xQueueCreateMutex", scope: !378, file: !378, line: 503, type: !1204, scopeLine: 504, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !377, retainedNodes: !1206)
!1204 = !DISubroutineType(types: !1205)
!1205 = !{!1087, !1156}
!1206 = !{!1207, !1208, !1209, !1210}
!1207 = !DILocalVariable(name: "ucQueueType", arg: 1, scope: !1203, file: !378, line: 503, type: !1156)
!1208 = !DILocalVariable(name: "xNewQueue", scope: !1203, file: !378, line: 505, type: !1087)
!1209 = !DILocalVariable(name: "uxMutexLength", scope: !1203, file: !378, line: 506, type: !1155)
!1210 = !DILocalVariable(name: "uxMutexSize", scope: !1203, file: !378, line: 506, type: !1155)
!1211 = !DILocation(line: 0, scope: !1203)
!1212 = !DILocation(line: 508, column: 15, scope: !1203)
!1213 = !DILocation(line: 509, column: 3, scope: !1203)
!1214 = !DILocation(line: 511, column: 3, scope: !1203)
!1215 = distinct !DISubprogram(name: "prvInitialiseMutex", scope: !378, file: !378, line: 473, type: !1216, scopeLine: 474, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !377, retainedNodes: !1218)
!1216 = !DISubroutineType(types: !1217)
!1217 = !{null, !383}
!1218 = !{!1219}
!1219 = !DILocalVariable(name: "pxNewQueue", arg: 1, scope: !1215, file: !378, line: 473, type: !383)
!1220 = !DILocation(line: 0, scope: !1215)
!1221 = !DILocation(line: 475, column: 18, scope: !1222)
!1222 = distinct !DILexicalBlock(scope: !1215, file: !378, line: 475, column: 7)
!1223 = !DILocation(line: 475, column: 7, scope: !1215)
!1224 = !DILocation(line: 481, column: 16, scope: !1225)
!1225 = distinct !DILexicalBlock(scope: !1222, file: !378, line: 476, column: 3)
!1226 = !DILocation(line: 481, column: 29, scope: !1225)
!1227 = !DILocation(line: 481, column: 42, scope: !1225)
!1228 = !DILocation(line: 482, column: 16, scope: !1225)
!1229 = !DILocation(line: 482, column: 28, scope: !1225)
!1230 = !DILocation(line: 485, column: 29, scope: !1225)
!1231 = !DILocation(line: 485, column: 50, scope: !1225)
!1232 = !DILocation(line: 490, column: 13, scope: !1225)
!1233 = !DILocation(line: 491, column: 3, scope: !1225)
!1234 = !DILocation(line: 496, column: 2, scope: !1215)
!1235 = distinct !DISubprogram(name: "xQueueGenericSend", scope: !378, file: !378, line: 747, type: !1236, scopeLine: 748, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !377, retainedNodes: !1242)
!1236 = !DISubroutineType(types: !1237)
!1237 = !{!51, !1087, !1238, !54, !1241}
!1238 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1239)
!1239 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1240, size: 32)
!1240 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!1241 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !51)
!1242 = !{!1243, !1244, !1245, !1246, !1247, !1248, !1249, !1255}
!1243 = !DILocalVariable(name: "xQueue", arg: 1, scope: !1235, file: !378, line: 747, type: !1087)
!1244 = !DILocalVariable(name: "pvItemToQueue", arg: 2, scope: !1235, file: !378, line: 747, type: !1238)
!1245 = !DILocalVariable(name: "xTicksToWait", arg: 3, scope: !1235, file: !378, line: 747, type: !54)
!1246 = !DILocalVariable(name: "xCopyPosition", arg: 4, scope: !1235, file: !378, line: 747, type: !1241)
!1247 = !DILocalVariable(name: "xEntryTimeSet", scope: !1235, file: !378, line: 749, type: !51)
!1248 = !DILocalVariable(name: "xYieldRequired", scope: !1235, file: !378, line: 749, type: !51)
!1249 = !DILocalVariable(name: "xTimeOut", scope: !1235, file: !378, line: 750, type: !1250)
!1250 = !DIDerivedType(tag: DW_TAG_typedef, name: "TimeOut_t", file: !63, line: 106, baseType: !1251)
!1251 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xTIME_OUT", file: !63, line: 102, size: 64, elements: !1252)
!1252 = !{!1253, !1254}
!1253 = !DIDerivedType(tag: DW_TAG_member, name: "xOverflowCount", scope: !1251, file: !63, line: 104, baseType: !51, size: 32)
!1254 = !DIDerivedType(tag: DW_TAG_member, name: "xTimeOnEntering", scope: !1251, file: !63, line: 105, baseType: !54, size: 32, offset: 32)
!1255 = !DILocalVariable(name: "pxQueue", scope: !1235, file: !378, line: 751, type: !1094)
!1256 = !DILocation(line: 0, scope: !1235)
!1257 = !DILocation(line: 750, column: 1, scope: !1235)
!1258 = !DILocation(line: 750, column: 11, scope: !1235)
!1259 = !DILocation(line: 768, column: 3, scope: !1260)
!1260 = distinct !DILexicalBlock(scope: !1261, file: !378, line: 767, column: 2)
!1261 = distinct !DILexicalBlock(scope: !1262, file: !378, line: 766, column: 2)
!1262 = distinct !DILexicalBlock(scope: !1235, file: !378, line: 766, column: 2)
!1263 = !DILocation(line: 774, column: 19, scope: !1264)
!1264 = distinct !DILexicalBlock(scope: !1265, file: !378, line: 774, column: 8)
!1265 = distinct !DILexicalBlock(scope: !1260, file: !378, line: 769, column: 3)
!1266 = !DILocation(line: 774, column: 48, scope: !1264)
!1267 = !DILocation(line: 774, column: 37, scope: !1264)
!1268 = !DILocation(line: 774, column: 59, scope: !1264)
!1269 = !DILocation(line: 879, column: 22, scope: !1270)
!1270 = distinct !DILexicalBlock(scope: !1271, file: !378, line: 879, column: 9)
!1271 = distinct !DILexicalBlock(scope: !1264, file: !378, line: 878, column: 4)
!1272 = !DILocation(line: 879, column: 9, scope: !1271)
!1273 = !DILocation(line: 840, column: 23, scope: !1274)
!1274 = distinct !DILexicalBlock(scope: !1275, file: !378, line: 839, column: 5)
!1275 = distinct !DILexicalBlock(scope: !1264, file: !378, line: 775, column: 4)
!1276 = !DILocation(line: 844, column: 10, scope: !1277)
!1277 = distinct !DILexicalBlock(scope: !1274, file: !378, line: 844, column: 10)
!1278 = !{!1100, !849, i64 36}
!1279 = !DILocation(line: 844, column: 10, scope: !1274)
!1280 = !DILocation(line: 846, column: 11, scope: !1281)
!1281 = distinct !DILexicalBlock(scope: !1282, file: !378, line: 846, column: 11)
!1282 = distinct !DILexicalBlock(scope: !1277, file: !378, line: 845, column: 6)
!1283 = !DILocation(line: 846, column: 76, scope: !1281)
!1284 = !DILocation(line: 846, column: 11, scope: !1282)
!1285 = !DILocation(line: 852, column: 8, scope: !1286)
!1286 = distinct !DILexicalBlock(scope: !1287, file: !378, line: 852, column: 8)
!1287 = distinct !DILexicalBlock(scope: !1281, file: !378, line: 847, column: 7)
!1288 = !{i64 2148076475}
!1289 = !{i64 2148076526}
!1290 = !DILocation(line: 853, column: 7, scope: !1287)
!1291 = !DILocation(line: 859, column: 30, scope: !1292)
!1292 = distinct !DILexicalBlock(scope: !1277, file: !378, line: 859, column: 15)
!1293 = !DILocation(line: 859, column: 15, scope: !1277)
!1294 = !DILocation(line: 865, column: 7, scope: !1295)
!1295 = distinct !DILexicalBlock(scope: !1296, file: !378, line: 865, column: 7)
!1296 = distinct !DILexicalBlock(scope: !1292, file: !378, line: 860, column: 6)
!1297 = !{i64 2148076996}
!1298 = !{i64 2148077047}
!1299 = !DILocation(line: 866, column: 6, scope: !1296)
!1300 = !DILocation(line: 874, column: 5, scope: !1275)
!1301 = !DILocation(line: 875, column: 5, scope: !1275)
!1302 = !DILocation(line: 883, column: 6, scope: !1303)
!1303 = distinct !DILexicalBlock(scope: !1270, file: !378, line: 880, column: 5)
!1304 = !DILocation(line: 888, column: 6, scope: !1303)
!1305 = !DILocation(line: 894, column: 6, scope: !1306)
!1306 = distinct !DILexicalBlock(scope: !1307, file: !378, line: 891, column: 5)
!1307 = distinct !DILexicalBlock(scope: !1270, file: !378, line: 890, column: 14)
!1308 = !DILocation(line: 896, column: 5, scope: !1306)
!1309 = !DILocation(line: 904, column: 3, scope: !1260)
!1310 = !DILocation(line: 909, column: 3, scope: !1260)
!1311 = !DILocation(line: 910, column: 3, scope: !1260)
!1312 = !DILocation(line: 910, column: 3, scope: !1313)
!1313 = distinct !DILexicalBlock(scope: !1314, file: !378, line: 910, column: 3)
!1314 = distinct !DILexicalBlock(scope: !1260, file: !378, line: 910, column: 3)
!1315 = !DILocation(line: 910, column: 3, scope: !1314)
!1316 = !DILocation(line: 910, column: 3, scope: !1317)
!1317 = distinct !DILexicalBlock(scope: !1313, file: !378, line: 910, column: 3)
!1318 = !DILocation(line: 910, column: 3, scope: !1319)
!1319 = distinct !DILexicalBlock(scope: !1314, file: !378, line: 910, column: 3)
!1320 = !DILocation(line: 910, column: 3, scope: !1321)
!1321 = distinct !DILexicalBlock(scope: !1319, file: !378, line: 910, column: 3)
!1322 = !DILocation(line: 913, column: 7, scope: !1323)
!1323 = distinct !DILexicalBlock(scope: !1260, file: !378, line: 913, column: 7)
!1324 = !DILocation(line: 913, column: 56, scope: !1323)
!1325 = !DILocation(line: 913, column: 7, scope: !1260)
!1326 = !DILocation(line: 915, column: 8, scope: !1327)
!1327 = distinct !DILexicalBlock(scope: !1328, file: !378, line: 915, column: 8)
!1328 = distinct !DILexicalBlock(scope: !1323, file: !378, line: 914, column: 3)
!1329 = !DILocation(line: 915, column: 34, scope: !1327)
!1330 = !DILocation(line: 915, column: 8, scope: !1328)
!1331 = !DILocation(line: 918, column: 63, scope: !1332)
!1332 = distinct !DILexicalBlock(scope: !1327, file: !378, line: 916, column: 4)
!1333 = !DILocation(line: 918, column: 5, scope: !1332)
!1334 = !DILocation(line: 925, column: 5, scope: !1332)
!1335 = !DILocation(line: 932, column: 9, scope: !1336)
!1336 = distinct !DILexicalBlock(scope: !1332, file: !378, line: 932, column: 9)
!1337 = !DILocation(line: 932, column: 26, scope: !1336)
!1338 = !DILocation(line: 932, column: 9, scope: !1332)
!1339 = !DILocation(line: 934, column: 6, scope: !1340)
!1340 = distinct !DILexicalBlock(scope: !1341, file: !378, line: 934, column: 6)
!1341 = distinct !DILexicalBlock(scope: !1336, file: !378, line: 933, column: 5)
!1342 = !{i64 2148078311}
!1343 = !{i64 2148078362}
!1344 = !DILocation(line: 935, column: 5, scope: !1341)
!1345 = !DILocation(line: 940, column: 5, scope: !1346)
!1346 = distinct !DILexicalBlock(scope: !1327, file: !378, line: 938, column: 4)
!1347 = !DILocation(line: 941, column: 14, scope: !1346)
!1348 = !DILocation(line: 947, column: 4, scope: !1349)
!1349 = distinct !DILexicalBlock(scope: !1323, file: !378, line: 945, column: 3)
!1350 = !DILocation(line: 948, column: 13, scope: !1349)
!1351 = !DILocation(line: 951, column: 4, scope: !1349)
!1352 = distinct !{!1352, !1353, !1354}
!1353 = !DILocation(line: 766, column: 2, scope: !1262)
!1354 = !DILocation(line: 953, column: 2, scope: !1262)
!1355 = !DILocation(line: 879, column: 9, scope: !1270)
!1356 = !DILocation(line: 0, scope: !1260)
!1357 = !DILocation(line: 954, column: 1, scope: !1235)
!1358 = distinct !DISubprogram(name: "prvCopyDataToQueue", scope: !378, file: !378, line: 2070, type: !1359, scopeLine: 2071, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !377, retainedNodes: !1361)
!1359 = !DISubroutineType(types: !1360)
!1360 = !{!51, !1094, !1239, !1241}
!1361 = !{!1362, !1363, !1364, !1365, !1366}
!1362 = !DILocalVariable(name: "pxQueue", arg: 1, scope: !1358, file: !378, line: 2070, type: !1094)
!1363 = !DILocalVariable(name: "pvItemToQueue", arg: 2, scope: !1358, file: !378, line: 2070, type: !1239)
!1364 = !DILocalVariable(name: "xPosition", arg: 3, scope: !1358, file: !378, line: 2070, type: !1241)
!1365 = !DILocalVariable(name: "xReturn", scope: !1358, file: !378, line: 2072, type: !51)
!1366 = !DILocalVariable(name: "uxMessagesWaiting", scope: !1358, file: !378, line: 2073, type: !56)
!1367 = !DILocation(line: 0, scope: !1358)
!1368 = !DILocation(line: 2077, column: 31, scope: !1358)
!1369 = !DILocation(line: 2079, column: 15, scope: !1370)
!1370 = distinct !DILexicalBlock(scope: !1358, file: !378, line: 2079, column: 6)
!1371 = !DILocation(line: 2079, column: 26, scope: !1370)
!1372 = !DILocation(line: 2079, column: 6, scope: !1358)
!1373 = !DILocation(line: 2083, column: 17, scope: !1374)
!1374 = distinct !DILexicalBlock(scope: !1375, file: !378, line: 2083, column: 8)
!1375 = distinct !DILexicalBlock(scope: !1376, file: !378, line: 2082, column: 3)
!1376 = distinct !DILexicalBlock(scope: !1370, file: !378, line: 2080, column: 2)
!1377 = !DILocation(line: 2083, column: 29, scope: !1374)
!1378 = !DILocation(line: 2083, column: 8, scope: !1375)
!1379 = !DILocation(line: 2086, column: 49, scope: !1380)
!1380 = distinct !DILexicalBlock(scope: !1374, file: !378, line: 2084, column: 4)
!1381 = !DILocation(line: 2086, column: 62, scope: !1380)
!1382 = !DILocation(line: 2086, column: 15, scope: !1380)
!1383 = !DILocation(line: 2087, column: 40, scope: !1380)
!1384 = !DILocation(line: 2088, column: 4, scope: !1380)
!1385 = !DILocation(line: 2096, column: 21, scope: !1386)
!1386 = distinct !DILexicalBlock(scope: !1370, file: !378, line: 2096, column: 11)
!1387 = !DILocation(line: 2096, column: 11, scope: !1370)
!1388 = !DILocation(line: 2098, column: 40, scope: !1389)
!1389 = distinct !DILexicalBlock(scope: !1386, file: !378, line: 2097, column: 2)
!1390 = !DILocation(line: 2098, column: 12, scope: !1389)
!1391 = !DILocation(line: 2099, column: 34, scope: !1389)
!1392 = !DILocation(line: 2099, column: 22, scope: !1389)
!1393 = !DILocation(line: 2100, column: 47, scope: !1394)
!1394 = distinct !DILexicalBlock(scope: !1389, file: !378, line: 2100, column: 7)
!1395 = !DILocation(line: 2100, column: 26, scope: !1394)
!1396 = !DILocation(line: 2100, column: 7, scope: !1389)
!1397 = !DILocation(line: 2102, column: 34, scope: !1398)
!1398 = distinct !DILexicalBlock(scope: !1394, file: !378, line: 2101, column: 3)
!1399 = !DILocation(line: 2102, column: 23, scope: !1398)
!1400 = !DILocation(line: 2103, column: 3, scope: !1398)
!1401 = !DILocation(line: 2111, column: 49, scope: !1402)
!1402 = distinct !DILexicalBlock(scope: !1386, file: !378, line: 2110, column: 2)
!1403 = !DILocation(line: 2111, column: 12, scope: !1402)
!1404 = !DILocation(line: 2112, column: 44, scope: !1402)
!1405 = !DILocation(line: 2112, column: 32, scope: !1402)
!1406 = !DILocation(line: 2113, column: 47, scope: !1407)
!1407 = distinct !DILexicalBlock(scope: !1402, file: !378, line: 2113, column: 7)
!1408 = !DILocation(line: 2113, column: 36, scope: !1407)
!1409 = !DILocation(line: 2113, column: 7, scope: !1402)
!1410 = !DILocation(line: 2115, column: 55, scope: !1411)
!1411 = distinct !DILexicalBlock(scope: !1407, file: !378, line: 2114, column: 3)
!1412 = !DILocation(line: 2115, column: 62, scope: !1411)
!1413 = !DILocation(line: 2115, column: 33, scope: !1411)
!1414 = !DILocation(line: 2116, column: 3, scope: !1411)
!1415 = !DILocation(line: 2122, column: 17, scope: !1416)
!1416 = distinct !DILexicalBlock(scope: !1402, file: !378, line: 2122, column: 7)
!1417 = !DILocation(line: 2122, column: 7, scope: !1402)
!1418 = !DILocation(line: 2143, column: 49, scope: !1358)
!1419 = !DILocation(line: 2143, column: 29, scope: !1358)
!1420 = !DILocation(line: 2145, column: 2, scope: !1358)
!1421 = distinct !DISubprogram(name: "prvIsQueueFull", scope: !378, file: !378, line: 2327, type: !1422, scopeLine: 2328, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !377, retainedNodes: !1426)
!1422 = !DISubroutineType(types: !1423)
!1423 = !{!51, !1424}
!1424 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1425, size: 32)
!1425 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !384)
!1426 = !{!1427, !1428}
!1427 = !DILocalVariable(name: "pxQueue", arg: 1, scope: !1421, file: !378, line: 2327, type: !1424)
!1428 = !DILocalVariable(name: "xReturn", scope: !1421, file: !378, line: 2329, type: !51)
!1429 = !DILocation(line: 0, scope: !1421)
!1430 = !DILocation(line: 2331, column: 2, scope: !1421)
!1431 = !DILocation(line: 2333, column: 16, scope: !1432)
!1432 = distinct !DILexicalBlock(scope: !1433, file: !378, line: 2333, column: 7)
!1433 = distinct !DILexicalBlock(scope: !1421, file: !378, line: 2332, column: 2)
!1434 = !DILocation(line: 2333, column: 46, scope: !1432)
!1435 = !DILocation(line: 2333, column: 34, scope: !1432)
!1436 = !DILocation(line: 2342, column: 2, scope: !1421)
!1437 = !DILocation(line: 2344, column: 2, scope: !1421)
!1438 = distinct !DISubprogram(name: "prvUnlockQueue", scope: !378, file: !378, line: 2167, type: !1439, scopeLine: 2168, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !377, retainedNodes: !1441)
!1439 = !DISubroutineType(types: !1440)
!1440 = !{null, !1094}
!1441 = !{!1442, !1443, !1445}
!1442 = !DILocalVariable(name: "pxQueue", arg: 1, scope: !1438, file: !378, line: 2167, type: !1094)
!1443 = !DILocalVariable(name: "cTxLock", scope: !1444, file: !378, line: 2177, type: !380)
!1444 = distinct !DILexicalBlock(scope: !1438, file: !378, line: 2176, column: 2)
!1445 = !DILocalVariable(name: "cRxLock", scope: !1446, file: !378, line: 2258, type: !380)
!1446 = distinct !DILexicalBlock(scope: !1438, file: !378, line: 2257, column: 2)
!1447 = !DILocation(line: 0, scope: !1438)
!1448 = !DILocation(line: 2175, column: 2, scope: !1438)
!1449 = !DILocation(line: 2177, column: 29, scope: !1444)
!1450 = !DILocation(line: 0, scope: !1444)
!1451 = !DILocation(line: 2228, column: 9, scope: !1452)
!1452 = distinct !DILexicalBlock(scope: !1453, file: !378, line: 2228, column: 9)
!1453 = distinct !DILexicalBlock(scope: !1454, file: !378, line: 2225, column: 4)
!1454 = distinct !DILexicalBlock(scope: !1444, file: !378, line: 2181, column: 3)
!1455 = !DILocation(line: 2180, column: 18, scope: !1444)
!1456 = !DILocation(line: 2180, column: 3, scope: !1444)
!1457 = !DILocation(line: 2228, column: 9, scope: !1453)
!1458 = !DILocation(line: 2230, column: 10, scope: !1459)
!1459 = distinct !DILexicalBlock(scope: !1460, file: !378, line: 2230, column: 10)
!1460 = distinct !DILexicalBlock(scope: !1452, file: !378, line: 2229, column: 5)
!1461 = !DILocation(line: 2230, column: 75, scope: !1459)
!1462 = !DILocation(line: 2230, column: 10, scope: !1460)
!1463 = !DILocation(line: 2234, column: 7, scope: !1464)
!1464 = distinct !DILexicalBlock(scope: !1459, file: !378, line: 2231, column: 6)
!1465 = !DILocation(line: 2235, column: 6, scope: !1464)
!1466 = !DILocation(line: 2248, column: 4, scope: !1454)
!1467 = distinct !{!1467, !1456, !1468, !577}
!1468 = !DILocation(line: 2249, column: 3, scope: !1444)
!1469 = !DILocation(line: 2251, column: 20, scope: !1444)
!1470 = !DILocation(line: 2253, column: 2, scope: !1438)
!1471 = !DILocation(line: 2256, column: 2, scope: !1438)
!1472 = !DILocation(line: 2258, column: 29, scope: !1446)
!1473 = !DILocation(line: 0, scope: !1446)
!1474 = !DILocation(line: 2262, column: 8, scope: !1475)
!1475 = distinct !DILexicalBlock(scope: !1476, file: !378, line: 2262, column: 8)
!1476 = distinct !DILexicalBlock(scope: !1446, file: !378, line: 2261, column: 3)
!1477 = !DILocation(line: 2260, column: 18, scope: !1446)
!1478 = !DILocation(line: 2260, column: 3, scope: !1446)
!1479 = !DILocation(line: 2262, column: 8, scope: !1476)
!1480 = !DILocation(line: 2264, column: 9, scope: !1481)
!1481 = distinct !DILexicalBlock(scope: !1482, file: !378, line: 2264, column: 9)
!1482 = distinct !DILexicalBlock(scope: !1475, file: !378, line: 2263, column: 4)
!1483 = !DILocation(line: 2264, column: 71, scope: !1481)
!1484 = !DILocation(line: 2264, column: 9, scope: !1482)
!1485 = !DILocation(line: 2266, column: 6, scope: !1486)
!1486 = distinct !DILexicalBlock(scope: !1481, file: !378, line: 2265, column: 5)
!1487 = !DILocation(line: 2267, column: 5, scope: !1486)
!1488 = !DILocation(line: 2273, column: 5, scope: !1482)
!1489 = distinct !{!1489, !1478, !1490, !577}
!1490 = !DILocation(line: 2279, column: 3, scope: !1446)
!1491 = !DILocation(line: 2281, column: 20, scope: !1446)
!1492 = !DILocation(line: 2283, column: 2, scope: !1438)
!1493 = !DILocation(line: 2284, column: 1, scope: !1438)
!1494 = distinct !DISubprogram(name: "xQueueGenericSendFromISR", scope: !378, file: !378, line: 957, type: !1495, scopeLine: 958, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !377, retainedNodes: !1499)
!1495 = !DISubroutineType(types: !1496)
!1496 = !{!51, !1087, !1238, !1497, !1241}
!1497 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1498)
!1498 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !51, size: 32)
!1499 = !{!1500, !1501, !1502, !1503, !1504, !1505, !1506, !1507}
!1500 = !DILocalVariable(name: "xQueue", arg: 1, scope: !1494, file: !378, line: 957, type: !1087)
!1501 = !DILocalVariable(name: "pvItemToQueue", arg: 2, scope: !1494, file: !378, line: 957, type: !1238)
!1502 = !DILocalVariable(name: "pxHigherPriorityTaskWoken", arg: 3, scope: !1494, file: !378, line: 957, type: !1497)
!1503 = !DILocalVariable(name: "xCopyPosition", arg: 4, scope: !1494, file: !378, line: 957, type: !1241)
!1504 = !DILocalVariable(name: "xReturn", scope: !1494, file: !378, line: 959, type: !51)
!1505 = !DILocalVariable(name: "uxSavedInterruptStatus", scope: !1494, file: !378, line: 960, type: !56)
!1506 = !DILocalVariable(name: "pxQueue", scope: !1494, file: !378, line: 961, type: !1094)
!1507 = !DILocalVariable(name: "cTxLock", scope: !1508, file: !378, line: 992, type: !1511)
!1508 = distinct !DILexicalBlock(scope: !1509, file: !378, line: 991, column: 3)
!1509 = distinct !DILexicalBlock(scope: !1510, file: !378, line: 990, column: 7)
!1510 = distinct !DILexicalBlock(scope: !1494, file: !378, line: 989, column: 2)
!1511 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !380)
!1512 = !DILocation(line: 0, scope: !1494)
!1513 = !DILocation(line: 211, column: 2, scope: !1514, inlinedAt: !1520)
!1514 = distinct !DISubprogram(name: "ulPortRaiseBASEPRI", scope: !46, file: !46, line: 207, type: !1515, scopeLine: 208, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !377, retainedNodes: !1517)
!1515 = !DISubroutineType(types: !1516)
!1516 = !{!47}
!1517 = !{!1518, !1519}
!1518 = !DILocalVariable(name: "ulOriginalBASEPRI", scope: !1514, file: !46, line: 209, type: !47)
!1519 = !DILocalVariable(name: "ulNewBASEPRI", scope: !1514, file: !46, line: 209, type: !47)
!1520 = distinct !DILocation(line: 988, column: 27, scope: !1494)
!1521 = !{i64 397862, i64 397900, i64 397933, i64 397970, i64 397998}
!1522 = !DILocation(line: 0, scope: !1514, inlinedAt: !1520)
!1523 = !DILocation(line: 990, column: 18, scope: !1509)
!1524 = !DILocation(line: 990, column: 47, scope: !1509)
!1525 = !DILocation(line: 990, column: 36, scope: !1509)
!1526 = !DILocation(line: 990, column: 58, scope: !1509)
!1527 = !DILocation(line: 992, column: 36, scope: !1508)
!1528 = !DILocation(line: 0, scope: !1508)
!1529 = !DILocation(line: 1001, column: 13, scope: !1508)
!1530 = !DILocation(line: 1005, column: 16, scope: !1531)
!1531 = distinct !DILexicalBlock(scope: !1508, file: !378, line: 1005, column: 8)
!1532 = !DILocation(line: 1005, column: 8, scope: !1508)
!1533 = !DILocation(line: 1060, column: 10, scope: !1534)
!1534 = distinct !DILexicalBlock(scope: !1535, file: !378, line: 1060, column: 10)
!1535 = distinct !DILexicalBlock(scope: !1536, file: !378, line: 1059, column: 5)
!1536 = distinct !DILexicalBlock(scope: !1531, file: !378, line: 1006, column: 4)
!1537 = !DILocation(line: 1060, column: 10, scope: !1535)
!1538 = !DILocation(line: 1062, column: 11, scope: !1539)
!1539 = distinct !DILexicalBlock(scope: !1540, file: !378, line: 1062, column: 11)
!1540 = distinct !DILexicalBlock(scope: !1534, file: !378, line: 1061, column: 6)
!1541 = !DILocation(line: 1062, column: 76, scope: !1539)
!1542 = !DILocation(line: 1062, column: 11, scope: !1540)
!1543 = !DILocation(line: 1068, column: 36, scope: !1544)
!1544 = distinct !DILexicalBlock(scope: !1545, file: !378, line: 1067, column: 8)
!1545 = distinct !DILexicalBlock(scope: !1546, file: !378, line: 1066, column: 12)
!1546 = distinct !DILexicalBlock(scope: !1539, file: !378, line: 1063, column: 7)
!1547 = !DILocation(line: 1069, column: 8, scope: !1544)
!1548 = !DILocation(line: 1091, column: 45, scope: !1549)
!1549 = distinct !DILexicalBlock(scope: !1531, file: !378, line: 1088, column: 4)
!1550 = !DILocation(line: 1091, column: 22, scope: !1549)
!1551 = !DILocation(line: 0, scope: !1509)
!1552 = !DILocalVariable(name: "ulNewMaskValue", arg: 1, scope: !1553, file: !46, line: 227, type: !47)
!1553 = distinct !DISubprogram(name: "vPortSetBASEPRI", scope: !46, file: !46, line: 227, type: !1054, scopeLine: 228, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !377, retainedNodes: !1554)
!1554 = !{!1552}
!1555 = !DILocation(line: 0, scope: !1553, inlinedAt: !1556)
!1556 = distinct !DILocation(line: 1102, column: 2, scope: !1494)
!1557 = !DILocation(line: 229, column: 2, scope: !1553, inlinedAt: !1556)
!1558 = !{i64 398424}
!1559 = !DILocation(line: 1104, column: 2, scope: !1494)
!1560 = distinct !DISubprogram(name: "xQueueGiveFromISR", scope: !378, file: !378, line: 1108, type: !1561, scopeLine: 1109, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !377, retainedNodes: !1563)
!1561 = !DISubroutineType(types: !1562)
!1562 = !{!51, !1087, !1497}
!1563 = !{!1564, !1565, !1566, !1567, !1568, !1569, !1571}
!1564 = !DILocalVariable(name: "xQueue", arg: 1, scope: !1560, file: !378, line: 1108, type: !1087)
!1565 = !DILocalVariable(name: "pxHigherPriorityTaskWoken", arg: 2, scope: !1560, file: !378, line: 1108, type: !1497)
!1566 = !DILocalVariable(name: "xReturn", scope: !1560, file: !378, line: 1110, type: !51)
!1567 = !DILocalVariable(name: "uxSavedInterruptStatus", scope: !1560, file: !378, line: 1111, type: !56)
!1568 = !DILocalVariable(name: "pxQueue", scope: !1560, file: !378, line: 1112, type: !1094)
!1569 = !DILocalVariable(name: "uxMessagesWaiting", scope: !1570, file: !378, line: 1149, type: !1155)
!1570 = distinct !DILexicalBlock(scope: !1560, file: !378, line: 1148, column: 2)
!1571 = !DILocalVariable(name: "cTxLock", scope: !1572, file: !378, line: 1156, type: !1511)
!1572 = distinct !DILexicalBlock(scope: !1573, file: !378, line: 1155, column: 3)
!1573 = distinct !DILexicalBlock(scope: !1570, file: !378, line: 1154, column: 7)
!1574 = !DILocation(line: 0, scope: !1560)
!1575 = !DILocation(line: 211, column: 2, scope: !1514, inlinedAt: !1576)
!1576 = distinct !DILocation(line: 1147, column: 27, scope: !1560)
!1577 = !DILocation(line: 0, scope: !1514, inlinedAt: !1576)
!1578 = !DILocation(line: 1149, column: 50, scope: !1570)
!1579 = !DILocation(line: 0, scope: !1570)
!1580 = !DILocation(line: 1154, column: 36, scope: !1573)
!1581 = !DILocation(line: 1154, column: 25, scope: !1573)
!1582 = !DILocation(line: 1154, column: 7, scope: !1570)
!1583 = !DILocation(line: 1156, column: 36, scope: !1572)
!1584 = !DILocation(line: 0, scope: !1572)
!1585 = !DILocation(line: 1166, column: 51, scope: !1572)
!1586 = !DILocation(line: 1166, column: 31, scope: !1572)
!1587 = !DILocation(line: 1170, column: 16, scope: !1588)
!1588 = distinct !DILexicalBlock(scope: !1572, file: !378, line: 1170, column: 8)
!1589 = !DILocation(line: 1170, column: 8, scope: !1572)
!1590 = !DILocation(line: 1225, column: 10, scope: !1591)
!1591 = distinct !DILexicalBlock(scope: !1592, file: !378, line: 1225, column: 10)
!1592 = distinct !DILexicalBlock(scope: !1593, file: !378, line: 1224, column: 5)
!1593 = distinct !DILexicalBlock(scope: !1588, file: !378, line: 1171, column: 4)
!1594 = !DILocation(line: 1225, column: 10, scope: !1592)
!1595 = !DILocation(line: 1227, column: 11, scope: !1596)
!1596 = distinct !DILexicalBlock(scope: !1597, file: !378, line: 1227, column: 11)
!1597 = distinct !DILexicalBlock(scope: !1591, file: !378, line: 1226, column: 6)
!1598 = !DILocation(line: 1227, column: 76, scope: !1596)
!1599 = !DILocation(line: 1227, column: 11, scope: !1597)
!1600 = !DILocation(line: 1233, column: 36, scope: !1601)
!1601 = distinct !DILexicalBlock(scope: !1602, file: !378, line: 1232, column: 8)
!1602 = distinct !DILexicalBlock(scope: !1603, file: !378, line: 1231, column: 12)
!1603 = distinct !DILexicalBlock(scope: !1596, file: !378, line: 1228, column: 7)
!1604 = !DILocation(line: 1234, column: 8, scope: !1601)
!1605 = !DILocation(line: 1256, column: 45, scope: !1606)
!1606 = distinct !DILexicalBlock(scope: !1588, file: !378, line: 1253, column: 4)
!1607 = !DILocation(line: 1256, column: 22, scope: !1606)
!1608 = !DILocation(line: 0, scope: !1573)
!1609 = !DILocation(line: 0, scope: !1553, inlinedAt: !1610)
!1610 = distinct !DILocation(line: 1267, column: 2, scope: !1560)
!1611 = !DILocation(line: 229, column: 2, scope: !1553, inlinedAt: !1610)
!1612 = !DILocation(line: 1269, column: 2, scope: !1560)
!1613 = distinct !DISubprogram(name: "xQueueReceive", scope: !378, file: !378, line: 1273, type: !1614, scopeLine: 1274, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !377, retainedNodes: !1617)
!1614 = !DISubroutineType(types: !1615)
!1615 = !{!51, !1087, !1616, !54}
!1616 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !5)
!1617 = !{!1618, !1619, !1620, !1621, !1622, !1623, !1624}
!1618 = !DILocalVariable(name: "xQueue", arg: 1, scope: !1613, file: !378, line: 1273, type: !1087)
!1619 = !DILocalVariable(name: "pvBuffer", arg: 2, scope: !1613, file: !378, line: 1273, type: !1616)
!1620 = !DILocalVariable(name: "xTicksToWait", arg: 3, scope: !1613, file: !378, line: 1273, type: !54)
!1621 = !DILocalVariable(name: "xEntryTimeSet", scope: !1613, file: !378, line: 1275, type: !51)
!1622 = !DILocalVariable(name: "xTimeOut", scope: !1613, file: !378, line: 1276, type: !1250)
!1623 = !DILocalVariable(name: "pxQueue", scope: !1613, file: !378, line: 1277, type: !1094)
!1624 = !DILocalVariable(name: "uxMessagesWaiting", scope: !1625, file: !378, line: 1301, type: !1155)
!1625 = distinct !DILexicalBlock(scope: !1626, file: !378, line: 1300, column: 3)
!1626 = distinct !DILexicalBlock(scope: !1627, file: !378, line: 1298, column: 2)
!1627 = distinct !DILexicalBlock(scope: !1628, file: !378, line: 1297, column: 2)
!1628 = distinct !DILexicalBlock(scope: !1613, file: !378, line: 1297, column: 2)
!1629 = !DILocation(line: 0, scope: !1613)
!1630 = !DILocation(line: 1276, column: 1, scope: !1613)
!1631 = !DILocation(line: 1276, column: 11, scope: !1613)
!1632 = !DILocation(line: 1299, column: 3, scope: !1626)
!1633 = !DILocation(line: 1301, column: 51, scope: !1625)
!1634 = !DILocation(line: 0, scope: !1625)
!1635 = !DILocation(line: 1305, column: 26, scope: !1636)
!1636 = distinct !DILexicalBlock(scope: !1625, file: !378, line: 1305, column: 8)
!1637 = !DILocation(line: 1305, column: 8, scope: !1625)
!1638 = !DILocation(line: 1336, column: 22, scope: !1639)
!1639 = distinct !DILexicalBlock(scope: !1640, file: !378, line: 1336, column: 9)
!1640 = distinct !DILexicalBlock(scope: !1636, file: !378, line: 1335, column: 4)
!1641 = !DILocation(line: 1336, column: 9, scope: !1640)
!1642 = !DILocation(line: 1308, column: 5, scope: !1643)
!1643 = distinct !DILexicalBlock(scope: !1636, file: !378, line: 1306, column: 4)
!1644 = !DILocation(line: 1310, column: 52, scope: !1643)
!1645 = !DILocation(line: 1310, column: 32, scope: !1643)
!1646 = !DILocation(line: 1315, column: 9, scope: !1647)
!1647 = distinct !DILexicalBlock(scope: !1643, file: !378, line: 1315, column: 9)
!1648 = !DILocation(line: 1315, column: 9, scope: !1643)
!1649 = !DILocation(line: 1317, column: 10, scope: !1650)
!1650 = distinct !DILexicalBlock(scope: !1651, file: !378, line: 1317, column: 10)
!1651 = distinct !DILexicalBlock(scope: !1647, file: !378, line: 1316, column: 5)
!1652 = !DILocation(line: 1317, column: 72, scope: !1650)
!1653 = !DILocation(line: 1317, column: 10, scope: !1651)
!1654 = !DILocation(line: 1319, column: 7, scope: !1655)
!1655 = distinct !DILexicalBlock(scope: !1656, file: !378, line: 1319, column: 7)
!1656 = distinct !DILexicalBlock(scope: !1650, file: !378, line: 1318, column: 6)
!1657 = !{i64 2148079844}
!1658 = !{i64 2148079895}
!1659 = !DILocation(line: 1320, column: 6, scope: !1656)
!1660 = !DILocation(line: 1348, column: 6, scope: !1661)
!1661 = distinct !DILexicalBlock(scope: !1662, file: !378, line: 1345, column: 5)
!1662 = distinct !DILexicalBlock(scope: !1639, file: !378, line: 1344, column: 14)
!1663 = !DILocation(line: 1350, column: 5, scope: !1661)
!1664 = !DILocation(line: 1358, column: 3, scope: !1626)
!1665 = !DILocation(line: 1363, column: 3, scope: !1626)
!1666 = !DILocation(line: 1364, column: 3, scope: !1626)
!1667 = !DILocation(line: 1364, column: 3, scope: !1668)
!1668 = distinct !DILexicalBlock(scope: !1669, file: !378, line: 1364, column: 3)
!1669 = distinct !DILexicalBlock(scope: !1626, file: !378, line: 1364, column: 3)
!1670 = !DILocation(line: 1364, column: 3, scope: !1669)
!1671 = !DILocation(line: 1364, column: 3, scope: !1672)
!1672 = distinct !DILexicalBlock(scope: !1668, file: !378, line: 1364, column: 3)
!1673 = !DILocation(line: 1364, column: 3, scope: !1674)
!1674 = distinct !DILexicalBlock(scope: !1669, file: !378, line: 1364, column: 3)
!1675 = !DILocation(line: 1364, column: 3, scope: !1676)
!1676 = distinct !DILexicalBlock(scope: !1674, file: !378, line: 1364, column: 3)
!1677 = !DILocation(line: 1367, column: 7, scope: !1678)
!1678 = distinct !DILexicalBlock(scope: !1626, file: !378, line: 1367, column: 7)
!1679 = !DILocation(line: 1367, column: 56, scope: !1678)
!1680 = !DILocation(line: 1367, column: 7, scope: !1626)
!1681 = !DILocation(line: 1371, column: 8, scope: !1682)
!1682 = distinct !DILexicalBlock(scope: !1683, file: !378, line: 1371, column: 8)
!1683 = distinct !DILexicalBlock(scope: !1678, file: !378, line: 1368, column: 3)
!1684 = !DILocation(line: 1371, column: 35, scope: !1682)
!1685 = !DILocation(line: 1371, column: 8, scope: !1683)
!1686 = !DILocation(line: 1374, column: 66, scope: !1687)
!1687 = distinct !DILexicalBlock(scope: !1682, file: !378, line: 1372, column: 4)
!1688 = !DILocation(line: 1374, column: 5, scope: !1687)
!1689 = !DILocation(line: 1375, column: 5, scope: !1687)
!1690 = !DILocation(line: 1376, column: 9, scope: !1691)
!1691 = distinct !DILexicalBlock(scope: !1687, file: !378, line: 1376, column: 9)
!1692 = !DILocation(line: 1376, column: 26, scope: !1691)
!1693 = !DILocation(line: 1376, column: 9, scope: !1687)
!1694 = !DILocation(line: 1378, column: 6, scope: !1695)
!1695 = distinct !DILexicalBlock(scope: !1696, file: !378, line: 1378, column: 6)
!1696 = distinct !DILexicalBlock(scope: !1691, file: !378, line: 1377, column: 5)
!1697 = !{i64 2148081159}
!1698 = !{i64 2148081210}
!1699 = !DILocation(line: 1379, column: 5, scope: !1696)
!1700 = !DILocation(line: 1389, column: 5, scope: !1701)
!1701 = distinct !DILexicalBlock(scope: !1682, file: !378, line: 1386, column: 4)
!1702 = !DILocation(line: 1390, column: 14, scope: !1701)
!1703 = !DILocation(line: 1397, column: 4, scope: !1704)
!1704 = distinct !DILexicalBlock(scope: !1678, file: !378, line: 1394, column: 3)
!1705 = !DILocation(line: 1398, column: 13, scope: !1704)
!1706 = !DILocation(line: 1400, column: 8, scope: !1707)
!1707 = distinct !DILexicalBlock(scope: !1704, file: !378, line: 1400, column: 8)
!1708 = !DILocation(line: 1400, column: 35, scope: !1707)
!1709 = !DILocation(line: 1400, column: 8, scope: !1704)
!1710 = distinct !{!1710, !1711, !1712}
!1711 = !DILocation(line: 1297, column: 2, scope: !1628)
!1712 = !DILocation(line: 1410, column: 2, scope: !1628)
!1713 = !DILocation(line: 1336, column: 9, scope: !1639)
!1714 = !DILocation(line: 0, scope: !1636)
!1715 = !DILocation(line: 1411, column: 1, scope: !1613)
!1716 = !DILocation(line: 0, scope: !1626)
!1717 = distinct !DISubprogram(name: "prvCopyDataFromQueue", scope: !378, file: !378, line: 2149, type: !1718, scopeLine: 2150, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !377, retainedNodes: !1720)
!1718 = !DISubroutineType(types: !1719)
!1719 = !{null, !1094, !1616}
!1720 = !{!1721, !1722}
!1721 = !DILocalVariable(name: "pxQueue", arg: 1, scope: !1717, file: !378, line: 2149, type: !1094)
!1722 = !DILocalVariable(name: "pvBuffer", arg: 2, scope: !1717, file: !378, line: 2149, type: !1616)
!1723 = !DILocation(line: 0, scope: !1717)
!1724 = !DILocation(line: 2151, column: 15, scope: !1725)
!1725 = distinct !DILexicalBlock(scope: !1717, file: !378, line: 2151, column: 6)
!1726 = !DILocation(line: 2151, column: 26, scope: !1725)
!1727 = !DILocation(line: 2151, column: 6, scope: !1717)
!1728 = !DILocation(line: 2153, column: 21, scope: !1729)
!1729 = distinct !DILexicalBlock(scope: !1725, file: !378, line: 2152, column: 2)
!1730 = !DILocation(line: 2153, column: 32, scope: !1729)
!1731 = !DILocation(line: 2154, column: 57, scope: !1732)
!1732 = distinct !DILexicalBlock(scope: !1729, file: !378, line: 2154, column: 7)
!1733 = !DILocation(line: 2154, column: 36, scope: !1732)
!1734 = !DILocation(line: 2154, column: 7, scope: !1729)
!1735 = !DILocation(line: 2156, column: 44, scope: !1736)
!1736 = distinct !DILexicalBlock(scope: !1732, file: !378, line: 2155, column: 3)
!1737 = !DILocation(line: 2156, column: 33, scope: !1736)
!1738 = !DILocation(line: 2157, column: 3, scope: !1736)
!1739 = !DILocation(line: 2162, column: 70, scope: !1729)
!1740 = !DILocation(line: 2162, column: 12, scope: !1729)
!1741 = !DILocation(line: 2163, column: 2, scope: !1729)
!1742 = !DILocation(line: 2164, column: 1, scope: !1717)
!1743 = distinct !DISubprogram(name: "prvIsQueueEmpty", scope: !378, file: !378, line: 2287, type: !1422, scopeLine: 2288, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !377, retainedNodes: !1744)
!1744 = !{!1745, !1746}
!1745 = !DILocalVariable(name: "pxQueue", arg: 1, scope: !1743, file: !378, line: 2287, type: !1424)
!1746 = !DILocalVariable(name: "xReturn", scope: !1743, file: !378, line: 2289, type: !51)
!1747 = !DILocation(line: 0, scope: !1743)
!1748 = !DILocation(line: 2291, column: 2, scope: !1743)
!1749 = !DILocation(line: 2293, column: 16, scope: !1750)
!1750 = distinct !DILexicalBlock(scope: !1751, file: !378, line: 2293, column: 7)
!1751 = distinct !DILexicalBlock(scope: !1743, file: !378, line: 2292, column: 2)
!1752 = !DILocation(line: 2293, column: 34, scope: !1750)
!1753 = !DILocation(line: 2302, column: 2, scope: !1743)
!1754 = !DILocation(line: 2304, column: 2, scope: !1743)
!1755 = distinct !DISubprogram(name: "xQueueSemaphoreTake", scope: !378, file: !378, line: 1414, type: !1756, scopeLine: 1415, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !377, retainedNodes: !1758)
!1756 = !DISubroutineType(types: !1757)
!1757 = !{!51, !1087, !54}
!1758 = !{!1759, !1760, !1761, !1762, !1763, !1764, !1765, !1770}
!1759 = !DILocalVariable(name: "xQueue", arg: 1, scope: !1755, file: !378, line: 1414, type: !1087)
!1760 = !DILocalVariable(name: "xTicksToWait", arg: 2, scope: !1755, file: !378, line: 1414, type: !54)
!1761 = !DILocalVariable(name: "xEntryTimeSet", scope: !1755, file: !378, line: 1416, type: !51)
!1762 = !DILocalVariable(name: "xTimeOut", scope: !1755, file: !378, line: 1417, type: !1250)
!1763 = !DILocalVariable(name: "pxQueue", scope: !1755, file: !378, line: 1418, type: !1094)
!1764 = !DILocalVariable(name: "xInheritanceOccurred", scope: !1755, file: !378, line: 1421, type: !51)
!1765 = !DILocalVariable(name: "uxSemaphoreCount", scope: !1766, file: !378, line: 1448, type: !1155)
!1766 = distinct !DILexicalBlock(scope: !1767, file: !378, line: 1445, column: 3)
!1767 = distinct !DILexicalBlock(scope: !1768, file: !378, line: 1443, column: 2)
!1768 = distinct !DILexicalBlock(scope: !1769, file: !378, line: 1442, column: 2)
!1769 = distinct !DILexicalBlock(scope: !1755, file: !378, line: 1442, column: 2)
!1770 = !DILocalVariable(name: "uxHighestWaitingPriority", scope: !1771, file: !378, line: 1605, type: !56)
!1771 = distinct !DILexicalBlock(scope: !1772, file: !378, line: 1604, column: 7)
!1772 = distinct !DILexicalBlock(scope: !1773, file: !378, line: 1602, column: 6)
!1773 = distinct !DILexicalBlock(scope: !1774, file: !378, line: 1601, column: 10)
!1774 = distinct !DILexicalBlock(scope: !1775, file: !378, line: 1597, column: 5)
!1775 = distinct !DILexicalBlock(scope: !1776, file: !378, line: 1595, column: 4)
!1776 = distinct !DILexicalBlock(scope: !1777, file: !378, line: 1594, column: 8)
!1777 = distinct !DILexicalBlock(scope: !1778, file: !378, line: 1585, column: 3)
!1778 = distinct !DILexicalBlock(scope: !1767, file: !378, line: 1538, column: 7)
!1779 = !DILocation(line: 0, scope: !1755)
!1780 = !DILocation(line: 1417, column: 1, scope: !1755)
!1781 = !DILocation(line: 1417, column: 11, scope: !1755)
!1782 = !DILocation(line: 1444, column: 3, scope: !1767)
!1783 = !DILocation(line: 1448, column: 50, scope: !1766)
!1784 = !DILocation(line: 0, scope: !1766)
!1785 = !DILocation(line: 1452, column: 25, scope: !1786)
!1786 = distinct !DILexicalBlock(scope: !1766, file: !378, line: 1452, column: 8)
!1787 = !DILocation(line: 1452, column: 8, scope: !1766)
!1788 = !DILocation(line: 1498, column: 22, scope: !1789)
!1789 = distinct !DILexicalBlock(scope: !1790, file: !378, line: 1498, column: 9)
!1790 = distinct !DILexicalBlock(scope: !1786, file: !378, line: 1497, column: 4)
!1791 = !DILocation(line: 1498, column: 9, scope: !1790)
!1792 = !DILocation(line: 1458, column: 51, scope: !1793)
!1793 = distinct !DILexicalBlock(scope: !1786, file: !378, line: 1453, column: 4)
!1794 = !DILocation(line: 1458, column: 32, scope: !1793)
!1795 = !DILocation(line: 1462, column: 19, scope: !1796)
!1796 = distinct !DILexicalBlock(scope: !1797, file: !378, line: 1462, column: 10)
!1797 = distinct !DILexicalBlock(scope: !1793, file: !378, line: 1461, column: 5)
!1798 = !DILocation(line: 1462, column: 31, scope: !1796)
!1799 = !DILocation(line: 1462, column: 10, scope: !1797)
!1800 = !DILocation(line: 1466, column: 44, scope: !1801)
!1801 = distinct !DILexicalBlock(scope: !1796, file: !378, line: 1463, column: 6)
!1802 = !DILocation(line: 1466, column: 16, scope: !1801)
!1803 = !DILocation(line: 1466, column: 29, scope: !1801)
!1804 = !DILocation(line: 1466, column: 42, scope: !1801)
!1805 = !DILocation(line: 1467, column: 6, scope: !1801)
!1806 = !DILocation(line: 1477, column: 9, scope: !1807)
!1807 = distinct !DILexicalBlock(scope: !1793, file: !378, line: 1477, column: 9)
!1808 = !DILocation(line: 1477, column: 9, scope: !1793)
!1809 = !DILocation(line: 1479, column: 10, scope: !1810)
!1810 = distinct !DILexicalBlock(scope: !1811, file: !378, line: 1479, column: 10)
!1811 = distinct !DILexicalBlock(scope: !1807, file: !378, line: 1478, column: 5)
!1812 = !DILocation(line: 1479, column: 72, scope: !1810)
!1813 = !DILocation(line: 1479, column: 10, scope: !1811)
!1814 = !DILocation(line: 1481, column: 7, scope: !1815)
!1815 = distinct !DILexicalBlock(scope: !1816, file: !378, line: 1481, column: 7)
!1816 = distinct !DILexicalBlock(scope: !1810, file: !378, line: 1480, column: 6)
!1817 = !{i64 2148082010}
!1818 = !{i64 2148082061}
!1819 = !DILocation(line: 1482, column: 6, scope: !1816)
!1820 = !DILocation(line: 1515, column: 14, scope: !1789)
!1821 = !DILocation(line: 1519, column: 6, scope: !1822)
!1822 = distinct !DILexicalBlock(scope: !1823, file: !378, line: 1516, column: 5)
!1823 = distinct !DILexicalBlock(scope: !1789, file: !378, line: 1515, column: 14)
!1824 = !DILocation(line: 1521, column: 5, scope: !1822)
!1825 = !DILocation(line: 1529, column: 3, scope: !1767)
!1826 = !DILocation(line: 1534, column: 3, scope: !1767)
!1827 = !DILocation(line: 1535, column: 3, scope: !1767)
!1828 = !DILocation(line: 1535, column: 3, scope: !1829)
!1829 = distinct !DILexicalBlock(scope: !1830, file: !378, line: 1535, column: 3)
!1830 = distinct !DILexicalBlock(scope: !1767, file: !378, line: 1535, column: 3)
!1831 = !DILocation(line: 1535, column: 3, scope: !1830)
!1832 = !DILocation(line: 1535, column: 3, scope: !1833)
!1833 = distinct !DILexicalBlock(scope: !1829, file: !378, line: 1535, column: 3)
!1834 = !DILocation(line: 1535, column: 3, scope: !1835)
!1835 = distinct !DILexicalBlock(scope: !1830, file: !378, line: 1535, column: 3)
!1836 = !DILocation(line: 1535, column: 3, scope: !1837)
!1837 = distinct !DILexicalBlock(scope: !1835, file: !378, line: 1535, column: 3)
!1838 = !DILocation(line: 1538, column: 7, scope: !1778)
!1839 = !DILocation(line: 1538, column: 56, scope: !1778)
!1840 = !DILocation(line: 1538, column: 7, scope: !1767)
!1841 = !DILocation(line: 1544, column: 8, scope: !1842)
!1842 = distinct !DILexicalBlock(scope: !1843, file: !378, line: 1544, column: 8)
!1843 = distinct !DILexicalBlock(scope: !1778, file: !378, line: 1539, column: 3)
!1844 = !DILocation(line: 1544, column: 35, scope: !1842)
!1845 = !DILocation(line: 1544, column: 8, scope: !1843)
!1846 = !DILocation(line: 1550, column: 19, scope: !1847)
!1847 = distinct !DILexicalBlock(scope: !1848, file: !378, line: 1550, column: 10)
!1848 = distinct !DILexicalBlock(scope: !1849, file: !378, line: 1549, column: 5)
!1849 = distinct !DILexicalBlock(scope: !1842, file: !378, line: 1545, column: 4)
!1850 = !DILocation(line: 1550, column: 31, scope: !1847)
!1851 = !DILocation(line: 1550, column: 10, scope: !1848)
!1852 = !DILocation(line: 1552, column: 7, scope: !1853)
!1853 = distinct !DILexicalBlock(scope: !1847, file: !378, line: 1551, column: 6)
!1854 = !DILocation(line: 1554, column: 75, scope: !1855)
!1855 = distinct !DILexicalBlock(scope: !1853, file: !378, line: 1553, column: 7)
!1856 = !DILocation(line: 1554, column: 31, scope: !1855)
!1857 = !DILocation(line: 1556, column: 7, scope: !1853)
!1858 = !DILocation(line: 1557, column: 6, scope: !1853)
!1859 = !DILocation(line: 1565, column: 66, scope: !1849)
!1860 = !DILocation(line: 1565, column: 5, scope: !1849)
!1861 = !DILocation(line: 1566, column: 5, scope: !1849)
!1862 = !DILocation(line: 1567, column: 9, scope: !1863)
!1863 = distinct !DILexicalBlock(scope: !1849, file: !378, line: 1567, column: 9)
!1864 = !DILocation(line: 1567, column: 26, scope: !1863)
!1865 = !DILocation(line: 1567, column: 9, scope: !1849)
!1866 = !DILocation(line: 1569, column: 6, scope: !1867)
!1867 = distinct !DILexicalBlock(scope: !1868, file: !378, line: 1569, column: 6)
!1868 = distinct !DILexicalBlock(scope: !1863, file: !378, line: 1568, column: 5)
!1869 = !{i64 2148083434}
!1870 = !{i64 2148083485}
!1871 = !DILocation(line: 1570, column: 5, scope: !1868)
!1872 = !DILocation(line: 1580, column: 5, scope: !1873)
!1873 = distinct !DILexicalBlock(scope: !1842, file: !378, line: 1577, column: 4)
!1874 = !DILocation(line: 1581, column: 14, scope: !1873)
!1875 = !DILocation(line: 1587, column: 4, scope: !1777)
!1876 = !DILocation(line: 1588, column: 13, scope: !1777)
!1877 = !DILocation(line: 1594, column: 8, scope: !1776)
!1878 = !DILocation(line: 1594, column: 35, scope: !1776)
!1879 = !DILocation(line: 1594, column: 8, scope: !1777)
!1880 = !DILocation(line: 1601, column: 31, scope: !1773)
!1881 = !DILocation(line: 1601, column: 10, scope: !1774)
!1882 = !DILocation(line: 1603, column: 7, scope: !1772)
!1883 = !DILocation(line: 1612, column: 35, scope: !1771)
!1884 = !DILocation(line: 0, scope: !1771)
!1885 = !DILocation(line: 1613, column: 67, scope: !1771)
!1886 = !DILocation(line: 1613, column: 8, scope: !1771)
!1887 = !DILocation(line: 1616, column: 6, scope: !1772)
!1888 = distinct !{!1888, !1889, !1890}
!1889 = !DILocation(line: 1442, column: 2, scope: !1769)
!1890 = !DILocation(line: 1628, column: 2, scope: !1769)
!1891 = !DILocation(line: 1498, column: 9, scope: !1789)
!1892 = !DILocation(line: 0, scope: !1767)
!1893 = !DILocation(line: 1629, column: 1, scope: !1755)
!1894 = distinct !DISubprogram(name: "prvGetDisinheritPriorityAfterTimeout", scope: !378, file: !378, line: 2045, type: !1895, scopeLine: 2046, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !377, retainedNodes: !1898)
!1895 = !DISubroutineType(types: !1896)
!1896 = !{!56, !1897}
!1897 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1424)
!1898 = !{!1899, !1900}
!1899 = !DILocalVariable(name: "pxQueue", arg: 1, scope: !1894, file: !378, line: 2045, type: !1897)
!1900 = !DILocalVariable(name: "uxHighestPriorityOfWaitingTasks", scope: !1894, file: !378, line: 2047, type: !56)
!1901 = !DILocation(line: 0, scope: !1894)
!1902 = !DILocation(line: 2055, column: 7, scope: !1903)
!1903 = distinct !DILexicalBlock(scope: !1894, file: !378, line: 2055, column: 7)
!1904 = !DILocation(line: 2055, column: 71, scope: !1903)
!1905 = !DILocation(line: 2055, column: 7, scope: !1894)
!1906 = !DILocation(line: 2057, column: 93, scope: !1907)
!1907 = distinct !DILexicalBlock(scope: !1903, file: !378, line: 2056, column: 3)
!1908 = !{!1100, !650, i64 48}
!1909 = !DILocation(line: 2057, column: 75, scope: !1907)
!1910 = !DILocation(line: 2058, column: 3, scope: !1907)
!1911 = !DILocation(line: 0, scope: !1903)
!1912 = !DILocation(line: 2064, column: 3, scope: !1894)
!1913 = distinct !DISubprogram(name: "xQueuePeek", scope: !378, file: !378, line: 1632, type: !1614, scopeLine: 1633, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !377, retainedNodes: !1914)
!1914 = !{!1915, !1916, !1917, !1918, !1919, !1920, !1921, !1922}
!1915 = !DILocalVariable(name: "xQueue", arg: 1, scope: !1913, file: !378, line: 1632, type: !1087)
!1916 = !DILocalVariable(name: "pvBuffer", arg: 2, scope: !1913, file: !378, line: 1632, type: !1616)
!1917 = !DILocalVariable(name: "xTicksToWait", arg: 3, scope: !1913, file: !378, line: 1632, type: !54)
!1918 = !DILocalVariable(name: "xEntryTimeSet", scope: !1913, file: !378, line: 1634, type: !51)
!1919 = !DILocalVariable(name: "xTimeOut", scope: !1913, file: !378, line: 1635, type: !1250)
!1920 = !DILocalVariable(name: "pcOriginalReadPosition", scope: !1913, file: !378, line: 1636, type: !389)
!1921 = !DILocalVariable(name: "pxQueue", scope: !1913, file: !378, line: 1637, type: !1094)
!1922 = !DILocalVariable(name: "uxMessagesWaiting", scope: !1923, file: !378, line: 1661, type: !1155)
!1923 = distinct !DILexicalBlock(scope: !1924, file: !378, line: 1660, column: 3)
!1924 = distinct !DILexicalBlock(scope: !1925, file: !378, line: 1658, column: 2)
!1925 = distinct !DILexicalBlock(scope: !1926, file: !378, line: 1657, column: 2)
!1926 = distinct !DILexicalBlock(scope: !1913, file: !378, line: 1657, column: 2)
!1927 = !DILocation(line: 0, scope: !1913)
!1928 = !DILocation(line: 1635, column: 1, scope: !1913)
!1929 = !DILocation(line: 1635, column: 11, scope: !1913)
!1930 = !DILocation(line: 1659, column: 3, scope: !1924)
!1931 = !DILocation(line: 1661, column: 51, scope: !1923)
!1932 = !DILocation(line: 0, scope: !1923)
!1933 = !DILocation(line: 1665, column: 26, scope: !1934)
!1934 = distinct !DILexicalBlock(scope: !1923, file: !378, line: 1665, column: 8)
!1935 = !DILocation(line: 1665, column: 8, scope: !1923)
!1936 = !DILocation(line: 1702, column: 22, scope: !1937)
!1937 = distinct !DILexicalBlock(scope: !1938, file: !378, line: 1702, column: 9)
!1938 = distinct !DILexicalBlock(scope: !1934, file: !378, line: 1701, column: 4)
!1939 = !DILocation(line: 1702, column: 9, scope: !1938)
!1940 = !DILocation(line: 1670, column: 48, scope: !1941)
!1941 = distinct !DILexicalBlock(scope: !1934, file: !378, line: 1666, column: 4)
!1942 = !DILocation(line: 1672, column: 5, scope: !1941)
!1943 = !DILocation(line: 1676, column: 34, scope: !1941)
!1944 = !DILocation(line: 1680, column: 9, scope: !1945)
!1945 = distinct !DILexicalBlock(scope: !1941, file: !378, line: 1680, column: 9)
!1946 = !DILocation(line: 1680, column: 9, scope: !1941)
!1947 = !DILocation(line: 1682, column: 10, scope: !1948)
!1948 = distinct !DILexicalBlock(scope: !1949, file: !378, line: 1682, column: 10)
!1949 = distinct !DILexicalBlock(scope: !1945, file: !378, line: 1681, column: 5)
!1950 = !DILocation(line: 1682, column: 75, scope: !1948)
!1951 = !DILocation(line: 1682, column: 10, scope: !1949)
!1952 = !DILocation(line: 1685, column: 7, scope: !1953)
!1953 = distinct !DILexicalBlock(scope: !1954, file: !378, line: 1685, column: 7)
!1954 = distinct !DILexicalBlock(scope: !1948, file: !378, line: 1683, column: 6)
!1955 = !{i64 2148084345}
!1956 = !{i64 2148084396}
!1957 = !DILocation(line: 1686, column: 6, scope: !1954)
!1958 = !DILocation(line: 1715, column: 6, scope: !1959)
!1959 = distinct !DILexicalBlock(scope: !1960, file: !378, line: 1711, column: 5)
!1960 = distinct !DILexicalBlock(scope: !1937, file: !378, line: 1710, column: 14)
!1961 = !DILocation(line: 1717, column: 5, scope: !1959)
!1962 = !DILocation(line: 1725, column: 3, scope: !1924)
!1963 = !DILocation(line: 1730, column: 3, scope: !1924)
!1964 = !DILocation(line: 1731, column: 3, scope: !1924)
!1965 = !DILocation(line: 1731, column: 3, scope: !1966)
!1966 = distinct !DILexicalBlock(scope: !1967, file: !378, line: 1731, column: 3)
!1967 = distinct !DILexicalBlock(scope: !1924, file: !378, line: 1731, column: 3)
!1968 = !DILocation(line: 1731, column: 3, scope: !1967)
!1969 = !DILocation(line: 1731, column: 3, scope: !1970)
!1970 = distinct !DILexicalBlock(scope: !1966, file: !378, line: 1731, column: 3)
!1971 = !DILocation(line: 1731, column: 3, scope: !1972)
!1972 = distinct !DILexicalBlock(scope: !1967, file: !378, line: 1731, column: 3)
!1973 = !DILocation(line: 1731, column: 3, scope: !1974)
!1974 = distinct !DILexicalBlock(scope: !1972, file: !378, line: 1731, column: 3)
!1975 = !DILocation(line: 1734, column: 7, scope: !1976)
!1976 = distinct !DILexicalBlock(scope: !1924, file: !378, line: 1734, column: 7)
!1977 = !DILocation(line: 1734, column: 56, scope: !1976)
!1978 = !DILocation(line: 1734, column: 7, scope: !1924)
!1979 = !DILocation(line: 1738, column: 8, scope: !1980)
!1980 = distinct !DILexicalBlock(scope: !1981, file: !378, line: 1738, column: 8)
!1981 = distinct !DILexicalBlock(scope: !1976, file: !378, line: 1735, column: 3)
!1982 = !DILocation(line: 1738, column: 35, scope: !1980)
!1983 = !DILocation(line: 1738, column: 8, scope: !1981)
!1984 = !DILocation(line: 1741, column: 66, scope: !1985)
!1985 = distinct !DILexicalBlock(scope: !1980, file: !378, line: 1739, column: 4)
!1986 = !DILocation(line: 1741, column: 5, scope: !1985)
!1987 = !DILocation(line: 1742, column: 5, scope: !1985)
!1988 = !DILocation(line: 1743, column: 9, scope: !1989)
!1989 = distinct !DILexicalBlock(scope: !1985, file: !378, line: 1743, column: 9)
!1990 = !DILocation(line: 1743, column: 26, scope: !1989)
!1991 = !DILocation(line: 1743, column: 9, scope: !1985)
!1992 = !DILocation(line: 1745, column: 6, scope: !1993)
!1993 = distinct !DILexicalBlock(scope: !1994, file: !378, line: 1745, column: 6)
!1994 = distinct !DILexicalBlock(scope: !1989, file: !378, line: 1744, column: 5)
!1995 = !{i64 2148085660}
!1996 = !{i64 2148085711}
!1997 = !DILocation(line: 1746, column: 5, scope: !1994)
!1998 = !DILocation(line: 1756, column: 5, scope: !1999)
!1999 = distinct !DILexicalBlock(scope: !1980, file: !378, line: 1753, column: 4)
!2000 = !DILocation(line: 1757, column: 14, scope: !1999)
!2001 = !DILocation(line: 1764, column: 4, scope: !2002)
!2002 = distinct !DILexicalBlock(scope: !1976, file: !378, line: 1761, column: 3)
!2003 = !DILocation(line: 1765, column: 13, scope: !2002)
!2004 = !DILocation(line: 1767, column: 8, scope: !2005)
!2005 = distinct !DILexicalBlock(scope: !2002, file: !378, line: 1767, column: 8)
!2006 = !DILocation(line: 1767, column: 35, scope: !2005)
!2007 = !DILocation(line: 1767, column: 8, scope: !2002)
!2008 = distinct !{!2008, !2009, !2010}
!2009 = !DILocation(line: 1657, column: 2, scope: !1926)
!2010 = !DILocation(line: 1777, column: 2, scope: !1926)
!2011 = !DILocation(line: 1702, column: 9, scope: !1937)
!2012 = !DILocation(line: 0, scope: !1934)
!2013 = !DILocation(line: 1778, column: 1, scope: !1913)
!2014 = !DILocation(line: 0, scope: !1924)
!2015 = distinct !DISubprogram(name: "xQueueReceiveFromISR", scope: !378, file: !378, line: 1781, type: !2016, scopeLine: 1782, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !377, retainedNodes: !2018)
!2016 = !DISubroutineType(types: !2017)
!2017 = !{!51, !1087, !1616, !1497}
!2018 = !{!2019, !2020, !2021, !2022, !2023, !2024, !2025, !2027}
!2019 = !DILocalVariable(name: "xQueue", arg: 1, scope: !2015, file: !378, line: 1781, type: !1087)
!2020 = !DILocalVariable(name: "pvBuffer", arg: 2, scope: !2015, file: !378, line: 1781, type: !1616)
!2021 = !DILocalVariable(name: "pxHigherPriorityTaskWoken", arg: 3, scope: !2015, file: !378, line: 1781, type: !1497)
!2022 = !DILocalVariable(name: "xReturn", scope: !2015, file: !378, line: 1783, type: !51)
!2023 = !DILocalVariable(name: "uxSavedInterruptStatus", scope: !2015, file: !378, line: 1784, type: !56)
!2024 = !DILocalVariable(name: "pxQueue", scope: !2015, file: !378, line: 1785, type: !1094)
!2025 = !DILocalVariable(name: "uxMessagesWaiting", scope: !2026, file: !378, line: 1808, type: !1155)
!2026 = distinct !DILexicalBlock(scope: !2015, file: !378, line: 1807, column: 2)
!2027 = !DILocalVariable(name: "cRxLock", scope: !2028, file: !378, line: 1813, type: !1511)
!2028 = distinct !DILexicalBlock(scope: !2029, file: !378, line: 1812, column: 3)
!2029 = distinct !DILexicalBlock(scope: !2026, file: !378, line: 1811, column: 7)
!2030 = !DILocation(line: 0, scope: !2015)
!2031 = !DILocation(line: 211, column: 2, scope: !1514, inlinedAt: !2032)
!2032 = distinct !DILocation(line: 1806, column: 27, scope: !2015)
!2033 = !DILocation(line: 0, scope: !1514, inlinedAt: !2032)
!2034 = !DILocation(line: 1808, column: 50, scope: !2026)
!2035 = !DILocation(line: 0, scope: !2026)
!2036 = !DILocation(line: 1811, column: 25, scope: !2029)
!2037 = !DILocation(line: 1811, column: 7, scope: !2026)
!2038 = !DILocation(line: 1813, column: 36, scope: !2028)
!2039 = !DILocation(line: 0, scope: !2028)
!2040 = !DILocation(line: 1817, column: 4, scope: !2028)
!2041 = !DILocation(line: 1818, column: 51, scope: !2028)
!2042 = !DILocation(line: 1818, column: 31, scope: !2028)
!2043 = !DILocation(line: 1824, column: 16, scope: !2044)
!2044 = distinct !DILexicalBlock(scope: !2028, file: !378, line: 1824, column: 8)
!2045 = !DILocation(line: 1824, column: 8, scope: !2028)
!2046 = !DILocation(line: 1826, column: 9, scope: !2047)
!2047 = distinct !DILexicalBlock(scope: !2048, file: !378, line: 1826, column: 9)
!2048 = distinct !DILexicalBlock(scope: !2044, file: !378, line: 1825, column: 4)
!2049 = !DILocation(line: 1826, column: 9, scope: !2048)
!2050 = !DILocation(line: 1828, column: 10, scope: !2051)
!2051 = distinct !DILexicalBlock(scope: !2052, file: !378, line: 1828, column: 10)
!2052 = distinct !DILexicalBlock(scope: !2047, file: !378, line: 1827, column: 5)
!2053 = !DILocation(line: 1828, column: 72, scope: !2051)
!2054 = !DILocation(line: 1828, column: 10, scope: !2052)
!2055 = !DILocation(line: 1834, column: 35, scope: !2056)
!2056 = distinct !DILexicalBlock(scope: !2057, file: !378, line: 1833, column: 7)
!2057 = distinct !DILexicalBlock(scope: !2058, file: !378, line: 1832, column: 11)
!2058 = distinct !DILexicalBlock(scope: !2051, file: !378, line: 1829, column: 6)
!2059 = !DILocation(line: 1835, column: 7, scope: !2056)
!2060 = !DILocation(line: 1855, column: 45, scope: !2061)
!2061 = distinct !DILexicalBlock(scope: !2044, file: !378, line: 1852, column: 4)
!2062 = !DILocation(line: 1855, column: 22, scope: !2061)
!2063 = !DILocation(line: 0, scope: !2029)
!2064 = !DILocation(line: 0, scope: !1553, inlinedAt: !2065)
!2065 = distinct !DILocation(line: 1866, column: 2, scope: !2015)
!2066 = !DILocation(line: 229, column: 2, scope: !1553, inlinedAt: !2065)
!2067 = !DILocation(line: 1868, column: 2, scope: !2015)
!2068 = distinct !DISubprogram(name: "xQueuePeekFromISR", scope: !378, file: !378, line: 1872, type: !2069, scopeLine: 1873, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !377, retainedNodes: !2071)
!2069 = !DISubroutineType(types: !2070)
!2070 = !{!51, !1087, !1616}
!2071 = !{!2072, !2073, !2074, !2075, !2076, !2077}
!2072 = !DILocalVariable(name: "xQueue", arg: 1, scope: !2068, file: !378, line: 1872, type: !1087)
!2073 = !DILocalVariable(name: "pvBuffer", arg: 2, scope: !2068, file: !378, line: 1872, type: !1616)
!2074 = !DILocalVariable(name: "xReturn", scope: !2068, file: !378, line: 1874, type: !51)
!2075 = !DILocalVariable(name: "uxSavedInterruptStatus", scope: !2068, file: !378, line: 1875, type: !56)
!2076 = !DILocalVariable(name: "pcOriginalReadPosition", scope: !2068, file: !378, line: 1876, type: !389)
!2077 = !DILocalVariable(name: "pxQueue", scope: !2068, file: !378, line: 1877, type: !1094)
!2078 = !DILocation(line: 0, scope: !2068)
!2079 = !DILocation(line: 211, column: 2, scope: !1514, inlinedAt: !2080)
!2080 = distinct !DILocation(line: 1899, column: 27, scope: !2068)
!2081 = !DILocation(line: 0, scope: !1514, inlinedAt: !2080)
!2082 = !DILocation(line: 1902, column: 16, scope: !2083)
!2083 = distinct !DILexicalBlock(scope: !2084, file: !378, line: 1902, column: 7)
!2084 = distinct !DILexicalBlock(scope: !2068, file: !378, line: 1900, column: 2)
!2085 = !DILocation(line: 1902, column: 34, scope: !2083)
!2086 = !DILocation(line: 1902, column: 7, scope: !2084)
!2087 = !DILocation(line: 1908, column: 47, scope: !2088)
!2088 = distinct !DILexicalBlock(scope: !2083, file: !378, line: 1903, column: 3)
!2089 = !DILocation(line: 1909, column: 4, scope: !2088)
!2090 = !DILocation(line: 1910, column: 33, scope: !2088)
!2091 = !DILocation(line: 1913, column: 3, scope: !2088)
!2092 = !DILocation(line: 0, scope: !2083)
!2093 = !DILocation(line: 0, scope: !1553, inlinedAt: !2094)
!2094 = distinct !DILocation(line: 1920, column: 2, scope: !2068)
!2095 = !DILocation(line: 229, column: 2, scope: !1553, inlinedAt: !2094)
!2096 = !DILocation(line: 1922, column: 2, scope: !2068)
!2097 = distinct !DISubprogram(name: "uxQueueMessagesWaiting", scope: !378, file: !378, line: 1926, type: !2098, scopeLine: 1927, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !377, retainedNodes: !2101)
!2098 = !DISubroutineType(types: !2099)
!2099 = !{!56, !2100}
!2100 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1087)
!2101 = !{!2102, !2103}
!2102 = !DILocalVariable(name: "xQueue", arg: 1, scope: !2097, file: !378, line: 1926, type: !2100)
!2103 = !DILocalVariable(name: "uxReturn", scope: !2097, file: !378, line: 1928, type: !56)
!2104 = !DILocation(line: 0, scope: !2097)
!2105 = !DILocation(line: 1932, column: 2, scope: !2097)
!2106 = !DILocation(line: 1934, column: 40, scope: !2107)
!2107 = distinct !DILexicalBlock(scope: !2097, file: !378, line: 1933, column: 2)
!2108 = !DILocation(line: 1936, column: 2, scope: !2097)
!2109 = !DILocation(line: 1938, column: 2, scope: !2097)
!2110 = distinct !DISubprogram(name: "uxQueueSpacesAvailable", scope: !378, file: !378, line: 1942, type: !2098, scopeLine: 1943, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !377, retainedNodes: !2111)
!2111 = !{!2112, !2113, !2114}
!2112 = !DILocalVariable(name: "xQueue", arg: 1, scope: !2110, file: !378, line: 1942, type: !2100)
!2113 = !DILocalVariable(name: "uxReturn", scope: !2110, file: !378, line: 1944, type: !56)
!2114 = !DILocalVariable(name: "pxQueue", scope: !2110, file: !378, line: 1945, type: !1094)
!2115 = !DILocation(line: 0, scope: !2110)
!2116 = !DILocation(line: 1949, column: 2, scope: !2110)
!2117 = !DILocation(line: 1951, column: 23, scope: !2118)
!2118 = distinct !DILexicalBlock(scope: !2110, file: !378, line: 1950, column: 2)
!2119 = !DILocation(line: 1951, column: 43, scope: !2118)
!2120 = !DILocation(line: 1951, column: 32, scope: !2118)
!2121 = !DILocation(line: 1953, column: 2, scope: !2110)
!2122 = !DILocation(line: 1955, column: 2, scope: !2110)
!2123 = distinct !DISubprogram(name: "uxQueueMessagesWaitingFromISR", scope: !378, file: !378, line: 1959, type: !2098, scopeLine: 1960, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !377, retainedNodes: !2124)
!2124 = !{!2125, !2126, !2127}
!2125 = !DILocalVariable(name: "xQueue", arg: 1, scope: !2123, file: !378, line: 1959, type: !2100)
!2126 = !DILocalVariable(name: "uxReturn", scope: !2123, file: !378, line: 1961, type: !56)
!2127 = !DILocalVariable(name: "pxQueue", scope: !2123, file: !378, line: 1962, type: !1094)
!2128 = !DILocation(line: 0, scope: !2123)
!2129 = !DILocation(line: 1965, column: 22, scope: !2123)
!2130 = !DILocation(line: 1967, column: 2, scope: !2123)
!2131 = distinct !DISubprogram(name: "vQueueDelete", scope: !378, file: !378, line: 1971, type: !2132, scopeLine: 1972, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !377, retainedNodes: !2134)
!2132 = !DISubroutineType(types: !2133)
!2133 = !{null, !1087}
!2134 = !{!2135, !2136}
!2135 = !DILocalVariable(name: "xQueue", arg: 1, scope: !2131, file: !378, line: 1971, type: !1087)
!2136 = !DILocalVariable(name: "pxQueue", scope: !2131, file: !378, line: 1973, type: !1094)
!2137 = !DILocation(line: 0, scope: !2131)
!2138 = !DILocation(line: 1988, column: 14, scope: !2139)
!2139 = distinct !DILexicalBlock(scope: !2131, file: !378, line: 1985, column: 2)
!2140 = !DILocation(line: 1988, column: 3, scope: !2139)
!2141 = !DILocation(line: 2010, column: 1, scope: !2131)
!2142 = distinct !DISubprogram(name: "xQueueIsQueueEmptyFromISR", scope: !378, file: !378, line: 2308, type: !2143, scopeLine: 2309, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !377, retainedNodes: !2145)
!2143 = !DISubroutineType(types: !2144)
!2144 = !{!51, !2100}
!2145 = !{!2146, !2147, !2148}
!2146 = !DILocalVariable(name: "xQueue", arg: 1, scope: !2142, file: !378, line: 2308, type: !2100)
!2147 = !DILocalVariable(name: "xReturn", scope: !2142, file: !378, line: 2310, type: !51)
!2148 = !DILocalVariable(name: "pxQueue", scope: !2142, file: !378, line: 2311, type: !1094)
!2149 = !DILocation(line: 0, scope: !2142)
!2150 = !DILocation(line: 2314, column: 15, scope: !2151)
!2151 = distinct !DILexicalBlock(scope: !2142, file: !378, line: 2314, column: 6)
!2152 = !DILocation(line: 2314, column: 33, scope: !2151)
!2153 = !DILocation(line: 2323, column: 2, scope: !2142)
!2154 = distinct !DISubprogram(name: "xQueueIsQueueFullFromISR", scope: !378, file: !378, line: 2348, type: !2143, scopeLine: 2349, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !377, retainedNodes: !2155)
!2155 = !{!2156, !2157, !2158}
!2156 = !DILocalVariable(name: "xQueue", arg: 1, scope: !2154, file: !378, line: 2348, type: !2100)
!2157 = !DILocalVariable(name: "xReturn", scope: !2154, file: !378, line: 2350, type: !51)
!2158 = !DILocalVariable(name: "pxQueue", scope: !2154, file: !378, line: 2351, type: !1094)
!2159 = !DILocation(line: 0, scope: !2154)
!2160 = !DILocation(line: 2354, column: 15, scope: !2161)
!2161 = distinct !DILexicalBlock(scope: !2154, file: !378, line: 2354, column: 6)
!2162 = !DILocation(line: 2354, column: 45, scope: !2161)
!2163 = !DILocation(line: 2354, column: 33, scope: !2161)
!2164 = !DILocation(line: 2363, column: 2, scope: !2154)
!2165 = distinct !DISubprogram(name: "xTaskCreate", scope: !60, file: !60, line: 730, type: !2166, scopeLine: 736, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !59, retainedNodes: !2176)
!2166 = !DISubroutineType(types: !2167)
!2167 = !{!51, !974, !2168, !2171, !1616, !56, !2174}
!2168 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2169)
!2169 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2170, size: 32)
!2170 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !110)
!2171 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2172)
!2172 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint16_t", file: !8, line: 36, baseType: !2173)
!2173 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint16_t", file: !10, line: 57, baseType: !118)
!2174 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2175)
!2175 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !119, size: 32)
!2176 = !{!2177, !2178, !2179, !2180, !2181, !2182, !2183, !2184, !2185}
!2177 = !DILocalVariable(name: "pxTaskCode", arg: 1, scope: !2165, file: !60, line: 730, type: !974)
!2178 = !DILocalVariable(name: "pcName", arg: 2, scope: !2165, file: !60, line: 731, type: !2168)
!2179 = !DILocalVariable(name: "usStackDepth", arg: 3, scope: !2165, file: !60, line: 732, type: !2171)
!2180 = !DILocalVariable(name: "pvParameters", arg: 4, scope: !2165, file: !60, line: 733, type: !1616)
!2181 = !DILocalVariable(name: "uxPriority", arg: 5, scope: !2165, file: !60, line: 734, type: !56)
!2182 = !DILocalVariable(name: "pxCreatedTask", arg: 6, scope: !2165, file: !60, line: 735, type: !2174)
!2183 = !DILocalVariable(name: "pxNewTCB", scope: !2165, file: !60, line: 737, type: !71)
!2184 = !DILocalVariable(name: "xReturn", scope: !2165, file: !60, line: 738, type: !51)
!2185 = !DILocalVariable(name: "pxStack", scope: !2186, file: !60, line: 767, type: !107)
!2186 = distinct !DILexicalBlock(scope: !2165, file: !60, line: 766, column: 3)
!2187 = !DILocation(line: 0, scope: !2165)
!2188 = !DILocation(line: 770, column: 32, scope: !2186)
!2189 = !DILocation(line: 770, column: 58, scope: !2186)
!2190 = !DILocation(line: 770, column: 14, scope: !2186)
!2191 = !DILocation(line: 0, scope: !2186)
!2192 = !DILocation(line: 772, column: 16, scope: !2193)
!2193 = distinct !DILexicalBlock(scope: !2186, file: !60, line: 772, column: 8)
!2194 = !DILocation(line: 772, column: 8, scope: !2186)
!2195 = !DILocation(line: 775, column: 28, scope: !2196)
!2196 = distinct !DILexicalBlock(scope: !2193, file: !60, line: 773, column: 4)
!2197 = !DILocation(line: 777, column: 18, scope: !2198)
!2198 = distinct !DILexicalBlock(scope: !2196, file: !60, line: 777, column: 9)
!2199 = !DILocation(line: 777, column: 9, scope: !2196)
!2200 = !DILocation(line: 786, column: 6, scope: !2201)
!2201 = distinct !DILexicalBlock(scope: !2198, file: !60, line: 783, column: 5)
!2202 = !DILocation(line: 775, column: 16, scope: !2196)
!2203 = !DILocation(line: 780, column: 16, scope: !2204)
!2204 = distinct !DILexicalBlock(scope: !2198, file: !60, line: 778, column: 5)
!2205 = !DILocation(line: 780, column: 24, scope: !2204)
!2206 = !{!2207, !650, i64 48}
!2207 = !{!"tskTaskControlBlock", !650, i64 0, !874, i64 4, !874, i64 24, !849, i64 44, !650, i64 48, !565, i64 52, !849, i64 68, !849, i64 72, !581, i64 76, !565, i64 80}
!2208 = !DILocation(line: 806, column: 4, scope: !2209)
!2209 = distinct !DILexicalBlock(scope: !2210, file: !60, line: 797, column: 3)
!2210 = distinct !DILexicalBlock(scope: !2165, file: !60, line: 796, column: 7)
!2211 = !DILocation(line: 807, column: 4, scope: !2209)
!2212 = !DILocation(line: 809, column: 3, scope: !2209)
!2213 = !DILocation(line: 0, scope: !2210)
!2214 = !DILocation(line: 815, column: 3, scope: !2165)
!2215 = distinct !DISubprogram(name: "prvInitialiseNewTask", scope: !60, file: !60, line: 821, type: !2216, scopeLine: 829, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !59, retainedNodes: !2228)
!2216 = !DISubroutineType(types: !2217)
!2217 = !{null, !974, !2168, !2218, !1616, !56, !2174, !71, !2219}
!2218 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !47)
!2219 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2220)
!2220 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2221, size: 32)
!2221 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2222)
!2222 = !DIDerivedType(tag: DW_TAG_typedef, name: "MemoryRegion_t", file: !63, line: 116, baseType: !2223)
!2223 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xMEMORY_REGION", file: !63, line: 111, size: 96, elements: !2224)
!2224 = !{!2225, !2226, !2227}
!2225 = !DIDerivedType(tag: DW_TAG_member, name: "pvBaseAddress", scope: !2223, file: !63, line: 113, baseType: !5, size: 32)
!2226 = !DIDerivedType(tag: DW_TAG_member, name: "ulLengthInBytes", scope: !2223, file: !63, line: 114, baseType: !47, size: 32, offset: 32)
!2227 = !DIDerivedType(tag: DW_TAG_member, name: "ulParameters", scope: !2223, file: !63, line: 115, baseType: !47, size: 32, offset: 64)
!2228 = !{!2229, !2230, !2231, !2232, !2233, !2234, !2235, !2236, !2237, !2238}
!2229 = !DILocalVariable(name: "pxTaskCode", arg: 1, scope: !2215, file: !60, line: 821, type: !974)
!2230 = !DILocalVariable(name: "pcName", arg: 2, scope: !2215, file: !60, line: 822, type: !2168)
!2231 = !DILocalVariable(name: "ulStackDepth", arg: 3, scope: !2215, file: !60, line: 823, type: !2218)
!2232 = !DILocalVariable(name: "pvParameters", arg: 4, scope: !2215, file: !60, line: 824, type: !1616)
!2233 = !DILocalVariable(name: "uxPriority", arg: 5, scope: !2215, file: !60, line: 825, type: !56)
!2234 = !DILocalVariable(name: "pxCreatedTask", arg: 6, scope: !2215, file: !60, line: 826, type: !2174)
!2235 = !DILocalVariable(name: "pxNewTCB", arg: 7, scope: !2215, file: !60, line: 827, type: !71)
!2236 = !DILocalVariable(name: "xRegions", arg: 8, scope: !2215, file: !60, line: 828, type: !2219)
!2237 = !DILocalVariable(name: "pxTopOfStack", scope: !2215, file: !60, line: 830, type: !107)
!2238 = !DILocalVariable(name: "x", scope: !2215, file: !60, line: 831, type: !56)
!2239 = !DILocation(line: 0, scope: !2215)
!2240 = !DILocation(line: 861, column: 31, scope: !2241)
!2241 = distinct !DILexicalBlock(scope: !2215, file: !60, line: 860, column: 2)
!2242 = !DILocation(line: 861, column: 53, scope: !2241)
!2243 = !DILocation(line: 861, column: 21, scope: !2241)
!2244 = !DILocation(line: 862, column: 40, scope: !2241)
!2245 = !DILocation(line: 862, column: 81, scope: !2241)
!2246 = !DILocation(line: 862, column: 18, scope: !2241)
!2247 = !DILocation(line: 889, column: 13, scope: !2248)
!2248 = distinct !DILexicalBlock(scope: !2215, file: !60, line: 889, column: 6)
!2249 = !DILocation(line: 889, column: 6, scope: !2215)
!2250 = !DILocation(line: 893, column: 32, scope: !2251)
!2251 = distinct !DILexicalBlock(scope: !2252, file: !60, line: 892, column: 3)
!2252 = distinct !DILexicalBlock(scope: !2253, file: !60, line: 891, column: 3)
!2253 = distinct !DILexicalBlock(scope: !2254, file: !60, line: 891, column: 3)
!2254 = distinct !DILexicalBlock(scope: !2248, file: !60, line: 890, column: 2)
!2255 = !DILocation(line: 893, column: 4, scope: !2251)
!2256 = !DILocation(line: 893, column: 30, scope: !2251)
!2257 = !DILocation(line: 898, column: 8, scope: !2258)
!2258 = distinct !DILexicalBlock(scope: !2251, file: !60, line: 898, column: 8)
!2259 = !DILocation(line: 898, column: 20, scope: !2258)
!2260 = !DILocation(line: 898, column: 8, scope: !2251)
!2261 = distinct !{!2261, !2262, !2263, !577}
!2262 = !DILocation(line: 891, column: 3, scope: !2253)
!2263 = !DILocation(line: 906, column: 3, scope: !2253)
!2264 = !DILocation(line: 910, column: 3, scope: !2254)
!2265 = !DILocation(line: 910, column: 55, scope: !2254)
!2266 = !DILocation(line: 911, column: 2, scope: !2254)
!2267 = !DILocation(line: 916, column: 3, scope: !2268)
!2268 = distinct !DILexicalBlock(scope: !2248, file: !60, line: 913, column: 2)
!2269 = !DILocation(line: 916, column: 29, scope: !2268)
!2270 = !DILocation(line: 921, column: 6, scope: !2215)
!2271 = !DILocation(line: 930, column: 12, scope: !2215)
!2272 = !DILocation(line: 930, column: 23, scope: !2215)
!2273 = !{!2207, !849, i64 44}
!2274 = !DILocation(line: 933, column: 13, scope: !2275)
!2275 = distinct !DILexicalBlock(scope: !2215, file: !60, line: 932, column: 2)
!2276 = !DILocation(line: 933, column: 28, scope: !2275)
!2277 = !{!2207, !849, i64 68}
!2278 = !DILocation(line: 934, column: 13, scope: !2275)
!2279 = !DILocation(line: 934, column: 27, scope: !2275)
!2280 = !{!2207, !849, i64 72}
!2281 = !DILocation(line: 938, column: 36, scope: !2215)
!2282 = !DILocation(line: 938, column: 2, scope: !2215)
!2283 = !DILocation(line: 939, column: 36, scope: !2215)
!2284 = !DILocation(line: 939, column: 2, scope: !2215)
!2285 = !DILocation(line: 943, column: 2, scope: !2215)
!2286 = !{!2207, !650, i64 16}
!2287 = !DILocation(line: 946, column: 2, scope: !2215)
!2288 = !{!2207, !581, i64 24}
!2289 = !DILocation(line: 947, column: 2, scope: !2215)
!2290 = !{!2207, !650, i64 36}
!2291 = !DILocation(line: 989, column: 13, scope: !2292)
!2292 = distinct !DILexicalBlock(scope: !2215, file: !60, line: 988, column: 2)
!2293 = !DILocation(line: 989, column: 29, scope: !2292)
!2294 = !{!2207, !581, i64 76}
!2295 = !DILocation(line: 990, column: 13, scope: !2292)
!2296 = !DILocation(line: 990, column: 27, scope: !2292)
!2297 = !{!2207, !565, i64 80}
!2298 = !DILocation(line: 1053, column: 29, scope: !2299)
!2299 = distinct !DILexicalBlock(scope: !2300, file: !60, line: 1052, column: 3)
!2300 = distinct !DILexicalBlock(scope: !2215, file: !60, line: 1035, column: 2)
!2301 = !DILocation(line: 1053, column: 14, scope: !2299)
!2302 = !DILocation(line: 1053, column: 27, scope: !2299)
!2303 = !{!2207, !650, i64 0}
!2304 = !DILocation(line: 1059, column: 20, scope: !2305)
!2305 = distinct !DILexicalBlock(scope: !2215, file: !60, line: 1059, column: 6)
!2306 = !DILocation(line: 1059, column: 6, scope: !2215)
!2307 = !DILocation(line: 1063, column: 18, scope: !2308)
!2308 = distinct !DILexicalBlock(scope: !2305, file: !60, line: 1060, column: 2)
!2309 = !DILocation(line: 1064, column: 2, scope: !2308)
!2310 = !DILocation(line: 1069, column: 1, scope: !2215)
!2311 = distinct !DISubprogram(name: "prvAddNewTaskToReadyList", scope: !60, file: !60, line: 1072, type: !2312, scopeLine: 1073, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !59, retainedNodes: !2314)
!2312 = !DISubroutineType(types: !2313)
!2313 = !{null, !71}
!2314 = !{!2315}
!2315 = !DILocalVariable(name: "pxNewTCB", arg: 1, scope: !2311, file: !60, line: 1072, type: !71)
!2316 = !DILocation(line: 0, scope: !2311)
!2317 = !DILocation(line: 1076, column: 2, scope: !2311)
!2318 = !DILocation(line: 1078, column: 25, scope: !2319)
!2319 = distinct !DILexicalBlock(scope: !2311, file: !60, line: 1077, column: 2)
!2320 = !DILocation(line: 1079, column: 7, scope: !2321)
!2321 = distinct !DILexicalBlock(scope: !2319, file: !60, line: 1079, column: 7)
!2322 = !DILocation(line: 1079, column: 20, scope: !2321)
!2323 = !DILocation(line: 1079, column: 7, scope: !2319)
!2324 = !DILocation(line: 1083, column: 17, scope: !2325)
!2325 = distinct !DILexicalBlock(scope: !2321, file: !60, line: 1080, column: 3)
!2326 = !DILocation(line: 1085, column: 8, scope: !2327)
!2327 = distinct !DILexicalBlock(scope: !2325, file: !60, line: 1085, column: 8)
!2328 = !DILocation(line: 1085, column: 31, scope: !2327)
!2329 = !DILocation(line: 1085, column: 8, scope: !2325)
!2330 = !DILocation(line: 1090, column: 5, scope: !2331)
!2331 = distinct !DILexicalBlock(scope: !2327, file: !60, line: 1086, column: 4)
!2332 = !DILocation(line: 1091, column: 4, scope: !2331)
!2333 = !DILocation(line: 1102, column: 8, scope: !2334)
!2334 = distinct !DILexicalBlock(scope: !2335, file: !60, line: 1102, column: 8)
!2335 = distinct !DILexicalBlock(scope: !2321, file: !60, line: 1098, column: 3)
!2336 = !DILocation(line: 1102, column: 26, scope: !2334)
!2337 = !DILocation(line: 1102, column: 8, scope: !2335)
!2338 = !DILocation(line: 1104, column: 9, scope: !2339)
!2339 = distinct !DILexicalBlock(scope: !2340, file: !60, line: 1104, column: 9)
!2340 = distinct !DILexicalBlock(scope: !2334, file: !60, line: 1103, column: 4)
!2341 = !DILocation(line: 1104, column: 23, scope: !2339)
!2342 = !DILocation(line: 1104, column: 47, scope: !2339)
!2343 = !DILocation(line: 1104, column: 34, scope: !2339)
!2344 = !DILocation(line: 1104, column: 9, scope: !2340)
!2345 = !DILocation(line: 1106, column: 19, scope: !2346)
!2346 = distinct !DILexicalBlock(scope: !2339, file: !60, line: 1105, column: 5)
!2347 = !DILocation(line: 1107, column: 5, scope: !2346)
!2348 = !DILocation(line: 1119, column: 15, scope: !2319)
!2349 = !DILocation(line: 1129, column: 3, scope: !2319)
!2350 = !DILocation(line: 1133, column: 2, scope: !2311)
!2351 = !DILocation(line: 1135, column: 6, scope: !2352)
!2352 = distinct !DILexicalBlock(scope: !2311, file: !60, line: 1135, column: 6)
!2353 = !DILocation(line: 1135, column: 24, scope: !2352)
!2354 = !DILocation(line: 1135, column: 6, scope: !2311)
!2355 = !DILocation(line: 1139, column: 7, scope: !2356)
!2356 = distinct !DILexicalBlock(scope: !2357, file: !60, line: 1139, column: 7)
!2357 = distinct !DILexicalBlock(scope: !2352, file: !60, line: 1136, column: 2)
!2358 = !DILocation(line: 1139, column: 21, scope: !2356)
!2359 = !DILocation(line: 1139, column: 44, scope: !2356)
!2360 = !DILocation(line: 1139, column: 32, scope: !2356)
!2361 = !DILocation(line: 1139, column: 7, scope: !2357)
!2362 = !DILocation(line: 1141, column: 4, scope: !2363)
!2363 = distinct !DILexicalBlock(scope: !2364, file: !60, line: 1141, column: 4)
!2364 = distinct !DILexicalBlock(scope: !2356, file: !60, line: 1140, column: 3)
!2365 = !{i64 2148160647}
!2366 = !{i64 2148160698}
!2367 = !DILocation(line: 1142, column: 3, scope: !2364)
!2368 = !DILocation(line: 1152, column: 1, scope: !2311)
!2369 = distinct !DISubprogram(name: "prvInitialiseTaskLists", scope: !60, file: !60, line: 3545, type: !206, scopeLine: 3546, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !59, retainedNodes: !2370)
!2370 = !{!2371}
!2371 = !DILocalVariable(name: "uxPriority", scope: !2369, file: !60, line: 3547, type: !56)
!2372 = !DILocation(line: 0, scope: !2369)
!2373 = !DILocation(line: 3549, column: 2, scope: !2374)
!2374 = distinct !DILexicalBlock(scope: !2369, file: !60, line: 3549, column: 2)
!2375 = !DILocation(line: 3551, column: 23, scope: !2376)
!2376 = distinct !DILexicalBlock(scope: !2377, file: !60, line: 3550, column: 2)
!2377 = distinct !DILexicalBlock(scope: !2374, file: !60, line: 3549, column: 2)
!2378 = !DILocation(line: 3551, column: 3, scope: !2376)
!2379 = !DILocation(line: 3549, column: 101, scope: !2377)
!2380 = !DILocation(line: 3549, column: 51, scope: !2377)
!2381 = distinct !{!2381, !2373, !2382, !577}
!2382 = !DILocation(line: 3552, column: 2, scope: !2374)
!2383 = !DILocation(line: 3554, column: 2, scope: !2369)
!2384 = !DILocation(line: 3555, column: 2, scope: !2369)
!2385 = !DILocation(line: 3556, column: 2, scope: !2369)
!2386 = !DILocation(line: 3560, column: 3, scope: !2387)
!2387 = distinct !DILexicalBlock(scope: !2369, file: !60, line: 3559, column: 2)
!2388 = !DILocation(line: 3566, column: 3, scope: !2389)
!2389 = distinct !DILexicalBlock(scope: !2369, file: !60, line: 3565, column: 2)
!2390 = !DILocation(line: 3572, column: 20, scope: !2369)
!2391 = !DILocation(line: 3573, column: 28, scope: !2369)
!2392 = !DILocation(line: 3574, column: 1, scope: !2369)
!2393 = distinct !DISubprogram(name: "vTaskDelete", scope: !60, file: !60, line: 1157, type: !2394, scopeLine: 1158, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !59, retainedNodes: !2396)
!2394 = !DISubroutineType(types: !2395)
!2395 = !{null, !119}
!2396 = !{!2397, !2398}
!2397 = !DILocalVariable(name: "xTaskToDelete", arg: 1, scope: !2393, file: !60, line: 1157, type: !119)
!2398 = !DILocalVariable(name: "pxTCB", scope: !2393, file: !60, line: 1159, type: !71)
!2399 = !DILocation(line: 0, scope: !2393)
!2400 = !DILocation(line: 1161, column: 3, scope: !2393)
!2401 = !DILocation(line: 1165, column: 12, scope: !2402)
!2402 = distinct !DILexicalBlock(scope: !2393, file: !60, line: 1162, column: 3)
!2403 = !DILocation(line: 1168, column: 32, scope: !2404)
!2404 = distinct !DILexicalBlock(scope: !2402, file: !60, line: 1168, column: 8)
!2405 = !DILocation(line: 1168, column: 8, scope: !2404)
!2406 = !DILocation(line: 1168, column: 51, scope: !2404)
!2407 = !DILocation(line: 1168, column: 8, scope: !2402)
!2408 = !DILocation(line: 1170, column: 5, scope: !2409)
!2409 = distinct !DILexicalBlock(scope: !2410, file: !60, line: 1170, column: 5)
!2410 = distinct !DILexicalBlock(scope: !2411, file: !60, line: 1170, column: 5)
!2411 = distinct !DILexicalBlock(scope: !2404, file: !60, line: 1169, column: 4)
!2412 = !DILocation(line: 1170, column: 5, scope: !2410)
!2413 = !DILocation(line: 1170, column: 5, scope: !2414)
!2414 = distinct !DILexicalBlock(scope: !2409, file: !60, line: 1170, column: 5)
!2415 = !DILocation(line: 1178, column: 8, scope: !2416)
!2416 = distinct !DILexicalBlock(scope: !2402, file: !60, line: 1178, column: 8)
!2417 = !{!2207, !650, i64 40}
!2418 = !DILocation(line: 1178, column: 62, scope: !2416)
!2419 = !DILocation(line: 1178, column: 8, scope: !2402)
!2420 = !DILocation(line: 1180, column: 14, scope: !2421)
!2421 = distinct !DILexicalBlock(scope: !2416, file: !60, line: 1179, column: 4)
!2422 = !DILocation(line: 1181, column: 4, scope: !2421)
!2423 = !DILocation(line: 1191, column: 16, scope: !2402)
!2424 = !DILocation(line: 1193, column: 17, scope: !2425)
!2425 = distinct !DILexicalBlock(scope: !2402, file: !60, line: 1193, column: 8)
!2426 = !DILocation(line: 1193, column: 14, scope: !2425)
!2427 = !DILocation(line: 1193, column: 8, scope: !2402)
!2428 = !DILocation(line: 1200, column: 5, scope: !2429)
!2429 = distinct !DILexicalBlock(scope: !2425, file: !60, line: 1194, column: 4)
!2430 = !DILocation(line: 1205, column: 5, scope: !2429)
!2431 = !DILocation(line: 1213, column: 4, scope: !2429)
!2432 = !DILocation(line: 1216, column: 5, scope: !2433)
!2433 = distinct !DILexicalBlock(scope: !2425, file: !60, line: 1215, column: 4)
!2434 = !DILocation(line: 1217, column: 5, scope: !2433)
!2435 = !DILocation(line: 1221, column: 5, scope: !2433)
!2436 = !DILocation(line: 1226, column: 3, scope: !2393)
!2437 = !DILocation(line: 1230, column: 7, scope: !2438)
!2438 = distinct !DILexicalBlock(scope: !2393, file: !60, line: 1230, column: 7)
!2439 = !DILocation(line: 1230, column: 25, scope: !2438)
!2440 = !DILocation(line: 1230, column: 7, scope: !2393)
!2441 = !DILocation(line: 1232, column: 17, scope: !2442)
!2442 = distinct !DILexicalBlock(scope: !2443, file: !60, line: 1232, column: 8)
!2443 = distinct !DILexicalBlock(scope: !2438, file: !60, line: 1231, column: 3)
!2444 = !DILocation(line: 1232, column: 14, scope: !2442)
!2445 = !DILocation(line: 1232, column: 8, scope: !2443)
!2446 = !DILocation(line: 1235, column: 5, scope: !2447)
!2447 = distinct !DILexicalBlock(scope: !2448, file: !60, line: 1235, column: 5)
!2448 = distinct !DILexicalBlock(scope: !2442, file: !60, line: 1233, column: 4)
!2449 = !{i64 2148161894}
!2450 = !{i64 2148161945}
!2451 = !DILocation(line: 1236, column: 4, scope: !2448)
!2452 = !DILocation(line: 1242, column: 2, scope: !2393)
!2453 = distinct !DISubprogram(name: "prvDeleteTCB", scope: !60, file: !60, line: 3825, type: !2312, scopeLine: 3826, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !59, retainedNodes: !2454)
!2454 = !{!2455}
!2455 = !DILocalVariable(name: "pxTCB", arg: 1, scope: !2453, file: !60, line: 3825, type: !71)
!2456 = !DILocation(line: 0, scope: !2453)
!2457 = !DILocation(line: 3844, column: 22, scope: !2458)
!2458 = distinct !DILexicalBlock(scope: !2453, file: !60, line: 3841, column: 3)
!2459 = !DILocation(line: 3844, column: 4, scope: !2458)
!2460 = !DILocation(line: 3845, column: 15, scope: !2458)
!2461 = !DILocation(line: 3845, column: 4, scope: !2458)
!2462 = !DILocation(line: 3874, column: 2, scope: !2453)
!2463 = distinct !DISubprogram(name: "prvResetNextTaskUnblockTime", scope: !60, file: !60, line: 3879, type: !206, scopeLine: 3880, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !59, retainedNodes: !2464)
!2464 = !{!2465}
!2465 = !DILocalVariable(name: "pxTCB", scope: !2463, file: !60, line: 3881, type: !71)
!2466 = !DILocation(line: 3883, column: 6, scope: !2467)
!2467 = distinct !DILexicalBlock(scope: !2463, file: !60, line: 3883, column: 6)
!2468 = !DILocation(line: 3883, column: 6, scope: !2463)
!2469 = !DILocation(line: 3897, column: 15, scope: !2470)
!2470 = distinct !DILexicalBlock(scope: !2467, file: !60, line: 3892, column: 2)
!2471 = !{!874, !650, i64 12}
!2472 = !DILocation(line: 0, scope: !2463)
!2473 = !DILocation(line: 3898, column: 26, scope: !2470)
!2474 = !{!2207, !581, i64 4}
!2475 = !DILocation(line: 0, scope: !2467)
!2476 = !DILocation(line: 3900, column: 1, scope: !2463)
!2477 = distinct !DISubprogram(name: "vTaskDelayUntil", scope: !60, file: !60, line: 1249, type: !2478, scopeLine: 1250, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !59, retainedNodes: !2482)
!2478 = !DISubroutineType(types: !2479)
!2479 = !{null, !2480, !907}
!2480 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2481)
!2481 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !54, size: 32)
!2482 = !{!2483, !2484, !2485, !2486, !2487, !2488}
!2483 = !DILocalVariable(name: "pxPreviousWakeTime", arg: 1, scope: !2477, file: !60, line: 1249, type: !2480)
!2484 = !DILocalVariable(name: "xTimeIncrement", arg: 2, scope: !2477, file: !60, line: 1249, type: !907)
!2485 = !DILocalVariable(name: "xTimeToWake", scope: !2477, file: !60, line: 1251, type: !54)
!2486 = !DILocalVariable(name: "xAlreadyYielded", scope: !2477, file: !60, line: 1252, type: !51)
!2487 = !DILocalVariable(name: "xShouldDelay", scope: !2477, file: !60, line: 1252, type: !51)
!2488 = !DILocalVariable(name: "xConstTickCount", scope: !2489, file: !60, line: 1262, type: !907)
!2489 = distinct !DILexicalBlock(scope: !2477, file: !60, line: 1259, column: 3)
!2490 = !DILocation(line: 0, scope: !2477)
!2491 = !DILocation(line: 1258, column: 3, scope: !2477)
!2492 = !DILocation(line: 1262, column: 39, scope: !2489)
!2493 = !DILocation(line: 0, scope: !2489)
!2494 = !DILocation(line: 1265, column: 18, scope: !2489)
!2495 = !DILocation(line: 1265, column: 38, scope: !2489)
!2496 = !DILocation(line: 1267, column: 24, scope: !2497)
!2497 = distinct !DILexicalBlock(scope: !2489, file: !60, line: 1267, column: 8)
!2498 = !DILocation(line: 0, scope: !2497)
!2499 = !DILocation(line: 1267, column: 8, scope: !2489)
!2500 = !DILocation(line: 1274, column: 47, scope: !2501)
!2501 = distinct !DILexicalBlock(scope: !2502, file: !60, line: 1274, column: 9)
!2502 = distinct !DILexicalBlock(scope: !2497, file: !60, line: 1268, column: 4)
!2503 = !DILocation(line: 1288, column: 47, scope: !2504)
!2504 = distinct !DILexicalBlock(scope: !2505, file: !60, line: 1288, column: 9)
!2505 = distinct !DILexicalBlock(scope: !2497, file: !60, line: 1284, column: 4)
!2506 = !DILocation(line: 1299, column: 24, scope: !2489)
!2507 = !DILocation(line: 1301, column: 8, scope: !2489)
!2508 = !DILocation(line: 1307, column: 49, scope: !2509)
!2509 = distinct !DILexicalBlock(scope: !2510, file: !60, line: 1302, column: 4)
!2510 = distinct !DILexicalBlock(scope: !2489, file: !60, line: 1301, column: 8)
!2511 = !DILocation(line: 1307, column: 5, scope: !2509)
!2512 = !DILocation(line: 1308, column: 4, scope: !2509)
!2513 = !DILocation(line: 1314, column: 21, scope: !2477)
!2514 = !DILocation(line: 1318, column: 23, scope: !2515)
!2515 = distinct !DILexicalBlock(scope: !2477, file: !60, line: 1318, column: 7)
!2516 = !DILocation(line: 1318, column: 7, scope: !2477)
!2517 = !DILocation(line: 1320, column: 4, scope: !2518)
!2518 = distinct !DILexicalBlock(scope: !2519, file: !60, line: 1320, column: 4)
!2519 = distinct !DILexicalBlock(scope: !2515, file: !60, line: 1319, column: 3)
!2520 = !{i64 2148162499}
!2521 = !{i64 2148162550}
!2522 = !DILocation(line: 1321, column: 3, scope: !2519)
!2523 = !DILocation(line: 1326, column: 2, scope: !2477)
!2524 = distinct !DISubprogram(name: "vTaskSuspendAll", scope: !60, file: !60, line: 2100, type: !206, scopeLine: 2101, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !59, retainedNodes: !587)
!2525 = !DILocation(line: 2106, column: 2, scope: !2524)
!2526 = !DILocation(line: 2107, column: 1, scope: !2524)
!2527 = distinct !DISubprogram(name: "prvAddCurrentTaskToDelayedList", scope: !60, file: !60, line: 5080, type: !2528, scopeLine: 5081, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !59, retainedNodes: !2530)
!2528 = !DISubroutineType(types: !2529)
!2529 = !{null, !54, !1241}
!2530 = !{!2531, !2532, !2533, !2534}
!2531 = !DILocalVariable(name: "xTicksToWait", arg: 1, scope: !2527, file: !60, line: 5080, type: !54)
!2532 = !DILocalVariable(name: "xCanBlockIndefinitely", arg: 2, scope: !2527, file: !60, line: 5080, type: !1241)
!2533 = !DILocalVariable(name: "xTimeToWake", scope: !2527, file: !60, line: 5082, type: !54)
!2534 = !DILocalVariable(name: "xConstTickCount", scope: !2527, file: !60, line: 5083, type: !907)
!2535 = !DILocation(line: 0, scope: !2527)
!2536 = !DILocation(line: 5083, column: 36, scope: !2527)
!2537 = !DILocation(line: 5096, column: 23, scope: !2538)
!2538 = distinct !DILexicalBlock(scope: !2527, file: !60, line: 5096, column: 6)
!2539 = !DILocation(line: 5096, column: 37, scope: !2538)
!2540 = !DILocation(line: 5096, column: 6, scope: !2538)
!2541 = !DILocation(line: 5096, column: 56, scope: !2538)
!2542 = !DILocation(line: 5096, column: 6, scope: !2527)
!2543 = !DILocation(line: 5100, column: 3, scope: !2544)
!2544 = distinct !DILexicalBlock(scope: !2538, file: !60, line: 5097, column: 2)
!2545 = !DILocation(line: 5101, column: 2, scope: !2544)
!2546 = !DILocation(line: 5109, column: 22, scope: !2547)
!2547 = distinct !DILexicalBlock(scope: !2548, file: !60, line: 5109, column: 7)
!2548 = distinct !DILexicalBlock(scope: !2527, file: !60, line: 5108, column: 2)
!2549 = !DILocation(line: 5109, column: 41, scope: !2547)
!2550 = !DILocation(line: 5114, column: 44, scope: !2551)
!2551 = distinct !DILexicalBlock(scope: !2547, file: !60, line: 5110, column: 3)
!2552 = !DILocation(line: 5114, column: 58, scope: !2551)
!2553 = !DILocation(line: 5114, column: 4, scope: !2551)
!2554 = !DILocation(line: 5115, column: 3, scope: !2551)
!2555 = !DILocation(line: 5121, column: 34, scope: !2556)
!2556 = distinct !DILexicalBlock(scope: !2547, file: !60, line: 5117, column: 3)
!2557 = !DILocation(line: 5124, column: 4, scope: !2556)
!2558 = !DILocation(line: 5126, column: 20, scope: !2559)
!2559 = distinct !DILexicalBlock(scope: !2556, file: !60, line: 5126, column: 8)
!2560 = !DILocation(line: 5126, column: 8, scope: !2556)
!2561 = !DILocation(line: 5130, column: 18, scope: !2562)
!2562 = distinct !DILexicalBlock(scope: !2559, file: !60, line: 5127, column: 4)
!2563 = !DILocation(line: 5130, column: 48, scope: !2562)
!2564 = !DILocation(line: 5130, column: 62, scope: !2562)
!2565 = !DILocation(line: 5130, column: 5, scope: !2562)
!2566 = !DILocation(line: 5131, column: 4, scope: !2562)
!2567 = !DILocation(line: 5136, column: 18, scope: !2568)
!2568 = distinct !DILexicalBlock(scope: !2559, file: !60, line: 5133, column: 4)
!2569 = !DILocation(line: 5136, column: 40, scope: !2568)
!2570 = !DILocation(line: 5136, column: 54, scope: !2568)
!2571 = !DILocation(line: 5136, column: 5, scope: !2568)
!2572 = !DILocation(line: 5141, column: 23, scope: !2573)
!2573 = distinct !DILexicalBlock(scope: !2568, file: !60, line: 5141, column: 9)
!2574 = !DILocation(line: 5141, column: 21, scope: !2573)
!2575 = !DILocation(line: 5141, column: 9, scope: !2568)
!2576 = !DILocation(line: 5143, column: 27, scope: !2577)
!2577 = distinct !DILexicalBlock(scope: !2573, file: !60, line: 5142, column: 5)
!2578 = !DILocation(line: 5144, column: 5, scope: !2577)
!2579 = !DILocation(line: 5189, column: 1, scope: !2527)
!2580 = distinct !DISubprogram(name: "xTaskResumeAll", scope: !60, file: !60, line: 2173, type: !1018, scopeLine: 2174, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !59, retainedNodes: !2581)
!2581 = !{!2582, !2583, !2584}
!2582 = !DILocalVariable(name: "pxTCB", scope: !2580, file: !60, line: 2175, type: !71)
!2583 = !DILocalVariable(name: "xAlreadyYielded", scope: !2580, file: !60, line: 2176, type: !51)
!2584 = !DILocalVariable(name: "uxPendedCounts", scope: !2585, file: !60, line: 2232, type: !56)
!2585 = distinct !DILexicalBlock(scope: !2586, file: !60, line: 2231, column: 5)
!2586 = distinct !DILexicalBlock(scope: !2587, file: !60, line: 2194, column: 4)
!2587 = distinct !DILexicalBlock(scope: !2588, file: !60, line: 2193, column: 8)
!2588 = distinct !DILexicalBlock(scope: !2589, file: !60, line: 2192, column: 3)
!2589 = distinct !DILexicalBlock(scope: !2590, file: !60, line: 2191, column: 7)
!2590 = distinct !DILexicalBlock(scope: !2580, file: !60, line: 2188, column: 2)
!2591 = !DILocation(line: 0, scope: !2580)
!2592 = !DILocation(line: 2187, column: 2, scope: !2580)
!2593 = !DILocation(line: 2189, column: 3, scope: !2590)
!2594 = !DILocation(line: 2191, column: 7, scope: !2589)
!2595 = !DILocation(line: 2191, column: 28, scope: !2589)
!2596 = !DILocation(line: 2191, column: 7, scope: !2590)
!2597 = !DILocation(line: 2193, column: 8, scope: !2587)
!2598 = !DILocation(line: 2193, column: 31, scope: !2587)
!2599 = !DILocation(line: 2193, column: 8, scope: !2588)
!2600 = !DILocation(line: 2197, column: 12, scope: !2586)
!2601 = !DILocation(line: 2197, column: 5, scope: !2586)
!2602 = !DILocation(line: 2199, column: 14, scope: !2603)
!2603 = distinct !DILexicalBlock(scope: !2586, file: !60, line: 2198, column: 5)
!2604 = !DILocation(line: 2200, column: 39, scope: !2603)
!2605 = !DILocation(line: 2200, column: 15, scope: !2603)
!2606 = !DILocation(line: 2201, column: 39, scope: !2603)
!2607 = !DILocation(line: 2201, column: 15, scope: !2603)
!2608 = !DILocation(line: 2202, column: 6, scope: !2603)
!2609 = !DILocation(line: 2206, column: 17, scope: !2610)
!2610 = distinct !DILexicalBlock(scope: !2603, file: !60, line: 2206, column: 10)
!2611 = !DILocation(line: 2206, column: 31, scope: !2610)
!2612 = !DILocation(line: 2206, column: 45, scope: !2610)
!2613 = !DILocation(line: 2206, column: 28, scope: !2610)
!2614 = !DILocation(line: 2206, column: 10, scope: !2603)
!2615 = !DILocation(line: 2208, column: 21, scope: !2616)
!2616 = distinct !DILexicalBlock(scope: !2610, file: !60, line: 2207, column: 6)
!2617 = !DILocation(line: 2209, column: 6, scope: !2616)
!2618 = distinct !{!2618, !2601, !2619, !577}
!2619 = !DILocation(line: 2214, column: 5, scope: !2586)
!2620 = !DILocation(line: 2224, column: 6, scope: !2621)
!2621 = distinct !DILexicalBlock(scope: !2622, file: !60, line: 2217, column: 5)
!2622 = distinct !DILexicalBlock(scope: !2586, file: !60, line: 2216, column: 9)
!2623 = !DILocation(line: 2225, column: 5, scope: !2621)
!2624 = !DILocation(line: 2232, column: 35, scope: !2585)
!2625 = !DILocation(line: 0, scope: !2585)
!2626 = !DILocation(line: 2234, column: 25, scope: !2627)
!2627 = distinct !DILexicalBlock(scope: !2585, file: !60, line: 2234, column: 10)
!2628 = !DILocation(line: 2234, column: 10, scope: !2585)
!2629 = !DILocation(line: 2238, column: 12, scope: !2630)
!2630 = distinct !DILexicalBlock(scope: !2631, file: !60, line: 2238, column: 12)
!2631 = distinct !DILexicalBlock(scope: !2632, file: !60, line: 2237, column: 7)
!2632 = distinct !DILexicalBlock(scope: !2627, file: !60, line: 2235, column: 6)
!2633 = !DILocation(line: 2238, column: 33, scope: !2630)
!2634 = !DILocation(line: 2238, column: 12, scope: !2631)
!2635 = !DILocation(line: 2240, column: 23, scope: !2636)
!2636 = distinct !DILexicalBlock(scope: !2630, file: !60, line: 2239, column: 8)
!2637 = !DILocation(line: 2241, column: 8, scope: !2636)
!2638 = !DILocation(line: 2246, column: 8, scope: !2631)
!2639 = !DILocation(line: 2247, column: 31, scope: !2632)
!2640 = !DILocation(line: 2247, column: 7, scope: !2631)
!2641 = distinct !{!2641, !2642, !2643, !577}
!2642 = !DILocation(line: 2236, column: 7, scope: !2632)
!2643 = !DILocation(line: 2247, column: 52, scope: !2632)
!2644 = !DILocation(line: 2249, column: 21, scope: !2632)
!2645 = !DILocation(line: 2250, column: 6, scope: !2632)
!2646 = !DILocation(line: 2257, column: 9, scope: !2647)
!2647 = distinct !DILexicalBlock(scope: !2586, file: !60, line: 2257, column: 9)
!2648 = !DILocation(line: 2257, column: 23, scope: !2647)
!2649 = !DILocation(line: 2257, column: 9, scope: !2586)
!2650 = !DILocation(line: 2264, column: 6, scope: !2651)
!2651 = distinct !DILexicalBlock(scope: !2652, file: !60, line: 2264, column: 6)
!2652 = distinct !DILexicalBlock(scope: !2647, file: !60, line: 2258, column: 5)
!2653 = !{i64 2148170605}
!2654 = !{i64 2148170656}
!2655 = !DILocation(line: 2265, column: 5, scope: !2652)
!2656 = !DILocation(line: 2277, column: 2, scope: !2580)
!2657 = !DILocation(line: 2279, column: 2, scope: !2580)
!2658 = distinct !DISubprogram(name: "xTaskIncrementTick", scope: !60, file: !60, line: 2664, type: !1018, scopeLine: 2665, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !59, retainedNodes: !2659)
!2659 = !{!2660, !2661, !2662, !2663, !2666}
!2660 = !DILocalVariable(name: "pxTCB", scope: !2658, file: !60, line: 2666, type: !71)
!2661 = !DILocalVariable(name: "xItemValue", scope: !2658, file: !60, line: 2667, type: !54)
!2662 = !DILocalVariable(name: "xSwitchRequired", scope: !2658, file: !60, line: 2668, type: !51)
!2663 = !DILocalVariable(name: "xConstTickCount", scope: !2664, file: !60, line: 2678, type: !907)
!2664 = distinct !DILexicalBlock(scope: !2665, file: !60, line: 2675, column: 2)
!2665 = distinct !DILexicalBlock(scope: !2658, file: !60, line: 2674, column: 6)
!2666 = !DILocalVariable(name: "pxTemp", scope: !2667, file: !60, line: 2686, type: !131)
!2667 = distinct !DILexicalBlock(scope: !2668, file: !60, line: 2686, column: 4)
!2668 = distinct !DILexicalBlock(scope: !2669, file: !60, line: 2685, column: 3)
!2669 = distinct !DILexicalBlock(scope: !2664, file: !60, line: 2684, column: 7)
!2670 = !DILocation(line: 0, scope: !2658)
!2671 = !DILocation(line: 2674, column: 6, scope: !2665)
!2672 = !DILocation(line: 2674, column: 27, scope: !2665)
!2673 = !DILocation(line: 2674, column: 6, scope: !2658)
!2674 = !DILocation(line: 2678, column: 38, scope: !2664)
!2675 = !DILocation(line: 2678, column: 49, scope: !2664)
!2676 = !DILocation(line: 0, scope: !2664)
!2677 = !DILocation(line: 2682, column: 14, scope: !2664)
!2678 = !DILocation(line: 2684, column: 23, scope: !2669)
!2679 = !DILocation(line: 2684, column: 7, scope: !2664)
!2680 = !DILocation(line: 2686, column: 4, scope: !2667)
!2681 = !DILocation(line: 0, scope: !2667)
!2682 = !DILocation(line: 2687, column: 3, scope: !2668)
!2683 = !DILocation(line: 2697, column: 26, scope: !2684)
!2684 = distinct !DILexicalBlock(scope: !2664, file: !60, line: 2697, column: 7)
!2685 = !DILocation(line: 2697, column: 23, scope: !2684)
!2686 = !DILocation(line: 2697, column: 7, scope: !2664)
!2687 = !DILocation(line: 2701, column: 9, scope: !2688)
!2688 = distinct !DILexicalBlock(scope: !2689, file: !60, line: 2701, column: 9)
!2689 = distinct !DILexicalBlock(scope: !2690, file: !60, line: 2700, column: 4)
!2690 = distinct !DILexicalBlock(scope: !2691, file: !60, line: 2699, column: 4)
!2691 = distinct !DILexicalBlock(scope: !2692, file: !60, line: 2699, column: 4)
!2692 = distinct !DILexicalBlock(scope: !2684, file: !60, line: 2698, column: 3)
!2693 = !DILocation(line: 2701, column: 9, scope: !2689)
!2694 = !DILocation(line: 2717, column: 14, scope: !2695)
!2695 = distinct !DILexicalBlock(scope: !2688, file: !60, line: 2712, column: 5)
!2696 = !DILocation(line: 2718, column: 19, scope: !2695)
!2697 = !DILocation(line: 2720, column: 26, scope: !2698)
!2698 = distinct !DILexicalBlock(scope: !2695, file: !60, line: 2720, column: 10)
!2699 = !DILocation(line: 2720, column: 10, scope: !2695)
!2700 = !DILocation(line: 2736, column: 15, scope: !2695)
!2701 = !DILocation(line: 2740, column: 10, scope: !2702)
!2702 = distinct !DILexicalBlock(scope: !2695, file: !60, line: 2740, column: 10)
!2703 = !DILocation(line: 2740, column: 64, scope: !2702)
!2704 = !DILocation(line: 2740, column: 10, scope: !2695)
!2705 = !DILocation(line: 2742, column: 16, scope: !2706)
!2706 = distinct !DILexicalBlock(scope: !2702, file: !60, line: 2741, column: 6)
!2707 = !DILocation(line: 2743, column: 6, scope: !2706)
!2708 = !DILocation(line: 2751, column: 6, scope: !2695)
!2709 = !DILocation(line: 2761, column: 18, scope: !2710)
!2710 = distinct !DILexicalBlock(scope: !2711, file: !60, line: 2761, column: 11)
!2711 = distinct !DILexicalBlock(scope: !2695, file: !60, line: 2756, column: 6)
!2712 = !DILocation(line: 2761, column: 32, scope: !2710)
!2713 = !DILocation(line: 2761, column: 46, scope: !2710)
!2714 = !DILocation(line: 2761, column: 29, scope: !2710)
!2715 = !DILocation(line: 2761, column: 11, scope: !2711)
!2716 = distinct !{!2716, !2717, !2718}
!2717 = !DILocation(line: 2699, column: 4, scope: !2691)
!2718 = !DILocation(line: 2772, column: 4, scope: !2691)
!2719 = !DILocation(line: 0, scope: !2688)
!2720 = !DILocation(line: 2780, column: 8, scope: !2721)
!2721 = distinct !DILexicalBlock(scope: !2722, file: !60, line: 2780, column: 8)
!2722 = distinct !DILexicalBlock(scope: !2664, file: !60, line: 2779, column: 3)
!2723 = !DILocation(line: 2668, column: 12, scope: !2658)
!2724 = !DILocation(line: 2780, column: 86, scope: !2721)
!2725 = !DILocation(line: 2780, column: 8, scope: !2722)
!2726 = !DILocation(line: 2805, column: 2, scope: !2664)
!2727 = !DILocation(line: 2808, column: 3, scope: !2728)
!2728 = distinct !DILexicalBlock(scope: !2665, file: !60, line: 2807, column: 2)
!2729 = !DILocation(line: 2821, column: 7, scope: !2730)
!2730 = distinct !DILexicalBlock(scope: !2731, file: !60, line: 2821, column: 7)
!2731 = distinct !DILexicalBlock(scope: !2658, file: !60, line: 2820, column: 2)
!2732 = !DILocation(line: 2821, column: 21, scope: !2730)
!2733 = !DILocation(line: 2821, column: 7, scope: !2731)
!2734 = !DILocation(line: 2832, column: 2, scope: !2658)
!2735 = distinct !DISubprogram(name: "vTaskDelay", scope: !60, file: !60, line: 1333, type: !2736, scopeLine: 1334, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !59, retainedNodes: !2738)
!2736 = !DISubroutineType(types: !2737)
!2737 = !{null, !907}
!2738 = !{!2739, !2740}
!2739 = !DILocalVariable(name: "xTicksToDelay", arg: 1, scope: !2735, file: !60, line: 1333, type: !907)
!2740 = !DILocalVariable(name: "xAlreadyYielded", scope: !2735, file: !60, line: 1335, type: !51)
!2741 = !DILocation(line: 0, scope: !2735)
!2742 = !DILocation(line: 1338, column: 21, scope: !2743)
!2743 = distinct !DILexicalBlock(scope: !2735, file: !60, line: 1338, column: 7)
!2744 = !DILocation(line: 1338, column: 7, scope: !2735)
!2745 = !DILocation(line: 1341, column: 4, scope: !2746)
!2746 = distinct !DILexicalBlock(scope: !2743, file: !60, line: 1339, column: 3)
!2747 = !DILocation(line: 1352, column: 5, scope: !2748)
!2748 = distinct !DILexicalBlock(scope: !2746, file: !60, line: 1342, column: 4)
!2749 = !DILocation(line: 1354, column: 22, scope: !2746)
!2750 = !DILocation(line: 1355, column: 3, scope: !2746)
!2751 = !DILocation(line: 1363, column: 7, scope: !2735)
!2752 = !DILocation(line: 1365, column: 4, scope: !2753)
!2753 = distinct !DILexicalBlock(scope: !2754, file: !60, line: 1365, column: 4)
!2754 = distinct !DILexicalBlock(scope: !2755, file: !60, line: 1364, column: 3)
!2755 = distinct !DILexicalBlock(scope: !2735, file: !60, line: 1363, column: 7)
!2756 = !{i64 2148163041}
!2757 = !{i64 2148163092}
!2758 = !DILocation(line: 1366, column: 3, scope: !2754)
!2759 = !DILocation(line: 1371, column: 2, scope: !2735)
!2760 = distinct !DISubprogram(name: "uxTaskPriorityGet", scope: !60, file: !60, line: 1470, type: !2761, scopeLine: 1471, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !59, retainedNodes: !2764)
!2761 = !DISubroutineType(types: !2762)
!2762 = !{!56, !2763}
!2763 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !119)
!2764 = !{!2765, !2766, !2769}
!2765 = !DILocalVariable(name: "xTask", arg: 1, scope: !2760, file: !60, line: 1470, type: !2763)
!2766 = !DILocalVariable(name: "pxTCB", scope: !2760, file: !60, line: 1472, type: !2767)
!2767 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2768, size: 32)
!2768 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !72)
!2769 = !DILocalVariable(name: "uxReturn", scope: !2760, file: !60, line: 1473, type: !56)
!2770 = !DILocation(line: 0, scope: !2760)
!2771 = !DILocation(line: 1475, column: 3, scope: !2760)
!2772 = !DILocation(line: 1479, column: 12, scope: !2773)
!2773 = distinct !DILexicalBlock(scope: !2760, file: !60, line: 1476, column: 3)
!2774 = !DILocation(line: 1480, column: 22, scope: !2773)
!2775 = !DILocation(line: 1482, column: 3, scope: !2760)
!2776 = !DILocation(line: 1484, column: 3, scope: !2760)
!2777 = distinct !DISubprogram(name: "uxTaskPriorityGetFromISR", scope: !60, file: !60, line: 1492, type: !2761, scopeLine: 1493, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !59, retainedNodes: !2778)
!2778 = !{!2779, !2780, !2781, !2782}
!2779 = !DILocalVariable(name: "xTask", arg: 1, scope: !2777, file: !60, line: 1492, type: !2763)
!2780 = !DILocalVariable(name: "pxTCB", scope: !2777, file: !60, line: 1494, type: !2767)
!2781 = !DILocalVariable(name: "uxReturn", scope: !2777, file: !60, line: 1495, type: !56)
!2782 = !DILocalVariable(name: "uxSavedInterruptState", scope: !2777, file: !60, line: 1495, type: !56)
!2783 = !DILocation(line: 0, scope: !2777)
!2784 = !DILocation(line: 211, column: 2, scope: !2785, inlinedAt: !2789)
!2785 = distinct !DISubprogram(name: "ulPortRaiseBASEPRI", scope: !46, file: !46, line: 207, type: !1515, scopeLine: 208, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !59, retainedNodes: !2786)
!2786 = !{!2787, !2788}
!2787 = !DILocalVariable(name: "ulOriginalBASEPRI", scope: !2785, file: !46, line: 209, type: !47)
!2788 = !DILocalVariable(name: "ulNewBASEPRI", scope: !2785, file: !46, line: 209, type: !47)
!2789 = distinct !DILocation(line: 1515, column: 27, scope: !2777)
!2790 = !{i64 476346, i64 476384, i64 476417, i64 476454, i64 476482}
!2791 = !DILocation(line: 0, scope: !2785, inlinedAt: !2789)
!2792 = !DILocation(line: 1519, column: 12, scope: !2793)
!2793 = distinct !DILexicalBlock(scope: !2777, file: !60, line: 1516, column: 3)
!2794 = !DILocation(line: 1520, column: 22, scope: !2793)
!2795 = !DILocalVariable(name: "ulNewMaskValue", arg: 1, scope: !2796, file: !46, line: 227, type: !47)
!2796 = distinct !DISubprogram(name: "vPortSetBASEPRI", scope: !46, file: !46, line: 227, type: !1054, scopeLine: 228, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !59, retainedNodes: !2797)
!2797 = !{!2795}
!2798 = !DILocation(line: 0, scope: !2796, inlinedAt: !2799)
!2799 = distinct !DILocation(line: 1522, column: 3, scope: !2777)
!2800 = !DILocation(line: 229, column: 2, scope: !2796, inlinedAt: !2799)
!2801 = !{i64 476908}
!2802 = !DILocation(line: 1524, column: 3, scope: !2777)
!2803 = distinct !DISubprogram(name: "vTaskPrioritySet", scope: !60, file: !60, line: 1532, type: !2804, scopeLine: 1533, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !59, retainedNodes: !2806)
!2804 = !DISubroutineType(types: !2805)
!2805 = !{null, !119, !56}
!2806 = !{!2807, !2808, !2809, !2810, !2811, !2812}
!2807 = !DILocalVariable(name: "xTask", arg: 1, scope: !2803, file: !60, line: 1532, type: !119)
!2808 = !DILocalVariable(name: "uxNewPriority", arg: 2, scope: !2803, file: !60, line: 1532, type: !56)
!2809 = !DILocalVariable(name: "pxTCB", scope: !2803, file: !60, line: 1534, type: !71)
!2810 = !DILocalVariable(name: "uxCurrentBasePriority", scope: !2803, file: !60, line: 1535, type: !56)
!2811 = !DILocalVariable(name: "uxPriorityUsedOnEntry", scope: !2803, file: !60, line: 1535, type: !56)
!2812 = !DILocalVariable(name: "xYieldRequired", scope: !2803, file: !60, line: 1536, type: !51)
!2813 = !DILocation(line: 0, scope: !2803)
!2814 = !DILocation(line: 1541, column: 7, scope: !2803)
!2815 = !DILocation(line: 1550, column: 3, scope: !2803)
!2816 = !DILocation(line: 1554, column: 12, scope: !2817)
!2817 = distinct !DILexicalBlock(scope: !2803, file: !60, line: 1551, column: 3)
!2818 = !DILocation(line: 1560, column: 36, scope: !2819)
!2819 = distinct !DILexicalBlock(scope: !2817, file: !60, line: 1559, column: 4)
!2820 = !DILocation(line: 1568, column: 30, scope: !2821)
!2821 = distinct !DILexicalBlock(scope: !2817, file: !60, line: 1568, column: 8)
!2822 = !DILocation(line: 1568, column: 8, scope: !2817)
!2823 = !DILocation(line: 1572, column: 23, scope: !2824)
!2824 = distinct !DILexicalBlock(scope: !2825, file: !60, line: 1572, column: 9)
!2825 = distinct !DILexicalBlock(scope: !2821, file: !60, line: 1569, column: 4)
!2826 = !DILocation(line: 0, scope: !2824)
!2827 = !DILocation(line: 1572, column: 9, scope: !2825)
!2828 = !DILocation(line: 1574, column: 16, scope: !2829)
!2829 = distinct !DILexicalBlock(scope: !2830, file: !60, line: 1574, column: 10)
!2830 = distinct !DILexicalBlock(scope: !2824, file: !60, line: 1573, column: 5)
!2831 = !DILocation(line: 1574, column: 10, scope: !2830)
!2832 = !DILocation(line: 1579, column: 28, scope: !2833)
!2833 = distinct !DILexicalBlock(scope: !2834, file: !60, line: 1579, column: 11)
!2834 = distinct !DILexicalBlock(scope: !2829, file: !60, line: 1575, column: 6)
!2835 = !DILocation(line: 1579, column: 42, scope: !2833)
!2836 = !DILocation(line: 1579, column: 25, scope: !2833)
!2837 = !DILocation(line: 1579, column: 11, scope: !2834)
!2838 = !DILocation(line: 1595, column: 20, scope: !2839)
!2839 = distinct !DILexicalBlock(scope: !2824, file: !60, line: 1595, column: 14)
!2840 = !DILocation(line: 1595, column: 14, scope: !2824)
!2841 = !DILocation(line: 1612, column: 36, scope: !2825)
!2842 = !DILocation(line: 1618, column: 32, scope: !2843)
!2843 = distinct !DILexicalBlock(scope: !2844, file: !60, line: 1618, column: 10)
!2844 = distinct !DILexicalBlock(scope: !2825, file: !60, line: 1615, column: 5)
!2845 = !DILocation(line: 1618, column: 10, scope: !2844)
!2846 = !DILocation(line: 1620, column: 25, scope: !2847)
!2847 = distinct !DILexicalBlock(scope: !2843, file: !60, line: 1619, column: 6)
!2848 = !DILocation(line: 1621, column: 6, scope: !2847)
!2849 = !DILocation(line: 1628, column: 28, scope: !2844)
!2850 = !DILocation(line: 1638, column: 11, scope: !2851)
!2851 = distinct !DILexicalBlock(scope: !2825, file: !60, line: 1638, column: 9)
!2852 = !DILocation(line: 1638, column: 102, scope: !2851)
!2853 = !DILocation(line: 1638, column: 9, scope: !2825)
!2854 = !DILocation(line: 1640, column: 6, scope: !2855)
!2855 = distinct !DILexicalBlock(scope: !2851, file: !60, line: 1639, column: 5)
!2856 = !DILocation(line: 1641, column: 5, scope: !2855)
!2857 = !DILocation(line: 1651, column: 9, scope: !2858)
!2858 = distinct !DILexicalBlock(scope: !2825, file: !60, line: 1651, column: 9)
!2859 = !{!2207, !650, i64 20}
!2860 = !DILocation(line: 1651, column: 9, scope: !2825)
!2861 = !DILocation(line: 1656, column: 10, scope: !2862)
!2862 = distinct !DILexicalBlock(scope: !2863, file: !60, line: 1656, column: 10)
!2863 = distinct !DILexicalBlock(scope: !2858, file: !60, line: 1652, column: 5)
!2864 = !DILocation(line: 1656, column: 53, scope: !2862)
!2865 = !DILocation(line: 1656, column: 10, scope: !2863)
!2866 = !DILocation(line: 1661, column: 7, scope: !2867)
!2867 = distinct !DILexicalBlock(scope: !2862, file: !60, line: 1657, column: 6)
!2868 = !DILocation(line: 1662, column: 6, scope: !2867)
!2869 = !DILocation(line: 1667, column: 6, scope: !2863)
!2870 = !DILocation(line: 1668, column: 5, scope: !2863)
!2871 = !DILocation(line: 1674, column: 9, scope: !2825)
!2872 = !DILocation(line: 1676, column: 6, scope: !2873)
!2873 = distinct !DILexicalBlock(scope: !2874, file: !60, line: 1676, column: 6)
!2874 = distinct !DILexicalBlock(scope: !2875, file: !60, line: 1675, column: 5)
!2875 = distinct !DILexicalBlock(scope: !2825, file: !60, line: 1674, column: 9)
!2876 = !{i64 2148165086}
!2877 = !{i64 2148165137}
!2878 = !DILocation(line: 1677, column: 5, scope: !2874)
!2879 = !DILocation(line: 1688, column: 3, scope: !2803)
!2880 = !DILocation(line: 1689, column: 2, scope: !2803)
!2881 = distinct !DISubprogram(name: "vTaskSuspend", scope: !60, file: !60, line: 1696, type: !2394, scopeLine: 1697, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !59, retainedNodes: !2882)
!2882 = !{!2883, !2884}
!2883 = !DILocalVariable(name: "xTaskToSuspend", arg: 1, scope: !2881, file: !60, line: 1696, type: !119)
!2884 = !DILocalVariable(name: "pxTCB", scope: !2881, file: !60, line: 1698, type: !71)
!2885 = !DILocation(line: 0, scope: !2881)
!2886 = !DILocation(line: 1700, column: 3, scope: !2881)
!2887 = !DILocation(line: 1704, column: 12, scope: !2888)
!2888 = distinct !DILexicalBlock(scope: !2881, file: !60, line: 1701, column: 3)
!2889 = !DILocation(line: 1710, column: 32, scope: !2890)
!2890 = distinct !DILexicalBlock(scope: !2888, file: !60, line: 1710, column: 8)
!2891 = !DILocation(line: 1710, column: 8, scope: !2890)
!2892 = !DILocation(line: 1710, column: 51, scope: !2890)
!2893 = !DILocation(line: 1710, column: 8, scope: !2888)
!2894 = !DILocation(line: 1712, column: 5, scope: !2895)
!2895 = distinct !DILexicalBlock(scope: !2896, file: !60, line: 1712, column: 5)
!2896 = distinct !DILexicalBlock(scope: !2897, file: !60, line: 1712, column: 5)
!2897 = distinct !DILexicalBlock(scope: !2890, file: !60, line: 1711, column: 4)
!2898 = !DILocation(line: 1712, column: 5, scope: !2896)
!2899 = !DILocation(line: 1712, column: 5, scope: !2900)
!2900 = distinct !DILexicalBlock(scope: !2895, file: !60, line: 1712, column: 5)
!2901 = !DILocation(line: 1720, column: 8, scope: !2902)
!2902 = distinct !DILexicalBlock(scope: !2888, file: !60, line: 1720, column: 8)
!2903 = !DILocation(line: 1720, column: 62, scope: !2902)
!2904 = !DILocation(line: 1720, column: 8, scope: !2888)
!2905 = !DILocation(line: 1722, column: 14, scope: !2906)
!2906 = distinct !DILexicalBlock(scope: !2902, file: !60, line: 1721, column: 4)
!2907 = !DILocation(line: 1723, column: 4, scope: !2906)
!2908 = !DILocation(line: 1729, column: 4, scope: !2888)
!2909 = !DILocation(line: 1733, column: 16, scope: !2910)
!2910 = distinct !DILexicalBlock(scope: !2911, file: !60, line: 1733, column: 9)
!2911 = distinct !DILexicalBlock(scope: !2888, file: !60, line: 1732, column: 4)
!2912 = !DILocation(line: 1733, column: 30, scope: !2910)
!2913 = !DILocation(line: 1733, column: 9, scope: !2911)
!2914 = !DILocation(line: 1737, column: 27, scope: !2915)
!2915 = distinct !DILexicalBlock(scope: !2910, file: !60, line: 1734, column: 5)
!2916 = !DILocation(line: 1738, column: 5, scope: !2915)
!2917 = !DILocation(line: 1742, column: 3, scope: !2881)
!2918 = !DILocation(line: 1744, column: 7, scope: !2919)
!2919 = distinct !DILexicalBlock(scope: !2881, file: !60, line: 1744, column: 7)
!2920 = !DILocation(line: 1744, column: 25, scope: !2919)
!2921 = !DILocation(line: 1744, column: 7, scope: !2881)
!2922 = !DILocation(line: 1748, column: 4, scope: !2923)
!2923 = distinct !DILexicalBlock(scope: !2919, file: !60, line: 1745, column: 3)
!2924 = !DILocation(line: 1750, column: 5, scope: !2925)
!2925 = distinct !DILexicalBlock(scope: !2923, file: !60, line: 1749, column: 4)
!2926 = !DILocation(line: 1752, column: 4, scope: !2923)
!2927 = !DILocation(line: 1753, column: 3, scope: !2923)
!2928 = !DILocation(line: 1759, column: 16, scope: !2929)
!2929 = distinct !DILexicalBlock(scope: !2881, file: !60, line: 1759, column: 7)
!2930 = !DILocation(line: 1759, column: 13, scope: !2929)
!2931 = !DILocation(line: 1759, column: 7, scope: !2881)
!2932 = !DILocation(line: 1761, column: 8, scope: !2933)
!2933 = distinct !DILexicalBlock(scope: !2934, file: !60, line: 1761, column: 8)
!2934 = distinct !DILexicalBlock(scope: !2929, file: !60, line: 1760, column: 3)
!2935 = !DILocation(line: 1761, column: 26, scope: !2933)
!2936 = !DILocation(line: 1761, column: 8, scope: !2934)
!2937 = !DILocation(line: 1765, column: 5, scope: !2938)
!2938 = distinct !DILexicalBlock(scope: !2939, file: !60, line: 1765, column: 5)
!2939 = distinct !DILexicalBlock(scope: !2933, file: !60, line: 1762, column: 4)
!2940 = !{i64 2148166516}
!2941 = !{i64 2148166567}
!2942 = !DILocation(line: 1766, column: 4, scope: !2939)
!2943 = !DILocation(line: 1772, column: 9, scope: !2944)
!2944 = distinct !DILexicalBlock(scope: !2945, file: !60, line: 1772, column: 9)
!2945 = distinct !DILexicalBlock(scope: !2933, file: !60, line: 1768, column: 4)
!2946 = !DILocation(line: 1772, column: 59, scope: !2944)
!2947 = !DILocation(line: 1772, column: 56, scope: !2944)
!2948 = !DILocation(line: 1772, column: 9, scope: !2945)
!2949 = !DILocation(line: 1778, column: 19, scope: !2950)
!2950 = distinct !DILexicalBlock(scope: !2944, file: !60, line: 1773, column: 5)
!2951 = !DILocation(line: 1779, column: 5, scope: !2950)
!2952 = !DILocation(line: 1782, column: 6, scope: !2953)
!2953 = distinct !DILexicalBlock(scope: !2944, file: !60, line: 1781, column: 5)
!2954 = !DILocation(line: 1790, column: 2, scope: !2881)
!2955 = distinct !DISubprogram(name: "vTaskSwitchContext", scope: !60, file: !60, line: 2946, type: !206, scopeLine: 2947, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !59, retainedNodes: !2956)
!2956 = !{!2957, !2961}
!2957 = !DILocalVariable(name: "uxTopPriority", scope: !2958, file: !60, line: 2998, type: !56)
!2958 = distinct !DILexicalBlock(scope: !2959, file: !60, line: 2998, column: 3)
!2959 = distinct !DILexicalBlock(scope: !2960, file: !60, line: 2955, column: 2)
!2960 = distinct !DILexicalBlock(scope: !2955, file: !60, line: 2948, column: 6)
!2961 = !DILocalVariable(name: "pxConstList", scope: !2962, file: !60, line: 2998, type: !2963)
!2962 = distinct !DILexicalBlock(scope: !2958, file: !60, line: 2998, column: 3)
!2963 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !131)
!2964 = !DILocation(line: 2948, column: 6, scope: !2960)
!2965 = !DILocation(line: 2948, column: 27, scope: !2960)
!2966 = !DILocation(line: 2948, column: 6, scope: !2955)
!2967 = !DILocation(line: 2952, column: 17, scope: !2968)
!2968 = distinct !DILexicalBlock(scope: !2960, file: !60, line: 2949, column: 2)
!2969 = !DILocation(line: 2953, column: 2, scope: !2968)
!2970 = !DILocation(line: 2956, column: 17, scope: !2959)
!2971 = !DILocation(line: 2998, column: 3, scope: !2958)
!2972 = !DILocalVariable(name: "ulBitmap", arg: 1, scope: !2973, file: !46, line: 130, type: !47)
!2973 = distinct !DISubprogram(name: "ucPortCountLeadingZeros", scope: !46, file: !46, line: 130, type: !2974, scopeLine: 131, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !59, retainedNodes: !2976)
!2974 = !DISubroutineType(types: !2975)
!2975 = !{!7, !47}
!2976 = !{!2972, !2977}
!2977 = !DILocalVariable(name: "ucReturn", scope: !2973, file: !46, line: 132, type: !7)
!2978 = !DILocation(line: 0, scope: !2973, inlinedAt: !2979)
!2979 = distinct !DILocation(line: 2998, column: 3, scope: !2958)
!2980 = !DILocation(line: 134, column: 3, scope: !2973, inlinedAt: !2979)
!2981 = !{i64 473924}
!2982 = !DILocation(line: 0, scope: !2958)
!2983 = !DILocation(line: 0, scope: !2962)
!2984 = !DILocation(line: 2998, column: 3, scope: !2962)
!2985 = !DILocation(line: 2998, column: 3, scope: !2986)
!2986 = distinct !DILexicalBlock(scope: !2962, file: !60, line: 2998, column: 3)
!2987 = !DILocation(line: 2998, column: 3, scope: !2988)
!2988 = distinct !DILexicalBlock(scope: !2986, file: !60, line: 2998, column: 3)
!2989 = !DILocation(line: 3016, column: 1, scope: !2955)
!2990 = distinct !DISubprogram(name: "vTaskResume", scope: !60, file: !60, line: 1843, type: !2394, scopeLine: 1844, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !59, retainedNodes: !2991)
!2991 = !{!2992, !2993}
!2992 = !DILocalVariable(name: "xTaskToResume", arg: 1, scope: !2990, file: !60, line: 1843, type: !119)
!2993 = !DILocalVariable(name: "pxTCB", scope: !2990, file: !60, line: 1845, type: !2994)
!2994 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !71)
!2995 = !DILocation(line: 0, scope: !2990)
!2996 = !DILocation(line: 1852, column: 18, scope: !2997)
!2997 = distinct !DILexicalBlock(scope: !2990, file: !60, line: 1852, column: 7)
!2998 = !DILocation(line: 1852, column: 15, scope: !2997)
!2999 = !DILocation(line: 1852, column: 33, scope: !2997)
!3000 = !DILocation(line: 1854, column: 4, scope: !3001)
!3001 = distinct !DILexicalBlock(scope: !2997, file: !60, line: 1853, column: 3)
!3002 = !DILocation(line: 1856, column: 9, scope: !3003)
!3003 = distinct !DILexicalBlock(scope: !3004, file: !60, line: 1856, column: 9)
!3004 = distinct !DILexicalBlock(scope: !3001, file: !60, line: 1855, column: 4)
!3005 = !DILocation(line: 1856, column: 41, scope: !3003)
!3006 = !DILocation(line: 1856, column: 9, scope: !3004)
!3007 = !DILocation(line: 1862, column: 40, scope: !3008)
!3008 = distinct !DILexicalBlock(scope: !3003, file: !60, line: 1857, column: 5)
!3009 = !DILocation(line: 1862, column: 15, scope: !3008)
!3010 = !DILocation(line: 1863, column: 6, scope: !3008)
!3011 = !DILocation(line: 1866, column: 17, scope: !3012)
!3012 = distinct !DILexicalBlock(scope: !3008, file: !60, line: 1866, column: 10)
!3013 = !DILocation(line: 1866, column: 31, scope: !3012)
!3014 = !DILocation(line: 1866, column: 45, scope: !3012)
!3015 = !DILocation(line: 1866, column: 28, scope: !3012)
!3016 = !DILocation(line: 1866, column: 10, scope: !3008)
!3017 = !DILocation(line: 1871, column: 7, scope: !3018)
!3018 = distinct !DILexicalBlock(scope: !3019, file: !60, line: 1871, column: 7)
!3019 = distinct !DILexicalBlock(scope: !3012, file: !60, line: 1867, column: 6)
!3020 = !{i64 2148168274}
!3021 = !{i64 2148168325}
!3022 = !DILocation(line: 1872, column: 6, scope: !3019)
!3023 = !DILocation(line: 1883, column: 4, scope: !3001)
!3024 = !DILocation(line: 1884, column: 3, scope: !3001)
!3025 = !DILocation(line: 1889, column: 2, scope: !2990)
!3026 = distinct !DISubprogram(name: "prvTaskIsTaskSuspended", scope: !60, file: !60, line: 1797, type: !3027, scopeLine: 1798, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !59, retainedNodes: !3029)
!3027 = !DISubroutineType(types: !3028)
!3028 = !{!51, !2763}
!3029 = !{!3030, !3031, !3032}
!3030 = !DILocalVariable(name: "xTask", arg: 1, scope: !3026, file: !60, line: 1797, type: !2763)
!3031 = !DILocalVariable(name: "xReturn", scope: !3026, file: !60, line: 1799, type: !51)
!3032 = !DILocalVariable(name: "pxTCB", scope: !3026, file: !60, line: 1800, type: !3033)
!3033 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2767)
!3034 = !DILocation(line: 0, scope: !3026)
!3035 = !DILocation(line: 1809, column: 7, scope: !3036)
!3036 = distinct !DILexicalBlock(scope: !3026, file: !60, line: 1809, column: 7)
!3037 = !DILocation(line: 1809, column: 7, scope: !3026)
!3038 = !DILocation(line: 1812, column: 8, scope: !3039)
!3039 = distinct !DILexicalBlock(scope: !3040, file: !60, line: 1812, column: 8)
!3040 = distinct !DILexicalBlock(scope: !3036, file: !60, line: 1810, column: 3)
!3041 = !DILocation(line: 1812, column: 8, scope: !3040)
!3042 = !DILocation(line: 1835, column: 3, scope: !3026)
!3043 = distinct !DISubprogram(name: "xTaskResumeFromISR", scope: !60, file: !60, line: 1897, type: !3044, scopeLine: 1898, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !59, retainedNodes: !3046)
!3044 = !DISubroutineType(types: !3045)
!3045 = !{!51, !119}
!3046 = !{!3047, !3048, !3049, !3050}
!3047 = !DILocalVariable(name: "xTaskToResume", arg: 1, scope: !3043, file: !60, line: 1897, type: !119)
!3048 = !DILocalVariable(name: "xYieldRequired", scope: !3043, file: !60, line: 1899, type: !51)
!3049 = !DILocalVariable(name: "pxTCB", scope: !3043, file: !60, line: 1900, type: !2994)
!3050 = !DILocalVariable(name: "uxSavedInterruptStatus", scope: !3043, file: !60, line: 1901, type: !56)
!3051 = !DILocation(line: 0, scope: !3043)
!3052 = !DILocation(line: 211, column: 2, scope: !2785, inlinedAt: !3053)
!3053 = distinct !DILocation(line: 1923, column: 28, scope: !3043)
!3054 = !DILocation(line: 0, scope: !2785, inlinedAt: !3053)
!3055 = !DILocation(line: 1925, column: 8, scope: !3056)
!3056 = distinct !DILexicalBlock(scope: !3057, file: !60, line: 1925, column: 8)
!3057 = distinct !DILexicalBlock(scope: !3043, file: !60, line: 1924, column: 3)
!3058 = !DILocation(line: 1925, column: 40, scope: !3056)
!3059 = !DILocation(line: 1925, column: 8, scope: !3057)
!3060 = !DILocation(line: 1930, column: 9, scope: !3061)
!3061 = distinct !DILexicalBlock(scope: !3062, file: !60, line: 1930, column: 9)
!3062 = distinct !DILexicalBlock(scope: !3056, file: !60, line: 1926, column: 4)
!3063 = !DILocation(line: 1930, column: 30, scope: !3061)
!3064 = !DILocation(line: 1930, column: 9, scope: !3062)
!3065 = !DILocation(line: 1934, column: 17, scope: !3066)
!3066 = distinct !DILexicalBlock(scope: !3067, file: !60, line: 1934, column: 10)
!3067 = distinct !DILexicalBlock(scope: !3061, file: !60, line: 1931, column: 5)
!3068 = !DILocation(line: 1934, column: 31, scope: !3066)
!3069 = !DILocation(line: 1934, column: 45, scope: !3066)
!3070 = !DILocation(line: 1934, column: 28, scope: !3066)
!3071 = !DILocation(line: 1934, column: 10, scope: !3067)
!3072 = !DILocation(line: 1943, column: 39, scope: !3067)
!3073 = !DILocation(line: 1943, column: 15, scope: !3067)
!3074 = !DILocation(line: 1944, column: 6, scope: !3067)
!3075 = !DILocation(line: 1945, column: 5, scope: !3067)
!3076 = !DILocation(line: 1951, column: 56, scope: !3077)
!3077 = distinct !DILexicalBlock(scope: !3061, file: !60, line: 1947, column: 5)
!3078 = !DILocation(line: 1951, column: 6, scope: !3077)
!3079 = !DILocation(line: 0, scope: !2796, inlinedAt: !3080)
!3080 = distinct !DILocation(line: 1959, column: 3, scope: !3043)
!3081 = !DILocation(line: 229, column: 2, scope: !2796, inlinedAt: !3080)
!3082 = !DILocation(line: 1961, column: 3, scope: !3043)
!3083 = distinct !DISubprogram(name: "vTaskStartScheduler", scope: !60, file: !60, line: 1967, type: !206, scopeLine: 1968, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !59, retainedNodes: !3084)
!3084 = !{!3085}
!3085 = !DILocalVariable(name: "xReturn", scope: !3083, file: !60, line: 1969, type: !51)
!3086 = !DILocation(line: 2001, column: 13, scope: !3087)
!3087 = distinct !DILexicalBlock(scope: !3083, file: !60, line: 1999, column: 2)
!3088 = !DILocation(line: 0, scope: !3083)
!3089 = !DILocation(line: 2023, column: 14, scope: !3090)
!3090 = distinct !DILexicalBlock(scope: !3083, file: !60, line: 2023, column: 6)
!3091 = !DILocation(line: 2023, column: 6, scope: !3083)
!3092 = !DILocation(line: 195, column: 2, scope: !3093, inlinedAt: !3096)
!3093 = distinct !DISubprogram(name: "vPortRaiseBASEPRI", scope: !46, file: !46, line: 191, type: !206, scopeLine: 192, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !59, retainedNodes: !3094)
!3094 = !{!3095}
!3095 = !DILocalVariable(name: "ulNewBASEPRI", scope: !3093, file: !46, line: 193, type: !47)
!3096 = distinct !DILocation(line: 2039, column: 3, scope: !3097)
!3097 = distinct !DILexicalBlock(scope: !3090, file: !60, line: 2024, column: 2)
!3098 = !{i64 475931, i64 475965, i64 476002, i64 476030}
!3099 = !DILocation(line: 0, scope: !3093, inlinedAt: !3096)
!3100 = !DILocation(line: 2049, column: 24, scope: !3097)
!3101 = !DILocation(line: 2050, column: 21, scope: !3097)
!3102 = !DILocation(line: 2051, column: 14, scope: !3097)
!3103 = !DILocation(line: 2065, column: 7, scope: !3104)
!3104 = distinct !DILexicalBlock(scope: !3097, file: !60, line: 2065, column: 7)
!3105 = !DILocation(line: 2074, column: 2, scope: !3097)
!3106 = !DILocation(line: 2086, column: 1, scope: !3083)
!3107 = distinct !DISubprogram(name: "prvIdleTask", scope: !60, file: !60, line: 3333, type: !629, scopeLine: 3334, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !59, retainedNodes: !3108)
!3108 = !{!3109}
!3109 = !DILocalVariable(name: "pvParameters", arg: 1, scope: !3107, file: !60, line: 3333, type: !5)
!3110 = !DILocation(line: 0, scope: !3107)
!3111 = !DILocation(line: 3346, column: 2, scope: !3107)
!3112 = !DILocation(line: 3350, column: 3, scope: !3113)
!3113 = distinct !DILexicalBlock(scope: !3114, file: !60, line: 3347, column: 2)
!3114 = distinct !DILexicalBlock(scope: !3115, file: !60, line: 3346, column: 2)
!3115 = distinct !DILexicalBlock(scope: !3107, file: !60, line: 3346, column: 2)
!3116 = !DILocation(line: 3373, column: 8, scope: !3117)
!3117 = distinct !DILexicalBlock(scope: !3118, file: !60, line: 3373, column: 8)
!3118 = distinct !DILexicalBlock(scope: !3113, file: !60, line: 3363, column: 3)
!3119 = !DILocation(line: 3373, column: 78, scope: !3117)
!3120 = !DILocation(line: 3373, column: 8, scope: !3118)
!3121 = distinct !{!3121, !3122, !3123}
!3122 = !DILocation(line: 3346, column: 2, scope: !3115)
!3123 = !DILocation(line: 3446, column: 2, scope: !3115)
!3124 = !DILocation(line: 3375, column: 5, scope: !3125)
!3125 = distinct !DILexicalBlock(scope: !3126, file: !60, line: 3375, column: 5)
!3126 = distinct !DILexicalBlock(scope: !3117, file: !60, line: 3374, column: 4)
!3127 = !{i64 2148176220}
!3128 = !{i64 2148176271}
!3129 = !DILocation(line: 3376, column: 4, scope: !3126)
!3130 = distinct !DISubprogram(name: "prvCheckTasksWaitingTermination", scope: !60, file: !60, line: 3577, type: !206, scopeLine: 3578, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !59, retainedNodes: !3131)
!3131 = !{!3132}
!3132 = !DILocalVariable(name: "pxTCB", scope: !3133, file: !60, line: 3584, type: !71)
!3133 = distinct !DILexicalBlock(scope: !3130, file: !60, line: 3583, column: 2)
!3134 = !DILocation(line: 3588, column: 10, scope: !3133)
!3135 = !DILocation(line: 3588, column: 39, scope: !3133)
!3136 = !DILocation(line: 3588, column: 3, scope: !3133)
!3137 = !DILocation(line: 3590, column: 4, scope: !3138)
!3138 = distinct !DILexicalBlock(scope: !3133, file: !60, line: 3589, column: 3)
!3139 = !DILocation(line: 3592, column: 13, scope: !3140)
!3140 = distinct !DILexicalBlock(scope: !3138, file: !60, line: 3591, column: 4)
!3141 = !DILocation(line: 0, scope: !3133)
!3142 = !DILocation(line: 3593, column: 38, scope: !3140)
!3143 = !DILocation(line: 3593, column: 14, scope: !3140)
!3144 = !DILocation(line: 3594, column: 5, scope: !3140)
!3145 = !DILocation(line: 3595, column: 5, scope: !3140)
!3146 = !DILocation(line: 3597, column: 4, scope: !3138)
!3147 = !DILocation(line: 3599, column: 4, scope: !3138)
!3148 = distinct !{!3148, !3136, !3149, !577}
!3149 = !DILocation(line: 3600, column: 3, scope: !3133)
!3150 = !DILocation(line: 3603, column: 1, scope: !3130)
!3151 = distinct !DISubprogram(name: "vTaskEndScheduler", scope: !60, file: !60, line: 2089, type: !206, scopeLine: 2090, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !59, retainedNodes: !587)
!3152 = !DILocation(line: 195, column: 2, scope: !3093, inlinedAt: !3153)
!3153 = distinct !DILocation(line: 2094, column: 2, scope: !3151)
!3154 = !DILocation(line: 0, scope: !3093, inlinedAt: !3153)
!3155 = !DILocation(line: 2095, column: 20, scope: !3151)
!3156 = !DILocation(line: 2096, column: 2, scope: !3151)
!3157 = !DILocation(line: 2097, column: 1, scope: !3151)
!3158 = distinct !DISubprogram(name: "xTaskGetTickCount", scope: !60, file: !60, line: 2283, type: !3159, scopeLine: 2284, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !59, retainedNodes: !3161)
!3159 = !DISubroutineType(types: !3160)
!3160 = !{!54}
!3161 = !{!3162}
!3162 = !DILocalVariable(name: "xTicks", scope: !3158, file: !60, line: 2285, type: !54)
!3163 = !DILocation(line: 2290, column: 12, scope: !3164)
!3164 = distinct !DILexicalBlock(scope: !3158, file: !60, line: 2289, column: 2)
!3165 = !DILocation(line: 0, scope: !3158)
!3166 = !DILocation(line: 2294, column: 2, scope: !3158)
!3167 = distinct !DISubprogram(name: "xTaskGetTickCountFromISR", scope: !60, file: !60, line: 2298, type: !3159, scopeLine: 2299, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !59, retainedNodes: !3168)
!3168 = !{!3169, !3170}
!3169 = !DILocalVariable(name: "xReturn", scope: !3167, file: !60, line: 2300, type: !54)
!3170 = !DILocalVariable(name: "uxSavedInterruptStatus", scope: !3167, file: !60, line: 2301, type: !56)
!3171 = !DILocation(line: 0, scope: !3167)
!3172 = !DILocation(line: 2321, column: 13, scope: !3173)
!3173 = distinct !DILexicalBlock(scope: !3167, file: !60, line: 2320, column: 2)
!3174 = !DILocation(line: 2325, column: 2, scope: !3167)
!3175 = distinct !DISubprogram(name: "uxTaskGetNumberOfTasks", scope: !60, file: !60, line: 2329, type: !3176, scopeLine: 2330, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !59, retainedNodes: !587)
!3176 = !DISubroutineType(types: !3177)
!3177 = !{!56}
!3178 = !DILocation(line: 2333, column: 9, scope: !3175)
!3179 = !DILocation(line: 2333, column: 2, scope: !3175)
!3180 = distinct !DISubprogram(name: "pcTaskGetName", scope: !60, file: !60, line: 2337, type: !3181, scopeLine: 2338, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !59, retainedNodes: !3183)
!3181 = !DISubroutineType(types: !3182)
!3182 = !{!547, !119}
!3183 = !{!3184, !3185}
!3184 = !DILocalVariable(name: "xTaskToQuery", arg: 1, scope: !3180, file: !60, line: 2337, type: !119)
!3185 = !DILocalVariable(name: "pxTCB", scope: !3180, file: !60, line: 2339, type: !71)
!3186 = !DILocation(line: 0, scope: !3180)
!3187 = !DILocation(line: 2343, column: 10, scope: !3180)
!3188 = !DILocation(line: 2345, column: 12, scope: !3180)
!3189 = !DILocation(line: 2345, column: 2, scope: !3180)
!3190 = distinct !DISubprogram(name: "vTaskPlaceOnEventList", scope: !60, file: !60, line: 3019, type: !3191, scopeLine: 3020, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !59, retainedNodes: !3193)
!3191 = !DISubroutineType(types: !3192)
!3192 = !{null, !2963, !907}
!3193 = !{!3194, !3195}
!3194 = !DILocalVariable(name: "pxEventList", arg: 1, scope: !3190, file: !60, line: 3019, type: !2963)
!3195 = !DILocalVariable(name: "xTicksToWait", arg: 2, scope: !3190, file: !60, line: 3019, type: !907)
!3196 = !DILocation(line: 0, scope: !3190)
!3197 = !DILocation(line: 3030, column: 31, scope: !3190)
!3198 = !DILocation(line: 3030, column: 45, scope: !3190)
!3199 = !DILocation(line: 3030, column: 2, scope: !3190)
!3200 = !DILocation(line: 3032, column: 2, scope: !3190)
!3201 = !DILocation(line: 3033, column: 1, scope: !3190)
!3202 = distinct !DISubprogram(name: "vTaskPlaceOnUnorderedEventList", scope: !60, file: !60, line: 3036, type: !3203, scopeLine: 3037, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !59, retainedNodes: !3205)
!3203 = !DISubroutineType(types: !3204)
!3204 = !{null, !131, !907, !907}
!3205 = !{!3206, !3207, !3208}
!3206 = !DILocalVariable(name: "pxEventList", arg: 1, scope: !3202, file: !60, line: 3036, type: !131)
!3207 = !DILocalVariable(name: "xItemValue", arg: 2, scope: !3202, file: !60, line: 3036, type: !907)
!3208 = !DILocalVariable(name: "xTicksToWait", arg: 3, scope: !3202, file: !60, line: 3036, type: !907)
!3209 = !DILocation(line: 0, scope: !3202)
!3210 = !DILocation(line: 3047, column: 2, scope: !3202)
!3211 = !DILocation(line: 3054, column: 34, scope: !3202)
!3212 = !DILocation(line: 3054, column: 48, scope: !3202)
!3213 = !DILocation(line: 3054, column: 2, scope: !3202)
!3214 = !DILocation(line: 3056, column: 2, scope: !3202)
!3215 = !DILocation(line: 3057, column: 1, scope: !3202)
!3216 = distinct !DISubprogram(name: "xTaskRemoveFromEventList", scope: !60, file: !60, line: 3093, type: !3217, scopeLine: 3094, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !59, retainedNodes: !3222)
!3217 = !DISubroutineType(types: !3218)
!3218 = !{!51, !3219}
!3219 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3220)
!3220 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3221, size: 32)
!3221 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !125)
!3222 = !{!3223, !3224, !3225}
!3223 = !DILocalVariable(name: "pxEventList", arg: 1, scope: !3216, file: !60, line: 3093, type: !3219)
!3224 = !DILocalVariable(name: "pxUnblockedTCB", scope: !3216, file: !60, line: 3095, type: !71)
!3225 = !DILocalVariable(name: "xReturn", scope: !3216, file: !60, line: 3096, type: !51)
!3226 = !DILocation(line: 0, scope: !3216)
!3227 = !DILocation(line: 3111, column: 19, scope: !3216)
!3228 = !DILocation(line: 3113, column: 44, scope: !3216)
!3229 = !DILocation(line: 3113, column: 11, scope: !3216)
!3230 = !DILocation(line: 3115, column: 6, scope: !3231)
!3231 = distinct !DILexicalBlock(scope: !3216, file: !60, line: 3115, column: 6)
!3232 = !DILocation(line: 3115, column: 27, scope: !3231)
!3233 = !DILocation(line: 3115, column: 6, scope: !3216)
!3234 = !DILocation(line: 3117, column: 45, scope: !3235)
!3235 = distinct !DILexicalBlock(scope: !3231, file: !60, line: 3116, column: 2)
!3236 = !DILocation(line: 3117, column: 12, scope: !3235)
!3237 = !DILocation(line: 3118, column: 3, scope: !3235)
!3238 = !DILocation(line: 3133, column: 2, scope: !3235)
!3239 = !DILocation(line: 3138, column: 3, scope: !3240)
!3240 = distinct !DILexicalBlock(scope: !3231, file: !60, line: 3135, column: 2)
!3241 = !DILocation(line: 3141, column: 22, scope: !3242)
!3242 = distinct !DILexicalBlock(scope: !3216, file: !60, line: 3141, column: 6)
!3243 = !DILocation(line: 3141, column: 35, scope: !3242)
!3244 = !DILocation(line: 3141, column: 49, scope: !3242)
!3245 = !DILocation(line: 3141, column: 33, scope: !3242)
!3246 = !DILocation(line: 3141, column: 6, scope: !3216)
!3247 = !DILocation(line: 3150, column: 17, scope: !3248)
!3248 = distinct !DILexicalBlock(scope: !3242, file: !60, line: 3142, column: 2)
!3249 = !DILocation(line: 3151, column: 2, scope: !3248)
!3250 = !DILocation(line: 0, scope: !3242)
!3251 = !DILocation(line: 3157, column: 2, scope: !3216)
!3252 = distinct !DISubprogram(name: "vTaskRemoveFromUnorderedEventList", scope: !60, file: !60, line: 3161, type: !3253, scopeLine: 3162, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !59, retainedNodes: !3255)
!3253 = !DISubroutineType(types: !3254)
!3254 = !{null, !96, !907}
!3255 = !{!3256, !3257, !3258}
!3256 = !DILocalVariable(name: "pxEventListItem", arg: 1, scope: !3252, file: !60, line: 3161, type: !96)
!3257 = !DILocalVariable(name: "xItemValue", arg: 2, scope: !3252, file: !60, line: 3161, type: !907)
!3258 = !DILocalVariable(name: "pxUnblockedTCB", scope: !3252, file: !60, line: 3163, type: !71)
!3259 = !DILocation(line: 0, scope: !3252)
!3260 = !DILocation(line: 3170, column: 2, scope: !3252)
!3261 = !DILocation(line: 3174, column: 19, scope: !3252)
!3262 = !DILocation(line: 3176, column: 11, scope: !3252)
!3263 = !DILocation(line: 3181, column: 44, scope: !3252)
!3264 = !DILocation(line: 3181, column: 11, scope: !3252)
!3265 = !DILocation(line: 3182, column: 2, scope: !3252)
!3266 = !DILocation(line: 3184, column: 22, scope: !3267)
!3267 = distinct !DILexicalBlock(scope: !3252, file: !60, line: 3184, column: 6)
!3268 = !DILocation(line: 3184, column: 35, scope: !3267)
!3269 = !DILocation(line: 3184, column: 49, scope: !3267)
!3270 = !DILocation(line: 3184, column: 33, scope: !3267)
!3271 = !DILocation(line: 3184, column: 6, scope: !3252)
!3272 = !DILocation(line: 3190, column: 17, scope: !3273)
!3273 = distinct !DILexicalBlock(scope: !3267, file: !60, line: 3185, column: 2)
!3274 = !DILocation(line: 3191, column: 2, scope: !3273)
!3275 = !DILocation(line: 3192, column: 1, scope: !3252)
!3276 = distinct !DISubprogram(name: "vTaskSetTimeOutState", scope: !60, file: !60, line: 3195, type: !3277, scopeLine: 3196, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !59, retainedNodes: !3286)
!3277 = !DISubroutineType(types: !3278)
!3278 = !{null, !3279}
!3279 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3280)
!3280 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3281, size: 32)
!3281 = !DIDerivedType(tag: DW_TAG_typedef, name: "TimeOut_t", file: !63, line: 106, baseType: !3282)
!3282 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xTIME_OUT", file: !63, line: 102, size: 64, elements: !3283)
!3283 = !{!3284, !3285}
!3284 = !DIDerivedType(tag: DW_TAG_member, name: "xOverflowCount", scope: !3282, file: !63, line: 104, baseType: !51, size: 32)
!3285 = !DIDerivedType(tag: DW_TAG_member, name: "xTimeOnEntering", scope: !3282, file: !63, line: 105, baseType: !54, size: 32, offset: 32)
!3286 = !{!3287}
!3287 = !DILocalVariable(name: "pxTimeOut", arg: 1, scope: !3276, file: !60, line: 3195, type: !3279)
!3288 = !DILocation(line: 0, scope: !3276)
!3289 = !DILocation(line: 3198, column: 2, scope: !3276)
!3290 = !DILocation(line: 3200, column: 31, scope: !3291)
!3291 = distinct !DILexicalBlock(scope: !3276, file: !60, line: 3199, column: 2)
!3292 = !DILocation(line: 3200, column: 14, scope: !3291)
!3293 = !DILocation(line: 3200, column: 29, scope: !3291)
!3294 = !{!3295, !849, i64 0}
!3295 = !{!"xTIME_OUT", !849, i64 0, !581, i64 4}
!3296 = !DILocation(line: 3201, column: 32, scope: !3291)
!3297 = !DILocation(line: 3201, column: 14, scope: !3291)
!3298 = !DILocation(line: 3201, column: 30, scope: !3291)
!3299 = !{!3295, !581, i64 4}
!3300 = !DILocation(line: 3203, column: 2, scope: !3276)
!3301 = !DILocation(line: 3204, column: 1, scope: !3276)
!3302 = distinct !DISubprogram(name: "vTaskInternalSetTimeOutState", scope: !60, file: !60, line: 3207, type: !3277, scopeLine: 3208, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !59, retainedNodes: !3303)
!3303 = !{!3304}
!3304 = !DILocalVariable(name: "pxTimeOut", arg: 1, scope: !3302, file: !60, line: 3207, type: !3279)
!3305 = !DILocation(line: 0, scope: !3302)
!3306 = !DILocation(line: 3210, column: 30, scope: !3302)
!3307 = !DILocation(line: 3210, column: 13, scope: !3302)
!3308 = !DILocation(line: 3210, column: 28, scope: !3302)
!3309 = !DILocation(line: 3211, column: 31, scope: !3302)
!3310 = !DILocation(line: 3211, column: 13, scope: !3302)
!3311 = !DILocation(line: 3211, column: 29, scope: !3302)
!3312 = !DILocation(line: 3212, column: 1, scope: !3302)
!3313 = distinct !DISubprogram(name: "xTaskCheckForTimeOut", scope: !60, file: !60, line: 3215, type: !3314, scopeLine: 3216, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !59, retainedNodes: !3316)
!3314 = !DISubroutineType(types: !3315)
!3315 = !{!51, !3279, !2480}
!3316 = !{!3317, !3318, !3319, !3320, !3322}
!3317 = !DILocalVariable(name: "pxTimeOut", arg: 1, scope: !3313, file: !60, line: 3215, type: !3279)
!3318 = !DILocalVariable(name: "pxTicksToWait", arg: 2, scope: !3313, file: !60, line: 3215, type: !2480)
!3319 = !DILocalVariable(name: "xReturn", scope: !3313, file: !60, line: 3217, type: !51)
!3320 = !DILocalVariable(name: "xConstTickCount", scope: !3321, file: !60, line: 3225, type: !907)
!3321 = distinct !DILexicalBlock(scope: !3313, file: !60, line: 3223, column: 2)
!3322 = !DILocalVariable(name: "xElapsedTime", scope: !3321, file: !60, line: 3226, type: !907)
!3323 = !DILocation(line: 0, scope: !3313)
!3324 = !DILocation(line: 3222, column: 2, scope: !3313)
!3325 = !DILocation(line: 3225, column: 38, scope: !3321)
!3326 = !DILocation(line: 0, scope: !3321)
!3327 = !DILocation(line: 3226, column: 64, scope: !3321)
!3328 = !DILocation(line: 3226, column: 51, scope: !3321)
!3329 = !DILocation(line: 3240, column: 8, scope: !3330)
!3330 = distinct !DILexicalBlock(scope: !3321, file: !60, line: 3240, column: 8)
!3331 = !DILocation(line: 3240, column: 23, scope: !3330)
!3332 = !DILocation(line: 3240, column: 8, scope: !3321)
!3333 = !DILocation(line: 3250, column: 9, scope: !3334)
!3334 = distinct !DILexicalBlock(scope: !3330, file: !60, line: 3250, column: 7)
!3335 = !DILocation(line: 3250, column: 39, scope: !3334)
!3336 = !DILocation(line: 3250, column: 25, scope: !3334)
!3337 = !DILocation(line: 3250, column: 56, scope: !3334)
!3338 = !DILocation(line: 3259, column: 25, scope: !3339)
!3339 = distinct !DILexicalBlock(scope: !3334, file: !60, line: 3259, column: 12)
!3340 = !DILocation(line: 3259, column: 12, scope: !3334)
!3341 = !DILocation(line: 3262, column: 19, scope: !3342)
!3342 = distinct !DILexicalBlock(scope: !3339, file: !60, line: 3260, column: 3)
!3343 = !DILocation(line: 3263, column: 4, scope: !3342)
!3344 = !DILocation(line: 3265, column: 3, scope: !3342)
!3345 = !DILocation(line: 3268, column: 19, scope: !3346)
!3346 = distinct !DILexicalBlock(scope: !3339, file: !60, line: 3267, column: 3)
!3347 = !DILocation(line: 0, scope: !3330)
!3348 = !DILocation(line: 3272, column: 2, scope: !3313)
!3349 = !DILocation(line: 3274, column: 2, scope: !3313)
!3350 = distinct !DISubprogram(name: "vTaskMissedYield", scope: !60, file: !60, line: 3278, type: !206, scopeLine: 3279, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !59, retainedNodes: !587)
!3351 = !DILocation(line: 3280, column: 16, scope: !3350)
!3352 = !DILocation(line: 3281, column: 1, scope: !3350)
!3353 = distinct !DISubprogram(name: "xTaskGetCurrentTaskHandle", scope: !60, file: !60, line: 3905, type: !3354, scopeLine: 3906, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !59, retainedNodes: !3356)
!3354 = !DISubroutineType(types: !3355)
!3355 = !{!119}
!3356 = !{!3357}
!3357 = !DILocalVariable(name: "xReturn", scope: !3353, file: !60, line: 3907, type: !119)
!3358 = !DILocation(line: 3912, column: 13, scope: !3353)
!3359 = !DILocation(line: 0, scope: !3353)
!3360 = !DILocation(line: 3914, column: 3, scope: !3353)
!3361 = distinct !DISubprogram(name: "xTaskPriorityInherit", scope: !60, file: !60, line: 3950, type: !3027, scopeLine: 3951, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !59, retainedNodes: !3362)
!3362 = !{!3363, !3364, !3365}
!3363 = !DILocalVariable(name: "pxMutexHolder", arg: 1, scope: !3361, file: !60, line: 3950, type: !2763)
!3364 = !DILocalVariable(name: "pxMutexHolderTCB", scope: !3361, file: !60, line: 3952, type: !2994)
!3365 = !DILocalVariable(name: "xReturn", scope: !3361, file: !60, line: 3953, type: !51)
!3366 = !DILocation(line: 0, scope: !3361)
!3367 = !DILocation(line: 3958, column: 21, scope: !3368)
!3368 = distinct !DILexicalBlock(scope: !3361, file: !60, line: 3958, column: 7)
!3369 = !DILocation(line: 3958, column: 7, scope: !3361)
!3370 = !DILocation(line: 3963, column: 26, scope: !3371)
!3371 = distinct !DILexicalBlock(scope: !3372, file: !60, line: 3963, column: 8)
!3372 = distinct !DILexicalBlock(scope: !3368, file: !60, line: 3959, column: 3)
!3373 = !DILocation(line: 3963, column: 39, scope: !3371)
!3374 = !DILocation(line: 3963, column: 53, scope: !3371)
!3375 = !DILocation(line: 3963, column: 37, scope: !3371)
!3376 = !DILocation(line: 3963, column: 8, scope: !3372)
!3377 = !DILocation(line: 3968, column: 11, scope: !3378)
!3378 = distinct !DILexicalBlock(scope: !3379, file: !60, line: 3968, column: 9)
!3379 = distinct !DILexicalBlock(scope: !3371, file: !60, line: 3964, column: 4)
!3380 = !DILocation(line: 3968, column: 113, scope: !3378)
!3381 = !DILocation(line: 3968, column: 9, scope: !3379)
!3382 = !DILocation(line: 3970, column: 6, scope: !3383)
!3383 = distinct !DILexicalBlock(scope: !3378, file: !60, line: 3969, column: 5)
!3384 = !DILocation(line: 3971, column: 5, scope: !3383)
!3385 = !DILocation(line: 3979, column: 9, scope: !3386)
!3386 = distinct !DILexicalBlock(scope: !3379, file: !60, line: 3979, column: 9)
!3387 = !DILocation(line: 3979, column: 9, scope: !3379)
!3388 = !DILocation(line: 3981, column: 10, scope: !3389)
!3389 = distinct !DILexicalBlock(scope: !3390, file: !60, line: 3981, column: 10)
!3390 = distinct !DILexicalBlock(scope: !3386, file: !60, line: 3980, column: 5)
!3391 = !DILocation(line: 3981, column: 64, scope: !3389)
!3392 = !DILocation(line: 3981, column: 10, scope: !3390)
!3393 = !DILocation(line: 3983, column: 7, scope: !3394)
!3394 = distinct !DILexicalBlock(scope: !3395, file: !60, line: 3983, column: 7)
!3395 = distinct !DILexicalBlock(scope: !3396, file: !60, line: 3983, column: 7)
!3396 = distinct !DILexicalBlock(scope: !3389, file: !60, line: 3982, column: 6)
!3397 = !DILocation(line: 3983, column: 7, scope: !3395)
!3398 = !DILocation(line: 3983, column: 7, scope: !3399)
!3399 = distinct !DILexicalBlock(scope: !3394, file: !60, line: 3983, column: 7)
!3400 = !DILocation(line: 3991, column: 37, scope: !3390)
!3401 = !DILocation(line: 3991, column: 51, scope: !3390)
!3402 = !DILocation(line: 3991, column: 35, scope: !3390)
!3403 = !DILocation(line: 3992, column: 6, scope: !3390)
!3404 = !DILocation(line: 3993, column: 5, scope: !3390)
!3405 = !DILocation(line: 3997, column: 37, scope: !3406)
!3406 = distinct !DILexicalBlock(scope: !3386, file: !60, line: 3995, column: 5)
!3407 = !DILocation(line: 3997, column: 51, scope: !3406)
!3408 = !DILocation(line: 3997, column: 35, scope: !3406)
!3409 = !DILocation(line: 4007, column: 27, scope: !3410)
!3410 = distinct !DILexicalBlock(scope: !3411, file: !60, line: 4007, column: 9)
!3411 = distinct !DILexicalBlock(scope: !3371, file: !60, line: 4006, column: 4)
!3412 = !DILocation(line: 4007, column: 44, scope: !3410)
!3413 = !DILocation(line: 4007, column: 58, scope: !3410)
!3414 = !DILocation(line: 4007, column: 42, scope: !3410)
!3415 = !DILocation(line: 4007, column: 9, scope: !3411)
!3416 = !DILocation(line: 4029, column: 3, scope: !3361)
!3417 = distinct !DISubprogram(name: "xTaskPriorityDisinherit", scope: !60, file: !60, line: 4037, type: !3027, scopeLine: 4038, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !59, retainedNodes: !3418)
!3418 = !{!3419, !3420, !3421}
!3419 = !DILocalVariable(name: "pxMutexHolder", arg: 1, scope: !3417, file: !60, line: 4037, type: !2763)
!3420 = !DILocalVariable(name: "pxTCB", scope: !3417, file: !60, line: 4039, type: !2994)
!3421 = !DILocalVariable(name: "xReturn", scope: !3417, file: !60, line: 4040, type: !51)
!3422 = !DILocation(line: 0, scope: !3417)
!3423 = !DILocation(line: 4042, column: 21, scope: !3424)
!3424 = distinct !DILexicalBlock(scope: !3417, file: !60, line: 4042, column: 7)
!3425 = !DILocation(line: 4042, column: 7, scope: !3417)
!3426 = !DILocation(line: 4050, column: 13, scope: !3427)
!3427 = distinct !DILexicalBlock(scope: !3424, file: !60, line: 4043, column: 3)
!3428 = !DILocation(line: 4050, column: 28, scope: !3427)
!3429 = !DILocation(line: 4054, column: 15, scope: !3430)
!3430 = distinct !DILexicalBlock(scope: !3427, file: !60, line: 4054, column: 8)
!3431 = !DILocation(line: 4054, column: 36, scope: !3430)
!3432 = !DILocation(line: 4054, column: 26, scope: !3430)
!3433 = !DILocation(line: 4054, column: 8, scope: !3427)
!3434 = !DILocation(line: 4064, column: 34, scope: !3435)
!3435 = distinct !DILexicalBlock(scope: !3436, file: !60, line: 4064, column: 10)
!3436 = distinct !DILexicalBlock(scope: !3437, file: !60, line: 4058, column: 5)
!3437 = distinct !DILexicalBlock(scope: !3438, file: !60, line: 4057, column: 9)
!3438 = distinct !DILexicalBlock(scope: !3430, file: !60, line: 4055, column: 4)
!3439 = !DILocation(line: 4064, column: 10, scope: !3435)
!3440 = !DILocation(line: 4064, column: 53, scope: !3435)
!3441 = !DILocation(line: 4064, column: 10, scope: !3436)
!3442 = !DILocation(line: 4066, column: 7, scope: !3443)
!3443 = distinct !DILexicalBlock(scope: !3444, file: !60, line: 4066, column: 7)
!3444 = distinct !DILexicalBlock(scope: !3445, file: !60, line: 4066, column: 7)
!3445 = distinct !DILexicalBlock(scope: !3435, file: !60, line: 4065, column: 6)
!3446 = !DILocation(line: 4066, column: 7, scope: !3444)
!3447 = !DILocation(line: 4066, column: 7, scope: !3448)
!3448 = distinct !DILexicalBlock(scope: !3443, file: !60, line: 4066, column: 7)
!3449 = !DILocation(line: 4076, column: 33, scope: !3436)
!3450 = !DILocation(line: 4076, column: 24, scope: !3436)
!3451 = !DILocation(line: 4081, column: 6, scope: !3436)
!3452 = !DILocation(line: 4082, column: 6, scope: !3436)
!3453 = !DILocation(line: 4093, column: 5, scope: !3436)
!3454 = !DILocation(line: 4109, column: 3, scope: !3417)
!3455 = distinct !DISubprogram(name: "vTaskPriorityDisinheritAfterTimeout", scope: !60, file: !60, line: 4117, type: !3456, scopeLine: 4118, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !59, retainedNodes: !3458)
!3456 = !DISubroutineType(types: !3457)
!3457 = !{null, !2763, !56}
!3458 = !{!3459, !3460, !3461, !3462, !3463, !3464}
!3459 = !DILocalVariable(name: "pxMutexHolder", arg: 1, scope: !3455, file: !60, line: 4117, type: !2763)
!3460 = !DILocalVariable(name: "uxHighestPriorityWaitingTask", arg: 2, scope: !3455, file: !60, line: 4117, type: !56)
!3461 = !DILocalVariable(name: "pxTCB", scope: !3455, file: !60, line: 4119, type: !2994)
!3462 = !DILocalVariable(name: "uxPriorityUsedOnEntry", scope: !3455, file: !60, line: 4120, type: !56)
!3463 = !DILocalVariable(name: "uxPriorityToUse", scope: !3455, file: !60, line: 4120, type: !56)
!3464 = !DILocalVariable(name: "uxOnlyOneMutexHeld", scope: !3455, file: !60, line: 4121, type: !1155)
!3465 = !DILocation(line: 0, scope: !3455)
!3466 = !DILocation(line: 4123, column: 21, scope: !3467)
!3467 = distinct !DILexicalBlock(scope: !3455, file: !60, line: 4123, column: 7)
!3468 = !DILocation(line: 4123, column: 7, scope: !3455)
!3469 = !DILocation(line: 4133, column: 15, scope: !3470)
!3470 = distinct !DILexicalBlock(scope: !3471, file: !60, line: 4133, column: 8)
!3471 = distinct !DILexicalBlock(scope: !3467, file: !60, line: 4124, column: 3)
!3472 = !DILocation(line: 4133, column: 30, scope: !3470)
!3473 = !DILocation(line: 4143, column: 15, scope: !3474)
!3474 = distinct !DILexicalBlock(scope: !3471, file: !60, line: 4143, column: 8)
!3475 = !DILocation(line: 4143, column: 26, scope: !3474)
!3476 = !DILocation(line: 4143, column: 8, scope: !3471)
!3477 = !DILocation(line: 4149, column: 16, scope: !3478)
!3478 = distinct !DILexicalBlock(scope: !3479, file: !60, line: 4149, column: 9)
!3479 = distinct !DILexicalBlock(scope: !3474, file: !60, line: 4144, column: 4)
!3480 = !DILocation(line: 4149, column: 30, scope: !3478)
!3481 = !DILocation(line: 4149, column: 9, scope: !3479)
!3482 = !DILocation(line: 4161, column: 24, scope: !3483)
!3483 = distinct !DILexicalBlock(scope: !3478, file: !60, line: 4150, column: 5)
!3484 = !DILocation(line: 4165, column: 12, scope: !3485)
!3485 = distinct !DILexicalBlock(scope: !3483, file: !60, line: 4165, column: 10)
!3486 = !DILocation(line: 4165, column: 103, scope: !3485)
!3487 = !DILocation(line: 4165, column: 10, scope: !3483)
!3488 = !DILocation(line: 4167, column: 7, scope: !3489)
!3489 = distinct !DILexicalBlock(scope: !3485, file: !60, line: 4166, column: 6)
!3490 = !DILocation(line: 4168, column: 6, scope: !3489)
!3491 = !DILocation(line: 4180, column: 10, scope: !3492)
!3492 = distinct !DILexicalBlock(scope: !3483, file: !60, line: 4180, column: 10)
!3493 = !DILocation(line: 4180, column: 10, scope: !3483)
!3494 = !DILocation(line: 4182, column: 11, scope: !3495)
!3495 = distinct !DILexicalBlock(scope: !3496, file: !60, line: 4182, column: 11)
!3496 = distinct !DILexicalBlock(scope: !3492, file: !60, line: 4181, column: 6)
!3497 = !DILocation(line: 4182, column: 54, scope: !3495)
!3498 = !DILocation(line: 0, scope: !3496)
!3499 = !DILocation(line: 4182, column: 11, scope: !3496)
!3500 = !DILocation(line: 4184, column: 8, scope: !3501)
!3501 = distinct !DILexicalBlock(scope: !3502, file: !60, line: 4184, column: 8)
!3502 = distinct !DILexicalBlock(scope: !3503, file: !60, line: 4184, column: 8)
!3503 = distinct !DILexicalBlock(scope: !3495, file: !60, line: 4183, column: 7)
!3504 = !DILocation(line: 4184, column: 8, scope: !3502)
!3505 = !DILocation(line: 4184, column: 8, scope: !3506)
!3506 = distinct !DILexicalBlock(scope: !3501, file: !60, line: 4184, column: 8)
!3507 = !DILocation(line: 4191, column: 7, scope: !3496)
!3508 = !DILocation(line: 4192, column: 6, scope: !3496)
!3509 = !DILocation(line: 4212, column: 2, scope: !3455)
!3510 = distinct !DISubprogram(name: "uxTaskResetEventItemValue", scope: !60, file: !60, line: 4532, type: !3159, scopeLine: 4533, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !59, retainedNodes: !3511)
!3511 = !{!3512}
!3512 = !DILocalVariable(name: "uxReturn", scope: !3510, file: !60, line: 4534, type: !54)
!3513 = !DILocation(line: 4536, column: 13, scope: !3510)
!3514 = !DILocation(line: 0, scope: !3510)
!3515 = !DILocation(line: 4540, column: 2, scope: !3510)
!3516 = !DILocation(line: 4542, column: 2, scope: !3510)
!3517 = distinct !DISubprogram(name: "pvTaskIncrementMutexHeldCount", scope: !60, file: !60, line: 4548, type: !3354, scopeLine: 4549, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !59, retainedNodes: !587)
!3518 = !DILocation(line: 4552, column: 7, scope: !3519)
!3519 = distinct !DILexicalBlock(scope: !3517, file: !60, line: 4552, column: 7)
!3520 = !DILocation(line: 4552, column: 20, scope: !3519)
!3521 = !DILocation(line: 4552, column: 7, scope: !3517)
!3522 = !DILocation(line: 4554, column: 6, scope: !3523)
!3523 = distinct !DILexicalBlock(scope: !3519, file: !60, line: 4553, column: 3)
!3524 = !DILocation(line: 4554, column: 20, scope: !3523)
!3525 = !DILocation(line: 4554, column: 35, scope: !3523)
!3526 = !DILocation(line: 4555, column: 3, scope: !3523)
!3527 = !DILocation(line: 4557, column: 10, scope: !3517)
!3528 = !DILocation(line: 4557, column: 3, scope: !3517)
!3529 = distinct !DISubprogram(name: "ulTaskNotifyTake", scope: !60, file: !60, line: 4565, type: !3530, scopeLine: 4566, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !59, retainedNodes: !3532)
!3530 = !DISubroutineType(types: !3531)
!3531 = !{!47, !51, !54}
!3532 = !{!3533, !3534, !3535}
!3533 = !DILocalVariable(name: "xClearCountOnExit", arg: 1, scope: !3529, file: !60, line: 4565, type: !51)
!3534 = !DILocalVariable(name: "xTicksToWait", arg: 2, scope: !3529, file: !60, line: 4565, type: !54)
!3535 = !DILocalVariable(name: "ulReturn", scope: !3529, file: !60, line: 4567, type: !47)
!3536 = !DILocation(line: 0, scope: !3529)
!3537 = !DILocation(line: 4569, column: 3, scope: !3529)
!3538 = !DILocation(line: 4572, column: 8, scope: !3539)
!3539 = distinct !DILexicalBlock(scope: !3540, file: !60, line: 4572, column: 8)
!3540 = distinct !DILexicalBlock(scope: !3529, file: !60, line: 4570, column: 3)
!3541 = !DILocation(line: 4572, column: 22, scope: !3539)
!3542 = !DILocation(line: 4572, column: 38, scope: !3539)
!3543 = !DILocation(line: 4572, column: 8, scope: !3540)
!3544 = !DILocation(line: 4575, column: 5, scope: !3545)
!3545 = distinct !DILexicalBlock(scope: !3539, file: !60, line: 4573, column: 4)
!3546 = !DILocation(line: 4575, column: 19, scope: !3545)
!3547 = !DILocation(line: 4575, column: 33, scope: !3545)
!3548 = !DILocation(line: 4577, column: 22, scope: !3549)
!3549 = distinct !DILexicalBlock(scope: !3545, file: !60, line: 4577, column: 9)
!3550 = !DILocation(line: 4577, column: 9, scope: !3545)
!3551 = !DILocation(line: 4579, column: 6, scope: !3552)
!3552 = distinct !DILexicalBlock(scope: !3549, file: !60, line: 4578, column: 5)
!3553 = !DILocation(line: 4586, column: 6, scope: !3554)
!3554 = distinct !DILexicalBlock(scope: !3552, file: !60, line: 4586, column: 6)
!3555 = !{i64 2148181772}
!3556 = !{i64 2148181823}
!3557 = !DILocation(line: 4587, column: 5, scope: !3552)
!3558 = !DILocation(line: 4598, column: 3, scope: !3529)
!3559 = !DILocation(line: 4600, column: 3, scope: !3529)
!3560 = !DILocation(line: 4603, column: 15, scope: !3561)
!3561 = distinct !DILexicalBlock(scope: !3529, file: !60, line: 4601, column: 3)
!3562 = !DILocation(line: 4603, column: 29, scope: !3561)
!3563 = !DILocation(line: 4605, column: 17, scope: !3564)
!3564 = distinct !DILexicalBlock(scope: !3561, file: !60, line: 4605, column: 8)
!3565 = !DILocation(line: 4605, column: 8, scope: !3561)
!3566 = !DILocation(line: 4607, column: 27, scope: !3567)
!3567 = distinct !DILexicalBlock(scope: !3568, file: !60, line: 4607, column: 9)
!3568 = distinct !DILexicalBlock(scope: !3564, file: !60, line: 4606, column: 4)
!3569 = !DILocation(line: 4607, column: 9, scope: !3568)
!3570 = !DILocation(line: 0, scope: !3567)
!3571 = !DILocation(line: 4621, column: 4, scope: !3561)
!3572 = !DILocation(line: 4621, column: 18, scope: !3561)
!3573 = !DILocation(line: 4621, column: 32, scope: !3561)
!3574 = !DILocation(line: 4623, column: 3, scope: !3529)
!3575 = !DILocation(line: 4625, column: 3, scope: !3529)
!3576 = distinct !DISubprogram(name: "xTaskNotifyWait", scope: !60, file: !60, line: 4633, type: !3577, scopeLine: 4634, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !59, retainedNodes: !3580)
!3577 = !DISubroutineType(types: !3578)
!3578 = !{!51, !47, !47, !3579, !54}
!3579 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !47, size: 32)
!3580 = !{!3581, !3582, !3583, !3584, !3585}
!3581 = !DILocalVariable(name: "ulBitsToClearOnEntry", arg: 1, scope: !3576, file: !60, line: 4633, type: !47)
!3582 = !DILocalVariable(name: "ulBitsToClearOnExit", arg: 2, scope: !3576, file: !60, line: 4633, type: !47)
!3583 = !DILocalVariable(name: "pulNotificationValue", arg: 3, scope: !3576, file: !60, line: 4633, type: !3579)
!3584 = !DILocalVariable(name: "xTicksToWait", arg: 4, scope: !3576, file: !60, line: 4633, type: !54)
!3585 = !DILocalVariable(name: "xReturn", scope: !3576, file: !60, line: 4635, type: !51)
!3586 = !DILocation(line: 0, scope: !3576)
!3587 = !DILocation(line: 4637, column: 3, scope: !3576)
!3588 = !DILocation(line: 4640, column: 8, scope: !3589)
!3589 = distinct !DILexicalBlock(scope: !3590, file: !60, line: 4640, column: 8)
!3590 = distinct !DILexicalBlock(scope: !3576, file: !60, line: 4638, column: 3)
!3591 = !DILocation(line: 4640, column: 22, scope: !3589)
!3592 = !DILocation(line: 4640, column: 36, scope: !3589)
!3593 = !DILocation(line: 4640, column: 8, scope: !3590)
!3594 = !DILocation(line: 4645, column: 38, scope: !3595)
!3595 = distinct !DILexicalBlock(scope: !3589, file: !60, line: 4641, column: 4)
!3596 = !DILocation(line: 4645, column: 5, scope: !3595)
!3597 = !DILocation(line: 4645, column: 19, scope: !3595)
!3598 = !DILocation(line: 4645, column: 35, scope: !3595)
!3599 = !DILocation(line: 4648, column: 5, scope: !3595)
!3600 = !DILocation(line: 4648, column: 19, scope: !3595)
!3601 = !DILocation(line: 4648, column: 33, scope: !3595)
!3602 = !DILocation(line: 4650, column: 22, scope: !3603)
!3603 = distinct !DILexicalBlock(scope: !3595, file: !60, line: 4650, column: 9)
!3604 = !DILocation(line: 4650, column: 9, scope: !3595)
!3605 = !DILocation(line: 4652, column: 6, scope: !3606)
!3606 = distinct !DILexicalBlock(scope: !3603, file: !60, line: 4651, column: 5)
!3607 = !DILocation(line: 4659, column: 6, scope: !3608)
!3608 = distinct !DILexicalBlock(scope: !3606, file: !60, line: 4659, column: 6)
!3609 = !{i64 2148182511}
!3610 = !{i64 2148182562}
!3611 = !DILocation(line: 4660, column: 5, scope: !3606)
!3612 = !DILocation(line: 4671, column: 3, scope: !3576)
!3613 = !DILocation(line: 4673, column: 3, scope: !3576)
!3614 = !DILocation(line: 4677, column: 29, scope: !3615)
!3615 = distinct !DILexicalBlock(scope: !3616, file: !60, line: 4677, column: 8)
!3616 = distinct !DILexicalBlock(scope: !3576, file: !60, line: 4674, column: 3)
!3617 = !DILocation(line: 4677, column: 8, scope: !3616)
!3618 = !DILocation(line: 4681, column: 29, scope: !3619)
!3619 = distinct !DILexicalBlock(scope: !3615, file: !60, line: 4678, column: 4)
!3620 = !DILocation(line: 4681, column: 43, scope: !3619)
!3621 = !DILocation(line: 4681, column: 27, scope: !3619)
!3622 = !DILocation(line: 4682, column: 4, scope: !3619)
!3623 = !DILocation(line: 4688, column: 8, scope: !3624)
!3624 = distinct !DILexicalBlock(scope: !3616, file: !60, line: 4688, column: 8)
!3625 = !DILocation(line: 4688, column: 22, scope: !3624)
!3626 = !DILocation(line: 4688, column: 36, scope: !3624)
!3627 = !DILocation(line: 4688, column: 8, scope: !3616)
!3628 = !DILocation(line: 4697, column: 38, scope: !3629)
!3629 = distinct !DILexicalBlock(scope: !3624, file: !60, line: 4694, column: 4)
!3630 = !DILocation(line: 4697, column: 5, scope: !3629)
!3631 = !DILocation(line: 4697, column: 19, scope: !3629)
!3632 = !DILocation(line: 4697, column: 35, scope: !3629)
!3633 = !DILocation(line: 0, scope: !3624)
!3634 = !DILocation(line: 4701, column: 4, scope: !3616)
!3635 = !DILocation(line: 4701, column: 18, scope: !3616)
!3636 = !DILocation(line: 4701, column: 32, scope: !3616)
!3637 = !DILocation(line: 4703, column: 3, scope: !3576)
!3638 = !DILocation(line: 4705, column: 3, scope: !3576)
!3639 = distinct !DISubprogram(name: "xTaskGenericNotify", scope: !60, file: !60, line: 4713, type: !3640, scopeLine: 4714, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !59, retainedNodes: !3643)
!3640 = !DISubroutineType(types: !3641)
!3641 = !{!51, !119, !47, !3642, !3579}
!3642 = !DIDerivedType(tag: DW_TAG_typedef, name: "eNotifyAction", file: !63, line: 97, baseType: !62)
!3643 = !{!3644, !3645, !3646, !3647, !3648, !3649, !3650}
!3644 = !DILocalVariable(name: "xTaskToNotify", arg: 1, scope: !3639, file: !60, line: 4713, type: !119)
!3645 = !DILocalVariable(name: "ulValue", arg: 2, scope: !3639, file: !60, line: 4713, type: !47)
!3646 = !DILocalVariable(name: "eAction", arg: 3, scope: !3639, file: !60, line: 4713, type: !3642)
!3647 = !DILocalVariable(name: "pulPreviousNotificationValue", arg: 4, scope: !3639, file: !60, line: 4713, type: !3579)
!3648 = !DILocalVariable(name: "pxTCB", scope: !3639, file: !60, line: 4715, type: !71)
!3649 = !DILocalVariable(name: "xReturn", scope: !3639, file: !60, line: 4716, type: !51)
!3650 = !DILocalVariable(name: "ucOriginalNotifyState", scope: !3639, file: !60, line: 4717, type: !7)
!3651 = !DILocation(line: 0, scope: !3639)
!3652 = !DILocation(line: 4722, column: 3, scope: !3639)
!3653 = !DILocation(line: 4724, column: 37, scope: !3654)
!3654 = distinct !DILexicalBlock(scope: !3655, file: !60, line: 4724, column: 8)
!3655 = distinct !DILexicalBlock(scope: !3639, file: !60, line: 4723, column: 3)
!3656 = !DILocation(line: 4724, column: 8, scope: !3655)
!3657 = !DILocation(line: 4726, column: 44, scope: !3658)
!3658 = distinct !DILexicalBlock(scope: !3654, file: !60, line: 4725, column: 4)
!3659 = !DILocation(line: 4726, column: 35, scope: !3658)
!3660 = !DILocation(line: 4727, column: 4, scope: !3658)
!3661 = !DILocation(line: 4729, column: 35, scope: !3655)
!3662 = !DILocation(line: 4731, column: 25, scope: !3655)
!3663 = !DILocation(line: 4733, column: 4, scope: !3655)
!3664 = !DILocation(line: 4736, column: 13, scope: !3665)
!3665 = distinct !DILexicalBlock(scope: !3655, file: !60, line: 4734, column: 4)
!3666 = !DILocation(line: 4736, column: 29, scope: !3665)
!3667 = !DILocation(line: 4737, column: 6, scope: !3665)
!3668 = !DILocation(line: 4740, column: 15, scope: !3665)
!3669 = !DILocation(line: 4740, column: 32, scope: !3665)
!3670 = !DILocation(line: 4741, column: 6, scope: !3665)
!3671 = !DILocation(line: 4744, column: 13, scope: !3665)
!3672 = !DILocation(line: 4744, column: 29, scope: !3665)
!3673 = !DILocation(line: 4745, column: 6, scope: !3665)
!3674 = !DILocation(line: 4748, column: 32, scope: !3675)
!3675 = distinct !DILexicalBlock(scope: !3665, file: !60, line: 4748, column: 10)
!3676 = !DILocation(line: 4748, column: 10, scope: !3665)
!3677 = !DILocation(line: 4750, column: 14, scope: !3678)
!3678 = distinct !DILexicalBlock(scope: !3675, file: !60, line: 4749, column: 6)
!3679 = !DILocation(line: 4750, column: 30, scope: !3678)
!3680 = !DILocation(line: 4751, column: 6, scope: !3678)
!3681 = !DILocation(line: 4777, column: 30, scope: !3682)
!3682 = distinct !DILexicalBlock(scope: !3655, file: !60, line: 4777, column: 8)
!3683 = !DILocation(line: 4777, column: 8, scope: !3655)
!3684 = !DILocation(line: 4779, column: 38, scope: !3685)
!3685 = distinct !DILexicalBlock(scope: !3682, file: !60, line: 4778, column: 4)
!3686 = !DILocation(line: 4779, column: 14, scope: !3685)
!3687 = !DILocation(line: 4780, column: 5, scope: !3685)
!3688 = !DILocation(line: 4801, column: 16, scope: !3689)
!3689 = distinct !DILexicalBlock(scope: !3685, file: !60, line: 4801, column: 9)
!3690 = !DILocation(line: 4801, column: 29, scope: !3689)
!3691 = !DILocation(line: 4801, column: 43, scope: !3689)
!3692 = !DILocation(line: 4801, column: 27, scope: !3689)
!3693 = !DILocation(line: 4801, column: 9, scope: !3685)
!3694 = !DILocation(line: 4805, column: 6, scope: !3695)
!3695 = distinct !DILexicalBlock(scope: !3696, file: !60, line: 4805, column: 6)
!3696 = distinct !DILexicalBlock(scope: !3689, file: !60, line: 4802, column: 5)
!3697 = !{i64 2148183875}
!3698 = !{i64 2148183926}
!3699 = !DILocation(line: 4806, column: 5, scope: !3696)
!3700 = !DILocation(line: 4817, column: 3, scope: !3639)
!3701 = !DILocation(line: 4819, column: 3, scope: !3639)
!3702 = distinct !DISubprogram(name: "xTaskGenericNotifyFromISR", scope: !60, file: !60, line: 4827, type: !3703, scopeLine: 4828, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !59, retainedNodes: !3705)
!3703 = !DISubroutineType(types: !3704)
!3704 = !{!51, !119, !47, !3642, !3579, !1498}
!3705 = !{!3706, !3707, !3708, !3709, !3710, !3711, !3712, !3713, !3714}
!3706 = !DILocalVariable(name: "xTaskToNotify", arg: 1, scope: !3702, file: !60, line: 4827, type: !119)
!3707 = !DILocalVariable(name: "ulValue", arg: 2, scope: !3702, file: !60, line: 4827, type: !47)
!3708 = !DILocalVariable(name: "eAction", arg: 3, scope: !3702, file: !60, line: 4827, type: !3642)
!3709 = !DILocalVariable(name: "pulPreviousNotificationValue", arg: 4, scope: !3702, file: !60, line: 4827, type: !3579)
!3710 = !DILocalVariable(name: "pxHigherPriorityTaskWoken", arg: 5, scope: !3702, file: !60, line: 4827, type: !1498)
!3711 = !DILocalVariable(name: "pxTCB", scope: !3702, file: !60, line: 4829, type: !71)
!3712 = !DILocalVariable(name: "ucOriginalNotifyState", scope: !3702, file: !60, line: 4830, type: !7)
!3713 = !DILocalVariable(name: "xReturn", scope: !3702, file: !60, line: 4831, type: !51)
!3714 = !DILocalVariable(name: "uxSavedInterruptStatus", scope: !3702, file: !60, line: 4832, type: !56)
!3715 = !DILocation(line: 0, scope: !3702)
!3716 = !DILocation(line: 211, column: 2, scope: !2785, inlinedAt: !3717)
!3717 = distinct !DILocation(line: 4856, column: 28, scope: !3702)
!3718 = !DILocation(line: 0, scope: !2785, inlinedAt: !3717)
!3719 = !DILocation(line: 4858, column: 37, scope: !3720)
!3720 = distinct !DILexicalBlock(scope: !3721, file: !60, line: 4858, column: 8)
!3721 = distinct !DILexicalBlock(scope: !3702, file: !60, line: 4857, column: 3)
!3722 = !DILocation(line: 4858, column: 8, scope: !3721)
!3723 = !DILocation(line: 4860, column: 44, scope: !3724)
!3724 = distinct !DILexicalBlock(scope: !3720, file: !60, line: 4859, column: 4)
!3725 = !DILocation(line: 4860, column: 35, scope: !3724)
!3726 = !DILocation(line: 4861, column: 4, scope: !3724)
!3727 = !DILocation(line: 4863, column: 35, scope: !3721)
!3728 = !DILocation(line: 4864, column: 25, scope: !3721)
!3729 = !DILocation(line: 4866, column: 4, scope: !3721)
!3730 = !DILocation(line: 4869, column: 13, scope: !3731)
!3731 = distinct !DILexicalBlock(scope: !3721, file: !60, line: 4867, column: 4)
!3732 = !DILocation(line: 4869, column: 29, scope: !3731)
!3733 = !DILocation(line: 4870, column: 6, scope: !3731)
!3734 = !DILocation(line: 4873, column: 15, scope: !3731)
!3735 = !DILocation(line: 4873, column: 32, scope: !3731)
!3736 = !DILocation(line: 4874, column: 6, scope: !3731)
!3737 = !DILocation(line: 4877, column: 13, scope: !3731)
!3738 = !DILocation(line: 4877, column: 29, scope: !3731)
!3739 = !DILocation(line: 4878, column: 6, scope: !3731)
!3740 = !DILocation(line: 4881, column: 32, scope: !3741)
!3741 = distinct !DILexicalBlock(scope: !3731, file: !60, line: 4881, column: 10)
!3742 = !DILocation(line: 4881, column: 10, scope: !3731)
!3743 = !DILocation(line: 4883, column: 14, scope: !3744)
!3744 = distinct !DILexicalBlock(scope: !3741, file: !60, line: 4882, column: 6)
!3745 = !DILocation(line: 4883, column: 30, scope: !3744)
!3746 = !DILocation(line: 4884, column: 6, scope: !3744)
!3747 = !DILocation(line: 4909, column: 30, scope: !3748)
!3748 = distinct !DILexicalBlock(scope: !3721, file: !60, line: 4909, column: 8)
!3749 = !DILocation(line: 4909, column: 8, scope: !3721)
!3750 = !DILocation(line: 4914, column: 9, scope: !3751)
!3751 = distinct !DILexicalBlock(scope: !3752, file: !60, line: 4914, column: 9)
!3752 = distinct !DILexicalBlock(scope: !3748, file: !60, line: 4910, column: 4)
!3753 = !DILocation(line: 4914, column: 30, scope: !3751)
!3754 = !DILocation(line: 4914, column: 9, scope: !3752)
!3755 = !DILocation(line: 4916, column: 39, scope: !3756)
!3756 = distinct !DILexicalBlock(scope: !3751, file: !60, line: 4915, column: 5)
!3757 = !DILocation(line: 4916, column: 15, scope: !3756)
!3758 = !DILocation(line: 4917, column: 6, scope: !3756)
!3759 = !DILocation(line: 4918, column: 5, scope: !3756)
!3760 = !DILocation(line: 4923, column: 56, scope: !3761)
!3761 = distinct !DILexicalBlock(scope: !3751, file: !60, line: 4920, column: 5)
!3762 = !DILocation(line: 4923, column: 6, scope: !3761)
!3763 = !DILocation(line: 4926, column: 16, scope: !3764)
!3764 = distinct !DILexicalBlock(scope: !3752, file: !60, line: 4926, column: 9)
!3765 = !DILocation(line: 4926, column: 29, scope: !3764)
!3766 = !DILocation(line: 4926, column: 43, scope: !3764)
!3767 = !DILocation(line: 4926, column: 27, scope: !3764)
!3768 = !DILocation(line: 4926, column: 9, scope: !3752)
!3769 = !DILocation(line: 4930, column: 36, scope: !3770)
!3770 = distinct !DILexicalBlock(scope: !3771, file: !60, line: 4930, column: 10)
!3771 = distinct !DILexicalBlock(scope: !3764, file: !60, line: 4927, column: 5)
!3772 = !DILocation(line: 4930, column: 10, scope: !3771)
!3773 = !DILocation(line: 4932, column: 34, scope: !3774)
!3774 = distinct !DILexicalBlock(scope: !3770, file: !60, line: 4931, column: 6)
!3775 = !DILocation(line: 4933, column: 6, scope: !3774)
!3776 = !DILocation(line: 4938, column: 20, scope: !3771)
!3777 = !DILocation(line: 4939, column: 5, scope: !3771)
!3778 = !DILocation(line: 0, scope: !2796, inlinedAt: !3779)
!3779 = distinct !DILocation(line: 4946, column: 3, scope: !3702)
!3780 = !DILocation(line: 229, column: 2, scope: !2796, inlinedAt: !3779)
!3781 = !DILocation(line: 4948, column: 3, scope: !3702)
!3782 = distinct !DISubprogram(name: "vTaskNotifyGiveFromISR", scope: !60, file: !60, line: 4956, type: !3783, scopeLine: 4957, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !59, retainedNodes: !3785)
!3783 = !DISubroutineType(types: !3784)
!3784 = !{null, !119, !1498}
!3785 = !{!3786, !3787, !3788, !3789, !3790}
!3786 = !DILocalVariable(name: "xTaskToNotify", arg: 1, scope: !3782, file: !60, line: 4956, type: !119)
!3787 = !DILocalVariable(name: "pxHigherPriorityTaskWoken", arg: 2, scope: !3782, file: !60, line: 4956, type: !1498)
!3788 = !DILocalVariable(name: "pxTCB", scope: !3782, file: !60, line: 4958, type: !71)
!3789 = !DILocalVariable(name: "ucOriginalNotifyState", scope: !3782, file: !60, line: 4959, type: !7)
!3790 = !DILocalVariable(name: "uxSavedInterruptStatus", scope: !3782, file: !60, line: 4960, type: !56)
!3791 = !DILocation(line: 0, scope: !3782)
!3792 = !DILocation(line: 211, column: 2, scope: !2785, inlinedAt: !3793)
!3793 = distinct !DILocation(line: 4984, column: 28, scope: !3782)
!3794 = !DILocation(line: 0, scope: !2785, inlinedAt: !3793)
!3795 = !DILocation(line: 4986, column: 35, scope: !3796)
!3796 = distinct !DILexicalBlock(scope: !3782, file: !60, line: 4985, column: 3)
!3797 = !DILocation(line: 4987, column: 25, scope: !3796)
!3798 = !DILocation(line: 4991, column: 13, scope: !3796)
!3799 = !DILocation(line: 4991, column: 30, scope: !3796)
!3800 = !DILocation(line: 4997, column: 30, scope: !3801)
!3801 = distinct !DILexicalBlock(scope: !3796, file: !60, line: 4997, column: 8)
!3802 = !DILocation(line: 4997, column: 8, scope: !3796)
!3803 = !DILocation(line: 5002, column: 9, scope: !3804)
!3804 = distinct !DILexicalBlock(scope: !3805, file: !60, line: 5002, column: 9)
!3805 = distinct !DILexicalBlock(scope: !3801, file: !60, line: 4998, column: 4)
!3806 = !DILocation(line: 5002, column: 30, scope: !3804)
!3807 = !DILocation(line: 5002, column: 9, scope: !3805)
!3808 = !DILocation(line: 5004, column: 39, scope: !3809)
!3809 = distinct !DILexicalBlock(scope: !3804, file: !60, line: 5003, column: 5)
!3810 = !DILocation(line: 5004, column: 15, scope: !3809)
!3811 = !DILocation(line: 5005, column: 6, scope: !3809)
!3812 = !DILocation(line: 5006, column: 5, scope: !3809)
!3813 = !DILocation(line: 5011, column: 56, scope: !3814)
!3814 = distinct !DILexicalBlock(scope: !3804, file: !60, line: 5008, column: 5)
!3815 = !DILocation(line: 5011, column: 6, scope: !3814)
!3816 = !DILocation(line: 5014, column: 16, scope: !3817)
!3817 = distinct !DILexicalBlock(scope: !3805, file: !60, line: 5014, column: 9)
!3818 = !DILocation(line: 5014, column: 29, scope: !3817)
!3819 = !DILocation(line: 5014, column: 43, scope: !3817)
!3820 = !DILocation(line: 5014, column: 27, scope: !3817)
!3821 = !DILocation(line: 5014, column: 9, scope: !3805)
!3822 = !DILocation(line: 5018, column: 36, scope: !3823)
!3823 = distinct !DILexicalBlock(scope: !3824, file: !60, line: 5018, column: 10)
!3824 = distinct !DILexicalBlock(scope: !3817, file: !60, line: 5015, column: 5)
!3825 = !DILocation(line: 5018, column: 10, scope: !3824)
!3826 = !DILocation(line: 5020, column: 34, scope: !3827)
!3827 = distinct !DILexicalBlock(scope: !3823, file: !60, line: 5019, column: 6)
!3828 = !DILocation(line: 5021, column: 6, scope: !3827)
!3829 = !DILocation(line: 5026, column: 20, scope: !3824)
!3830 = !DILocation(line: 5027, column: 5, scope: !3824)
!3831 = !DILocation(line: 0, scope: !2796, inlinedAt: !3832)
!3832 = distinct !DILocation(line: 5034, column: 3, scope: !3782)
!3833 = !DILocation(line: 229, column: 2, scope: !2796, inlinedAt: !3832)
!3834 = !DILocation(line: 5035, column: 2, scope: !3782)
!3835 = distinct !DISubprogram(name: "xTaskNotifyStateClear", scope: !60, file: !60, line: 5043, type: !3044, scopeLine: 5044, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !59, retainedNodes: !3836)
!3836 = !{!3837, !3838, !3839}
!3837 = !DILocalVariable(name: "xTask", arg: 1, scope: !3835, file: !60, line: 5043, type: !119)
!3838 = !DILocalVariable(name: "pxTCB", scope: !3835, file: !60, line: 5045, type: !71)
!3839 = !DILocalVariable(name: "xReturn", scope: !3835, file: !60, line: 5046, type: !51)
!3840 = !DILocation(line: 0, scope: !3835)
!3841 = !DILocation(line: 5050, column: 11, scope: !3835)
!3842 = !DILocation(line: 5052, column: 3, scope: !3835)
!3843 = !DILocation(line: 5054, column: 15, scope: !3844)
!3844 = distinct !DILexicalBlock(scope: !3845, file: !60, line: 5054, column: 8)
!3845 = distinct !DILexicalBlock(scope: !3835, file: !60, line: 5053, column: 3)
!3846 = !DILocation(line: 5054, column: 29, scope: !3844)
!3847 = !DILocation(line: 5054, column: 8, scope: !3845)
!3848 = !DILocation(line: 5056, column: 26, scope: !3849)
!3849 = distinct !DILexicalBlock(scope: !3844, file: !60, line: 5055, column: 4)
!3850 = !DILocation(line: 5058, column: 4, scope: !3849)
!3851 = !DILocation(line: 0, scope: !3844)
!3852 = !DILocation(line: 5064, column: 3, scope: !3835)
!3853 = !DILocation(line: 5066, column: 3, scope: !3835)
!3854 = distinct !DISubprogram(name: "sv_call_handler", scope: !441, file: !441, line: 16, type: !206, scopeLine: 16, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !440, retainedNodes: !587)
!3855 = !DILocation(line: 17, column: 2, scope: !3854)
!3856 = !DILocation(line: 18, column: 1, scope: !3854)
!3857 = distinct !DISubprogram(name: "pend_sv_handler", scope: !441, file: !441, line: 20, type: !206, scopeLine: 20, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !440, retainedNodes: !587)
!3858 = !DILocation(line: 21, column: 2, scope: !3857)
!3859 = !DILocation(line: 22, column: 1, scope: !3857)
!3860 = distinct !DISubprogram(name: "sys_tick_handler", scope: !441, file: !441, line: 24, type: !206, scopeLine: 24, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !440, retainedNodes: !587)
!3861 = !DILocation(line: 25, column: 2, scope: !3860)
!3862 = !DILocation(line: 26, column: 1, scope: !3860)
!3863 = distinct !DISubprogram(name: "rcc_osc_ready_int_clear", scope: !174, file: !174, line: 46, type: !3864, scopeLine: 47, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !173, retainedNodes: !3866)
!3864 = !DISubroutineType(types: !3865)
!3865 = !{null, !176}
!3866 = !{!3867}
!3867 = !DILocalVariable(name: "osc", arg: 1, scope: !3863, file: !174, line: 46, type: !176)
!3868 = !DILocation(line: 0, scope: !3863)
!3869 = !DILocation(line: 48, column: 2, scope: !3863)
!3870 = !DILocation(line: 0, scope: !3871)
!3871 = distinct !DILexicalBlock(scope: !3863, file: !174, line: 48, column: 15)
!3872 = !DILocation(line: 71, column: 1, scope: !3863)
!3873 = distinct !DISubprogram(name: "rcc_osc_ready_int_enable", scope: !174, file: !174, line: 73, type: !3864, scopeLine: 74, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !173, retainedNodes: !3874)
!3874 = !{!3875}
!3875 = !DILocalVariable(name: "osc", arg: 1, scope: !3873, file: !174, line: 73, type: !176)
!3876 = !DILocation(line: 0, scope: !3873)
!3877 = !DILocation(line: 75, column: 2, scope: !3873)
!3878 = !DILocation(line: 0, scope: !3879)
!3879 = distinct !DILexicalBlock(scope: !3873, file: !174, line: 75, column: 15)
!3880 = !DILocation(line: 98, column: 1, scope: !3873)
!3881 = distinct !DISubprogram(name: "rcc_osc_ready_int_disable", scope: !174, file: !174, line: 100, type: !3864, scopeLine: 101, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !173, retainedNodes: !3882)
!3882 = !{!3883}
!3883 = !DILocalVariable(name: "osc", arg: 1, scope: !3881, file: !174, line: 100, type: !176)
!3884 = !DILocation(line: 0, scope: !3881)
!3885 = !DILocation(line: 102, column: 2, scope: !3881)
!3886 = !DILocation(line: 0, scope: !3887)
!3887 = distinct !DILexicalBlock(scope: !3881, file: !174, line: 102, column: 15)
!3888 = !DILocation(line: 125, column: 1, scope: !3881)
!3889 = distinct !DISubprogram(name: "rcc_osc_ready_int_flag", scope: !174, file: !174, line: 127, type: !3890, scopeLine: 128, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !173, retainedNodes: !3892)
!3890 = !DISubroutineType(types: !3891)
!3891 = !{!546, !176}
!3892 = !{!3893}
!3893 = !DILocalVariable(name: "osc", arg: 1, scope: !3889, file: !174, line: 127, type: !176)
!3894 = !DILocation(line: 0, scope: !3889)
!3895 = !DILocation(line: 129, column: 2, scope: !3889)
!3896 = !DILocation(line: 131, column: 12, scope: !3897)
!3897 = distinct !DILexicalBlock(scope: !3889, file: !174, line: 129, column: 15)
!3898 = !DILocation(line: 131, column: 41, scope: !3897)
!3899 = !DILocation(line: 131, column: 3, scope: !3897)
!3900 = !DILocation(line: 134, column: 12, scope: !3897)
!3901 = !DILocation(line: 134, column: 41, scope: !3897)
!3902 = !DILocation(line: 134, column: 3, scope: !3897)
!3903 = !DILocation(line: 137, column: 12, scope: !3897)
!3904 = !DILocation(line: 137, column: 41, scope: !3897)
!3905 = !DILocation(line: 137, column: 3, scope: !3897)
!3906 = !DILocation(line: 140, column: 12, scope: !3897)
!3907 = !DILocation(line: 140, column: 41, scope: !3897)
!3908 = !DILocation(line: 140, column: 3, scope: !3897)
!3909 = !DILocation(line: 143, column: 12, scope: !3897)
!3910 = !DILocation(line: 143, column: 41, scope: !3897)
!3911 = !DILocation(line: 143, column: 3, scope: !3897)
!3912 = !DILocation(line: 146, column: 12, scope: !3897)
!3913 = !DILocation(line: 146, column: 21, scope: !3897)
!3914 = !DILocation(line: 146, column: 3, scope: !3897)
!3915 = !DILocation(line: 149, column: 12, scope: !3897)
!3916 = !DILocation(line: 149, column: 43, scope: !3897)
!3917 = !DILocation(line: 149, column: 3, scope: !3897)
!3918 = !DILocation(line: 154, column: 1, scope: !3889)
!3919 = distinct !DISubprogram(name: "rcc_css_int_clear", scope: !174, file: !174, line: 156, type: !206, scopeLine: 157, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !173, retainedNodes: !587)
!3920 = !DILocation(line: 158, column: 11, scope: !3919)
!3921 = !DILocation(line: 159, column: 1, scope: !3919)
!3922 = distinct !DISubprogram(name: "rcc_css_int_flag", scope: !174, file: !174, line: 161, type: !585, scopeLine: 162, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !173, retainedNodes: !587)
!3923 = !DILocation(line: 163, column: 11, scope: !3922)
!3924 = !DILocation(line: 163, column: 37, scope: !3922)
!3925 = !DILocation(line: 163, column: 2, scope: !3922)
!3926 = distinct !DISubprogram(name: "rcc_is_osc_ready", scope: !174, file: !174, line: 166, type: !3927, scopeLine: 167, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !173, retainedNodes: !3930)
!3927 = !DISubroutineType(types: !3928)
!3928 = !{!3929, !176}
!3929 = !DIBasicType(name: "_Bool", size: 8, encoding: DW_ATE_boolean)
!3930 = !{!3931}
!3931 = !DILocalVariable(name: "osc", arg: 1, scope: !3926, file: !174, line: 166, type: !176)
!3932 = !DILocation(line: 0, scope: !3926)
!3933 = !DILocation(line: 168, column: 2, scope: !3926)
!3934 = !DILocation(line: 170, column: 10, scope: !3935)
!3935 = distinct !DILexicalBlock(scope: !3926, file: !174, line: 168, column: 15)
!3936 = !DILocation(line: 170, column: 17, scope: !3935)
!3937 = !DILocation(line: 170, column: 3, scope: !3935)
!3938 = !DILocation(line: 172, column: 10, scope: !3935)
!3939 = !DILocation(line: 172, column: 17, scope: !3935)
!3940 = !DILocation(line: 172, column: 3, scope: !3935)
!3941 = !DILocation(line: 174, column: 10, scope: !3935)
!3942 = !DILocation(line: 174, column: 17, scope: !3935)
!3943 = !DILocation(line: 174, column: 3, scope: !3935)
!3944 = !DILocation(line: 176, column: 10, scope: !3935)
!3945 = !DILocation(line: 176, column: 17, scope: !3935)
!3946 = !DILocation(line: 176, column: 3, scope: !3935)
!3947 = !DILocation(line: 178, column: 10, scope: !3935)
!3948 = !DILocation(line: 178, column: 19, scope: !3935)
!3949 = !DILocation(line: 178, column: 3, scope: !3935)
!3950 = !DILocation(line: 180, column: 10, scope: !3935)
!3951 = !DILocation(line: 180, column: 18, scope: !3935)
!3952 = !DILocation(line: 180, column: 3, scope: !3935)
!3953 = !DILocation(line: 182, column: 10, scope: !3935)
!3954 = !DILocation(line: 182, column: 20, scope: !3935)
!3955 = !DILocation(line: 182, column: 3, scope: !3935)
!3956 = !DILocation(line: 185, column: 1, scope: !3926)
!3957 = distinct !DISubprogram(name: "rcc_wait_for_osc_ready", scope: !174, file: !174, line: 187, type: !3864, scopeLine: 188, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !173, retainedNodes: !3958)
!3958 = !{!3959}
!3959 = !DILocalVariable(name: "osc", arg: 1, scope: !3957, file: !174, line: 187, type: !176)
!3960 = !DILocation(line: 0, scope: !3957)
!3961 = !DILocation(line: 189, column: 2, scope: !3957)
!3962 = !DILocation(line: 189, column: 10, scope: !3957)
!3963 = distinct !{!3963, !3961, !3964}
!3964 = !DILocation(line: 189, column: 32, scope: !3957)
!3965 = !DILocation(line: 190, column: 1, scope: !3957)
!3966 = distinct !DISubprogram(name: "rcc_wait_for_sysclk_status", scope: !174, file: !174, line: 192, type: !3864, scopeLine: 193, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !173, retainedNodes: !3967)
!3967 = !{!3968}
!3968 = !DILocalVariable(name: "osc", arg: 1, scope: !3966, file: !174, line: 192, type: !176)
!3969 = !DILocation(line: 0, scope: !3966)
!3970 = !DILocation(line: 194, column: 2, scope: !3966)
!3971 = !DILocation(line: 196, column: 12, scope: !3972)
!3972 = distinct !DILexicalBlock(scope: !3966, file: !174, line: 194, column: 15)
!3973 = !DILocation(line: 197, column: 4, scope: !3972)
!3974 = !DILocation(line: 196, column: 3, scope: !3972)
!3975 = distinct !{!3975, !3974, !3976}
!3976 = !DILocation(line: 197, column: 24, scope: !3972)
!3977 = !DILocation(line: 200, column: 12, scope: !3972)
!3978 = !DILocation(line: 201, column: 4, scope: !3972)
!3979 = !DILocation(line: 200, column: 3, scope: !3972)
!3980 = distinct !{!3980, !3979, !3981}
!3981 = !DILocation(line: 201, column: 24, scope: !3972)
!3982 = !DILocation(line: 204, column: 12, scope: !3972)
!3983 = !DILocation(line: 205, column: 4, scope: !3972)
!3984 = !DILocation(line: 204, column: 3, scope: !3972)
!3985 = distinct !{!3985, !3984, !3986}
!3986 = !DILocation(line: 205, column: 26, scope: !3972)
!3987 = !DILocation(line: 208, column: 12, scope: !3972)
!3988 = !DILocation(line: 209, column: 4, scope: !3972)
!3989 = !DILocation(line: 208, column: 3, scope: !3972)
!3990 = distinct !{!3990, !3989, !3991}
!3991 = !DILocation(line: 209, column: 24, scope: !3972)
!3992 = !DILocation(line: 215, column: 1, scope: !3966)
!3993 = distinct !DISubprogram(name: "rcc_osc_on", scope: !174, file: !174, line: 217, type: !3864, scopeLine: 218, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !173, retainedNodes: !3994)
!3994 = !{!3995}
!3995 = !DILocalVariable(name: "osc", arg: 1, scope: !3993, file: !174, line: 217, type: !176)
!3996 = !DILocation(line: 0, scope: !3993)
!3997 = !DILocation(line: 219, column: 2, scope: !3993)
!3998 = !DILocation(line: 221, column: 10, scope: !3999)
!3999 = distinct !DILexicalBlock(scope: !3993, file: !174, line: 219, column: 15)
!4000 = !DILocation(line: 222, column: 3, scope: !3999)
!4001 = !DILocation(line: 224, column: 10, scope: !3999)
!4002 = !DILocation(line: 225, column: 3, scope: !3999)
!4003 = !DILocation(line: 227, column: 10, scope: !3999)
!4004 = !DILocation(line: 228, column: 3, scope: !3999)
!4005 = !DILocation(line: 230, column: 10, scope: !3999)
!4006 = !DILocation(line: 231, column: 3, scope: !3999)
!4007 = !DILocation(line: 233, column: 12, scope: !3999)
!4008 = !DILocation(line: 234, column: 3, scope: !3999)
!4009 = !DILocation(line: 236, column: 11, scope: !3999)
!4010 = !DILocation(line: 237, column: 3, scope: !3999)
!4011 = !DILocation(line: 239, column: 13, scope: !3999)
!4012 = !DILocation(line: 240, column: 3, scope: !3999)
!4013 = !DILocation(line: 242, column: 1, scope: !3993)
!4014 = distinct !DISubprogram(name: "rcc_osc_off", scope: !174, file: !174, line: 244, type: !3864, scopeLine: 245, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !173, retainedNodes: !4015)
!4015 = !{!4016}
!4016 = !DILocalVariable(name: "osc", arg: 1, scope: !4014, file: !174, line: 244, type: !176)
!4017 = !DILocation(line: 0, scope: !4014)
!4018 = !DILocation(line: 246, column: 2, scope: !4014)
!4019 = !DILocation(line: 248, column: 10, scope: !4020)
!4020 = distinct !DILexicalBlock(scope: !4014, file: !174, line: 246, column: 15)
!4021 = !DILocation(line: 249, column: 3, scope: !4020)
!4022 = !DILocation(line: 251, column: 10, scope: !4020)
!4023 = !DILocation(line: 252, column: 3, scope: !4020)
!4024 = !DILocation(line: 254, column: 10, scope: !4020)
!4025 = !DILocation(line: 255, column: 3, scope: !4020)
!4026 = !DILocation(line: 257, column: 10, scope: !4020)
!4027 = !DILocation(line: 258, column: 3, scope: !4020)
!4028 = !DILocation(line: 260, column: 12, scope: !4020)
!4029 = !DILocation(line: 261, column: 3, scope: !4020)
!4030 = !DILocation(line: 263, column: 11, scope: !4020)
!4031 = !DILocation(line: 264, column: 3, scope: !4020)
!4032 = !DILocation(line: 266, column: 13, scope: !4020)
!4033 = !DILocation(line: 267, column: 3, scope: !4020)
!4034 = !DILocation(line: 269, column: 1, scope: !4014)
!4035 = distinct !DISubprogram(name: "rcc_css_enable", scope: !174, file: !174, line: 271, type: !206, scopeLine: 272, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !173, retainedNodes: !587)
!4036 = !DILocation(line: 273, column: 9, scope: !4035)
!4037 = !DILocation(line: 274, column: 1, scope: !4035)
!4038 = distinct !DISubprogram(name: "rcc_css_disable", scope: !174, file: !174, line: 276, type: !206, scopeLine: 277, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !173, retainedNodes: !587)
!4039 = !DILocation(line: 278, column: 9, scope: !4038)
!4040 = !DILocation(line: 279, column: 1, scope: !4038)
!4041 = distinct !DISubprogram(name: "rcc_set_sysclk_source", scope: !174, file: !174, line: 281, type: !1054, scopeLine: 282, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !173, retainedNodes: !4042)
!4042 = !{!4043, !4044}
!4043 = !DILocalVariable(name: "clk", arg: 1, scope: !4041, file: !174, line: 281, type: !47)
!4044 = !DILocalVariable(name: "reg32", scope: !4041, file: !174, line: 283, type: !47)
!4045 = !DILocation(line: 0, scope: !4041)
!4046 = !DILocation(line: 285, column: 10, scope: !4041)
!4047 = !DILocation(line: 286, column: 8, scope: !4041)
!4048 = !DILocation(line: 287, column: 20, scope: !4041)
!4049 = !DILocation(line: 287, column: 11, scope: !4041)
!4050 = !DILocation(line: 288, column: 1, scope: !4041)
!4051 = distinct !DISubprogram(name: "rcc_set_pll_source", scope: !174, file: !174, line: 290, type: !1054, scopeLine: 291, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !173, retainedNodes: !4052)
!4052 = !{!4053, !4054}
!4053 = !DILocalVariable(name: "pllsrc", arg: 1, scope: !4051, file: !174, line: 290, type: !47)
!4054 = !DILocalVariable(name: "reg32", scope: !4051, file: !174, line: 292, type: !47)
!4055 = !DILocation(line: 0, scope: !4051)
!4056 = !DILocation(line: 294, column: 10, scope: !4051)
!4057 = !DILocation(line: 295, column: 8, scope: !4051)
!4058 = !DILocation(line: 296, column: 23, scope: !4051)
!4059 = !DILocation(line: 296, column: 14, scope: !4051)
!4060 = !DILocation(line: 297, column: 1, scope: !4051)
!4061 = distinct !DISubprogram(name: "rcc_set_ppre2", scope: !174, file: !174, line: 299, type: !1054, scopeLine: 300, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !173, retainedNodes: !4062)
!4062 = !{!4063, !4064}
!4063 = !DILocalVariable(name: "ppre2", arg: 1, scope: !4061, file: !174, line: 299, type: !47)
!4064 = !DILocalVariable(name: "reg32", scope: !4061, file: !174, line: 301, type: !47)
!4065 = !DILocation(line: 0, scope: !4061)
!4066 = !DILocation(line: 303, column: 10, scope: !4061)
!4067 = !DILocation(line: 304, column: 8, scope: !4061)
!4068 = !DILocation(line: 305, column: 29, scope: !4061)
!4069 = !DILocation(line: 305, column: 20, scope: !4061)
!4070 = !DILocation(line: 305, column: 11, scope: !4061)
!4071 = !DILocation(line: 306, column: 1, scope: !4061)
!4072 = distinct !DISubprogram(name: "rcc_set_ppre1", scope: !174, file: !174, line: 308, type: !1054, scopeLine: 309, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !173, retainedNodes: !4073)
!4073 = !{!4074, !4075}
!4074 = !DILocalVariable(name: "ppre1", arg: 1, scope: !4072, file: !174, line: 308, type: !47)
!4075 = !DILocalVariable(name: "reg32", scope: !4072, file: !174, line: 310, type: !47)
!4076 = !DILocation(line: 0, scope: !4072)
!4077 = !DILocation(line: 312, column: 10, scope: !4072)
!4078 = !DILocation(line: 313, column: 8, scope: !4072)
!4079 = !DILocation(line: 314, column: 29, scope: !4072)
!4080 = !DILocation(line: 314, column: 20, scope: !4072)
!4081 = !DILocation(line: 314, column: 11, scope: !4072)
!4082 = !DILocation(line: 315, column: 1, scope: !4072)
!4083 = distinct !DISubprogram(name: "rcc_set_hpre", scope: !174, file: !174, line: 317, type: !1054, scopeLine: 318, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !173, retainedNodes: !4084)
!4084 = !{!4085, !4086}
!4085 = !DILocalVariable(name: "hpre", arg: 1, scope: !4083, file: !174, line: 317, type: !47)
!4086 = !DILocalVariable(name: "reg32", scope: !4083, file: !174, line: 319, type: !47)
!4087 = !DILocation(line: 0, scope: !4083)
!4088 = !DILocation(line: 321, column: 10, scope: !4083)
!4089 = !DILocation(line: 322, column: 8, scope: !4083)
!4090 = !DILocation(line: 323, column: 28, scope: !4083)
!4091 = !DILocation(line: 323, column: 20, scope: !4083)
!4092 = !DILocation(line: 323, column: 11, scope: !4083)
!4093 = !DILocation(line: 324, column: 1, scope: !4083)
!4094 = distinct !DISubprogram(name: "rcc_set_main_pll", scope: !174, file: !174, line: 326, type: !4095, scopeLine: 328, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !173, retainedNodes: !4097)
!4095 = !DISubroutineType(types: !4096)
!4096 = !{null, !47, !47, !47, !47, !47, !47}
!4097 = !{!4098, !4099, !4100, !4101, !4102, !4103}
!4098 = !DILocalVariable(name: "source", arg: 1, scope: !4094, file: !174, line: 326, type: !47)
!4099 = !DILocalVariable(name: "pllm", arg: 2, scope: !4094, file: !174, line: 326, type: !47)
!4100 = !DILocalVariable(name: "plln", arg: 3, scope: !4094, file: !174, line: 326, type: !47)
!4101 = !DILocalVariable(name: "pllp", arg: 4, scope: !4094, file: !174, line: 326, type: !47)
!4102 = !DILocalVariable(name: "pllq", arg: 5, scope: !4094, file: !174, line: 327, type: !47)
!4103 = !DILocalVariable(name: "pllr", arg: 6, scope: !4094, file: !174, line: 327, type: !47)
!4104 = !DILocation(line: 0, scope: !4094)
!4105 = !DILocation(line: 329, column: 40, scope: !4094)
!4106 = !DILocation(line: 330, column: 9, scope: !4094)
!4107 = !DILocation(line: 333, column: 9, scope: !4094)
!4108 = !DILocation(line: 334, column: 9, scope: !4094)
!4109 = !DILocation(line: 330, column: 36, scope: !4094)
!4110 = !DILocation(line: 331, column: 10, scope: !4094)
!4111 = !DILocation(line: 332, column: 40, scope: !4094)
!4112 = !DILocation(line: 333, column: 36, scope: !4094)
!4113 = !DILocation(line: 334, column: 36, scope: !4094)
!4114 = !DILocation(line: 329, column: 14, scope: !4094)
!4115 = !DILocation(line: 335, column: 1, scope: !4094)
!4116 = distinct !DISubprogram(name: "rcc_system_clock_source", scope: !174, file: !174, line: 337, type: !1515, scopeLine: 338, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !173, retainedNodes: !587)
!4117 = !DILocation(line: 340, column: 10, scope: !4116)
!4118 = !DILocation(line: 340, column: 19, scope: !4116)
!4119 = !DILocation(line: 340, column: 42, scope: !4116)
!4120 = !DILocation(line: 340, column: 2, scope: !4116)
!4121 = distinct !DISubprogram(name: "rcc_set_msi_range", scope: !174, file: !174, line: 349, type: !1054, scopeLine: 350, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !173, retainedNodes: !4122)
!4122 = !{!4123, !4124}
!4123 = !DILocalVariable(name: "msi_range", arg: 1, scope: !4121, file: !174, line: 349, type: !47)
!4124 = !DILocalVariable(name: "reg", scope: !4121, file: !174, line: 351, type: !47)
!4125 = !DILocation(line: 0, scope: !4121)
!4126 = !DILocation(line: 351, column: 17, scope: !4121)
!4127 = !DILocation(line: 352, column: 6, scope: !4121)
!4128 = !DILocation(line: 353, column: 19, scope: !4121)
!4129 = !DILocation(line: 354, column: 15, scope: !4121)
!4130 = !DILocation(line: 354, column: 9, scope: !4121)
!4131 = !DILocation(line: 355, column: 1, scope: !4121)
!4132 = distinct !DISubprogram(name: "rcc_set_msi_range_standby", scope: !174, file: !174, line: 364, type: !1054, scopeLine: 365, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !173, retainedNodes: !4133)
!4133 = !{!4134, !4135}
!4134 = !DILocalVariable(name: "msi_range", arg: 1, scope: !4132, file: !174, line: 364, type: !47)
!4135 = !DILocalVariable(name: "reg", scope: !4132, file: !174, line: 366, type: !47)
!4136 = !DILocation(line: 0, scope: !4132)
!4137 = !DILocation(line: 366, column: 17, scope: !4132)
!4138 = !DILocation(line: 367, column: 6, scope: !4132)
!4139 = !DILocation(line: 368, column: 19, scope: !4132)
!4140 = !DILocation(line: 368, column: 6, scope: !4132)
!4141 = !DILocation(line: 369, column: 10, scope: !4132)
!4142 = !DILocation(line: 370, column: 1, scope: !4132)
!4143 = distinct !DISubprogram(name: "rcc_peripheral_enable_clock", scope: !443, file: !443, line: 41, type: !4144, scopeLine: 42, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !442, retainedNodes: !4146)
!4144 = !DISubroutineType(types: !4145)
!4145 = !{null, !49, !47}
!4146 = !{!4147, !4148}
!4147 = !DILocalVariable(name: "reg", arg: 1, scope: !4143, file: !443, line: 41, type: !49)
!4148 = !DILocalVariable(name: "en", arg: 2, scope: !4143, file: !443, line: 41, type: !47)
!4149 = !DILocation(line: 0, scope: !4143)
!4150 = !DILocation(line: 43, column: 7, scope: !4143)
!4151 = !DILocation(line: 44, column: 1, scope: !4143)
!4152 = distinct !DISubprogram(name: "rcc_peripheral_disable_clock", scope: !443, file: !443, line: 62, type: !4144, scopeLine: 63, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !442, retainedNodes: !4153)
!4153 = !{!4154, !4155}
!4154 = !DILocalVariable(name: "reg", arg: 1, scope: !4152, file: !443, line: 62, type: !49)
!4155 = !DILocalVariable(name: "en", arg: 2, scope: !4152, file: !443, line: 62, type: !47)
!4156 = !DILocation(line: 0, scope: !4152)
!4157 = !DILocation(line: 64, column: 10, scope: !4152)
!4158 = !DILocation(line: 64, column: 7, scope: !4152)
!4159 = !DILocation(line: 65, column: 1, scope: !4152)
!4160 = distinct !DISubprogram(name: "rcc_peripheral_reset", scope: !443, file: !443, line: 82, type: !4144, scopeLine: 83, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !442, retainedNodes: !4161)
!4161 = !{!4162, !4163}
!4162 = !DILocalVariable(name: "reg", arg: 1, scope: !4160, file: !443, line: 82, type: !49)
!4163 = !DILocalVariable(name: "reset", arg: 2, scope: !4160, file: !443, line: 82, type: !47)
!4164 = !DILocation(line: 0, scope: !4160)
!4165 = !DILocation(line: 84, column: 7, scope: !4160)
!4166 = !DILocation(line: 85, column: 1, scope: !4160)
!4167 = distinct !DISubprogram(name: "rcc_peripheral_clear_reset", scope: !443, file: !443, line: 103, type: !4144, scopeLine: 104, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !442, retainedNodes: !4168)
!4168 = !{!4169, !4170}
!4169 = !DILocalVariable(name: "reg", arg: 1, scope: !4167, file: !443, line: 103, type: !49)
!4170 = !DILocalVariable(name: "clear_reset", arg: 2, scope: !4167, file: !443, line: 103, type: !47)
!4171 = !DILocation(line: 0, scope: !4167)
!4172 = !DILocation(line: 105, column: 10, scope: !4167)
!4173 = !DILocation(line: 105, column: 7, scope: !4167)
!4174 = !DILocation(line: 106, column: 1, scope: !4167)
!4175 = distinct !DISubprogram(name: "rcc_periph_clock_enable", scope: !443, file: !443, line: 121, type: !4176, scopeLine: 122, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !442, retainedNodes: !4178)
!4176 = !DISubroutineType(types: !4177)
!4177 = !{null, !445}
!4178 = !{!4179}
!4179 = !DILocalVariable(name: "clken", arg: 1, scope: !4175, file: !443, line: 121, type: !445)
!4180 = !DILocation(line: 0, scope: !4175)
!4181 = !DILocation(line: 123, column: 21, scope: !4175)
!4182 = !DILocation(line: 123, column: 2, scope: !4175)
!4183 = !DILocation(line: 123, column: 18, scope: !4175)
!4184 = !DILocation(line: 124, column: 1, scope: !4175)
!4185 = distinct !DISubprogram(name: "rcc_periph_clock_disable", scope: !443, file: !443, line: 135, type: !4176, scopeLine: 136, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !442, retainedNodes: !4186)
!4186 = !{!4187}
!4187 = !DILocalVariable(name: "clken", arg: 1, scope: !4185, file: !443, line: 135, type: !445)
!4188 = !DILocation(line: 0, scope: !4185)
!4189 = !DILocation(line: 137, column: 22, scope: !4185)
!4190 = !DILocation(line: 137, column: 21, scope: !4185)
!4191 = !DILocation(line: 137, column: 2, scope: !4185)
!4192 = !DILocation(line: 137, column: 18, scope: !4185)
!4193 = !DILocation(line: 138, column: 1, scope: !4185)
!4194 = distinct !DISubprogram(name: "rcc_periph_reset_pulse", scope: !443, file: !443, line: 150, type: !4195, scopeLine: 151, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !442, retainedNodes: !4197)
!4195 = !DISubroutineType(types: !4196)
!4196 = !{null, !446}
!4197 = !{!4198}
!4198 = !DILocalVariable(name: "rst", arg: 1, scope: !4194, file: !443, line: 150, type: !446)
!4199 = !DILocation(line: 0, scope: !4194)
!4200 = !DILocation(line: 152, column: 19, scope: !4194)
!4201 = !DILocation(line: 152, column: 2, scope: !4194)
!4202 = !DILocation(line: 152, column: 16, scope: !4194)
!4203 = !DILocation(line: 153, column: 19, scope: !4194)
!4204 = !DILocation(line: 153, column: 16, scope: !4194)
!4205 = !DILocation(line: 154, column: 1, scope: !4194)
!4206 = distinct !DISubprogram(name: "rcc_periph_reset_hold", scope: !443, file: !443, line: 166, type: !4195, scopeLine: 167, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !442, retainedNodes: !4207)
!4207 = !{!4208}
!4208 = !DILocalVariable(name: "rst", arg: 1, scope: !4206, file: !443, line: 166, type: !446)
!4209 = !DILocation(line: 0, scope: !4206)
!4210 = !DILocation(line: 168, column: 19, scope: !4206)
!4211 = !DILocation(line: 168, column: 2, scope: !4206)
!4212 = !DILocation(line: 168, column: 16, scope: !4206)
!4213 = !DILocation(line: 169, column: 1, scope: !4206)
!4214 = distinct !DISubprogram(name: "rcc_periph_reset_release", scope: !443, file: !443, line: 181, type: !4195, scopeLine: 182, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !442, retainedNodes: !4215)
!4215 = !{!4216}
!4216 = !DILocalVariable(name: "rst", arg: 1, scope: !4214, file: !443, line: 181, type: !446)
!4217 = !DILocation(line: 0, scope: !4214)
!4218 = !DILocation(line: 183, column: 20, scope: !4214)
!4219 = !DILocation(line: 183, column: 19, scope: !4214)
!4220 = !DILocation(line: 183, column: 2, scope: !4214)
!4221 = !DILocation(line: 183, column: 16, scope: !4214)
!4222 = !DILocation(line: 184, column: 1, scope: !4214)
!4223 = distinct !DISubprogram(name: "rcc_set_mco", scope: !443, file: !443, line: 194, type: !1054, scopeLine: 195, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !442, retainedNodes: !4224)
!4224 = !{!4225}
!4225 = !DILocalVariable(name: "mcosrc", arg: 1, scope: !4223, file: !443, line: 194, type: !47)
!4226 = !DILocation(line: 0, scope: !4223)
!4227 = !DILocation(line: 196, column: 14, scope: !4223)
!4228 = !DILocation(line: 196, column: 23, scope: !4223)
!4229 = !DILocation(line: 197, column: 12, scope: !4223)
!4230 = !DILocation(line: 196, column: 69, scope: !4223)
!4231 = !DILocation(line: 196, column: 11, scope: !4223)
!4232 = !DILocation(line: 198, column: 1, scope: !4223)
!4233 = distinct !DISubprogram(name: "rcc_osc_bypass_enable", scope: !443, file: !443, line: 211, type: !3864, scopeLine: 212, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !442, retainedNodes: !4234)
!4234 = !{!4235}
!4235 = !DILocalVariable(name: "osc", arg: 1, scope: !4233, file: !443, line: 211, type: !176)
!4236 = !DILocation(line: 0, scope: !4233)
!4237 = !DILocation(line: 213, column: 2, scope: !4233)
!4238 = !DILocation(line: 215, column: 10, scope: !4239)
!4239 = distinct !DILexicalBlock(scope: !4233, file: !443, line: 213, column: 15)
!4240 = !DILocation(line: 216, column: 3, scope: !4239)
!4241 = !DILocation(line: 221, column: 12, scope: !4239)
!4242 = !DILocation(line: 223, column: 3, scope: !4239)
!4243 = !DILocation(line: 228, column: 1, scope: !4233)
!4244 = distinct !DISubprogram(name: "rcc_osc_bypass_disable", scope: !443, file: !443, line: 241, type: !3864, scopeLine: 242, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !442, retainedNodes: !4245)
!4245 = !{!4246}
!4246 = !DILocalVariable(name: "osc", arg: 1, scope: !4244, file: !443, line: 241, type: !176)
!4247 = !DILocation(line: 0, scope: !4244)
!4248 = !DILocation(line: 243, column: 2, scope: !4244)
!4249 = !DILocation(line: 245, column: 10, scope: !4250)
!4250 = distinct !DILexicalBlock(scope: !4244, file: !443, line: 243, column: 15)
!4251 = !DILocation(line: 246, column: 3, scope: !4250)
!4252 = !DILocation(line: 251, column: 12, scope: !4250)
!4253 = !DILocation(line: 253, column: 3, scope: !4250)
!4254 = !DILocation(line: 258, column: 1, scope: !4244)
!4255 = distinct !DISubprogram(name: "gpio_mode_setup", scope: !507, file: !507, line: 89, type: !4256, scopeLine: 91, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !506, retainedNodes: !4258)
!4256 = !DISubroutineType(types: !4257)
!4257 = !{null, !47, !7, !7, !2172}
!4258 = !{!4259, !4260, !4261, !4262, !4263, !4264, !4265}
!4259 = !DILocalVariable(name: "gpioport", arg: 1, scope: !4255, file: !507, line: 89, type: !47)
!4260 = !DILocalVariable(name: "mode", arg: 2, scope: !4255, file: !507, line: 89, type: !7)
!4261 = !DILocalVariable(name: "pull_up_down", arg: 3, scope: !4255, file: !507, line: 89, type: !7)
!4262 = !DILocalVariable(name: "gpios", arg: 4, scope: !4255, file: !507, line: 90, type: !2172)
!4263 = !DILocalVariable(name: "i", scope: !4255, file: !507, line: 92, type: !2172)
!4264 = !DILocalVariable(name: "moder", scope: !4255, file: !507, line: 93, type: !47)
!4265 = !DILocalVariable(name: "pupd", scope: !4255, file: !507, line: 93, type: !47)
!4266 = !DILocation(line: 0, scope: !4255)
!4267 = !DILocation(line: 99, column: 10, scope: !4255)
!4268 = !DILocation(line: 100, column: 9, scope: !4255)
!4269 = !DILocation(line: 102, column: 2, scope: !4270)
!4270 = distinct !DILexicalBlock(scope: !4255, file: !507, line: 102, column: 2)
!4271 = !DILocation(line: 103, column: 12, scope: !4272)
!4272 = distinct !DILexicalBlock(scope: !4273, file: !507, line: 103, column: 7)
!4273 = distinct !DILexicalBlock(scope: !4274, file: !507, line: 102, column: 27)
!4274 = distinct !DILexicalBlock(scope: !4270, file: !507, line: 102, column: 2)
!4275 = !DILocation(line: 103, column: 18, scope: !4272)
!4276 = !DILocation(line: 103, column: 7, scope: !4273)
!4277 = !DILocation(line: 107, column: 13, scope: !4273)
!4278 = !DILocation(line: 107, column: 12, scope: !4273)
!4279 = !DILocation(line: 107, column: 9, scope: !4273)
!4280 = !DILocation(line: 108, column: 12, scope: !4273)
!4281 = !DILocation(line: 108, column: 9, scope: !4273)
!4282 = !DILocation(line: 109, column: 8, scope: !4273)
!4283 = !DILocation(line: 110, column: 11, scope: !4273)
!4284 = !DILocation(line: 110, column: 8, scope: !4273)
!4285 = !DILocation(line: 111, column: 2, scope: !4273)
!4286 = !DILocation(line: 102, column: 23, scope: !4274)
!4287 = !DILocation(line: 102, column: 16, scope: !4274)
!4288 = distinct !{!4288, !4269, !4289}
!4289 = !DILocation(line: 111, column: 2, scope: !4270)
!4290 = !DILocation(line: 114, column: 23, scope: !4255)
!4291 = !DILocation(line: 115, column: 23, scope: !4255)
!4292 = !DILocation(line: 116, column: 1, scope: !4255)
!4293 = distinct !DISubprogram(name: "gpio_set_output_options", scope: !507, file: !507, line: 132, type: !4256, scopeLine: 134, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !506, retainedNodes: !4294)
!4294 = !{!4295, !4296, !4297, !4298, !4299, !4300}
!4295 = !DILocalVariable(name: "gpioport", arg: 1, scope: !4293, file: !507, line: 132, type: !47)
!4296 = !DILocalVariable(name: "otype", arg: 2, scope: !4293, file: !507, line: 132, type: !7)
!4297 = !DILocalVariable(name: "speed", arg: 3, scope: !4293, file: !507, line: 132, type: !7)
!4298 = !DILocalVariable(name: "gpios", arg: 4, scope: !4293, file: !507, line: 133, type: !2172)
!4299 = !DILocalVariable(name: "i", scope: !4293, file: !507, line: 135, type: !2172)
!4300 = !DILocalVariable(name: "ospeedr", scope: !4293, file: !507, line: 136, type: !47)
!4301 = !DILocation(line: 0, scope: !4293)
!4302 = !DILocation(line: 138, column: 12, scope: !4303)
!4303 = distinct !DILexicalBlock(scope: !4293, file: !507, line: 138, column: 6)
!4304 = !DILocation(line: 0, scope: !4303)
!4305 = !DILocation(line: 138, column: 6, scope: !4293)
!4306 = !DILocation(line: 139, column: 3, scope: !4307)
!4307 = distinct !DILexicalBlock(scope: !4303, file: !507, line: 138, column: 20)
!4308 = !DILocation(line: 139, column: 25, scope: !4307)
!4309 = !DILocation(line: 140, column: 2, scope: !4307)
!4310 = !DILocation(line: 141, column: 28, scope: !4311)
!4311 = distinct !DILexicalBlock(scope: !4303, file: !507, line: 140, column: 9)
!4312 = !DILocation(line: 141, column: 3, scope: !4311)
!4313 = !DILocation(line: 141, column: 25, scope: !4311)
!4314 = !DILocation(line: 144, column: 12, scope: !4293)
!4315 = !DILocation(line: 146, column: 2, scope: !4316)
!4316 = distinct !DILexicalBlock(scope: !4293, file: !507, line: 146, column: 2)
!4317 = !DILocation(line: 147, column: 12, scope: !4318)
!4318 = distinct !DILexicalBlock(scope: !4319, file: !507, line: 147, column: 7)
!4319 = distinct !DILexicalBlock(scope: !4320, file: !507, line: 146, column: 27)
!4320 = distinct !DILexicalBlock(scope: !4316, file: !507, line: 146, column: 2)
!4321 = !DILocation(line: 147, column: 18, scope: !4318)
!4322 = !DILocation(line: 147, column: 7, scope: !4319)
!4323 = !DILocation(line: 150, column: 15, scope: !4319)
!4324 = !DILocation(line: 150, column: 14, scope: !4319)
!4325 = !DILocation(line: 150, column: 11, scope: !4319)
!4326 = !DILocation(line: 151, column: 14, scope: !4319)
!4327 = !DILocation(line: 151, column: 11, scope: !4319)
!4328 = !DILocation(line: 152, column: 2, scope: !4319)
!4329 = !DILocation(line: 146, column: 23, scope: !4320)
!4330 = !DILocation(line: 146, column: 16, scope: !4320)
!4331 = distinct !{!4331, !4315, !4332}
!4332 = !DILocation(line: 152, column: 2, scope: !4316)
!4333 = !DILocation(line: 154, column: 25, scope: !4293)
!4334 = !DILocation(line: 155, column: 1, scope: !4293)
!4335 = distinct !DISubprogram(name: "gpio_set_af", scope: !507, file: !507, line: 178, type: !4336, scopeLine: 179, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !506, retainedNodes: !4338)
!4336 = !DISubroutineType(types: !4337)
!4337 = !{null, !47, !7, !2172}
!4338 = !{!4339, !4340, !4341, !4342, !4343, !4344}
!4339 = !DILocalVariable(name: "gpioport", arg: 1, scope: !4335, file: !507, line: 178, type: !47)
!4340 = !DILocalVariable(name: "alt_func_num", arg: 2, scope: !4335, file: !507, line: 178, type: !7)
!4341 = !DILocalVariable(name: "gpios", arg: 3, scope: !4335, file: !507, line: 178, type: !2172)
!4342 = !DILocalVariable(name: "i", scope: !4335, file: !507, line: 180, type: !2172)
!4343 = !DILocalVariable(name: "afrl", scope: !4335, file: !507, line: 181, type: !47)
!4344 = !DILocalVariable(name: "afrh", scope: !4335, file: !507, line: 181, type: !47)
!4345 = !DILocation(line: 0, scope: !4335)
!4346 = !DILocation(line: 183, column: 9, scope: !4335)
!4347 = !DILocation(line: 184, column: 9, scope: !4335)
!4348 = !DILocation(line: 186, column: 2, scope: !4349)
!4349 = distinct !DILexicalBlock(scope: !4335, file: !507, line: 186, column: 2)
!4350 = !DILocation(line: 187, column: 12, scope: !4351)
!4351 = distinct !DILexicalBlock(scope: !4352, file: !507, line: 187, column: 7)
!4352 = distinct !DILexicalBlock(scope: !4353, file: !507, line: 186, column: 26)
!4353 = distinct !DILexicalBlock(scope: !4349, file: !507, line: 186, column: 2)
!4354 = !DILocation(line: 187, column: 18, scope: !4351)
!4355 = !DILocation(line: 187, column: 7, scope: !4352)
!4356 = !DILocation(line: 190, column: 12, scope: !4352)
!4357 = !DILocation(line: 190, column: 11, scope: !4352)
!4358 = !DILocation(line: 190, column: 8, scope: !4352)
!4359 = !DILocation(line: 191, column: 11, scope: !4352)
!4360 = !DILocation(line: 191, column: 8, scope: !4352)
!4361 = !DILocation(line: 192, column: 2, scope: !4352)
!4362 = !DILocation(line: 186, column: 22, scope: !4353)
!4363 = !DILocation(line: 186, column: 16, scope: !4353)
!4364 = distinct !{!4364, !4348, !4365}
!4365 = !DILocation(line: 192, column: 2, scope: !4349)
!4366 = !DILocation(line: 195, column: 12, scope: !4367)
!4367 = distinct !DILexicalBlock(scope: !4368, file: !507, line: 195, column: 7)
!4368 = distinct !DILexicalBlock(scope: !4369, file: !507, line: 194, column: 27)
!4369 = distinct !DILexicalBlock(scope: !4370, file: !507, line: 194, column: 2)
!4370 = distinct !DILexicalBlock(scope: !4335, file: !507, line: 194, column: 2)
!4371 = !DILocation(line: 195, column: 18, scope: !4367)
!4372 = !DILocation(line: 195, column: 7, scope: !4368)
!4373 = !DILocation(line: 198, column: 12, scope: !4368)
!4374 = !DILocation(line: 198, column: 11, scope: !4368)
!4375 = !DILocation(line: 198, column: 8, scope: !4368)
!4376 = !DILocation(line: 199, column: 11, scope: !4368)
!4377 = !DILocation(line: 199, column: 8, scope: !4368)
!4378 = !DILocation(line: 200, column: 2, scope: !4368)
!4379 = !DILocation(line: 194, column: 23, scope: !4369)
!4380 = !DILocation(line: 194, column: 16, scope: !4369)
!4381 = !DILocation(line: 194, column: 2, scope: !4370)
!4382 = distinct !{!4382, !4381, !4383}
!4383 = !DILocation(line: 200, column: 2, scope: !4370)
!4384 = !DILocation(line: 202, column: 22, scope: !4335)
!4385 = !DILocation(line: 203, column: 22, scope: !4335)
!4386 = !DILocation(line: 204, column: 1, scope: !4335)
!4387 = distinct !DISubprogram(name: "flash_prefetch_enable", scope: !509, file: !509, line: 26, type: !206, scopeLine: 27, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !508, retainedNodes: !587)
!4388 = !DILocation(line: 28, column: 12, scope: !4387)
!4389 = !DILocation(line: 29, column: 1, scope: !4387)
!4390 = distinct !DISubprogram(name: "flash_prefetch_disable", scope: !509, file: !509, line: 31, type: !206, scopeLine: 32, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !508, retainedNodes: !587)
!4391 = !DILocation(line: 33, column: 12, scope: !4390)
!4392 = !DILocation(line: 34, column: 1, scope: !4390)
!4393 = distinct !DISubprogram(name: "flash_set_ws", scope: !509, file: !509, line: 36, type: !1054, scopeLine: 37, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !508, retainedNodes: !4394)
!4394 = !{!4395, !4396}
!4395 = !DILocalVariable(name: "ws", arg: 1, scope: !4393, file: !509, line: 36, type: !47)
!4396 = !DILocalVariable(name: "reg32", scope: !4393, file: !509, line: 38, type: !47)
!4397 = !DILocation(line: 0, scope: !4393)
!4398 = !DILocation(line: 40, column: 10, scope: !4393)
!4399 = !DILocation(line: 41, column: 8, scope: !4393)
!4400 = !DILocation(line: 42, column: 8, scope: !4393)
!4401 = !DILocation(line: 43, column: 12, scope: !4393)
!4402 = !DILocation(line: 44, column: 1, scope: !4393)
!4403 = distinct !DISubprogram(name: "flash_unlock_option_bytes", scope: !509, file: !509, line: 46, type: !206, scopeLine: 47, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !508, retainedNodes: !587)
!4404 = !DILocation(line: 48, column: 16, scope: !4403)
!4405 = !DILocation(line: 49, column: 16, scope: !4403)
!4406 = !DILocation(line: 50, column: 1, scope: !4403)
!4407 = distinct !DISubprogram(name: "flash_dcache_enable", scope: !512, file: !512, line: 27, type: !206, scopeLine: 28, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !511, retainedNodes: !587)
!4408 = !DILocation(line: 29, column: 12, scope: !4407)
!4409 = !DILocation(line: 30, column: 1, scope: !4407)
!4410 = distinct !DISubprogram(name: "flash_dcache_disable", scope: !512, file: !512, line: 32, type: !206, scopeLine: 33, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !511, retainedNodes: !587)
!4411 = !DILocation(line: 34, column: 12, scope: !4410)
!4412 = !DILocation(line: 35, column: 1, scope: !4410)
!4413 = distinct !DISubprogram(name: "flash_icache_enable", scope: !512, file: !512, line: 37, type: !206, scopeLine: 38, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !511, retainedNodes: !587)
!4414 = !DILocation(line: 39, column: 12, scope: !4413)
!4415 = !DILocation(line: 40, column: 1, scope: !4413)
!4416 = distinct !DISubprogram(name: "flash_icache_disable", scope: !512, file: !512, line: 42, type: !206, scopeLine: 43, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !511, retainedNodes: !587)
!4417 = !DILocation(line: 44, column: 12, scope: !4416)
!4418 = !DILocation(line: 45, column: 1, scope: !4416)
!4419 = distinct !DISubprogram(name: "flash_dcache_reset", scope: !512, file: !512, line: 48, type: !206, scopeLine: 49, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !511, retainedNodes: !587)
!4420 = !DILocation(line: 50, column: 12, scope: !4419)
!4421 = !DILocation(line: 51, column: 1, scope: !4419)
!4422 = distinct !DISubprogram(name: "flash_icache_reset", scope: !512, file: !512, line: 53, type: !206, scopeLine: 54, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !511, retainedNodes: !587)
!4423 = !DILocation(line: 55, column: 12, scope: !4422)
!4424 = !DILocation(line: 56, column: 1, scope: !4422)
!4425 = distinct !DISubprogram(name: "usart_set_baudrate", scope: !514, file: !514, line: 53, type: !4426, scopeLine: 54, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !513, retainedNodes: !4428)
!4426 = !DISubroutineType(types: !4427)
!4427 = !{null, !47, !47}
!4428 = !{!4429, !4430, !4431}
!4429 = !DILocalVariable(name: "usart", arg: 1, scope: !4425, file: !514, line: 53, type: !47)
!4430 = !DILocalVariable(name: "baud", arg: 2, scope: !4425, file: !514, line: 53, type: !47)
!4431 = !DILocalVariable(name: "clock", scope: !4425, file: !514, line: 55, type: !47)
!4432 = !DILocation(line: 0, scope: !4425)
!4433 = !DILocation(line: 58, column: 13, scope: !4434)
!4434 = distinct !DILexicalBlock(scope: !4425, file: !514, line: 58, column: 6)
!4435 = !DILocation(line: 77, column: 12, scope: !4436)
!4436 = distinct !DILexicalBlock(scope: !4425, file: !514, line: 77, column: 6)
!4437 = !DILocation(line: 77, column: 6, scope: !4425)
!4438 = !DILocation(line: 78, column: 29, scope: !4439)
!4439 = distinct !DILexicalBlock(scope: !4436, file: !514, line: 77, column: 24)
!4440 = !DILocation(line: 78, column: 37, scope: !4439)
!4441 = !DILocation(line: 79, column: 22, scope: !4439)
!4442 = !DILocation(line: 79, column: 35, scope: !4439)
!4443 = !DILocation(line: 79, column: 28, scope: !4439)
!4444 = !DILocation(line: 79, column: 40, scope: !4439)
!4445 = !DILocation(line: 79, column: 4, scope: !4439)
!4446 = !DILocation(line: 78, column: 20, scope: !4439)
!4447 = !DILocation(line: 80, column: 3, scope: !4439)
!4448 = !DILocation(line: 84, column: 35, scope: !4425)
!4449 = !DILocation(line: 84, column: 28, scope: !4425)
!4450 = !DILocation(line: 84, column: 40, scope: !4425)
!4451 = !DILocation(line: 84, column: 2, scope: !4425)
!4452 = !DILocation(line: 84, column: 19, scope: !4425)
!4453 = !DILocation(line: 85, column: 1, scope: !4425)
!4454 = distinct !DISubprogram(name: "usart_set_databits", scope: !514, file: !514, line: 99, type: !4426, scopeLine: 100, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !513, retainedNodes: !4455)
!4455 = !{!4456, !4457}
!4456 = !DILocalVariable(name: "usart", arg: 1, scope: !4454, file: !514, line: 99, type: !47)
!4457 = !DILocalVariable(name: "bits", arg: 2, scope: !4454, file: !514, line: 99, type: !47)
!4458 = !DILocation(line: 0, scope: !4454)
!4459 = !DILocation(line: 101, column: 11, scope: !4460)
!4460 = distinct !DILexicalBlock(scope: !4454, file: !514, line: 101, column: 6)
!4461 = !DILocation(line: 0, scope: !4460)
!4462 = !DILocation(line: 101, column: 6, scope: !4454)
!4463 = !DILocation(line: 106, column: 1, scope: !4454)
!4464 = distinct !DISubprogram(name: "usart_set_stopbits", scope: !514, file: !514, line: 118, type: !4426, scopeLine: 119, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !513, retainedNodes: !4465)
!4465 = !{!4466, !4467, !4468}
!4466 = !DILocalVariable(name: "usart", arg: 1, scope: !4464, file: !514, line: 118, type: !47)
!4467 = !DILocalVariable(name: "stopbits", arg: 2, scope: !4464, file: !514, line: 118, type: !47)
!4468 = !DILocalVariable(name: "reg32", scope: !4464, file: !514, line: 120, type: !47)
!4469 = !DILocation(line: 0, scope: !4464)
!4470 = !DILocation(line: 122, column: 10, scope: !4464)
!4471 = !DILocation(line: 123, column: 17, scope: !4464)
!4472 = !DILocation(line: 123, column: 45, scope: !4464)
!4473 = !DILocation(line: 124, column: 19, scope: !4464)
!4474 = !DILocation(line: 125, column: 1, scope: !4464)
!4475 = distinct !DISubprogram(name: "usart_set_parity", scope: !514, file: !514, line: 137, type: !4426, scopeLine: 138, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !513, retainedNodes: !4476)
!4476 = !{!4477, !4478, !4479}
!4477 = !DILocalVariable(name: "usart", arg: 1, scope: !4475, file: !514, line: 137, type: !47)
!4478 = !DILocalVariable(name: "parity", arg: 2, scope: !4475, file: !514, line: 137, type: !47)
!4479 = !DILocalVariable(name: "reg32", scope: !4475, file: !514, line: 139, type: !47)
!4480 = !DILocation(line: 0, scope: !4475)
!4481 = !DILocation(line: 141, column: 10, scope: !4475)
!4482 = !DILocation(line: 142, column: 17, scope: !4475)
!4483 = !DILocation(line: 142, column: 39, scope: !4475)
!4484 = !DILocation(line: 143, column: 19, scope: !4475)
!4485 = !DILocation(line: 144, column: 1, scope: !4475)
!4486 = distinct !DISubprogram(name: "usart_set_mode", scope: !514, file: !514, line: 156, type: !4426, scopeLine: 157, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !513, retainedNodes: !4487)
!4487 = !{!4488, !4489, !4490}
!4488 = !DILocalVariable(name: "usart", arg: 1, scope: !4486, file: !514, line: 156, type: !47)
!4489 = !DILocalVariable(name: "mode", arg: 2, scope: !4486, file: !514, line: 156, type: !47)
!4490 = !DILocalVariable(name: "reg32", scope: !4486, file: !514, line: 158, type: !47)
!4491 = !DILocation(line: 0, scope: !4486)
!4492 = !DILocation(line: 160, column: 10, scope: !4486)
!4493 = !DILocation(line: 161, column: 17, scope: !4486)
!4494 = !DILocation(line: 161, column: 37, scope: !4486)
!4495 = !DILocation(line: 162, column: 19, scope: !4486)
!4496 = !DILocation(line: 163, column: 1, scope: !4486)
!4497 = distinct !DISubprogram(name: "usart_set_flow_control", scope: !514, file: !514, line: 175, type: !4426, scopeLine: 176, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !513, retainedNodes: !4498)
!4498 = !{!4499, !4500, !4501}
!4499 = !DILocalVariable(name: "usart", arg: 1, scope: !4497, file: !514, line: 175, type: !47)
!4500 = !DILocalVariable(name: "flowcontrol", arg: 2, scope: !4497, file: !514, line: 175, type: !47)
!4501 = !DILocalVariable(name: "reg32", scope: !4497, file: !514, line: 177, type: !47)
!4502 = !DILocation(line: 0, scope: !4497)
!4503 = !DILocation(line: 179, column: 10, scope: !4497)
!4504 = !DILocation(line: 180, column: 17, scope: !4497)
!4505 = !DILocation(line: 180, column: 44, scope: !4497)
!4506 = !DILocation(line: 181, column: 19, scope: !4497)
!4507 = !DILocation(line: 182, column: 1, scope: !4497)
!4508 = distinct !DISubprogram(name: "usart_enable", scope: !514, file: !514, line: 191, type: !1054, scopeLine: 192, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !513, retainedNodes: !4509)
!4509 = !{!4510}
!4510 = !DILocalVariable(name: "usart", arg: 1, scope: !4508, file: !514, line: 191, type: !47)
!4511 = !DILocation(line: 0, scope: !4508)
!4512 = !DILocation(line: 193, column: 2, scope: !4508)
!4513 = !DILocation(line: 193, column: 19, scope: !4508)
!4514 = !DILocation(line: 194, column: 1, scope: !4508)
!4515 = distinct !DISubprogram(name: "usart_disable", scope: !514, file: !514, line: 205, type: !1054, scopeLine: 206, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !513, retainedNodes: !4516)
!4516 = !{!4517}
!4517 = !DILocalVariable(name: "usart", arg: 1, scope: !4515, file: !514, line: 205, type: !47)
!4518 = !DILocation(line: 0, scope: !4515)
!4519 = !DILocation(line: 207, column: 2, scope: !4515)
!4520 = !DILocation(line: 207, column: 19, scope: !4515)
!4521 = !DILocation(line: 208, column: 1, scope: !4515)
!4522 = distinct !DISubprogram(name: "usart_send_blocking", scope: !514, file: !514, line: 221, type: !4523, scopeLine: 222, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !513, retainedNodes: !4525)
!4523 = !DISubroutineType(types: !4524)
!4524 = !{null, !47, !2172}
!4525 = !{!4526, !4527}
!4526 = !DILocalVariable(name: "usart", arg: 1, scope: !4522, file: !514, line: 221, type: !47)
!4527 = !DILocalVariable(name: "data", arg: 2, scope: !4522, file: !514, line: 221, type: !2172)
!4528 = !DILocation(line: 0, scope: !4522)
!4529 = !DILocation(line: 223, column: 2, scope: !4522)
!4530 = !DILocation(line: 224, column: 2, scope: !4522)
!4531 = !DILocation(line: 225, column: 1, scope: !4522)
!4532 = distinct !DISubprogram(name: "usart_recv_blocking", scope: !514, file: !514, line: 237, type: !4533, scopeLine: 238, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !513, retainedNodes: !4535)
!4533 = !DISubroutineType(types: !4534)
!4534 = !{!2172, !47}
!4535 = !{!4536}
!4536 = !DILocalVariable(name: "usart", arg: 1, scope: !4532, file: !514, line: 237, type: !47)
!4537 = !DILocation(line: 0, scope: !4532)
!4538 = !DILocation(line: 239, column: 2, scope: !4532)
!4539 = !DILocation(line: 241, column: 9, scope: !4532)
!4540 = !DILocation(line: 241, column: 2, scope: !4532)
!4541 = distinct !DISubprogram(name: "usart_enable_rx_dma", scope: !514, file: !514, line: 257, type: !1054, scopeLine: 258, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !513, retainedNodes: !4542)
!4542 = !{!4543}
!4543 = !DILocalVariable(name: "usart", arg: 1, scope: !4541, file: !514, line: 257, type: !47)
!4544 = !DILocation(line: 0, scope: !4541)
!4545 = !DILocation(line: 259, column: 2, scope: !4541)
!4546 = !DILocation(line: 259, column: 19, scope: !4541)
!4547 = !DILocation(line: 260, column: 1, scope: !4541)
!4548 = distinct !DISubprogram(name: "usart_disable_rx_dma", scope: !514, file: !514, line: 269, type: !1054, scopeLine: 270, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !513, retainedNodes: !4549)
!4549 = !{!4550}
!4550 = !DILocalVariable(name: "usart", arg: 1, scope: !4548, file: !514, line: 269, type: !47)
!4551 = !DILocation(line: 0, scope: !4548)
!4552 = !DILocation(line: 271, column: 2, scope: !4548)
!4553 = !DILocation(line: 271, column: 19, scope: !4548)
!4554 = !DILocation(line: 272, column: 1, scope: !4548)
!4555 = distinct !DISubprogram(name: "usart_enable_tx_dma", scope: !514, file: !514, line: 287, type: !1054, scopeLine: 288, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !513, retainedNodes: !4556)
!4556 = !{!4557}
!4557 = !DILocalVariable(name: "usart", arg: 1, scope: !4555, file: !514, line: 287, type: !47)
!4558 = !DILocation(line: 0, scope: !4555)
!4559 = !DILocation(line: 289, column: 2, scope: !4555)
!4560 = !DILocation(line: 289, column: 19, scope: !4555)
!4561 = !DILocation(line: 290, column: 1, scope: !4555)
!4562 = distinct !DISubprogram(name: "usart_disable_tx_dma", scope: !514, file: !514, line: 299, type: !1054, scopeLine: 300, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !513, retainedNodes: !4563)
!4563 = !{!4564}
!4564 = !DILocalVariable(name: "usart", arg: 1, scope: !4562, file: !514, line: 299, type: !47)
!4565 = !DILocation(line: 0, scope: !4562)
!4566 = !DILocation(line: 301, column: 2, scope: !4562)
!4567 = !DILocation(line: 301, column: 19, scope: !4562)
!4568 = !DILocation(line: 302, column: 1, scope: !4562)
!4569 = distinct !DISubprogram(name: "usart_enable_rx_interrupt", scope: !514, file: !514, line: 311, type: !1054, scopeLine: 312, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !513, retainedNodes: !4570)
!4570 = !{!4571}
!4571 = !DILocalVariable(name: "usart", arg: 1, scope: !4569, file: !514, line: 311, type: !47)
!4572 = !DILocation(line: 0, scope: !4569)
!4573 = !DILocation(line: 313, column: 2, scope: !4569)
!4574 = !DILocation(line: 313, column: 19, scope: !4569)
!4575 = !DILocation(line: 314, column: 1, scope: !4569)
!4576 = distinct !DISubprogram(name: "usart_disable_rx_interrupt", scope: !514, file: !514, line: 324, type: !1054, scopeLine: 325, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !513, retainedNodes: !4577)
!4577 = !{!4578}
!4578 = !DILocalVariable(name: "usart", arg: 1, scope: !4576, file: !514, line: 324, type: !47)
!4579 = !DILocation(line: 0, scope: !4576)
!4580 = !DILocation(line: 326, column: 2, scope: !4576)
!4581 = !DILocation(line: 326, column: 19, scope: !4576)
!4582 = !DILocation(line: 327, column: 1, scope: !4576)
!4583 = distinct !DISubprogram(name: "usart_enable_tx_interrupt", scope: !514, file: !514, line: 336, type: !1054, scopeLine: 337, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !513, retainedNodes: !4584)
!4584 = !{!4585}
!4585 = !DILocalVariable(name: "usart", arg: 1, scope: !4583, file: !514, line: 336, type: !47)
!4586 = !DILocation(line: 0, scope: !4583)
!4587 = !DILocation(line: 338, column: 2, scope: !4583)
!4588 = !DILocation(line: 338, column: 19, scope: !4583)
!4589 = !DILocation(line: 339, column: 1, scope: !4583)
!4590 = distinct !DISubprogram(name: "usart_disable_tx_interrupt", scope: !514, file: !514, line: 348, type: !1054, scopeLine: 349, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !513, retainedNodes: !4591)
!4591 = !{!4592}
!4592 = !DILocalVariable(name: "usart", arg: 1, scope: !4590, file: !514, line: 348, type: !47)
!4593 = !DILocation(line: 0, scope: !4590)
!4594 = !DILocation(line: 350, column: 2, scope: !4590)
!4595 = !DILocation(line: 350, column: 19, scope: !4590)
!4596 = !DILocation(line: 351, column: 1, scope: !4590)
!4597 = distinct !DISubprogram(name: "usart_enable_error_interrupt", scope: !514, file: !514, line: 360, type: !1054, scopeLine: 361, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !513, retainedNodes: !4598)
!4598 = !{!4599}
!4599 = !DILocalVariable(name: "usart", arg: 1, scope: !4597, file: !514, line: 360, type: !47)
!4600 = !DILocation(line: 0, scope: !4597)
!4601 = !DILocation(line: 362, column: 2, scope: !4597)
!4602 = !DILocation(line: 362, column: 19, scope: !4597)
!4603 = !DILocation(line: 363, column: 1, scope: !4597)
!4604 = distinct !DISubprogram(name: "usart_disable_error_interrupt", scope: !514, file: !514, line: 372, type: !1054, scopeLine: 373, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !513, retainedNodes: !4605)
!4605 = !{!4606}
!4606 = !DILocalVariable(name: "usart", arg: 1, scope: !4604, file: !514, line: 372, type: !47)
!4607 = !DILocation(line: 0, scope: !4604)
!4608 = !DILocation(line: 374, column: 2, scope: !4604)
!4609 = !DILocation(line: 374, column: 19, scope: !4604)
!4610 = !DILocation(line: 375, column: 1, scope: !4604)
!4611 = distinct !DISubprogram(name: "usart_enable_data_inversion", scope: !516, file: !516, line: 41, type: !1054, scopeLine: 42, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !515, retainedNodes: !4612)
!4612 = !{!4613}
!4613 = !DILocalVariable(name: "usart", arg: 1, scope: !4611, file: !516, line: 41, type: !47)
!4614 = !DILocation(line: 0, scope: !4611)
!4615 = !DILocation(line: 43, column: 2, scope: !4611)
!4616 = !DILocation(line: 43, column: 19, scope: !4611)
!4617 = !DILocation(line: 44, column: 1, scope: !4611)
!4618 = distinct !DISubprogram(name: "usart_disable_data_inversion", scope: !516, file: !516, line: 56, type: !1054, scopeLine: 57, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !515, retainedNodes: !4619)
!4619 = !{!4620}
!4620 = !DILocalVariable(name: "usart", arg: 1, scope: !4618, file: !516, line: 56, type: !47)
!4621 = !DILocation(line: 0, scope: !4618)
!4622 = !DILocation(line: 58, column: 2, scope: !4618)
!4623 = !DILocation(line: 58, column: 19, scope: !4618)
!4624 = !DILocation(line: 59, column: 1, scope: !4618)
!4625 = distinct !DISubprogram(name: "usart_enable_tx_inversion", scope: !516, file: !516, line: 70, type: !1054, scopeLine: 71, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !515, retainedNodes: !4626)
!4626 = !{!4627}
!4627 = !DILocalVariable(name: "usart", arg: 1, scope: !4625, file: !516, line: 70, type: !47)
!4628 = !DILocation(line: 0, scope: !4625)
!4629 = !DILocation(line: 72, column: 2, scope: !4625)
!4630 = !DILocation(line: 72, column: 19, scope: !4625)
!4631 = !DILocation(line: 73, column: 1, scope: !4625)
!4632 = distinct !DISubprogram(name: "usart_disable_tx_inversion", scope: !516, file: !516, line: 84, type: !1054, scopeLine: 85, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !515, retainedNodes: !4633)
!4633 = !{!4634}
!4634 = !DILocalVariable(name: "usart", arg: 1, scope: !4632, file: !516, line: 84, type: !47)
!4635 = !DILocation(line: 0, scope: !4632)
!4636 = !DILocation(line: 86, column: 2, scope: !4632)
!4637 = !DILocation(line: 86, column: 19, scope: !4632)
!4638 = !DILocation(line: 87, column: 1, scope: !4632)
!4639 = distinct !DISubprogram(name: "usart_enable_rx_inversion", scope: !516, file: !516, line: 98, type: !1054, scopeLine: 99, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !515, retainedNodes: !4640)
!4640 = !{!4641}
!4641 = !DILocalVariable(name: "usart", arg: 1, scope: !4639, file: !516, line: 98, type: !47)
!4642 = !DILocation(line: 0, scope: !4639)
!4643 = !DILocation(line: 100, column: 2, scope: !4639)
!4644 = !DILocation(line: 100, column: 19, scope: !4639)
!4645 = !DILocation(line: 101, column: 1, scope: !4639)
!4646 = distinct !DISubprogram(name: "usart_disable_rx_inversion", scope: !516, file: !516, line: 112, type: !1054, scopeLine: 113, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !515, retainedNodes: !4647)
!4647 = !{!4648}
!4648 = !DILocalVariable(name: "usart", arg: 1, scope: !4646, file: !516, line: 112, type: !47)
!4649 = !DILocation(line: 0, scope: !4646)
!4650 = !DILocation(line: 115, column: 2, scope: !4646)
!4651 = !DILocation(line: 115, column: 19, scope: !4646)
!4652 = !DILocation(line: 116, column: 1, scope: !4646)
!4653 = distinct !DISubprogram(name: "usart_enable_halfduplex", scope: !516, file: !516, line: 135, type: !1054, scopeLine: 136, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !515, retainedNodes: !4654)
!4654 = !{!4655}
!4655 = !DILocalVariable(name: "usart", arg: 1, scope: !4653, file: !516, line: 135, type: !47)
!4656 = !DILocation(line: 0, scope: !4653)
!4657 = !DILocation(line: 137, column: 2, scope: !4653)
!4658 = !DILocation(line: 137, column: 19, scope: !4653)
!4659 = !DILocation(line: 138, column: 1, scope: !4653)
!4660 = distinct !DISubprogram(name: "usart_disable_halfduplex", scope: !516, file: !516, line: 147, type: !1054, scopeLine: 148, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !515, retainedNodes: !4661)
!4661 = !{!4662}
!4662 = !DILocalVariable(name: "usart", arg: 1, scope: !4660, file: !516, line: 147, type: !47)
!4663 = !DILocation(line: 0, scope: !4660)
!4664 = !DILocation(line: 149, column: 2, scope: !4660)
!4665 = !DILocation(line: 149, column: 19, scope: !4660)
!4666 = !DILocation(line: 150, column: 1, scope: !4660)
!4667 = distinct !DISubprogram(name: "usart_set_rx_timeout_value", scope: !516, file: !516, line: 166, type: !4426, scopeLine: 167, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !515, retainedNodes: !4668)
!4668 = !{!4669, !4670, !4671}
!4669 = !DILocalVariable(name: "usart", arg: 1, scope: !4667, file: !516, line: 166, type: !47)
!4670 = !DILocalVariable(name: "value", arg: 2, scope: !4667, file: !516, line: 166, type: !47)
!4671 = !DILocalVariable(name: "reg", scope: !4667, file: !516, line: 168, type: !47)
!4672 = !DILocation(line: 0, scope: !4667)
!4673 = !DILocation(line: 169, column: 8, scope: !4667)
!4674 = !DILocation(line: 169, column: 26, scope: !4667)
!4675 = !DILocation(line: 170, column: 36, scope: !4667)
!4676 = !DILocation(line: 170, column: 6, scope: !4667)
!4677 = !DILocation(line: 171, column: 20, scope: !4667)
!4678 = !DILocation(line: 172, column: 1, scope: !4667)
!4679 = distinct !DISubprogram(name: "usart_enable_rx_timeout", scope: !516, file: !516, line: 182, type: !1054, scopeLine: 183, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !515, retainedNodes: !4680)
!4680 = !{!4681}
!4681 = !DILocalVariable(name: "usart", arg: 1, scope: !4679, file: !516, line: 182, type: !47)
!4682 = !DILocation(line: 0, scope: !4679)
!4683 = !DILocation(line: 184, column: 2, scope: !4679)
!4684 = !DILocation(line: 184, column: 19, scope: !4679)
!4685 = !DILocation(line: 185, column: 1, scope: !4679)
!4686 = distinct !DISubprogram(name: "usart_disable_rx_timeout", scope: !516, file: !516, line: 195, type: !1054, scopeLine: 196, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !515, retainedNodes: !4687)
!4687 = !{!4688}
!4688 = !DILocalVariable(name: "usart", arg: 1, scope: !4686, file: !516, line: 195, type: !47)
!4689 = !DILocation(line: 0, scope: !4686)
!4690 = !DILocation(line: 197, column: 2, scope: !4686)
!4691 = !DILocation(line: 197, column: 19, scope: !4686)
!4692 = !DILocation(line: 198, column: 1, scope: !4686)
!4693 = distinct !DISubprogram(name: "usart_enable_rx_timeout_interrupt", scope: !516, file: !516, line: 211, type: !1054, scopeLine: 212, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !515, retainedNodes: !4694)
!4694 = !{!4695}
!4695 = !DILocalVariable(name: "usart", arg: 1, scope: !4693, file: !516, line: 211, type: !47)
!4696 = !DILocation(line: 0, scope: !4693)
!4697 = !DILocation(line: 213, column: 2, scope: !4693)
!4698 = !DILocation(line: 213, column: 19, scope: !4693)
!4699 = !DILocation(line: 214, column: 1, scope: !4693)
!4700 = distinct !DISubprogram(name: "usart_disable_rx_timeout_interrupt", scope: !516, file: !516, line: 224, type: !1054, scopeLine: 225, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !515, retainedNodes: !4701)
!4701 = !{!4702}
!4702 = !DILocalVariable(name: "usart", arg: 1, scope: !4700, file: !516, line: 224, type: !47)
!4703 = !DILocation(line: 0, scope: !4700)
!4704 = !DILocation(line: 226, column: 2, scope: !4700)
!4705 = !DILocation(line: 226, column: 19, scope: !4700)
!4706 = !DILocation(line: 227, column: 1, scope: !4700)
!4707 = distinct !DISubprogram(name: "usart_send", scope: !516, file: !516, line: 237, type: !4523, scopeLine: 238, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !515, retainedNodes: !4708)
!4708 = !{!4709, !4710}
!4709 = !DILocalVariable(name: "usart", arg: 1, scope: !4707, file: !516, line: 237, type: !47)
!4710 = !DILocalVariable(name: "data", arg: 2, scope: !4707, file: !516, line: 237, type: !2172)
!4711 = !DILocation(line: 0, scope: !4707)
!4712 = !DILocation(line: 240, column: 27, scope: !4707)
!4713 = !DILocation(line: 240, column: 2, scope: !4707)
!4714 = !DILocation(line: 240, column: 19, scope: !4707)
!4715 = !DILocation(line: 241, column: 1, scope: !4707)
!4716 = distinct !DISubprogram(name: "usart_recv", scope: !516, file: !516, line: 254, type: !4533, scopeLine: 255, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !515, retainedNodes: !4717)
!4717 = !{!4718}
!4718 = !DILocalVariable(name: "usart", arg: 1, scope: !4716, file: !516, line: 254, type: !47)
!4719 = !DILocation(line: 0, scope: !4716)
!4720 = !DILocation(line: 257, column: 9, scope: !4716)
!4721 = !DILocation(line: 257, column: 2, scope: !4716)
!4722 = distinct !DISubprogram(name: "usart_wait_send_ready", scope: !516, file: !516, line: 270, type: !1054, scopeLine: 271, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !515, retainedNodes: !4723)
!4723 = !{!4724}
!4724 = !DILocalVariable(name: "usart", arg: 1, scope: !4722, file: !516, line: 270, type: !47)
!4725 = !DILocation(line: 0, scope: !4722)
!4726 = !DILocation(line: 273, column: 2, scope: !4722)
!4727 = !DILocation(line: 273, column: 10, scope: !4722)
!4728 = !DILocation(line: 273, column: 27, scope: !4722)
!4729 = !DILocation(line: 273, column: 44, scope: !4722)
!4730 = distinct !{!4730, !4726, !4731}
!4731 = !DILocation(line: 273, column: 49, scope: !4722)
!4732 = !DILocation(line: 274, column: 1, scope: !4722)
!4733 = distinct !DISubprogram(name: "usart_wait_recv_ready", scope: !516, file: !516, line: 285, type: !1054, scopeLine: 286, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !515, retainedNodes: !4734)
!4734 = !{!4735}
!4735 = !DILocalVariable(name: "usart", arg: 1, scope: !4733, file: !516, line: 285, type: !47)
!4736 = !DILocation(line: 0, scope: !4733)
!4737 = !DILocation(line: 288, column: 2, scope: !4733)
!4738 = !DILocation(line: 288, column: 10, scope: !4733)
!4739 = !DILocation(line: 288, column: 27, scope: !4733)
!4740 = !DILocation(line: 288, column: 45, scope: !4733)
!4741 = distinct !{!4741, !4737, !4742}
!4742 = !DILocation(line: 288, column: 50, scope: !4733)
!4743 = !DILocation(line: 289, column: 1, scope: !4733)
!4744 = distinct !DISubprogram(name: "usart_get_flag", scope: !516, file: !516, line: 300, type: !4745, scopeLine: 301, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !515, retainedNodes: !4747)
!4745 = !DISubroutineType(types: !4746)
!4746 = !{!3929, !47, !47}
!4747 = !{!4748, !4749}
!4748 = !DILocalVariable(name: "usart", arg: 1, scope: !4744, file: !516, line: 300, type: !47)
!4749 = !DILocalVariable(name: "flag", arg: 2, scope: !4744, file: !516, line: 300, type: !47)
!4750 = !DILocation(line: 0, scope: !4744)
!4751 = !DILocation(line: 302, column: 11, scope: !4744)
!4752 = !DILocation(line: 302, column: 28, scope: !4744)
!4753 = !DILocation(line: 302, column: 36, scope: !4744)
!4754 = !DILocation(line: 302, column: 2, scope: !4744)
!4755 = distinct !DISubprogram(name: "reset_handler", scope: !195, file: !195, line: 62, type: !206, scopeLine: 63, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !194, retainedNodes: !4756)
!4756 = !{!4757, !4760, !4761}
!4757 = !DILocalVariable(name: "src", scope: !4755, file: !195, line: 64, type: !4758)
!4758 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4759, size: 32)
!4759 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !14)
!4760 = !DILocalVariable(name: "dest", scope: !4755, file: !195, line: 64, type: !4758)
!4761 = !DILocalVariable(name: "fp", scope: !4755, file: !195, line: 65, type: !4762)
!4762 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4763, size: 32)
!4763 = !DIDerivedType(tag: DW_TAG_typedef, name: "funcp_t", file: !195, line: 30, baseType: !205)
!4764 = !DILocation(line: 0, scope: !4755)
!4765 = !DILocation(line: 67, column: 2, scope: !4766)
!4766 = distinct !DILexicalBlock(scope: !4755, file: !195, line: 67, column: 2)
!4767 = !DILocation(line: 0, scope: !4766)
!4768 = !DILocation(line: 73, column: 14, scope: !4755)
!4769 = !DILocation(line: 73, column: 2, scope: !4755)
!4770 = !DILocation(line: 70, column: 11, scope: !4771)
!4771 = distinct !DILexicalBlock(scope: !4772, file: !195, line: 69, column: 18)
!4772 = distinct !DILexicalBlock(scope: !4766, file: !195, line: 67, column: 2)
!4773 = !DILocation(line: 70, column: 9, scope: !4771)
!4774 = !DILocation(line: 69, column: 6, scope: !4772)
!4775 = !DILocation(line: 69, column: 14, scope: !4772)
!4776 = !DILocation(line: 68, column: 8, scope: !4772)
!4777 = distinct !{!4777, !4765, !4778}
!4778 = !DILocation(line: 71, column: 2, scope: !4766)
!4779 = !DILocation(line: 74, column: 8, scope: !4780)
!4780 = distinct !DILexicalBlock(scope: !4755, file: !195, line: 73, column: 24)
!4781 = !DILocation(line: 74, column: 11, scope: !4780)
!4782 = distinct !{!4782, !4769, !4783}
!4783 = !DILocation(line: 75, column: 2, scope: !4755)
!4784 = !DILocation(line: 79, column: 10, scope: !4755)
!4785 = !DILocation(line: 82, column: 2, scope: !4755)
!4786 = !DILocation(line: 85, column: 2, scope: !4787)
!4787 = distinct !DILexicalBlock(scope: !4755, file: !195, line: 85, column: 2)
!4788 = !DILocation(line: 88, column: 2, scope: !4789)
!4789 = distinct !DILexicalBlock(scope: !4755, file: !195, line: 88, column: 2)
!4790 = !DILocation(line: 86, column: 4, scope: !4791)
!4791 = distinct !DILexicalBlock(scope: !4792, file: !195, line: 85, column: 69)
!4792 = distinct !DILexicalBlock(scope: !4787, file: !195, line: 85, column: 2)
!4793 = !DILocation(line: 86, column: 3, scope: !4791)
!4794 = !DILocation(line: 85, column: 65, scope: !4792)
!4795 = !DILocation(line: 85, column: 39, scope: !4792)
!4796 = distinct !{!4796, !4786, !4797}
!4797 = !DILocation(line: 87, column: 2, scope: !4787)
!4798 = !DILocation(line: 89, column: 4, scope: !4799)
!4799 = distinct !DILexicalBlock(scope: !4800, file: !195, line: 88, column: 63)
!4800 = distinct !DILexicalBlock(scope: !4789, file: !195, line: 88, column: 2)
!4801 = !DILocation(line: 89, column: 3, scope: !4799)
!4802 = !DILocation(line: 88, column: 59, scope: !4800)
!4803 = !DILocation(line: 88, column: 36, scope: !4800)
!4804 = distinct !{!4804, !4788, !4805}
!4805 = !DILocation(line: 90, column: 2, scope: !4789)
!4806 = !DILocation(line: 93, column: 8, scope: !4755)
!4807 = !DILocation(line: 96, column: 2, scope: !4808)
!4808 = distinct !DILexicalBlock(scope: !4755, file: !195, line: 96, column: 2)
!4809 = !DILocation(line: 97, column: 4, scope: !4810)
!4810 = distinct !DILexicalBlock(scope: !4811, file: !195, line: 96, column: 63)
!4811 = distinct !DILexicalBlock(scope: !4808, file: !195, line: 96, column: 2)
!4812 = !DILocation(line: 97, column: 3, scope: !4810)
!4813 = !DILocation(line: 96, column: 59, scope: !4811)
!4814 = !DILocation(line: 96, column: 36, scope: !4811)
!4815 = distinct !{!4815, !4807, !4816}
!4816 = !DILocation(line: 98, column: 2, scope: !4808)
!4817 = !DILocation(line: 100, column: 1, scope: !4755)
!4818 = distinct !DISubprogram(name: "blocking_handler", scope: !195, file: !195, line: 102, type: !206, scopeLine: 103, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !194, retainedNodes: !587)
!4819 = !DILocation(line: 104, column: 2, scope: !4818)
!4820 = distinct !{!4820, !4819, !4821}
!4821 = !DILocation(line: 104, column: 11, scope: !4818)
!4822 = distinct !DISubprogram(name: "null_handler", scope: !195, file: !195, line: 107, type: !206, scopeLine: 108, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !194, retainedNodes: !587)
!4823 = !DILocation(line: 110, column: 1, scope: !4822)
!4824 = distinct !DISubprogram(name: "pre_main", scope: !4825, file: !4825, line: 23, type: !206, scopeLine: 24, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !194, retainedNodes: !587)
!4825 = !DIFile(filename: "../../cm3/../dispatch/../stm32/l4/vector_chipset.c", directory: "/home/mjshen/RTOSExploration/Amazfitbip-FreeRTOS/libopencm3/lib/stm32/l4", checksumkind: CSK_MD5, checksum: "9b306142c624302e21681f077de7249a")
!4826 = !DILocation(line: 26, column: 12, scope: !4824)
!4827 = !DILocation(line: 27, column: 1, scope: !4824)
