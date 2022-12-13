; ModuleID = './examples/blinky.elf.bc'
source_filename = "llvm-link"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "thumbv7m-none-unknown-eabi"

%struct.GPIO_InitTypeDef = type { i32, i32, i32, i32 }
%struct.GPIO_TypeDef = type { i32, i32, i32, i32, i32, i32, i32 }
%struct.RCC_OscInitTypeDef = type { i32, i32, i32, i32, i32, i32, i32, %struct.RCC_PLLInitTypeDef }
%struct.RCC_PLLInitTypeDef = type { i32, i32, i32 }
%struct.RCC_ClkInitTypeDef = type { i32, i32, i32, i32, i32 }

@AHBPrescTable = dso_local local_unnamed_addr constant [16 x i8] c"\00\00\00\00\00\00\00\00\01\02\03\04\06\07\08\09", align 1, !dbg !0
@__const.HAL_RCC_GetSysClockFreq.aPLLMULFactorTable = private unnamed_addr constant [16 x i8] c"\02\03\04\05\06\07\08\09\0A\0B\0C\0D\0E\0F\10\10", align 1
@__const.HAL_RCC_GetSysClockFreq.aPredivFactorTable = private unnamed_addr constant [2 x i8] c"\01\02", align 1
@APBPrescTable = dso_local local_unnamed_addr constant [8 x i8] c"\00\00\00\00\01\02\03\04", align 1, !dbg !79
@uwTickPrio = dso_local local_unnamed_addr global i32 16, align 4, !dbg !88
@uwTickFreq = dso_local local_unnamed_addr global i32 1, align 4, !dbg !206
@SystemCoreClock = dso_local local_unnamed_addr global i32 16000000, align 4, !dbg !77
@uwTick = dso_local global i32 0, align 4, !dbg !209

; Function Attrs: mustprogress noinline norecurse noreturn nounwind
define dso_local noundef i32 @main(i32 noundef %0, i8** nocapture noundef readnone %1) local_unnamed_addr #0 !dbg !433 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.GPIO_InitTypeDef, align 4
  call void @llvm.dbg.value(metadata i32 %0, metadata !440, metadata !DIExpression()), !dbg !452
  call void @llvm.dbg.value(metadata i8** %1, metadata !441, metadata !DIExpression()), !dbg !452
  %5 = call i32 @HAL_Init() #16, !dbg !453
  call fastcc void @_ZL18SystemClock_Configv(), !dbg !454
  %6 = bitcast i32* %3 to i8*, !dbg !455
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %6), !dbg !455
  call void @llvm.dbg.declare(metadata i32* %3, metadata !442, metadata !DIExpression()), !dbg !455
  %7 = load volatile i32, i32* inttoptr (i32 1073877016 to i32*), align 8, !dbg !455, !tbaa !456
  %8 = or i32 %7, 4, !dbg !455
  store volatile i32 %8, i32* inttoptr (i32 1073877016 to i32*), align 8, !dbg !455, !tbaa !456
  %9 = load volatile i32, i32* inttoptr (i32 1073877016 to i32*), align 8, !dbg !455, !tbaa !456
  %10 = and i32 %9, 4, !dbg !455
  store volatile i32 %10, i32* %3, align 4, !dbg !455, !tbaa !461
  %11 = load volatile i32, i32* %3, align 4, !dbg !455, !tbaa !461
  %12 = bitcast i32* %3 to i8*, !dbg !462
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %12), !dbg !462
  call void @HAL_GPIO_WritePin(%struct.GPIO_TypeDef* noundef nonnull inttoptr (i32 1073809408 to %struct.GPIO_TypeDef*), i16 noundef zeroext 32, i32 noundef 0) #16, !dbg !463
  %13 = bitcast %struct.GPIO_InitTypeDef* %4 to i8*, !dbg !464
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %13) #16, !dbg !464
  call void @llvm.dbg.declare(metadata %struct.GPIO_InitTypeDef* %4, metadata !444, metadata !DIExpression()), !dbg !465
  call void @llvm.memset.p0i8.i32(i8* noundef nonnull align 4 dereferenceable(16) %13, i8 0, i32 16, i1 false), !dbg !465
  %14 = getelementptr inbounds %struct.GPIO_InitTypeDef, %struct.GPIO_InitTypeDef* %4, i32 0, i32 0, !dbg !466
  store i32 32, i32* %14, align 4, !dbg !467, !tbaa !468
  %15 = getelementptr inbounds %struct.GPIO_InitTypeDef, %struct.GPIO_InitTypeDef* %4, i32 0, i32 1, !dbg !470
  store i32 1, i32* %15, align 4, !dbg !471, !tbaa !472
  %16 = getelementptr inbounds %struct.GPIO_InitTypeDef, %struct.GPIO_InitTypeDef* %4, i32 0, i32 2, !dbg !473
  store i32 0, i32* %16, align 4, !dbg !474, !tbaa !475
  %17 = getelementptr inbounds %struct.GPIO_InitTypeDef, %struct.GPIO_InitTypeDef* %4, i32 0, i32 3, !dbg !476
  store i32 2, i32* %17, align 4, !dbg !477, !tbaa !478
  call void @HAL_GPIO_Init(%struct.GPIO_TypeDef* noundef nonnull inttoptr (i32 1073809408 to %struct.GPIO_TypeDef*), %struct.GPIO_InitTypeDef* noundef nonnull %4) #16, !dbg !479
  br label %18, !dbg !480

18:                                               ; preds = %18, %2
  call void @HAL_GPIO_TogglePin(%struct.GPIO_TypeDef* noundef nonnull inttoptr (i32 1073809408 to %struct.GPIO_TypeDef*), i16 noundef zeroext 32) #16, !dbg !481
  call void @HAL_Delay(i32 noundef 100) #16, !dbg !483
  br label %18, !dbg !480, !llvm.loop !484
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.value(metadata, metadata, metadata) #1

; Function Attrs: mustprogress noinline norecurse nounwind
define internal fastcc void @_ZL18SystemClock_Configv() unnamed_addr #2 !dbg !488 {
  %1 = alloca %struct.RCC_OscInitTypeDef, align 4
  %2 = alloca %struct.RCC_ClkInitTypeDef, align 4
  %3 = bitcast %struct.RCC_OscInitTypeDef* %1 to i8*, !dbg !521
  call void @llvm.lifetime.start.p0i8(i64 40, i8* nonnull %3) #16, !dbg !521
  call void @llvm.dbg.declare(metadata %struct.RCC_OscInitTypeDef* %1, metadata !492, metadata !DIExpression()), !dbg !522
  call void @llvm.memset.p0i8.i32(i8* noundef nonnull align 4 dereferenceable(40) %3, i8 0, i32 40, i1 false), !dbg !522
  %4 = bitcast %struct.RCC_ClkInitTypeDef* %2 to i8*, !dbg !523
  call void @llvm.lifetime.start.p0i8(i64 20, i8* nonnull %4) #16, !dbg !523
  call void @llvm.dbg.declare(metadata %struct.RCC_ClkInitTypeDef* %2, metadata !512, metadata !DIExpression()), !dbg !524
  call void @llvm.memset.p0i8.i32(i8* noundef nonnull align 4 dereferenceable(20) %4, i8 0, i32 20, i1 false), !dbg !524
  %5 = getelementptr inbounds %struct.RCC_OscInitTypeDef, %struct.RCC_OscInitTypeDef* %1, i32 0, i32 0, !dbg !525
  store i32 2, i32* %5, align 4, !dbg !526, !tbaa !527
  %6 = getelementptr inbounds %struct.RCC_OscInitTypeDef, %struct.RCC_OscInitTypeDef* %1, i32 0, i32 4, !dbg !530
  store i32 1, i32* %6, align 4, !dbg !531, !tbaa !532
  %7 = getelementptr inbounds %struct.RCC_OscInitTypeDef, %struct.RCC_OscInitTypeDef* %1, i32 0, i32 5, !dbg !533
  store i32 16, i32* %7, align 4, !dbg !534, !tbaa !535
  %8 = getelementptr inbounds %struct.RCC_OscInitTypeDef, %struct.RCC_OscInitTypeDef* %1, i32 0, i32 7, i32 0, !dbg !536
  store i32 2, i32* %8, align 4, !dbg !537, !tbaa !538
  %9 = getelementptr inbounds %struct.RCC_OscInitTypeDef, %struct.RCC_OscInitTypeDef* %1, i32 0, i32 7, i32 1, !dbg !539
  store i32 0, i32* %9, align 4, !dbg !540, !tbaa !541
  %10 = getelementptr inbounds %struct.RCC_OscInitTypeDef, %struct.RCC_OscInitTypeDef* %1, i32 0, i32 7, i32 2, !dbg !542
  store i32 3670016, i32* %10, align 4, !dbg !543, !tbaa !544
  %11 = call i32 @HAL_RCC_OscConfig(%struct.RCC_OscInitTypeDef* noundef nonnull %1) #16, !dbg !545
  %12 = getelementptr inbounds %struct.RCC_ClkInitTypeDef, %struct.RCC_ClkInitTypeDef* %2, i32 0, i32 0, !dbg !546
  store i32 15, i32* %12, align 4, !dbg !547, !tbaa !548
  %13 = getelementptr inbounds %struct.RCC_ClkInitTypeDef, %struct.RCC_ClkInitTypeDef* %2, i32 0, i32 1, !dbg !550
  store i32 2, i32* %13, align 4, !dbg !551, !tbaa !552
  %14 = getelementptr inbounds %struct.RCC_ClkInitTypeDef, %struct.RCC_ClkInitTypeDef* %2, i32 0, i32 2, !dbg !553
  store i32 0, i32* %14, align 4, !dbg !554, !tbaa !555
  %15 = getelementptr inbounds %struct.RCC_ClkInitTypeDef, %struct.RCC_ClkInitTypeDef* %2, i32 0, i32 3, !dbg !556
  store i32 1024, i32* %15, align 4, !dbg !557, !tbaa !558
  %16 = getelementptr inbounds %struct.RCC_ClkInitTypeDef, %struct.RCC_ClkInitTypeDef* %2, i32 0, i32 4, !dbg !559
  store i32 0, i32* %16, align 4, !dbg !560, !tbaa !561
  %17 = call i32 @HAL_RCC_ClockConfig(%struct.RCC_ClkInitTypeDef* noundef nonnull %2, i32 noundef 2) #16, !dbg !562
  call void @llvm.lifetime.end.p0i8(i64 20, i8* nonnull %4) #16, !dbg !563
  call void @llvm.lifetime.end.p0i8(i64 40, i8* nonnull %3) #16, !dbg !563
  ret void, !dbg !563
}

; Function Attrs: argmemonly nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0i8(i64 immarg, i8* nocapture) #3

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: argmemonly nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0i8(i64 immarg, i8* nocapture) #3

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0i8.i32(i8* nocapture writeonly, i8, i32, i1 immarg) #4

; Function Attrs: mustprogress noinline nounwind
define dso_local void @SysTick_Handler() local_unnamed_addr #5 !dbg !564 {
  call void @HAL_IncTick() #16, !dbg !566
  ret void, !dbg !567
}

; Function Attrs: nofree noinline norecurse nounwind
define dso_local void @SystemInit() local_unnamed_addr #6 !dbg !568 {
  %1 = load volatile i32, i32* inttoptr (i32 1073876992 to i32*), align 4096, !dbg !569, !tbaa !570
  %2 = or i32 %1, 1, !dbg !569
  store volatile i32 %2, i32* inttoptr (i32 1073876992 to i32*), align 4096, !dbg !569, !tbaa !570
  %3 = load volatile i32, i32* inttoptr (i32 1073876996 to i32*), align 4, !dbg !575, !tbaa !576
  %4 = and i32 %3, -117506048, !dbg !575
  store volatile i32 %4, i32* inttoptr (i32 1073876996 to i32*), align 4, !dbg !575, !tbaa !576
  %5 = load volatile i32, i32* inttoptr (i32 1073876992 to i32*), align 4096, !dbg !577, !tbaa !570
  %6 = and i32 %5, -17367041, !dbg !577
  store volatile i32 %6, i32* inttoptr (i32 1073876992 to i32*), align 4096, !dbg !577, !tbaa !570
  %7 = load volatile i32, i32* inttoptr (i32 1073876992 to i32*), align 4096, !dbg !578, !tbaa !570
  %8 = and i32 %7, -262145, !dbg !578
  store volatile i32 %8, i32* inttoptr (i32 1073876992 to i32*), align 4096, !dbg !578, !tbaa !570
  %9 = load volatile i32, i32* inttoptr (i32 1073876996 to i32*), align 4, !dbg !579, !tbaa !576
  %10 = and i32 %9, -8323073, !dbg !579
  store volatile i32 %10, i32* inttoptr (i32 1073876996 to i32*), align 4, !dbg !579, !tbaa !576
  store volatile i32 10420224, i32* inttoptr (i32 1073877000 to i32*), align 8, !dbg !580, !tbaa !581
  store volatile i32 134217728, i32* inttoptr (i32 -536810232 to i32*), align 8, !dbg !582, !tbaa !583
  ret void, !dbg !585
}

; Function Attrs: mustprogress nofree noinline norecurse nounwind willreturn
define dso_local void @SystemCoreClockUpdate() local_unnamed_addr #7 !dbg !586 {
  call void @llvm.dbg.value(metadata i32 0, metadata !588, metadata !DIExpression()), !dbg !591
  call void @llvm.dbg.value(metadata i32 0, metadata !589, metadata !DIExpression()), !dbg !591
  call void @llvm.dbg.value(metadata i32 0, metadata !590, metadata !DIExpression()), !dbg !591
  %1 = load volatile i32, i32* inttoptr (i32 1073876996 to i32*), align 4, !dbg !592, !tbaa !576
  %2 = and i32 %1, 12, !dbg !593
  call void @llvm.dbg.value(metadata i32 %2, metadata !588, metadata !DIExpression()), !dbg !591
  %3 = icmp eq i32 %2, 8, !dbg !594
  br i1 %3, label %4, label %22, !dbg !594

4:                                                ; preds = %0
  %5 = load volatile i32, i32* inttoptr (i32 1073876996 to i32*), align 4, !dbg !595, !tbaa !576
  call void @llvm.dbg.value(metadata i32 %5, metadata !589, metadata !DIExpression(DW_OP_constu, 3932160, DW_OP_and, DW_OP_stack_value)), !dbg !591
  %6 = load volatile i32, i32* inttoptr (i32 1073876996 to i32*), align 4, !dbg !597, !tbaa !576
  %7 = and i32 %6, 65536, !dbg !598
  call void @llvm.dbg.value(metadata i32 %7, metadata !590, metadata !DIExpression()), !dbg !591
  %8 = lshr i32 %5, 18, !dbg !599
  %9 = and i32 %8, 15, !dbg !599
  %10 = add nuw nsw i32 %9, 2, !dbg !600
  call void @llvm.dbg.value(metadata i32 %10, metadata !589, metadata !DIExpression()), !dbg !591
  %11 = icmp eq i32 %7, 0, !dbg !601
  br i1 %11, label %12, label %14, !dbg !603

12:                                               ; preds = %4
  %13 = mul nuw nsw i32 %10, 4000000, !dbg !604
  br label %22, !dbg !606

14:                                               ; preds = %4
  %15 = load volatile i32, i32* inttoptr (i32 1073876996 to i32*), align 4, !dbg !607, !tbaa !576
  %16 = and i32 %15, 131072, !dbg !610
  %17 = icmp eq i32 %16, 0, !dbg !611
  br i1 %17, label %20, label %18, !dbg !612

18:                                               ; preds = %14
  %19 = mul nuw nsw i32 %10, 4000000, !dbg !613
  br label %22, !dbg !615

20:                                               ; preds = %14
  %21 = mul nuw nsw i32 %10, 8000000, !dbg !616
  br label %22

22:                                               ; preds = %0, %12, %20, %18
  %23 = phi i32 [ %13, %12 ], [ %21, %20 ], [ %19, %18 ], [ 8000000, %0 ]
  store i32 %23, i32* @SystemCoreClock, align 4, !dbg !618, !tbaa !619
  %24 = load volatile i32, i32* inttoptr (i32 1073876996 to i32*), align 4, !dbg !620, !tbaa !576
  %25 = lshr i32 %24, 4, !dbg !621
  %26 = and i32 %25, 15, !dbg !621
  %27 = getelementptr inbounds [16 x i8], [16 x i8]* @AHBPrescTable, i32 0, i32 %26, !dbg !622
  %28 = load i8, i8* %27, align 1, !dbg !622, !tbaa !623
  %29 = zext i8 %28 to i32, !dbg !622
  call void @llvm.dbg.value(metadata i32 %29, metadata !588, metadata !DIExpression()), !dbg !591
  %30 = load i32, i32* @SystemCoreClock, align 4, !dbg !624, !tbaa !619
  %31 = lshr i32 %30, %29, !dbg !624
  store i32 %31, i32* @SystemCoreClock, align 4, !dbg !624, !tbaa !619
  ret void, !dbg !625
}

; Function Attrs: nofree noinline nounwind
define dso_local void @HAL_GPIO_Init(%struct.GPIO_TypeDef* noundef %0, %struct.GPIO_InitTypeDef* nocapture noundef readonly %1) local_unnamed_addr #8 !dbg !626 {
  %3 = alloca i32, align 4
  call void @llvm.dbg.value(metadata %struct.GPIO_TypeDef* %0, metadata !638, metadata !DIExpression()), !dbg !654
  call void @llvm.dbg.value(metadata %struct.GPIO_InitTypeDef* %1, metadata !639, metadata !DIExpression()), !dbg !654
  call void @llvm.dbg.value(metadata i32 0, metadata !640, metadata !DIExpression()), !dbg !654
  call void @llvm.dbg.value(metadata i32 0, metadata !644, metadata !DIExpression()), !dbg !654
  %4 = getelementptr inbounds %struct.GPIO_InitTypeDef, %struct.GPIO_InitTypeDef* %1, i32 0, i32 0
  call void @llvm.dbg.value(metadata i32 0, metadata !640, metadata !DIExpression()), !dbg !654
  call void @llvm.dbg.value(metadata i32 0, metadata !644, metadata !DIExpression()), !dbg !654
  %5 = load i32, i32* %4, align 4, !dbg !655, !tbaa !656
  %6 = icmp eq i32 %5, 0, !dbg !658
  br i1 %6, label %135, label %7, !dbg !659

7:                                                ; preds = %2
  %8 = getelementptr inbounds %struct.GPIO_InitTypeDef, %struct.GPIO_InitTypeDef* %1, i32 0, i32 1
  %9 = getelementptr inbounds %struct.GPIO_InitTypeDef, %struct.GPIO_InitTypeDef* %1, i32 0, i32 2
  %10 = getelementptr inbounds %struct.GPIO_TypeDef, %struct.GPIO_TypeDef* %0, i32 0, i32 4
  %11 = getelementptr inbounds %struct.GPIO_TypeDef, %struct.GPIO_TypeDef* %0, i32 0, i32 5
  %12 = getelementptr inbounds %struct.GPIO_InitTypeDef, %struct.GPIO_InitTypeDef* %1, i32 0, i32 3
  %13 = getelementptr inbounds %struct.GPIO_InitTypeDef, %struct.GPIO_InitTypeDef* %1, i32 0, i32 3
  %14 = getelementptr inbounds %struct.GPIO_InitTypeDef, %struct.GPIO_InitTypeDef* %1, i32 0, i32 3
  %15 = getelementptr inbounds %struct.GPIO_InitTypeDef, %struct.GPIO_InitTypeDef* %1, i32 0, i32 3
  %16 = getelementptr inbounds %struct.GPIO_TypeDef, %struct.GPIO_TypeDef* %0, i32 0, i32 0
  %17 = getelementptr inbounds %struct.GPIO_TypeDef, %struct.GPIO_TypeDef* %0, i32 0, i32 1
  %18 = ptrtoint %struct.GPIO_TypeDef* %0 to i32
  %19 = icmp eq %struct.GPIO_TypeDef* %0, inttoptr (i32 1073812480 to %struct.GPIO_TypeDef*)
  %20 = select i1 %19, i32 3, i32 4
  %21 = bitcast i32* %3 to i8*
  %22 = bitcast i32* %3 to i8*
  br label %23, !dbg !659

23:                                               ; preds = %7, %129
  %24 = phi i32 [ %5, %7 ], [ %132, %129 ]
  %25 = phi i32 [ 0, %7 ], [ %131, %129 ]
  %26 = phi i32 [ 0, %7 ], [ %130, %129 ]
  call void @llvm.dbg.value(metadata i32 %25, metadata !640, metadata !DIExpression()), !dbg !654
  call void @llvm.dbg.value(metadata i32 %26, metadata !644, metadata !DIExpression()), !dbg !654
  %27 = shl i32 1, %25, !dbg !660
  call void @llvm.dbg.value(metadata i32 %27, metadata !641, metadata !DIExpression()), !dbg !654
  %28 = and i32 %24, %27, !dbg !661
  call void @llvm.dbg.value(metadata i32 %28, metadata !642, metadata !DIExpression()), !dbg !654
  %29 = icmp eq i32 %28, %27, !dbg !662
  br i1 %29, label %30, label %129, !dbg !663

30:                                               ; preds = %23
  %31 = load i32, i32* %8, align 4, !dbg !664, !tbaa !665
  switch i32 %31, label %48 [
    i32 1, label %32
    i32 17, label %34
    i32 2, label %37
    i32 18, label %40
    i32 0, label %43
    i32 269549568, label %43
    i32 270598144, label %43
    i32 271646720, label %43
    i32 269615104, label %43
    i32 270663680, label %43
    i32 271712256, label %43
    i32 3, label %47
  ], !dbg !666

32:                                               ; preds = %30
  %33 = load i32, i32* %15, align 4, !dbg !667, !tbaa !669
  call void @llvm.dbg.value(metadata i32 %33, metadata !644, metadata !DIExpression()), !dbg !654
  br label %48, !dbg !670

34:                                               ; preds = %30
  %35 = load i32, i32* %14, align 4, !dbg !671, !tbaa !669
  %36 = add i32 %35, 4, !dbg !672
  call void @llvm.dbg.value(metadata i32 %36, metadata !644, metadata !DIExpression()), !dbg !654
  br label %48, !dbg !673

37:                                               ; preds = %30
  %38 = load i32, i32* %13, align 4, !dbg !674, !tbaa !669
  %39 = add i32 %38, 8, !dbg !675
  call void @llvm.dbg.value(metadata i32 %39, metadata !644, metadata !DIExpression()), !dbg !654
  br label %48, !dbg !676

40:                                               ; preds = %30
  %41 = load i32, i32* %12, align 4, !dbg !677, !tbaa !669
  %42 = add i32 %41, 12, !dbg !678
  call void @llvm.dbg.value(metadata i32 %42, metadata !644, metadata !DIExpression()), !dbg !654
  br label %48, !dbg !679

43:                                               ; preds = %30, %30, %30, %30, %30, %30, %30
  %44 = load i32, i32* %9, align 4, !dbg !680, !tbaa !682
  switch i32 %44, label %46 [
    i32 0, label %48
    i32 1, label %45
  ], !dbg !683

45:                                               ; preds = %43
  call void @llvm.dbg.value(metadata i32 8, metadata !644, metadata !DIExpression()), !dbg !654
  store volatile i32 %27, i32* %10, align 4, !dbg !684, !tbaa !687
  br label %48, !dbg !689

46:                                               ; preds = %43
  call void @llvm.dbg.value(metadata i32 8, metadata !644, metadata !DIExpression()), !dbg !654
  store volatile i32 %27, i32* %11, align 4, !dbg !690, !tbaa !692
  br label %48

47:                                               ; preds = %30
  call void @llvm.dbg.value(metadata i32 0, metadata !644, metadata !DIExpression()), !dbg !654
  br label %48, !dbg !693

48:                                               ; preds = %43, %30, %46, %45, %47, %40, %37, %34, %32
  %49 = phi i32 [ %26, %30 ], [ 0, %47 ], [ 8, %45 ], [ 8, %46 ], [ %42, %40 ], [ %39, %37 ], [ %36, %34 ], [ %33, %32 ], [ 4, %43 ], !dbg !654
  call void @llvm.dbg.value(metadata i32 %49, metadata !644, metadata !DIExpression()), !dbg !654
  %50 = icmp ult i32 %28, 256, !dbg !694
  %51 = select i1 %50, i32* %16, i32* %17, !dbg !695
  call void @llvm.dbg.value(metadata i32* %51, metadata !645, metadata !DIExpression()), !dbg !654
  %52 = shl i32 %25, 2, !dbg !696
  %53 = add i32 %52, -32, !dbg !696
  %54 = select i1 %50, i32 %52, i32 %53, !dbg !696
  call void @llvm.dbg.value(metadata i32 %54, metadata !646, metadata !DIExpression()), !dbg !654
  %55 = load volatile i32, i32* %51, align 4, !dbg !697, !tbaa !619
  %56 = shl i32 15, %54, !dbg !697
  %57 = xor i32 %56, -1, !dbg !697
  %58 = and i32 %55, %57, !dbg !697
  %59 = shl i32 %49, %54, !dbg !697
  %60 = or i32 %58, %59, !dbg !697
  store volatile i32 %60, i32* %51, align 4, !dbg !697, !tbaa !619
  %61 = load i32, i32* %8, align 4, !dbg !698, !tbaa !665
  %62 = and i32 %61, 268435456, !dbg !699
  %63 = icmp eq i32 %62, 0, !dbg !700
  br i1 %63, label %129, label %64, !dbg !701

64:                                               ; preds = %48
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %21), !dbg !702
  call void @llvm.dbg.declare(metadata i32* %3, metadata !647, metadata !DIExpression()), !dbg !702
  %65 = load volatile i32, i32* inttoptr (i32 1073877016 to i32*), align 8, !dbg !702, !tbaa !703
  %66 = or i32 %65, 1, !dbg !702
  store volatile i32 %66, i32* inttoptr (i32 1073877016 to i32*), align 8, !dbg !702, !tbaa !703
  %67 = load volatile i32, i32* inttoptr (i32 1073877016 to i32*), align 8, !dbg !702, !tbaa !703
  %68 = and i32 %67, 1, !dbg !702
  store volatile i32 %68, i32* %3, align 4, !dbg !702, !tbaa !619
  %69 = load volatile i32, i32* %3, align 4, !dbg !702, !tbaa !619
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %22), !dbg !704
  %70 = lshr i32 %25, 2, !dbg !705
  %71 = getelementptr inbounds [4 x i32], [4 x i32]* inttoptr (i32 1073807368 to [4 x i32]*), i32 0, i32 %70, !dbg !706
  %72 = load volatile i32, i32* %71, align 4, !dbg !706, !tbaa !619
  call void @llvm.dbg.value(metadata i32 %72, metadata !643, metadata !DIExpression()), !dbg !654
  %73 = and i32 %52, 12, !dbg !707
  %74 = shl i32 15, %73, !dbg !707
  %75 = xor i32 %74, -1, !dbg !707
  %76 = and i32 %72, %75, !dbg !707
  call void @llvm.dbg.value(metadata i32 %76, metadata !643, metadata !DIExpression()), !dbg !654
  switch i32 %18, label %77 [
    i32 1073809408, label %80
    i32 1073810432, label %78
    i32 1073811456, label %79
  ], !dbg !708

77:                                               ; preds = %64
  br label %80, !dbg !708

78:                                               ; preds = %64
  br label %80, !dbg !708

79:                                               ; preds = %64
  br label %80, !dbg !708

80:                                               ; preds = %64, %79, %78, %77
  %81 = phi i32 [ 0, %64 ], [ %20, %77 ], [ 1, %78 ], [ 2, %79 ], !dbg !708
  %82 = shl i32 %81, %73, !dbg !708
  %83 = or i32 %82, %76, !dbg !708
  call void @llvm.dbg.value(metadata i32 %83, metadata !643, metadata !DIExpression()), !dbg !654
  store volatile i32 %83, i32* %71, align 4, !dbg !709, !tbaa !619
  %84 = load i32, i32* %8, align 4, !dbg !710, !tbaa !665
  %85 = and i32 %84, 65536, !dbg !712
  %86 = icmp eq i32 %85, 0, !dbg !713
  br i1 %86, label %90, label %87, !dbg !714

87:                                               ; preds = %80
  %88 = load volatile i32, i32* inttoptr (i32 1073808384 to i32*), align 1024, !dbg !715, !tbaa !717
  %89 = or i32 %88, %28, !dbg !715
  br label %94, !dbg !719

90:                                               ; preds = %80
  %91 = xor i32 %28, -1, !dbg !720
  %92 = load volatile i32, i32* inttoptr (i32 1073808384 to i32*), align 1024, !dbg !720, !tbaa !717
  %93 = and i32 %92, %91, !dbg !720
  br label %94

94:                                               ; preds = %90, %87
  %95 = phi i32 [ %93, %90 ], [ %89, %87 ]
  store volatile i32 %95, i32* inttoptr (i32 1073808384 to i32*), align 1024, !dbg !722, !tbaa !717
  %96 = and i32 %84, 131072, !dbg !723
  %97 = icmp eq i32 %96, 0, !dbg !725
  br i1 %97, label %101, label %98, !dbg !726

98:                                               ; preds = %94
  %99 = load volatile i32, i32* inttoptr (i32 1073808388 to i32*), align 4, !dbg !727, !tbaa !729
  %100 = or i32 %99, %28, !dbg !727
  br label %105, !dbg !730

101:                                              ; preds = %94
  %102 = xor i32 %28, -1, !dbg !731
  %103 = load volatile i32, i32* inttoptr (i32 1073808388 to i32*), align 4, !dbg !731, !tbaa !729
  %104 = and i32 %103, %102, !dbg !731
  br label %105

105:                                              ; preds = %101, %98
  %106 = phi i32 [ %104, %101 ], [ %100, %98 ]
  store volatile i32 %106, i32* inttoptr (i32 1073808388 to i32*), align 4, !dbg !733, !tbaa !729
  %107 = and i32 %84, 1048576, !dbg !734
  %108 = icmp eq i32 %107, 0, !dbg !736
  br i1 %108, label %112, label %109, !dbg !737

109:                                              ; preds = %105
  %110 = load volatile i32, i32* inttoptr (i32 1073808392 to i32*), align 8, !dbg !738, !tbaa !740
  %111 = or i32 %110, %28, !dbg !738
  br label %116, !dbg !741

112:                                              ; preds = %105
  %113 = xor i32 %28, -1, !dbg !742
  %114 = load volatile i32, i32* inttoptr (i32 1073808392 to i32*), align 8, !dbg !742, !tbaa !740
  %115 = and i32 %114, %113, !dbg !742
  br label %116

116:                                              ; preds = %112, %109
  %117 = phi i32 [ %115, %112 ], [ %111, %109 ]
  store volatile i32 %117, i32* inttoptr (i32 1073808392 to i32*), align 8, !dbg !744, !tbaa !740
  %118 = and i32 %84, 2097152, !dbg !745
  %119 = icmp eq i32 %118, 0, !dbg !747
  br i1 %119, label %123, label %120, !dbg !748

120:                                              ; preds = %116
  %121 = load volatile i32, i32* inttoptr (i32 1073808396 to i32*), align 4, !dbg !749, !tbaa !751
  %122 = or i32 %121, %28, !dbg !749
  br label %127, !dbg !752

123:                                              ; preds = %116
  %124 = xor i32 %28, -1, !dbg !753
  %125 = load volatile i32, i32* inttoptr (i32 1073808396 to i32*), align 4, !dbg !753, !tbaa !751
  %126 = and i32 %125, %124, !dbg !753
  br label %127

127:                                              ; preds = %120, %123
  %128 = phi i32 [ %126, %123 ], [ %122, %120 ]
  store volatile i32 %128, i32* inttoptr (i32 1073808396 to i32*), align 4, !dbg !755, !tbaa !751
  br label %129, !dbg !756

129:                                              ; preds = %127, %48, %23
  %130 = phi i32 [ %49, %48 ], [ %26, %23 ], [ %49, %127 ], !dbg !757
  call void @llvm.dbg.value(metadata i32 %130, metadata !644, metadata !DIExpression()), !dbg !654
  %131 = add i32 %25, 1, !dbg !756
  call void @llvm.dbg.value(metadata i32 %131, metadata !640, metadata !DIExpression()), !dbg !654
  %132 = load i32, i32* %4, align 4, !dbg !655, !tbaa !656
  %133 = lshr i32 %132, %131, !dbg !758
  %134 = icmp eq i32 %133, 0, !dbg !658
  br i1 %134, label %135, label %23, !dbg !659, !llvm.loop !759

135:                                              ; preds = %129, %2
  ret void, !dbg !761
}

; Function Attrs: nofree noinline norecurse nounwind
define dso_local void @HAL_GPIO_DeInit(%struct.GPIO_TypeDef* noundef %0, i32 noundef %1) local_unnamed_addr #6 !dbg !762 {
  call void @llvm.dbg.value(metadata %struct.GPIO_TypeDef* %0, metadata !766, metadata !DIExpression()), !dbg !773
  call void @llvm.dbg.value(metadata i32 %1, metadata !767, metadata !DIExpression()), !dbg !773
  call void @llvm.dbg.value(metadata i32 0, metadata !768, metadata !DIExpression()), !dbg !773
  %3 = icmp eq i32 %1, 0, !dbg !774
  br i1 %3, label %62, label %4, !dbg !775

4:                                                ; preds = %2
  %5 = ptrtoint %struct.GPIO_TypeDef* %0 to i32
  %6 = icmp eq %struct.GPIO_TypeDef* %0, inttoptr (i32 1073812480 to %struct.GPIO_TypeDef*)
  %7 = select i1 %6, i32 3, i32 4
  %8 = getelementptr inbounds %struct.GPIO_TypeDef, %struct.GPIO_TypeDef* %0, i32 0, i32 0
  %9 = getelementptr inbounds %struct.GPIO_TypeDef, %struct.GPIO_TypeDef* %0, i32 0, i32 1
  %10 = getelementptr inbounds %struct.GPIO_TypeDef, %struct.GPIO_TypeDef* %0, i32 0, i32 3
  br label %11, !dbg !775

11:                                               ; preds = %4, %58
  %12 = phi i32 [ 0, %4 ], [ %59, %58 ]
  call void @llvm.dbg.value(metadata i32 %12, metadata !768, metadata !DIExpression()), !dbg !773
  %13 = shl i32 1, %12, !dbg !776
  %14 = and i32 %13, %1, !dbg !778
  call void @llvm.dbg.value(metadata i32 %14, metadata !769, metadata !DIExpression()), !dbg !773
  %15 = icmp eq i32 %14, 0, !dbg !779
  br i1 %15, label %58, label %16, !dbg !781

16:                                               ; preds = %11
  %17 = lshr i32 %12, 2, !dbg !782
  %18 = getelementptr inbounds [4 x i32], [4 x i32]* inttoptr (i32 1073807368 to [4 x i32]*), i32 0, i32 %17, !dbg !784
  %19 = load volatile i32, i32* %18, align 4, !dbg !784, !tbaa !619
  call void @llvm.dbg.value(metadata i32 %19, metadata !770, metadata !DIExpression()), !dbg !773
  %20 = shl i32 %12, 2, !dbg !785
  %21 = and i32 %20, 12, !dbg !785
  %22 = shl i32 15, %21, !dbg !786
  %23 = and i32 %19, %22, !dbg !787
  call void @llvm.dbg.value(metadata i32 %23, metadata !770, metadata !DIExpression()), !dbg !773
  switch i32 %5, label %24 [
    i32 1073809408, label %27
    i32 1073810432, label %25
    i32 1073811456, label %26
  ], !dbg !788

24:                                               ; preds = %16
  br label %27, !dbg !788

25:                                               ; preds = %16
  br label %27, !dbg !790

26:                                               ; preds = %16
  br label %27, !dbg !790

27:                                               ; preds = %16, %26, %25, %24
  %28 = phi i32 [ 0, %16 ], [ %7, %24 ], [ 1, %25 ], [ 2, %26 ], !dbg !788
  %29 = shl i32 %28, %21, !dbg !790
  %30 = icmp eq i32 %23, %29, !dbg !791
  br i1 %30, label %31, label %44, !dbg !792

31:                                               ; preds = %27
  call void @llvm.dbg.value(metadata i32 %22, metadata !770, metadata !DIExpression()), !dbg !773
  %32 = xor i32 %22, -1, !dbg !793
  %33 = load volatile i32, i32* %18, align 4, !dbg !793, !tbaa !619
  %34 = and i32 %33, %32, !dbg !793
  store volatile i32 %34, i32* %18, align 4, !dbg !793, !tbaa !619
  %35 = xor i32 %14, -1, !dbg !795
  %36 = load volatile i32, i32* inttoptr (i32 1073808384 to i32*), align 1024, !dbg !795, !tbaa !717
  %37 = and i32 %36, %35, !dbg !795
  store volatile i32 %37, i32* inttoptr (i32 1073808384 to i32*), align 1024, !dbg !795, !tbaa !717
  %38 = load volatile i32, i32* inttoptr (i32 1073808388 to i32*), align 4, !dbg !796, !tbaa !729
  %39 = and i32 %38, %35, !dbg !796
  store volatile i32 %39, i32* inttoptr (i32 1073808388 to i32*), align 4, !dbg !796, !tbaa !729
  %40 = load volatile i32, i32* inttoptr (i32 1073808392 to i32*), align 8, !dbg !797, !tbaa !740
  %41 = and i32 %40, %35, !dbg !797
  store volatile i32 %41, i32* inttoptr (i32 1073808392 to i32*), align 8, !dbg !797, !tbaa !740
  %42 = load volatile i32, i32* inttoptr (i32 1073808396 to i32*), align 4, !dbg !798, !tbaa !751
  %43 = and i32 %42, %35, !dbg !798
  store volatile i32 %43, i32* inttoptr (i32 1073808396 to i32*), align 4, !dbg !798, !tbaa !751
  br label %44, !dbg !799

44:                                               ; preds = %31, %27
  %45 = icmp ult i32 %14, 256, !dbg !800
  %46 = select i1 %45, i32* %8, i32* %9, !dbg !801
  call void @llvm.dbg.value(metadata i32* %46, metadata !771, metadata !DIExpression()), !dbg !773
  %47 = add i32 %20, -32, !dbg !802
  %48 = select i1 %45, i32 %20, i32 %47, !dbg !802
  call void @llvm.dbg.value(metadata i32 %48, metadata !772, metadata !DIExpression()), !dbg !773
  %49 = load volatile i32, i32* %46, align 4, !dbg !803, !tbaa !619
  %50 = shl i32 15, %48, !dbg !803
  %51 = xor i32 %50, -1, !dbg !803
  %52 = and i32 %49, %51, !dbg !803
  %53 = shl i32 4, %48, !dbg !803
  %54 = or i32 %52, %53, !dbg !803
  store volatile i32 %54, i32* %46, align 4, !dbg !803, !tbaa !619
  %55 = xor i32 %14, -1, !dbg !804
  %56 = load volatile i32, i32* %10, align 4, !dbg !804, !tbaa !805
  %57 = and i32 %56, %55, !dbg !804
  store volatile i32 %57, i32* %10, align 4, !dbg !804, !tbaa !805
  br label %58, !dbg !806

58:                                               ; preds = %44, %11
  %59 = add i32 %12, 1, !dbg !807
  call void @llvm.dbg.value(metadata i32 %59, metadata !768, metadata !DIExpression()), !dbg !773
  %60 = lshr i32 %1, %59, !dbg !808
  %61 = icmp eq i32 %60, 0, !dbg !774
  br i1 %61, label %62, label %11, !dbg !775, !llvm.loop !809

62:                                               ; preds = %58, %2
  ret void, !dbg !811
}

; Function Attrs: mustprogress nofree noinline norecurse nounwind willreturn
define dso_local i32 @HAL_GPIO_ReadPin(%struct.GPIO_TypeDef* noundef %0, i16 noundef zeroext %1) local_unnamed_addr #7 !dbg !812 {
  call void @llvm.dbg.value(metadata %struct.GPIO_TypeDef* %0, metadata !817, metadata !DIExpression()), !dbg !820
  call void @llvm.dbg.value(metadata i16 %1, metadata !818, metadata !DIExpression()), !dbg !820
  %3 = getelementptr inbounds %struct.GPIO_TypeDef, %struct.GPIO_TypeDef* %0, i32 0, i32 2, !dbg !821
  %4 = load volatile i32, i32* %3, align 4, !dbg !821, !tbaa !823
  %5 = zext i16 %1 to i32, !dbg !824
  %6 = and i32 %4, %5, !dbg !825
  %7 = icmp ne i32 %6, 0, !dbg !826
  %8 = zext i1 %7 to i32
  call void @llvm.dbg.value(metadata i32 %8, metadata !819, metadata !DIExpression()), !dbg !820
  ret i32 %8, !dbg !827
}

; Function Attrs: nofree noinline norecurse nounwind
define dso_local void @HAL_GPIO_WritePin(%struct.GPIO_TypeDef* noundef %0, i16 noundef zeroext %1, i32 noundef %2) local_unnamed_addr #6 !dbg !828 {
  call void @llvm.dbg.value(metadata %struct.GPIO_TypeDef* %0, metadata !832, metadata !DIExpression()), !dbg !835
  call void @llvm.dbg.value(metadata i16 %1, metadata !833, metadata !DIExpression()), !dbg !835
  call void @llvm.dbg.value(metadata i32 %2, metadata !834, metadata !DIExpression()), !dbg !835
  %4 = icmp eq i32 %2, 0, !dbg !836
  %5 = zext i16 %1 to i32, !dbg !838
  %6 = shl nuw i32 %5, 16, !dbg !839
  %7 = select i1 %4, i32 %6, i32 %5, !dbg !839
  %8 = getelementptr inbounds %struct.GPIO_TypeDef, %struct.GPIO_TypeDef* %0, i32 0, i32 4, !dbg !838
  store volatile i32 %7, i32* %8, align 4, !dbg !838, !tbaa !687
  ret void, !dbg !840
}

; Function Attrs: nofree noinline norecurse nounwind
define dso_local void @HAL_GPIO_TogglePin(%struct.GPIO_TypeDef* noundef %0, i16 noundef zeroext %1) local_unnamed_addr #6 !dbg !841 {
  call void @llvm.dbg.value(metadata %struct.GPIO_TypeDef* %0, metadata !845, metadata !DIExpression()), !dbg !847
  call void @llvm.dbg.value(metadata i16 %1, metadata !846, metadata !DIExpression()), !dbg !847
  %3 = getelementptr inbounds %struct.GPIO_TypeDef, %struct.GPIO_TypeDef* %0, i32 0, i32 3, !dbg !848
  %4 = load volatile i32, i32* %3, align 4, !dbg !848, !tbaa !805
  %5 = zext i16 %1 to i32, !dbg !850
  %6 = and i32 %4, %5, !dbg !851
  %7 = icmp eq i32 %6, 0, !dbg !852
  %8 = getelementptr inbounds %struct.GPIO_TypeDef, %struct.GPIO_TypeDef* %0, i32 0, i32 4, !dbg !853
  %9 = getelementptr inbounds %struct.GPIO_TypeDef, %struct.GPIO_TypeDef* %0, i32 0, i32 5, !dbg !853
  %10 = select i1 %7, i32* %8, i32* %9, !dbg !853
  store volatile i32 %5, i32* %10, align 4, !dbg !854, !tbaa !619
  ret void, !dbg !855
}

; Function Attrs: nofree noinline nounwind
define dso_local i32 @HAL_GPIO_LockPin(%struct.GPIO_TypeDef* noundef %0, i16 noundef zeroext %1) local_unnamed_addr #8 !dbg !856 {
  %3 = alloca i32, align 4
  call void @llvm.dbg.value(metadata %struct.GPIO_TypeDef* %0, metadata !861, metadata !DIExpression()), !dbg !864
  call void @llvm.dbg.value(metadata i16 %1, metadata !862, metadata !DIExpression()), !dbg !864
  %4 = bitcast i32* %3 to i8*, !dbg !865
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %4), !dbg !865
  call void @llvm.dbg.declare(metadata i32* %3, metadata !863, metadata !DIExpression()), !dbg !866
  store volatile i32 65536, i32* %3, align 4, !dbg !866, !tbaa !619
  %5 = zext i16 %1 to i32, !dbg !867
  %6 = load volatile i32, i32* %3, align 4, !dbg !867, !tbaa !619
  %7 = or i32 %6, %5, !dbg !867
  store volatile i32 %7, i32* %3, align 4, !dbg !867, !tbaa !619
  %8 = load volatile i32, i32* %3, align 4, !dbg !868, !tbaa !619
  %9 = getelementptr inbounds %struct.GPIO_TypeDef, %struct.GPIO_TypeDef* %0, i32 0, i32 6, !dbg !869
  store volatile i32 %8, i32* %9, align 4, !dbg !870, !tbaa !871
  store volatile i32 %5, i32* %9, align 4, !dbg !872, !tbaa !871
  %10 = load volatile i32, i32* %3, align 4, !dbg !873, !tbaa !619
  store volatile i32 %10, i32* %9, align 4, !dbg !874, !tbaa !871
  %11 = load volatile i32, i32* %9, align 4, !dbg !875, !tbaa !871
  store volatile i32 %11, i32* %3, align 4, !dbg !876, !tbaa !619
  %12 = load volatile i32, i32* %9, align 4, !dbg !877, !tbaa !871
  %13 = lshr i32 %12, 16, !dbg !879
  %14 = and i32 %13, 1, !dbg !879
  %15 = xor i32 %14, 1, !dbg !879
  %16 = bitcast i32* %3 to i8*, !dbg !880
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %16), !dbg !880
  ret i32 %15, !dbg !880
}

; Function Attrs: noinline nounwind
define dso_local void @HAL_GPIO_EXTI_IRQHandler(i16 noundef zeroext %0) local_unnamed_addr #9 !dbg !881 {
  call void @llvm.dbg.value(metadata i16 %0, metadata !885, metadata !DIExpression()), !dbg !886
  %2 = load volatile i32, i32* inttoptr (i32 1073808404 to i32*), align 4, !dbg !887, !tbaa !889
  %3 = zext i16 %0 to i32, !dbg !887
  %4 = and i32 %2, %3, !dbg !887
  %5 = icmp eq i32 %4, 0, !dbg !890
  br i1 %5, label %7, label %6, !dbg !891

6:                                                ; preds = %1
  store volatile i32 %3, i32* inttoptr (i32 1073808404 to i32*), align 4, !dbg !892, !tbaa !889
  call void @HAL_GPIO_EXTI_Callback(i16 noundef zeroext %0), !dbg !894
  br label %7, !dbg !895

7:                                                ; preds = %6, %1
  ret void, !dbg !896
}

; Function Attrs: noinline nounwind
define weak dso_local void @HAL_GPIO_EXTI_Callback(i16 noundef zeroext %0) local_unnamed_addr #9 !dbg !897 {
  call void @llvm.dbg.value(metadata i16 %0, metadata !899, metadata !DIExpression()), !dbg !900
  ret void, !dbg !901
}

; Function Attrs: noinline nounwind
define dso_local i32 @HAL_RCC_DeInit() local_unnamed_addr #9 !dbg !902 {
  %1 = call i32 @HAL_GetTick() #16, !dbg !907
  call void @llvm.dbg.value(metadata i32 %1, metadata !906, metadata !DIExpression()), !dbg !908
  %2 = load volatile i32, i32* inttoptr (i32 1073876992 to i32*), align 4096, !dbg !909, !tbaa !570
  %3 = or i32 %2, 1, !dbg !909
  store volatile i32 %3, i32* inttoptr (i32 1073876992 to i32*), align 4096, !dbg !909, !tbaa !570
  br label %4, !dbg !910

4:                                                ; preds = %8, %0
  %5 = load volatile i32, i32* inttoptr (i32 1073876992 to i32*), align 4096, !dbg !911, !tbaa !570
  %6 = and i32 %5, 2, !dbg !911
  %7 = icmp eq i32 %6, 0, !dbg !912
  br i1 %7, label %8, label %12, !dbg !910

8:                                                ; preds = %4
  %9 = call i32 @HAL_GetTick() #16, !dbg !913
  %10 = sub i32 %9, %1, !dbg !916
  %11 = icmp ugt i32 %10, 2, !dbg !917
  br i1 %11, label %58, label %4, !dbg !918, !llvm.loop !919

12:                                               ; preds = %4
  %13 = load volatile i32, i32* inttoptr (i32 1073876992 to i32*), align 4096, !dbg !921, !tbaa !570
  %14 = and i32 %13, -249, !dbg !921
  %15 = or i32 %14, 128, !dbg !921
  store volatile i32 %15, i32* inttoptr (i32 1073876992 to i32*), align 4096, !dbg !921, !tbaa !570
  %16 = call i32 @HAL_GetTick() #16, !dbg !922
  call void @llvm.dbg.value(metadata i32 %16, metadata !906, metadata !DIExpression()), !dbg !908
  store volatile i32 0, i32* inttoptr (i32 1073876996 to i32*), align 4, !dbg !923, !tbaa !576
  br label %17, !dbg !924

17:                                               ; preds = %21, %12
  %18 = load volatile i32, i32* inttoptr (i32 1073876996 to i32*), align 4, !dbg !925, !tbaa !576
  %19 = and i32 %18, 12, !dbg !925
  %20 = icmp eq i32 %19, 0, !dbg !926
  br i1 %20, label %25, label %21, !dbg !924

21:                                               ; preds = %17
  %22 = call i32 @HAL_GetTick() #16, !dbg !927
  %23 = sub i32 %22, %16, !dbg !930
  %24 = icmp ugt i32 %23, 5000, !dbg !931
  br i1 %24, label %58, label %17, !dbg !932, !llvm.loop !933

25:                                               ; preds = %17
  store i32 8000000, i32* @SystemCoreClock, align 4, !dbg !935, !tbaa !619
  %26 = load i32, i32* @uwTickPrio, align 4, !dbg !936, !tbaa !619
  %27 = call i32 @HAL_InitTick(i32 noundef %26) #16, !dbg !938
  %28 = icmp eq i32 %27, 0, !dbg !939
  br i1 %28, label %29, label %58, !dbg !940

29:                                               ; preds = %25
  %30 = call i32 @HAL_GetTick() #16, !dbg !941
  call void @llvm.dbg.value(metadata i32 %30, metadata !906, metadata !DIExpression()), !dbg !908
  %31 = load volatile i32, i32* inttoptr (i32 1073876992 to i32*), align 4096, !dbg !942, !tbaa !570
  %32 = and i32 %31, -16777217, !dbg !942
  store volatile i32 %32, i32* inttoptr (i32 1073876992 to i32*), align 4096, !dbg !942, !tbaa !570
  br label %33, !dbg !943

33:                                               ; preds = %37, %29
  %34 = load volatile i32, i32* inttoptr (i32 1073876992 to i32*), align 4096, !dbg !944, !tbaa !570
  %35 = and i32 %34, 33554432, !dbg !944
  %36 = icmp eq i32 %35, 0, !dbg !945
  br i1 %36, label %41, label %37, !dbg !943

37:                                               ; preds = %33
  %38 = call i32 @HAL_GetTick() #16, !dbg !946
  %39 = sub i32 %38, %30, !dbg !949
  %40 = icmp ugt i32 %39, 2, !dbg !950
  br i1 %40, label %58, label %33, !dbg !951, !llvm.loop !952

41:                                               ; preds = %33
  store volatile i32 0, i32* inttoptr (i32 1073876996 to i32*), align 4, !dbg !954, !tbaa !576
  %42 = call i32 @HAL_GetTick() #16, !dbg !955
  call void @llvm.dbg.value(metadata i32 %42, metadata !906, metadata !DIExpression()), !dbg !908
  %43 = load volatile i32, i32* inttoptr (i32 1073876992 to i32*), align 4096, !dbg !956, !tbaa !570
  %44 = and i32 %43, -589825, !dbg !956
  store volatile i32 %44, i32* inttoptr (i32 1073876992 to i32*), align 4096, !dbg !956, !tbaa !570
  br label %45, !dbg !957

45:                                               ; preds = %49, %41
  %46 = load volatile i32, i32* inttoptr (i32 1073876992 to i32*), align 4096, !dbg !958, !tbaa !570
  %47 = and i32 %46, 131072, !dbg !958
  %48 = icmp eq i32 %47, 0, !dbg !959
  br i1 %48, label %53, label %49, !dbg !957

49:                                               ; preds = %45
  %50 = call i32 @HAL_GetTick() #16, !dbg !960
  %51 = sub i32 %50, %42, !dbg !963
  %52 = icmp ugt i32 %51, 100, !dbg !964
  br i1 %52, label %58, label %45, !dbg !965, !llvm.loop !966

53:                                               ; preds = %45
  %54 = load volatile i32, i32* inttoptr (i32 1073876992 to i32*), align 4096, !dbg !968, !tbaa !570
  %55 = and i32 %54, -262145, !dbg !968
  store volatile i32 %55, i32* inttoptr (i32 1073876992 to i32*), align 4096, !dbg !968, !tbaa !570
  %56 = load volatile i32, i32* inttoptr (i32 1073877028 to i32*), align 4, !dbg !969, !tbaa !970
  %57 = or i32 %56, 16777216, !dbg !969
  store volatile i32 %57, i32* inttoptr (i32 1073877028 to i32*), align 4, !dbg !969, !tbaa !970
  store volatile i32 0, i32* inttoptr (i32 1073877000 to i32*), align 8, !dbg !971, !tbaa !581
  br label %58, !dbg !972

58:                                               ; preds = %8, %21, %37, %49, %25, %53
  %59 = phi i32 [ 0, %53 ], [ 1, %25 ], [ 3, %49 ], [ 3, %37 ], [ 3, %21 ], [ 3, %8 ], !dbg !908
  ret i32 %59, !dbg !973
}

; Function Attrs: noinline nounwind
define dso_local i32 @HAL_RCC_OscConfig(%struct.RCC_OscInitTypeDef* noundef readonly %0) local_unnamed_addr #9 !dbg !974 {
  %2 = alloca i32, align 4
  call void @llvm.dbg.value(metadata %struct.RCC_OscInitTypeDef* %0, metadata !996, metadata !DIExpression()), !dbg !1007
  %3 = icmp eq %struct.RCC_OscInitTypeDef* %0, null, !dbg !1008
  br i1 %3, label %298, label %4, !dbg !1010

4:                                                ; preds = %1
  %5 = getelementptr inbounds %struct.RCC_OscInitTypeDef, %struct.RCC_OscInitTypeDef* %0, i32 0, i32 0, !dbg !1011
  %6 = load i32, i32* %5, align 4, !dbg !1011, !tbaa !1013
  %7 = and i32 %6, 1, !dbg !1016
  %8 = icmp eq i32 %7, 0, !dbg !1017
  br i1 %8, label %70, label %9, !dbg !1018

9:                                                ; preds = %4
  %10 = load volatile i32, i32* inttoptr (i32 1073876996 to i32*), align 4, !dbg !1019, !tbaa !576
  %11 = and i32 %10, 12, !dbg !1019
  %12 = icmp eq i32 %11, 4, !dbg !1022
  br i1 %12, label %21, label %13, !dbg !1023

13:                                               ; preds = %9
  %14 = load volatile i32, i32* inttoptr (i32 1073876996 to i32*), align 4, !dbg !1024, !tbaa !576
  %15 = and i32 %14, 12, !dbg !1024
  %16 = icmp eq i32 %15, 8, !dbg !1025
  br i1 %16, label %17, label %29, !dbg !1026

17:                                               ; preds = %13
  %18 = load volatile i32, i32* inttoptr (i32 1073876996 to i32*), align 4, !dbg !1027, !tbaa !576
  %19 = and i32 %18, 65536, !dbg !1027
  %20 = icmp eq i32 %19, 0, !dbg !1028
  br i1 %20, label %29, label %21, !dbg !1029

21:                                               ; preds = %17, %9
  %22 = load volatile i32, i32* inttoptr (i32 1073876992 to i32*), align 4096, !dbg !1030, !tbaa !570
  %23 = and i32 %22, 131072, !dbg !1030
  %24 = icmp eq i32 %23, 0, !dbg !1033
  br i1 %24, label %70, label %25, !dbg !1034

25:                                               ; preds = %21
  %26 = getelementptr inbounds %struct.RCC_OscInitTypeDef, %struct.RCC_OscInitTypeDef* %0, i32 0, i32 1, !dbg !1035
  %27 = load i32, i32* %26, align 4, !dbg !1035, !tbaa !1036
  %28 = icmp eq i32 %27, 0, !dbg !1037
  br i1 %28, label %298, label %70, !dbg !1038

29:                                               ; preds = %13, %17
  %30 = getelementptr inbounds %struct.RCC_OscInitTypeDef, %struct.RCC_OscInitTypeDef* %0, i32 0, i32 1, !dbg !1039
  %31 = load i32, i32* %30, align 4, !dbg !1039, !tbaa !1036
  switch i32 %31, label %45 [
    i32 65536, label %32
    i32 0, label %35
    i32 327680, label %40
  ], !dbg !1043

32:                                               ; preds = %29
  %33 = load volatile i32, i32* inttoptr (i32 1073876992 to i32*), align 4096, !dbg !1044, !tbaa !570
  %34 = or i32 %33, 65536, !dbg !1044
  br label %50, !dbg !1044

35:                                               ; preds = %29
  %36 = load volatile i32, i32* inttoptr (i32 1073876992 to i32*), align 4096, !dbg !1046, !tbaa !570
  %37 = and i32 %36, -65537, !dbg !1046
  store volatile i32 %37, i32* inttoptr (i32 1073876992 to i32*), align 4096, !dbg !1046, !tbaa !570
  %38 = load volatile i32, i32* inttoptr (i32 1073876992 to i32*), align 4096, !dbg !1046, !tbaa !570
  %39 = and i32 %38, -262145, !dbg !1046
  br label %50, !dbg !1046

40:                                               ; preds = %29
  %41 = load volatile i32, i32* inttoptr (i32 1073876992 to i32*), align 4096, !dbg !1049, !tbaa !570
  %42 = or i32 %41, 262144, !dbg !1049
  store volatile i32 %42, i32* inttoptr (i32 1073876992 to i32*), align 4096, !dbg !1049, !tbaa !570
  %43 = load volatile i32, i32* inttoptr (i32 1073876992 to i32*), align 4096, !dbg !1049, !tbaa !570
  %44 = or i32 %43, 65536, !dbg !1049
  br label %50, !dbg !1049

45:                                               ; preds = %29
  %46 = load volatile i32, i32* inttoptr (i32 1073876992 to i32*), align 4096, !dbg !1052, !tbaa !570
  %47 = and i32 %46, -65537, !dbg !1052
  store volatile i32 %47, i32* inttoptr (i32 1073876992 to i32*), align 4096, !dbg !1052, !tbaa !570
  %48 = load volatile i32, i32* inttoptr (i32 1073876992 to i32*), align 4096, !dbg !1052, !tbaa !570
  %49 = and i32 %48, -262145, !dbg !1052
  br label %50

50:                                               ; preds = %35, %45, %40, %32
  %51 = phi i32 [ %39, %35 ], [ %49, %45 ], [ %44, %40 ], [ %34, %32 ]
  store volatile i32 %51, i32* inttoptr (i32 1073876992 to i32*), align 4096, !dbg !1054, !tbaa !570
  %52 = icmp eq i32 %31, 0, !dbg !1055
  %53 = call i32 @HAL_GetTick() #16, !dbg !1057
  call void @llvm.dbg.value(metadata i32 %53, metadata !997, metadata !DIExpression()), !dbg !1007
  call void @llvm.dbg.value(metadata i32 %53, metadata !997, metadata !DIExpression()), !dbg !1007
  br i1 %52, label %62, label %54, !dbg !1058

54:                                               ; preds = %50, %58
  %55 = load volatile i32, i32* inttoptr (i32 1073876992 to i32*), align 4096, !dbg !1059, !tbaa !570
  %56 = and i32 %55, 131072, !dbg !1059
  %57 = icmp eq i32 %56, 0, !dbg !1061
  br i1 %57, label %58, label %70, !dbg !1062

58:                                               ; preds = %54
  %59 = call i32 @HAL_GetTick() #16, !dbg !1063
  %60 = sub i32 %59, %53, !dbg !1066
  %61 = icmp ugt i32 %60, 100, !dbg !1067
  br i1 %61, label %298, label %54, !dbg !1068, !llvm.loop !1069

62:                                               ; preds = %50, %66
  %63 = load volatile i32, i32* inttoptr (i32 1073876992 to i32*), align 4096, !dbg !1071, !tbaa !570
  %64 = and i32 %63, 131072, !dbg !1071
  %65 = icmp eq i32 %64, 0, !dbg !1073
  br i1 %65, label %70, label %66, !dbg !1074

66:                                               ; preds = %62
  %67 = call i32 @HAL_GetTick() #16, !dbg !1075
  %68 = sub i32 %67, %53, !dbg !1078
  %69 = icmp ugt i32 %68, 100, !dbg !1079
  br i1 %69, label %298, label %62, !dbg !1080, !llvm.loop !1081

70:                                               ; preds = %54, %62, %25, %21, %4
  %71 = load i32, i32* %5, align 4, !dbg !1083, !tbaa !1013
  %72 = and i32 %71, 2, !dbg !1085
  %73 = icmp eq i32 %72, 0, !dbg !1086
  br i1 %73, label %125, label %74, !dbg !1087

74:                                               ; preds = %70
  %75 = load volatile i32, i32* inttoptr (i32 1073876996 to i32*), align 4, !dbg !1088, !tbaa !576
  %76 = and i32 %75, 12, !dbg !1088
  %77 = icmp eq i32 %76, 0, !dbg !1091
  br i1 %77, label %86, label %78, !dbg !1092

78:                                               ; preds = %74
  %79 = load volatile i32, i32* inttoptr (i32 1073876996 to i32*), align 4, !dbg !1093, !tbaa !576
  %80 = and i32 %79, 12, !dbg !1093
  %81 = icmp eq i32 %80, 8, !dbg !1094
  br i1 %81, label %82, label %94, !dbg !1095

82:                                               ; preds = %78
  %83 = load volatile i32, i32* inttoptr (i32 1073876996 to i32*), align 4, !dbg !1096, !tbaa !576
  %84 = and i32 %83, 65536, !dbg !1096
  %85 = icmp eq i32 %84, 0, !dbg !1097
  br i1 %85, label %86, label %94, !dbg !1098

86:                                               ; preds = %82, %74
  %87 = load volatile i32, i32* inttoptr (i32 1073876992 to i32*), align 4096, !dbg !1099, !tbaa !570
  %88 = and i32 %87, 2, !dbg !1099
  %89 = icmp eq i32 %88, 0, !dbg !1102
  br i1 %89, label %118, label %90, !dbg !1103

90:                                               ; preds = %86
  %91 = getelementptr inbounds %struct.RCC_OscInitTypeDef, %struct.RCC_OscInitTypeDef* %0, i32 0, i32 4, !dbg !1104
  %92 = load i32, i32* %91, align 4, !dbg !1104, !tbaa !1105
  %93 = icmp eq i32 %92, 1, !dbg !1106
  br i1 %93, label %118, label %298, !dbg !1107

94:                                               ; preds = %82, %78
  %95 = getelementptr inbounds %struct.RCC_OscInitTypeDef, %struct.RCC_OscInitTypeDef* %0, i32 0, i32 4, !dbg !1108
  %96 = load i32, i32* %95, align 4, !dbg !1108, !tbaa !1105
  %97 = icmp eq i32 %96, 0, !dbg !1111
  br i1 %97, label %108, label %98, !dbg !1112

98:                                               ; preds = %94
  store volatile i32 1, i32* inttoptr (i32 1111621632 to i32*), align 131072, !dbg !1113, !tbaa !619
  %99 = call i32 @HAL_GetTick() #16, !dbg !1115
  call void @llvm.dbg.value(metadata i32 %99, metadata !997, metadata !DIExpression()), !dbg !1007
  br label %100, !dbg !1116

100:                                              ; preds = %104, %98
  %101 = load volatile i32, i32* inttoptr (i32 1073876992 to i32*), align 4096, !dbg !1117, !tbaa !570
  %102 = and i32 %101, 2, !dbg !1117
  %103 = icmp eq i32 %102, 0, !dbg !1118
  br i1 %103, label %104, label %118, !dbg !1116

104:                                              ; preds = %100
  %105 = call i32 @HAL_GetTick() #16, !dbg !1119
  %106 = sub i32 %105, %99, !dbg !1122
  %107 = icmp ugt i32 %106, 2, !dbg !1123
  br i1 %107, label %298, label %100, !dbg !1124, !llvm.loop !1125

108:                                              ; preds = %94
  store volatile i32 0, i32* inttoptr (i32 1111621632 to i32*), align 131072, !dbg !1127, !tbaa !619
  %109 = call i32 @HAL_GetTick() #16, !dbg !1129
  call void @llvm.dbg.value(metadata i32 %109, metadata !997, metadata !DIExpression()), !dbg !1007
  br label %110, !dbg !1130

110:                                              ; preds = %114, %108
  %111 = load volatile i32, i32* inttoptr (i32 1073876992 to i32*), align 4096, !dbg !1131, !tbaa !570
  %112 = and i32 %111, 2, !dbg !1131
  %113 = icmp eq i32 %112, 0, !dbg !1132
  br i1 %113, label %125, label %114, !dbg !1130

114:                                              ; preds = %110
  %115 = call i32 @HAL_GetTick() #16, !dbg !1133
  %116 = sub i32 %115, %109, !dbg !1136
  %117 = icmp ugt i32 %116, 2, !dbg !1137
  br i1 %117, label %298, label %110, !dbg !1138, !llvm.loop !1139

118:                                              ; preds = %100, %86, %90
  %119 = load volatile i32, i32* inttoptr (i32 1073876992 to i32*), align 4096, !dbg !1141, !tbaa !570
  %120 = and i32 %119, -249, !dbg !1141
  %121 = getelementptr inbounds %struct.RCC_OscInitTypeDef, %struct.RCC_OscInitTypeDef* %0, i32 0, i32 5, !dbg !1141
  %122 = load i32, i32* %121, align 4, !dbg !1141, !tbaa !1142
  %123 = shl i32 %122, 3, !dbg !1141
  %124 = or i32 %123, %120, !dbg !1141
  store volatile i32 %124, i32* inttoptr (i32 1073876992 to i32*), align 4096, !dbg !1141, !tbaa !570
  br label %125, !dbg !1143

125:                                              ; preds = %110, %118, %70
  %126 = load i32, i32* %5, align 4, !dbg !1143, !tbaa !1013
  %127 = and i32 %126, 8, !dbg !1145
  %128 = icmp eq i32 %127, 0, !dbg !1146
  br i1 %128, label %154, label %129, !dbg !1147

129:                                              ; preds = %125
  %130 = getelementptr inbounds %struct.RCC_OscInitTypeDef, %struct.RCC_OscInitTypeDef* %0, i32 0, i32 6, !dbg !1148
  %131 = load i32, i32* %130, align 4, !dbg !1148, !tbaa !1151
  %132 = icmp eq i32 %131, 0, !dbg !1152
  br i1 %132, label %144, label %133, !dbg !1153

133:                                              ; preds = %129
  store volatile i32 1, i32* inttoptr (i32 1111622784 to i32*), align 128, !dbg !1154, !tbaa !619
  %134 = call i32 @HAL_GetTick() #16, !dbg !1156
  call void @llvm.dbg.value(metadata i32 %134, metadata !997, metadata !DIExpression()), !dbg !1007
  br label %135, !dbg !1157

135:                                              ; preds = %139, %133
  %136 = load volatile i32, i32* inttoptr (i32 1073877028 to i32*), align 4, !dbg !1158, !tbaa !970
  %137 = and i32 %136, 2, !dbg !1158
  %138 = icmp eq i32 %137, 0, !dbg !1159
  br i1 %138, label %139, label %143, !dbg !1157

139:                                              ; preds = %135
  %140 = call i32 @HAL_GetTick() #16, !dbg !1160
  %141 = sub i32 %140, %134, !dbg !1163
  %142 = icmp ugt i32 %141, 2, !dbg !1164
  br i1 %142, label %298, label %135, !dbg !1165, !llvm.loop !1166

143:                                              ; preds = %135
  call fastcc void @RCC_Delay(), !dbg !1168
  br label %154, !dbg !1169

144:                                              ; preds = %129
  store volatile i32 0, i32* inttoptr (i32 1111622784 to i32*), align 128, !dbg !1170, !tbaa !619
  %145 = call i32 @HAL_GetTick() #16, !dbg !1172
  call void @llvm.dbg.value(metadata i32 %145, metadata !997, metadata !DIExpression()), !dbg !1007
  br label %146, !dbg !1173

146:                                              ; preds = %150, %144
  %147 = load volatile i32, i32* inttoptr (i32 1073877028 to i32*), align 4, !dbg !1174, !tbaa !970
  %148 = and i32 %147, 2, !dbg !1174
  %149 = icmp eq i32 %148, 0, !dbg !1175
  br i1 %149, label %154, label %150, !dbg !1173

150:                                              ; preds = %146
  %151 = call i32 @HAL_GetTick() #16, !dbg !1176
  %152 = sub i32 %151, %145, !dbg !1179
  %153 = icmp ugt i32 %152, 2, !dbg !1180
  br i1 %153, label %298, label %146, !dbg !1181, !llvm.loop !1182

154:                                              ; preds = %146, %143, %125
  %155 = load i32, i32* %5, align 4, !dbg !1184, !tbaa !1013
  %156 = and i32 %155, 4, !dbg !1185
  %157 = icmp eq i32 %156, 0, !dbg !1186
  br i1 %157, label %231, label %158, !dbg !1187

158:                                              ; preds = %154
  call void @llvm.dbg.value(metadata i32 0, metadata !999, metadata !DIExpression()), !dbg !1188
  %159 = load volatile i32, i32* inttoptr (i32 1073877020 to i32*), align 4, !dbg !1189, !tbaa !1190
  %160 = and i32 %159, 268435456, !dbg !1189
  %161 = icmp eq i32 %160, 0, !dbg !1189
  br i1 %161, label %162, label %170, !dbg !1191

162:                                              ; preds = %158
  %163 = bitcast i32* %2 to i8*, !dbg !1192
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %163), !dbg !1192
  call void @llvm.dbg.declare(metadata i32* %2, metadata !1003, metadata !DIExpression()), !dbg !1192
  %164 = load volatile i32, i32* inttoptr (i32 1073877020 to i32*), align 4, !dbg !1192, !tbaa !1190
  %165 = or i32 %164, 268435456, !dbg !1192
  store volatile i32 %165, i32* inttoptr (i32 1073877020 to i32*), align 4, !dbg !1192, !tbaa !1190
  %166 = load volatile i32, i32* inttoptr (i32 1073877020 to i32*), align 4, !dbg !1192, !tbaa !1190
  %167 = and i32 %166, 268435456, !dbg !1192
  store volatile i32 %167, i32* %2, align 4, !dbg !1192, !tbaa !619
  %168 = load volatile i32, i32* %2, align 4, !dbg !1192, !tbaa !619
  %169 = bitcast i32* %2 to i8*, !dbg !1193
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %169), !dbg !1193
  call void @llvm.dbg.value(metadata i32 1, metadata !999, metadata !DIExpression()), !dbg !1188
  br label %170, !dbg !1194

170:                                              ; preds = %162, %158
  call void @llvm.dbg.value(metadata i32 undef, metadata !999, metadata !DIExpression()), !dbg !1188
  %171 = load volatile i32, i32* inttoptr (i32 1073770496 to i32*), align 4096, !dbg !1195, !tbaa !1197
  %172 = and i32 %171, 256, !dbg !1195
  %173 = icmp eq i32 %172, 0, !dbg !1195
  br i1 %173, label %174, label %186, !dbg !1199

174:                                              ; preds = %170
  %175 = load volatile i32, i32* inttoptr (i32 1073770496 to i32*), align 4096, !dbg !1200, !tbaa !1197
  %176 = or i32 %175, 256, !dbg !1200
  store volatile i32 %176, i32* inttoptr (i32 1073770496 to i32*), align 4096, !dbg !1200, !tbaa !1197
  %177 = call i32 @HAL_GetTick() #16, !dbg !1202
  call void @llvm.dbg.value(metadata i32 %177, metadata !997, metadata !DIExpression()), !dbg !1007
  br label %178, !dbg !1203

178:                                              ; preds = %182, %174
  %179 = load volatile i32, i32* inttoptr (i32 1073770496 to i32*), align 4096, !dbg !1204, !tbaa !1197
  %180 = and i32 %179, 256, !dbg !1204
  %181 = icmp eq i32 %180, 0, !dbg !1204
  br i1 %181, label %182, label %186, !dbg !1203

182:                                              ; preds = %178
  %183 = call i32 @HAL_GetTick() #16, !dbg !1205
  %184 = sub i32 %183, %177, !dbg !1208
  %185 = icmp ugt i32 %184, 100, !dbg !1209
  br i1 %185, label %298, label %178, !dbg !1210, !llvm.loop !1211

186:                                              ; preds = %178, %170
  %187 = getelementptr inbounds %struct.RCC_OscInitTypeDef, %struct.RCC_OscInitTypeDef* %0, i32 0, i32 3, !dbg !1213
  %188 = load i32, i32* %187, align 4, !dbg !1213, !tbaa !1216
  switch i32 %188, label %202 [
    i32 1, label %189
    i32 0, label %192
    i32 5, label %197
  ], !dbg !1217

189:                                              ; preds = %186
  %190 = load volatile i32, i32* inttoptr (i32 1073877024 to i32*), align 32, !dbg !1218, !tbaa !1220
  %191 = or i32 %190, 1, !dbg !1218
  br label %207, !dbg !1218

192:                                              ; preds = %186
  %193 = load volatile i32, i32* inttoptr (i32 1073877024 to i32*), align 32, !dbg !1221, !tbaa !1220
  %194 = and i32 %193, -2, !dbg !1221
  store volatile i32 %194, i32* inttoptr (i32 1073877024 to i32*), align 32, !dbg !1221, !tbaa !1220
  %195 = load volatile i32, i32* inttoptr (i32 1073877024 to i32*), align 32, !dbg !1221, !tbaa !1220
  %196 = and i32 %195, -5, !dbg !1221
  br label %207, !dbg !1221

197:                                              ; preds = %186
  %198 = load volatile i32, i32* inttoptr (i32 1073877024 to i32*), align 32, !dbg !1224, !tbaa !1220
  %199 = or i32 %198, 4, !dbg !1224
  store volatile i32 %199, i32* inttoptr (i32 1073877024 to i32*), align 32, !dbg !1224, !tbaa !1220
  %200 = load volatile i32, i32* inttoptr (i32 1073877024 to i32*), align 32, !dbg !1224, !tbaa !1220
  %201 = or i32 %200, 1, !dbg !1224
  br label %207, !dbg !1224

202:                                              ; preds = %186
  %203 = load volatile i32, i32* inttoptr (i32 1073877024 to i32*), align 32, !dbg !1227, !tbaa !1220
  %204 = and i32 %203, -2, !dbg !1227
  store volatile i32 %204, i32* inttoptr (i32 1073877024 to i32*), align 32, !dbg !1227, !tbaa !1220
  %205 = load volatile i32, i32* inttoptr (i32 1073877024 to i32*), align 32, !dbg !1227, !tbaa !1220
  %206 = and i32 %205, -5, !dbg !1227
  br label %207

207:                                              ; preds = %192, %202, %197, %189
  %208 = phi i32 [ %196, %192 ], [ %206, %202 ], [ %201, %197 ], [ %191, %189 ]
  store volatile i32 %208, i32* inttoptr (i32 1073877024 to i32*), align 32, !dbg !1229, !tbaa !1220
  %209 = icmp eq i32 %188, 0, !dbg !1230
  %210 = call i32 @HAL_GetTick() #16, !dbg !1232
  call void @llvm.dbg.value(metadata i32 %210, metadata !997, metadata !DIExpression()), !dbg !1007
  call void @llvm.dbg.value(metadata i32 %210, metadata !997, metadata !DIExpression()), !dbg !1007
  br i1 %209, label %219, label %211, !dbg !1233

211:                                              ; preds = %207, %215
  %212 = load volatile i32, i32* inttoptr (i32 1073877024 to i32*), align 32, !dbg !1234, !tbaa !1220
  %213 = and i32 %212, 2, !dbg !1234
  %214 = icmp eq i32 %213, 0, !dbg !1236
  br i1 %214, label %215, label %227, !dbg !1237

215:                                              ; preds = %211
  %216 = call i32 @HAL_GetTick() #16, !dbg !1238
  %217 = sub i32 %216, %210, !dbg !1241
  %218 = icmp ugt i32 %217, 5000, !dbg !1242
  br i1 %218, label %298, label %211, !dbg !1243, !llvm.loop !1244

219:                                              ; preds = %207, %223
  %220 = load volatile i32, i32* inttoptr (i32 1073877024 to i32*), align 32, !dbg !1246, !tbaa !1220
  %221 = and i32 %220, 2, !dbg !1246
  %222 = icmp eq i32 %221, 0, !dbg !1248
  br i1 %222, label %227, label %223, !dbg !1249

223:                                              ; preds = %219
  %224 = call i32 @HAL_GetTick() #16, !dbg !1250
  %225 = sub i32 %224, %210, !dbg !1253
  %226 = icmp ugt i32 %225, 5000, !dbg !1254
  br i1 %226, label %298, label %219, !dbg !1255, !llvm.loop !1256

227:                                              ; preds = %211, %219
  br i1 %161, label %228, label %231, !dbg !1258

228:                                              ; preds = %227
  %229 = load volatile i32, i32* inttoptr (i32 1073877020 to i32*), align 4, !dbg !1259, !tbaa !1190
  %230 = and i32 %229, -268435457, !dbg !1259
  store volatile i32 %230, i32* inttoptr (i32 1073877020 to i32*), align 4, !dbg !1259, !tbaa !1190
  br label %231, !dbg !1262

231:                                              ; preds = %228, %227, %154
  %232 = getelementptr inbounds %struct.RCC_OscInitTypeDef, %struct.RCC_OscInitTypeDef* %0, i32 0, i32 7, i32 0, !dbg !1263
  %233 = load i32, i32* %232, align 4, !dbg !1263, !tbaa !1265
  %234 = icmp eq i32 %233, 0, !dbg !1266
  br i1 %234, label %297, label %235, !dbg !1267

235:                                              ; preds = %231
  %236 = load volatile i32, i32* inttoptr (i32 1073876996 to i32*), align 4, !dbg !1268, !tbaa !576
  %237 = and i32 %236, 12, !dbg !1268
  %238 = icmp eq i32 %237, 8, !dbg !1271
  br i1 %238, label %284, label %239, !dbg !1272

239:                                              ; preds = %235
  %240 = icmp eq i32 %233, 2, !dbg !1273
  store volatile i32 0, i32* inttoptr (i32 1111621728 to i32*), align 32, !dbg !1276, !tbaa !619
  %241 = call i32 @HAL_GetTick() #16, !dbg !1276
  call void @llvm.dbg.value(metadata i32 %241, metadata !997, metadata !DIExpression()), !dbg !1007
  call void @llvm.dbg.value(metadata i32 %241, metadata !997, metadata !DIExpression()), !dbg !1007
  br i1 %240, label %242, label %276, !dbg !1277

242:                                              ; preds = %239, %246
  %243 = load volatile i32, i32* inttoptr (i32 1073876992 to i32*), align 4096, !dbg !1278, !tbaa !570
  %244 = and i32 %243, 33554432, !dbg !1278
  %245 = icmp eq i32 %244, 0, !dbg !1280
  br i1 %245, label %250, label %246, !dbg !1281

246:                                              ; preds = %242
  %247 = call i32 @HAL_GetTick() #16, !dbg !1282
  %248 = sub i32 %247, %241, !dbg !1285
  %249 = icmp ugt i32 %248, 2, !dbg !1286
  br i1 %249, label %298, label %242, !dbg !1287, !llvm.loop !1288

250:                                              ; preds = %242
  %251 = getelementptr inbounds %struct.RCC_OscInitTypeDef, %struct.RCC_OscInitTypeDef* %0, i32 0, i32 7, i32 1, !dbg !1290
  %252 = load i32, i32* %251, align 4, !dbg !1290, !tbaa !1292
  %253 = icmp eq i32 %252, 65536, !dbg !1293
  br i1 %253, label %254, label %260, !dbg !1294

254:                                              ; preds = %250
  %255 = load volatile i32, i32* inttoptr (i32 1073876996 to i32*), align 4, !dbg !1295, !tbaa !576
  %256 = and i32 %255, -131073, !dbg !1295
  %257 = getelementptr inbounds %struct.RCC_OscInitTypeDef, %struct.RCC_OscInitTypeDef* %0, i32 0, i32 2, !dbg !1295
  %258 = load i32, i32* %257, align 4, !dbg !1295, !tbaa !1297
  %259 = or i32 %256, %258, !dbg !1295
  store volatile i32 %259, i32* inttoptr (i32 1073876996 to i32*), align 4, !dbg !1295, !tbaa !576
  br label %260, !dbg !1298

260:                                              ; preds = %254, %250
  %261 = load volatile i32, i32* inttoptr (i32 1073876996 to i32*), align 4, !dbg !1299, !tbaa !576
  %262 = and i32 %261, -3997697, !dbg !1299
  %263 = getelementptr inbounds %struct.RCC_OscInitTypeDef, %struct.RCC_OscInitTypeDef* %0, i32 0, i32 7, i32 2, !dbg !1299
  %264 = load i32, i32* %263, align 4, !dbg !1299, !tbaa !1300
  %265 = or i32 %264, %252, !dbg !1299
  %266 = or i32 %265, %262, !dbg !1299
  store volatile i32 %266, i32* inttoptr (i32 1073876996 to i32*), align 4, !dbg !1299, !tbaa !576
  store volatile i32 1, i32* inttoptr (i32 1111621728 to i32*), align 32, !dbg !1301, !tbaa !619
  %267 = call i32 @HAL_GetTick() #16, !dbg !1302
  call void @llvm.dbg.value(metadata i32 %267, metadata !997, metadata !DIExpression()), !dbg !1007
  br label %268, !dbg !1303

268:                                              ; preds = %272, %260
  %269 = load volatile i32, i32* inttoptr (i32 1073876992 to i32*), align 4096, !dbg !1304, !tbaa !570
  %270 = and i32 %269, 33554432, !dbg !1304
  %271 = icmp eq i32 %270, 0, !dbg !1305
  br i1 %271, label %272, label %297, !dbg !1303

272:                                              ; preds = %268
  %273 = call i32 @HAL_GetTick() #16, !dbg !1306
  %274 = sub i32 %273, %267, !dbg !1309
  %275 = icmp ugt i32 %274, 2, !dbg !1310
  br i1 %275, label %298, label %268, !dbg !1311, !llvm.loop !1312

276:                                              ; preds = %239, %280
  %277 = load volatile i32, i32* inttoptr (i32 1073876992 to i32*), align 4096, !dbg !1314, !tbaa !570
  %278 = and i32 %277, 33554432, !dbg !1314
  %279 = icmp eq i32 %278, 0, !dbg !1316
  br i1 %279, label %297, label %280, !dbg !1317

280:                                              ; preds = %276
  %281 = call i32 @HAL_GetTick() #16, !dbg !1318
  %282 = sub i32 %281, %241, !dbg !1321
  %283 = icmp ugt i32 %282, 2, !dbg !1322
  br i1 %283, label %298, label %276, !dbg !1323, !llvm.loop !1324

284:                                              ; preds = %235
  %285 = icmp eq i32 %233, 1, !dbg !1326
  br i1 %285, label %298, label %286, !dbg !1329

286:                                              ; preds = %284
  %287 = load volatile i32, i32* inttoptr (i32 1073876996 to i32*), align 4, !dbg !1330, !tbaa !576
  call void @llvm.dbg.value(metadata i32 %287, metadata !998, metadata !DIExpression()), !dbg !1007
  %288 = and i32 %287, 65536, !dbg !1332
  %289 = getelementptr inbounds %struct.RCC_OscInitTypeDef, %struct.RCC_OscInitTypeDef* %0, i32 0, i32 7, i32 1, !dbg !1334
  %290 = load i32, i32* %289, align 4, !dbg !1334, !tbaa !1292
  %291 = icmp eq i32 %288, %290, !dbg !1335
  br i1 %291, label %292, label %298, !dbg !1336

292:                                              ; preds = %286
  %293 = and i32 %287, 3932160, !dbg !1337
  %294 = getelementptr inbounds %struct.RCC_OscInitTypeDef, %struct.RCC_OscInitTypeDef* %0, i32 0, i32 7, i32 2, !dbg !1338
  %295 = load i32, i32* %294, align 4, !dbg !1338, !tbaa !1300
  %296 = icmp eq i32 %293, %295, !dbg !1339
  br i1 %296, label %297, label %298, !dbg !1340

297:                                              ; preds = %276, %268, %292, %231
  br label %298, !dbg !1341

298:                                              ; preds = %58, %66, %104, %114, %139, %150, %182, %215, %223, %280, %246, %272, %286, %292, %284, %90, %25, %1, %297
  %299 = phi i32 [ 0, %297 ], [ 1, %1 ], [ 1, %25 ], [ 1, %90 ], [ 1, %284 ], [ 1, %292 ], [ 1, %286 ], [ 3, %272 ], [ 3, %246 ], [ 3, %280 ], [ 3, %223 ], [ 3, %215 ], [ 3, %182 ], [ 3, %150 ], [ 3, %139 ], [ 3, %114 ], [ 3, %104 ], [ 3, %66 ], [ 3, %58 ], !dbg !1007
  ret i32 %299, !dbg !1342
}

; Function Attrs: noinline nounwind
define internal fastcc void @RCC_Delay() unnamed_addr #9 !dbg !1343 {
  %1 = alloca i32, align 4
  call void @llvm.dbg.value(metadata i32 1, metadata !1347, metadata !DIExpression()), !dbg !1349
  %2 = bitcast i32* %1 to i8*, !dbg !1350
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %2), !dbg !1350
  call void @llvm.dbg.declare(metadata i32* %1, metadata !1348, metadata !DIExpression()), !dbg !1351
  %3 = load i32, i32* @SystemCoreClock, align 4, !dbg !1352, !tbaa !619
  %4 = udiv i32 %3, 8000, !dbg !1353
  store volatile i32 %4, i32* %1, align 4, !dbg !1351, !tbaa !619
  br label %5, !dbg !1354

5:                                                ; preds = %5, %0
  call void asm sideeffect "nop", ""() #16, !dbg !1355, !srcloc !1357
  %6 = load volatile i32, i32* %1, align 4, !dbg !1358, !tbaa !619
  %7 = add i32 %6, -1, !dbg !1358
  store volatile i32 %7, i32* %1, align 4, !dbg !1358, !tbaa !619
  %8 = icmp eq i32 %6, 0, !dbg !1359
  br i1 %8, label %9, label %5, !dbg !1359, !llvm.loop !1360

9:                                                ; preds = %5
  %10 = bitcast i32* %1 to i8*, !dbg !1362
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %10), !dbg !1362
  ret void, !dbg !1362
}

; Function Attrs: noinline nounwind
define dso_local i32 @HAL_RCC_ClockConfig(%struct.RCC_ClkInitTypeDef* noundef readonly %0, i32 noundef %1) local_unnamed_addr #9 !dbg !1363 {
  call void @llvm.dbg.value(metadata %struct.RCC_ClkInitTypeDef* %0, metadata !1376, metadata !DIExpression()), !dbg !1379
  call void @llvm.dbg.value(metadata i32 %1, metadata !1377, metadata !DIExpression()), !dbg !1379
  %3 = icmp eq %struct.RCC_ClkInitTypeDef* %0, null, !dbg !1380
  br i1 %3, label %113, label %4, !dbg !1382

4:                                                ; preds = %2
  %5 = load volatile i32, i32* inttoptr (i32 1073881088 to i32*), align 8192, !dbg !1383, !tbaa !1385
  %6 = and i32 %5, 7, !dbg !1383
  %7 = icmp ult i32 %6, %1, !dbg !1387
  br i1 %7, label %8, label %15, !dbg !1388

8:                                                ; preds = %4
  %9 = load volatile i32, i32* inttoptr (i32 1073881088 to i32*), align 8192, !dbg !1389, !tbaa !1385
  %10 = and i32 %9, -8, !dbg !1389
  %11 = or i32 %10, %1, !dbg !1389
  store volatile i32 %11, i32* inttoptr (i32 1073881088 to i32*), align 8192, !dbg !1389, !tbaa !1385
  %12 = load volatile i32, i32* inttoptr (i32 1073881088 to i32*), align 8192, !dbg !1391, !tbaa !1385
  %13 = and i32 %12, 7, !dbg !1391
  %14 = icmp eq i32 %13, %1, !dbg !1393
  br i1 %14, label %15, label %113, !dbg !1394

15:                                               ; preds = %8, %4
  %16 = getelementptr inbounds %struct.RCC_ClkInitTypeDef, %struct.RCC_ClkInitTypeDef* %0, i32 0, i32 0, !dbg !1395
  %17 = load i32, i32* %16, align 4, !dbg !1395, !tbaa !1397
  %18 = and i32 %17, 2, !dbg !1399
  %19 = icmp eq i32 %18, 0, !dbg !1400
  br i1 %19, label %38, label %20, !dbg !1401

20:                                               ; preds = %15
  %21 = and i32 %17, 4, !dbg !1402
  %22 = icmp eq i32 %21, 0, !dbg !1405
  br i1 %22, label %26, label %23, !dbg !1406

23:                                               ; preds = %20
  %24 = load volatile i32, i32* inttoptr (i32 1073876996 to i32*), align 4, !dbg !1407, !tbaa !576
  %25 = or i32 %24, 1792, !dbg !1407
  store volatile i32 %25, i32* inttoptr (i32 1073876996 to i32*), align 4, !dbg !1407, !tbaa !576
  br label %26, !dbg !1409

26:                                               ; preds = %23, %20
  %27 = and i32 %17, 8, !dbg !1410
  %28 = icmp eq i32 %27, 0, !dbg !1412
  br i1 %28, label %32, label %29, !dbg !1413

29:                                               ; preds = %26
  %30 = load volatile i32, i32* inttoptr (i32 1073876996 to i32*), align 4, !dbg !1414, !tbaa !576
  %31 = or i32 %30, 14336, !dbg !1414
  store volatile i32 %31, i32* inttoptr (i32 1073876996 to i32*), align 4, !dbg !1414, !tbaa !576
  br label %32, !dbg !1416

32:                                               ; preds = %29, %26
  %33 = load volatile i32, i32* inttoptr (i32 1073876996 to i32*), align 4, !dbg !1417, !tbaa !576
  %34 = and i32 %33, -241, !dbg !1417
  %35 = getelementptr inbounds %struct.RCC_ClkInitTypeDef, %struct.RCC_ClkInitTypeDef* %0, i32 0, i32 2, !dbg !1417
  %36 = load i32, i32* %35, align 4, !dbg !1417, !tbaa !1418
  %37 = or i32 %34, %36, !dbg !1417
  store volatile i32 %37, i32* inttoptr (i32 1073876996 to i32*), align 4, !dbg !1417, !tbaa !576
  br label %38, !dbg !1419

38:                                               ; preds = %32, %15
  %39 = and i32 %17, 1, !dbg !1420
  %40 = icmp eq i32 %39, 0, !dbg !1422
  br i1 %40, label %71, label %41, !dbg !1423

41:                                               ; preds = %38
  %42 = getelementptr inbounds %struct.RCC_ClkInitTypeDef, %struct.RCC_ClkInitTypeDef* %0, i32 0, i32 1, !dbg !1424
  %43 = load i32, i32* %42, align 4, !dbg !1424, !tbaa !1427
  switch i32 %43, label %52 [
    i32 1, label %44
    i32 2, label %48
  ], !dbg !1428

44:                                               ; preds = %41
  %45 = load volatile i32, i32* inttoptr (i32 1073876992 to i32*), align 4096, !dbg !1429, !tbaa !570
  %46 = and i32 %45, 131072, !dbg !1429
  %47 = icmp eq i32 %46, 0, !dbg !1432
  br i1 %47, label %113, label %56, !dbg !1433

48:                                               ; preds = %41
  %49 = load volatile i32, i32* inttoptr (i32 1073876992 to i32*), align 4096, !dbg !1434, !tbaa !570
  %50 = and i32 %49, 33554432, !dbg !1434
  %51 = icmp eq i32 %50, 0, !dbg !1438
  br i1 %51, label %113, label %56, !dbg !1439

52:                                               ; preds = %41
  %53 = load volatile i32, i32* inttoptr (i32 1073876992 to i32*), align 4096, !dbg !1440, !tbaa !570
  %54 = and i32 %53, 2, !dbg !1440
  %55 = icmp eq i32 %54, 0, !dbg !1443
  br i1 %55, label %113, label %56, !dbg !1444

56:                                               ; preds = %48, %52, %44
  %57 = load volatile i32, i32* inttoptr (i32 1073876996 to i32*), align 4, !dbg !1445, !tbaa !576
  %58 = and i32 %57, -4, !dbg !1445
  %59 = or i32 %58, %43, !dbg !1445
  store volatile i32 %59, i32* inttoptr (i32 1073876996 to i32*), align 4, !dbg !1445, !tbaa !576
  %60 = call i32 @HAL_GetTick() #16, !dbg !1446
  call void @llvm.dbg.value(metadata i32 %60, metadata !1378, metadata !DIExpression()), !dbg !1379
  br label %61, !dbg !1447

61:                                               ; preds = %67, %56
  %62 = load volatile i32, i32* inttoptr (i32 1073876996 to i32*), align 4, !dbg !1448, !tbaa !576
  %63 = and i32 %62, 12, !dbg !1448
  %64 = load i32, i32* %42, align 4, !dbg !1449, !tbaa !1427
  %65 = shl i32 %64, 2, !dbg !1450
  %66 = icmp eq i32 %63, %65, !dbg !1451
  br i1 %66, label %71, label %67, !dbg !1447

67:                                               ; preds = %61
  %68 = call i32 @HAL_GetTick() #16, !dbg !1452
  %69 = sub i32 %68, %60, !dbg !1455
  %70 = icmp ugt i32 %69, 5000, !dbg !1456
  br i1 %70, label %113, label %61, !dbg !1457, !llvm.loop !1458

71:                                               ; preds = %61, %38
  %72 = load volatile i32, i32* inttoptr (i32 1073881088 to i32*), align 8192, !dbg !1460, !tbaa !1385
  %73 = and i32 %72, 7, !dbg !1460
  %74 = icmp ugt i32 %73, %1, !dbg !1462
  br i1 %74, label %75, label %82, !dbg !1463

75:                                               ; preds = %71
  %76 = load volatile i32, i32* inttoptr (i32 1073881088 to i32*), align 8192, !dbg !1464, !tbaa !1385
  %77 = and i32 %76, -8, !dbg !1464
  %78 = or i32 %77, %1, !dbg !1464
  store volatile i32 %78, i32* inttoptr (i32 1073881088 to i32*), align 8192, !dbg !1464, !tbaa !1385
  %79 = load volatile i32, i32* inttoptr (i32 1073881088 to i32*), align 8192, !dbg !1466, !tbaa !1385
  %80 = and i32 %79, 7, !dbg !1466
  %81 = icmp eq i32 %80, %1, !dbg !1468
  br i1 %81, label %82, label %113, !dbg !1469

82:                                               ; preds = %75, %71
  %83 = load i32, i32* %16, align 4, !dbg !1470, !tbaa !1397
  %84 = and i32 %83, 4, !dbg !1472
  %85 = icmp eq i32 %84, 0, !dbg !1473
  br i1 %85, label %92, label %86, !dbg !1474

86:                                               ; preds = %82
  %87 = load volatile i32, i32* inttoptr (i32 1073876996 to i32*), align 4, !dbg !1475, !tbaa !576
  %88 = and i32 %87, -1793, !dbg !1475
  %89 = getelementptr inbounds %struct.RCC_ClkInitTypeDef, %struct.RCC_ClkInitTypeDef* %0, i32 0, i32 3, !dbg !1475
  %90 = load i32, i32* %89, align 4, !dbg !1475, !tbaa !1477
  %91 = or i32 %88, %90, !dbg !1475
  store volatile i32 %91, i32* inttoptr (i32 1073876996 to i32*), align 4, !dbg !1475, !tbaa !576
  br label %92, !dbg !1478

92:                                               ; preds = %86, %82
  %93 = and i32 %83, 8, !dbg !1479
  %94 = icmp eq i32 %93, 0, !dbg !1481
  br i1 %94, label %102, label %95, !dbg !1482

95:                                               ; preds = %92
  %96 = load volatile i32, i32* inttoptr (i32 1073876996 to i32*), align 4, !dbg !1483, !tbaa !576
  %97 = and i32 %96, -14337, !dbg !1483
  %98 = getelementptr inbounds %struct.RCC_ClkInitTypeDef, %struct.RCC_ClkInitTypeDef* %0, i32 0, i32 4, !dbg !1483
  %99 = load i32, i32* %98, align 4, !dbg !1483, !tbaa !1485
  %100 = shl i32 %99, 3, !dbg !1483
  %101 = or i32 %100, %97, !dbg !1483
  store volatile i32 %101, i32* inttoptr (i32 1073876996 to i32*), align 4, !dbg !1483, !tbaa !576
  br label %102, !dbg !1486

102:                                              ; preds = %95, %92
  %103 = call i32 @HAL_RCC_GetSysClockFreq(), !dbg !1487
  %104 = load volatile i32, i32* inttoptr (i32 1073876996 to i32*), align 4, !dbg !1488, !tbaa !576
  %105 = lshr i32 %104, 4, !dbg !1489
  %106 = and i32 %105, 15, !dbg !1489
  %107 = getelementptr inbounds [16 x i8], [16 x i8]* @AHBPrescTable, i32 0, i32 %106, !dbg !1490
  %108 = load i8, i8* %107, align 1, !dbg !1490, !tbaa !623
  %109 = zext i8 %108 to i32, !dbg !1490
  %110 = lshr i32 %103, %109, !dbg !1491
  store i32 %110, i32* @SystemCoreClock, align 4, !dbg !1492, !tbaa !619
  %111 = load i32, i32* @uwTickPrio, align 4, !dbg !1493, !tbaa !619
  %112 = call i32 @HAL_InitTick(i32 noundef %111) #16, !dbg !1494
  br label %113, !dbg !1495

113:                                              ; preds = %67, %75, %52, %48, %44, %8, %2, %102
  %114 = phi i32 [ 0, %102 ], [ 1, %2 ], [ 1, %8 ], [ 1, %44 ], [ 1, %48 ], [ 1, %52 ], [ 1, %75 ], [ 3, %67 ], !dbg !1379
  ret i32 %114, !dbg !1496
}

; Function Attrs: mustprogress nofree noinline norecurse nounwind willreturn
define dso_local i32 @HAL_RCC_GetSysClockFreq() local_unnamed_addr #7 !dbg !1497 {
  call void @llvm.dbg.declare(metadata [16 x i8]* @__const.HAL_RCC_GetSysClockFreq.aPLLMULFactorTable, metadata !1501, metadata !DIExpression()), !dbg !1509
  call void @llvm.dbg.declare(metadata [2 x i8]* @__const.HAL_RCC_GetSysClockFreq.aPredivFactorTable, metadata !1502, metadata !DIExpression()), !dbg !1510
  call void @llvm.dbg.value(metadata i32 0, metadata !1504, metadata !DIExpression()), !dbg !1511
  call void @llvm.dbg.value(metadata i32 0, metadata !1505, metadata !DIExpression()), !dbg !1511
  call void @llvm.dbg.value(metadata i32 0, metadata !1506, metadata !DIExpression()), !dbg !1511
  call void @llvm.dbg.value(metadata i32 0, metadata !1507, metadata !DIExpression()), !dbg !1511
  call void @llvm.dbg.value(metadata i32 0, metadata !1508, metadata !DIExpression()), !dbg !1511
  %1 = load volatile i32, i32* inttoptr (i32 1073876996 to i32*), align 4, !dbg !1512, !tbaa !576
  call void @llvm.dbg.value(metadata i32 %1, metadata !1504, metadata !DIExpression()), !dbg !1511
  %2 = and i32 %1, 12, !dbg !1513
  %3 = icmp eq i32 %2, 8, !dbg !1514
  br i1 %3, label %4, label %23, !dbg !1514

4:                                                ; preds = %0
  %5 = lshr i32 %1, 18, !dbg !1515
  %6 = and i32 %5, 15, !dbg !1515
  %7 = getelementptr inbounds [16 x i8], [16 x i8]* @__const.HAL_RCC_GetSysClockFreq.aPLLMULFactorTable, i32 0, i32 %6, !dbg !1518
  %8 = load i8, i8* %7, align 1, !dbg !1518, !tbaa !623
  %9 = zext i8 %8 to i32, !dbg !1518
  call void @llvm.dbg.value(metadata i32 %9, metadata !1507, metadata !DIExpression()), !dbg !1511
  %10 = and i32 %1, 65536, !dbg !1519
  %11 = icmp eq i32 %10, 0, !dbg !1521
  br i1 %11, label %21, label %12, !dbg !1522

12:                                               ; preds = %4
  %13 = load volatile i32, i32* inttoptr (i32 1073876996 to i32*), align 4, !dbg !1523, !tbaa !576
  %14 = lshr i32 %13, 17, !dbg !1525
  %15 = and i32 %14, 1, !dbg !1525
  %16 = getelementptr inbounds [2 x i8], [2 x i8]* @__const.HAL_RCC_GetSysClockFreq.aPredivFactorTable, i32 0, i32 %15, !dbg !1526
  %17 = load i8, i8* %16, align 1, !dbg !1526, !tbaa !623
  %18 = zext i8 %17 to i32, !dbg !1526
  call void @llvm.dbg.value(metadata i32 %18, metadata !1505, metadata !DIExpression()), !dbg !1511
  %19 = mul nuw nsw i32 %9, 8000000, !dbg !1527
  %20 = udiv i32 %19, %18, !dbg !1528
  call void @llvm.dbg.value(metadata i32 %20, metadata !1506, metadata !DIExpression()), !dbg !1511
  br label %23, !dbg !1529

21:                                               ; preds = %4
  %22 = mul nuw nsw i32 %9, 4000000, !dbg !1530
  call void @llvm.dbg.value(metadata i32 %22, metadata !1506, metadata !DIExpression()), !dbg !1511
  br label %23

23:                                               ; preds = %0, %12, %21
  %24 = phi i32 [ %20, %12 ], [ %22, %21 ], [ 8000000, %0 ], !dbg !1532
  call void @llvm.dbg.value(metadata i32 %24, metadata !1508, metadata !DIExpression()), !dbg !1511
  ret i32 %24, !dbg !1533
}

; Function Attrs: noinline nounwind
define dso_local void @HAL_RCC_MCOConfig(i32 noundef %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #9 !dbg !1534 {
  %4 = alloca %struct.GPIO_InitTypeDef, align 4
  %5 = alloca i32, align 4
  call void @llvm.dbg.value(metadata i32 %0, metadata !1538, metadata !DIExpression()), !dbg !1551
  call void @llvm.dbg.value(metadata i32 %1, metadata !1539, metadata !DIExpression()), !dbg !1551
  call void @llvm.dbg.value(metadata i32 %2, metadata !1540, metadata !DIExpression()), !dbg !1551
  %6 = bitcast %struct.GPIO_InitTypeDef* %4 to i8*, !dbg !1552
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %6) #16, !dbg !1552
  call void @llvm.dbg.declare(metadata %struct.GPIO_InitTypeDef* %4, metadata !1541, metadata !DIExpression()), !dbg !1553
  call void @llvm.memset.p0i8.i32(i8* noundef nonnull align 4 dereferenceable(16) %6, i8 0, i32 16, i1 false), !dbg !1553
  %7 = getelementptr inbounds %struct.GPIO_InitTypeDef, %struct.GPIO_InitTypeDef* %4, i32 0, i32 1, !dbg !1554
  store i32 2, i32* %7, align 4, !dbg !1555, !tbaa !665
  %8 = getelementptr inbounds %struct.GPIO_InitTypeDef, %struct.GPIO_InitTypeDef* %4, i32 0, i32 3, !dbg !1556
  store i32 3, i32* %8, align 4, !dbg !1557, !tbaa !669
  %9 = getelementptr inbounds %struct.GPIO_InitTypeDef, %struct.GPIO_InitTypeDef* %4, i32 0, i32 2, !dbg !1558
  store i32 0, i32* %9, align 4, !dbg !1559, !tbaa !682
  %10 = getelementptr inbounds %struct.GPIO_InitTypeDef, %struct.GPIO_InitTypeDef* %4, i32 0, i32 0, !dbg !1560
  store i32 256, i32* %10, align 4, !dbg !1561, !tbaa !656
  %11 = bitcast i32* %5 to i8*, !dbg !1562
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %11), !dbg !1562
  call void @llvm.dbg.declare(metadata i32* %5, metadata !1549, metadata !DIExpression()), !dbg !1562
  %12 = load volatile i32, i32* inttoptr (i32 1073877016 to i32*), align 8, !dbg !1562, !tbaa !703
  %13 = or i32 %12, 4, !dbg !1562
  store volatile i32 %13, i32* inttoptr (i32 1073877016 to i32*), align 8, !dbg !1562, !tbaa !703
  %14 = load volatile i32, i32* inttoptr (i32 1073877016 to i32*), align 8, !dbg !1562, !tbaa !703
  %15 = and i32 %14, 4, !dbg !1562
  store volatile i32 %15, i32* %5, align 4, !dbg !1562, !tbaa !619
  %16 = load volatile i32, i32* %5, align 4, !dbg !1562, !tbaa !619
  %17 = bitcast i32* %5 to i8*, !dbg !1563
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %17), !dbg !1563
  call void @HAL_GPIO_Init(%struct.GPIO_TypeDef* noundef nonnull inttoptr (i32 1073809408 to %struct.GPIO_TypeDef*), %struct.GPIO_InitTypeDef* noundef nonnull %4) #16, !dbg !1564
  %18 = load volatile i32, i32* inttoptr (i32 1073876996 to i32*), align 4, !dbg !1565, !tbaa !576
  %19 = and i32 %18, -117440513, !dbg !1565
  %20 = or i32 %19, %1, !dbg !1565
  store volatile i32 %20, i32* inttoptr (i32 1073876996 to i32*), align 4, !dbg !1565, !tbaa !576
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %6) #16, !dbg !1566
  ret void, !dbg !1566
}

; Function Attrs: nofree noinline norecurse nounwind
define dso_local void @HAL_RCC_EnableCSS() local_unnamed_addr #6 !dbg !1567 {
  store volatile i32 1, i32* inttoptr (i32 1111621708 to i32*), align 4, !dbg !1568, !tbaa !619
  ret void, !dbg !1569
}

; Function Attrs: nofree noinline norecurse nounwind
define dso_local void @HAL_RCC_DisableCSS() local_unnamed_addr #6 !dbg !1570 {
  store volatile i32 0, i32* inttoptr (i32 1111621708 to i32*), align 4, !dbg !1571, !tbaa !619
  ret void, !dbg !1572
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readonly willreturn
define dso_local i32 @HAL_RCC_GetHCLKFreq() local_unnamed_addr #10 !dbg !1573 {
  %1 = load i32, i32* @SystemCoreClock, align 4, !dbg !1574, !tbaa !619
  ret i32 %1, !dbg !1575
}

; Function Attrs: mustprogress nofree noinline norecurse nounwind willreturn
define dso_local i32 @HAL_RCC_GetPCLK1Freq() local_unnamed_addr #7 !dbg !1576 {
  %1 = call i32 @HAL_RCC_GetHCLKFreq(), !dbg !1577
  %2 = load volatile i32, i32* inttoptr (i32 1073876996 to i32*), align 4, !dbg !1578, !tbaa !576
  %3 = lshr i32 %2, 8, !dbg !1579
  %4 = and i32 %3, 7, !dbg !1579
  %5 = getelementptr inbounds [8 x i8], [8 x i8]* @APBPrescTable, i32 0, i32 %4, !dbg !1580
  %6 = load i8, i8* %5, align 1, !dbg !1580, !tbaa !623
  %7 = zext i8 %6 to i32, !dbg !1580
  %8 = lshr i32 %1, %7, !dbg !1581
  ret i32 %8, !dbg !1582
}

; Function Attrs: mustprogress nofree noinline norecurse nounwind willreturn
define dso_local i32 @HAL_RCC_GetPCLK2Freq() local_unnamed_addr #7 !dbg !1583 {
  %1 = call i32 @HAL_RCC_GetHCLKFreq(), !dbg !1584
  %2 = load volatile i32, i32* inttoptr (i32 1073876996 to i32*), align 4, !dbg !1585, !tbaa !576
  %3 = lshr i32 %2, 11, !dbg !1586
  %4 = and i32 %3, 7, !dbg !1586
  %5 = getelementptr inbounds [8 x i8], [8 x i8]* @APBPrescTable, i32 0, i32 %4, !dbg !1587
  %6 = load i8, i8* %5, align 1, !dbg !1587, !tbaa !623
  %7 = zext i8 %6 to i32, !dbg !1587
  %8 = lshr i32 %1, %7, !dbg !1588
  ret i32 %8, !dbg !1589
}

; Function Attrs: mustprogress nofree noinline norecurse nounwind willreturn
define dso_local void @HAL_RCC_GetOscConfig(%struct.RCC_OscInitTypeDef* nocapture noundef writeonly %0) local_unnamed_addr #7 !dbg !1590 {
  call void @llvm.dbg.value(metadata %struct.RCC_OscInitTypeDef* %0, metadata !1594, metadata !DIExpression()), !dbg !1595
  %2 = getelementptr inbounds %struct.RCC_OscInitTypeDef, %struct.RCC_OscInitTypeDef* %0, i32 0, i32 0, !dbg !1596
  store i32 15, i32* %2, align 4, !dbg !1597, !tbaa !1013
  %3 = load volatile i32, i32* inttoptr (i32 1073876992 to i32*), align 4096, !dbg !1598, !tbaa !570
  %4 = and i32 %3, 262144, !dbg !1600
  %5 = icmp eq i32 %4, 0, !dbg !1601
  br i1 %5, label %8, label %6, !dbg !1602

6:                                                ; preds = %1
  %7 = getelementptr inbounds %struct.RCC_OscInitTypeDef, %struct.RCC_OscInitTypeDef* %0, i32 0, i32 1, !dbg !1603
  store i32 327680, i32* %7, align 4, !dbg !1605, !tbaa !1036
  br label %15, !dbg !1606

8:                                                ; preds = %1
  %9 = load volatile i32, i32* inttoptr (i32 1073876992 to i32*), align 4096, !dbg !1607, !tbaa !570
  %10 = and i32 %9, 65536, !dbg !1609
  %11 = icmp eq i32 %10, 0, !dbg !1610
  %12 = getelementptr inbounds %struct.RCC_OscInitTypeDef, %struct.RCC_OscInitTypeDef* %0, i32 0, i32 1, !dbg !1611
  br i1 %11, label %14, label %13, !dbg !1612

13:                                               ; preds = %8
  store i32 65536, i32* %12, align 4, !dbg !1613, !tbaa !1036
  br label %15, !dbg !1615

14:                                               ; preds = %8
  store i32 0, i32* %12, align 4, !dbg !1616, !tbaa !1036
  br label %15

15:                                               ; preds = %13, %14, %6
  %16 = load volatile i32, i32* inttoptr (i32 1073876996 to i32*), align 4, !dbg !1618, !tbaa !576
  %17 = and i32 %16, 131072, !dbg !1618
  %18 = getelementptr inbounds %struct.RCC_OscInitTypeDef, %struct.RCC_OscInitTypeDef* %0, i32 0, i32 2, !dbg !1619
  store i32 %17, i32* %18, align 4, !dbg !1620, !tbaa !1297
  %19 = load volatile i32, i32* inttoptr (i32 1073876992 to i32*), align 4096, !dbg !1621, !tbaa !570
  %20 = and i32 %19, 1, !dbg !1623
  %21 = getelementptr inbounds %struct.RCC_OscInitTypeDef, %struct.RCC_OscInitTypeDef* %0, i32 0, i32 4, !dbg !1624
  store i32 %20, i32* %21, align 4, !dbg !1624, !tbaa !1105
  %22 = load volatile i32, i32* inttoptr (i32 1073876992 to i32*), align 4096, !dbg !1625, !tbaa !570
  %23 = lshr i32 %22, 3, !dbg !1626
  %24 = and i32 %23, 31, !dbg !1626
  %25 = getelementptr inbounds %struct.RCC_OscInitTypeDef, %struct.RCC_OscInitTypeDef* %0, i32 0, i32 5, !dbg !1627
  store i32 %24, i32* %25, align 4, !dbg !1628, !tbaa !1142
  %26 = load volatile i32, i32* inttoptr (i32 1073877024 to i32*), align 32, !dbg !1629, !tbaa !1220
  %27 = and i32 %26, 4, !dbg !1631
  %28 = icmp eq i32 %27, 0, !dbg !1632
  br i1 %28, label %31, label %29, !dbg !1633

29:                                               ; preds = %15
  %30 = getelementptr inbounds %struct.RCC_OscInitTypeDef, %struct.RCC_OscInitTypeDef* %0, i32 0, i32 3, !dbg !1634
  store i32 5, i32* %30, align 4, !dbg !1636, !tbaa !1216
  br label %38, !dbg !1637

31:                                               ; preds = %15
  %32 = load volatile i32, i32* inttoptr (i32 1073877024 to i32*), align 32, !dbg !1638, !tbaa !1220
  %33 = and i32 %32, 1, !dbg !1640
  %34 = icmp eq i32 %33, 0, !dbg !1641
  %35 = getelementptr inbounds %struct.RCC_OscInitTypeDef, %struct.RCC_OscInitTypeDef* %0, i32 0, i32 3, !dbg !1642
  br i1 %34, label %37, label %36, !dbg !1643

36:                                               ; preds = %31
  store i32 1, i32* %35, align 4, !dbg !1644, !tbaa !1216
  br label %38, !dbg !1646

37:                                               ; preds = %31
  store i32 0, i32* %35, align 4, !dbg !1647, !tbaa !1216
  br label %38

38:                                               ; preds = %36, %37, %29
  %39 = load volatile i32, i32* inttoptr (i32 1073877028 to i32*), align 4, !dbg !1649, !tbaa !970
  %40 = and i32 %39, 1, !dbg !1651
  %41 = getelementptr inbounds %struct.RCC_OscInitTypeDef, %struct.RCC_OscInitTypeDef* %0, i32 0, i32 6, !dbg !1652
  store i32 %40, i32* %41, align 4, !dbg !1652, !tbaa !1151
  %42 = load volatile i32, i32* inttoptr (i32 1073876992 to i32*), align 4096, !dbg !1653, !tbaa !570
  %43 = and i32 %42, 16777216, !dbg !1655
  %44 = icmp eq i32 %43, 0, !dbg !1656
  %45 = select i1 %44, i32 1, i32 2, !dbg !1657
  %46 = getelementptr inbounds %struct.RCC_OscInitTypeDef, %struct.RCC_OscInitTypeDef* %0, i32 0, i32 7, i32 0, !dbg !1658
  store i32 %45, i32* %46, align 4, !dbg !1658, !tbaa !1265
  %47 = load volatile i32, i32* inttoptr (i32 1073876996 to i32*), align 4, !dbg !1659, !tbaa !576
  %48 = and i32 %47, 65536, !dbg !1660
  %49 = getelementptr inbounds %struct.RCC_OscInitTypeDef, %struct.RCC_OscInitTypeDef* %0, i32 0, i32 7, i32 1, !dbg !1661
  store i32 %48, i32* %49, align 4, !dbg !1662, !tbaa !1292
  %50 = load volatile i32, i32* inttoptr (i32 1073876996 to i32*), align 4, !dbg !1663, !tbaa !576
  %51 = and i32 %50, 3932160, !dbg !1664
  %52 = getelementptr inbounds %struct.RCC_OscInitTypeDef, %struct.RCC_OscInitTypeDef* %0, i32 0, i32 7, i32 2, !dbg !1665
  store i32 %51, i32* %52, align 4, !dbg !1666, !tbaa !1300
  ret void, !dbg !1667
}

; Function Attrs: mustprogress nofree noinline norecurse nounwind willreturn
define dso_local void @HAL_RCC_GetClockConfig(%struct.RCC_ClkInitTypeDef* nocapture noundef writeonly %0, i32* nocapture noundef writeonly %1) local_unnamed_addr #7 !dbg !1668 {
  call void @llvm.dbg.value(metadata %struct.RCC_ClkInitTypeDef* %0, metadata !1672, metadata !DIExpression()), !dbg !1674
  call void @llvm.dbg.value(metadata i32* %1, metadata !1673, metadata !DIExpression()), !dbg !1674
  %3 = getelementptr inbounds %struct.RCC_ClkInitTypeDef, %struct.RCC_ClkInitTypeDef* %0, i32 0, i32 0, !dbg !1675
  store i32 15, i32* %3, align 4, !dbg !1676, !tbaa !1397
  %4 = load volatile i32, i32* inttoptr (i32 1073876996 to i32*), align 4, !dbg !1677, !tbaa !576
  %5 = and i32 %4, 3, !dbg !1678
  %6 = getelementptr inbounds %struct.RCC_ClkInitTypeDef, %struct.RCC_ClkInitTypeDef* %0, i32 0, i32 1, !dbg !1679
  store i32 %5, i32* %6, align 4, !dbg !1680, !tbaa !1427
  %7 = load volatile i32, i32* inttoptr (i32 1073876996 to i32*), align 4, !dbg !1681, !tbaa !576
  %8 = and i32 %7, 240, !dbg !1682
  %9 = getelementptr inbounds %struct.RCC_ClkInitTypeDef, %struct.RCC_ClkInitTypeDef* %0, i32 0, i32 2, !dbg !1683
  store i32 %8, i32* %9, align 4, !dbg !1684, !tbaa !1418
  %10 = load volatile i32, i32* inttoptr (i32 1073876996 to i32*), align 4, !dbg !1685, !tbaa !576
  %11 = and i32 %10, 1792, !dbg !1686
  %12 = getelementptr inbounds %struct.RCC_ClkInitTypeDef, %struct.RCC_ClkInitTypeDef* %0, i32 0, i32 3, !dbg !1687
  store i32 %11, i32* %12, align 4, !dbg !1688, !tbaa !1477
  %13 = load volatile i32, i32* inttoptr (i32 1073876996 to i32*), align 4, !dbg !1689, !tbaa !576
  %14 = lshr i32 %13, 3, !dbg !1690
  %15 = and i32 %14, 1792, !dbg !1690
  %16 = getelementptr inbounds %struct.RCC_ClkInitTypeDef, %struct.RCC_ClkInitTypeDef* %0, i32 0, i32 4, !dbg !1691
  store i32 %15, i32* %16, align 4, !dbg !1692, !tbaa !1485
  %17 = load volatile i32, i32* inttoptr (i32 1073881088 to i32*), align 8192, !dbg !1693, !tbaa !1385
  %18 = and i32 %17, 7, !dbg !1694
  store i32 %18, i32* %1, align 4, !dbg !1695, !tbaa !619
  ret void, !dbg !1696
}

; Function Attrs: noinline nounwind
define dso_local void @HAL_RCC_NMI_IRQHandler() local_unnamed_addr #9 !dbg !1697 {
  %1 = load volatile i32, i32* inttoptr (i32 1073877000 to i32*), align 8, !dbg !1698, !tbaa !581
  %2 = and i32 %1, 128, !dbg !1698
  %3 = icmp eq i32 %2, 0, !dbg !1698
  br i1 %3, label %5, label %4, !dbg !1700

4:                                                ; preds = %0
  call void @HAL_RCC_CSSCallback(), !dbg !1701
  store volatile i8 -128, i8* inttoptr (i32 1073877002 to i8*), align 2, !dbg !1703, !tbaa !623
  br label %5, !dbg !1704

5:                                                ; preds = %4, %0
  ret void, !dbg !1705
}

; Function Attrs: noinline nounwind
define weak dso_local void @HAL_RCC_CSSCallback() local_unnamed_addr #9 !dbg !1706 {
  ret void, !dbg !1707
}

; Function Attrs: noinline nounwind
define dso_local i32 @HAL_Init() local_unnamed_addr #9 !dbg !1708 {
  %1 = load volatile i32, i32* inttoptr (i32 1073881088 to i32*), align 8192, !dbg !1709, !tbaa !1385
  %2 = or i32 %1, 16, !dbg !1709
  store volatile i32 %2, i32* inttoptr (i32 1073881088 to i32*), align 8192, !dbg !1709, !tbaa !1385
  call void @HAL_NVIC_SetPriorityGrouping(i32 noundef 3) #16, !dbg !1710
  %3 = call i32 @HAL_InitTick(i32 noundef 0), !dbg !1711
  call void @HAL_MspInit(), !dbg !1712
  ret i32 0, !dbg !1713
}

; Function Attrs: noinline nounwind
define weak dso_local i32 @HAL_InitTick(i32 noundef %0) local_unnamed_addr #9 !dbg !1714 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !1718, metadata !DIExpression()), !dbg !1719
  %2 = load i32, i32* @SystemCoreClock, align 4, !dbg !1720, !tbaa !619
  %3 = load i32, i32* @uwTickFreq, align 4, !dbg !1722, !tbaa !623
  %4 = udiv i32 1000, %3, !dbg !1723
  %5 = udiv i32 %2, %4, !dbg !1724
  %6 = call i32 @HAL_SYSTICK_Config(i32 noundef %5) #16, !dbg !1725
  %7 = icmp eq i32 %6, 0, !dbg !1726
  %8 = icmp ult i32 %0, 16
  %9 = and i1 %8, %7, !dbg !1727
  br i1 %9, label %10, label %11, !dbg !1727

10:                                               ; preds = %1
  call void @HAL_NVIC_SetPriority(i32 noundef -1, i32 noundef %0, i32 noundef 0) #16, !dbg !1728
  store i32 %0, i32* @uwTickPrio, align 4, !dbg !1731, !tbaa !619
  br label %11, !dbg !1732

11:                                               ; preds = %1, %10
  %12 = phi i32 [ 0, %10 ], [ 1, %1 ], !dbg !1719
  ret i32 %12, !dbg !1733
}

; Function Attrs: noinline nounwind
define weak dso_local void @HAL_MspInit() local_unnamed_addr #9 !dbg !1734 {
  ret void, !dbg !1735
}

; Function Attrs: noinline nounwind
define dso_local i32 @HAL_DeInit() local_unnamed_addr #9 !dbg !1736 {
  store volatile i32 -1, i32* inttoptr (i32 1073877004 to i32*), align 4, !dbg !1737, !tbaa !1738
  store volatile i32 0, i32* inttoptr (i32 1073877008 to i32*), align 16, !dbg !1739, !tbaa !1740
  store volatile i32 -1, i32* inttoptr (i32 1073877004 to i32*), align 4, !dbg !1741, !tbaa !1738
  store volatile i32 0, i32* inttoptr (i32 1073877004 to i32*), align 4, !dbg !1742, !tbaa !1738
  call void @HAL_MspDeInit(), !dbg !1743
  ret i32 0, !dbg !1744
}

; Function Attrs: noinline nounwind
define weak dso_local void @HAL_MspDeInit() local_unnamed_addr #9 !dbg !1745 {
  ret void, !dbg !1746
}

; Function Attrs: noinline nounwind
define weak dso_local void @HAL_IncTick() local_unnamed_addr #9 !dbg !1747 {
  %1 = load i32, i32* @uwTickFreq, align 4, !dbg !1748, !tbaa !623
  %2 = load volatile i32, i32* @uwTick, align 4, !dbg !1749, !tbaa !619
  %3 = add i32 %2, %1, !dbg !1749
  store volatile i32 %3, i32* @uwTick, align 4, !dbg !1749, !tbaa !619
  ret void, !dbg !1750
}

; Function Attrs: noinline nounwind
define weak dso_local i32 @HAL_GetTick() local_unnamed_addr #9 !dbg !1751 {
  %1 = load volatile i32, i32* @uwTick, align 4, !dbg !1752, !tbaa !619
  ret i32 %1, !dbg !1753
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readonly willreturn
define dso_local i32 @HAL_GetTickPrio() local_unnamed_addr #10 !dbg !1754 {
  %1 = load i32, i32* @uwTickPrio, align 4, !dbg !1755, !tbaa !619
  ret i32 %1, !dbg !1756
}

; Function Attrs: noinline nounwind
define dso_local i32 @HAL_SetTickFreq(i32 noundef %0) local_unnamed_addr #9 !dbg !1757 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !1761, metadata !DIExpression()), !dbg !1763
  call void @llvm.dbg.value(metadata i32 0, metadata !1762, metadata !DIExpression()), !dbg !1763
  %2 = load i32, i32* @uwTickFreq, align 4, !dbg !1764, !tbaa !623
  %3 = icmp eq i32 %2, %0, !dbg !1766
  br i1 %3, label %9, label %4, !dbg !1767

4:                                                ; preds = %1
  %5 = load i32, i32* @uwTickPrio, align 4, !dbg !1768, !tbaa !619
  %6 = call i32 @HAL_InitTick(i32 noundef %5), !dbg !1770
  call void @llvm.dbg.value(metadata i32 %6, metadata !1762, metadata !DIExpression()), !dbg !1763
  %7 = icmp eq i32 %6, 0, !dbg !1771
  br i1 %7, label %8, label %9, !dbg !1773

8:                                                ; preds = %4
  store i32 %0, i32* @uwTickFreq, align 4, !dbg !1774, !tbaa !623
  br label %9, !dbg !1776

9:                                                ; preds = %4, %8, %1
  %10 = phi i32 [ 0, %8 ], [ %6, %4 ], [ 0, %1 ], !dbg !1763
  call void @llvm.dbg.value(metadata i32 %10, metadata !1762, metadata !DIExpression()), !dbg !1763
  ret i32 %10, !dbg !1777
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readonly willreturn
define dso_local i32 @HAL_GetTickFreq() local_unnamed_addr #10 !dbg !1778 {
  %1 = load i32, i32* @uwTickFreq, align 4, !dbg !1781, !tbaa !623
  ret i32 %1, !dbg !1782
}

; Function Attrs: noinline nounwind
define weak dso_local void @HAL_Delay(i32 noundef %0) local_unnamed_addr #9 !dbg !1783 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !1785, metadata !DIExpression()), !dbg !1788
  %2 = call i32 @HAL_GetTick(), !dbg !1789
  call void @llvm.dbg.value(metadata i32 %2, metadata !1786, metadata !DIExpression()), !dbg !1788
  call void @llvm.dbg.value(metadata i32 %0, metadata !1787, metadata !DIExpression()), !dbg !1788
  %3 = icmp eq i32 %0, -1, !dbg !1790
  %4 = load i32, i32* @uwTickFreq, align 4, !dbg !1792
  %5 = add i32 %4, %0, !dbg !1792
  %6 = select i1 %3, i32 -1, i32 %5, !dbg !1792
  call void @llvm.dbg.value(metadata i32 %6, metadata !1787, metadata !DIExpression()), !dbg !1788
  br label %7, !dbg !1793

7:                                                ; preds = %7, %1
  %8 = call i32 @HAL_GetTick(), !dbg !1794
  %9 = sub i32 %8, %2, !dbg !1795
  %10 = icmp ult i32 %9, %6, !dbg !1796
  br i1 %10, label %7, label %11, !dbg !1793, !llvm.loop !1797

11:                                               ; preds = %7
  ret void, !dbg !1799
}

; Function Attrs: noinline nounwind
define weak dso_local void @HAL_SuspendTick() local_unnamed_addr #9 !dbg !1800 {
  %1 = load volatile i32, i32* inttoptr (i32 -536813552 to i32*), align 16, !dbg !1801, !tbaa !656
  %2 = and i32 %1, -3, !dbg !1801
  store volatile i32 %2, i32* inttoptr (i32 -536813552 to i32*), align 16, !dbg !1801, !tbaa !656
  ret void, !dbg !1802
}

; Function Attrs: noinline nounwind
define weak dso_local void @HAL_ResumeTick() local_unnamed_addr #9 !dbg !1803 {
  %1 = load volatile i32, i32* inttoptr (i32 -536813552 to i32*), align 16, !dbg !1804, !tbaa !656
  %2 = or i32 %1, 2, !dbg !1804
  store volatile i32 %2, i32* inttoptr (i32 -536813552 to i32*), align 16, !dbg !1804, !tbaa !656
  ret void, !dbg !1805
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readnone willreturn
define dso_local i32 @HAL_GetHalVersion() local_unnamed_addr #11 !dbg !1806 {
  ret i32 16843776, !dbg !1807
}

; Function Attrs: mustprogress nofree noinline norecurse nounwind willreturn
define dso_local i32 @HAL_GetREVID() local_unnamed_addr #7 !dbg !1808 {
  %1 = load volatile i32, i32* inttoptr (i32 -536600576 to i32*), align 8192, !dbg !1809, !tbaa !1197
  %2 = lshr i32 %1, 16, !dbg !1810
  ret i32 %2, !dbg !1811
}

; Function Attrs: mustprogress nofree noinline norecurse nounwind willreturn
define dso_local i32 @HAL_GetDEVID() local_unnamed_addr #7 !dbg !1812 {
  %1 = load volatile i32, i32* inttoptr (i32 -536600576 to i32*), align 8192, !dbg !1813, !tbaa !1197
  %2 = and i32 %1, 4095, !dbg !1814
  ret i32 %2, !dbg !1815
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readonly willreturn
define dso_local i32 @HAL_GetUIDw0() local_unnamed_addr #10 !dbg !1816 {
  %1 = load i32, i32* inttoptr (i32 536868840 to i32*), align 8, !dbg !1817, !tbaa !619
  ret i32 %1, !dbg !1818
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readonly willreturn
define dso_local i32 @HAL_GetUIDw1() local_unnamed_addr #10 !dbg !1819 {
  %1 = load i32, i32* inttoptr (i32 536868844 to i32*), align 4, !dbg !1820, !tbaa !619
  ret i32 %1, !dbg !1821
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readonly willreturn
define dso_local i32 @HAL_GetUIDw2() local_unnamed_addr #10 !dbg !1822 {
  %1 = load i32, i32* inttoptr (i32 536868848 to i32*), align 16, !dbg !1823, !tbaa !619
  ret i32 %1, !dbg !1824
}

; Function Attrs: nofree noinline norecurse nounwind
define dso_local void @HAL_DBGMCU_EnableDBGSleepMode() local_unnamed_addr #6 !dbg !1825 {
  %1 = load volatile i32, i32* inttoptr (i32 -536600572 to i32*), align 4, !dbg !1826, !tbaa !1827
  %2 = or i32 %1, 1, !dbg !1826
  store volatile i32 %2, i32* inttoptr (i32 -536600572 to i32*), align 4, !dbg !1826, !tbaa !1827
  ret void, !dbg !1828
}

; Function Attrs: nofree noinline norecurse nounwind
define dso_local void @HAL_DBGMCU_DisableDBGSleepMode() local_unnamed_addr #6 !dbg !1829 {
  %1 = load volatile i32, i32* inttoptr (i32 -536600572 to i32*), align 4, !dbg !1830, !tbaa !1827
  %2 = and i32 %1, -2, !dbg !1830
  store volatile i32 %2, i32* inttoptr (i32 -536600572 to i32*), align 4, !dbg !1830, !tbaa !1827
  ret void, !dbg !1831
}

; Function Attrs: nofree noinline norecurse nounwind
define dso_local void @HAL_DBGMCU_EnableDBGStopMode() local_unnamed_addr #6 !dbg !1832 {
  %1 = load volatile i32, i32* inttoptr (i32 -536600572 to i32*), align 4, !dbg !1833, !tbaa !1827
  %2 = or i32 %1, 2, !dbg !1833
  store volatile i32 %2, i32* inttoptr (i32 -536600572 to i32*), align 4, !dbg !1833, !tbaa !1827
  ret void, !dbg !1834
}

; Function Attrs: nofree noinline norecurse nounwind
define dso_local void @HAL_DBGMCU_DisableDBGStopMode() local_unnamed_addr #6 !dbg !1835 {
  %1 = load volatile i32, i32* inttoptr (i32 -536600572 to i32*), align 4, !dbg !1836, !tbaa !1827
  %2 = and i32 %1, -3, !dbg !1836
  store volatile i32 %2, i32* inttoptr (i32 -536600572 to i32*), align 4, !dbg !1836, !tbaa !1827
  ret void, !dbg !1837
}

; Function Attrs: nofree noinline norecurse nounwind
define dso_local void @HAL_DBGMCU_EnableDBGStandbyMode() local_unnamed_addr #6 !dbg !1838 {
  %1 = load volatile i32, i32* inttoptr (i32 -536600572 to i32*), align 4, !dbg !1839, !tbaa !1827
  %2 = or i32 %1, 4, !dbg !1839
  store volatile i32 %2, i32* inttoptr (i32 -536600572 to i32*), align 4, !dbg !1839, !tbaa !1827
  ret void, !dbg !1840
}

; Function Attrs: nofree noinline norecurse nounwind
define dso_local void @HAL_DBGMCU_DisableDBGStandbyMode() local_unnamed_addr #6 !dbg !1841 {
  %1 = load volatile i32, i32* inttoptr (i32 -536600572 to i32*), align 4, !dbg !1842, !tbaa !1827
  %2 = and i32 %1, -5, !dbg !1842
  store volatile i32 %2, i32* inttoptr (i32 -536600572 to i32*), align 4, !dbg !1842, !tbaa !1827
  ret void, !dbg !1843
}

; Function Attrs: nofree noinline norecurse nounwind
define dso_local void @HAL_NVIC_SetPriorityGrouping(i32 noundef %0) local_unnamed_addr #6 !dbg !1844 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !1846, metadata !DIExpression()), !dbg !1847
  call fastcc void @__NVIC_SetPriorityGrouping(i32 noundef %0), !dbg !1848
  ret void, !dbg !1849
}

; Function Attrs: nofree noinline norecurse nounwind
define internal fastcc void @__NVIC_SetPriorityGrouping(i32 noundef %0) unnamed_addr #6 !dbg !1850 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !1852, metadata !DIExpression()), !dbg !1855
  call void @llvm.dbg.value(metadata i32 %0, metadata !1854, metadata !DIExpression(DW_OP_constu, 7, DW_OP_and, DW_OP_stack_value)), !dbg !1855
  %2 = load volatile i32, i32* inttoptr (i32 -536810228 to i32*), align 4, !dbg !1856, !tbaa !1857
  call void @llvm.dbg.value(metadata i32 %2, metadata !1853, metadata !DIExpression()), !dbg !1855
  %3 = and i32 %2, 63743, !dbg !1858
  call void @llvm.dbg.value(metadata i32 %3, metadata !1853, metadata !DIExpression()), !dbg !1855
  %4 = shl i32 %0, 8, !dbg !1859
  %5 = and i32 %4, 1792, !dbg !1859
  %6 = or i32 %5, %3, !dbg !1860
  %7 = or i32 %6, 100270080, !dbg !1860
  call void @llvm.dbg.value(metadata i32 %7, metadata !1853, metadata !DIExpression()), !dbg !1855
  store volatile i32 %7, i32* inttoptr (i32 -536810228 to i32*), align 4, !dbg !1861, !tbaa !1857
  ret void, !dbg !1862
}

; Function Attrs: nofree noinline nounwind
define dso_local void @HAL_NVIC_SetPriority(i32 noundef %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #8 !dbg !1863 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !1868, metadata !DIExpression()), !dbg !1872
  call void @llvm.dbg.value(metadata i32 %1, metadata !1869, metadata !DIExpression()), !dbg !1872
  call void @llvm.dbg.value(metadata i32 %2, metadata !1870, metadata !DIExpression()), !dbg !1872
  call void @llvm.dbg.value(metadata i32 0, metadata !1871, metadata !DIExpression()), !dbg !1872
  %4 = call fastcc i32 @__NVIC_GetPriorityGrouping(), !dbg !1873, !range !1874
  call void @llvm.dbg.value(metadata i32 %4, metadata !1871, metadata !DIExpression()), !dbg !1872
  %5 = call fastcc i32 @NVIC_EncodePriority(i32 noundef %4, i32 noundef %1, i32 noundef %2), !dbg !1875
  call fastcc void @__NVIC_SetPriority(i32 noundef %0, i32 noundef %5), !dbg !1876
  ret void, !dbg !1877
}

; Function Attrs: mustprogress nofree noinline norecurse nounwind willreturn
define internal fastcc i32 @__NVIC_GetPriorityGrouping() unnamed_addr #7 !dbg !1878 {
  %1 = load volatile i32, i32* inttoptr (i32 -536810228 to i32*), align 4, !dbg !1879, !tbaa !1857
  %2 = lshr i32 %1, 8, !dbg !1880
  %3 = and i32 %2, 7, !dbg !1880
  ret i32 %3, !dbg !1881
}

; Function Attrs: mustprogress nofree noinline nosync nounwind readnone willreturn
define internal fastcc i32 @NVIC_EncodePriority(i32 noundef %0, i32 noundef %1, i32 noundef %2) unnamed_addr #12 !dbg !1882 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !1886, metadata !DIExpression()), !dbg !1892
  call void @llvm.dbg.value(metadata i32 %1, metadata !1887, metadata !DIExpression()), !dbg !1892
  call void @llvm.dbg.value(metadata i32 %2, metadata !1888, metadata !DIExpression()), !dbg !1892
  %4 = and i32 %0, 7, !dbg !1893
  call void @llvm.dbg.value(metadata i32 %4, metadata !1889, metadata !DIExpression()), !dbg !1892
  %5 = xor i32 %4, 7, !dbg !1894
  %6 = icmp ult i32 %5, 4, !dbg !1895
  %7 = select i1 %6, i32 %5, i32 4, !dbg !1895
  call void @llvm.dbg.value(metadata i32 %7, metadata !1890, metadata !DIExpression()), !dbg !1892
  %8 = call i32 @llvm.usub.sat.i32(i32 %4, i32 3), !dbg !1896
  call void @llvm.dbg.value(metadata i32 %8, metadata !1891, metadata !DIExpression()), !dbg !1892
  %9 = shl nsw i32 -1, %7, !dbg !1897
  %10 = xor i32 %9, -1, !dbg !1897
  %11 = and i32 %10, %1, !dbg !1898
  %12 = shl i32 %11, %8, !dbg !1899
  %13 = shl nsw i32 -1, %8, !dbg !1900
  %14 = xor i32 %13, -1, !dbg !1900
  %15 = and i32 %14, %2, !dbg !1901
  %16 = or i32 %12, %15, !dbg !1902
  ret i32 %16, !dbg !1903
}

; Function Attrs: nofree noinline norecurse nounwind
define internal fastcc void @__NVIC_SetPriority(i32 noundef %0, i32 noundef %1) unnamed_addr #6 !dbg !1904 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !1908, metadata !DIExpression()), !dbg !1910
  call void @llvm.dbg.value(metadata i32 %1, metadata !1909, metadata !DIExpression()), !dbg !1910
  %3 = trunc i32 %1 to i8, !dbg !1911
  %4 = shl i8 %3, 4, !dbg !1911
  %5 = and i32 %0, 15, !dbg !1913
  %6 = add nsw i32 %5, -4, !dbg !1913
  %7 = getelementptr inbounds [12 x i8], [12 x i8]* inttoptr (i32 -536810216 to [12 x i8]*), i32 0, i32 %6, !dbg !1913
  %8 = getelementptr inbounds [240 x i8], [240 x i8]* inttoptr (i32 -536812544 to [240 x i8]*), i32 0, i32 %0, !dbg !1913
  %9 = icmp slt i32 %0, 0, !dbg !1913
  %10 = select i1 %9, i8* %7, i8* %8, !dbg !1913
  store volatile i8 %4, i8* %10, align 1, !dbg !1911, !tbaa !623
  ret void, !dbg !1914
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.usub.sat.i32(i32, i32) #1

; Function Attrs: nofree noinline norecurse nounwind
define dso_local void @HAL_NVIC_EnableIRQ(i32 noundef %0) local_unnamed_addr #6 !dbg !1915 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !1919, metadata !DIExpression()), !dbg !1920
  call fastcc void @__NVIC_EnableIRQ(i32 noundef %0), !dbg !1921
  ret void, !dbg !1922
}

; Function Attrs: nofree noinline norecurse nounwind
define internal fastcc void @__NVIC_EnableIRQ(i32 noundef %0) unnamed_addr #6 !dbg !1923 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !1925, metadata !DIExpression()), !dbg !1926
  %2 = icmp sgt i32 %0, -1, !dbg !1927
  br i1 %2, label %3, label %8, !dbg !1929

3:                                                ; preds = %1
  %4 = and i32 %0, 31, !dbg !1930
  %5 = shl i32 1, %4, !dbg !1932
  %6 = lshr i32 %0, 5, !dbg !1933
  %7 = getelementptr inbounds [8 x i32], [8 x i32]* inttoptr (i32 -536813312 to [8 x i32]*), i32 0, i32 %6, !dbg !1934
  store volatile i32 %5, i32* %7, align 4, !dbg !1935, !tbaa !619
  br label %8, !dbg !1936

8:                                                ; preds = %3, %1
  ret void, !dbg !1937
}

; Function Attrs: noinline nounwind
define dso_local void @HAL_NVIC_DisableIRQ(i32 noundef %0) local_unnamed_addr #9 !dbg !1938 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !1940, metadata !DIExpression()), !dbg !1941
  call fastcc void @__NVIC_DisableIRQ(i32 noundef %0), !dbg !1942
  ret void, !dbg !1943
}

; Function Attrs: noinline nounwind
define internal fastcc void @__NVIC_DisableIRQ(i32 noundef %0) unnamed_addr #9 !dbg !1944 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !1946, metadata !DIExpression()), !dbg !1947
  %2 = icmp sgt i32 %0, -1, !dbg !1948
  br i1 %2, label %3, label %8, !dbg !1950

3:                                                ; preds = %1
  %4 = and i32 %0, 31, !dbg !1951
  %5 = shl i32 1, %4, !dbg !1953
  %6 = lshr i32 %0, 5, !dbg !1954
  %7 = getelementptr inbounds [8 x i32], [8 x i32]* inttoptr (i32 -536813184 to [8 x i32]*), i32 0, i32 %6, !dbg !1955
  store volatile i32 %5, i32* %7, align 4, !dbg !1956, !tbaa !619
  call void asm sideeffect "dsb 0xF", "~{memory}"() #16, !dbg !1957, !srcloc !1961
  call void asm sideeffect "isb 0xF", "~{memory}"() #16, !dbg !1962, !srcloc !1965
  br label %8, !dbg !1966

8:                                                ; preds = %3, %1
  ret void, !dbg !1967
}

; Function Attrs: noinline noreturn nounwind
define dso_local void @HAL_NVIC_SystemReset() local_unnamed_addr #13 !dbg !1968 {
  call fastcc void @__NVIC_SystemReset() #17, !dbg !1969
  unreachable, !dbg !1969
}

; Function Attrs: noinline noreturn nounwind
define internal fastcc void @__NVIC_SystemReset() unnamed_addr #13 !dbg !1970 {
  call void asm sideeffect "dsb 0xF", "~{memory}"() #16, !dbg !1971, !srcloc !1961
  %1 = load volatile i32, i32* inttoptr (i32 -536810228 to i32*), align 4, !dbg !1973, !tbaa !1857
  %2 = and i32 %1, 1792, !dbg !1974
  %3 = or i32 %2, 100270084, !dbg !1975
  store volatile i32 %3, i32* inttoptr (i32 -536810228 to i32*), align 4, !dbg !1976, !tbaa !1857
  call void asm sideeffect "dsb 0xF", "~{memory}"() #16, !dbg !1977, !srcloc !1961
  br label %4, !dbg !1979

4:                                                ; preds = %4, %0
  call void asm sideeffect "nop", ""() #16, !dbg !1980, !srcloc !1984
  br label %4, !dbg !1985, !llvm.loop !1986
}

; Function Attrs: nofree noinline norecurse nounwind
define dso_local i32 @HAL_SYSTICK_Config(i32 noundef %0) local_unnamed_addr #6 !dbg !1989 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !1993, metadata !DIExpression()), !dbg !1994
  %2 = call fastcc i32 @SysTick_Config(i32 noundef %0), !dbg !1995
  ret i32 %2, !dbg !1996
}

; Function Attrs: nofree noinline norecurse nounwind
define internal fastcc i32 @SysTick_Config(i32 noundef %0) unnamed_addr #6 !dbg !1997 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !1999, metadata !DIExpression()), !dbg !2000
  %2 = add i32 %0, -1, !dbg !2001
  %3 = icmp ugt i32 %2, 16777215, !dbg !2003
  br i1 %3, label %5, label %4, !dbg !2004

4:                                                ; preds = %1
  store volatile i32 %2, i32* inttoptr (i32 -536813548 to i32*), align 4, !dbg !2005, !tbaa !665
  call fastcc void @__NVIC_SetPriority(i32 noundef -1, i32 noundef 15), !dbg !2006
  store volatile i32 0, i32* inttoptr (i32 -536813544 to i32*), align 8, !dbg !2007, !tbaa !682
  store volatile i32 7, i32* inttoptr (i32 -536813552 to i32*), align 16, !dbg !2008, !tbaa !656
  br label %5, !dbg !2009

5:                                                ; preds = %1, %4
  %6 = phi i32 [ 0, %4 ], [ 1, %1 ], !dbg !2000
  ret i32 %6, !dbg !2010
}

; Function Attrs: mustprogress nofree noinline norecurse nounwind willreturn
define dso_local i32 @HAL_NVIC_GetPriorityGrouping() local_unnamed_addr #7 !dbg !2011 {
  %1 = call fastcc i32 @__NVIC_GetPriorityGrouping(), !dbg !2012
  ret i32 %1, !dbg !2013
}

; Function Attrs: mustprogress nofree noinline nounwind willreturn
define dso_local void @HAL_NVIC_GetPriority(i32 noundef %0, i32 noundef %1, i32* nocapture noundef writeonly %2, i32* nocapture noundef writeonly %3) local_unnamed_addr #14 !dbg !2014 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !2018, metadata !DIExpression()), !dbg !2022
  call void @llvm.dbg.value(metadata i32 %1, metadata !2019, metadata !DIExpression()), !dbg !2022
  call void @llvm.dbg.value(metadata i32* %2, metadata !2020, metadata !DIExpression()), !dbg !2022
  call void @llvm.dbg.value(metadata i32* %3, metadata !2021, metadata !DIExpression()), !dbg !2022
  %5 = call fastcc i32 @__NVIC_GetPriority(i32 noundef %0), !dbg !2023, !range !2024
  call fastcc void @NVIC_DecodePriority(i32 noundef %5, i32 noundef %1, i32* noundef %2, i32* noundef %3), !dbg !2025
  ret void, !dbg !2026
}

; Function Attrs: mustprogress nofree noinline norecurse nounwind willreturn
define internal fastcc i32 @__NVIC_GetPriority(i32 noundef %0) unnamed_addr #7 !dbg !2027 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !2031, metadata !DIExpression()), !dbg !2032
  %2 = getelementptr inbounds [240 x i8], [240 x i8]* inttoptr (i32 -536812544 to [240 x i8]*), i32 0, i32 %0, !dbg !2033
  %3 = and i32 %0, 15, !dbg !2033
  %4 = add nsw i32 %3, -4, !dbg !2033
  %5 = getelementptr inbounds [12 x i8], [12 x i8]* inttoptr (i32 -536810216 to [12 x i8]*), i32 0, i32 %4, !dbg !2033
  %6 = icmp slt i32 %0, 0, !dbg !2033
  %7 = select i1 %6, i8* %5, i8* %2, !dbg !2033
  %8 = load volatile i8, i8* %7, align 1, !dbg !2034, !tbaa !623
  %9 = lshr i8 %8, 4, !dbg !2034
  %10 = zext i8 %9 to i32, !dbg !2034
  ret i32 %10, !dbg !2036
}

; Function Attrs: mustprogress nofree noinline nosync nounwind willreturn writeonly
define internal fastcc void @NVIC_DecodePriority(i32 noundef %0, i32 noundef %1, i32* nocapture noundef writeonly %2, i32* nocapture noundef writeonly %3) unnamed_addr #15 !dbg !2037 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !2042, metadata !DIExpression()), !dbg !2049
  call void @llvm.dbg.value(metadata i32 %1, metadata !2043, metadata !DIExpression()), !dbg !2049
  call void @llvm.dbg.value(metadata i32* %2, metadata !2044, metadata !DIExpression()), !dbg !2049
  call void @llvm.dbg.value(metadata i32* %3, metadata !2045, metadata !DIExpression()), !dbg !2049
  %5 = and i32 %1, 7, !dbg !2050
  call void @llvm.dbg.value(metadata i32 %5, metadata !2046, metadata !DIExpression()), !dbg !2049
  %6 = xor i32 %5, 7, !dbg !2051
  %7 = icmp ult i32 %6, 4, !dbg !2052
  %8 = select i1 %7, i32 %6, i32 4, !dbg !2052
  call void @llvm.dbg.value(metadata i32 %8, metadata !2047, metadata !DIExpression()), !dbg !2049
  %9 = call i32 @llvm.usub.sat.i32(i32 %5, i32 3), !dbg !2053
  call void @llvm.dbg.value(metadata i32 %9, metadata !2048, metadata !DIExpression()), !dbg !2049
  %10 = lshr i32 %0, %9, !dbg !2054
  %11 = shl nsw i32 -1, %8, !dbg !2055
  %12 = xor i32 %11, -1, !dbg !2055
  %13 = and i32 %10, %12, !dbg !2056
  store i32 %13, i32* %2, align 4, !dbg !2057, !tbaa !619
  %14 = shl nsw i32 -1, %9, !dbg !2058
  %15 = xor i32 %14, -1, !dbg !2058
  %16 = and i32 %15, %0, !dbg !2059
  store i32 %16, i32* %3, align 4, !dbg !2060, !tbaa !619
  ret void, !dbg !2061
}

; Function Attrs: nofree noinline norecurse nounwind
define dso_local void @HAL_NVIC_SetPendingIRQ(i32 noundef %0) local_unnamed_addr #6 !dbg !2062 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !2064, metadata !DIExpression()), !dbg !2065
  call fastcc void @__NVIC_SetPendingIRQ(i32 noundef %0), !dbg !2066
  ret void, !dbg !2067
}

; Function Attrs: nofree noinline norecurse nounwind
define internal fastcc void @__NVIC_SetPendingIRQ(i32 noundef %0) unnamed_addr #6 !dbg !2068 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !2070, metadata !DIExpression()), !dbg !2071
  %2 = icmp sgt i32 %0, -1, !dbg !2072
  br i1 %2, label %3, label %8, !dbg !2074

3:                                                ; preds = %1
  %4 = and i32 %0, 31, !dbg !2075
  %5 = shl i32 1, %4, !dbg !2077
  %6 = lshr i32 %0, 5, !dbg !2078
  %7 = getelementptr inbounds [8 x i32], [8 x i32]* inttoptr (i32 -536813056 to [8 x i32]*), i32 0, i32 %6, !dbg !2079
  store volatile i32 %5, i32* %7, align 4, !dbg !2080, !tbaa !619
  br label %8, !dbg !2081

8:                                                ; preds = %3, %1
  ret void, !dbg !2082
}

; Function Attrs: mustprogress nofree noinline norecurse nounwind willreturn
define dso_local i32 @HAL_NVIC_GetPendingIRQ(i32 noundef %0) local_unnamed_addr #7 !dbg !2083 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !2085, metadata !DIExpression()), !dbg !2086
  %2 = call fastcc i32 @__NVIC_GetPendingIRQ(i32 noundef %0), !dbg !2087
  ret i32 %2, !dbg !2088
}

; Function Attrs: mustprogress nofree noinline norecurse nounwind willreturn
define internal fastcc i32 @__NVIC_GetPendingIRQ(i32 noundef %0) unnamed_addr #7 !dbg !2089 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !2091, metadata !DIExpression()), !dbg !2092
  %2 = icmp sgt i32 %0, -1, !dbg !2093
  br i1 %2, label %3, label %10, !dbg !2095

3:                                                ; preds = %1
  %4 = lshr i32 %0, 5, !dbg !2096
  %5 = getelementptr inbounds [8 x i32], [8 x i32]* inttoptr (i32 -536813056 to [8 x i32]*), i32 0, i32 %4, !dbg !2098
  %6 = load volatile i32, i32* %5, align 4, !dbg !2098, !tbaa !619
  %7 = and i32 %0, 31, !dbg !2099
  %8 = lshr i32 %6, %7, !dbg !2100
  %9 = and i32 %8, 1, !dbg !2100
  br label %10, !dbg !2101

10:                                               ; preds = %1, %3
  %11 = phi i32 [ %9, %3 ], [ 0, %1 ], !dbg !2102
  ret i32 %11, !dbg !2103
}

; Function Attrs: nofree noinline norecurse nounwind
define dso_local void @HAL_NVIC_ClearPendingIRQ(i32 noundef %0) local_unnamed_addr #6 !dbg !2104 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !2106, metadata !DIExpression()), !dbg !2107
  call fastcc void @__NVIC_ClearPendingIRQ(i32 noundef %0), !dbg !2108
  ret void, !dbg !2109
}

; Function Attrs: nofree noinline norecurse nounwind
define internal fastcc void @__NVIC_ClearPendingIRQ(i32 noundef %0) unnamed_addr #6 !dbg !2110 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !2112, metadata !DIExpression()), !dbg !2113
  %2 = icmp sgt i32 %0, -1, !dbg !2114
  br i1 %2, label %3, label %8, !dbg !2116

3:                                                ; preds = %1
  %4 = and i32 %0, 31, !dbg !2117
  %5 = shl i32 1, %4, !dbg !2119
  %6 = lshr i32 %0, 5, !dbg !2120
  %7 = getelementptr inbounds [8 x i32], [8 x i32]* inttoptr (i32 -536812928 to [8 x i32]*), i32 0, i32 %6, !dbg !2121
  store volatile i32 %5, i32* %7, align 4, !dbg !2122, !tbaa !619
  br label %8, !dbg !2123

8:                                                ; preds = %3, %1
  ret void, !dbg !2124
}

; Function Attrs: mustprogress nofree noinline norecurse nounwind willreturn
define dso_local i32 @HAL_NVIC_GetActive(i32 noundef %0) local_unnamed_addr #7 !dbg !2125 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !2127, metadata !DIExpression()), !dbg !2128
  %2 = call fastcc i32 @__NVIC_GetActive(i32 noundef %0), !dbg !2129
  ret i32 %2, !dbg !2130
}

; Function Attrs: mustprogress nofree noinline norecurse nounwind willreturn
define internal fastcc i32 @__NVIC_GetActive(i32 noundef %0) unnamed_addr #7 !dbg !2131 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !2133, metadata !DIExpression()), !dbg !2134
  %2 = icmp sgt i32 %0, -1, !dbg !2135
  br i1 %2, label %3, label %10, !dbg !2137

3:                                                ; preds = %1
  %4 = lshr i32 %0, 5, !dbg !2138
  %5 = getelementptr inbounds [8 x i32], [8 x i32]* inttoptr (i32 -536812800 to [8 x i32]*), i32 0, i32 %4, !dbg !2140
  %6 = load volatile i32, i32* %5, align 4, !dbg !2140, !tbaa !619
  %7 = and i32 %0, 31, !dbg !2141
  %8 = lshr i32 %6, %7, !dbg !2142
  %9 = and i32 %8, 1, !dbg !2142
  br label %10, !dbg !2143

10:                                               ; preds = %1, %3
  %11 = phi i32 [ %9, %3 ], [ 0, %1 ], !dbg !2144
  ret i32 %11, !dbg !2145
}

; Function Attrs: nofree noinline norecurse nounwind
define dso_local void @HAL_SYSTICK_CLKSourceConfig(i32 noundef %0) local_unnamed_addr #6 !dbg !2146 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !2148, metadata !DIExpression()), !dbg !2149
  %2 = icmp eq i32 %0, 4, !dbg !2150
  %3 = load volatile i32, i32* inttoptr (i32 -536813552 to i32*), align 16, !dbg !2152, !tbaa !656
  %4 = and i32 %3, -5, !dbg !2153
  %5 = select i1 %2, i32 4, i32 0, !dbg !2153
  %6 = or i32 %4, %5, !dbg !2153
  store volatile i32 %6, i32* inttoptr (i32 -536813552 to i32*), align 16, !dbg !2152, !tbaa !656
  ret void, !dbg !2154
}

; Function Attrs: noinline nounwind
define dso_local void @HAL_SYSTICK_IRQHandler() local_unnamed_addr #9 !dbg !2155 {
  call void @HAL_SYSTICK_Callback(), !dbg !2156
  ret void, !dbg !2157
}

; Function Attrs: noinline nounwind
define weak dso_local void @HAL_SYSTICK_Callback() local_unnamed_addr #9 !dbg !2158 {
  ret void, !dbg !2159
}

attributes #0 = { mustprogress noinline norecurse noreturn nounwind "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="cortex-m3" "target-features"="+armv7-m,+hwdiv,+soft-float,+strict-align,+thumb-mode,-aes,-bf16,-cdecp0,-cdecp1,-cdecp2,-cdecp3,-cdecp4,-cdecp5,-cdecp6,-cdecp7,-crc,-crypto,-d32,-dotprod,-dsp,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-hwdiv-arm,-i8mm,-lob,-mve,-mve.fp,-neon,-pacbti,-ras,-sb,-sha2,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #1 = { nofree nosync nounwind readnone speculatable willreturn }
attributes #2 = { mustprogress noinline norecurse nounwind "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="cortex-m3" "target-features"="+armv7-m,+hwdiv,+soft-float,+strict-align,+thumb-mode,-aes,-bf16,-cdecp0,-cdecp1,-cdecp2,-cdecp3,-cdecp4,-cdecp5,-cdecp6,-cdecp7,-crc,-crypto,-d32,-dotprod,-dsp,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-hwdiv-arm,-i8mm,-lob,-mve,-mve.fp,-neon,-pacbti,-ras,-sb,-sha2,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { argmemonly nofree nosync nounwind willreturn }
attributes #4 = { argmemonly nofree nounwind willreturn writeonly }
attributes #5 = { mustprogress noinline nounwind "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="cortex-m3" "target-features"="+armv7-m,+hwdiv,+soft-float,+strict-align,+thumb-mode,-aes,-bf16,-cdecp0,-cdecp1,-cdecp2,-cdecp3,-cdecp4,-cdecp5,-cdecp6,-cdecp7,-crc,-crypto,-d32,-dotprod,-dsp,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-hwdiv-arm,-i8mm,-lob,-mve,-mve.fp,-neon,-pacbti,-ras,-sb,-sha2,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { nofree noinline norecurse nounwind "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="cortex-m3" "target-features"="+armv7-m,+hwdiv,+soft-float,+strict-align,+thumb-mode,-aes,-bf16,-cdecp0,-cdecp1,-cdecp2,-cdecp3,-cdecp4,-cdecp5,-cdecp6,-cdecp7,-crc,-crypto,-d32,-dotprod,-dsp,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-hwdiv-arm,-i8mm,-lob,-mve,-mve.fp,-neon,-pacbti,-ras,-sb,-sha2,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { mustprogress nofree noinline norecurse nounwind willreturn "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="cortex-m3" "target-features"="+armv7-m,+hwdiv,+soft-float,+strict-align,+thumb-mode,-aes,-bf16,-cdecp0,-cdecp1,-cdecp2,-cdecp3,-cdecp4,-cdecp5,-cdecp6,-cdecp7,-crc,-crypto,-d32,-dotprod,-dsp,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-hwdiv-arm,-i8mm,-lob,-mve,-mve.fp,-neon,-pacbti,-ras,-sb,-sha2,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { nofree noinline nounwind "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="cortex-m3" "target-features"="+armv7-m,+hwdiv,+soft-float,+strict-align,+thumb-mode,-aes,-bf16,-cdecp0,-cdecp1,-cdecp2,-cdecp3,-cdecp4,-cdecp5,-cdecp6,-cdecp7,-crc,-crypto,-d32,-dotprod,-dsp,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-hwdiv-arm,-i8mm,-lob,-mve,-mve.fp,-neon,-pacbti,-ras,-sb,-sha2,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #9 = { noinline nounwind "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="cortex-m3" "target-features"="+armv7-m,+hwdiv,+soft-float,+strict-align,+thumb-mode,-aes,-bf16,-cdecp0,-cdecp1,-cdecp2,-cdecp3,-cdecp4,-cdecp5,-cdecp6,-cdecp7,-crc,-crypto,-d32,-dotprod,-dsp,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-hwdiv-arm,-i8mm,-lob,-mve,-mve.fp,-neon,-pacbti,-ras,-sb,-sha2,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #10 = { mustprogress nofree noinline norecurse nosync nounwind readonly willreturn "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="cortex-m3" "target-features"="+armv7-m,+hwdiv,+soft-float,+strict-align,+thumb-mode,-aes,-bf16,-cdecp0,-cdecp1,-cdecp2,-cdecp3,-cdecp4,-cdecp5,-cdecp6,-cdecp7,-crc,-crypto,-d32,-dotprod,-dsp,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-hwdiv-arm,-i8mm,-lob,-mve,-mve.fp,-neon,-pacbti,-ras,-sb,-sha2,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #11 = { mustprogress nofree noinline norecurse nosync nounwind readnone willreturn "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="cortex-m3" "target-features"="+armv7-m,+hwdiv,+soft-float,+strict-align,+thumb-mode,-aes,-bf16,-cdecp0,-cdecp1,-cdecp2,-cdecp3,-cdecp4,-cdecp5,-cdecp6,-cdecp7,-crc,-crypto,-d32,-dotprod,-dsp,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-hwdiv-arm,-i8mm,-lob,-mve,-mve.fp,-neon,-pacbti,-ras,-sb,-sha2,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #12 = { mustprogress nofree noinline nosync nounwind readnone willreturn "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="cortex-m3" "target-features"="+armv7-m,+hwdiv,+soft-float,+strict-align,+thumb-mode,-aes,-bf16,-cdecp0,-cdecp1,-cdecp2,-cdecp3,-cdecp4,-cdecp5,-cdecp6,-cdecp7,-crc,-crypto,-d32,-dotprod,-dsp,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-hwdiv-arm,-i8mm,-lob,-mve,-mve.fp,-neon,-pacbti,-ras,-sb,-sha2,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #13 = { noinline noreturn nounwind "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="cortex-m3" "target-features"="+armv7-m,+hwdiv,+soft-float,+strict-align,+thumb-mode,-aes,-bf16,-cdecp0,-cdecp1,-cdecp2,-cdecp3,-cdecp4,-cdecp5,-cdecp6,-cdecp7,-crc,-crypto,-d32,-dotprod,-dsp,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-hwdiv-arm,-i8mm,-lob,-mve,-mve.fp,-neon,-pacbti,-ras,-sb,-sha2,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #14 = { mustprogress nofree noinline nounwind willreturn "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="cortex-m3" "target-features"="+armv7-m,+hwdiv,+soft-float,+strict-align,+thumb-mode,-aes,-bf16,-cdecp0,-cdecp1,-cdecp2,-cdecp3,-cdecp4,-cdecp5,-cdecp6,-cdecp7,-crc,-crypto,-d32,-dotprod,-dsp,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-hwdiv-arm,-i8mm,-lob,-mve,-mve.fp,-neon,-pacbti,-ras,-sb,-sha2,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #15 = { mustprogress nofree noinline nosync nounwind willreturn writeonly "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="cortex-m3" "target-features"="+armv7-m,+hwdiv,+soft-float,+strict-align,+thumb-mode,-aes,-bf16,-cdecp0,-cdecp1,-cdecp2,-cdecp3,-cdecp4,-cdecp5,-cdecp6,-cdecp7,-crc,-crypto,-d32,-dotprod,-dsp,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-hwdiv-arm,-i8mm,-lob,-mve,-mve.fp,-neon,-pacbti,-ras,-sb,-sha2,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #16 = { nounwind }
attributes #17 = { noreturn }

!llvm.dbg.cu = !{!211, !2, !246, !299, !90, !354}
!llvm.ident = !{!423, !423, !423, !423, !423, !423}
!llvm.module.flags = !{!424, !425, !426, !427, !428, !429, !430, !431, !432}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "AHBPrescTable", scope: !2, file: !3, line: 124, type: !85, isLocal: false, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C99, file: !3, producer: "Ubuntu clang version 14.0.6", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !11, globals: !76, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "../dep/STM32Cube_FW_F1_V1.8.0/Drivers/CMSIS/Device/ST/STM32F1xx/Source/Templates/system_stm32f1xx.c", directory: "/home/mjshen/RTOSExploration/Cicada-FW/build", checksumkind: CSK_MD5, checksum: "2e873de3002e5d783190a46ff1c7da2d")
!4 = !{!5}
!5 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !6, line: 151, baseType: !7, size: 32, elements: !8)
!6 = !DIFile(filename: "../dep/STM32Cube_FW_F1_V1.8.0/Drivers/CMSIS/Device/ST/STM32F1xx/Include/stm32f1xx.h", directory: "/home/mjshen/RTOSExploration/Cicada-FW/build", checksumkind: CSK_MD5, checksum: "dc4ed8bdf8589b30d30d93eb6ee6ca27")
!7 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!8 = !{!9, !10}
!9 = !DIEnumerator(name: "RESET", value: 0)
!10 = !DIEnumerator(name: "SET", value: 1)
!11 = !{!12, !32, !19}
!12 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !13, size: 32)
!13 = !DIDerivedType(tag: DW_TAG_typedef, name: "RCC_TypeDef", file: !14, line: 438, baseType: !15)
!14 = !DIFile(filename: "../dep/STM32Cube_FW_F1_V1.8.0/Drivers/CMSIS/Device/ST/STM32F1xx/Include/stm32f103xb.h", directory: "/home/mjshen/RTOSExploration/Cicada-FW/build", checksumkind: CSK_MD5, checksum: "d2562af6d7239ab46ca8ba238a43c848")
!15 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !14, line: 424, size: 320, elements: !16)
!16 = !{!17, !23, !24, !25, !26, !27, !28, !29, !30, !31}
!17 = !DIDerivedType(tag: DW_TAG_member, name: "CR", scope: !15, file: !14, line: 426, baseType: !18, size: 32)
!18 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !19)
!19 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint32_t", file: !20, line: 48, baseType: !21)
!20 = !DIFile(filename: "gcc-arm-none-eabi-10.3-2021.10/bin/../lib/gcc/arm-none-eabi/10.3.1/../../../../arm-none-eabi/include/sys/_stdint.h", directory: "/home/mjshen/RTOSExploration", checksumkind: CSK_MD5, checksum: "ab914e287601b2385e57880e6599aa6b")
!21 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint32_t", file: !22, line: 79, baseType: !7)
!22 = !DIFile(filename: "gcc-arm-none-eabi-10.3-2021.10/bin/../lib/gcc/arm-none-eabi/10.3.1/../../../../arm-none-eabi/include/machine/_default_types.h", directory: "/home/mjshen/RTOSExploration", checksumkind: CSK_MD5, checksum: "f7024d0682a918b41f94e8be9cd90461")
!23 = !DIDerivedType(tag: DW_TAG_member, name: "CFGR", scope: !15, file: !14, line: 427, baseType: !18, size: 32, offset: 32)
!24 = !DIDerivedType(tag: DW_TAG_member, name: "CIR", scope: !15, file: !14, line: 428, baseType: !18, size: 32, offset: 64)
!25 = !DIDerivedType(tag: DW_TAG_member, name: "APB2RSTR", scope: !15, file: !14, line: 429, baseType: !18, size: 32, offset: 96)
!26 = !DIDerivedType(tag: DW_TAG_member, name: "APB1RSTR", scope: !15, file: !14, line: 430, baseType: !18, size: 32, offset: 128)
!27 = !DIDerivedType(tag: DW_TAG_member, name: "AHBENR", scope: !15, file: !14, line: 431, baseType: !18, size: 32, offset: 160)
!28 = !DIDerivedType(tag: DW_TAG_member, name: "APB2ENR", scope: !15, file: !14, line: 432, baseType: !18, size: 32, offset: 192)
!29 = !DIDerivedType(tag: DW_TAG_member, name: "APB1ENR", scope: !15, file: !14, line: 433, baseType: !18, size: 32, offset: 224)
!30 = !DIDerivedType(tag: DW_TAG_member, name: "BDCR", scope: !15, file: !14, line: 434, baseType: !18, size: 32, offset: 256)
!31 = !DIDerivedType(tag: DW_TAG_member, name: "CSR", scope: !15, file: !14, line: 435, baseType: !18, size: 32, offset: 288)
!32 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !33, size: 32)
!33 = !DIDerivedType(tag: DW_TAG_typedef, name: "SCB_Type", file: !34, line: 397, baseType: !35)
!34 = !DIFile(filename: "../dep/STM32Cube_FW_F1_V1.8.0/Drivers/CMSIS/Include/core_cm3.h", directory: "/home/mjshen/RTOSExploration/Cicada-FW/build")
!35 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !34, line: 374, size: 1120, elements: !36)
!36 = !{!37, !39, !40, !41, !42, !43, !44, !52, !53, !54, !55, !56, !57, !58, !59, !63, !64, !65, !69, !73, !75}
!37 = !DIDerivedType(tag: DW_TAG_member, name: "CPUID", scope: !35, file: !34, line: 376, baseType: !38, size: 32)
!38 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !18)
!39 = !DIDerivedType(tag: DW_TAG_member, name: "ICSR", scope: !35, file: !34, line: 377, baseType: !18, size: 32, offset: 32)
!40 = !DIDerivedType(tag: DW_TAG_member, name: "VTOR", scope: !35, file: !34, line: 378, baseType: !18, size: 32, offset: 64)
!41 = !DIDerivedType(tag: DW_TAG_member, name: "AIRCR", scope: !35, file: !34, line: 379, baseType: !18, size: 32, offset: 96)
!42 = !DIDerivedType(tag: DW_TAG_member, name: "SCR", scope: !35, file: !34, line: 380, baseType: !18, size: 32, offset: 128)
!43 = !DIDerivedType(tag: DW_TAG_member, name: "CCR", scope: !35, file: !34, line: 381, baseType: !18, size: 32, offset: 160)
!44 = !DIDerivedType(tag: DW_TAG_member, name: "SHP", scope: !35, file: !34, line: 382, baseType: !45, size: 96, offset: 192)
!45 = !DICompositeType(tag: DW_TAG_array_type, baseType: !46, size: 96, elements: !50)
!46 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !47)
!47 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint8_t", file: !20, line: 24, baseType: !48)
!48 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint8_t", file: !22, line: 43, baseType: !49)
!49 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!50 = !{!51}
!51 = !DISubrange(count: 12)
!52 = !DIDerivedType(tag: DW_TAG_member, name: "SHCSR", scope: !35, file: !34, line: 383, baseType: !18, size: 32, offset: 288)
!53 = !DIDerivedType(tag: DW_TAG_member, name: "CFSR", scope: !35, file: !34, line: 384, baseType: !18, size: 32, offset: 320)
!54 = !DIDerivedType(tag: DW_TAG_member, name: "HFSR", scope: !35, file: !34, line: 385, baseType: !18, size: 32, offset: 352)
!55 = !DIDerivedType(tag: DW_TAG_member, name: "DFSR", scope: !35, file: !34, line: 386, baseType: !18, size: 32, offset: 384)
!56 = !DIDerivedType(tag: DW_TAG_member, name: "MMFAR", scope: !35, file: !34, line: 387, baseType: !18, size: 32, offset: 416)
!57 = !DIDerivedType(tag: DW_TAG_member, name: "BFAR", scope: !35, file: !34, line: 388, baseType: !18, size: 32, offset: 448)
!58 = !DIDerivedType(tag: DW_TAG_member, name: "AFSR", scope: !35, file: !34, line: 389, baseType: !18, size: 32, offset: 480)
!59 = !DIDerivedType(tag: DW_TAG_member, name: "PFR", scope: !35, file: !34, line: 390, baseType: !60, size: 64, offset: 512)
!60 = !DICompositeType(tag: DW_TAG_array_type, baseType: !38, size: 64, elements: !61)
!61 = !{!62}
!62 = !DISubrange(count: 2)
!63 = !DIDerivedType(tag: DW_TAG_member, name: "DFR", scope: !35, file: !34, line: 391, baseType: !38, size: 32, offset: 576)
!64 = !DIDerivedType(tag: DW_TAG_member, name: "ADR", scope: !35, file: !34, line: 392, baseType: !38, size: 32, offset: 608)
!65 = !DIDerivedType(tag: DW_TAG_member, name: "MMFR", scope: !35, file: !34, line: 393, baseType: !66, size: 128, offset: 640)
!66 = !DICompositeType(tag: DW_TAG_array_type, baseType: !38, size: 128, elements: !67)
!67 = !{!68}
!68 = !DISubrange(count: 4)
!69 = !DIDerivedType(tag: DW_TAG_member, name: "ISAR", scope: !35, file: !34, line: 394, baseType: !70, size: 160, offset: 768)
!70 = !DICompositeType(tag: DW_TAG_array_type, baseType: !38, size: 160, elements: !71)
!71 = !{!72}
!72 = !DISubrange(count: 5)
!73 = !DIDerivedType(tag: DW_TAG_member, name: "RESERVED0", scope: !35, file: !34, line: 395, baseType: !74, size: 160, offset: 928)
!74 = !DICompositeType(tag: DW_TAG_array_type, baseType: !19, size: 160, elements: !71)
!75 = !DIDerivedType(tag: DW_TAG_member, name: "CPACR", scope: !35, file: !34, line: 396, baseType: !18, size: 32, offset: 1088)
!76 = !{!77, !0, !79}
!77 = !DIGlobalVariableExpression(var: !78, expr: !DIExpression())
!78 = distinct !DIGlobalVariable(name: "SystemCoreClock", scope: !2, file: !3, line: 123, type: !19, isLocal: false, isDefinition: true)
!79 = !DIGlobalVariableExpression(var: !80, expr: !DIExpression())
!80 = distinct !DIGlobalVariable(name: "APBPrescTable", scope: !2, file: !3, line: 125, type: !81, isLocal: false, isDefinition: true)
!81 = !DICompositeType(tag: DW_TAG_array_type, baseType: !82, size: 64, elements: !83)
!82 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !47)
!83 = !{!84}
!84 = !DISubrange(count: 8)
!85 = !DICompositeType(tag: DW_TAG_array_type, baseType: !82, size: 128, elements: !86)
!86 = !{!87}
!87 = !DISubrange(count: 16)
!88 = !DIGlobalVariableExpression(var: !89, expr: !DIExpression())
!89 = distinct !DIGlobalVariable(name: "uwTickPrio", scope: !90, file: !91, line: 80, type: !19, isLocal: false, isDefinition: true)
!90 = distinct !DICompileUnit(language: DW_LANG_C99, file: !91, producer: "Ubuntu clang version 14.0.6", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !92, retainedTypes: !162, globals: !205, splitDebugInlining: false, nameTableKind: None)
!91 = !DIFile(filename: "../dep/STM32Cube_FW_F1_V1.8.0/Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal.c", directory: "/home/mjshen/RTOSExploration/Cicada-FW/build", checksumkind: CSK_MD5, checksum: "1a5fa7b79e9e470cf817b81d791a6ccb")
!92 = !{!93, !100, !107}
!93 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !94, line: 49, baseType: !7, size: 32, elements: !95)
!94 = !DIFile(filename: "../dep/STM32Cube_FW_F1_V1.8.0/Drivers/STM32F1xx_HAL_Driver/Inc/stm32f1xx_hal.h", directory: "/home/mjshen/RTOSExploration/Cicada-FW/build", checksumkind: CSK_MD5, checksum: "5eab64b252ccd159497a11d87d26bc0b")
!95 = !{!96, !97, !98, !99}
!96 = !DIEnumerator(name: "HAL_TICK_FREQ_10HZ", value: 100)
!97 = !DIEnumerator(name: "HAL_TICK_FREQ_100HZ", value: 10)
!98 = !DIEnumerator(name: "HAL_TICK_FREQ_1KHZ", value: 1)
!99 = !DIEnumerator(name: "HAL_TICK_FREQ_DEFAULT", value: 1)
!100 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !101, line: 41, baseType: !7, size: 32, elements: !102)
!101 = !DIFile(filename: "../dep/STM32Cube_FW_F1_V1.8.0/Drivers/STM32F1xx_HAL_Driver/Inc/stm32f1xx_hal_def.h", directory: "/home/mjshen/RTOSExploration/Cicada-FW/build", checksumkind: CSK_MD5, checksum: "4d6e0bbb91efacee14a68a416f506def")
!102 = !{!103, !104, !105, !106}
!103 = !DIEnumerator(name: "HAL_OK", value: 0)
!104 = !DIEnumerator(name: "HAL_ERROR", value: 1)
!105 = !DIEnumerator(name: "HAL_BUSY", value: 2)
!106 = !DIEnumerator(name: "HAL_TIMEOUT", value: 3)
!107 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !14, line: 69, baseType: !108, size: 32, elements: !109)
!108 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!109 = !{!110, !111, !112, !113, !114, !115, !116, !117, !118, !119, !120, !121, !122, !123, !124, !125, !126, !127, !128, !129, !130, !131, !132, !133, !134, !135, !136, !137, !138, !139, !140, !141, !142, !143, !144, !145, !146, !147, !148, !149, !150, !151, !152, !153, !154, !155, !156, !157, !158, !159, !160, !161}
!110 = !DIEnumerator(name: "NonMaskableInt_IRQn", value: -14)
!111 = !DIEnumerator(name: "HardFault_IRQn", value: -13)
!112 = !DIEnumerator(name: "MemoryManagement_IRQn", value: -12)
!113 = !DIEnumerator(name: "BusFault_IRQn", value: -11)
!114 = !DIEnumerator(name: "UsageFault_IRQn", value: -10)
!115 = !DIEnumerator(name: "SVCall_IRQn", value: -5)
!116 = !DIEnumerator(name: "DebugMonitor_IRQn", value: -4)
!117 = !DIEnumerator(name: "PendSV_IRQn", value: -2)
!118 = !DIEnumerator(name: "SysTick_IRQn", value: -1)
!119 = !DIEnumerator(name: "WWDG_IRQn", value: 0)
!120 = !DIEnumerator(name: "PVD_IRQn", value: 1)
!121 = !DIEnumerator(name: "TAMPER_IRQn", value: 2)
!122 = !DIEnumerator(name: "RTC_IRQn", value: 3)
!123 = !DIEnumerator(name: "FLASH_IRQn", value: 4)
!124 = !DIEnumerator(name: "RCC_IRQn", value: 5)
!125 = !DIEnumerator(name: "EXTI0_IRQn", value: 6)
!126 = !DIEnumerator(name: "EXTI1_IRQn", value: 7)
!127 = !DIEnumerator(name: "EXTI2_IRQn", value: 8)
!128 = !DIEnumerator(name: "EXTI3_IRQn", value: 9)
!129 = !DIEnumerator(name: "EXTI4_IRQn", value: 10)
!130 = !DIEnumerator(name: "DMA1_Channel1_IRQn", value: 11)
!131 = !DIEnumerator(name: "DMA1_Channel2_IRQn", value: 12)
!132 = !DIEnumerator(name: "DMA1_Channel3_IRQn", value: 13)
!133 = !DIEnumerator(name: "DMA1_Channel4_IRQn", value: 14)
!134 = !DIEnumerator(name: "DMA1_Channel5_IRQn", value: 15)
!135 = !DIEnumerator(name: "DMA1_Channel6_IRQn", value: 16)
!136 = !DIEnumerator(name: "DMA1_Channel7_IRQn", value: 17)
!137 = !DIEnumerator(name: "ADC1_2_IRQn", value: 18)
!138 = !DIEnumerator(name: "USB_HP_CAN1_TX_IRQn", value: 19)
!139 = !DIEnumerator(name: "USB_LP_CAN1_RX0_IRQn", value: 20)
!140 = !DIEnumerator(name: "CAN1_RX1_IRQn", value: 21)
!141 = !DIEnumerator(name: "CAN1_SCE_IRQn", value: 22)
!142 = !DIEnumerator(name: "EXTI9_5_IRQn", value: 23)
!143 = !DIEnumerator(name: "TIM1_BRK_IRQn", value: 24)
!144 = !DIEnumerator(name: "TIM1_UP_IRQn", value: 25)
!145 = !DIEnumerator(name: "TIM1_TRG_COM_IRQn", value: 26)
!146 = !DIEnumerator(name: "TIM1_CC_IRQn", value: 27)
!147 = !DIEnumerator(name: "TIM2_IRQn", value: 28)
!148 = !DIEnumerator(name: "TIM3_IRQn", value: 29)
!149 = !DIEnumerator(name: "TIM4_IRQn", value: 30)
!150 = !DIEnumerator(name: "I2C1_EV_IRQn", value: 31)
!151 = !DIEnumerator(name: "I2C1_ER_IRQn", value: 32)
!152 = !DIEnumerator(name: "I2C2_EV_IRQn", value: 33)
!153 = !DIEnumerator(name: "I2C2_ER_IRQn", value: 34)
!154 = !DIEnumerator(name: "SPI1_IRQn", value: 35)
!155 = !DIEnumerator(name: "SPI2_IRQn", value: 36)
!156 = !DIEnumerator(name: "USART1_IRQn", value: 37)
!157 = !DIEnumerator(name: "USART2_IRQn", value: 38)
!158 = !DIEnumerator(name: "USART3_IRQn", value: 39)
!159 = !DIEnumerator(name: "EXTI15_10_IRQn", value: 40)
!160 = !DIEnumerator(name: "RTC_Alarm_IRQn", value: 41)
!161 = !DIEnumerator(name: "USBWakeUp_IRQn", value: 42)
!162 = !{!163, !19, !176, !190, !198, !204}
!163 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !164, size: 32)
!164 = !DIDerivedType(tag: DW_TAG_typedef, name: "FLASH_TypeDef", file: !14, line: 336, baseType: !165)
!165 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !14, line: 325, size: 288, elements: !166)
!166 = !{!167, !168, !169, !170, !171, !172, !173, !174, !175}
!167 = !DIDerivedType(tag: DW_TAG_member, name: "ACR", scope: !165, file: !14, line: 327, baseType: !18, size: 32)
!168 = !DIDerivedType(tag: DW_TAG_member, name: "KEYR", scope: !165, file: !14, line: 328, baseType: !18, size: 32, offset: 32)
!169 = !DIDerivedType(tag: DW_TAG_member, name: "OPTKEYR", scope: !165, file: !14, line: 329, baseType: !18, size: 32, offset: 64)
!170 = !DIDerivedType(tag: DW_TAG_member, name: "SR", scope: !165, file: !14, line: 330, baseType: !18, size: 32, offset: 96)
!171 = !DIDerivedType(tag: DW_TAG_member, name: "CR", scope: !165, file: !14, line: 331, baseType: !18, size: 32, offset: 128)
!172 = !DIDerivedType(tag: DW_TAG_member, name: "AR", scope: !165, file: !14, line: 332, baseType: !18, size: 32, offset: 160)
!173 = !DIDerivedType(tag: DW_TAG_member, name: "RESERVED", scope: !165, file: !14, line: 333, baseType: !18, size: 32, offset: 192)
!174 = !DIDerivedType(tag: DW_TAG_member, name: "OBR", scope: !165, file: !14, line: 334, baseType: !18, size: 32, offset: 224)
!175 = !DIDerivedType(tag: DW_TAG_member, name: "WRPR", scope: !165, file: !14, line: 335, baseType: !18, size: 32, offset: 256)
!176 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !177, size: 32)
!177 = !DIDerivedType(tag: DW_TAG_typedef, name: "RCC_TypeDef", file: !14, line: 438, baseType: !178)
!178 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !14, line: 424, size: 320, elements: !179)
!179 = !{!180, !181, !182, !183, !184, !185, !186, !187, !188, !189}
!180 = !DIDerivedType(tag: DW_TAG_member, name: "CR", scope: !178, file: !14, line: 426, baseType: !18, size: 32)
!181 = !DIDerivedType(tag: DW_TAG_member, name: "CFGR", scope: !178, file: !14, line: 427, baseType: !18, size: 32, offset: 32)
!182 = !DIDerivedType(tag: DW_TAG_member, name: "CIR", scope: !178, file: !14, line: 428, baseType: !18, size: 32, offset: 64)
!183 = !DIDerivedType(tag: DW_TAG_member, name: "APB2RSTR", scope: !178, file: !14, line: 429, baseType: !18, size: 32, offset: 96)
!184 = !DIDerivedType(tag: DW_TAG_member, name: "APB1RSTR", scope: !178, file: !14, line: 430, baseType: !18, size: 32, offset: 128)
!185 = !DIDerivedType(tag: DW_TAG_member, name: "AHBENR", scope: !178, file: !14, line: 431, baseType: !18, size: 32, offset: 160)
!186 = !DIDerivedType(tag: DW_TAG_member, name: "APB2ENR", scope: !178, file: !14, line: 432, baseType: !18, size: 32, offset: 192)
!187 = !DIDerivedType(tag: DW_TAG_member, name: "APB1ENR", scope: !178, file: !14, line: 433, baseType: !18, size: 32, offset: 224)
!188 = !DIDerivedType(tag: DW_TAG_member, name: "BDCR", scope: !178, file: !14, line: 434, baseType: !18, size: 32, offset: 256)
!189 = !DIDerivedType(tag: DW_TAG_member, name: "CSR", scope: !178, file: !14, line: 435, baseType: !18, size: 32, offset: 288)
!190 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !191, size: 32)
!191 = !DIDerivedType(tag: DW_TAG_typedef, name: "SysTick_Type", file: !34, line: 700, baseType: !192)
!192 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !34, line: 694, size: 128, elements: !193)
!193 = !{!194, !195, !196, !197}
!194 = !DIDerivedType(tag: DW_TAG_member, name: "CTRL", scope: !192, file: !34, line: 696, baseType: !18, size: 32)
!195 = !DIDerivedType(tag: DW_TAG_member, name: "LOAD", scope: !192, file: !34, line: 697, baseType: !18, size: 32, offset: 32)
!196 = !DIDerivedType(tag: DW_TAG_member, name: "VAL", scope: !192, file: !34, line: 698, baseType: !18, size: 32, offset: 64)
!197 = !DIDerivedType(tag: DW_TAG_member, name: "CALIB", scope: !192, file: !34, line: 699, baseType: !38, size: 32, offset: 96)
!198 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !199, size: 32)
!199 = !DIDerivedType(tag: DW_TAG_typedef, name: "DBGMCU_TypeDef", file: !14, line: 285, baseType: !200)
!200 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !14, line: 281, size: 64, elements: !201)
!201 = !{!202, !203}
!202 = !DIDerivedType(tag: DW_TAG_member, name: "IDCODE", scope: !200, file: !14, line: 283, baseType: !18, size: 32)
!203 = !DIDerivedType(tag: DW_TAG_member, name: "CR", scope: !200, file: !14, line: 284, baseType: !18, size: 32, offset: 32)
!204 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !19, size: 32)
!205 = !{!88, !206, !209}
!206 = !DIGlobalVariableExpression(var: !207, expr: !DIExpression())
!207 = distinct !DIGlobalVariable(name: "uwTickFreq", scope: !90, file: !91, line: 81, type: !208, isLocal: false, isDefinition: true)
!208 = !DIDerivedType(tag: DW_TAG_typedef, name: "HAL_TickFreqTypeDef", file: !94, line: 55, baseType: !93)
!209 = !DIGlobalVariableExpression(var: !210, expr: !DIExpression())
!210 = distinct !DIGlobalVariable(name: "uwTick", scope: !90, file: !91, line: 79, type: !18, isLocal: false, isDefinition: true)
!211 = distinct !DICompileUnit(language: DW_LANG_C_plus_plus_14, file: !212, producer: "Ubuntu clang version 14.0.6", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !213, retainedTypes: !225, splitDebugInlining: false, nameTableKind: None)
!212 = !DIFile(filename: "../examples/stm32f1/blinky.cpp", directory: "/home/mjshen/RTOSExploration/Cicada-FW/build", checksumkind: CSK_MD5, checksum: "0382420e594ee783b4913c04fba1600a")
!213 = !{!214, !220}
!214 = distinct !DICompositeType(tag: DW_TAG_enumeration_type, file: !101, line: 41, baseType: !7, size: 32, elements: !215, identifier: "_ZTS17HAL_StatusTypeDef")
!215 = !{!216, !217, !218, !219}
!216 = !DIEnumerator(name: "HAL_OK", value: 0, isUnsigned: true)
!217 = !DIEnumerator(name: "HAL_ERROR", value: 1, isUnsigned: true)
!218 = !DIEnumerator(name: "HAL_BUSY", value: 2, isUnsigned: true)
!219 = !DIEnumerator(name: "HAL_TIMEOUT", value: 3, isUnsigned: true)
!220 = distinct !DICompositeType(tag: DW_TAG_enumeration_type, file: !221, line: 65, baseType: !7, size: 32, elements: !222, identifier: "_ZTS13GPIO_PinState")
!221 = !DIFile(filename: "../dep/STM32Cube_FW_F1_V1.8.0/Drivers/STM32F1xx_HAL_Driver/Inc/stm32f1xx_hal_gpio.h", directory: "/home/mjshen/RTOSExploration/Cicada-FW/build", checksumkind: CSK_MD5, checksum: "b5ff32b0624c591654a3e02ee400cffe")
!222 = !{!223, !224}
!223 = !DIEnumerator(name: "GPIO_PIN_RESET", value: 0, isUnsigned: true)
!224 = !DIEnumerator(name: "GPIO_PIN_SET", value: 1, isUnsigned: true)
!225 = !{!226, !240, !243}
!226 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !227, size: 32)
!227 = !DIDerivedType(tag: DW_TAG_typedef, name: "RCC_TypeDef", file: !14, line: 438, baseType: !228)
!228 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !14, line: 424, size: 320, flags: DIFlagTypePassByValue, elements: !229, identifier: "_ZTS11RCC_TypeDef")
!229 = !{!230, !231, !232, !233, !234, !235, !236, !237, !238, !239}
!230 = !DIDerivedType(tag: DW_TAG_member, name: "CR", scope: !228, file: !14, line: 426, baseType: !18, size: 32)
!231 = !DIDerivedType(tag: DW_TAG_member, name: "CFGR", scope: !228, file: !14, line: 427, baseType: !18, size: 32, offset: 32)
!232 = !DIDerivedType(tag: DW_TAG_member, name: "CIR", scope: !228, file: !14, line: 428, baseType: !18, size: 32, offset: 64)
!233 = !DIDerivedType(tag: DW_TAG_member, name: "APB2RSTR", scope: !228, file: !14, line: 429, baseType: !18, size: 32, offset: 96)
!234 = !DIDerivedType(tag: DW_TAG_member, name: "APB1RSTR", scope: !228, file: !14, line: 430, baseType: !18, size: 32, offset: 128)
!235 = !DIDerivedType(tag: DW_TAG_member, name: "AHBENR", scope: !228, file: !14, line: 431, baseType: !18, size: 32, offset: 160)
!236 = !DIDerivedType(tag: DW_TAG_member, name: "APB2ENR", scope: !228, file: !14, line: 432, baseType: !18, size: 32, offset: 192)
!237 = !DIDerivedType(tag: DW_TAG_member, name: "APB1ENR", scope: !228, file: !14, line: 433, baseType: !18, size: 32, offset: 224)
!238 = !DIDerivedType(tag: DW_TAG_member, name: "BDCR", scope: !228, file: !14, line: 434, baseType: !18, size: 32, offset: 256)
!239 = !DIDerivedType(tag: DW_TAG_member, name: "CSR", scope: !228, file: !14, line: 435, baseType: !18, size: 32, offset: 288)
!240 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !241, size: 32)
!241 = !DIDerivedType(tag: DW_TAG_typedef, name: "GPIO_TypeDef", file: !14, line: 367, baseType: !242)
!242 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !14, line: 358, size: 224, flags: DIFlagFwdDecl, identifier: "_ZTS12GPIO_TypeDef")
!243 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint16_t", file: !20, line: 36, baseType: !244)
!244 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint16_t", file: !22, line: 57, baseType: !245)
!245 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!246 = distinct !DICompileUnit(language: DW_LANG_C99, file: !247, producer: "Ubuntu clang version 14.0.6", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !248, retainedTypes: !253, splitDebugInlining: false, nameTableKind: None)
!247 = !DIFile(filename: "../dep/STM32Cube_FW_F1_V1.8.0/Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_gpio.c", directory: "/home/mjshen/RTOSExploration/Cicada-FW/build", checksumkind: CSK_MD5, checksum: "de98d9c05272efa2ca465428751dd1b5")
!248 = !{!249, !100}
!249 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !221, line: 65, baseType: !7, size: 32, elements: !250)
!250 = !{!251, !252}
!251 = !DIEnumerator(name: "GPIO_PIN_RESET", value: 0)
!252 = !DIEnumerator(name: "GPIO_PIN_SET", value: 1)
!253 = !{!19, !243, !254, !268, !278, !289}
!254 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !255, size: 32)
!255 = !DIDerivedType(tag: DW_TAG_typedef, name: "RCC_TypeDef", file: !14, line: 438, baseType: !256)
!256 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !14, line: 424, size: 320, elements: !257)
!257 = !{!258, !259, !260, !261, !262, !263, !264, !265, !266, !267}
!258 = !DIDerivedType(tag: DW_TAG_member, name: "CR", scope: !256, file: !14, line: 426, baseType: !18, size: 32)
!259 = !DIDerivedType(tag: DW_TAG_member, name: "CFGR", scope: !256, file: !14, line: 427, baseType: !18, size: 32, offset: 32)
!260 = !DIDerivedType(tag: DW_TAG_member, name: "CIR", scope: !256, file: !14, line: 428, baseType: !18, size: 32, offset: 64)
!261 = !DIDerivedType(tag: DW_TAG_member, name: "APB2RSTR", scope: !256, file: !14, line: 429, baseType: !18, size: 32, offset: 96)
!262 = !DIDerivedType(tag: DW_TAG_member, name: "APB1RSTR", scope: !256, file: !14, line: 430, baseType: !18, size: 32, offset: 128)
!263 = !DIDerivedType(tag: DW_TAG_member, name: "AHBENR", scope: !256, file: !14, line: 431, baseType: !18, size: 32, offset: 160)
!264 = !DIDerivedType(tag: DW_TAG_member, name: "APB2ENR", scope: !256, file: !14, line: 432, baseType: !18, size: 32, offset: 192)
!265 = !DIDerivedType(tag: DW_TAG_member, name: "APB1ENR", scope: !256, file: !14, line: 433, baseType: !18, size: 32, offset: 224)
!266 = !DIDerivedType(tag: DW_TAG_member, name: "BDCR", scope: !256, file: !14, line: 434, baseType: !18, size: 32, offset: 256)
!267 = !DIDerivedType(tag: DW_TAG_member, name: "CSR", scope: !256, file: !14, line: 435, baseType: !18, size: 32, offset: 288)
!268 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !269, size: 32)
!269 = !DIDerivedType(tag: DW_TAG_typedef, name: "AFIO_TypeDef", file: !14, line: 380, baseType: !270)
!270 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !14, line: 373, size: 256, elements: !271)
!271 = !{!272, !273, !274, !276, !277}
!272 = !DIDerivedType(tag: DW_TAG_member, name: "EVCR", scope: !270, file: !14, line: 375, baseType: !18, size: 32)
!273 = !DIDerivedType(tag: DW_TAG_member, name: "MAPR", scope: !270, file: !14, line: 376, baseType: !18, size: 32, offset: 32)
!274 = !DIDerivedType(tag: DW_TAG_member, name: "EXTICR", scope: !270, file: !14, line: 377, baseType: !275, size: 128, offset: 64)
!275 = !DICompositeType(tag: DW_TAG_array_type, baseType: !18, size: 128, elements: !67)
!276 = !DIDerivedType(tag: DW_TAG_member, name: "RESERVED0", scope: !270, file: !14, line: 378, baseType: !19, size: 32, offset: 192)
!277 = !DIDerivedType(tag: DW_TAG_member, name: "MAPR2", scope: !270, file: !14, line: 379, baseType: !18, size: 32, offset: 224)
!278 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !279, size: 32)
!279 = !DIDerivedType(tag: DW_TAG_typedef, name: "GPIO_TypeDef", file: !14, line: 367, baseType: !280)
!280 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !14, line: 358, size: 224, elements: !281)
!281 = !{!282, !283, !284, !285, !286, !287, !288}
!282 = !DIDerivedType(tag: DW_TAG_member, name: "CRL", scope: !280, file: !14, line: 360, baseType: !18, size: 32)
!283 = !DIDerivedType(tag: DW_TAG_member, name: "CRH", scope: !280, file: !14, line: 361, baseType: !18, size: 32, offset: 32)
!284 = !DIDerivedType(tag: DW_TAG_member, name: "IDR", scope: !280, file: !14, line: 362, baseType: !18, size: 32, offset: 64)
!285 = !DIDerivedType(tag: DW_TAG_member, name: "ODR", scope: !280, file: !14, line: 363, baseType: !18, size: 32, offset: 96)
!286 = !DIDerivedType(tag: DW_TAG_member, name: "BSRR", scope: !280, file: !14, line: 364, baseType: !18, size: 32, offset: 128)
!287 = !DIDerivedType(tag: DW_TAG_member, name: "BRR", scope: !280, file: !14, line: 365, baseType: !18, size: 32, offset: 160)
!288 = !DIDerivedType(tag: DW_TAG_member, name: "LCKR", scope: !280, file: !14, line: 366, baseType: !18, size: 32, offset: 192)
!289 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !290, size: 32)
!290 = !DIDerivedType(tag: DW_TAG_typedef, name: "EXTI_TypeDef", file: !14, line: 319, baseType: !291)
!291 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !14, line: 311, size: 192, elements: !292)
!292 = !{!293, !294, !295, !296, !297, !298}
!293 = !DIDerivedType(tag: DW_TAG_member, name: "IMR", scope: !291, file: !14, line: 313, baseType: !18, size: 32)
!294 = !DIDerivedType(tag: DW_TAG_member, name: "EMR", scope: !291, file: !14, line: 314, baseType: !18, size: 32, offset: 32)
!295 = !DIDerivedType(tag: DW_TAG_member, name: "RTSR", scope: !291, file: !14, line: 315, baseType: !18, size: 32, offset: 64)
!296 = !DIDerivedType(tag: DW_TAG_member, name: "FTSR", scope: !291, file: !14, line: 316, baseType: !18, size: 32, offset: 96)
!297 = !DIDerivedType(tag: DW_TAG_member, name: "SWIER", scope: !291, file: !14, line: 317, baseType: !18, size: 32, offset: 128)
!298 = !DIDerivedType(tag: DW_TAG_member, name: "PR", scope: !291, file: !14, line: 318, baseType: !18, size: 32, offset: 160)
!299 = distinct !DICompileUnit(language: DW_LANG_C99, file: !300, producer: "Ubuntu clang version 14.0.6", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !301, retainedTypes: !306, splitDebugInlining: false, nameTableKind: None)
!300 = !DIFile(filename: "../dep/STM32Cube_FW_F1_V1.8.0/Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_rcc.c", directory: "/home/mjshen/RTOSExploration/Cicada-FW/build", checksumkind: CSK_MD5, checksum: "bf5d5e021854d33cea3d58ed6b9d5087")
!301 = !{!100, !5, !302}
!302 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !6, line: 157, baseType: !7, size: 32, elements: !303)
!303 = !{!304, !305}
!304 = !DIEnumerator(name: "DISABLE", value: 0)
!305 = !DIEnumerator(name: "ENABLE", value: 1)
!306 = !{!307, !19, !321, !47, !322, !323, !329, !243, !342, !353}
!307 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !308, size: 32)
!308 = !DIDerivedType(tag: DW_TAG_typedef, name: "RCC_TypeDef", file: !14, line: 438, baseType: !309)
!309 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !14, line: 424, size: 320, elements: !310)
!310 = !{!311, !312, !313, !314, !315, !316, !317, !318, !319, !320}
!311 = !DIDerivedType(tag: DW_TAG_member, name: "CR", scope: !309, file: !14, line: 426, baseType: !18, size: 32)
!312 = !DIDerivedType(tag: DW_TAG_member, name: "CFGR", scope: !309, file: !14, line: 427, baseType: !18, size: 32, offset: 32)
!313 = !DIDerivedType(tag: DW_TAG_member, name: "CIR", scope: !309, file: !14, line: 428, baseType: !18, size: 32, offset: 64)
!314 = !DIDerivedType(tag: DW_TAG_member, name: "APB2RSTR", scope: !309, file: !14, line: 429, baseType: !18, size: 32, offset: 96)
!315 = !DIDerivedType(tag: DW_TAG_member, name: "APB1RSTR", scope: !309, file: !14, line: 430, baseType: !18, size: 32, offset: 128)
!316 = !DIDerivedType(tag: DW_TAG_member, name: "AHBENR", scope: !309, file: !14, line: 431, baseType: !18, size: 32, offset: 160)
!317 = !DIDerivedType(tag: DW_TAG_member, name: "APB2ENR", scope: !309, file: !14, line: 432, baseType: !18, size: 32, offset: 192)
!318 = !DIDerivedType(tag: DW_TAG_member, name: "APB1ENR", scope: !309, file: !14, line: 433, baseType: !18, size: 32, offset: 224)
!319 = !DIDerivedType(tag: DW_TAG_member, name: "BDCR", scope: !309, file: !14, line: 434, baseType: !18, size: 32, offset: 256)
!320 = !DIDerivedType(tag: DW_TAG_member, name: "CSR", scope: !309, file: !14, line: 435, baseType: !18, size: 32, offset: 288)
!321 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 32)
!322 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !18, size: 32)
!323 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !324, size: 32)
!324 = !DIDerivedType(tag: DW_TAG_typedef, name: "PWR_TypeDef", file: !14, line: 418, baseType: !325)
!325 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !14, line: 414, size: 64, elements: !326)
!326 = !{!327, !328}
!327 = !DIDerivedType(tag: DW_TAG_member, name: "CR", scope: !325, file: !14, line: 416, baseType: !18, size: 32)
!328 = !DIDerivedType(tag: DW_TAG_member, name: "CSR", scope: !325, file: !14, line: 417, baseType: !18, size: 32, offset: 32)
!329 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !330, size: 32)
!330 = !DIDerivedType(tag: DW_TAG_typedef, name: "FLASH_TypeDef", file: !14, line: 336, baseType: !331)
!331 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !14, line: 325, size: 288, elements: !332)
!332 = !{!333, !334, !335, !336, !337, !338, !339, !340, !341}
!333 = !DIDerivedType(tag: DW_TAG_member, name: "ACR", scope: !331, file: !14, line: 327, baseType: !18, size: 32)
!334 = !DIDerivedType(tag: DW_TAG_member, name: "KEYR", scope: !331, file: !14, line: 328, baseType: !18, size: 32, offset: 32)
!335 = !DIDerivedType(tag: DW_TAG_member, name: "OPTKEYR", scope: !331, file: !14, line: 329, baseType: !18, size: 32, offset: 64)
!336 = !DIDerivedType(tag: DW_TAG_member, name: "SR", scope: !331, file: !14, line: 330, baseType: !18, size: 32, offset: 96)
!337 = !DIDerivedType(tag: DW_TAG_member, name: "CR", scope: !331, file: !14, line: 331, baseType: !18, size: 32, offset: 128)
!338 = !DIDerivedType(tag: DW_TAG_member, name: "AR", scope: !331, file: !14, line: 332, baseType: !18, size: 32, offset: 160)
!339 = !DIDerivedType(tag: DW_TAG_member, name: "RESERVED", scope: !331, file: !14, line: 333, baseType: !18, size: 32, offset: 192)
!340 = !DIDerivedType(tag: DW_TAG_member, name: "OBR", scope: !331, file: !14, line: 334, baseType: !18, size: 32, offset: 224)
!341 = !DIDerivedType(tag: DW_TAG_member, name: "WRPR", scope: !331, file: !14, line: 335, baseType: !18, size: 32, offset: 256)
!342 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !343, size: 32)
!343 = !DIDerivedType(tag: DW_TAG_typedef, name: "GPIO_TypeDef", file: !14, line: 367, baseType: !344)
!344 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !14, line: 358, size: 224, elements: !345)
!345 = !{!346, !347, !348, !349, !350, !351, !352}
!346 = !DIDerivedType(tag: DW_TAG_member, name: "CRL", scope: !344, file: !14, line: 360, baseType: !18, size: 32)
!347 = !DIDerivedType(tag: DW_TAG_member, name: "CRH", scope: !344, file: !14, line: 361, baseType: !18, size: 32, offset: 32)
!348 = !DIDerivedType(tag: DW_TAG_member, name: "IDR", scope: !344, file: !14, line: 362, baseType: !18, size: 32, offset: 64)
!349 = !DIDerivedType(tag: DW_TAG_member, name: "ODR", scope: !344, file: !14, line: 363, baseType: !18, size: 32, offset: 96)
!350 = !DIDerivedType(tag: DW_TAG_member, name: "BSRR", scope: !344, file: !14, line: 364, baseType: !18, size: 32, offset: 128)
!351 = !DIDerivedType(tag: DW_TAG_member, name: "BRR", scope: !344, file: !14, line: 365, baseType: !18, size: 32, offset: 160)
!352 = !DIDerivedType(tag: DW_TAG_member, name: "LCKR", scope: !344, file: !14, line: 366, baseType: !18, size: 32, offset: 192)
!353 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !46, size: 32)
!354 = distinct !DICompileUnit(language: DW_LANG_C99, file: !355, producer: "Ubuntu clang version 14.0.6", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !356, retainedTypes: !357, splitDebugInlining: false, nameTableKind: None)
!355 = !DIFile(filename: "../dep/STM32Cube_FW_F1_V1.8.0/Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_cortex.c", directory: "/home/mjshen/RTOSExploration/Cicada-FW/build", checksumkind: CSK_MD5, checksum: "83cb8d6817603f64d73dca2a0b01efa1")
!356 = !{!107}
!357 = !{!358, !19, !366, !391, !47, !393}
!358 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !359, size: 32)
!359 = !DIDerivedType(tag: DW_TAG_typedef, name: "SysTick_Type", file: !34, line: 700, baseType: !360)
!360 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !34, line: 694, size: 128, elements: !361)
!361 = !{!362, !363, !364, !365}
!362 = !DIDerivedType(tag: DW_TAG_member, name: "CTRL", scope: !360, file: !34, line: 696, baseType: !18, size: 32)
!363 = !DIDerivedType(tag: DW_TAG_member, name: "LOAD", scope: !360, file: !34, line: 697, baseType: !18, size: 32, offset: 32)
!364 = !DIDerivedType(tag: DW_TAG_member, name: "VAL", scope: !360, file: !34, line: 698, baseType: !18, size: 32, offset: 64)
!365 = !DIDerivedType(tag: DW_TAG_member, name: "CALIB", scope: !360, file: !34, line: 699, baseType: !38, size: 32, offset: 96)
!366 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !367, size: 32)
!367 = !DIDerivedType(tag: DW_TAG_typedef, name: "SCB_Type", file: !34, line: 397, baseType: !368)
!368 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !34, line: 374, size: 1120, elements: !369)
!369 = !{!370, !371, !372, !373, !374, !375, !376, !377, !378, !379, !380, !381, !382, !383, !384, !385, !386, !387, !388, !389, !390}
!370 = !DIDerivedType(tag: DW_TAG_member, name: "CPUID", scope: !368, file: !34, line: 376, baseType: !38, size: 32)
!371 = !DIDerivedType(tag: DW_TAG_member, name: "ICSR", scope: !368, file: !34, line: 377, baseType: !18, size: 32, offset: 32)
!372 = !DIDerivedType(tag: DW_TAG_member, name: "VTOR", scope: !368, file: !34, line: 378, baseType: !18, size: 32, offset: 64)
!373 = !DIDerivedType(tag: DW_TAG_member, name: "AIRCR", scope: !368, file: !34, line: 379, baseType: !18, size: 32, offset: 96)
!374 = !DIDerivedType(tag: DW_TAG_member, name: "SCR", scope: !368, file: !34, line: 380, baseType: !18, size: 32, offset: 128)
!375 = !DIDerivedType(tag: DW_TAG_member, name: "CCR", scope: !368, file: !34, line: 381, baseType: !18, size: 32, offset: 160)
!376 = !DIDerivedType(tag: DW_TAG_member, name: "SHP", scope: !368, file: !34, line: 382, baseType: !45, size: 96, offset: 192)
!377 = !DIDerivedType(tag: DW_TAG_member, name: "SHCSR", scope: !368, file: !34, line: 383, baseType: !18, size: 32, offset: 288)
!378 = !DIDerivedType(tag: DW_TAG_member, name: "CFSR", scope: !368, file: !34, line: 384, baseType: !18, size: 32, offset: 320)
!379 = !DIDerivedType(tag: DW_TAG_member, name: "HFSR", scope: !368, file: !34, line: 385, baseType: !18, size: 32, offset: 352)
!380 = !DIDerivedType(tag: DW_TAG_member, name: "DFSR", scope: !368, file: !34, line: 386, baseType: !18, size: 32, offset: 384)
!381 = !DIDerivedType(tag: DW_TAG_member, name: "MMFAR", scope: !368, file: !34, line: 387, baseType: !18, size: 32, offset: 416)
!382 = !DIDerivedType(tag: DW_TAG_member, name: "BFAR", scope: !368, file: !34, line: 388, baseType: !18, size: 32, offset: 448)
!383 = !DIDerivedType(tag: DW_TAG_member, name: "AFSR", scope: !368, file: !34, line: 389, baseType: !18, size: 32, offset: 480)
!384 = !DIDerivedType(tag: DW_TAG_member, name: "PFR", scope: !368, file: !34, line: 390, baseType: !60, size: 64, offset: 512)
!385 = !DIDerivedType(tag: DW_TAG_member, name: "DFR", scope: !368, file: !34, line: 391, baseType: !38, size: 32, offset: 576)
!386 = !DIDerivedType(tag: DW_TAG_member, name: "ADR", scope: !368, file: !34, line: 392, baseType: !38, size: 32, offset: 608)
!387 = !DIDerivedType(tag: DW_TAG_member, name: "MMFR", scope: !368, file: !34, line: 393, baseType: !66, size: 128, offset: 640)
!388 = !DIDerivedType(tag: DW_TAG_member, name: "ISAR", scope: !368, file: !34, line: 394, baseType: !70, size: 160, offset: 768)
!389 = !DIDerivedType(tag: DW_TAG_member, name: "RESERVED0", scope: !368, file: !34, line: 395, baseType: !74, size: 160, offset: 928)
!390 = !DIDerivedType(tag: DW_TAG_member, name: "CPACR", scope: !368, file: !34, line: 396, baseType: !18, size: 32, offset: 1088)
!391 = !DIDerivedType(tag: DW_TAG_typedef, name: "int32_t", file: !20, line: 44, baseType: !392)
!392 = !DIDerivedType(tag: DW_TAG_typedef, name: "__int32_t", file: !22, line: 77, baseType: !108)
!393 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !394, size: 32)
!394 = !DIDerivedType(tag: DW_TAG_typedef, name: "NVIC_Type", file: !34, line: 355, baseType: !395)
!395 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !34, line: 340, size: 28704, elements: !396)
!396 = !{!397, !399, !403, !404, !405, !406, !407, !408, !409, !410, !414, !418, !422}
!397 = !DIDerivedType(tag: DW_TAG_member, name: "ISER", scope: !395, file: !34, line: 342, baseType: !398, size: 256)
!398 = !DICompositeType(tag: DW_TAG_array_type, baseType: !18, size: 256, elements: !83)
!399 = !DIDerivedType(tag: DW_TAG_member, name: "RESERVED0", scope: !395, file: !34, line: 343, baseType: !400, size: 768, offset: 256)
!400 = !DICompositeType(tag: DW_TAG_array_type, baseType: !19, size: 768, elements: !401)
!401 = !{!402}
!402 = !DISubrange(count: 24)
!403 = !DIDerivedType(tag: DW_TAG_member, name: "ICER", scope: !395, file: !34, line: 344, baseType: !398, size: 256, offset: 1024)
!404 = !DIDerivedType(tag: DW_TAG_member, name: "RSERVED1", scope: !395, file: !34, line: 345, baseType: !400, size: 768, offset: 1280)
!405 = !DIDerivedType(tag: DW_TAG_member, name: "ISPR", scope: !395, file: !34, line: 346, baseType: !398, size: 256, offset: 2048)
!406 = !DIDerivedType(tag: DW_TAG_member, name: "RESERVED2", scope: !395, file: !34, line: 347, baseType: !400, size: 768, offset: 2304)
!407 = !DIDerivedType(tag: DW_TAG_member, name: "ICPR", scope: !395, file: !34, line: 348, baseType: !398, size: 256, offset: 3072)
!408 = !DIDerivedType(tag: DW_TAG_member, name: "RESERVED3", scope: !395, file: !34, line: 349, baseType: !400, size: 768, offset: 3328)
!409 = !DIDerivedType(tag: DW_TAG_member, name: "IABR", scope: !395, file: !34, line: 350, baseType: !398, size: 256, offset: 4096)
!410 = !DIDerivedType(tag: DW_TAG_member, name: "RESERVED4", scope: !395, file: !34, line: 351, baseType: !411, size: 1792, offset: 4352)
!411 = !DICompositeType(tag: DW_TAG_array_type, baseType: !19, size: 1792, elements: !412)
!412 = !{!413}
!413 = !DISubrange(count: 56)
!414 = !DIDerivedType(tag: DW_TAG_member, name: "IP", scope: !395, file: !34, line: 352, baseType: !415, size: 1920, offset: 6144)
!415 = !DICompositeType(tag: DW_TAG_array_type, baseType: !46, size: 1920, elements: !416)
!416 = !{!417}
!417 = !DISubrange(count: 240)
!418 = !DIDerivedType(tag: DW_TAG_member, name: "RESERVED5", scope: !395, file: !34, line: 353, baseType: !419, size: 20608, offset: 8064)
!419 = !DICompositeType(tag: DW_TAG_array_type, baseType: !19, size: 20608, elements: !420)
!420 = !{!421}
!421 = !DISubrange(count: 644)
!422 = !DIDerivedType(tag: DW_TAG_member, name: "STIR", scope: !395, file: !34, line: 354, baseType: !18, size: 32, offset: 28672)
!423 = !{!"Ubuntu clang version 14.0.6"}
!424 = !{i32 7, !"Dwarf Version", i32 5}
!425 = !{i32 2, !"Debug Info Version", i32 3}
!426 = !{i32 1, !"wchar_size", i32 4}
!427 = !{i32 1, !"min_enum_size", i32 4}
!428 = !{i32 1, !"branch-target-enforcement", i32 0}
!429 = !{i32 1, !"sign-return-address", i32 0}
!430 = !{i32 1, !"sign-return-address-all", i32 0}
!431 = !{i32 1, !"sign-return-address-with-bkey", i32 0}
!432 = !{i32 7, !"frame-pointer", i32 2}
!433 = distinct !DISubprogram(name: "main", scope: !212, file: !212, line: 12, type: !434, scopeLine: 13, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !211, retainedNodes: !439)
!434 = !DISubroutineType(types: !435)
!435 = !{!108, !108, !436}
!436 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !437, size: 32)
!437 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !438, size: 32)
!438 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_unsigned_char)
!439 = !{!440, !441, !442, !444}
!440 = !DILocalVariable(name: "argc", arg: 1, scope: !433, file: !212, line: 12, type: !108)
!441 = !DILocalVariable(name: "argv", arg: 2, scope: !433, file: !212, line: 12, type: !436)
!442 = !DILocalVariable(name: "tmpreg", scope: !443, file: !212, line: 20, type: !18)
!443 = distinct !DILexicalBlock(scope: !433, file: !212, line: 20, column: 5)
!444 = !DILocalVariable(name: "GPIO_InitStruct", scope: !433, file: !212, line: 26, type: !445)
!445 = !DIDerivedType(tag: DW_TAG_typedef, name: "GPIO_InitTypeDef", file: !221, line: 60, baseType: !446)
!446 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !221, line: 47, size: 128, flags: DIFlagTypePassByValue, elements: !447, identifier: "_ZTS16GPIO_InitTypeDef")
!447 = !{!448, !449, !450, !451}
!448 = !DIDerivedType(tag: DW_TAG_member, name: "Pin", scope: !446, file: !221, line: 49, baseType: !19, size: 32)
!449 = !DIDerivedType(tag: DW_TAG_member, name: "Mode", scope: !446, file: !221, line: 52, baseType: !19, size: 32, offset: 32)
!450 = !DIDerivedType(tag: DW_TAG_member, name: "Pull", scope: !446, file: !221, line: 55, baseType: !19, size: 32, offset: 64)
!451 = !DIDerivedType(tag: DW_TAG_member, name: "Speed", scope: !446, file: !221, line: 58, baseType: !19, size: 32, offset: 96)
!452 = !DILocation(line: 0, scope: !433)
!453 = !DILocation(line: 14, column: 5, scope: !433)
!454 = !DILocation(line: 17, column: 5, scope: !433)
!455 = !DILocation(line: 20, column: 5, scope: !443)
!456 = !{!457, !458, i64 24}
!457 = !{!"_ZTS11RCC_TypeDef", !458, i64 0, !458, i64 4, !458, i64 8, !458, i64 12, !458, i64 16, !458, i64 20, !458, i64 24, !458, i64 28, !458, i64 32, !458, i64 36}
!458 = !{!"int", !459, i64 0}
!459 = !{!"omnipotent char", !460, i64 0}
!460 = !{!"Simple C++ TBAA"}
!461 = !{!458, !458, i64 0}
!462 = !DILocation(line: 20, column: 5, scope: !433)
!463 = !DILocation(line: 23, column: 5, scope: !433)
!464 = !DILocation(line: 26, column: 5, scope: !433)
!465 = !DILocation(line: 26, column: 22, scope: !433)
!466 = !DILocation(line: 27, column: 21, scope: !433)
!467 = !DILocation(line: 27, column: 25, scope: !433)
!468 = !{!469, !458, i64 0}
!469 = !{!"_ZTS16GPIO_InitTypeDef", !458, i64 0, !458, i64 4, !458, i64 8, !458, i64 12}
!470 = !DILocation(line: 28, column: 21, scope: !433)
!471 = !DILocation(line: 28, column: 26, scope: !433)
!472 = !{!469, !458, i64 4}
!473 = !DILocation(line: 29, column: 21, scope: !433)
!474 = !DILocation(line: 29, column: 26, scope: !433)
!475 = !{!469, !458, i64 8}
!476 = !DILocation(line: 30, column: 21, scope: !433)
!477 = !DILocation(line: 30, column: 27, scope: !433)
!478 = !{!469, !458, i64 12}
!479 = !DILocation(line: 31, column: 5, scope: !433)
!480 = !DILocation(line: 33, column: 5, scope: !433)
!481 = !DILocation(line: 34, column: 9, scope: !482)
!482 = distinct !DILexicalBlock(scope: !433, file: !212, line: 33, column: 15)
!483 = !DILocation(line: 35, column: 9, scope: !482)
!484 = distinct !{!484, !480, !485, !486, !487}
!485 = !DILocation(line: 36, column: 5, scope: !433)
!486 = !{!"llvm.loop.mustprogress"}
!487 = !{!"llvm.loop.unroll.disable"}
!488 = distinct !DISubprogram(name: "SystemClock_Config", linkageName: "_ZL18SystemClock_Configv", scope: !212, file: !212, line: 39, type: !489, scopeLine: 40, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !211, retainedNodes: !491)
!489 = !DISubroutineType(types: !490)
!490 = !{null}
!491 = !{!492, !512}
!492 = !DILocalVariable(name: "RCC_OscInitStruct", scope: !488, file: !212, line: 41, type: !493)
!493 = !DIDerivedType(tag: DW_TAG_typedef, name: "RCC_OscInitTypeDef", file: !494, line: 261, baseType: !495)
!494 = !DIFile(filename: "../dep/STM32Cube_FW_F1_V1.8.0/Drivers/STM32F1xx_HAL_Driver/Inc/stm32f1xx_hal_rcc_ex.h", directory: "/home/mjshen/RTOSExploration/Cicada-FW/build", checksumkind: CSK_MD5, checksum: "49bf7e29630a7d603739687645591a41")
!495 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !494, line: 228, size: 320, flags: DIFlagTypePassByValue, elements: !496, identifier: "_ZTS18RCC_OscInitTypeDef")
!496 = !{!497, !498, !499, !500, !501, !502, !503, !504}
!497 = !DIDerivedType(tag: DW_TAG_member, name: "OscillatorType", scope: !495, file: !494, line: 230, baseType: !19, size: 32)
!498 = !DIDerivedType(tag: DW_TAG_member, name: "HSEState", scope: !495, file: !494, line: 238, baseType: !19, size: 32, offset: 32)
!499 = !DIDerivedType(tag: DW_TAG_member, name: "HSEPredivValue", scope: !495, file: !494, line: 241, baseType: !19, size: 32, offset: 64)
!500 = !DIDerivedType(tag: DW_TAG_member, name: "LSEState", scope: !495, file: !494, line: 244, baseType: !19, size: 32, offset: 96)
!501 = !DIDerivedType(tag: DW_TAG_member, name: "HSIState", scope: !495, file: !494, line: 247, baseType: !19, size: 32, offset: 128)
!502 = !DIDerivedType(tag: DW_TAG_member, name: "HSICalibrationValue", scope: !495, file: !494, line: 250, baseType: !19, size: 32, offset: 160)
!503 = !DIDerivedType(tag: DW_TAG_member, name: "LSIState", scope: !495, file: !494, line: 253, baseType: !19, size: 32, offset: 192)
!504 = !DIDerivedType(tag: DW_TAG_member, name: "PLL", scope: !495, file: !494, line: 256, baseType: !505, size: 96, offset: 224)
!505 = !DIDerivedType(tag: DW_TAG_typedef, name: "RCC_PLLInitTypeDef", file: !506, line: 59, baseType: !507)
!506 = !DIFile(filename: "../dep/STM32Cube_FW_F1_V1.8.0/Drivers/STM32F1xx_HAL_Driver/Inc/stm32f1xx_hal_rcc.h", directory: "/home/mjshen/RTOSExploration/Cicada-FW/build", checksumkind: CSK_MD5, checksum: "3e0cb02f236e8f5a4c479e8d7b418957")
!507 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !506, line: 49, size: 96, flags: DIFlagTypePassByValue, elements: !508, identifier: "_ZTS18RCC_PLLInitTypeDef")
!508 = !{!509, !510, !511}
!509 = !DIDerivedType(tag: DW_TAG_member, name: "PLLState", scope: !507, file: !506, line: 51, baseType: !19, size: 32)
!510 = !DIDerivedType(tag: DW_TAG_member, name: "PLLSource", scope: !507, file: !506, line: 54, baseType: !19, size: 32, offset: 32)
!511 = !DIDerivedType(tag: DW_TAG_member, name: "PLLMUL", scope: !507, file: !506, line: 57, baseType: !19, size: 32, offset: 64)
!512 = !DILocalVariable(name: "RCC_ClkInitStruct", scope: !488, file: !212, line: 42, type: !513)
!513 = !DIDerivedType(tag: DW_TAG_typedef, name: "RCC_ClkInitTypeDef", file: !506, line: 80, baseType: !514)
!514 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !506, line: 64, size: 160, flags: DIFlagTypePassByValue, elements: !515, identifier: "_ZTS18RCC_ClkInitTypeDef")
!515 = !{!516, !517, !518, !519, !520}
!516 = !DIDerivedType(tag: DW_TAG_member, name: "ClockType", scope: !514, file: !506, line: 66, baseType: !19, size: 32)
!517 = !DIDerivedType(tag: DW_TAG_member, name: "SYSCLKSource", scope: !514, file: !506, line: 69, baseType: !19, size: 32, offset: 32)
!518 = !DIDerivedType(tag: DW_TAG_member, name: "AHBCLKDivider", scope: !514, file: !506, line: 72, baseType: !19, size: 32, offset: 64)
!519 = !DIDerivedType(tag: DW_TAG_member, name: "APB1CLKDivider", scope: !514, file: !506, line: 75, baseType: !19, size: 32, offset: 96)
!520 = !DIDerivedType(tag: DW_TAG_member, name: "APB2CLKDivider", scope: !514, file: !506, line: 78, baseType: !19, size: 32, offset: 128)
!521 = !DILocation(line: 41, column: 5, scope: !488)
!522 = !DILocation(line: 41, column: 24, scope: !488)
!523 = !DILocation(line: 42, column: 5, scope: !488)
!524 = !DILocation(line: 42, column: 24, scope: !488)
!525 = !DILocation(line: 46, column: 23, scope: !488)
!526 = !DILocation(line: 46, column: 38, scope: !488)
!527 = !{!528, !458, i64 0}
!528 = !{!"_ZTS18RCC_OscInitTypeDef", !458, i64 0, !458, i64 4, !458, i64 8, !458, i64 12, !458, i64 16, !458, i64 20, !458, i64 24, !529, i64 28}
!529 = !{!"_ZTS18RCC_PLLInitTypeDef", !458, i64 0, !458, i64 4, !458, i64 8}
!530 = !DILocation(line: 47, column: 23, scope: !488)
!531 = !DILocation(line: 47, column: 32, scope: !488)
!532 = !{!528, !458, i64 16}
!533 = !DILocation(line: 48, column: 23, scope: !488)
!534 = !DILocation(line: 48, column: 43, scope: !488)
!535 = !{!528, !458, i64 20}
!536 = !DILocation(line: 49, column: 27, scope: !488)
!537 = !DILocation(line: 49, column: 36, scope: !488)
!538 = !{!528, !458, i64 28}
!539 = !DILocation(line: 50, column: 27, scope: !488)
!540 = !DILocation(line: 50, column: 37, scope: !488)
!541 = !{!528, !458, i64 32}
!542 = !DILocation(line: 51, column: 27, scope: !488)
!543 = !DILocation(line: 51, column: 34, scope: !488)
!544 = !{!528, !458, i64 36}
!545 = !DILocation(line: 52, column: 5, scope: !488)
!546 = !DILocation(line: 56, column: 23, scope: !488)
!547 = !DILocation(line: 57, column: 9, scope: !488)
!548 = !{!549, !458, i64 0}
!549 = !{!"_ZTS18RCC_ClkInitTypeDef", !458, i64 0, !458, i64 4, !458, i64 8, !458, i64 12, !458, i64 16}
!550 = !DILocation(line: 58, column: 23, scope: !488)
!551 = !DILocation(line: 58, column: 36, scope: !488)
!552 = !{!549, !458, i64 4}
!553 = !DILocation(line: 59, column: 23, scope: !488)
!554 = !DILocation(line: 59, column: 37, scope: !488)
!555 = !{!549, !458, i64 8}
!556 = !DILocation(line: 60, column: 23, scope: !488)
!557 = !DILocation(line: 60, column: 38, scope: !488)
!558 = !{!549, !458, i64 12}
!559 = !DILocation(line: 61, column: 23, scope: !488)
!560 = !DILocation(line: 61, column: 38, scope: !488)
!561 = !{!549, !458, i64 16}
!562 = !DILocation(line: 63, column: 5, scope: !488)
!563 = !DILocation(line: 64, column: 1, scope: !488)
!564 = distinct !DISubprogram(name: "SysTick_Handler", scope: !212, file: !212, line: 68, type: !489, scopeLine: 69, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !211, retainedNodes: !565)
!565 = !{}
!566 = !DILocation(line: 70, column: 5, scope: !564)
!567 = !DILocation(line: 71, column: 1, scope: !564)
!568 = distinct !DISubprogram(name: "SystemInit", scope: !3, file: !3, line: 157, type: !489, scopeLine: 158, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !565)
!569 = !DILocation(line: 161, column: 11, scope: !568)
!570 = !{!571, !572, i64 0}
!571 = !{!"", !572, i64 0, !572, i64 4, !572, i64 8, !572, i64 12, !572, i64 16, !572, i64 20, !572, i64 24, !572, i64 28, !572, i64 32, !572, i64 36}
!572 = !{!"int", !573, i64 0}
!573 = !{!"omnipotent char", !574, i64 0}
!574 = !{!"Simple C/C++ TBAA"}
!575 = !DILocation(line: 165, column: 13, scope: !568)
!576 = !{!571, !572, i64 4}
!577 = !DILocation(line: 171, column: 11, scope: !568)
!578 = !DILocation(line: 174, column: 11, scope: !568)
!579 = !DILocation(line: 177, column: 13, scope: !568)
!580 = !DILocation(line: 196, column: 12, scope: !568)
!581 = !{!571, !572, i64 8}
!582 = !DILocation(line: 208, column: 13, scope: !568)
!583 = !{!584, !572, i64 8}
!584 = !{!"", !572, i64 0, !572, i64 4, !572, i64 8, !572, i64 12, !572, i64 16, !572, i64 20, !573, i64 24, !572, i64 36, !572, i64 40, !572, i64 44, !572, i64 48, !572, i64 52, !572, i64 56, !572, i64 60, !573, i64 64, !572, i64 72, !572, i64 76, !573, i64 80, !573, i64 96, !573, i64 116, !572, i64 136}
!585 = !DILocation(line: 210, column: 1, scope: !568)
!586 = distinct !DISubprogram(name: "SystemCoreClockUpdate", scope: !3, file: !3, line: 247, type: !489, scopeLine: 248, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !587)
!587 = !{!588, !589, !590}
!588 = !DILocalVariable(name: "tmp", scope: !586, file: !3, line: 249, type: !19)
!589 = !DILocalVariable(name: "pllmull", scope: !586, file: !3, line: 249, type: !19)
!590 = !DILocalVariable(name: "pllsource", scope: !586, file: !3, line: 249, type: !19)
!591 = !DILocation(line: 0, scope: !586)
!592 = !DILocation(line: 260, column: 14, scope: !586)
!593 = !DILocation(line: 260, column: 19, scope: !586)
!594 = !DILocation(line: 262, column: 3, scope: !586)
!595 = !DILocation(line: 273, column: 22, scope: !596)
!596 = distinct !DILexicalBlock(scope: !586, file: !3, line: 263, column: 3)
!597 = !DILocation(line: 274, column: 24, scope: !596)
!598 = !DILocation(line: 274, column: 29, scope: !596)
!599 = !DILocation(line: 277, column: 27, scope: !596)
!600 = !DILocation(line: 277, column: 35, scope: !596)
!601 = !DILocation(line: 279, column: 21, scope: !602)
!602 = distinct !DILexicalBlock(scope: !596, file: !3, line: 279, column: 11)
!603 = !DILocation(line: 279, column: 11, scope: !596)
!604 = !DILocation(line: 282, column: 45, scope: !605)
!605 = distinct !DILexicalBlock(scope: !602, file: !3, line: 280, column: 7)
!606 = !DILocation(line: 283, column: 7, scope: !605)
!607 = !DILocation(line: 292, column: 19, scope: !608)
!608 = distinct !DILexicalBlock(scope: !609, file: !3, line: 292, column: 13)
!609 = distinct !DILexicalBlock(scope: !602, file: !3, line: 285, column: 7)
!610 = !DILocation(line: 292, column: 24, scope: !608)
!611 = !DILocation(line: 292, column: 45, scope: !608)
!612 = !DILocation(line: 292, column: 13, scope: !609)
!613 = !DILocation(line: 294, column: 47, scope: !614)
!614 = distinct !DILexicalBlock(scope: !608, file: !3, line: 293, column: 9)
!615 = !DILocation(line: 295, column: 9, scope: !614)
!616 = !DILocation(line: 298, column: 39, scope: !617)
!617 = distinct !DILexicalBlock(scope: !608, file: !3, line: 297, column: 9)
!618 = !DILocation(line: 0, scope: !596)
!619 = !{!572, !572, i64 0}
!620 = !DILocation(line: 350, column: 30, scope: !586)
!621 = !DILocation(line: 350, column: 52, scope: !586)
!622 = !DILocation(line: 350, column: 9, scope: !586)
!623 = !{!573, !573, i64 0}
!624 = !DILocation(line: 352, column: 19, scope: !586)
!625 = !DILocation(line: 353, column: 1, scope: !586)
!626 = distinct !DISubprogram(name: "HAL_GPIO_Init", scope: !247, file: !247, line: 178, type: !627, scopeLine: 179, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !246, retainedNodes: !637)
!627 = !DISubroutineType(types: !628)
!628 = !{null, !278, !629}
!629 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !630, size: 32)
!630 = !DIDerivedType(tag: DW_TAG_typedef, name: "GPIO_InitTypeDef", file: !221, line: 60, baseType: !631)
!631 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !221, line: 47, size: 128, elements: !632)
!632 = !{!633, !634, !635, !636}
!633 = !DIDerivedType(tag: DW_TAG_member, name: "Pin", scope: !631, file: !221, line: 49, baseType: !19, size: 32)
!634 = !DIDerivedType(tag: DW_TAG_member, name: "Mode", scope: !631, file: !221, line: 52, baseType: !19, size: 32, offset: 32)
!635 = !DIDerivedType(tag: DW_TAG_member, name: "Pull", scope: !631, file: !221, line: 55, baseType: !19, size: 32, offset: 64)
!636 = !DIDerivedType(tag: DW_TAG_member, name: "Speed", scope: !631, file: !221, line: 58, baseType: !19, size: 32, offset: 96)
!637 = !{!638, !639, !640, !641, !642, !643, !644, !645, !646, !647}
!638 = !DILocalVariable(name: "GPIOx", arg: 1, scope: !626, file: !247, line: 178, type: !278)
!639 = !DILocalVariable(name: "GPIO_Init", arg: 2, scope: !626, file: !247, line: 178, type: !629)
!640 = !DILocalVariable(name: "position", scope: !626, file: !247, line: 180, type: !19)
!641 = !DILocalVariable(name: "ioposition", scope: !626, file: !247, line: 181, type: !19)
!642 = !DILocalVariable(name: "iocurrent", scope: !626, file: !247, line: 182, type: !19)
!643 = !DILocalVariable(name: "temp", scope: !626, file: !247, line: 183, type: !19)
!644 = !DILocalVariable(name: "config", scope: !626, file: !247, line: 184, type: !19)
!645 = !DILocalVariable(name: "configregister", scope: !626, file: !247, line: 185, type: !322)
!646 = !DILocalVariable(name: "registeroffset", scope: !626, file: !247, line: 186, type: !19)
!647 = !DILocalVariable(name: "tmpreg", scope: !648, file: !247, line: 291, type: !18)
!648 = distinct !DILexicalBlock(scope: !649, file: !247, line: 291, column: 9)
!649 = distinct !DILexicalBlock(scope: !650, file: !247, line: 289, column: 7)
!650 = distinct !DILexicalBlock(scope: !651, file: !247, line: 288, column: 11)
!651 = distinct !DILexicalBlock(scope: !652, file: !247, line: 203, column: 5)
!652 = distinct !DILexicalBlock(scope: !653, file: !247, line: 202, column: 9)
!653 = distinct !DILexicalBlock(scope: !626, file: !247, line: 195, column: 3)
!654 = !DILocation(line: 0, scope: !626)
!655 = !DILocation(line: 194, column: 23, scope: !626)
!656 = !{!657, !572, i64 0}
!657 = !{!"", !572, i64 0, !572, i64 4, !572, i64 8, !572, i64 12}
!658 = !DILocation(line: 194, column: 41, scope: !626)
!659 = !DILocation(line: 194, column: 3, scope: !626)
!660 = !DILocation(line: 197, column: 26, scope: !653)
!661 = !DILocation(line: 200, column: 44, scope: !653)
!662 = !DILocation(line: 202, column: 19, scope: !652)
!663 = !DILocation(line: 202, column: 9, scope: !653)
!664 = !DILocation(line: 208, column: 26, scope: !651)
!665 = !{!657, !572, i64 4}
!666 = !DILocation(line: 208, column: 7, scope: !651)
!667 = !DILocation(line: 214, column: 31, scope: !668)
!668 = distinct !DILexicalBlock(scope: !651, file: !247, line: 209, column: 7)
!669 = !{!657, !572, i64 12}
!670 = !DILocation(line: 215, column: 11, scope: !668)
!671 = !DILocation(line: 221, column: 31, scope: !668)
!672 = !DILocation(line: 221, column: 37, scope: !668)
!673 = !DILocation(line: 222, column: 11, scope: !668)
!674 = !DILocation(line: 228, column: 31, scope: !668)
!675 = !DILocation(line: 228, column: 37, scope: !668)
!676 = !DILocation(line: 229, column: 11, scope: !668)
!677 = !DILocation(line: 235, column: 31, scope: !668)
!678 = !DILocation(line: 235, column: 37, scope: !668)
!679 = !DILocation(line: 236, column: 11, scope: !668)
!680 = !DILocation(line: 248, column: 26, scope: !681)
!681 = distinct !DILexicalBlock(scope: !668, file: !247, line: 248, column: 15)
!682 = !{!657, !572, i64 8}
!683 = !DILocation(line: 248, column: 15, scope: !668)
!684 = !DILocation(line: 257, column: 25, scope: !685)
!685 = distinct !DILexicalBlock(scope: !686, file: !247, line: 253, column: 11)
!686 = distinct !DILexicalBlock(scope: !681, file: !247, line: 252, column: 20)
!687 = !{!688, !572, i64 16}
!688 = !{!"", !572, i64 0, !572, i64 4, !572, i64 8, !572, i64 12, !572, i64 16, !572, i64 20, !572, i64 24}
!689 = !DILocation(line: 258, column: 11, scope: !685)
!690 = !DILocation(line: 264, column: 24, scope: !691)
!691 = distinct !DILexicalBlock(scope: !686, file: !247, line: 260, column: 11)
!692 = !{!688, !572, i64 20}
!693 = !DILocation(line: 271, column: 11, scope: !668)
!694 = !DILocation(line: 280, column: 35, scope: !651)
!695 = !DILocation(line: 280, column: 24, scope: !651)
!696 = !DILocation(line: 281, column: 24, scope: !651)
!697 = !DILocation(line: 284, column: 7, scope: !651)
!698 = !DILocation(line: 288, column: 23, scope: !650)
!699 = !DILocation(line: 288, column: 28, scope: !650)
!700 = !DILocation(line: 288, column: 41, scope: !650)
!701 = !DILocation(line: 288, column: 11, scope: !651)
!702 = !DILocation(line: 291, column: 9, scope: !648)
!703 = !{!571, !572, i64 24}
!704 = !DILocation(line: 291, column: 9, scope: !649)
!705 = !DILocation(line: 292, column: 38, scope: !649)
!706 = !DILocation(line: 292, column: 16, scope: !649)
!707 = !DILocation(line: 293, column: 9, scope: !649)
!708 = !DILocation(line: 294, column: 9, scope: !649)
!709 = !DILocation(line: 295, column: 38, scope: !649)
!710 = !DILocation(line: 299, column: 25, scope: !711)
!711 = distinct !DILexicalBlock(scope: !649, file: !247, line: 299, column: 13)
!712 = !DILocation(line: 299, column: 30, scope: !711)
!713 = !DILocation(line: 299, column: 46, scope: !711)
!714 = !DILocation(line: 299, column: 13, scope: !649)
!715 = !DILocation(line: 301, column: 11, scope: !716)
!716 = distinct !DILexicalBlock(scope: !711, file: !247, line: 300, column: 9)
!717 = !{!718, !572, i64 0}
!718 = !{!"", !572, i64 0, !572, i64 4, !572, i64 8, !572, i64 12, !572, i64 16, !572, i64 20}
!719 = !DILocation(line: 302, column: 9, scope: !716)
!720 = !DILocation(line: 305, column: 11, scope: !721)
!721 = distinct !DILexicalBlock(scope: !711, file: !247, line: 304, column: 9)
!722 = !DILocation(line: 0, scope: !711)
!723 = !DILocation(line: 309, column: 30, scope: !724)
!724 = distinct !DILexicalBlock(scope: !649, file: !247, line: 309, column: 13)
!725 = !DILocation(line: 309, column: 47, scope: !724)
!726 = !DILocation(line: 309, column: 13, scope: !649)
!727 = !DILocation(line: 311, column: 11, scope: !728)
!728 = distinct !DILexicalBlock(scope: !724, file: !247, line: 310, column: 9)
!729 = !{!718, !572, i64 4}
!730 = !DILocation(line: 312, column: 9, scope: !728)
!731 = !DILocation(line: 315, column: 11, scope: !732)
!732 = distinct !DILexicalBlock(scope: !724, file: !247, line: 314, column: 9)
!733 = !DILocation(line: 0, scope: !724)
!734 = !DILocation(line: 319, column: 30, scope: !735)
!735 = distinct !DILexicalBlock(scope: !649, file: !247, line: 319, column: 13)
!736 = !DILocation(line: 319, column: 45, scope: !735)
!737 = !DILocation(line: 319, column: 13, scope: !649)
!738 = !DILocation(line: 321, column: 11, scope: !739)
!739 = distinct !DILexicalBlock(scope: !735, file: !247, line: 320, column: 9)
!740 = !{!718, !572, i64 8}
!741 = !DILocation(line: 322, column: 9, scope: !739)
!742 = !DILocation(line: 325, column: 11, scope: !743)
!743 = distinct !DILexicalBlock(scope: !735, file: !247, line: 324, column: 9)
!744 = !DILocation(line: 0, scope: !735)
!745 = !DILocation(line: 329, column: 30, scope: !746)
!746 = distinct !DILexicalBlock(scope: !649, file: !247, line: 329, column: 13)
!747 = !DILocation(line: 329, column: 46, scope: !746)
!748 = !DILocation(line: 329, column: 13, scope: !649)
!749 = !DILocation(line: 331, column: 11, scope: !750)
!750 = distinct !DILexicalBlock(scope: !746, file: !247, line: 330, column: 9)
!751 = !{!718, !572, i64 12}
!752 = !DILocation(line: 332, column: 9, scope: !750)
!753 = !DILocation(line: 335, column: 11, scope: !754)
!754 = distinct !DILexicalBlock(scope: !746, file: !247, line: 334, column: 9)
!755 = !DILocation(line: 0, scope: !746)
!756 = !DILocation(line: 340, column: 10, scope: !653)
!757 = !DILocation(line: 184, column: 12, scope: !626)
!758 = !DILocation(line: 194, column: 28, scope: !626)
!759 = distinct !{!759, !659, !760, !486, !487}
!760 = !DILocation(line: 341, column: 3, scope: !626)
!761 = !DILocation(line: 342, column: 1, scope: !626)
!762 = distinct !DISubprogram(name: "HAL_GPIO_DeInit", scope: !247, file: !247, line: 351, type: !763, scopeLine: 352, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !246, retainedNodes: !765)
!763 = !DISubroutineType(types: !764)
!764 = !{null, !278, !19}
!765 = !{!766, !767, !768, !769, !770, !771, !772}
!766 = !DILocalVariable(name: "GPIOx", arg: 1, scope: !762, file: !247, line: 351, type: !278)
!767 = !DILocalVariable(name: "GPIO_Pin", arg: 2, scope: !762, file: !247, line: 351, type: !19)
!768 = !DILocalVariable(name: "position", scope: !762, file: !247, line: 353, type: !19)
!769 = !DILocalVariable(name: "iocurrent", scope: !762, file: !247, line: 354, type: !19)
!770 = !DILocalVariable(name: "tmp", scope: !762, file: !247, line: 355, type: !19)
!771 = !DILocalVariable(name: "configregister", scope: !762, file: !247, line: 356, type: !322)
!772 = !DILocalVariable(name: "registeroffset", scope: !762, file: !247, line: 357, type: !19)
!773 = !DILocation(line: 0, scope: !762)
!774 = !DILocation(line: 364, column: 33, scope: !762)
!775 = !DILocation(line: 364, column: 3, scope: !762)
!776 = !DILocation(line: 367, column: 35, scope: !777)
!777 = distinct !DILexicalBlock(scope: !762, file: !247, line: 365, column: 3)
!778 = !DILocation(line: 367, column: 28, scope: !777)
!779 = !DILocation(line: 369, column: 9, scope: !780)
!780 = distinct !DILexicalBlock(scope: !777, file: !247, line: 369, column: 9)
!781 = !DILocation(line: 369, column: 9, scope: !777)
!782 = !DILocation(line: 374, column: 35, scope: !783)
!783 = distinct !DILexicalBlock(scope: !780, file: !247, line: 370, column: 5)
!784 = !DILocation(line: 374, column: 13, scope: !783)
!785 = !DILocation(line: 375, column: 28, scope: !783)
!786 = !DILocation(line: 375, column: 21, scope: !783)
!787 = !DILocation(line: 375, column: 11, scope: !783)
!788 = !DILocation(line: 376, column: 19, scope: !789)
!789 = distinct !DILexicalBlock(scope: !783, file: !247, line: 376, column: 11)
!790 = !DILocation(line: 376, column: 41, scope: !789)
!791 = !DILocation(line: 376, column: 15, scope: !789)
!792 = !DILocation(line: 376, column: 11, scope: !783)
!793 = !DILocation(line: 379, column: 9, scope: !794)
!794 = distinct !DILexicalBlock(scope: !789, file: !247, line: 377, column: 7)
!795 = !DILocation(line: 382, column: 9, scope: !794)
!796 = !DILocation(line: 383, column: 9, scope: !794)
!797 = !DILocation(line: 386, column: 9, scope: !794)
!798 = !DILocation(line: 387, column: 9, scope: !794)
!799 = !DILocation(line: 388, column: 7, scope: !794)
!800 = !DILocation(line: 392, column: 35, scope: !783)
!801 = !DILocation(line: 392, column: 24, scope: !783)
!802 = !DILocation(line: 393, column: 24, scope: !783)
!803 = !DILocation(line: 396, column: 7, scope: !783)
!804 = !DILocation(line: 399, column: 7, scope: !783)
!805 = !{!688, !572, i64 12}
!806 = !DILocation(line: 400, column: 5, scope: !783)
!807 = !DILocation(line: 402, column: 13, scope: !777)
!808 = !DILocation(line: 364, column: 20, scope: !762)
!809 = distinct !{!809, !775, !810, !486, !487}
!810 = !DILocation(line: 403, column: 3, scope: !762)
!811 = !DILocation(line: 404, column: 1, scope: !762)
!812 = distinct !DISubprogram(name: "HAL_GPIO_ReadPin", scope: !247, file: !247, line: 431, type: !813, scopeLine: 432, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !246, retainedNodes: !816)
!813 = !DISubroutineType(types: !814)
!814 = !{!815, !278, !243}
!815 = !DIDerivedType(tag: DW_TAG_typedef, name: "GPIO_PinState", file: !221, line: 69, baseType: !249)
!816 = !{!817, !818, !819}
!817 = !DILocalVariable(name: "GPIOx", arg: 1, scope: !812, file: !247, line: 431, type: !278)
!818 = !DILocalVariable(name: "GPIO_Pin", arg: 2, scope: !812, file: !247, line: 431, type: !243)
!819 = !DILocalVariable(name: "bitstatus", scope: !812, file: !247, line: 433, type: !815)
!820 = !DILocation(line: 0, scope: !812)
!821 = !DILocation(line: 438, column: 15, scope: !822)
!822 = distinct !DILexicalBlock(scope: !812, file: !247, line: 438, column: 7)
!823 = !{!688, !572, i64 8}
!824 = !DILocation(line: 438, column: 21, scope: !822)
!825 = !DILocation(line: 438, column: 19, scope: !822)
!826 = !DILocation(line: 438, column: 31, scope: !822)
!827 = !DILocation(line: 446, column: 3, scope: !812)
!828 = distinct !DISubprogram(name: "HAL_GPIO_WritePin", scope: !247, file: !247, line: 465, type: !829, scopeLine: 466, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !246, retainedNodes: !831)
!829 = !DISubroutineType(types: !830)
!830 = !{null, !278, !243, !815}
!831 = !{!832, !833, !834}
!832 = !DILocalVariable(name: "GPIOx", arg: 1, scope: !828, file: !247, line: 465, type: !278)
!833 = !DILocalVariable(name: "GPIO_Pin", arg: 2, scope: !828, file: !247, line: 465, type: !243)
!834 = !DILocalVariable(name: "PinState", arg: 3, scope: !828, file: !247, line: 465, type: !815)
!835 = !DILocation(line: 0, scope: !828)
!836 = !DILocation(line: 471, column: 16, scope: !837)
!837 = distinct !DILexicalBlock(scope: !828, file: !247, line: 471, column: 7)
!838 = !DILocation(line: 0, scope: !837)
!839 = !DILocation(line: 471, column: 7, scope: !828)
!840 = !DILocation(line: 479, column: 1, scope: !828)
!841 = distinct !DISubprogram(name: "HAL_GPIO_TogglePin", scope: !247, file: !247, line: 487, type: !842, scopeLine: 488, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !246, retainedNodes: !844)
!842 = !DISubroutineType(types: !843)
!843 = !{null, !278, !243}
!844 = !{!845, !846}
!845 = !DILocalVariable(name: "GPIOx", arg: 1, scope: !841, file: !247, line: 487, type: !278)
!846 = !DILocalVariable(name: "GPIO_Pin", arg: 2, scope: !841, file: !247, line: 487, type: !243)
!847 = !DILocation(line: 0, scope: !841)
!848 = !DILocation(line: 492, column: 15, scope: !849)
!849 = distinct !DILexicalBlock(scope: !841, file: !247, line: 492, column: 7)
!850 = !DILocation(line: 492, column: 21, scope: !849)
!851 = !DILocation(line: 492, column: 19, scope: !849)
!852 = !DILocation(line: 492, column: 31, scope: !849)
!853 = !DILocation(line: 492, column: 7, scope: !841)
!854 = !DILocation(line: 0, scope: !849)
!855 = !DILocation(line: 500, column: 1, scope: !841)
!856 = distinct !DISubprogram(name: "HAL_GPIO_LockPin", scope: !247, file: !247, line: 512, type: !857, scopeLine: 513, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !246, retainedNodes: !860)
!857 = !DISubroutineType(types: !858)
!858 = !{!859, !278, !243}
!859 = !DIDerivedType(tag: DW_TAG_typedef, name: "HAL_StatusTypeDef", file: !101, line: 47, baseType: !100)
!860 = !{!861, !862, !863}
!861 = !DILocalVariable(name: "GPIOx", arg: 1, scope: !856, file: !247, line: 512, type: !278)
!862 = !DILocalVariable(name: "GPIO_Pin", arg: 2, scope: !856, file: !247, line: 512, type: !243)
!863 = !DILocalVariable(name: "tmp", scope: !856, file: !247, line: 514, type: !18)
!864 = !DILocation(line: 0, scope: !856)
!865 = !DILocation(line: 514, column: 3, scope: !856)
!866 = !DILocation(line: 514, column: 17, scope: !856)
!867 = !DILocation(line: 521, column: 3, scope: !856)
!868 = !DILocation(line: 523, column: 17, scope: !856)
!869 = !DILocation(line: 523, column: 10, scope: !856)
!870 = !DILocation(line: 523, column: 15, scope: !856)
!871 = !{!688, !572, i64 24}
!872 = !DILocation(line: 525, column: 15, scope: !856)
!873 = !DILocation(line: 527, column: 17, scope: !856)
!874 = !DILocation(line: 527, column: 15, scope: !856)
!875 = !DILocation(line: 529, column: 16, scope: !856)
!876 = !DILocation(line: 529, column: 7, scope: !856)
!877 = !DILocation(line: 532, column: 25, scope: !878)
!878 = distinct !DILexicalBlock(scope: !856, file: !247, line: 532, column: 7)
!879 = !DILocation(line: 0, scope: !878)
!880 = !DILocation(line: 540, column: 1, scope: !856)
!881 = distinct !DISubprogram(name: "HAL_GPIO_EXTI_IRQHandler", scope: !247, file: !247, line: 547, type: !882, scopeLine: 548, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !246, retainedNodes: !884)
!882 = !DISubroutineType(types: !883)
!883 = !{null, !243}
!884 = !{!885}
!885 = !DILocalVariable(name: "GPIO_Pin", arg: 1, scope: !881, file: !247, line: 547, type: !243)
!886 = !DILocation(line: 0, scope: !881)
!887 = !DILocation(line: 550, column: 7, scope: !888)
!888 = distinct !DILexicalBlock(scope: !881, file: !247, line: 550, column: 7)
!889 = !{!718, !572, i64 20}
!890 = !DILocation(line: 550, column: 40, scope: !888)
!891 = !DILocation(line: 550, column: 7, scope: !881)
!892 = !DILocation(line: 552, column: 5, scope: !893)
!893 = distinct !DILexicalBlock(scope: !888, file: !247, line: 551, column: 3)
!894 = !DILocation(line: 553, column: 5, scope: !893)
!895 = !DILocation(line: 554, column: 3, scope: !893)
!896 = !DILocation(line: 555, column: 1, scope: !881)
!897 = distinct !DISubprogram(name: "HAL_GPIO_EXTI_Callback", scope: !247, file: !247, line: 562, type: !882, scopeLine: 563, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !246, retainedNodes: !898)
!898 = !{!899}
!899 = !DILocalVariable(name: "GPIO_Pin", arg: 1, scope: !897, file: !247, line: 562, type: !243)
!900 = !DILocation(line: 0, scope: !897)
!901 = !DILocation(line: 569, column: 1, scope: !897)
!902 = distinct !DISubprogram(name: "HAL_RCC_DeInit", scope: !300, file: !300, line: 202, type: !903, scopeLine: 203, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !299, retainedNodes: !905)
!903 = !DISubroutineType(types: !904)
!904 = !{!859}
!905 = !{!906}
!906 = !DILocalVariable(name: "tickstart", scope: !902, file: !300, line: 204, type: !19)
!907 = !DILocation(line: 207, column: 15, scope: !902)
!908 = !DILocation(line: 0, scope: !902)
!909 = !DILocation(line: 210, column: 3, scope: !902)
!910 = !DILocation(line: 213, column: 3, scope: !902)
!911 = !DILocation(line: 213, column: 10, scope: !902)
!912 = !DILocation(line: 213, column: 43, scope: !902)
!913 = !DILocation(line: 215, column: 10, scope: !914)
!914 = distinct !DILexicalBlock(scope: !915, file: !300, line: 215, column: 9)
!915 = distinct !DILexicalBlock(scope: !902, file: !300, line: 214, column: 3)
!916 = !DILocation(line: 215, column: 24, scope: !914)
!917 = !DILocation(line: 215, column: 37, scope: !914)
!918 = !DILocation(line: 215, column: 9, scope: !915)
!919 = distinct !{!919, !910, !920, !486, !487}
!920 = !DILocation(line: 219, column: 3, scope: !902)
!921 = !DILocation(line: 222, column: 3, scope: !902)
!922 = !DILocation(line: 225, column: 15, scope: !902)
!923 = !DILocation(line: 228, column: 3, scope: !902)
!924 = !DILocation(line: 231, column: 3, scope: !902)
!925 = !DILocation(line: 231, column: 10, scope: !902)
!926 = !DILocation(line: 231, column: 44, scope: !902)
!927 = !DILocation(line: 233, column: 10, scope: !928)
!928 = distinct !DILexicalBlock(scope: !929, file: !300, line: 233, column: 9)
!929 = distinct !DILexicalBlock(scope: !902, file: !300, line: 232, column: 3)
!930 = !DILocation(line: 233, column: 24, scope: !928)
!931 = !DILocation(line: 233, column: 37, scope: !928)
!932 = !DILocation(line: 233, column: 9, scope: !929)
!933 = distinct !{!933, !924, !934, !486, !487}
!934 = !DILocation(line: 237, column: 3, scope: !902)
!935 = !DILocation(line: 240, column: 19, scope: !902)
!936 = !DILocation(line: 243, column: 20, scope: !937)
!937 = distinct !DILexicalBlock(scope: !902, file: !300, line: 243, column: 7)
!938 = !DILocation(line: 243, column: 7, scope: !937)
!939 = !DILocation(line: 243, column: 32, scope: !937)
!940 = !DILocation(line: 243, column: 7, scope: !902)
!941 = !DILocation(line: 249, column: 15, scope: !902)
!942 = !DILocation(line: 252, column: 3, scope: !902)
!943 = !DILocation(line: 255, column: 3, scope: !902)
!944 = !DILocation(line: 255, column: 10, scope: !902)
!945 = !DILocation(line: 255, column: 43, scope: !902)
!946 = !DILocation(line: 257, column: 10, scope: !947)
!947 = distinct !DILexicalBlock(scope: !948, file: !300, line: 257, column: 9)
!948 = distinct !DILexicalBlock(scope: !902, file: !300, line: 256, column: 3)
!949 = !DILocation(line: 257, column: 24, scope: !947)
!950 = !DILocation(line: 257, column: 37, scope: !947)
!951 = !DILocation(line: 257, column: 9, scope: !948)
!952 = distinct !{!952, !943, !953, !486, !487}
!953 = !DILocation(line: 261, column: 3, scope: !902)
!954 = !DILocation(line: 264, column: 3, scope: !902)
!955 = !DILocation(line: 267, column: 15, scope: !902)
!956 = !DILocation(line: 270, column: 3, scope: !902)
!957 = !DILocation(line: 273, column: 3, scope: !902)
!958 = !DILocation(line: 273, column: 10, scope: !902)
!959 = !DILocation(line: 273, column: 43, scope: !902)
!960 = !DILocation(line: 275, column: 10, scope: !961)
!961 = distinct !DILexicalBlock(scope: !962, file: !300, line: 275, column: 9)
!962 = distinct !DILexicalBlock(scope: !902, file: !300, line: 274, column: 3)
!963 = !DILocation(line: 275, column: 24, scope: !961)
!964 = !DILocation(line: 275, column: 37, scope: !961)
!965 = !DILocation(line: 275, column: 9, scope: !962)
!966 = distinct !{!966, !957, !967, !486, !487}
!967 = !DILocation(line: 279, column: 3, scope: !902)
!968 = !DILocation(line: 282, column: 3, scope: !902)
!969 = !DILocation(line: 324, column: 3, scope: !902)
!970 = !{!571, !572, i64 36}
!971 = !DILocation(line: 327, column: 3, scope: !902)
!972 = !DILocation(line: 329, column: 3, scope: !902)
!973 = !DILocation(line: 330, column: 1, scope: !902)
!974 = distinct !DISubprogram(name: "HAL_RCC_OscConfig", scope: !300, file: !300, line: 347, type: !975, scopeLine: 348, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !299, retainedNodes: !995)
!975 = !DISubroutineType(types: !976)
!976 = !{!859, !977}
!977 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !978, size: 32)
!978 = !DIDerivedType(tag: DW_TAG_typedef, name: "RCC_OscInitTypeDef", file: !494, line: 261, baseType: !979)
!979 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !494, line: 228, size: 320, elements: !980)
!980 = !{!981, !982, !983, !984, !985, !986, !987, !988}
!981 = !DIDerivedType(tag: DW_TAG_member, name: "OscillatorType", scope: !979, file: !494, line: 230, baseType: !19, size: 32)
!982 = !DIDerivedType(tag: DW_TAG_member, name: "HSEState", scope: !979, file: !494, line: 238, baseType: !19, size: 32, offset: 32)
!983 = !DIDerivedType(tag: DW_TAG_member, name: "HSEPredivValue", scope: !979, file: !494, line: 241, baseType: !19, size: 32, offset: 64)
!984 = !DIDerivedType(tag: DW_TAG_member, name: "LSEState", scope: !979, file: !494, line: 244, baseType: !19, size: 32, offset: 96)
!985 = !DIDerivedType(tag: DW_TAG_member, name: "HSIState", scope: !979, file: !494, line: 247, baseType: !19, size: 32, offset: 128)
!986 = !DIDerivedType(tag: DW_TAG_member, name: "HSICalibrationValue", scope: !979, file: !494, line: 250, baseType: !19, size: 32, offset: 160)
!987 = !DIDerivedType(tag: DW_TAG_member, name: "LSIState", scope: !979, file: !494, line: 253, baseType: !19, size: 32, offset: 192)
!988 = !DIDerivedType(tag: DW_TAG_member, name: "PLL", scope: !979, file: !494, line: 256, baseType: !989, size: 96, offset: 224)
!989 = !DIDerivedType(tag: DW_TAG_typedef, name: "RCC_PLLInitTypeDef", file: !506, line: 59, baseType: !990)
!990 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !506, line: 49, size: 96, elements: !991)
!991 = !{!992, !993, !994}
!992 = !DIDerivedType(tag: DW_TAG_member, name: "PLLState", scope: !990, file: !506, line: 51, baseType: !19, size: 32)
!993 = !DIDerivedType(tag: DW_TAG_member, name: "PLLSource", scope: !990, file: !506, line: 54, baseType: !19, size: 32, offset: 32)
!994 = !DIDerivedType(tag: DW_TAG_member, name: "PLLMUL", scope: !990, file: !506, line: 57, baseType: !19, size: 32, offset: 64)
!995 = !{!996, !997, !998, !999, !1003}
!996 = !DILocalVariable(name: "RCC_OscInitStruct", arg: 1, scope: !974, file: !300, line: 347, type: !977)
!997 = !DILocalVariable(name: "tickstart", scope: !974, file: !300, line: 349, type: !19)
!998 = !DILocalVariable(name: "pll_config", scope: !974, file: !300, line: 350, type: !19)
!999 = !DILocalVariable(name: "pwrclkchanged", scope: !1000, file: !300, line: 526, type: !1002)
!1000 = distinct !DILexicalBlock(scope: !1001, file: !300, line: 525, column: 3)
!1001 = distinct !DILexicalBlock(scope: !974, file: !300, line: 524, column: 7)
!1002 = !DIDerivedType(tag: DW_TAG_typedef, name: "FlagStatus", file: !6, line: 155, baseType: !5)
!1003 = !DILocalVariable(name: "tmpreg", scope: !1004, file: !300, line: 535, type: !18)
!1004 = distinct !DILexicalBlock(scope: !1005, file: !300, line: 535, column: 7)
!1005 = distinct !DILexicalBlock(scope: !1006, file: !300, line: 534, column: 5)
!1006 = distinct !DILexicalBlock(scope: !1000, file: !300, line: 533, column: 9)
!1007 = !DILocation(line: 0, scope: !974)
!1008 = !DILocation(line: 353, column: 25, scope: !1009)
!1009 = distinct !DILexicalBlock(scope: !974, file: !300, line: 353, column: 7)
!1010 = !DILocation(line: 353, column: 7, scope: !974)
!1011 = !DILocation(line: 362, column: 28, scope: !1012)
!1012 = distinct !DILexicalBlock(scope: !974, file: !300, line: 362, column: 7)
!1013 = !{!1014, !572, i64 0}
!1014 = !{!"", !572, i64 0, !572, i64 4, !572, i64 8, !572, i64 12, !572, i64 16, !572, i64 20, !572, i64 24, !1015, i64 28}
!1015 = !{!"", !572, i64 0, !572, i64 4, !572, i64 8}
!1016 = !DILocation(line: 362, column: 44, scope: !1012)
!1017 = !DILocation(line: 362, column: 70, scope: !1012)
!1018 = !DILocation(line: 362, column: 7, scope: !974)
!1019 = !DILocation(line: 368, column: 10, scope: !1020)
!1020 = distinct !DILexicalBlock(scope: !1021, file: !300, line: 368, column: 9)
!1021 = distinct !DILexicalBlock(scope: !1012, file: !300, line: 363, column: 3)
!1022 = !DILocation(line: 368, column: 40, scope: !1020)
!1023 = !DILocation(line: 369, column: 9, scope: !1020)
!1024 = !DILocation(line: 369, column: 14, scope: !1020)
!1025 = !DILocation(line: 369, column: 44, scope: !1020)
!1026 = !DILocation(line: 369, column: 79, scope: !1020)
!1027 = !DILocation(line: 369, column: 83, scope: !1020)
!1028 = !DILocation(line: 369, column: 113, scope: !1020)
!1029 = !DILocation(line: 368, column: 9, scope: !1021)
!1030 = !DILocation(line: 371, column: 12, scope: !1031)
!1031 = distinct !DILexicalBlock(scope: !1032, file: !300, line: 371, column: 11)
!1032 = distinct !DILexicalBlock(scope: !1020, file: !300, line: 370, column: 5)
!1033 = !DILocation(line: 371, column: 48, scope: !1031)
!1034 = !DILocation(line: 371, column: 58, scope: !1031)
!1035 = !DILocation(line: 371, column: 81, scope: !1031)
!1036 = !{!1014, !572, i64 4}
!1037 = !DILocation(line: 371, column: 90, scope: !1031)
!1038 = !DILocation(line: 371, column: 11, scope: !1032)
!1039 = !DILocation(line: 379, column: 7, scope: !1040)
!1040 = distinct !DILexicalBlock(scope: !1041, file: !300, line: 379, column: 7)
!1041 = distinct !DILexicalBlock(scope: !1042, file: !300, line: 379, column: 7)
!1042 = distinct !DILexicalBlock(scope: !1020, file: !300, line: 377, column: 5)
!1043 = !DILocation(line: 379, column: 7, scope: !1041)
!1044 = !DILocation(line: 379, column: 7, scope: !1045)
!1045 = distinct !DILexicalBlock(scope: !1040, file: !300, line: 379, column: 7)
!1046 = !DILocation(line: 379, column: 7, scope: !1047)
!1047 = distinct !DILexicalBlock(scope: !1048, file: !300, line: 379, column: 7)
!1048 = distinct !DILexicalBlock(scope: !1040, file: !300, line: 379, column: 7)
!1049 = !DILocation(line: 379, column: 7, scope: !1050)
!1050 = distinct !DILexicalBlock(scope: !1051, file: !300, line: 379, column: 7)
!1051 = distinct !DILexicalBlock(scope: !1048, file: !300, line: 379, column: 7)
!1052 = !DILocation(line: 379, column: 7, scope: !1053)
!1053 = distinct !DILexicalBlock(scope: !1051, file: !300, line: 379, column: 7)
!1054 = !DILocation(line: 0, scope: !1040)
!1055 = !DILocation(line: 383, column: 39, scope: !1056)
!1056 = distinct !DILexicalBlock(scope: !1042, file: !300, line: 383, column: 11)
!1057 = !DILocation(line: 0, scope: !1056)
!1058 = !DILocation(line: 383, column: 11, scope: !1042)
!1059 = !DILocation(line: 389, column: 16, scope: !1060)
!1060 = distinct !DILexicalBlock(scope: !1056, file: !300, line: 384, column: 7)
!1061 = !DILocation(line: 389, column: 52, scope: !1060)
!1062 = !DILocation(line: 389, column: 9, scope: !1060)
!1063 = !DILocation(line: 391, column: 16, scope: !1064)
!1064 = distinct !DILexicalBlock(scope: !1065, file: !300, line: 391, column: 15)
!1065 = distinct !DILexicalBlock(scope: !1060, file: !300, line: 390, column: 9)
!1066 = !DILocation(line: 391, column: 30, scope: !1064)
!1067 = !DILocation(line: 391, column: 43, scope: !1064)
!1068 = !DILocation(line: 391, column: 15, scope: !1065)
!1069 = distinct !{!1069, !1062, !1070, !486, !487}
!1070 = !DILocation(line: 395, column: 9, scope: !1060)
!1071 = !DILocation(line: 403, column: 16, scope: !1072)
!1072 = distinct !DILexicalBlock(scope: !1056, file: !300, line: 398, column: 7)
!1073 = !DILocation(line: 403, column: 52, scope: !1072)
!1074 = !DILocation(line: 403, column: 9, scope: !1072)
!1075 = !DILocation(line: 405, column: 16, scope: !1076)
!1076 = distinct !DILexicalBlock(scope: !1077, file: !300, line: 405, column: 15)
!1077 = distinct !DILexicalBlock(scope: !1072, file: !300, line: 404, column: 9)
!1078 = !DILocation(line: 405, column: 30, scope: !1076)
!1079 = !DILocation(line: 405, column: 43, scope: !1076)
!1080 = !DILocation(line: 405, column: 15, scope: !1077)
!1081 = distinct !{!1081, !1074, !1082, !486, !487}
!1082 = !DILocation(line: 409, column: 9, scope: !1072)
!1083 = !DILocation(line: 414, column: 28, scope: !1084)
!1084 = distinct !DILexicalBlock(scope: !974, file: !300, line: 414, column: 7)
!1085 = !DILocation(line: 414, column: 44, scope: !1084)
!1086 = !DILocation(line: 414, column: 70, scope: !1084)
!1087 = !DILocation(line: 414, column: 7, scope: !974)
!1088 = !DILocation(line: 421, column: 10, scope: !1089)
!1089 = distinct !DILexicalBlock(scope: !1090, file: !300, line: 421, column: 9)
!1090 = distinct !DILexicalBlock(scope: !1084, file: !300, line: 415, column: 3)
!1091 = !DILocation(line: 421, column: 40, scope: !1089)
!1092 = !DILocation(line: 422, column: 9, scope: !1089)
!1093 = !DILocation(line: 422, column: 14, scope: !1089)
!1094 = !DILocation(line: 422, column: 44, scope: !1089)
!1095 = !DILocation(line: 422, column: 79, scope: !1089)
!1096 = !DILocation(line: 422, column: 83, scope: !1089)
!1097 = !DILocation(line: 422, column: 113, scope: !1089)
!1098 = !DILocation(line: 421, column: 9, scope: !1090)
!1099 = !DILocation(line: 425, column: 12, scope: !1100)
!1100 = distinct !DILexicalBlock(scope: !1101, file: !300, line: 425, column: 11)
!1101 = distinct !DILexicalBlock(scope: !1089, file: !300, line: 423, column: 5)
!1102 = !DILocation(line: 425, column: 48, scope: !1100)
!1103 = !DILocation(line: 425, column: 58, scope: !1100)
!1104 = !DILocation(line: 425, column: 81, scope: !1100)
!1105 = !{!1014, !572, i64 16}
!1106 = !DILocation(line: 425, column: 90, scope: !1100)
!1107 = !DILocation(line: 425, column: 11, scope: !1101)
!1108 = !DILocation(line: 439, column: 30, scope: !1109)
!1109 = distinct !DILexicalBlock(scope: !1110, file: !300, line: 439, column: 11)
!1110 = distinct !DILexicalBlock(scope: !1089, file: !300, line: 437, column: 5)
!1111 = !DILocation(line: 439, column: 39, scope: !1109)
!1112 = !DILocation(line: 439, column: 11, scope: !1110)
!1113 = !DILocation(line: 442, column: 9, scope: !1114)
!1114 = distinct !DILexicalBlock(scope: !1109, file: !300, line: 440, column: 7)
!1115 = !DILocation(line: 445, column: 21, scope: !1114)
!1116 = !DILocation(line: 448, column: 9, scope: !1114)
!1117 = !DILocation(line: 448, column: 16, scope: !1114)
!1118 = !DILocation(line: 448, column: 52, scope: !1114)
!1119 = !DILocation(line: 450, column: 16, scope: !1120)
!1120 = distinct !DILexicalBlock(scope: !1121, file: !300, line: 450, column: 15)
!1121 = distinct !DILexicalBlock(scope: !1114, file: !300, line: 449, column: 9)
!1122 = !DILocation(line: 450, column: 30, scope: !1120)
!1123 = !DILocation(line: 450, column: 43, scope: !1120)
!1124 = !DILocation(line: 450, column: 15, scope: !1121)
!1125 = distinct !{!1125, !1116, !1126, !486, !487}
!1126 = !DILocation(line: 454, column: 9, scope: !1114)
!1127 = !DILocation(line: 462, column: 9, scope: !1128)
!1128 = distinct !DILexicalBlock(scope: !1109, file: !300, line: 460, column: 7)
!1129 = !DILocation(line: 465, column: 21, scope: !1128)
!1130 = !DILocation(line: 468, column: 9, scope: !1128)
!1131 = !DILocation(line: 468, column: 16, scope: !1128)
!1132 = !DILocation(line: 468, column: 52, scope: !1128)
!1133 = !DILocation(line: 470, column: 16, scope: !1134)
!1134 = distinct !DILexicalBlock(scope: !1135, file: !300, line: 470, column: 15)
!1135 = distinct !DILexicalBlock(scope: !1128, file: !300, line: 469, column: 9)
!1136 = !DILocation(line: 470, column: 30, scope: !1134)
!1137 = !DILocation(line: 470, column: 43, scope: !1134)
!1138 = !DILocation(line: 470, column: 15, scope: !1135)
!1139 = distinct !{!1139, !1130, !1140, !486, !487}
!1140 = !DILocation(line: 474, column: 9, scope: !1128)
!1141 = !DILocation(line: 0, scope: !1089)
!1142 = !{!1014, !572, i64 20}
!1143 = !DILocation(line: 479, column: 28, scope: !1144)
!1144 = distinct !DILexicalBlock(scope: !974, file: !300, line: 479, column: 7)
!1145 = !DILocation(line: 479, column: 44, scope: !1144)
!1146 = !DILocation(line: 479, column: 70, scope: !1144)
!1147 = !DILocation(line: 479, column: 7, scope: !974)
!1148 = !DILocation(line: 485, column: 28, scope: !1149)
!1149 = distinct !DILexicalBlock(scope: !1150, file: !300, line: 485, column: 9)
!1150 = distinct !DILexicalBlock(scope: !1144, file: !300, line: 480, column: 3)
!1151 = !{!1014, !572, i64 24}
!1152 = !DILocation(line: 485, column: 37, scope: !1149)
!1153 = !DILocation(line: 485, column: 9, scope: !1150)
!1154 = !DILocation(line: 488, column: 7, scope: !1155)
!1155 = distinct !DILexicalBlock(scope: !1149, file: !300, line: 486, column: 5)
!1156 = !DILocation(line: 491, column: 19, scope: !1155)
!1157 = !DILocation(line: 494, column: 7, scope: !1155)
!1158 = !DILocation(line: 494, column: 14, scope: !1155)
!1159 = !DILocation(line: 494, column: 50, scope: !1155)
!1160 = !DILocation(line: 496, column: 14, scope: !1161)
!1161 = distinct !DILexicalBlock(scope: !1162, file: !300, line: 496, column: 13)
!1162 = distinct !DILexicalBlock(scope: !1155, file: !300, line: 495, column: 7)
!1163 = !DILocation(line: 496, column: 28, scope: !1161)
!1164 = !DILocation(line: 496, column: 41, scope: !1161)
!1165 = !DILocation(line: 496, column: 13, scope: !1162)
!1166 = distinct !{!1166, !1157, !1167, !486, !487}
!1167 = !DILocation(line: 500, column: 7, scope: !1155)
!1168 = !DILocation(line: 503, column: 7, scope: !1155)
!1169 = !DILocation(line: 504, column: 5, scope: !1155)
!1170 = !DILocation(line: 508, column: 7, scope: !1171)
!1171 = distinct !DILexicalBlock(scope: !1149, file: !300, line: 506, column: 5)
!1172 = !DILocation(line: 511, column: 19, scope: !1171)
!1173 = !DILocation(line: 514, column: 7, scope: !1171)
!1174 = !DILocation(line: 514, column: 14, scope: !1171)
!1175 = !DILocation(line: 514, column: 50, scope: !1171)
!1176 = !DILocation(line: 516, column: 14, scope: !1177)
!1177 = distinct !DILexicalBlock(scope: !1178, file: !300, line: 516, column: 13)
!1178 = distinct !DILexicalBlock(scope: !1171, file: !300, line: 515, column: 7)
!1179 = !DILocation(line: 516, column: 28, scope: !1177)
!1180 = !DILocation(line: 516, column: 41, scope: !1177)
!1181 = !DILocation(line: 516, column: 13, scope: !1178)
!1182 = distinct !{!1182, !1173, !1183, !486, !487}
!1183 = !DILocation(line: 520, column: 7, scope: !1171)
!1184 = !DILocation(line: 524, column: 28, scope: !1001)
!1185 = !DILocation(line: 524, column: 44, scope: !1001)
!1186 = !DILocation(line: 524, column: 70, scope: !1001)
!1187 = !DILocation(line: 524, column: 7, scope: !974)
!1188 = !DILocation(line: 0, scope: !1000)
!1189 = !DILocation(line: 533, column: 9, scope: !1006)
!1190 = !{!571, !572, i64 28}
!1191 = !DILocation(line: 533, column: 9, scope: !1000)
!1192 = !DILocation(line: 535, column: 7, scope: !1004)
!1193 = !DILocation(line: 535, column: 7, scope: !1005)
!1194 = !DILocation(line: 537, column: 5, scope: !1005)
!1195 = !DILocation(line: 539, column: 9, scope: !1196)
!1196 = distinct !DILexicalBlock(scope: !1000, file: !300, line: 539, column: 9)
!1197 = !{!1198, !572, i64 0}
!1198 = !{!"", !572, i64 0, !572, i64 4}
!1199 = !DILocation(line: 539, column: 9, scope: !1000)
!1200 = !DILocation(line: 542, column: 7, scope: !1201)
!1201 = distinct !DILexicalBlock(scope: !1196, file: !300, line: 540, column: 5)
!1202 = !DILocation(line: 545, column: 19, scope: !1201)
!1203 = !DILocation(line: 547, column: 7, scope: !1201)
!1204 = !DILocation(line: 547, column: 14, scope: !1201)
!1205 = !DILocation(line: 549, column: 14, scope: !1206)
!1206 = distinct !DILexicalBlock(scope: !1207, file: !300, line: 549, column: 13)
!1207 = distinct !DILexicalBlock(scope: !1201, file: !300, line: 548, column: 7)
!1208 = !DILocation(line: 549, column: 28, scope: !1206)
!1209 = !DILocation(line: 549, column: 41, scope: !1206)
!1210 = !DILocation(line: 549, column: 13, scope: !1207)
!1211 = distinct !{!1211, !1203, !1212, !486, !487}
!1212 = !DILocation(line: 553, column: 7, scope: !1201)
!1213 = !DILocation(line: 557, column: 5, scope: !1214)
!1214 = distinct !DILexicalBlock(scope: !1215, file: !300, line: 557, column: 5)
!1215 = distinct !DILexicalBlock(scope: !1000, file: !300, line: 557, column: 5)
!1216 = !{!1014, !572, i64 12}
!1217 = !DILocation(line: 557, column: 5, scope: !1215)
!1218 = !DILocation(line: 557, column: 5, scope: !1219)
!1219 = distinct !DILexicalBlock(scope: !1214, file: !300, line: 557, column: 5)
!1220 = !{!571, !572, i64 32}
!1221 = !DILocation(line: 557, column: 5, scope: !1222)
!1222 = distinct !DILexicalBlock(scope: !1223, file: !300, line: 557, column: 5)
!1223 = distinct !DILexicalBlock(scope: !1214, file: !300, line: 557, column: 5)
!1224 = !DILocation(line: 557, column: 5, scope: !1225)
!1225 = distinct !DILexicalBlock(scope: !1226, file: !300, line: 557, column: 5)
!1226 = distinct !DILexicalBlock(scope: !1223, file: !300, line: 557, column: 5)
!1227 = !DILocation(line: 557, column: 5, scope: !1228)
!1228 = distinct !DILexicalBlock(scope: !1226, file: !300, line: 557, column: 5)
!1229 = !DILocation(line: 0, scope: !1214)
!1230 = !DILocation(line: 559, column: 37, scope: !1231)
!1231 = distinct !DILexicalBlock(scope: !1000, file: !300, line: 559, column: 9)
!1232 = !DILocation(line: 0, scope: !1231)
!1233 = !DILocation(line: 559, column: 9, scope: !1000)
!1234 = !DILocation(line: 565, column: 14, scope: !1235)
!1235 = distinct !DILexicalBlock(scope: !1231, file: !300, line: 560, column: 5)
!1236 = !DILocation(line: 565, column: 50, scope: !1235)
!1237 = !DILocation(line: 565, column: 7, scope: !1235)
!1238 = !DILocation(line: 567, column: 14, scope: !1239)
!1239 = distinct !DILexicalBlock(scope: !1240, file: !300, line: 567, column: 13)
!1240 = distinct !DILexicalBlock(scope: !1235, file: !300, line: 566, column: 7)
!1241 = !DILocation(line: 567, column: 28, scope: !1239)
!1242 = !DILocation(line: 567, column: 41, scope: !1239)
!1243 = !DILocation(line: 567, column: 13, scope: !1240)
!1244 = distinct !{!1244, !1237, !1245, !486, !487}
!1245 = !DILocation(line: 571, column: 7, scope: !1235)
!1246 = !DILocation(line: 579, column: 14, scope: !1247)
!1247 = distinct !DILexicalBlock(scope: !1231, file: !300, line: 574, column: 5)
!1248 = !DILocation(line: 579, column: 50, scope: !1247)
!1249 = !DILocation(line: 579, column: 7, scope: !1247)
!1250 = !DILocation(line: 581, column: 14, scope: !1251)
!1251 = distinct !DILexicalBlock(scope: !1252, file: !300, line: 581, column: 13)
!1252 = distinct !DILexicalBlock(scope: !1247, file: !300, line: 580, column: 7)
!1253 = !DILocation(line: 581, column: 28, scope: !1251)
!1254 = !DILocation(line: 581, column: 41, scope: !1251)
!1255 = !DILocation(line: 581, column: 13, scope: !1252)
!1256 = distinct !{!1256, !1249, !1257, !486, !487}
!1257 = !DILocation(line: 585, column: 7, scope: !1247)
!1258 = !DILocation(line: 589, column: 9, scope: !1000)
!1259 = !DILocation(line: 591, column: 7, scope: !1260)
!1260 = distinct !DILexicalBlock(scope: !1261, file: !300, line: 590, column: 5)
!1261 = distinct !DILexicalBlock(scope: !1000, file: !300, line: 589, column: 9)
!1262 = !DILocation(line: 592, column: 5, scope: !1260)
!1263 = !DILocation(line: 688, column: 31, scope: !1264)
!1264 = distinct !DILexicalBlock(scope: !974, file: !300, line: 688, column: 7)
!1265 = !{!1014, !572, i64 28}
!1266 = !DILocation(line: 688, column: 41, scope: !1264)
!1267 = !DILocation(line: 688, column: 7, scope: !974)
!1268 = !DILocation(line: 691, column: 9, scope: !1269)
!1269 = distinct !DILexicalBlock(scope: !1270, file: !300, line: 691, column: 9)
!1270 = distinct !DILexicalBlock(scope: !1264, file: !300, line: 689, column: 3)
!1271 = !DILocation(line: 691, column: 39, scope: !1269)
!1272 = !DILocation(line: 691, column: 9, scope: !1270)
!1273 = !DILocation(line: 693, column: 45, scope: !1274)
!1274 = distinct !DILexicalBlock(scope: !1275, file: !300, line: 693, column: 11)
!1275 = distinct !DILexicalBlock(scope: !1269, file: !300, line: 692, column: 5)
!1276 = !DILocation(line: 0, scope: !1274)
!1277 = !DILocation(line: 693, column: 11, scope: !1275)
!1278 = !DILocation(line: 706, column: 16, scope: !1279)
!1279 = distinct !DILexicalBlock(scope: !1274, file: !300, line: 694, column: 7)
!1280 = !DILocation(line: 706, column: 53, scope: !1279)
!1281 = !DILocation(line: 706, column: 9, scope: !1279)
!1282 = !DILocation(line: 708, column: 16, scope: !1283)
!1283 = distinct !DILexicalBlock(scope: !1284, file: !300, line: 708, column: 15)
!1284 = distinct !DILexicalBlock(scope: !1279, file: !300, line: 707, column: 9)
!1285 = !DILocation(line: 708, column: 30, scope: !1283)
!1286 = !DILocation(line: 708, column: 43, scope: !1283)
!1287 = !DILocation(line: 708, column: 15, scope: !1284)
!1288 = distinct !{!1288, !1281, !1289, !486, !487}
!1289 = !DILocation(line: 712, column: 9, scope: !1279)
!1290 = !DILocation(line: 716, column: 36, scope: !1291)
!1291 = distinct !DILexicalBlock(scope: !1279, file: !300, line: 716, column: 13)
!1292 = !{!1014, !572, i64 32}
!1293 = !DILocation(line: 716, column: 46, scope: !1291)
!1294 = !DILocation(line: 716, column: 13, scope: !1279)
!1295 = !DILocation(line: 728, column: 11, scope: !1296)
!1296 = distinct !DILexicalBlock(scope: !1291, file: !300, line: 717, column: 9)
!1297 = !{!1014, !572, i64 8}
!1298 = !DILocation(line: 729, column: 9, scope: !1296)
!1299 = !DILocation(line: 732, column: 9, scope: !1279)
!1300 = !{!1014, !572, i64 36}
!1301 = !DILocation(line: 735, column: 9, scope: !1279)
!1302 = !DILocation(line: 738, column: 21, scope: !1279)
!1303 = !DILocation(line: 741, column: 9, scope: !1279)
!1304 = !DILocation(line: 741, column: 16, scope: !1279)
!1305 = !DILocation(line: 741, column: 53, scope: !1279)
!1306 = !DILocation(line: 743, column: 16, scope: !1307)
!1307 = distinct !DILexicalBlock(scope: !1308, file: !300, line: 743, column: 15)
!1308 = distinct !DILexicalBlock(scope: !1279, file: !300, line: 742, column: 9)
!1309 = !DILocation(line: 743, column: 30, scope: !1307)
!1310 = !DILocation(line: 743, column: 43, scope: !1307)
!1311 = !DILocation(line: 743, column: 15, scope: !1308)
!1312 = distinct !{!1312, !1303, !1313, !486, !487}
!1313 = !DILocation(line: 747, column: 9, scope: !1279)
!1314 = !DILocation(line: 758, column: 16, scope: !1315)
!1315 = distinct !DILexicalBlock(scope: !1274, file: !300, line: 750, column: 7)
!1316 = !DILocation(line: 758, column: 53, scope: !1315)
!1317 = !DILocation(line: 758, column: 9, scope: !1315)
!1318 = !DILocation(line: 760, column: 16, scope: !1319)
!1319 = distinct !DILexicalBlock(scope: !1320, file: !300, line: 760, column: 15)
!1320 = distinct !DILexicalBlock(scope: !1315, file: !300, line: 759, column: 9)
!1321 = !DILocation(line: 760, column: 30, scope: !1319)
!1322 = !DILocation(line: 760, column: 43, scope: !1319)
!1323 = !DILocation(line: 760, column: 15, scope: !1320)
!1324 = distinct !{!1324, !1317, !1325, !486, !487}
!1325 = !DILocation(line: 764, column: 9, scope: !1315)
!1326 = !DILocation(line: 770, column: 45, scope: !1327)
!1327 = distinct !DILexicalBlock(scope: !1328, file: !300, line: 770, column: 11)
!1328 = distinct !DILexicalBlock(scope: !1269, file: !300, line: 768, column: 5)
!1329 = !DILocation(line: 770, column: 11, scope: !1328)
!1330 = !DILocation(line: 777, column: 27, scope: !1331)
!1331 = distinct !DILexicalBlock(scope: !1327, file: !300, line: 775, column: 7)
!1332 = !DILocation(line: 778, column: 14, scope: !1333)
!1333 = distinct !DILexicalBlock(scope: !1331, file: !300, line: 778, column: 13)
!1334 = !DILocation(line: 778, column: 78, scope: !1333)
!1335 = !DILocation(line: 778, column: 52, scope: !1333)
!1336 = !DILocation(line: 778, column: 89, scope: !1333)
!1337 = !DILocation(line: 779, column: 14, scope: !1333)
!1338 = !DILocation(line: 779, column: 79, scope: !1333)
!1339 = !DILocation(line: 779, column: 53, scope: !1333)
!1340 = !DILocation(line: 778, column: 13, scope: !1331)
!1341 = !DILocation(line: 787, column: 3, scope: !974)
!1342 = !DILocation(line: 788, column: 1, scope: !974)
!1343 = distinct !DISubprogram(name: "RCC_Delay", scope: !300, file: !300, line: 1365, type: !1344, scopeLine: 1366, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !299, retainedNodes: !1346)
!1344 = !DISubroutineType(types: !1345)
!1345 = !{null, !19}
!1346 = !{!1347, !1348}
!1347 = !DILocalVariable(name: "mdelay", arg: 1, scope: !1343, file: !300, line: 1365, type: !19)
!1348 = !DILocalVariable(name: "Delay", scope: !1343, file: !300, line: 1367, type: !18)
!1349 = !DILocation(line: 0, scope: !1343)
!1350 = !DILocation(line: 1367, column: 3, scope: !1343)
!1351 = !DILocation(line: 1367, column: 17, scope: !1343)
!1352 = !DILocation(line: 1367, column: 35, scope: !1343)
!1353 = !DILocation(line: 1367, column: 56, scope: !1343)
!1354 = !DILocation(line: 1368, column: 3, scope: !1343)
!1355 = !DILocation(line: 1370, column: 5, scope: !1356)
!1356 = distinct !DILexicalBlock(scope: !1343, file: !300, line: 1369, column: 3)
!1357 = !{i64 2149488927}
!1358 = !DILocation(line: 1372, column: 16, scope: !1343)
!1359 = !DILocation(line: 1371, column: 3, scope: !1356)
!1360 = distinct !{!1360, !1354, !1361, !486, !487}
!1361 = !DILocation(line: 1372, column: 18, scope: !1343)
!1362 = !DILocation(line: 1373, column: 1, scope: !1343)
!1363 = distinct !DISubprogram(name: "HAL_RCC_ClockConfig", scope: !300, file: !300, line: 813, type: !1364, scopeLine: 814, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !299, retainedNodes: !1375)
!1364 = !DISubroutineType(types: !1365)
!1365 = !{!859, !1366, !19}
!1366 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1367, size: 32)
!1367 = !DIDerivedType(tag: DW_TAG_typedef, name: "RCC_ClkInitTypeDef", file: !506, line: 80, baseType: !1368)
!1368 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !506, line: 64, size: 160, elements: !1369)
!1369 = !{!1370, !1371, !1372, !1373, !1374}
!1370 = !DIDerivedType(tag: DW_TAG_member, name: "ClockType", scope: !1368, file: !506, line: 66, baseType: !19, size: 32)
!1371 = !DIDerivedType(tag: DW_TAG_member, name: "SYSCLKSource", scope: !1368, file: !506, line: 69, baseType: !19, size: 32, offset: 32)
!1372 = !DIDerivedType(tag: DW_TAG_member, name: "AHBCLKDivider", scope: !1368, file: !506, line: 72, baseType: !19, size: 32, offset: 64)
!1373 = !DIDerivedType(tag: DW_TAG_member, name: "APB1CLKDivider", scope: !1368, file: !506, line: 75, baseType: !19, size: 32, offset: 96)
!1374 = !DIDerivedType(tag: DW_TAG_member, name: "APB2CLKDivider", scope: !1368, file: !506, line: 78, baseType: !19, size: 32, offset: 128)
!1375 = !{!1376, !1377, !1378}
!1376 = !DILocalVariable(name: "RCC_ClkInitStruct", arg: 1, scope: !1363, file: !300, line: 813, type: !1366)
!1377 = !DILocalVariable(name: "FLatency", arg: 2, scope: !1363, file: !300, line: 813, type: !19)
!1378 = !DILocalVariable(name: "tickstart", scope: !1363, file: !300, line: 815, type: !19)
!1379 = !DILocation(line: 0, scope: !1363)
!1380 = !DILocation(line: 818, column: 25, scope: !1381)
!1381 = distinct !DILexicalBlock(scope: !1363, file: !300, line: 818, column: 7)
!1382 = !DILocation(line: 818, column: 7, scope: !1363)
!1383 = !DILocation(line: 833, column: 18, scope: !1384)
!1384 = distinct !DILexicalBlock(scope: !1363, file: !300, line: 833, column: 7)
!1385 = !{!1386, !572, i64 0}
!1386 = !{!"", !572, i64 0, !572, i64 4, !572, i64 8, !572, i64 12, !572, i64 16, !572, i64 20, !572, i64 24, !572, i64 28, !572, i64 32}
!1387 = !DILocation(line: 833, column: 16, scope: !1384)
!1388 = !DILocation(line: 833, column: 7, scope: !1363)
!1389 = !DILocation(line: 836, column: 5, scope: !1390)
!1390 = distinct !DILexicalBlock(scope: !1384, file: !300, line: 834, column: 3)
!1391 = !DILocation(line: 840, column: 9, scope: !1392)
!1392 = distinct !DILexicalBlock(scope: !1390, file: !300, line: 840, column: 9)
!1393 = !DILocation(line: 840, column: 35, scope: !1392)
!1394 = !DILocation(line: 840, column: 9, scope: !1390)
!1395 = !DILocation(line: 848, column: 26, scope: !1396)
!1396 = distinct !DILexicalBlock(scope: !1363, file: !300, line: 848, column: 5)
!1397 = !{!1398, !572, i64 0}
!1398 = !{!"", !572, i64 0, !572, i64 4, !572, i64 8, !572, i64 12, !572, i64 16}
!1399 = !DILocation(line: 848, column: 37, scope: !1396)
!1400 = !DILocation(line: 848, column: 59, scope: !1396)
!1401 = !DILocation(line: 848, column: 5, scope: !1363)
!1402 = !DILocation(line: 852, column: 41, scope: !1403)
!1403 = distinct !DILexicalBlock(scope: !1404, file: !300, line: 852, column: 9)
!1404 = distinct !DILexicalBlock(scope: !1396, file: !300, line: 849, column: 3)
!1405 = !DILocation(line: 852, column: 64, scope: !1403)
!1406 = !DILocation(line: 852, column: 9, scope: !1404)
!1407 = !DILocation(line: 854, column: 7, scope: !1408)
!1408 = distinct !DILexicalBlock(scope: !1403, file: !300, line: 853, column: 5)
!1409 = !DILocation(line: 855, column: 5, scope: !1408)
!1410 = !DILocation(line: 857, column: 41, scope: !1411)
!1411 = distinct !DILexicalBlock(scope: !1404, file: !300, line: 857, column: 9)
!1412 = !DILocation(line: 857, column: 64, scope: !1411)
!1413 = !DILocation(line: 857, column: 9, scope: !1404)
!1414 = !DILocation(line: 859, column: 7, scope: !1415)
!1415 = distinct !DILexicalBlock(scope: !1411, file: !300, line: 858, column: 5)
!1416 = !DILocation(line: 860, column: 5, scope: !1415)
!1417 = !DILocation(line: 864, column: 5, scope: !1404)
!1418 = !{!1398, !572, i64 8}
!1419 = !DILocation(line: 865, column: 3, scope: !1404)
!1420 = !DILocation(line: 868, column: 39, scope: !1421)
!1421 = distinct !DILexicalBlock(scope: !1363, file: !300, line: 868, column: 7)
!1422 = !DILocation(line: 868, column: 63, scope: !1421)
!1423 = !DILocation(line: 868, column: 7, scope: !1363)
!1424 = !DILocation(line: 873, column: 28, scope: !1425)
!1425 = distinct !DILexicalBlock(scope: !1426, file: !300, line: 873, column: 9)
!1426 = distinct !DILexicalBlock(scope: !1421, file: !300, line: 869, column: 3)
!1427 = !{!1398, !572, i64 4}
!1428 = !DILocation(line: 873, column: 9, scope: !1426)
!1429 = !DILocation(line: 876, column: 11, scope: !1430)
!1430 = distinct !DILexicalBlock(scope: !1431, file: !300, line: 876, column: 11)
!1431 = distinct !DILexicalBlock(scope: !1425, file: !300, line: 874, column: 5)
!1432 = !DILocation(line: 876, column: 47, scope: !1430)
!1433 = !DILocation(line: 876, column: 11, scope: !1431)
!1434 = !DILocation(line: 885, column: 11, scope: !1435)
!1435 = distinct !DILexicalBlock(scope: !1436, file: !300, line: 885, column: 11)
!1436 = distinct !DILexicalBlock(scope: !1437, file: !300, line: 883, column: 5)
!1437 = distinct !DILexicalBlock(scope: !1425, file: !300, line: 882, column: 14)
!1438 = !DILocation(line: 885, column: 47, scope: !1435)
!1439 = !DILocation(line: 885, column: 11, scope: !1436)
!1440 = !DILocation(line: 894, column: 11, scope: !1441)
!1441 = distinct !DILexicalBlock(scope: !1442, file: !300, line: 894, column: 11)
!1442 = distinct !DILexicalBlock(scope: !1437, file: !300, line: 892, column: 5)
!1443 = !DILocation(line: 894, column: 47, scope: !1441)
!1444 = !DILocation(line: 894, column: 11, scope: !1442)
!1445 = !DILocation(line: 899, column: 5, scope: !1426)
!1446 = !DILocation(line: 902, column: 17, scope: !1426)
!1447 = !DILocation(line: 904, column: 5, scope: !1426)
!1448 = !DILocation(line: 904, column: 12, scope: !1426)
!1449 = !DILocation(line: 904, column: 65, scope: !1426)
!1450 = !DILocation(line: 904, column: 78, scope: !1426)
!1451 = !DILocation(line: 904, column: 42, scope: !1426)
!1452 = !DILocation(line: 906, column: 12, scope: !1453)
!1453 = distinct !DILexicalBlock(scope: !1454, file: !300, line: 906, column: 11)
!1454 = distinct !DILexicalBlock(scope: !1426, file: !300, line: 905, column: 5)
!1455 = !DILocation(line: 906, column: 26, scope: !1453)
!1456 = !DILocation(line: 906, column: 39, scope: !1453)
!1457 = !DILocation(line: 906, column: 11, scope: !1454)
!1458 = distinct !{!1458, !1447, !1459, !486, !487}
!1459 = !DILocation(line: 910, column: 5, scope: !1426)
!1460 = !DILocation(line: 915, column: 18, scope: !1461)
!1461 = distinct !DILexicalBlock(scope: !1363, file: !300, line: 915, column: 7)
!1462 = !DILocation(line: 915, column: 16, scope: !1461)
!1463 = !DILocation(line: 915, column: 7, scope: !1363)
!1464 = !DILocation(line: 918, column: 5, scope: !1465)
!1465 = distinct !DILexicalBlock(scope: !1461, file: !300, line: 916, column: 3)
!1466 = !DILocation(line: 922, column: 9, scope: !1467)
!1467 = distinct !DILexicalBlock(scope: !1465, file: !300, line: 922, column: 9)
!1468 = !DILocation(line: 922, column: 35, scope: !1467)
!1469 = !DILocation(line: 922, column: 9, scope: !1465)
!1470 = !DILocation(line: 930, column: 26, scope: !1471)
!1471 = distinct !DILexicalBlock(scope: !1363, file: !300, line: 930, column: 5)
!1472 = !DILocation(line: 930, column: 37, scope: !1471)
!1473 = !DILocation(line: 930, column: 60, scope: !1471)
!1474 = !DILocation(line: 930, column: 5, scope: !1363)
!1475 = !DILocation(line: 933, column: 5, scope: !1476)
!1476 = distinct !DILexicalBlock(scope: !1471, file: !300, line: 931, column: 3)
!1477 = !{!1398, !572, i64 12}
!1478 = !DILocation(line: 934, column: 3, scope: !1476)
!1479 = !DILocation(line: 937, column: 39, scope: !1480)
!1480 = distinct !DILexicalBlock(scope: !1363, file: !300, line: 937, column: 7)
!1481 = !DILocation(line: 937, column: 62, scope: !1480)
!1482 = !DILocation(line: 937, column: 7, scope: !1363)
!1483 = !DILocation(line: 940, column: 5, scope: !1484)
!1484 = distinct !DILexicalBlock(scope: !1480, file: !300, line: 938, column: 3)
!1485 = !{!1398, !572, i64 16}
!1486 = !DILocation(line: 941, column: 3, scope: !1484)
!1487 = !DILocation(line: 944, column: 21, scope: !1363)
!1488 = !DILocation(line: 944, column: 70, scope: !1363)
!1489 = !DILocation(line: 944, column: 92, scope: !1363)
!1490 = !DILocation(line: 944, column: 50, scope: !1363)
!1491 = !DILocation(line: 944, column: 47, scope: !1363)
!1492 = !DILocation(line: 944, column: 19, scope: !1363)
!1493 = !DILocation(line: 947, column: 16, scope: !1363)
!1494 = !DILocation(line: 947, column: 3, scope: !1363)
!1495 = !DILocation(line: 949, column: 3, scope: !1363)
!1496 = !DILocation(line: 950, column: 1, scope: !1363)
!1497 = distinct !DISubprogram(name: "HAL_RCC_GetSysClockFreq", scope: !300, file: !300, line: 1082, type: !1498, scopeLine: 1083, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !299, retainedNodes: !1500)
!1498 = !DISubroutineType(types: !1499)
!1499 = !{!19}
!1500 = !{!1501, !1502, !1504, !1505, !1506, !1507, !1508}
!1501 = !DILocalVariable(name: "aPLLMULFactorTable", scope: !1497, file: !300, line: 1088, type: !85)
!1502 = !DILocalVariable(name: "aPredivFactorTable", scope: !1497, file: !300, line: 1092, type: !1503)
!1503 = !DICompositeType(tag: DW_TAG_array_type, baseType: !82, size: 16, elements: !61)
!1504 = !DILocalVariable(name: "tmpreg", scope: !1497, file: !300, line: 1096, type: !19)
!1505 = !DILocalVariable(name: "prediv", scope: !1497, file: !300, line: 1096, type: !19)
!1506 = !DILocalVariable(name: "pllclk", scope: !1497, file: !300, line: 1096, type: !19)
!1507 = !DILocalVariable(name: "pllmul", scope: !1497, file: !300, line: 1096, type: !19)
!1508 = !DILocalVariable(name: "sysclockfreq", scope: !1497, file: !300, line: 1097, type: !19)
!1509 = !DILocation(line: 1088, column: 17, scope: !1497)
!1510 = !DILocation(line: 1092, column: 17, scope: !1497)
!1511 = !DILocation(line: 0, scope: !1497)
!1512 = !DILocation(line: 1102, column: 17, scope: !1497)
!1513 = !DILocation(line: 1105, column: 18, scope: !1497)
!1514 = !DILocation(line: 1105, column: 3, scope: !1497)
!1515 = !DILocation(line: 1114, column: 73, scope: !1516)
!1516 = distinct !DILexicalBlock(scope: !1517, file: !300, line: 1113, column: 5)
!1517 = distinct !DILexicalBlock(scope: !1497, file: !300, line: 1106, column: 3)
!1518 = !DILocation(line: 1114, column: 16, scope: !1516)
!1519 = !DILocation(line: 1115, column: 19, scope: !1520)
!1520 = distinct !DILexicalBlock(scope: !1516, file: !300, line: 1115, column: 11)
!1521 = !DILocation(line: 1115, column: 38, scope: !1520)
!1522 = !DILocation(line: 1115, column: 11, scope: !1516)
!1523 = !DILocation(line: 1120, column: 53, scope: !1524)
!1524 = distinct !DILexicalBlock(scope: !1520, file: !300, line: 1116, column: 7)
!1525 = !DILocation(line: 1120, column: 79, scope: !1524)
!1526 = !DILocation(line: 1120, column: 18, scope: !1524)
!1527 = !DILocation(line: 1146, column: 41, scope: !1524)
!1528 = !DILocation(line: 1146, column: 51, scope: !1524)
!1529 = !DILocation(line: 1148, column: 7, scope: !1524)
!1530 = !DILocation(line: 1152, column: 46, scope: !1531)
!1531 = distinct !DILexicalBlock(scope: !1520, file: !300, line: 1150, column: 7)
!1532 = !DILocation(line: 0, scope: !1517)
!1533 = !DILocation(line: 1164, column: 3, scope: !1497)
!1534 = distinct !DISubprogram(name: "HAL_RCC_MCOConfig", scope: !300, file: !300, line: 1002, type: !1535, scopeLine: 1003, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !299, retainedNodes: !1537)
!1535 = !DISubroutineType(types: !1536)
!1536 = !{null, !19, !19, !19}
!1537 = !{!1538, !1539, !1540, !1541, !1549}
!1538 = !DILocalVariable(name: "RCC_MCOx", arg: 1, scope: !1534, file: !300, line: 1002, type: !19)
!1539 = !DILocalVariable(name: "RCC_MCOSource", arg: 2, scope: !1534, file: !300, line: 1002, type: !19)
!1540 = !DILocalVariable(name: "RCC_MCODiv", arg: 3, scope: !1534, file: !300, line: 1002, type: !19)
!1541 = !DILocalVariable(name: "gpio", scope: !1534, file: !300, line: 1004, type: !1542)
!1542 = !DIDerivedType(tag: DW_TAG_typedef, name: "GPIO_InitTypeDef", file: !221, line: 60, baseType: !1543)
!1543 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !221, line: 47, size: 128, elements: !1544)
!1544 = !{!1545, !1546, !1547, !1548}
!1545 = !DIDerivedType(tag: DW_TAG_member, name: "Pin", scope: !1543, file: !221, line: 49, baseType: !19, size: 32)
!1546 = !DIDerivedType(tag: DW_TAG_member, name: "Mode", scope: !1543, file: !221, line: 52, baseType: !19, size: 32, offset: 32)
!1547 = !DIDerivedType(tag: DW_TAG_member, name: "Pull", scope: !1543, file: !221, line: 55, baseType: !19, size: 32, offset: 64)
!1548 = !DIDerivedType(tag: DW_TAG_member, name: "Speed", scope: !1543, file: !221, line: 58, baseType: !19, size: 32, offset: 96)
!1549 = !DILocalVariable(name: "tmpreg", scope: !1550, file: !300, line: 1022, type: !18)
!1550 = distinct !DILexicalBlock(scope: !1534, file: !300, line: 1022, column: 3)
!1551 = !DILocation(line: 0, scope: !1534)
!1552 = !DILocation(line: 1004, column: 3, scope: !1534)
!1553 = !DILocation(line: 1004, column: 20, scope: !1534)
!1554 = !DILocation(line: 1016, column: 8, scope: !1534)
!1555 = !DILocation(line: 1016, column: 18, scope: !1534)
!1556 = !DILocation(line: 1017, column: 8, scope: !1534)
!1557 = !DILocation(line: 1017, column: 18, scope: !1534)
!1558 = !DILocation(line: 1018, column: 8, scope: !1534)
!1559 = !DILocation(line: 1018, column: 18, scope: !1534)
!1560 = !DILocation(line: 1019, column: 8, scope: !1534)
!1561 = !DILocation(line: 1019, column: 18, scope: !1534)
!1562 = !DILocation(line: 1022, column: 3, scope: !1550)
!1563 = !DILocation(line: 1022, column: 3, scope: !1534)
!1564 = !DILocation(line: 1024, column: 3, scope: !1534)
!1565 = !DILocation(line: 1027, column: 3, scope: !1534)
!1566 = !DILocation(line: 1028, column: 1, scope: !1534)
!1567 = distinct !DISubprogram(name: "HAL_RCC_EnableCSS", scope: !300, file: !300, line: 1039, type: !489, scopeLine: 1040, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !299, retainedNodes: !565)
!1568 = !DILocation(line: 1041, column: 38, scope: !1567)
!1569 = !DILocation(line: 1042, column: 1, scope: !1567)
!1570 = distinct !DISubprogram(name: "HAL_RCC_DisableCSS", scope: !300, file: !300, line: 1048, type: !489, scopeLine: 1049, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !299, retainedNodes: !565)
!1571 = !DILocation(line: 1050, column: 38, scope: !1570)
!1572 = !DILocation(line: 1051, column: 1, scope: !1570)
!1573 = distinct !DISubprogram(name: "HAL_RCC_GetHCLKFreq", scope: !300, file: !300, line: 1176, type: !1498, scopeLine: 1177, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !299, retainedNodes: !565)
!1574 = !DILocation(line: 1178, column: 10, scope: !1573)
!1575 = !DILocation(line: 1178, column: 3, scope: !1573)
!1576 = distinct !DISubprogram(name: "HAL_RCC_GetPCLK1Freq", scope: !300, file: !300, line: 1187, type: !1498, scopeLine: 1188, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !299, retainedNodes: !565)
!1577 = !DILocation(line: 1190, column: 11, scope: !1576)
!1578 = !DILocation(line: 1190, column: 56, scope: !1576)
!1579 = !DILocation(line: 1190, column: 79, scope: !1576)
!1580 = !DILocation(line: 1190, column: 36, scope: !1576)
!1581 = !DILocation(line: 1190, column: 33, scope: !1576)
!1582 = !DILocation(line: 1190, column: 3, scope: !1576)
!1583 = distinct !DISubprogram(name: "HAL_RCC_GetPCLK2Freq", scope: !300, file: !300, line: 1199, type: !1498, scopeLine: 1200, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !299, retainedNodes: !565)
!1584 = !DILocation(line: 1202, column: 11, scope: !1583)
!1585 = !DILocation(line: 1202, column: 56, scope: !1583)
!1586 = !DILocation(line: 1202, column: 79, scope: !1583)
!1587 = !DILocation(line: 1202, column: 36, scope: !1583)
!1588 = !DILocation(line: 1202, column: 33, scope: !1583)
!1589 = !DILocation(line: 1202, column: 3, scope: !1583)
!1590 = distinct !DISubprogram(name: "HAL_RCC_GetOscConfig", scope: !300, file: !300, line: 1212, type: !1591, scopeLine: 1213, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !299, retainedNodes: !1593)
!1591 = !DISubroutineType(types: !1592)
!1592 = !{null, !977}
!1593 = !{!1594}
!1594 = !DILocalVariable(name: "RCC_OscInitStruct", arg: 1, scope: !1590, file: !300, line: 1212, type: !977)
!1595 = !DILocation(line: 0, scope: !1590)
!1596 = !DILocation(line: 1218, column: 22, scope: !1590)
!1597 = !DILocation(line: 1218, column: 37, scope: !1590)
!1598 = !DILocation(line: 1227, column: 13, scope: !1599)
!1599 = distinct !DILexicalBlock(scope: !1590, file: !300, line: 1227, column: 7)
!1600 = !DILocation(line: 1227, column: 16, scope: !1599)
!1601 = !DILocation(line: 1227, column: 33, scope: !1599)
!1602 = !DILocation(line: 1227, column: 7, scope: !1590)
!1603 = !DILocation(line: 1229, column: 24, scope: !1604)
!1604 = distinct !DILexicalBlock(scope: !1599, file: !300, line: 1228, column: 3)
!1605 = !DILocation(line: 1229, column: 33, scope: !1604)
!1606 = !DILocation(line: 1230, column: 3, scope: !1604)
!1607 = !DILocation(line: 1231, column: 18, scope: !1608)
!1608 = distinct !DILexicalBlock(scope: !1599, file: !300, line: 1231, column: 12)
!1609 = !DILocation(line: 1231, column: 21, scope: !1608)
!1610 = !DILocation(line: 1231, column: 37, scope: !1608)
!1611 = !DILocation(line: 0, scope: !1608)
!1612 = !DILocation(line: 1231, column: 12, scope: !1599)
!1613 = !DILocation(line: 1233, column: 33, scope: !1614)
!1614 = distinct !DILexicalBlock(scope: !1608, file: !300, line: 1232, column: 3)
!1615 = !DILocation(line: 1234, column: 3, scope: !1614)
!1616 = !DILocation(line: 1237, column: 33, scope: !1617)
!1617 = distinct !DILexicalBlock(scope: !1608, file: !300, line: 1236, column: 3)
!1618 = !DILocation(line: 1239, column: 39, scope: !1590)
!1619 = !DILocation(line: 1239, column: 22, scope: !1590)
!1620 = !DILocation(line: 1239, column: 37, scope: !1590)
!1621 = !DILocation(line: 1242, column: 13, scope: !1622)
!1622 = distinct !DILexicalBlock(scope: !1590, file: !300, line: 1242, column: 7)
!1623 = !DILocation(line: 1242, column: 16, scope: !1622)
!1624 = !DILocation(line: 0, scope: !1622)
!1625 = !DILocation(line: 1251, column: 61, scope: !1590)
!1626 = !DILocation(line: 1251, column: 82, scope: !1590)
!1627 = !DILocation(line: 1251, column: 22, scope: !1590)
!1628 = !DILocation(line: 1251, column: 42, scope: !1590)
!1629 = !DILocation(line: 1254, column: 13, scope: !1630)
!1630 = distinct !DILexicalBlock(scope: !1590, file: !300, line: 1254, column: 7)
!1631 = !DILocation(line: 1254, column: 18, scope: !1630)
!1632 = !DILocation(line: 1254, column: 37, scope: !1630)
!1633 = !DILocation(line: 1254, column: 7, scope: !1590)
!1634 = !DILocation(line: 1256, column: 24, scope: !1635)
!1635 = distinct !DILexicalBlock(scope: !1630, file: !300, line: 1255, column: 3)
!1636 = !DILocation(line: 1256, column: 33, scope: !1635)
!1637 = !DILocation(line: 1257, column: 3, scope: !1635)
!1638 = !DILocation(line: 1258, column: 18, scope: !1639)
!1639 = distinct !DILexicalBlock(scope: !1630, file: !300, line: 1258, column: 12)
!1640 = !DILocation(line: 1258, column: 23, scope: !1639)
!1641 = !DILocation(line: 1258, column: 41, scope: !1639)
!1642 = !DILocation(line: 0, scope: !1639)
!1643 = !DILocation(line: 1258, column: 12, scope: !1630)
!1644 = !DILocation(line: 1260, column: 33, scope: !1645)
!1645 = distinct !DILexicalBlock(scope: !1639, file: !300, line: 1259, column: 3)
!1646 = !DILocation(line: 1261, column: 3, scope: !1645)
!1647 = !DILocation(line: 1264, column: 33, scope: !1648)
!1648 = distinct !DILexicalBlock(scope: !1639, file: !300, line: 1263, column: 3)
!1649 = !DILocation(line: 1268, column: 13, scope: !1650)
!1650 = distinct !DILexicalBlock(scope: !1590, file: !300, line: 1268, column: 7)
!1651 = !DILocation(line: 1268, column: 17, scope: !1650)
!1652 = !DILocation(line: 0, scope: !1650)
!1653 = !DILocation(line: 1279, column: 13, scope: !1654)
!1654 = distinct !DILexicalBlock(scope: !1590, file: !300, line: 1279, column: 7)
!1655 = !DILocation(line: 1279, column: 16, scope: !1654)
!1656 = !DILocation(line: 1279, column: 32, scope: !1654)
!1657 = !DILocation(line: 1279, column: 7, scope: !1590)
!1658 = !DILocation(line: 0, scope: !1654)
!1659 = !DILocation(line: 1287, column: 54, scope: !1590)
!1660 = !DILocation(line: 1287, column: 59, scope: !1590)
!1661 = !DILocation(line: 1287, column: 26, scope: !1590)
!1662 = !DILocation(line: 1287, column: 36, scope: !1590)
!1663 = !DILocation(line: 1288, column: 51, scope: !1590)
!1664 = !DILocation(line: 1288, column: 56, scope: !1590)
!1665 = !DILocation(line: 1288, column: 26, scope: !1590)
!1666 = !DILocation(line: 1288, column: 33, scope: !1590)
!1667 = !DILocation(line: 1302, column: 1, scope: !1590)
!1668 = distinct !DISubprogram(name: "HAL_RCC_GetClockConfig", scope: !300, file: !300, line: 1312, type: !1669, scopeLine: 1313, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !299, retainedNodes: !1671)
!1669 = !DISubroutineType(types: !1670)
!1670 = !{null, !1366, !204}
!1671 = !{!1672, !1673}
!1672 = !DILocalVariable(name: "RCC_ClkInitStruct", arg: 1, scope: !1668, file: !300, line: 1312, type: !1366)
!1673 = !DILocalVariable(name: "pFLatency", arg: 2, scope: !1668, file: !300, line: 1312, type: !204)
!1674 = !DILocation(line: 0, scope: !1668)
!1675 = !DILocation(line: 1319, column: 22, scope: !1668)
!1676 = !DILocation(line: 1319, column: 32, scope: !1668)
!1677 = !DILocation(line: 1322, column: 53, scope: !1668)
!1678 = !DILocation(line: 1322, column: 58, scope: !1668)
!1679 = !DILocation(line: 1322, column: 22, scope: !1668)
!1680 = !DILocation(line: 1322, column: 35, scope: !1668)
!1681 = !DILocation(line: 1325, column: 54, scope: !1668)
!1682 = !DILocation(line: 1325, column: 59, scope: !1668)
!1683 = !DILocation(line: 1325, column: 22, scope: !1668)
!1684 = !DILocation(line: 1325, column: 36, scope: !1668)
!1685 = !DILocation(line: 1328, column: 55, scope: !1668)
!1686 = !DILocation(line: 1328, column: 60, scope: !1668)
!1687 = !DILocation(line: 1328, column: 22, scope: !1668)
!1688 = !DILocation(line: 1328, column: 37, scope: !1668)
!1689 = !DILocation(line: 1331, column: 56, scope: !1668)
!1690 = !DILocation(line: 1331, column: 79, scope: !1668)
!1691 = !DILocation(line: 1331, column: 22, scope: !1668)
!1692 = !DILocation(line: 1331, column: 37, scope: !1668)
!1693 = !DILocation(line: 1335, column: 34, scope: !1668)
!1694 = !DILocation(line: 1335, column: 38, scope: !1668)
!1695 = !DILocation(line: 1335, column: 14, scope: !1668)
!1696 = !DILocation(line: 1340, column: 1, scope: !1668)
!1697 = distinct !DISubprogram(name: "HAL_RCC_NMI_IRQHandler", scope: !300, file: !300, line: 1347, type: !489, scopeLine: 1348, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !299, retainedNodes: !565)
!1698 = !DILocation(line: 1350, column: 7, scope: !1699)
!1699 = distinct !DILexicalBlock(scope: !1697, file: !300, line: 1350, column: 7)
!1700 = !DILocation(line: 1350, column: 7, scope: !1697)
!1701 = !DILocation(line: 1353, column: 5, scope: !1702)
!1702 = distinct !DILexicalBlock(scope: !1699, file: !300, line: 1351, column: 3)
!1703 = !DILocation(line: 1356, column: 5, scope: !1702)
!1704 = !DILocation(line: 1357, column: 3, scope: !1702)
!1705 = !DILocation(line: 1358, column: 1, scope: !1697)
!1706 = distinct !DISubprogram(name: "HAL_RCC_CSSCallback", scope: !300, file: !300, line: 1379, type: !489, scopeLine: 1380, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !299, retainedNodes: !565)
!1707 = !DILocation(line: 1384, column: 1, scope: !1706)
!1708 = distinct !DISubprogram(name: "HAL_Init", scope: !91, file: !91, line: 142, type: !903, scopeLine: 143, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !90, retainedNodes: !565)
!1709 = !DILocation(line: 152, column: 3, scope: !1708)
!1710 = !DILocation(line: 157, column: 3, scope: !1708)
!1711 = !DILocation(line: 160, column: 3, scope: !1708)
!1712 = !DILocation(line: 163, column: 3, scope: !1708)
!1713 = !DILocation(line: 166, column: 3, scope: !1708)
!1714 = distinct !DISubprogram(name: "HAL_InitTick", scope: !91, file: !91, line: 234, type: !1715, scopeLine: 235, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !90, retainedNodes: !1717)
!1715 = !DISubroutineType(types: !1716)
!1716 = !{!859, !19}
!1717 = !{!1718}
!1718 = !DILocalVariable(name: "TickPriority", arg: 1, scope: !1714, file: !91, line: 234, type: !19)
!1719 = !DILocation(line: 0, scope: !1714)
!1720 = !DILocation(line: 237, column: 26, scope: !1721)
!1721 = distinct !DILexicalBlock(scope: !1714, file: !91, line: 237, column: 7)
!1722 = !DILocation(line: 237, column: 53, scope: !1721)
!1723 = !DILocation(line: 237, column: 51, scope: !1721)
!1724 = !DILocation(line: 237, column: 42, scope: !1721)
!1725 = !DILocation(line: 237, column: 7, scope: !1721)
!1726 = !DILocation(line: 237, column: 66, scope: !1721)
!1727 = !DILocation(line: 237, column: 7, scope: !1714)
!1728 = !DILocation(line: 245, column: 5, scope: !1729)
!1729 = distinct !DILexicalBlock(scope: !1730, file: !91, line: 244, column: 3)
!1730 = distinct !DILexicalBlock(scope: !1714, file: !91, line: 243, column: 7)
!1731 = !DILocation(line: 246, column: 16, scope: !1729)
!1732 = !DILocation(line: 254, column: 3, scope: !1714)
!1733 = !DILocation(line: 255, column: 1, scope: !1714)
!1734 = distinct !DISubprogram(name: "HAL_MspInit", scope: !91, file: !91, line: 200, type: !489, scopeLine: 201, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !90, retainedNodes: !565)
!1735 = !DILocation(line: 205, column: 1, scope: !1734)
!1736 = distinct !DISubprogram(name: "HAL_DeInit", scope: !91, file: !91, line: 175, type: !903, scopeLine: 176, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !90, retainedNodes: !565)
!1737 = !DILocation(line: 178, column: 3, scope: !1736)
!1738 = !{!571, !572, i64 12}
!1739 = !DILocation(line: 179, column: 3, scope: !1736)
!1740 = !{!571, !572, i64 16}
!1741 = !DILocation(line: 181, column: 3, scope: !1736)
!1742 = !DILocation(line: 182, column: 3, scope: !1736)
!1743 = !DILocation(line: 190, column: 3, scope: !1736)
!1744 = !DILocation(line: 193, column: 3, scope: !1736)
!1745 = distinct !DISubprogram(name: "HAL_MspDeInit", scope: !91, file: !91, line: 211, type: !489, scopeLine: 212, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !90, retainedNodes: !565)
!1746 = !DILocation(line: 216, column: 1, scope: !1745)
!1747 = distinct !DISubprogram(name: "HAL_IncTick", scope: !91, file: !91, line: 293, type: !489, scopeLine: 294, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !90, retainedNodes: !565)
!1748 = !DILocation(line: 295, column: 13, scope: !1747)
!1749 = !DILocation(line: 295, column: 10, scope: !1747)
!1750 = !DILocation(line: 296, column: 1, scope: !1747)
!1751 = distinct !DISubprogram(name: "HAL_GetTick", scope: !91, file: !91, line: 304, type: !1498, scopeLine: 305, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !90, retainedNodes: !565)
!1752 = !DILocation(line: 306, column: 10, scope: !1751)
!1753 = !DILocation(line: 306, column: 3, scope: !1751)
!1754 = distinct !DISubprogram(name: "HAL_GetTickPrio", scope: !91, file: !91, line: 313, type: !1498, scopeLine: 314, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !90, retainedNodes: !565)
!1755 = !DILocation(line: 315, column: 10, scope: !1754)
!1756 = !DILocation(line: 315, column: 3, scope: !1754)
!1757 = distinct !DISubprogram(name: "HAL_SetTickFreq", scope: !91, file: !91, line: 322, type: !1758, scopeLine: 323, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !90, retainedNodes: !1760)
!1758 = !DISubroutineType(types: !1759)
!1759 = !{!859, !208}
!1760 = !{!1761, !1762}
!1761 = !DILocalVariable(name: "Freq", arg: 1, scope: !1757, file: !91, line: 322, type: !208)
!1762 = !DILocalVariable(name: "status", scope: !1757, file: !91, line: 324, type: !859)
!1763 = !DILocation(line: 0, scope: !1757)
!1764 = !DILocation(line: 327, column: 7, scope: !1765)
!1765 = distinct !DILexicalBlock(scope: !1757, file: !91, line: 327, column: 7)
!1766 = !DILocation(line: 327, column: 18, scope: !1765)
!1767 = !DILocation(line: 327, column: 7, scope: !1757)
!1768 = !DILocation(line: 330, column: 27, scope: !1769)
!1769 = distinct !DILexicalBlock(scope: !1765, file: !91, line: 328, column: 3)
!1770 = !DILocation(line: 330, column: 14, scope: !1769)
!1771 = !DILocation(line: 331, column: 16, scope: !1772)
!1772 = distinct !DILexicalBlock(scope: !1769, file: !91, line: 331, column: 9)
!1773 = !DILocation(line: 331, column: 9, scope: !1769)
!1774 = !DILocation(line: 333, column: 18, scope: !1775)
!1775 = distinct !DILexicalBlock(scope: !1772, file: !91, line: 332, column: 5)
!1776 = !DILocation(line: 334, column: 5, scope: !1775)
!1777 = !DILocation(line: 337, column: 3, scope: !1757)
!1778 = distinct !DISubprogram(name: "HAL_GetTickFreq", scope: !91, file: !91, line: 344, type: !1779, scopeLine: 345, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !90, retainedNodes: !565)
!1779 = !DISubroutineType(types: !1780)
!1780 = !{!208}
!1781 = !DILocation(line: 346, column: 10, scope: !1778)
!1782 = !DILocation(line: 346, column: 3, scope: !1778)
!1783 = distinct !DISubprogram(name: "HAL_Delay", scope: !91, file: !91, line: 360, type: !1344, scopeLine: 361, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !90, retainedNodes: !1784)
!1784 = !{!1785, !1786, !1787}
!1785 = !DILocalVariable(name: "Delay", arg: 1, scope: !1783, file: !91, line: 360, type: !19)
!1786 = !DILocalVariable(name: "tickstart", scope: !1783, file: !91, line: 362, type: !19)
!1787 = !DILocalVariable(name: "wait", scope: !1783, file: !91, line: 363, type: !19)
!1788 = !DILocation(line: 0, scope: !1783)
!1789 = !DILocation(line: 362, column: 24, scope: !1783)
!1790 = !DILocation(line: 366, column: 12, scope: !1791)
!1791 = distinct !DILexicalBlock(scope: !1783, file: !91, line: 366, column: 7)
!1792 = !DILocation(line: 366, column: 7, scope: !1783)
!1793 = !DILocation(line: 371, column: 3, scope: !1783)
!1794 = !DILocation(line: 371, column: 11, scope: !1783)
!1795 = !DILocation(line: 371, column: 25, scope: !1783)
!1796 = !DILocation(line: 371, column: 38, scope: !1783)
!1797 = distinct !{!1797, !1793, !1798, !486, !487}
!1798 = !DILocation(line: 373, column: 3, scope: !1783)
!1799 = !DILocation(line: 374, column: 1, scope: !1783)
!1800 = distinct !DISubprogram(name: "HAL_SuspendTick", scope: !91, file: !91, line: 386, type: !489, scopeLine: 387, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !90, retainedNodes: !565)
!1801 = !DILocation(line: 389, column: 3, scope: !1800)
!1802 = !DILocation(line: 390, column: 1, scope: !1800)
!1803 = distinct !DISubprogram(name: "HAL_ResumeTick", scope: !91, file: !91, line: 402, type: !489, scopeLine: 403, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !90, retainedNodes: !565)
!1804 = !DILocation(line: 405, column: 3, scope: !1803)
!1805 = !DILocation(line: 406, column: 1, scope: !1803)
!1806 = distinct !DISubprogram(name: "HAL_GetHalVersion", scope: !91, file: !91, line: 412, type: !1498, scopeLine: 413, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !90, retainedNodes: !565)
!1807 = !DILocation(line: 414, column: 3, scope: !1806)
!1808 = distinct !DISubprogram(name: "HAL_GetREVID", scope: !91, file: !91, line: 428, type: !1498, scopeLine: 429, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !90, retainedNodes: !565)
!1809 = !DILocation(line: 430, column: 20, scope: !1808)
!1810 = !DILocation(line: 430, column: 28, scope: !1808)
!1811 = !DILocation(line: 430, column: 3, scope: !1808)
!1812 = distinct !DISubprogram(name: "HAL_GetDEVID", scope: !91, file: !91, line: 444, type: !1498, scopeLine: 445, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !90, retainedNodes: !565)
!1813 = !DILocation(line: 446, column: 20, scope: !1812)
!1814 = !DILocation(line: 446, column: 28, scope: !1812)
!1815 = !DILocation(line: 446, column: 3, scope: !1812)
!1816 = distinct !DISubprogram(name: "HAL_GetUIDw0", scope: !91, file: !91, line: 453, type: !1498, scopeLine: 454, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !90, retainedNodes: !565)
!1817 = !DILocation(line: 455, column: 11, scope: !1816)
!1818 = !DILocation(line: 455, column: 4, scope: !1816)
!1819 = distinct !DISubprogram(name: "HAL_GetUIDw1", scope: !91, file: !91, line: 462, type: !1498, scopeLine: 463, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !90, retainedNodes: !565)
!1820 = !DILocation(line: 464, column: 11, scope: !1819)
!1821 = !DILocation(line: 464, column: 4, scope: !1819)
!1822 = distinct !DISubprogram(name: "HAL_GetUIDw2", scope: !91, file: !91, line: 471, type: !1498, scopeLine: 472, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !90, retainedNodes: !565)
!1823 = !DILocation(line: 473, column: 11, scope: !1822)
!1824 = !DILocation(line: 473, column: 4, scope: !1822)
!1825 = distinct !DISubprogram(name: "HAL_DBGMCU_EnableDBGSleepMode", scope: !91, file: !91, line: 480, type: !489, scopeLine: 481, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !90, retainedNodes: !565)
!1826 = !DILocation(line: 482, column: 3, scope: !1825)
!1827 = !{!1198, !572, i64 4}
!1828 = !DILocation(line: 483, column: 1, scope: !1825)
!1829 = distinct !DISubprogram(name: "HAL_DBGMCU_DisableDBGSleepMode", scope: !91, file: !91, line: 496, type: !489, scopeLine: 497, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !90, retainedNodes: !565)
!1830 = !DILocation(line: 498, column: 3, scope: !1829)
!1831 = !DILocation(line: 499, column: 1, scope: !1829)
!1832 = distinct !DISubprogram(name: "HAL_DBGMCU_EnableDBGStopMode", scope: !91, file: !91, line: 526, type: !489, scopeLine: 527, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !90, retainedNodes: !565)
!1833 = !DILocation(line: 528, column: 3, scope: !1832)
!1834 = !DILocation(line: 529, column: 1, scope: !1832)
!1835 = distinct !DISubprogram(name: "HAL_DBGMCU_DisableDBGStopMode", scope: !91, file: !91, line: 542, type: !489, scopeLine: 543, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !90, retainedNodes: !565)
!1836 = !DILocation(line: 544, column: 3, scope: !1835)
!1837 = !DILocation(line: 545, column: 1, scope: !1835)
!1838 = distinct !DISubprogram(name: "HAL_DBGMCU_EnableDBGStandbyMode", scope: !91, file: !91, line: 558, type: !489, scopeLine: 559, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !90, retainedNodes: !565)
!1839 = !DILocation(line: 560, column: 3, scope: !1838)
!1840 = !DILocation(line: 561, column: 1, scope: !1838)
!1841 = distinct !DISubprogram(name: "HAL_DBGMCU_DisableDBGStandbyMode", scope: !91, file: !91, line: 574, type: !489, scopeLine: 575, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !90, retainedNodes: !565)
!1842 = !DILocation(line: 576, column: 3, scope: !1841)
!1843 = !DILocation(line: 577, column: 1, scope: !1841)
!1844 = distinct !DISubprogram(name: "HAL_NVIC_SetPriorityGrouping", scope: !355, file: !355, line: 143, type: !1344, scopeLine: 144, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !354, retainedNodes: !1845)
!1845 = !{!1846}
!1846 = !DILocalVariable(name: "PriorityGroup", arg: 1, scope: !1844, file: !355, line: 143, type: !19)
!1847 = !DILocation(line: 0, scope: !1844)
!1848 = !DILocation(line: 149, column: 3, scope: !1844)
!1849 = !DILocation(line: 150, column: 1, scope: !1844)
!1850 = distinct !DISubprogram(name: "__NVIC_SetPriorityGrouping", scope: !34, file: !34, line: 1480, type: !1344, scopeLine: 1481, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !354, retainedNodes: !1851)
!1851 = !{!1852, !1853, !1854}
!1852 = !DILocalVariable(name: "PriorityGroup", arg: 1, scope: !1850, file: !34, line: 1480, type: !19)
!1853 = !DILocalVariable(name: "reg_value", scope: !1850, file: !34, line: 1482, type: !19)
!1854 = !DILocalVariable(name: "PriorityGroupTmp", scope: !1850, file: !34, line: 1483, type: !19)
!1855 = !DILocation(line: 0, scope: !1850)
!1856 = !DILocation(line: 1485, column: 22, scope: !1850)
!1857 = !{!584, !572, i64 12}
!1858 = !DILocation(line: 1486, column: 13, scope: !1850)
!1859 = !DILocation(line: 1489, column: 35, scope: !1850)
!1860 = !DILocation(line: 1488, column: 62, scope: !1850)
!1861 = !DILocation(line: 1490, column: 14, scope: !1850)
!1862 = !DILocation(line: 1491, column: 1, scope: !1850)
!1863 = distinct !DISubprogram(name: "HAL_NVIC_SetPriority", scope: !355, file: !355, line: 165, type: !1864, scopeLine: 166, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !354, retainedNodes: !1867)
!1864 = !DISubroutineType(types: !1865)
!1865 = !{null, !1866, !19, !19}
!1866 = !DIDerivedType(tag: DW_TAG_typedef, name: "IRQn_Type", file: !14, line: 126, baseType: !107)
!1867 = !{!1868, !1869, !1870, !1871}
!1868 = !DILocalVariable(name: "IRQn", arg: 1, scope: !1863, file: !355, line: 165, type: !1866)
!1869 = !DILocalVariable(name: "PreemptPriority", arg: 2, scope: !1863, file: !355, line: 165, type: !19)
!1870 = !DILocalVariable(name: "SubPriority", arg: 3, scope: !1863, file: !355, line: 165, type: !19)
!1871 = !DILocalVariable(name: "prioritygroup", scope: !1863, file: !355, line: 167, type: !19)
!1872 = !DILocation(line: 0, scope: !1863)
!1873 = !DILocation(line: 173, column: 19, scope: !1863)
!1874 = !{i32 0, i32 8}
!1875 = !DILocation(line: 175, column: 26, scope: !1863)
!1876 = !DILocation(line: 175, column: 3, scope: !1863)
!1877 = !DILocation(line: 176, column: 1, scope: !1863)
!1878 = distinct !DISubprogram(name: "__NVIC_GetPriorityGrouping", scope: !34, file: !34, line: 1499, type: !1498, scopeLine: 1500, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !354, retainedNodes: !565)
!1879 = !DILocation(line: 1501, column: 28, scope: !1878)
!1880 = !DILocation(line: 1501, column: 60, scope: !1878)
!1881 = !DILocation(line: 1501, column: 3, scope: !1878)
!1882 = distinct !DISubprogram(name: "NVIC_EncodePriority", scope: !34, file: !34, line: 1686, type: !1883, scopeLine: 1687, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !354, retainedNodes: !1885)
!1883 = !DISubroutineType(types: !1884)
!1884 = !{!19, !19, !19, !19}
!1885 = !{!1886, !1887, !1888, !1889, !1890, !1891}
!1886 = !DILocalVariable(name: "PriorityGroup", arg: 1, scope: !1882, file: !34, line: 1686, type: !19)
!1887 = !DILocalVariable(name: "PreemptPriority", arg: 2, scope: !1882, file: !34, line: 1686, type: !19)
!1888 = !DILocalVariable(name: "SubPriority", arg: 3, scope: !1882, file: !34, line: 1686, type: !19)
!1889 = !DILocalVariable(name: "PriorityGroupTmp", scope: !1882, file: !34, line: 1688, type: !19)
!1890 = !DILocalVariable(name: "PreemptPriorityBits", scope: !1882, file: !34, line: 1689, type: !19)
!1891 = !DILocalVariable(name: "SubPriorityBits", scope: !1882, file: !34, line: 1690, type: !19)
!1892 = !DILocation(line: 0, scope: !1882)
!1893 = !DILocation(line: 1688, column: 46, scope: !1882)
!1894 = !DILocation(line: 1692, column: 31, scope: !1882)
!1895 = !DILocation(line: 1692, column: 25, scope: !1882)
!1896 = !DILocation(line: 1693, column: 25, scope: !1882)
!1897 = !DILocation(line: 1696, column: 74, scope: !1882)
!1898 = !DILocation(line: 1696, column: 30, scope: !1882)
!1899 = !DILocation(line: 1696, column: 82, scope: !1882)
!1900 = !DILocation(line: 1697, column: 74, scope: !1882)
!1901 = !DILocation(line: 1697, column: 30, scope: !1882)
!1902 = !DILocation(line: 1696, column: 102, scope: !1882)
!1903 = !DILocation(line: 1695, column: 3, scope: !1882)
!1904 = distinct !DISubprogram(name: "__NVIC_SetPriority", scope: !34, file: !34, line: 1639, type: !1905, scopeLine: 1640, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !354, retainedNodes: !1907)
!1905 = !DISubroutineType(types: !1906)
!1906 = !{null, !1866, !19}
!1907 = !{!1908, !1909}
!1908 = !DILocalVariable(name: "IRQn", arg: 1, scope: !1904, file: !34, line: 1639, type: !1866)
!1909 = !DILocalVariable(name: "priority", arg: 2, scope: !1904, file: !34, line: 1639, type: !19)
!1910 = !DILocation(line: 0, scope: !1904)
!1911 = !DILocation(line: 0, scope: !1912)
!1912 = distinct !DILexicalBlock(scope: !1904, file: !34, line: 1641, column: 7)
!1913 = !DILocation(line: 1641, column: 7, scope: !1904)
!1914 = !DILocation(line: 1649, column: 1, scope: !1904)
!1915 = distinct !DISubprogram(name: "HAL_NVIC_EnableIRQ", scope: !355, file: !355, line: 187, type: !1916, scopeLine: 188, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !354, retainedNodes: !1918)
!1916 = !DISubroutineType(types: !1917)
!1917 = !{null, !1866}
!1918 = !{!1919}
!1919 = !DILocalVariable(name: "IRQn", arg: 1, scope: !1915, file: !355, line: 187, type: !1866)
!1920 = !DILocation(line: 0, scope: !1915)
!1921 = !DILocation(line: 193, column: 3, scope: !1915)
!1922 = !DILocation(line: 194, column: 1, scope: !1915)
!1923 = distinct !DISubprogram(name: "__NVIC_EnableIRQ", scope: !34, file: !34, line: 1511, type: !1916, scopeLine: 1512, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !354, retainedNodes: !1924)
!1924 = !{!1925}
!1925 = !DILocalVariable(name: "IRQn", arg: 1, scope: !1923, file: !34, line: 1511, type: !1866)
!1926 = !DILocation(line: 0, scope: !1923)
!1927 = !DILocation(line: 1513, column: 23, scope: !1928)
!1928 = distinct !DILexicalBlock(scope: !1923, file: !34, line: 1513, column: 7)
!1929 = !DILocation(line: 1513, column: 7, scope: !1923)
!1930 = !DILocation(line: 1515, column: 81, scope: !1931)
!1931 = distinct !DILexicalBlock(scope: !1928, file: !34, line: 1514, column: 3)
!1932 = !DILocation(line: 1515, column: 60, scope: !1931)
!1933 = !DILocation(line: 1515, column: 34, scope: !1931)
!1934 = !DILocation(line: 1515, column: 5, scope: !1931)
!1935 = !DILocation(line: 1515, column: 43, scope: !1931)
!1936 = !DILocation(line: 1516, column: 3, scope: !1931)
!1937 = !DILocation(line: 1517, column: 1, scope: !1923)
!1938 = distinct !DISubprogram(name: "HAL_NVIC_DisableIRQ", scope: !355, file: !355, line: 203, type: !1916, scopeLine: 204, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !354, retainedNodes: !1939)
!1939 = !{!1940}
!1940 = !DILocalVariable(name: "IRQn", arg: 1, scope: !1938, file: !355, line: 203, type: !1866)
!1941 = !DILocation(line: 0, scope: !1938)
!1942 = !DILocation(line: 209, column: 3, scope: !1938)
!1943 = !DILocation(line: 210, column: 1, scope: !1938)
!1944 = distinct !DISubprogram(name: "__NVIC_DisableIRQ", scope: !34, file: !34, line: 1547, type: !1916, scopeLine: 1548, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !354, retainedNodes: !1945)
!1945 = !{!1946}
!1946 = !DILocalVariable(name: "IRQn", arg: 1, scope: !1944, file: !34, line: 1547, type: !1866)
!1947 = !DILocation(line: 0, scope: !1944)
!1948 = !DILocation(line: 1549, column: 23, scope: !1949)
!1949 = distinct !DILexicalBlock(scope: !1944, file: !34, line: 1549, column: 7)
!1950 = !DILocation(line: 1549, column: 7, scope: !1944)
!1951 = !DILocation(line: 1551, column: 81, scope: !1952)
!1952 = distinct !DILexicalBlock(scope: !1949, file: !34, line: 1550, column: 3)
!1953 = !DILocation(line: 1551, column: 60, scope: !1952)
!1954 = !DILocation(line: 1551, column: 34, scope: !1952)
!1955 = !DILocation(line: 1551, column: 5, scope: !1952)
!1956 = !DILocation(line: 1551, column: 43, scope: !1952)
!1957 = !DILocation(line: 879, column: 3, scope: !1958, inlinedAt: !1960)
!1958 = distinct !DISubprogram(name: "__DSB", scope: !1959, file: !1959, line: 877, type: !489, scopeLine: 878, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !354, retainedNodes: !565)
!1959 = !DIFile(filename: "../dep/STM32Cube_FW_F1_V1.8.0/Drivers/CMSIS/Include/cmsis_gcc.h", directory: "/home/mjshen/RTOSExploration/Cicada-FW/build", checksumkind: CSK_MD5, checksum: "ba7e4770884341336138fcec9d34fc09")
!1960 = distinct !DILocation(line: 1552, column: 5, scope: !1952)
!1961 = !{i64 1222529}
!1962 = !DILocation(line: 868, column: 3, scope: !1963, inlinedAt: !1964)
!1963 = distinct !DISubprogram(name: "__ISB", scope: !1959, file: !1959, line: 866, type: !489, scopeLine: 867, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !354, retainedNodes: !565)
!1964 = distinct !DILocation(line: 1553, column: 5, scope: !1952)
!1965 = !{i64 1222235}
!1966 = !DILocation(line: 1554, column: 3, scope: !1952)
!1967 = !DILocation(line: 1555, column: 1, scope: !1944)
!1968 = distinct !DISubprogram(name: "HAL_NVIC_SystemReset", scope: !355, file: !355, line: 216, type: !489, scopeLine: 217, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !354, retainedNodes: !565)
!1969 = !DILocation(line: 219, column: 3, scope: !1968)
!1970 = distinct !DISubprogram(name: "__NVIC_SystemReset", scope: !34, file: !34, line: 1762, type: !489, scopeLine: 1763, flags: DIFlagPrototyped | DIFlagNoReturn | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !354, retainedNodes: !565)
!1971 = !DILocation(line: 879, column: 3, scope: !1958, inlinedAt: !1972)
!1972 = distinct !DILocation(line: 1764, column: 3, scope: !1970)
!1973 = !DILocation(line: 1767, column: 34, scope: !1970)
!1974 = !DILocation(line: 1767, column: 40, scope: !1970)
!1975 = !DILocation(line: 1767, column: 66, scope: !1970)
!1976 = !DILocation(line: 1766, column: 15, scope: !1970)
!1977 = !DILocation(line: 879, column: 3, scope: !1958, inlinedAt: !1978)
!1978 = distinct !DILocation(line: 1769, column: 3, scope: !1970)
!1979 = !DILocation(line: 1771, column: 3, scope: !1970)
!1980 = !DILocation(line: 1773, column: 5, scope: !1981)
!1981 = distinct !DILexicalBlock(scope: !1982, file: !34, line: 1772, column: 3)
!1982 = distinct !DILexicalBlock(scope: !1983, file: !34, line: 1771, column: 3)
!1983 = distinct !DILexicalBlock(scope: !1970, file: !34, line: 1771, column: 3)
!1984 = !{i64 2148746398}
!1985 = !DILocation(line: 1771, column: 3, scope: !1982)
!1986 = distinct !{!1986, !1987, !1988, !487}
!1987 = !DILocation(line: 1771, column: 3, scope: !1983)
!1988 = !DILocation(line: 1774, column: 3, scope: !1983)
!1989 = distinct !DISubprogram(name: "HAL_SYSTICK_Config", scope: !355, file: !355, line: 229, type: !1990, scopeLine: 230, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !354, retainedNodes: !1992)
!1990 = !DISubroutineType(types: !1991)
!1991 = !{!19, !19}
!1992 = !{!1993}
!1993 = !DILocalVariable(name: "TicksNumb", arg: 1, scope: !1989, file: !355, line: 229, type: !19)
!1994 = !DILocation(line: 0, scope: !1989)
!1995 = !DILocation(line: 231, column: 11, scope: !1989)
!1996 = !DILocation(line: 231, column: 4, scope: !1989)
!1997 = distinct !DISubprogram(name: "SysTick_Config", scope: !34, file: !34, line: 1834, type: !1990, scopeLine: 1835, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !354, retainedNodes: !1998)
!1998 = !{!1999}
!1999 = !DILocalVariable(name: "ticks", arg: 1, scope: !1997, file: !34, line: 1834, type: !19)
!2000 = !DILocation(line: 0, scope: !1997)
!2001 = !DILocation(line: 1836, column: 14, scope: !2002)
!2002 = distinct !DILexicalBlock(scope: !1997, file: !34, line: 1836, column: 7)
!2003 = !DILocation(line: 1836, column: 21, scope: !2002)
!2004 = !DILocation(line: 1836, column: 7, scope: !1997)
!2005 = !DILocation(line: 1841, column: 18, scope: !1997)
!2006 = !DILocation(line: 1842, column: 3, scope: !1997)
!2007 = !DILocation(line: 1843, column: 18, scope: !1997)
!2008 = !DILocation(line: 1844, column: 18, scope: !1997)
!2009 = !DILocation(line: 1847, column: 3, scope: !1997)
!2010 = !DILocation(line: 1848, column: 1, scope: !1997)
!2011 = distinct !DISubprogram(name: "HAL_NVIC_GetPriorityGrouping", scope: !355, file: !355, line: 344, type: !1498, scopeLine: 345, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !354, retainedNodes: !565)
!2012 = !DILocation(line: 347, column: 10, scope: !2011)
!2013 = !DILocation(line: 347, column: 3, scope: !2011)
!2014 = distinct !DISubprogram(name: "HAL_NVIC_GetPriority", scope: !355, file: !355, line: 371, type: !2015, scopeLine: 372, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !354, retainedNodes: !2017)
!2015 = !DISubroutineType(types: !2016)
!2016 = !{null, !1866, !19, !204, !204}
!2017 = !{!2018, !2019, !2020, !2021}
!2018 = !DILocalVariable(name: "IRQn", arg: 1, scope: !2014, file: !355, line: 371, type: !1866)
!2019 = !DILocalVariable(name: "PriorityGroup", arg: 2, scope: !2014, file: !355, line: 371, type: !19)
!2020 = !DILocalVariable(name: "pPreemptPriority", arg: 3, scope: !2014, file: !355, line: 371, type: !204)
!2021 = !DILocalVariable(name: "pSubPriority", arg: 4, scope: !2014, file: !355, line: 371, type: !204)
!2022 = !DILocation(line: 0, scope: !2014)
!2023 = !DILocation(line: 376, column: 23, scope: !2014)
!2024 = !{i32 0, i32 16}
!2025 = !DILocation(line: 376, column: 3, scope: !2014)
!2026 = !DILocation(line: 377, column: 1, scope: !2014)
!2027 = distinct !DISubprogram(name: "__NVIC_GetPriority", scope: !34, file: !34, line: 1661, type: !2028, scopeLine: 1662, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !354, retainedNodes: !2030)
!2028 = !DISubroutineType(types: !2029)
!2029 = !{!19, !1866}
!2030 = !{!2031}
!2031 = !DILocalVariable(name: "IRQn", arg: 1, scope: !2027, file: !34, line: 1661, type: !1866)
!2032 = !DILocation(line: 0, scope: !2027)
!2033 = !DILocation(line: 1664, column: 7, scope: !2027)
!2034 = !DILocation(line: 0, scope: !2035)
!2035 = distinct !DILexicalBlock(scope: !2027, file: !34, line: 1664, column: 7)
!2036 = !DILocation(line: 1672, column: 1, scope: !2027)
!2037 = distinct !DISubprogram(name: "NVIC_DecodePriority", scope: !34, file: !34, line: 1713, type: !2038, scopeLine: 1714, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !354, retainedNodes: !2041)
!2038 = !DISubroutineType(types: !2039)
!2039 = !{null, !19, !19, !2040, !2040}
!2040 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !204)
!2041 = !{!2042, !2043, !2044, !2045, !2046, !2047, !2048}
!2042 = !DILocalVariable(name: "Priority", arg: 1, scope: !2037, file: !34, line: 1713, type: !19)
!2043 = !DILocalVariable(name: "PriorityGroup", arg: 2, scope: !2037, file: !34, line: 1713, type: !19)
!2044 = !DILocalVariable(name: "pPreemptPriority", arg: 3, scope: !2037, file: !34, line: 1713, type: !2040)
!2045 = !DILocalVariable(name: "pSubPriority", arg: 4, scope: !2037, file: !34, line: 1713, type: !2040)
!2046 = !DILocalVariable(name: "PriorityGroupTmp", scope: !2037, file: !34, line: 1715, type: !19)
!2047 = !DILocalVariable(name: "PreemptPriorityBits", scope: !2037, file: !34, line: 1716, type: !19)
!2048 = !DILocalVariable(name: "SubPriorityBits", scope: !2037, file: !34, line: 1717, type: !19)
!2049 = !DILocation(line: 0, scope: !2037)
!2050 = !DILocation(line: 1715, column: 46, scope: !2037)
!2051 = !DILocation(line: 1719, column: 31, scope: !2037)
!2052 = !DILocation(line: 1719, column: 25, scope: !2037)
!2053 = !DILocation(line: 1720, column: 25, scope: !2037)
!2054 = !DILocation(line: 1722, column: 33, scope: !2037)
!2055 = !DILocation(line: 1722, column: 97, scope: !2037)
!2056 = !DILocation(line: 1722, column: 53, scope: !2037)
!2057 = !DILocation(line: 1722, column: 21, scope: !2037)
!2058 = !DILocation(line: 1723, column: 97, scope: !2037)
!2059 = !DILocation(line: 1723, column: 53, scope: !2037)
!2060 = !DILocation(line: 1723, column: 21, scope: !2037)
!2061 = !DILocation(line: 1724, column: 1, scope: !2037)
!2062 = distinct !DISubprogram(name: "HAL_NVIC_SetPendingIRQ", scope: !355, file: !355, line: 386, type: !1916, scopeLine: 387, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !354, retainedNodes: !2063)
!2063 = !{!2064}
!2064 = !DILocalVariable(name: "IRQn", arg: 1, scope: !2062, file: !355, line: 386, type: !1866)
!2065 = !DILocation(line: 0, scope: !2062)
!2066 = !DILocation(line: 392, column: 3, scope: !2062)
!2067 = !DILocation(line: 393, column: 1, scope: !2062)
!2068 = distinct !DISubprogram(name: "__NVIC_SetPendingIRQ", scope: !34, file: !34, line: 1585, type: !1916, scopeLine: 1586, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !354, retainedNodes: !2069)
!2069 = !{!2070}
!2070 = !DILocalVariable(name: "IRQn", arg: 1, scope: !2068, file: !34, line: 1585, type: !1866)
!2071 = !DILocation(line: 0, scope: !2068)
!2072 = !DILocation(line: 1587, column: 23, scope: !2073)
!2073 = distinct !DILexicalBlock(scope: !2068, file: !34, line: 1587, column: 7)
!2074 = !DILocation(line: 1587, column: 7, scope: !2068)
!2075 = !DILocation(line: 1589, column: 81, scope: !2076)
!2076 = distinct !DILexicalBlock(scope: !2073, file: !34, line: 1588, column: 3)
!2077 = !DILocation(line: 1589, column: 60, scope: !2076)
!2078 = !DILocation(line: 1589, column: 34, scope: !2076)
!2079 = !DILocation(line: 1589, column: 5, scope: !2076)
!2080 = !DILocation(line: 1589, column: 43, scope: !2076)
!2081 = !DILocation(line: 1590, column: 3, scope: !2076)
!2082 = !DILocation(line: 1591, column: 1, scope: !2068)
!2083 = distinct !DISubprogram(name: "HAL_NVIC_GetPendingIRQ", scope: !355, file: !355, line: 404, type: !2028, scopeLine: 405, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !354, retainedNodes: !2084)
!2084 = !{!2085}
!2085 = !DILocalVariable(name: "IRQn", arg: 1, scope: !2083, file: !355, line: 404, type: !1866)
!2086 = !DILocation(line: 0, scope: !2083)
!2087 = !DILocation(line: 410, column: 10, scope: !2083)
!2088 = !DILocation(line: 410, column: 3, scope: !2083)
!2089 = distinct !DISubprogram(name: "__NVIC_GetPendingIRQ", scope: !34, file: !34, line: 1566, type: !2028, scopeLine: 1567, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !354, retainedNodes: !2090)
!2090 = !{!2091}
!2091 = !DILocalVariable(name: "IRQn", arg: 1, scope: !2089, file: !34, line: 1566, type: !1866)
!2092 = !DILocation(line: 0, scope: !2089)
!2093 = !DILocation(line: 1568, column: 23, scope: !2094)
!2094 = distinct !DILexicalBlock(scope: !2089, file: !34, line: 1568, column: 7)
!2095 = !DILocation(line: 1568, column: 7, scope: !2089)
!2096 = !DILocation(line: 1570, column: 54, scope: !2097)
!2097 = distinct !DILexicalBlock(scope: !2094, file: !34, line: 1569, column: 3)
!2098 = !DILocation(line: 1570, column: 25, scope: !2097)
!2099 = !DILocation(line: 1570, column: 91, scope: !2097)
!2100 = !DILocation(line: 1570, column: 23, scope: !2097)
!2101 = !DILocation(line: 1570, column: 5, scope: !2097)
!2102 = !DILocation(line: 0, scope: !2094)
!2103 = !DILocation(line: 1576, column: 1, scope: !2089)
!2104 = distinct !DISubprogram(name: "HAL_NVIC_ClearPendingIRQ", scope: !355, file: !355, line: 420, type: !1916, scopeLine: 421, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !354, retainedNodes: !2105)
!2105 = !{!2106}
!2106 = !DILocalVariable(name: "IRQn", arg: 1, scope: !2104, file: !355, line: 420, type: !1866)
!2107 = !DILocation(line: 0, scope: !2104)
!2108 = !DILocation(line: 426, column: 3, scope: !2104)
!2109 = !DILocation(line: 427, column: 1, scope: !2104)
!2110 = distinct !DISubprogram(name: "__NVIC_ClearPendingIRQ", scope: !34, file: !34, line: 1600, type: !1916, scopeLine: 1601, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !354, retainedNodes: !2111)
!2111 = !{!2112}
!2112 = !DILocalVariable(name: "IRQn", arg: 1, scope: !2110, file: !34, line: 1600, type: !1866)
!2113 = !DILocation(line: 0, scope: !2110)
!2114 = !DILocation(line: 1602, column: 23, scope: !2115)
!2115 = distinct !DILexicalBlock(scope: !2110, file: !34, line: 1602, column: 7)
!2116 = !DILocation(line: 1602, column: 7, scope: !2110)
!2117 = !DILocation(line: 1604, column: 81, scope: !2118)
!2118 = distinct !DILexicalBlock(scope: !2115, file: !34, line: 1603, column: 3)
!2119 = !DILocation(line: 1604, column: 60, scope: !2118)
!2120 = !DILocation(line: 1604, column: 34, scope: !2118)
!2121 = !DILocation(line: 1604, column: 5, scope: !2118)
!2122 = !DILocation(line: 1604, column: 43, scope: !2118)
!2123 = !DILocation(line: 1605, column: 3, scope: !2118)
!2124 = !DILocation(line: 1606, column: 1, scope: !2110)
!2125 = distinct !DISubprogram(name: "HAL_NVIC_GetActive", scope: !355, file: !355, line: 437, type: !2028, scopeLine: 438, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !354, retainedNodes: !2126)
!2126 = !{!2127}
!2127 = !DILocalVariable(name: "IRQn", arg: 1, scope: !2125, file: !355, line: 437, type: !1866)
!2128 = !DILocation(line: 0, scope: !2125)
!2129 = !DILocation(line: 443, column: 10, scope: !2125)
!2130 = !DILocation(line: 443, column: 3, scope: !2125)
!2131 = distinct !DISubprogram(name: "__NVIC_GetActive", scope: !34, file: !34, line: 1617, type: !2028, scopeLine: 1618, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !354, retainedNodes: !2132)
!2132 = !{!2133}
!2133 = !DILocalVariable(name: "IRQn", arg: 1, scope: !2131, file: !34, line: 1617, type: !1866)
!2134 = !DILocation(line: 0, scope: !2131)
!2135 = !DILocation(line: 1619, column: 23, scope: !2136)
!2136 = distinct !DILexicalBlock(scope: !2131, file: !34, line: 1619, column: 7)
!2137 = !DILocation(line: 1619, column: 7, scope: !2131)
!2138 = !DILocation(line: 1621, column: 54, scope: !2139)
!2139 = distinct !DILexicalBlock(scope: !2136, file: !34, line: 1620, column: 3)
!2140 = !DILocation(line: 1621, column: 25, scope: !2139)
!2141 = !DILocation(line: 1621, column: 91, scope: !2139)
!2142 = !DILocation(line: 1621, column: 23, scope: !2139)
!2143 = !DILocation(line: 1621, column: 5, scope: !2139)
!2144 = !DILocation(line: 0, scope: !2136)
!2145 = !DILocation(line: 1627, column: 1, scope: !2131)
!2146 = distinct !DISubprogram(name: "HAL_SYSTICK_CLKSourceConfig", scope: !355, file: !355, line: 454, type: !1344, scopeLine: 455, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !354, retainedNodes: !2147)
!2147 = !{!2148}
!2148 = !DILocalVariable(name: "CLKSource", arg: 1, scope: !2146, file: !355, line: 454, type: !19)
!2149 = !DILocation(line: 0, scope: !2146)
!2150 = !DILocation(line: 458, column: 17, scope: !2151)
!2151 = distinct !DILexicalBlock(scope: !2146, file: !355, line: 458, column: 7)
!2152 = !DILocation(line: 0, scope: !2151)
!2153 = !DILocation(line: 458, column: 7, scope: !2146)
!2154 = !DILocation(line: 466, column: 1, scope: !2146)
!2155 = distinct !DISubprogram(name: "HAL_SYSTICK_IRQHandler", scope: !355, file: !355, line: 472, type: !489, scopeLine: 473, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !354, retainedNodes: !565)
!2156 = !DILocation(line: 474, column: 3, scope: !2155)
!2157 = !DILocation(line: 475, column: 1, scope: !2155)
!2158 = distinct !DISubprogram(name: "HAL_SYSTICK_Callback", scope: !355, file: !355, line: 481, type: !489, scopeLine: 482, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !354, retainedNodes: !565)
!2159 = !DILocation(line: 486, column: 1, scope: !2158)
