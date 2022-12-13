; ModuleID = './main.elf.bc'
source_filename = "llvm-link"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "thumbv7em-none-unknown-eabihf"

%struct._reent = type { i32, %struct.__sFILE*, %struct.__sFILE*, %struct.__sFILE*, i32, [25 x i8], i32, %struct.__locale_t*, i32, void (%struct._reent*)*, %struct._Bigint*, i32, %struct._Bigint*, %struct._Bigint**, i32, i8*, %union.anon.0, %struct._atexit*, %struct._atexit, void (i32)**, %struct._glue, [3 x %struct.__sFILE] }
%struct.__sFILE = type { i8*, i32, i32, i16, i16, %struct.__sbuf, i32, i8*, i32 (%struct._reent*, i8*, i8*, i32)*, i32 (%struct._reent*, i8*, i8*, i32)*, i32 (%struct._reent*, i8*, i32, i32)*, i32 (%struct._reent*, i8*)*, %struct.__sbuf, i8*, i32, [3 x i8], [1 x i8], %struct.__sbuf, i32, i32, %struct._reent*, %struct.__lock*, %struct._mbstate_t, i32 }
%struct.__sbuf = type { i8*, i32 }
%struct.__lock = type opaque
%struct._mbstate_t = type { i32, %union.anon }
%union.anon = type { i32 }
%struct.__locale_t = type opaque
%struct._Bigint = type { %struct._Bigint*, i32, i32, i32, i32, [1 x i32] }
%union.anon.0 = type { %struct.anon, [32 x i8] }
%struct.anon = type { i32, i8*, [26 x i8], %struct.__tm, i32, i64, %struct._rand48, %struct._mbstate_t, %struct._mbstate_t, %struct._mbstate_t, [8 x i8], [24 x i8], i32, %struct._mbstate_t, %struct._mbstate_t, %struct._mbstate_t, %struct._mbstate_t, %struct._mbstate_t, i32 }
%struct.__tm = type { i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct._rand48 = type { [3 x i16], [3 x i16], i16 }
%struct._atexit = type { %struct._atexit*, i32, [32 x void ()*], %struct._on_exit_args }
%struct._on_exit_args = type { [32 x i8*], [32 x i8*], i32, i32 }
%struct._glue = type { %struct._glue*, i32, %struct.__sFILE* }
%struct.GPIO_InitTypeDef = type { i32, i32, i32, i32, i32 }
%struct.tskTaskControlBlock = type { i32*, %struct.xLIST_ITEM, %struct.xLIST_ITEM, i32, i32*, [10 x i8], i32, i32, i32, i32, i32, i8 }
%struct.xLIST_ITEM = type { i32, %struct.xLIST_ITEM*, %struct.xLIST_ITEM*, i8*, %struct.xLIST* }
%struct.xLIST = type { i32, %struct.xLIST_ITEM*, %struct.xMINI_LIST_ITEM }
%struct.xMINI_LIST_ITEM = type { i32, %struct.xLIST_ITEM*, %struct.xLIST_ITEM* }
%struct.QueueDefinition = type { i8*, i8*, %union.anon.9, %struct.xLIST, %struct.xLIST, i32, i32, i32, i8, i8, i32, i8 }
%union.anon.9 = type { %struct.QueuePointers }
%struct.QueuePointers = type { i8*, i8* }
%struct.A_BLOCK_LINK = type { %struct.A_BLOCK_LINK*, i32 }
%struct.QUEUE_REGISTRY_ITEM = type { i8*, %struct.QueueDefinition* }
%struct.GPIO_TypeDef = type { i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%struct.RCC_OscInitTypeDef = type { i32, i32, i32, i32, i32, i32, %struct.RCC_PLLInitTypeDef }
%struct.RCC_PLLInitTypeDef = type { i32, i32, i32, i32, i32, i32 }
%struct.xTASK_STATUS = type { %struct.tskTaskControlBlock*, i8*, i32, i32, i32, i32, i32, i32*, i16 }
%struct.xTIME_OUT = type { i32, i32 }
%struct.tmrTimerQueueMessage = type { i32, %union.anon.5 }
%union.anon.5 = type { %struct.tmrTimerParameters }
%struct.tmrTimerParameters = type { i32, %struct.tmrTimerControl* }
%struct.tmrTimerControl = type { i8*, %struct.xLIST_ITEM, i32, i8*, void (%struct.tmrTimerControl*)*, i32, i8 }
%struct.xHeapStats = type { i32, i32, i32, i32, i32, i32, i32 }
%struct.MPU_Region_InitTypeDef = type { i8, i8, i32, i8, i8, i8, i8, i8, i8, i8, i8 }

@_impure_ptr = external dso_local local_unnamed_addr global %struct._reent*, align 4
@.str = private unnamed_addr constant [26 x i8] c"[INFO] Main program start\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@GPIO_InitStruct = internal global %struct.GPIO_InitTypeDef zeroinitializer, align 4
@.str.2 = private unnamed_addr constant [10 x i8] c"LedBlinky\00", align 1
@pxCurrentTCB = dso_local global %struct.tskTaskControlBlock* null, align 4
@pxReadyTasksLists = internal global [5 x %struct.xLIST] zeroinitializer, align 4
@uxTopReadyPriority = internal global i32 0, align 4
@uxTaskNumber = internal unnamed_addr global i32 0, align 4
@xTasksWaitingTermination = internal global %struct.xLIST zeroinitializer, align 4
@uxDeletedTasksWaitingCleanUp = internal global i32 0, align 4
@uxCurrentNumberOfTasks = internal global i32 0, align 4
@xSchedulerRunning = internal global i32 0, align 4
@uxSchedulerSuspended = internal global i32 0, align 4
@xTickCount = internal global i32 0, align 4
@pxDelayedTaskList = internal global %struct.xLIST* null, align 4
@pxOverflowDelayedTaskList = internal global %struct.xLIST* null, align 4
@xSuspendedTaskList = internal global %struct.xLIST zeroinitializer, align 4
@xPendingReadyList = internal global %struct.xLIST zeroinitializer, align 4
@.str.7 = private unnamed_addr constant [5 x i8] c"IDLE\00", align 1
@xIdleTaskHandle = internal global %struct.tskTaskControlBlock* null, align 4
@xNextTaskUnblockTime = internal global i32 0, align 4
@xYieldPending = internal global i32 0, align 4
@xPendedTicks = internal global i32 0, align 4
@xNumOfOverflows = internal global i32 0, align 4
@xDelayedTaskList1 = internal global %struct.xLIST zeroinitializer, align 4
@xDelayedTaskList2 = internal global %struct.xLIST zeroinitializer, align 4
@xTimerQueue = internal unnamed_addr global %struct.QueueDefinition* null, align 4
@.str.10 = private unnamed_addr constant [8 x i8] c"Tmr Svc\00", align 1
@xTimerTaskHandle = internal global %struct.tskTaskControlBlock* null, align 4
@pxCurrentTimerList = internal unnamed_addr global %struct.xLIST* null, align 4
@pxOverflowTimerList = internal unnamed_addr global %struct.xLIST* null, align 4
@prvSampleTimeNow.xLastTime = internal unnamed_addr global i32 0, align 4
@xActiveTimerList1 = internal global %struct.xLIST zeroinitializer, align 4
@xActiveTimerList2 = internal global %struct.xLIST zeroinitializer, align 4
@.str.1.11 = private unnamed_addr constant [5 x i8] c"TmrQ\00", align 1
@ucMaxSysCallPriority = internal unnamed_addr global i8 0, align 1
@ulMaxPRIGROUPValue = internal unnamed_addr global i32 0, align 4
@uxCriticalNesting = internal unnamed_addr global i32 -1431655766, align 4
@pxEnd = internal unnamed_addr global %struct.A_BLOCK_LINK* null, align 4
@xBlockAllocatedBit = internal unnamed_addr global i1 false, align 4
@xFreeBytesRemaining = internal unnamed_addr global i32 0, align 4
@xStart = internal global %struct.A_BLOCK_LINK zeroinitializer, align 4
@xMinimumEverFreeBytesRemaining = internal unnamed_addr global i32 0, align 4
@xNumberOfSuccessfulAllocations = internal unnamed_addr global i32 0, align 4
@xNumberOfSuccessfulFrees = internal unnamed_addr global i32 0, align 4
@ucHeap = internal global [76800 x i8] zeroinitializer, align 1
@xQueueRegistry = dso_local local_unnamed_addr global [8 x %struct.QUEUE_REGISTRY_ITEM] zeroinitializer, align 4
@uwTickFreq = dso_local local_unnamed_addr global i32 1, align 4
@uwTick = dso_local global i32 0, align 4
@AHBPrescTable = dso_local local_unnamed_addr constant [16 x i8] c"\00\00\00\00\00\00\00\00\01\02\03\04\06\07\08\09", align 1
@SystemCoreClock = dso_local local_unnamed_addr global i32 16000000, align 4
@uwTickPrio = dso_local local_unnamed_addr global i32 16, align 4
@APBPrescTable = dso_local local_unnamed_addr constant [8 x i8] c"\00\00\00\00\01\02\03\04", align 1

; Function Attrs: noinline noreturn nounwind optsize
define dso_local void @LedBlinky_Task(i8* nocapture readnone %0) #0 {
  br label %2

2:                                                ; preds = %1, %2
  tail call void @HAL_GPIO_TogglePin(%struct.GPIO_TypeDef* noundef nonnull inttoptr (i32 1073879040 to %struct.GPIO_TypeDef*), i16 noundef zeroext 8192) #19
  tail call void @vTaskDelay(i32 noundef 1000) #19
  br label %2
}

; Function Attrs: noinline noreturn nounwind optsize
define dso_local i32 @main() local_unnamed_addr #0 {
  %1 = alloca i32, align 4
  tail call void @initialise_monitor_handles() #19
  %2 = load %struct._reent*, %struct._reent** @_impure_ptr, align 4, !tbaa !7
  %3 = getelementptr inbounds %struct._reent, %struct._reent* %2, i32 0, i32 2
  %4 = load %struct.__sFILE*, %struct.__sFILE** %3, align 8, !tbaa !11
  tail call void @setbuf(%struct.__sFILE* noundef %4, i8* noundef null) #19
  %5 = tail call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i32 0, i32 0)) #19
  %6 = tail call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i32 0, i32 0)) #19
  %7 = tail call i32 @HAL_Init() #19
  tail call void @SystemClock_Config() #20
  %8 = bitcast i32* %1 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %8)
  store volatile i32 0, i32* %1, align 4, !tbaa !18
  %9 = load volatile i32, i32* inttoptr (i32 1073887280 to i32*), align 16, !tbaa !19
  %10 = or i32 %9, 64
  store volatile i32 %10, i32* inttoptr (i32 1073887280 to i32*), align 16, !tbaa !19
  %11 = load volatile i32, i32* inttoptr (i32 1073887280 to i32*), align 16, !tbaa !19
  %12 = and i32 %11, 64
  store volatile i32 %12, i32* %1, align 4, !tbaa !18
  %13 = load volatile i32, i32* %1, align 4, !tbaa !18
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %8)
  store i32 8192, i32* getelementptr inbounds (%struct.GPIO_InitTypeDef, %struct.GPIO_InitTypeDef* @GPIO_InitStruct, i32 0, i32 0), align 4, !tbaa !21
  store i32 1, i32* getelementptr inbounds (%struct.GPIO_InitTypeDef, %struct.GPIO_InitTypeDef* @GPIO_InitStruct, i32 0, i32 1), align 4, !tbaa !23
  store i32 1, i32* getelementptr inbounds (%struct.GPIO_InitTypeDef, %struct.GPIO_InitTypeDef* @GPIO_InitStruct, i32 0, i32 2), align 4, !tbaa !24
  store i32 3, i32* getelementptr inbounds (%struct.GPIO_InitTypeDef, %struct.GPIO_InitTypeDef* @GPIO_InitStruct, i32 0, i32 3), align 4, !tbaa !25
  tail call void @HAL_GPIO_Init(%struct.GPIO_TypeDef* noundef nonnull inttoptr (i32 1073879040 to %struct.GPIO_TypeDef*), %struct.GPIO_InitTypeDef* noundef nonnull @GPIO_InitStruct) #19
  %14 = tail call zeroext i8 @SomethingSimple(i8 noundef zeroext 2, i8 noundef zeroext 7) #19
  %15 = tail call i32 @xTaskCreate(void (i8*)* noundef nonnull @LedBlinky_Task, i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i32 0, i32 0), i16 noundef zeroext 130, i8* noundef null, i32 noundef 3, %struct.tskTaskControlBlock** noundef null) #19
  tail call void @vTaskStartScheduler() #19
  br label %16

16:                                               ; preds = %0, %16
  br label %16
}

; Function Attrs: optsize
declare dso_local void @initialise_monitor_handles() local_unnamed_addr #1

; Function Attrs: optsize
declare dso_local void @setbuf(%struct.__sFILE* noundef, i8* noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare dso_local i32 @printf(i8* noundef, ...) local_unnamed_addr #1

; Function Attrs: noinline nounwind optsize
define dso_local void @SystemClock_Config() local_unnamed_addr #2 {
  %1 = alloca %struct.RCC_OscInitTypeDef, align 4
  %2 = alloca %struct.GPIO_InitTypeDef, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = bitcast %struct.RCC_OscInitTypeDef* %1 to i8*
  call void @llvm.lifetime.start.p0i8(i64 48, i8* nonnull %5) #21
  %6 = getelementptr inbounds %struct.RCC_OscInitTypeDef, %struct.RCC_OscInitTypeDef* %1, i32 0, i32 2
  %7 = bitcast i32* %6 to i8*
  call void @llvm.memset.p0i8.i32(i8* noundef nonnull align 4 dereferenceable(48) %7, i8 0, i32 16, i1 false)
  %8 = bitcast %struct.GPIO_InitTypeDef* %2 to i8*
  call void @llvm.lifetime.start.p0i8(i64 20, i8* nonnull %8) #21
  call void @llvm.memset.p0i8.i32(i8* noundef nonnull align 4 dereferenceable(20) %8, i8 0, i32 20, i1 false)
  %9 = bitcast i32* %3 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %9)
  store volatile i32 0, i32* %3, align 4, !tbaa !18
  %10 = load volatile i32, i32* inttoptr (i32 1073887296 to i32*), align 64, !tbaa !26
  %11 = or i32 %10, 268435456
  store volatile i32 %11, i32* inttoptr (i32 1073887296 to i32*), align 64, !tbaa !26
  %12 = load volatile i32, i32* inttoptr (i32 1073887296 to i32*), align 64, !tbaa !26
  %13 = and i32 %12, 268435456
  store volatile i32 %13, i32* %3, align 4, !tbaa !18
  %14 = load volatile i32, i32* %3, align 4, !tbaa !18
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %9)
  %15 = bitcast i32* %4 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %15)
  store volatile i32 0, i32* %4, align 4, !tbaa !18
  %16 = load volatile i32, i32* inttoptr (i32 1073770496 to i32*), align 4096, !tbaa !27
  %17 = and i32 %16, -49153
  %18 = or i32 %17, 16384
  store volatile i32 %18, i32* inttoptr (i32 1073770496 to i32*), align 4096, !tbaa !27
  %19 = load volatile i32, i32* inttoptr (i32 1073770496 to i32*), align 4096, !tbaa !27
  %20 = and i32 %19, 49152
  store volatile i32 %20, i32* %4, align 4, !tbaa !18
  %21 = load volatile i32, i32* %4, align 4, !tbaa !18
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %15)
  %22 = getelementptr inbounds %struct.RCC_OscInitTypeDef, %struct.RCC_OscInitTypeDef* %1, i32 0, i32 0
  store i32 1, i32* %22, align 4, !tbaa !29
  %23 = getelementptr inbounds %struct.RCC_OscInitTypeDef, %struct.RCC_OscInitTypeDef* %1, i32 0, i32 1
  store i32 65536, i32* %23, align 4, !tbaa !32
  %24 = getelementptr inbounds %struct.RCC_OscInitTypeDef, %struct.RCC_OscInitTypeDef* %1, i32 0, i32 6, i32 0
  store i32 2, i32* %24, align 4, !tbaa !33
  %25 = getelementptr inbounds %struct.RCC_OscInitTypeDef, %struct.RCC_OscInitTypeDef* %1, i32 0, i32 6, i32 1
  store i32 4194304, i32* %25, align 4, !tbaa !34
  %26 = getelementptr inbounds %struct.RCC_OscInitTypeDef, %struct.RCC_OscInitTypeDef* %1, i32 0, i32 6, i32 2
  store i32 8, i32* %26, align 4, !tbaa !35
  %27 = getelementptr inbounds %struct.RCC_OscInitTypeDef, %struct.RCC_OscInitTypeDef* %1, i32 0, i32 6, i32 3
  store i32 128, i32* %27, align 4, !tbaa !36
  %28 = getelementptr inbounds %struct.RCC_OscInitTypeDef, %struct.RCC_OscInitTypeDef* %1, i32 0, i32 6, i32 4
  store i32 2, i32* %28, align 4, !tbaa !37
  %29 = getelementptr inbounds %struct.RCC_OscInitTypeDef, %struct.RCC_OscInitTypeDef* %1, i32 0, i32 6, i32 5
  store i32 4, i32* %29, align 4, !tbaa !38
  %30 = call i32 @HAL_RCC_OscConfig(%struct.RCC_OscInitTypeDef* noundef nonnull %1) #19
  %31 = icmp eq i32 %30, 0
  br i1 %31, label %33, label %32

32:                                               ; preds = %0
  call void @Default_Handler() #19
  br label %33

33:                                               ; preds = %32, %0
  %34 = getelementptr inbounds %struct.GPIO_InitTypeDef, %struct.GPIO_InitTypeDef* %2, i32 0, i32 0
  store i32 15, i32* %34, align 4, !tbaa !21
  %35 = getelementptr inbounds %struct.GPIO_InitTypeDef, %struct.GPIO_InitTypeDef* %2, i32 0, i32 1
  store i32 2, i32* %35, align 4, !tbaa !23
  %36 = getelementptr inbounds %struct.GPIO_InitTypeDef, %struct.GPIO_InitTypeDef* %2, i32 0, i32 2
  store i32 144, i32* %36, align 4, !tbaa !24
  %37 = getelementptr inbounds %struct.GPIO_InitTypeDef, %struct.GPIO_InitTypeDef* %2, i32 0, i32 3
  store i32 4096, i32* %37, align 4, !tbaa !25
  %38 = getelementptr inbounds %struct.GPIO_InitTypeDef, %struct.GPIO_InitTypeDef* %2, i32 0, i32 4
  store i32 0, i32* %38, align 4, !tbaa !39
  %39 = call i32 @HAL_RCC_ClockConfig(%struct.GPIO_InitTypeDef* noundef nonnull %2, i32 noundef 0) #19
  %40 = icmp eq i32 %39, 0
  br i1 %40, label %42, label %41

41:                                               ; preds = %33
  call void @Default_Handler() #19
  br label %42

42:                                               ; preds = %41, %33
  call void @llvm.lifetime.end.p0i8(i64 20, i8* nonnull %8) #21
  call void @llvm.lifetime.end.p0i8(i64 48, i8* nonnull %5) #21
  ret void
}

; Function Attrs: argmemonly nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0i8(i64 immarg, i8* nocapture) #3

; Function Attrs: argmemonly nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0i8(i64 immarg, i8* nocapture) #3

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0i8.i32(i8* nocapture writeonly, i8, i32, i1 immarg) #4

; Function Attrs: optsize
declare dso_local void @Default_Handler() local_unnamed_addr #1

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize readnone willreturn
define dso_local zeroext i8 @add(i8 noundef zeroext %0, i8 noundef zeroext %1) local_unnamed_addr #5 {
  %3 = add i8 %1, %0
  ret i8 %3
}

; Function Attrs: nofree noinline norecurse nounwind optsize
define dso_local void @SystemInit() local_unnamed_addr #6 {
  %1 = load volatile i32, i32* inttoptr (i32 -536810104 to i32*), align 8, !tbaa !40
  %2 = or i32 %1, 15728640
  store volatile i32 %2, i32* inttoptr (i32 -536810104 to i32*), align 8, !tbaa !40
  store volatile i32 134217728, i32* inttoptr (i32 -536810232 to i32*), align 8, !tbaa !42
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nounwind optsize willreturn
define dso_local void @SystemCoreClockUpdate() local_unnamed_addr #7 {
  %1 = load volatile i32, i32* inttoptr (i32 1073887240 to i32*), align 8, !tbaa !43
  %2 = and i32 %1, 12
  switch i32 %2, label %21 [
    i32 8, label %4
    i32 4, label %3
  ]

3:                                                ; preds = %0
  br label %21

4:                                                ; preds = %0
  %5 = load volatile i32, i32* inttoptr (i32 1073887236 to i32*), align 4, !tbaa !44
  %6 = load volatile i32, i32* inttoptr (i32 1073887236 to i32*), align 4, !tbaa !44
  %7 = and i32 %6, 63
  %8 = and i32 %5, 4194304
  %9 = icmp eq i32 %8, 0
  %10 = select i1 %9, i32 16000000, i32 8000000
  %11 = udiv i32 %10, %7
  %12 = load volatile i32, i32* inttoptr (i32 1073887236 to i32*), align 4, !tbaa !44
  %13 = lshr i32 %12, 6
  %14 = and i32 %13, 511
  %15 = mul i32 %14, %11
  %16 = load volatile i32, i32* inttoptr (i32 1073887236 to i32*), align 4, !tbaa !44
  %17 = lshr i32 %16, 15
  %18 = and i32 %17, 6
  %19 = add nuw nsw i32 %18, 2
  %20 = udiv i32 %15, %19
  br label %21

21:                                               ; preds = %0, %4, %3
  %22 = phi i32 [ %20, %4 ], [ 8000000, %3 ], [ 16000000, %0 ]
  store i32 %22, i32* @SystemCoreClock, align 4, !tbaa !18
  %23 = load volatile i32, i32* inttoptr (i32 1073887240 to i32*), align 8, !tbaa !43
  %24 = lshr i32 %23, 4
  %25 = and i32 %24, 15
  %26 = getelementptr inbounds [16 x i8], [16 x i8]* @AHBPrescTable, i32 0, i32 %25
  %27 = load i8, i8* %26, align 1, !tbaa !45
  %28 = zext i8 %27 to i32
  %29 = lshr i32 %22, %28
  store i32 %29, i32* @SystemCoreClock, align 4, !tbaa !18
  ret void
}

; Function Attrs: noinline nounwind optsize
define dso_local i32 @xTaskCreate(void (i8*)* noundef %0, i8* noundef %1, i16 noundef zeroext %2, i8* noundef %3, i32 noundef %4, %struct.tskTaskControlBlock** noundef %5) local_unnamed_addr #2 {
  %7 = zext i16 %2 to i32
  %8 = shl nuw nsw i32 %7, 2
  %9 = tail call i8* @pvPortMalloc(i32 noundef %8) #19
  %10 = icmp eq i8* %9, null
  br i1 %10, label %19, label %11

11:                                               ; preds = %6
  %12 = tail call i8* @pvPortMalloc(i32 noundef 88) #19
  %13 = icmp eq i8* %12, null
  br i1 %13, label %14, label %15

14:                                               ; preds = %11
  tail call void @vPortFree(i8* noundef nonnull %9) #19
  br label %19

15:                                               ; preds = %11
  %16 = bitcast i8* %12 to %struct.tskTaskControlBlock*
  %17 = getelementptr inbounds i8, i8* %12, i32 48
  %18 = bitcast i8* %17 to i8**
  store i8* %9, i8** %18, align 4, !tbaa !46
  tail call fastcc void @prvInitialiseNewTask(void (i8*)* noundef %0, i8* noundef %1, i32 noundef %7, i8* noundef %3, i32 noundef %4, %struct.tskTaskControlBlock** noundef %5, %struct.tskTaskControlBlock* noundef nonnull %16) #20
  tail call fastcc void @prvAddNewTaskToReadyList(%struct.tskTaskControlBlock* noundef nonnull %16) #20
  br label %19

19:                                               ; preds = %6, %14, %15
  %20 = phi i32 [ 1, %15 ], [ -1, %14 ], [ -1, %6 ]
  ret i32 %20
}

; Function Attrs: noinline nounwind optsize
define internal fastcc void @prvInitialiseNewTask(void (i8*)* noundef %0, i8* noundef readonly %1, i32 noundef %2, i8* noundef %3, i32 noundef %4, %struct.tskTaskControlBlock** noundef writeonly %5, %struct.tskTaskControlBlock* noundef %6) unnamed_addr #2 {
  %8 = getelementptr inbounds %struct.tskTaskControlBlock, %struct.tskTaskControlBlock* %6, i32 0, i32 4
  %9 = bitcast i32** %8 to i8**
  %10 = load i8*, i8** %9, align 4, !tbaa !46
  %11 = shl i32 %2, 2
  %12 = tail call i8* @memset(i8* noundef %10, i32 noundef 165, i32 noundef %11) #19
  %13 = load i32*, i32** %8, align 4, !tbaa !46
  %14 = add i32 %2, -1
  %15 = getelementptr inbounds i32, i32* %13, i32 %14
  %16 = ptrtoint i32* %15 to i32
  %17 = and i32 %16, -8
  %18 = inttoptr i32 %17 to i32*
  %19 = icmp eq i8* %1, null
  br i1 %19, label %32, label %20

20:                                               ; preds = %7, %20
  %21 = phi i32 [ %27, %20 ], [ 0, %7 ]
  %22 = getelementptr inbounds i8, i8* %1, i32 %21
  %23 = load i8, i8* %22, align 1, !tbaa !45
  %24 = getelementptr inbounds %struct.tskTaskControlBlock, %struct.tskTaskControlBlock* %6, i32 0, i32 5, i32 %21
  store i8 %23, i8* %24, align 1, !tbaa !45
  %25 = load i8, i8* %22, align 1, !tbaa !45
  %26 = icmp eq i8 %25, 0
  %27 = add nuw nsw i32 %21, 1
  %28 = icmp eq i32 %27, 10
  %29 = select i1 %26, i1 true, i1 %28
  br i1 %29, label %30, label %20, !llvm.loop !49

30:                                               ; preds = %20
  %31 = getelementptr inbounds %struct.tskTaskControlBlock, %struct.tskTaskControlBlock* %6, i32 0, i32 5, i32 9
  store i8 0, i8* %31, align 1, !tbaa !45
  br label %34

32:                                               ; preds = %7
  %33 = getelementptr inbounds %struct.tskTaskControlBlock, %struct.tskTaskControlBlock* %6, i32 0, i32 5, i32 0
  store i8 0, i8* %33, align 4, !tbaa !45
  br label %34

34:                                               ; preds = %32, %30
  %35 = icmp ult i32 %4, 4
  %36 = select i1 %35, i32 %4, i32 4
  %37 = getelementptr inbounds %struct.tskTaskControlBlock, %struct.tskTaskControlBlock* %6, i32 0, i32 3
  store i32 %36, i32* %37, align 4, !tbaa !51
  %38 = getelementptr inbounds %struct.tskTaskControlBlock, %struct.tskTaskControlBlock* %6, i32 0, i32 8
  store i32 %36, i32* %38, align 4, !tbaa !52
  %39 = getelementptr inbounds %struct.tskTaskControlBlock, %struct.tskTaskControlBlock* %6, i32 0, i32 9
  store i32 0, i32* %39, align 4, !tbaa !53
  %40 = getelementptr inbounds %struct.tskTaskControlBlock, %struct.tskTaskControlBlock* %6, i32 0, i32 1
  tail call void @vListInitialiseItem(%struct.xLIST_ITEM* noundef nonnull %40) #19
  %41 = getelementptr inbounds %struct.tskTaskControlBlock, %struct.tskTaskControlBlock* %6, i32 0, i32 2
  tail call void @vListInitialiseItem(%struct.xLIST_ITEM* noundef nonnull %41) #19
  %42 = getelementptr inbounds %struct.tskTaskControlBlock, %struct.tskTaskControlBlock* %6, i32 0, i32 1, i32 3
  %43 = bitcast i8** %42 to %struct.tskTaskControlBlock**
  store %struct.tskTaskControlBlock* %6, %struct.tskTaskControlBlock** %43, align 4, !tbaa !54
  %44 = sub nuw nsw i32 5, %36
  %45 = getelementptr inbounds %struct.xLIST_ITEM, %struct.xLIST_ITEM* %41, i32 0, i32 0
  store i32 %44, i32* %45, align 4, !tbaa !55
  %46 = getelementptr inbounds %struct.tskTaskControlBlock, %struct.tskTaskControlBlock* %6, i32 0, i32 2, i32 3
  %47 = bitcast i8** %46 to %struct.tskTaskControlBlock**
  store %struct.tskTaskControlBlock* %6, %struct.tskTaskControlBlock** %47, align 4, !tbaa !56
  %48 = getelementptr inbounds %struct.tskTaskControlBlock, %struct.tskTaskControlBlock* %6, i32 0, i32 10
  store volatile i32 0, i32* %48, align 4, !tbaa !57
  %49 = getelementptr inbounds %struct.tskTaskControlBlock, %struct.tskTaskControlBlock* %6, i32 0, i32 11
  store volatile i8 0, i8* %49, align 4, !tbaa !58
  %50 = tail call i32* @pxPortInitialiseStack(i32* noundef %18, void (i8*)* noundef %0, i8* noundef %3) #19
  %51 = getelementptr inbounds %struct.tskTaskControlBlock, %struct.tskTaskControlBlock* %6, i32 0, i32 0
  store i32* %50, i32** %51, align 4, !tbaa !59
  %52 = icmp eq %struct.tskTaskControlBlock** %5, null
  br i1 %52, label %54, label %53

53:                                               ; preds = %34
  store %struct.tskTaskControlBlock* %6, %struct.tskTaskControlBlock** %5, align 4, !tbaa !7
  br label %54

54:                                               ; preds = %34, %53
  ret void
}

; Function Attrs: noinline nounwind optsize
define internal fastcc void @prvAddNewTaskToReadyList(%struct.tskTaskControlBlock* noundef %0) unnamed_addr #2 {
  tail call void @vPortEnterCritical() #19
  %2 = load volatile i32, i32* @uxCurrentNumberOfTasks, align 4, !tbaa !60
  %3 = add i32 %2, 1
  store volatile i32 %3, i32* @uxCurrentNumberOfTasks, align 4, !tbaa !60
  %4 = load volatile %struct.tskTaskControlBlock*, %struct.tskTaskControlBlock** @pxCurrentTCB, align 4, !tbaa !7
  %5 = icmp eq %struct.tskTaskControlBlock* %4, null
  br i1 %5, label %6, label %10

6:                                                ; preds = %1
  store volatile %struct.tskTaskControlBlock* %0, %struct.tskTaskControlBlock** @pxCurrentTCB, align 4, !tbaa !7
  %7 = load volatile i32, i32* @uxCurrentNumberOfTasks, align 4, !tbaa !60
  %8 = icmp eq i32 %7, 1
  br i1 %8, label %9, label %21

9:                                                ; preds = %6
  tail call fastcc void @prvInitialiseTaskLists() #20
  br label %21

10:                                               ; preds = %1
  %11 = load volatile i32, i32* @xSchedulerRunning, align 4, !tbaa !60
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %13, label %21

13:                                               ; preds = %10
  %14 = load volatile %struct.tskTaskControlBlock*, %struct.tskTaskControlBlock** @pxCurrentTCB, align 4, !tbaa !7
  %15 = getelementptr inbounds %struct.tskTaskControlBlock, %struct.tskTaskControlBlock* %14, i32 0, i32 3
  %16 = load i32, i32* %15, align 4, !tbaa !51
  %17 = getelementptr inbounds %struct.tskTaskControlBlock, %struct.tskTaskControlBlock* %0, i32 0, i32 3
  %18 = load i32, i32* %17, align 4, !tbaa !51
  %19 = icmp ugt i32 %16, %18
  br i1 %19, label %21, label %20

20:                                               ; preds = %13
  store volatile %struct.tskTaskControlBlock* %0, %struct.tskTaskControlBlock** @pxCurrentTCB, align 4, !tbaa !7
  br label %21

21:                                               ; preds = %13, %20, %10, %9, %6
  %22 = load i32, i32* @uxTaskNumber, align 4, !tbaa !60
  %23 = add i32 %22, 1
  store i32 %23, i32* @uxTaskNumber, align 4, !tbaa !60
  %24 = getelementptr inbounds %struct.tskTaskControlBlock, %struct.tskTaskControlBlock* %0, i32 0, i32 6
  store i32 %23, i32* %24, align 4, !tbaa !61
  %25 = getelementptr inbounds %struct.tskTaskControlBlock, %struct.tskTaskControlBlock* %0, i32 0, i32 3
  %26 = load i32, i32* %25, align 4, !tbaa !51
  %27 = shl nuw i32 1, %26
  %28 = load volatile i32, i32* @uxTopReadyPriority, align 4, !tbaa !60
  %29 = or i32 %28, %27
  store volatile i32 %29, i32* @uxTopReadyPriority, align 4, !tbaa !60
  %30 = getelementptr inbounds [5 x %struct.xLIST], [5 x %struct.xLIST]* @pxReadyTasksLists, i32 0, i32 %26
  %31 = getelementptr inbounds %struct.tskTaskControlBlock, %struct.tskTaskControlBlock* %0, i32 0, i32 1
  tail call void @vListInsertEnd(%struct.xLIST* noundef nonnull %30, %struct.xLIST_ITEM* noundef nonnull %31) #19
  tail call void @vPortExitCritical() #19
  %32 = load volatile i32, i32* @xSchedulerRunning, align 4, !tbaa !60
  %33 = icmp eq i32 %32, 0
  br i1 %33, label %41, label %34

34:                                               ; preds = %21
  %35 = load volatile %struct.tskTaskControlBlock*, %struct.tskTaskControlBlock** @pxCurrentTCB, align 4, !tbaa !7
  %36 = getelementptr inbounds %struct.tskTaskControlBlock, %struct.tskTaskControlBlock* %35, i32 0, i32 3
  %37 = load i32, i32* %36, align 4, !tbaa !51
  %38 = load i32, i32* %25, align 4, !tbaa !51
  %39 = icmp ult i32 %37, %38
  br i1 %39, label %40, label %41

40:                                               ; preds = %34
  store volatile i32 268435456, i32* inttoptr (i32 -536810236 to i32*), align 4, !tbaa !18
  tail call void asm sideeffect "dsb", "~{memory}"() #21, !srcloc !62
  tail call void asm sideeffect "isb", ""() #21, !srcloc !63
  br label %41

41:                                               ; preds = %21, %40, %34
  ret void
}

; Function Attrs: noinline nounwind optsize
define internal fastcc void @prvInitialiseTaskLists() unnamed_addr #2 {
  br label %1

1:                                                ; preds = %0, %1
  %2 = phi i32 [ 0, %0 ], [ %4, %1 ]
  %3 = getelementptr inbounds [5 x %struct.xLIST], [5 x %struct.xLIST]* @pxReadyTasksLists, i32 0, i32 %2
  tail call void @vListInitialise(%struct.xLIST* noundef nonnull %3) #19
  %4 = add nuw nsw i32 %2, 1
  %5 = icmp eq i32 %4, 5
  br i1 %5, label %6, label %1, !llvm.loop !64

6:                                                ; preds = %1
  tail call void @vListInitialise(%struct.xLIST* noundef nonnull @xDelayedTaskList1) #19
  tail call void @vListInitialise(%struct.xLIST* noundef nonnull @xDelayedTaskList2) #19
  tail call void @vListInitialise(%struct.xLIST* noundef nonnull @xPendingReadyList) #19
  tail call void @vListInitialise(%struct.xLIST* noundef nonnull @xTasksWaitingTermination) #19
  tail call void @vListInitialise(%struct.xLIST* noundef nonnull @xSuspendedTaskList) #19
  store volatile %struct.xLIST* @xDelayedTaskList1, %struct.xLIST** @pxDelayedTaskList, align 4, !tbaa !7
  store volatile %struct.xLIST* @xDelayedTaskList2, %struct.xLIST** @pxOverflowDelayedTaskList, align 4, !tbaa !7
  ret void
}

; Function Attrs: optsize
declare dso_local i8* @memset(i8* noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind optsize
define dso_local void @vTaskDelete(%struct.tskTaskControlBlock* noundef %0) local_unnamed_addr #2 {
  tail call void @vPortEnterCritical() #19
  %2 = icmp eq %struct.tskTaskControlBlock* %0, null
  br i1 %2, label %3, label %5

3:                                                ; preds = %1
  %4 = load volatile %struct.tskTaskControlBlock*, %struct.tskTaskControlBlock** @pxCurrentTCB, align 4, !tbaa !7
  br label %5

5:                                                ; preds = %1, %3
  %6 = phi %struct.tskTaskControlBlock* [ %4, %3 ], [ %0, %1 ]
  %7 = getelementptr inbounds %struct.tskTaskControlBlock, %struct.tskTaskControlBlock* %6, i32 0, i32 1
  %8 = tail call i32 @uxListRemove(%struct.xLIST_ITEM* noundef nonnull %7) #19
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %10, label %21

10:                                               ; preds = %5
  %11 = getelementptr inbounds %struct.tskTaskControlBlock, %struct.tskTaskControlBlock* %6, i32 0, i32 3
  %12 = load i32, i32* %11, align 4, !tbaa !51
  %13 = getelementptr inbounds [5 x %struct.xLIST], [5 x %struct.xLIST]* @pxReadyTasksLists, i32 0, i32 %12, i32 0
  %14 = load volatile i32, i32* %13, align 4, !tbaa !65
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %16, label %21

16:                                               ; preds = %10
  %17 = shl nuw i32 1, %12
  %18 = xor i32 %17, -1
  %19 = load volatile i32, i32* @uxTopReadyPriority, align 4, !tbaa !60
  %20 = and i32 %19, %18
  store volatile i32 %20, i32* @uxTopReadyPriority, align 4, !tbaa !60
  br label %21

21:                                               ; preds = %5, %10, %16
  %22 = getelementptr inbounds %struct.tskTaskControlBlock, %struct.tskTaskControlBlock* %6, i32 0, i32 2, i32 4
  %23 = load %struct.xLIST*, %struct.xLIST** %22, align 4, !tbaa !68
  %24 = icmp eq %struct.xLIST* %23, null
  br i1 %24, label %28, label %25

25:                                               ; preds = %21
  %26 = getelementptr inbounds %struct.tskTaskControlBlock, %struct.tskTaskControlBlock* %6, i32 0, i32 2
  %27 = tail call i32 @uxListRemove(%struct.xLIST_ITEM* noundef nonnull %26) #19
  br label %28

28:                                               ; preds = %21, %25
  %29 = load i32, i32* @uxTaskNumber, align 4, !tbaa !60
  %30 = add i32 %29, 1
  store i32 %30, i32* @uxTaskNumber, align 4, !tbaa !60
  %31 = load volatile %struct.tskTaskControlBlock*, %struct.tskTaskControlBlock** @pxCurrentTCB, align 4, !tbaa !7
  %32 = icmp eq %struct.tskTaskControlBlock* %6, %31
  br i1 %32, label %33, label %36

33:                                               ; preds = %28
  tail call void @vListInsertEnd(%struct.xLIST* noundef nonnull @xTasksWaitingTermination, %struct.xLIST_ITEM* noundef nonnull %7) #19
  %34 = load volatile i32, i32* @uxDeletedTasksWaitingCleanUp, align 4, !tbaa !60
  %35 = add i32 %34, 1
  store volatile i32 %35, i32* @uxDeletedTasksWaitingCleanUp, align 4, !tbaa !60
  br label %39

36:                                               ; preds = %28
  %37 = load volatile i32, i32* @uxCurrentNumberOfTasks, align 4, !tbaa !60
  %38 = add i32 %37, -1
  store volatile i32 %38, i32* @uxCurrentNumberOfTasks, align 4, !tbaa !60
  tail call fastcc void @prvDeleteTCB(%struct.tskTaskControlBlock* noundef nonnull %6) #20
  tail call fastcc void @prvResetNextTaskUnblockTime() #20
  br label %39

39:                                               ; preds = %36, %33
  tail call void @vPortExitCritical() #19
  %40 = load volatile i32, i32* @xSchedulerRunning, align 4, !tbaa !60
  %41 = icmp eq i32 %40, 0
  br i1 %41, label %52, label %42

42:                                               ; preds = %39
  %43 = load volatile %struct.tskTaskControlBlock*, %struct.tskTaskControlBlock** @pxCurrentTCB, align 4, !tbaa !7
  %44 = icmp eq %struct.tskTaskControlBlock* %6, %43
  br i1 %44, label %45, label %52

45:                                               ; preds = %42
  %46 = load volatile i32, i32* @uxSchedulerSuspended, align 4, !tbaa !60
  %47 = icmp eq i32 %46, 0
  br i1 %47, label %51, label %48

48:                                               ; preds = %45
  %49 = tail call i32 asm sideeffect "\09mov $0, $1\09\09\09\09\09\09\09\09\09\09\09\09\0A\09msr basepri, $0\09\09\09\09\09\09\09\09\09\09\09\0A\09isb\09\09\09\09\09\09\09\09\09\09\09\09\09\09\0A\09dsb\09\09\09\09\09\09\09\09\09\09\09\09\09\09\0A", "=r,i,~{memory}"(i32 80) #21, !srcloc !69
  br label %50

50:                                               ; preds = %50, %48
  br label %50

51:                                               ; preds = %45
  store volatile i32 268435456, i32* inttoptr (i32 -536810236 to i32*), align 4, !tbaa !18
  tail call void asm sideeffect "dsb", "~{memory}"() #21, !srcloc !70
  tail call void asm sideeffect "isb", ""() #21, !srcloc !71
  br label %52

52:                                               ; preds = %51, %42, %39
  ret void
}

; Function Attrs: noinline nounwind optsize
define internal fastcc void @prvDeleteTCB(%struct.tskTaskControlBlock* noundef %0) unnamed_addr #2 {
  %2 = getelementptr inbounds %struct.tskTaskControlBlock, %struct.tskTaskControlBlock* %0, i32 0, i32 4
  %3 = bitcast i32** %2 to i8**
  %4 = load i8*, i8** %3, align 4, !tbaa !46
  tail call void @vPortFree(i8* noundef %4) #19
  %5 = bitcast %struct.tskTaskControlBlock* %0 to i8*
  tail call void @vPortFree(i8* noundef %5) #19
  ret void
}

; Function Attrs: nofree noinline norecurse nounwind optsize
define internal fastcc void @prvResetNextTaskUnblockTime() unnamed_addr #6 {
  %1 = load volatile %struct.xLIST*, %struct.xLIST** @pxDelayedTaskList, align 4, !tbaa !7
  %2 = getelementptr inbounds %struct.xLIST, %struct.xLIST* %1, i32 0, i32 0
  %3 = load volatile i32, i32* %2, align 4, !tbaa !65
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %14, label %5

5:                                                ; preds = %0
  %6 = load volatile %struct.xLIST*, %struct.xLIST** @pxDelayedTaskList, align 4, !tbaa !7
  %7 = getelementptr inbounds %struct.xLIST, %struct.xLIST* %6, i32 0, i32 2, i32 1
  %8 = load %struct.xLIST_ITEM*, %struct.xLIST_ITEM** %7, align 4, !tbaa !72
  %9 = getelementptr inbounds %struct.xLIST_ITEM, %struct.xLIST_ITEM* %8, i32 0, i32 3
  %10 = bitcast i8** %9 to %struct.tskTaskControlBlock**
  %11 = load %struct.tskTaskControlBlock*, %struct.tskTaskControlBlock** %10, align 4, !tbaa !73
  %12 = getelementptr inbounds %struct.tskTaskControlBlock, %struct.tskTaskControlBlock* %11, i32 0, i32 1, i32 0
  %13 = load i32, i32* %12, align 4, !tbaa !74
  br label %14

14:                                               ; preds = %0, %5
  %15 = phi i32 [ %13, %5 ], [ -1, %0 ]
  store volatile i32 %15, i32* @xNextTaskUnblockTime, align 4, !tbaa !18
  ret void
}

; Function Attrs: noinline nounwind optsize
define dso_local void @vTaskDelayUntil(i32* noundef %0, i32 noundef %1) local_unnamed_addr #2 {
  %3 = icmp eq i32* %0, null
  br i1 %3, label %4, label %7

4:                                                ; preds = %2
  %5 = tail call i32 asm sideeffect "\09mov $0, $1\09\09\09\09\09\09\09\09\09\09\09\09\0A\09msr basepri, $0\09\09\09\09\09\09\09\09\09\09\09\0A\09isb\09\09\09\09\09\09\09\09\09\09\09\09\09\09\0A\09dsb\09\09\09\09\09\09\09\09\09\09\09\09\09\09\0A", "=r,i,~{memory}"(i32 80) #21, !srcloc !69
  br label %6

6:                                                ; preds = %6, %4
  br label %6

7:                                                ; preds = %2
  %8 = icmp eq i32 %1, 0
  br i1 %8, label %9, label %12

9:                                                ; preds = %7
  %10 = tail call i32 asm sideeffect "\09mov $0, $1\09\09\09\09\09\09\09\09\09\09\09\09\0A\09msr basepri, $0\09\09\09\09\09\09\09\09\09\09\09\0A\09isb\09\09\09\09\09\09\09\09\09\09\09\09\09\09\0A\09dsb\09\09\09\09\09\09\09\09\09\09\09\09\09\09\0A", "=r,i,~{memory}"(i32 80) #21, !srcloc !69
  br label %11

11:                                               ; preds = %11, %9
  br label %11

12:                                               ; preds = %7
  %13 = load volatile i32, i32* @uxSchedulerSuspended, align 4, !tbaa !60
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %18, label %15

15:                                               ; preds = %12
  %16 = tail call i32 asm sideeffect "\09mov $0, $1\09\09\09\09\09\09\09\09\09\09\09\09\0A\09msr basepri, $0\09\09\09\09\09\09\09\09\09\09\09\0A\09isb\09\09\09\09\09\09\09\09\09\09\09\09\09\09\0A\09dsb\09\09\09\09\09\09\09\09\09\09\09\09\09\09\0A", "=r,i,~{memory}"(i32 80) #21, !srcloc !69
  br label %17

17:                                               ; preds = %17, %15
  br label %17

18:                                               ; preds = %12
  tail call void @vTaskSuspendAll() #20
  %19 = load volatile i32, i32* @xTickCount, align 4, !tbaa !18
  %20 = load i32, i32* %0, align 4, !tbaa !18
  %21 = add i32 %20, %1
  %22 = icmp ult i32 %19, %20
  %23 = icmp ult i32 %21, %20
  %24 = icmp ugt i32 %21, %19
  br i1 %22, label %25, label %27

25:                                               ; preds = %18
  %26 = select i1 %23, i1 %24, i1 false
  br i1 %26, label %30, label %29

27:                                               ; preds = %18
  %28 = select i1 %23, i1 true, i1 %24
  br i1 %28, label %30, label %29

29:                                               ; preds = %27, %25
  store i32 %21, i32* %0, align 4, !tbaa !18
  br label %32

30:                                               ; preds = %25, %27
  store i32 %21, i32* %0, align 4, !tbaa !18
  %31 = sub i32 %21, %19
  tail call fastcc void @prvAddCurrentTaskToDelayedList(i32 noundef %31, i32 noundef 0) #20
  br label %32

32:                                               ; preds = %29, %30
  %33 = tail call i32 @xTaskResumeAll() #20
  %34 = icmp eq i32 %33, 0
  br i1 %34, label %35, label %36

35:                                               ; preds = %32
  store volatile i32 268435456, i32* inttoptr (i32 -536810236 to i32*), align 4, !tbaa !18
  tail call void asm sideeffect "dsb", "~{memory}"() #21, !srcloc !75
  tail call void asm sideeffect "isb", ""() #21, !srcloc !76
  br label %36

36:                                               ; preds = %32, %35
  ret void
}

; Function Attrs: noinline nounwind optsize
define dso_local void @vTaskSuspendAll() local_unnamed_addr #2 {
  %1 = load volatile i32, i32* @uxSchedulerSuspended, align 4, !tbaa !60
  %2 = add i32 %1, 1
  store volatile i32 %2, i32* @uxSchedulerSuspended, align 4, !tbaa !60
  tail call void asm sideeffect "", "~{memory}"() #21, !srcloc !77
  ret void
}

; Function Attrs: noinline nounwind optsize
define internal fastcc void @prvAddCurrentTaskToDelayedList(i32 noundef %0, i32 noundef %1) unnamed_addr #2 {
  %3 = load volatile i32, i32* @xTickCount, align 4, !tbaa !18
  %4 = load volatile %struct.tskTaskControlBlock*, %struct.tskTaskControlBlock** @pxCurrentTCB, align 4, !tbaa !7
  %5 = getelementptr inbounds %struct.tskTaskControlBlock, %struct.tskTaskControlBlock* %4, i32 0, i32 1
  %6 = tail call i32 @uxListRemove(%struct.xLIST_ITEM* noundef nonnull %5) #19
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %8, label %16

8:                                                ; preds = %2
  %9 = load volatile %struct.tskTaskControlBlock*, %struct.tskTaskControlBlock** @pxCurrentTCB, align 4, !tbaa !7
  %10 = getelementptr inbounds %struct.tskTaskControlBlock, %struct.tskTaskControlBlock* %9, i32 0, i32 3
  %11 = load i32, i32* %10, align 4, !tbaa !51
  %12 = shl nuw i32 1, %11
  %13 = xor i32 %12, -1
  %14 = load volatile i32, i32* @uxTopReadyPriority, align 4, !tbaa !60
  %15 = and i32 %14, %13
  store volatile i32 %15, i32* @uxTopReadyPriority, align 4, !tbaa !60
  br label %16

16:                                               ; preds = %2, %8
  %17 = icmp eq i32 %0, -1
  %18 = icmp ne i32 %1, 0
  %19 = and i1 %17, %18
  br i1 %19, label %20, label %23

20:                                               ; preds = %16
  %21 = load volatile %struct.tskTaskControlBlock*, %struct.tskTaskControlBlock** @pxCurrentTCB, align 4, !tbaa !7
  %22 = getelementptr inbounds %struct.tskTaskControlBlock, %struct.tskTaskControlBlock* %21, i32 0, i32 1
  tail call void @vListInsertEnd(%struct.xLIST* noundef nonnull @xSuspendedTaskList, %struct.xLIST_ITEM* noundef nonnull %22) #19
  br label %39

23:                                               ; preds = %16
  %24 = add i32 %3, %0
  %25 = load volatile %struct.tskTaskControlBlock*, %struct.tskTaskControlBlock** @pxCurrentTCB, align 4, !tbaa !7
  %26 = getelementptr inbounds %struct.tskTaskControlBlock, %struct.tskTaskControlBlock* %25, i32 0, i32 1, i32 0
  store i32 %24, i32* %26, align 4, !tbaa !74
  %27 = icmp ult i32 %24, %3
  br i1 %27, label %28, label %32

28:                                               ; preds = %23
  %29 = load volatile %struct.xLIST*, %struct.xLIST** @pxOverflowDelayedTaskList, align 4, !tbaa !7
  %30 = load volatile %struct.tskTaskControlBlock*, %struct.tskTaskControlBlock** @pxCurrentTCB, align 4, !tbaa !7
  %31 = getelementptr inbounds %struct.tskTaskControlBlock, %struct.tskTaskControlBlock* %30, i32 0, i32 1
  tail call void @vListInsert(%struct.xLIST* noundef %29, %struct.xLIST_ITEM* noundef nonnull %31) #19
  br label %39

32:                                               ; preds = %23
  %33 = load volatile %struct.xLIST*, %struct.xLIST** @pxDelayedTaskList, align 4, !tbaa !7
  %34 = load volatile %struct.tskTaskControlBlock*, %struct.tskTaskControlBlock** @pxCurrentTCB, align 4, !tbaa !7
  %35 = getelementptr inbounds %struct.tskTaskControlBlock, %struct.tskTaskControlBlock* %34, i32 0, i32 1
  tail call void @vListInsert(%struct.xLIST* noundef %33, %struct.xLIST_ITEM* noundef nonnull %35) #19
  %36 = load volatile i32, i32* @xNextTaskUnblockTime, align 4, !tbaa !18
  %37 = icmp ult i32 %24, %36
  br i1 %37, label %38, label %39

38:                                               ; preds = %32
  store volatile i32 %24, i32* @xNextTaskUnblockTime, align 4, !tbaa !18
  br label %39

39:                                               ; preds = %28, %32, %38, %20
  ret void
}

; Function Attrs: noinline nounwind optsize
define dso_local i32 @xTaskResumeAll() local_unnamed_addr #2 {
  %1 = load volatile i32, i32* @uxSchedulerSuspended, align 4, !tbaa !60
  %2 = icmp eq i32 %1, 0
  br i1 %2, label %3, label %6

3:                                                ; preds = %0
  %4 = tail call i32 asm sideeffect "\09mov $0, $1\09\09\09\09\09\09\09\09\09\09\09\09\0A\09msr basepri, $0\09\09\09\09\09\09\09\09\09\09\09\0A\09isb\09\09\09\09\09\09\09\09\09\09\09\09\09\09\0A\09dsb\09\09\09\09\09\09\09\09\09\09\09\09\09\09\0A", "=r,i,~{memory}"(i32 80) #21, !srcloc !69
  br label %5

5:                                                ; preds = %5, %3
  br label %5

6:                                                ; preds = %0
  tail call void @vPortEnterCritical() #19
  %7 = load volatile i32, i32* @uxSchedulerSuspended, align 4, !tbaa !60
  %8 = add i32 %7, -1
  store volatile i32 %8, i32* @uxSchedulerSuspended, align 4, !tbaa !60
  %9 = load volatile i32, i32* @uxSchedulerSuspended, align 4, !tbaa !60
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %11, label %58

11:                                               ; preds = %6
  %12 = load volatile i32, i32* @uxCurrentNumberOfTasks, align 4, !tbaa !60
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %58, label %14

14:                                               ; preds = %11
  %15 = load volatile i32, i32* getelementptr inbounds (%struct.xLIST, %struct.xLIST* @xPendingReadyList, i32 0, i32 0), align 4, !tbaa !65
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %42, label %17

17:                                               ; preds = %14, %38
  %18 = load %struct.xLIST_ITEM*, %struct.xLIST_ITEM** getelementptr inbounds (%struct.xLIST, %struct.xLIST* @xPendingReadyList, i32 0, i32 2, i32 1), align 4, !tbaa !72
  %19 = getelementptr inbounds %struct.xLIST_ITEM, %struct.xLIST_ITEM* %18, i32 0, i32 3
  %20 = bitcast i8** %19 to %struct.tskTaskControlBlock**
  %21 = load %struct.tskTaskControlBlock*, %struct.tskTaskControlBlock** %20, align 4, !tbaa !73
  %22 = getelementptr inbounds %struct.tskTaskControlBlock, %struct.tskTaskControlBlock* %21, i32 0, i32 2
  %23 = tail call i32 @uxListRemove(%struct.xLIST_ITEM* noundef nonnull %22) #19
  %24 = getelementptr inbounds %struct.tskTaskControlBlock, %struct.tskTaskControlBlock* %21, i32 0, i32 1
  %25 = tail call i32 @uxListRemove(%struct.xLIST_ITEM* noundef nonnull %24) #19
  %26 = getelementptr inbounds %struct.tskTaskControlBlock, %struct.tskTaskControlBlock* %21, i32 0, i32 3
  %27 = load i32, i32* %26, align 4, !tbaa !51
  %28 = shl nuw i32 1, %27
  %29 = load volatile i32, i32* @uxTopReadyPriority, align 4, !tbaa !60
  %30 = or i32 %29, %28
  store volatile i32 %30, i32* @uxTopReadyPriority, align 4, !tbaa !60
  %31 = getelementptr inbounds [5 x %struct.xLIST], [5 x %struct.xLIST]* @pxReadyTasksLists, i32 0, i32 %27
  tail call void @vListInsertEnd(%struct.xLIST* noundef nonnull %31, %struct.xLIST_ITEM* noundef nonnull %24) #19
  %32 = load i32, i32* %26, align 4, !tbaa !51
  %33 = load volatile %struct.tskTaskControlBlock*, %struct.tskTaskControlBlock** @pxCurrentTCB, align 4, !tbaa !7
  %34 = getelementptr inbounds %struct.tskTaskControlBlock, %struct.tskTaskControlBlock* %33, i32 0, i32 3
  %35 = load i32, i32* %34, align 4, !tbaa !51
  %36 = icmp ult i32 %32, %35
  br i1 %36, label %38, label %37

37:                                               ; preds = %17
  store volatile i32 1, i32* @xYieldPending, align 4, !tbaa !60
  br label %38

38:                                               ; preds = %17, %37
  %39 = load volatile i32, i32* getelementptr inbounds (%struct.xLIST, %struct.xLIST* @xPendingReadyList, i32 0, i32 0), align 4, !tbaa !65
  %40 = icmp eq i32 %39, 0
  br i1 %40, label %41, label %17, !llvm.loop !78

41:                                               ; preds = %38
  tail call fastcc void @prvResetNextTaskUnblockTime() #20
  br label %42

42:                                               ; preds = %14, %41
  %43 = load volatile i32, i32* @xPendedTicks, align 4, !tbaa !18
  %44 = icmp eq i32 %43, 0
  br i1 %44, label %54, label %45

45:                                               ; preds = %42, %50
  %46 = phi i32 [ %51, %50 ], [ %43, %42 ]
  %47 = tail call i32 @xTaskIncrementTick() #20
  %48 = icmp eq i32 %47, 0
  br i1 %48, label %50, label %49

49:                                               ; preds = %45
  store volatile i32 1, i32* @xYieldPending, align 4, !tbaa !60
  br label %50

50:                                               ; preds = %45, %49
  %51 = add i32 %46, -1
  %52 = icmp eq i32 %51, 0
  br i1 %52, label %53, label %45, !llvm.loop !79

53:                                               ; preds = %50
  store volatile i32 0, i32* @xPendedTicks, align 4, !tbaa !18
  br label %54

54:                                               ; preds = %42, %53
  %55 = load volatile i32, i32* @xYieldPending, align 4, !tbaa !60
  %56 = icmp eq i32 %55, 0
  br i1 %56, label %58, label %57

57:                                               ; preds = %54
  store volatile i32 268435456, i32* inttoptr (i32 -536810236 to i32*), align 4, !tbaa !18
  tail call void asm sideeffect "dsb", "~{memory}"() #21, !srcloc !80
  tail call void asm sideeffect "isb", ""() #21, !srcloc !81
  br label %58

58:                                               ; preds = %6, %11, %54, %57
  %59 = phi i32 [ 1, %57 ], [ 0, %54 ], [ 0, %11 ], [ 0, %6 ]
  tail call void @vPortExitCritical() #19
  ret i32 %59
}

; Function Attrs: noinline nounwind optsize
define dso_local i32 @xTaskIncrementTick() local_unnamed_addr #2 {
  %1 = load volatile i32, i32* @uxSchedulerSuspended, align 4, !tbaa !60
  %2 = icmp eq i32 %1, 0
  br i1 %2, label %3, label %80

3:                                                ; preds = %0
  %4 = load volatile i32, i32* @xTickCount, align 4, !tbaa !18
  %5 = add i32 %4, 1
  store volatile i32 %5, i32* @xTickCount, align 4, !tbaa !18
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %7, label %20

7:                                                ; preds = %3
  %8 = load volatile %struct.xLIST*, %struct.xLIST** @pxDelayedTaskList, align 4, !tbaa !7
  %9 = getelementptr inbounds %struct.xLIST, %struct.xLIST* %8, i32 0, i32 0
  %10 = load volatile i32, i32* %9, align 4, !tbaa !65
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %15, label %12

12:                                               ; preds = %7
  %13 = tail call i32 asm sideeffect "\09mov $0, $1\09\09\09\09\09\09\09\09\09\09\09\09\0A\09msr basepri, $0\09\09\09\09\09\09\09\09\09\09\09\0A\09isb\09\09\09\09\09\09\09\09\09\09\09\09\09\09\0A\09dsb\09\09\09\09\09\09\09\09\09\09\09\09\09\09\0A", "=r,i,~{memory}"(i32 80) #21, !srcloc !69
  br label %14

14:                                               ; preds = %14, %12
  br label %14

15:                                               ; preds = %7
  %16 = load volatile %struct.xLIST*, %struct.xLIST** @pxDelayedTaskList, align 4, !tbaa !7
  %17 = load volatile %struct.xLIST*, %struct.xLIST** @pxOverflowDelayedTaskList, align 4, !tbaa !7
  store volatile %struct.xLIST* %17, %struct.xLIST** @pxDelayedTaskList, align 4, !tbaa !7
  store volatile %struct.xLIST* %16, %struct.xLIST** @pxOverflowDelayedTaskList, align 4, !tbaa !7
  %18 = load volatile i32, i32* @xNumOfOverflows, align 4, !tbaa !60
  %19 = add nsw i32 %18, 1
  store volatile i32 %19, i32* @xNumOfOverflows, align 4, !tbaa !60
  tail call fastcc void @prvResetNextTaskUnblockTime() #20
  br label %20

20:                                               ; preds = %3, %15
  %21 = load volatile i32, i32* @xNextTaskUnblockTime, align 4, !tbaa !18
  %22 = icmp ult i32 %5, %21
  br i1 %22, label %68, label %23

23:                                               ; preds = %20
  %24 = load volatile %struct.xLIST*, %struct.xLIST** @pxDelayedTaskList, align 4, !tbaa !7
  %25 = getelementptr inbounds %struct.xLIST, %struct.xLIST* %24, i32 0, i32 0
  %26 = load volatile i32, i32* %25, align 4, !tbaa !65
  %27 = icmp eq i32 %26, 0
  br i1 %27, label %65, label %28

28:                                               ; preds = %23, %48
  %29 = phi i32 [ %60, %48 ], [ 0, %23 ]
  %30 = load volatile %struct.xLIST*, %struct.xLIST** @pxDelayedTaskList, align 4, !tbaa !7
  %31 = getelementptr inbounds %struct.xLIST, %struct.xLIST* %30, i32 0, i32 2, i32 1
  %32 = load %struct.xLIST_ITEM*, %struct.xLIST_ITEM** %31, align 4, !tbaa !72
  %33 = getelementptr inbounds %struct.xLIST_ITEM, %struct.xLIST_ITEM* %32, i32 0, i32 3
  %34 = bitcast i8** %33 to %struct.tskTaskControlBlock**
  %35 = load %struct.tskTaskControlBlock*, %struct.tskTaskControlBlock** %34, align 4, !tbaa !73
  %36 = getelementptr inbounds %struct.tskTaskControlBlock, %struct.tskTaskControlBlock* %35, i32 0, i32 1
  %37 = getelementptr inbounds %struct.xLIST_ITEM, %struct.xLIST_ITEM* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4, !tbaa !74
  %39 = icmp ult i32 %5, %38
  br i1 %39, label %65, label %40

40:                                               ; preds = %28
  %41 = tail call i32 @uxListRemove(%struct.xLIST_ITEM* noundef nonnull %36) #19
  %42 = getelementptr inbounds %struct.tskTaskControlBlock, %struct.tskTaskControlBlock* %35, i32 0, i32 2, i32 4
  %43 = load %struct.xLIST*, %struct.xLIST** %42, align 4, !tbaa !68
  %44 = icmp eq %struct.xLIST* %43, null
  br i1 %44, label %48, label %45

45:                                               ; preds = %40
  %46 = getelementptr inbounds %struct.tskTaskControlBlock, %struct.tskTaskControlBlock* %35, i32 0, i32 2
  %47 = tail call i32 @uxListRemove(%struct.xLIST_ITEM* noundef nonnull %46) #19
  br label %48

48:                                               ; preds = %40, %45
  %49 = getelementptr inbounds %struct.tskTaskControlBlock, %struct.tskTaskControlBlock* %35, i32 0, i32 3
  %50 = load i32, i32* %49, align 4, !tbaa !51
  %51 = shl nuw i32 1, %50
  %52 = load volatile i32, i32* @uxTopReadyPriority, align 4, !tbaa !60
  %53 = or i32 %52, %51
  store volatile i32 %53, i32* @uxTopReadyPriority, align 4, !tbaa !60
  %54 = getelementptr inbounds [5 x %struct.xLIST], [5 x %struct.xLIST]* @pxReadyTasksLists, i32 0, i32 %50
  tail call void @vListInsertEnd(%struct.xLIST* noundef nonnull %54, %struct.xLIST_ITEM* noundef nonnull %36) #19
  %55 = load i32, i32* %49, align 4, !tbaa !51
  %56 = load volatile %struct.tskTaskControlBlock*, %struct.tskTaskControlBlock** @pxCurrentTCB, align 4, !tbaa !7
  %57 = getelementptr inbounds %struct.tskTaskControlBlock, %struct.tskTaskControlBlock* %56, i32 0, i32 3
  %58 = load i32, i32* %57, align 4, !tbaa !51
  %59 = icmp ult i32 %55, %58
  %60 = select i1 %59, i32 %29, i32 1
  %61 = load volatile %struct.xLIST*, %struct.xLIST** @pxDelayedTaskList, align 4, !tbaa !7
  %62 = getelementptr inbounds %struct.xLIST, %struct.xLIST* %61, i32 0, i32 0
  %63 = load volatile i32, i32* %62, align 4, !tbaa !65
  %64 = icmp eq i32 %63, 0
  br i1 %64, label %65, label %28

65:                                               ; preds = %28, %48, %23
  %66 = phi i32 [ -1, %23 ], [ -1, %48 ], [ %38, %28 ]
  %67 = phi i32 [ 0, %23 ], [ %60, %48 ], [ %29, %28 ]
  store volatile i32 %66, i32* @xNextTaskUnblockTime, align 4, !tbaa !18
  br label %68

68:                                               ; preds = %65, %20
  %69 = phi i32 [ 0, %20 ], [ %67, %65 ]
  %70 = load volatile %struct.tskTaskControlBlock*, %struct.tskTaskControlBlock** @pxCurrentTCB, align 4, !tbaa !7
  %71 = getelementptr inbounds %struct.tskTaskControlBlock, %struct.tskTaskControlBlock* %70, i32 0, i32 3
  %72 = load i32, i32* %71, align 4, !tbaa !51
  %73 = getelementptr inbounds [5 x %struct.xLIST], [5 x %struct.xLIST]* @pxReadyTasksLists, i32 0, i32 %72, i32 0
  %74 = load volatile i32, i32* %73, align 4, !tbaa !65
  %75 = icmp ugt i32 %74, 1
  %76 = select i1 %75, i32 1, i32 %69
  %77 = load volatile i32, i32* @xYieldPending, align 4, !tbaa !60
  %78 = icmp eq i32 %77, 0
  %79 = select i1 %78, i32 %76, i32 1
  br label %83

80:                                               ; preds = %0
  %81 = load volatile i32, i32* @xPendedTicks, align 4, !tbaa !18
  %82 = add i32 %81, 1
  store volatile i32 %82, i32* @xPendedTicks, align 4, !tbaa !18
  br label %83

83:                                               ; preds = %80, %68
  %84 = phi i32 [ %79, %68 ], [ 0, %80 ]
  ret i32 %84
}

; Function Attrs: noinline nounwind optsize
define dso_local void @vTaskDelay(i32 noundef %0) local_unnamed_addr #2 {
  %2 = icmp eq i32 %0, 0
  br i1 %2, label %12, label %3

3:                                                ; preds = %1
  %4 = load volatile i32, i32* @uxSchedulerSuspended, align 4, !tbaa !60
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %9, label %6

6:                                                ; preds = %3
  %7 = tail call i32 asm sideeffect "\09mov $0, $1\09\09\09\09\09\09\09\09\09\09\09\09\0A\09msr basepri, $0\09\09\09\09\09\09\09\09\09\09\09\0A\09isb\09\09\09\09\09\09\09\09\09\09\09\09\09\09\0A\09dsb\09\09\09\09\09\09\09\09\09\09\09\09\09\09\0A", "=r,i,~{memory}"(i32 80) #21, !srcloc !69
  br label %8

8:                                                ; preds = %8, %6
  br label %8

9:                                                ; preds = %3
  tail call void @vTaskSuspendAll() #20
  tail call fastcc void @prvAddCurrentTaskToDelayedList(i32 noundef %0, i32 noundef 0) #20
  %10 = tail call i32 @xTaskResumeAll() #20
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %12, label %13

12:                                               ; preds = %1, %9
  store volatile i32 268435456, i32* inttoptr (i32 -536810236 to i32*), align 4, !tbaa !18
  tail call void asm sideeffect "dsb", "~{memory}"() #21, !srcloc !82
  tail call void asm sideeffect "isb", ""() #21, !srcloc !83
  br label %13

13:                                               ; preds = %9, %12
  ret void
}

; Function Attrs: noinline nounwind optsize
define dso_local i32 @eTaskGetState(%struct.tskTaskControlBlock* noundef %0) local_unnamed_addr #2 {
  %2 = icmp eq %struct.tskTaskControlBlock* %0, null
  br i1 %2, label %3, label %6

3:                                                ; preds = %1
  %4 = tail call i32 asm sideeffect "\09mov $0, $1\09\09\09\09\09\09\09\09\09\09\09\09\0A\09msr basepri, $0\09\09\09\09\09\09\09\09\09\09\09\0A\09isb\09\09\09\09\09\09\09\09\09\09\09\09\09\09\0A\09dsb\09\09\09\09\09\09\09\09\09\09\09\09\09\09\0A", "=r,i,~{memory}"(i32 80) #21, !srcloc !69
  br label %5

5:                                                ; preds = %5, %3
  br label %5

6:                                                ; preds = %1
  %7 = load volatile %struct.tskTaskControlBlock*, %struct.tskTaskControlBlock** @pxCurrentTCB, align 4, !tbaa !7
  %8 = icmp eq %struct.tskTaskControlBlock* %7, %0
  br i1 %8, label %33, label %9

9:                                                ; preds = %6
  tail call void @vPortEnterCritical() #19
  %10 = getelementptr inbounds %struct.tskTaskControlBlock, %struct.tskTaskControlBlock* %0, i32 0, i32 1, i32 4
  %11 = load %struct.xLIST*, %struct.xLIST** %10, align 4, !tbaa !84
  %12 = load volatile %struct.xLIST*, %struct.xLIST** @pxDelayedTaskList, align 4, !tbaa !7
  %13 = load volatile %struct.xLIST*, %struct.xLIST** @pxOverflowDelayedTaskList, align 4, !tbaa !7
  tail call void @vPortExitCritical() #19
  %14 = icmp eq %struct.xLIST* %11, %12
  %15 = icmp eq %struct.xLIST* %11, %13
  %16 = select i1 %14, i1 true, i1 %15
  br i1 %16, label %33, label %17

17:                                               ; preds = %9
  %18 = icmp eq %struct.xLIST* %11, @xSuspendedTaskList
  br i1 %18, label %19, label %28

19:                                               ; preds = %17
  %20 = getelementptr inbounds %struct.tskTaskControlBlock, %struct.tskTaskControlBlock* %0, i32 0, i32 2, i32 4
  %21 = load %struct.xLIST*, %struct.xLIST** %20, align 4, !tbaa !68
  %22 = icmp eq %struct.xLIST* %21, null
  br i1 %22, label %23, label %33

23:                                               ; preds = %19
  %24 = getelementptr inbounds %struct.tskTaskControlBlock, %struct.tskTaskControlBlock* %0, i32 0, i32 11
  %25 = load volatile i8, i8* %24, align 4, !tbaa !58
  %26 = icmp eq i8 %25, 1
  %27 = select i1 %26, i32 2, i32 3
  br label %33

28:                                               ; preds = %17
  %29 = icmp eq %struct.xLIST* %11, @xTasksWaitingTermination
  %30 = icmp eq %struct.xLIST* %11, null
  %31 = or i1 %29, %30
  %32 = select i1 %31, i32 4, i32 1
  br label %33

33:                                               ; preds = %28, %19, %23, %9, %6
  %34 = phi i32 [ 0, %6 ], [ 2, %9 ], [ %27, %23 ], [ 2, %19 ], [ %32, %28 ]
  ret i32 %34
}

; Function Attrs: noinline nounwind optsize
define dso_local i32 @uxTaskPriorityGet(%struct.tskTaskControlBlock* noundef readonly %0) local_unnamed_addr #2 {
  tail call void @vPortEnterCritical() #19
  %2 = icmp eq %struct.tskTaskControlBlock* %0, null
  br i1 %2, label %3, label %5

3:                                                ; preds = %1
  %4 = load volatile %struct.tskTaskControlBlock*, %struct.tskTaskControlBlock** @pxCurrentTCB, align 4, !tbaa !7
  br label %5

5:                                                ; preds = %1, %3
  %6 = phi %struct.tskTaskControlBlock* [ %4, %3 ], [ %0, %1 ]
  %7 = getelementptr inbounds %struct.tskTaskControlBlock, %struct.tskTaskControlBlock* %6, i32 0, i32 3
  %8 = load i32, i32* %7, align 4, !tbaa !51
  tail call void @vPortExitCritical() #19
  ret i32 %8
}

; Function Attrs: noinline nounwind optsize
define dso_local i32 @uxTaskPriorityGetFromISR(%struct.tskTaskControlBlock* noundef readonly %0) local_unnamed_addr #2 {
  tail call void @vPortValidateInterruptPriority() #19
  %2 = tail call { i32, i32 } asm sideeffect "\09mrs $0, basepri\09\09\09\09\09\09\09\09\09\09\09\0A\09mov $1, $2\09\09\09\09\09\09\09\09\09\09\09\09\0A\09msr basepri, $1\09\09\09\09\09\09\09\09\09\09\09\0A\09isb\09\09\09\09\09\09\09\09\09\09\09\09\09\09\0A\09dsb\09\09\09\09\09\09\09\09\09\09\09\09\09\09\0A", "=r,=r,i,~{memory}"(i32 80) #21, !srcloc !85
  %3 = icmp eq %struct.tskTaskControlBlock* %0, null
  br i1 %3, label %4, label %6

4:                                                ; preds = %1
  %5 = load volatile %struct.tskTaskControlBlock*, %struct.tskTaskControlBlock** @pxCurrentTCB, align 4, !tbaa !7
  br label %6

6:                                                ; preds = %1, %4
  %7 = phi %struct.tskTaskControlBlock* [ %5, %4 ], [ %0, %1 ]
  %8 = extractvalue { i32, i32 } %2, 0
  %9 = getelementptr inbounds %struct.tskTaskControlBlock, %struct.tskTaskControlBlock* %7, i32 0, i32 3
  %10 = load i32, i32* %9, align 4, !tbaa !51
  tail call void asm sideeffect "\09msr basepri, $0\09", "r,~{memory}"(i32 %8) #21, !srcloc !86
  ret i32 %10
}

; Function Attrs: noinline nounwind optsize
define dso_local void @vTaskPrioritySet(%struct.tskTaskControlBlock* noundef %0, i32 noundef %1) local_unnamed_addr #2 {
  %3 = icmp ugt i32 %1, 4
  br i1 %3, label %4, label %7

4:                                                ; preds = %2
  %5 = tail call i32 asm sideeffect "\09mov $0, $1\09\09\09\09\09\09\09\09\09\09\09\09\0A\09msr basepri, $0\09\09\09\09\09\09\09\09\09\09\09\0A\09isb\09\09\09\09\09\09\09\09\09\09\09\09\09\09\0A\09dsb\09\09\09\09\09\09\09\09\09\09\09\09\09\09\0A", "=r,i,~{memory}"(i32 80) #21, !srcloc !69
  br label %6

6:                                                ; preds = %6, %4
  br label %6

7:                                                ; preds = %2
  tail call void @vPortEnterCritical() #19
  %8 = icmp eq %struct.tskTaskControlBlock* %0, null
  br i1 %8, label %9, label %11

9:                                                ; preds = %7
  %10 = load volatile %struct.tskTaskControlBlock*, %struct.tskTaskControlBlock** @pxCurrentTCB, align 4, !tbaa !7
  br label %11

11:                                               ; preds = %7, %9
  %12 = phi %struct.tskTaskControlBlock* [ %10, %9 ], [ %0, %7 ]
  %13 = getelementptr inbounds %struct.tskTaskControlBlock, %struct.tskTaskControlBlock* %12, i32 0, i32 8
  %14 = load i32, i32* %13, align 4, !tbaa !52
  %15 = icmp eq i32 %14, %1
  br i1 %15, label %62, label %16

16:                                               ; preds = %11
  %17 = icmp ult i32 %14, %1
  %18 = load volatile %struct.tskTaskControlBlock*, %struct.tskTaskControlBlock** @pxCurrentTCB, align 4, !tbaa !7
  br i1 %17, label %19, label %26

19:                                               ; preds = %16
  %20 = icmp eq %struct.tskTaskControlBlock* %12, %18
  br i1 %20, label %28, label %21

21:                                               ; preds = %19
  %22 = load volatile %struct.tskTaskControlBlock*, %struct.tskTaskControlBlock** @pxCurrentTCB, align 4, !tbaa !7
  %23 = getelementptr inbounds %struct.tskTaskControlBlock, %struct.tskTaskControlBlock* %22, i32 0, i32 3
  %24 = load i32, i32* %23, align 4, !tbaa !51
  %25 = icmp ugt i32 %24, %1
  br label %28

26:                                               ; preds = %16
  %27 = icmp ne %struct.tskTaskControlBlock* %12, %18
  br label %28

28:                                               ; preds = %26, %21, %19
  %29 = phi i1 [ true, %19 ], [ %25, %21 ], [ %27, %26 ]
  %30 = getelementptr inbounds %struct.tskTaskControlBlock, %struct.tskTaskControlBlock* %12, i32 0, i32 3
  %31 = load i32, i32* %30, align 4, !tbaa !51
  %32 = icmp eq i32 %14, %31
  br i1 %32, label %33, label %34

33:                                               ; preds = %28
  store i32 %1, i32* %30, align 4, !tbaa !51
  br label %34

34:                                               ; preds = %28, %33
  store i32 %1, i32* %13, align 4, !tbaa !52
  %35 = getelementptr inbounds %struct.tskTaskControlBlock, %struct.tskTaskControlBlock* %12, i32 0, i32 2, i32 0
  %36 = load i32, i32* %35, align 4, !tbaa !55
  %37 = icmp sgt i32 %36, -1
  br i1 %37, label %38, label %40

38:                                               ; preds = %34
  %39 = sub nuw nsw i32 5, %1
  store i32 %39, i32* %35, align 4, !tbaa !55
  br label %40

40:                                               ; preds = %34, %38
  %41 = getelementptr inbounds %struct.tskTaskControlBlock, %struct.tskTaskControlBlock* %12, i32 0, i32 1
  %42 = getelementptr inbounds %struct.tskTaskControlBlock, %struct.tskTaskControlBlock* %12, i32 0, i32 1, i32 4
  %43 = load %struct.xLIST*, %struct.xLIST** %42, align 4, !tbaa !84
  %44 = getelementptr inbounds [5 x %struct.xLIST], [5 x %struct.xLIST]* @pxReadyTasksLists, i32 0, i32 %31
  %45 = icmp eq %struct.xLIST* %43, %44
  br i1 %45, label %46, label %60

46:                                               ; preds = %40
  %47 = tail call i32 @uxListRemove(%struct.xLIST_ITEM* noundef nonnull %41) #19
  %48 = icmp eq i32 %47, 0
  br i1 %48, label %49, label %54

49:                                               ; preds = %46
  %50 = shl nuw i32 1, %31
  %51 = xor i32 %50, -1
  %52 = load volatile i32, i32* @uxTopReadyPriority, align 4, !tbaa !60
  %53 = and i32 %52, %51
  store volatile i32 %53, i32* @uxTopReadyPriority, align 4, !tbaa !60
  br label %54

54:                                               ; preds = %46, %49
  %55 = load i32, i32* %30, align 4, !tbaa !51
  %56 = shl nuw i32 1, %55
  %57 = load volatile i32, i32* @uxTopReadyPriority, align 4, !tbaa !60
  %58 = or i32 %57, %56
  store volatile i32 %58, i32* @uxTopReadyPriority, align 4, !tbaa !60
  %59 = getelementptr inbounds [5 x %struct.xLIST], [5 x %struct.xLIST]* @pxReadyTasksLists, i32 0, i32 %55
  tail call void @vListInsertEnd(%struct.xLIST* noundef nonnull %59, %struct.xLIST_ITEM* noundef nonnull %41) #19
  br label %60

60:                                               ; preds = %40, %54
  br i1 %29, label %62, label %61

61:                                               ; preds = %60
  store volatile i32 268435456, i32* inttoptr (i32 -536810236 to i32*), align 4, !tbaa !18
  tail call void asm sideeffect "dsb", "~{memory}"() #21, !srcloc !87
  tail call void asm sideeffect "isb", ""() #21, !srcloc !88
  br label %62

62:                                               ; preds = %61, %60, %11
  tail call void @vPortExitCritical() #19
  ret void
}

; Function Attrs: noinline nounwind optsize
define dso_local void @vTaskSuspend(%struct.tskTaskControlBlock* noundef %0) local_unnamed_addr #2 {
  tail call void @vPortEnterCritical() #19
  %2 = icmp eq %struct.tskTaskControlBlock* %0, null
  br i1 %2, label %3, label %5

3:                                                ; preds = %1
  %4 = load volatile %struct.tskTaskControlBlock*, %struct.tskTaskControlBlock** @pxCurrentTCB, align 4, !tbaa !7
  br label %5

5:                                                ; preds = %1, %3
  %6 = phi %struct.tskTaskControlBlock* [ %4, %3 ], [ %0, %1 ]
  %7 = getelementptr inbounds %struct.tskTaskControlBlock, %struct.tskTaskControlBlock* %6, i32 0, i32 1
  %8 = tail call i32 @uxListRemove(%struct.xLIST_ITEM* noundef nonnull %7) #19
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %10, label %21

10:                                               ; preds = %5
  %11 = getelementptr inbounds %struct.tskTaskControlBlock, %struct.tskTaskControlBlock* %6, i32 0, i32 3
  %12 = load i32, i32* %11, align 4, !tbaa !51
  %13 = getelementptr inbounds [5 x %struct.xLIST], [5 x %struct.xLIST]* @pxReadyTasksLists, i32 0, i32 %12, i32 0
  %14 = load volatile i32, i32* %13, align 4, !tbaa !65
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %16, label %21

16:                                               ; preds = %10
  %17 = shl nuw i32 1, %12
  %18 = xor i32 %17, -1
  %19 = load volatile i32, i32* @uxTopReadyPriority, align 4, !tbaa !60
  %20 = and i32 %19, %18
  store volatile i32 %20, i32* @uxTopReadyPriority, align 4, !tbaa !60
  br label %21

21:                                               ; preds = %5, %10, %16
  %22 = getelementptr inbounds %struct.tskTaskControlBlock, %struct.tskTaskControlBlock* %6, i32 0, i32 2, i32 4
  %23 = load %struct.xLIST*, %struct.xLIST** %22, align 4, !tbaa !68
  %24 = icmp eq %struct.xLIST* %23, null
  br i1 %24, label %28, label %25

25:                                               ; preds = %21
  %26 = getelementptr inbounds %struct.tskTaskControlBlock, %struct.tskTaskControlBlock* %6, i32 0, i32 2
  %27 = tail call i32 @uxListRemove(%struct.xLIST_ITEM* noundef nonnull %26) #19
  br label %28

28:                                               ; preds = %21, %25
  tail call void @vListInsertEnd(%struct.xLIST* noundef nonnull @xSuspendedTaskList, %struct.xLIST_ITEM* noundef nonnull %7) #19
  %29 = getelementptr inbounds %struct.tskTaskControlBlock, %struct.tskTaskControlBlock* %6, i32 0, i32 11
  %30 = load volatile i8, i8* %29, align 4, !tbaa !58
  %31 = icmp eq i8 %30, 1
  br i1 %31, label %32, label %33

32:                                               ; preds = %28
  store volatile i8 0, i8* %29, align 4, !tbaa !58
  br label %33

33:                                               ; preds = %32, %28
  tail call void @vPortExitCritical() #19
  %34 = load volatile i32, i32* @xSchedulerRunning, align 4, !tbaa !60
  %35 = icmp eq i32 %34, 0
  br i1 %35, label %37, label %36

36:                                               ; preds = %33
  tail call void @vPortEnterCritical() #19
  tail call fastcc void @prvResetNextTaskUnblockTime() #20
  tail call void @vPortExitCritical() #19
  br label %37

37:                                               ; preds = %33, %36
  %38 = load volatile %struct.tskTaskControlBlock*, %struct.tskTaskControlBlock** @pxCurrentTCB, align 4, !tbaa !7
  %39 = icmp eq %struct.tskTaskControlBlock* %6, %38
  br i1 %39, label %40, label %56

40:                                               ; preds = %37
  %41 = load volatile i32, i32* @xSchedulerRunning, align 4, !tbaa !60
  %42 = icmp eq i32 %41, 0
  br i1 %42, label %50, label %43

43:                                               ; preds = %40
  %44 = load volatile i32, i32* @uxSchedulerSuspended, align 4, !tbaa !60
  %45 = icmp eq i32 %44, 0
  br i1 %45, label %49, label %46

46:                                               ; preds = %43
  %47 = tail call i32 asm sideeffect "\09mov $0, $1\09\09\09\09\09\09\09\09\09\09\09\09\0A\09msr basepri, $0\09\09\09\09\09\09\09\09\09\09\09\0A\09isb\09\09\09\09\09\09\09\09\09\09\09\09\09\09\0A\09dsb\09\09\09\09\09\09\09\09\09\09\09\09\09\09\0A", "=r,i,~{memory}"(i32 80) #21, !srcloc !69
  br label %48

48:                                               ; preds = %48, %46
  br label %48

49:                                               ; preds = %43
  store volatile i32 268435456, i32* inttoptr (i32 -536810236 to i32*), align 4, !tbaa !18
  tail call void asm sideeffect "dsb", "~{memory}"() #21, !srcloc !89
  tail call void asm sideeffect "isb", ""() #21, !srcloc !90
  br label %56

50:                                               ; preds = %40
  %51 = load volatile i32, i32* getelementptr inbounds (%struct.xLIST, %struct.xLIST* @xSuspendedTaskList, i32 0, i32 0), align 4, !tbaa !65
  %52 = load volatile i32, i32* @uxCurrentNumberOfTasks, align 4, !tbaa !60
  %53 = icmp eq i32 %51, %52
  br i1 %53, label %54, label %55

54:                                               ; preds = %50
  store volatile %struct.tskTaskControlBlock* null, %struct.tskTaskControlBlock** @pxCurrentTCB, align 4, !tbaa !7
  br label %56

55:                                               ; preds = %50
  tail call void @vTaskSwitchContext() #20
  br label %56

56:                                               ; preds = %37, %49, %55, %54
  ret void
}

; Function Attrs: noinline nounwind optsize
define dso_local void @vTaskSwitchContext() local_unnamed_addr #2 {
  %1 = load volatile i32, i32* @uxSchedulerSuspended, align 4, !tbaa !60
  %2 = icmp eq i32 %1, 0
  br i1 %2, label %4, label %3

3:                                                ; preds = %0
  store volatile i32 1, i32* @xYieldPending, align 4, !tbaa !60
  br label %31

4:                                                ; preds = %0
  store volatile i32 0, i32* @xYieldPending, align 4, !tbaa !60
  %5 = load volatile i32, i32* @uxTopReadyPriority, align 4, !tbaa !60
  %6 = tail call i8 asm sideeffect "clz $0, $1", "=r,r,~{memory}"(i32 %5) #21, !srcloc !91
  %7 = zext i8 %6 to i32
  %8 = sub nsw i32 31, %7
  %9 = getelementptr inbounds [5 x %struct.xLIST], [5 x %struct.xLIST]* @pxReadyTasksLists, i32 0, i32 %8, i32 0
  %10 = load volatile i32, i32* %9, align 4, !tbaa !65
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %12, label %15

12:                                               ; preds = %4
  %13 = tail call i32 asm sideeffect "\09mov $0, $1\09\09\09\09\09\09\09\09\09\09\09\09\0A\09msr basepri, $0\09\09\09\09\09\09\09\09\09\09\09\0A\09isb\09\09\09\09\09\09\09\09\09\09\09\09\09\09\0A\09dsb\09\09\09\09\09\09\09\09\09\09\09\09\09\09\0A", "=r,i,~{memory}"(i32 80) #21, !srcloc !69
  br label %14

14:                                               ; preds = %14, %12
  br label %14

15:                                               ; preds = %4
  %16 = getelementptr inbounds [5 x %struct.xLIST], [5 x %struct.xLIST]* @pxReadyTasksLists, i32 0, i32 %8, i32 1
  %17 = load %struct.xLIST_ITEM*, %struct.xLIST_ITEM** %16, align 4, !tbaa !92
  %18 = getelementptr inbounds %struct.xLIST_ITEM, %struct.xLIST_ITEM* %17, i32 0, i32 1
  %19 = load %struct.xLIST_ITEM*, %struct.xLIST_ITEM** %18, align 4, !tbaa !93
  store %struct.xLIST_ITEM* %19, %struct.xLIST_ITEM** %16, align 4, !tbaa !92
  %20 = getelementptr inbounds [5 x %struct.xLIST], [5 x %struct.xLIST]* @pxReadyTasksLists, i32 0, i32 %8, i32 2
  %21 = bitcast %struct.xMINI_LIST_ITEM* %20 to %struct.xLIST_ITEM*
  %22 = icmp eq %struct.xLIST_ITEM* %19, %21
  br i1 %22, label %23, label %26

23:                                               ; preds = %15
  %24 = getelementptr inbounds %struct.xLIST_ITEM, %struct.xLIST_ITEM* %19, i32 0, i32 1
  %25 = load %struct.xLIST_ITEM*, %struct.xLIST_ITEM** %24, align 4, !tbaa !93
  store %struct.xLIST_ITEM* %25, %struct.xLIST_ITEM** %16, align 4, !tbaa !92
  br label %26

26:                                               ; preds = %23, %15
  %27 = phi %struct.xLIST_ITEM* [ %25, %23 ], [ %19, %15 ]
  %28 = getelementptr inbounds %struct.xLIST_ITEM, %struct.xLIST_ITEM* %27, i32 0, i32 3
  %29 = bitcast i8** %28 to %struct.tskTaskControlBlock**
  %30 = load %struct.tskTaskControlBlock*, %struct.tskTaskControlBlock** %29, align 4, !tbaa !73
  store volatile %struct.tskTaskControlBlock* %30, %struct.tskTaskControlBlock** @pxCurrentTCB, align 4, !tbaa !7
  br label %31

31:                                               ; preds = %26, %3
  ret void
}

; Function Attrs: noinline nounwind optsize
define dso_local void @vTaskResume(%struct.tskTaskControlBlock* noundef %0) local_unnamed_addr #2 {
  %2 = icmp eq %struct.tskTaskControlBlock* %0, null
  br i1 %2, label %3, label %6

3:                                                ; preds = %1
  %4 = tail call i32 asm sideeffect "\09mov $0, $1\09\09\09\09\09\09\09\09\09\09\09\09\0A\09msr basepri, $0\09\09\09\09\09\09\09\09\09\09\09\0A\09isb\09\09\09\09\09\09\09\09\09\09\09\09\09\09\0A\09dsb\09\09\09\09\09\09\09\09\09\09\09\09\09\09\0A", "=r,i,~{memory}"(i32 80) #21, !srcloc !69
  br label %5

5:                                                ; preds = %5, %3
  br label %5

6:                                                ; preds = %1
  %7 = load volatile %struct.tskTaskControlBlock*, %struct.tskTaskControlBlock** @pxCurrentTCB, align 4, !tbaa !7
  %8 = icmp eq %struct.tskTaskControlBlock* %7, %0
  br i1 %8, label %28, label %9

9:                                                ; preds = %6
  tail call void @vPortEnterCritical() #19
  %10 = tail call fastcc i32 @prvTaskIsTaskSuspended(%struct.tskTaskControlBlock* noundef nonnull %0) #20
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %27, label %12

12:                                               ; preds = %9
  %13 = getelementptr inbounds %struct.tskTaskControlBlock, %struct.tskTaskControlBlock* %0, i32 0, i32 1
  %14 = tail call i32 @uxListRemove(%struct.xLIST_ITEM* noundef nonnull %13) #19
  %15 = getelementptr inbounds %struct.tskTaskControlBlock, %struct.tskTaskControlBlock* %0, i32 0, i32 3
  %16 = load i32, i32* %15, align 4, !tbaa !51
  %17 = shl nuw i32 1, %16
  %18 = load volatile i32, i32* @uxTopReadyPriority, align 4, !tbaa !60
  %19 = or i32 %18, %17
  store volatile i32 %19, i32* @uxTopReadyPriority, align 4, !tbaa !60
  %20 = getelementptr inbounds [5 x %struct.xLIST], [5 x %struct.xLIST]* @pxReadyTasksLists, i32 0, i32 %16
  tail call void @vListInsertEnd(%struct.xLIST* noundef nonnull %20, %struct.xLIST_ITEM* noundef nonnull %13) #19
  %21 = load i32, i32* %15, align 4, !tbaa !51
  %22 = load volatile %struct.tskTaskControlBlock*, %struct.tskTaskControlBlock** @pxCurrentTCB, align 4, !tbaa !7
  %23 = getelementptr inbounds %struct.tskTaskControlBlock, %struct.tskTaskControlBlock* %22, i32 0, i32 3
  %24 = load i32, i32* %23, align 4, !tbaa !51
  %25 = icmp ult i32 %21, %24
  br i1 %25, label %27, label %26

26:                                               ; preds = %12
  store volatile i32 268435456, i32* inttoptr (i32 -536810236 to i32*), align 4, !tbaa !18
  tail call void asm sideeffect "dsb", "~{memory}"() #21, !srcloc !94
  tail call void asm sideeffect "isb", ""() #21, !srcloc !95
  br label %27

27:                                               ; preds = %9, %26, %12
  tail call void @vPortExitCritical() #19
  br label %28

28:                                               ; preds = %6, %27
  ret void
}

; Function Attrs: noinline nounwind optsize
define internal fastcc i32 @prvTaskIsTaskSuspended(%struct.tskTaskControlBlock* noundef readonly %0) unnamed_addr #2 {
  %2 = icmp eq %struct.tskTaskControlBlock* %0, null
  br i1 %2, label %3, label %6

3:                                                ; preds = %1
  %4 = tail call i32 asm sideeffect "\09mov $0, $1\09\09\09\09\09\09\09\09\09\09\09\09\0A\09msr basepri, $0\09\09\09\09\09\09\09\09\09\09\09\0A\09isb\09\09\09\09\09\09\09\09\09\09\09\09\09\09\0A\09dsb\09\09\09\09\09\09\09\09\09\09\09\09\09\09\0A", "=r,i,~{memory}"(i32 80) #21, !srcloc !69
  br label %5

5:                                                ; preds = %5, %3
  br label %5

6:                                                ; preds = %1
  %7 = getelementptr inbounds %struct.tskTaskControlBlock, %struct.tskTaskControlBlock* %0, i32 0, i32 1, i32 4
  %8 = load %struct.xLIST*, %struct.xLIST** %7, align 4, !tbaa !84
  %9 = icmp eq %struct.xLIST* %8, @xSuspendedTaskList
  br i1 %9, label %10, label %15

10:                                               ; preds = %6
  %11 = getelementptr inbounds %struct.tskTaskControlBlock, %struct.tskTaskControlBlock* %0, i32 0, i32 2, i32 4
  %12 = load %struct.xLIST*, %struct.xLIST** %11, align 4, !tbaa !68
  %13 = icmp eq %struct.xLIST* %12, null
  %14 = zext i1 %13 to i32
  br label %15

15:                                               ; preds = %10, %6
  %16 = phi i32 [ 0, %6 ], [ %14, %10 ]
  ret i32 %16
}

; Function Attrs: noinline nounwind optsize
define dso_local i32 @xTaskResumeFromISR(%struct.tskTaskControlBlock* noundef %0) local_unnamed_addr #2 {
  %2 = icmp eq %struct.tskTaskControlBlock* %0, null
  br i1 %2, label %3, label %6

3:                                                ; preds = %1
  %4 = tail call i32 asm sideeffect "\09mov $0, $1\09\09\09\09\09\09\09\09\09\09\09\09\0A\09msr basepri, $0\09\09\09\09\09\09\09\09\09\09\09\0A\09isb\09\09\09\09\09\09\09\09\09\09\09\09\09\09\0A\09dsb\09\09\09\09\09\09\09\09\09\09\09\09\09\09\0A", "=r,i,~{memory}"(i32 80) #21, !srcloc !69
  br label %5

5:                                                ; preds = %5, %3
  br label %5

6:                                                ; preds = %1
  tail call void @vPortValidateInterruptPriority() #19
  %7 = tail call { i32, i32 } asm sideeffect "\09mrs $0, basepri\09\09\09\09\09\09\09\09\09\09\09\0A\09mov $1, $2\09\09\09\09\09\09\09\09\09\09\09\09\0A\09msr basepri, $1\09\09\09\09\09\09\09\09\09\09\09\0A\09isb\09\09\09\09\09\09\09\09\09\09\09\09\09\09\0A\09dsb\09\09\09\09\09\09\09\09\09\09\09\09\09\09\0A", "=r,=r,i,~{memory}"(i32 80) #21, !srcloc !85
  %8 = tail call fastcc i32 @prvTaskIsTaskSuspended(%struct.tskTaskControlBlock* noundef nonnull %0) #20
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %30, label %10

10:                                               ; preds = %6
  %11 = load volatile i32, i32* @uxSchedulerSuspended, align 4, !tbaa !60
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %13, label %28

13:                                               ; preds = %10
  %14 = getelementptr inbounds %struct.tskTaskControlBlock, %struct.tskTaskControlBlock* %0, i32 0, i32 3
  %15 = load i32, i32* %14, align 4, !tbaa !51
  %16 = load volatile %struct.tskTaskControlBlock*, %struct.tskTaskControlBlock** @pxCurrentTCB, align 4, !tbaa !7
  %17 = getelementptr inbounds %struct.tskTaskControlBlock, %struct.tskTaskControlBlock* %16, i32 0, i32 3
  %18 = load i32, i32* %17, align 4, !tbaa !51
  %19 = icmp uge i32 %15, %18
  %20 = zext i1 %19 to i32
  %21 = getelementptr inbounds %struct.tskTaskControlBlock, %struct.tskTaskControlBlock* %0, i32 0, i32 1
  %22 = tail call i32 @uxListRemove(%struct.xLIST_ITEM* noundef nonnull %21) #19
  %23 = load i32, i32* %14, align 4, !tbaa !51
  %24 = shl nuw i32 1, %23
  %25 = load volatile i32, i32* @uxTopReadyPriority, align 4, !tbaa !60
  %26 = or i32 %25, %24
  store volatile i32 %26, i32* @uxTopReadyPriority, align 4, !tbaa !60
  %27 = getelementptr inbounds [5 x %struct.xLIST], [5 x %struct.xLIST]* @pxReadyTasksLists, i32 0, i32 %23
  tail call void @vListInsertEnd(%struct.xLIST* noundef nonnull %27, %struct.xLIST_ITEM* noundef nonnull %21) #19
  br label %30

28:                                               ; preds = %10
  %29 = getelementptr inbounds %struct.tskTaskControlBlock, %struct.tskTaskControlBlock* %0, i32 0, i32 2
  tail call void @vListInsertEnd(%struct.xLIST* noundef nonnull @xPendingReadyList, %struct.xLIST_ITEM* noundef nonnull %29) #19
  br label %30

30:                                               ; preds = %6, %13, %28
  %31 = phi i32 [ %20, %13 ], [ 0, %28 ], [ 0, %6 ]
  %32 = extractvalue { i32, i32 } %7, 0
  tail call void asm sideeffect "\09msr basepri, $0\09", "r,~{memory}"(i32 %32) #21, !srcloc !86
  ret i32 %31
}

; Function Attrs: noinline nounwind optsize
define dso_local void @vTaskStartScheduler() local_unnamed_addr #2 {
  %1 = tail call i32 @xTaskCreate(void (i8*)* noundef nonnull @prvIdleTask, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.7, i32 0, i32 0), i16 noundef zeroext 130, i8* noundef null, i32 noundef 0, %struct.tskTaskControlBlock** noundef nonnull @xIdleTaskHandle) #20
  %2 = icmp eq i32 %1, 1
  br i1 %2, label %3, label %5

3:                                                ; preds = %0
  %4 = tail call i32 @xTimerCreateTimerTask() #19
  br label %5

5:                                                ; preds = %0, %3
  %6 = phi i32 [ %4, %3 ], [ %1, %0 ]
  switch i32 %6, label %13 [
    i32 1, label %7
    i32 -1, label %10
  ]

7:                                                ; preds = %5
  %8 = tail call i32 asm sideeffect "\09mov $0, $1\09\09\09\09\09\09\09\09\09\09\09\09\0A\09msr basepri, $0\09\09\09\09\09\09\09\09\09\09\09\0A\09isb\09\09\09\09\09\09\09\09\09\09\09\09\09\09\0A\09dsb\09\09\09\09\09\09\09\09\09\09\09\09\09\09\0A", "=r,i,~{memory}"(i32 80) #21, !srcloc !69
  store volatile i32 -1, i32* @xNextTaskUnblockTime, align 4, !tbaa !18
  store volatile i32 1, i32* @xSchedulerRunning, align 4, !tbaa !60
  store volatile i32 0, i32* @xTickCount, align 4, !tbaa !18
  %9 = tail call i32 @xPortStartScheduler() #19
  br label %13

10:                                               ; preds = %5
  %11 = tail call i32 asm sideeffect "\09mov $0, $1\09\09\09\09\09\09\09\09\09\09\09\09\0A\09msr basepri, $0\09\09\09\09\09\09\09\09\09\09\09\0A\09isb\09\09\09\09\09\09\09\09\09\09\09\09\09\09\0A\09dsb\09\09\09\09\09\09\09\09\09\09\09\09\09\09\0A", "=r,i,~{memory}"(i32 80) #21, !srcloc !69
  br label %12

12:                                               ; preds = %12, %10
  br label %12

13:                                               ; preds = %5, %7
  ret void
}

; Function Attrs: noinline noreturn nounwind optsize
define internal void @prvIdleTask(i8* nocapture noundef readnone %0) #0 {
  br label %2

2:                                                ; preds = %5, %1
  tail call fastcc void @prvCheckTasksWaitingTermination() #20
  %3 = load volatile i32, i32* getelementptr inbounds ([5 x %struct.xLIST], [5 x %struct.xLIST]* @pxReadyTasksLists, i32 0, i32 0, i32 0), align 4, !tbaa !65
  %4 = icmp ugt i32 %3, 1
  br i1 %4, label %6, label %5

5:                                                ; preds = %2, %6
  br label %2

6:                                                ; preds = %2
  store volatile i32 268435456, i32* inttoptr (i32 -536810236 to i32*), align 4, !tbaa !18
  tail call void asm sideeffect "dsb", "~{memory}"() #21, !srcloc !96
  tail call void asm sideeffect "isb", ""() #21, !srcloc !97
  br label %5
}

; Function Attrs: noinline nounwind optsize
define internal fastcc void @prvCheckTasksWaitingTermination() unnamed_addr #2 {
  %1 = load volatile i32, i32* @uxDeletedTasksWaitingCleanUp, align 4, !tbaa !60
  %2 = icmp eq i32 %1, 0
  br i1 %2, label %16, label %3

3:                                                ; preds = %0, %3
  tail call void @vPortEnterCritical() #19
  %4 = load %struct.xLIST_ITEM*, %struct.xLIST_ITEM** getelementptr inbounds (%struct.xLIST, %struct.xLIST* @xTasksWaitingTermination, i32 0, i32 2, i32 1), align 4, !tbaa !72
  %5 = getelementptr inbounds %struct.xLIST_ITEM, %struct.xLIST_ITEM* %4, i32 0, i32 3
  %6 = bitcast i8** %5 to %struct.tskTaskControlBlock**
  %7 = load %struct.tskTaskControlBlock*, %struct.tskTaskControlBlock** %6, align 4, !tbaa !73
  %8 = getelementptr inbounds %struct.tskTaskControlBlock, %struct.tskTaskControlBlock* %7, i32 0, i32 1
  %9 = tail call i32 @uxListRemove(%struct.xLIST_ITEM* noundef nonnull %8) #19
  %10 = load volatile i32, i32* @uxCurrentNumberOfTasks, align 4, !tbaa !60
  %11 = add i32 %10, -1
  store volatile i32 %11, i32* @uxCurrentNumberOfTasks, align 4, !tbaa !60
  %12 = load volatile i32, i32* @uxDeletedTasksWaitingCleanUp, align 4, !tbaa !60
  %13 = add i32 %12, -1
  store volatile i32 %13, i32* @uxDeletedTasksWaitingCleanUp, align 4, !tbaa !60
  tail call void @vPortExitCritical() #19
  tail call fastcc void @prvDeleteTCB(%struct.tskTaskControlBlock* noundef %7) #20
  %14 = load volatile i32, i32* @uxDeletedTasksWaitingCleanUp, align 4, !tbaa !60
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %16, label %3, !llvm.loop !98

16:                                               ; preds = %3, %0
  ret void
}

; Function Attrs: noinline nounwind optsize
define dso_local void @vTaskEndScheduler() local_unnamed_addr #2 {
  %1 = tail call i32 asm sideeffect "\09mov $0, $1\09\09\09\09\09\09\09\09\09\09\09\09\0A\09msr basepri, $0\09\09\09\09\09\09\09\09\09\09\09\0A\09isb\09\09\09\09\09\09\09\09\09\09\09\09\09\09\0A\09dsb\09\09\09\09\09\09\09\09\09\09\09\09\09\09\0A", "=r,i,~{memory}"(i32 80) #21, !srcloc !69
  store volatile i32 0, i32* @xSchedulerRunning, align 4, !tbaa !60
  tail call void @vPortEndScheduler() #19
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nounwind optsize willreturn
define dso_local i32 @xTaskGetTickCount() local_unnamed_addr #7 {
  %1 = load volatile i32, i32* @xTickCount, align 4, !tbaa !18
  ret i32 %1
}

; Function Attrs: noinline nounwind optsize
define dso_local i32 @xTaskGetTickCountFromISR() local_unnamed_addr #2 {
  tail call void @vPortValidateInterruptPriority() #19
  %1 = load volatile i32, i32* @xTickCount, align 4, !tbaa !18
  ret i32 %1
}

; Function Attrs: mustprogress nofree noinline norecurse nounwind optsize willreturn
define dso_local i32 @uxTaskGetNumberOfTasks() local_unnamed_addr #7 {
  %1 = load volatile i32, i32* @uxCurrentNumberOfTasks, align 4, !tbaa !60
  ret i32 %1
}

; Function Attrs: noinline nounwind optsize
define dso_local i8* @pcTaskGetName(%struct.tskTaskControlBlock* noundef readnone %0) local_unnamed_addr #2 {
  %2 = icmp eq %struct.tskTaskControlBlock* %0, null
  br i1 %2, label %3, label %9

3:                                                ; preds = %1
  %4 = load volatile %struct.tskTaskControlBlock*, %struct.tskTaskControlBlock** @pxCurrentTCB, align 4, !tbaa !7
  %5 = icmp eq %struct.tskTaskControlBlock* %4, null
  br i1 %5, label %6, label %9

6:                                                ; preds = %3
  %7 = tail call i32 asm sideeffect "\09mov $0, $1\09\09\09\09\09\09\09\09\09\09\09\09\0A\09msr basepri, $0\09\09\09\09\09\09\09\09\09\09\09\0A\09isb\09\09\09\09\09\09\09\09\09\09\09\09\09\09\0A\09dsb\09\09\09\09\09\09\09\09\09\09\09\09\09\09\0A", "=r,i,~{memory}"(i32 80) #21, !srcloc !69
  br label %8

8:                                                ; preds = %8, %6
  br label %8

9:                                                ; preds = %1, %3
  %10 = phi %struct.tskTaskControlBlock* [ %4, %3 ], [ %0, %1 ]
  %11 = getelementptr inbounds %struct.tskTaskControlBlock, %struct.tskTaskControlBlock* %10, i32 0, i32 5, i32 0
  ret i8* %11
}

; Function Attrs: noinline nounwind optsize
define dso_local i32 @uxTaskGetSystemState(%struct.xTASK_STATUS* nocapture noundef writeonly %0, i32 noundef %1, i32* noundef writeonly %2) local_unnamed_addr #2 {
  tail call void @vTaskSuspendAll() #20
  %4 = load volatile i32, i32* @uxCurrentNumberOfTasks, align 4, !tbaa !60
  %5 = icmp ugt i32 %4, %1
  br i1 %5, label %32, label %6

6:                                                ; preds = %3, %6
  %7 = phi i32 [ %13, %6 ], [ 0, %3 ]
  %8 = phi i32 [ %9, %6 ], [ 5, %3 ]
  %9 = add nsw i32 %8, -1
  %10 = getelementptr inbounds %struct.xTASK_STATUS, %struct.xTASK_STATUS* %0, i32 %7
  %11 = getelementptr inbounds [5 x %struct.xLIST], [5 x %struct.xLIST]* @pxReadyTasksLists, i32 0, i32 %9
  %12 = tail call fastcc i32 @prvListTasksWithinSingleList(%struct.xTASK_STATUS* noundef %10, %struct.xLIST* noundef nonnull %11, i32 noundef 1) #20
  %13 = add i32 %12, %7
  %14 = icmp eq i32 %9, 0
  br i1 %14, label %15, label %6, !llvm.loop !99

15:                                               ; preds = %6
  %16 = getelementptr inbounds %struct.xTASK_STATUS, %struct.xTASK_STATUS* %0, i32 %13
  %17 = load volatile %struct.xLIST*, %struct.xLIST** @pxDelayedTaskList, align 4, !tbaa !7
  %18 = tail call fastcc i32 @prvListTasksWithinSingleList(%struct.xTASK_STATUS* noundef %16, %struct.xLIST* noundef %17, i32 noundef 2) #20
  %19 = add i32 %18, %13
  %20 = getelementptr inbounds %struct.xTASK_STATUS, %struct.xTASK_STATUS* %0, i32 %19
  %21 = load volatile %struct.xLIST*, %struct.xLIST** @pxOverflowDelayedTaskList, align 4, !tbaa !7
  %22 = tail call fastcc i32 @prvListTasksWithinSingleList(%struct.xTASK_STATUS* noundef %20, %struct.xLIST* noundef %21, i32 noundef 2) #20
  %23 = add i32 %22, %19
  %24 = getelementptr inbounds %struct.xTASK_STATUS, %struct.xTASK_STATUS* %0, i32 %23
  %25 = tail call fastcc i32 @prvListTasksWithinSingleList(%struct.xTASK_STATUS* noundef %24, %struct.xLIST* noundef nonnull @xTasksWaitingTermination, i32 noundef 4) #20
  %26 = add i32 %23, %25
  %27 = getelementptr inbounds %struct.xTASK_STATUS, %struct.xTASK_STATUS* %0, i32 %26
  %28 = tail call fastcc i32 @prvListTasksWithinSingleList(%struct.xTASK_STATUS* noundef %27, %struct.xLIST* noundef nonnull @xSuspendedTaskList, i32 noundef 3) #20
  %29 = add i32 %26, %28
  %30 = icmp eq i32* %2, null
  br i1 %30, label %32, label %31

31:                                               ; preds = %15
  store i32 0, i32* %2, align 4, !tbaa !18
  br label %32

32:                                               ; preds = %3, %15, %31
  %33 = phi i32 [ %29, %31 ], [ %29, %15 ], [ 0, %3 ]
  %34 = tail call i32 @xTaskResumeAll() #20
  ret i32 %33
}

; Function Attrs: noinline nounwind optsize
define internal fastcc i32 @prvListTasksWithinSingleList(%struct.xTASK_STATUS* nocapture noundef writeonly %0, %struct.xLIST* noundef %1, i32 noundef %2) unnamed_addr #2 {
  %4 = getelementptr inbounds %struct.xLIST, %struct.xLIST* %1, i32 0, i32 0
  %5 = load volatile i32, i32* %4, align 4, !tbaa !65
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %42, label %7

7:                                                ; preds = %3
  %8 = getelementptr inbounds %struct.xLIST, %struct.xLIST* %1, i32 0, i32 1
  %9 = load %struct.xLIST_ITEM*, %struct.xLIST_ITEM** %8, align 4, !tbaa !92
  %10 = getelementptr inbounds %struct.xLIST_ITEM, %struct.xLIST_ITEM* %9, i32 0, i32 1
  %11 = load %struct.xLIST_ITEM*, %struct.xLIST_ITEM** %10, align 4, !tbaa !93
  %12 = getelementptr inbounds %struct.xLIST, %struct.xLIST* %1, i32 0, i32 2
  %13 = bitcast %struct.xMINI_LIST_ITEM* %12 to %struct.xLIST_ITEM*
  %14 = icmp eq %struct.xLIST_ITEM* %11, %13
  br i1 %14, label %15, label %18

15:                                               ; preds = %7
  %16 = getelementptr inbounds %struct.xLIST_ITEM, %struct.xLIST_ITEM* %11, i32 0, i32 1
  %17 = load %struct.xLIST_ITEM*, %struct.xLIST_ITEM** %16, align 4, !tbaa !93
  br label %18

18:                                               ; preds = %15, %7
  %19 = phi %struct.xLIST_ITEM* [ %17, %15 ], [ %11, %7 ]
  %20 = getelementptr inbounds %struct.xLIST_ITEM, %struct.xLIST_ITEM* %19, i32 0, i32 3
  %21 = bitcast i8** %20 to %struct.tskTaskControlBlock**
  %22 = load %struct.tskTaskControlBlock*, %struct.tskTaskControlBlock** %21, align 4, !tbaa !73
  %23 = getelementptr inbounds %struct.xLIST, %struct.xLIST* %1, i32 0, i32 2, i32 1
  br label %24

24:                                               ; preds = %40, %18
  %25 = phi %struct.xLIST_ITEM* [ %19, %18 ], [ %41, %40 ]
  %26 = phi i32 [ 0, %18 ], [ %38, %40 ]
  %27 = getelementptr inbounds %struct.xLIST_ITEM, %struct.xLIST_ITEM* %25, i32 0, i32 1
  %28 = load %struct.xLIST_ITEM*, %struct.xLIST_ITEM** %27, align 4, !tbaa !93
  store %struct.xLIST_ITEM* %28, %struct.xLIST_ITEM** %8, align 4, !tbaa !92
  %29 = icmp eq %struct.xLIST_ITEM* %28, %13
  br i1 %29, label %30, label %32

30:                                               ; preds = %24
  %31 = load %struct.xLIST_ITEM*, %struct.xLIST_ITEM** %23, align 4, !tbaa !93
  store %struct.xLIST_ITEM* %31, %struct.xLIST_ITEM** %8, align 4, !tbaa !92
  br label %32

32:                                               ; preds = %30, %24
  %33 = phi %struct.xLIST_ITEM* [ %31, %30 ], [ %28, %24 ]
  %34 = getelementptr inbounds %struct.xLIST_ITEM, %struct.xLIST_ITEM* %33, i32 0, i32 3
  %35 = bitcast i8** %34 to %struct.tskTaskControlBlock**
  %36 = load %struct.tskTaskControlBlock*, %struct.tskTaskControlBlock** %35, align 4, !tbaa !73
  %37 = getelementptr inbounds %struct.xTASK_STATUS, %struct.xTASK_STATUS* %0, i32 %26
  tail call void @vTaskGetInfo(%struct.tskTaskControlBlock* noundef %36, %struct.xTASK_STATUS* noundef %37, i32 noundef 1, i32 noundef %2) #20
  %38 = add i32 %26, 1
  %39 = icmp eq %struct.tskTaskControlBlock* %36, %22
  br i1 %39, label %42, label %40, !llvm.loop !100

40:                                               ; preds = %32
  %41 = load %struct.xLIST_ITEM*, %struct.xLIST_ITEM** %8, align 4, !tbaa !92
  br label %24

42:                                               ; preds = %32, %3
  %43 = phi i32 [ 0, %3 ], [ %38, %32 ]
  ret i32 %43
}

; Function Attrs: noinline nounwind optsize
define dso_local void @vTaskGetInfo(%struct.tskTaskControlBlock* noundef %0, %struct.xTASK_STATUS* nocapture noundef writeonly %1, i32 noundef %2, i32 noundef %3) local_unnamed_addr #2 {
  %5 = icmp eq %struct.tskTaskControlBlock* %0, null
  br i1 %5, label %6, label %8

6:                                                ; preds = %4
  %7 = load volatile %struct.tskTaskControlBlock*, %struct.tskTaskControlBlock** @pxCurrentTCB, align 4, !tbaa !7
  br label %8

8:                                                ; preds = %4, %6
  %9 = phi %struct.tskTaskControlBlock* [ %7, %6 ], [ %0, %4 ]
  %10 = getelementptr inbounds %struct.xTASK_STATUS, %struct.xTASK_STATUS* %1, i32 0, i32 0
  store %struct.tskTaskControlBlock* %9, %struct.tskTaskControlBlock** %10, align 4, !tbaa !101
  %11 = getelementptr inbounds %struct.tskTaskControlBlock, %struct.tskTaskControlBlock* %9, i32 0, i32 5, i32 0
  %12 = getelementptr inbounds %struct.xTASK_STATUS, %struct.xTASK_STATUS* %1, i32 0, i32 1
  store i8* %11, i8** %12, align 4, !tbaa !104
  %13 = getelementptr inbounds %struct.tskTaskControlBlock, %struct.tskTaskControlBlock* %9, i32 0, i32 3
  %14 = load i32, i32* %13, align 4, !tbaa !51
  %15 = getelementptr inbounds %struct.xTASK_STATUS, %struct.xTASK_STATUS* %1, i32 0, i32 4
  store i32 %14, i32* %15, align 4, !tbaa !105
  %16 = getelementptr inbounds %struct.tskTaskControlBlock, %struct.tskTaskControlBlock* %9, i32 0, i32 4
  %17 = load i32*, i32** %16, align 4, !tbaa !46
  %18 = getelementptr inbounds %struct.xTASK_STATUS, %struct.xTASK_STATUS* %1, i32 0, i32 7
  store i32* %17, i32** %18, align 4, !tbaa !106
  %19 = getelementptr inbounds %struct.tskTaskControlBlock, %struct.tskTaskControlBlock* %9, i32 0, i32 6
  %20 = load i32, i32* %19, align 4, !tbaa !61
  %21 = getelementptr inbounds %struct.xTASK_STATUS, %struct.xTASK_STATUS* %1, i32 0, i32 2
  store i32 %20, i32* %21, align 4, !tbaa !107
  %22 = getelementptr inbounds %struct.tskTaskControlBlock, %struct.tskTaskControlBlock* %9, i32 0, i32 8
  %23 = load i32, i32* %22, align 4, !tbaa !52
  %24 = getelementptr inbounds %struct.xTASK_STATUS, %struct.xTASK_STATUS* %1, i32 0, i32 5
  store i32 %23, i32* %24, align 4, !tbaa !108
  %25 = getelementptr inbounds %struct.xTASK_STATUS, %struct.xTASK_STATUS* %1, i32 0, i32 6
  store i32 0, i32* %25, align 4, !tbaa !109
  %26 = icmp eq i32 %3, 5
  br i1 %26, label %41, label %27

27:                                               ; preds = %8
  %28 = load volatile %struct.tskTaskControlBlock*, %struct.tskTaskControlBlock** @pxCurrentTCB, align 4, !tbaa !7
  %29 = icmp eq %struct.tskTaskControlBlock* %9, %28
  %30 = getelementptr inbounds %struct.xTASK_STATUS, %struct.xTASK_STATUS* %1, i32 0, i32 3
  br i1 %29, label %31, label %32

31:                                               ; preds = %27
  store i32 0, i32* %30, align 4, !tbaa !110
  br label %44

32:                                               ; preds = %27
  store i32 %3, i32* %30, align 4, !tbaa !110
  %33 = icmp eq i32 %3, 3
  br i1 %33, label %34, label %44

34:                                               ; preds = %32
  tail call void @vTaskSuspendAll() #20
  %35 = getelementptr inbounds %struct.tskTaskControlBlock, %struct.tskTaskControlBlock* %9, i32 0, i32 2, i32 4
  %36 = load %struct.xLIST*, %struct.xLIST** %35, align 4, !tbaa !68
  %37 = icmp eq %struct.xLIST* %36, null
  br i1 %37, label %39, label %38

38:                                               ; preds = %34
  store i32 2, i32* %30, align 4, !tbaa !110
  br label %39

39:                                               ; preds = %38, %34
  %40 = tail call i32 @xTaskResumeAll() #20
  br label %44

41:                                               ; preds = %8
  %42 = tail call i32 @eTaskGetState(%struct.tskTaskControlBlock* noundef nonnull %9) #20
  %43 = getelementptr inbounds %struct.xTASK_STATUS, %struct.xTASK_STATUS* %1, i32 0, i32 3
  store i32 %42, i32* %43, align 4, !tbaa !110
  br label %44

44:                                               ; preds = %31, %39, %32, %41
  %45 = icmp eq i32 %2, 0
  br i1 %45, label %50, label %46

46:                                               ; preds = %44
  %47 = bitcast i32** %16 to i8**
  %48 = load i8*, i8** %47, align 4, !tbaa !46
  %49 = tail call fastcc zeroext i16 @prvTaskCheckFreeStackSpace(i8* noundef %48) #20
  br label %50

50:                                               ; preds = %44, %46
  %51 = phi i16 [ %49, %46 ], [ 0, %44 ]
  %52 = getelementptr inbounds %struct.xTASK_STATUS, %struct.xTASK_STATUS* %1, i32 0, i32 8
  store i16 %51, i16* %52, align 4
  ret void
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize readonly
define internal fastcc zeroext i16 @prvTaskCheckFreeStackSpace(i8* nocapture noundef readonly %0) unnamed_addr #8 {
  %2 = load i8, i8* %0, align 1, !tbaa !45
  %3 = icmp eq i8 %2, -91
  br i1 %3, label %4, label %14

4:                                                ; preds = %1, %4
  %5 = phi i32 [ %8, %4 ], [ 0, %1 ]
  %6 = phi i8* [ %7, %4 ], [ %0, %1 ]
  %7 = getelementptr inbounds i8, i8* %6, i32 1
  %8 = add i32 %5, 1
  %9 = load i8, i8* %7, align 1, !tbaa !45
  %10 = icmp eq i8 %9, -91
  br i1 %10, label %4, label %11, !llvm.loop !111

11:                                               ; preds = %4
  %12 = lshr i32 %8, 2
  %13 = trunc i32 %12 to i16
  br label %14

14:                                               ; preds = %11, %1
  %15 = phi i16 [ 0, %1 ], [ %13, %11 ]
  ret i16 %15
}

; Function Attrs: noinline nounwind optsize
define dso_local i32 @xTaskCatchUpTicks(i32 noundef %0) local_unnamed_addr #2 {
  %2 = load volatile i32, i32* @uxSchedulerSuspended, align 4, !tbaa !60
  %3 = icmp eq i32 %2, 0
  br i1 %3, label %7, label %4

4:                                                ; preds = %1
  %5 = tail call i32 asm sideeffect "\09mov $0, $1\09\09\09\09\09\09\09\09\09\09\09\09\0A\09msr basepri, $0\09\09\09\09\09\09\09\09\09\09\09\0A\09isb\09\09\09\09\09\09\09\09\09\09\09\09\09\09\0A\09dsb\09\09\09\09\09\09\09\09\09\09\09\09\09\09\0A", "=r,i,~{memory}"(i32 80) #21, !srcloc !69
  br label %6

6:                                                ; preds = %6, %4
  br label %6

7:                                                ; preds = %1
  tail call void @vTaskSuspendAll() #20
  %8 = load volatile i32, i32* @xPendedTicks, align 4, !tbaa !18
  %9 = add i32 %8, %0
  store volatile i32 %9, i32* @xPendedTicks, align 4, !tbaa !18
  %10 = tail call i32 @xTaskResumeAll() #20
  ret i32 %10
}

; Function Attrs: noinline nounwind optsize
define dso_local void @vTaskPlaceOnEventList(%struct.xLIST* noundef %0, i32 noundef %1) local_unnamed_addr #2 {
  %3 = icmp eq %struct.xLIST* %0, null
  br i1 %3, label %4, label %7

4:                                                ; preds = %2
  %5 = tail call i32 asm sideeffect "\09mov $0, $1\09\09\09\09\09\09\09\09\09\09\09\09\0A\09msr basepri, $0\09\09\09\09\09\09\09\09\09\09\09\0A\09isb\09\09\09\09\09\09\09\09\09\09\09\09\09\09\0A\09dsb\09\09\09\09\09\09\09\09\09\09\09\09\09\09\0A", "=r,i,~{memory}"(i32 80) #21, !srcloc !69
  br label %6

6:                                                ; preds = %6, %4
  br label %6

7:                                                ; preds = %2
  %8 = load volatile %struct.tskTaskControlBlock*, %struct.tskTaskControlBlock** @pxCurrentTCB, align 4, !tbaa !7
  %9 = getelementptr inbounds %struct.tskTaskControlBlock, %struct.tskTaskControlBlock* %8, i32 0, i32 2
  tail call void @vListInsert(%struct.xLIST* noundef nonnull %0, %struct.xLIST_ITEM* noundef nonnull %9) #19
  tail call fastcc void @prvAddCurrentTaskToDelayedList(i32 noundef %1, i32 noundef 1) #20
  ret void
}

; Function Attrs: noinline nounwind optsize
define dso_local void @vTaskPlaceOnUnorderedEventList(%struct.xLIST* noundef %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #2 {
  %4 = icmp eq %struct.xLIST* %0, null
  br i1 %4, label %5, label %8

5:                                                ; preds = %3
  %6 = tail call i32 asm sideeffect "\09mov $0, $1\09\09\09\09\09\09\09\09\09\09\09\09\0A\09msr basepri, $0\09\09\09\09\09\09\09\09\09\09\09\0A\09isb\09\09\09\09\09\09\09\09\09\09\09\09\09\09\0A\09dsb\09\09\09\09\09\09\09\09\09\09\09\09\09\09\0A", "=r,i,~{memory}"(i32 80) #21, !srcloc !69
  br label %7

7:                                                ; preds = %7, %5
  br label %7

8:                                                ; preds = %3
  %9 = load volatile i32, i32* @uxSchedulerSuspended, align 4, !tbaa !60
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %11, label %14

11:                                               ; preds = %8
  %12 = tail call i32 asm sideeffect "\09mov $0, $1\09\09\09\09\09\09\09\09\09\09\09\09\0A\09msr basepri, $0\09\09\09\09\09\09\09\09\09\09\09\0A\09isb\09\09\09\09\09\09\09\09\09\09\09\09\09\09\0A\09dsb\09\09\09\09\09\09\09\09\09\09\09\09\09\09\0A", "=r,i,~{memory}"(i32 80) #21, !srcloc !69
  br label %13

13:                                               ; preds = %13, %11
  br label %13

14:                                               ; preds = %8
  %15 = or i32 %1, -2147483648
  %16 = load volatile %struct.tskTaskControlBlock*, %struct.tskTaskControlBlock** @pxCurrentTCB, align 4, !tbaa !7
  %17 = getelementptr inbounds %struct.tskTaskControlBlock, %struct.tskTaskControlBlock* %16, i32 0, i32 2, i32 0
  store i32 %15, i32* %17, align 4, !tbaa !55
  %18 = load volatile %struct.tskTaskControlBlock*, %struct.tskTaskControlBlock** @pxCurrentTCB, align 4, !tbaa !7
  %19 = getelementptr inbounds %struct.tskTaskControlBlock, %struct.tskTaskControlBlock* %18, i32 0, i32 2
  tail call void @vListInsertEnd(%struct.xLIST* noundef nonnull %0, %struct.xLIST_ITEM* noundef nonnull %19) #19
  tail call fastcc void @prvAddCurrentTaskToDelayedList(i32 noundef %2, i32 noundef 1) #20
  ret void
}

; Function Attrs: noinline nounwind optsize
define dso_local void @vTaskPlaceOnEventListRestricted(%struct.xLIST* noundef %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #2 {
  %4 = icmp eq %struct.xLIST* %0, null
  br i1 %4, label %5, label %8

5:                                                ; preds = %3
  %6 = tail call i32 asm sideeffect "\09mov $0, $1\09\09\09\09\09\09\09\09\09\09\09\09\0A\09msr basepri, $0\09\09\09\09\09\09\09\09\09\09\09\0A\09isb\09\09\09\09\09\09\09\09\09\09\09\09\09\09\0A\09dsb\09\09\09\09\09\09\09\09\09\09\09\09\09\09\0A", "=r,i,~{memory}"(i32 80) #21, !srcloc !69
  br label %7

7:                                                ; preds = %7, %5
  br label %7

8:                                                ; preds = %3
  %9 = load volatile %struct.tskTaskControlBlock*, %struct.tskTaskControlBlock** @pxCurrentTCB, align 4, !tbaa !7
  %10 = getelementptr inbounds %struct.tskTaskControlBlock, %struct.tskTaskControlBlock* %9, i32 0, i32 2
  tail call void @vListInsertEnd(%struct.xLIST* noundef nonnull %0, %struct.xLIST_ITEM* noundef nonnull %10) #19
  %11 = icmp eq i32 %2, 0
  %12 = select i1 %11, i32 %1, i32 -1
  tail call fastcc void @prvAddCurrentTaskToDelayedList(i32 noundef %12, i32 noundef %2) #20
  ret void
}

; Function Attrs: noinline nounwind optsize
define dso_local i32 @xTaskRemoveFromEventList(%struct.xLIST* nocapture noundef readonly %0) local_unnamed_addr #2 {
  %2 = getelementptr inbounds %struct.xLIST, %struct.xLIST* %0, i32 0, i32 2, i32 1
  %3 = load %struct.xLIST_ITEM*, %struct.xLIST_ITEM** %2, align 4, !tbaa !72
  %4 = getelementptr inbounds %struct.xLIST_ITEM, %struct.xLIST_ITEM* %3, i32 0, i32 3
  %5 = bitcast i8** %4 to %struct.tskTaskControlBlock**
  %6 = load %struct.tskTaskControlBlock*, %struct.tskTaskControlBlock** %5, align 4, !tbaa !73
  %7 = icmp eq %struct.tskTaskControlBlock* %6, null
  br i1 %7, label %8, label %11

8:                                                ; preds = %1
  %9 = tail call i32 asm sideeffect "\09mov $0, $1\09\09\09\09\09\09\09\09\09\09\09\09\0A\09msr basepri, $0\09\09\09\09\09\09\09\09\09\09\09\0A\09isb\09\09\09\09\09\09\09\09\09\09\09\09\09\09\0A\09dsb\09\09\09\09\09\09\09\09\09\09\09\09\09\09\0A", "=r,i,~{memory}"(i32 80) #21, !srcloc !69
  br label %10

10:                                               ; preds = %10, %8
  br label %10

11:                                               ; preds = %1
  %12 = getelementptr inbounds %struct.tskTaskControlBlock, %struct.tskTaskControlBlock* %6, i32 0, i32 2
  %13 = tail call i32 @uxListRemove(%struct.xLIST_ITEM* noundef nonnull %12) #19
  %14 = load volatile i32, i32* @uxSchedulerSuspended, align 4, !tbaa !60
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %16, label %25

16:                                               ; preds = %11
  %17 = getelementptr inbounds %struct.tskTaskControlBlock, %struct.tskTaskControlBlock* %6, i32 0, i32 1
  %18 = tail call i32 @uxListRemove(%struct.xLIST_ITEM* noundef nonnull %17) #19
  %19 = getelementptr inbounds %struct.tskTaskControlBlock, %struct.tskTaskControlBlock* %6, i32 0, i32 3
  %20 = load i32, i32* %19, align 4, !tbaa !51
  %21 = shl nuw i32 1, %20
  %22 = load volatile i32, i32* @uxTopReadyPriority, align 4, !tbaa !60
  %23 = or i32 %22, %21
  store volatile i32 %23, i32* @uxTopReadyPriority, align 4, !tbaa !60
  %24 = getelementptr inbounds [5 x %struct.xLIST], [5 x %struct.xLIST]* @pxReadyTasksLists, i32 0, i32 %20
  tail call void @vListInsertEnd(%struct.xLIST* noundef nonnull %24, %struct.xLIST_ITEM* noundef nonnull %17) #19
  br label %26

25:                                               ; preds = %11
  tail call void @vListInsertEnd(%struct.xLIST* noundef nonnull @xPendingReadyList, %struct.xLIST_ITEM* noundef nonnull %12) #19
  br label %26

26:                                               ; preds = %25, %16
  %27 = getelementptr inbounds %struct.tskTaskControlBlock, %struct.tskTaskControlBlock* %6, i32 0, i32 3
  %28 = load i32, i32* %27, align 4, !tbaa !51
  %29 = load volatile %struct.tskTaskControlBlock*, %struct.tskTaskControlBlock** @pxCurrentTCB, align 4, !tbaa !7
  %30 = getelementptr inbounds %struct.tskTaskControlBlock, %struct.tskTaskControlBlock* %29, i32 0, i32 3
  %31 = load i32, i32* %30, align 4, !tbaa !51
  %32 = icmp ugt i32 %28, %31
  br i1 %32, label %33, label %34

33:                                               ; preds = %26
  store volatile i32 1, i32* @xYieldPending, align 4, !tbaa !60
  br label %34

34:                                               ; preds = %26, %33
  %35 = phi i32 [ 1, %33 ], [ 0, %26 ]
  ret i32 %35
}

; Function Attrs: noinline nounwind optsize
define dso_local void @vTaskRemoveFromUnorderedEventList(%struct.xLIST_ITEM* noundef %0, i32 noundef %1) local_unnamed_addr #2 {
  %3 = load volatile i32, i32* @uxSchedulerSuspended, align 4, !tbaa !60
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %5, label %8

5:                                                ; preds = %2
  %6 = tail call i32 asm sideeffect "\09mov $0, $1\09\09\09\09\09\09\09\09\09\09\09\09\0A\09msr basepri, $0\09\09\09\09\09\09\09\09\09\09\09\0A\09isb\09\09\09\09\09\09\09\09\09\09\09\09\09\09\0A\09dsb\09\09\09\09\09\09\09\09\09\09\09\09\09\09\0A", "=r,i,~{memory}"(i32 80) #21, !srcloc !69
  br label %7

7:                                                ; preds = %7, %5
  br label %7

8:                                                ; preds = %2
  %9 = or i32 %1, -2147483648
  %10 = getelementptr inbounds %struct.xLIST_ITEM, %struct.xLIST_ITEM* %0, i32 0, i32 0
  store i32 %9, i32* %10, align 4, !tbaa !112
  %11 = getelementptr inbounds %struct.xLIST_ITEM, %struct.xLIST_ITEM* %0, i32 0, i32 3
  %12 = bitcast i8** %11 to %struct.tskTaskControlBlock**
  %13 = load %struct.tskTaskControlBlock*, %struct.tskTaskControlBlock** %12, align 4, !tbaa !73
  %14 = icmp eq %struct.tskTaskControlBlock* %13, null
  br i1 %14, label %15, label %18

15:                                               ; preds = %8
  %16 = tail call i32 asm sideeffect "\09mov $0, $1\09\09\09\09\09\09\09\09\09\09\09\09\0A\09msr basepri, $0\09\09\09\09\09\09\09\09\09\09\09\0A\09isb\09\09\09\09\09\09\09\09\09\09\09\09\09\09\0A\09dsb\09\09\09\09\09\09\09\09\09\09\09\09\09\09\0A", "=r,i,~{memory}"(i32 80) #21, !srcloc !69
  br label %17

17:                                               ; preds = %17, %15
  br label %17

18:                                               ; preds = %8
  %19 = tail call i32 @uxListRemove(%struct.xLIST_ITEM* noundef nonnull %0) #19
  %20 = getelementptr inbounds %struct.tskTaskControlBlock, %struct.tskTaskControlBlock* %13, i32 0, i32 1
  %21 = tail call i32 @uxListRemove(%struct.xLIST_ITEM* noundef nonnull %20) #19
  %22 = getelementptr inbounds %struct.tskTaskControlBlock, %struct.tskTaskControlBlock* %13, i32 0, i32 3
  %23 = load i32, i32* %22, align 4, !tbaa !51
  %24 = shl nuw i32 1, %23
  %25 = load volatile i32, i32* @uxTopReadyPriority, align 4, !tbaa !60
  %26 = or i32 %25, %24
  store volatile i32 %26, i32* @uxTopReadyPriority, align 4, !tbaa !60
  %27 = getelementptr inbounds [5 x %struct.xLIST], [5 x %struct.xLIST]* @pxReadyTasksLists, i32 0, i32 %23
  tail call void @vListInsertEnd(%struct.xLIST* noundef nonnull %27, %struct.xLIST_ITEM* noundef nonnull %20) #19
  %28 = load i32, i32* %22, align 4, !tbaa !51
  %29 = load volatile %struct.tskTaskControlBlock*, %struct.tskTaskControlBlock** @pxCurrentTCB, align 4, !tbaa !7
  %30 = getelementptr inbounds %struct.tskTaskControlBlock, %struct.tskTaskControlBlock* %29, i32 0, i32 3
  %31 = load i32, i32* %30, align 4, !tbaa !51
  %32 = icmp ugt i32 %28, %31
  br i1 %32, label %33, label %34

33:                                               ; preds = %18
  store volatile i32 1, i32* @xYieldPending, align 4, !tbaa !60
  br label %34

34:                                               ; preds = %33, %18
  ret void
}

; Function Attrs: noinline nounwind optsize
define dso_local void @vTaskSetTimeOutState(%struct.xTIME_OUT* noundef writeonly %0) local_unnamed_addr #2 {
  %2 = icmp eq %struct.xTIME_OUT* %0, null
  br i1 %2, label %3, label %6

3:                                                ; preds = %1
  %4 = tail call i32 asm sideeffect "\09mov $0, $1\09\09\09\09\09\09\09\09\09\09\09\09\0A\09msr basepri, $0\09\09\09\09\09\09\09\09\09\09\09\0A\09isb\09\09\09\09\09\09\09\09\09\09\09\09\09\09\0A\09dsb\09\09\09\09\09\09\09\09\09\09\09\09\09\09\0A", "=r,i,~{memory}"(i32 80) #21, !srcloc !69
  br label %5

5:                                                ; preds = %5, %3
  br label %5

6:                                                ; preds = %1
  tail call void @vPortEnterCritical() #19
  %7 = load volatile i32, i32* @xNumOfOverflows, align 4, !tbaa !60
  %8 = getelementptr inbounds %struct.xTIME_OUT, %struct.xTIME_OUT* %0, i32 0, i32 0
  store i32 %7, i32* %8, align 4, !tbaa !113
  %9 = load volatile i32, i32* @xTickCount, align 4, !tbaa !18
  %10 = getelementptr inbounds %struct.xTIME_OUT, %struct.xTIME_OUT* %0, i32 0, i32 1
  store i32 %9, i32* %10, align 4, !tbaa !115
  tail call void @vPortExitCritical() #19
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nounwind optsize willreturn
define dso_local void @vTaskInternalSetTimeOutState(%struct.xTIME_OUT* nocapture noundef writeonly %0) local_unnamed_addr #7 {
  %2 = load volatile i32, i32* @xNumOfOverflows, align 4, !tbaa !60
  %3 = getelementptr inbounds %struct.xTIME_OUT, %struct.xTIME_OUT* %0, i32 0, i32 0
  store i32 %2, i32* %3, align 4, !tbaa !113
  %4 = load volatile i32, i32* @xTickCount, align 4, !tbaa !18
  %5 = getelementptr inbounds %struct.xTIME_OUT, %struct.xTIME_OUT* %0, i32 0, i32 1
  store i32 %4, i32* %5, align 4, !tbaa !115
  ret void
}

; Function Attrs: noinline nounwind optsize
define dso_local i32 @xTaskCheckForTimeOut(%struct.xTIME_OUT* noundef %0, i32* noundef %1) local_unnamed_addr #2 {
  %3 = icmp eq %struct.xTIME_OUT* %0, null
  br i1 %3, label %4, label %7

4:                                                ; preds = %2
  %5 = tail call i32 asm sideeffect "\09mov $0, $1\09\09\09\09\09\09\09\09\09\09\09\09\0A\09msr basepri, $0\09\09\09\09\09\09\09\09\09\09\09\0A\09isb\09\09\09\09\09\09\09\09\09\09\09\09\09\09\0A\09dsb\09\09\09\09\09\09\09\09\09\09\09\09\09\09\0A", "=r,i,~{memory}"(i32 80) #21, !srcloc !69
  br label %6

6:                                                ; preds = %6, %4
  br label %6

7:                                                ; preds = %2
  %8 = icmp eq i32* %1, null
  br i1 %8, label %9, label %12

9:                                                ; preds = %7
  %10 = tail call i32 asm sideeffect "\09mov $0, $1\09\09\09\09\09\09\09\09\09\09\09\09\0A\09msr basepri, $0\09\09\09\09\09\09\09\09\09\09\09\0A\09isb\09\09\09\09\09\09\09\09\09\09\09\09\09\09\0A\09dsb\09\09\09\09\09\09\09\09\09\09\09\09\09\09\0A", "=r,i,~{memory}"(i32 80) #21, !srcloc !69
  br label %11

11:                                               ; preds = %11, %9
  br label %11

12:                                               ; preds = %7
  tail call void @vPortEnterCritical() #19
  %13 = load volatile i32, i32* @xTickCount, align 4, !tbaa !18
  %14 = getelementptr inbounds %struct.xTIME_OUT, %struct.xTIME_OUT* %0, i32 0, i32 1
  %15 = load i32, i32* %14, align 4, !tbaa !115
  %16 = sub i32 %13, %15
  %17 = load i32, i32* %1, align 4, !tbaa !18
  %18 = icmp eq i32 %17, -1
  br i1 %18, label %31, label %19

19:                                               ; preds = %12
  %20 = load volatile i32, i32* @xNumOfOverflows, align 4, !tbaa !60
  %21 = getelementptr inbounds %struct.xTIME_OUT, %struct.xTIME_OUT* %0, i32 0, i32 0
  %22 = load i32, i32* %21, align 4, !tbaa !113
  %23 = icmp eq i32 %20, %22
  %24 = icmp ult i32 %13, %15
  %25 = select i1 %23, i1 true, i1 %24
  br i1 %25, label %26, label %31

26:                                               ; preds = %19
  %27 = icmp ugt i32 %17, %16
  br i1 %27, label %28, label %30

28:                                               ; preds = %26
  %29 = sub i32 %17, %16
  store i32 %29, i32* %1, align 4, !tbaa !18
  tail call void @vTaskInternalSetTimeOutState(%struct.xTIME_OUT* noundef nonnull %0) #20
  br label %31

30:                                               ; preds = %26
  store i32 0, i32* %1, align 4, !tbaa !18
  br label %31

31:                                               ; preds = %19, %12, %30, %28
  %32 = phi i32 [ 0, %28 ], [ 1, %30 ], [ 0, %12 ], [ 1, %19 ]
  tail call void @vPortExitCritical() #19
  ret i32 %32
}

; Function Attrs: nofree noinline norecurse nounwind optsize
define dso_local void @vTaskMissedYield() local_unnamed_addr #6 {
  store volatile i32 1, i32* @xYieldPending, align 4, !tbaa !60
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize readonly willreturn
define dso_local i32 @uxTaskGetTaskNumber(%struct.tskTaskControlBlock* noundef readonly %0) local_unnamed_addr #9 {
  %2 = icmp eq %struct.tskTaskControlBlock* %0, null
  br i1 %2, label %6, label %3

3:                                                ; preds = %1
  %4 = getelementptr inbounds %struct.tskTaskControlBlock, %struct.tskTaskControlBlock* %0, i32 0, i32 7
  %5 = load i32, i32* %4, align 4, !tbaa !116
  br label %6

6:                                                ; preds = %1, %3
  %7 = phi i32 [ %5, %3 ], [ 0, %1 ]
  ret i32 %7
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn writeonly
define dso_local void @vTaskSetTaskNumber(%struct.tskTaskControlBlock* noundef writeonly %0, i32 noundef %1) local_unnamed_addr #10 {
  %3 = icmp eq %struct.tskTaskControlBlock* %0, null
  br i1 %3, label %6, label %4

4:                                                ; preds = %2
  %5 = getelementptr inbounds %struct.tskTaskControlBlock, %struct.tskTaskControlBlock* %0, i32 0, i32 7
  store i32 %1, i32* %5, align 4, !tbaa !116
  br label %6

6:                                                ; preds = %4, %2
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nounwind optsize willreturn
define dso_local %struct.tskTaskControlBlock* @xTaskGetCurrentTaskHandle() local_unnamed_addr #7 {
  %1 = load volatile %struct.tskTaskControlBlock*, %struct.tskTaskControlBlock** @pxCurrentTCB, align 4, !tbaa !7
  ret %struct.tskTaskControlBlock* %1
}

; Function Attrs: mustprogress nofree noinline norecurse nounwind optsize willreturn
define dso_local i32 @xTaskGetSchedulerState() local_unnamed_addr #7 {
  %1 = load volatile i32, i32* @xSchedulerRunning, align 4, !tbaa !60
  %2 = icmp eq i32 %1, 0
  br i1 %2, label %7, label %3

3:                                                ; preds = %0
  %4 = load volatile i32, i32* @uxSchedulerSuspended, align 4, !tbaa !60
  %5 = icmp eq i32 %4, 0
  %6 = select i1 %5, i32 2, i32 0
  br label %7

7:                                                ; preds = %3, %0
  %8 = phi i32 [ 1, %0 ], [ %6, %3 ]
  ret i32 %8
}

; Function Attrs: noinline nounwind optsize
define dso_local i32 @xTaskPriorityInherit(%struct.tskTaskControlBlock* noundef %0) local_unnamed_addr #2 {
  %2 = icmp eq %struct.tskTaskControlBlock* %0, null
  br i1 %2, label %54, label %3

3:                                                ; preds = %1
  %4 = getelementptr inbounds %struct.tskTaskControlBlock, %struct.tskTaskControlBlock* %0, i32 0, i32 3
  %5 = load i32, i32* %4, align 4, !tbaa !51
  %6 = load volatile %struct.tskTaskControlBlock*, %struct.tskTaskControlBlock** @pxCurrentTCB, align 4, !tbaa !7
  %7 = getelementptr inbounds %struct.tskTaskControlBlock, %struct.tskTaskControlBlock* %6, i32 0, i32 3
  %8 = load i32, i32* %7, align 4, !tbaa !51
  %9 = icmp ult i32 %5, %8
  br i1 %9, label %10, label %46

10:                                               ; preds = %3
  %11 = getelementptr inbounds %struct.tskTaskControlBlock, %struct.tskTaskControlBlock* %0, i32 0, i32 2, i32 0
  %12 = load i32, i32* %11, align 4, !tbaa !55
  %13 = icmp sgt i32 %12, -1
  br i1 %13, label %14, label %19

14:                                               ; preds = %10
  %15 = load volatile %struct.tskTaskControlBlock*, %struct.tskTaskControlBlock** @pxCurrentTCB, align 4, !tbaa !7
  %16 = getelementptr inbounds %struct.tskTaskControlBlock, %struct.tskTaskControlBlock* %15, i32 0, i32 3
  %17 = load i32, i32* %16, align 4, !tbaa !51
  %18 = sub i32 5, %17
  store i32 %18, i32* %11, align 4, !tbaa !55
  br label %19

19:                                               ; preds = %10, %14
  %20 = getelementptr inbounds %struct.tskTaskControlBlock, %struct.tskTaskControlBlock* %0, i32 0, i32 1
  %21 = getelementptr inbounds %struct.tskTaskControlBlock, %struct.tskTaskControlBlock* %0, i32 0, i32 1, i32 4
  %22 = load %struct.xLIST*, %struct.xLIST** %21, align 4, !tbaa !84
  %23 = getelementptr inbounds [5 x %struct.xLIST], [5 x %struct.xLIST]* @pxReadyTasksLists, i32 0, i32 %5
  %24 = icmp eq %struct.xLIST* %22, %23
  br i1 %24, label %25, label %42

25:                                               ; preds = %19
  %26 = tail call i32 @uxListRemove(%struct.xLIST_ITEM* noundef nonnull %20) #19
  %27 = icmp eq i32 %26, 0
  br i1 %27, label %28, label %34

28:                                               ; preds = %25
  %29 = load i32, i32* %4, align 4, !tbaa !51
  %30 = shl nuw i32 1, %29
  %31 = xor i32 %30, -1
  %32 = load volatile i32, i32* @uxTopReadyPriority, align 4, !tbaa !60
  %33 = and i32 %32, %31
  store volatile i32 %33, i32* @uxTopReadyPriority, align 4, !tbaa !60
  br label %34

34:                                               ; preds = %25, %28
  %35 = load volatile %struct.tskTaskControlBlock*, %struct.tskTaskControlBlock** @pxCurrentTCB, align 4, !tbaa !7
  %36 = getelementptr inbounds %struct.tskTaskControlBlock, %struct.tskTaskControlBlock* %35, i32 0, i32 3
  %37 = load i32, i32* %36, align 4, !tbaa !51
  store i32 %37, i32* %4, align 4, !tbaa !51
  %38 = shl nuw i32 1, %37
  %39 = load volatile i32, i32* @uxTopReadyPriority, align 4, !tbaa !60
  %40 = or i32 %39, %38
  store volatile i32 %40, i32* @uxTopReadyPriority, align 4, !tbaa !60
  %41 = getelementptr inbounds [5 x %struct.xLIST], [5 x %struct.xLIST]* @pxReadyTasksLists, i32 0, i32 %37
  tail call void @vListInsertEnd(%struct.xLIST* noundef nonnull %41, %struct.xLIST_ITEM* noundef nonnull %20) #19
  br label %54

42:                                               ; preds = %19
  %43 = load volatile %struct.tskTaskControlBlock*, %struct.tskTaskControlBlock** @pxCurrentTCB, align 4, !tbaa !7
  %44 = getelementptr inbounds %struct.tskTaskControlBlock, %struct.tskTaskControlBlock* %43, i32 0, i32 3
  %45 = load i32, i32* %44, align 4, !tbaa !51
  store i32 %45, i32* %4, align 4, !tbaa !51
  br label %54

46:                                               ; preds = %3
  %47 = getelementptr inbounds %struct.tskTaskControlBlock, %struct.tskTaskControlBlock* %0, i32 0, i32 8
  %48 = load i32, i32* %47, align 4, !tbaa !52
  %49 = load volatile %struct.tskTaskControlBlock*, %struct.tskTaskControlBlock** @pxCurrentTCB, align 4, !tbaa !7
  %50 = getelementptr inbounds %struct.tskTaskControlBlock, %struct.tskTaskControlBlock* %49, i32 0, i32 3
  %51 = load i32, i32* %50, align 4, !tbaa !51
  %52 = icmp ult i32 %48, %51
  %53 = zext i1 %52 to i32
  br label %54

54:                                               ; preds = %46, %34, %42, %1
  %55 = phi i32 [ 0, %1 ], [ 1, %42 ], [ 1, %34 ], [ %53, %46 ]
  ret i32 %55
}

; Function Attrs: noinline nounwind optsize
define dso_local i32 @xTaskPriorityDisinherit(%struct.tskTaskControlBlock* noundef %0) local_unnamed_addr #2 {
  %2 = icmp eq %struct.tskTaskControlBlock* %0, null
  br i1 %2, label %47, label %3

3:                                                ; preds = %1
  %4 = load volatile %struct.tskTaskControlBlock*, %struct.tskTaskControlBlock** @pxCurrentTCB, align 4, !tbaa !7
  %5 = icmp eq %struct.tskTaskControlBlock* %4, %0
  br i1 %5, label %9, label %6

6:                                                ; preds = %3
  %7 = tail call i32 asm sideeffect "\09mov $0, $1\09\09\09\09\09\09\09\09\09\09\09\09\0A\09msr basepri, $0\09\09\09\09\09\09\09\09\09\09\09\0A\09isb\09\09\09\09\09\09\09\09\09\09\09\09\09\09\0A\09dsb\09\09\09\09\09\09\09\09\09\09\09\09\09\09\0A", "=r,i,~{memory}"(i32 80) #21, !srcloc !69
  br label %8

8:                                                ; preds = %8, %6
  br label %8

9:                                                ; preds = %3
  %10 = getelementptr inbounds %struct.tskTaskControlBlock, %struct.tskTaskControlBlock* %0, i32 0, i32 9
  %11 = load i32, i32* %10, align 4, !tbaa !53
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %13, label %16

13:                                               ; preds = %9
  %14 = tail call i32 asm sideeffect "\09mov $0, $1\09\09\09\09\09\09\09\09\09\09\09\09\0A\09msr basepri, $0\09\09\09\09\09\09\09\09\09\09\09\0A\09isb\09\09\09\09\09\09\09\09\09\09\09\09\09\09\0A\09dsb\09\09\09\09\09\09\09\09\09\09\09\09\09\09\0A", "=r,i,~{memory}"(i32 80) #21, !srcloc !69
  br label %15

15:                                               ; preds = %15, %13
  br label %15

16:                                               ; preds = %9
  %17 = add i32 %11, -1
  store i32 %17, i32* %10, align 4, !tbaa !53
  %18 = getelementptr inbounds %struct.tskTaskControlBlock, %struct.tskTaskControlBlock* %0, i32 0, i32 3
  %19 = load i32, i32* %18, align 4, !tbaa !51
  %20 = getelementptr inbounds %struct.tskTaskControlBlock, %struct.tskTaskControlBlock* %0, i32 0, i32 8
  %21 = load i32, i32* %20, align 4, !tbaa !52
  %22 = icmp ne i32 %19, %21
  %23 = icmp eq i32 %17, 0
  %24 = select i1 %22, i1 %23, i1 false
  br i1 %24, label %25, label %47

25:                                               ; preds = %16
  %26 = getelementptr inbounds %struct.tskTaskControlBlock, %struct.tskTaskControlBlock* %0, i32 0, i32 1
  %27 = tail call i32 @uxListRemove(%struct.xLIST_ITEM* noundef nonnull %26) #19
  %28 = icmp eq i32 %27, 0
  br i1 %28, label %29, label %39

29:                                               ; preds = %25
  %30 = load i32, i32* %18, align 4, !tbaa !51
  %31 = getelementptr inbounds [5 x %struct.xLIST], [5 x %struct.xLIST]* @pxReadyTasksLists, i32 0, i32 %30, i32 0
  %32 = load volatile i32, i32* %31, align 4, !tbaa !65
  %33 = icmp eq i32 %32, 0
  br i1 %33, label %34, label %39

34:                                               ; preds = %29
  %35 = shl nuw i32 1, %30
  %36 = xor i32 %35, -1
  %37 = load volatile i32, i32* @uxTopReadyPriority, align 4, !tbaa !60
  %38 = and i32 %37, %36
  store volatile i32 %38, i32* @uxTopReadyPriority, align 4, !tbaa !60
  br label %39

39:                                               ; preds = %25, %29, %34
  %40 = load i32, i32* %20, align 4, !tbaa !52
  store i32 %40, i32* %18, align 4, !tbaa !51
  %41 = sub i32 5, %40
  %42 = getelementptr inbounds %struct.tskTaskControlBlock, %struct.tskTaskControlBlock* %0, i32 0, i32 2, i32 0
  store i32 %41, i32* %42, align 4, !tbaa !55
  %43 = shl nuw i32 1, %40
  %44 = load volatile i32, i32* @uxTopReadyPriority, align 4, !tbaa !60
  %45 = or i32 %44, %43
  store volatile i32 %45, i32* @uxTopReadyPriority, align 4, !tbaa !60
  %46 = getelementptr inbounds [5 x %struct.xLIST], [5 x %struct.xLIST]* @pxReadyTasksLists, i32 0, i32 %40
  tail call void @vListInsertEnd(%struct.xLIST* noundef nonnull %46, %struct.xLIST_ITEM* noundef nonnull %26) #19
  br label %47

47:                                               ; preds = %1, %39, %16
  %48 = phi i32 [ 1, %39 ], [ 0, %16 ], [ 0, %1 ]
  ret i32 %48
}

; Function Attrs: noinline nounwind optsize
define dso_local void @vTaskPriorityDisinheritAfterTimeout(%struct.tskTaskControlBlock* noundef %0, i32 noundef %1) local_unnamed_addr #2 {
  %3 = icmp eq %struct.tskTaskControlBlock* %0, null
  br i1 %3, label %52, label %4

4:                                                ; preds = %2
  %5 = getelementptr inbounds %struct.tskTaskControlBlock, %struct.tskTaskControlBlock* %0, i32 0, i32 9
  %6 = load i32, i32* %5, align 4, !tbaa !53
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %8, label %11

8:                                                ; preds = %4
  %9 = tail call i32 asm sideeffect "\09mov $0, $1\09\09\09\09\09\09\09\09\09\09\09\09\0A\09msr basepri, $0\09\09\09\09\09\09\09\09\09\09\09\0A\09isb\09\09\09\09\09\09\09\09\09\09\09\09\09\09\0A\09dsb\09\09\09\09\09\09\09\09\09\09\09\09\09\09\0A", "=r,i,~{memory}"(i32 80) #21, !srcloc !69
  br label %10

10:                                               ; preds = %10, %8
  br label %10

11:                                               ; preds = %4
  %12 = getelementptr inbounds %struct.tskTaskControlBlock, %struct.tskTaskControlBlock* %0, i32 0, i32 8
  %13 = load i32, i32* %12, align 4, !tbaa !52
  %14 = icmp ult i32 %13, %1
  %15 = select i1 %14, i32 %1, i32 %13
  %16 = getelementptr inbounds %struct.tskTaskControlBlock, %struct.tskTaskControlBlock* %0, i32 0, i32 3
  %17 = load i32, i32* %16, align 4, !tbaa !51
  %18 = icmp ne i32 %17, %15
  %19 = icmp eq i32 %6, 1
  %20 = select i1 %18, i1 %19, i1 false
  br i1 %20, label %21, label %52

21:                                               ; preds = %11
  %22 = load volatile %struct.tskTaskControlBlock*, %struct.tskTaskControlBlock** @pxCurrentTCB, align 4, !tbaa !7
  %23 = icmp eq %struct.tskTaskControlBlock* %22, %0
  br i1 %23, label %24, label %27

24:                                               ; preds = %21
  %25 = tail call i32 asm sideeffect "\09mov $0, $1\09\09\09\09\09\09\09\09\09\09\09\09\0A\09msr basepri, $0\09\09\09\09\09\09\09\09\09\09\09\0A\09isb\09\09\09\09\09\09\09\09\09\09\09\09\09\09\0A\09dsb\09\09\09\09\09\09\09\09\09\09\09\09\09\09\0A", "=r,i,~{memory}"(i32 80) #21, !srcloc !69
  br label %26

26:                                               ; preds = %26, %24
  br label %26

27:                                               ; preds = %21
  store i32 %15, i32* %16, align 4, !tbaa !51
  %28 = getelementptr inbounds %struct.tskTaskControlBlock, %struct.tskTaskControlBlock* %0, i32 0, i32 2, i32 0
  %29 = load i32, i32* %28, align 4, !tbaa !55
  %30 = icmp sgt i32 %29, -1
  br i1 %30, label %31, label %33

31:                                               ; preds = %27
  %32 = sub i32 5, %15
  store i32 %32, i32* %28, align 4, !tbaa !55
  br label %33

33:                                               ; preds = %27, %31
  %34 = getelementptr inbounds %struct.tskTaskControlBlock, %struct.tskTaskControlBlock* %0, i32 0, i32 1
  %35 = getelementptr inbounds %struct.tskTaskControlBlock, %struct.tskTaskControlBlock* %0, i32 0, i32 1, i32 4
  %36 = load %struct.xLIST*, %struct.xLIST** %35, align 4, !tbaa !84
  %37 = getelementptr inbounds [5 x %struct.xLIST], [5 x %struct.xLIST]* @pxReadyTasksLists, i32 0, i32 %17
  %38 = icmp eq %struct.xLIST* %36, %37
  br i1 %38, label %39, label %52

39:                                               ; preds = %33
  %40 = tail call i32 @uxListRemove(%struct.xLIST_ITEM* noundef nonnull %34) #19
  %41 = icmp eq i32 %40, 0
  %42 = load i32, i32* %16, align 4, !tbaa !51
  %43 = shl nuw i32 1, %42
  br i1 %41, label %44, label %48

44:                                               ; preds = %39
  %45 = xor i32 %43, -1
  %46 = load volatile i32, i32* @uxTopReadyPriority, align 4, !tbaa !60
  %47 = and i32 %46, %45
  store volatile i32 %47, i32* @uxTopReadyPriority, align 4, !tbaa !60
  br label %48

48:                                               ; preds = %39, %44
  %49 = load volatile i32, i32* @uxTopReadyPriority, align 4, !tbaa !60
  %50 = or i32 %49, %43
  store volatile i32 %50, i32* @uxTopReadyPriority, align 4, !tbaa !60
  %51 = getelementptr inbounds [5 x %struct.xLIST], [5 x %struct.xLIST]* @pxReadyTasksLists, i32 0, i32 %42
  tail call void @vListInsertEnd(%struct.xLIST* noundef nonnull %51, %struct.xLIST_ITEM* noundef nonnull %34) #19
  br label %52

52:                                               ; preds = %2, %48, %33, %11
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nounwind optsize willreturn
define dso_local i32 @uxTaskResetEventItemValue() local_unnamed_addr #7 {
  %1 = load volatile %struct.tskTaskControlBlock*, %struct.tskTaskControlBlock** @pxCurrentTCB, align 4, !tbaa !7
  %2 = getelementptr inbounds %struct.tskTaskControlBlock, %struct.tskTaskControlBlock* %1, i32 0, i32 2, i32 0
  %3 = load i32, i32* %2, align 4, !tbaa !55
  %4 = load volatile %struct.tskTaskControlBlock*, %struct.tskTaskControlBlock** @pxCurrentTCB, align 4, !tbaa !7
  %5 = getelementptr inbounds %struct.tskTaskControlBlock, %struct.tskTaskControlBlock* %4, i32 0, i32 3
  %6 = load i32, i32* %5, align 4, !tbaa !51
  %7 = sub i32 5, %6
  %8 = load volatile %struct.tskTaskControlBlock*, %struct.tskTaskControlBlock** @pxCurrentTCB, align 4, !tbaa !7
  %9 = getelementptr inbounds %struct.tskTaskControlBlock, %struct.tskTaskControlBlock* %8, i32 0, i32 2, i32 0
  store i32 %7, i32* %9, align 4, !tbaa !55
  ret i32 %3
}

; Function Attrs: mustprogress nofree noinline norecurse nounwind optsize willreturn
define dso_local %struct.tskTaskControlBlock* @pvTaskIncrementMutexHeldCount() local_unnamed_addr #7 {
  %1 = load volatile %struct.tskTaskControlBlock*, %struct.tskTaskControlBlock** @pxCurrentTCB, align 4, !tbaa !7
  %2 = icmp eq %struct.tskTaskControlBlock* %1, null
  br i1 %2, label %8, label %3

3:                                                ; preds = %0
  %4 = load volatile %struct.tskTaskControlBlock*, %struct.tskTaskControlBlock** @pxCurrentTCB, align 4, !tbaa !7
  %5 = getelementptr inbounds %struct.tskTaskControlBlock, %struct.tskTaskControlBlock* %4, i32 0, i32 9
  %6 = load i32, i32* %5, align 4, !tbaa !53
  %7 = add i32 %6, 1
  store i32 %7, i32* %5, align 4, !tbaa !53
  br label %8

8:                                                ; preds = %3, %0
  %9 = load volatile %struct.tskTaskControlBlock*, %struct.tskTaskControlBlock** @pxCurrentTCB, align 4, !tbaa !7
  ret %struct.tskTaskControlBlock* %9
}

; Function Attrs: noinline nounwind optsize
define dso_local i32 @ulTaskNotifyTake(i32 noundef %0, i32 noundef %1) local_unnamed_addr #2 {
  tail call void @vPortEnterCritical() #19
  %3 = load volatile %struct.tskTaskControlBlock*, %struct.tskTaskControlBlock** @pxCurrentTCB, align 4, !tbaa !7
  %4 = getelementptr inbounds %struct.tskTaskControlBlock, %struct.tskTaskControlBlock* %3, i32 0, i32 10
  %5 = load volatile i32, i32* %4, align 4, !tbaa !57
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %7, label %12

7:                                                ; preds = %2
  %8 = load volatile %struct.tskTaskControlBlock*, %struct.tskTaskControlBlock** @pxCurrentTCB, align 4, !tbaa !7
  %9 = getelementptr inbounds %struct.tskTaskControlBlock, %struct.tskTaskControlBlock* %8, i32 0, i32 11
  store volatile i8 1, i8* %9, align 4, !tbaa !58
  %10 = icmp eq i32 %1, 0
  br i1 %10, label %12, label %11

11:                                               ; preds = %7
  tail call fastcc void @prvAddCurrentTaskToDelayedList(i32 noundef %1, i32 noundef 1) #20
  store volatile i32 268435456, i32* inttoptr (i32 -536810236 to i32*), align 4, !tbaa !18
  tail call void asm sideeffect "dsb", "~{memory}"() #21, !srcloc !117
  tail call void asm sideeffect "isb", ""() #21, !srcloc !118
  br label %12

12:                                               ; preds = %2, %11, %7
  tail call void @vPortExitCritical() #19
  tail call void @vPortEnterCritical() #19
  %13 = load volatile %struct.tskTaskControlBlock*, %struct.tskTaskControlBlock** @pxCurrentTCB, align 4, !tbaa !7
  %14 = getelementptr inbounds %struct.tskTaskControlBlock, %struct.tskTaskControlBlock* %13, i32 0, i32 10
  %15 = load volatile i32, i32* %14, align 4, !tbaa !57
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %23, label %17

17:                                               ; preds = %12
  %18 = icmp eq i32 %0, 0
  %19 = add i32 %15, -1
  %20 = select i1 %18, i32 %19, i32 0
  %21 = load volatile %struct.tskTaskControlBlock*, %struct.tskTaskControlBlock** @pxCurrentTCB, align 4, !tbaa !7
  %22 = getelementptr inbounds %struct.tskTaskControlBlock, %struct.tskTaskControlBlock* %21, i32 0, i32 10
  store volatile i32 %20, i32* %22, align 4, !tbaa !57
  br label %23

23:                                               ; preds = %17, %12
  %24 = load volatile %struct.tskTaskControlBlock*, %struct.tskTaskControlBlock** @pxCurrentTCB, align 4, !tbaa !7
  %25 = getelementptr inbounds %struct.tskTaskControlBlock, %struct.tskTaskControlBlock* %24, i32 0, i32 11
  store volatile i8 0, i8* %25, align 4, !tbaa !58
  tail call void @vPortExitCritical() #19
  ret i32 %15
}

; Function Attrs: noinline nounwind optsize
define dso_local i32 @xTaskNotifyWait(i32 noundef %0, i32 noundef %1, i32* noundef writeonly %2, i32 noundef %3) local_unnamed_addr #2 {
  tail call void @vPortEnterCritical() #19
  %5 = load volatile %struct.tskTaskControlBlock*, %struct.tskTaskControlBlock** @pxCurrentTCB, align 4, !tbaa !7
  %6 = getelementptr inbounds %struct.tskTaskControlBlock, %struct.tskTaskControlBlock* %5, i32 0, i32 11
  %7 = load volatile i8, i8* %6, align 4, !tbaa !58
  %8 = icmp eq i8 %7, 2
  br i1 %8, label %19, label %9

9:                                                ; preds = %4
  %10 = xor i32 %0, -1
  %11 = load volatile %struct.tskTaskControlBlock*, %struct.tskTaskControlBlock** @pxCurrentTCB, align 4, !tbaa !7
  %12 = getelementptr inbounds %struct.tskTaskControlBlock, %struct.tskTaskControlBlock* %11, i32 0, i32 10
  %13 = load volatile i32, i32* %12, align 4, !tbaa !57
  %14 = and i32 %13, %10
  store volatile i32 %14, i32* %12, align 4, !tbaa !57
  %15 = load volatile %struct.tskTaskControlBlock*, %struct.tskTaskControlBlock** @pxCurrentTCB, align 4, !tbaa !7
  %16 = getelementptr inbounds %struct.tskTaskControlBlock, %struct.tskTaskControlBlock* %15, i32 0, i32 11
  store volatile i8 1, i8* %16, align 4, !tbaa !58
  %17 = icmp eq i32 %3, 0
  br i1 %17, label %19, label %18

18:                                               ; preds = %9
  tail call fastcc void @prvAddCurrentTaskToDelayedList(i32 noundef %3, i32 noundef 1) #20
  store volatile i32 268435456, i32* inttoptr (i32 -536810236 to i32*), align 4, !tbaa !18
  tail call void asm sideeffect "dsb", "~{memory}"() #21, !srcloc !119
  tail call void asm sideeffect "isb", ""() #21, !srcloc !120
  br label %19

19:                                               ; preds = %4, %18, %9
  tail call void @vPortExitCritical() #19
  tail call void @vPortEnterCritical() #19
  %20 = icmp eq i32* %2, null
  br i1 %20, label %25, label %21

21:                                               ; preds = %19
  %22 = load volatile %struct.tskTaskControlBlock*, %struct.tskTaskControlBlock** @pxCurrentTCB, align 4, !tbaa !7
  %23 = getelementptr inbounds %struct.tskTaskControlBlock, %struct.tskTaskControlBlock* %22, i32 0, i32 10
  %24 = load volatile i32, i32* %23, align 4, !tbaa !57
  store i32 %24, i32* %2, align 4, !tbaa !18
  br label %25

25:                                               ; preds = %21, %19
  %26 = load volatile %struct.tskTaskControlBlock*, %struct.tskTaskControlBlock** @pxCurrentTCB, align 4, !tbaa !7
  %27 = getelementptr inbounds %struct.tskTaskControlBlock, %struct.tskTaskControlBlock* %26, i32 0, i32 11
  %28 = load volatile i8, i8* %27, align 4, !tbaa !58
  %29 = icmp eq i8 %28, 2
  br i1 %29, label %30, label %36

30:                                               ; preds = %25
  %31 = xor i32 %1, -1
  %32 = load volatile %struct.tskTaskControlBlock*, %struct.tskTaskControlBlock** @pxCurrentTCB, align 4, !tbaa !7
  %33 = getelementptr inbounds %struct.tskTaskControlBlock, %struct.tskTaskControlBlock* %32, i32 0, i32 10
  %34 = load volatile i32, i32* %33, align 4, !tbaa !57
  %35 = and i32 %34, %31
  store volatile i32 %35, i32* %33, align 4, !tbaa !57
  br label %36

36:                                               ; preds = %25, %30
  %37 = phi i32 [ 1, %30 ], [ 0, %25 ]
  %38 = load volatile %struct.tskTaskControlBlock*, %struct.tskTaskControlBlock** @pxCurrentTCB, align 4, !tbaa !7
  %39 = getelementptr inbounds %struct.tskTaskControlBlock, %struct.tskTaskControlBlock* %38, i32 0, i32 11
  store volatile i8 0, i8* %39, align 4, !tbaa !58
  tail call void @vPortExitCritical() #19
  ret i32 %37
}

; Function Attrs: noinline nounwind optsize
define dso_local i32 @xTaskGenericNotify(%struct.tskTaskControlBlock* noundef %0, i32 noundef %1, i32 noundef %2, i32* noundef writeonly %3) local_unnamed_addr #2 {
  %5 = icmp eq %struct.tskTaskControlBlock* %0, null
  br i1 %5, label %6, label %9

6:                                                ; preds = %4
  %7 = tail call i32 asm sideeffect "\09mov $0, $1\09\09\09\09\09\09\09\09\09\09\09\09\0A\09msr basepri, $0\09\09\09\09\09\09\09\09\09\09\09\0A\09isb\09\09\09\09\09\09\09\09\09\09\09\09\09\09\0A\09dsb\09\09\09\09\09\09\09\09\09\09\09\09\09\09\0A", "=r,i,~{memory}"(i32 80) #21, !srcloc !69
  br label %8

8:                                                ; preds = %8, %6
  br label %8

9:                                                ; preds = %4
  tail call void @vPortEnterCritical() #19
  %10 = icmp eq i32* %3, null
  br i1 %10, label %14, label %11

11:                                               ; preds = %9
  %12 = getelementptr inbounds %struct.tskTaskControlBlock, %struct.tskTaskControlBlock* %0, i32 0, i32 10
  %13 = load volatile i32, i32* %12, align 4, !tbaa !57
  store i32 %13, i32* %3, align 4, !tbaa !18
  br label %14

14:                                               ; preds = %11, %9
  %15 = getelementptr inbounds %struct.tskTaskControlBlock, %struct.tskTaskControlBlock* %0, i32 0, i32 11
  %16 = load volatile i8, i8* %15, align 4, !tbaa !58
  store volatile i8 2, i8* %15, align 4, !tbaa !58
  switch i32 %2, label %31 [
    i32 1, label %17
    i32 2, label %21
    i32 3, label %25
    i32 4, label %27
    i32 0, label %38
  ]

17:                                               ; preds = %14
  %18 = getelementptr inbounds %struct.tskTaskControlBlock, %struct.tskTaskControlBlock* %0, i32 0, i32 10
  %19 = load volatile i32, i32* %18, align 4, !tbaa !57
  %20 = or i32 %19, %1
  store volatile i32 %20, i32* %18, align 4, !tbaa !57
  br label %38

21:                                               ; preds = %14
  %22 = getelementptr inbounds %struct.tskTaskControlBlock, %struct.tskTaskControlBlock* %0, i32 0, i32 10
  %23 = load volatile i32, i32* %22, align 4, !tbaa !57
  %24 = add i32 %23, 1
  store volatile i32 %24, i32* %22, align 4, !tbaa !57
  br label %38

25:                                               ; preds = %14
  %26 = getelementptr inbounds %struct.tskTaskControlBlock, %struct.tskTaskControlBlock* %0, i32 0, i32 10
  store volatile i32 %1, i32* %26, align 4, !tbaa !57
  br label %38

27:                                               ; preds = %14
  %28 = icmp eq i8 %16, 2
  br i1 %28, label %62, label %29

29:                                               ; preds = %27
  %30 = getelementptr inbounds %struct.tskTaskControlBlock, %struct.tskTaskControlBlock* %0, i32 0, i32 10
  store volatile i32 %1, i32* %30, align 4, !tbaa !57
  br label %38

31:                                               ; preds = %14
  %32 = getelementptr inbounds %struct.tskTaskControlBlock, %struct.tskTaskControlBlock* %0, i32 0, i32 10
  %33 = load volatile i32, i32* %32, align 4, !tbaa !57
  %34 = icmp eq i32 %33, -1
  br i1 %34, label %38, label %35

35:                                               ; preds = %31
  %36 = tail call i32 asm sideeffect "\09mov $0, $1\09\09\09\09\09\09\09\09\09\09\09\09\0A\09msr basepri, $0\09\09\09\09\09\09\09\09\09\09\09\0A\09isb\09\09\09\09\09\09\09\09\09\09\09\09\09\09\0A\09dsb\09\09\09\09\09\09\09\09\09\09\09\09\09\09\0A", "=r,i,~{memory}"(i32 80) #21, !srcloc !69
  br label %37

37:                                               ; preds = %37, %35
  br label %37

38:                                               ; preds = %31, %29, %14, %25, %21, %17
  %39 = icmp eq i8 %16, 1
  br i1 %39, label %40, label %62

40:                                               ; preds = %38
  %41 = getelementptr inbounds %struct.tskTaskControlBlock, %struct.tskTaskControlBlock* %0, i32 0, i32 1
  %42 = tail call i32 @uxListRemove(%struct.xLIST_ITEM* noundef nonnull %41) #19
  %43 = getelementptr inbounds %struct.tskTaskControlBlock, %struct.tskTaskControlBlock* %0, i32 0, i32 3
  %44 = load i32, i32* %43, align 4, !tbaa !51
  %45 = shl nuw i32 1, %44
  %46 = load volatile i32, i32* @uxTopReadyPriority, align 4, !tbaa !60
  %47 = or i32 %46, %45
  store volatile i32 %47, i32* @uxTopReadyPriority, align 4, !tbaa !60
  %48 = getelementptr inbounds [5 x %struct.xLIST], [5 x %struct.xLIST]* @pxReadyTasksLists, i32 0, i32 %44
  tail call void @vListInsertEnd(%struct.xLIST* noundef nonnull %48, %struct.xLIST_ITEM* noundef nonnull %41) #19
  %49 = getelementptr inbounds %struct.tskTaskControlBlock, %struct.tskTaskControlBlock* %0, i32 0, i32 2, i32 4
  %50 = load %struct.xLIST*, %struct.xLIST** %49, align 4, !tbaa !68
  %51 = icmp eq %struct.xLIST* %50, null
  br i1 %51, label %55, label %52

52:                                               ; preds = %40
  %53 = tail call i32 asm sideeffect "\09mov $0, $1\09\09\09\09\09\09\09\09\09\09\09\09\0A\09msr basepri, $0\09\09\09\09\09\09\09\09\09\09\09\0A\09isb\09\09\09\09\09\09\09\09\09\09\09\09\09\09\0A\09dsb\09\09\09\09\09\09\09\09\09\09\09\09\09\09\0A", "=r,i,~{memory}"(i32 80) #21, !srcloc !69
  br label %54

54:                                               ; preds = %54, %52
  br label %54

55:                                               ; preds = %40
  %56 = load i32, i32* %43, align 4, !tbaa !51
  %57 = load volatile %struct.tskTaskControlBlock*, %struct.tskTaskControlBlock** @pxCurrentTCB, align 4, !tbaa !7
  %58 = getelementptr inbounds %struct.tskTaskControlBlock, %struct.tskTaskControlBlock* %57, i32 0, i32 3
  %59 = load i32, i32* %58, align 4, !tbaa !51
  %60 = icmp ugt i32 %56, %59
  br i1 %60, label %61, label %62

61:                                               ; preds = %55
  store volatile i32 268435456, i32* inttoptr (i32 -536810236 to i32*), align 4, !tbaa !18
  tail call void asm sideeffect "dsb", "~{memory}"() #21, !srcloc !121
  tail call void asm sideeffect "isb", ""() #21, !srcloc !122
  br label %62

62:                                               ; preds = %27, %38, %61, %55
  %63 = phi i32 [ 1, %38 ], [ 1, %61 ], [ 1, %55 ], [ 0, %27 ]
  tail call void @vPortExitCritical() #19
  ret i32 %63
}

; Function Attrs: noinline nounwind optsize
define dso_local i32 @xTaskGenericNotifyFromISR(%struct.tskTaskControlBlock* noundef %0, i32 noundef %1, i32 noundef %2, i32* noundef writeonly %3, i32* noundef writeonly %4) local_unnamed_addr #2 {
  %6 = icmp eq %struct.tskTaskControlBlock* %0, null
  br i1 %6, label %7, label %10

7:                                                ; preds = %5
  %8 = tail call i32 asm sideeffect "\09mov $0, $1\09\09\09\09\09\09\09\09\09\09\09\09\0A\09msr basepri, $0\09\09\09\09\09\09\09\09\09\09\09\0A\09isb\09\09\09\09\09\09\09\09\09\09\09\09\09\09\0A\09dsb\09\09\09\09\09\09\09\09\09\09\09\09\09\09\0A", "=r,i,~{memory}"(i32 80) #21, !srcloc !69
  br label %9

9:                                                ; preds = %9, %7
  br label %9

10:                                               ; preds = %5
  tail call void @vPortValidateInterruptPriority() #19
  %11 = tail call { i32, i32 } asm sideeffect "\09mrs $0, basepri\09\09\09\09\09\09\09\09\09\09\09\0A\09mov $1, $2\09\09\09\09\09\09\09\09\09\09\09\09\0A\09msr basepri, $1\09\09\09\09\09\09\09\09\09\09\09\0A\09isb\09\09\09\09\09\09\09\09\09\09\09\09\09\09\0A\09dsb\09\09\09\09\09\09\09\09\09\09\09\09\09\09\0A", "=r,=r,i,~{memory}"(i32 80) #21, !srcloc !85
  %12 = icmp eq i32* %3, null
  br i1 %12, label %16, label %13

13:                                               ; preds = %10
  %14 = getelementptr inbounds %struct.tskTaskControlBlock, %struct.tskTaskControlBlock* %0, i32 0, i32 10
  %15 = load volatile i32, i32* %14, align 4, !tbaa !57
  store i32 %15, i32* %3, align 4, !tbaa !18
  br label %16

16:                                               ; preds = %13, %10
  %17 = getelementptr inbounds %struct.tskTaskControlBlock, %struct.tskTaskControlBlock* %0, i32 0, i32 11
  %18 = load volatile i8, i8* %17, align 4, !tbaa !58
  store volatile i8 2, i8* %17, align 4, !tbaa !58
  switch i32 %2, label %33 [
    i32 1, label %19
    i32 2, label %23
    i32 3, label %27
    i32 4, label %29
    i32 0, label %40
  ]

19:                                               ; preds = %16
  %20 = getelementptr inbounds %struct.tskTaskControlBlock, %struct.tskTaskControlBlock* %0, i32 0, i32 10
  %21 = load volatile i32, i32* %20, align 4, !tbaa !57
  %22 = or i32 %21, %1
  store volatile i32 %22, i32* %20, align 4, !tbaa !57
  br label %40

23:                                               ; preds = %16
  %24 = getelementptr inbounds %struct.tskTaskControlBlock, %struct.tskTaskControlBlock* %0, i32 0, i32 10
  %25 = load volatile i32, i32* %24, align 4, !tbaa !57
  %26 = add i32 %25, 1
  store volatile i32 %26, i32* %24, align 4, !tbaa !57
  br label %40

27:                                               ; preds = %16
  %28 = getelementptr inbounds %struct.tskTaskControlBlock, %struct.tskTaskControlBlock* %0, i32 0, i32 10
  store volatile i32 %1, i32* %28, align 4, !tbaa !57
  br label %40

29:                                               ; preds = %16
  %30 = icmp eq i8 %18, 2
  br i1 %30, label %74, label %31

31:                                               ; preds = %29
  %32 = getelementptr inbounds %struct.tskTaskControlBlock, %struct.tskTaskControlBlock* %0, i32 0, i32 10
  store volatile i32 %1, i32* %32, align 4, !tbaa !57
  br label %40

33:                                               ; preds = %16
  %34 = getelementptr inbounds %struct.tskTaskControlBlock, %struct.tskTaskControlBlock* %0, i32 0, i32 10
  %35 = load volatile i32, i32* %34, align 4, !tbaa !57
  %36 = icmp eq i32 %35, -1
  br i1 %36, label %40, label %37

37:                                               ; preds = %33
  %38 = tail call i32 asm sideeffect "\09mov $0, $1\09\09\09\09\09\09\09\09\09\09\09\09\0A\09msr basepri, $0\09\09\09\09\09\09\09\09\09\09\09\0A\09isb\09\09\09\09\09\09\09\09\09\09\09\09\09\09\0A\09dsb\09\09\09\09\09\09\09\09\09\09\09\09\09\09\0A", "=r,i,~{memory}"(i32 80) #21, !srcloc !69
  br label %39

39:                                               ; preds = %39, %37
  br label %39

40:                                               ; preds = %33, %31, %16, %27, %23, %19
  %41 = icmp eq i8 %18, 1
  br i1 %41, label %42, label %74

42:                                               ; preds = %40
  %43 = getelementptr inbounds %struct.tskTaskControlBlock, %struct.tskTaskControlBlock* %0, i32 0, i32 2
  %44 = getelementptr inbounds %struct.tskTaskControlBlock, %struct.tskTaskControlBlock* %0, i32 0, i32 2, i32 4
  %45 = load %struct.xLIST*, %struct.xLIST** %44, align 4, !tbaa !68
  %46 = icmp eq %struct.xLIST* %45, null
  br i1 %46, label %50, label %47

47:                                               ; preds = %42
  %48 = tail call i32 asm sideeffect "\09mov $0, $1\09\09\09\09\09\09\09\09\09\09\09\09\0A\09msr basepri, $0\09\09\09\09\09\09\09\09\09\09\09\0A\09isb\09\09\09\09\09\09\09\09\09\09\09\09\09\09\0A\09dsb\09\09\09\09\09\09\09\09\09\09\09\09\09\09\0A", "=r,i,~{memory}"(i32 80) #21, !srcloc !69
  br label %49

49:                                               ; preds = %49, %47
  br label %49

50:                                               ; preds = %42
  %51 = load volatile i32, i32* @uxSchedulerSuspended, align 4, !tbaa !60
  %52 = icmp eq i32 %51, 0
  br i1 %52, label %53, label %62

53:                                               ; preds = %50
  %54 = getelementptr inbounds %struct.tskTaskControlBlock, %struct.tskTaskControlBlock* %0, i32 0, i32 1
  %55 = tail call i32 @uxListRemove(%struct.xLIST_ITEM* noundef nonnull %54) #19
  %56 = getelementptr inbounds %struct.tskTaskControlBlock, %struct.tskTaskControlBlock* %0, i32 0, i32 3
  %57 = load i32, i32* %56, align 4, !tbaa !51
  %58 = shl nuw i32 1, %57
  %59 = load volatile i32, i32* @uxTopReadyPriority, align 4, !tbaa !60
  %60 = or i32 %59, %58
  store volatile i32 %60, i32* @uxTopReadyPriority, align 4, !tbaa !60
  %61 = getelementptr inbounds [5 x %struct.xLIST], [5 x %struct.xLIST]* @pxReadyTasksLists, i32 0, i32 %57
  tail call void @vListInsertEnd(%struct.xLIST* noundef nonnull %61, %struct.xLIST_ITEM* noundef nonnull %54) #19
  br label %63

62:                                               ; preds = %50
  tail call void @vListInsertEnd(%struct.xLIST* noundef nonnull @xPendingReadyList, %struct.xLIST_ITEM* noundef nonnull %43) #19
  br label %63

63:                                               ; preds = %62, %53
  %64 = getelementptr inbounds %struct.tskTaskControlBlock, %struct.tskTaskControlBlock* %0, i32 0, i32 3
  %65 = load i32, i32* %64, align 4, !tbaa !51
  %66 = load volatile %struct.tskTaskControlBlock*, %struct.tskTaskControlBlock** @pxCurrentTCB, align 4, !tbaa !7
  %67 = getelementptr inbounds %struct.tskTaskControlBlock, %struct.tskTaskControlBlock* %66, i32 0, i32 3
  %68 = load i32, i32* %67, align 4, !tbaa !51
  %69 = icmp ugt i32 %65, %68
  br i1 %69, label %70, label %74

70:                                               ; preds = %63
  %71 = icmp eq i32* %4, null
  br i1 %71, label %73, label %72

72:                                               ; preds = %70
  store i32 1, i32* %4, align 4, !tbaa !60
  br label %73

73:                                               ; preds = %72, %70
  store volatile i32 1, i32* @xYieldPending, align 4, !tbaa !60
  br label %74

74:                                               ; preds = %29, %73, %63, %40
  %75 = phi i32 [ 1, %73 ], [ 1, %63 ], [ 1, %40 ], [ 0, %29 ]
  %76 = extractvalue { i32, i32 } %11, 0
  tail call void asm sideeffect "\09msr basepri, $0\09", "r,~{memory}"(i32 %76) #21, !srcloc !86
  ret i32 %75
}

; Function Attrs: noinline nounwind optsize
define dso_local void @vTaskNotifyGiveFromISR(%struct.tskTaskControlBlock* noundef %0, i32* noundef writeonly %1) local_unnamed_addr #2 {
  %3 = icmp eq %struct.tskTaskControlBlock* %0, null
  br i1 %3, label %4, label %7

4:                                                ; preds = %2
  %5 = tail call i32 asm sideeffect "\09mov $0, $1\09\09\09\09\09\09\09\09\09\09\09\09\0A\09msr basepri, $0\09\09\09\09\09\09\09\09\09\09\09\0A\09isb\09\09\09\09\09\09\09\09\09\09\09\09\09\09\0A\09dsb\09\09\09\09\09\09\09\09\09\09\09\09\09\09\0A", "=r,i,~{memory}"(i32 80) #21, !srcloc !69
  br label %6

6:                                                ; preds = %6, %4
  br label %6

7:                                                ; preds = %2
  tail call void @vPortValidateInterruptPriority() #19
  %8 = tail call { i32, i32 } asm sideeffect "\09mrs $0, basepri\09\09\09\09\09\09\09\09\09\09\09\0A\09mov $1, $2\09\09\09\09\09\09\09\09\09\09\09\09\0A\09msr basepri, $1\09\09\09\09\09\09\09\09\09\09\09\0A\09isb\09\09\09\09\09\09\09\09\09\09\09\09\09\09\0A\09dsb\09\09\09\09\09\09\09\09\09\09\09\09\09\09\0A", "=r,=r,i,~{memory}"(i32 80) #21, !srcloc !85
  %9 = getelementptr inbounds %struct.tskTaskControlBlock, %struct.tskTaskControlBlock* %0, i32 0, i32 11
  %10 = load volatile i8, i8* %9, align 4, !tbaa !58
  store volatile i8 2, i8* %9, align 4, !tbaa !58
  %11 = getelementptr inbounds %struct.tskTaskControlBlock, %struct.tskTaskControlBlock* %0, i32 0, i32 10
  %12 = load volatile i32, i32* %11, align 4, !tbaa !57
  %13 = add i32 %12, 1
  store volatile i32 %13, i32* %11, align 4, !tbaa !57
  %14 = icmp eq i8 %10, 1
  br i1 %14, label %15, label %47

15:                                               ; preds = %7
  %16 = getelementptr inbounds %struct.tskTaskControlBlock, %struct.tskTaskControlBlock* %0, i32 0, i32 2
  %17 = getelementptr inbounds %struct.tskTaskControlBlock, %struct.tskTaskControlBlock* %0, i32 0, i32 2, i32 4
  %18 = load %struct.xLIST*, %struct.xLIST** %17, align 4, !tbaa !68
  %19 = icmp eq %struct.xLIST* %18, null
  br i1 %19, label %23, label %20

20:                                               ; preds = %15
  %21 = tail call i32 asm sideeffect "\09mov $0, $1\09\09\09\09\09\09\09\09\09\09\09\09\0A\09msr basepri, $0\09\09\09\09\09\09\09\09\09\09\09\0A\09isb\09\09\09\09\09\09\09\09\09\09\09\09\09\09\0A\09dsb\09\09\09\09\09\09\09\09\09\09\09\09\09\09\0A", "=r,i,~{memory}"(i32 80) #21, !srcloc !69
  br label %22

22:                                               ; preds = %22, %20
  br label %22

23:                                               ; preds = %15
  %24 = load volatile i32, i32* @uxSchedulerSuspended, align 4, !tbaa !60
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %26, label %35

26:                                               ; preds = %23
  %27 = getelementptr inbounds %struct.tskTaskControlBlock, %struct.tskTaskControlBlock* %0, i32 0, i32 1
  %28 = tail call i32 @uxListRemove(%struct.xLIST_ITEM* noundef nonnull %27) #19
  %29 = getelementptr inbounds %struct.tskTaskControlBlock, %struct.tskTaskControlBlock* %0, i32 0, i32 3
  %30 = load i32, i32* %29, align 4, !tbaa !51
  %31 = shl nuw i32 1, %30
  %32 = load volatile i32, i32* @uxTopReadyPriority, align 4, !tbaa !60
  %33 = or i32 %32, %31
  store volatile i32 %33, i32* @uxTopReadyPriority, align 4, !tbaa !60
  %34 = getelementptr inbounds [5 x %struct.xLIST], [5 x %struct.xLIST]* @pxReadyTasksLists, i32 0, i32 %30
  tail call void @vListInsertEnd(%struct.xLIST* noundef nonnull %34, %struct.xLIST_ITEM* noundef nonnull %27) #19
  br label %36

35:                                               ; preds = %23
  tail call void @vListInsertEnd(%struct.xLIST* noundef nonnull @xPendingReadyList, %struct.xLIST_ITEM* noundef nonnull %16) #19
  br label %36

36:                                               ; preds = %35, %26
  %37 = getelementptr inbounds %struct.tskTaskControlBlock, %struct.tskTaskControlBlock* %0, i32 0, i32 3
  %38 = load i32, i32* %37, align 4, !tbaa !51
  %39 = load volatile %struct.tskTaskControlBlock*, %struct.tskTaskControlBlock** @pxCurrentTCB, align 4, !tbaa !7
  %40 = getelementptr inbounds %struct.tskTaskControlBlock, %struct.tskTaskControlBlock* %39, i32 0, i32 3
  %41 = load i32, i32* %40, align 4, !tbaa !51
  %42 = icmp ugt i32 %38, %41
  br i1 %42, label %43, label %47

43:                                               ; preds = %36
  %44 = icmp eq i32* %1, null
  br i1 %44, label %46, label %45

45:                                               ; preds = %43
  store i32 1, i32* %1, align 4, !tbaa !60
  br label %46

46:                                               ; preds = %45, %43
  store volatile i32 1, i32* @xYieldPending, align 4, !tbaa !60
  br label %47

47:                                               ; preds = %46, %36, %7
  %48 = extractvalue { i32, i32 } %8, 0
  tail call void asm sideeffect "\09msr basepri, $0\09", "r,~{memory}"(i32 %48) #21, !srcloc !86
  ret void
}

; Function Attrs: noinline nounwind optsize
define dso_local i32 @xTaskNotifyStateClear(%struct.tskTaskControlBlock* noundef %0) local_unnamed_addr #2 {
  %2 = icmp eq %struct.tskTaskControlBlock* %0, null
  br i1 %2, label %3, label %5

3:                                                ; preds = %1
  %4 = load volatile %struct.tskTaskControlBlock*, %struct.tskTaskControlBlock** @pxCurrentTCB, align 4, !tbaa !7
  br label %5

5:                                                ; preds = %1, %3
  %6 = phi %struct.tskTaskControlBlock* [ %4, %3 ], [ %0, %1 ]
  tail call void @vPortEnterCritical() #19
  %7 = getelementptr inbounds %struct.tskTaskControlBlock, %struct.tskTaskControlBlock* %6, i32 0, i32 11
  %8 = load volatile i8, i8* %7, align 4, !tbaa !58
  %9 = icmp eq i8 %8, 2
  br i1 %9, label %10, label %11

10:                                               ; preds = %5
  store volatile i8 0, i8* %7, align 4, !tbaa !58
  br label %11

11:                                               ; preds = %5, %10
  %12 = phi i32 [ 1, %10 ], [ 0, %5 ]
  tail call void @vPortExitCritical() #19
  ret i32 %12
}

; Function Attrs: noinline nounwind optsize
define dso_local i32 @ulTaskNotifyValueClear(%struct.tskTaskControlBlock* noundef %0, i32 noundef %1) local_unnamed_addr #2 {
  %3 = icmp eq %struct.tskTaskControlBlock* %0, null
  br i1 %3, label %4, label %6

4:                                                ; preds = %2
  %5 = load volatile %struct.tskTaskControlBlock*, %struct.tskTaskControlBlock** @pxCurrentTCB, align 4, !tbaa !7
  br label %6

6:                                                ; preds = %2, %4
  %7 = phi %struct.tskTaskControlBlock* [ %5, %4 ], [ %0, %2 ]
  tail call void @vPortEnterCritical() #19
  %8 = load volatile %struct.tskTaskControlBlock*, %struct.tskTaskControlBlock** @pxCurrentTCB, align 4, !tbaa !7
  %9 = getelementptr inbounds %struct.tskTaskControlBlock, %struct.tskTaskControlBlock* %8, i32 0, i32 10
  %10 = load volatile i32, i32* %9, align 4, !tbaa !57
  %11 = xor i32 %1, -1
  %12 = getelementptr inbounds %struct.tskTaskControlBlock, %struct.tskTaskControlBlock* %7, i32 0, i32 10
  %13 = load volatile i32, i32* %12, align 4, !tbaa !57
  %14 = and i32 %13, %11
  store volatile i32 %14, i32* %12, align 4, !tbaa !57
  tail call void @vPortExitCritical() #19
  ret i32 %10
}

; Function Attrs: noinline nounwind optsize
define dso_local i32 @xTimerCreateTimerTask() local_unnamed_addr #2 {
  tail call fastcc void @prvCheckForValidListAndQueue() #20
  %1 = load %struct.QueueDefinition*, %struct.QueueDefinition** @xTimerQueue, align 4, !tbaa !7
  %2 = icmp eq %struct.QueueDefinition* %1, null
  br i1 %2, label %6, label %3

3:                                                ; preds = %0
  %4 = tail call i32 @xTaskCreate(void (i8*)* noundef nonnull @prvTimerTask, i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @.str.10, i32 0, i32 0), i16 noundef zeroext 260, i8* noundef null, i32 noundef 2, %struct.tskTaskControlBlock** noundef nonnull @xTimerTaskHandle) #19
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %6, label %9

6:                                                ; preds = %0, %3
  %7 = tail call i32 asm sideeffect "\09mov $0, $1\09\09\09\09\09\09\09\09\09\09\09\09\0A\09msr basepri, $0\09\09\09\09\09\09\09\09\09\09\09\0A\09isb\09\09\09\09\09\09\09\09\09\09\09\09\09\09\0A\09dsb\09\09\09\09\09\09\09\09\09\09\09\09\09\09\0A", "=r,i,~{memory}"(i32 80) #21, !srcloc !123
  br label %8

8:                                                ; preds = %8, %6
  br label %8

9:                                                ; preds = %3
  ret i32 %4
}

; Function Attrs: noinline nounwind optsize
define internal fastcc void @prvCheckForValidListAndQueue() unnamed_addr #2 {
  tail call void @vPortEnterCritical() #19
  %1 = load %struct.QueueDefinition*, %struct.QueueDefinition** @xTimerQueue, align 4, !tbaa !7
  %2 = icmp eq %struct.QueueDefinition* %1, null
  br i1 %2, label %3, label %7

3:                                                ; preds = %0
  tail call void @vListInitialise(%struct.xLIST* noundef nonnull @xActiveTimerList1) #19
  tail call void @vListInitialise(%struct.xLIST* noundef nonnull @xActiveTimerList2) #19
  store %struct.xLIST* @xActiveTimerList1, %struct.xLIST** @pxCurrentTimerList, align 4, !tbaa !7
  store %struct.xLIST* @xActiveTimerList2, %struct.xLIST** @pxOverflowTimerList, align 4, !tbaa !7
  %4 = tail call %struct.QueueDefinition* @xQueueGenericCreate(i32 noundef 10, i32 noundef 12, i8 noundef zeroext 0) #19
  store %struct.QueueDefinition* %4, %struct.QueueDefinition** @xTimerQueue, align 4, !tbaa !7
  %5 = icmp eq %struct.QueueDefinition* %4, null
  br i1 %5, label %7, label %6

6:                                                ; preds = %3
  tail call void @vQueueAddToRegistry(%struct.QueueDefinition* noundef nonnull %4, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1.11, i32 0, i32 0)) #19
  br label %7

7:                                                ; preds = %0, %6, %3
  tail call void @vPortExitCritical() #19
  ret void
}

; Function Attrs: noinline noreturn nounwind optsize
define internal void @prvTimerTask(i8* nocapture noundef readnone %0) #0 {
  %2 = alloca i32, align 4
  %3 = bitcast i32* %2 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %3) #21
  br label %4

4:                                                ; preds = %4, %1
  %5 = call fastcc i32 @prvGetNextExpireTime(i32* noundef nonnull %2) #20
  %6 = load i32, i32* %2, align 4, !tbaa !60
  tail call fastcc void @prvProcessTimerOrBlockTask(i32 noundef %5, i32 noundef %6) #20
  tail call fastcc void @prvProcessReceivedCommands() #20
  br label %4
}

; Function Attrs: mustprogress nofree noinline norecurse nounwind optsize willreturn
define internal fastcc i32 @prvGetNextExpireTime(i32* nocapture noundef writeonly %0) unnamed_addr #7 {
  %2 = load %struct.xLIST*, %struct.xLIST** @pxCurrentTimerList, align 4, !tbaa !7
  %3 = getelementptr inbounds %struct.xLIST, %struct.xLIST* %2, i32 0, i32 0
  %4 = load volatile i32, i32* %3, align 4, !tbaa !65
  %5 = icmp eq i32 %4, 0
  %6 = zext i1 %5 to i32
  store i32 %6, i32* %0, align 4, !tbaa !60
  br i1 %5, label %12, label %7

7:                                                ; preds = %1
  %8 = getelementptr inbounds %struct.xLIST, %struct.xLIST* %2, i32 0, i32 2, i32 1
  %9 = load %struct.xLIST_ITEM*, %struct.xLIST_ITEM** %8, align 4, !tbaa !72
  %10 = getelementptr inbounds %struct.xLIST_ITEM, %struct.xLIST_ITEM* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4, !tbaa !112
  br label %12

12:                                               ; preds = %1, %7
  %13 = phi i32 [ %11, %7 ], [ 0, %1 ]
  ret i32 %13
}

; Function Attrs: noinline nounwind optsize
define internal fastcc void @prvProcessTimerOrBlockTask(i32 noundef %0, i32 noundef %1) unnamed_addr #2 {
  %3 = alloca i32, align 4
  %4 = bitcast i32* %3 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %4) #21
  tail call void @vTaskSuspendAll() #19
  %5 = call fastcc i32 @prvSampleTimeNow(i32* noundef nonnull %3) #20
  %6 = load i32, i32* %3, align 4, !tbaa !60
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %8, label %29

8:                                                ; preds = %2
  %9 = icmp ne i32 %1, 0
  %10 = icmp ult i32 %5, %0
  %11 = select i1 %9, i1 true, i1 %10
  br i1 %11, label %14, label %12

12:                                               ; preds = %8
  %13 = tail call i32 @xTaskResumeAll() #19
  tail call fastcc void @prvProcessExpiredTimer(i32 noundef %0, i32 noundef %5) #20
  br label %31

14:                                               ; preds = %8
  %15 = icmp eq i32 %1, 0
  br i1 %15, label %22, label %16

16:                                               ; preds = %14
  %17 = load %struct.xLIST*, %struct.xLIST** @pxOverflowTimerList, align 4, !tbaa !7
  %18 = getelementptr inbounds %struct.xLIST, %struct.xLIST* %17, i32 0, i32 0
  %19 = load volatile i32, i32* %18, align 4, !tbaa !65
  %20 = icmp eq i32 %19, 0
  %21 = zext i1 %20 to i32
  br label %22

22:                                               ; preds = %16, %14
  %23 = phi i32 [ %21, %16 ], [ 0, %14 ]
  %24 = load %struct.QueueDefinition*, %struct.QueueDefinition** @xTimerQueue, align 4, !tbaa !7
  %25 = sub i32 %0, %5
  tail call void @vQueueWaitForMessageRestricted(%struct.QueueDefinition* noundef %24, i32 noundef %25, i32 noundef %23) #19
  %26 = tail call i32 @xTaskResumeAll() #19
  %27 = icmp eq i32 %26, 0
  br i1 %27, label %28, label %31

28:                                               ; preds = %22
  store volatile i32 268435456, i32* inttoptr (i32 -536810236 to i32*), align 4, !tbaa !18
  tail call void asm sideeffect "dsb", "~{memory}"() #21, !srcloc !124
  tail call void asm sideeffect "isb", ""() #21, !srcloc !125
  br label %31

29:                                               ; preds = %2
  %30 = tail call i32 @xTaskResumeAll() #19
  br label %31

31:                                               ; preds = %12, %22, %28, %29
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %4) #21
  ret void
}

; Function Attrs: noinline nounwind optsize
define internal fastcc void @prvProcessReceivedCommands() unnamed_addr #2 {
  %1 = alloca %struct.tmrTimerQueueMessage, align 4
  %2 = alloca i32, align 4
  %3 = bitcast %struct.tmrTimerQueueMessage* %1 to i8*
  call void @llvm.lifetime.start.p0i8(i64 12, i8* nonnull %3) #21
  %4 = bitcast i32* %2 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %4) #21
  %5 = load %struct.QueueDefinition*, %struct.QueueDefinition** @xTimerQueue, align 4, !tbaa !7
  %6 = call i32 @xQueueReceive(%struct.QueueDefinition* noundef %5, i8* noundef nonnull %3, i32 noundef 0) #19
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %81, label %8

8:                                                ; preds = %0
  %9 = getelementptr inbounds %struct.tmrTimerQueueMessage, %struct.tmrTimerQueueMessage* %1, i32 0, i32 0
  %10 = getelementptr inbounds %struct.tmrTimerQueueMessage, %struct.tmrTimerQueueMessage* %1, i32 0, i32 1, i32 0, i32 1
  %11 = getelementptr inbounds %struct.tmrTimerQueueMessage, %struct.tmrTimerQueueMessage* %1, i32 0, i32 1, i32 0, i32 0
  br label %12

12:                                               ; preds = %8, %77
  %13 = load i32, i32* %9, align 4, !tbaa !126
  %14 = icmp sgt i32 %13, -1
  br i1 %14, label %15, label %77

15:                                               ; preds = %12
  %16 = load %struct.tmrTimerControl*, %struct.tmrTimerControl** %10, align 4, !tbaa !45
  %17 = getelementptr inbounds %struct.tmrTimerControl, %struct.tmrTimerControl* %16, i32 0, i32 1, i32 4
  %18 = load %struct.xLIST*, %struct.xLIST** %17, align 4, !tbaa !128
  %19 = icmp eq %struct.xLIST* %18, null
  br i1 %19, label %23, label %20

20:                                               ; preds = %15
  %21 = getelementptr inbounds %struct.tmrTimerControl, %struct.tmrTimerControl* %16, i32 0, i32 1
  %22 = call i32 @uxListRemove(%struct.xLIST_ITEM* noundef nonnull %21) #19
  br label %23

23:                                               ; preds = %15, %20
  %24 = call fastcc i32 @prvSampleTimeNow(i32* noundef nonnull %2) #20
  %25 = load i32, i32* %9, align 4, !tbaa !126
  switch i32 %25, label %77 [
    i32 1, label %26
    i32 6, label %26
    i32 2, label %26
    i32 7, label %26
    i32 0, label %26
    i32 3, label %51
    i32 8, label %51
    i32 4, label %55
    i32 9, label %55
    i32 5, label %68
  ]

26:                                               ; preds = %23, %23, %23, %23, %23
  %27 = getelementptr inbounds %struct.tmrTimerControl, %struct.tmrTimerControl* %16, i32 0, i32 6
  %28 = load i8, i8* %27, align 4, !tbaa !130
  %29 = or i8 %28, 1
  store i8 %29, i8* %27, align 4, !tbaa !130
  %30 = load i32, i32* %11, align 4, !tbaa !45
  %31 = getelementptr inbounds %struct.tmrTimerControl, %struct.tmrTimerControl* %16, i32 0, i32 2
  %32 = load i32, i32* %31, align 4, !tbaa !131
  %33 = add i32 %32, %30
  %34 = call fastcc i32 @prvInsertTimerInActiveList(%struct.tmrTimerControl* noundef nonnull %16, i32 noundef %33, i32 noundef %24, i32 noundef %30) #20
  %35 = icmp eq i32 %34, 0
  br i1 %35, label %77, label %36

36:                                               ; preds = %26
  %37 = getelementptr inbounds %struct.tmrTimerControl, %struct.tmrTimerControl* %16, i32 0, i32 4
  %38 = load void (%struct.tmrTimerControl*)*, void (%struct.tmrTimerControl*)** %37, align 4, !tbaa !132
  call void %38(%struct.tmrTimerControl* noundef nonnull %16) #19
  %39 = load i8, i8* %27, align 4, !tbaa !130
  %40 = and i8 %39, 4
  %41 = icmp eq i8 %40, 0
  br i1 %41, label %77, label %42

42:                                               ; preds = %36
  %43 = load i32, i32* %11, align 4, !tbaa !45
  %44 = load i32, i32* %31, align 4, !tbaa !131
  %45 = add i32 %44, %43
  %46 = call i32 @xTimerGenericCommand(%struct.tmrTimerControl* noundef nonnull %16, i32 noundef 0, i32 noundef %45, i32* noundef null, i32 noundef 0) #20
  %47 = icmp eq i32 %46, 0
  br i1 %47, label %48, label %77

48:                                               ; preds = %42
  %49 = call i32 asm sideeffect "\09mov $0, $1\09\09\09\09\09\09\09\09\09\09\09\09\0A\09msr basepri, $0\09\09\09\09\09\09\09\09\09\09\09\0A\09isb\09\09\09\09\09\09\09\09\09\09\09\09\09\09\0A\09dsb\09\09\09\09\09\09\09\09\09\09\09\09\09\09\0A", "=r,i,~{memory}"(i32 80) #21, !srcloc !123
  br label %50

50:                                               ; preds = %50, %48
  br label %50

51:                                               ; preds = %23, %23
  %52 = getelementptr inbounds %struct.tmrTimerControl, %struct.tmrTimerControl* %16, i32 0, i32 6
  %53 = load i8, i8* %52, align 4, !tbaa !130
  %54 = and i8 %53, -2
  store i8 %54, i8* %52, align 4, !tbaa !130
  br label %77

55:                                               ; preds = %23, %23
  %56 = getelementptr inbounds %struct.tmrTimerControl, %struct.tmrTimerControl* %16, i32 0, i32 6
  %57 = load i8, i8* %56, align 4, !tbaa !130
  %58 = or i8 %57, 1
  store i8 %58, i8* %56, align 4, !tbaa !130
  %59 = load i32, i32* %11, align 4, !tbaa !45
  %60 = getelementptr inbounds %struct.tmrTimerControl, %struct.tmrTimerControl* %16, i32 0, i32 2
  store i32 %59, i32* %60, align 4, !tbaa !131
  %61 = icmp eq i32 %59, 0
  br i1 %61, label %62, label %65

62:                                               ; preds = %55
  %63 = call i32 asm sideeffect "\09mov $0, $1\09\09\09\09\09\09\09\09\09\09\09\09\0A\09msr basepri, $0\09\09\09\09\09\09\09\09\09\09\09\0A\09isb\09\09\09\09\09\09\09\09\09\09\09\09\09\09\0A\09dsb\09\09\09\09\09\09\09\09\09\09\09\09\09\09\0A", "=r,i,~{memory}"(i32 80) #21, !srcloc !123
  br label %64

64:                                               ; preds = %64, %62
  br label %64

65:                                               ; preds = %55
  %66 = add i32 %59, %24
  %67 = call fastcc i32 @prvInsertTimerInActiveList(%struct.tmrTimerControl* noundef nonnull %16, i32 noundef %66, i32 noundef %24, i32 noundef %24) #20
  br label %77

68:                                               ; preds = %23
  %69 = getelementptr inbounds %struct.tmrTimerControl, %struct.tmrTimerControl* %16, i32 0, i32 6
  %70 = load i8, i8* %69, align 4, !tbaa !130
  %71 = and i8 %70, 2
  %72 = icmp eq i8 %71, 0
  br i1 %72, label %73, label %75

73:                                               ; preds = %68
  %74 = bitcast %struct.tmrTimerControl* %16 to i8*
  call void @vPortFree(i8* noundef %74) #19
  br label %77

75:                                               ; preds = %68
  %76 = and i8 %70, -2
  store i8 %76, i8* %69, align 4, !tbaa !130
  br label %77

77:                                               ; preds = %42, %51, %65, %26, %36, %75, %73, %23, %12
  %78 = load %struct.QueueDefinition*, %struct.QueueDefinition** @xTimerQueue, align 4, !tbaa !7
  %79 = call i32 @xQueueReceive(%struct.QueueDefinition* noundef %78, i8* noundef nonnull %3, i32 noundef 0) #19
  %80 = icmp eq i32 %79, 0
  br i1 %80, label %81, label %12, !llvm.loop !133

81:                                               ; preds = %77, %0
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %4) #21
  call void @llvm.lifetime.end.p0i8(i64 12, i8* nonnull %3) #21
  ret void
}

; Function Attrs: noinline nounwind optsize
define internal fastcc i32 @prvSampleTimeNow(i32* nocapture noundef writeonly %0) unnamed_addr #2 {
  %2 = tail call i32 @xTaskGetTickCount() #19
  %3 = load i32, i32* @prvSampleTimeNow.xLastTime, align 4, !tbaa !18
  %4 = icmp ult i32 %2, %3
  br i1 %4, label %5, label %6

5:                                                ; preds = %1
  tail call fastcc void @prvSwitchTimerLists() #20
  br label %6

6:                                                ; preds = %1, %5
  %7 = phi i32 [ 1, %5 ], [ 0, %1 ]
  store i32 %7, i32* %0, align 4, !tbaa !60
  store i32 %2, i32* @prvSampleTimeNow.xLastTime, align 4, !tbaa !18
  ret i32 %2
}

; Function Attrs: noinline nounwind optsize
define internal fastcc i32 @prvInsertTimerInActiveList(%struct.tmrTimerControl* noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3) unnamed_addr #2 {
  %5 = getelementptr inbounds %struct.tmrTimerControl, %struct.tmrTimerControl* %0, i32 0, i32 1
  %6 = getelementptr inbounds %struct.xLIST_ITEM, %struct.xLIST_ITEM* %5, i32 0, i32 0
  store i32 %1, i32* %6, align 4, !tbaa !134
  %7 = getelementptr inbounds %struct.tmrTimerControl, %struct.tmrTimerControl* %0, i32 0, i32 1, i32 3
  %8 = bitcast i8** %7 to %struct.tmrTimerControl**
  store %struct.tmrTimerControl* %0, %struct.tmrTimerControl** %8, align 4, !tbaa !135
  %9 = icmp ugt i32 %1, %2
  br i1 %9, label %15, label %10

10:                                               ; preds = %4
  %11 = sub i32 %2, %3
  %12 = getelementptr inbounds %struct.tmrTimerControl, %struct.tmrTimerControl* %0, i32 0, i32 2
  %13 = load i32, i32* %12, align 4, !tbaa !131
  %14 = icmp ult i32 %11, %13
  br i1 %14, label %19, label %22

15:                                               ; preds = %4
  %16 = icmp uge i32 %2, %3
  %17 = icmp ult i32 %1, %3
  %18 = or i1 %16, %17
  br i1 %18, label %19, label %22

19:                                               ; preds = %15, %10
  %20 = phi %struct.xLIST** [ @pxOverflowTimerList, %10 ], [ @pxCurrentTimerList, %15 ]
  %21 = load %struct.xLIST*, %struct.xLIST** %20, align 4, !tbaa !7
  tail call void @vListInsert(%struct.xLIST* noundef %21, %struct.xLIST_ITEM* noundef nonnull %5) #19
  br label %22

22:                                               ; preds = %19, %15, %10
  %23 = phi i32 [ 1, %10 ], [ 1, %15 ], [ 0, %19 ]
  ret i32 %23
}

; Function Attrs: noinline nounwind optsize
define dso_local i32 @xTimerGenericCommand(%struct.tmrTimerControl* noundef %0, i32 noundef %1, i32 noundef %2, i32* noundef %3, i32 noundef %4) local_unnamed_addr #2 {
  %6 = alloca %struct.tmrTimerQueueMessage, align 4
  %7 = bitcast %struct.tmrTimerQueueMessage* %6 to i8*
  call void @llvm.lifetime.start.p0i8(i64 12, i8* nonnull %7) #21
  %8 = icmp eq %struct.tmrTimerControl* %0, null
  br i1 %8, label %9, label %12

9:                                                ; preds = %5
  %10 = tail call i32 asm sideeffect "\09mov $0, $1\09\09\09\09\09\09\09\09\09\09\09\09\0A\09msr basepri, $0\09\09\09\09\09\09\09\09\09\09\09\0A\09isb\09\09\09\09\09\09\09\09\09\09\09\09\09\09\0A\09dsb\09\09\09\09\09\09\09\09\09\09\09\09\09\09\0A", "=r,i,~{memory}"(i32 80) #21, !srcloc !123
  br label %11

11:                                               ; preds = %11, %9
  br label %11

12:                                               ; preds = %5
  %13 = load %struct.QueueDefinition*, %struct.QueueDefinition** @xTimerQueue, align 4, !tbaa !7
  %14 = icmp eq %struct.QueueDefinition* %13, null
  br i1 %14, label %30, label %15

15:                                               ; preds = %12
  %16 = getelementptr inbounds %struct.tmrTimerQueueMessage, %struct.tmrTimerQueueMessage* %6, i32 0, i32 0
  store i32 %1, i32* %16, align 4, !tbaa !126
  %17 = getelementptr inbounds %struct.tmrTimerQueueMessage, %struct.tmrTimerQueueMessage* %6, i32 0, i32 1, i32 0, i32 0
  store i32 %2, i32* %17, align 4, !tbaa !45
  %18 = getelementptr inbounds %struct.tmrTimerQueueMessage, %struct.tmrTimerQueueMessage* %6, i32 0, i32 1, i32 0, i32 1
  store %struct.tmrTimerControl* %0, %struct.tmrTimerControl** %18, align 4, !tbaa !45
  %19 = icmp slt i32 %1, 6
  br i1 %19, label %20, label %28

20:                                               ; preds = %15
  %21 = tail call i32 @xTaskGetSchedulerState() #19
  %22 = icmp eq i32 %21, 2
  %23 = load %struct.QueueDefinition*, %struct.QueueDefinition** @xTimerQueue, align 4, !tbaa !7
  br i1 %22, label %24, label %26

24:                                               ; preds = %20
  %25 = call i32 @xQueueGenericSend(%struct.QueueDefinition* noundef %23, i8* noundef nonnull %7, i32 noundef %4, i32 noundef 0) #19
  br label %30

26:                                               ; preds = %20
  %27 = call i32 @xQueueGenericSend(%struct.QueueDefinition* noundef %23, i8* noundef nonnull %7, i32 noundef 0, i32 noundef 0) #19
  br label %30

28:                                               ; preds = %15
  %29 = call i32 @xQueueGenericSendFromISR(%struct.QueueDefinition* noundef nonnull %13, i8* noundef nonnull %7, i32* noundef %3, i32 noundef 0) #19
  br label %30

30:                                               ; preds = %12, %28, %26, %24
  %31 = phi i32 [ %25, %24 ], [ %27, %26 ], [ %29, %28 ], [ 0, %12 ]
  call void @llvm.lifetime.end.p0i8(i64 12, i8* nonnull %7) #21
  ret i32 %31
}

; Function Attrs: noinline nounwind optsize
define internal fastcc void @prvSwitchTimerLists() unnamed_addr #2 {
  %1 = load %struct.xLIST*, %struct.xLIST** @pxCurrentTimerList, align 4, !tbaa !7
  %2 = getelementptr inbounds %struct.xLIST, %struct.xLIST* %1, i32 0, i32 0
  %3 = load volatile i32, i32* %2, align 4, !tbaa !65
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %46, label %5

5:                                                ; preds = %0, %41
  %6 = phi %struct.xLIST* [ %42, %41 ], [ %1, %0 ]
  %7 = getelementptr inbounds %struct.xLIST, %struct.xLIST* %6, i32 0, i32 2, i32 1
  %8 = load %struct.xLIST_ITEM*, %struct.xLIST_ITEM** %7, align 4, !tbaa !72
  %9 = getelementptr inbounds %struct.xLIST_ITEM, %struct.xLIST_ITEM* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4, !tbaa !112
  %11 = getelementptr inbounds %struct.xLIST_ITEM, %struct.xLIST_ITEM* %8, i32 0, i32 3
  %12 = load i8*, i8** %11, align 4, !tbaa !73
  %13 = bitcast i8* %12 to %struct.tmrTimerControl*
  %14 = getelementptr inbounds i8, i8* %12, i32 4
  %15 = bitcast i8* %14 to %struct.xLIST_ITEM*
  %16 = tail call i32 @uxListRemove(%struct.xLIST_ITEM* noundef nonnull %15) #19
  %17 = getelementptr inbounds i8, i8* %12, i32 32
  %18 = bitcast i8* %17 to void (%struct.tmrTimerControl*)**
  %19 = load void (%struct.tmrTimerControl*)*, void (%struct.tmrTimerControl*)** %18, align 4, !tbaa !132
  tail call void %19(%struct.tmrTimerControl* noundef %13) #19
  %20 = getelementptr inbounds i8, i8* %12, i32 40
  %21 = load i8, i8* %20, align 4, !tbaa !130
  %22 = and i8 %21, 4
  %23 = icmp eq i8 %22, 0
  br i1 %23, label %41, label %24

24:                                               ; preds = %5
  %25 = getelementptr inbounds i8, i8* %12, i32 24
  %26 = bitcast i8* %25 to i32*
  %27 = load i32, i32* %26, align 4, !tbaa !131
  %28 = add i32 %27, %10
  %29 = icmp ugt i32 %28, %10
  br i1 %29, label %30, label %35

30:                                               ; preds = %24
  %31 = bitcast i8* %14 to i32*
  store i32 %28, i32* %31, align 4, !tbaa !134
  %32 = getelementptr inbounds i8, i8* %12, i32 16
  %33 = bitcast i8* %32 to i8**
  store i8* %12, i8** %33, align 4, !tbaa !135
  %34 = load %struct.xLIST*, %struct.xLIST** @pxCurrentTimerList, align 4, !tbaa !7
  tail call void @vListInsert(%struct.xLIST* noundef %34, %struct.xLIST_ITEM* noundef nonnull %15) #19
  br label %41

35:                                               ; preds = %24
  %36 = tail call i32 @xTimerGenericCommand(%struct.tmrTimerControl* noundef nonnull %13, i32 noundef 0, i32 noundef %10, i32* noundef null, i32 noundef 0) #20
  %37 = icmp eq i32 %36, 0
  br i1 %37, label %38, label %41

38:                                               ; preds = %35
  %39 = tail call i32 asm sideeffect "\09mov $0, $1\09\09\09\09\09\09\09\09\09\09\09\09\0A\09msr basepri, $0\09\09\09\09\09\09\09\09\09\09\09\0A\09isb\09\09\09\09\09\09\09\09\09\09\09\09\09\09\0A\09dsb\09\09\09\09\09\09\09\09\09\09\09\09\09\09\0A", "=r,i,~{memory}"(i32 80) #21, !srcloc !123
  br label %40

40:                                               ; preds = %40, %38
  br label %40

41:                                               ; preds = %35, %5, %30
  %42 = load %struct.xLIST*, %struct.xLIST** @pxCurrentTimerList, align 4, !tbaa !7
  %43 = getelementptr inbounds %struct.xLIST, %struct.xLIST* %42, i32 0, i32 0
  %44 = load volatile i32, i32* %43, align 4, !tbaa !65
  %45 = icmp eq i32 %44, 0
  br i1 %45, label %46, label %5, !llvm.loop !136

46:                                               ; preds = %41, %0
  %47 = phi %struct.xLIST* [ %1, %0 ], [ %42, %41 ]
  %48 = load %struct.xLIST*, %struct.xLIST** @pxOverflowTimerList, align 4, !tbaa !7
  store %struct.xLIST* %48, %struct.xLIST** @pxCurrentTimerList, align 4, !tbaa !7
  store %struct.xLIST* %47, %struct.xLIST** @pxOverflowTimerList, align 4, !tbaa !7
  ret void
}

; Function Attrs: noinline nounwind optsize
define internal fastcc void @prvProcessExpiredTimer(i32 noundef %0, i32 noundef %1) unnamed_addr #2 {
  %3 = load %struct.xLIST*, %struct.xLIST** @pxCurrentTimerList, align 4, !tbaa !7
  %4 = getelementptr inbounds %struct.xLIST, %struct.xLIST* %3, i32 0, i32 2, i32 1
  %5 = load %struct.xLIST_ITEM*, %struct.xLIST_ITEM** %4, align 4, !tbaa !72
  %6 = getelementptr inbounds %struct.xLIST_ITEM, %struct.xLIST_ITEM* %5, i32 0, i32 3
  %7 = bitcast i8** %6 to %struct.tmrTimerControl**
  %8 = load %struct.tmrTimerControl*, %struct.tmrTimerControl** %7, align 4, !tbaa !73
  %9 = getelementptr inbounds %struct.tmrTimerControl, %struct.tmrTimerControl* %8, i32 0, i32 1
  %10 = tail call i32 @uxListRemove(%struct.xLIST_ITEM* noundef nonnull %9) #19
  %11 = getelementptr inbounds %struct.tmrTimerControl, %struct.tmrTimerControl* %8, i32 0, i32 6
  %12 = load i8, i8* %11, align 4, !tbaa !130
  %13 = and i8 %12, 4
  %14 = icmp eq i8 %13, 0
  br i1 %14, label %27, label %15

15:                                               ; preds = %2
  %16 = getelementptr inbounds %struct.tmrTimerControl, %struct.tmrTimerControl* %8, i32 0, i32 2
  %17 = load i32, i32* %16, align 4, !tbaa !131
  %18 = add i32 %17, %0
  %19 = tail call fastcc i32 @prvInsertTimerInActiveList(%struct.tmrTimerControl* noundef nonnull %8, i32 noundef %18, i32 noundef %1, i32 noundef %0) #20
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %29, label %21

21:                                               ; preds = %15
  %22 = tail call i32 @xTimerGenericCommand(%struct.tmrTimerControl* noundef nonnull %8, i32 noundef 0, i32 noundef %0, i32* noundef null, i32 noundef 0) #20
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %24, label %29

24:                                               ; preds = %21
  %25 = tail call i32 asm sideeffect "\09mov $0, $1\09\09\09\09\09\09\09\09\09\09\09\09\0A\09msr basepri, $0\09\09\09\09\09\09\09\09\09\09\09\0A\09isb\09\09\09\09\09\09\09\09\09\09\09\09\09\09\0A\09dsb\09\09\09\09\09\09\09\09\09\09\09\09\09\09\0A", "=r,i,~{memory}"(i32 80) #21, !srcloc !123
  br label %26

26:                                               ; preds = %26, %24
  br label %26

27:                                               ; preds = %2
  %28 = and i8 %12, -2
  store i8 %28, i8* %11, align 4, !tbaa !130
  br label %29

29:                                               ; preds = %21, %15, %27
  %30 = getelementptr inbounds %struct.tmrTimerControl, %struct.tmrTimerControl* %8, i32 0, i32 4
  %31 = load void (%struct.tmrTimerControl*)*, void (%struct.tmrTimerControl*)** %30, align 4, !tbaa !132
  tail call void %31(%struct.tmrTimerControl* noundef nonnull %8) #19
  ret void
}

; Function Attrs: noinline nounwind optsize
define dso_local %struct.tmrTimerControl* @xTimerCreate(i8* noundef %0, i32 noundef %1, i32 noundef %2, i8* noundef %3, void (%struct.tmrTimerControl*)* noundef %4) local_unnamed_addr #2 {
  %6 = tail call i8* @pvPortMalloc(i32 noundef 44) #19
  %7 = bitcast i8* %6 to %struct.tmrTimerControl*
  %8 = icmp eq i8* %6, null
  br i1 %8, label %11, label %9

9:                                                ; preds = %5
  %10 = getelementptr inbounds i8, i8* %6, i32 40
  store i8 0, i8* %10, align 4, !tbaa !130
  tail call fastcc void @prvInitialiseNewTimer(i8* noundef %0, i32 noundef %1, i32 noundef %2, i8* noundef %3, void (%struct.tmrTimerControl*)* noundef %4, %struct.tmrTimerControl* noundef nonnull %7) #20
  br label %11

11:                                               ; preds = %9, %5
  ret %struct.tmrTimerControl* %7
}

; Function Attrs: noinline nounwind optsize
define internal fastcc void @prvInitialiseNewTimer(i8* noundef %0, i32 noundef %1, i32 noundef %2, i8* noundef %3, void (%struct.tmrTimerControl*)* noundef %4, %struct.tmrTimerControl* noundef %5) unnamed_addr #2 {
  %7 = icmp eq i32 %1, 0
  br i1 %7, label %8, label %11

8:                                                ; preds = %6
  %9 = tail call i32 asm sideeffect "\09mov $0, $1\09\09\09\09\09\09\09\09\09\09\09\09\0A\09msr basepri, $0\09\09\09\09\09\09\09\09\09\09\09\0A\09isb\09\09\09\09\09\09\09\09\09\09\09\09\09\09\0A\09dsb\09\09\09\09\09\09\09\09\09\09\09\09\09\09\0A", "=r,i,~{memory}"(i32 80) #21, !srcloc !123
  br label %10

10:                                               ; preds = %10, %8
  br label %10

11:                                               ; preds = %6
  %12 = icmp eq %struct.tmrTimerControl* %5, null
  br i1 %12, label %24, label %13

13:                                               ; preds = %11
  tail call fastcc void @prvCheckForValidListAndQueue() #20
  %14 = getelementptr inbounds %struct.tmrTimerControl, %struct.tmrTimerControl* %5, i32 0, i32 0
  store i8* %0, i8** %14, align 4, !tbaa !137
  %15 = getelementptr inbounds %struct.tmrTimerControl, %struct.tmrTimerControl* %5, i32 0, i32 2
  store i32 %1, i32* %15, align 4, !tbaa !131
  %16 = getelementptr inbounds %struct.tmrTimerControl, %struct.tmrTimerControl* %5, i32 0, i32 3
  store i8* %3, i8** %16, align 4, !tbaa !138
  %17 = getelementptr inbounds %struct.tmrTimerControl, %struct.tmrTimerControl* %5, i32 0, i32 4
  store void (%struct.tmrTimerControl*)* %4, void (%struct.tmrTimerControl*)** %17, align 4, !tbaa !132
  %18 = getelementptr inbounds %struct.tmrTimerControl, %struct.tmrTimerControl* %5, i32 0, i32 1
  tail call void @vListInitialiseItem(%struct.xLIST_ITEM* noundef nonnull %18) #19
  %19 = icmp eq i32 %2, 0
  br i1 %19, label %24, label %20

20:                                               ; preds = %13
  %21 = getelementptr inbounds %struct.tmrTimerControl, %struct.tmrTimerControl* %5, i32 0, i32 6
  %22 = load i8, i8* %21, align 4, !tbaa !130
  %23 = or i8 %22, 4
  store i8 %23, i8* %21, align 4, !tbaa !130
  br label %24

24:                                               ; preds = %13, %20, %11
  ret void
}

; Function Attrs: noinline nounwind optsize
define dso_local %struct.tskTaskControlBlock* @xTimerGetTimerDaemonTaskHandle() local_unnamed_addr #2 {
  %1 = load %struct.tskTaskControlBlock*, %struct.tskTaskControlBlock** @xTimerTaskHandle, align 4, !tbaa !7
  %2 = icmp eq %struct.tskTaskControlBlock* %1, null
  br i1 %2, label %3, label %6

3:                                                ; preds = %0
  %4 = tail call i32 asm sideeffect "\09mov $0, $1\09\09\09\09\09\09\09\09\09\09\09\09\0A\09msr basepri, $0\09\09\09\09\09\09\09\09\09\09\09\0A\09isb\09\09\09\09\09\09\09\09\09\09\09\09\09\09\0A\09dsb\09\09\09\09\09\09\09\09\09\09\09\09\09\09\0A", "=r,i,~{memory}"(i32 80) #21, !srcloc !123
  br label %5

5:                                                ; preds = %5, %3
  br label %5

6:                                                ; preds = %0
  ret %struct.tskTaskControlBlock* %1
}

; Function Attrs: noinline nounwind optsize
define dso_local i32 @xTimerGetPeriod(%struct.tmrTimerControl* noundef readonly %0) local_unnamed_addr #2 {
  %2 = icmp eq %struct.tmrTimerControl* %0, null
  br i1 %2, label %3, label %6

3:                                                ; preds = %1
  %4 = tail call i32 asm sideeffect "\09mov $0, $1\09\09\09\09\09\09\09\09\09\09\09\09\0A\09msr basepri, $0\09\09\09\09\09\09\09\09\09\09\09\0A\09isb\09\09\09\09\09\09\09\09\09\09\09\09\09\09\0A\09dsb\09\09\09\09\09\09\09\09\09\09\09\09\09\09\0A", "=r,i,~{memory}"(i32 80) #21, !srcloc !123
  br label %5

5:                                                ; preds = %5, %3
  br label %5

6:                                                ; preds = %1
  %7 = getelementptr inbounds %struct.tmrTimerControl, %struct.tmrTimerControl* %0, i32 0, i32 2
  %8 = load i32, i32* %7, align 4, !tbaa !131
  ret i32 %8
}

; Function Attrs: noinline nounwind optsize
define dso_local void @vTimerSetReloadMode(%struct.tmrTimerControl* noundef %0, i32 noundef %1) local_unnamed_addr #2 {
  %3 = icmp eq %struct.tmrTimerControl* %0, null
  br i1 %3, label %4, label %7

4:                                                ; preds = %2
  %5 = tail call i32 asm sideeffect "\09mov $0, $1\09\09\09\09\09\09\09\09\09\09\09\09\0A\09msr basepri, $0\09\09\09\09\09\09\09\09\09\09\09\0A\09isb\09\09\09\09\09\09\09\09\09\09\09\09\09\09\0A\09dsb\09\09\09\09\09\09\09\09\09\09\09\09\09\09\0A", "=r,i,~{memory}"(i32 80) #21, !srcloc !123
  br label %6

6:                                                ; preds = %6, %4
  br label %6

7:                                                ; preds = %2
  tail call void @vPortEnterCritical() #19
  %8 = icmp eq i32 %1, 0
  %9 = getelementptr inbounds %struct.tmrTimerControl, %struct.tmrTimerControl* %0, i32 0, i32 6
  %10 = load i8, i8* %9, align 4, !tbaa !130
  %11 = and i8 %10, -5
  %12 = select i1 %8, i8 0, i8 4
  %13 = or i8 %11, %12
  store i8 %13, i8* %9, align 4, !tbaa !130
  tail call void @vPortExitCritical() #19
  ret void
}

; Function Attrs: noinline nounwind optsize
define dso_local i32 @uxTimerGetReloadMode(%struct.tmrTimerControl* noundef readonly %0) local_unnamed_addr #2 {
  %2 = icmp eq %struct.tmrTimerControl* %0, null
  br i1 %2, label %3, label %6

3:                                                ; preds = %1
  %4 = tail call i32 asm sideeffect "\09mov $0, $1\09\09\09\09\09\09\09\09\09\09\09\09\0A\09msr basepri, $0\09\09\09\09\09\09\09\09\09\09\09\0A\09isb\09\09\09\09\09\09\09\09\09\09\09\09\09\09\0A\09dsb\09\09\09\09\09\09\09\09\09\09\09\09\09\09\0A", "=r,i,~{memory}"(i32 80) #21, !srcloc !123
  br label %5

5:                                                ; preds = %5, %3
  br label %5

6:                                                ; preds = %1
  tail call void @vPortEnterCritical() #19
  %7 = getelementptr inbounds %struct.tmrTimerControl, %struct.tmrTimerControl* %0, i32 0, i32 6
  %8 = load i8, i8* %7, align 4, !tbaa !130
  %9 = lshr i8 %8, 2
  %10 = and i8 %9, 1
  %11 = zext i8 %10 to i32
  tail call void @vPortExitCritical() #19
  ret i32 %11
}

; Function Attrs: noinline nounwind optsize
define dso_local i32 @xTimerGetExpiryTime(%struct.tmrTimerControl* noundef readonly %0) local_unnamed_addr #2 {
  %2 = icmp eq %struct.tmrTimerControl* %0, null
  br i1 %2, label %3, label %6

3:                                                ; preds = %1
  %4 = tail call i32 asm sideeffect "\09mov $0, $1\09\09\09\09\09\09\09\09\09\09\09\09\0A\09msr basepri, $0\09\09\09\09\09\09\09\09\09\09\09\0A\09isb\09\09\09\09\09\09\09\09\09\09\09\09\09\09\0A\09dsb\09\09\09\09\09\09\09\09\09\09\09\09\09\09\0A", "=r,i,~{memory}"(i32 80) #21, !srcloc !123
  br label %5

5:                                                ; preds = %5, %3
  br label %5

6:                                                ; preds = %1
  %7 = getelementptr inbounds %struct.tmrTimerControl, %struct.tmrTimerControl* %0, i32 0, i32 1, i32 0
  %8 = load i32, i32* %7, align 4, !tbaa !134
  ret i32 %8
}

; Function Attrs: noinline nounwind optsize
define dso_local i8* @pcTimerGetName(%struct.tmrTimerControl* noundef readonly %0) local_unnamed_addr #2 {
  %2 = icmp eq %struct.tmrTimerControl* %0, null
  br i1 %2, label %3, label %6

3:                                                ; preds = %1
  %4 = tail call i32 asm sideeffect "\09mov $0, $1\09\09\09\09\09\09\09\09\09\09\09\09\0A\09msr basepri, $0\09\09\09\09\09\09\09\09\09\09\09\0A\09isb\09\09\09\09\09\09\09\09\09\09\09\09\09\09\0A\09dsb\09\09\09\09\09\09\09\09\09\09\09\09\09\09\0A", "=r,i,~{memory}"(i32 80) #21, !srcloc !123
  br label %5

5:                                                ; preds = %5, %3
  br label %5

6:                                                ; preds = %1
  %7 = getelementptr inbounds %struct.tmrTimerControl, %struct.tmrTimerControl* %0, i32 0, i32 0
  %8 = load i8*, i8** %7, align 4, !tbaa !137
  ret i8* %8
}

; Function Attrs: noinline nounwind optsize
define dso_local i32 @xTimerIsTimerActive(%struct.tmrTimerControl* noundef readonly %0) local_unnamed_addr #2 {
  %2 = icmp eq %struct.tmrTimerControl* %0, null
  br i1 %2, label %3, label %6

3:                                                ; preds = %1
  %4 = tail call i32 asm sideeffect "\09mov $0, $1\09\09\09\09\09\09\09\09\09\09\09\09\0A\09msr basepri, $0\09\09\09\09\09\09\09\09\09\09\09\0A\09isb\09\09\09\09\09\09\09\09\09\09\09\09\09\09\0A\09dsb\09\09\09\09\09\09\09\09\09\09\09\09\09\09\0A", "=r,i,~{memory}"(i32 80) #21, !srcloc !123
  br label %5

5:                                                ; preds = %5, %3
  br label %5

6:                                                ; preds = %1
  tail call void @vPortEnterCritical() #19
  %7 = getelementptr inbounds %struct.tmrTimerControl, %struct.tmrTimerControl* %0, i32 0, i32 6
  %8 = load i8, i8* %7, align 4, !tbaa !130
  %9 = and i8 %8, 1
  %10 = zext i8 %9 to i32
  tail call void @vPortExitCritical() #19
  ret i32 %10
}

; Function Attrs: noinline nounwind optsize
define dso_local i8* @pvTimerGetTimerID(%struct.tmrTimerControl* noundef readonly %0) local_unnamed_addr #2 {
  %2 = icmp eq %struct.tmrTimerControl* %0, null
  br i1 %2, label %3, label %6

3:                                                ; preds = %1
  %4 = tail call i32 asm sideeffect "\09mov $0, $1\09\09\09\09\09\09\09\09\09\09\09\09\0A\09msr basepri, $0\09\09\09\09\09\09\09\09\09\09\09\0A\09isb\09\09\09\09\09\09\09\09\09\09\09\09\09\09\0A\09dsb\09\09\09\09\09\09\09\09\09\09\09\09\09\09\0A", "=r,i,~{memory}"(i32 80) #21, !srcloc !123
  br label %5

5:                                                ; preds = %5, %3
  br label %5

6:                                                ; preds = %1
  tail call void @vPortEnterCritical() #19
  %7 = getelementptr inbounds %struct.tmrTimerControl, %struct.tmrTimerControl* %0, i32 0, i32 3
  %8 = load i8*, i8** %7, align 4, !tbaa !138
  tail call void @vPortExitCritical() #19
  ret i8* %8
}

; Function Attrs: noinline nounwind optsize
define dso_local void @vTimerSetTimerID(%struct.tmrTimerControl* noundef writeonly %0, i8* noundef %1) local_unnamed_addr #2 {
  %3 = icmp eq %struct.tmrTimerControl* %0, null
  br i1 %3, label %4, label %7

4:                                                ; preds = %2
  %5 = tail call i32 asm sideeffect "\09mov $0, $1\09\09\09\09\09\09\09\09\09\09\09\09\0A\09msr basepri, $0\09\09\09\09\09\09\09\09\09\09\09\0A\09isb\09\09\09\09\09\09\09\09\09\09\09\09\09\09\0A\09dsb\09\09\09\09\09\09\09\09\09\09\09\09\09\09\0A", "=r,i,~{memory}"(i32 80) #21, !srcloc !123
  br label %6

6:                                                ; preds = %6, %4
  br label %6

7:                                                ; preds = %2
  tail call void @vPortEnterCritical() #19
  %8 = getelementptr inbounds %struct.tmrTimerControl, %struct.tmrTimerControl* %0, i32 0, i32 3
  store i8* %1, i8** %8, align 4, !tbaa !138
  tail call void @vPortExitCritical() #19
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize readonly willreturn
define dso_local i32 @uxTimerGetTimerNumber(%struct.tmrTimerControl* nocapture noundef readonly %0) local_unnamed_addr #9 {
  %2 = getelementptr inbounds %struct.tmrTimerControl, %struct.tmrTimerControl* %0, i32 0, i32 5
  %3 = load i32, i32* %2, align 4, !tbaa !139
  ret i32 %3
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn writeonly
define dso_local void @vTimerSetTimerNumber(%struct.tmrTimerControl* nocapture noundef writeonly %0, i32 noundef %1) local_unnamed_addr #10 {
  %3 = getelementptr inbounds %struct.tmrTimerControl, %struct.tmrTimerControl* %0, i32 0, i32 5
  store i32 %1, i32* %3, align 4, !tbaa !139
  ret void
}

; Function Attrs: nofree noinline norecurse nounwind optsize
define dso_local void @vListInitialise(%struct.xLIST* noundef %0) local_unnamed_addr #6 {
  %2 = getelementptr inbounds %struct.xLIST, %struct.xLIST* %0, i32 0, i32 2
  %3 = getelementptr inbounds %struct.xLIST, %struct.xLIST* %0, i32 0, i32 1
  %4 = bitcast %struct.xLIST_ITEM** %3 to %struct.xMINI_LIST_ITEM**
  store %struct.xMINI_LIST_ITEM* %2, %struct.xMINI_LIST_ITEM** %4, align 4, !tbaa !92
  %5 = getelementptr inbounds %struct.xMINI_LIST_ITEM, %struct.xMINI_LIST_ITEM* %2, i32 0, i32 0
  store i32 -1, i32* %5, align 4, !tbaa !140
  %6 = getelementptr inbounds %struct.xLIST, %struct.xLIST* %0, i32 0, i32 2, i32 1
  %7 = bitcast %struct.xLIST_ITEM** %6 to %struct.xMINI_LIST_ITEM**
  store %struct.xMINI_LIST_ITEM* %2, %struct.xMINI_LIST_ITEM** %7, align 4, !tbaa !72
  %8 = getelementptr inbounds %struct.xLIST, %struct.xLIST* %0, i32 0, i32 2, i32 2
  %9 = bitcast %struct.xLIST_ITEM** %8 to %struct.xMINI_LIST_ITEM**
  store %struct.xMINI_LIST_ITEM* %2, %struct.xMINI_LIST_ITEM** %9, align 4, !tbaa !141
  %10 = getelementptr inbounds %struct.xLIST, %struct.xLIST* %0, i32 0, i32 0
  store volatile i32 0, i32* %10, align 4, !tbaa !65
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn writeonly
define dso_local void @vListInitialiseItem(%struct.xLIST_ITEM* nocapture noundef writeonly %0) local_unnamed_addr #10 {
  %2 = getelementptr inbounds %struct.xLIST_ITEM, %struct.xLIST_ITEM* %0, i32 0, i32 4
  store %struct.xLIST* null, %struct.xLIST** %2, align 4, !tbaa !142
  ret void
}

; Function Attrs: nofree noinline norecurse nounwind optsize
define dso_local void @vListInsertEnd(%struct.xLIST* noundef %0, %struct.xLIST_ITEM* noundef %1) local_unnamed_addr #6 {
  %3 = getelementptr inbounds %struct.xLIST, %struct.xLIST* %0, i32 0, i32 1
  %4 = load %struct.xLIST_ITEM*, %struct.xLIST_ITEM** %3, align 4, !tbaa !92
  %5 = getelementptr inbounds %struct.xLIST_ITEM, %struct.xLIST_ITEM* %1, i32 0, i32 1
  store %struct.xLIST_ITEM* %4, %struct.xLIST_ITEM** %5, align 4, !tbaa !93
  %6 = getelementptr inbounds %struct.xLIST_ITEM, %struct.xLIST_ITEM* %4, i32 0, i32 2
  %7 = load %struct.xLIST_ITEM*, %struct.xLIST_ITEM** %6, align 4, !tbaa !143
  %8 = getelementptr inbounds %struct.xLIST_ITEM, %struct.xLIST_ITEM* %1, i32 0, i32 2
  store %struct.xLIST_ITEM* %7, %struct.xLIST_ITEM** %8, align 4, !tbaa !143
  %9 = load %struct.xLIST_ITEM*, %struct.xLIST_ITEM** %6, align 4, !tbaa !143
  %10 = getelementptr inbounds %struct.xLIST_ITEM, %struct.xLIST_ITEM* %9, i32 0, i32 1
  store %struct.xLIST_ITEM* %1, %struct.xLIST_ITEM** %10, align 4, !tbaa !93
  store %struct.xLIST_ITEM* %1, %struct.xLIST_ITEM** %6, align 4, !tbaa !143
  %11 = getelementptr inbounds %struct.xLIST_ITEM, %struct.xLIST_ITEM* %1, i32 0, i32 4
  store %struct.xLIST* %0, %struct.xLIST** %11, align 4, !tbaa !142
  %12 = getelementptr inbounds %struct.xLIST, %struct.xLIST* %0, i32 0, i32 0
  %13 = load volatile i32, i32* %12, align 4, !tbaa !65
  %14 = add i32 %13, 1
  store volatile i32 %14, i32* %12, align 4, !tbaa !65
  ret void
}

; Function Attrs: nofree noinline norecurse nounwind optsize
define dso_local void @vListInsert(%struct.xLIST* noundef %0, %struct.xLIST_ITEM* noundef %1) local_unnamed_addr #6 {
  %3 = getelementptr inbounds %struct.xLIST_ITEM, %struct.xLIST_ITEM* %1, i32 0, i32 0
  %4 = load i32, i32* %3, align 4, !tbaa !112
  %5 = icmp eq i32 %4, -1
  br i1 %5, label %6, label %11

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.xLIST, %struct.xLIST* %0, i32 0, i32 2, i32 2
  %8 = load %struct.xLIST_ITEM*, %struct.xLIST_ITEM** %7, align 4, !tbaa !141
  %9 = getelementptr inbounds %struct.xLIST_ITEM, %struct.xLIST_ITEM* %8, i32 0, i32 1
  %10 = load %struct.xLIST_ITEM*, %struct.xLIST_ITEM** %9, align 4, !tbaa !93
  br label %21

11:                                               ; preds = %2
  %12 = getelementptr inbounds %struct.xLIST, %struct.xLIST* %0, i32 0, i32 2
  %13 = bitcast %struct.xMINI_LIST_ITEM* %12 to %struct.xLIST_ITEM*
  br label %14

14:                                               ; preds = %14, %11
  %15 = phi %struct.xLIST_ITEM* [ %13, %11 ], [ %17, %14 ]
  %16 = getelementptr inbounds %struct.xLIST_ITEM, %struct.xLIST_ITEM* %15, i32 0, i32 1
  %17 = load %struct.xLIST_ITEM*, %struct.xLIST_ITEM** %16, align 4, !tbaa !93
  %18 = getelementptr inbounds %struct.xLIST_ITEM, %struct.xLIST_ITEM* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4, !tbaa !112
  %20 = icmp ugt i32 %19, %4
  br i1 %20, label %21, label %14, !llvm.loop !144

21:                                               ; preds = %14, %6
  %22 = phi %struct.xLIST_ITEM* [ %10, %6 ], [ %17, %14 ]
  %23 = phi %struct.xLIST_ITEM* [ %8, %6 ], [ %15, %14 ]
  %24 = getelementptr inbounds %struct.xLIST_ITEM, %struct.xLIST_ITEM* %23, i32 0, i32 1
  %25 = getelementptr inbounds %struct.xLIST_ITEM, %struct.xLIST_ITEM* %1, i32 0, i32 1
  store %struct.xLIST_ITEM* %22, %struct.xLIST_ITEM** %25, align 4, !tbaa !93
  %26 = getelementptr inbounds %struct.xLIST_ITEM, %struct.xLIST_ITEM* %22, i32 0, i32 2
  store %struct.xLIST_ITEM* %1, %struct.xLIST_ITEM** %26, align 4, !tbaa !143
  %27 = getelementptr inbounds %struct.xLIST_ITEM, %struct.xLIST_ITEM* %1, i32 0, i32 2
  store %struct.xLIST_ITEM* %23, %struct.xLIST_ITEM** %27, align 4, !tbaa !143
  store %struct.xLIST_ITEM* %1, %struct.xLIST_ITEM** %24, align 4, !tbaa !93
  %28 = getelementptr inbounds %struct.xLIST_ITEM, %struct.xLIST_ITEM* %1, i32 0, i32 4
  store %struct.xLIST* %0, %struct.xLIST** %28, align 4, !tbaa !142
  %29 = getelementptr inbounds %struct.xLIST, %struct.xLIST* %0, i32 0, i32 0
  %30 = load volatile i32, i32* %29, align 4, !tbaa !65
  %31 = add i32 %30, 1
  store volatile i32 %31, i32* %29, align 4, !tbaa !65
  ret void
}

; Function Attrs: nofree noinline norecurse nounwind optsize
define dso_local i32 @uxListRemove(%struct.xLIST_ITEM* noundef %0) local_unnamed_addr #6 {
  %2 = getelementptr inbounds %struct.xLIST_ITEM, %struct.xLIST_ITEM* %0, i32 0, i32 4
  %3 = load %struct.xLIST*, %struct.xLIST** %2, align 4, !tbaa !142
  %4 = getelementptr inbounds %struct.xLIST_ITEM, %struct.xLIST_ITEM* %0, i32 0, i32 2
  %5 = load %struct.xLIST_ITEM*, %struct.xLIST_ITEM** %4, align 4, !tbaa !143
  %6 = getelementptr inbounds %struct.xLIST_ITEM, %struct.xLIST_ITEM* %0, i32 0, i32 1
  %7 = load %struct.xLIST_ITEM*, %struct.xLIST_ITEM** %6, align 4, !tbaa !93
  %8 = getelementptr inbounds %struct.xLIST_ITEM, %struct.xLIST_ITEM* %7, i32 0, i32 2
  store %struct.xLIST_ITEM* %5, %struct.xLIST_ITEM** %8, align 4, !tbaa !143
  %9 = load %struct.xLIST_ITEM*, %struct.xLIST_ITEM** %4, align 4, !tbaa !143
  %10 = getelementptr inbounds %struct.xLIST_ITEM, %struct.xLIST_ITEM* %9, i32 0, i32 1
  store %struct.xLIST_ITEM* %7, %struct.xLIST_ITEM** %10, align 4, !tbaa !93
  %11 = getelementptr inbounds %struct.xLIST, %struct.xLIST* %3, i32 0, i32 1
  %12 = load %struct.xLIST_ITEM*, %struct.xLIST_ITEM** %11, align 4, !tbaa !92
  %13 = icmp eq %struct.xLIST_ITEM* %12, %0
  br i1 %13, label %14, label %15

14:                                               ; preds = %1
  store %struct.xLIST_ITEM* %9, %struct.xLIST_ITEM** %11, align 4, !tbaa !92
  br label %15

15:                                               ; preds = %1, %14
  store %struct.xLIST* null, %struct.xLIST** %2, align 4, !tbaa !142
  %16 = getelementptr inbounds %struct.xLIST, %struct.xLIST* %3, i32 0, i32 0
  %17 = load volatile i32, i32* %16, align 4, !tbaa !65
  %18 = add i32 %17, -1
  store volatile i32 %18, i32* %16, align 4, !tbaa !65
  %19 = load volatile i32, i32* %16, align 4, !tbaa !65
  ret i32 %19
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn writeonly
define dso_local nonnull i32* @pxPortInitialiseStack(i32* noundef writeonly %0, void (i8*)* noundef %1, i8* noundef %2) local_unnamed_addr #10 {
  %4 = getelementptr inbounds i32, i32* %0, i32 -1
  store i32 16777216, i32* %4, align 4, !tbaa !18
  %5 = getelementptr inbounds i32, i32* %0, i32 -2
  %6 = ptrtoint void (i8*)* %1 to i32
  %7 = and i32 %6, -2
  store i32 %7, i32* %5, align 4, !tbaa !18
  %8 = getelementptr inbounds i32, i32* %0, i32 -3
  store i32 ptrtoint (void ()* @prvTaskExitError to i32), i32* %8, align 4, !tbaa !18
  %9 = getelementptr inbounds i32, i32* %0, i32 -8
  %10 = ptrtoint i8* %2 to i32
  store i32 %10, i32* %9, align 4, !tbaa !18
  %11 = getelementptr inbounds i32, i32* %0, i32 -9
  store i32 -3, i32* %11, align 4, !tbaa !18
  %12 = getelementptr inbounds i32, i32* %0, i32 -17
  ret i32* %12
}

; Function Attrs: noinline nounwind optsize
define internal void @prvTaskExitError() #2 {
  %1 = alloca i32, align 4
  %2 = bitcast i32* %1 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %2)
  store volatile i32 0, i32* %1, align 4, !tbaa !18
  %3 = load i32, i32* @uxCriticalNesting, align 4, !tbaa !60
  %4 = icmp eq i32 %3, -1
  %5 = tail call i32 asm sideeffect "\09mov $0, $1\09\09\09\09\09\09\09\09\09\09\09\09\0A\09msr basepri, $0\09\09\09\09\09\09\09\09\09\09\09\0A\09isb\09\09\09\09\09\09\09\09\09\09\09\09\09\09\0A\09dsb\09\09\09\09\09\09\09\09\09\09\09\09\09\09\0A", "=r,i,~{memory}"(i32 80) #21
  br i1 %4, label %7, label %6

6:                                                ; preds = %0, %6
  br label %6

7:                                                ; preds = %0, %7
  %8 = load volatile i32, i32* %1, align 4, !tbaa !18
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %7, label %10, !llvm.loop !145

10:                                               ; preds = %7
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %2)
  ret void
}

; Function Attrs: naked noinline nounwind optsize
define dso_local void @SVC_Handler() #11 {
  tail call void asm sideeffect "\09ldr\09r3, pxCurrentTCBConst2\09\09\0A\09ldr r1, [r3]\09\09\09\09\09\0A\09ldr r0, [r1]\09\09\09\09\09\0A\09ldmia r0!, {r4-r11, r14}\09\09\0A\09msr psp, r0\09\09\09\09\09\09\0A\09isb\09\09\09\09\09\09\09\09\0A\09mov r0, #0 \09\09\09\09\09\09\0A\09msr\09basepri, r0\09\09\09\09\09\0A\09bx r14\09\09\09\09\09\09\09\0A\09\09\09\09\09\09\09\09\09\0A\09.align 4\09\09\09\09\09\09\0ApxCurrentTCBConst2: .word pxCurrentTCB\09\09\09\09\0A", ""() #21, !srcloc !146
  unreachable
}

; Function Attrs: noinline nounwind optsize
define dso_local i32 @xPortStartScheduler() local_unnamed_addr #2 {
  %1 = alloca i32, align 4
  %2 = alloca i8, align 1
  %3 = load volatile i32, i32* inttoptr (i32 -536810240 to i32*), align 256, !tbaa !18
  %4 = icmp eq i32 %3, 1091551857
  br i1 %4, label %5, label %8

5:                                                ; preds = %0
  %6 = tail call i32 asm sideeffect "\09mov $0, $1\09\09\09\09\09\09\09\09\09\09\09\09\0A\09msr basepri, $0\09\09\09\09\09\09\09\09\09\09\09\0A\09isb\09\09\09\09\09\09\09\09\09\09\09\09\09\09\0A\09dsb\09\09\09\09\09\09\09\09\09\09\09\09\09\09\0A", "=r,i,~{memory}"(i32 80) #21, !srcloc !147
  br label %7

7:                                                ; preds = %7, %5
  br label %7

8:                                                ; preds = %0
  %9 = load volatile i32, i32* inttoptr (i32 -536810240 to i32*), align 256, !tbaa !18
  %10 = icmp eq i32 %9, 1091551856
  br i1 %10, label %11, label %14

11:                                               ; preds = %8
  %12 = tail call i32 asm sideeffect "\09mov $0, $1\09\09\09\09\09\09\09\09\09\09\09\09\0A\09msr basepri, $0\09\09\09\09\09\09\09\09\09\09\09\0A\09isb\09\09\09\09\09\09\09\09\09\09\09\09\09\09\0A\09dsb\09\09\09\09\09\09\09\09\09\09\09\09\09\09\0A", "=r,i,~{memory}"(i32 80) #21, !srcloc !147
  br label %13

13:                                               ; preds = %13, %11
  br label %13

14:                                               ; preds = %8
  %15 = bitcast i32* %1 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %15)
  call void @llvm.lifetime.start.p0i8(i64 1, i8* nonnull %2)
  %16 = load volatile i8, i8* inttoptr (i32 -536812544 to i8*), align 1024, !tbaa !45
  %17 = zext i8 %16 to i32
  store volatile i32 %17, i32* %1, align 4, !tbaa !18
  store volatile i8 -1, i8* inttoptr (i32 -536812544 to i8*), align 1024, !tbaa !45
  %18 = load volatile i8, i8* inttoptr (i32 -536812544 to i8*), align 1024, !tbaa !45
  store volatile i8 %18, i8* %2, align 1, !tbaa !45
  %19 = load volatile i8, i8* %2, align 1, !tbaa !45
  %20 = and i8 %19, 80
  store i8 %20, i8* @ucMaxSysCallPriority, align 1, !tbaa !45
  store i32 7, i32* @ulMaxPRIGROUPValue, align 4, !tbaa !18
  %21 = load volatile i8, i8* %2, align 1, !tbaa !45
  %22 = icmp slt i8 %21, 0
  br i1 %22, label %23, label %32

23:                                               ; preds = %14, %23
  %24 = phi i32 [ %25, %23 ], [ 7, %14 ]
  %25 = add i32 %24, -1
  store i32 %25, i32* @ulMaxPRIGROUPValue, align 4, !tbaa !18
  %26 = load volatile i8, i8* %2, align 1, !tbaa !45
  %27 = shl i8 %26, 1
  store volatile i8 %27, i8* %2, align 1, !tbaa !45
  %28 = load volatile i8, i8* %2, align 1, !tbaa !45
  %29 = icmp slt i8 %28, 0
  br i1 %29, label %23, label %30, !llvm.loop !148

30:                                               ; preds = %23
  %31 = icmp eq i32 %25, 3
  br i1 %31, label %35, label %32

32:                                               ; preds = %14, %30
  %33 = tail call i32 asm sideeffect "\09mov $0, $1\09\09\09\09\09\09\09\09\09\09\09\09\0A\09msr basepri, $0\09\09\09\09\09\09\09\09\09\09\09\0A\09isb\09\09\09\09\09\09\09\09\09\09\09\09\09\09\0A\09dsb\09\09\09\09\09\09\09\09\09\09\09\09\09\09\0A", "=r,i,~{memory}"(i32 80) #21, !srcloc !147
  br label %34

34:                                               ; preds = %34, %32
  br label %34

35:                                               ; preds = %30
  store i32 768, i32* @ulMaxPRIGROUPValue, align 4, !tbaa !18
  %36 = load volatile i32, i32* %1, align 4, !tbaa !18
  %37 = trunc i32 %36 to i8
  store volatile i8 %37, i8* inttoptr (i32 -536812544 to i8*), align 1024, !tbaa !45
  call void @llvm.lifetime.end.p0i8(i64 1, i8* nonnull %2)
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %15)
  %38 = load volatile i32, i32* inttoptr (i32 -536810208 to i32*), align 32, !tbaa !18
  %39 = or i32 %38, 15728640
  store volatile i32 %39, i32* inttoptr (i32 -536810208 to i32*), align 32, !tbaa !18
  %40 = load volatile i32, i32* inttoptr (i32 -536810208 to i32*), align 32, !tbaa !18
  %41 = or i32 %40, -268435456
  store volatile i32 %41, i32* inttoptr (i32 -536810208 to i32*), align 32, !tbaa !18
  tail call void @vPortSetupTimerInterrupt() #20
  store i32 0, i32* @uxCriticalNesting, align 4, !tbaa !60
  tail call void @vPortEnableVFP() #20
  %42 = load volatile i32, i32* inttoptr (i32 -536809676 to i32*), align 4, !tbaa !18
  %43 = or i32 %42, -1073741824
  store volatile i32 %43, i32* inttoptr (i32 -536809676 to i32*), align 4, !tbaa !18
  tail call void @prvPortStartFirstTask() #20
  tail call void @vTaskSwitchContext() #19
  tail call void @prvTaskExitError() #20
  ret i32 0
}

; Function Attrs: noinline nounwind optsize
define weak dso_local void @vPortSetupTimerInterrupt() local_unnamed_addr #2 {
  store volatile i32 0, i32* inttoptr (i32 -536813552 to i32*), align 16, !tbaa !18
  store volatile i32 0, i32* inttoptr (i32 -536813544 to i32*), align 8, !tbaa !18
  %1 = load i32, i32* @SystemCoreClock, align 4, !tbaa !18
  %2 = udiv i32 %1, 1000
  %3 = add nsw i32 %2, -1
  store volatile i32 %3, i32* inttoptr (i32 -536813548 to i32*), align 4, !tbaa !18
  store volatile i32 7, i32* inttoptr (i32 -536813552 to i32*), align 16, !tbaa !18
  ret void
}

; Function Attrs: naked noinline nounwind optsize
define internal void @vPortEnableVFP() #11 {
  tail call void asm sideeffect "\09ldr.w r0, =0xE000ED88\09\09\0A\09ldr r1, [r0]\09\09\09\09\0A\09\09\09\09\09\09\09\09\0A\09orr r1, r1, #( 0xf << 20 )\09\0A\09str r1, [r0]\09\09\09\09\0A\09bx r14\09\09\09\09\09\09", ""() #21, !srcloc !149
  unreachable
}

; Function Attrs: naked noinline nounwind optsize
define internal void @prvPortStartFirstTask() #11 {
  tail call void asm sideeffect " ldr r0, =0xE000ED08 \09\0A ldr r0, [r0] \09\09\09\0A ldr r0, [r0] \09\09\09\0A msr msp, r0\09\09\09\0A mov r0, #0\09\09\09\0A msr control, r0\09\09\0A cpsie i\09\09\09\09\0A cpsie f\09\09\09\09\0A dsb\09\09\09\09\09\0A isb\09\09\09\09\09\0A svc 0\09\09\09\09\09\0A nop\09\09\09\09\09\0A", ""() #21, !srcloc !150
  unreachable
}

; Function Attrs: noinline nounwind optsize
define dso_local void @vPortEndScheduler() local_unnamed_addr #2 {
  %1 = load i32, i32* @uxCriticalNesting, align 4, !tbaa !60
  %2 = icmp eq i32 %1, 1000
  br i1 %2, label %6, label %3

3:                                                ; preds = %0
  %4 = tail call i32 asm sideeffect "\09mov $0, $1\09\09\09\09\09\09\09\09\09\09\09\09\0A\09msr basepri, $0\09\09\09\09\09\09\09\09\09\09\09\0A\09isb\09\09\09\09\09\09\09\09\09\09\09\09\09\09\0A\09dsb\09\09\09\09\09\09\09\09\09\09\09\09\09\09\0A", "=r,i,~{memory}"(i32 80) #21, !srcloc !147
  br label %5

5:                                                ; preds = %5, %3
  br label %5

6:                                                ; preds = %0
  ret void
}

; Function Attrs: noinline nounwind optsize
define dso_local void @vPortEnterCritical() local_unnamed_addr #2 {
  %1 = tail call i32 asm sideeffect "\09mov $0, $1\09\09\09\09\09\09\09\09\09\09\09\09\0A\09msr basepri, $0\09\09\09\09\09\09\09\09\09\09\09\0A\09isb\09\09\09\09\09\09\09\09\09\09\09\09\09\09\0A\09dsb\09\09\09\09\09\09\09\09\09\09\09\09\09\09\0A", "=r,i,~{memory}"(i32 80) #21, !srcloc !147
  %2 = load i32, i32* @uxCriticalNesting, align 4, !tbaa !60
  %3 = add i32 %2, 1
  store i32 %3, i32* @uxCriticalNesting, align 4, !tbaa !60
  %4 = icmp eq i32 %2, 0
  br i1 %4, label %5, label %12

5:                                                ; preds = %0
  %6 = load volatile i32, i32* inttoptr (i32 -536810236 to i32*), align 4, !tbaa !18
  %7 = and i32 %6, 255
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %12, label %9

9:                                                ; preds = %5
  %10 = tail call i32 asm sideeffect "\09mov $0, $1\09\09\09\09\09\09\09\09\09\09\09\09\0A\09msr basepri, $0\09\09\09\09\09\09\09\09\09\09\09\0A\09isb\09\09\09\09\09\09\09\09\09\09\09\09\09\09\0A\09dsb\09\09\09\09\09\09\09\09\09\09\09\09\09\09\0A", "=r,i,~{memory}"(i32 80) #21, !srcloc !147
  br label %11

11:                                               ; preds = %11, %9
  br label %11

12:                                               ; preds = %5, %0
  ret void
}

; Function Attrs: noinline nounwind optsize
define dso_local void @vPortExitCritical() local_unnamed_addr #2 {
  %1 = load i32, i32* @uxCriticalNesting, align 4, !tbaa !60
  %2 = icmp eq i32 %1, 0
  br i1 %2, label %3, label %6

3:                                                ; preds = %0
  %4 = tail call i32 asm sideeffect "\09mov $0, $1\09\09\09\09\09\09\09\09\09\09\09\09\0A\09msr basepri, $0\09\09\09\09\09\09\09\09\09\09\09\0A\09isb\09\09\09\09\09\09\09\09\09\09\09\09\09\09\0A\09dsb\09\09\09\09\09\09\09\09\09\09\09\09\09\09\0A", "=r,i,~{memory}"(i32 80) #21, !srcloc !147
  br label %5

5:                                                ; preds = %5, %3
  br label %5

6:                                                ; preds = %0
  %7 = add i32 %1, -1
  store i32 %7, i32* @uxCriticalNesting, align 4, !tbaa !60
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %9, label %10

9:                                                ; preds = %6
  tail call void asm sideeffect "\09msr basepri, $0\09", "r,~{memory}"(i32 0) #21, !srcloc !151
  br label %10

10:                                               ; preds = %9, %6
  ret void
}

; Function Attrs: naked noinline nounwind optsize
define dso_local void @PendSV_Handler() #11 {
  tail call void asm sideeffect "\09mrs r0, psp\09\09\09\09\09\09\09\0A\09isb\09\09\09\09\09\09\09\09\09\0A\09\09\09\09\09\09\09\09\09\09\0A\09ldr\09r3, pxCurrentTCBConst\09\09\09\0A\09ldr\09r2, [r3]\09\09\09\09\09\09\0A\09\09\09\09\09\09\09\09\09\09\0A\09tst r14, #0x10\09\09\09\09\09\09\0A\09it eq\09\09\09\09\09\09\09\09\0A\09vstmdbeq r0!, {s16-s31}\09\09\09\09\0A\09\09\09\09\09\09\09\09\09\09\0A\09stmdb r0!, {r4-r11, r14}\09\09\09\0A\09str r0, [r2]\09\09\09\09\09\09\0A\09\09\09\09\09\09\09\09\09\09\0A\09stmdb sp!, {r0, r3}\09\09\09\09\09\0A\09mov r0, $0 \09\09\09\09\09\09\09\0A\09msr basepri, r0\09\09\09\09\09\09\0A\09dsb\09\09\09\09\09\09\09\09\09\0A\09isb\09\09\09\09\09\09\09\09\09\0A\09bl vTaskSwitchContext\09\09\09\09\0A\09mov r0, #0\09\09\09\09\09\09\09\0A\09msr basepri, r0\09\09\09\09\09\09\0A\09ldmia sp!, {r0, r3}\09\09\09\09\09\0A\09\09\09\09\09\09\09\09\09\09\0A\09ldr r1, [r3]\09\09\09\09\09\09\0A\09ldr r0, [r1]\09\09\09\09\09\09\0A\09\09\09\09\09\09\09\09\09\09\0A\09ldmia r0!, {r4-r11, r14}\09\09\09\0A\09\09\09\09\09\09\09\09\09\09\0A\09tst r14, #0x10\09\09\09\09\09\09\0A\09it eq\09\09\09\09\09\09\09\09\0A\09vldmiaeq r0!, {s16-s31}\09\09\09\09\0A\09\09\09\09\09\09\09\09\09\09\0A\09msr psp, r0\09\09\09\09\09\09\09\0A\09isb\09\09\09\09\09\09\09\09\09\0A\09\09\09\09\09\09\09\09\09\09\0A\09\09\09\09\09\09\09\09\09\09\0A\09bx r14\09\09\09\09\09\09\09\09\0A\09\09\09\09\09\09\09\09\09\09\0A\09.align 4\09\09\09\09\09\09\09\0ApxCurrentTCBConst: .word pxCurrentTCB\09\0A", "i"(i32 80) #21, !srcloc !152
  unreachable
}

; Function Attrs: noinline nounwind optsize
define dso_local void @SysTick_Handler() local_unnamed_addr #2 {
  %1 = tail call i32 asm sideeffect "\09mov $0, $1\09\09\09\09\09\09\09\09\09\09\09\09\0A\09msr basepri, $0\09\09\09\09\09\09\09\09\09\09\09\0A\09isb\09\09\09\09\09\09\09\09\09\09\09\09\09\09\0A\09dsb\09\09\09\09\09\09\09\09\09\09\09\09\09\09\0A", "=r,i,~{memory}"(i32 80) #21, !srcloc !147
  %2 = tail call i32 @xTaskIncrementTick() #19
  %3 = icmp eq i32 %2, 0
  br i1 %3, label %5, label %4

4:                                                ; preds = %0
  store volatile i32 268435456, i32* inttoptr (i32 -536810236 to i32*), align 4, !tbaa !18
  br label %5

5:                                                ; preds = %4, %0
  tail call void asm sideeffect "\09msr basepri, $0\09", "r,~{memory}"(i32 0) #21, !srcloc !151
  ret void
}

; Function Attrs: noinline nounwind optsize
define dso_local void @vPortValidateInterruptPriority() local_unnamed_addr #2 {
  %1 = tail call i32 asm sideeffect "mrs $0, ipsr", "=r,~{memory}"() #21, !srcloc !153
  %2 = icmp ugt i32 %1, 15
  br i1 %2, label %3, label %11

3:                                                ; preds = %0
  %4 = getelementptr inbounds i8, i8* inttoptr (i32 -536812560 to i8*), i32 %1
  %5 = load volatile i8, i8* %4, align 1, !tbaa !45
  %6 = load i8, i8* @ucMaxSysCallPriority, align 1, !tbaa !45
  %7 = icmp ult i8 %5, %6
  br i1 %7, label %8, label %11

8:                                                ; preds = %3
  %9 = tail call i32 asm sideeffect "\09mov $0, $1\09\09\09\09\09\09\09\09\09\09\09\09\0A\09msr basepri, $0\09\09\09\09\09\09\09\09\09\09\09\0A\09isb\09\09\09\09\09\09\09\09\09\09\09\09\09\09\0A\09dsb\09\09\09\09\09\09\09\09\09\09\09\09\09\09\0A", "=r,i,~{memory}"(i32 80) #21, !srcloc !147
  br label %10

10:                                               ; preds = %10, %8
  br label %10

11:                                               ; preds = %3, %0
  %12 = load volatile i32, i32* inttoptr (i32 -536810228 to i32*), align 4, !tbaa !18
  %13 = and i32 %12, 1792
  %14 = load i32, i32* @ulMaxPRIGROUPValue, align 4, !tbaa !18
  %15 = icmp ugt i32 %13, %14
  br i1 %15, label %16, label %19

16:                                               ; preds = %11
  %17 = tail call i32 asm sideeffect "\09mov $0, $1\09\09\09\09\09\09\09\09\09\09\09\09\0A\09msr basepri, $0\09\09\09\09\09\09\09\09\09\09\09\0A\09isb\09\09\09\09\09\09\09\09\09\09\09\09\09\09\0A\09dsb\09\09\09\09\09\09\09\09\09\09\09\09\09\09\0A", "=r,i,~{memory}"(i32 80) #21, !srcloc !147
  br label %18

18:                                               ; preds = %18, %16
  br label %18

19:                                               ; preds = %11
  ret void
}

; Function Attrs: noinline nounwind optsize
define dso_local i8* @pvPortMalloc(i32 noundef %0) local_unnamed_addr #2 {
  tail call void @vTaskSuspendAll() #19
  %2 = load %struct.A_BLOCK_LINK*, %struct.A_BLOCK_LINK** @pxEnd, align 4, !tbaa !7
  %3 = icmp eq %struct.A_BLOCK_LINK* %2, null
  br i1 %3, label %4, label %5

4:                                                ; preds = %1
  tail call fastcc void @prvHeapInit() #20
  br label %5

5:                                                ; preds = %1, %4
  %6 = load i1, i1* @xBlockAllocatedBit, align 4
  %7 = select i1 %6, i32 -2147483648, i32 0
  %8 = and i32 %7, %0
  %9 = icmp ne i32 %8, 0
  %10 = icmp eq i32 %0, 0
  %11 = or i1 %10, %9
  br i1 %11, label %84, label %12

12:                                               ; preds = %5
  %13 = add i32 %0, 8
  %14 = and i32 %0, 7
  %15 = icmp eq i32 %14, 0
  %16 = add i32 %0, 16
  %17 = and i32 %16, -8
  %18 = select i1 %15, i32 %13, i32 %17
  %19 = icmp eq i32 %18, 0
  %20 = load i32, i32* @xFreeBytesRemaining, align 4
  %21 = icmp ugt i32 %18, %20
  %22 = select i1 %19, i1 true, i1 %21
  br i1 %22, label %84, label %23

23:                                               ; preds = %12
  %24 = load %struct.A_BLOCK_LINK*, %struct.A_BLOCK_LINK** getelementptr inbounds (%struct.A_BLOCK_LINK, %struct.A_BLOCK_LINK* @xStart, i32 0, i32 0), align 4, !tbaa !154
  %25 = getelementptr inbounds %struct.A_BLOCK_LINK, %struct.A_BLOCK_LINK* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 4, !tbaa !156
  %27 = icmp ult i32 %26, %18
  br i1 %27, label %28, label %42

28:                                               ; preds = %23
  %29 = getelementptr inbounds %struct.A_BLOCK_LINK, %struct.A_BLOCK_LINK* %24, i32 0, i32 0
  %30 = load %struct.A_BLOCK_LINK*, %struct.A_BLOCK_LINK** %29, align 4, !tbaa !154
  %31 = icmp eq %struct.A_BLOCK_LINK* %30, null
  br i1 %31, label %42, label %32, !llvm.loop !157

32:                                               ; preds = %28, %38
  %33 = phi %struct.A_BLOCK_LINK* [ %40, %38 ], [ %30, %28 ]
  %34 = phi %struct.A_BLOCK_LINK* [ %33, %38 ], [ %24, %28 ]
  %35 = getelementptr inbounds %struct.A_BLOCK_LINK, %struct.A_BLOCK_LINK* %33, i32 0, i32 1
  %36 = load i32, i32* %35, align 4, !tbaa !156
  %37 = icmp ult i32 %36, %18
  br i1 %37, label %38, label %42, !llvm.loop !157

38:                                               ; preds = %32
  %39 = getelementptr inbounds %struct.A_BLOCK_LINK, %struct.A_BLOCK_LINK* %33, i32 0, i32 0
  %40 = load %struct.A_BLOCK_LINK*, %struct.A_BLOCK_LINK** %39, align 4, !tbaa !154
  %41 = icmp eq %struct.A_BLOCK_LINK* %40, null
  br i1 %41, label %42, label %32, !llvm.loop !157

42:                                               ; preds = %32, %38, %28, %23
  %43 = phi %struct.A_BLOCK_LINK* [ %24, %23 ], [ %24, %28 ], [ %33, %38 ], [ %33, %32 ]
  %44 = phi %struct.A_BLOCK_LINK* [ @xStart, %23 ], [ @xStart, %28 ], [ %34, %38 ], [ %34, %32 ]
  %45 = phi i32 [ %26, %23 ], [ %26, %28 ], [ %36, %38 ], [ %36, %32 ]
  %46 = getelementptr inbounds %struct.A_BLOCK_LINK, %struct.A_BLOCK_LINK* %43, i32 0, i32 1
  %47 = load %struct.A_BLOCK_LINK*, %struct.A_BLOCK_LINK** @pxEnd, align 4, !tbaa !7
  %48 = icmp eq %struct.A_BLOCK_LINK* %43, %47
  br i1 %48, label %84, label %49

49:                                               ; preds = %42
  %50 = getelementptr inbounds %struct.A_BLOCK_LINK, %struct.A_BLOCK_LINK* %44, i32 0, i32 0
  %51 = bitcast %struct.A_BLOCK_LINK* %44 to i8**
  %52 = load i8*, i8** %51, align 4, !tbaa !154
  %53 = getelementptr inbounds i8, i8* %52, i32 8
  %54 = getelementptr inbounds %struct.A_BLOCK_LINK, %struct.A_BLOCK_LINK* %43, i32 0, i32 0
  %55 = load %struct.A_BLOCK_LINK*, %struct.A_BLOCK_LINK** %54, align 4, !tbaa !154
  store %struct.A_BLOCK_LINK* %55, %struct.A_BLOCK_LINK** %50, align 4, !tbaa !154
  %56 = sub i32 %45, %18
  %57 = icmp ugt i32 %56, 16
  br i1 %57, label %58, label %71

58:                                               ; preds = %49
  %59 = bitcast %struct.A_BLOCK_LINK* %43 to i8*
  %60 = getelementptr inbounds i8, i8* %59, i32 %18
  %61 = ptrtoint i8* %60 to i32
  %62 = and i32 %61, 7
  %63 = icmp eq i32 %62, 0
  br i1 %63, label %67, label %64

64:                                               ; preds = %58
  %65 = tail call i32 asm sideeffect "\09mov $0, $1\09\09\09\09\09\09\09\09\09\09\09\09\0A\09msr basepri, $0\09\09\09\09\09\09\09\09\09\09\09\0A\09isb\09\09\09\09\09\09\09\09\09\09\09\09\09\09\0A\09dsb\09\09\09\09\09\09\09\09\09\09\09\09\09\09\0A", "=r,i,~{memory}"(i32 80) #21, !srcloc !158
  br label %66

66:                                               ; preds = %66, %64
  br label %66

67:                                               ; preds = %58
  %68 = bitcast i8* %60 to %struct.A_BLOCK_LINK*
  %69 = getelementptr inbounds i8, i8* %60, i32 4
  %70 = bitcast i8* %69 to i32*
  store i32 %56, i32* %70, align 4, !tbaa !156
  store i32 %18, i32* %46, align 4, !tbaa !156
  tail call fastcc void @prvInsertBlockIntoFreeList(%struct.A_BLOCK_LINK* noundef nonnull %68) #20
  br label %71

71:                                               ; preds = %49, %67
  %72 = load i32, i32* %46, align 4, !tbaa !156
  %73 = load i32, i32* @xFreeBytesRemaining, align 4, !tbaa !18
  %74 = sub i32 %73, %72
  store i32 %74, i32* @xFreeBytesRemaining, align 4, !tbaa !18
  %75 = load i32, i32* @xMinimumEverFreeBytesRemaining, align 4, !tbaa !18
  %76 = icmp ult i32 %74, %75
  br i1 %76, label %77, label %78

77:                                               ; preds = %71
  store i32 %74, i32* @xMinimumEverFreeBytesRemaining, align 4, !tbaa !18
  br label %78

78:                                               ; preds = %71, %77
  %79 = load i1, i1* @xBlockAllocatedBit, align 4
  %80 = select i1 %79, i32 -2147483648, i32 0
  %81 = or i32 %72, %80
  store i32 %81, i32* %46, align 4, !tbaa !156
  store %struct.A_BLOCK_LINK* null, %struct.A_BLOCK_LINK** %54, align 4, !tbaa !154
  %82 = load i32, i32* @xNumberOfSuccessfulAllocations, align 4, !tbaa !18
  %83 = add i32 %82, 1
  store i32 %83, i32* @xNumberOfSuccessfulAllocations, align 4, !tbaa !18
  br label %84

84:                                               ; preds = %5, %42, %78, %12
  %85 = phi i8* [ %53, %78 ], [ null, %42 ], [ null, %12 ], [ null, %5 ]
  %86 = tail call i32 @xTaskResumeAll() #19
  %87 = ptrtoint i8* %85 to i32
  %88 = and i32 %87, 7
  %89 = icmp eq i32 %88, 0
  br i1 %89, label %93, label %90

90:                                               ; preds = %84
  %91 = tail call i32 asm sideeffect "\09mov $0, $1\09\09\09\09\09\09\09\09\09\09\09\09\0A\09msr basepri, $0\09\09\09\09\09\09\09\09\09\09\09\0A\09isb\09\09\09\09\09\09\09\09\09\09\09\09\09\09\0A\09dsb\09\09\09\09\09\09\09\09\09\09\09\09\09\09\0A", "=r,i,~{memory}"(i32 80) #21, !srcloc !158
  br label %92

92:                                               ; preds = %92, %90
  br label %92

93:                                               ; preds = %84
  ret i8* %85
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn
define internal fastcc void @prvHeapInit() unnamed_addr #12 {
  store %struct.A_BLOCK_LINK* inttoptr (i32 select (i1 icmp ne (i32 and (i32 ptrtoint ([76800 x i8]* @ucHeap to i32), i32 7), i32 0), i32 and (i32 add (i32 ptrtoint ([76800 x i8]* @ucHeap to i32), i32 7), i32 -8), i32 ptrtoint ([76800 x i8]* @ucHeap to i32)) to %struct.A_BLOCK_LINK*), %struct.A_BLOCK_LINK** getelementptr inbounds (%struct.A_BLOCK_LINK, %struct.A_BLOCK_LINK* @xStart, i32 0, i32 0), align 4, !tbaa !154
  store i32 0, i32* getelementptr inbounds (%struct.A_BLOCK_LINK, %struct.A_BLOCK_LINK* @xStart, i32 0, i32 1), align 4, !tbaa !156
  store %struct.A_BLOCK_LINK* inttoptr (i32 and (i32 add (i32 add (i32 select (i1 icmp ne (i32 and (i32 ptrtoint ([76800 x i8]* @ucHeap to i32), i32 7), i32 0), i32 and (i32 add (i32 ptrtoint ([76800 x i8]* @ucHeap to i32), i32 7), i32 -8), i32 ptrtoint ([76800 x i8]* @ucHeap to i32)), i32 select (i1 icmp ne (i32 and (i32 ptrtoint ([76800 x i8]* @ucHeap to i32), i32 7), i32 0), i32 sub (i32 76800, i32 sub (i32 and (i32 add (i32 ptrtoint ([76800 x i8]* @ucHeap to i32), i32 7), i32 -8), i32 ptrtoint ([76800 x i8]* @ucHeap to i32))), i32 76800)), i32 -8), i32 -8) to %struct.A_BLOCK_LINK*), %struct.A_BLOCK_LINK** @pxEnd, align 4, !tbaa !7
  store i32 0, i32* getelementptr inbounds (%struct.A_BLOCK_LINK, %struct.A_BLOCK_LINK* inttoptr (i32 and (i32 add (i32 add (i32 select (i1 icmp ne (i32 and (i32 ptrtoint ([76800 x i8]* @ucHeap to i32), i32 7), i32 0), i32 and (i32 add (i32 ptrtoint ([76800 x i8]* @ucHeap to i32), i32 7), i32 -8), i32 ptrtoint ([76800 x i8]* @ucHeap to i32)), i32 select (i1 icmp ne (i32 and (i32 ptrtoint ([76800 x i8]* @ucHeap to i32), i32 7), i32 0), i32 sub (i32 76800, i32 sub (i32 and (i32 add (i32 ptrtoint ([76800 x i8]* @ucHeap to i32), i32 7), i32 -8), i32 ptrtoint ([76800 x i8]* @ucHeap to i32))), i32 76800)), i32 -8), i32 -8) to %struct.A_BLOCK_LINK*), i32 0, i32 1), align 4, !tbaa !156
  store %struct.A_BLOCK_LINK* null, %struct.A_BLOCK_LINK** getelementptr inbounds (%struct.A_BLOCK_LINK, %struct.A_BLOCK_LINK* inttoptr (i32 and (i32 add (i32 add (i32 select (i1 icmp ne (i32 and (i32 ptrtoint ([76800 x i8]* @ucHeap to i32), i32 7), i32 0), i32 and (i32 add (i32 ptrtoint ([76800 x i8]* @ucHeap to i32), i32 7), i32 -8), i32 ptrtoint ([76800 x i8]* @ucHeap to i32)), i32 select (i1 icmp ne (i32 and (i32 ptrtoint ([76800 x i8]* @ucHeap to i32), i32 7), i32 0), i32 sub (i32 76800, i32 sub (i32 and (i32 add (i32 ptrtoint ([76800 x i8]* @ucHeap to i32), i32 7), i32 -8), i32 ptrtoint ([76800 x i8]* @ucHeap to i32))), i32 76800)), i32 -8), i32 -8) to %struct.A_BLOCK_LINK*), i32 0, i32 0), align 8, !tbaa !154
  store i32 sub (i32 and (i32 add (i32 add (i32 select (i1 icmp ne (i32 and (i32 ptrtoint ([76800 x i8]* @ucHeap to i32), i32 7), i32 0), i32 and (i32 add (i32 ptrtoint ([76800 x i8]* @ucHeap to i32), i32 7), i32 -8), i32 ptrtoint ([76800 x i8]* @ucHeap to i32)), i32 select (i1 icmp ne (i32 and (i32 ptrtoint ([76800 x i8]* @ucHeap to i32), i32 7), i32 0), i32 sub (i32 76800, i32 sub (i32 and (i32 add (i32 ptrtoint ([76800 x i8]* @ucHeap to i32), i32 7), i32 -8), i32 ptrtoint ([76800 x i8]* @ucHeap to i32))), i32 76800)), i32 -8), i32 -8), i32 select (i1 icmp ne (i32 and (i32 ptrtoint ([76800 x i8]* @ucHeap to i32), i32 7), i32 0), i32 and (i32 add (i32 ptrtoint ([76800 x i8]* @ucHeap to i32), i32 7), i32 -8), i32 ptrtoint ([76800 x i8]* @ucHeap to i32))), i32* getelementptr inbounds (%struct.A_BLOCK_LINK, %struct.A_BLOCK_LINK* inttoptr (i32 select (i1 icmp ne (i32 and (i32 ptrtoint ([76800 x i8]* @ucHeap to i32), i32 7), i32 0), i32 and (i32 add (i32 ptrtoint ([76800 x i8]* @ucHeap to i32), i32 7), i32 -8), i32 ptrtoint ([76800 x i8]* @ucHeap to i32)) to %struct.A_BLOCK_LINK*), i32 0, i32 1), align 4, !tbaa !156
  %1 = load %struct.A_BLOCK_LINK*, %struct.A_BLOCK_LINK** @pxEnd, align 4, !tbaa !7
  store %struct.A_BLOCK_LINK* %1, %struct.A_BLOCK_LINK** getelementptr inbounds (%struct.A_BLOCK_LINK, %struct.A_BLOCK_LINK* inttoptr (i32 select (i1 icmp ne (i32 and (i32 ptrtoint ([76800 x i8]* @ucHeap to i32), i32 7), i32 0), i32 and (i32 add (i32 ptrtoint ([76800 x i8]* @ucHeap to i32), i32 7), i32 -8), i32 ptrtoint ([76800 x i8]* @ucHeap to i32)) to %struct.A_BLOCK_LINK*), i32 0, i32 0), align 4, !tbaa !154
  store i32 sub (i32 and (i32 add (i32 add (i32 select (i1 icmp ne (i32 and (i32 ptrtoint ([76800 x i8]* @ucHeap to i32), i32 7), i32 0), i32 and (i32 add (i32 ptrtoint ([76800 x i8]* @ucHeap to i32), i32 7), i32 -8), i32 ptrtoint ([76800 x i8]* @ucHeap to i32)), i32 select (i1 icmp ne (i32 and (i32 ptrtoint ([76800 x i8]* @ucHeap to i32), i32 7), i32 0), i32 sub (i32 76800, i32 sub (i32 and (i32 add (i32 ptrtoint ([76800 x i8]* @ucHeap to i32), i32 7), i32 -8), i32 ptrtoint ([76800 x i8]* @ucHeap to i32))), i32 76800)), i32 -8), i32 -8), i32 select (i1 icmp ne (i32 and (i32 ptrtoint ([76800 x i8]* @ucHeap to i32), i32 7), i32 0), i32 and (i32 add (i32 ptrtoint ([76800 x i8]* @ucHeap to i32), i32 7), i32 -8), i32 ptrtoint ([76800 x i8]* @ucHeap to i32))), i32* @xMinimumEverFreeBytesRemaining, align 4, !tbaa !18
  store i32 sub (i32 and (i32 add (i32 add (i32 select (i1 icmp ne (i32 and (i32 ptrtoint ([76800 x i8]* @ucHeap to i32), i32 7), i32 0), i32 and (i32 add (i32 ptrtoint ([76800 x i8]* @ucHeap to i32), i32 7), i32 -8), i32 ptrtoint ([76800 x i8]* @ucHeap to i32)), i32 select (i1 icmp ne (i32 and (i32 ptrtoint ([76800 x i8]* @ucHeap to i32), i32 7), i32 0), i32 sub (i32 76800, i32 sub (i32 and (i32 add (i32 ptrtoint ([76800 x i8]* @ucHeap to i32), i32 7), i32 -8), i32 ptrtoint ([76800 x i8]* @ucHeap to i32))), i32 76800)), i32 -8), i32 -8), i32 select (i1 icmp ne (i32 and (i32 ptrtoint ([76800 x i8]* @ucHeap to i32), i32 7), i32 0), i32 and (i32 add (i32 ptrtoint ([76800 x i8]* @ucHeap to i32), i32 7), i32 -8), i32 ptrtoint ([76800 x i8]* @ucHeap to i32))), i32* @xFreeBytesRemaining, align 4, !tbaa !18
  store i1 true, i1* @xBlockAllocatedBit, align 4
  ret void
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize
define internal fastcc void @prvInsertBlockIntoFreeList(%struct.A_BLOCK_LINK* noundef %0) unnamed_addr #13 {
  br label %2

2:                                                ; preds = %2, %1
  %3 = phi %struct.A_BLOCK_LINK* [ @xStart, %1 ], [ %5, %2 ]
  %4 = getelementptr inbounds %struct.A_BLOCK_LINK, %struct.A_BLOCK_LINK* %3, i32 0, i32 0
  %5 = load %struct.A_BLOCK_LINK*, %struct.A_BLOCK_LINK** %4, align 4, !tbaa !154
  %6 = icmp ult %struct.A_BLOCK_LINK* %5, %0
  br i1 %6, label %2, label %7, !llvm.loop !159

7:                                                ; preds = %2
  %8 = getelementptr inbounds %struct.A_BLOCK_LINK, %struct.A_BLOCK_LINK* %3, i32 0, i32 0
  %9 = bitcast %struct.A_BLOCK_LINK* %3 to i8*
  %10 = getelementptr inbounds %struct.A_BLOCK_LINK, %struct.A_BLOCK_LINK* %3, i32 0, i32 1
  %11 = load i32, i32* %10, align 4, !tbaa !156
  %12 = getelementptr inbounds i8, i8* %9, i32 %11
  %13 = bitcast %struct.A_BLOCK_LINK* %0 to i8*
  %14 = icmp eq i8* %12, %13
  %15 = getelementptr inbounds %struct.A_BLOCK_LINK, %struct.A_BLOCK_LINK* %0, i32 0, i32 1
  %16 = load i32, i32* %15, align 4, !tbaa !156
  br i1 %14, label %17, label %19

17:                                               ; preds = %7
  %18 = add i32 %16, %11
  store i32 %18, i32* %10, align 4, !tbaa !156
  br label %19

19:                                               ; preds = %7, %17
  %20 = phi i8* [ %9, %17 ], [ %13, %7 ]
  %21 = phi i32 [ %18, %17 ], [ %16, %7 ]
  %22 = phi %struct.A_BLOCK_LINK* [ %3, %17 ], [ %0, %7 ]
  %23 = getelementptr inbounds i8, i8* %20, i32 %21
  %24 = bitcast %struct.A_BLOCK_LINK* %5 to i8*
  %25 = icmp ne i8* %23, %24
  %26 = load %struct.A_BLOCK_LINK*, %struct.A_BLOCK_LINK** @pxEnd, align 4
  %27 = icmp eq %struct.A_BLOCK_LINK* %5, %26
  %28 = select i1 %25, i1 true, i1 %27
  br i1 %28, label %36, label %29

29:                                               ; preds = %19
  %30 = getelementptr inbounds %struct.A_BLOCK_LINK, %struct.A_BLOCK_LINK* %22, i32 0, i32 1
  %31 = getelementptr inbounds %struct.A_BLOCK_LINK, %struct.A_BLOCK_LINK* %5, i32 0, i32 1
  %32 = load i32, i32* %31, align 4, !tbaa !156
  %33 = add i32 %32, %21
  store i32 %33, i32* %30, align 4, !tbaa !156
  %34 = getelementptr inbounds %struct.A_BLOCK_LINK, %struct.A_BLOCK_LINK* %5, i32 0, i32 0
  %35 = load %struct.A_BLOCK_LINK*, %struct.A_BLOCK_LINK** %34, align 4, !tbaa !154
  br label %36

36:                                               ; preds = %19, %29
  %37 = phi %struct.A_BLOCK_LINK* [ %35, %29 ], [ %5, %19 ]
  %38 = getelementptr inbounds %struct.A_BLOCK_LINK, %struct.A_BLOCK_LINK* %22, i32 0, i32 0
  store %struct.A_BLOCK_LINK* %37, %struct.A_BLOCK_LINK** %38, align 4, !tbaa !154
  %39 = icmp eq %struct.A_BLOCK_LINK* %3, %22
  br i1 %39, label %41, label %40

40:                                               ; preds = %36
  store %struct.A_BLOCK_LINK* %22, %struct.A_BLOCK_LINK** %8, align 4, !tbaa !154
  br label %41

41:                                               ; preds = %36, %40
  ret void
}

; Function Attrs: noinline nounwind optsize
define dso_local void @vPortFree(i8* noundef %0) local_unnamed_addr #2 {
  %2 = icmp eq i8* %0, null
  br i1 %2, label %32, label %3

3:                                                ; preds = %1
  %4 = getelementptr inbounds i8, i8* %0, i32 -8
  %5 = bitcast i8* %4 to %struct.A_BLOCK_LINK*
  %6 = getelementptr inbounds i8, i8* %0, i32 -4
  %7 = bitcast i8* %6 to i32*
  %8 = load i32, i32* %7, align 4, !tbaa !156
  %9 = load i1, i1* @xBlockAllocatedBit, align 4
  %10 = select i1 %9, i32 -2147483648, i32 0
  %11 = and i32 %10, %8
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %13, label %16

13:                                               ; preds = %3
  %14 = tail call i32 asm sideeffect "\09mov $0, $1\09\09\09\09\09\09\09\09\09\09\09\09\0A\09msr basepri, $0\09\09\09\09\09\09\09\09\09\09\09\0A\09isb\09\09\09\09\09\09\09\09\09\09\09\09\09\09\0A\09dsb\09\09\09\09\09\09\09\09\09\09\09\09\09\09\0A", "=r,i,~{memory}"(i32 80) #21, !srcloc !158
  br label %15

15:                                               ; preds = %15, %13
  br label %15

16:                                               ; preds = %3
  %17 = bitcast i8* %4 to %struct.A_BLOCK_LINK**
  %18 = load %struct.A_BLOCK_LINK*, %struct.A_BLOCK_LINK** %17, align 4, !tbaa !154
  %19 = icmp eq %struct.A_BLOCK_LINK* %18, null
  br i1 %19, label %23, label %20

20:                                               ; preds = %16
  %21 = tail call i32 asm sideeffect "\09mov $0, $1\09\09\09\09\09\09\09\09\09\09\09\09\0A\09msr basepri, $0\09\09\09\09\09\09\09\09\09\09\09\0A\09isb\09\09\09\09\09\09\09\09\09\09\09\09\09\09\0A\09dsb\09\09\09\09\09\09\09\09\09\09\09\09\09\09\0A", "=r,i,~{memory}"(i32 80) #21, !srcloc !158
  br label %22

22:                                               ; preds = %22, %20
  br label %22

23:                                               ; preds = %16
  %24 = xor i32 %10, -1
  %25 = and i32 %8, %24
  store i32 %25, i32* %7, align 4, !tbaa !156
  tail call void @vTaskSuspendAll() #19
  %26 = load i32, i32* %7, align 4, !tbaa !156
  %27 = load i32, i32* @xFreeBytesRemaining, align 4, !tbaa !18
  %28 = add i32 %27, %26
  store i32 %28, i32* @xFreeBytesRemaining, align 4, !tbaa !18
  tail call fastcc void @prvInsertBlockIntoFreeList(%struct.A_BLOCK_LINK* noundef nonnull %5) #20
  %29 = load i32, i32* @xNumberOfSuccessfulFrees, align 4, !tbaa !18
  %30 = add i32 %29, 1
  store i32 %30, i32* @xNumberOfSuccessfulFrees, align 4, !tbaa !18
  %31 = tail call i32 @xTaskResumeAll() #19
  br label %32

32:                                               ; preds = %23, %1
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize readonly willreturn
define dso_local i32 @xPortGetFreeHeapSize() local_unnamed_addr #9 {
  %1 = load i32, i32* @xFreeBytesRemaining, align 4, !tbaa !18
  ret i32 %1
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize readonly willreturn
define dso_local i32 @xPortGetMinimumEverFreeHeapSize() local_unnamed_addr #9 {
  %1 = load i32, i32* @xMinimumEverFreeBytesRemaining, align 4, !tbaa !18
  ret i32 %1
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize readnone willreturn
define dso_local void @vPortInitialiseBlocks() local_unnamed_addr #5 {
  ret void
}

; Function Attrs: noinline nounwind optsize
define dso_local void @vPortGetHeapStats(%struct.xHeapStats* nocapture noundef writeonly %0) local_unnamed_addr #2 {
  tail call void @vTaskSuspendAll() #19
  %2 = load %struct.A_BLOCK_LINK*, %struct.A_BLOCK_LINK** getelementptr inbounds (%struct.A_BLOCK_LINK, %struct.A_BLOCK_LINK* @xStart, i32 0, i32 0), align 4, !tbaa !154
  %3 = icmp eq %struct.A_BLOCK_LINK* %2, null
  br i1 %3, label %21, label %4

4:                                                ; preds = %1
  %5 = load %struct.A_BLOCK_LINK*, %struct.A_BLOCK_LINK** @pxEnd, align 4, !tbaa !7
  br label %6

6:                                                ; preds = %4, %6
  %7 = phi %struct.A_BLOCK_LINK* [ %19, %6 ], [ %2, %4 ]
  %8 = phi i32 [ %11, %6 ], [ 0, %4 ]
  %9 = phi i32 [ %15, %6 ], [ 0, %4 ]
  %10 = phi i32 [ %17, %6 ], [ -1, %4 ]
  %11 = add i32 %8, 1
  %12 = getelementptr inbounds %struct.A_BLOCK_LINK, %struct.A_BLOCK_LINK* %7, i32 0, i32 1
  %13 = load i32, i32* %12, align 4, !tbaa !156
  %14 = icmp ugt i32 %13, %9
  %15 = select i1 %14, i32 %13, i32 %9
  %16 = icmp ult i32 %13, %10
  %17 = select i1 %16, i32 %13, i32 %10
  %18 = getelementptr inbounds %struct.A_BLOCK_LINK, %struct.A_BLOCK_LINK* %7, i32 0, i32 0
  %19 = load %struct.A_BLOCK_LINK*, %struct.A_BLOCK_LINK** %18, align 4, !tbaa !154
  %20 = icmp eq %struct.A_BLOCK_LINK* %19, %5
  br i1 %20, label %21, label %6, !llvm.loop !160

21:                                               ; preds = %6, %1
  %22 = phi i32 [ 0, %1 ], [ %11, %6 ]
  %23 = phi i32 [ 0, %1 ], [ %15, %6 ]
  %24 = phi i32 [ -1, %1 ], [ %17, %6 ]
  %25 = tail call i32 @xTaskResumeAll() #19
  %26 = getelementptr inbounds %struct.xHeapStats, %struct.xHeapStats* %0, i32 0, i32 1
  store i32 %23, i32* %26, align 4, !tbaa !161
  %27 = getelementptr inbounds %struct.xHeapStats, %struct.xHeapStats* %0, i32 0, i32 2
  store i32 %24, i32* %27, align 4, !tbaa !163
  %28 = getelementptr inbounds %struct.xHeapStats, %struct.xHeapStats* %0, i32 0, i32 3
  store i32 %22, i32* %28, align 4, !tbaa !164
  tail call void @vPortEnterCritical() #19
  %29 = load i32, i32* @xFreeBytesRemaining, align 4, !tbaa !18
  %30 = getelementptr inbounds %struct.xHeapStats, %struct.xHeapStats* %0, i32 0, i32 0
  store i32 %29, i32* %30, align 4, !tbaa !165
  %31 = load i32, i32* @xNumberOfSuccessfulAllocations, align 4, !tbaa !18
  %32 = getelementptr inbounds %struct.xHeapStats, %struct.xHeapStats* %0, i32 0, i32 5
  store i32 %31, i32* %32, align 4, !tbaa !166
  %33 = load i32, i32* @xNumberOfSuccessfulFrees, align 4, !tbaa !18
  %34 = getelementptr inbounds %struct.xHeapStats, %struct.xHeapStats* %0, i32 0, i32 6
  store i32 %33, i32* %34, align 4, !tbaa !167
  %35 = load i32, i32* @xMinimumEverFreeBytesRemaining, align 4, !tbaa !18
  %36 = getelementptr inbounds %struct.xHeapStats, %struct.xHeapStats* %0, i32 0, i32 4
  store i32 %35, i32* %36, align 4, !tbaa !168
  tail call void @vPortExitCritical() #19
  ret void
}

; Function Attrs: noinline nounwind optsize
define dso_local i32 @xQueueGenericReset(%struct.QueueDefinition* noundef %0, i32 noundef %1) local_unnamed_addr #2 {
  %3 = icmp eq %struct.QueueDefinition* %0, null
  br i1 %3, label %4, label %7

4:                                                ; preds = %2
  %5 = tail call i32 asm sideeffect "\09mov $0, $1\09\09\09\09\09\09\09\09\09\09\09\09\0A\09msr basepri, $0\09\09\09\09\09\09\09\09\09\09\09\0A\09isb\09\09\09\09\09\09\09\09\09\09\09\09\09\09\0A\09dsb\09\09\09\09\09\09\09\09\09\09\09\09\09\09\0A", "=r,i,~{memory}"(i32 80) #21, !srcloc !169
  br label %6

6:                                                ; preds = %6, %4
  br label %6

7:                                                ; preds = %2
  tail call void @vPortEnterCritical() #19
  %8 = getelementptr inbounds %struct.QueueDefinition, %struct.QueueDefinition* %0, i32 0, i32 0
  %9 = load i8*, i8** %8, align 4, !tbaa !170
  %10 = getelementptr inbounds %struct.QueueDefinition, %struct.QueueDefinition* %0, i32 0, i32 6
  %11 = load i32, i32* %10, align 4, !tbaa !172
  %12 = getelementptr inbounds %struct.QueueDefinition, %struct.QueueDefinition* %0, i32 0, i32 7
  %13 = load i32, i32* %12, align 4, !tbaa !173
  %14 = mul i32 %13, %11
  %15 = getelementptr inbounds i8, i8* %9, i32 %14
  %16 = getelementptr inbounds %struct.QueueDefinition, %struct.QueueDefinition* %0, i32 0, i32 2, i32 0, i32 0
  store i8* %15, i8** %16, align 4, !tbaa !45
  %17 = getelementptr inbounds %struct.QueueDefinition, %struct.QueueDefinition* %0, i32 0, i32 5
  store volatile i32 0, i32* %17, align 4, !tbaa !174
  %18 = getelementptr inbounds %struct.QueueDefinition, %struct.QueueDefinition* %0, i32 0, i32 1
  store i8* %9, i8** %18, align 4, !tbaa !175
  %19 = add i32 %11, -1
  %20 = mul i32 %19, %13
  %21 = getelementptr inbounds i8, i8* %9, i32 %20
  %22 = getelementptr inbounds %struct.QueueDefinition, %struct.QueueDefinition* %0, i32 0, i32 2, i32 0, i32 1
  store i8* %21, i8** %22, align 4, !tbaa !45
  %23 = getelementptr inbounds %struct.QueueDefinition, %struct.QueueDefinition* %0, i32 0, i32 8
  store volatile i8 -1, i8* %23, align 4, !tbaa !176
  %24 = getelementptr inbounds %struct.QueueDefinition, %struct.QueueDefinition* %0, i32 0, i32 9
  store volatile i8 -1, i8* %24, align 1, !tbaa !177
  %25 = icmp eq i32 %1, 0
  %26 = getelementptr inbounds %struct.QueueDefinition, %struct.QueueDefinition* %0, i32 0, i32 3
  br i1 %25, label %27, label %35

27:                                               ; preds = %7
  %28 = getelementptr inbounds %struct.xLIST, %struct.xLIST* %26, i32 0, i32 0
  %29 = load volatile i32, i32* %28, align 4, !tbaa !178
  %30 = icmp eq i32 %29, 0
  br i1 %30, label %37, label %31

31:                                               ; preds = %27
  %32 = tail call i32 @xTaskRemoveFromEventList(%struct.xLIST* noundef nonnull %26) #19
  %33 = icmp eq i32 %32, 0
  br i1 %33, label %37, label %34

34:                                               ; preds = %31
  store volatile i32 268435456, i32* inttoptr (i32 -536810236 to i32*), align 4, !tbaa !18
  tail call void asm sideeffect "dsb", "~{memory}"() #21, !srcloc !179
  tail call void asm sideeffect "isb", ""() #21, !srcloc !180
  br label %37

35:                                               ; preds = %7
  tail call void @vListInitialise(%struct.xLIST* noundef nonnull %26) #19
  %36 = getelementptr inbounds %struct.QueueDefinition, %struct.QueueDefinition* %0, i32 0, i32 4
  tail call void @vListInitialise(%struct.xLIST* noundef nonnull %36) #19
  br label %37

37:                                               ; preds = %31, %34, %27, %35
  tail call void @vPortExitCritical() #19
  ret i32 1
}

; Function Attrs: noinline nounwind optsize
define dso_local %struct.QueueDefinition* @xQueueGenericCreate(i32 noundef %0, i32 noundef %1, i8 noundef zeroext %2) local_unnamed_addr #2 {
  %4 = icmp eq i32 %0, 0
  br i1 %4, label %5, label %8

5:                                                ; preds = %3
  %6 = tail call i32 asm sideeffect "\09mov $0, $1\09\09\09\09\09\09\09\09\09\09\09\09\0A\09msr basepri, $0\09\09\09\09\09\09\09\09\09\09\09\0A\09isb\09\09\09\09\09\09\09\09\09\09\09\09\09\09\0A\09dsb\09\09\09\09\09\09\09\09\09\09\09\09\09\09\0A", "=r,i,~{memory}"(i32 80) #21, !srcloc !169
  br label %7

7:                                                ; preds = %7, %5
  br label %7

8:                                                ; preds = %3
  %9 = mul i32 %1, %0
  %10 = add i32 %9, 80
  %11 = tail call i8* @pvPortMalloc(i32 noundef %10) #19
  %12 = bitcast i8* %11 to %struct.QueueDefinition*
  %13 = icmp eq i8* %11, null
  br i1 %13, label %16, label %14

14:                                               ; preds = %8
  %15 = getelementptr inbounds i8, i8* %11, i32 80
  tail call fastcc void @prvInitialiseNewQueue(i32 noundef %0, i32 noundef %1, i8* noundef nonnull %15, i8 noundef zeroext %2, %struct.QueueDefinition* noundef nonnull %12) #20
  br label %16

16:                                               ; preds = %8, %14
  ret %struct.QueueDefinition* %12
}

; Function Attrs: noinline nounwind optsize
define internal fastcc void @prvInitialiseNewQueue(i32 noundef %0, i32 noundef %1, i8* noundef %2, i8 noundef zeroext %3, %struct.QueueDefinition* noundef %4) unnamed_addr #2 {
  %6 = icmp eq i32 %1, 0
  br i1 %6, label %7, label %9

7:                                                ; preds = %5
  %8 = bitcast %struct.QueueDefinition* %4 to %struct.QueueDefinition**
  store %struct.QueueDefinition* %4, %struct.QueueDefinition** %8, align 4, !tbaa !170
  br label %11

9:                                                ; preds = %5
  %10 = getelementptr inbounds %struct.QueueDefinition, %struct.QueueDefinition* %4, i32 0, i32 0
  store i8* %2, i8** %10, align 4, !tbaa !170
  br label %11

11:                                               ; preds = %9, %7
  %12 = getelementptr inbounds %struct.QueueDefinition, %struct.QueueDefinition* %4, i32 0, i32 6
  store i32 %0, i32* %12, align 4, !tbaa !172
  %13 = getelementptr inbounds %struct.QueueDefinition, %struct.QueueDefinition* %4, i32 0, i32 7
  store i32 %1, i32* %13, align 4, !tbaa !173
  %14 = tail call i32 @xQueueGenericReset(%struct.QueueDefinition* noundef nonnull %4, i32 noundef 1) #20
  %15 = getelementptr inbounds %struct.QueueDefinition, %struct.QueueDefinition* %4, i32 0, i32 11
  store i8 %3, i8* %15, align 4, !tbaa !181
  ret void
}

; Function Attrs: noinline nounwind optsize
define dso_local %struct.QueueDefinition* @xQueueCreateMutex(i8 noundef zeroext %0) local_unnamed_addr #2 {
  %2 = tail call %struct.QueueDefinition* @xQueueGenericCreate(i32 noundef 1, i32 noundef 0, i8 noundef zeroext %0) #20
  tail call fastcc void @prvInitialiseMutex(%struct.QueueDefinition* noundef %2) #20
  ret %struct.QueueDefinition* %2
}

; Function Attrs: noinline nounwind optsize
define internal fastcc void @prvInitialiseMutex(%struct.QueueDefinition* noundef %0) unnamed_addr #2 {
  %2 = icmp eq %struct.QueueDefinition* %0, null
  br i1 %2, label %10, label %3

3:                                                ; preds = %1
  %4 = getelementptr inbounds %struct.QueueDefinition, %struct.QueueDefinition* %0, i32 0, i32 2
  %5 = bitcast %union.anon.9* %4 to %struct.tskTaskControlBlock**
  store %struct.tskTaskControlBlock* null, %struct.tskTaskControlBlock** %5, align 4, !tbaa !45
  %6 = getelementptr inbounds %struct.QueueDefinition, %struct.QueueDefinition* %0, i32 0, i32 0
  store i8* null, i8** %6, align 4, !tbaa !170
  %7 = getelementptr inbounds %struct.QueueDefinition, %struct.QueueDefinition* %0, i32 0, i32 2, i32 0, i32 1
  %8 = bitcast i8** %7 to i32*
  store i32 0, i32* %8, align 4, !tbaa !45
  %9 = tail call i32 @xQueueGenericSend(%struct.QueueDefinition* noundef nonnull %0, i8* noundef null, i32 noundef 0, i32 noundef 0) #20
  br label %10

10:                                               ; preds = %1, %3
  ret void
}

; Function Attrs: noinline nounwind optsize
define dso_local i32 @xQueueGenericSend(%struct.QueueDefinition* noundef %0, i8* noundef %1, i32 noundef %2, i32 noundef %3) local_unnamed_addr #2 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.xTIME_OUT, align 4
  store i32 %2, i32* %5, align 4, !tbaa !18
  %7 = bitcast %struct.xTIME_OUT* %6 to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %7) #21
  %8 = icmp eq %struct.QueueDefinition* %0, null
  br i1 %8, label %9, label %12

9:                                                ; preds = %4
  %10 = tail call i32 asm sideeffect "\09mov $0, $1\09\09\09\09\09\09\09\09\09\09\09\09\0A\09msr basepri, $0\09\09\09\09\09\09\09\09\09\09\09\0A\09isb\09\09\09\09\09\09\09\09\09\09\09\09\09\09\0A\09dsb\09\09\09\09\09\09\09\09\09\09\09\09\09\09\0A", "=r,i,~{memory}"(i32 80) #21, !srcloc !169
  br label %11

11:                                               ; preds = %11, %9
  br label %11

12:                                               ; preds = %4
  %13 = icmp eq i8* %1, null
  br i1 %13, label %14, label %21

14:                                               ; preds = %12
  %15 = getelementptr inbounds %struct.QueueDefinition, %struct.QueueDefinition* %0, i32 0, i32 7
  %16 = load i32, i32* %15, align 4, !tbaa !173
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %21, label %18

18:                                               ; preds = %14
  %19 = tail call i32 asm sideeffect "\09mov $0, $1\09\09\09\09\09\09\09\09\09\09\09\09\0A\09msr basepri, $0\09\09\09\09\09\09\09\09\09\09\09\0A\09isb\09\09\09\09\09\09\09\09\09\09\09\09\09\09\0A\09dsb\09\09\09\09\09\09\09\09\09\09\09\09\09\09\0A", "=r,i,~{memory}"(i32 80) #21, !srcloc !169
  br label %20

20:                                               ; preds = %20, %18
  br label %20

21:                                               ; preds = %12, %14
  %22 = icmp eq i32 %3, 2
  br i1 %22, label %23, label %30

23:                                               ; preds = %21
  %24 = getelementptr inbounds %struct.QueueDefinition, %struct.QueueDefinition* %0, i32 0, i32 6
  %25 = load i32, i32* %24, align 4, !tbaa !172
  %26 = icmp eq i32 %25, 1
  br i1 %26, label %30, label %27

27:                                               ; preds = %23
  %28 = tail call i32 asm sideeffect "\09mov $0, $1\09\09\09\09\09\09\09\09\09\09\09\09\0A\09msr basepri, $0\09\09\09\09\09\09\09\09\09\09\09\0A\09isb\09\09\09\09\09\09\09\09\09\09\09\09\09\09\0A\09dsb\09\09\09\09\09\09\09\09\09\09\09\09\09\09\0A", "=r,i,~{memory}"(i32 80) #21, !srcloc !169
  br label %29

29:                                               ; preds = %29, %27
  br label %29

30:                                               ; preds = %21, %23
  %31 = tail call i32 @xTaskGetSchedulerState() #19
  %32 = icmp eq i32 %31, 0
  %33 = icmp ne i32 %2, 0
  %34 = and i1 %32, %33
  br i1 %34, label %47, label %35

35:                                               ; preds = %30
  call void @vPortEnterCritical() #19
  %36 = getelementptr inbounds %struct.QueueDefinition, %struct.QueueDefinition* %0, i32 0, i32 5
  %37 = load volatile i32, i32* %36, align 4, !tbaa !174
  %38 = getelementptr inbounds %struct.QueueDefinition, %struct.QueueDefinition* %0, i32 0, i32 6
  %39 = load i32, i32* %38, align 4, !tbaa !172
  %40 = icmp ult i32 %37, %39
  %41 = or i1 %22, %40
  br i1 %41, label %50, label %42

42:                                               ; preds = %35
  %43 = getelementptr inbounds %struct.QueueDefinition, %struct.QueueDefinition* %0, i32 0, i32 8
  %44 = getelementptr inbounds %struct.QueueDefinition, %struct.QueueDefinition* %0, i32 0, i32 9
  %45 = getelementptr inbounds %struct.QueueDefinition, %struct.QueueDefinition* %0, i32 0, i32 3
  %46 = icmp eq i32 %2, 0
  br i1 %46, label %64, label %65

47:                                               ; preds = %30
  %48 = tail call i32 asm sideeffect "\09mov $0, $1\09\09\09\09\09\09\09\09\09\09\09\09\0A\09msr basepri, $0\09\09\09\09\09\09\09\09\09\09\09\0A\09isb\09\09\09\09\09\09\09\09\09\09\09\09\09\09\0A\09dsb\09\09\09\09\09\09\09\09\09\09\09\09\09\09\0A", "=r,i,~{memory}"(i32 80) #21, !srcloc !169
  br label %49

49:                                               ; preds = %49, %47
  br label %49

50:                                               ; preds = %89, %35
  %51 = call fastcc i32 @prvCopyDataToQueue(%struct.QueueDefinition* noundef nonnull %0, i8* noundef %1, i32 noundef %3) #20
  %52 = getelementptr inbounds %struct.QueueDefinition, %struct.QueueDefinition* %0, i32 0, i32 4
  %53 = getelementptr inbounds %struct.xLIST, %struct.xLIST* %52, i32 0, i32 0
  %54 = load volatile i32, i32* %53, align 4, !tbaa !182
  %55 = icmp eq i32 %54, 0
  br i1 %55, label %60, label %56

56:                                               ; preds = %50
  %57 = call i32 @xTaskRemoveFromEventList(%struct.xLIST* noundef nonnull %52) #19
  %58 = icmp eq i32 %57, 0
  br i1 %58, label %63, label %59

59:                                               ; preds = %56
  store volatile i32 268435456, i32* inttoptr (i32 -536810236 to i32*), align 4, !tbaa !18
  call void asm sideeffect "dsb", "~{memory}"() #21, !srcloc !183
  call void asm sideeffect "isb", ""() #21, !srcloc !184
  br label %63

60:                                               ; preds = %50
  %61 = icmp eq i32 %51, 0
  br i1 %61, label %63, label %62

62:                                               ; preds = %60
  store volatile i32 268435456, i32* inttoptr (i32 -536810236 to i32*), align 4, !tbaa !18
  call void asm sideeffect "dsb", "~{memory}"() #21, !srcloc !185
  call void asm sideeffect "isb", ""() #21, !srcloc !186
  br label %63

63:                                               ; preds = %62, %60, %59, %56
  call void @vPortExitCritical() #19
  br label %96

64:                                               ; preds = %93, %42
  call void @vPortExitCritical() #19
  br label %96

65:                                               ; preds = %42
  call void @vTaskInternalSetTimeOutState(%struct.xTIME_OUT* noundef nonnull %6) #19
  br label %66

66:                                               ; preds = %93, %65
  call void @vPortExitCritical() #19
  call void @vTaskSuspendAll() #19
  call void @vPortEnterCritical() #19
  %67 = load volatile i8, i8* %43, align 4, !tbaa !176
  %68 = icmp eq i8 %67, -1
  br i1 %68, label %69, label %70

69:                                               ; preds = %66
  store volatile i8 0, i8* %43, align 4, !tbaa !176
  br label %70

70:                                               ; preds = %69, %66
  %71 = load volatile i8, i8* %44, align 1, !tbaa !177
  %72 = icmp eq i8 %71, -1
  br i1 %72, label %73, label %74

73:                                               ; preds = %70
  store volatile i8 0, i8* %44, align 1, !tbaa !177
  br label %74

74:                                               ; preds = %73, %70
  call void @vPortExitCritical() #19
  %75 = call i32 @xTaskCheckForTimeOut(%struct.xTIME_OUT* noundef nonnull %6, i32* noundef nonnull %5) #19
  %76 = icmp eq i32 %75, 0
  br i1 %76, label %77, label %87

77:                                               ; preds = %74
  %78 = call fastcc i32 @prvIsQueueFull(%struct.QueueDefinition* noundef nonnull %0) #20
  %79 = icmp eq i32 %78, 0
  br i1 %79, label %85, label %80

80:                                               ; preds = %77
  %81 = load i32, i32* %5, align 4, !tbaa !18
  call void @vTaskPlaceOnEventList(%struct.xLIST* noundef nonnull %45, i32 noundef %81) #19
  call fastcc void @prvUnlockQueue(%struct.QueueDefinition* noundef nonnull %0) #20
  %82 = call i32 @xTaskResumeAll() #19
  %83 = icmp eq i32 %82, 0
  br i1 %83, label %84, label %89

84:                                               ; preds = %80
  store volatile i32 268435456, i32* inttoptr (i32 -536810236 to i32*), align 4, !tbaa !18
  call void asm sideeffect "dsb", "~{memory}"() #21, !srcloc !187
  call void asm sideeffect "isb", ""() #21, !srcloc !188
  br label %89

85:                                               ; preds = %77
  call fastcc void @prvUnlockQueue(%struct.QueueDefinition* noundef nonnull %0) #20
  %86 = call i32 @xTaskResumeAll() #19
  br label %89

87:                                               ; preds = %74
  call fastcc void @prvUnlockQueue(%struct.QueueDefinition* noundef nonnull %0) #20
  %88 = call i32 @xTaskResumeAll() #19
  br label %96

89:                                               ; preds = %85, %84, %80
  call void @vPortEnterCritical() #19
  %90 = load volatile i32, i32* %36, align 4, !tbaa !174
  %91 = load i32, i32* %38, align 4, !tbaa !172
  %92 = icmp ult i32 %90, %91
  br i1 %92, label %50, label %93

93:                                               ; preds = %89
  %94 = load i32, i32* %5, align 4, !tbaa !18
  %95 = icmp eq i32 %94, 0
  br i1 %95, label %64, label %66

96:                                               ; preds = %87, %64, %63
  %97 = phi i32 [ 1, %63 ], [ 0, %64 ], [ 0, %87 ]
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %7) #21
  ret i32 %97
}

; Function Attrs: noinline nounwind optsize
define internal fastcc i32 @prvCopyDataToQueue(%struct.QueueDefinition* noundef %0, i8* noundef %1, i32 noundef %2) unnamed_addr #2 {
  %4 = getelementptr inbounds %struct.QueueDefinition, %struct.QueueDefinition* %0, i32 0, i32 5
  %5 = load volatile i32, i32* %4, align 4, !tbaa !174
  %6 = getelementptr inbounds %struct.QueueDefinition, %struct.QueueDefinition* %0, i32 0, i32 7
  %7 = load i32, i32* %6, align 4, !tbaa !173
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %9, label %18

9:                                                ; preds = %3
  %10 = getelementptr inbounds %struct.QueueDefinition, %struct.QueueDefinition* %0, i32 0, i32 0
  %11 = load i8*, i8** %10, align 4, !tbaa !170
  %12 = icmp eq i8* %11, null
  br i1 %12, label %13, label %54

13:                                               ; preds = %9
  %14 = getelementptr inbounds %struct.QueueDefinition, %struct.QueueDefinition* %0, i32 0, i32 2
  %15 = bitcast %union.anon.9* %14 to %struct.tskTaskControlBlock**
  %16 = load %struct.tskTaskControlBlock*, %struct.tskTaskControlBlock** %15, align 4, !tbaa !45
  %17 = tail call i32 @xTaskPriorityDisinherit(%struct.tskTaskControlBlock* noundef %16) #19
  store %struct.tskTaskControlBlock* null, %struct.tskTaskControlBlock** %15, align 4, !tbaa !45
  br label %54

18:                                               ; preds = %3
  %19 = icmp eq i32 %2, 0
  br i1 %19, label %20, label %33

20:                                               ; preds = %18
  %21 = getelementptr inbounds %struct.QueueDefinition, %struct.QueueDefinition* %0, i32 0, i32 1
  %22 = load i8*, i8** %21, align 4, !tbaa !175
  %23 = tail call i8* @memcpy(i8* noundef %22, i8* noundef %1, i32 noundef %7) #19
  %24 = load i32, i32* %6, align 4, !tbaa !173
  %25 = load i8*, i8** %21, align 4, !tbaa !175
  %26 = getelementptr inbounds i8, i8* %25, i32 %24
  store i8* %26, i8** %21, align 4, !tbaa !175
  %27 = getelementptr inbounds %struct.QueueDefinition, %struct.QueueDefinition* %0, i32 0, i32 2, i32 0, i32 0
  %28 = load i8*, i8** %27, align 4, !tbaa !45
  %29 = icmp ult i8* %26, %28
  br i1 %29, label %54, label %30

30:                                               ; preds = %20
  %31 = getelementptr inbounds %struct.QueueDefinition, %struct.QueueDefinition* %0, i32 0, i32 0
  %32 = load i8*, i8** %31, align 4, !tbaa !170
  store i8* %32, i8** %21, align 4, !tbaa !175
  br label %54

33:                                               ; preds = %18
  %34 = getelementptr inbounds %struct.QueueDefinition, %struct.QueueDefinition* %0, i32 0, i32 2, i32 0, i32 1
  %35 = load i8*, i8** %34, align 4, !tbaa !45
  %36 = tail call i8* @memcpy(i8* noundef %35, i8* noundef %1, i32 noundef %7) #19
  %37 = load i32, i32* %6, align 4, !tbaa !173
  %38 = load i8*, i8** %34, align 4, !tbaa !45
  %39 = sub i32 0, %37
  %40 = getelementptr inbounds i8, i8* %38, i32 %39
  store i8* %40, i8** %34, align 4, !tbaa !45
  %41 = getelementptr inbounds %struct.QueueDefinition, %struct.QueueDefinition* %0, i32 0, i32 0
  %42 = load i8*, i8** %41, align 4, !tbaa !170
  %43 = icmp ult i8* %40, %42
  br i1 %43, label %44, label %48

44:                                               ; preds = %33
  %45 = getelementptr inbounds %struct.QueueDefinition, %struct.QueueDefinition* %0, i32 0, i32 2, i32 0, i32 0
  %46 = load i8*, i8** %45, align 4, !tbaa !45
  %47 = getelementptr inbounds i8, i8* %46, i32 %39
  store i8* %47, i8** %34, align 4, !tbaa !45
  br label %48

48:                                               ; preds = %33, %44
  %49 = icmp eq i32 %2, 2
  %50 = icmp ne i32 %5, 0
  %51 = select i1 %49, i1 %50, i1 false
  %52 = sext i1 %51 to i32
  %53 = add i32 %5, %52
  br label %54

54:                                               ; preds = %48, %20, %30, %13, %9
  %55 = phi i32 [ %17, %13 ], [ 0, %9 ], [ 0, %30 ], [ 0, %20 ], [ 0, %48 ]
  %56 = phi i32 [ %5, %13 ], [ %5, %9 ], [ %5, %30 ], [ %5, %20 ], [ %53, %48 ]
  %57 = add i32 %56, 1
  store volatile i32 %57, i32* %4, align 4, !tbaa !174
  ret i32 %55
}

; Function Attrs: noinline nounwind optsize
define internal fastcc i32 @prvIsQueueFull(%struct.QueueDefinition* noundef %0) unnamed_addr #2 {
  tail call void @vPortEnterCritical() #19
  %2 = getelementptr inbounds %struct.QueueDefinition, %struct.QueueDefinition* %0, i32 0, i32 5
  %3 = load volatile i32, i32* %2, align 4, !tbaa !174
  %4 = getelementptr inbounds %struct.QueueDefinition, %struct.QueueDefinition* %0, i32 0, i32 6
  %5 = load i32, i32* %4, align 4, !tbaa !172
  %6 = icmp eq i32 %3, %5
  %7 = zext i1 %6 to i32
  tail call void @vPortExitCritical() #19
  ret i32 %7
}

; Function Attrs: noinline nounwind optsize
define internal fastcc void @prvUnlockQueue(%struct.QueueDefinition* noundef %0) unnamed_addr #2 {
  tail call void @vPortEnterCritical() #19
  %2 = getelementptr inbounds %struct.QueueDefinition, %struct.QueueDefinition* %0, i32 0, i32 9
  %3 = load volatile i8, i8* %2, align 1, !tbaa !177
  %4 = getelementptr inbounds %struct.QueueDefinition, %struct.QueueDefinition* %0, i32 0, i32 4
  %5 = getelementptr inbounds %struct.xLIST, %struct.xLIST* %4, i32 0, i32 0
  %6 = icmp sgt i8 %3, 0
  br i1 %6, label %7, label %18

7:                                                ; preds = %1, %15
  %8 = phi i8 [ %16, %15 ], [ %3, %1 ]
  %9 = load volatile i32, i32* %5, align 4, !tbaa !182
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %18, label %11

11:                                               ; preds = %7
  %12 = tail call i32 @xTaskRemoveFromEventList(%struct.xLIST* noundef nonnull %4) #19
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %15, label %14

14:                                               ; preds = %11
  tail call void @vTaskMissedYield() #19
  br label %15

15:                                               ; preds = %14, %11
  %16 = add nsw i8 %8, -1
  %17 = icmp sgt i8 %8, 1
  br i1 %17, label %7, label %18, !llvm.loop !189

18:                                               ; preds = %15, %7, %1
  store volatile i8 -1, i8* %2, align 1, !tbaa !177
  tail call void @vPortExitCritical() #19
  tail call void @vPortEnterCritical() #19
  %19 = getelementptr inbounds %struct.QueueDefinition, %struct.QueueDefinition* %0, i32 0, i32 8
  %20 = load volatile i8, i8* %19, align 4, !tbaa !176
  %21 = getelementptr inbounds %struct.QueueDefinition, %struct.QueueDefinition* %0, i32 0, i32 3
  %22 = getelementptr inbounds %struct.xLIST, %struct.xLIST* %21, i32 0, i32 0
  %23 = icmp sgt i8 %20, 0
  br i1 %23, label %24, label %35

24:                                               ; preds = %18, %32
  %25 = phi i8 [ %33, %32 ], [ %20, %18 ]
  %26 = load volatile i32, i32* %22, align 4, !tbaa !178
  %27 = icmp eq i32 %26, 0
  br i1 %27, label %35, label %28

28:                                               ; preds = %24
  %29 = tail call i32 @xTaskRemoveFromEventList(%struct.xLIST* noundef nonnull %21) #19
  %30 = icmp eq i32 %29, 0
  br i1 %30, label %32, label %31

31:                                               ; preds = %28
  tail call void @vTaskMissedYield() #19
  br label %32

32:                                               ; preds = %28, %31
  %33 = add nsw i8 %25, -1
  %34 = icmp sgt i8 %25, 1
  br i1 %34, label %24, label %35, !llvm.loop !190

35:                                               ; preds = %32, %24, %18
  store volatile i8 -1, i8* %19, align 4, !tbaa !176
  tail call void @vPortExitCritical() #19
  ret void
}

; Function Attrs: optsize
declare dso_local i8* @memcpy(i8* noundef, i8* noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind optsize
define dso_local i32 @xQueueGiveMutexRecursive(%struct.QueueDefinition* noundef %0) local_unnamed_addr #2 {
  %2 = icmp eq %struct.QueueDefinition* %0, null
  br i1 %2, label %3, label %6

3:                                                ; preds = %1
  %4 = tail call i32 asm sideeffect "\09mov $0, $1\09\09\09\09\09\09\09\09\09\09\09\09\0A\09msr basepri, $0\09\09\09\09\09\09\09\09\09\09\09\0A\09isb\09\09\09\09\09\09\09\09\09\09\09\09\09\09\0A\09dsb\09\09\09\09\09\09\09\09\09\09\09\09\09\09\0A", "=r,i,~{memory}"(i32 80) #21, !srcloc !169
  br label %5

5:                                                ; preds = %5, %3
  br label %5

6:                                                ; preds = %1
  %7 = getelementptr inbounds %struct.QueueDefinition, %struct.QueueDefinition* %0, i32 0, i32 2
  %8 = bitcast %union.anon.9* %7 to %struct.tskTaskControlBlock**
  %9 = load %struct.tskTaskControlBlock*, %struct.tskTaskControlBlock** %8, align 4, !tbaa !45
  %10 = tail call %struct.tskTaskControlBlock* @xTaskGetCurrentTaskHandle() #19
  %11 = icmp eq %struct.tskTaskControlBlock* %9, %10
  br i1 %11, label %12, label %20

12:                                               ; preds = %6
  %13 = getelementptr inbounds %struct.QueueDefinition, %struct.QueueDefinition* %0, i32 0, i32 2, i32 0, i32 1
  %14 = bitcast i8** %13 to i32*
  %15 = load i32, i32* %14, align 4, !tbaa !45
  %16 = add i32 %15, -1
  store i32 %16, i32* %14, align 4, !tbaa !45
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %18, label %20

18:                                               ; preds = %12
  %19 = tail call i32 @xQueueGenericSend(%struct.QueueDefinition* noundef nonnull %0, i8* noundef null, i32 noundef 0, i32 noundef 0) #20
  br label %20

20:                                               ; preds = %6, %18, %12
  %21 = phi i32 [ 1, %12 ], [ 1, %18 ], [ 0, %6 ]
  ret i32 %21
}

; Function Attrs: noinline nounwind optsize
define dso_local i32 @xQueueTakeMutexRecursive(%struct.QueueDefinition* noundef %0, i32 noundef %1) local_unnamed_addr #2 {
  %3 = icmp eq %struct.QueueDefinition* %0, null
  br i1 %3, label %4, label %7

4:                                                ; preds = %2
  %5 = tail call i32 asm sideeffect "\09mov $0, $1\09\09\09\09\09\09\09\09\09\09\09\09\0A\09msr basepri, $0\09\09\09\09\09\09\09\09\09\09\09\0A\09isb\09\09\09\09\09\09\09\09\09\09\09\09\09\09\0A\09dsb\09\09\09\09\09\09\09\09\09\09\09\09\09\09\0A", "=r,i,~{memory}"(i32 80) #21, !srcloc !169
  br label %6

6:                                                ; preds = %6, %4
  br label %6

7:                                                ; preds = %2
  %8 = getelementptr inbounds %struct.QueueDefinition, %struct.QueueDefinition* %0, i32 0, i32 2
  %9 = bitcast %union.anon.9* %8 to %struct.tskTaskControlBlock**
  %10 = load %struct.tskTaskControlBlock*, %struct.tskTaskControlBlock** %9, align 4, !tbaa !45
  %11 = tail call %struct.tskTaskControlBlock* @xTaskGetCurrentTaskHandle() #19
  %12 = icmp eq %struct.tskTaskControlBlock* %10, %11
  br i1 %12, label %16, label %13

13:                                               ; preds = %7
  %14 = tail call i32 @xQueueSemaphoreTake(%struct.QueueDefinition* noundef nonnull %0, i32 noundef %1) #20
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %22, label %16

16:                                               ; preds = %13, %7
  %17 = phi i32 [ 1, %7 ], [ %14, %13 ]
  %18 = getelementptr inbounds %struct.QueueDefinition, %struct.QueueDefinition* %0, i32 0, i32 2, i32 0, i32 1
  %19 = bitcast i8** %18 to i32*
  %20 = load i32, i32* %19, align 4, !tbaa !45
  %21 = add i32 %20, 1
  store i32 %21, i32* %19, align 4, !tbaa !45
  br label %22

22:                                               ; preds = %16, %13
  %23 = phi i32 [ 0, %13 ], [ %17, %16 ]
  ret i32 %23
}

; Function Attrs: noinline nounwind optsize
define dso_local i32 @xQueueSemaphoreTake(%struct.QueueDefinition* noundef %0, i32 noundef %1) local_unnamed_addr #2 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.xTIME_OUT, align 4
  store i32 %1, i32* %3, align 4, !tbaa !18
  %5 = bitcast %struct.xTIME_OUT* %4 to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %5) #21
  %6 = icmp eq %struct.QueueDefinition* %0, null
  br i1 %6, label %7, label %10

7:                                                ; preds = %2
  %8 = tail call i32 asm sideeffect "\09mov $0, $1\09\09\09\09\09\09\09\09\09\09\09\09\0A\09msr basepri, $0\09\09\09\09\09\09\09\09\09\09\09\0A\09isb\09\09\09\09\09\09\09\09\09\09\09\09\09\09\0A\09dsb\09\09\09\09\09\09\09\09\09\09\09\09\09\09\0A", "=r,i,~{memory}"(i32 80) #21, !srcloc !169
  br label %9

9:                                                ; preds = %9, %7
  br label %9

10:                                               ; preds = %2
  %11 = getelementptr inbounds %struct.QueueDefinition, %struct.QueueDefinition* %0, i32 0, i32 7
  %12 = load i32, i32* %11, align 4, !tbaa !173
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %17, label %14

14:                                               ; preds = %10
  %15 = tail call i32 asm sideeffect "\09mov $0, $1\09\09\09\09\09\09\09\09\09\09\09\09\0A\09msr basepri, $0\09\09\09\09\09\09\09\09\09\09\09\0A\09isb\09\09\09\09\09\09\09\09\09\09\09\09\09\09\0A\09dsb\09\09\09\09\09\09\09\09\09\09\09\09\09\09\0A", "=r,i,~{memory}"(i32 80) #21, !srcloc !169
  br label %16

16:                                               ; preds = %16, %14
  br label %16

17:                                               ; preds = %10
  %18 = tail call i32 @xTaskGetSchedulerState() #19
  %19 = icmp eq i32 %18, 0
  %20 = icmp ne i32 %1, 0
  %21 = and i1 %19, %20
  br i1 %21, label %34, label %22

22:                                               ; preds = %17
  call void @vPortEnterCritical() #19
  %23 = getelementptr inbounds %struct.QueueDefinition, %struct.QueueDefinition* %0, i32 0, i32 5
  %24 = load volatile i32, i32* %23, align 4, !tbaa !174
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %26, label %37

26:                                               ; preds = %22
  %27 = getelementptr inbounds %struct.QueueDefinition, %struct.QueueDefinition* %0, i32 0, i32 8
  %28 = getelementptr inbounds %struct.QueueDefinition, %struct.QueueDefinition* %0, i32 0, i32 9
  %29 = getelementptr inbounds %struct.QueueDefinition, %struct.QueueDefinition* %0, i32 0, i32 0
  %30 = getelementptr inbounds %struct.QueueDefinition, %struct.QueueDefinition* %0, i32 0, i32 2
  %31 = bitcast %union.anon.9* %30 to %struct.tskTaskControlBlock**
  %32 = getelementptr inbounds %struct.QueueDefinition, %struct.QueueDefinition* %0, i32 0, i32 4
  %33 = icmp eq i32 %1, 0
  br i1 %33, label %56, label %62

34:                                               ; preds = %17
  %35 = tail call i32 asm sideeffect "\09mov $0, $1\09\09\09\09\09\09\09\09\09\09\09\09\0A\09msr basepri, $0\09\09\09\09\09\09\09\09\09\09\09\0A\09isb\09\09\09\09\09\09\09\09\09\09\09\09\09\09\0A\09dsb\09\09\09\09\09\09\09\09\09\09\09\09\09\09\0A", "=r,i,~{memory}"(i32 80) #21, !srcloc !169
  br label %36

36:                                               ; preds = %36, %34
  br label %36

37:                                               ; preds = %103, %22
  %38 = phi i32 [ %24, %22 ], [ %105, %103 ]
  %39 = add i32 %38, -1
  store volatile i32 %39, i32* %23, align 4, !tbaa !174
  %40 = getelementptr inbounds %struct.QueueDefinition, %struct.QueueDefinition* %0, i32 0, i32 0
  %41 = load i8*, i8** %40, align 4, !tbaa !170
  %42 = icmp eq i8* %41, null
  br i1 %42, label %43, label %47

43:                                               ; preds = %37
  %44 = call %struct.tskTaskControlBlock* @pvTaskIncrementMutexHeldCount() #19
  %45 = getelementptr inbounds %struct.QueueDefinition, %struct.QueueDefinition* %0, i32 0, i32 2
  %46 = bitcast %union.anon.9* %45 to %struct.tskTaskControlBlock**
  store %struct.tskTaskControlBlock* %44, %struct.tskTaskControlBlock** %46, align 4, !tbaa !45
  br label %47

47:                                               ; preds = %37, %43
  %48 = getelementptr inbounds %struct.QueueDefinition, %struct.QueueDefinition* %0, i32 0, i32 3
  %49 = getelementptr inbounds %struct.xLIST, %struct.xLIST* %48, i32 0, i32 0
  %50 = load volatile i32, i32* %49, align 4, !tbaa !178
  %51 = icmp eq i32 %50, 0
  br i1 %51, label %110, label %52

52:                                               ; preds = %47
  %53 = call i32 @xTaskRemoveFromEventList(%struct.xLIST* noundef nonnull %48) #19
  %54 = icmp eq i32 %53, 0
  br i1 %54, label %110, label %55

55:                                               ; preds = %52
  store volatile i32 268435456, i32* inttoptr (i32 -536810236 to i32*), align 4, !tbaa !18
  call void asm sideeffect "dsb", "~{memory}"() #21, !srcloc !191
  call void asm sideeffect "isb", ""() #21, !srcloc !192
  br label %110

56:                                               ; preds = %107, %26
  %57 = phi i32 [ 0, %26 ], [ %104, %107 ]
  %58 = icmp eq i32 %57, 0
  br i1 %58, label %110, label %59

59:                                               ; preds = %56
  %60 = call i32 asm sideeffect "\09mov $0, $1\09\09\09\09\09\09\09\09\09\09\09\09\0A\09msr basepri, $0\09\09\09\09\09\09\09\09\09\09\09\0A\09isb\09\09\09\09\09\09\09\09\09\09\09\09\09\09\0A\09dsb\09\09\09\09\09\09\09\09\09\09\09\09\09\09\0A", "=r,i,~{memory}"(i32 80) #21, !srcloc !169
  br label %61

61:                                               ; preds = %61, %59
  br label %61

62:                                               ; preds = %26, %107
  %63 = phi i32 [ %104, %107 ], [ 0, %26 ]
  %64 = phi i1 [ false, %107 ], [ true, %26 ]
  br i1 %64, label %65, label %66

65:                                               ; preds = %62
  call void @vTaskInternalSetTimeOutState(%struct.xTIME_OUT* noundef nonnull %4) #19
  br label %66

66:                                               ; preds = %62, %65
  call void @vPortExitCritical() #19
  call void @vTaskSuspendAll() #19
  call void @vPortEnterCritical() #19
  %67 = load volatile i8, i8* %27, align 4, !tbaa !176
  %68 = icmp eq i8 %67, -1
  br i1 %68, label %69, label %70

69:                                               ; preds = %66
  store volatile i8 0, i8* %27, align 4, !tbaa !176
  br label %70

70:                                               ; preds = %69, %66
  %71 = load volatile i8, i8* %28, align 1, !tbaa !177
  %72 = icmp eq i8 %71, -1
  br i1 %72, label %73, label %74

73:                                               ; preds = %70
  store volatile i8 0, i8* %28, align 1, !tbaa !177
  br label %74

74:                                               ; preds = %73, %70
  call void @vPortExitCritical() #19
  %75 = call i32 @xTaskCheckForTimeOut(%struct.xTIME_OUT* noundef nonnull %4, i32* noundef nonnull %3) #19
  %76 = icmp eq i32 %75, 0
  br i1 %76, label %77, label %94

77:                                               ; preds = %74
  %78 = call fastcc i32 @prvIsQueueEmpty(%struct.QueueDefinition* noundef nonnull %0) #20
  %79 = icmp eq i32 %78, 0
  br i1 %79, label %92, label %80

80:                                               ; preds = %77
  %81 = load i8*, i8** %29, align 4, !tbaa !170
  %82 = icmp eq i8* %81, null
  br i1 %82, label %83, label %86

83:                                               ; preds = %80
  call void @vPortEnterCritical() #19
  %84 = load %struct.tskTaskControlBlock*, %struct.tskTaskControlBlock** %31, align 4, !tbaa !45
  %85 = call i32 @xTaskPriorityInherit(%struct.tskTaskControlBlock* noundef %84) #19
  call void @vPortExitCritical() #19
  br label %86

86:                                               ; preds = %80, %83
  %87 = phi i32 [ %85, %83 ], [ %63, %80 ]
  %88 = load i32, i32* %3, align 4, !tbaa !18
  call void @vTaskPlaceOnEventList(%struct.xLIST* noundef nonnull %32, i32 noundef %88) #19
  call fastcc void @prvUnlockQueue(%struct.QueueDefinition* noundef nonnull %0) #20
  %89 = call i32 @xTaskResumeAll() #19
  %90 = icmp eq i32 %89, 0
  br i1 %90, label %91, label %103

91:                                               ; preds = %86
  store volatile i32 268435456, i32* inttoptr (i32 -536810236 to i32*), align 4, !tbaa !18
  call void asm sideeffect "dsb", "~{memory}"() #21, !srcloc !193
  call void asm sideeffect "isb", ""() #21, !srcloc !194
  br label %103

92:                                               ; preds = %77
  call fastcc void @prvUnlockQueue(%struct.QueueDefinition* noundef nonnull %0) #20
  %93 = call i32 @xTaskResumeAll() #19
  br label %103

94:                                               ; preds = %74
  call fastcc void @prvUnlockQueue(%struct.QueueDefinition* noundef nonnull %0) #20
  %95 = call i32 @xTaskResumeAll() #19
  %96 = call fastcc i32 @prvIsQueueEmpty(%struct.QueueDefinition* noundef nonnull %0) #20
  %97 = icmp eq i32 %96, 0
  br i1 %97, label %103, label %98

98:                                               ; preds = %94
  %99 = icmp eq i32 %63, 0
  br i1 %99, label %112, label %100

100:                                              ; preds = %98
  call void @vPortEnterCritical() #19
  %101 = call fastcc i32 @prvGetDisinheritPriorityAfterTimeout(%struct.QueueDefinition* noundef nonnull %0) #20
  %102 = load %struct.tskTaskControlBlock*, %struct.tskTaskControlBlock** %31, align 4, !tbaa !45
  call void @vTaskPriorityDisinheritAfterTimeout(%struct.tskTaskControlBlock* noundef %102, i32 noundef %101) #19
  br label %110

103:                                              ; preds = %94, %92, %86, %91
  %104 = phi i32 [ %87, %91 ], [ %87, %86 ], [ %63, %92 ], [ %63, %94 ]
  call void @vPortEnterCritical() #19
  %105 = load volatile i32, i32* %23, align 4, !tbaa !174
  %106 = icmp eq i32 %105, 0
  br i1 %106, label %107, label %37

107:                                              ; preds = %103
  %108 = load i32, i32* %3, align 4, !tbaa !18
  %109 = icmp eq i32 %108, 0
  br i1 %109, label %56, label %62

110:                                              ; preds = %56, %52, %55, %47, %100
  %111 = phi i32 [ 0, %100 ], [ 1, %47 ], [ 1, %55 ], [ 1, %52 ], [ 0, %56 ]
  call void @vPortExitCritical() #19
  br label %112

112:                                              ; preds = %110, %98
  %113 = phi i32 [ 0, %98 ], [ %111, %110 ]
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %5) #21
  ret i32 %113
}

; Function Attrs: noinline nounwind optsize
define internal fastcc i32 @prvIsQueueEmpty(%struct.QueueDefinition* noundef %0) unnamed_addr #2 {
  tail call void @vPortEnterCritical() #19
  %2 = getelementptr inbounds %struct.QueueDefinition, %struct.QueueDefinition* %0, i32 0, i32 5
  %3 = load volatile i32, i32* %2, align 4, !tbaa !174
  %4 = icmp eq i32 %3, 0
  %5 = zext i1 %4 to i32
  tail call void @vPortExitCritical() #19
  ret i32 %5
}

; Function Attrs: mustprogress nofree noinline norecurse nounwind optsize willreturn
define internal fastcc i32 @prvGetDisinheritPriorityAfterTimeout(%struct.QueueDefinition* noundef %0) unnamed_addr #7 {
  %2 = getelementptr inbounds %struct.QueueDefinition, %struct.QueueDefinition* %0, i32 0, i32 4, i32 0
  %3 = load volatile i32, i32* %2, align 4, !tbaa !182
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %11, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.QueueDefinition, %struct.QueueDefinition* %0, i32 0, i32 4, i32 2, i32 1
  %7 = load %struct.xLIST_ITEM*, %struct.xLIST_ITEM** %6, align 4, !tbaa !195
  %8 = getelementptr inbounds %struct.xLIST_ITEM, %struct.xLIST_ITEM* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 4, !tbaa !112
  %10 = sub i32 5, %9
  br label %11

11:                                               ; preds = %1, %5
  %12 = phi i32 [ %10, %5 ], [ 0, %1 ]
  ret i32 %12
}

; Function Attrs: noinline nounwind optsize
define dso_local %struct.QueueDefinition* @xQueueCreateCountingSemaphore(i32 noundef %0, i32 noundef %1) local_unnamed_addr #2 {
  %3 = icmp eq i32 %0, 0
  br i1 %3, label %4, label %7

4:                                                ; preds = %2
  %5 = tail call i32 asm sideeffect "\09mov $0, $1\09\09\09\09\09\09\09\09\09\09\09\09\0A\09msr basepri, $0\09\09\09\09\09\09\09\09\09\09\09\0A\09isb\09\09\09\09\09\09\09\09\09\09\09\09\09\09\0A\09dsb\09\09\09\09\09\09\09\09\09\09\09\09\09\09\0A", "=r,i,~{memory}"(i32 80) #21, !srcloc !169
  br label %6

6:                                                ; preds = %6, %4
  br label %6

7:                                                ; preds = %2
  %8 = icmp ugt i32 %1, %0
  br i1 %8, label %9, label %12

9:                                                ; preds = %7
  %10 = tail call i32 asm sideeffect "\09mov $0, $1\09\09\09\09\09\09\09\09\09\09\09\09\0A\09msr basepri, $0\09\09\09\09\09\09\09\09\09\09\09\0A\09isb\09\09\09\09\09\09\09\09\09\09\09\09\09\09\0A\09dsb\09\09\09\09\09\09\09\09\09\09\09\09\09\09\0A", "=r,i,~{memory}"(i32 80) #21, !srcloc !169
  br label %11

11:                                               ; preds = %11, %9
  br label %11

12:                                               ; preds = %7
  %13 = tail call %struct.QueueDefinition* @xQueueGenericCreate(i32 noundef %0, i32 noundef 0, i8 noundef zeroext 2) #20
  %14 = icmp eq %struct.QueueDefinition* %13, null
  br i1 %14, label %17, label %15

15:                                               ; preds = %12
  %16 = getelementptr inbounds %struct.QueueDefinition, %struct.QueueDefinition* %13, i32 0, i32 5
  store volatile i32 %1, i32* %16, align 4, !tbaa !174
  br label %17

17:                                               ; preds = %12, %15
  ret %struct.QueueDefinition* %13
}

; Function Attrs: noinline nounwind optsize
define dso_local i32 @xQueueGenericSendFromISR(%struct.QueueDefinition* noundef %0, i8* noundef %1, i32* noundef writeonly %2, i32 noundef %3) local_unnamed_addr #2 {
  %5 = icmp eq %struct.QueueDefinition* %0, null
  br i1 %5, label %6, label %9

6:                                                ; preds = %4
  %7 = tail call i32 asm sideeffect "\09mov $0, $1\09\09\09\09\09\09\09\09\09\09\09\09\0A\09msr basepri, $0\09\09\09\09\09\09\09\09\09\09\09\0A\09isb\09\09\09\09\09\09\09\09\09\09\09\09\09\09\0A\09dsb\09\09\09\09\09\09\09\09\09\09\09\09\09\09\0A", "=r,i,~{memory}"(i32 80) #21, !srcloc !169
  br label %8

8:                                                ; preds = %8, %6
  br label %8

9:                                                ; preds = %4
  %10 = icmp eq i8* %1, null
  br i1 %10, label %11, label %18

11:                                               ; preds = %9
  %12 = getelementptr inbounds %struct.QueueDefinition, %struct.QueueDefinition* %0, i32 0, i32 7
  %13 = load i32, i32* %12, align 4, !tbaa !173
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %18, label %15

15:                                               ; preds = %11
  %16 = tail call i32 asm sideeffect "\09mov $0, $1\09\09\09\09\09\09\09\09\09\09\09\09\0A\09msr basepri, $0\09\09\09\09\09\09\09\09\09\09\09\0A\09isb\09\09\09\09\09\09\09\09\09\09\09\09\09\09\0A\09dsb\09\09\09\09\09\09\09\09\09\09\09\09\09\09\0A", "=r,i,~{memory}"(i32 80) #21, !srcloc !169
  br label %17

17:                                               ; preds = %17, %15
  br label %17

18:                                               ; preds = %9, %11
  %19 = icmp eq i32 %3, 2
  br i1 %19, label %20, label %27

20:                                               ; preds = %18
  %21 = getelementptr inbounds %struct.QueueDefinition, %struct.QueueDefinition* %0, i32 0, i32 6
  %22 = load i32, i32* %21, align 4, !tbaa !172
  %23 = icmp eq i32 %22, 1
  br i1 %23, label %27, label %24

24:                                               ; preds = %20
  %25 = tail call i32 asm sideeffect "\09mov $0, $1\09\09\09\09\09\09\09\09\09\09\09\09\0A\09msr basepri, $0\09\09\09\09\09\09\09\09\09\09\09\0A\09isb\09\09\09\09\09\09\09\09\09\09\09\09\09\09\0A\09dsb\09\09\09\09\09\09\09\09\09\09\09\09\09\09\0A", "=r,i,~{memory}"(i32 80) #21, !srcloc !169
  br label %26

26:                                               ; preds = %26, %24
  br label %26

27:                                               ; preds = %18, %20
  tail call void @vPortValidateInterruptPriority() #19
  %28 = tail call { i32, i32 } asm sideeffect "\09mrs $0, basepri\09\09\09\09\09\09\09\09\09\09\09\0A\09mov $1, $2\09\09\09\09\09\09\09\09\09\09\09\09\0A\09msr basepri, $1\09\09\09\09\09\09\09\09\09\09\09\0A\09isb\09\09\09\09\09\09\09\09\09\09\09\09\09\09\0A\09dsb\09\09\09\09\09\09\09\09\09\09\09\09\09\09\0A", "=r,=r,i,~{memory}"(i32 80) #21, !srcloc !196
  %29 = getelementptr inbounds %struct.QueueDefinition, %struct.QueueDefinition* %0, i32 0, i32 5
  %30 = load volatile i32, i32* %29, align 4, !tbaa !174
  %31 = getelementptr inbounds %struct.QueueDefinition, %struct.QueueDefinition* %0, i32 0, i32 6
  %32 = load i32, i32* %31, align 4, !tbaa !172
  %33 = icmp ult i32 %30, %32
  %34 = or i1 %19, %33
  br i1 %34, label %35, label %54

35:                                               ; preds = %27
  %36 = getelementptr inbounds %struct.QueueDefinition, %struct.QueueDefinition* %0, i32 0, i32 9
  %37 = load volatile i8, i8* %36, align 1, !tbaa !177
  %38 = load volatile i32, i32* %29, align 4, !tbaa !174
  %39 = tail call fastcc i32 @prvCopyDataToQueue(%struct.QueueDefinition* noundef nonnull %0, i8* noundef %1, i32 noundef %3) #20
  %40 = icmp eq i8 %37, -1
  br i1 %40, label %41, label %52

41:                                               ; preds = %35
  %42 = getelementptr inbounds %struct.QueueDefinition, %struct.QueueDefinition* %0, i32 0, i32 4
  %43 = getelementptr inbounds %struct.xLIST, %struct.xLIST* %42, i32 0, i32 0
  %44 = load volatile i32, i32* %43, align 4, !tbaa !182
  %45 = icmp eq i32 %44, 0
  br i1 %45, label %54, label %46

46:                                               ; preds = %41
  %47 = tail call i32 @xTaskRemoveFromEventList(%struct.xLIST* noundef nonnull %42) #19
  %48 = icmp ne i32 %47, 0
  %49 = icmp ne i32* %2, null
  %50 = and i1 %49, %48
  br i1 %50, label %51, label %54

51:                                               ; preds = %46
  store i32 1, i32* %2, align 4, !tbaa !60
  br label %54

52:                                               ; preds = %35
  %53 = add nuw i8 %37, 1
  store volatile i8 %53, i8* %36, align 1, !tbaa !177
  br label %54

54:                                               ; preds = %27, %52, %41, %51, %46
  %55 = phi i32 [ 1, %46 ], [ 1, %51 ], [ 1, %41 ], [ 1, %52 ], [ 0, %27 ]
  %56 = extractvalue { i32, i32 } %28, 0
  tail call void asm sideeffect "\09msr basepri, $0\09", "r,~{memory}"(i32 %56) #21, !srcloc !197
  ret i32 %55
}

; Function Attrs: noinline nounwind optsize
define dso_local i32 @xQueueGiveFromISR(%struct.QueueDefinition* noundef %0, i32* noundef writeonly %1) local_unnamed_addr #2 {
  %3 = icmp eq %struct.QueueDefinition* %0, null
  br i1 %3, label %4, label %7

4:                                                ; preds = %2
  %5 = tail call i32 asm sideeffect "\09mov $0, $1\09\09\09\09\09\09\09\09\09\09\09\09\0A\09msr basepri, $0\09\09\09\09\09\09\09\09\09\09\09\0A\09isb\09\09\09\09\09\09\09\09\09\09\09\09\09\09\0A\09dsb\09\09\09\09\09\09\09\09\09\09\09\09\09\09\0A", "=r,i,~{memory}"(i32 80) #21, !srcloc !169
  br label %6

6:                                                ; preds = %6, %4
  br label %6

7:                                                ; preds = %2
  %8 = getelementptr inbounds %struct.QueueDefinition, %struct.QueueDefinition* %0, i32 0, i32 7
  %9 = load i32, i32* %8, align 4, !tbaa !173
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %14, label %11

11:                                               ; preds = %7
  %12 = tail call i32 asm sideeffect "\09mov $0, $1\09\09\09\09\09\09\09\09\09\09\09\09\0A\09msr basepri, $0\09\09\09\09\09\09\09\09\09\09\09\0A\09isb\09\09\09\09\09\09\09\09\09\09\09\09\09\09\0A\09dsb\09\09\09\09\09\09\09\09\09\09\09\09\09\09\0A", "=r,i,~{memory}"(i32 80) #21, !srcloc !169
  br label %13

13:                                               ; preds = %13, %11
  br label %13

14:                                               ; preds = %7
  %15 = getelementptr inbounds %struct.QueueDefinition, %struct.QueueDefinition* %0, i32 0, i32 0
  %16 = load i8*, i8** %15, align 4, !tbaa !170
  %17 = icmp eq i8* %16, null
  br i1 %17, label %18, label %26

18:                                               ; preds = %14
  %19 = getelementptr inbounds %struct.QueueDefinition, %struct.QueueDefinition* %0, i32 0, i32 2
  %20 = bitcast %union.anon.9* %19 to %struct.tskTaskControlBlock**
  %21 = load %struct.tskTaskControlBlock*, %struct.tskTaskControlBlock** %20, align 4, !tbaa !45
  %22 = icmp eq %struct.tskTaskControlBlock* %21, null
  br i1 %22, label %26, label %23

23:                                               ; preds = %18
  %24 = tail call i32 asm sideeffect "\09mov $0, $1\09\09\09\09\09\09\09\09\09\09\09\09\0A\09msr basepri, $0\09\09\09\09\09\09\09\09\09\09\09\0A\09isb\09\09\09\09\09\09\09\09\09\09\09\09\09\09\0A\09dsb\09\09\09\09\09\09\09\09\09\09\09\09\09\09\0A", "=r,i,~{memory}"(i32 80) #21, !srcloc !169
  br label %25

25:                                               ; preds = %25, %23
  br label %25

26:                                               ; preds = %14, %18
  tail call void @vPortValidateInterruptPriority() #19
  %27 = tail call { i32, i32 } asm sideeffect "\09mrs $0, basepri\09\09\09\09\09\09\09\09\09\09\09\0A\09mov $1, $2\09\09\09\09\09\09\09\09\09\09\09\09\0A\09msr basepri, $1\09\09\09\09\09\09\09\09\09\09\09\0A\09isb\09\09\09\09\09\09\09\09\09\09\09\09\09\09\0A\09dsb\09\09\09\09\09\09\09\09\09\09\09\09\09\09\0A", "=r,=r,i,~{memory}"(i32 80) #21, !srcloc !196
  %28 = getelementptr inbounds %struct.QueueDefinition, %struct.QueueDefinition* %0, i32 0, i32 5
  %29 = load volatile i32, i32* %28, align 4, !tbaa !174
  %30 = getelementptr inbounds %struct.QueueDefinition, %struct.QueueDefinition* %0, i32 0, i32 6
  %31 = load i32, i32* %30, align 4, !tbaa !172
  %32 = icmp ult i32 %29, %31
  br i1 %32, label %33, label %51

33:                                               ; preds = %26
  %34 = getelementptr inbounds %struct.QueueDefinition, %struct.QueueDefinition* %0, i32 0, i32 9
  %35 = load volatile i8, i8* %34, align 1, !tbaa !177
  %36 = add nuw i32 %29, 1
  store volatile i32 %36, i32* %28, align 4, !tbaa !174
  %37 = icmp eq i8 %35, -1
  br i1 %37, label %38, label %49

38:                                               ; preds = %33
  %39 = getelementptr inbounds %struct.QueueDefinition, %struct.QueueDefinition* %0, i32 0, i32 4
  %40 = getelementptr inbounds %struct.xLIST, %struct.xLIST* %39, i32 0, i32 0
  %41 = load volatile i32, i32* %40, align 4, !tbaa !182
  %42 = icmp eq i32 %41, 0
  br i1 %42, label %51, label %43

43:                                               ; preds = %38
  %44 = tail call i32 @xTaskRemoveFromEventList(%struct.xLIST* noundef nonnull %39) #19
  %45 = icmp ne i32 %44, 0
  %46 = icmp ne i32* %1, null
  %47 = and i1 %46, %45
  br i1 %47, label %48, label %51

48:                                               ; preds = %43
  store i32 1, i32* %1, align 4, !tbaa !60
  br label %51

49:                                               ; preds = %33
  %50 = add nuw i8 %35, 1
  store volatile i8 %50, i8* %34, align 1, !tbaa !177
  br label %51

51:                                               ; preds = %26, %49, %38, %48, %43
  %52 = phi i32 [ 1, %43 ], [ 1, %48 ], [ 1, %38 ], [ 1, %49 ], [ 0, %26 ]
  %53 = extractvalue { i32, i32 } %27, 0
  tail call void asm sideeffect "\09msr basepri, $0\09", "r,~{memory}"(i32 %53) #21, !srcloc !197
  ret i32 %52
}

; Function Attrs: noinline nounwind optsize
define dso_local i32 @xQueueReceive(%struct.QueueDefinition* noundef %0, i8* noundef %1, i32 noundef %2) local_unnamed_addr #2 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.xTIME_OUT, align 4
  store i32 %2, i32* %4, align 4, !tbaa !18
  %6 = bitcast %struct.xTIME_OUT* %5 to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %6) #21
  %7 = icmp eq %struct.QueueDefinition* %0, null
  br i1 %7, label %8, label %11

8:                                                ; preds = %3
  %9 = tail call i32 asm sideeffect "\09mov $0, $1\09\09\09\09\09\09\09\09\09\09\09\09\0A\09msr basepri, $0\09\09\09\09\09\09\09\09\09\09\09\0A\09isb\09\09\09\09\09\09\09\09\09\09\09\09\09\09\0A\09dsb\09\09\09\09\09\09\09\09\09\09\09\09\09\09\0A", "=r,i,~{memory}"(i32 80) #21, !srcloc !169
  br label %10

10:                                               ; preds = %10, %8
  br label %10

11:                                               ; preds = %3
  %12 = icmp eq i8* %1, null
  br i1 %12, label %13, label %20

13:                                               ; preds = %11
  %14 = getelementptr inbounds %struct.QueueDefinition, %struct.QueueDefinition* %0, i32 0, i32 7
  %15 = load i32, i32* %14, align 4, !tbaa !173
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %20, label %17

17:                                               ; preds = %13
  %18 = tail call i32 asm sideeffect "\09mov $0, $1\09\09\09\09\09\09\09\09\09\09\09\09\0A\09msr basepri, $0\09\09\09\09\09\09\09\09\09\09\09\0A\09isb\09\09\09\09\09\09\09\09\09\09\09\09\09\09\0A\09dsb\09\09\09\09\09\09\09\09\09\09\09\09\09\09\0A", "=r,i,~{memory}"(i32 80) #21, !srcloc !169
  br label %19

19:                                               ; preds = %19, %17
  br label %19

20:                                               ; preds = %11, %13
  %21 = tail call i32 @xTaskGetSchedulerState() #19
  %22 = icmp eq i32 %21, 0
  %23 = icmp ne i32 %2, 0
  %24 = and i1 %22, %23
  br i1 %24, label %34, label %25

25:                                               ; preds = %20
  call void @vPortEnterCritical() #19
  %26 = getelementptr inbounds %struct.QueueDefinition, %struct.QueueDefinition* %0, i32 0, i32 5
  %27 = load volatile i32, i32* %26, align 4, !tbaa !174
  %28 = icmp eq i32 %27, 0
  br i1 %28, label %29, label %37

29:                                               ; preds = %25
  %30 = getelementptr inbounds %struct.QueueDefinition, %struct.QueueDefinition* %0, i32 0, i32 8
  %31 = getelementptr inbounds %struct.QueueDefinition, %struct.QueueDefinition* %0, i32 0, i32 9
  %32 = getelementptr inbounds %struct.QueueDefinition, %struct.QueueDefinition* %0, i32 0, i32 4
  %33 = icmp eq i32 %2, 0
  br i1 %33, label %80, label %48

34:                                               ; preds = %20
  %35 = tail call i32 asm sideeffect "\09mov $0, $1\09\09\09\09\09\09\09\09\09\09\09\09\0A\09msr basepri, $0\09\09\09\09\09\09\09\09\09\09\09\0A\09isb\09\09\09\09\09\09\09\09\09\09\09\09\09\09\0A\09dsb\09\09\09\09\09\09\09\09\09\09\09\09\09\09\0A", "=r,i,~{memory}"(i32 80) #21, !srcloc !169
  br label %36

36:                                               ; preds = %36, %34
  br label %36

37:                                               ; preds = %74, %25
  %38 = phi i32 [ %27, %25 ], [ %75, %74 ]
  call fastcc void @prvCopyDataFromQueue(%struct.QueueDefinition* noundef nonnull %0, i8* noundef %1) #20
  %39 = add i32 %38, -1
  store volatile i32 %39, i32* %26, align 4, !tbaa !174
  %40 = getelementptr inbounds %struct.QueueDefinition, %struct.QueueDefinition* %0, i32 0, i32 3
  %41 = getelementptr inbounds %struct.xLIST, %struct.xLIST* %40, i32 0, i32 0
  %42 = load volatile i32, i32* %41, align 4, !tbaa !178
  %43 = icmp eq i32 %42, 0
  br i1 %43, label %80, label %44

44:                                               ; preds = %37
  %45 = call i32 @xTaskRemoveFromEventList(%struct.xLIST* noundef nonnull %40) #19
  %46 = icmp eq i32 %45, 0
  br i1 %46, label %80, label %47

47:                                               ; preds = %44
  store volatile i32 268435456, i32* inttoptr (i32 -536810236 to i32*), align 4, !tbaa !18
  call void asm sideeffect "dsb", "~{memory}"() #21, !srcloc !198
  call void asm sideeffect "isb", ""() #21, !srcloc !199
  br label %80

48:                                               ; preds = %29
  call void @vTaskInternalSetTimeOutState(%struct.xTIME_OUT* noundef nonnull %5) #19
  br label %49

49:                                               ; preds = %77, %48
  call void @vPortExitCritical() #19
  call void @vTaskSuspendAll() #19
  call void @vPortEnterCritical() #19
  %50 = load volatile i8, i8* %30, align 4, !tbaa !176
  %51 = icmp eq i8 %50, -1
  br i1 %51, label %52, label %53

52:                                               ; preds = %49
  store volatile i8 0, i8* %30, align 4, !tbaa !176
  br label %53

53:                                               ; preds = %52, %49
  %54 = load volatile i8, i8* %31, align 1, !tbaa !177
  %55 = icmp eq i8 %54, -1
  br i1 %55, label %56, label %57

56:                                               ; preds = %53
  store volatile i8 0, i8* %31, align 1, !tbaa !177
  br label %57

57:                                               ; preds = %56, %53
  call void @vPortExitCritical() #19
  %58 = call i32 @xTaskCheckForTimeOut(%struct.xTIME_OUT* noundef nonnull %5, i32* noundef nonnull %4) #19
  %59 = icmp eq i32 %58, 0
  br i1 %59, label %60, label %70

60:                                               ; preds = %57
  %61 = call fastcc i32 @prvIsQueueEmpty(%struct.QueueDefinition* noundef nonnull %0) #20
  %62 = icmp eq i32 %61, 0
  br i1 %62, label %68, label %63

63:                                               ; preds = %60
  %64 = load i32, i32* %4, align 4, !tbaa !18
  call void @vTaskPlaceOnEventList(%struct.xLIST* noundef nonnull %32, i32 noundef %64) #19
  call fastcc void @prvUnlockQueue(%struct.QueueDefinition* noundef nonnull %0) #20
  %65 = call i32 @xTaskResumeAll() #19
  %66 = icmp eq i32 %65, 0
  br i1 %66, label %67, label %74

67:                                               ; preds = %63
  store volatile i32 268435456, i32* inttoptr (i32 -536810236 to i32*), align 4, !tbaa !18
  call void asm sideeffect "dsb", "~{memory}"() #21, !srcloc !200
  call void asm sideeffect "isb", ""() #21, !srcloc !201
  br label %74

68:                                               ; preds = %60
  call fastcc void @prvUnlockQueue(%struct.QueueDefinition* noundef nonnull %0) #20
  %69 = call i32 @xTaskResumeAll() #19
  br label %74

70:                                               ; preds = %57
  call fastcc void @prvUnlockQueue(%struct.QueueDefinition* noundef nonnull %0) #20
  %71 = call i32 @xTaskResumeAll() #19
  %72 = call fastcc i32 @prvIsQueueEmpty(%struct.QueueDefinition* noundef nonnull %0) #20
  %73 = icmp eq i32 %72, 0
  br i1 %73, label %74, label %82

74:                                               ; preds = %70, %68, %63, %67
  call void @vPortEnterCritical() #19
  %75 = load volatile i32, i32* %26, align 4, !tbaa !174
  %76 = icmp eq i32 %75, 0
  br i1 %76, label %77, label %37

77:                                               ; preds = %74
  %78 = load i32, i32* %4, align 4, !tbaa !18
  %79 = icmp eq i32 %78, 0
  br i1 %79, label %80, label %49

80:                                               ; preds = %77, %29, %44, %47, %37
  %81 = phi i32 [ 1, %37 ], [ 1, %47 ], [ 1, %44 ], [ 0, %29 ], [ 0, %77 ]
  call void @vPortExitCritical() #19
  br label %82

82:                                               ; preds = %70, %80
  %83 = phi i32 [ %81, %80 ], [ 0, %70 ]
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %6) #21
  ret i32 %83
}

; Function Attrs: noinline nounwind optsize
define internal fastcc void @prvCopyDataFromQueue(%struct.QueueDefinition* nocapture noundef %0, i8* noundef %1) unnamed_addr #2 {
  %3 = getelementptr inbounds %struct.QueueDefinition, %struct.QueueDefinition* %0, i32 0, i32 7
  %4 = load i32, i32* %3, align 4, !tbaa !173
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %19, label %6

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.QueueDefinition, %struct.QueueDefinition* %0, i32 0, i32 2, i32 0, i32 1
  %8 = load i8*, i8** %7, align 4, !tbaa !45
  %9 = getelementptr inbounds i8, i8* %8, i32 %4
  store i8* %9, i8** %7, align 4, !tbaa !45
  %10 = getelementptr inbounds %struct.QueueDefinition, %struct.QueueDefinition* %0, i32 0, i32 2, i32 0, i32 0
  %11 = load i8*, i8** %10, align 4, !tbaa !45
  %12 = icmp ult i8* %9, %11
  br i1 %12, label %16, label %13

13:                                               ; preds = %6
  %14 = getelementptr inbounds %struct.QueueDefinition, %struct.QueueDefinition* %0, i32 0, i32 0
  %15 = load i8*, i8** %14, align 4, !tbaa !170
  store i8* %15, i8** %7, align 4, !tbaa !45
  br label %16

16:                                               ; preds = %6, %13
  %17 = phi i8* [ %9, %6 ], [ %15, %13 ]
  %18 = tail call i8* @memcpy(i8* noundef %1, i8* noundef %17, i32 noundef %4) #19
  br label %19

19:                                               ; preds = %16, %2
  ret void
}

; Function Attrs: noinline nounwind optsize
define dso_local i32 @xQueuePeek(%struct.QueueDefinition* noundef %0, i8* noundef %1, i32 noundef %2) local_unnamed_addr #2 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.xTIME_OUT, align 4
  store i32 %2, i32* %4, align 4, !tbaa !18
  %6 = bitcast %struct.xTIME_OUT* %5 to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %6) #21
  %7 = icmp eq %struct.QueueDefinition* %0, null
  br i1 %7, label %8, label %11

8:                                                ; preds = %3
  %9 = tail call i32 asm sideeffect "\09mov $0, $1\09\09\09\09\09\09\09\09\09\09\09\09\0A\09msr basepri, $0\09\09\09\09\09\09\09\09\09\09\09\0A\09isb\09\09\09\09\09\09\09\09\09\09\09\09\09\09\0A\09dsb\09\09\09\09\09\09\09\09\09\09\09\09\09\09\0A", "=r,i,~{memory}"(i32 80) #21, !srcloc !169
  br label %10

10:                                               ; preds = %10, %8
  br label %10

11:                                               ; preds = %3
  %12 = icmp eq i8* %1, null
  br i1 %12, label %13, label %20

13:                                               ; preds = %11
  %14 = getelementptr inbounds %struct.QueueDefinition, %struct.QueueDefinition* %0, i32 0, i32 7
  %15 = load i32, i32* %14, align 4, !tbaa !173
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %20, label %17

17:                                               ; preds = %13
  %18 = tail call i32 asm sideeffect "\09mov $0, $1\09\09\09\09\09\09\09\09\09\09\09\09\0A\09msr basepri, $0\09\09\09\09\09\09\09\09\09\09\09\0A\09isb\09\09\09\09\09\09\09\09\09\09\09\09\09\09\0A\09dsb\09\09\09\09\09\09\09\09\09\09\09\09\09\09\0A", "=r,i,~{memory}"(i32 80) #21, !srcloc !169
  br label %19

19:                                               ; preds = %19, %17
  br label %19

20:                                               ; preds = %11, %13
  %21 = tail call i32 @xTaskGetSchedulerState() #19
  %22 = icmp eq i32 %21, 0
  %23 = icmp ne i32 %2, 0
  %24 = and i1 %22, %23
  br i1 %24, label %34, label %25

25:                                               ; preds = %20
  call void @vPortEnterCritical() #19
  %26 = getelementptr inbounds %struct.QueueDefinition, %struct.QueueDefinition* %0, i32 0, i32 5
  %27 = load volatile i32, i32* %26, align 4, !tbaa !174
  %28 = icmp eq i32 %27, 0
  br i1 %28, label %29, label %37

29:                                               ; preds = %25
  %30 = getelementptr inbounds %struct.QueueDefinition, %struct.QueueDefinition* %0, i32 0, i32 8
  %31 = getelementptr inbounds %struct.QueueDefinition, %struct.QueueDefinition* %0, i32 0, i32 9
  %32 = getelementptr inbounds %struct.QueueDefinition, %struct.QueueDefinition* %0, i32 0, i32 4
  %33 = icmp eq i32 %2, 0
  br i1 %33, label %80, label %48

34:                                               ; preds = %20
  %35 = tail call i32 asm sideeffect "\09mov $0, $1\09\09\09\09\09\09\09\09\09\09\09\09\0A\09msr basepri, $0\09\09\09\09\09\09\09\09\09\09\09\0A\09isb\09\09\09\09\09\09\09\09\09\09\09\09\09\09\0A\09dsb\09\09\09\09\09\09\09\09\09\09\09\09\09\09\0A", "=r,i,~{memory}"(i32 80) #21, !srcloc !169
  br label %36

36:                                               ; preds = %36, %34
  br label %36

37:                                               ; preds = %74, %25
  %38 = getelementptr inbounds %struct.QueueDefinition, %struct.QueueDefinition* %0, i32 0, i32 2, i32 0, i32 1
  %39 = load i8*, i8** %38, align 4, !tbaa !45
  call fastcc void @prvCopyDataFromQueue(%struct.QueueDefinition* noundef nonnull %0, i8* noundef %1) #20
  store i8* %39, i8** %38, align 4, !tbaa !45
  %40 = getelementptr inbounds %struct.QueueDefinition, %struct.QueueDefinition* %0, i32 0, i32 4
  %41 = getelementptr inbounds %struct.xLIST, %struct.xLIST* %40, i32 0, i32 0
  %42 = load volatile i32, i32* %41, align 4, !tbaa !182
  %43 = icmp eq i32 %42, 0
  br i1 %43, label %80, label %44

44:                                               ; preds = %37
  %45 = call i32 @xTaskRemoveFromEventList(%struct.xLIST* noundef nonnull %40) #19
  %46 = icmp eq i32 %45, 0
  br i1 %46, label %80, label %47

47:                                               ; preds = %44
  store volatile i32 268435456, i32* inttoptr (i32 -536810236 to i32*), align 4, !tbaa !18
  call void asm sideeffect "dsb", "~{memory}"() #21, !srcloc !202
  call void asm sideeffect "isb", ""() #21, !srcloc !203
  br label %80

48:                                               ; preds = %29
  call void @vTaskInternalSetTimeOutState(%struct.xTIME_OUT* noundef nonnull %5) #19
  br label %49

49:                                               ; preds = %77, %48
  call void @vPortExitCritical() #19
  call void @vTaskSuspendAll() #19
  call void @vPortEnterCritical() #19
  %50 = load volatile i8, i8* %30, align 4, !tbaa !176
  %51 = icmp eq i8 %50, -1
  br i1 %51, label %52, label %53

52:                                               ; preds = %49
  store volatile i8 0, i8* %30, align 4, !tbaa !176
  br label %53

53:                                               ; preds = %52, %49
  %54 = load volatile i8, i8* %31, align 1, !tbaa !177
  %55 = icmp eq i8 %54, -1
  br i1 %55, label %56, label %57

56:                                               ; preds = %53
  store volatile i8 0, i8* %31, align 1, !tbaa !177
  br label %57

57:                                               ; preds = %56, %53
  call void @vPortExitCritical() #19
  %58 = call i32 @xTaskCheckForTimeOut(%struct.xTIME_OUT* noundef nonnull %5, i32* noundef nonnull %4) #19
  %59 = icmp eq i32 %58, 0
  br i1 %59, label %60, label %70

60:                                               ; preds = %57
  %61 = call fastcc i32 @prvIsQueueEmpty(%struct.QueueDefinition* noundef nonnull %0) #20
  %62 = icmp eq i32 %61, 0
  br i1 %62, label %68, label %63

63:                                               ; preds = %60
  %64 = load i32, i32* %4, align 4, !tbaa !18
  call void @vTaskPlaceOnEventList(%struct.xLIST* noundef nonnull %32, i32 noundef %64) #19
  call fastcc void @prvUnlockQueue(%struct.QueueDefinition* noundef nonnull %0) #20
  %65 = call i32 @xTaskResumeAll() #19
  %66 = icmp eq i32 %65, 0
  br i1 %66, label %67, label %74

67:                                               ; preds = %63
  store volatile i32 268435456, i32* inttoptr (i32 -536810236 to i32*), align 4, !tbaa !18
  call void asm sideeffect "dsb", "~{memory}"() #21, !srcloc !204
  call void asm sideeffect "isb", ""() #21, !srcloc !205
  br label %74

68:                                               ; preds = %60
  call fastcc void @prvUnlockQueue(%struct.QueueDefinition* noundef nonnull %0) #20
  %69 = call i32 @xTaskResumeAll() #19
  br label %74

70:                                               ; preds = %57
  call fastcc void @prvUnlockQueue(%struct.QueueDefinition* noundef nonnull %0) #20
  %71 = call i32 @xTaskResumeAll() #19
  %72 = call fastcc i32 @prvIsQueueEmpty(%struct.QueueDefinition* noundef nonnull %0) #20
  %73 = icmp eq i32 %72, 0
  br i1 %73, label %74, label %82

74:                                               ; preds = %70, %68, %63, %67
  call void @vPortEnterCritical() #19
  %75 = load volatile i32, i32* %26, align 4, !tbaa !174
  %76 = icmp eq i32 %75, 0
  br i1 %76, label %77, label %37

77:                                               ; preds = %74
  %78 = load i32, i32* %4, align 4, !tbaa !18
  %79 = icmp eq i32 %78, 0
  br i1 %79, label %80, label %49

80:                                               ; preds = %77, %29, %44, %47, %37
  %81 = phi i32 [ 1, %37 ], [ 1, %47 ], [ 1, %44 ], [ 0, %29 ], [ 0, %77 ]
  call void @vPortExitCritical() #19
  br label %82

82:                                               ; preds = %70, %80
  %83 = phi i32 [ %81, %80 ], [ 0, %70 ]
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %6) #21
  ret i32 %83
}

; Function Attrs: noinline nounwind optsize
define dso_local i32 @xQueueReceiveFromISR(%struct.QueueDefinition* noundef %0, i8* noundef %1, i32* noundef writeonly %2) local_unnamed_addr #2 {
  %4 = icmp eq %struct.QueueDefinition* %0, null
  br i1 %4, label %5, label %8

5:                                                ; preds = %3
  %6 = tail call i32 asm sideeffect "\09mov $0, $1\09\09\09\09\09\09\09\09\09\09\09\09\0A\09msr basepri, $0\09\09\09\09\09\09\09\09\09\09\09\0A\09isb\09\09\09\09\09\09\09\09\09\09\09\09\09\09\0A\09dsb\09\09\09\09\09\09\09\09\09\09\09\09\09\09\0A", "=r,i,~{memory}"(i32 80) #21, !srcloc !169
  br label %7

7:                                                ; preds = %7, %5
  br label %7

8:                                                ; preds = %3
  %9 = icmp eq i8* %1, null
  br i1 %9, label %10, label %17

10:                                               ; preds = %8
  %11 = getelementptr inbounds %struct.QueueDefinition, %struct.QueueDefinition* %0, i32 0, i32 7
  %12 = load i32, i32* %11, align 4, !tbaa !173
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %17, label %14

14:                                               ; preds = %10
  %15 = tail call i32 asm sideeffect "\09mov $0, $1\09\09\09\09\09\09\09\09\09\09\09\09\0A\09msr basepri, $0\09\09\09\09\09\09\09\09\09\09\09\0A\09isb\09\09\09\09\09\09\09\09\09\09\09\09\09\09\0A\09dsb\09\09\09\09\09\09\09\09\09\09\09\09\09\09\0A", "=r,i,~{memory}"(i32 80) #21, !srcloc !169
  br label %16

16:                                               ; preds = %16, %14
  br label %16

17:                                               ; preds = %8, %10
  tail call void @vPortValidateInterruptPriority() #19
  %18 = tail call { i32, i32 } asm sideeffect "\09mrs $0, basepri\09\09\09\09\09\09\09\09\09\09\09\0A\09mov $1, $2\09\09\09\09\09\09\09\09\09\09\09\09\0A\09msr basepri, $1\09\09\09\09\09\09\09\09\09\09\09\0A\09isb\09\09\09\09\09\09\09\09\09\09\09\09\09\09\0A\09dsb\09\09\09\09\09\09\09\09\09\09\09\09\09\09\0A", "=r,=r,i,~{memory}"(i32 80) #21, !srcloc !196
  %19 = getelementptr inbounds %struct.QueueDefinition, %struct.QueueDefinition* %0, i32 0, i32 5
  %20 = load volatile i32, i32* %19, align 4, !tbaa !174
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %40, label %22

22:                                               ; preds = %17
  %23 = getelementptr inbounds %struct.QueueDefinition, %struct.QueueDefinition* %0, i32 0, i32 8
  %24 = load volatile i8, i8* %23, align 4, !tbaa !176
  tail call fastcc void @prvCopyDataFromQueue(%struct.QueueDefinition* noundef nonnull %0, i8* noundef %1) #20
  %25 = add i32 %20, -1
  store volatile i32 %25, i32* %19, align 4, !tbaa !174
  %26 = icmp eq i8 %24, -1
  br i1 %26, label %27, label %38

27:                                               ; preds = %22
  %28 = getelementptr inbounds %struct.QueueDefinition, %struct.QueueDefinition* %0, i32 0, i32 3
  %29 = getelementptr inbounds %struct.xLIST, %struct.xLIST* %28, i32 0, i32 0
  %30 = load volatile i32, i32* %29, align 4, !tbaa !178
  %31 = icmp eq i32 %30, 0
  br i1 %31, label %40, label %32

32:                                               ; preds = %27
  %33 = tail call i32 @xTaskRemoveFromEventList(%struct.xLIST* noundef nonnull %28) #19
  %34 = icmp ne i32 %33, 0
  %35 = icmp ne i32* %2, null
  %36 = and i1 %35, %34
  br i1 %36, label %37, label %40

37:                                               ; preds = %32
  store i32 1, i32* %2, align 4, !tbaa !60
  br label %40

38:                                               ; preds = %22
  %39 = add nuw i8 %24, 1
  store volatile i8 %39, i8* %23, align 4, !tbaa !176
  br label %40

40:                                               ; preds = %17, %38, %27, %37, %32
  %41 = phi i32 [ 1, %32 ], [ 1, %37 ], [ 1, %27 ], [ 1, %38 ], [ 0, %17 ]
  %42 = extractvalue { i32, i32 } %18, 0
  tail call void asm sideeffect "\09msr basepri, $0\09", "r,~{memory}"(i32 %42) #21, !srcloc !197
  ret i32 %41
}

; Function Attrs: noinline nounwind optsize
define dso_local i32 @xQueuePeekFromISR(%struct.QueueDefinition* noundef %0, i8* noundef %1) local_unnamed_addr #2 {
  %3 = icmp eq %struct.QueueDefinition* %0, null
  br i1 %3, label %4, label %7

4:                                                ; preds = %2
  %5 = tail call i32 asm sideeffect "\09mov $0, $1\09\09\09\09\09\09\09\09\09\09\09\09\0A\09msr basepri, $0\09\09\09\09\09\09\09\09\09\09\09\0A\09isb\09\09\09\09\09\09\09\09\09\09\09\09\09\09\0A\09dsb\09\09\09\09\09\09\09\09\09\09\09\09\09\09\0A", "=r,i,~{memory}"(i32 80) #21, !srcloc !169
  br label %6

6:                                                ; preds = %6, %4
  br label %6

7:                                                ; preds = %2
  %8 = icmp eq i8* %1, null
  %9 = getelementptr inbounds %struct.QueueDefinition, %struct.QueueDefinition* %0, i32 0, i32 7
  %10 = load i32, i32* %9, align 4, !tbaa !173
  %11 = icmp eq i32 %10, 0
  br i1 %8, label %12, label %16

12:                                               ; preds = %7
  br i1 %11, label %17, label %13

13:                                               ; preds = %12
  %14 = tail call i32 asm sideeffect "\09mov $0, $1\09\09\09\09\09\09\09\09\09\09\09\09\0A\09msr basepri, $0\09\09\09\09\09\09\09\09\09\09\09\0A\09isb\09\09\09\09\09\09\09\09\09\09\09\09\09\09\0A\09dsb\09\09\09\09\09\09\09\09\09\09\09\09\09\09\0A", "=r,i,~{memory}"(i32 80) #21, !srcloc !169
  br label %15

15:                                               ; preds = %15, %13
  br label %15

16:                                               ; preds = %7
  br i1 %11, label %17, label %20

17:                                               ; preds = %12, %16
  %18 = tail call i32 asm sideeffect "\09mov $0, $1\09\09\09\09\09\09\09\09\09\09\09\09\0A\09msr basepri, $0\09\09\09\09\09\09\09\09\09\09\09\0A\09isb\09\09\09\09\09\09\09\09\09\09\09\09\09\09\0A\09dsb\09\09\09\09\09\09\09\09\09\09\09\09\09\09\0A", "=r,i,~{memory}"(i32 80) #21, !srcloc !169
  br label %19

19:                                               ; preds = %19, %17
  br label %19

20:                                               ; preds = %16
  tail call void @vPortValidateInterruptPriority() #19
  %21 = tail call { i32, i32 } asm sideeffect "\09mrs $0, basepri\09\09\09\09\09\09\09\09\09\09\09\0A\09mov $1, $2\09\09\09\09\09\09\09\09\09\09\09\09\0A\09msr basepri, $1\09\09\09\09\09\09\09\09\09\09\09\0A\09isb\09\09\09\09\09\09\09\09\09\09\09\09\09\09\0A\09dsb\09\09\09\09\09\09\09\09\09\09\09\09\09\09\0A", "=r,=r,i,~{memory}"(i32 80) #21, !srcloc !196
  %22 = getelementptr inbounds %struct.QueueDefinition, %struct.QueueDefinition* %0, i32 0, i32 5
  %23 = load volatile i32, i32* %22, align 4, !tbaa !174
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %28, label %25

25:                                               ; preds = %20
  %26 = getelementptr inbounds %struct.QueueDefinition, %struct.QueueDefinition* %0, i32 0, i32 2, i32 0, i32 1
  %27 = load i8*, i8** %26, align 4, !tbaa !45
  tail call fastcc void @prvCopyDataFromQueue(%struct.QueueDefinition* noundef nonnull %0, i8* noundef nonnull %1) #20
  store i8* %27, i8** %26, align 4, !tbaa !45
  br label %28

28:                                               ; preds = %20, %25
  %29 = phi i32 [ 1, %25 ], [ 0, %20 ]
  %30 = extractvalue { i32, i32 } %21, 0
  tail call void asm sideeffect "\09msr basepri, $0\09", "r,~{memory}"(i32 %30) #21, !srcloc !197
  ret i32 %29
}

; Function Attrs: noinline nounwind optsize
define dso_local i32 @uxQueueMessagesWaiting(%struct.QueueDefinition* noundef %0) local_unnamed_addr #2 {
  %2 = icmp eq %struct.QueueDefinition* %0, null
  br i1 %2, label %3, label %6

3:                                                ; preds = %1
  %4 = tail call i32 asm sideeffect "\09mov $0, $1\09\09\09\09\09\09\09\09\09\09\09\09\0A\09msr basepri, $0\09\09\09\09\09\09\09\09\09\09\09\0A\09isb\09\09\09\09\09\09\09\09\09\09\09\09\09\09\0A\09dsb\09\09\09\09\09\09\09\09\09\09\09\09\09\09\0A", "=r,i,~{memory}"(i32 80) #21, !srcloc !169
  br label %5

5:                                                ; preds = %5, %3
  br label %5

6:                                                ; preds = %1
  tail call void @vPortEnterCritical() #19
  %7 = getelementptr inbounds %struct.QueueDefinition, %struct.QueueDefinition* %0, i32 0, i32 5
  %8 = load volatile i32, i32* %7, align 4, !tbaa !174
  tail call void @vPortExitCritical() #19
  ret i32 %8
}

; Function Attrs: noinline nounwind optsize
define dso_local i32 @uxQueueSpacesAvailable(%struct.QueueDefinition* noundef %0) local_unnamed_addr #2 {
  %2 = icmp eq %struct.QueueDefinition* %0, null
  br i1 %2, label %3, label %6

3:                                                ; preds = %1
  %4 = tail call i32 asm sideeffect "\09mov $0, $1\09\09\09\09\09\09\09\09\09\09\09\09\0A\09msr basepri, $0\09\09\09\09\09\09\09\09\09\09\09\0A\09isb\09\09\09\09\09\09\09\09\09\09\09\09\09\09\0A\09dsb\09\09\09\09\09\09\09\09\09\09\09\09\09\09\0A", "=r,i,~{memory}"(i32 80) #21, !srcloc !169
  br label %5

5:                                                ; preds = %5, %3
  br label %5

6:                                                ; preds = %1
  tail call void @vPortEnterCritical() #19
  %7 = getelementptr inbounds %struct.QueueDefinition, %struct.QueueDefinition* %0, i32 0, i32 6
  %8 = load i32, i32* %7, align 4, !tbaa !172
  %9 = getelementptr inbounds %struct.QueueDefinition, %struct.QueueDefinition* %0, i32 0, i32 5
  %10 = load volatile i32, i32* %9, align 4, !tbaa !174
  %11 = sub i32 %8, %10
  tail call void @vPortExitCritical() #19
  ret i32 %11
}

; Function Attrs: noinline nounwind optsize
define dso_local i32 @uxQueueMessagesWaitingFromISR(%struct.QueueDefinition* noundef %0) local_unnamed_addr #2 {
  %2 = icmp eq %struct.QueueDefinition* %0, null
  br i1 %2, label %3, label %6

3:                                                ; preds = %1
  %4 = tail call i32 asm sideeffect "\09mov $0, $1\09\09\09\09\09\09\09\09\09\09\09\09\0A\09msr basepri, $0\09\09\09\09\09\09\09\09\09\09\09\0A\09isb\09\09\09\09\09\09\09\09\09\09\09\09\09\09\0A\09dsb\09\09\09\09\09\09\09\09\09\09\09\09\09\09\0A", "=r,i,~{memory}"(i32 80) #21, !srcloc !169
  br label %5

5:                                                ; preds = %5, %3
  br label %5

6:                                                ; preds = %1
  %7 = getelementptr inbounds %struct.QueueDefinition, %struct.QueueDefinition* %0, i32 0, i32 5
  %8 = load volatile i32, i32* %7, align 4, !tbaa !174
  ret i32 %8
}

; Function Attrs: noinline nounwind optsize
define dso_local void @vQueueDelete(%struct.QueueDefinition* noundef %0) local_unnamed_addr #2 {
  %2 = icmp eq %struct.QueueDefinition* %0, null
  br i1 %2, label %3, label %6

3:                                                ; preds = %1
  %4 = tail call i32 asm sideeffect "\09mov $0, $1\09\09\09\09\09\09\09\09\09\09\09\09\0A\09msr basepri, $0\09\09\09\09\09\09\09\09\09\09\09\0A\09isb\09\09\09\09\09\09\09\09\09\09\09\09\09\09\0A\09dsb\09\09\09\09\09\09\09\09\09\09\09\09\09\09\0A", "=r,i,~{memory}"(i32 80) #21, !srcloc !169
  br label %5

5:                                                ; preds = %5, %3
  br label %5

6:                                                ; preds = %1
  tail call void @vQueueUnregisterQueue(%struct.QueueDefinition* noundef nonnull %0) #20
  %7 = bitcast %struct.QueueDefinition* %0 to i8*
  tail call void @vPortFree(i8* noundef nonnull %7) #19
  ret void
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize
define dso_local void @vQueueUnregisterQueue(%struct.QueueDefinition* noundef readnone %0) local_unnamed_addr #13 {
  br label %2

2:                                                ; preds = %1, %9
  %3 = phi i32 [ 0, %1 ], [ %10, %9 ]
  %4 = getelementptr inbounds [8 x %struct.QUEUE_REGISTRY_ITEM], [8 x %struct.QUEUE_REGISTRY_ITEM]* @xQueueRegistry, i32 0, i32 %3, i32 1
  %5 = load %struct.QueueDefinition*, %struct.QueueDefinition** %4, align 4, !tbaa !206
  %6 = icmp eq %struct.QueueDefinition* %5, %0
  br i1 %6, label %7, label %9

7:                                                ; preds = %2
  %8 = getelementptr inbounds [8 x %struct.QUEUE_REGISTRY_ITEM], [8 x %struct.QUEUE_REGISTRY_ITEM]* @xQueueRegistry, i32 0, i32 %3, i32 0
  store i8* null, i8** %8, align 4, !tbaa !208
  store %struct.QueueDefinition* null, %struct.QueueDefinition** %4, align 4, !tbaa !206
  br label %12

9:                                                ; preds = %2
  %10 = add nuw nsw i32 %3, 1
  %11 = icmp eq i32 %10, 8
  br i1 %11, label %12, label %2, !llvm.loop !209

12:                                               ; preds = %9, %7
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize readonly willreturn
define dso_local i32 @uxQueueGetQueueNumber(%struct.QueueDefinition* nocapture noundef readonly %0) local_unnamed_addr #9 {
  %2 = getelementptr inbounds %struct.QueueDefinition, %struct.QueueDefinition* %0, i32 0, i32 10
  %3 = load i32, i32* %2, align 4, !tbaa !210
  ret i32 %3
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn writeonly
define dso_local void @vQueueSetQueueNumber(%struct.QueueDefinition* nocapture noundef writeonly %0, i32 noundef %1) local_unnamed_addr #10 {
  %3 = getelementptr inbounds %struct.QueueDefinition, %struct.QueueDefinition* %0, i32 0, i32 10
  store i32 %1, i32* %3, align 4, !tbaa !210
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize readonly willreturn
define dso_local zeroext i8 @ucQueueGetQueueType(%struct.QueueDefinition* nocapture noundef readonly %0) local_unnamed_addr #9 {
  %2 = getelementptr inbounds %struct.QueueDefinition, %struct.QueueDefinition* %0, i32 0, i32 11
  %3 = load i8, i8* %2, align 4, !tbaa !181
  ret i8 %3
}

; Function Attrs: noinline nounwind optsize
define dso_local i32 @xQueueIsQueueEmptyFromISR(%struct.QueueDefinition* noundef %0) local_unnamed_addr #2 {
  %2 = icmp eq %struct.QueueDefinition* %0, null
  br i1 %2, label %3, label %6

3:                                                ; preds = %1
  %4 = tail call i32 asm sideeffect "\09mov $0, $1\09\09\09\09\09\09\09\09\09\09\09\09\0A\09msr basepri, $0\09\09\09\09\09\09\09\09\09\09\09\0A\09isb\09\09\09\09\09\09\09\09\09\09\09\09\09\09\0A\09dsb\09\09\09\09\09\09\09\09\09\09\09\09\09\09\0A", "=r,i,~{memory}"(i32 80) #21, !srcloc !169
  br label %5

5:                                                ; preds = %5, %3
  br label %5

6:                                                ; preds = %1
  %7 = getelementptr inbounds %struct.QueueDefinition, %struct.QueueDefinition* %0, i32 0, i32 5
  %8 = load volatile i32, i32* %7, align 4, !tbaa !174
  %9 = icmp eq i32 %8, 0
  %10 = zext i1 %9 to i32
  ret i32 %10
}

; Function Attrs: noinline nounwind optsize
define dso_local i32 @xQueueIsQueueFullFromISR(%struct.QueueDefinition* noundef %0) local_unnamed_addr #2 {
  %2 = icmp eq %struct.QueueDefinition* %0, null
  br i1 %2, label %3, label %6

3:                                                ; preds = %1
  %4 = tail call i32 asm sideeffect "\09mov $0, $1\09\09\09\09\09\09\09\09\09\09\09\09\0A\09msr basepri, $0\09\09\09\09\09\09\09\09\09\09\09\0A\09isb\09\09\09\09\09\09\09\09\09\09\09\09\09\09\0A\09dsb\09\09\09\09\09\09\09\09\09\09\09\09\09\09\0A", "=r,i,~{memory}"(i32 80) #21, !srcloc !169
  br label %5

5:                                                ; preds = %5, %3
  br label %5

6:                                                ; preds = %1
  %7 = getelementptr inbounds %struct.QueueDefinition, %struct.QueueDefinition* %0, i32 0, i32 5
  %8 = load volatile i32, i32* %7, align 4, !tbaa !174
  %9 = getelementptr inbounds %struct.QueueDefinition, %struct.QueueDefinition* %0, i32 0, i32 6
  %10 = load i32, i32* %9, align 4, !tbaa !172
  %11 = icmp eq i32 %8, %10
  %12 = zext i1 %11 to i32
  ret i32 %12
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize
define dso_local void @vQueueAddToRegistry(%struct.QueueDefinition* noundef %0, i8* noundef %1) local_unnamed_addr #13 {
  br label %3

3:                                                ; preds = %2, %10
  %4 = phi i32 [ 0, %2 ], [ %11, %10 ]
  %5 = getelementptr inbounds [8 x %struct.QUEUE_REGISTRY_ITEM], [8 x %struct.QUEUE_REGISTRY_ITEM]* @xQueueRegistry, i32 0, i32 %4, i32 0
  %6 = load i8*, i8** %5, align 4, !tbaa !208
  %7 = icmp eq i8* %6, null
  br i1 %7, label %8, label %10

8:                                                ; preds = %3
  store i8* %1, i8** %5, align 4, !tbaa !208
  %9 = getelementptr inbounds [8 x %struct.QUEUE_REGISTRY_ITEM], [8 x %struct.QUEUE_REGISTRY_ITEM]* @xQueueRegistry, i32 0, i32 %4, i32 1
  store %struct.QueueDefinition* %0, %struct.QueueDefinition** %9, align 4, !tbaa !206
  br label %13

10:                                               ; preds = %3
  %11 = add nuw nsw i32 %4, 1
  %12 = icmp eq i32 %11, 8
  br i1 %12, label %13, label %3, !llvm.loop !211

13:                                               ; preds = %10, %8
  ret void
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize readonly
define dso_local i8* @pcQueueGetName(%struct.QueueDefinition* noundef readnone %0) local_unnamed_addr #8 {
  br label %2

2:                                                ; preds = %1, %10
  %3 = phi i32 [ 0, %1 ], [ %11, %10 ]
  %4 = getelementptr inbounds [8 x %struct.QUEUE_REGISTRY_ITEM], [8 x %struct.QUEUE_REGISTRY_ITEM]* @xQueueRegistry, i32 0, i32 %3, i32 1
  %5 = load %struct.QueueDefinition*, %struct.QueueDefinition** %4, align 4, !tbaa !206
  %6 = icmp eq %struct.QueueDefinition* %5, %0
  br i1 %6, label %7, label %10

7:                                                ; preds = %2
  %8 = getelementptr inbounds [8 x %struct.QUEUE_REGISTRY_ITEM], [8 x %struct.QUEUE_REGISTRY_ITEM]* @xQueueRegistry, i32 0, i32 %3, i32 0
  %9 = load i8*, i8** %8, align 4, !tbaa !208
  br label %13

10:                                               ; preds = %2
  %11 = add nuw nsw i32 %3, 1
  %12 = icmp eq i32 %11, 8
  br i1 %12, label %13, label %2, !llvm.loop !212

13:                                               ; preds = %10, %7
  %14 = phi i8* [ %9, %7 ], [ null, %10 ]
  ret i8* %14
}

; Function Attrs: noinline nounwind optsize
define dso_local void @vQueueWaitForMessageRestricted(%struct.QueueDefinition* noundef %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #2 {
  tail call void @vPortEnterCritical() #19
  %4 = getelementptr inbounds %struct.QueueDefinition, %struct.QueueDefinition* %0, i32 0, i32 8
  %5 = load volatile i8, i8* %4, align 4, !tbaa !176
  %6 = icmp eq i8 %5, -1
  br i1 %6, label %7, label %8

7:                                                ; preds = %3
  store volatile i8 0, i8* %4, align 4, !tbaa !176
  br label %8

8:                                                ; preds = %7, %3
  %9 = getelementptr inbounds %struct.QueueDefinition, %struct.QueueDefinition* %0, i32 0, i32 9
  %10 = load volatile i8, i8* %9, align 1, !tbaa !177
  %11 = icmp eq i8 %10, -1
  br i1 %11, label %12, label %13

12:                                               ; preds = %8
  store volatile i8 0, i8* %9, align 1, !tbaa !177
  br label %13

13:                                               ; preds = %12, %8
  tail call void @vPortExitCritical() #19
  %14 = getelementptr inbounds %struct.QueueDefinition, %struct.QueueDefinition* %0, i32 0, i32 5
  %15 = load volatile i32, i32* %14, align 4, !tbaa !174
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %17, label %19

17:                                               ; preds = %13
  %18 = getelementptr inbounds %struct.QueueDefinition, %struct.QueueDefinition* %0, i32 0, i32 4
  tail call void @vTaskPlaceOnEventListRestricted(%struct.xLIST* noundef nonnull %18, i32 noundef %1, i32 noundef %2) #19
  br label %19

19:                                               ; preds = %13, %17
  tail call fastcc void @prvUnlockQueue(%struct.QueueDefinition* noundef nonnull %0) #20
  ret void
}

; Function Attrs: noinline nounwind optsize
define dso_local i32 @HAL_Init() local_unnamed_addr #2 {
  %1 = load volatile i32, i32* inttoptr (i32 1073888256 to i32*), align 1024, !tbaa !213
  %2 = or i32 %1, 512
  store volatile i32 %2, i32* inttoptr (i32 1073888256 to i32*), align 1024, !tbaa !213
  %3 = load volatile i32, i32* inttoptr (i32 1073888256 to i32*), align 1024, !tbaa !213
  %4 = or i32 %3, 1024
  store volatile i32 %4, i32* inttoptr (i32 1073888256 to i32*), align 1024, !tbaa !213
  %5 = load volatile i32, i32* inttoptr (i32 1073888256 to i32*), align 1024, !tbaa !213
  %6 = or i32 %5, 256
  store volatile i32 %6, i32* inttoptr (i32 1073888256 to i32*), align 1024, !tbaa !213
  tail call void @HAL_NVIC_SetPriorityGrouping(i32 noundef 3) #19
  %7 = tail call i32 @HAL_InitTick(i32 noundef 0) #20
  tail call void @HAL_MspInit() #20
  ret i32 0
}

; Function Attrs: noinline nounwind optsize
define weak dso_local i32 @HAL_InitTick(i32 noundef %0) local_unnamed_addr #2 {
  %2 = load i32, i32* @SystemCoreClock, align 4, !tbaa !18
  %3 = load i32, i32* @uwTickFreq, align 4, !tbaa !45
  %4 = udiv i32 1000, %3
  %5 = udiv i32 %2, %4
  %6 = tail call i32 @HAL_SYSTICK_Config(i32 noundef %5) #19
  %7 = icmp eq i32 %6, 0
  %8 = icmp ult i32 %0, 16
  %9 = and i1 %8, %7
  br i1 %9, label %10, label %11

10:                                               ; preds = %1
  tail call void @HAL_NVIC_SetPriority(i32 noundef -1, i32 noundef %0, i32 noundef 0) #19
  store i32 %0, i32* @uwTickPrio, align 4, !tbaa !18
  br label %11

11:                                               ; preds = %1, %10
  %12 = phi i32 [ 0, %10 ], [ 1, %1 ]
  ret i32 %12
}

; Function Attrs: noinline nounwind optsize
define weak dso_local void @HAL_MspInit() local_unnamed_addr #2 {
  ret void
}

; Function Attrs: noinline nounwind optsize
define dso_local i32 @HAL_DeInit() local_unnamed_addr #2 {
  store volatile i32 -1, i32* inttoptr (i32 1073887264 to i32*), align 32, !tbaa !215
  store volatile i32 0, i32* inttoptr (i32 1073887264 to i32*), align 32, !tbaa !215
  store volatile i32 -1, i32* inttoptr (i32 1073887268 to i32*), align 4, !tbaa !216
  store volatile i32 0, i32* inttoptr (i32 1073887268 to i32*), align 4, !tbaa !216
  store volatile i32 -1, i32* inttoptr (i32 1073887248 to i32*), align 16, !tbaa !217
  store volatile i32 0, i32* inttoptr (i32 1073887248 to i32*), align 16, !tbaa !217
  store volatile i32 -1, i32* inttoptr (i32 1073887252 to i32*), align 4, !tbaa !218
  store volatile i32 0, i32* inttoptr (i32 1073887252 to i32*), align 4, !tbaa !218
  store volatile i32 -1, i32* inttoptr (i32 1073887256 to i32*), align 8, !tbaa !219
  store volatile i32 0, i32* inttoptr (i32 1073887256 to i32*), align 8, !tbaa !219
  tail call void @HAL_MspDeInit() #20
  ret i32 0
}

; Function Attrs: noinline nounwind optsize
define weak dso_local void @HAL_MspDeInit() local_unnamed_addr #2 {
  ret void
}

; Function Attrs: noinline nounwind optsize
define weak dso_local void @HAL_IncTick() local_unnamed_addr #2 {
  %1 = load i32, i32* @uwTickFreq, align 4, !tbaa !45
  %2 = load volatile i32, i32* @uwTick, align 4, !tbaa !18
  %3 = add i32 %2, %1
  store volatile i32 %3, i32* @uwTick, align 4, !tbaa !18
  ret void
}

; Function Attrs: noinline nounwind optsize
define weak dso_local i32 @HAL_GetTick() local_unnamed_addr #2 {
  %1 = load volatile i32, i32* @uwTick, align 4, !tbaa !18
  ret i32 %1
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize readonly willreturn
define dso_local i32 @HAL_GetTickPrio() local_unnamed_addr #9 {
  %1 = load i32, i32* @uwTickPrio, align 4, !tbaa !18
  ret i32 %1
}

; Function Attrs: noinline nounwind optsize
define dso_local i32 @HAL_SetTickFreq(i32 noundef %0) local_unnamed_addr #2 {
  %2 = load i32, i32* @uwTickFreq, align 4, !tbaa !45
  %3 = icmp eq i32 %2, %0
  br i1 %3, label %9, label %4

4:                                                ; preds = %1
  store i32 %0, i32* @uwTickFreq, align 4, !tbaa !45
  %5 = load i32, i32* @uwTickPrio, align 4, !tbaa !18
  %6 = tail call i32 @HAL_InitTick(i32 noundef %5) #20
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %9, label %8

8:                                                ; preds = %4
  store i32 %2, i32* @uwTickFreq, align 4, !tbaa !45
  br label %9

9:                                                ; preds = %4, %8, %1
  %10 = phi i32 [ %6, %8 ], [ 0, %4 ], [ 0, %1 ]
  ret i32 %10
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize readonly willreturn
define dso_local i32 @HAL_GetTickFreq() local_unnamed_addr #9 {
  %1 = load i32, i32* @uwTickFreq, align 4, !tbaa !45
  ret i32 %1
}

; Function Attrs: noinline nounwind optsize
define weak dso_local void @HAL_Delay(i32 noundef %0) local_unnamed_addr #2 {
  %2 = tail call i32 @HAL_GetTick() #20
  %3 = icmp eq i32 %0, -1
  %4 = load i32, i32* @uwTickFreq, align 4
  %5 = add i32 %4, %0
  %6 = select i1 %3, i32 -1, i32 %5
  br label %7

7:                                                ; preds = %7, %1
  %8 = tail call i32 @HAL_GetTick() #20
  %9 = sub i32 %8, %2
  %10 = icmp ult i32 %9, %6
  br i1 %10, label %7, label %11, !llvm.loop !220

11:                                               ; preds = %7
  ret void
}

; Function Attrs: noinline nounwind optsize
define weak dso_local void @HAL_SuspendTick() local_unnamed_addr #2 {
  %1 = load volatile i32, i32* inttoptr (i32 -536813552 to i32*), align 16, !tbaa !221
  %2 = and i32 %1, -3
  store volatile i32 %2, i32* inttoptr (i32 -536813552 to i32*), align 16, !tbaa !221
  ret void
}

; Function Attrs: noinline nounwind optsize
define weak dso_local void @HAL_ResumeTick() local_unnamed_addr #2 {
  %1 = load volatile i32, i32* inttoptr (i32 -536813552 to i32*), align 16, !tbaa !221
  %2 = or i32 %1, 2
  store volatile i32 %2, i32* inttoptr (i32 -536813552 to i32*), align 16, !tbaa !221
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize readnone willreturn
define dso_local i32 @HAL_GetHalVersion() local_unnamed_addr #5 {
  ret i32 17237760
}

; Function Attrs: mustprogress nofree noinline norecurse nounwind optsize willreturn
define dso_local i32 @HAL_GetREVID() local_unnamed_addr #7 {
  %1 = load volatile i32, i32* inttoptr (i32 -536600576 to i32*), align 8192, !tbaa !221
  %2 = lshr i32 %1, 16
  ret i32 %2
}

; Function Attrs: mustprogress nofree noinline norecurse nounwind optsize willreturn
define dso_local i32 @HAL_GetDEVID() local_unnamed_addr #7 {
  %1 = load volatile i32, i32* inttoptr (i32 -536600576 to i32*), align 8192, !tbaa !221
  %2 = and i32 %1, 4095
  ret i32 %2
}

; Function Attrs: nofree noinline norecurse nounwind optsize
define dso_local void @HAL_DBGMCU_EnableDBGSleepMode() local_unnamed_addr #6 {
  %1 = load volatile i32, i32* inttoptr (i32 -536600572 to i32*), align 4, !tbaa !223
  %2 = or i32 %1, 1
  store volatile i32 %2, i32* inttoptr (i32 -536600572 to i32*), align 4, !tbaa !223
  ret void
}

; Function Attrs: nofree noinline norecurse nounwind optsize
define dso_local void @HAL_DBGMCU_DisableDBGSleepMode() local_unnamed_addr #6 {
  %1 = load volatile i32, i32* inttoptr (i32 -536600572 to i32*), align 4, !tbaa !223
  %2 = and i32 %1, -2
  store volatile i32 %2, i32* inttoptr (i32 -536600572 to i32*), align 4, !tbaa !223
  ret void
}

; Function Attrs: nofree noinline norecurse nounwind optsize
define dso_local void @HAL_DBGMCU_EnableDBGStopMode() local_unnamed_addr #6 {
  %1 = load volatile i32, i32* inttoptr (i32 -536600572 to i32*), align 4, !tbaa !223
  %2 = or i32 %1, 2
  store volatile i32 %2, i32* inttoptr (i32 -536600572 to i32*), align 4, !tbaa !223
  ret void
}

; Function Attrs: nofree noinline norecurse nounwind optsize
define dso_local void @HAL_DBGMCU_DisableDBGStopMode() local_unnamed_addr #6 {
  %1 = load volatile i32, i32* inttoptr (i32 -536600572 to i32*), align 4, !tbaa !223
  %2 = and i32 %1, -3
  store volatile i32 %2, i32* inttoptr (i32 -536600572 to i32*), align 4, !tbaa !223
  ret void
}

; Function Attrs: nofree noinline norecurse nounwind optsize
define dso_local void @HAL_DBGMCU_EnableDBGStandbyMode() local_unnamed_addr #6 {
  %1 = load volatile i32, i32* inttoptr (i32 -536600572 to i32*), align 4, !tbaa !223
  %2 = or i32 %1, 4
  store volatile i32 %2, i32* inttoptr (i32 -536600572 to i32*), align 4, !tbaa !223
  ret void
}

; Function Attrs: nofree noinline norecurse nounwind optsize
define dso_local void @HAL_DBGMCU_DisableDBGStandbyMode() local_unnamed_addr #6 {
  %1 = load volatile i32, i32* inttoptr (i32 -536600572 to i32*), align 4, !tbaa !223
  %2 = and i32 %1, -5
  store volatile i32 %2, i32* inttoptr (i32 -536600572 to i32*), align 4, !tbaa !223
  ret void
}

; Function Attrs: nofree noinline norecurse nounwind optsize
define dso_local void @HAL_EnableCompensationCell() local_unnamed_addr #6 {
  store volatile i32 1, i32* inttoptr (i32 1109853184 to i32*), align 1024, !tbaa !18
  ret void
}

; Function Attrs: nofree noinline norecurse nounwind optsize
define dso_local void @HAL_DisableCompensationCell() local_unnamed_addr #6 {
  store volatile i32 0, i32* inttoptr (i32 1109853184 to i32*), align 1024, !tbaa !18
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize readonly willreturn
define dso_local i32 @HAL_GetUIDw0() local_unnamed_addr #9 {
  %1 = load i32, i32* inttoptr (i32 536836624 to i32*), align 16, !tbaa !18
  ret i32 %1
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize readonly willreturn
define dso_local i32 @HAL_GetUIDw1() local_unnamed_addr #9 {
  %1 = load i32, i32* inttoptr (i32 536836628 to i32*), align 4, !tbaa !18
  ret i32 %1
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize readonly willreturn
define dso_local i32 @HAL_GetUIDw2() local_unnamed_addr #9 {
  %1 = load i32, i32* inttoptr (i32 536836632 to i32*), align 8, !tbaa !18
  ret i32 %1
}

; Function Attrs: nofree noinline norecurse nounwind optsize
define dso_local void @HAL_EnableMemorySwappingBank() local_unnamed_addr #6 {
  store volatile i32 1, i32* inttoptr (i32 1109852192 to i32*), align 32, !tbaa !18
  ret void
}

; Function Attrs: nofree noinline norecurse nounwind optsize
define dso_local void @HAL_DisableMemorySwappingBank() local_unnamed_addr #6 {
  store volatile i32 0, i32* inttoptr (i32 1109852192 to i32*), align 32, !tbaa !18
  ret void
}

; Function Attrs: nofree noinline norecurse nounwind optsize
define dso_local void @HAL_NVIC_SetPriorityGrouping(i32 noundef %0) local_unnamed_addr #6 {
  tail call fastcc void @__NVIC_SetPriorityGrouping(i32 noundef %0) #20
  ret void
}

; Function Attrs: nofree noinline norecurse nounwind optsize
define internal fastcc void @__NVIC_SetPriorityGrouping(i32 noundef %0) unnamed_addr #6 {
  %2 = load volatile i32, i32* inttoptr (i32 -536810228 to i32*), align 4, !tbaa !224
  %3 = and i32 %2, 63743
  %4 = shl i32 %0, 8
  %5 = and i32 %4, 1792
  %6 = or i32 %5, %3
  %7 = or i32 %6, 100270080
  store volatile i32 %7, i32* inttoptr (i32 -536810228 to i32*), align 4, !tbaa !224
  ret void
}

; Function Attrs: nofree noinline nounwind optsize
define dso_local void @HAL_NVIC_SetPriority(i32 noundef %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #14 {
  %4 = tail call fastcc i32 @__NVIC_GetPriorityGrouping() #20, !range !225
  %5 = tail call fastcc i32 @NVIC_EncodePriority(i32 noundef %4, i32 noundef %1, i32 noundef %2) #20
  tail call fastcc void @__NVIC_SetPriority(i32 noundef %0, i32 noundef %5) #20
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nounwind optsize willreturn
define internal fastcc i32 @__NVIC_GetPriorityGrouping() unnamed_addr #7 {
  %1 = load volatile i32, i32* inttoptr (i32 -536810228 to i32*), align 4, !tbaa !224
  %2 = lshr i32 %1, 8
  %3 = and i32 %2, 7
  ret i32 %3
}

; Function Attrs: mustprogress nofree noinline nosync nounwind optsize readnone willreturn
define internal fastcc i32 @NVIC_EncodePriority(i32 noundef %0, i32 noundef %1, i32 noundef %2) unnamed_addr #15 {
  %4 = and i32 %0, 7
  %5 = xor i32 %4, 7
  %6 = icmp ult i32 %5, 4
  %7 = select i1 %6, i32 %5, i32 4
  %8 = tail call i32 @llvm.usub.sat.i32(i32 %4, i32 3)
  %9 = shl nsw i32 -1, %7
  %10 = xor i32 %9, -1
  %11 = and i32 %10, %1
  %12 = shl i32 %11, %8
  %13 = shl nsw i32 -1, %8
  %14 = xor i32 %13, -1
  %15 = and i32 %14, %2
  %16 = or i32 %12, %15
  ret i32 %16
}

; Function Attrs: nofree noinline norecurse nounwind optsize
define internal fastcc void @__NVIC_SetPriority(i32 noundef %0, i32 noundef %1) unnamed_addr #6 {
  %3 = trunc i32 %1 to i8
  %4 = shl i8 %3, 4
  %5 = and i32 %0, 15
  %6 = add nsw i32 %5, -4
  %7 = getelementptr inbounds [12 x i8], [12 x i8]* inttoptr (i32 -536810216 to [12 x i8]*), i32 0, i32 %6
  %8 = getelementptr inbounds [240 x i8], [240 x i8]* inttoptr (i32 -536812544 to [240 x i8]*), i32 0, i32 %0
  %9 = icmp slt i32 %0, 0
  %10 = select i1 %9, i8* %7, i8* %8
  store volatile i8 %4, i8* %10, align 1, !tbaa !45
  ret void
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.usub.sat.i32(i32, i32) #16

; Function Attrs: noinline nounwind optsize
define dso_local void @HAL_NVIC_EnableIRQ(i32 noundef %0) local_unnamed_addr #2 {
  tail call fastcc void @__NVIC_EnableIRQ(i32 noundef %0) #20
  ret void
}

; Function Attrs: noinline nounwind optsize
define internal fastcc void @__NVIC_EnableIRQ(i32 noundef %0) unnamed_addr #2 {
  %2 = icmp sgt i32 %0, -1
  br i1 %2, label %3, label %8

3:                                                ; preds = %1
  tail call void asm sideeffect "", "~{memory}"() #21, !srcloc !226
  %4 = and i32 %0, 31
  %5 = shl nuw i32 1, %4
  %6 = lshr i32 %0, 5
  %7 = getelementptr inbounds [8 x i32], [8 x i32]* inttoptr (i32 -536813312 to [8 x i32]*), i32 0, i32 %6
  store volatile i32 %5, i32* %7, align 4, !tbaa !18
  tail call void asm sideeffect "", "~{memory}"() #21, !srcloc !227
  br label %8

8:                                                ; preds = %3, %1
  ret void
}

; Function Attrs: noinline nounwind optsize
define dso_local void @HAL_NVIC_DisableIRQ(i32 noundef %0) local_unnamed_addr #2 {
  tail call fastcc void @__NVIC_DisableIRQ(i32 noundef %0) #20
  ret void
}

; Function Attrs: noinline nounwind optsize
define internal fastcc void @__NVIC_DisableIRQ(i32 noundef %0) unnamed_addr #2 {
  %2 = icmp sgt i32 %0, -1
  br i1 %2, label %3, label %8

3:                                                ; preds = %1
  %4 = and i32 %0, 31
  %5 = shl nuw i32 1, %4
  %6 = lshr i32 %0, 5
  %7 = getelementptr inbounds [8 x i32], [8 x i32]* inttoptr (i32 -536813184 to [8 x i32]*), i32 0, i32 %6
  store volatile i32 %5, i32* %7, align 4, !tbaa !18
  tail call void asm sideeffect "dsb 0xF", "~{memory}"() #21, !srcloc !228
  tail call void asm sideeffect "isb 0xF", "~{memory}"() #21, !srcloc !229
  br label %8

8:                                                ; preds = %3, %1
  ret void
}

; Function Attrs: noinline noreturn nounwind optsize
define dso_local void @HAL_NVIC_SystemReset() local_unnamed_addr #0 {
  tail call fastcc void @__NVIC_SystemReset() #22
  unreachable
}

; Function Attrs: noinline noreturn nounwind optsize
define internal fastcc void @__NVIC_SystemReset() unnamed_addr #0 {
  tail call void asm sideeffect "dsb 0xF", "~{memory}"() #21, !srcloc !228
  %1 = load volatile i32, i32* inttoptr (i32 -536810228 to i32*), align 4, !tbaa !224
  %2 = and i32 %1, 1792
  %3 = or i32 %2, 100270084
  store volatile i32 %3, i32* inttoptr (i32 -536810228 to i32*), align 4, !tbaa !224
  tail call void asm sideeffect "dsb 0xF", "~{memory}"() #21, !srcloc !228
  br label %4

4:                                                ; preds = %4, %0
  tail call void asm sideeffect "nop", ""() #21, !srcloc !230
  br label %4
}

; Function Attrs: nofree noinline norecurse nounwind optsize
define dso_local i32 @HAL_SYSTICK_Config(i32 noundef %0) local_unnamed_addr #6 {
  %2 = tail call fastcc i32 @SysTick_Config(i32 noundef %0) #20
  ret i32 %2
}

; Function Attrs: nofree noinline norecurse nounwind optsize
define internal fastcc i32 @SysTick_Config(i32 noundef %0) unnamed_addr #6 {
  %2 = add i32 %0, -1
  %3 = icmp ugt i32 %2, 16777215
  br i1 %3, label %5, label %4

4:                                                ; preds = %1
  store volatile i32 %2, i32* inttoptr (i32 -536813548 to i32*), align 4, !tbaa !223
  tail call fastcc void @__NVIC_SetPriority(i32 noundef -1, i32 noundef 15) #20
  store volatile i32 0, i32* inttoptr (i32 -536813544 to i32*), align 8, !tbaa !231
  store volatile i32 7, i32* inttoptr (i32 -536813552 to i32*), align 16, !tbaa !221
  br label %5

5:                                                ; preds = %1, %4
  %6 = phi i32 [ 0, %4 ], [ 1, %1 ]
  ret i32 %6
}

; Function Attrs: noinline nounwind optsize
define dso_local void @HAL_MPU_Disable() local_unnamed_addr #2 {
  tail call void asm sideeffect "dmb 0xF", "~{memory}"() #21, !srcloc !232
  %1 = load volatile i32, i32* inttoptr (i32 -536810204 to i32*), align 4, !tbaa !233
  %2 = and i32 %1, -65537
  store volatile i32 %2, i32* inttoptr (i32 -536810204 to i32*), align 4, !tbaa !233
  store volatile i32 0, i32* inttoptr (i32 -536810092 to i32*), align 4, !tbaa !234
  ret void
}

; Function Attrs: noinline nounwind optsize
define dso_local void @HAL_MPU_Enable(i32 noundef %0) local_unnamed_addr #2 {
  %2 = or i32 %0, 1
  store volatile i32 %2, i32* inttoptr (i32 -536810092 to i32*), align 4, !tbaa !234
  %3 = load volatile i32, i32* inttoptr (i32 -536810204 to i32*), align 4, !tbaa !233
  %4 = or i32 %3, 65536
  store volatile i32 %4, i32* inttoptr (i32 -536810204 to i32*), align 4, !tbaa !233
  tail call void asm sideeffect "dsb 0xF", "~{memory}"() #21, !srcloc !228
  tail call void asm sideeffect "isb 0xF", "~{memory}"() #21, !srcloc !229
  ret void
}

; Function Attrs: nofree noinline norecurse nounwind optsize
define dso_local void @HAL_MPU_ConfigRegion(%struct.MPU_Region_InitTypeDef* nocapture noundef readonly %0) local_unnamed_addr #6 {
  %2 = getelementptr inbounds %struct.MPU_Region_InitTypeDef, %struct.MPU_Region_InitTypeDef* %0, i32 0, i32 1
  %3 = load i8, i8* %2, align 1, !tbaa !236
  %4 = zext i8 %3 to i32
  store volatile i32 %4, i32* inttoptr (i32 -536810088 to i32*), align 8, !tbaa !238
  %5 = getelementptr inbounds %struct.MPU_Region_InitTypeDef, %struct.MPU_Region_InitTypeDef* %0, i32 0, i32 0
  %6 = load i8, i8* %5, align 4, !tbaa !239
  %7 = icmp eq i8 %6, 0
  br i1 %7, label %52, label %8

8:                                                ; preds = %1
  %9 = getelementptr inbounds %struct.MPU_Region_InitTypeDef, %struct.MPU_Region_InitTypeDef* %0, i32 0, i32 2
  %10 = load i32, i32* %9, align 4, !tbaa !240
  store volatile i32 %10, i32* inttoptr (i32 -536810084 to i32*), align 4, !tbaa !241
  %11 = getelementptr inbounds %struct.MPU_Region_InitTypeDef, %struct.MPU_Region_InitTypeDef* %0, i32 0, i32 7
  %12 = load i8, i8* %11, align 4, !tbaa !242
  %13 = zext i8 %12 to i32
  %14 = shl i32 %13, 28
  %15 = getelementptr inbounds %struct.MPU_Region_InitTypeDef, %struct.MPU_Region_InitTypeDef* %0, i32 0, i32 6
  %16 = load i8, i8* %15, align 1, !tbaa !243
  %17 = zext i8 %16 to i32
  %18 = shl nuw i32 %17, 24
  %19 = getelementptr inbounds %struct.MPU_Region_InitTypeDef, %struct.MPU_Region_InitTypeDef* %0, i32 0, i32 5
  %20 = load i8, i8* %19, align 2, !tbaa !244
  %21 = zext i8 %20 to i32
  %22 = shl nuw nsw i32 %21, 19
  %23 = getelementptr inbounds %struct.MPU_Region_InitTypeDef, %struct.MPU_Region_InitTypeDef* %0, i32 0, i32 8
  %24 = load i8, i8* %23, align 1, !tbaa !245
  %25 = zext i8 %24 to i32
  %26 = shl nuw nsw i32 %25, 18
  %27 = getelementptr inbounds %struct.MPU_Region_InitTypeDef, %struct.MPU_Region_InitTypeDef* %0, i32 0, i32 9
  %28 = load i8, i8* %27, align 2, !tbaa !246
  %29 = zext i8 %28 to i32
  %30 = shl nuw nsw i32 %29, 17
  %31 = getelementptr inbounds %struct.MPU_Region_InitTypeDef, %struct.MPU_Region_InitTypeDef* %0, i32 0, i32 10
  %32 = load i8, i8* %31, align 1, !tbaa !247
  %33 = zext i8 %32 to i32
  %34 = shl nuw nsw i32 %33, 16
  %35 = getelementptr inbounds %struct.MPU_Region_InitTypeDef, %struct.MPU_Region_InitTypeDef* %0, i32 0, i32 4
  %36 = load i8, i8* %35, align 1, !tbaa !248
  %37 = zext i8 %36 to i32
  %38 = shl nuw nsw i32 %37, 8
  %39 = getelementptr inbounds %struct.MPU_Region_InitTypeDef, %struct.MPU_Region_InitTypeDef* %0, i32 0, i32 3
  %40 = load i8, i8* %39, align 4, !tbaa !249
  %41 = zext i8 %40 to i32
  %42 = shl nuw nsw i32 %41, 1
  %43 = zext i8 %6 to i32
  %44 = or i32 %14, %43
  %45 = or i32 %44, %18
  %46 = or i32 %45, %22
  %47 = or i32 %46, %26
  %48 = or i32 %47, %30
  %49 = or i32 %48, %34
  %50 = or i32 %49, %38
  %51 = or i32 %50, %42
  br label %53

52:                                               ; preds = %1
  store volatile i32 0, i32* inttoptr (i32 -536810084 to i32*), align 4, !tbaa !241
  br label %53

53:                                               ; preds = %52, %8
  %54 = phi i32 [ 0, %52 ], [ %51, %8 ]
  store volatile i32 %54, i32* inttoptr (i32 -536810080 to i32*), align 32, !tbaa !250
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nounwind optsize willreturn
define dso_local i32 @HAL_NVIC_GetPriorityGrouping() local_unnamed_addr #7 {
  %1 = tail call fastcc i32 @__NVIC_GetPriorityGrouping() #20
  ret i32 %1
}

; Function Attrs: mustprogress nofree noinline nounwind optsize willreturn
define dso_local void @HAL_NVIC_GetPriority(i32 noundef %0, i32 noundef %1, i32* nocapture noundef writeonly %2, i32* nocapture noundef writeonly %3) local_unnamed_addr #17 {
  %5 = tail call fastcc i32 @__NVIC_GetPriority(i32 noundef %0) #20, !range !251
  tail call fastcc void @NVIC_DecodePriority(i32 noundef %5, i32 noundef %1, i32* noundef %2, i32* noundef %3) #20
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nounwind optsize willreturn
define internal fastcc i32 @__NVIC_GetPriority(i32 noundef %0) unnamed_addr #7 {
  %2 = getelementptr inbounds [240 x i8], [240 x i8]* inttoptr (i32 -536812544 to [240 x i8]*), i32 0, i32 %0
  %3 = and i32 %0, 15
  %4 = add nsw i32 %3, -4
  %5 = getelementptr inbounds [12 x i8], [12 x i8]* inttoptr (i32 -536810216 to [12 x i8]*), i32 0, i32 %4
  %6 = icmp slt i32 %0, 0
  %7 = select i1 %6, i8* %5, i8* %2
  %8 = load volatile i8, i8* %7, align 1, !tbaa !45
  %9 = lshr i8 %8, 4
  %10 = zext i8 %9 to i32
  ret i32 %10
}

; Function Attrs: mustprogress nofree noinline nosync nounwind optsize willreturn writeonly
define internal fastcc void @NVIC_DecodePriority(i32 noundef %0, i32 noundef %1, i32* nocapture noundef writeonly %2, i32* nocapture noundef writeonly %3) unnamed_addr #18 {
  %5 = and i32 %1, 7
  %6 = xor i32 %5, 7
  %7 = icmp ult i32 %6, 4
  %8 = select i1 %7, i32 %6, i32 4
  %9 = tail call i32 @llvm.usub.sat.i32(i32 %5, i32 3)
  %10 = lshr i32 %0, %9
  %11 = shl nsw i32 -1, %8
  %12 = xor i32 %11, -1
  %13 = and i32 %10, %12
  store i32 %13, i32* %2, align 4, !tbaa !18
  %14 = shl nsw i32 -1, %9
  %15 = xor i32 %14, -1
  %16 = and i32 %15, %0
  store i32 %16, i32* %3, align 4, !tbaa !18
  ret void
}

; Function Attrs: nofree noinline norecurse nounwind optsize
define dso_local void @HAL_NVIC_SetPendingIRQ(i32 noundef %0) local_unnamed_addr #6 {
  tail call fastcc void @__NVIC_SetPendingIRQ(i32 noundef %0) #20
  ret void
}

; Function Attrs: nofree noinline norecurse nounwind optsize
define internal fastcc void @__NVIC_SetPendingIRQ(i32 noundef %0) unnamed_addr #6 {
  %2 = icmp sgt i32 %0, -1
  br i1 %2, label %3, label %8

3:                                                ; preds = %1
  %4 = and i32 %0, 31
  %5 = shl nuw i32 1, %4
  %6 = lshr i32 %0, 5
  %7 = getelementptr inbounds [8 x i32], [8 x i32]* inttoptr (i32 -536813056 to [8 x i32]*), i32 0, i32 %6
  store volatile i32 %5, i32* %7, align 4, !tbaa !18
  br label %8

8:                                                ; preds = %3, %1
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nounwind optsize willreturn
define dso_local i32 @HAL_NVIC_GetPendingIRQ(i32 noundef %0) local_unnamed_addr #7 {
  %2 = tail call fastcc i32 @__NVIC_GetPendingIRQ(i32 noundef %0) #20
  ret i32 %2
}

; Function Attrs: mustprogress nofree noinline norecurse nounwind optsize willreturn
define internal fastcc i32 @__NVIC_GetPendingIRQ(i32 noundef %0) unnamed_addr #7 {
  %2 = icmp sgt i32 %0, -1
  br i1 %2, label %3, label %10

3:                                                ; preds = %1
  %4 = lshr i32 %0, 5
  %5 = getelementptr inbounds [8 x i32], [8 x i32]* inttoptr (i32 -536813056 to [8 x i32]*), i32 0, i32 %4
  %6 = load volatile i32, i32* %5, align 4, !tbaa !18
  %7 = and i32 %0, 31
  %8 = lshr i32 %6, %7
  %9 = and i32 %8, 1
  br label %10

10:                                               ; preds = %1, %3
  %11 = phi i32 [ %9, %3 ], [ 0, %1 ]
  ret i32 %11
}

; Function Attrs: nofree noinline norecurse nounwind optsize
define dso_local void @HAL_NVIC_ClearPendingIRQ(i32 noundef %0) local_unnamed_addr #6 {
  tail call fastcc void @__NVIC_ClearPendingIRQ(i32 noundef %0) #20
  ret void
}

; Function Attrs: nofree noinline norecurse nounwind optsize
define internal fastcc void @__NVIC_ClearPendingIRQ(i32 noundef %0) unnamed_addr #6 {
  %2 = icmp sgt i32 %0, -1
  br i1 %2, label %3, label %8

3:                                                ; preds = %1
  %4 = and i32 %0, 31
  %5 = shl nuw i32 1, %4
  %6 = lshr i32 %0, 5
  %7 = getelementptr inbounds [8 x i32], [8 x i32]* inttoptr (i32 -536812928 to [8 x i32]*), i32 0, i32 %6
  store volatile i32 %5, i32* %7, align 4, !tbaa !18
  br label %8

8:                                                ; preds = %3, %1
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nounwind optsize willreturn
define dso_local i32 @HAL_NVIC_GetActive(i32 noundef %0) local_unnamed_addr #7 {
  %2 = tail call fastcc i32 @__NVIC_GetActive(i32 noundef %0) #20
  ret i32 %2
}

; Function Attrs: mustprogress nofree noinline norecurse nounwind optsize willreturn
define internal fastcc i32 @__NVIC_GetActive(i32 noundef %0) unnamed_addr #7 {
  %2 = icmp sgt i32 %0, -1
  br i1 %2, label %3, label %10

3:                                                ; preds = %1
  %4 = lshr i32 %0, 5
  %5 = getelementptr inbounds [8 x i32], [8 x i32]* inttoptr (i32 -536812800 to [8 x i32]*), i32 0, i32 %4
  %6 = load volatile i32, i32* %5, align 4, !tbaa !18
  %7 = and i32 %0, 31
  %8 = lshr i32 %6, %7
  %9 = and i32 %8, 1
  br label %10

10:                                               ; preds = %1, %3
  %11 = phi i32 [ %9, %3 ], [ 0, %1 ]
  ret i32 %11
}

; Function Attrs: nofree noinline norecurse nounwind optsize
define dso_local void @HAL_SYSTICK_CLKSourceConfig(i32 noundef %0) local_unnamed_addr #6 {
  %2 = icmp eq i32 %0, 4
  %3 = load volatile i32, i32* inttoptr (i32 -536813552 to i32*), align 16, !tbaa !221
  %4 = and i32 %3, -5
  %5 = select i1 %2, i32 4, i32 0
  %6 = or i32 %4, %5
  store volatile i32 %6, i32* inttoptr (i32 -536813552 to i32*), align 16, !tbaa !221
  ret void
}

; Function Attrs: noinline nounwind optsize
define dso_local void @HAL_SYSTICK_IRQHandler() local_unnamed_addr #2 {
  tail call void @HAL_SYSTICK_Callback() #20
  ret void
}

; Function Attrs: noinline nounwind optsize
define weak dso_local void @HAL_SYSTICK_Callback() local_unnamed_addr #2 {
  ret void
}

; Function Attrs: nofree noinline nounwind optsize
define dso_local void @HAL_GPIO_Init(%struct.GPIO_TypeDef* noundef %0, %struct.GPIO_InitTypeDef* nocapture noundef readonly %1) local_unnamed_addr #14 {
  %3 = alloca i32, align 4
  %4 = getelementptr inbounds %struct.GPIO_InitTypeDef, %struct.GPIO_InitTypeDef* %1, i32 0, i32 0
  %5 = getelementptr inbounds %struct.GPIO_InitTypeDef, %struct.GPIO_InitTypeDef* %1, i32 0, i32 1
  %6 = getelementptr inbounds %struct.GPIO_TypeDef, %struct.GPIO_TypeDef* %0, i32 0, i32 2
  %7 = getelementptr inbounds %struct.GPIO_InitTypeDef, %struct.GPIO_InitTypeDef* %1, i32 0, i32 3
  %8 = getelementptr inbounds %struct.GPIO_TypeDef, %struct.GPIO_TypeDef* %0, i32 0, i32 1
  %9 = getelementptr inbounds %struct.GPIO_TypeDef, %struct.GPIO_TypeDef* %0, i32 0, i32 3
  %10 = getelementptr inbounds %struct.GPIO_InitTypeDef, %struct.GPIO_InitTypeDef* %1, i32 0, i32 2
  %11 = getelementptr inbounds %struct.GPIO_InitTypeDef, %struct.GPIO_InitTypeDef* %1, i32 0, i32 4
  %12 = getelementptr inbounds %struct.GPIO_TypeDef, %struct.GPIO_TypeDef* %0, i32 0, i32 0
  %13 = ptrtoint %struct.GPIO_TypeDef* %0 to i32
  %14 = add i32 %13, -1073872896
  %15 = tail call i32 @llvm.fshl.i32(i32 %14, i32 %14, i32 22)
  %16 = icmp eq %struct.GPIO_TypeDef* %0, inttoptr (i32 1073882112 to %struct.GPIO_TypeDef*)
  %17 = select i1 %16, i32 9, i32 10
  %18 = bitcast i32* %3 to i8*
  %19 = icmp ult i32 %15, 9
  %20 = select i1 %19, i32 %15, i32 %17
  br label %21

21:                                               ; preds = %2, %120
  %22 = phi i32 [ 0, %2 ], [ %121, %120 ]
  %23 = shl nuw nsw i32 1, %22
  %24 = load i32, i32* %4, align 4, !tbaa !21
  %25 = and i32 %24, %23
  %26 = icmp eq i32 %25, %23
  br i1 %26, label %27, label %120

27:                                               ; preds = %21
  %28 = load i32, i32* %5, align 4, !tbaa !23
  switch i32 %28, label %29 [
    i32 1, label %33
    i32 2, label %33
    i32 17, label %33
    i32 18, label %33
  ]

29:                                               ; preds = %27
  %30 = shl nuw nsw i32 %22, 1
  %31 = shl nuw i32 3, %30
  %32 = xor i32 %31, -1
  br label %48

33:                                               ; preds = %27, %27, %27, %27
  %34 = load volatile i32, i32* %6, align 4, !tbaa !252
  %35 = shl nuw nsw i32 %22, 1
  %36 = shl nuw i32 3, %35
  %37 = xor i32 %36, -1
  %38 = and i32 %34, %37
  %39 = load i32, i32* %7, align 4, !tbaa !25
  %40 = shl i32 %39, %35
  %41 = or i32 %40, %38
  store volatile i32 %41, i32* %6, align 4, !tbaa !252
  %42 = load volatile i32, i32* %8, align 4, !tbaa !254
  %43 = xor i32 %23, -1
  %44 = and i32 %42, %43
  %45 = lshr i32 %28, 4
  %46 = shl nuw nsw i32 %45, %22
  %47 = or i32 %44, %46
  store volatile i32 %47, i32* %8, align 4, !tbaa !254
  br label %48

48:                                               ; preds = %29, %33
  %49 = phi i32 [ %32, %29 ], [ %37, %33 ]
  %50 = phi i32 [ %30, %29 ], [ %35, %33 ]
  %51 = load volatile i32, i32* %9, align 4, !tbaa !255
  %52 = and i32 %51, %49
  %53 = load i32, i32* %10, align 4, !tbaa !24
  %54 = shl i32 %53, %50
  %55 = or i32 %54, %52
  store volatile i32 %55, i32* %9, align 4, !tbaa !255
  switch i32 %28, label %69 [
    i32 2, label %56
    i32 18, label %56
  ]

56:                                               ; preds = %48, %48
  %57 = lshr i32 %22, 3
  %58 = getelementptr inbounds %struct.GPIO_TypeDef, %struct.GPIO_TypeDef* %0, i32 0, i32 8, i32 %57
  %59 = load volatile i32, i32* %58, align 4, !tbaa !18
  %60 = shl nuw nsw i32 %22, 2
  %61 = and i32 %60, 28
  %62 = shl nuw i32 15, %61
  %63 = xor i32 %62, -1
  %64 = and i32 %59, %63
  %65 = load i32, i32* %11, align 4, !tbaa !39
  %66 = shl i32 %65, %61
  %67 = or i32 %66, %64
  store volatile i32 %67, i32* %58, align 4, !tbaa !18
  %68 = load i32, i32* %5, align 4, !tbaa !23
  br label %69

69:                                               ; preds = %48, %56
  %70 = phi i32 [ %28, %48 ], [ %68, %56 ]
  %71 = load volatile i32, i32* %12, align 4, !tbaa !256
  %72 = and i32 %71, %49
  %73 = and i32 %70, 3
  %74 = shl nuw i32 %73, %50
  %75 = or i32 %74, %72
  store volatile i32 %75, i32* %12, align 4, !tbaa !256
  %76 = and i32 %70, 268435456
  %77 = icmp eq i32 %76, 0
  br i1 %77, label %120, label %78

78:                                               ; preds = %69
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %18)
  store volatile i32 0, i32* %3, align 4, !tbaa !18
  %79 = load volatile i32, i32* inttoptr (i32 1073887300 to i32*), align 4, !tbaa !257
  %80 = or i32 %79, 16384
  store volatile i32 %80, i32* inttoptr (i32 1073887300 to i32*), align 4, !tbaa !257
  %81 = load volatile i32, i32* inttoptr (i32 1073887300 to i32*), align 4, !tbaa !257
  %82 = and i32 %81, 16384
  store volatile i32 %82, i32* %3, align 4, !tbaa !18
  %83 = load volatile i32, i32* %3, align 4, !tbaa !18
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %18)
  %84 = lshr i32 %22, 2
  %85 = getelementptr inbounds [4 x i32], [4 x i32]* inttoptr (i32 1073821704 to [4 x i32]*), i32 0, i32 %84
  %86 = load volatile i32, i32* %85, align 4, !tbaa !18
  %87 = shl nuw nsw i32 %22, 2
  %88 = and i32 %87, 12
  %89 = shl nuw nsw i32 15, %88
  %90 = xor i32 %89, -1
  %91 = and i32 %86, %90
  %92 = shl nuw nsw i32 %20, %88
  %93 = or i32 %92, %91
  store volatile i32 %93, i32* %85, align 4, !tbaa !18
  %94 = load volatile i32, i32* inttoptr (i32 1073822720 to i32*), align 1024, !tbaa !258
  %95 = xor i32 %23, -1
  %96 = and i32 %94, %95
  %97 = load i32, i32* %5, align 4, !tbaa !23
  %98 = and i32 %97, 65536
  %99 = icmp eq i32 %98, 0
  %100 = or i32 %94, %23
  %101 = select i1 %99, i32 %96, i32 %100
  store volatile i32 %101, i32* inttoptr (i32 1073822720 to i32*), align 1024, !tbaa !258
  %102 = load volatile i32, i32* inttoptr (i32 1073822724 to i32*), align 4, !tbaa !259
  %103 = and i32 %102, %95
  %104 = and i32 %97, 131072
  %105 = icmp eq i32 %104, 0
  %106 = or i32 %102, %23
  %107 = select i1 %105, i32 %103, i32 %106
  store volatile i32 %107, i32* inttoptr (i32 1073822724 to i32*), align 4, !tbaa !259
  %108 = load volatile i32, i32* inttoptr (i32 1073822728 to i32*), align 8, !tbaa !260
  %109 = and i32 %108, %95
  %110 = and i32 %97, 1048576
  %111 = icmp eq i32 %110, 0
  %112 = or i32 %108, %23
  %113 = select i1 %111, i32 %109, i32 %112
  store volatile i32 %113, i32* inttoptr (i32 1073822728 to i32*), align 8, !tbaa !260
  %114 = load volatile i32, i32* inttoptr (i32 1073822732 to i32*), align 4, !tbaa !261
  %115 = and i32 %114, %95
  %116 = and i32 %97, 2097152
  %117 = icmp eq i32 %116, 0
  %118 = or i32 %114, %23
  %119 = select i1 %117, i32 %115, i32 %118
  store volatile i32 %119, i32* inttoptr (i32 1073822732 to i32*), align 4, !tbaa !261
  br label %120

120:                                              ; preds = %21, %78, %69
  %121 = add nuw nsw i32 %22, 1
  %122 = icmp eq i32 %121, 16
  br i1 %122, label %123, label %21, !llvm.loop !262

123:                                              ; preds = %120
  ret void
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.fshl.i32(i32, i32, i32) #16

; Function Attrs: nofree noinline norecurse nounwind optsize
define dso_local void @HAL_GPIO_DeInit(%struct.GPIO_TypeDef* noundef %0, i32 noundef %1) local_unnamed_addr #6 {
  %3 = ptrtoint %struct.GPIO_TypeDef* %0 to i32
  %4 = add i32 %3, -1073872896
  %5 = tail call i32 @llvm.fshl.i32(i32 %4, i32 %4, i32 22)
  %6 = icmp eq %struct.GPIO_TypeDef* %0, inttoptr (i32 1073882112 to %struct.GPIO_TypeDef*)
  %7 = select i1 %6, i32 9, i32 10
  %8 = getelementptr inbounds %struct.GPIO_TypeDef, %struct.GPIO_TypeDef* %0, i32 0, i32 0
  %9 = getelementptr inbounds %struct.GPIO_TypeDef, %struct.GPIO_TypeDef* %0, i32 0, i32 3
  %10 = getelementptr inbounds %struct.GPIO_TypeDef, %struct.GPIO_TypeDef* %0, i32 0, i32 1
  %11 = getelementptr inbounds %struct.GPIO_TypeDef, %struct.GPIO_TypeDef* %0, i32 0, i32 2
  %12 = icmp ult i32 %5, 9
  %13 = select i1 %12, i32 %5, i32 %7
  br label %14

14:                                               ; preds = %2, %61
  %15 = phi i32 [ 0, %2 ], [ %62, %61 ]
  %16 = shl nuw nsw i32 1, %15
  %17 = and i32 %16, %1
  %18 = icmp eq i32 %17, %16
  br i1 %18, label %19, label %61

19:                                               ; preds = %14
  %20 = lshr i32 %15, 2
  %21 = getelementptr inbounds [4 x i32], [4 x i32]* inttoptr (i32 1073821704 to [4 x i32]*), i32 0, i32 %20
  %22 = load volatile i32, i32* %21, align 4, !tbaa !18
  %23 = shl nuw nsw i32 %15, 2
  %24 = and i32 %23, 12
  %25 = shl nuw nsw i32 15, %24
  %26 = and i32 %22, %25
  %27 = shl nuw nsw i32 %13, %24
  %28 = icmp eq i32 %26, %27
  %29 = xor i32 %16, -1
  br i1 %28, label %30, label %42

30:                                               ; preds = %19
  %31 = load volatile i32, i32* inttoptr (i32 1073822720 to i32*), align 1024, !tbaa !258
  %32 = and i32 %31, %29
  store volatile i32 %32, i32* inttoptr (i32 1073822720 to i32*), align 1024, !tbaa !258
  %33 = load volatile i32, i32* inttoptr (i32 1073822724 to i32*), align 4, !tbaa !259
  %34 = and i32 %33, %29
  store volatile i32 %34, i32* inttoptr (i32 1073822724 to i32*), align 4, !tbaa !259
  %35 = load volatile i32, i32* inttoptr (i32 1073822728 to i32*), align 8, !tbaa !260
  %36 = and i32 %35, %29
  store volatile i32 %36, i32* inttoptr (i32 1073822728 to i32*), align 8, !tbaa !260
  %37 = load volatile i32, i32* inttoptr (i32 1073822732 to i32*), align 4, !tbaa !261
  %38 = and i32 %37, %29
  store volatile i32 %38, i32* inttoptr (i32 1073822732 to i32*), align 4, !tbaa !261
  %39 = xor i32 %25, -1
  %40 = load volatile i32, i32* %21, align 4, !tbaa !18
  %41 = and i32 %40, %39
  store volatile i32 %41, i32* %21, align 4, !tbaa !18
  br label %42

42:                                               ; preds = %19, %30
  %43 = shl nuw nsw i32 %15, 1
  %44 = shl nuw i32 3, %43
  %45 = xor i32 %44, -1
  %46 = load volatile i32, i32* %8, align 4, !tbaa !256
  %47 = and i32 %46, %45
  store volatile i32 %47, i32* %8, align 4, !tbaa !256
  %48 = and i32 %23, 28
  %49 = shl nuw i32 15, %48
  %50 = xor i32 %49, -1
  %51 = lshr i32 %15, 3
  %52 = getelementptr inbounds %struct.GPIO_TypeDef, %struct.GPIO_TypeDef* %0, i32 0, i32 8, i32 %51
  %53 = load volatile i32, i32* %52, align 4, !tbaa !18
  %54 = and i32 %53, %50
  store volatile i32 %54, i32* %52, align 4, !tbaa !18
  %55 = load volatile i32, i32* %9, align 4, !tbaa !255
  %56 = and i32 %55, %45
  store volatile i32 %56, i32* %9, align 4, !tbaa !255
  %57 = load volatile i32, i32* %10, align 4, !tbaa !254
  %58 = and i32 %57, %29
  store volatile i32 %58, i32* %10, align 4, !tbaa !254
  %59 = load volatile i32, i32* %11, align 4, !tbaa !252
  %60 = and i32 %59, %45
  store volatile i32 %60, i32* %11, align 4, !tbaa !252
  br label %61

61:                                               ; preds = %14, %42
  %62 = add nuw nsw i32 %15, 1
  %63 = icmp eq i32 %62, 16
  br i1 %63, label %64, label %14, !llvm.loop !263

64:                                               ; preds = %61
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nounwind optsize willreturn
define dso_local i32 @HAL_GPIO_ReadPin(%struct.GPIO_TypeDef* noundef %0, i16 noundef zeroext %1) local_unnamed_addr #7 {
  %3 = getelementptr inbounds %struct.GPIO_TypeDef, %struct.GPIO_TypeDef* %0, i32 0, i32 4
  %4 = load volatile i32, i32* %3, align 4, !tbaa !264
  %5 = zext i16 %1 to i32
  %6 = and i32 %4, %5
  %7 = icmp ne i32 %6, 0
  %8 = zext i1 %7 to i32
  ret i32 %8
}

; Function Attrs: nofree noinline norecurse nounwind optsize
define dso_local void @HAL_GPIO_WritePin(%struct.GPIO_TypeDef* noundef %0, i16 noundef zeroext %1, i32 noundef %2) local_unnamed_addr #6 {
  %4 = icmp eq i32 %2, 0
  %5 = zext i16 %1 to i32
  %6 = shl nuw i32 %5, 16
  %7 = select i1 %4, i32 %6, i32 %5
  %8 = getelementptr inbounds %struct.GPIO_TypeDef, %struct.GPIO_TypeDef* %0, i32 0, i32 6
  store volatile i32 %7, i32* %8, align 4, !tbaa !265
  ret void
}

; Function Attrs: nofree noinline norecurse nounwind optsize
define dso_local void @HAL_GPIO_TogglePin(%struct.GPIO_TypeDef* noundef %0, i16 noundef zeroext %1) local_unnamed_addr #6 {
  %3 = getelementptr inbounds %struct.GPIO_TypeDef, %struct.GPIO_TypeDef* %0, i32 0, i32 5
  %4 = load volatile i32, i32* %3, align 4, !tbaa !266
  %5 = zext i16 %1 to i32
  %6 = and i32 %4, %5
  %7 = icmp eq i32 %6, %5
  %8 = shl nuw i32 %5, 16
  %9 = select i1 %7, i32 %8, i32 %5
  %10 = getelementptr inbounds %struct.GPIO_TypeDef, %struct.GPIO_TypeDef* %0, i32 0, i32 6
  store volatile i32 %9, i32* %10, align 4, !tbaa !265
  ret void
}

; Function Attrs: nofree noinline nounwind optsize
define dso_local i32 @HAL_GPIO_LockPin(%struct.GPIO_TypeDef* noundef %0, i16 noundef zeroext %1) local_unnamed_addr #14 {
  %3 = alloca i32, align 4
  %4 = bitcast i32* %3 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %4)
  store volatile i32 65536, i32* %3, align 4, !tbaa !18
  %5 = zext i16 %1 to i32
  %6 = load volatile i32, i32* %3, align 4, !tbaa !18
  %7 = or i32 %6, %5
  store volatile i32 %7, i32* %3, align 4, !tbaa !18
  %8 = load volatile i32, i32* %3, align 4, !tbaa !18
  %9 = getelementptr inbounds %struct.GPIO_TypeDef, %struct.GPIO_TypeDef* %0, i32 0, i32 7
  store volatile i32 %8, i32* %9, align 4, !tbaa !267
  store volatile i32 %5, i32* %9, align 4, !tbaa !267
  %10 = load volatile i32, i32* %3, align 4, !tbaa !18
  store volatile i32 %10, i32* %9, align 4, !tbaa !267
  %11 = load volatile i32, i32* %9, align 4, !tbaa !267
  store volatile i32 %11, i32* %3, align 4, !tbaa !18
  %12 = load volatile i32, i32* %9, align 4, !tbaa !267
  %13 = lshr i32 %12, 16
  %14 = and i32 %13, 1
  %15 = xor i32 %14, 1
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %4)
  ret i32 %15
}

; Function Attrs: noinline nounwind optsize
define dso_local void @HAL_GPIO_EXTI_IRQHandler(i16 noundef zeroext %0) local_unnamed_addr #2 {
  %2 = load volatile i32, i32* inttoptr (i32 1073822740 to i32*), align 4, !tbaa !268
  %3 = zext i16 %0 to i32
  %4 = and i32 %2, %3
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %7, label %6

6:                                                ; preds = %1
  store volatile i32 %3, i32* inttoptr (i32 1073822740 to i32*), align 4, !tbaa !268
  tail call void @HAL_GPIO_EXTI_Callback(i16 noundef zeroext %0) #20
  br label %7

7:                                                ; preds = %6, %1
  ret void
}

; Function Attrs: noinline nounwind optsize
define weak dso_local void @HAL_GPIO_EXTI_Callback(i16 noundef zeroext %0) local_unnamed_addr #2 {
  ret void
}

; Function Attrs: noinline nounwind optsize
define weak dso_local i32 @HAL_RCC_DeInit() local_unnamed_addr #2 {
  ret i32 0
}

; Function Attrs: noinline nounwind optsize
define weak dso_local i32 @HAL_RCC_OscConfig(%struct.RCC_OscInitTypeDef* noundef %0) local_unnamed_addr #2 {
  %2 = alloca i32, align 4
  %3 = icmp eq %struct.RCC_OscInitTypeDef* %0, null
  br i1 %3, label %302, label %4

4:                                                ; preds = %1
  %5 = getelementptr inbounds %struct.RCC_OscInitTypeDef, %struct.RCC_OscInitTypeDef* %0, i32 0, i32 0
  %6 = load i32, i32* %5, align 4, !tbaa !29
  %7 = and i32 %6, 1
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %64, label %9

9:                                                ; preds = %4
  %10 = load volatile i32, i32* inttoptr (i32 1073887240 to i32*), align 8, !tbaa !43
  %11 = and i32 %10, 12
  %12 = icmp eq i32 %11, 4
  br i1 %12, label %21, label %13

13:                                               ; preds = %9
  %14 = load volatile i32, i32* inttoptr (i32 1073887240 to i32*), align 8, !tbaa !43
  %15 = and i32 %14, 12
  %16 = icmp eq i32 %15, 8
  br i1 %16, label %17, label %29

17:                                               ; preds = %13
  %18 = load volatile i32, i32* inttoptr (i32 1073887236 to i32*), align 4, !tbaa !44
  %19 = and i32 %18, 4194304
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %29, label %21

21:                                               ; preds = %17, %9
  %22 = load volatile i32, i32* inttoptr (i32 1073887232 to i32*), align 2048, !tbaa !269
  %23 = and i32 %22, 131072
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %64, label %25

25:                                               ; preds = %21
  %26 = getelementptr inbounds %struct.RCC_OscInitTypeDef, %struct.RCC_OscInitTypeDef* %0, i32 0, i32 1
  %27 = load i32, i32* %26, align 4, !tbaa !32
  %28 = icmp eq i32 %27, 0
  br i1 %28, label %302, label %64

29:                                               ; preds = %13, %17
  %30 = getelementptr inbounds %struct.RCC_OscInitTypeDef, %struct.RCC_OscInitTypeDef* %0, i32 0, i32 1
  %31 = load i32, i32* %30, align 4, !tbaa !32
  switch i32 %31, label %35 [
    i32 65536, label %41
    i32 327680, label %32
  ]

32:                                               ; preds = %29
  %33 = load volatile i32, i32* inttoptr (i32 1073887232 to i32*), align 2048, !tbaa !269
  %34 = or i32 %33, 262144
  store volatile i32 %34, i32* inttoptr (i32 1073887232 to i32*), align 2048, !tbaa !269
  br label %41

35:                                               ; preds = %29
  %36 = load volatile i32, i32* inttoptr (i32 1073887232 to i32*), align 2048, !tbaa !269
  %37 = and i32 %36, -65537
  store volatile i32 %37, i32* inttoptr (i32 1073887232 to i32*), align 2048, !tbaa !269
  %38 = load volatile i32, i32* inttoptr (i32 1073887232 to i32*), align 2048, !tbaa !269
  %39 = and i32 %38, -262145
  store volatile i32 %39, i32* inttoptr (i32 1073887232 to i32*), align 2048, !tbaa !269
  %40 = icmp eq i32 %31, 0
  br i1 %40, label %54, label %44

41:                                               ; preds = %29, %32
  %42 = load volatile i32, i32* inttoptr (i32 1073887232 to i32*), align 2048, !tbaa !269
  %43 = or i32 %42, 65536
  store volatile i32 %43, i32* inttoptr (i32 1073887232 to i32*), align 2048, !tbaa !269
  br label %44

44:                                               ; preds = %41, %35
  %45 = tail call i32 @HAL_GetTick() #19
  br label %46

46:                                               ; preds = %50, %44
  %47 = load volatile i32, i32* inttoptr (i32 1073887232 to i32*), align 2048, !tbaa !269
  %48 = and i32 %47, 131072
  %49 = icmp eq i32 %48, 0
  br i1 %49, label %50, label %64

50:                                               ; preds = %46
  %51 = tail call i32 @HAL_GetTick() #19
  %52 = sub i32 %51, %45
  %53 = icmp ugt i32 %52, 100
  br i1 %53, label %302, label %46, !llvm.loop !270

54:                                               ; preds = %35
  %55 = tail call i32 @HAL_GetTick() #19
  br label %56

56:                                               ; preds = %60, %54
  %57 = load volatile i32, i32* inttoptr (i32 1073887232 to i32*), align 2048, !tbaa !269
  %58 = and i32 %57, 131072
  %59 = icmp eq i32 %58, 0
  br i1 %59, label %64, label %60

60:                                               ; preds = %56
  %61 = tail call i32 @HAL_GetTick() #19
  %62 = sub i32 %61, %55
  %63 = icmp ugt i32 %62, 100
  br i1 %63, label %302, label %56, !llvm.loop !271

64:                                               ; preds = %46, %56, %25, %21, %4
  %65 = load i32, i32* %5, align 4, !tbaa !29
  %66 = and i32 %65, 2
  %67 = icmp eq i32 %66, 0
  br i1 %67, label %119, label %68

68:                                               ; preds = %64
  %69 = load volatile i32, i32* inttoptr (i32 1073887240 to i32*), align 8, !tbaa !43
  %70 = and i32 %69, 12
  %71 = icmp eq i32 %70, 0
  br i1 %71, label %80, label %72

72:                                               ; preds = %68
  %73 = load volatile i32, i32* inttoptr (i32 1073887240 to i32*), align 8, !tbaa !43
  %74 = and i32 %73, 12
  %75 = icmp eq i32 %74, 8
  br i1 %75, label %76, label %88

76:                                               ; preds = %72
  %77 = load volatile i32, i32* inttoptr (i32 1073887236 to i32*), align 4, !tbaa !44
  %78 = and i32 %77, 4194304
  %79 = icmp eq i32 %78, 0
  br i1 %79, label %80, label %88

80:                                               ; preds = %76, %68
  %81 = load volatile i32, i32* inttoptr (i32 1073887232 to i32*), align 2048, !tbaa !269
  %82 = and i32 %81, 2
  %83 = icmp eq i32 %82, 0
  br i1 %83, label %112, label %84

84:                                               ; preds = %80
  %85 = getelementptr inbounds %struct.RCC_OscInitTypeDef, %struct.RCC_OscInitTypeDef* %0, i32 0, i32 3
  %86 = load i32, i32* %85, align 4, !tbaa !272
  %87 = icmp eq i32 %86, 1
  br i1 %87, label %112, label %302

88:                                               ; preds = %76, %72
  %89 = getelementptr inbounds %struct.RCC_OscInitTypeDef, %struct.RCC_OscInitTypeDef* %0, i32 0, i32 3
  %90 = load i32, i32* %89, align 4, !tbaa !272
  %91 = icmp eq i32 %90, 0
  br i1 %91, label %102, label %92

92:                                               ; preds = %88
  store volatile i32 1, i32* inttoptr (i32 1111949312 to i32*), align 65536, !tbaa !18
  %93 = tail call i32 @HAL_GetTick() #19
  br label %94

94:                                               ; preds = %98, %92
  %95 = load volatile i32, i32* inttoptr (i32 1073887232 to i32*), align 2048, !tbaa !269
  %96 = and i32 %95, 2
  %97 = icmp eq i32 %96, 0
  br i1 %97, label %98, label %112

98:                                               ; preds = %94
  %99 = tail call i32 @HAL_GetTick() #19
  %100 = sub i32 %99, %93
  %101 = icmp ugt i32 %100, 2
  br i1 %101, label %302, label %94, !llvm.loop !273

102:                                              ; preds = %88
  store volatile i32 0, i32* inttoptr (i32 1111949312 to i32*), align 65536, !tbaa !18
  %103 = tail call i32 @HAL_GetTick() #19
  br label %104

104:                                              ; preds = %108, %102
  %105 = load volatile i32, i32* inttoptr (i32 1073887232 to i32*), align 2048, !tbaa !269
  %106 = and i32 %105, 2
  %107 = icmp eq i32 %106, 0
  br i1 %107, label %119, label %108

108:                                              ; preds = %104
  %109 = tail call i32 @HAL_GetTick() #19
  %110 = sub i32 %109, %103
  %111 = icmp ugt i32 %110, 2
  br i1 %111, label %302, label %104, !llvm.loop !274

112:                                              ; preds = %94, %80, %84
  %113 = load volatile i32, i32* inttoptr (i32 1073887232 to i32*), align 2048, !tbaa !269
  %114 = and i32 %113, -249
  %115 = getelementptr inbounds %struct.RCC_OscInitTypeDef, %struct.RCC_OscInitTypeDef* %0, i32 0, i32 4
  %116 = load i32, i32* %115, align 4, !tbaa !275
  %117 = shl i32 %116, 3
  %118 = or i32 %117, %114
  store volatile i32 %118, i32* inttoptr (i32 1073887232 to i32*), align 2048, !tbaa !269
  br label %119

119:                                              ; preds = %104, %112, %64
  %120 = load i32, i32* %5, align 4, !tbaa !29
  %121 = and i32 %120, 8
  %122 = icmp eq i32 %121, 0
  br i1 %122, label %147, label %123

123:                                              ; preds = %119
  %124 = getelementptr inbounds %struct.RCC_OscInitTypeDef, %struct.RCC_OscInitTypeDef* %0, i32 0, i32 5
  %125 = load i32, i32* %124, align 4, !tbaa !276
  %126 = icmp eq i32 %125, 0
  br i1 %126, label %137, label %127

127:                                              ; preds = %123
  store volatile i32 1, i32* inttoptr (i32 1111953024 to i32*), align 128, !tbaa !18
  %128 = tail call i32 @HAL_GetTick() #19
  br label %129

129:                                              ; preds = %133, %127
  %130 = load volatile i32, i32* inttoptr (i32 1073887348 to i32*), align 4, !tbaa !277
  %131 = and i32 %130, 2
  %132 = icmp eq i32 %131, 0
  br i1 %132, label %133, label %147

133:                                              ; preds = %129
  %134 = tail call i32 @HAL_GetTick() #19
  %135 = sub i32 %134, %128
  %136 = icmp ugt i32 %135, 2
  br i1 %136, label %302, label %129, !llvm.loop !278

137:                                              ; preds = %123
  store volatile i32 0, i32* inttoptr (i32 1111953024 to i32*), align 128, !tbaa !18
  %138 = tail call i32 @HAL_GetTick() #19
  br label %139

139:                                              ; preds = %143, %137
  %140 = load volatile i32, i32* inttoptr (i32 1073887348 to i32*), align 4, !tbaa !277
  %141 = and i32 %140, 2
  %142 = icmp eq i32 %141, 0
  br i1 %142, label %147, label %143

143:                                              ; preds = %139
  %144 = tail call i32 @HAL_GetTick() #19
  %145 = sub i32 %144, %138
  %146 = icmp ugt i32 %145, 2
  br i1 %146, label %302, label %139, !llvm.loop !279

147:                                              ; preds = %129, %139, %119
  %148 = load i32, i32* %5, align 4, !tbaa !29
  %149 = and i32 %148, 4
  %150 = icmp eq i32 %149, 0
  br i1 %150, label %217, label %151

151:                                              ; preds = %147
  %152 = load volatile i32, i32* inttoptr (i32 1073887296 to i32*), align 64, !tbaa !26
  %153 = and i32 %152, 268435456
  %154 = icmp eq i32 %153, 0
  br i1 %154, label %155, label %162

155:                                              ; preds = %151
  %156 = bitcast i32* %2 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %156)
  store volatile i32 0, i32* %2, align 4, !tbaa !18
  %157 = load volatile i32, i32* inttoptr (i32 1073887296 to i32*), align 64, !tbaa !26
  %158 = or i32 %157, 268435456
  store volatile i32 %158, i32* inttoptr (i32 1073887296 to i32*), align 64, !tbaa !26
  %159 = load volatile i32, i32* inttoptr (i32 1073887296 to i32*), align 64, !tbaa !26
  %160 = and i32 %159, 268435456
  store volatile i32 %160, i32* %2, align 4, !tbaa !18
  %161 = load volatile i32, i32* %2, align 4, !tbaa !18
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %156)
  br label %162

162:                                              ; preds = %155, %151
  %163 = load volatile i32, i32* inttoptr (i32 1073770496 to i32*), align 4096, !tbaa !27
  %164 = and i32 %163, 256
  %165 = icmp eq i32 %164, 0
  br i1 %165, label %166, label %178

166:                                              ; preds = %162
  %167 = load volatile i32, i32* inttoptr (i32 1073770496 to i32*), align 4096, !tbaa !27
  %168 = or i32 %167, 256
  store volatile i32 %168, i32* inttoptr (i32 1073770496 to i32*), align 4096, !tbaa !27
  %169 = tail call i32 @HAL_GetTick() #19
  br label %170

170:                                              ; preds = %174, %166
  %171 = load volatile i32, i32* inttoptr (i32 1073770496 to i32*), align 4096, !tbaa !27
  %172 = and i32 %171, 256
  %173 = icmp eq i32 %172, 0
  br i1 %173, label %174, label %178

174:                                              ; preds = %170
  %175 = tail call i32 @HAL_GetTick() #19
  %176 = sub i32 %175, %169
  %177 = icmp ugt i32 %176, 2
  br i1 %177, label %302, label %170, !llvm.loop !280

178:                                              ; preds = %170, %162
  %179 = getelementptr inbounds %struct.RCC_OscInitTypeDef, %struct.RCC_OscInitTypeDef* %0, i32 0, i32 2
  %180 = load i32, i32* %179, align 4, !tbaa !281
  switch i32 %180, label %184 [
    i32 1, label %190
    i32 5, label %181
  ]

181:                                              ; preds = %178
  %182 = load volatile i32, i32* inttoptr (i32 1073887344 to i32*), align 16, !tbaa !282
  %183 = or i32 %182, 4
  store volatile i32 %183, i32* inttoptr (i32 1073887344 to i32*), align 16, !tbaa !282
  br label %190

184:                                              ; preds = %178
  %185 = load volatile i32, i32* inttoptr (i32 1073887344 to i32*), align 16, !tbaa !282
  %186 = and i32 %185, -2
  store volatile i32 %186, i32* inttoptr (i32 1073887344 to i32*), align 16, !tbaa !282
  %187 = load volatile i32, i32* inttoptr (i32 1073887344 to i32*), align 16, !tbaa !282
  %188 = and i32 %187, -5
  store volatile i32 %188, i32* inttoptr (i32 1073887344 to i32*), align 16, !tbaa !282
  %189 = icmp eq i32 %180, 0
  br i1 %189, label %203, label %193

190:                                              ; preds = %178, %181
  %191 = load volatile i32, i32* inttoptr (i32 1073887344 to i32*), align 16, !tbaa !282
  %192 = or i32 %191, 1
  store volatile i32 %192, i32* inttoptr (i32 1073887344 to i32*), align 16, !tbaa !282
  br label %193

193:                                              ; preds = %190, %184
  %194 = tail call i32 @HAL_GetTick() #19
  br label %195

195:                                              ; preds = %199, %193
  %196 = load volatile i32, i32* inttoptr (i32 1073887344 to i32*), align 16, !tbaa !282
  %197 = and i32 %196, 2
  %198 = icmp eq i32 %197, 0
  br i1 %198, label %199, label %213

199:                                              ; preds = %195
  %200 = tail call i32 @HAL_GetTick() #19
  %201 = sub i32 %200, %194
  %202 = icmp ugt i32 %201, 5000
  br i1 %202, label %302, label %195, !llvm.loop !283

203:                                              ; preds = %184
  %204 = tail call i32 @HAL_GetTick() #19
  br label %205

205:                                              ; preds = %209, %203
  %206 = load volatile i32, i32* inttoptr (i32 1073887344 to i32*), align 16, !tbaa !282
  %207 = and i32 %206, 2
  %208 = icmp eq i32 %207, 0
  br i1 %208, label %213, label %209

209:                                              ; preds = %205
  %210 = tail call i32 @HAL_GetTick() #19
  %211 = sub i32 %210, %204
  %212 = icmp ugt i32 %211, 5000
  br i1 %212, label %302, label %205, !llvm.loop !284

213:                                              ; preds = %195, %205
  br i1 %154, label %214, label %217

214:                                              ; preds = %213
  %215 = load volatile i32, i32* inttoptr (i32 1073887296 to i32*), align 64, !tbaa !26
  %216 = and i32 %215, -268435457
  store volatile i32 %216, i32* inttoptr (i32 1073887296 to i32*), align 64, !tbaa !26
  br label %217

217:                                              ; preds = %214, %213, %147
  %218 = getelementptr inbounds %struct.RCC_OscInitTypeDef, %struct.RCC_OscInitTypeDef* %0, i32 0, i32 6, i32 0
  %219 = load i32, i32* %218, align 4, !tbaa !33
  %220 = icmp eq i32 %219, 0
  br i1 %220, label %301, label %221

221:                                              ; preds = %217
  %222 = load volatile i32, i32* inttoptr (i32 1073887240 to i32*), align 8, !tbaa !43
  %223 = and i32 %222, 12
  %224 = icmp eq i32 %223, 8
  br i1 %224, label %273, label %225

225:                                              ; preds = %221
  %226 = icmp eq i32 %219, 2
  store volatile i32 0, i32* inttoptr (i32 1111949408 to i32*), align 32, !tbaa !18
  %227 = tail call i32 @HAL_GetTick() #19
  br i1 %226, label %228, label %265

228:                                              ; preds = %225, %232
  %229 = load volatile i32, i32* inttoptr (i32 1073887232 to i32*), align 2048, !tbaa !269
  %230 = and i32 %229, 33554432
  %231 = icmp eq i32 %230, 0
  br i1 %231, label %236, label %232

232:                                              ; preds = %228
  %233 = tail call i32 @HAL_GetTick() #19
  %234 = sub i32 %233, %227
  %235 = icmp ugt i32 %234, 2
  br i1 %235, label %302, label %228, !llvm.loop !285

236:                                              ; preds = %228
  %237 = getelementptr inbounds %struct.RCC_OscInitTypeDef, %struct.RCC_OscInitTypeDef* %0, i32 0, i32 6, i32 1
  %238 = load i32, i32* %237, align 4, !tbaa !34
  %239 = getelementptr inbounds %struct.RCC_OscInitTypeDef, %struct.RCC_OscInitTypeDef* %0, i32 0, i32 6, i32 2
  %240 = load i32, i32* %239, align 4, !tbaa !35
  %241 = or i32 %240, %238
  %242 = getelementptr inbounds %struct.RCC_OscInitTypeDef, %struct.RCC_OscInitTypeDef* %0, i32 0, i32 6, i32 3
  %243 = load i32, i32* %242, align 4, !tbaa !36
  %244 = shl i32 %243, 6
  %245 = or i32 %241, %244
  %246 = getelementptr inbounds %struct.RCC_OscInitTypeDef, %struct.RCC_OscInitTypeDef* %0, i32 0, i32 6, i32 4
  %247 = load i32, i32* %246, align 4, !tbaa !37
  %248 = shl i32 %247, 15
  %249 = add i32 %248, -65536
  %250 = and i32 %249, -65536
  %251 = getelementptr inbounds %struct.RCC_OscInitTypeDef, %struct.RCC_OscInitTypeDef* %0, i32 0, i32 6, i32 5
  %252 = load i32, i32* %251, align 4, !tbaa !38
  %253 = shl i32 %252, 24
  %254 = or i32 %245, %253
  %255 = or i32 %254, %250
  store volatile i32 %255, i32* inttoptr (i32 1073887236 to i32*), align 4, !tbaa !44
  store volatile i32 1, i32* inttoptr (i32 1111949408 to i32*), align 32, !tbaa !18
  %256 = tail call i32 @HAL_GetTick() #19
  br label %257

257:                                              ; preds = %261, %236
  %258 = load volatile i32, i32* inttoptr (i32 1073887232 to i32*), align 2048, !tbaa !269
  %259 = and i32 %258, 33554432
  %260 = icmp eq i32 %259, 0
  br i1 %260, label %261, label %301

261:                                              ; preds = %257
  %262 = tail call i32 @HAL_GetTick() #19
  %263 = sub i32 %262, %256
  %264 = icmp ugt i32 %263, 2
  br i1 %264, label %302, label %257, !llvm.loop !286

265:                                              ; preds = %225, %269
  %266 = load volatile i32, i32* inttoptr (i32 1073887232 to i32*), align 2048, !tbaa !269
  %267 = and i32 %266, 33554432
  %268 = icmp eq i32 %267, 0
  br i1 %268, label %301, label %269

269:                                              ; preds = %265
  %270 = tail call i32 @HAL_GetTick() #19
  %271 = sub i32 %270, %227
  %272 = icmp ugt i32 %271, 2
  br i1 %272, label %302, label %265, !llvm.loop !287

273:                                              ; preds = %221
  %274 = icmp eq i32 %219, 1
  br i1 %274, label %302, label %275

275:                                              ; preds = %273
  %276 = load volatile i32, i32* inttoptr (i32 1073887240 to i32*), align 8, !tbaa !43
  %277 = and i32 %276, 4194304
  %278 = getelementptr inbounds %struct.RCC_OscInitTypeDef, %struct.RCC_OscInitTypeDef* %0, i32 0, i32 6, i32 1
  %279 = load i32, i32* %278, align 4, !tbaa !34
  %280 = icmp eq i32 %277, %279
  br i1 %280, label %281, label %302

281:                                              ; preds = %275
  %282 = and i32 %276, 63
  %283 = getelementptr inbounds %struct.RCC_OscInitTypeDef, %struct.RCC_OscInitTypeDef* %0, i32 0, i32 6, i32 2
  %284 = load i32, i32* %283, align 4, !tbaa !35
  %285 = icmp eq i32 %282, %284
  br i1 %285, label %286, label %302

286:                                              ; preds = %281
  %287 = and i32 %276, 32704
  %288 = getelementptr inbounds %struct.RCC_OscInitTypeDef, %struct.RCC_OscInitTypeDef* %0, i32 0, i32 6, i32 3
  %289 = load i32, i32* %288, align 4, !tbaa !36
  %290 = icmp eq i32 %287, %289
  br i1 %290, label %291, label %302

291:                                              ; preds = %286
  %292 = and i32 %276, 196608
  %293 = getelementptr inbounds %struct.RCC_OscInitTypeDef, %struct.RCC_OscInitTypeDef* %0, i32 0, i32 6, i32 4
  %294 = load i32, i32* %293, align 4, !tbaa !37
  %295 = icmp eq i32 %292, %294
  br i1 %295, label %296, label %302

296:                                              ; preds = %291
  %297 = and i32 %276, 251658240
  %298 = getelementptr inbounds %struct.RCC_OscInitTypeDef, %struct.RCC_OscInitTypeDef* %0, i32 0, i32 6, i32 5
  %299 = load i32, i32* %298, align 4, !tbaa !38
  %300 = icmp eq i32 %297, %299
  br i1 %300, label %301, label %302

301:                                              ; preds = %265, %257, %296, %217
  br label %302

302:                                              ; preds = %50, %60, %98, %108, %133, %143, %174, %199, %209, %269, %232, %261, %275, %281, %286, %291, %296, %273, %84, %25, %1, %301
  %303 = phi i32 [ 0, %301 ], [ 1, %1 ], [ 1, %25 ], [ 1, %84 ], [ 1, %273 ], [ 1, %296 ], [ 1, %291 ], [ 1, %286 ], [ 1, %281 ], [ 1, %275 ], [ 3, %261 ], [ 3, %232 ], [ 3, %269 ], [ 3, %209 ], [ 3, %199 ], [ 3, %174 ], [ 3, %143 ], [ 3, %133 ], [ 3, %108 ], [ 3, %98 ], [ 3, %60 ], [ 3, %50 ]
  ret i32 %303
}

; Function Attrs: noinline nounwind optsize
define dso_local i32 @HAL_RCC_ClockConfig(%struct.GPIO_InitTypeDef* noundef readonly %0, i32 noundef %1) local_unnamed_addr #2 {
  %3 = icmp eq %struct.GPIO_InitTypeDef* %0, null
  br i1 %3, label %109, label %4

4:                                                ; preds = %2
  %5 = load volatile i32, i32* inttoptr (i32 1073888256 to i32*), align 1024, !tbaa !213
  %6 = and i32 %5, 15
  %7 = icmp ult i32 %6, %1
  br i1 %7, label %8, label %13

8:                                                ; preds = %4
  %9 = trunc i32 %1 to i8
  store volatile i8 %9, i8* inttoptr (i32 1073888256 to i8*), align 1024, !tbaa !45
  %10 = load volatile i32, i32* inttoptr (i32 1073888256 to i32*), align 1024, !tbaa !213
  %11 = and i32 %10, 15
  %12 = icmp eq i32 %11, %1
  br i1 %12, label %13, label %109

13:                                               ; preds = %8, %4
  %14 = getelementptr inbounds %struct.GPIO_InitTypeDef, %struct.GPIO_InitTypeDef* %0, i32 0, i32 0
  %15 = load i32, i32* %14, align 4, !tbaa !21
  %16 = and i32 %15, 2
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %36, label %18

18:                                               ; preds = %13
  %19 = and i32 %15, 4
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %24, label %21

21:                                               ; preds = %18
  %22 = load volatile i32, i32* inttoptr (i32 1073887240 to i32*), align 8, !tbaa !43
  %23 = or i32 %22, 7168
  store volatile i32 %23, i32* inttoptr (i32 1073887240 to i32*), align 8, !tbaa !43
  br label %24

24:                                               ; preds = %21, %18
  %25 = and i32 %15, 8
  %26 = icmp eq i32 %25, 0
  br i1 %26, label %30, label %27

27:                                               ; preds = %24
  %28 = load volatile i32, i32* inttoptr (i32 1073887240 to i32*), align 8, !tbaa !43
  %29 = or i32 %28, 57344
  store volatile i32 %29, i32* inttoptr (i32 1073887240 to i32*), align 8, !tbaa !43
  br label %30

30:                                               ; preds = %27, %24
  %31 = load volatile i32, i32* inttoptr (i32 1073887240 to i32*), align 8, !tbaa !43
  %32 = and i32 %31, -241
  %33 = getelementptr inbounds %struct.GPIO_InitTypeDef, %struct.GPIO_InitTypeDef* %0, i32 0, i32 2
  %34 = load i32, i32* %33, align 4, !tbaa !24
  %35 = or i32 %32, %34
  store volatile i32 %35, i32* inttoptr (i32 1073887240 to i32*), align 8, !tbaa !43
  br label %36

36:                                               ; preds = %30, %13
  %37 = and i32 %15, 1
  %38 = icmp eq i32 %37, 0
  br i1 %38, label %69, label %39

39:                                               ; preds = %36
  %40 = getelementptr inbounds %struct.GPIO_InitTypeDef, %struct.GPIO_InitTypeDef* %0, i32 0, i32 1
  %41 = load i32, i32* %40, align 4, !tbaa !23
  switch i32 %41, label %50 [
    i32 1, label %42
    i32 2, label %46
    i32 3, label %46
  ]

42:                                               ; preds = %39
  %43 = load volatile i32, i32* inttoptr (i32 1073887232 to i32*), align 2048, !tbaa !269
  %44 = and i32 %43, 131072
  %45 = icmp eq i32 %44, 0
  br i1 %45, label %109, label %54

46:                                               ; preds = %39, %39
  %47 = load volatile i32, i32* inttoptr (i32 1073887232 to i32*), align 2048, !tbaa !269
  %48 = and i32 %47, 33554432
  %49 = icmp eq i32 %48, 0
  br i1 %49, label %109, label %54

50:                                               ; preds = %39
  %51 = load volatile i32, i32* inttoptr (i32 1073887232 to i32*), align 2048, !tbaa !269
  %52 = and i32 %51, 2
  %53 = icmp eq i32 %52, 0
  br i1 %53, label %109, label %54

54:                                               ; preds = %46, %50, %42
  %55 = load volatile i32, i32* inttoptr (i32 1073887240 to i32*), align 8, !tbaa !43
  %56 = and i32 %55, -4
  %57 = or i32 %56, %41
  store volatile i32 %57, i32* inttoptr (i32 1073887240 to i32*), align 8, !tbaa !43
  %58 = tail call i32 @HAL_GetTick() #19
  br label %59

59:                                               ; preds = %65, %54
  %60 = load volatile i32, i32* inttoptr (i32 1073887240 to i32*), align 8, !tbaa !43
  %61 = and i32 %60, 12
  %62 = load i32, i32* %40, align 4, !tbaa !23
  %63 = shl i32 %62, 2
  %64 = icmp eq i32 %61, %63
  br i1 %64, label %69, label %65

65:                                               ; preds = %59
  %66 = tail call i32 @HAL_GetTick() #19
  %67 = sub i32 %66, %58
  %68 = icmp ugt i32 %67, 5000
  br i1 %68, label %109, label %59, !llvm.loop !288

69:                                               ; preds = %59, %36
  %70 = load volatile i32, i32* inttoptr (i32 1073888256 to i32*), align 1024, !tbaa !213
  %71 = and i32 %70, 15
  %72 = icmp ugt i32 %71, %1
  br i1 %72, label %73, label %78

73:                                               ; preds = %69
  %74 = trunc i32 %1 to i8
  store volatile i8 %74, i8* inttoptr (i32 1073888256 to i8*), align 1024, !tbaa !45
  %75 = load volatile i32, i32* inttoptr (i32 1073888256 to i32*), align 1024, !tbaa !213
  %76 = and i32 %75, 15
  %77 = icmp eq i32 %76, %1
  br i1 %77, label %78, label %109

78:                                               ; preds = %73, %69
  %79 = load i32, i32* %14, align 4, !tbaa !21
  %80 = and i32 %79, 4
  %81 = icmp eq i32 %80, 0
  br i1 %81, label %88, label %82

82:                                               ; preds = %78
  %83 = load volatile i32, i32* inttoptr (i32 1073887240 to i32*), align 8, !tbaa !43
  %84 = and i32 %83, -7169
  %85 = getelementptr inbounds %struct.GPIO_InitTypeDef, %struct.GPIO_InitTypeDef* %0, i32 0, i32 3
  %86 = load i32, i32* %85, align 4, !tbaa !25
  %87 = or i32 %84, %86
  store volatile i32 %87, i32* inttoptr (i32 1073887240 to i32*), align 8, !tbaa !43
  br label %88

88:                                               ; preds = %82, %78
  %89 = and i32 %79, 8
  %90 = icmp eq i32 %89, 0
  br i1 %90, label %98, label %91

91:                                               ; preds = %88
  %92 = load volatile i32, i32* inttoptr (i32 1073887240 to i32*), align 8, !tbaa !43
  %93 = and i32 %92, -57345
  %94 = getelementptr inbounds %struct.GPIO_InitTypeDef, %struct.GPIO_InitTypeDef* %0, i32 0, i32 4
  %95 = load i32, i32* %94, align 4, !tbaa !39
  %96 = shl i32 %95, 3
  %97 = or i32 %96, %93
  store volatile i32 %97, i32* inttoptr (i32 1073887240 to i32*), align 8, !tbaa !43
  br label %98

98:                                               ; preds = %91, %88
  %99 = tail call i32 @HAL_RCC_GetSysClockFreq() #20
  %100 = load volatile i32, i32* inttoptr (i32 1073887240 to i32*), align 8, !tbaa !43
  %101 = lshr i32 %100, 4
  %102 = and i32 %101, 15
  %103 = getelementptr inbounds [16 x i8], [16 x i8]* @AHBPrescTable, i32 0, i32 %102
  %104 = load i8, i8* %103, align 1, !tbaa !45
  %105 = zext i8 %104 to i32
  %106 = lshr i32 %99, %105
  store i32 %106, i32* @SystemCoreClock, align 4, !tbaa !18
  %107 = load i32, i32* @uwTickPrio, align 4, !tbaa !18
  %108 = tail call i32 @HAL_InitTick(i32 noundef %107) #19
  br label %109

109:                                              ; preds = %65, %73, %50, %46, %42, %8, %2, %98
  %110 = phi i32 [ 0, %98 ], [ 1, %2 ], [ 1, %8 ], [ 1, %42 ], [ 1, %46 ], [ 1, %50 ], [ 1, %73 ], [ 3, %65 ]
  ret i32 %110
}

; Function Attrs: noinline nounwind optsize
define weak dso_local i32 @HAL_RCC_GetSysClockFreq() local_unnamed_addr #2 {
  %1 = load volatile i32, i32* inttoptr (i32 1073887240 to i32*), align 8, !tbaa !43
  %2 = and i32 %1, 12
  switch i32 %2, label %29 [
    i32 8, label %4
    i32 4, label %3
  ]

3:                                                ; preds = %0
  br label %29

4:                                                ; preds = %0
  %5 = load volatile i32, i32* inttoptr (i32 1073887236 to i32*), align 4, !tbaa !44
  %6 = and i32 %5, 63
  %7 = load volatile i32, i32* inttoptr (i32 1073887236 to i32*), align 4, !tbaa !44
  %8 = and i32 %7, 4194304
  %9 = icmp eq i32 %8, 0
  %10 = load volatile i32, i32* inttoptr (i32 1073887236 to i32*), align 4, !tbaa !44
  %11 = lshr i32 %10, 6
  %12 = and i32 %11, 511
  br i1 %9, label %16, label %13

13:                                               ; preds = %4
  %14 = mul nuw i32 %12, 8000000
  %15 = udiv i32 %14, %6
  br label %22

16:                                               ; preds = %4
  %17 = zext i32 %12 to i64
  %18 = mul nuw nsw i64 %17, 16000000
  %19 = zext i32 %6 to i64
  %20 = udiv i64 %18, %19
  %21 = trunc i64 %20 to i32
  br label %22

22:                                               ; preds = %16, %13
  %23 = phi i32 [ %15, %13 ], [ %21, %16 ]
  %24 = load volatile i32, i32* inttoptr (i32 1073887236 to i32*), align 4, !tbaa !44
  %25 = lshr i32 %24, 15
  %26 = and i32 %25, 6
  %27 = add nuw nsw i32 %26, 2
  %28 = udiv i32 %23, %27
  br label %29

29:                                               ; preds = %0, %22, %3
  %30 = phi i32 [ %28, %22 ], [ 8000000, %3 ], [ 16000000, %0 ]
  ret i32 %30
}

; Function Attrs: noinline nounwind optsize
define dso_local void @HAL_RCC_MCOConfig(i32 noundef %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #2 {
  %4 = alloca %struct.GPIO_InitTypeDef, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = bitcast %struct.GPIO_InitTypeDef* %4 to i8*
  call void @llvm.lifetime.start.p0i8(i64 20, i8* nonnull %7) #21
  %8 = icmp eq i32 %0, 0
  br i1 %8, label %9, label %23

9:                                                ; preds = %3
  %10 = bitcast i32* %5 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %10)
  store volatile i32 0, i32* %5, align 4, !tbaa !18
  %11 = load volatile i32, i32* inttoptr (i32 1073887280 to i32*), align 16, !tbaa !19
  %12 = or i32 %11, 1
  store volatile i32 %12, i32* inttoptr (i32 1073887280 to i32*), align 16, !tbaa !19
  %13 = load volatile i32, i32* inttoptr (i32 1073887280 to i32*), align 16, !tbaa !19
  %14 = and i32 %13, 1
  store volatile i32 %14, i32* %5, align 4, !tbaa !18
  %15 = load volatile i32, i32* %5, align 4, !tbaa !18
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %10)
  %16 = getelementptr inbounds %struct.GPIO_InitTypeDef, %struct.GPIO_InitTypeDef* %4, i32 0, i32 0
  store i32 256, i32* %16, align 4, !tbaa !21
  %17 = getelementptr inbounds %struct.GPIO_InitTypeDef, %struct.GPIO_InitTypeDef* %4, i32 0, i32 1
  store i32 2, i32* %17, align 4, !tbaa !23
  %18 = getelementptr inbounds %struct.GPIO_InitTypeDef, %struct.GPIO_InitTypeDef* %4, i32 0, i32 3
  store i32 3, i32* %18, align 4, !tbaa !25
  %19 = getelementptr inbounds %struct.GPIO_InitTypeDef, %struct.GPIO_InitTypeDef* %4, i32 0, i32 2
  store i32 0, i32* %19, align 4, !tbaa !24
  %20 = getelementptr inbounds %struct.GPIO_InitTypeDef, %struct.GPIO_InitTypeDef* %4, i32 0, i32 4
  store i32 0, i32* %20, align 4, !tbaa !39
  call void @HAL_GPIO_Init(%struct.GPIO_TypeDef* noundef nonnull inttoptr (i32 1073872896 to %struct.GPIO_TypeDef*), %struct.GPIO_InitTypeDef* noundef nonnull %4) #19
  %21 = load volatile i32, i32* inttoptr (i32 1073887240 to i32*), align 8, !tbaa !43
  %22 = and i32 %21, -123731969
  br label %38

23:                                               ; preds = %3
  %24 = bitcast i32* %6 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %24)
  store volatile i32 0, i32* %6, align 4, !tbaa !18
  %25 = load volatile i32, i32* inttoptr (i32 1073887280 to i32*), align 16, !tbaa !19
  %26 = or i32 %25, 4
  store volatile i32 %26, i32* inttoptr (i32 1073887280 to i32*), align 16, !tbaa !19
  %27 = load volatile i32, i32* inttoptr (i32 1073887280 to i32*), align 16, !tbaa !19
  %28 = and i32 %27, 4
  store volatile i32 %28, i32* %6, align 4, !tbaa !18
  %29 = load volatile i32, i32* %6, align 4, !tbaa !18
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %24)
  %30 = getelementptr inbounds %struct.GPIO_InitTypeDef, %struct.GPIO_InitTypeDef* %4, i32 0, i32 0
  store i32 512, i32* %30, align 4, !tbaa !21
  %31 = getelementptr inbounds %struct.GPIO_InitTypeDef, %struct.GPIO_InitTypeDef* %4, i32 0, i32 1
  store i32 2, i32* %31, align 4, !tbaa !23
  %32 = getelementptr inbounds %struct.GPIO_InitTypeDef, %struct.GPIO_InitTypeDef* %4, i32 0, i32 3
  store i32 3, i32* %32, align 4, !tbaa !25
  %33 = getelementptr inbounds %struct.GPIO_InitTypeDef, %struct.GPIO_InitTypeDef* %4, i32 0, i32 2
  store i32 0, i32* %33, align 4, !tbaa !24
  %34 = getelementptr inbounds %struct.GPIO_InitTypeDef, %struct.GPIO_InitTypeDef* %4, i32 0, i32 4
  store i32 0, i32* %34, align 4, !tbaa !39
  call void @HAL_GPIO_Init(%struct.GPIO_TypeDef* noundef nonnull inttoptr (i32 1073874944 to %struct.GPIO_TypeDef*), %struct.GPIO_InitTypeDef* noundef nonnull %4) #19
  %35 = load volatile i32, i32* inttoptr (i32 1073887240 to i32*), align 8, !tbaa !43
  %36 = and i32 %35, 134217727
  %37 = shl i32 %2, 3
  br label %38

38:                                               ; preds = %23, %9
  %39 = phi i32 [ %37, %23 ], [ %2, %9 ]
  %40 = phi i32 [ %36, %23 ], [ %22, %9 ]
  %41 = or i32 %39, %1
  %42 = or i32 %41, %40
  store volatile i32 %42, i32* inttoptr (i32 1073887240 to i32*), align 8, !tbaa !43
  call void @llvm.lifetime.end.p0i8(i64 20, i8* nonnull %7) #21
  ret void
}

; Function Attrs: nofree noinline norecurse nounwind optsize
define dso_local void @HAL_RCC_EnableCSS() local_unnamed_addr #6 {
  store volatile i32 1, i32* inttoptr (i32 1111949388 to i32*), align 4, !tbaa !18
  ret void
}

; Function Attrs: nofree noinline norecurse nounwind optsize
define dso_local void @HAL_RCC_DisableCSS() local_unnamed_addr #6 {
  store volatile i32 0, i32* inttoptr (i32 1111949388 to i32*), align 4, !tbaa !18
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize readonly willreturn
define dso_local i32 @HAL_RCC_GetHCLKFreq() local_unnamed_addr #9 {
  %1 = load i32, i32* @SystemCoreClock, align 4, !tbaa !18
  ret i32 %1
}

; Function Attrs: mustprogress nofree noinline norecurse nounwind optsize willreturn
define dso_local i32 @HAL_RCC_GetPCLK1Freq() local_unnamed_addr #7 {
  %1 = tail call i32 @HAL_RCC_GetHCLKFreq() #20
  %2 = load volatile i32, i32* inttoptr (i32 1073887240 to i32*), align 8, !tbaa !43
  %3 = lshr i32 %2, 10
  %4 = and i32 %3, 7
  %5 = getelementptr inbounds [8 x i8], [8 x i8]* @APBPrescTable, i32 0, i32 %4
  %6 = load i8, i8* %5, align 1, !tbaa !45
  %7 = zext i8 %6 to i32
  %8 = lshr i32 %1, %7
  ret i32 %8
}

; Function Attrs: mustprogress nofree noinline norecurse nounwind optsize willreturn
define dso_local i32 @HAL_RCC_GetPCLK2Freq() local_unnamed_addr #7 {
  %1 = tail call i32 @HAL_RCC_GetHCLKFreq() #20
  %2 = load volatile i32, i32* inttoptr (i32 1073887240 to i32*), align 8, !tbaa !43
  %3 = lshr i32 %2, 13
  %4 = and i32 %3, 7
  %5 = getelementptr inbounds [8 x i8], [8 x i8]* @APBPrescTable, i32 0, i32 %4
  %6 = load i8, i8* %5, align 1, !tbaa !45
  %7 = zext i8 %6 to i32
  %8 = lshr i32 %1, %7
  ret i32 %8
}

; Function Attrs: noinline nounwind optsize
define weak dso_local void @HAL_RCC_GetOscConfig(%struct.RCC_OscInitTypeDef* noundef %0) local_unnamed_addr #2 {
  %2 = getelementptr inbounds %struct.RCC_OscInitTypeDef, %struct.RCC_OscInitTypeDef* %0, i32 0, i32 0
  store i32 15, i32* %2, align 4, !tbaa !29
  %3 = load volatile i32, i32* inttoptr (i32 1073887232 to i32*), align 2048, !tbaa !269
  %4 = and i32 %3, 262144
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %8, label %6

6:                                                ; preds = %1
  %7 = getelementptr inbounds %struct.RCC_OscInitTypeDef, %struct.RCC_OscInitTypeDef* %0, i32 0, i32 1
  store i32 327680, i32* %7, align 4, !tbaa !32
  br label %15

8:                                                ; preds = %1
  %9 = load volatile i32, i32* inttoptr (i32 1073887232 to i32*), align 2048, !tbaa !269
  %10 = and i32 %9, 65536
  %11 = icmp eq i32 %10, 0
  %12 = getelementptr inbounds %struct.RCC_OscInitTypeDef, %struct.RCC_OscInitTypeDef* %0, i32 0, i32 1
  br i1 %11, label %14, label %13

13:                                               ; preds = %8
  store i32 65536, i32* %12, align 4, !tbaa !32
  br label %15

14:                                               ; preds = %8
  store i32 0, i32* %12, align 4, !tbaa !32
  br label %15

15:                                               ; preds = %13, %14, %6
  %16 = load volatile i32, i32* inttoptr (i32 1073887232 to i32*), align 2048, !tbaa !269
  %17 = and i32 %16, 1
  %18 = getelementptr inbounds %struct.RCC_OscInitTypeDef, %struct.RCC_OscInitTypeDef* %0, i32 0, i32 3
  store i32 %17, i32* %18, align 4
  %19 = load volatile i32, i32* inttoptr (i32 1073887232 to i32*), align 2048, !tbaa !269
  %20 = lshr i32 %19, 3
  %21 = and i32 %20, 31
  %22 = getelementptr inbounds %struct.RCC_OscInitTypeDef, %struct.RCC_OscInitTypeDef* %0, i32 0, i32 4
  store i32 %21, i32* %22, align 4, !tbaa !275
  %23 = load volatile i32, i32* inttoptr (i32 1073887344 to i32*), align 16, !tbaa !282
  %24 = and i32 %23, 4
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %28, label %26

26:                                               ; preds = %15
  %27 = getelementptr inbounds %struct.RCC_OscInitTypeDef, %struct.RCC_OscInitTypeDef* %0, i32 0, i32 2
  store i32 5, i32* %27, align 4, !tbaa !281
  br label %35

28:                                               ; preds = %15
  %29 = load volatile i32, i32* inttoptr (i32 1073887344 to i32*), align 16, !tbaa !282
  %30 = and i32 %29, 1
  %31 = icmp eq i32 %30, 0
  %32 = getelementptr inbounds %struct.RCC_OscInitTypeDef, %struct.RCC_OscInitTypeDef* %0, i32 0, i32 2
  br i1 %31, label %34, label %33

33:                                               ; preds = %28
  store i32 1, i32* %32, align 4, !tbaa !281
  br label %35

34:                                               ; preds = %28
  store i32 0, i32* %32, align 4, !tbaa !281
  br label %35

35:                                               ; preds = %33, %34, %26
  %36 = load volatile i32, i32* inttoptr (i32 1073887348 to i32*), align 4, !tbaa !277
  %37 = and i32 %36, 1
  %38 = getelementptr inbounds %struct.RCC_OscInitTypeDef, %struct.RCC_OscInitTypeDef* %0, i32 0, i32 5
  store i32 %37, i32* %38, align 4
  %39 = load volatile i32, i32* inttoptr (i32 1073887232 to i32*), align 2048, !tbaa !269
  %40 = and i32 %39, 16777216
  %41 = icmp eq i32 %40, 0
  %42 = select i1 %41, i32 1, i32 2
  %43 = getelementptr inbounds %struct.RCC_OscInitTypeDef, %struct.RCC_OscInitTypeDef* %0, i32 0, i32 6, i32 0
  store i32 %42, i32* %43, align 4
  %44 = load volatile i32, i32* inttoptr (i32 1073887236 to i32*), align 4, !tbaa !44
  %45 = and i32 %44, 4194304
  %46 = getelementptr inbounds %struct.RCC_OscInitTypeDef, %struct.RCC_OscInitTypeDef* %0, i32 0, i32 6, i32 1
  store i32 %45, i32* %46, align 4, !tbaa !34
  %47 = load volatile i32, i32* inttoptr (i32 1073887236 to i32*), align 4, !tbaa !44
  %48 = and i32 %47, 63
  %49 = getelementptr inbounds %struct.RCC_OscInitTypeDef, %struct.RCC_OscInitTypeDef* %0, i32 0, i32 6, i32 2
  store i32 %48, i32* %49, align 4, !tbaa !35
  %50 = load volatile i32, i32* inttoptr (i32 1073887236 to i32*), align 4, !tbaa !44
  %51 = lshr i32 %50, 6
  %52 = and i32 %51, 511
  %53 = getelementptr inbounds %struct.RCC_OscInitTypeDef, %struct.RCC_OscInitTypeDef* %0, i32 0, i32 6, i32 3
  store i32 %52, i32* %53, align 4, !tbaa !36
  %54 = load volatile i32, i32* inttoptr (i32 1073887236 to i32*), align 4, !tbaa !44
  %55 = shl i32 %54, 1
  %56 = and i32 %55, 393216
  %57 = add nuw nsw i32 %56, 131072
  %58 = lshr exact i32 %57, 16
  %59 = getelementptr inbounds %struct.RCC_OscInitTypeDef, %struct.RCC_OscInitTypeDef* %0, i32 0, i32 6, i32 4
  store i32 %58, i32* %59, align 4, !tbaa !37
  %60 = load volatile i32, i32* inttoptr (i32 1073887236 to i32*), align 4, !tbaa !44
  %61 = lshr i32 %60, 24
  %62 = and i32 %61, 15
  %63 = getelementptr inbounds %struct.RCC_OscInitTypeDef, %struct.RCC_OscInitTypeDef* %0, i32 0, i32 6, i32 5
  store i32 %62, i32* %63, align 4, !tbaa !38
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nounwind optsize willreturn
define dso_local void @HAL_RCC_GetClockConfig(%struct.GPIO_InitTypeDef* nocapture noundef writeonly %0, i32* nocapture noundef writeonly %1) local_unnamed_addr #7 {
  %3 = getelementptr inbounds %struct.GPIO_InitTypeDef, %struct.GPIO_InitTypeDef* %0, i32 0, i32 0
  store i32 15, i32* %3, align 4, !tbaa !21
  %4 = load volatile i32, i32* inttoptr (i32 1073887240 to i32*), align 8, !tbaa !43
  %5 = and i32 %4, 3
  %6 = getelementptr inbounds %struct.GPIO_InitTypeDef, %struct.GPIO_InitTypeDef* %0, i32 0, i32 1
  store i32 %5, i32* %6, align 4, !tbaa !23
  %7 = load volatile i32, i32* inttoptr (i32 1073887240 to i32*), align 8, !tbaa !43
  %8 = and i32 %7, 240
  %9 = getelementptr inbounds %struct.GPIO_InitTypeDef, %struct.GPIO_InitTypeDef* %0, i32 0, i32 2
  store i32 %8, i32* %9, align 4, !tbaa !24
  %10 = load volatile i32, i32* inttoptr (i32 1073887240 to i32*), align 8, !tbaa !43
  %11 = and i32 %10, 7168
  %12 = getelementptr inbounds %struct.GPIO_InitTypeDef, %struct.GPIO_InitTypeDef* %0, i32 0, i32 3
  store i32 %11, i32* %12, align 4, !tbaa !25
  %13 = load volatile i32, i32* inttoptr (i32 1073887240 to i32*), align 8, !tbaa !43
  %14 = lshr i32 %13, 3
  %15 = and i32 %14, 7168
  %16 = getelementptr inbounds %struct.GPIO_InitTypeDef, %struct.GPIO_InitTypeDef* %0, i32 0, i32 4
  store i32 %15, i32* %16, align 4, !tbaa !39
  %17 = load volatile i32, i32* inttoptr (i32 1073888256 to i32*), align 1024, !tbaa !213
  %18 = and i32 %17, 15
  store i32 %18, i32* %1, align 4, !tbaa !18
  ret void
}

; Function Attrs: noinline nounwind optsize
define dso_local void @HAL_RCC_NMI_IRQHandler() local_unnamed_addr #2 {
  %1 = load volatile i32, i32* inttoptr (i32 1073887244 to i32*), align 4, !tbaa !289
  %2 = and i32 %1, 128
  %3 = icmp eq i32 %2, 0
  br i1 %3, label %5, label %4

4:                                                ; preds = %0
  tail call void @HAL_RCC_CSSCallback() #20
  store volatile i8 -128, i8* inttoptr (i32 1073887246 to i8*), align 2, !tbaa !45
  br label %5

5:                                                ; preds = %4, %0
  ret void
}

; Function Attrs: noinline nounwind optsize
define weak dso_local void @HAL_RCC_CSSCallback() local_unnamed_addr #2 {
  ret void
}

; Function Attrs: noinline nounwind optsize
define dso_local zeroext i8 @SomethingSimple(i8 noundef zeroext %0, i8 noundef zeroext %1) local_unnamed_addr #2 {
  %3 = add i8 %1, %0
  %4 = tail call zeroext i8 @add(i8 noundef zeroext 1, i8 noundef zeroext 2) #19
  %5 = add i8 %3, %4
  ret i8 %5
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize readnone willreturn
define dso_local zeroext i8 @AnotherSimpleThing() local_unnamed_addr #5 {
  ret i8 2
}

attributes #0 = { noinline noreturn nounwind optsize "frame-pointer"="none" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="cortex-m4" "target-features"="+armv7e-m,+dsp,+fp16,+hwdiv,+strict-align,+thumb-mode,+vfp2sp,+vfp3d16sp,+vfp4d16sp,-aes,-bf16,-cdecp0,-cdecp1,-cdecp2,-cdecp3,-cdecp4,-cdecp5,-cdecp6,-cdecp7,-crc,-crypto,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16fml,-fp64,-fullfp16,-hwdiv-arm,-i8mm,-lob,-mve,-mve.fp,-neon,-pacbti,-ras,-sb,-sha2,-vfp2,-vfp3,-vfp3d16,-vfp3sp,-vfp4,-vfp4d16,-vfp4sp" }
attributes #1 = { optsize "frame-pointer"="none" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="cortex-m4" "target-features"="+armv7e-m,+dsp,+fp16,+hwdiv,+strict-align,+thumb-mode,+vfp2sp,+vfp3d16sp,+vfp4d16sp,-aes,-bf16,-cdecp0,-cdecp1,-cdecp2,-cdecp3,-cdecp4,-cdecp5,-cdecp6,-cdecp7,-crc,-crypto,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16fml,-fp64,-fullfp16,-hwdiv-arm,-i8mm,-lob,-mve,-mve.fp,-neon,-pacbti,-ras,-sb,-sha2,-vfp2,-vfp3,-vfp3d16,-vfp3sp,-vfp4,-vfp4d16,-vfp4sp" }
attributes #2 = { noinline nounwind optsize "frame-pointer"="none" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="cortex-m4" "target-features"="+armv7e-m,+dsp,+fp16,+hwdiv,+strict-align,+thumb-mode,+vfp2sp,+vfp3d16sp,+vfp4d16sp,-aes,-bf16,-cdecp0,-cdecp1,-cdecp2,-cdecp3,-cdecp4,-cdecp5,-cdecp6,-cdecp7,-crc,-crypto,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16fml,-fp64,-fullfp16,-hwdiv-arm,-i8mm,-lob,-mve,-mve.fp,-neon,-pacbti,-ras,-sb,-sha2,-vfp2,-vfp3,-vfp3d16,-vfp3sp,-vfp4,-vfp4d16,-vfp4sp" }
attributes #3 = { argmemonly nofree nosync nounwind willreturn }
attributes #4 = { argmemonly nofree nounwind willreturn writeonly }
attributes #5 = { mustprogress nofree noinline norecurse nosync nounwind optsize readnone willreturn "frame-pointer"="none" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="cortex-m4" "target-features"="+armv7e-m,+dsp,+fp16,+hwdiv,+strict-align,+thumb-mode,+vfp2sp,+vfp3d16sp,+vfp4d16sp,-aes,-bf16,-cdecp0,-cdecp1,-cdecp2,-cdecp3,-cdecp4,-cdecp5,-cdecp6,-cdecp7,-crc,-crypto,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16fml,-fp64,-fullfp16,-hwdiv-arm,-i8mm,-lob,-mve,-mve.fp,-neon,-pacbti,-ras,-sb,-sha2,-vfp2,-vfp3,-vfp3d16,-vfp3sp,-vfp4,-vfp4d16,-vfp4sp" }
attributes #6 = { nofree noinline norecurse nounwind optsize "frame-pointer"="none" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="cortex-m4" "target-features"="+armv7e-m,+dsp,+fp16,+hwdiv,+strict-align,+thumb-mode,+vfp2sp,+vfp3d16sp,+vfp4d16sp,-aes,-bf16,-cdecp0,-cdecp1,-cdecp2,-cdecp3,-cdecp4,-cdecp5,-cdecp6,-cdecp7,-crc,-crypto,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16fml,-fp64,-fullfp16,-hwdiv-arm,-i8mm,-lob,-mve,-mve.fp,-neon,-pacbti,-ras,-sb,-sha2,-vfp2,-vfp3,-vfp3d16,-vfp3sp,-vfp4,-vfp4d16,-vfp4sp" }
attributes #7 = { mustprogress nofree noinline norecurse nounwind optsize willreturn "frame-pointer"="none" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="cortex-m4" "target-features"="+armv7e-m,+dsp,+fp16,+hwdiv,+strict-align,+thumb-mode,+vfp2sp,+vfp3d16sp,+vfp4d16sp,-aes,-bf16,-cdecp0,-cdecp1,-cdecp2,-cdecp3,-cdecp4,-cdecp5,-cdecp6,-cdecp7,-crc,-crypto,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16fml,-fp64,-fullfp16,-hwdiv-arm,-i8mm,-lob,-mve,-mve.fp,-neon,-pacbti,-ras,-sb,-sha2,-vfp2,-vfp3,-vfp3d16,-vfp3sp,-vfp4,-vfp4d16,-vfp4sp" }
attributes #8 = { nofree noinline norecurse nosync nounwind optsize readonly "frame-pointer"="none" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="cortex-m4" "target-features"="+armv7e-m,+dsp,+fp16,+hwdiv,+strict-align,+thumb-mode,+vfp2sp,+vfp3d16sp,+vfp4d16sp,-aes,-bf16,-cdecp0,-cdecp1,-cdecp2,-cdecp3,-cdecp4,-cdecp5,-cdecp6,-cdecp7,-crc,-crypto,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16fml,-fp64,-fullfp16,-hwdiv-arm,-i8mm,-lob,-mve,-mve.fp,-neon,-pacbti,-ras,-sb,-sha2,-vfp2,-vfp3,-vfp3d16,-vfp3sp,-vfp4,-vfp4d16,-vfp4sp" }
attributes #9 = { mustprogress nofree noinline norecurse nosync nounwind optsize readonly willreturn "frame-pointer"="none" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="cortex-m4" "target-features"="+armv7e-m,+dsp,+fp16,+hwdiv,+strict-align,+thumb-mode,+vfp2sp,+vfp3d16sp,+vfp4d16sp,-aes,-bf16,-cdecp0,-cdecp1,-cdecp2,-cdecp3,-cdecp4,-cdecp5,-cdecp6,-cdecp7,-crc,-crypto,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16fml,-fp64,-fullfp16,-hwdiv-arm,-i8mm,-lob,-mve,-mve.fp,-neon,-pacbti,-ras,-sb,-sha2,-vfp2,-vfp3,-vfp3d16,-vfp3sp,-vfp4,-vfp4d16,-vfp4sp" }
attributes #10 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn writeonly "frame-pointer"="none" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="cortex-m4" "target-features"="+armv7e-m,+dsp,+fp16,+hwdiv,+strict-align,+thumb-mode,+vfp2sp,+vfp3d16sp,+vfp4d16sp,-aes,-bf16,-cdecp0,-cdecp1,-cdecp2,-cdecp3,-cdecp4,-cdecp5,-cdecp6,-cdecp7,-crc,-crypto,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16fml,-fp64,-fullfp16,-hwdiv-arm,-i8mm,-lob,-mve,-mve.fp,-neon,-pacbti,-ras,-sb,-sha2,-vfp2,-vfp3,-vfp3d16,-vfp3sp,-vfp4,-vfp4d16,-vfp4sp" }
attributes #11 = { naked noinline nounwind optsize "frame-pointer"="none" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="cortex-m4" "target-features"="+armv7e-m,+dsp,+fp16,+hwdiv,+strict-align,+thumb-mode,+vfp2sp,+vfp3d16sp,+vfp4d16sp,-aes,-bf16,-cdecp0,-cdecp1,-cdecp2,-cdecp3,-cdecp4,-cdecp5,-cdecp6,-cdecp7,-crc,-crypto,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16fml,-fp64,-fullfp16,-hwdiv-arm,-i8mm,-lob,-mve,-mve.fp,-neon,-pacbti,-ras,-sb,-sha2,-vfp2,-vfp3,-vfp3d16,-vfp3sp,-vfp4,-vfp4d16,-vfp4sp" }
attributes #12 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn "frame-pointer"="none" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="cortex-m4" "target-features"="+armv7e-m,+dsp,+fp16,+hwdiv,+strict-align,+thumb-mode,+vfp2sp,+vfp3d16sp,+vfp4d16sp,-aes,-bf16,-cdecp0,-cdecp1,-cdecp2,-cdecp3,-cdecp4,-cdecp5,-cdecp6,-cdecp7,-crc,-crypto,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16fml,-fp64,-fullfp16,-hwdiv-arm,-i8mm,-lob,-mve,-mve.fp,-neon,-pacbti,-ras,-sb,-sha2,-vfp2,-vfp3,-vfp3d16,-vfp3sp,-vfp4,-vfp4d16,-vfp4sp" }
attributes #13 = { nofree noinline norecurse nosync nounwind optsize "frame-pointer"="none" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="cortex-m4" "target-features"="+armv7e-m,+dsp,+fp16,+hwdiv,+strict-align,+thumb-mode,+vfp2sp,+vfp3d16sp,+vfp4d16sp,-aes,-bf16,-cdecp0,-cdecp1,-cdecp2,-cdecp3,-cdecp4,-cdecp5,-cdecp6,-cdecp7,-crc,-crypto,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16fml,-fp64,-fullfp16,-hwdiv-arm,-i8mm,-lob,-mve,-mve.fp,-neon,-pacbti,-ras,-sb,-sha2,-vfp2,-vfp3,-vfp3d16,-vfp3sp,-vfp4,-vfp4d16,-vfp4sp" }
attributes #14 = { nofree noinline nounwind optsize "frame-pointer"="none" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="cortex-m4" "target-features"="+armv7e-m,+dsp,+fp16,+hwdiv,+strict-align,+thumb-mode,+vfp2sp,+vfp3d16sp,+vfp4d16sp,-aes,-bf16,-cdecp0,-cdecp1,-cdecp2,-cdecp3,-cdecp4,-cdecp5,-cdecp6,-cdecp7,-crc,-crypto,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16fml,-fp64,-fullfp16,-hwdiv-arm,-i8mm,-lob,-mve,-mve.fp,-neon,-pacbti,-ras,-sb,-sha2,-vfp2,-vfp3,-vfp3d16,-vfp3sp,-vfp4,-vfp4d16,-vfp4sp" }
attributes #15 = { mustprogress nofree noinline nosync nounwind optsize readnone willreturn "frame-pointer"="none" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="cortex-m4" "target-features"="+armv7e-m,+dsp,+fp16,+hwdiv,+strict-align,+thumb-mode,+vfp2sp,+vfp3d16sp,+vfp4d16sp,-aes,-bf16,-cdecp0,-cdecp1,-cdecp2,-cdecp3,-cdecp4,-cdecp5,-cdecp6,-cdecp7,-crc,-crypto,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16fml,-fp64,-fullfp16,-hwdiv-arm,-i8mm,-lob,-mve,-mve.fp,-neon,-pacbti,-ras,-sb,-sha2,-vfp2,-vfp3,-vfp3d16,-vfp3sp,-vfp4,-vfp4d16,-vfp4sp" }
attributes #16 = { nofree nosync nounwind readnone speculatable willreturn }
attributes #17 = { mustprogress nofree noinline nounwind optsize willreturn "frame-pointer"="none" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="cortex-m4" "target-features"="+armv7e-m,+dsp,+fp16,+hwdiv,+strict-align,+thumb-mode,+vfp2sp,+vfp3d16sp,+vfp4d16sp,-aes,-bf16,-cdecp0,-cdecp1,-cdecp2,-cdecp3,-cdecp4,-cdecp5,-cdecp6,-cdecp7,-crc,-crypto,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16fml,-fp64,-fullfp16,-hwdiv-arm,-i8mm,-lob,-mve,-mve.fp,-neon,-pacbti,-ras,-sb,-sha2,-vfp2,-vfp3,-vfp3d16,-vfp3sp,-vfp4,-vfp4d16,-vfp4sp" }
attributes #18 = { mustprogress nofree noinline nosync nounwind optsize willreturn writeonly "frame-pointer"="none" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="cortex-m4" "target-features"="+armv7e-m,+dsp,+fp16,+hwdiv,+strict-align,+thumb-mode,+vfp2sp,+vfp3d16sp,+vfp4d16sp,-aes,-bf16,-cdecp0,-cdecp1,-cdecp2,-cdecp3,-cdecp4,-cdecp5,-cdecp6,-cdecp7,-crc,-crypto,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16fml,-fp64,-fullfp16,-hwdiv-arm,-i8mm,-lob,-mve,-mve.fp,-neon,-pacbti,-ras,-sb,-sha2,-vfp2,-vfp3,-vfp3d16,-vfp3sp,-vfp4,-vfp4d16,-vfp4sp" }
attributes #19 = { nobuiltin nounwind optsize "no-builtins" }
attributes #20 = { nobuiltin optsize "no-builtins" }
attributes #21 = { nounwind }
attributes #22 = { nobuiltin noreturn optsize "no-builtins" }

!llvm.ident = !{!0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0}
!llvm.module.flags = !{!1, !2, !3, !4, !5, !6}

!0 = !{!"Ubuntu clang version 14.0.6"}
!1 = !{i32 1, !"wchar_size", i32 4}
!2 = !{i32 1, !"min_enum_size", i32 4}
!3 = !{i32 1, !"branch-target-enforcement", i32 0}
!4 = !{i32 1, !"sign-return-address", i32 0}
!5 = !{i32 1, !"sign-return-address-all", i32 0}
!6 = !{i32 1, !"sign-return-address-with-bkey", i32 0}
!7 = !{!8, !8, i64 0}
!8 = !{!"any pointer", !9, i64 0}
!9 = !{!"omnipotent char", !10, i64 0}
!10 = !{!"Simple C/C++ TBAA"}
!11 = !{!12, !8, i64 8}
!12 = !{!"_reent", !13, i64 0, !8, i64 4, !8, i64 8, !8, i64 12, !13, i64 16, !9, i64 20, !13, i64 48, !8, i64 52, !13, i64 56, !8, i64 60, !8, i64 64, !13, i64 68, !8, i64 72, !8, i64 76, !13, i64 80, !8, i64 84, !9, i64 88, !8, i64 328, !14, i64 332, !8, i64 732, !17, i64 736, !9, i64 748}
!13 = !{!"int", !9, i64 0}
!14 = !{!"_atexit", !8, i64 0, !13, i64 4, !9, i64 8, !15, i64 136}
!15 = !{!"_on_exit_args", !9, i64 0, !9, i64 128, !16, i64 256, !16, i64 260}
!16 = !{!"long", !9, i64 0}
!17 = !{!"_glue", !8, i64 0, !13, i64 4, !8, i64 8}
!18 = !{!13, !13, i64 0}
!19 = !{!20, !13, i64 48}
!20 = !{!"", !13, i64 0, !13, i64 4, !13, i64 8, !13, i64 12, !13, i64 16, !13, i64 20, !13, i64 24, !13, i64 28, !13, i64 32, !13, i64 36, !9, i64 40, !13, i64 48, !13, i64 52, !13, i64 56, !13, i64 60, !13, i64 64, !13, i64 68, !9, i64 72, !13, i64 80, !13, i64 84, !13, i64 88, !13, i64 92, !13, i64 96, !13, i64 100, !9, i64 104, !13, i64 112, !13, i64 116, !9, i64 120, !13, i64 128, !13, i64 132, !13, i64 136, !13, i64 140}
!21 = !{!22, !13, i64 0}
!22 = !{!"", !13, i64 0, !13, i64 4, !13, i64 8, !13, i64 12, !13, i64 16}
!23 = !{!22, !13, i64 4}
!24 = !{!22, !13, i64 8}
!25 = !{!22, !13, i64 12}
!26 = !{!20, !13, i64 64}
!27 = !{!28, !13, i64 0}
!28 = !{!"", !13, i64 0, !13, i64 4}
!29 = !{!30, !13, i64 0}
!30 = !{!"", !13, i64 0, !13, i64 4, !13, i64 8, !13, i64 12, !13, i64 16, !13, i64 20, !31, i64 24}
!31 = !{!"", !13, i64 0, !13, i64 4, !13, i64 8, !13, i64 12, !13, i64 16, !13, i64 20}
!32 = !{!30, !13, i64 4}
!33 = !{!30, !13, i64 24}
!34 = !{!30, !13, i64 28}
!35 = !{!30, !13, i64 32}
!36 = !{!30, !13, i64 36}
!37 = !{!30, !13, i64 40}
!38 = !{!30, !13, i64 44}
!39 = !{!22, !13, i64 16}
!40 = !{!41, !13, i64 136}
!41 = !{!"", !13, i64 0, !13, i64 4, !13, i64 8, !13, i64 12, !13, i64 16, !13, i64 20, !9, i64 24, !13, i64 36, !13, i64 40, !13, i64 44, !13, i64 48, !13, i64 52, !13, i64 56, !13, i64 60, !9, i64 64, !13, i64 72, !13, i64 76, !9, i64 80, !9, i64 96, !9, i64 116, !13, i64 136}
!42 = !{!41, !13, i64 8}
!43 = !{!20, !13, i64 8}
!44 = !{!20, !13, i64 4}
!45 = !{!9, !9, i64 0}
!46 = !{!47, !8, i64 48}
!47 = !{!"tskTaskControlBlock", !8, i64 0, !48, i64 4, !48, i64 24, !16, i64 44, !8, i64 48, !9, i64 52, !16, i64 64, !16, i64 68, !16, i64 72, !16, i64 76, !13, i64 80, !9, i64 84}
!48 = !{!"xLIST_ITEM", !13, i64 0, !8, i64 4, !8, i64 8, !8, i64 12, !8, i64 16}
!49 = distinct !{!49, !50}
!50 = !{!"llvm.loop.mustprogress"}
!51 = !{!47, !16, i64 44}
!52 = !{!47, !16, i64 72}
!53 = !{!47, !16, i64 76}
!54 = !{!47, !8, i64 16}
!55 = !{!47, !13, i64 24}
!56 = !{!47, !8, i64 36}
!57 = !{!47, !13, i64 80}
!58 = !{!47, !9, i64 84}
!59 = !{!47, !8, i64 0}
!60 = !{!16, !16, i64 0}
!61 = !{!47, !16, i64 64}
!62 = !{i64 2148180262}
!63 = !{i64 2148180313}
!64 = distinct !{!64, !50}
!65 = !{!66, !16, i64 0}
!66 = !{!"xLIST", !16, i64 0, !8, i64 4, !67, i64 8}
!67 = !{!"xMINI_LIST_ITEM", !13, i64 0, !8, i64 4, !8, i64 8}
!68 = !{!47, !8, i64 40}
!69 = !{i64 488759, i64 488793, i64 488830, i64 488858}
!70 = !{i64 2148181638}
!71 = !{i64 2148181689}
!72 = !{!66, !8, i64 12}
!73 = !{!48, !8, i64 12}
!74 = !{!47, !13, i64 4}
!75 = !{i64 2148182621}
!76 = !{i64 2148182672}
!77 = !{i64 2148190800}
!78 = distinct !{!78, !50}
!79 = distinct !{!79, !50}
!80 = !{i64 2148192226}
!81 = !{i64 2148192277}
!82 = !{i64 2148183292}
!83 = !{i64 2148183343}
!84 = !{!47, !8, i64 20}
!85 = !{i64 489174, i64 489212, i64 489245, i64 489282, i64 489310}
!86 = !{i64 489736}
!87 = !{i64 2148185884}
!88 = !{i64 2148185935}
!89 = !{i64 2148187443}
!90 = !{i64 2148187494}
!91 = !{i64 486752}
!92 = !{!66, !8, i64 4}
!93 = !{!48, !8, i64 4}
!94 = !{i64 2148189427}
!95 = !{i64 2148189478}
!96 = !{i64 2148200075}
!97 = !{i64 2148200126}
!98 = distinct !{!98, !50}
!99 = distinct !{!99, !50}
!100 = distinct !{!100, !50}
!101 = !{!102, !8, i64 0}
!102 = !{!"xTASK_STATUS", !8, i64 0, !8, i64 4, !16, i64 8, !9, i64 12, !16, i64 16, !16, i64 20, !13, i64 24, !8, i64 28, !103, i64 32}
!103 = !{!"short", !9, i64 0}
!104 = !{!102, !8, i64 4}
!105 = !{!102, !16, i64 16}
!106 = !{!102, !8, i64 28}
!107 = !{!102, !16, i64 8}
!108 = !{!102, !16, i64 20}
!109 = !{!102, !13, i64 24}
!110 = !{!102, !9, i64 12}
!111 = distinct !{!111, !50}
!112 = !{!48, !13, i64 0}
!113 = !{!114, !16, i64 0}
!114 = !{!"xTIME_OUT", !16, i64 0, !13, i64 4}
!115 = !{!114, !13, i64 4}
!116 = !{!47, !16, i64 68}
!117 = !{i64 2148206911}
!118 = !{i64 2148206962}
!119 = !{i64 2148207650}
!120 = !{i64 2148207701}
!121 = !{i64 2148209513}
!122 = !{i64 2148209564}
!123 = !{i64 338085, i64 338119, i64 338156, i64 338184}
!124 = !{i64 2148086027}
!125 = !{i64 2148086078}
!126 = !{!127, !16, i64 0}
!127 = !{!"tmrTimerQueueMessage", !16, i64 0, !9, i64 4}
!128 = !{!129, !8, i64 20}
!129 = !{!"tmrTimerControl", !8, i64 0, !48, i64 4, !13, i64 24, !8, i64 28, !8, i64 32, !16, i64 36, !9, i64 40}
!130 = !{!129, !9, i64 40}
!131 = !{!129, !13, i64 24}
!132 = !{!129, !8, i64 32}
!133 = distinct !{!133, !50}
!134 = !{!129, !13, i64 4}
!135 = !{!129, !8, i64 16}
!136 = distinct !{!136, !50}
!137 = !{!129, !8, i64 0}
!138 = !{!129, !8, i64 28}
!139 = !{!129, !16, i64 36}
!140 = !{!66, !13, i64 8}
!141 = !{!66, !8, i64 16}
!142 = !{!48, !8, i64 16}
!143 = !{!48, !8, i64 8}
!144 = distinct !{!144, !50}
!145 = distinct !{!145, !50}
!146 = !{i64 9642, i64 9710, i64 9800, i64 9892, i64 10038, i64 10105, i64 10128, i64 10157, i64 10189, i64 10214, i64 10234, i64 10260}
!147 = !{i64 201829, i64 201863, i64 201900, i64 201928}
!148 = distinct !{!148, !50}
!149 = !{i64 27136, i64 27213, i64 27238, i64 27254, i64 27347, i64 27372}
!150 = !{i64 10725, i64 10815, i64 10843, i64 10871, i64 10947, i64 11045, i64 11074, i64 11131, i64 11154, i64 11174, i64 11194, i64 11255}
!151 = !{i64 202806}
!152 = !{i64 16626, i64 16653, i64 16673, i64 16690, i64 16769, i64 16795, i64 16812, i64 16914, i64 16935, i64 16970, i64 16987, i64 17053, i64 17145, i64 17162, i64 17194, i64 17220, i64 17249, i64 17269, i64 17289, i64 17322, i64 17347, i64 17376, i64 17408, i64 17425, i64 17514, i64 17540, i64 17557, i64 17622, i64 17639, i64 17748, i64 17769, i64 17804, i64 17821, i64 17847, i64 17867, i64 18059, i64 18076, i64 18098, i64 18115, i64 18138}
!153 = !{i64 27694}
!154 = !{!155, !8, i64 0}
!155 = !{!"A_BLOCK_LINK", !8, i64 0, !13, i64 4}
!156 = !{!155, !13, i64 4}
!157 = distinct !{!157, !50}
!158 = !{i64 313004, i64 313038, i64 313075, i64 313103}
!159 = distinct !{!159, !50}
!160 = distinct !{!160, !50}
!161 = !{!162, !13, i64 4}
!162 = !{!"xHeapStats", !13, i64 0, !13, i64 4, !13, i64 8, !13, i64 12, !13, i64 16, !13, i64 20, !13, i64 24}
!163 = !{!162, !13, i64 8}
!164 = !{!162, !13, i64 12}
!165 = !{!162, !13, i64 0}
!166 = !{!162, !13, i64 20}
!167 = !{!162, !13, i64 24}
!168 = !{!162, !13, i64 16}
!169 = !{i64 406712, i64 406746, i64 406783, i64 406811}
!170 = !{!171, !8, i64 0}
!171 = !{!"QueueDefinition", !8, i64 0, !8, i64 4, !9, i64 8, !66, i64 16, !66, i64 36, !16, i64 56, !16, i64 60, !16, i64 64, !9, i64 68, !9, i64 69, !16, i64 72, !9, i64 76}
!172 = !{!171, !16, i64 60}
!173 = !{!171, !16, i64 64}
!174 = !{!171, !16, i64 56}
!175 = !{!171, !8, i64 4}
!176 = !{!171, !9, i64 68}
!177 = !{!171, !9, i64 69}
!178 = !{!171, !16, i64 16}
!179 = !{i64 2148090737}
!180 = !{i64 2148090788}
!181 = !{!171, !9, i64 76}
!182 = !{!171, !16, i64 36}
!183 = !{i64 2148093368}
!184 = !{i64 2148093419}
!185 = !{i64 2148093889}
!186 = !{i64 2148093940}
!187 = !{i64 2148095204}
!188 = !{i64 2148095255}
!189 = distinct !{!189, !50}
!190 = distinct !{!190, !50}
!191 = !{i64 2148100928}
!192 = !{i64 2148100979}
!193 = !{i64 2148102521}
!194 = !{i64 2148102572}
!195 = !{!171, !8, i64 48}
!196 = !{i64 407127, i64 407165, i64 407198, i64 407235, i64 407263}
!197 = !{i64 407689}
!198 = !{i64 2148098312}
!199 = !{i64 2148098363}
!200 = !{i64 2148099627}
!201 = !{i64 2148099678}
!202 = !{i64 2148103957}
!203 = !{i64 2148104008}
!204 = !{i64 2148105272}
!205 = !{i64 2148105323}
!206 = !{!207, !8, i64 4}
!207 = !{!"QUEUE_REGISTRY_ITEM", !8, i64 0, !8, i64 4}
!208 = !{!207, !8, i64 0}
!209 = distinct !{!209, !50}
!210 = !{!171, !16, i64 72}
!211 = distinct !{!211, !50}
!212 = distinct !{!212, !50}
!213 = !{!214, !13, i64 0}
!214 = !{!"", !13, i64 0, !13, i64 4, !13, i64 8, !13, i64 12, !13, i64 16, !13, i64 20, !13, i64 24}
!215 = !{!20, !13, i64 32}
!216 = !{!20, !13, i64 36}
!217 = !{!20, !13, i64 16}
!218 = !{!20, !13, i64 20}
!219 = !{!20, !13, i64 24}
!220 = distinct !{!220, !50}
!221 = !{!222, !13, i64 0}
!222 = !{!"", !13, i64 0, !13, i64 4, !13, i64 8, !13, i64 12}
!223 = !{!222, !13, i64 4}
!224 = !{!41, !13, i64 12}
!225 = !{i32 0, i32 8}
!226 = !{i64 2149400269}
!227 = !{i64 2149400383}
!228 = !{i64 1875270}
!229 = !{i64 1874987}
!230 = !{i64 2149401843}
!231 = !{!222, !13, i64 8}
!232 = !{i64 1875546}
!233 = !{!41, !13, i64 36}
!234 = !{!235, !13, i64 4}
!235 = !{!"", !13, i64 0, !13, i64 4, !13, i64 8, !13, i64 12, !13, i64 16, !13, i64 20, !13, i64 24, !13, i64 28, !13, i64 32, !13, i64 36, !13, i64 40}
!236 = !{!237, !9, i64 1}
!237 = !{!"", !9, i64 0, !9, i64 1, !13, i64 4, !9, i64 8, !9, i64 9, !9, i64 10, !9, i64 11, !9, i64 12, !9, i64 13, !9, i64 14, !9, i64 15}
!238 = !{!235, !13, i64 8}
!239 = !{!237, !9, i64 0}
!240 = !{!237, !13, i64 4}
!241 = !{!235, !13, i64 12}
!242 = !{!237, !9, i64 12}
!243 = !{!237, !9, i64 11}
!244 = !{!237, !9, i64 10}
!245 = !{!237, !9, i64 13}
!246 = !{!237, !9, i64 14}
!247 = !{!237, !9, i64 15}
!248 = !{!237, !9, i64 9}
!249 = !{!237, !9, i64 8}
!250 = !{!235, !13, i64 16}
!251 = !{i32 0, i32 16}
!252 = !{!253, !13, i64 8}
!253 = !{!"", !13, i64 0, !13, i64 4, !13, i64 8, !13, i64 12, !13, i64 16, !13, i64 20, !13, i64 24, !13, i64 28, !9, i64 32}
!254 = !{!253, !13, i64 4}
!255 = !{!253, !13, i64 12}
!256 = !{!253, !13, i64 0}
!257 = !{!20, !13, i64 68}
!258 = !{!31, !13, i64 0}
!259 = !{!31, !13, i64 4}
!260 = !{!31, !13, i64 8}
!261 = !{!31, !13, i64 12}
!262 = distinct !{!262, !50}
!263 = distinct !{!263, !50}
!264 = !{!253, !13, i64 16}
!265 = !{!253, !13, i64 24}
!266 = !{!253, !13, i64 20}
!267 = !{!253, !13, i64 28}
!268 = !{!31, !13, i64 20}
!269 = !{!20, !13, i64 0}
!270 = distinct !{!270, !50}
!271 = distinct !{!271, !50}
!272 = !{!30, !13, i64 12}
!273 = distinct !{!273, !50}
!274 = distinct !{!274, !50}
!275 = !{!30, !13, i64 16}
!276 = !{!30, !13, i64 20}
!277 = !{!20, !13, i64 116}
!278 = distinct !{!278, !50}
!279 = distinct !{!279, !50}
!280 = distinct !{!280, !50}
!281 = !{!30, !13, i64 8}
!282 = !{!20, !13, i64 112}
!283 = distinct !{!283, !50}
!284 = distinct !{!284, !50}
!285 = distinct !{!285, !50}
!286 = distinct !{!286, !50}
!287 = distinct !{!287, !50}
!288 = distinct !{!288, !50}
!289 = !{!20, !13, i64 12}
