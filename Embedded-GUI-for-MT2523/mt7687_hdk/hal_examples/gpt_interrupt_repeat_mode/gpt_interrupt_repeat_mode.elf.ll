; ModuleID = './build/gpt_interrupt_repeat_mode.elf.bc'
source_filename = "llvm-link"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "thumbv7em-none-unknown-eabihf"

%struct.nvic_function_t = type { void (i32)*, i32 }
%struct.hal_gpt_context_t = type { i32, %struct.hal_gpt_callback_context, i8 }
%struct.hal_gpt_callback_context = type { void (i8*)*, i8* }
%struct.uart_context_t = type { i8, %struct.hal_uart_config_t, i8, %struct.hal_uart_callback_config_t, i8, %struct.hal_uart_dma_config_t }
%struct.hal_uart_config_t = type { i32, i32, i32, i32 }
%struct.hal_uart_callback_config_t = type { void (i32, i8*)*, i8* }
%struct.hal_uart_dma_config_t = type { i8*, i32, i32, i8*, i32, i32, i32 }
%struct.__va_list = type { i8* }
%struct.gpio_status = type { i32, i8, i8, i8 }
%struct.stat = type { i16, i16, i32, i16, i16, i16, i16, i32, %struct.timespec, %struct.timespec, %struct.timespec, i32, i32, [2 x i32] }
%struct.timespec = type { i64, i32 }
%struct._reent = type { i32, %struct.__sFILE*, %struct.__sFILE*, %struct.__sFILE*, i32, i8*, i32, i32, %struct.__locale_t*, %struct._mprec*, void (%struct._reent*)*, i32, i32, i8*, %struct._rand48*, %struct.__tm*, i8*, void (i32)**, %struct._atexit*, %struct._atexit, %struct._glue, %struct.__sFILE*, %struct._misc_reent*, i8* }
%struct.__locale_t = type opaque
%struct._mprec = type { %struct._Bigint*, i32, %struct._Bigint*, %struct._Bigint** }
%struct._Bigint = type { %struct._Bigint*, i32, i32, i32, i32, [1 x i32] }
%struct._rand48 = type { [3 x i16], [3 x i16], i16, i64 }
%struct.__tm = type { i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct._atexit = type { %struct._atexit*, i32, [32 x void ()*], %struct._on_exit_args* }
%struct._on_exit_args = type { [32 x i8*], [32 x i8*], i32, i32 }
%struct._glue = type { %struct._glue*, i32, %struct.__sFILE* }
%struct.__sFILE = type { i8*, i32, i32, i16, i16, %struct.__sbuf, i32, %struct._reent*, i8*, i32 (%struct._reent*, i8*, i8*, i32)*, i32 (%struct._reent*, i8*, i8*, i32)*, i32 (%struct._reent*, i8*, i32, i32)*, i32 (%struct._reent*, i8*)*, %struct.__sbuf, i8*, i32, [3 x i8], [1 x i8], %struct.__sbuf, i32, i32, %struct.__lock*, %struct._mbstate_t, i32 }
%struct.__sbuf = type { i8*, i32 }
%struct.__lock = type opaque
%struct._mbstate_t = type { i32, %union.anon }
%union.anon = type { i32 }
%struct._misc_reent = type { i8*, %struct._mbstate_t, %struct._mbstate_t, %struct._mbstate_t, [8 x i8], i32, %struct._mbstate_t, %struct._mbstate_t, %struct._mbstate_t, %struct._mbstate_t, %struct._mbstate_t }

@g_u4ClkCnt1ms = dso_local local_unnamed_addr global i32 0, align 4, !dbg !0
@.str = private unnamed_addr constant [37 x i8] c"ASSERT, __FILE__ = %s, __LINE__ = %u\00", align 1
@.str.1 = private unnamed_addr constant [51 x i8] c"../../../../../driver/chip/mt7687/src/common/gpt.c\00", align 1
@GPTTimer.0 = internal unnamed_addr global void ()* null, align 4, !dbg !81
@GPTTimer.1 = internal unnamed_addr global void ()* null, align 4, !dbg !82
@gXtalFreq = internal unnamed_addr global i32 0, align 4, !dbg !83
@gCpuFrequency = internal unnamed_addr global i32 0, align 4, !dbg !98
@switch.table.top_xtal_init = private unnamed_addr constant [8 x i32] [i32 20000000, i32 40000000, i32 26000000, i32 52000000, i32 40000000, i32 40000000, i32 40000000, i32 40000000], align 4
@switch.table.top_xtal_init.1 = private unnamed_addr constant [8 x i32] [i32 16, i32 512, i32 64, i32 1024, i32 512, i32 512, i32 512, i32 512], align 4
@__const.halUART_SetFormat.fraction_L_mapping = private unnamed_addr constant [11 x i16] [i16 0, i16 16, i16 68, i16 146, i16 41, i16 170, i16 182, i16 219, i16 173, i16 255, i16 255], align 2
@__const.halUART_SetFormat.fraction_M_mapping = private unnamed_addr constant [11 x i16] [i16 0, i16 0, i16 0, i16 0, i16 1, i16 1, i16 1, i16 1, i16 1, i16 1, i16 3], align 2
@gUartClkFreq = dso_local local_unnamed_addr global i32 0, align 4, !dbg !100
@nvic_function_table = dso_local local_unnamed_addr global [96 x %struct.nvic_function_t] zeroinitializer, align 4, !dbg !138
@__FUNCTION__.isrC_main = private unnamed_addr constant [10 x i8] c"isrC_main\00", align 1
@.str.9 = private unnamed_addr constant [25 x i8] c"ERROR: no IRQ handler! \0A\00", align 1
@g_gpt_context = internal global [5 x %struct.hal_gpt_context_t] zeroinitializer, align 4, !dbg !243
@__FUNCTION__.hal_gpt_init = private unnamed_addr constant [13 x i8] c"hal_gpt_init\00", align 1
@.str.16 = private unnamed_addr constant [18 x i8] c"Invalid port: %d.\00", align 1
@__FUNCTION__.hal_gpt_deinit = private unnamed_addr constant [15 x i8] c"hal_gpt_deinit\00", align 1
@.str.1.17 = private unnamed_addr constant [23 x i8] c"Should call  port: %d.\00", align 1
@__FUNCTION__.hal_gpt_get_free_run_count = private unnamed_addr constant [27 x i8] c"hal_gpt_get_free_run_count\00", align 1
@.str.2 = private unnamed_addr constant [23 x i8] c"Invalid parameter: %d.\00", align 1
@__FUNCTION__.hal_gpt_get_running_status = private unnamed_addr constant [27 x i8] c"hal_gpt_get_running_status\00", align 1
@.str.3 = private unnamed_addr constant [45 x i8] c"Invalid hal_gpt_stop_timer to stop port: %d.\00", align 1
@__FUNCTION__.hal_gpt_register_callback = private unnamed_addr constant [26 x i8] c"hal_gpt_register_callback\00", align 1
@.str.4 = private unnamed_addr constant [51 x i8] c"Invalid port: %d. Only port 0 or 1 works as timer.\00", align 1
@__FUNCTION__.hal_gpt_start_timer_ms = private unnamed_addr constant [23 x i8] c"hal_gpt_start_timer_ms\00", align 1
@__FUNCTION__.hal_gpt_stop_timer = private unnamed_addr constant [19 x i8] c"hal_gpt_stop_timer\00", align 1
@g_uart_context_table = internal global [2 x %struct.uart_context_t] zeroinitializer, align 4, !dbg !297
@hal_uart_map_receive_callback.func_tbl = internal unnamed_addr constant [2 x void ()*] [void ()* @hal_uart_receive_callback0, void ()* @hal_uart_receive_callback1], align 4, !dbg !354
@__const.hal_uart_translate_baudrate.baudrate_tbl = private unnamed_addr constant [13 x i32] [i32 110, i32 300, i32 1200, i32 2400, i32 4800, i32 9600, i32 19200, i32 38400, i32 57600, i32 115200, i32 230400, i32 460800, i32 921600], align 4
@__const.hal_uart_translate_word_length.databit_tbl = private unnamed_addr constant [4 x i16] [i16 0, i16 1, i16 2, i16 3], align 2
@__const.hal_uart_translate_parity.parity_tbl = private unnamed_addr constant [5 x i16] [i16 0, i16 8, i16 24, i16 0, i16 0], align 2
@__const.hal_uart_translate_stopbit.stopbit_tbl = private unnamed_addr constant [3 x i16] [i16 0, i16 4, i16 4], align 2
@.str.18 = private unnamed_addr constant [5 x i8] c"\0D\0A\0D\0A\00", align 1
@.str.1.19 = private unnamed_addr constant [20 x i8] c"welcome to main()\0D\0A\00", align 1
@gpt_port = dso_local local_unnamed_addr global i32 0, align 4, !dbg !407
@.str.2.20 = private unnamed_addr constant [28 x i8] c"\0D\0A---gpt_example begin---\0D\0A\00", align 1
@.str.3.21 = private unnamed_addr constant [38 x i8] c"\0D\0A---gpt init error, return = %d---\0D\0A\00", align 1
@.str.4.22 = private unnamed_addr constant [50 x i8] c"\0D\0A---gpt registercallback error, return = %d---\0D\0A\00", align 1
@.str.5 = private unnamed_addr constant [48 x i8] c"\0D\0A---gpt start timer ms error, return = %d---\0D\0A\00", align 1
@gpt_callback.last_time = internal unnamed_addr global i32 0, align 4, !dbg !453
@gpt_callback.timeout_times = internal unnamed_addr global i32 0, align 4, !dbg !455
@.str.6 = private unnamed_addr constant [47 x i8] c"\0D\0A---gpt %dth test fail, Expired at %d ms---\0D\0A\00", align 1
@.str.7 = private unnamed_addr constant [34 x i8] c"\0D\0A---gpt_example finished!!!---\0D\0A\00", align 1
@.str.8 = private unnamed_addr constant [31 x i8] c"\0D\0Aexample project test fail.\0D\0A\00", align 1
@.str.9.23 = private unnamed_addr constant [43 x i8] c"\0D\0A---gpt stop timer fail, return = %d---\0D\0A\00", align 1
@.str.10 = private unnamed_addr constant [43 x i8] c"\0D\0A---hal_gpt_deinit fail, return = %d---\0D\0A\00", align 1
@.str.11 = private unnamed_addr constant [34 x i8] c"\0D\0Aexample project test success.\0D\0A\00", align 1
@.str.12 = private unnamed_addr constant [52 x i8] c"\0D\0A---gpt get free run count error, return = %d---\0D\0A\00", align 1
@SystemCoreClock = dso_local local_unnamed_addr global i32 40000000, align 4, !dbg !458
@System_Initialize_Done = internal global i32 0, align 4, !dbg !526
@_sbrk_r.heap_end = internal unnamed_addr global i8* null, align 4, !dbg !528
@end = external dso_local global i8, align 1
@.str.30 = private unnamed_addr constant [7 x i8] c"_exit\0A\00", align 1
@.str.1.31 = private unnamed_addr constant [10 x i8] c"_kill %d\0A\00", align 1
@.str.2.32 = private unnamed_addr constant [9 x i8] c"_getpid\0A\00", align 1
@build_date_time_str = dso_local local_unnamed_addr global [31 x i8] c"2022/12/13 07:55:05 GMT +00:00\00", align 1, !dbg !737
@sw_verno_str = dso_local local_unnamed_addr global [11 x i8] c"SDK_V4.6.1\00", align 1, !dbg !742
@hw_verno_str = dso_local local_unnamed_addr global [11 x i8] c"mt7687_hdk\00", align 1, !dbg !748

; Function Attrs: noinline nounwind optsize
define dso_local void @GPT_ResetTimer(i32 noundef %0, i32 noundef %1, i1 noundef zeroext %2) local_unnamed_addr #0 !dbg !977 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !981, metadata !DIExpression()), !dbg !984
  call void @llvm.dbg.value(metadata i32 %1, metadata !982, metadata !DIExpression()), !dbg !984
  call void @llvm.dbg.value(metadata i1 %2, metadata !983, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !984
  %4 = icmp ugt i32 %0, 1, !dbg !985
  br i1 %4, label %5, label %8, !dbg !987

5:                                                ; preds = %3
  %6 = tail call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i32 0, i32 0), i8* noundef getelementptr inbounds ([51 x i8], [51 x i8]* @.str.1, i32 0, i32 0), i32 noundef 75) #12, !dbg !988
  br label %7, !dbg !988

7:                                                ; preds = %5, %7
  br label %7, !dbg !988, !llvm.loop !990

8:                                                ; preds = %3
  switch i32 %0, label %21 [
    i32 0, label %9
    i32 1, label %15
  ], !dbg !991

9:                                                ; preds = %8
  store volatile i32 %1, i32* inttoptr (i32 -2096824300 to i32*), align 4, !dbg !992
  %10 = load volatile i32, i32* inttoptr (i32 -2096824304 to i32*), align 16, !dbg !995
  br i1 %2, label %11, label %13, !dbg !997

11:                                               ; preds = %9
  %12 = or i32 %10, 2, !dbg !998
  store volatile i32 %12, i32* inttoptr (i32 -2096824304 to i32*), align 16, !dbg !998
  br label %21, !dbg !1000

13:                                               ; preds = %9
  %14 = and i32 %10, -3, !dbg !1001
  store volatile i32 %14, i32* inttoptr (i32 -2096824304 to i32*), align 16, !dbg !1001
  br label %21

15:                                               ; preds = %8
  store volatile i32 %1, i32* inttoptr (i32 -2096824284 to i32*), align 4, !dbg !1003
  %16 = load volatile i32, i32* inttoptr (i32 -2096824288 to i32*), align 32, !dbg !1006
  br i1 %2, label %17, label %19, !dbg !1008

17:                                               ; preds = %15
  %18 = or i32 %16, 2, !dbg !1009
  store volatile i32 %18, i32* inttoptr (i32 -2096824288 to i32*), align 32, !dbg !1009
  br label %21, !dbg !1011

19:                                               ; preds = %15
  %20 = and i32 %16, -3, !dbg !1012
  store volatile i32 %20, i32* inttoptr (i32 -2096824288 to i32*), align 32, !dbg !1012
  br label %21

21:                                               ; preds = %8, %19, %17, %11, %13
  ret void, !dbg !1014
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.value(metadata, metadata, metadata) #1

; Function Attrs: optsize
declare dso_local i32 @printf(i8* noundef, ...) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize
define dso_local void @GPT_Start(i32 noundef %0) local_unnamed_addr #0 !dbg !1015 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !1019, metadata !DIExpression()), !dbg !1020
  switch i32 %0, label %2 [
    i32 0, label %5
    i32 1, label %9
    i32 4, label %13
  ], !dbg !1021

2:                                                ; preds = %1
  %3 = tail call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i32 0, i32 0), i8* noundef getelementptr inbounds ([51 x i8], [51 x i8]* @.str.1, i32 0, i32 0), i32 noundef 96) #12, !dbg !1022
  br label %4, !dbg !1022

4:                                                ; preds = %2, %4
  br label %4, !dbg !1022, !llvm.loop !1025

5:                                                ; preds = %1
  %6 = load volatile i32, i32* inttoptr (i32 -2096824304 to i32*), align 16, !dbg !1026
  %7 = or i32 %6, 1, !dbg !1026
  store volatile i32 %7, i32* inttoptr (i32 -2096824304 to i32*), align 16, !dbg !1026
  %8 = tail call i32 @hal_nvic_enable_irq(i32 noundef 24) #12, !dbg !1029
  br label %16, !dbg !1030

9:                                                ; preds = %1
  %10 = load volatile i32, i32* inttoptr (i32 -2096824288 to i32*), align 32, !dbg !1031
  %11 = or i32 %10, 1, !dbg !1031
  store volatile i32 %11, i32* inttoptr (i32 -2096824288 to i32*), align 32, !dbg !1031
  %12 = tail call i32 @hal_nvic_enable_irq(i32 noundef 24) #12, !dbg !1034
  br label %16, !dbg !1035

13:                                               ; preds = %1
  %14 = load volatile i32, i32* inttoptr (i32 -2096824224 to i32*), align 32, !dbg !1036
  %15 = or i32 %14, 1, !dbg !1036
  store volatile i32 %15, i32* inttoptr (i32 -2096824224 to i32*), align 32, !dbg !1036
  br label %16, !dbg !1039

16:                                               ; preds = %9, %13, %5
  ret void, !dbg !1040
}

; Function Attrs: nofree noinline norecurse nounwind optsize
define dso_local void @GPT_Stop(i32 noundef %0) local_unnamed_addr #3 !dbg !1041 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !1043, metadata !DIExpression()), !dbg !1044
  switch i32 %0, label %18 [
    i32 0, label %2
    i32 1, label %7
    i32 2, label %12
    i32 4, label %15
  ], !dbg !1045

2:                                                ; preds = %1
  %3 = load volatile i32, i32* inttoptr (i32 -2096824316 to i32*), align 4, !dbg !1046
  %4 = and i32 %3, -2, !dbg !1046
  store volatile i32 %4, i32* inttoptr (i32 -2096824316 to i32*), align 4, !dbg !1046
  %5 = load volatile i32, i32* inttoptr (i32 -2096824304 to i32*), align 16, !dbg !1049
  %6 = and i32 %5, -2, !dbg !1049
  store volatile i32 %6, i32* inttoptr (i32 -2096824304 to i32*), align 16, !dbg !1049
  store volatile i32 1, i32* inttoptr (i32 -2096824320 to i32*), align 65536, !dbg !1050
  br label %18, !dbg !1051

7:                                                ; preds = %1
  %8 = load volatile i32, i32* inttoptr (i32 -2096824316 to i32*), align 4, !dbg !1052
  %9 = and i32 %8, -3, !dbg !1052
  store volatile i32 %9, i32* inttoptr (i32 -2096824316 to i32*), align 4, !dbg !1052
  %10 = load volatile i32, i32* inttoptr (i32 -2096824288 to i32*), align 32, !dbg !1055
  %11 = and i32 %10, -2, !dbg !1055
  store volatile i32 %11, i32* inttoptr (i32 -2096824288 to i32*), align 32, !dbg !1055
  store volatile i32 2, i32* inttoptr (i32 -2096824320 to i32*), align 65536, !dbg !1056
  br label %18, !dbg !1057

12:                                               ; preds = %1
  %13 = load volatile i32, i32* inttoptr (i32 -2096824272 to i32*), align 16, !dbg !1058
  %14 = and i32 %13, -2, !dbg !1058
  store volatile i32 %14, i32* inttoptr (i32 -2096824272 to i32*), align 16, !dbg !1058
  br label %18, !dbg !1061

15:                                               ; preds = %1
  %16 = load volatile i32, i32* inttoptr (i32 -2096824224 to i32*), align 32, !dbg !1062
  %17 = and i32 %16, -2, !dbg !1062
  store volatile i32 %17, i32* inttoptr (i32 -2096824224 to i32*), align 32, !dbg !1062
  br label %18, !dbg !1065

18:                                               ; preds = %1, %7, %15, %12, %2
  ret void, !dbg !1066
}

; Function Attrs: noinline nounwind optsize
define dso_local void @GPT_INT_Handler(i32 %0) #0 !dbg !1067 {
  call void @llvm.dbg.value(metadata i32 undef, metadata !1069, metadata !DIExpression()), !dbg !1071
  call void @llvm.dbg.value(metadata i32 undef, metadata !1069, metadata !DIExpression()), !dbg !1071
  %2 = load volatile i32, i32* inttoptr (i32 -2096824320 to i32*), align 65536, !dbg !1072
  %3 = and i32 %2, 65535, !dbg !1073
  call void @llvm.dbg.value(metadata i32 %2, metadata !1070, metadata !DIExpression()), !dbg !1071
  store volatile i32 %3, i32* inttoptr (i32 -2096824320 to i32*), align 65536, !dbg !1074
  %4 = and i32 %2, 1, !dbg !1075
  %5 = icmp eq i32 %4, 0, !dbg !1075
  br i1 %5, label %6, label %9, !dbg !1077

6:                                                ; preds = %1
  %7 = and i32 %2, 2, !dbg !1078
  %8 = icmp eq i32 %7, 0, !dbg !1078
  br i1 %8, label %13, label %9, !dbg !1080

9:                                                ; preds = %6, %1
  %10 = phi i32 [ 0, %1 ], [ 1, %6 ]
  %11 = phi void ()** [ @GPTTimer.0, %1 ], [ @GPTTimer.1, %6 ]
  tail call void @clear_TMR_INT_status_bit(i32 noundef %10) #12, !dbg !1081
  %12 = load void ()*, void ()** %11, align 4, !dbg !1081
  tail call void %12() #12, !dbg !1081
  br label %13, !dbg !1082

13:                                               ; preds = %9, %6
  ret void, !dbg !1082
}

; Function Attrs: noinline nounwind optsize
define dso_local void @GPT_init(i32 noundef %0, i32 noundef %1, void ()* noundef %2) local_unnamed_addr #0 !dbg !1083 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !1087, metadata !DIExpression()), !dbg !1090
  call void @llvm.dbg.value(metadata i32 %1, metadata !1088, metadata !DIExpression()), !dbg !1090
  call void @llvm.dbg.value(metadata void ()* %2, metadata !1089, metadata !DIExpression()), !dbg !1090
  switch i32 %0, label %4 [
    i32 4, label %7
    i32 2, label %7
    i32 1, label %7
    i32 0, label %7
  ], !dbg !1091

4:                                                ; preds = %3
  %5 = tail call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i32 0, i32 0), i8* noundef getelementptr inbounds ([51 x i8], [51 x i8]* @.str.1, i32 0, i32 0), i32 noundef 149) #12, !dbg !1092
  br label %6, !dbg !1092

6:                                                ; preds = %4, %6
  br label %6, !dbg !1092, !llvm.loop !1095

7:                                                ; preds = %3, %3, %3, %3
  %8 = icmp ult i32 %0, 2, !dbg !1096
  br i1 %8, label %9, label %13, !dbg !1097

9:                                                ; preds = %7
  %10 = tail call i32 @hal_nvic_register_isr_handler(i32 noundef 24, void (i32)* noundef nonnull @GPT_INT_Handler) #12, !dbg !1099
  %11 = tail call i32 @hal_nvic_set_priority(i32 noundef 24, i32 noundef 5) #12, !dbg !1101
  %12 = tail call i32 @hal_nvic_enable_irq(i32 noundef 24) #12, !dbg !1102
  br label %13, !dbg !1103

13:                                               ; preds = %7, %9
  switch i32 %0, label %36 [
    i32 0, label %14
    i32 1, label %20
    i32 2, label %26
    i32 4, label %31
  ], !dbg !1104

14:                                               ; preds = %13
  store void ()* %2, void ()** @GPTTimer.0, align 4, !dbg !1105
  %15 = load volatile i32, i32* inttoptr (i32 -2096824316 to i32*), align 4, !dbg !1108
  %16 = or i32 %15, 1, !dbg !1108
  store volatile i32 %16, i32* inttoptr (i32 -2096824316 to i32*), align 4, !dbg !1108
  %17 = shl i32 %1, 2, !dbg !1109
  %18 = load volatile i32, i32* inttoptr (i32 -2096824304 to i32*), align 16, !dbg !1110
  %19 = or i32 %18, %17, !dbg !1110
  store volatile i32 %19, i32* inttoptr (i32 -2096824304 to i32*), align 16, !dbg !1110
  br label %36, !dbg !1111

20:                                               ; preds = %13
  store void ()* %2, void ()** @GPTTimer.1, align 4, !dbg !1112
  %21 = load volatile i32, i32* inttoptr (i32 -2096824316 to i32*), align 4, !dbg !1115
  %22 = or i32 %21, 2, !dbg !1115
  store volatile i32 %22, i32* inttoptr (i32 -2096824316 to i32*), align 4, !dbg !1115
  %23 = shl i32 %1, 2, !dbg !1116
  %24 = load volatile i32, i32* inttoptr (i32 -2096824288 to i32*), align 32, !dbg !1117
  %25 = or i32 %24, %23, !dbg !1117
  store volatile i32 %25, i32* inttoptr (i32 -2096824288 to i32*), align 32, !dbg !1117
  br label %36, !dbg !1118

26:                                               ; preds = %13
  %27 = shl i32 %1, 1, !dbg !1119
  %28 = or i32 %27, 1, !dbg !1122
  %29 = load volatile i32, i32* inttoptr (i32 -2096824272 to i32*), align 16, !dbg !1123
  %30 = or i32 %29, %28, !dbg !1123
  store volatile i32 %30, i32* inttoptr (i32 -2096824272 to i32*), align 16, !dbg !1123
  br label %36, !dbg !1124

31:                                               ; preds = %13
  %32 = shl i32 %1, 1, !dbg !1125
  %33 = or i32 %32, 1, !dbg !1128
  %34 = load volatile i32, i32* inttoptr (i32 -2096824224 to i32*), align 32, !dbg !1129
  %35 = or i32 %34, %33, !dbg !1129
  store volatile i32 %35, i32* inttoptr (i32 -2096824224 to i32*), align 32, !dbg !1129
  store volatile i32 0, i32* inttoptr (i32 -2096824220 to i32*), align 4, !dbg !1130
  br label %36, !dbg !1131

36:                                               ; preds = %13, %20, %31, %26, %14
  ret void, !dbg !1132
}

; Function Attrs: noinline nounwind optsize
define dso_local i32 @GPT_return_current_count(i32 noundef %0) local_unnamed_addr #0 !dbg !1133 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !1137, metadata !DIExpression()), !dbg !1139
  switch i32 %0, label %2 [
    i32 0, label %8
    i32 1, label %5
    i32 2, label %6
    i32 4, label %7
  ], !dbg !1140

2:                                                ; preds = %1
  %3 = tail call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i32 0, i32 0), i8* noundef getelementptr inbounds ([51 x i8], [51 x i8]* @.str.1, i32 0, i32 0), i32 noundef 177) #12, !dbg !1141
  br label %4, !dbg !1141

4:                                                ; preds = %4, %2
  br label %4, !dbg !1141, !llvm.loop !1144

5:                                                ; preds = %1
  call void @llvm.dbg.value(metadata i32 undef, metadata !1138, metadata !DIExpression()), !dbg !1139
  br label %8, !dbg !1145

6:                                                ; preds = %1
  call void @llvm.dbg.value(metadata i32 undef, metadata !1138, metadata !DIExpression()), !dbg !1139
  br label %8, !dbg !1149

7:                                                ; preds = %1
  call void @llvm.dbg.value(metadata i32 undef, metadata !1138, metadata !DIExpression()), !dbg !1139
  br label %8, !dbg !1152

8:                                                ; preds = %1, %5, %7, %6
  %9 = phi i32* [ inttoptr (i32 -2096824252 to i32*), %5 ], [ inttoptr (i32 -2096824268 to i32*), %6 ], [ inttoptr (i32 -2096824216 to i32*), %7 ], [ inttoptr (i32 -2096824256 to i32*), %1 ]
  %10 = load volatile i32, i32* %9, align 4, !dbg !1155
  call void @llvm.dbg.value(metadata i32 %10, metadata !1138, metadata !DIExpression()), !dbg !1139
  ret i32 %10, !dbg !1156
}

; Function Attrs: noinline nounwind optsize
define dso_local void @CM4_GPT2Init() local_unnamed_addr #0 !dbg !1157 {
  tail call void @GPT_init(i32 noundef 2, i32 noundef 1, void ()* noundef null) #13, !dbg !1159
  ret void, !dbg !1160
}

; Function Attrs: noinline nounwind optsize
define dso_local void @CM4_GPT4Init() local_unnamed_addr #0 !dbg !1161 {
  tail call void @GPT_init(i32 noundef 4, i32 noundef 1, void ()* noundef null) #13, !dbg !1162
  ret void, !dbg !1163
}

; Function Attrs: nofree noinline norecurse nounwind optsize
define dso_local i32 @halGPIO_ConfDirection(i32 noundef %0, i8 noundef zeroext %1) local_unnamed_addr #3 !dbg !1164 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !1169, metadata !DIExpression()), !dbg !1174
  call void @llvm.dbg.value(metadata i8 %1, metadata !1170, metadata !DIExpression()), !dbg !1174
  %3 = lshr i32 %0, 5, !dbg !1175
  call void @llvm.dbg.value(metadata i32 %3, metadata !1171, metadata !DIExpression(DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 16, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1174
  %4 = trunc i32 %0 to i16, !dbg !1176
  %5 = and i16 %4, 31, !dbg !1176
  call void @llvm.dbg.value(metadata i16 %4, metadata !1173, metadata !DIExpression(DW_OP_constu, 31, DW_OP_and, DW_OP_stack_value)), !dbg !1174
  %6 = trunc i32 %3 to i16, !dbg !1177
  switch i16 %6, label %97 [
    i16 0, label %7
    i16 1, label %70
  ], !dbg !1177

7:                                                ; preds = %2
  %8 = icmp eq i8 %1, 1, !dbg !1178
  %9 = zext i16 %5 to i32, !dbg !1181
  %10 = icmp ult i16 %5, 27, !dbg !1181
  br i1 %8, label %11, label %46, !dbg !1182

11:                                               ; preds = %7
  br i1 %10, label %12, label %17, !dbg !1183

12:                                               ; preds = %11
  %13 = shl nuw i32 1, %9, !dbg !1185
  %14 = xor i32 %13, -1, !dbg !1188
  %15 = load volatile i32, i32* inttoptr (i32 -2097106688 to i32*), align 256, !dbg !1189
  %16 = and i32 %15, %14, !dbg !1189
  store volatile i32 %16, i32* inttoptr (i32 -2097106688 to i32*), align 256, !dbg !1189
  br label %44, !dbg !1190

17:                                               ; preds = %11
  %18 = trunc i32 %0 to i5, !dbg !1191
  switch i5 %18, label %39 [
    i5 -5, label %19
    i5 -4, label %24
    i5 -3, label %29
    i5 -2, label %34
  ], !dbg !1191

19:                                               ; preds = %17
  %20 = load volatile i32, i32* inttoptr (i32 -2130563000 to i32*), align 8, !dbg !1192
  %21 = and i32 %20, -3, !dbg !1192
  store volatile i32 %21, i32* inttoptr (i32 -2130563000 to i32*), align 8, !dbg !1192
  %22 = load volatile i32, i32* inttoptr (i32 -2130563000 to i32*), align 8, !dbg !1195
  %23 = or i32 %22, 2048, !dbg !1195
  store volatile i32 %23, i32* inttoptr (i32 -2130563000 to i32*), align 8, !dbg !1195
  br label %44, !dbg !1196

24:                                               ; preds = %17
  %25 = load volatile i32, i32* inttoptr (i32 -2130562996 to i32*), align 4, !dbg !1197
  %26 = and i32 %25, -3, !dbg !1197
  store volatile i32 %26, i32* inttoptr (i32 -2130562996 to i32*), align 4, !dbg !1197
  %27 = load volatile i32, i32* inttoptr (i32 -2130562996 to i32*), align 4, !dbg !1200
  %28 = or i32 %27, 2048, !dbg !1200
  store volatile i32 %28, i32* inttoptr (i32 -2130562996 to i32*), align 4, !dbg !1200
  br label %44, !dbg !1201

29:                                               ; preds = %17
  %30 = load volatile i32, i32* inttoptr (i32 -2130562980 to i32*), align 4, !dbg !1202
  %31 = and i32 %30, -3, !dbg !1202
  store volatile i32 %31, i32* inttoptr (i32 -2130562980 to i32*), align 4, !dbg !1202
  %32 = load volatile i32, i32* inttoptr (i32 -2130562980 to i32*), align 4, !dbg !1205
  %33 = or i32 %32, 2048, !dbg !1205
  store volatile i32 %33, i32* inttoptr (i32 -2130562980 to i32*), align 4, !dbg !1205
  br label %44, !dbg !1206

34:                                               ; preds = %17
  %35 = load volatile i32, i32* inttoptr (i32 -2130562984 to i32*), align 8, !dbg !1207
  %36 = and i32 %35, -3, !dbg !1207
  store volatile i32 %36, i32* inttoptr (i32 -2130562984 to i32*), align 8, !dbg !1207
  %37 = load volatile i32, i32* inttoptr (i32 -2130562984 to i32*), align 8, !dbg !1210
  %38 = or i32 %37, 2048, !dbg !1210
  store volatile i32 %38, i32* inttoptr (i32 -2130562984 to i32*), align 8, !dbg !1210
  br label %44, !dbg !1211

39:                                               ; preds = %17
  %40 = load volatile i32, i32* inttoptr (i32 -2130562988 to i32*), align 4, !dbg !1212
  %41 = and i32 %40, -3, !dbg !1212
  store volatile i32 %41, i32* inttoptr (i32 -2130562988 to i32*), align 4, !dbg !1212
  %42 = load volatile i32, i32* inttoptr (i32 -2130562988 to i32*), align 4, !dbg !1215
  %43 = or i32 %42, 2048, !dbg !1215
  store volatile i32 %43, i32* inttoptr (i32 -2130562988 to i32*), align 4, !dbg !1215
  br label %44, !dbg !1216

44:                                               ; preds = %19, %29, %39, %34, %24, %12
  %45 = shl nuw i32 1, %9, !dbg !1217
  store volatile i32 %45, i32* inttoptr (i32 -2097106796 to i32*), align 4, !dbg !1217
  br label %97, !dbg !1218

46:                                               ; preds = %7
  br i1 %10, label %47, label %51, !dbg !1219

47:                                               ; preds = %46
  %48 = shl nuw i32 1, %9, !dbg !1221
  %49 = load volatile i32, i32* inttoptr (i32 -2097106688 to i32*), align 256, !dbg !1224
  %50 = or i32 %49, %48, !dbg !1224
  store volatile i32 %50, i32* inttoptr (i32 -2097106688 to i32*), align 256, !dbg !1224
  br label %68, !dbg !1225

51:                                               ; preds = %46
  %52 = trunc i32 %0 to i5, !dbg !1226
  switch i5 %52, label %65 [
    i5 -5, label %53
    i5 -4, label %56
    i5 -3, label %59
    i5 -2, label %62
  ], !dbg !1226

53:                                               ; preds = %51
  %54 = load volatile i32, i32* inttoptr (i32 -2130563000 to i32*), align 8, !dbg !1227
  %55 = or i32 %54, 2050, !dbg !1227
  store volatile i32 %55, i32* inttoptr (i32 -2130563000 to i32*), align 8, !dbg !1227
  br label %68, !dbg !1230

56:                                               ; preds = %51
  %57 = load volatile i32, i32* inttoptr (i32 -2130562996 to i32*), align 4, !dbg !1231
  %58 = or i32 %57, 2050, !dbg !1231
  store volatile i32 %58, i32* inttoptr (i32 -2130562996 to i32*), align 4, !dbg !1231
  br label %68, !dbg !1234

59:                                               ; preds = %51
  %60 = load volatile i32, i32* inttoptr (i32 -2130562980 to i32*), align 4, !dbg !1235
  %61 = or i32 %60, 2050, !dbg !1235
  store volatile i32 %61, i32* inttoptr (i32 -2130562980 to i32*), align 4, !dbg !1235
  br label %68, !dbg !1238

62:                                               ; preds = %51
  %63 = load volatile i32, i32* inttoptr (i32 -2130562984 to i32*), align 8, !dbg !1239
  %64 = or i32 %63, 2050, !dbg !1239
  store volatile i32 %64, i32* inttoptr (i32 -2130562984 to i32*), align 8, !dbg !1239
  br label %68, !dbg !1242

65:                                               ; preds = %51
  %66 = load volatile i32, i32* inttoptr (i32 -2130562988 to i32*), align 4, !dbg !1243
  %67 = or i32 %66, 2050, !dbg !1243
  store volatile i32 %67, i32* inttoptr (i32 -2130562988 to i32*), align 4, !dbg !1243
  br label %68, !dbg !1246

68:                                               ; preds = %53, %59, %65, %62, %56, %47
  %69 = shl nuw i32 1, %9, !dbg !1247
  store volatile i32 %69, i32* inttoptr (i32 -2097106792 to i32*), align 8, !dbg !1247
  br label %97

70:                                               ; preds = %2
  %71 = icmp eq i8 %1, 1, !dbg !1248
  %72 = zext i16 %5 to i32, !dbg !1250
  %73 = icmp eq i16 %5, 0, !dbg !1250
  br i1 %71, label %74, label %87, !dbg !1251

74:                                               ; preds = %70
  br i1 %73, label %80, label %75, !dbg !1252

75:                                               ; preds = %74
  %76 = shl nuw i32 1, %72, !dbg !1254
  %77 = xor i32 %76, -1, !dbg !1257
  %78 = load volatile i32, i32* inttoptr (i32 -2097106684 to i32*), align 4, !dbg !1258
  %79 = and i32 %78, %77, !dbg !1258
  store volatile i32 %79, i32* inttoptr (i32 -2097106684 to i32*), align 4, !dbg !1258
  br label %85, !dbg !1259

80:                                               ; preds = %74
  %81 = load volatile i32, i32* inttoptr (i32 -2130562992 to i32*), align 16, !dbg !1260
  %82 = and i32 %81, -3, !dbg !1260
  store volatile i32 %82, i32* inttoptr (i32 -2130562992 to i32*), align 16, !dbg !1260
  %83 = load volatile i32, i32* inttoptr (i32 -2130562992 to i32*), align 16, !dbg !1262
  %84 = or i32 %83, 2048, !dbg !1262
  store volatile i32 %84, i32* inttoptr (i32 -2130562992 to i32*), align 16, !dbg !1262
  br label %85

85:                                               ; preds = %80, %75
  %86 = phi i32 [ 1, %80 ], [ %76, %75 ], !dbg !1263
  store volatile i32 %86, i32* inttoptr (i32 -2097106780 to i32*), align 4, !dbg !1263
  br label %97, !dbg !1264

87:                                               ; preds = %70
  br i1 %73, label %92, label %88, !dbg !1265

88:                                               ; preds = %87
  %89 = shl nuw i32 1, %72, !dbg !1267
  %90 = load volatile i32, i32* inttoptr (i32 -2097106684 to i32*), align 4, !dbg !1270
  %91 = or i32 %90, %89, !dbg !1270
  store volatile i32 %91, i32* inttoptr (i32 -2097106684 to i32*), align 4, !dbg !1270
  br label %95, !dbg !1271

92:                                               ; preds = %87
  %93 = load volatile i32, i32* inttoptr (i32 -2130562992 to i32*), align 16, !dbg !1272
  %94 = or i32 %93, 2050, !dbg !1272
  store volatile i32 %94, i32* inttoptr (i32 -2130562992 to i32*), align 16, !dbg !1272
  br label %95

95:                                               ; preds = %92, %88
  %96 = phi i32 [ 1, %92 ], [ %89, %88 ], !dbg !1274
  store volatile i32 %96, i32* inttoptr (i32 -2097106776 to i32*), align 8, !dbg !1274
  br label %97

97:                                               ; preds = %68, %44, %95, %85, %2
  %98 = phi i32 [ -1, %2 ], [ 0, %85 ], [ 0, %95 ], [ 0, %44 ], [ 0, %68 ], !dbg !1174
  ret i32 %98, !dbg !1275
}

; Function Attrs: nofree noinline norecurse nounwind optsize
define dso_local i32 @halGPO_Write(i32 noundef %0, i8 noundef zeroext %1) local_unnamed_addr #3 !dbg !1276 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !1278, metadata !DIExpression()), !dbg !1282
  call void @llvm.dbg.value(metadata i8 %1, metadata !1279, metadata !DIExpression()), !dbg !1282
  %3 = lshr i32 %0, 5, !dbg !1283
  call void @llvm.dbg.value(metadata i32 %3, metadata !1280, metadata !DIExpression(DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 16, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1282
  %4 = trunc i32 %0 to i16, !dbg !1284
  %5 = and i16 %4, 31, !dbg !1284
  call void @llvm.dbg.value(metadata i16 %5, metadata !1281, metadata !DIExpression()), !dbg !1282
  %6 = trunc i32 %3 to i16, !dbg !1285
  switch i16 %6, label %19 [
    i16 0, label %7
    i16 1, label %13
  ], !dbg !1285

7:                                                ; preds = %2
  %8 = icmp eq i8 %1, 0, !dbg !1286
  %9 = zext i16 %5 to i32, !dbg !1289
  %10 = shl nuw i32 1, %9, !dbg !1289
  br i1 %8, label %12, label %11, !dbg !1290

11:                                               ; preds = %7
  store volatile i32 %10, i32* inttoptr (i32 -2097106844 to i32*), align 4, !dbg !1291
  br label %19, !dbg !1293

12:                                               ; preds = %7
  store volatile i32 %10, i32* inttoptr (i32 -2097106840 to i32*), align 8, !dbg !1294
  br label %19

13:                                               ; preds = %2
  %14 = icmp eq i8 %1, 0, !dbg !1296
  %15 = zext i16 %5 to i32, !dbg !1298
  %16 = shl nuw i32 1, %15, !dbg !1298
  br i1 %14, label %18, label %17, !dbg !1299

17:                                               ; preds = %13
  store volatile i32 %16, i32* inttoptr (i32 -2097106828 to i32*), align 4, !dbg !1300
  br label %19, !dbg !1302

18:                                               ; preds = %13
  store volatile i32 %16, i32* inttoptr (i32 -2097106824 to i32*), align 8, !dbg !1303
  br label %19

19:                                               ; preds = %12, %11, %18, %17, %2
  %20 = phi i32 [ -1, %2 ], [ 0, %17 ], [ 0, %18 ], [ 0, %11 ], [ 0, %12 ], !dbg !1282
  ret i32 %20, !dbg !1305
}

; Function Attrs: mustprogress nofree noinline norecurse nounwind optsize willreturn
define dso_local zeroext i8 @halgetGPIO_DOUT(i32 noundef %0) local_unnamed_addr #4 !dbg !1306 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !1310, metadata !DIExpression()), !dbg !1314
  %2 = lshr i32 %0, 5, !dbg !1315
  call void @llvm.dbg.value(metadata i32 %2, metadata !1311, metadata !DIExpression(DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 16, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1314
  %3 = and i32 %0, 31, !dbg !1316
  call void @llvm.dbg.value(metadata i32 %0, metadata !1312, metadata !DIExpression(DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 16, DW_ATE_unsigned, DW_OP_constu, 31, DW_OP_and, DW_OP_stack_value)), !dbg !1314
  call void @llvm.dbg.value(metadata i8 0, metadata !1313, metadata !DIExpression()), !dbg !1314
  %4 = trunc i32 %2 to i16, !dbg !1317
  switch i16 %4, label %12 [
    i16 0, label %6
    i16 1, label %5
  ], !dbg !1317

5:                                                ; preds = %1
  call void @llvm.dbg.value(metadata i32 %9, metadata !1313, metadata !DIExpression(DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_constu, 1, DW_OP_and, DW_OP_stack_value)), !dbg !1314
  br label %6, !dbg !1318

6:                                                ; preds = %1, %5
  %7 = phi i32* [ inttoptr (i32 -2097106832 to i32*), %5 ], [ inttoptr (i32 -2097106848 to i32*), %1 ]
  %8 = load volatile i32, i32* %7, align 16, !dbg !1320
  %9 = lshr i32 %8, %3, !dbg !1320
  %10 = trunc i32 %9 to i8, !dbg !1320
  %11 = and i8 %10, 1, !dbg !1320
  call void @llvm.dbg.value(metadata i8 %11, metadata !1313, metadata !DIExpression()), !dbg !1314
  br label %12, !dbg !1321

12:                                               ; preds = %1, %6
  %13 = phi i8 [ %11, %6 ], [ 0, %1 ], !dbg !1314
  ret i8 %13, !dbg !1322
}

; Function Attrs: mustprogress nofree noinline norecurse nounwind optsize willreturn
define dso_local zeroext i8 @halgetGPIO_DIN(i32 noundef %0) local_unnamed_addr #4 !dbg !1323 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !1325, metadata !DIExpression()), !dbg !1329
  %2 = lshr i32 %0, 5, !dbg !1330
  call void @llvm.dbg.value(metadata i32 %2, metadata !1326, metadata !DIExpression(DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 16, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1329
  %3 = and i32 %0, 31, !dbg !1331
  call void @llvm.dbg.value(metadata i32 %0, metadata !1327, metadata !DIExpression(DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 16, DW_ATE_unsigned, DW_OP_constu, 31, DW_OP_and, DW_OP_stack_value)), !dbg !1329
  call void @llvm.dbg.value(metadata i8 0, metadata !1328, metadata !DIExpression()), !dbg !1329
  %4 = trunc i32 %2 to i16, !dbg !1332
  switch i16 %4, label %12 [
    i16 0, label %6
    i16 1, label %5
  ], !dbg !1332

5:                                                ; preds = %1
  call void @llvm.dbg.value(metadata i32 %9, metadata !1328, metadata !DIExpression(DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_constu, 1, DW_OP_and, DW_OP_stack_value)), !dbg !1329
  br label %6, !dbg !1333

6:                                                ; preds = %1, %5
  %7 = phi i32* [ inttoptr (i32 -2097106748 to i32*), %5 ], [ inttoptr (i32 -2097106752 to i32*), %1 ]
  %8 = load volatile i32, i32* %7, align 4, !dbg !1335
  %9 = lshr i32 %8, %3, !dbg !1335
  %10 = trunc i32 %9 to i8, !dbg !1335
  %11 = and i8 %10, 1, !dbg !1335
  call void @llvm.dbg.value(metadata i8 %11, metadata !1328, metadata !DIExpression()), !dbg !1329
  br label %12, !dbg !1336

12:                                               ; preds = %1, %6
  %13 = phi i8 [ %11, %6 ], [ 0, %1 ], !dbg !1329
  ret i8 %13, !dbg !1337
}

; Function Attrs: mustprogress nofree noinline norecurse nounwind optsize willreturn
define dso_local zeroext i8 @halgetGPIO_OutEnable(i32 noundef %0) local_unnamed_addr #4 !dbg !1338 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !1340, metadata !DIExpression()), !dbg !1344
  %2 = lshr i32 %0, 5, !dbg !1345
  call void @llvm.dbg.value(metadata i32 %2, metadata !1341, metadata !DIExpression(DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 16, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1344
  %3 = and i32 %0, 31, !dbg !1346
  call void @llvm.dbg.value(metadata i32 %0, metadata !1342, metadata !DIExpression(DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 16, DW_ATE_unsigned, DW_OP_constu, 31, DW_OP_and, DW_OP_stack_value)), !dbg !1344
  call void @llvm.dbg.value(metadata i8 0, metadata !1343, metadata !DIExpression()), !dbg !1344
  %4 = trunc i32 %2 to i16, !dbg !1347
  switch i16 %4, label %12 [
    i16 0, label %6
    i16 1, label %5
  ], !dbg !1347

5:                                                ; preds = %1
  call void @llvm.dbg.value(metadata i32 %9, metadata !1343, metadata !DIExpression(DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_constu, 1, DW_OP_and, DW_OP_stack_value)), !dbg !1344
  br label %6, !dbg !1348

6:                                                ; preds = %1, %5
  %7 = phi i32* [ inttoptr (i32 -2097106784 to i32*), %5 ], [ inttoptr (i32 -2097106800 to i32*), %1 ]
  %8 = load volatile i32, i32* %7, align 16, !dbg !1350
  %9 = lshr i32 %8, %3, !dbg !1350
  %10 = trunc i32 %9 to i8, !dbg !1350
  %11 = and i8 %10, 1, !dbg !1350
  call void @llvm.dbg.value(metadata i8 %11, metadata !1343, metadata !DIExpression()), !dbg !1344
  br label %12, !dbg !1351

12:                                               ; preds = %1, %6
  %13 = phi i8 [ %11, %6 ], [ 0, %1 ], !dbg !1344
  ret i8 %13, !dbg !1352
}

; Function Attrs: nofree noinline norecurse nounwind optsize
define dso_local i32 @halGPIO_PullUp_SET(i32 noundef %0) local_unnamed_addr #3 !dbg !1353 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !1357, metadata !DIExpression()), !dbg !1360
  %2 = lshr i32 %0, 5, !dbg !1361
  call void @llvm.dbg.value(metadata i32 %2, metadata !1358, metadata !DIExpression(DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 16, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1360
  %3 = trunc i32 %0 to i16, !dbg !1362
  %4 = and i16 %3, 31, !dbg !1362
  call void @llvm.dbg.value(metadata i16 %3, metadata !1359, metadata !DIExpression(DW_OP_constu, 31, DW_OP_and, DW_OP_stack_value)), !dbg !1360
  %5 = tail call i32 @halGPIO_PullDown_RESET(i32 noundef %0) #13, !dbg !1363
  %6 = trunc i32 %2 to i16, !dbg !1364
  switch i16 %6, label %49 [
    i16 0, label %7
    i16 1, label %39
  ], !dbg !1364

7:                                                ; preds = %1
  %8 = icmp ult i16 %4, 27, !dbg !1365
  br i1 %8, label %9, label %12, !dbg !1368

9:                                                ; preds = %7
  %10 = zext i16 %4 to i32, !dbg !1369
  %11 = shl nuw nsw i32 1, %10, !dbg !1370
  store volatile i32 %11, i32* inttoptr (i32 -2097106940 to i32*), align 4, !dbg !1370
  br label %49, !dbg !1372

12:                                               ; preds = %7
  %13 = trunc i32 %0 to i5, !dbg !1373
  switch i5 %13, label %34 [
    i5 -5, label %14
    i5 -4, label %19
    i5 -3, label %24
    i5 -2, label %29
  ], !dbg !1373

14:                                               ; preds = %12
  %15 = load volatile i32, i32* inttoptr (i32 -2130563000 to i32*), align 8, !dbg !1374
  %16 = and i32 %15, -29, !dbg !1374
  store volatile i32 %16, i32* inttoptr (i32 -2130563000 to i32*), align 8, !dbg !1374
  %17 = load volatile i32, i32* inttoptr (i32 -2130563000 to i32*), align 8, !dbg !1377
  %18 = or i32 %17, 2052, !dbg !1377
  store volatile i32 %18, i32* inttoptr (i32 -2130563000 to i32*), align 8, !dbg !1377
  br label %49, !dbg !1378

19:                                               ; preds = %12
  %20 = load volatile i32, i32* inttoptr (i32 -2130562996 to i32*), align 4, !dbg !1379
  %21 = and i32 %20, -29, !dbg !1379
  store volatile i32 %21, i32* inttoptr (i32 -2130562996 to i32*), align 4, !dbg !1379
  %22 = load volatile i32, i32* inttoptr (i32 -2130562996 to i32*), align 4, !dbg !1382
  %23 = or i32 %22, 2052, !dbg !1382
  store volatile i32 %23, i32* inttoptr (i32 -2130562996 to i32*), align 4, !dbg !1382
  br label %49, !dbg !1383

24:                                               ; preds = %12
  %25 = load volatile i32, i32* inttoptr (i32 -2130562980 to i32*), align 4, !dbg !1384
  %26 = and i32 %25, -29, !dbg !1384
  store volatile i32 %26, i32* inttoptr (i32 -2130562980 to i32*), align 4, !dbg !1384
  %27 = load volatile i32, i32* inttoptr (i32 -2130562980 to i32*), align 4, !dbg !1387
  %28 = or i32 %27, 2052, !dbg !1387
  store volatile i32 %28, i32* inttoptr (i32 -2130562980 to i32*), align 4, !dbg !1387
  br label %49, !dbg !1388

29:                                               ; preds = %12
  %30 = load volatile i32, i32* inttoptr (i32 -2130562984 to i32*), align 8, !dbg !1389
  %31 = and i32 %30, -29, !dbg !1389
  store volatile i32 %31, i32* inttoptr (i32 -2130562984 to i32*), align 8, !dbg !1389
  %32 = load volatile i32, i32* inttoptr (i32 -2130562984 to i32*), align 8, !dbg !1392
  %33 = or i32 %32, 2052, !dbg !1392
  store volatile i32 %33, i32* inttoptr (i32 -2130562984 to i32*), align 8, !dbg !1392
  br label %49, !dbg !1393

34:                                               ; preds = %12
  %35 = load volatile i32, i32* inttoptr (i32 -2130562988 to i32*), align 4, !dbg !1394
  %36 = and i32 %35, -29, !dbg !1394
  store volatile i32 %36, i32* inttoptr (i32 -2130562988 to i32*), align 4, !dbg !1394
  %37 = load volatile i32, i32* inttoptr (i32 -2130562988 to i32*), align 4, !dbg !1397
  %38 = or i32 %37, 2052, !dbg !1397
  store volatile i32 %38, i32* inttoptr (i32 -2130562988 to i32*), align 4, !dbg !1397
  br label %49, !dbg !1398

39:                                               ; preds = %1
  %40 = icmp eq i16 %4, 0, !dbg !1399
  br i1 %40, label %41, label %46, !dbg !1401

41:                                               ; preds = %39
  %42 = load volatile i32, i32* inttoptr (i32 -2130562992 to i32*), align 16, !dbg !1402
  %43 = and i32 %42, -29, !dbg !1402
  store volatile i32 %43, i32* inttoptr (i32 -2130562992 to i32*), align 16, !dbg !1402
  %44 = load volatile i32, i32* inttoptr (i32 -2130562992 to i32*), align 16, !dbg !1404
  %45 = or i32 %44, 2052, !dbg !1404
  store volatile i32 %45, i32* inttoptr (i32 -2130562992 to i32*), align 16, !dbg !1404
  br label %49, !dbg !1405

46:                                               ; preds = %39
  %47 = zext i16 %4 to i32, !dbg !1406
  %48 = shl nuw i32 1, %47, !dbg !1406
  store volatile i32 %48, i32* inttoptr (i32 -2097106924 to i32*), align 4, !dbg !1406
  br label %49

49:                                               ; preds = %14, %24, %34, %29, %19, %9, %46, %41, %1
  %50 = phi i32 [ -1, %1 ], [ 0, %41 ], [ 0, %46 ], [ 0, %9 ], [ 0, %19 ], [ 0, %29 ], [ 0, %34 ], [ 0, %24 ], [ 0, %14 ], !dbg !1360
  ret i32 %50, !dbg !1408
}

; Function Attrs: nofree noinline norecurse nounwind optsize
define dso_local i32 @halGPIO_PullDown_RESET(i32 noundef %0) local_unnamed_addr #3 !dbg !1409 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !1411, metadata !DIExpression()), !dbg !1414
  %2 = lshr i32 %0, 5, !dbg !1415
  call void @llvm.dbg.value(metadata i32 %2, metadata !1412, metadata !DIExpression(DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 16, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1414
  %3 = trunc i32 %0 to i16, !dbg !1416
  %4 = and i16 %3, 31, !dbg !1416
  call void @llvm.dbg.value(metadata i16 %3, metadata !1413, metadata !DIExpression(DW_OP_constu, 31, DW_OP_and, DW_OP_stack_value)), !dbg !1414
  %5 = trunc i32 %2 to i16, !dbg !1417
  switch i16 %5, label %48 [
    i16 0, label %6
    i16 1, label %38
  ], !dbg !1417

6:                                                ; preds = %1
  %7 = icmp ult i16 %4, 27, !dbg !1418
  br i1 %7, label %8, label %11, !dbg !1421

8:                                                ; preds = %6
  %9 = zext i16 %4 to i32, !dbg !1422
  %10 = shl nuw nsw i32 1, %9, !dbg !1423
  store volatile i32 %10, i32* inttoptr (i32 -2097106888 to i32*), align 8, !dbg !1423
  br label %48, !dbg !1425

11:                                               ; preds = %6
  %12 = trunc i32 %0 to i5, !dbg !1426
  switch i5 %12, label %33 [
    i5 -5, label %13
    i5 -4, label %18
    i5 -3, label %23
    i5 -2, label %28
  ], !dbg !1426

13:                                               ; preds = %11
  %14 = load volatile i32, i32* inttoptr (i32 -2130563000 to i32*), align 8, !dbg !1427
  %15 = and i32 %14, -29, !dbg !1427
  store volatile i32 %15, i32* inttoptr (i32 -2130563000 to i32*), align 8, !dbg !1427
  %16 = load volatile i32, i32* inttoptr (i32 -2130563000 to i32*), align 8, !dbg !1430
  %17 = or i32 %16, 2048, !dbg !1430
  store volatile i32 %17, i32* inttoptr (i32 -2130563000 to i32*), align 8, !dbg !1430
  br label %48, !dbg !1431

18:                                               ; preds = %11
  %19 = load volatile i32, i32* inttoptr (i32 -2130562996 to i32*), align 4, !dbg !1432
  %20 = and i32 %19, -29, !dbg !1432
  store volatile i32 %20, i32* inttoptr (i32 -2130562996 to i32*), align 4, !dbg !1432
  %21 = load volatile i32, i32* inttoptr (i32 -2130562996 to i32*), align 4, !dbg !1435
  %22 = or i32 %21, 2048, !dbg !1435
  store volatile i32 %22, i32* inttoptr (i32 -2130562996 to i32*), align 4, !dbg !1435
  br label %48, !dbg !1436

23:                                               ; preds = %11
  %24 = load volatile i32, i32* inttoptr (i32 -2130562980 to i32*), align 4, !dbg !1437
  %25 = and i32 %24, -29, !dbg !1437
  store volatile i32 %25, i32* inttoptr (i32 -2130562980 to i32*), align 4, !dbg !1437
  %26 = load volatile i32, i32* inttoptr (i32 -2130562980 to i32*), align 4, !dbg !1440
  %27 = or i32 %26, 2048, !dbg !1440
  store volatile i32 %27, i32* inttoptr (i32 -2130562980 to i32*), align 4, !dbg !1440
  br label %48, !dbg !1441

28:                                               ; preds = %11
  %29 = load volatile i32, i32* inttoptr (i32 -2130562984 to i32*), align 8, !dbg !1442
  %30 = and i32 %29, -29, !dbg !1442
  store volatile i32 %30, i32* inttoptr (i32 -2130562984 to i32*), align 8, !dbg !1442
  %31 = load volatile i32, i32* inttoptr (i32 -2130562984 to i32*), align 8, !dbg !1445
  %32 = or i32 %31, 2048, !dbg !1445
  store volatile i32 %32, i32* inttoptr (i32 -2130562984 to i32*), align 8, !dbg !1445
  br label %48, !dbg !1446

33:                                               ; preds = %11
  %34 = load volatile i32, i32* inttoptr (i32 -2130562988 to i32*), align 4, !dbg !1447
  %35 = and i32 %34, -29, !dbg !1447
  store volatile i32 %35, i32* inttoptr (i32 -2130562988 to i32*), align 4, !dbg !1447
  %36 = load volatile i32, i32* inttoptr (i32 -2130562988 to i32*), align 4, !dbg !1450
  %37 = or i32 %36, 2048, !dbg !1450
  store volatile i32 %37, i32* inttoptr (i32 -2130562988 to i32*), align 4, !dbg !1450
  br label %48, !dbg !1451

38:                                               ; preds = %1
  %39 = icmp eq i16 %4, 0, !dbg !1452
  br i1 %39, label %40, label %45, !dbg !1454

40:                                               ; preds = %38
  %41 = load volatile i32, i32* inttoptr (i32 -2130562992 to i32*), align 16, !dbg !1455
  %42 = and i32 %41, -29, !dbg !1455
  store volatile i32 %42, i32* inttoptr (i32 -2130562992 to i32*), align 16, !dbg !1455
  %43 = load volatile i32, i32* inttoptr (i32 -2130562992 to i32*), align 16, !dbg !1457
  %44 = or i32 %43, 2048, !dbg !1457
  store volatile i32 %44, i32* inttoptr (i32 -2130562992 to i32*), align 16, !dbg !1457
  br label %48, !dbg !1458

45:                                               ; preds = %38
  %46 = zext i16 %4 to i32, !dbg !1459
  %47 = shl nuw i32 1, %46, !dbg !1459
  store volatile i32 %47, i32* inttoptr (i32 -2097106872 to i32*), align 8, !dbg !1459
  br label %48

48:                                               ; preds = %13, %23, %33, %28, %18, %8, %45, %40, %1
  %49 = phi i32 [ -1, %1 ], [ 0, %40 ], [ 0, %45 ], [ 0, %8 ], [ 0, %18 ], [ 0, %28 ], [ 0, %33 ], [ 0, %23 ], [ 0, %13 ], !dbg !1414
  ret i32 %49, !dbg !1461
}

; Function Attrs: nofree noinline norecurse nounwind optsize
define dso_local i32 @halGPIO_PullUp_RESET(i32 noundef %0) local_unnamed_addr #3 !dbg !1462 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !1464, metadata !DIExpression()), !dbg !1467
  %2 = lshr i32 %0, 5, !dbg !1468
  call void @llvm.dbg.value(metadata i32 %2, metadata !1465, metadata !DIExpression(DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 16, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1467
  %3 = trunc i32 %0 to i16, !dbg !1469
  %4 = and i16 %3, 31, !dbg !1469
  call void @llvm.dbg.value(metadata i16 %3, metadata !1466, metadata !DIExpression(DW_OP_constu, 31, DW_OP_and, DW_OP_stack_value)), !dbg !1467
  %5 = trunc i32 %2 to i16, !dbg !1470
  switch i16 %5, label %48 [
    i16 0, label %6
    i16 1, label %38
  ], !dbg !1470

6:                                                ; preds = %1
  %7 = icmp ult i16 %4, 27, !dbg !1471
  br i1 %7, label %8, label %11, !dbg !1474

8:                                                ; preds = %6
  %9 = zext i16 %4 to i32, !dbg !1475
  %10 = shl nuw nsw i32 1, %9, !dbg !1476
  store volatile i32 %10, i32* inttoptr (i32 -2097106936 to i32*), align 8, !dbg !1476
  br label %48, !dbg !1478

11:                                               ; preds = %6
  %12 = trunc i32 %0 to i5, !dbg !1479
  switch i5 %12, label %33 [
    i5 -5, label %13
    i5 -4, label %18
    i5 -3, label %23
    i5 -2, label %28
  ], !dbg !1479

13:                                               ; preds = %11
  %14 = load volatile i32, i32* inttoptr (i32 -2130563000 to i32*), align 8, !dbg !1480
  %15 = and i32 %14, -29, !dbg !1480
  store volatile i32 %15, i32* inttoptr (i32 -2130563000 to i32*), align 8, !dbg !1480
  %16 = load volatile i32, i32* inttoptr (i32 -2130563000 to i32*), align 8, !dbg !1483
  %17 = or i32 %16, 2048, !dbg !1483
  store volatile i32 %17, i32* inttoptr (i32 -2130563000 to i32*), align 8, !dbg !1483
  br label %48, !dbg !1484

18:                                               ; preds = %11
  %19 = load volatile i32, i32* inttoptr (i32 -2130562996 to i32*), align 4, !dbg !1485
  %20 = and i32 %19, -29, !dbg !1485
  store volatile i32 %20, i32* inttoptr (i32 -2130562996 to i32*), align 4, !dbg !1485
  %21 = load volatile i32, i32* inttoptr (i32 -2130562996 to i32*), align 4, !dbg !1488
  %22 = or i32 %21, 2048, !dbg !1488
  store volatile i32 %22, i32* inttoptr (i32 -2130562996 to i32*), align 4, !dbg !1488
  br label %48, !dbg !1489

23:                                               ; preds = %11
  %24 = load volatile i32, i32* inttoptr (i32 -2130562980 to i32*), align 4, !dbg !1490
  %25 = and i32 %24, -29, !dbg !1490
  store volatile i32 %25, i32* inttoptr (i32 -2130562980 to i32*), align 4, !dbg !1490
  %26 = load volatile i32, i32* inttoptr (i32 -2130562980 to i32*), align 4, !dbg !1493
  %27 = or i32 %26, 2048, !dbg !1493
  store volatile i32 %27, i32* inttoptr (i32 -2130562980 to i32*), align 4, !dbg !1493
  br label %48, !dbg !1494

28:                                               ; preds = %11
  %29 = load volatile i32, i32* inttoptr (i32 -2130562984 to i32*), align 8, !dbg !1495
  %30 = and i32 %29, -29, !dbg !1495
  store volatile i32 %30, i32* inttoptr (i32 -2130562984 to i32*), align 8, !dbg !1495
  %31 = load volatile i32, i32* inttoptr (i32 -2130562984 to i32*), align 8, !dbg !1498
  %32 = or i32 %31, 2048, !dbg !1498
  store volatile i32 %32, i32* inttoptr (i32 -2130562984 to i32*), align 8, !dbg !1498
  br label %48, !dbg !1499

33:                                               ; preds = %11
  %34 = load volatile i32, i32* inttoptr (i32 -2130562988 to i32*), align 4, !dbg !1500
  %35 = and i32 %34, -29, !dbg !1500
  store volatile i32 %35, i32* inttoptr (i32 -2130562988 to i32*), align 4, !dbg !1500
  %36 = load volatile i32, i32* inttoptr (i32 -2130562988 to i32*), align 4, !dbg !1503
  %37 = or i32 %36, 2048, !dbg !1503
  store volatile i32 %37, i32* inttoptr (i32 -2130562988 to i32*), align 4, !dbg !1503
  br label %48, !dbg !1504

38:                                               ; preds = %1
  %39 = icmp eq i16 %4, 0, !dbg !1505
  br i1 %39, label %40, label %45, !dbg !1507

40:                                               ; preds = %38
  %41 = load volatile i32, i32* inttoptr (i32 -2130562992 to i32*), align 16, !dbg !1508
  %42 = and i32 %41, -29, !dbg !1508
  store volatile i32 %42, i32* inttoptr (i32 -2130562992 to i32*), align 16, !dbg !1508
  %43 = load volatile i32, i32* inttoptr (i32 -2130562992 to i32*), align 16, !dbg !1510
  %44 = or i32 %43, 2048, !dbg !1510
  store volatile i32 %44, i32* inttoptr (i32 -2130562992 to i32*), align 16, !dbg !1510
  br label %48, !dbg !1511

45:                                               ; preds = %38
  %46 = zext i16 %4 to i32, !dbg !1512
  %47 = shl nuw i32 1, %46, !dbg !1512
  store volatile i32 %47, i32* inttoptr (i32 -2097106920 to i32*), align 8, !dbg !1512
  br label %48

48:                                               ; preds = %13, %23, %33, %28, %18, %8, %45, %40, %1
  %49 = phi i32 [ -1, %1 ], [ 0, %40 ], [ 0, %45 ], [ 0, %8 ], [ 0, %18 ], [ 0, %28 ], [ 0, %33 ], [ 0, %23 ], [ 0, %13 ], !dbg !1467
  ret i32 %49, !dbg !1514
}

; Function Attrs: nofree noinline norecurse nounwind optsize
define dso_local i32 @halGPIO_PullDown_SET(i32 noundef %0) local_unnamed_addr #3 !dbg !1515 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !1517, metadata !DIExpression()), !dbg !1520
  %2 = lshr i32 %0, 5, !dbg !1521
  call void @llvm.dbg.value(metadata i32 %2, metadata !1518, metadata !DIExpression(DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 16, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1520
  %3 = trunc i32 %0 to i16, !dbg !1522
  %4 = and i16 %3, 31, !dbg !1522
  call void @llvm.dbg.value(metadata i16 %3, metadata !1519, metadata !DIExpression(DW_OP_constu, 31, DW_OP_and, DW_OP_stack_value)), !dbg !1520
  %5 = tail call i32 @halGPIO_PullUp_RESET(i32 noundef %0) #13, !dbg !1523
  %6 = trunc i32 %2 to i16, !dbg !1524
  switch i16 %6, label %49 [
    i16 0, label %7
    i16 1, label %39
  ], !dbg !1524

7:                                                ; preds = %1
  %8 = icmp ult i16 %4, 27, !dbg !1525
  br i1 %8, label %9, label %12, !dbg !1528

9:                                                ; preds = %7
  %10 = zext i16 %4 to i32, !dbg !1529
  %11 = shl nuw nsw i32 1, %10, !dbg !1530
  store volatile i32 %11, i32* inttoptr (i32 -2097106892 to i32*), align 4, !dbg !1530
  br label %49, !dbg !1532

12:                                               ; preds = %7
  %13 = trunc i32 %0 to i5, !dbg !1533
  switch i5 %13, label %34 [
    i5 -5, label %14
    i5 -4, label %19
    i5 -3, label %24
    i5 -2, label %29
  ], !dbg !1533

14:                                               ; preds = %12
  %15 = load volatile i32, i32* inttoptr (i32 -2130563000 to i32*), align 8, !dbg !1534
  %16 = and i32 %15, -29, !dbg !1534
  store volatile i32 %16, i32* inttoptr (i32 -2130563000 to i32*), align 8, !dbg !1534
  %17 = load volatile i32, i32* inttoptr (i32 -2130563000 to i32*), align 8, !dbg !1537
  %18 = or i32 %17, 2068, !dbg !1537
  store volatile i32 %18, i32* inttoptr (i32 -2130563000 to i32*), align 8, !dbg !1537
  br label %49, !dbg !1538

19:                                               ; preds = %12
  %20 = load volatile i32, i32* inttoptr (i32 -2130562996 to i32*), align 4, !dbg !1539
  %21 = and i32 %20, -29, !dbg !1539
  store volatile i32 %21, i32* inttoptr (i32 -2130562996 to i32*), align 4, !dbg !1539
  %22 = load volatile i32, i32* inttoptr (i32 -2130562996 to i32*), align 4, !dbg !1542
  %23 = or i32 %22, 2068, !dbg !1542
  store volatile i32 %23, i32* inttoptr (i32 -2130562996 to i32*), align 4, !dbg !1542
  br label %49, !dbg !1543

24:                                               ; preds = %12
  %25 = load volatile i32, i32* inttoptr (i32 -2130562980 to i32*), align 4, !dbg !1544
  %26 = and i32 %25, -29, !dbg !1544
  store volatile i32 %26, i32* inttoptr (i32 -2130562980 to i32*), align 4, !dbg !1544
  %27 = load volatile i32, i32* inttoptr (i32 -2130562980 to i32*), align 4, !dbg !1547
  %28 = or i32 %27, 2068, !dbg !1547
  store volatile i32 %28, i32* inttoptr (i32 -2130562980 to i32*), align 4, !dbg !1547
  br label %49, !dbg !1548

29:                                               ; preds = %12
  %30 = load volatile i32, i32* inttoptr (i32 -2130562984 to i32*), align 8, !dbg !1549
  %31 = and i32 %30, -29, !dbg !1549
  store volatile i32 %31, i32* inttoptr (i32 -2130562984 to i32*), align 8, !dbg !1549
  %32 = load volatile i32, i32* inttoptr (i32 -2130562984 to i32*), align 8, !dbg !1552
  %33 = or i32 %32, 2068, !dbg !1552
  store volatile i32 %33, i32* inttoptr (i32 -2130562984 to i32*), align 8, !dbg !1552
  br label %49, !dbg !1553

34:                                               ; preds = %12
  %35 = load volatile i32, i32* inttoptr (i32 -2130562988 to i32*), align 4, !dbg !1554
  %36 = and i32 %35, -29, !dbg !1554
  store volatile i32 %36, i32* inttoptr (i32 -2130562988 to i32*), align 4, !dbg !1554
  %37 = load volatile i32, i32* inttoptr (i32 -2130562988 to i32*), align 4, !dbg !1557
  %38 = or i32 %37, 2068, !dbg !1557
  store volatile i32 %38, i32* inttoptr (i32 -2130562988 to i32*), align 4, !dbg !1557
  br label %49, !dbg !1558

39:                                               ; preds = %1
  %40 = icmp eq i16 %4, 0, !dbg !1559
  br i1 %40, label %41, label %46, !dbg !1561

41:                                               ; preds = %39
  %42 = load volatile i32, i32* inttoptr (i32 -2130562992 to i32*), align 16, !dbg !1562
  %43 = and i32 %42, -29, !dbg !1562
  store volatile i32 %43, i32* inttoptr (i32 -2130562992 to i32*), align 16, !dbg !1562
  %44 = load volatile i32, i32* inttoptr (i32 -2130562992 to i32*), align 16, !dbg !1564
  %45 = or i32 %44, 2068, !dbg !1564
  store volatile i32 %45, i32* inttoptr (i32 -2130562992 to i32*), align 16, !dbg !1564
  br label %49, !dbg !1565

46:                                               ; preds = %39
  %47 = zext i16 %4 to i32, !dbg !1566
  %48 = shl nuw i32 1, %47, !dbg !1566
  store volatile i32 %48, i32* inttoptr (i32 -2097106876 to i32*), align 4, !dbg !1566
  br label %49

49:                                               ; preds = %14, %24, %34, %29, %19, %9, %46, %41, %1
  %50 = phi i32 [ -1, %1 ], [ 0, %41 ], [ 0, %46 ], [ 0, %9 ], [ 0, %19 ], [ 0, %29 ], [ 0, %34 ], [ 0, %24 ], [ 0, %14 ], !dbg !1520
  ret i32 %50, !dbg !1568
}

; Function Attrs: nofree noinline norecurse nounwind optsize
define dso_local i32 @halGPIO_SetDriving(i32 noundef %0, i8 noundef zeroext %1) local_unnamed_addr #3 !dbg !1569 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !1571, metadata !DIExpression()), !dbg !1575
  call void @llvm.dbg.value(metadata i8 %1, metadata !1572, metadata !DIExpression()), !dbg !1575
  %3 = lshr i32 %0, 4, !dbg !1576
  call void @llvm.dbg.value(metadata i32 %3, metadata !1573, metadata !DIExpression(DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 16, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1575
  %4 = trunc i32 %0 to i16, !dbg !1577
  %5 = and i16 %4, 15, !dbg !1577
  call void @llvm.dbg.value(metadata i16 %4, metadata !1574, metadata !DIExpression(DW_OP_constu, 15, DW_OP_and, DW_OP_stack_value)), !dbg !1575
  %6 = trunc i32 %3 to i16, !dbg !1578
  switch i16 %6, label %131 [
    i16 0, label %7
    i16 1, label %20
    i16 2, label %92
    i16 3, label %118
  ], !dbg !1578

7:                                                ; preds = %2
  %8 = shl nuw nsw i16 %5, 1, !dbg !1579
  %9 = zext i16 %8 to i32, !dbg !1579
  %10 = shl nuw i32 3, %9, !dbg !1581
  %11 = xor i32 %10, -1, !dbg !1582
  %12 = load volatile i32, i32* inttoptr (i32 -2097106736 to i32*), align 16, !dbg !1583
  %13 = and i32 %12, %11, !dbg !1583
  store volatile i32 %13, i32* inttoptr (i32 -2097106736 to i32*), align 16, !dbg !1583
  %14 = lshr i8 %1, 2, !dbg !1584
  %15 = zext i8 %14 to i32, !dbg !1584
  %16 = add nsw i32 %15, -1, !dbg !1585
  %17 = shl i32 %16, %9, !dbg !1586
  %18 = load volatile i32, i32* inttoptr (i32 -2097106736 to i32*), align 16, !dbg !1587
  %19 = or i32 %18, %17, !dbg !1587
  store volatile i32 %19, i32* inttoptr (i32 -2097106736 to i32*), align 16, !dbg !1587
  br label %131, !dbg !1588

20:                                               ; preds = %2
  %21 = icmp ult i16 %5, 11, !dbg !1589
  br i1 %21, label %22, label %35, !dbg !1591

22:                                               ; preds = %20
  %23 = shl nuw nsw i16 %5, 1, !dbg !1592
  %24 = zext i16 %23 to i32, !dbg !1592
  %25 = shl nuw nsw i32 3, %24, !dbg !1594
  %26 = xor i32 %25, -1, !dbg !1595
  %27 = load volatile i32, i32* inttoptr (i32 -2097106732 to i32*), align 4, !dbg !1596
  %28 = and i32 %27, %26, !dbg !1596
  store volatile i32 %28, i32* inttoptr (i32 -2097106732 to i32*), align 4, !dbg !1596
  %29 = lshr i8 %1, 2, !dbg !1597
  %30 = zext i8 %29 to i32, !dbg !1597
  %31 = add nsw i32 %30, -1, !dbg !1598
  %32 = shl nsw i32 %31, %24, !dbg !1599
  %33 = load volatile i32, i32* inttoptr (i32 -2097106732 to i32*), align 4, !dbg !1600
  %34 = or i32 %33, %32, !dbg !1600
  store volatile i32 %34, i32* inttoptr (i32 -2097106732 to i32*), align 4, !dbg !1600
  br label %131, !dbg !1601

35:                                               ; preds = %20
  %36 = trunc i32 %0 to i4, !dbg !1602
  switch i4 %36, label %81 [
    i4 -5, label %37
    i4 -4, label %48
    i4 -3, label %59
    i4 -2, label %70
  ], !dbg !1602

37:                                               ; preds = %35
  %38 = load volatile i32, i32* inttoptr (i32 -2130563000 to i32*), align 8, !dbg !1603
  %39 = and i32 %38, -449, !dbg !1603
  store volatile i32 %39, i32* inttoptr (i32 -2130563000 to i32*), align 8, !dbg !1603
  %40 = lshr i8 %1, 1, !dbg !1606
  %41 = zext i8 %40 to i32, !dbg !1606
  %42 = shl nuw nsw i32 %41, 6, !dbg !1607
  %43 = add nsw i32 %42, -64, !dbg !1607
  %44 = load volatile i32, i32* inttoptr (i32 -2130563000 to i32*), align 8, !dbg !1608
  %45 = or i32 %44, %43, !dbg !1608
  store volatile i32 %45, i32* inttoptr (i32 -2130563000 to i32*), align 8, !dbg !1608
  %46 = load volatile i32, i32* inttoptr (i32 -2130563000 to i32*), align 8, !dbg !1609
  %47 = or i32 %46, 2048, !dbg !1609
  store volatile i32 %47, i32* inttoptr (i32 -2130563000 to i32*), align 8, !dbg !1609
  br label %131, !dbg !1610

48:                                               ; preds = %35
  %49 = load volatile i32, i32* inttoptr (i32 -2130562996 to i32*), align 4, !dbg !1611
  %50 = and i32 %49, -449, !dbg !1611
  store volatile i32 %50, i32* inttoptr (i32 -2130562996 to i32*), align 4, !dbg !1611
  %51 = lshr i8 %1, 1, !dbg !1614
  %52 = zext i8 %51 to i32, !dbg !1614
  %53 = shl nuw nsw i32 %52, 6, !dbg !1615
  %54 = add nsw i32 %53, -64, !dbg !1615
  %55 = load volatile i32, i32* inttoptr (i32 -2130562996 to i32*), align 4, !dbg !1616
  %56 = or i32 %55, %54, !dbg !1616
  store volatile i32 %56, i32* inttoptr (i32 -2130562996 to i32*), align 4, !dbg !1616
  %57 = load volatile i32, i32* inttoptr (i32 -2130562996 to i32*), align 4, !dbg !1617
  %58 = or i32 %57, 2048, !dbg !1617
  store volatile i32 %58, i32* inttoptr (i32 -2130562996 to i32*), align 4, !dbg !1617
  br label %131, !dbg !1618

59:                                               ; preds = %35
  %60 = load volatile i32, i32* inttoptr (i32 -2130562980 to i32*), align 4, !dbg !1619
  %61 = and i32 %60, -449, !dbg !1619
  store volatile i32 %61, i32* inttoptr (i32 -2130562980 to i32*), align 4, !dbg !1619
  %62 = lshr i8 %1, 1, !dbg !1622
  %63 = zext i8 %62 to i32, !dbg !1622
  %64 = shl nuw nsw i32 %63, 6, !dbg !1623
  %65 = add nsw i32 %64, -64, !dbg !1623
  %66 = load volatile i32, i32* inttoptr (i32 -2130562980 to i32*), align 4, !dbg !1624
  %67 = or i32 %66, %65, !dbg !1624
  store volatile i32 %67, i32* inttoptr (i32 -2130562980 to i32*), align 4, !dbg !1624
  %68 = load volatile i32, i32* inttoptr (i32 -2130562980 to i32*), align 4, !dbg !1625
  %69 = or i32 %68, 2048, !dbg !1625
  store volatile i32 %69, i32* inttoptr (i32 -2130562980 to i32*), align 4, !dbg !1625
  br label %131, !dbg !1626

70:                                               ; preds = %35
  %71 = load volatile i32, i32* inttoptr (i32 -2130562984 to i32*), align 8, !dbg !1627
  %72 = and i32 %71, -449, !dbg !1627
  store volatile i32 %72, i32* inttoptr (i32 -2130562984 to i32*), align 8, !dbg !1627
  %73 = lshr i8 %1, 1, !dbg !1630
  %74 = zext i8 %73 to i32, !dbg !1630
  %75 = shl nuw nsw i32 %74, 6, !dbg !1631
  %76 = add nsw i32 %75, -64, !dbg !1631
  %77 = load volatile i32, i32* inttoptr (i32 -2130562984 to i32*), align 8, !dbg !1632
  %78 = or i32 %77, %76, !dbg !1632
  store volatile i32 %78, i32* inttoptr (i32 -2130562984 to i32*), align 8, !dbg !1632
  %79 = load volatile i32, i32* inttoptr (i32 -2130562984 to i32*), align 8, !dbg !1633
  %80 = or i32 %79, 2048, !dbg !1633
  store volatile i32 %80, i32* inttoptr (i32 -2130562984 to i32*), align 8, !dbg !1633
  br label %131, !dbg !1634

81:                                               ; preds = %35
  %82 = load volatile i32, i32* inttoptr (i32 -2130562988 to i32*), align 4, !dbg !1635
  %83 = and i32 %82, -449, !dbg !1635
  store volatile i32 %83, i32* inttoptr (i32 -2130562988 to i32*), align 4, !dbg !1635
  %84 = lshr i8 %1, 1, !dbg !1638
  %85 = zext i8 %84 to i32, !dbg !1638
  %86 = shl nuw nsw i32 %85, 6, !dbg !1639
  %87 = add nsw i32 %86, -64, !dbg !1639
  %88 = load volatile i32, i32* inttoptr (i32 -2130562988 to i32*), align 4, !dbg !1640
  %89 = or i32 %88, %87, !dbg !1640
  store volatile i32 %89, i32* inttoptr (i32 -2130562988 to i32*), align 4, !dbg !1640
  %90 = load volatile i32, i32* inttoptr (i32 -2130562988 to i32*), align 4, !dbg !1641
  %91 = or i32 %90, 2048, !dbg !1641
  store volatile i32 %91, i32* inttoptr (i32 -2130562988 to i32*), align 4, !dbg !1641
  br label %131, !dbg !1642

92:                                               ; preds = %2
  %93 = icmp eq i16 %5, 0, !dbg !1643
  br i1 %93, label %94, label %105, !dbg !1645

94:                                               ; preds = %92
  %95 = load volatile i32, i32* inttoptr (i32 -2130562992 to i32*), align 16, !dbg !1646
  %96 = and i32 %95, -449, !dbg !1646
  store volatile i32 %96, i32* inttoptr (i32 -2130562992 to i32*), align 16, !dbg !1646
  %97 = lshr i8 %1, 1, !dbg !1648
  %98 = zext i8 %97 to i32, !dbg !1648
  %99 = shl nuw nsw i32 %98, 6, !dbg !1649
  %100 = add nsw i32 %99, -64, !dbg !1649
  %101 = load volatile i32, i32* inttoptr (i32 -2130562992 to i32*), align 16, !dbg !1650
  %102 = or i32 %101, %100, !dbg !1650
  store volatile i32 %102, i32* inttoptr (i32 -2130562992 to i32*), align 16, !dbg !1650
  %103 = load volatile i32, i32* inttoptr (i32 -2130562992 to i32*), align 16, !dbg !1651
  %104 = or i32 %103, 2048, !dbg !1651
  store volatile i32 %104, i32* inttoptr (i32 -2130562992 to i32*), align 16, !dbg !1651
  br label %131, !dbg !1652

105:                                              ; preds = %92
  %106 = shl nuw nsw i16 %5, 1, !dbg !1653
  %107 = zext i16 %106 to i32, !dbg !1653
  %108 = shl nuw i32 3, %107, !dbg !1655
  %109 = xor i32 %108, -1, !dbg !1656
  %110 = load volatile i32, i32* inttoptr (i32 -2097106728 to i32*), align 8, !dbg !1657
  %111 = and i32 %110, %109, !dbg !1657
  store volatile i32 %111, i32* inttoptr (i32 -2097106728 to i32*), align 8, !dbg !1657
  %112 = lshr i8 %1, 2, !dbg !1658
  %113 = zext i8 %112 to i32, !dbg !1658
  %114 = add nsw i32 %113, -1, !dbg !1659
  %115 = shl i32 %114, %107, !dbg !1660
  %116 = load volatile i32, i32* inttoptr (i32 -2097106728 to i32*), align 8, !dbg !1661
  %117 = or i32 %116, %115, !dbg !1661
  store volatile i32 %117, i32* inttoptr (i32 -2097106728 to i32*), align 8, !dbg !1661
  br label %131

118:                                              ; preds = %2
  %119 = shl nuw nsw i16 %5, 1, !dbg !1662
  %120 = zext i16 %119 to i32, !dbg !1662
  %121 = shl nuw i32 3, %120, !dbg !1663
  %122 = xor i32 %121, -1, !dbg !1664
  %123 = load volatile i32, i32* inttoptr (i32 -2097106724 to i32*), align 4, !dbg !1665
  %124 = and i32 %123, %122, !dbg !1665
  store volatile i32 %124, i32* inttoptr (i32 -2097106724 to i32*), align 4, !dbg !1665
  %125 = lshr i8 %1, 2, !dbg !1666
  %126 = zext i8 %125 to i32, !dbg !1666
  %127 = add nsw i32 %126, -1, !dbg !1667
  %128 = shl i32 %127, %120, !dbg !1668
  %129 = load volatile i32, i32* inttoptr (i32 -2097106724 to i32*), align 4, !dbg !1669
  %130 = or i32 %129, %128, !dbg !1669
  store volatile i32 %130, i32* inttoptr (i32 -2097106724 to i32*), align 4, !dbg !1669
  br label %131, !dbg !1670

131:                                              ; preds = %7, %118, %37, %59, %81, %70, %48, %22, %105, %94, %2
  %132 = phi i32 [ -1, %2 ], [ 0, %94 ], [ 0, %105 ], [ 0, %22 ], [ 0, %48 ], [ 0, %70 ], [ 0, %81 ], [ 0, %59 ], [ 0, %37 ], [ 0, %118 ], [ 0, %7 ], !dbg !1575
  ret i32 %132, !dbg !1671
}

; Function Attrs: mustprogress nofree noinline norecurse nounwind optsize willreturn
define dso_local i32 @halGPIO_GetDriving(i32 noundef %0, i8* nocapture noundef writeonly %1) local_unnamed_addr #4 !dbg !1672 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !1677, metadata !DIExpression()), !dbg !1682
  call void @llvm.dbg.value(metadata i8* %1, metadata !1678, metadata !DIExpression()), !dbg !1682
  %3 = lshr i32 %0, 4, !dbg !1683
  call void @llvm.dbg.value(metadata i32 %3, metadata !1679, metadata !DIExpression(DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 16, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1682
  %4 = trunc i32 %0 to i16, !dbg !1684
  %5 = and i16 %4, 15, !dbg !1684
  call void @llvm.dbg.value(metadata i16 %4, metadata !1680, metadata !DIExpression(DW_OP_constu, 15, DW_OP_and, DW_OP_stack_value)), !dbg !1682
  %6 = trunc i32 %3 to i16, !dbg !1685
  switch i16 %6, label %91 [
    i16 0, label %7
    i16 1, label %17
    i16 2, label %61
    i16 3, label %79
  ], !dbg !1685

7:                                                ; preds = %2
  %8 = load volatile i32, i32* inttoptr (i32 -2097106736 to i32*), align 16, !dbg !1686
  call void @llvm.dbg.value(metadata i32 %8, metadata !1681, metadata !DIExpression()), !dbg !1682
  %9 = shl nuw nsw i16 %5, 1, !dbg !1688
  %10 = zext i16 %9 to i32, !dbg !1688
  %11 = shl nuw i32 3, %10, !dbg !1689
  %12 = and i32 %8, %11, !dbg !1690
  call void @llvm.dbg.value(metadata i32 %12, metadata !1681, metadata !DIExpression()), !dbg !1682
  %13 = lshr i32 %12, %10, !dbg !1691
  %14 = trunc i32 %13 to i8, !dbg !1692
  %15 = shl i8 %14, 2, !dbg !1692
  %16 = add i8 %15, 4, !dbg !1692
  br label %89, !dbg !1693

17:                                               ; preds = %2
  %18 = icmp ult i16 %5, 11, !dbg !1694
  br i1 %18, label %19, label %29, !dbg !1696

19:                                               ; preds = %17
  %20 = load volatile i32, i32* inttoptr (i32 -2097106732 to i32*), align 4, !dbg !1697
  call void @llvm.dbg.value(metadata i32 %20, metadata !1681, metadata !DIExpression()), !dbg !1682
  %21 = shl nuw nsw i16 %5, 1, !dbg !1699
  %22 = zext i16 %21 to i32, !dbg !1699
  %23 = shl nuw nsw i32 3, %22, !dbg !1700
  %24 = and i32 %20, %23, !dbg !1701
  call void @llvm.dbg.value(metadata i32 %24, metadata !1681, metadata !DIExpression()), !dbg !1682
  %25 = lshr i32 %24, %22, !dbg !1702
  %26 = trunc i32 %25 to i8, !dbg !1703
  %27 = shl i8 %26, 2, !dbg !1703
  %28 = add i8 %27, 4, !dbg !1703
  br label %89, !dbg !1704

29:                                               ; preds = %17
  %30 = trunc i32 %0 to i4, !dbg !1705
  switch i4 %30, label %55 [
    i4 -5, label %31
    i4 -4, label %37
    i4 -3, label %43
    i4 -2, label %49
  ], !dbg !1705

31:                                               ; preds = %29
  %32 = load volatile i32, i32* inttoptr (i32 -2130563000 to i32*), align 8, !dbg !1706
  call void @llvm.dbg.value(metadata i32 %32, metadata !1681, metadata !DIExpression()), !dbg !1682
  call void @llvm.dbg.value(metadata i32 %32, metadata !1681, metadata !DIExpression(DW_OP_constu, 448, DW_OP_and, DW_OP_stack_value)), !dbg !1682
  %33 = lshr i32 %32, 5, !dbg !1709
  %34 = trunc i32 %33 to i8, !dbg !1710
  %35 = and i8 %34, 14, !dbg !1710
  %36 = add nuw nsw i8 %35, 2, !dbg !1710
  br label %89, !dbg !1711

37:                                               ; preds = %29
  %38 = load volatile i32, i32* inttoptr (i32 -2130562996 to i32*), align 4, !dbg !1712
  call void @llvm.dbg.value(metadata i32 %38, metadata !1681, metadata !DIExpression()), !dbg !1682
  call void @llvm.dbg.value(metadata i32 %38, metadata !1681, metadata !DIExpression(DW_OP_constu, 448, DW_OP_and, DW_OP_stack_value)), !dbg !1682
  %39 = lshr i32 %38, 5, !dbg !1715
  %40 = trunc i32 %39 to i8, !dbg !1716
  %41 = and i8 %40, 14, !dbg !1716
  %42 = add nuw nsw i8 %41, 2, !dbg !1716
  br label %89, !dbg !1717

43:                                               ; preds = %29
  %44 = load volatile i32, i32* inttoptr (i32 -2130562980 to i32*), align 4, !dbg !1718
  call void @llvm.dbg.value(metadata i32 %44, metadata !1681, metadata !DIExpression()), !dbg !1682
  call void @llvm.dbg.value(metadata i32 %44, metadata !1681, metadata !DIExpression(DW_OP_constu, 448, DW_OP_and, DW_OP_stack_value)), !dbg !1682
  %45 = lshr i32 %44, 5, !dbg !1721
  %46 = trunc i32 %45 to i8, !dbg !1722
  %47 = and i8 %46, 14, !dbg !1722
  %48 = add nuw nsw i8 %47, 2, !dbg !1722
  br label %89, !dbg !1723

49:                                               ; preds = %29
  %50 = load volatile i32, i32* inttoptr (i32 -2130562984 to i32*), align 8, !dbg !1724
  call void @llvm.dbg.value(metadata i32 %50, metadata !1681, metadata !DIExpression()), !dbg !1682
  call void @llvm.dbg.value(metadata i32 %50, metadata !1681, metadata !DIExpression(DW_OP_constu, 448, DW_OP_and, DW_OP_stack_value)), !dbg !1682
  %51 = lshr i32 %50, 5, !dbg !1727
  %52 = trunc i32 %51 to i8, !dbg !1728
  %53 = and i8 %52, 14, !dbg !1728
  %54 = add nuw nsw i8 %53, 2, !dbg !1728
  br label %89, !dbg !1729

55:                                               ; preds = %29
  %56 = load volatile i32, i32* inttoptr (i32 -2130562988 to i32*), align 4, !dbg !1730
  call void @llvm.dbg.value(metadata i32 %56, metadata !1681, metadata !DIExpression()), !dbg !1682
  call void @llvm.dbg.value(metadata i32 %56, metadata !1681, metadata !DIExpression(DW_OP_constu, 448, DW_OP_and, DW_OP_stack_value)), !dbg !1682
  %57 = lshr i32 %56, 5, !dbg !1733
  %58 = trunc i32 %57 to i8, !dbg !1734
  %59 = and i8 %58, 14, !dbg !1734
  %60 = add nuw nsw i8 %59, 2, !dbg !1734
  br label %89, !dbg !1735

61:                                               ; preds = %2
  %62 = icmp eq i16 %5, 0, !dbg !1736
  br i1 %62, label %63, label %69, !dbg !1738

63:                                               ; preds = %61
  %64 = load volatile i32, i32* inttoptr (i32 -2130562992 to i32*), align 16, !dbg !1739
  call void @llvm.dbg.value(metadata i32 %64, metadata !1681, metadata !DIExpression()), !dbg !1682
  call void @llvm.dbg.value(metadata i32 %64, metadata !1681, metadata !DIExpression(DW_OP_constu, 448, DW_OP_and, DW_OP_stack_value)), !dbg !1682
  %65 = lshr i32 %64, 5, !dbg !1741
  %66 = trunc i32 %65 to i8, !dbg !1742
  %67 = and i8 %66, 14, !dbg !1742
  %68 = add nuw nsw i8 %67, 2, !dbg !1742
  br label %89, !dbg !1743

69:                                               ; preds = %61
  %70 = load volatile i32, i32* inttoptr (i32 -2097106728 to i32*), align 8, !dbg !1744
  call void @llvm.dbg.value(metadata i32 %70, metadata !1681, metadata !DIExpression()), !dbg !1682
  %71 = shl nuw nsw i16 %5, 1, !dbg !1746
  %72 = zext i16 %71 to i32, !dbg !1746
  %73 = shl nuw i32 3, %72, !dbg !1747
  %74 = and i32 %70, %73, !dbg !1748
  call void @llvm.dbg.value(metadata i32 %74, metadata !1681, metadata !DIExpression()), !dbg !1682
  %75 = lshr i32 %74, %72, !dbg !1749
  %76 = trunc i32 %75 to i8, !dbg !1750
  %77 = shl i8 %76, 2, !dbg !1750
  %78 = add i8 %77, 4, !dbg !1750
  br label %89

79:                                               ; preds = %2
  %80 = load volatile i32, i32* inttoptr (i32 -2097106724 to i32*), align 4, !dbg !1751
  call void @llvm.dbg.value(metadata i32 %80, metadata !1681, metadata !DIExpression()), !dbg !1682
  %81 = shl nuw nsw i16 %5, 1, !dbg !1752
  %82 = zext i16 %81 to i32, !dbg !1752
  %83 = shl nuw i32 3, %82, !dbg !1753
  %84 = and i32 %80, %83, !dbg !1754
  call void @llvm.dbg.value(metadata i32 %84, metadata !1681, metadata !DIExpression()), !dbg !1682
  %85 = lshr i32 %84, %82, !dbg !1755
  %86 = trunc i32 %85 to i8, !dbg !1756
  %87 = shl i8 %86, 2, !dbg !1756
  %88 = add i8 %87, 4, !dbg !1756
  br label %89, !dbg !1757

89:                                               ; preds = %63, %69, %19, %37, %49, %55, %43, %31, %79, %7
  %90 = phi i8 [ %16, %7 ], [ %88, %79 ], [ %36, %31 ], [ %48, %43 ], [ %60, %55 ], [ %54, %49 ], [ %42, %37 ], [ %28, %19 ], [ %78, %69 ], [ %68, %63 ]
  store i8 %90, i8* %1, align 1, !dbg !1758
  br label %91, !dbg !1759

91:                                               ; preds = %89, %2
  %92 = phi i32 [ -1, %2 ], [ 0, %89 ], !dbg !1682
  ret i32 %92, !dbg !1759
}

; Function Attrs: nofree noinline norecurse nounwind optsize
define dso_local void @topPAD_Control_GPIO(i32 noundef %0, i32 noundef %1) local_unnamed_addr #3 !dbg !1760 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !1765, metadata !DIExpression()), !dbg !1769
  call void @llvm.dbg.value(metadata i32 %1, metadata !1766, metadata !DIExpression()), !dbg !1769
  %3 = lshr i32 %0, 5, !dbg !1770
  call void @llvm.dbg.value(metadata i32 %3, metadata !1767, metadata !DIExpression(DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 16, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1769
  %4 = trunc i32 %0 to i16, !dbg !1771
  %5 = and i16 %4, 31, !dbg !1771
  call void @llvm.dbg.value(metadata i16 %5, metadata !1768, metadata !DIExpression()), !dbg !1769
  switch i32 %1, label %32 [
    i32 1, label %6
    i32 0, label %18
  ], !dbg !1772

6:                                                ; preds = %2
  call void @llvm.dbg.value(metadata i32 %3, metadata !1767, metadata !DIExpression()), !dbg !1769
  %7 = trunc i32 %3 to i16, !dbg !1773
  switch i16 %7, label %32 [
    i16 0, label %8
    i16 1, label %13
  ], !dbg !1773

8:                                                ; preds = %6
  %9 = zext i16 %5 to i32, !dbg !1776
  %10 = shl nuw i32 1, %9, !dbg !1778
  %11 = load volatile i32, i32* inttoptr (i32 -2130571136 to i32*), align 128, !dbg !1779
  %12 = or i32 %11, %10, !dbg !1779
  store volatile i32 %12, i32* inttoptr (i32 -2130571136 to i32*), align 128, !dbg !1779
  br label %32, !dbg !1780

13:                                               ; preds = %6
  %14 = zext i16 %5 to i32, !dbg !1781
  %15 = shl nuw i32 1, %14, !dbg !1782
  %16 = load volatile i32, i32* inttoptr (i32 -2130571132 to i32*), align 4, !dbg !1783
  %17 = or i32 %16, %15, !dbg !1783
  store volatile i32 %17, i32* inttoptr (i32 -2130571132 to i32*), align 4, !dbg !1783
  br label %32, !dbg !1784

18:                                               ; preds = %2
  %19 = trunc i32 %3 to i16, !dbg !1785
  switch i16 %19, label %32 [
    i16 0, label %20
    i16 1, label %26
  ], !dbg !1785

20:                                               ; preds = %18
  %21 = zext i16 %5 to i32, !dbg !1788
  %22 = shl nuw i32 1, %21, !dbg !1790
  %23 = xor i32 %22, -1, !dbg !1791
  %24 = load volatile i32, i32* inttoptr (i32 -2130571136 to i32*), align 128, !dbg !1792
  %25 = and i32 %24, %23, !dbg !1792
  store volatile i32 %25, i32* inttoptr (i32 -2130571136 to i32*), align 128, !dbg !1792
  br label %32, !dbg !1793

26:                                               ; preds = %18
  %27 = zext i16 %5 to i32, !dbg !1794
  %28 = shl nuw i32 1, %27, !dbg !1795
  %29 = xor i32 %28, -1, !dbg !1796
  %30 = load volatile i32, i32* inttoptr (i32 -2130571132 to i32*), align 4, !dbg !1797
  %31 = and i32 %30, %29, !dbg !1797
  store volatile i32 %31, i32* inttoptr (i32 -2130571132 to i32*), align 4, !dbg !1797
  br label %32, !dbg !1798

32:                                               ; preds = %2, %18, %26, %20, %8, %13, %6
  ret void, !dbg !1799
}

; Function Attrs: noinline nounwind optsize
define dso_local void @halPinmuxTopOnPadFunc(i32 noundef %0, i8 noundef zeroext %1) local_unnamed_addr #0 !dbg !1800 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !1806, metadata !DIExpression()), !dbg !1809
  call void @llvm.dbg.value(metadata i8 %1, metadata !1807, metadata !DIExpression()), !dbg !1809
  switch i32 %0, label %187 [
    i32 0, label %3
    i32 1, label %8
    i32 2, label %14
    i32 3, label %20
    i32 4, label %26
    i32 5, label %32
    i32 6, label %38
    i32 7, label %44
    i32 24, label %50
    i32 25, label %55
    i32 26, label %61
    i32 27, label %67
    i32 28, label %75
    i32 29, label %85
    i32 30, label %94
    i32 31, label %102
    i32 32, label %112
    i32 33, label %121
    i32 34, label %127
    i32 35, label %133
    i32 36, label %139
    i32 37, label %145
    i32 38, label %151
    i32 39, label %157
    i32 57, label %163
    i32 58, label %169
    i32 59, label %175
    i32 60, label %181
  ], !dbg !1810

3:                                                ; preds = %2
  %4 = load volatile i32, i32* inttoptr (i32 -2130563040 to i32*), align 32, !dbg !1811
  call void @llvm.dbg.value(metadata i32 %4, metadata !1808, metadata !DIExpression()), !dbg !1809
  %5 = and i32 %4, -16, !dbg !1813
  call void @llvm.dbg.value(metadata i32 %5, metadata !1808, metadata !DIExpression()), !dbg !1809
  %6 = zext i8 %1 to i32, !dbg !1814
  %7 = or i32 %5, %6, !dbg !1815
  store volatile i32 %7, i32* inttoptr (i32 -2130563040 to i32*), align 32, !dbg !1816
  br label %187, !dbg !1817

8:                                                ; preds = %2
  %9 = load volatile i32, i32* inttoptr (i32 -2130563040 to i32*), align 32, !dbg !1818
  call void @llvm.dbg.value(metadata i32 %9, metadata !1808, metadata !DIExpression()), !dbg !1809
  %10 = and i32 %9, -241, !dbg !1819
  call void @llvm.dbg.value(metadata i32 %10, metadata !1808, metadata !DIExpression()), !dbg !1809
  %11 = zext i8 %1 to i32, !dbg !1820
  %12 = shl nuw nsw i32 %11, 4, !dbg !1821
  %13 = or i32 %10, %12, !dbg !1822
  store volatile i32 %13, i32* inttoptr (i32 -2130563040 to i32*), align 32, !dbg !1823
  br label %187, !dbg !1824

14:                                               ; preds = %2
  %15 = load volatile i32, i32* inttoptr (i32 -2130563040 to i32*), align 32, !dbg !1825
  call void @llvm.dbg.value(metadata i32 %15, metadata !1808, metadata !DIExpression()), !dbg !1809
  %16 = and i32 %15, -3841, !dbg !1826
  call void @llvm.dbg.value(metadata i32 %16, metadata !1808, metadata !DIExpression()), !dbg !1809
  %17 = zext i8 %1 to i32, !dbg !1827
  %18 = shl nuw nsw i32 %17, 8, !dbg !1828
  %19 = or i32 %16, %18, !dbg !1829
  store volatile i32 %19, i32* inttoptr (i32 -2130563040 to i32*), align 32, !dbg !1830
  br label %187, !dbg !1831

20:                                               ; preds = %2
  %21 = load volatile i32, i32* inttoptr (i32 -2130563040 to i32*), align 32, !dbg !1832
  call void @llvm.dbg.value(metadata i32 %21, metadata !1808, metadata !DIExpression()), !dbg !1809
  %22 = and i32 %21, -61441, !dbg !1833
  call void @llvm.dbg.value(metadata i32 %22, metadata !1808, metadata !DIExpression()), !dbg !1809
  %23 = zext i8 %1 to i32, !dbg !1834
  %24 = shl nuw nsw i32 %23, 12, !dbg !1835
  %25 = or i32 %22, %24, !dbg !1836
  store volatile i32 %25, i32* inttoptr (i32 -2130563040 to i32*), align 32, !dbg !1837
  br label %187, !dbg !1838

26:                                               ; preds = %2
  %27 = load volatile i32, i32* inttoptr (i32 -2130563040 to i32*), align 32, !dbg !1839
  call void @llvm.dbg.value(metadata i32 %27, metadata !1808, metadata !DIExpression()), !dbg !1809
  %28 = and i32 %27, -983041, !dbg !1840
  call void @llvm.dbg.value(metadata i32 %28, metadata !1808, metadata !DIExpression()), !dbg !1809
  %29 = zext i8 %1 to i32, !dbg !1841
  %30 = shl nuw nsw i32 %29, 16, !dbg !1842
  %31 = or i32 %28, %30, !dbg !1843
  store volatile i32 %31, i32* inttoptr (i32 -2130563040 to i32*), align 32, !dbg !1844
  br label %187, !dbg !1845

32:                                               ; preds = %2
  %33 = load volatile i32, i32* inttoptr (i32 -2130563040 to i32*), align 32, !dbg !1846
  call void @llvm.dbg.value(metadata i32 %33, metadata !1808, metadata !DIExpression()), !dbg !1809
  %34 = and i32 %33, -15728641, !dbg !1847
  call void @llvm.dbg.value(metadata i32 %34, metadata !1808, metadata !DIExpression()), !dbg !1809
  %35 = zext i8 %1 to i32, !dbg !1848
  %36 = shl nuw nsw i32 %35, 20, !dbg !1849
  %37 = or i32 %34, %36, !dbg !1850
  store volatile i32 %37, i32* inttoptr (i32 -2130563040 to i32*), align 32, !dbg !1851
  br label %187, !dbg !1852

38:                                               ; preds = %2
  %39 = load volatile i32, i32* inttoptr (i32 -2130563040 to i32*), align 32, !dbg !1853
  call void @llvm.dbg.value(metadata i32 %39, metadata !1808, metadata !DIExpression()), !dbg !1809
  %40 = and i32 %39, -251658241, !dbg !1854
  call void @llvm.dbg.value(metadata i32 %40, metadata !1808, metadata !DIExpression()), !dbg !1809
  %41 = zext i8 %1 to i32, !dbg !1855
  %42 = shl nuw i32 %41, 24, !dbg !1856
  %43 = or i32 %40, %42, !dbg !1857
  store volatile i32 %43, i32* inttoptr (i32 -2130563040 to i32*), align 32, !dbg !1858
  br label %187, !dbg !1859

44:                                               ; preds = %2
  %45 = load volatile i32, i32* inttoptr (i32 -2130563040 to i32*), align 32, !dbg !1860
  call void @llvm.dbg.value(metadata i32 %45, metadata !1808, metadata !DIExpression()), !dbg !1809
  %46 = and i32 %45, 268435455, !dbg !1861
  call void @llvm.dbg.value(metadata i32 %46, metadata !1808, metadata !DIExpression()), !dbg !1809
  %47 = zext i8 %1 to i32, !dbg !1862
  %48 = shl i32 %47, 28, !dbg !1863
  %49 = or i32 %46, %48, !dbg !1864
  store volatile i32 %49, i32* inttoptr (i32 -2130563040 to i32*), align 32, !dbg !1865
  br label %187, !dbg !1866

50:                                               ; preds = %2
  %51 = load volatile i32, i32* inttoptr (i32 -2130563028 to i32*), align 4, !dbg !1867
  call void @llvm.dbg.value(metadata i32 %51, metadata !1808, metadata !DIExpression()), !dbg !1809
  %52 = and i32 %51, -16, !dbg !1868
  call void @llvm.dbg.value(metadata i32 %52, metadata !1808, metadata !DIExpression()), !dbg !1809
  %53 = zext i8 %1 to i32, !dbg !1869
  %54 = or i32 %52, %53, !dbg !1870
  store volatile i32 %54, i32* inttoptr (i32 -2130563028 to i32*), align 4, !dbg !1871
  br label %187, !dbg !1872

55:                                               ; preds = %2
  %56 = load volatile i32, i32* inttoptr (i32 -2130563028 to i32*), align 4, !dbg !1873
  call void @llvm.dbg.value(metadata i32 %56, metadata !1808, metadata !DIExpression()), !dbg !1809
  %57 = and i32 %56, -241, !dbg !1874
  call void @llvm.dbg.value(metadata i32 %57, metadata !1808, metadata !DIExpression()), !dbg !1809
  %58 = zext i8 %1 to i32, !dbg !1875
  %59 = shl nuw nsw i32 %58, 4, !dbg !1876
  %60 = or i32 %57, %59, !dbg !1877
  store volatile i32 %60, i32* inttoptr (i32 -2130563028 to i32*), align 4, !dbg !1878
  br label %187, !dbg !1879

61:                                               ; preds = %2
  %62 = load volatile i32, i32* inttoptr (i32 -2130563028 to i32*), align 4, !dbg !1880
  call void @llvm.dbg.value(metadata i32 %62, metadata !1808, metadata !DIExpression()), !dbg !1809
  %63 = and i32 %62, -3841, !dbg !1881
  call void @llvm.dbg.value(metadata i32 %63, metadata !1808, metadata !DIExpression()), !dbg !1809
  %64 = zext i8 %1 to i32, !dbg !1882
  %65 = shl nuw nsw i32 %64, 8, !dbg !1883
  %66 = or i32 %63, %65, !dbg !1884
  store volatile i32 %66, i32* inttoptr (i32 -2130563028 to i32*), align 4, !dbg !1885
  br label %187, !dbg !1886

67:                                               ; preds = %2
  %68 = load volatile i32, i32* inttoptr (i32 -2130563028 to i32*), align 4, !dbg !1887
  call void @llvm.dbg.value(metadata i32 %68, metadata !1808, metadata !DIExpression()), !dbg !1809
  %69 = and i32 %68, -61441, !dbg !1888
  call void @llvm.dbg.value(metadata i32 %69, metadata !1808, metadata !DIExpression()), !dbg !1809
  %70 = zext i8 %1 to i32, !dbg !1889
  %71 = shl nuw nsw i32 %70, 12, !dbg !1890
  %72 = or i32 %69, %71, !dbg !1891
  store volatile i32 %72, i32* inttoptr (i32 -2130563028 to i32*), align 4, !dbg !1892
  switch i8 %1, label %187 [
    i8 5, label %73
    i8 4, label %73
    i8 2, label %73
  ], !dbg !1893

73:                                               ; preds = %67, %67, %67
  %74 = tail call i32 @halGPIO_ConfDirection(i32 noundef 27, i8 noundef zeroext 0) #12, !dbg !1895
  br label %187, !dbg !1897

75:                                               ; preds = %2
  %76 = load volatile i32, i32* inttoptr (i32 -2130563028 to i32*), align 4, !dbg !1898
  call void @llvm.dbg.value(metadata i32 %76, metadata !1808, metadata !DIExpression()), !dbg !1809
  %77 = and i32 %76, -983041, !dbg !1899
  call void @llvm.dbg.value(metadata i32 %77, metadata !1808, metadata !DIExpression()), !dbg !1809
  %78 = zext i8 %1 to i32, !dbg !1900
  %79 = shl nuw nsw i32 %78, 16, !dbg !1901
  %80 = or i32 %77, %79, !dbg !1902
  store volatile i32 %80, i32* inttoptr (i32 -2130563028 to i32*), align 4, !dbg !1903
  %81 = and i8 %1, -2, !dbg !1904
  %82 = icmp eq i8 %81, 4, !dbg !1904
  br i1 %82, label %83, label %187, !dbg !1904

83:                                               ; preds = %75
  %84 = tail call i32 @halGPIO_ConfDirection(i32 noundef 28, i8 noundef zeroext 0) #12, !dbg !1906
  br label %187, !dbg !1908

85:                                               ; preds = %2
  %86 = load volatile i32, i32* inttoptr (i32 -2130563028 to i32*), align 4, !dbg !1909
  call void @llvm.dbg.value(metadata i32 %86, metadata !1808, metadata !DIExpression()), !dbg !1809
  %87 = and i32 %86, -15728641, !dbg !1910
  call void @llvm.dbg.value(metadata i32 %87, metadata !1808, metadata !DIExpression()), !dbg !1809
  %88 = zext i8 %1 to i32, !dbg !1911
  %89 = shl nuw nsw i32 %88, 20, !dbg !1912
  %90 = or i32 %87, %89, !dbg !1913
  store volatile i32 %90, i32* inttoptr (i32 -2130563028 to i32*), align 4, !dbg !1914
  %91 = icmp eq i8 %1, 6, !dbg !1915
  br i1 %91, label %92, label %187, !dbg !1917

92:                                               ; preds = %85
  %93 = tail call i32 @halGPIO_ConfDirection(i32 noundef 29, i8 noundef zeroext 0) #12, !dbg !1918
  br label %187, !dbg !1920

94:                                               ; preds = %2
  %95 = load volatile i32, i32* inttoptr (i32 -2130563028 to i32*), align 4, !dbg !1921
  call void @llvm.dbg.value(metadata i32 %95, metadata !1808, metadata !DIExpression()), !dbg !1809
  %96 = and i32 %95, -251658241, !dbg !1922
  call void @llvm.dbg.value(metadata i32 %96, metadata !1808, metadata !DIExpression()), !dbg !1809
  %97 = zext i8 %1 to i32, !dbg !1923
  %98 = shl nuw i32 %97, 24, !dbg !1924
  %99 = or i32 %96, %98, !dbg !1925
  store volatile i32 %99, i32* inttoptr (i32 -2130563028 to i32*), align 4, !dbg !1926
  switch i8 %1, label %187 [
    i8 7, label %100
    i8 4, label %100
  ], !dbg !1927

100:                                              ; preds = %94, %94
  %101 = tail call i32 @halGPIO_ConfDirection(i32 noundef 30, i8 noundef zeroext 0) #12, !dbg !1929
  br label %187, !dbg !1931

102:                                              ; preds = %2
  %103 = load volatile i32, i32* inttoptr (i32 -2130563028 to i32*), align 4, !dbg !1932
  call void @llvm.dbg.value(metadata i32 %103, metadata !1808, metadata !DIExpression()), !dbg !1809
  %104 = and i32 %103, 268435455, !dbg !1933
  call void @llvm.dbg.value(metadata i32 %104, metadata !1808, metadata !DIExpression()), !dbg !1809
  %105 = zext i8 %1 to i32, !dbg !1934
  %106 = shl i32 %105, 28, !dbg !1935
  %107 = or i32 %104, %106, !dbg !1936
  store volatile i32 %107, i32* inttoptr (i32 -2130563028 to i32*), align 4, !dbg !1937
  %108 = and i8 %1, -3, !dbg !1938
  %109 = icmp eq i8 %108, 4, !dbg !1938
  br i1 %109, label %110, label %187, !dbg !1938

110:                                              ; preds = %102
  %111 = tail call i32 @halGPIO_ConfDirection(i32 noundef 31, i8 noundef zeroext 0) #12, !dbg !1940
  br label %187, !dbg !1942

112:                                              ; preds = %2
  %113 = load volatile i32, i32* inttoptr (i32 -2130563024 to i32*), align 16, !dbg !1943
  call void @llvm.dbg.value(metadata i32 %113, metadata !1808, metadata !DIExpression()), !dbg !1809
  %114 = and i32 %113, -16, !dbg !1944
  call void @llvm.dbg.value(metadata i32 %114, metadata !1808, metadata !DIExpression()), !dbg !1809
  %115 = zext i8 %1 to i32, !dbg !1945
  %116 = or i32 %114, %115, !dbg !1946
  store volatile i32 %116, i32* inttoptr (i32 -2130563024 to i32*), align 16, !dbg !1947
  %117 = and i8 %1, -3, !dbg !1948
  %118 = icmp eq i8 %117, 4, !dbg !1948
  br i1 %118, label %119, label %187, !dbg !1948

119:                                              ; preds = %112
  %120 = tail call i32 @halGPIO_ConfDirection(i32 noundef 32, i8 noundef zeroext 0) #12, !dbg !1950
  br label %187, !dbg !1952

121:                                              ; preds = %2
  %122 = load volatile i32, i32* inttoptr (i32 -2130563024 to i32*), align 16, !dbg !1953
  call void @llvm.dbg.value(metadata i32 %122, metadata !1808, metadata !DIExpression()), !dbg !1809
  %123 = and i32 %122, -241, !dbg !1954
  call void @llvm.dbg.value(metadata i32 %123, metadata !1808, metadata !DIExpression()), !dbg !1809
  %124 = zext i8 %1 to i32, !dbg !1955
  %125 = shl nuw nsw i32 %124, 4, !dbg !1956
  %126 = or i32 %123, %125, !dbg !1957
  store volatile i32 %126, i32* inttoptr (i32 -2130563024 to i32*), align 16, !dbg !1958
  br label %187, !dbg !1959

127:                                              ; preds = %2
  %128 = load volatile i32, i32* inttoptr (i32 -2130563024 to i32*), align 16, !dbg !1960
  call void @llvm.dbg.value(metadata i32 %128, metadata !1808, metadata !DIExpression()), !dbg !1809
  %129 = and i32 %128, -3841, !dbg !1961
  call void @llvm.dbg.value(metadata i32 %129, metadata !1808, metadata !DIExpression()), !dbg !1809
  %130 = zext i8 %1 to i32, !dbg !1962
  %131 = shl nuw nsw i32 %130, 8, !dbg !1963
  %132 = or i32 %129, %131, !dbg !1964
  store volatile i32 %132, i32* inttoptr (i32 -2130563024 to i32*), align 16, !dbg !1965
  br label %187, !dbg !1966

133:                                              ; preds = %2
  %134 = load volatile i32, i32* inttoptr (i32 -2130563024 to i32*), align 16, !dbg !1967
  call void @llvm.dbg.value(metadata i32 %134, metadata !1808, metadata !DIExpression()), !dbg !1809
  %135 = and i32 %134, -61441, !dbg !1968
  call void @llvm.dbg.value(metadata i32 %135, metadata !1808, metadata !DIExpression()), !dbg !1809
  %136 = zext i8 %1 to i32, !dbg !1969
  %137 = shl nuw nsw i32 %136, 12, !dbg !1970
  %138 = or i32 %135, %137, !dbg !1971
  store volatile i32 %138, i32* inttoptr (i32 -2130563024 to i32*), align 16, !dbg !1972
  br label %187, !dbg !1973

139:                                              ; preds = %2
  %140 = load volatile i32, i32* inttoptr (i32 -2130563024 to i32*), align 16, !dbg !1974
  call void @llvm.dbg.value(metadata i32 %140, metadata !1808, metadata !DIExpression()), !dbg !1809
  %141 = and i32 %140, -983041, !dbg !1975
  call void @llvm.dbg.value(metadata i32 %141, metadata !1808, metadata !DIExpression()), !dbg !1809
  %142 = zext i8 %1 to i32, !dbg !1976
  %143 = shl nuw nsw i32 %142, 16, !dbg !1977
  %144 = or i32 %141, %143, !dbg !1978
  store volatile i32 %144, i32* inttoptr (i32 -2130563024 to i32*), align 16, !dbg !1979
  br label %187, !dbg !1980

145:                                              ; preds = %2
  %146 = load volatile i32, i32* inttoptr (i32 -2130563024 to i32*), align 16, !dbg !1981
  call void @llvm.dbg.value(metadata i32 %146, metadata !1808, metadata !DIExpression()), !dbg !1809
  %147 = and i32 %146, -15728641, !dbg !1982
  call void @llvm.dbg.value(metadata i32 %147, metadata !1808, metadata !DIExpression()), !dbg !1809
  %148 = zext i8 %1 to i32, !dbg !1983
  %149 = shl nuw nsw i32 %148, 20, !dbg !1984
  %150 = or i32 %147, %149, !dbg !1985
  store volatile i32 %150, i32* inttoptr (i32 -2130563024 to i32*), align 16, !dbg !1986
  br label %187, !dbg !1987

151:                                              ; preds = %2
  %152 = load volatile i32, i32* inttoptr (i32 -2130563024 to i32*), align 16, !dbg !1988
  call void @llvm.dbg.value(metadata i32 %152, metadata !1808, metadata !DIExpression()), !dbg !1809
  %153 = and i32 %152, -251658241, !dbg !1989
  call void @llvm.dbg.value(metadata i32 %153, metadata !1808, metadata !DIExpression()), !dbg !1809
  %154 = zext i8 %1 to i32, !dbg !1990
  %155 = shl nuw i32 %154, 24, !dbg !1991
  %156 = or i32 %153, %155, !dbg !1992
  store volatile i32 %156, i32* inttoptr (i32 -2130563024 to i32*), align 16, !dbg !1993
  br label %187, !dbg !1994

157:                                              ; preds = %2
  %158 = load volatile i32, i32* inttoptr (i32 -2130563024 to i32*), align 16, !dbg !1995
  call void @llvm.dbg.value(metadata i32 %158, metadata !1808, metadata !DIExpression()), !dbg !1809
  %159 = and i32 %158, 268435455, !dbg !1996
  call void @llvm.dbg.value(metadata i32 %159, metadata !1808, metadata !DIExpression()), !dbg !1809
  %160 = zext i8 %1 to i32, !dbg !1997
  %161 = shl i32 %160, 28, !dbg !1998
  %162 = or i32 %159, %161, !dbg !1999
  store volatile i32 %162, i32* inttoptr (i32 -2130563024 to i32*), align 16, !dbg !2000
  br label %187, !dbg !2001

163:                                              ; preds = %2
  %164 = load volatile i32, i32* inttoptr (i32 -2130563012 to i32*), align 4, !dbg !2002
  call void @llvm.dbg.value(metadata i32 %164, metadata !1808, metadata !DIExpression()), !dbg !1809
  %165 = and i32 %164, -241, !dbg !2003
  call void @llvm.dbg.value(metadata i32 %165, metadata !1808, metadata !DIExpression()), !dbg !1809
  %166 = zext i8 %1 to i32, !dbg !2004
  %167 = shl nuw nsw i32 %166, 4, !dbg !2005
  %168 = or i32 %165, %167, !dbg !2006
  store volatile i32 %168, i32* inttoptr (i32 -2130563012 to i32*), align 4, !dbg !2007
  br label %187, !dbg !2008

169:                                              ; preds = %2
  %170 = load volatile i32, i32* inttoptr (i32 -2130563012 to i32*), align 4, !dbg !2009
  call void @llvm.dbg.value(metadata i32 %170, metadata !1808, metadata !DIExpression()), !dbg !1809
  %171 = and i32 %170, -3841, !dbg !2010
  call void @llvm.dbg.value(metadata i32 %171, metadata !1808, metadata !DIExpression()), !dbg !1809
  %172 = zext i8 %1 to i32, !dbg !2011
  %173 = shl nuw nsw i32 %172, 8, !dbg !2012
  %174 = or i32 %171, %173, !dbg !2013
  store volatile i32 %174, i32* inttoptr (i32 -2130563012 to i32*), align 4, !dbg !2014
  br label %187, !dbg !2015

175:                                              ; preds = %2
  %176 = load volatile i32, i32* inttoptr (i32 -2130563012 to i32*), align 4, !dbg !2016
  call void @llvm.dbg.value(metadata i32 %176, metadata !1808, metadata !DIExpression()), !dbg !1809
  %177 = and i32 %176, -61441, !dbg !2017
  call void @llvm.dbg.value(metadata i32 %177, metadata !1808, metadata !DIExpression()), !dbg !1809
  %178 = zext i8 %1 to i32, !dbg !2018
  %179 = shl nuw nsw i32 %178, 12, !dbg !2019
  %180 = or i32 %177, %179, !dbg !2020
  store volatile i32 %180, i32* inttoptr (i32 -2130563012 to i32*), align 4, !dbg !2021
  br label %187, !dbg !2022

181:                                              ; preds = %2
  %182 = load volatile i32, i32* inttoptr (i32 -2130563012 to i32*), align 4, !dbg !2023
  call void @llvm.dbg.value(metadata i32 %182, metadata !1808, metadata !DIExpression()), !dbg !1809
  %183 = and i32 %182, -983041, !dbg !2024
  call void @llvm.dbg.value(metadata i32 %183, metadata !1808, metadata !DIExpression()), !dbg !1809
  %184 = zext i8 %1 to i32, !dbg !2025
  %185 = shl nuw nsw i32 %184, 16, !dbg !2026
  %186 = or i32 %183, %185, !dbg !2027
  store volatile i32 %186, i32* inttoptr (i32 -2130563012 to i32*), align 4, !dbg !2028
  br label %187, !dbg !2029

187:                                              ; preds = %94, %67, %2, %119, %112, %110, %102, %100, %85, %92, %83, %75, %73, %181, %175, %169, %163, %157, %151, %145, %139, %133, %127, %121, %61, %55, %50, %44, %38, %32, %26, %20, %14, %8, %3
  ret void, !dbg !2030
}

; Function Attrs: noinline nounwind optsize
define dso_local void @NVIC_SetupVectorTable(i32 noundef %0) local_unnamed_addr #0 !dbg !2031 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !2035, metadata !DIExpression()), !dbg !2036
  store volatile i32 %0, i32* inttoptr (i32 -536810232 to i32*), align 8, !dbg !2037
  tail call void asm sideeffect "dsb", ""() #14, !dbg !2038, !srcloc !2039
  tail call void asm sideeffect "isb", ""() #14, !dbg !2040, !srcloc !2041
  ret void, !dbg !2042
}

; Function Attrs: nofree noinline norecurse nounwind optsize
define dso_local void @NVIC_SWInt(i32 noundef %0) local_unnamed_addr #3 !dbg !2043 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !2047, metadata !DIExpression()), !dbg !2048
  store volatile i32 %0, i32* inttoptr (i32 -536809728 to i32*), align 256, !dbg !2049
  ret void, !dbg !2050
}

; Function Attrs: noinline nounwind optsize
define dso_local i32 @save_and_set_interrupt_mask() local_unnamed_addr #0 section ".ramTEXT" !dbg !2051 {
  %1 = tail call i32 asm sideeffect "MRS $0, primask", "=r"() #14, !dbg !2056, !srcloc !2063
  call void @llvm.dbg.value(metadata i32 %1, metadata !2060, metadata !DIExpression()) #14, !dbg !2064
  call void @llvm.dbg.value(metadata i32 %1, metadata !2055, metadata !DIExpression()), !dbg !2065
  tail call void asm sideeffect "cpsid i", "~{memory}"() #14, !dbg !2066, !srcloc !2069
  ret i32 %1, !dbg !2070
}

; Function Attrs: noinline nounwind optsize
define dso_local void @restore_interrupt_mask(i32 noundef %0) local_unnamed_addr #0 section ".ramTEXT" !dbg !2071 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !2073, metadata !DIExpression()), !dbg !2074
  call void @llvm.dbg.value(metadata i32 %0, metadata !2075, metadata !DIExpression()) #14, !dbg !2078
  tail call void asm sideeffect "MSR primask, $0", "r,~{memory}"(i32 %0) #14, !dbg !2081, !srcloc !2082
  ret void, !dbg !2083
}

; Function Attrs: noinline nounwind optsize
define dso_local i32 @pinmux_config(i32 noundef %0, i32 noundef %1) local_unnamed_addr #0 !dbg !2084 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !2088, metadata !DIExpression()), !dbg !2091
  call void @llvm.dbg.value(metadata i32 %1, metadata !2089, metadata !DIExpression()), !dbg !2091
  switch i32 %0, label %5 [
    i32 0, label %3
    i32 1, label %3
    i32 2, label %3
    i32 3, label %3
    i32 4, label %3
    i32 5, label %3
    i32 6, label %3
    i32 7, label %3
    i32 24, label %3
    i32 25, label %3
    i32 26, label %3
    i32 27, label %3
    i32 28, label %3
    i32 29, label %3
    i32 30, label %3
    i32 31, label %3
    i32 32, label %3
    i32 33, label %3
    i32 34, label %3
    i32 35, label %3
    i32 36, label %3
    i32 37, label %3
    i32 38, label %3
    i32 39, label %3
    i32 57, label %3
    i32 58, label %3
    i32 59, label %3
    i32 60, label %3
  ], !dbg !2092

3:                                                ; preds = %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2
  call void @llvm.dbg.value(metadata i32 %0, metadata !2090, metadata !DIExpression()), !dbg !2091
  %4 = trunc i32 %1 to i8, !dbg !2093
  tail call void @halPinmuxTopOnPadFunc(i32 noundef %0, i8 noundef zeroext %4) #12, !dbg !2094
  br label %5, !dbg !2095

5:                                                ; preds = %2, %3
  %6 = phi i32 [ 0, %3 ], [ -1, %2 ], !dbg !2091
  ret i32 %6, !dbg !2096
}

; Function Attrs: noinline nounwind optsize
define dso_local i32 @get_current_count() local_unnamed_addr #0 !dbg !2097 {
  %1 = tail call i32 @GPT_return_current_count(i32 noundef 2) #12, !dbg !2098
  ret i32 %1, !dbg !2099
}

; Function Attrs: noinline nounwind optsize
define dso_local void @delay_time(i32 noundef %0) local_unnamed_addr #0 !dbg !2100 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !2102, metadata !DIExpression()), !dbg !2105
  %2 = tail call i32 @get_current_count() #13, !dbg !2106
  %3 = add i32 %2, %0, !dbg !2107
  %4 = xor i32 %3, -1, !dbg !2108
  call void @llvm.dbg.value(metadata i32 %3, metadata !2103, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !2105
  %5 = tail call i32 @get_current_count() #13, !dbg !2109
  call void @llvm.dbg.value(metadata i32 %5, metadata !2104, metadata !DIExpression()), !dbg !2105
  %6 = add i32 %5, %4, !dbg !2110
  %7 = icmp slt i32 %6, 0, !dbg !2110
  br i1 %7, label %8, label %12, !dbg !2111

8:                                                ; preds = %1, %8
  %9 = tail call i32 @get_current_count() #13, !dbg !2112
  call void @llvm.dbg.value(metadata i32 %9, metadata !2104, metadata !DIExpression()), !dbg !2105
  %10 = add i32 %9, %4, !dbg !2110
  %11 = icmp slt i32 %10, 0, !dbg !2110
  br i1 %11, label %8, label %12, !dbg !2111, !llvm.loop !2114

12:                                               ; preds = %8, %1
  ret void, !dbg !2116
}

; Function Attrs: noinline nounwind optsize
define dso_local void @delay_time_for_gpt4(i32 noundef %0) local_unnamed_addr #0 !dbg !2117 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !2119, metadata !DIExpression()), !dbg !2122
  %2 = tail call i32 @get_current_gpt4_count() #13, !dbg !2123
  %3 = add i32 %2, %0, !dbg !2124
  %4 = xor i32 %3, -1, !dbg !2125
  call void @llvm.dbg.value(metadata i32 %3, metadata !2120, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !2122
  %5 = tail call i32 @get_current_gpt4_count() #13, !dbg !2126
  call void @llvm.dbg.value(metadata i32 %5, metadata !2121, metadata !DIExpression()), !dbg !2122
  %6 = add i32 %5, %4, !dbg !2127
  %7 = icmp slt i32 %6, 0, !dbg !2127
  br i1 %7, label %8, label %12, !dbg !2128

8:                                                ; preds = %1, %8
  %9 = tail call i32 @get_current_gpt4_count() #13, !dbg !2129
  call void @llvm.dbg.value(metadata i32 %9, metadata !2121, metadata !DIExpression()), !dbg !2122
  %10 = add i32 %9, %4, !dbg !2127
  %11 = icmp slt i32 %10, 0, !dbg !2127
  br i1 %11, label %8, label %12, !dbg !2128, !llvm.loop !2131

12:                                               ; preds = %8, %1
  ret void, !dbg !2133
}

; Function Attrs: noinline nounwind optsize
define dso_local i32 @get_current_gpt4_count() local_unnamed_addr #0 !dbg !2134 {
  %1 = tail call i32 @GPT_return_current_count(i32 noundef 4) #12, !dbg !2135
  ret i32 %1, !dbg !2136
}

; Function Attrs: noinline nounwind optsize
define dso_local void @delay_ms(i32 noundef %0) local_unnamed_addr #0 !dbg !2137 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !2139, metadata !DIExpression()), !dbg !2141
  %2 = shl i32 %0, 5, !dbg !2142
  call void @llvm.dbg.value(metadata i32 %2, metadata !2140, metadata !DIExpression()), !dbg !2141
  %3 = mul i32 %0, 7, !dbg !2143
  %4 = udiv i32 %3, 10, !dbg !2144
  %5 = add i32 %4, %2, !dbg !2145
  call void @llvm.dbg.value(metadata i32 %5, metadata !2140, metadata !DIExpression()), !dbg !2141
  %6 = mul i32 %0, 6, !dbg !2146
  %7 = udiv i32 %6, 100, !dbg !2147
  %8 = add i32 %5, %7, !dbg !2148
  call void @llvm.dbg.value(metadata i32 %8, metadata !2140, metadata !DIExpression()), !dbg !2141
  %9 = shl i32 %0, 3, !dbg !2149
  %10 = udiv i32 %9, 1000, !dbg !2150
  %11 = add i32 %8, %10, !dbg !2151
  call void @llvm.dbg.value(metadata i32 %11, metadata !2140, metadata !DIExpression()), !dbg !2141
  tail call void @delay_time(i32 noundef %11) #13, !dbg !2152
  ret void, !dbg !2153
}

; Function Attrs: noinline nounwind optsize
define dso_local void @delay_us(i32 noundef %0) local_unnamed_addr #0 !dbg !2154 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !2156, metadata !DIExpression()), !dbg !2159
  %2 = tail call i32 @top_mcu_freq_get() #12, !dbg !2160
  %3 = udiv i32 %2, 1000000, !dbg !2161
  call void @llvm.dbg.value(metadata i32 %3, metadata !2158, metadata !DIExpression()), !dbg !2159
  %4 = mul i32 %3, %0, !dbg !2162
  call void @llvm.dbg.value(metadata i32 %4, metadata !2157, metadata !DIExpression()), !dbg !2159
  tail call void @delay_time_for_gpt4(i32 noundef %4) #13, !dbg !2163
  ret void, !dbg !2164
}

; Function Attrs: noinline nounwind optsize
define dso_local void @drvTMR_init(i32 noundef %0, i32 noundef %1, i1 noundef zeroext %2, void ()* noundef %3) local_unnamed_addr #0 !dbg !2165 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !2169, metadata !DIExpression()), !dbg !2173
  call void @llvm.dbg.value(metadata i32 %1, metadata !2170, metadata !DIExpression()), !dbg !2173
  call void @llvm.dbg.value(metadata i1 %2, metadata !2171, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !2173
  call void @llvm.dbg.value(metadata void ()* %3, metadata !2172, metadata !DIExpression()), !dbg !2173
  tail call void @GPT_Stop(i32 noundef %0) #12, !dbg !2174
  %5 = icmp eq i32 %0, 0, !dbg !2175
  br i1 %5, label %6, label %7, !dbg !2177

6:                                                ; preds = %4
  store volatile i32 0, i32* inttoptr (i32 -2096824304 to i32*), align 16, !dbg !2178
  br label %8, !dbg !2180

7:                                                ; preds = %4
  store volatile i32 0, i32* inttoptr (i32 -2096824288 to i32*), align 32, !dbg !2181
  br label %8

8:                                                ; preds = %7, %6
  %9 = phi i32 [ %0, %7 ], [ 0, %6 ]
  tail call void @GPT_init(i32 noundef %9, i32 noundef 1, void ()* noundef %3) #12, !dbg !2183
  tail call void @GPT_ResetTimer(i32 noundef %0, i32 noundef %1, i1 noundef zeroext %2) #12, !dbg !2184
  ret void, !dbg !2185
}

; Function Attrs: noinline nounwind optsize
define dso_local void @TMR_Start(i32 noundef %0) local_unnamed_addr #0 !dbg !2186 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !2188, metadata !DIExpression()), !dbg !2189
  tail call void @GPT_Start(i32 noundef %0) #12, !dbg !2190
  ret void, !dbg !2191
}

; Function Attrs: noinline nounwind optsize
define dso_local void @TMR_Stop(i32 noundef %0) local_unnamed_addr #0 !dbg !2192 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !2194, metadata !DIExpression()), !dbg !2195
  tail call void @GPT_Stop(i32 noundef %0) #12, !dbg !2196
  ret void, !dbg !2197
}

; Function Attrs: noinline nounwind optsize
define dso_local void @drvGPT2Init() local_unnamed_addr #0 !dbg !2198 {
  tail call void @CM4_GPT2Init() #12, !dbg !2199
  ret void, !dbg !2200
}

; Function Attrs: noinline nounwind optsize
define dso_local void @drvGPT4Init() local_unnamed_addr #0 !dbg !2201 {
  tail call void @CM4_GPT4Init() #12, !dbg !2202
  ret void, !dbg !2203
}

; Function Attrs: nofree noinline norecurse nounwind optsize
define dso_local void @clear_TMR_INT_status_bit(i32 noundef %0) local_unnamed_addr #3 !dbg !2204 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !2206, metadata !DIExpression()), !dbg !2207
  switch i32 %0, label %5 [
    i32 0, label %3
    i32 1, label %2
  ], !dbg !2208

2:                                                ; preds = %1
  br label %3, !dbg !2209

3:                                                ; preds = %1, %2
  %4 = phi i32 [ 2, %2 ], [ 1, %1 ]
  store volatile i32 %4, i32* inttoptr (i32 -2096824320 to i32*), align 65536, !dbg !2207
  br label %5, !dbg !2212

5:                                                ; preds = %3, %1
  ret void, !dbg !2212
}

; Function Attrs: noinline nounwind optsize
define dso_local void @top_xtal_init() local_unnamed_addr #0 !dbg !2213 {
  call void @llvm.dbg.value(metadata i32 0, metadata !2215, metadata !DIExpression()), !dbg !2217
  %1 = load volatile i32, i32* inttoptr (i32 -2097118784 to i32*), align 64, !dbg !2218
  call void @llvm.dbg.value(metadata i32 %1, metadata !2216, metadata !DIExpression()), !dbg !2217
  %2 = lshr i32 %1, 13, !dbg !2219
  %3 = and i32 %2, 7, !dbg !2220
  call void @llvm.dbg.value(metadata i32 %3, metadata !2216, metadata !DIExpression()), !dbg !2217
  %4 = load volatile i32, i32* inttoptr (i32 -2097118792 to i32*), align 8, !dbg !2221
  call void @llvm.dbg.value(metadata i32 %4, metadata !2215, metadata !DIExpression()), !dbg !2217
  call void @llvm.dbg.value(metadata i32 %4, metadata !2215, metadata !DIExpression(DW_OP_constu, 18446744073709549568, DW_OP_and, DW_OP_stack_value)), !dbg !2217
  %5 = getelementptr inbounds [8 x i32], [8 x i32]* @switch.table.top_xtal_init, i32 0, i32 %3, !dbg !2222
  %6 = load i32, i32* %5, align 4, !dbg !2222
  %7 = getelementptr inbounds [8 x i32], [8 x i32]* @switch.table.top_xtal_init.1, i32 0, i32 %3, !dbg !2222
  %8 = load i32, i32* %7, align 4, !dbg !2222
  %9 = and i32 %4, -2048, !dbg !2223
  call void @llvm.dbg.value(metadata i32 %9, metadata !2215, metadata !DIExpression()), !dbg !2217
  store i32 %6, i32* @gXtalFreq, align 4, !dbg !2224
  %10 = or i32 %9, %8, !dbg !2224
  call void @llvm.dbg.value(metadata i32 %10, metadata !2215, metadata !DIExpression()), !dbg !2217
  store volatile i32 %10, i32* inttoptr (i32 -2097118792 to i32*), align 8, !dbg !2226
  %11 = load i32, i32* @gXtalFreq, align 4, !dbg !2227
  store i32 %11, i32* @gCpuFrequency, align 4, !dbg !2228
  tail call void @SystemCoreClockUpdate() #12, !dbg !2229
  %12 = load i32, i32* @SystemCoreClock, align 4, !dbg !2230
  %13 = udiv i32 %12, 1000, !dbg !2231
  %14 = tail call i32 @SysTick_Set(i32 noundef %13) #12, !dbg !2232
  ret void, !dbg !2233
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize readonly willreturn
define dso_local i32 @top_xtal_freq_get() local_unnamed_addr #5 !dbg !2234 {
  %1 = load i32, i32* @gXtalFreq, align 4, !dbg !2235
  ret i32 %1, !dbg !2236
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize readonly willreturn
define dso_local i32 @top_mcu_freq_get() local_unnamed_addr #5 !dbg !2237 {
  %1 = load i32, i32* @gCpuFrequency, align 4, !dbg !2238
  ret i32 %1, !dbg !2239
}

; Function Attrs: nofree noinline nounwind optsize
define dso_local void @cmnPLL1ON() local_unnamed_addr #6 !dbg !2240 {
  %1 = alloca i32, align 4
  %2 = bitcast i32* %1 to i8*, !dbg !2244
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %2), !dbg !2244
  call void @llvm.dbg.declare(metadata i32* %1, metadata !2242, metadata !DIExpression()), !dbg !2245
  call void @llvm.dbg.value(metadata i32* inttoptr (i32 -2097118792 to i32*), metadata !2243, metadata !DIExpression()), !dbg !2246
  %3 = tail call fastcc i32 @cmnReadRegister32(i8* noundef nonnull inttoptr (i32 -2097118792 to i8*)) #13, !dbg !2247
  store volatile i32 %3, i32* %1, align 4, !dbg !2248
  %4 = load volatile i32, i32* %1, align 4, !dbg !2249
  %5 = lshr i32 %4, 28, !dbg !2250
  %6 = and i32 %5, 3, !dbg !2251
  store volatile i32 %6, i32* %1, align 4, !dbg !2252
  %7 = load volatile i32, i32* %1, align 4, !dbg !2253
  %8 = icmp eq i32 %7, 0, !dbg !2255
  br i1 %8, label %9, label %22, !dbg !2256

9:                                                ; preds = %0
  %10 = tail call fastcc i32 @cmnReadRegister32(i8* noundef nonnull inttoptr (i32 -2097118792 to i8*)) #13, !dbg !2257
  store volatile i32 %10, i32* %1, align 4, !dbg !2259
  %11 = load volatile i32, i32* %1, align 4, !dbg !2260
  %12 = and i32 %11, -16777217, !dbg !2261
  store volatile i32 %12, i32* %1, align 4, !dbg !2262
  %13 = load volatile i32, i32* %1, align 4, !dbg !2263
  %14 = or i32 %13, 536870912, !dbg !2264
  store volatile i32 %14, i32* %1, align 4, !dbg !2265
  %15 = load volatile i32, i32* %1, align 4, !dbg !2266
  tail call fastcc void @cmnWriteRegister32(i8* noundef nonnull inttoptr (i32 -2097118792 to i8*), i32 noundef %15) #13, !dbg !2267
  br label %16, !dbg !2268

16:                                               ; preds = %16, %9
  %17 = tail call fastcc i32 @cmnReadRegister32(i8* noundef nonnull inttoptr (i32 -2097118792 to i8*)) #13, !dbg !2269
  store volatile i32 %17, i32* %1, align 4, !dbg !2271
  %18 = load volatile i32, i32* %1, align 4, !dbg !2272
  %19 = and i32 %18, 134217728, !dbg !2273
  store volatile i32 %19, i32* %1, align 4, !dbg !2274
  %20 = load volatile i32, i32* %1, align 4, !dbg !2275
  %21 = icmp eq i32 %20, 0, !dbg !2276
  br i1 %21, label %16, label %22, !dbg !2277, !llvm.loop !2278

22:                                               ; preds = %16, %0
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %2), !dbg !2280
  ret void, !dbg !2280
}

; Function Attrs: argmemonly nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0i8(i64 immarg, i8* nocapture) #7

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: mustprogress nofree noinline norecurse nounwind optsize willreturn
define internal fastcc i32 @cmnReadRegister32(i8* noundef %0) unnamed_addr #4 !dbg !2281 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !2288, metadata !DIExpression()), !dbg !2289
  %2 = bitcast i8* %0 to i32*, !dbg !2290
  %3 = load volatile i32, i32* %2, align 4, !dbg !2291
  ret i32 %3, !dbg !2292
}

; Function Attrs: nofree noinline norecurse nounwind optsize
define internal fastcc void @cmnWriteRegister32(i8* noundef %0, i32 noundef %1) unnamed_addr #3 !dbg !2293 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !2297, metadata !DIExpression()), !dbg !2299
  call void @llvm.dbg.value(metadata i32 %1, metadata !2298, metadata !DIExpression()), !dbg !2299
  %3 = bitcast i8* %0 to i32*, !dbg !2300
  store volatile i32 %1, i32* %3, align 4, !dbg !2301
  ret void, !dbg !2302
}

; Function Attrs: argmemonly nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0i8(i64 immarg, i8* nocapture) #7

; Function Attrs: nofree noinline nounwind optsize
define dso_local void @cmnPLL1ON_PLL2ON(i8 noundef zeroext %0) local_unnamed_addr #6 !dbg !2303 {
  %2 = alloca i32, align 4
  call void @llvm.dbg.value(metadata i8 %0, metadata !2307, metadata !DIExpression()), !dbg !2310
  %3 = bitcast i32* %2 to i8*, !dbg !2311
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %3), !dbg !2311
  call void @llvm.dbg.declare(metadata i32* %2, metadata !2308, metadata !DIExpression()), !dbg !2312
  call void @llvm.dbg.value(metadata i32* inttoptr (i32 -2097118792 to i32*), metadata !2309, metadata !DIExpression()), !dbg !2310
  %4 = tail call fastcc i32 @cmnReadRegister32(i8* noundef nonnull inttoptr (i32 -2097118792 to i8*)) #13, !dbg !2313
  store volatile i32 %4, i32* %2, align 4, !dbg !2314
  %5 = load volatile i32, i32* %2, align 4, !dbg !2315
  %6 = lshr i32 %5, 28, !dbg !2316
  %7 = and i32 %6, 3, !dbg !2317
  store volatile i32 %7, i32* %2, align 4, !dbg !2318
  %8 = load volatile i32, i32* %2, align 4, !dbg !2319
  %9 = icmp eq i32 %8, 3, !dbg !2321
  br i1 %9, label %38, label %10, !dbg !2322

10:                                               ; preds = %1
  %11 = tail call fastcc i32 @cmnReadRegister32(i8* noundef nonnull inttoptr (i32 -2097118792 to i8*)) #13, !dbg !2323
  store volatile i32 %11, i32* %2, align 4, !dbg !2325
  %12 = load volatile i32, i32* %2, align 4, !dbg !2326
  %13 = and i32 %12, -262145, !dbg !2327
  store volatile i32 %13, i32* %2, align 4, !dbg !2328
  %14 = load volatile i32, i32* %2, align 4, !dbg !2329
  %15 = and i32 %14, -16777217, !dbg !2330
  store volatile i32 %15, i32* %2, align 4, !dbg !2331
  %16 = load volatile i32, i32* %2, align 4, !dbg !2332
  store volatile i32 %16, i32* %2, align 4, !dbg !2333
  %17 = load volatile i32, i32* %2, align 4, !dbg !2334
  tail call fastcc void @cmnWriteRegister32(i8* noundef nonnull inttoptr (i32 -2097118792 to i8*), i32 noundef %17) #13, !dbg !2335
  %18 = tail call fastcc i32 @cmnReadRegister32(i8* noundef nonnull inttoptr (i32 -2097118792 to i8*)) #13, !dbg !2336
  store volatile i32 %18, i32* %2, align 4, !dbg !2337
  %19 = load volatile i32, i32* %2, align 4, !dbg !2338
  %20 = and i32 %19, -805306369, !dbg !2339
  store volatile i32 %20, i32* %2, align 4, !dbg !2340
  %21 = load volatile i32, i32* %2, align 4, !dbg !2341
  %22 = and i32 %21, -16777217, !dbg !2342
  store volatile i32 %22, i32* %2, align 4, !dbg !2343
  %23 = load volatile i32, i32* %2, align 4, !dbg !2344
  %24 = or i32 %23, 805306368, !dbg !2345
  store volatile i32 %24, i32* %2, align 4, !dbg !2346
  %25 = load volatile i32, i32* %2, align 4, !dbg !2347
  tail call fastcc void @cmnWriteRegister32(i8* noundef nonnull inttoptr (i32 -2097118792 to i8*), i32 noundef %25) #13, !dbg !2348
  br label %26, !dbg !2349

26:                                               ; preds = %26, %10
  %27 = tail call fastcc i32 @cmnReadRegister32(i8* noundef nonnull inttoptr (i32 -2097118792 to i8*)) #13, !dbg !2350
  store volatile i32 %27, i32* %2, align 4, !dbg !2352
  %28 = load volatile i32, i32* %2, align 4, !dbg !2353
  %29 = and i32 %28, 67108864, !dbg !2354
  store volatile i32 %29, i32* %2, align 4, !dbg !2355
  %30 = load volatile i32, i32* %2, align 4, !dbg !2356
  %31 = icmp eq i32 %30, 0, !dbg !2357
  br i1 %31, label %26, label %32, !dbg !2358, !llvm.loop !2359

32:                                               ; preds = %26
  %33 = tail call fastcc i32 @cmnReadRegister32(i8* noundef nonnull inttoptr (i32 -2097118792 to i8*)) #13, !dbg !2361
  store volatile i32 %33, i32* %2, align 4, !dbg !2362
  %34 = load volatile i32, i32* %2, align 4, !dbg !2363
  %35 = and i32 %34, -262145, !dbg !2364
  store volatile i32 %35, i32* %2, align 4, !dbg !2365
  %36 = load volatile i32, i32* %2, align 4, !dbg !2366
  %37 = and i32 %36, -16777217, !dbg !2367
  store volatile i32 %37, i32* %2, align 4, !dbg !2368
  br label %38, !dbg !2369

38:                                               ; preds = %32, %1
  %39 = tail call fastcc i32 @cmnReadRegister32(i8* noundef nonnull inttoptr (i32 -2097118792 to i8*)) #13, !dbg !2370
  store volatile i32 %39, i32* %2, align 4, !dbg !2371
  %40 = icmp eq i8 %0, 0, !dbg !2372
  %41 = load volatile i32, i32* %2, align 4, !dbg !2374
  br i1 %40, label %44, label %42, !dbg !2375

42:                                               ; preds = %38
  %43 = or i32 %41, 262144, !dbg !2376
  store volatile i32 %43, i32* %2, align 4, !dbg !2378
  br label %45, !dbg !2379

44:                                               ; preds = %38
  store volatile i32 %41, i32* %2, align 4, !dbg !2380
  br label %45

45:                                               ; preds = %44, %42
  %46 = load volatile i32, i32* %2, align 4, !dbg !2382
  tail call fastcc void @cmnWriteRegister32(i8* noundef nonnull inttoptr (i32 -2097118792 to i8*), i32 noundef %46) #13, !dbg !2383
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %3), !dbg !2384
  ret void, !dbg !2384
}

; Function Attrs: nofree noinline nounwind optsize
define dso_local void @cmnPLL1OFF_PLL2OFF() local_unnamed_addr #6 !dbg !2385 {
  %1 = alloca i32, align 4
  %2 = bitcast i32* %1 to i8*, !dbg !2389
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %2), !dbg !2389
  call void @llvm.dbg.declare(metadata i32* %1, metadata !2387, metadata !DIExpression()), !dbg !2390
  call void @llvm.dbg.value(metadata i32* inttoptr (i32 -2097118792 to i32*), metadata !2388, metadata !DIExpression()), !dbg !2391
  %3 = tail call fastcc i32 @cmnReadRegister32(i8* noundef nonnull inttoptr (i32 -2097118792 to i8*)) #13, !dbg !2392
  store volatile i32 %3, i32* %1, align 4, !dbg !2393
  %4 = load volatile i32, i32* %1, align 4, !dbg !2394
  %5 = and i32 %4, -805306369, !dbg !2395
  store volatile i32 %5, i32* %1, align 4, !dbg !2396
  %6 = load volatile i32, i32* %1, align 4, !dbg !2397
  %7 = and i32 %6, -16777217, !dbg !2398
  store volatile i32 %7, i32* %1, align 4, !dbg !2399
  %8 = load volatile i32, i32* %1, align 4, !dbg !2400
  store volatile i32 %8, i32* %1, align 4, !dbg !2401
  %9 = load volatile i32, i32* %1, align 4, !dbg !2402
  tail call fastcc void @cmnWriteRegister32(i8* noundef nonnull inttoptr (i32 -2097118792 to i8*), i32 noundef %9) #13, !dbg !2403
  %10 = tail call fastcc i32 @cmnReadRegister32(i8* noundef nonnull inttoptr (i32 -2097118792 to i8*)) #13, !dbg !2404
  store volatile i32 %10, i32* %1, align 4, !dbg !2405
  %11 = load volatile i32, i32* %1, align 4, !dbg !2406
  %12 = and i32 %11, -262145, !dbg !2407
  store volatile i32 %12, i32* %1, align 4, !dbg !2408
  %13 = load volatile i32, i32* %1, align 4, !dbg !2409
  %14 = and i32 %13, -16777217, !dbg !2410
  store volatile i32 %14, i32* %1, align 4, !dbg !2411
  %15 = load volatile i32, i32* %1, align 4, !dbg !2412
  store volatile i32 %15, i32* %1, align 4, !dbg !2413
  %16 = load volatile i32, i32* %1, align 4, !dbg !2414
  tail call fastcc void @cmnWriteRegister32(i8* noundef nonnull inttoptr (i32 -2097118792 to i8*), i32 noundef %16) #13, !dbg !2415
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %2), !dbg !2416
  ret void, !dbg !2416
}

; Function Attrs: noinline nounwind optsize
define dso_local void @cmnCpuClkConfigureToXtal() local_unnamed_addr #0 !dbg !2417 {
  %1 = alloca i32, align 4
  %2 = bitcast i32* %1 to i8*, !dbg !2421
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %2), !dbg !2421
  call void @llvm.dbg.declare(metadata i32* %1, metadata !2419, metadata !DIExpression()), !dbg !2422
  call void @llvm.dbg.value(metadata i32* inttoptr (i32 -2097118800 to i32*), metadata !2420, metadata !DIExpression()), !dbg !2423
  %3 = tail call fastcc i32 @cmnReadRegister32(i8* noundef nonnull inttoptr (i32 -2097118800 to i8*)) #13, !dbg !2424
  store volatile i32 %3, i32* %1, align 4, !dbg !2425
  %4 = load volatile i32, i32* %1, align 4, !dbg !2426
  %5 = and i32 %4, -8, !dbg !2427
  store volatile i32 %5, i32* %1, align 4, !dbg !2428
  %6 = load volatile i32, i32* %1, align 4, !dbg !2429
  store volatile i32 %6, i32* %1, align 4, !dbg !2430
  %7 = load volatile i32, i32* %1, align 4, !dbg !2431
  tail call fastcc void @cmnWriteRegister32(i8* noundef nonnull inttoptr (i32 -2097118800 to i8*), i32 noundef %7) #13, !dbg !2432
  %8 = tail call fastcc i32 @cmnReadRegister32(i8* noundef nonnull inttoptr (i32 -2097118800 to i8*)) #13, !dbg !2433
  store volatile i32 %8, i32* %1, align 4, !dbg !2434
  %9 = load volatile i32, i32* %1, align 4, !dbg !2435
  %10 = and i32 %9, -49153, !dbg !2436
  store volatile i32 %10, i32* %1, align 4, !dbg !2437
  %11 = load volatile i32, i32* %1, align 4, !dbg !2438
  store volatile i32 %11, i32* %1, align 4, !dbg !2439
  %12 = load volatile i32, i32* %1, align 4, !dbg !2440
  tail call fastcc void @cmnWriteRegister32(i8* noundef nonnull inttoptr (i32 -2097118800 to i8*), i32 noundef %12) #13, !dbg !2441
  br label %13, !dbg !2442

13:                                               ; preds = %13, %0
  %14 = load volatile i32, i32* %1, align 4, !dbg !2443
  %15 = tail call fastcc i32 @cmnReadRegister32(i8* noundef nonnull inttoptr (i32 -2097118800 to i8*)) #13, !dbg !2444
  %16 = icmp eq i32 %14, %15, !dbg !2445
  br i1 %16, label %17, label %13, !dbg !2442, !llvm.loop !2446

17:                                               ; preds = %13
  %18 = tail call i32 @top_xtal_freq_get() #13, !dbg !2448
  store i32 %18, i32* @gCpuFrequency, align 4, !dbg !2449
  tail call void @SystemCoreClockUpdate() #12, !dbg !2450
  %19 = load i32, i32* @SystemCoreClock, align 4, !dbg !2451
  %20 = udiv i32 %19, 1000, !dbg !2452
  %21 = tail call i32 @SysTick_Set(i32 noundef %20) #12, !dbg !2453
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %2), !dbg !2454
  ret void, !dbg !2454
}

; Function Attrs: noinline nounwind optsize
define dso_local void @cmnCpuClkConfigureTo192M() local_unnamed_addr #0 !dbg !2455 {
  %1 = alloca i32, align 4
  %2 = bitcast i32* %1 to i8*, !dbg !2459
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %2), !dbg !2459
  call void @llvm.dbg.declare(metadata i32* %1, metadata !2457, metadata !DIExpression()), !dbg !2460
  call void @llvm.dbg.value(metadata i32* inttoptr (i32 -2097118800 to i32*), metadata !2458, metadata !DIExpression()), !dbg !2461
  tail call void @cmnPLL1ON_PLL2ON(i8 noundef zeroext 1) #13, !dbg !2462
  %3 = tail call fastcc i32 @cmnReadRegister32(i8* noundef nonnull inttoptr (i32 -2097118800 to i8*)) #13, !dbg !2463
  store volatile i32 %3, i32* %1, align 4, !dbg !2464
  %4 = load volatile i32, i32* %1, align 4, !dbg !2465
  %5 = and i32 %4, -49153, !dbg !2466
  store volatile i32 %5, i32* %1, align 4, !dbg !2467
  %6 = load volatile i32, i32* %1, align 4, !dbg !2468
  %7 = or i32 %6, 16384, !dbg !2469
  store volatile i32 %7, i32* %1, align 4, !dbg !2470
  %8 = load volatile i32, i32* %1, align 4, !dbg !2471
  tail call fastcc void @cmnWriteRegister32(i8* noundef nonnull inttoptr (i32 -2097118800 to i8*), i32 noundef %8) #13, !dbg !2472
  br label %9, !dbg !2473

9:                                                ; preds = %9, %0
  %10 = load volatile i32, i32* %1, align 4, !dbg !2474
  %11 = tail call fastcc i32 @cmnReadRegister32(i8* noundef nonnull inttoptr (i32 -2097118800 to i8*)) #13, !dbg !2475
  %12 = icmp eq i32 %10, %11, !dbg !2476
  br i1 %12, label %13, label %9, !dbg !2473, !llvm.loop !2477

13:                                               ; preds = %9
  %14 = tail call fastcc i32 @cmnReadRegister32(i8* noundef nonnull inttoptr (i32 -2097118800 to i8*)) #13, !dbg !2479
  store volatile i32 %14, i32* %1, align 4, !dbg !2480
  %15 = load volatile i32, i32* %1, align 4, !dbg !2481
  %16 = and i32 %15, -1009, !dbg !2482
  store volatile i32 %16, i32* %1, align 4, !dbg !2483
  %17 = load volatile i32, i32* %1, align 4, !dbg !2484
  %18 = or i32 %17, 128, !dbg !2485
  store volatile i32 %18, i32* %1, align 4, !dbg !2486
  %19 = load volatile i32, i32* %1, align 4, !dbg !2487
  tail call fastcc void @cmnWriteRegister32(i8* noundef nonnull inttoptr (i32 -2097118800 to i8*), i32 noundef %19) #13, !dbg !2488
  %20 = tail call fastcc i32 @cmnReadRegister32(i8* noundef nonnull inttoptr (i32 -2097118800 to i8*)) #13, !dbg !2489
  store volatile i32 %20, i32* %1, align 4, !dbg !2490
  %21 = load volatile i32, i32* %1, align 4, !dbg !2491
  %22 = and i32 %21, -8, !dbg !2492
  store volatile i32 %22, i32* %1, align 4, !dbg !2493
  %23 = load volatile i32, i32* %1, align 4, !dbg !2494
  %24 = or i32 %23, 4, !dbg !2495
  store volatile i32 %24, i32* %1, align 4, !dbg !2496
  %25 = load volatile i32, i32* %1, align 4, !dbg !2497
  tail call fastcc void @cmnWriteRegister32(i8* noundef nonnull inttoptr (i32 -2097118800 to i8*), i32 noundef %25) #13, !dbg !2498
  store i32 192000000, i32* @gCpuFrequency, align 4, !dbg !2499
  tail call void @SystemCoreClockUpdate() #12, !dbg !2500
  %26 = load i32, i32* @SystemCoreClock, align 4, !dbg !2501
  %27 = udiv i32 %26, 1000, !dbg !2502
  %28 = tail call i32 @SysTick_Set(i32 noundef %27) #12, !dbg !2503
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %2), !dbg !2504
  ret void, !dbg !2504
}

; Function Attrs: noinline nounwind optsize
define dso_local void @cmnCpuClkConfigureTo160M() local_unnamed_addr #0 !dbg !2505 {
  %1 = alloca i32, align 4
  %2 = bitcast i32* %1 to i8*, !dbg !2509
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %2), !dbg !2509
  call void @llvm.dbg.declare(metadata i32* %1, metadata !2507, metadata !DIExpression()), !dbg !2510
  call void @llvm.dbg.value(metadata i32* inttoptr (i32 -2097118800 to i32*), metadata !2508, metadata !DIExpression()), !dbg !2511
  tail call void @cmnPLL1ON_PLL2ON(i8 noundef zeroext 0) #13, !dbg !2512
  %3 = tail call fastcc i32 @cmnReadRegister32(i8* noundef nonnull inttoptr (i32 -2097118800 to i8*)) #13, !dbg !2513
  store volatile i32 %3, i32* %1, align 4, !dbg !2514
  %4 = load volatile i32, i32* %1, align 4, !dbg !2515
  %5 = and i32 %4, -49153, !dbg !2516
  store volatile i32 %5, i32* %1, align 4, !dbg !2517
  %6 = load volatile i32, i32* %1, align 4, !dbg !2518
  %7 = or i32 %6, 32768, !dbg !2519
  store volatile i32 %7, i32* %1, align 4, !dbg !2520
  %8 = load volatile i32, i32* %1, align 4, !dbg !2521
  tail call fastcc void @cmnWriteRegister32(i8* noundef nonnull inttoptr (i32 -2097118800 to i8*), i32 noundef %8) #13, !dbg !2522
  br label %9, !dbg !2523

9:                                                ; preds = %9, %0
  %10 = load volatile i32, i32* %1, align 4, !dbg !2524
  %11 = tail call fastcc i32 @cmnReadRegister32(i8* noundef nonnull inttoptr (i32 -2097118800 to i8*)) #13, !dbg !2525
  %12 = icmp eq i32 %10, %11, !dbg !2526
  br i1 %12, label %13, label %9, !dbg !2523, !llvm.loop !2527

13:                                               ; preds = %9
  %14 = tail call fastcc i32 @cmnReadRegister32(i8* noundef nonnull inttoptr (i32 -2097118800 to i8*)) #13, !dbg !2529
  store volatile i32 %14, i32* %1, align 4, !dbg !2530
  %15 = load volatile i32, i32* %1, align 4, !dbg !2531
  %16 = and i32 %15, -1009, !dbg !2532
  store volatile i32 %16, i32* %1, align 4, !dbg !2533
  %17 = load volatile i32, i32* %1, align 4, !dbg !2534
  %18 = or i32 %17, 32, !dbg !2535
  store volatile i32 %18, i32* %1, align 4, !dbg !2536
  %19 = load volatile i32, i32* %1, align 4, !dbg !2537
  tail call fastcc void @cmnWriteRegister32(i8* noundef nonnull inttoptr (i32 -2097118800 to i8*), i32 noundef %19) #13, !dbg !2538
  %20 = tail call fastcc i32 @cmnReadRegister32(i8* noundef nonnull inttoptr (i32 -2097118800 to i8*)) #13, !dbg !2539
  store volatile i32 %20, i32* %1, align 4, !dbg !2540
  %21 = load volatile i32, i32* %1, align 4, !dbg !2541
  %22 = and i32 %21, -8, !dbg !2542
  store volatile i32 %22, i32* %1, align 4, !dbg !2543
  %23 = load volatile i32, i32* %1, align 4, !dbg !2544
  %24 = or i32 %23, 4, !dbg !2545
  store volatile i32 %24, i32* %1, align 4, !dbg !2546
  %25 = load volatile i32, i32* %1, align 4, !dbg !2547
  tail call fastcc void @cmnWriteRegister32(i8* noundef nonnull inttoptr (i32 -2097118800 to i8*), i32 noundef %25) #13, !dbg !2548
  store i32 160000000, i32* @gCpuFrequency, align 4, !dbg !2549
  tail call void @SystemCoreClockUpdate() #12, !dbg !2550
  %26 = load i32, i32* @SystemCoreClock, align 4, !dbg !2551
  %27 = udiv i32 %26, 1000, !dbg !2552
  %28 = tail call i32 @SysTick_Set(i32 noundef %27) #12, !dbg !2553
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %2), !dbg !2554
  ret void, !dbg !2554
}

; Function Attrs: noinline nounwind optsize
define dso_local void @cmnCpuClkConfigureTo64M() local_unnamed_addr #0 !dbg !2555 {
  %1 = alloca i32, align 4
  %2 = bitcast i32* %1 to i8*, !dbg !2559
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %2), !dbg !2559
  call void @llvm.dbg.declare(metadata i32* %1, metadata !2557, metadata !DIExpression()), !dbg !2560
  call void @llvm.dbg.value(metadata i32* inttoptr (i32 -2097118800 to i32*), metadata !2558, metadata !DIExpression()), !dbg !2561
  tail call void @cmnPLL1ON() #13, !dbg !2562
  %3 = tail call fastcc i32 @cmnReadRegister32(i8* noundef nonnull inttoptr (i32 -2097118800 to i8*)) #13, !dbg !2563
  store volatile i32 %3, i32* %1, align 4, !dbg !2564
  %4 = load volatile i32, i32* %1, align 4, !dbg !2565
  %5 = and i32 %4, -49153, !dbg !2566
  store volatile i32 %5, i32* %1, align 4, !dbg !2567
  %6 = load volatile i32, i32* %1, align 4, !dbg !2568
  store volatile i32 %6, i32* %1, align 4, !dbg !2569
  %7 = load volatile i32, i32* %1, align 4, !dbg !2570
  tail call fastcc void @cmnWriteRegister32(i8* noundef nonnull inttoptr (i32 -2097118800 to i8*), i32 noundef %7) #13, !dbg !2571
  br label %8, !dbg !2572

8:                                                ; preds = %8, %0
  %9 = load volatile i32, i32* %1, align 4, !dbg !2573
  %10 = tail call fastcc i32 @cmnReadRegister32(i8* noundef nonnull inttoptr (i32 -2097118800 to i8*)) #13, !dbg !2574
  %11 = icmp eq i32 %9, %10, !dbg !2575
  br i1 %11, label %12, label %8, !dbg !2572, !llvm.loop !2576

12:                                               ; preds = %8
  %13 = tail call fastcc i32 @cmnReadRegister32(i8* noundef nonnull inttoptr (i32 -2097118800 to i8*)) #13, !dbg !2578
  store volatile i32 %13, i32* %1, align 4, !dbg !2579
  %14 = load volatile i32, i32* %1, align 4, !dbg !2580
  %15 = and i32 %14, -8, !dbg !2581
  store volatile i32 %15, i32* %1, align 4, !dbg !2582
  %16 = load volatile i32, i32* %1, align 4, !dbg !2583
  %17 = or i32 %16, 2, !dbg !2584
  store volatile i32 %17, i32* %1, align 4, !dbg !2585
  %18 = load volatile i32, i32* %1, align 4, !dbg !2586
  tail call fastcc void @cmnWriteRegister32(i8* noundef nonnull inttoptr (i32 -2097118800 to i8*), i32 noundef %18) #13, !dbg !2587
  store i32 64000000, i32* @gCpuFrequency, align 4, !dbg !2588
  tail call void @SystemCoreClockUpdate() #12, !dbg !2589
  %19 = load i32, i32* @SystemCoreClock, align 4, !dbg !2590
  %20 = udiv i32 %19, 1000, !dbg !2591
  %21 = tail call i32 @SysTick_Set(i32 noundef %20) #12, !dbg !2592
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %2), !dbg !2593
  ret void, !dbg !2593
}

; Function Attrs: nofree noinline nounwind optsize
define dso_local void @cmnSerialFlashClkConfToXtal() local_unnamed_addr #6 section ".ramTEXT" !dbg !2594 {
  %1 = alloca i32, align 4
  %2 = bitcast i32* %1 to i8*, !dbg !2598
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %2), !dbg !2598
  call void @llvm.dbg.declare(metadata i32* %1, metadata !2596, metadata !DIExpression()), !dbg !2599
  call void @llvm.dbg.value(metadata i32* inttoptr (i32 -2097118796 to i32*), metadata !2597, metadata !DIExpression()), !dbg !2600
  %3 = tail call fastcc i32 @cmnReadRegister32(i8* noundef nonnull inttoptr (i32 -2097118796 to i8*)) #13, !dbg !2601
  store volatile i32 %3, i32* %1, align 4, !dbg !2602
  %4 = load volatile i32, i32* %1, align 4, !dbg !2603
  %5 = and i32 %4, -24577, !dbg !2604
  store volatile i32 %5, i32* %1, align 4, !dbg !2605
  %6 = load volatile i32, i32* %1, align 4, !dbg !2606
  store volatile i32 %6, i32* %1, align 4, !dbg !2607
  %7 = load volatile i32, i32* %1, align 4, !dbg !2608
  tail call fastcc void @cmnWriteRegister32(i8* noundef nonnull inttoptr (i32 -2097118796 to i8*), i32 noundef %7) #13, !dbg !2609
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %2), !dbg !2610
  ret void, !dbg !2610
}

; Function Attrs: mustprogress nofree noinline norecurse nounwind optsize willreturn
define dso_local i32 @getc() local_unnamed_addr #4 !dbg !2611 {
  %1 = tail call i32 @getc_nowait() #13, !dbg !2616
  call void @llvm.dbg.value(metadata i32 %1, metadata !2615, metadata !DIExpression()), !dbg !2617
  ret i32 %1, !dbg !2618
}

; Function Attrs: mustprogress nofree noinline norecurse nounwind optsize willreturn
define dso_local i32 @getc_nowait() local_unnamed_addr #4 !dbg !2619 {
  %1 = load volatile i32, i32* inttoptr (i32 -2096955372 to i32*), align 4, !dbg !2622
  %2 = and i32 %1, 1, !dbg !2624
  %3 = icmp eq i32 %2, 0, !dbg !2624
  br i1 %3, label %7, label %4, !dbg !2625

4:                                                ; preds = %0
  %5 = load volatile i32, i32* inttoptr (i32 -2096955392 to i32*), align 65536, !dbg !2626
  %6 = and i32 %5, 255, !dbg !2628
  call void @llvm.dbg.value(metadata i32 %5, metadata !2621, metadata !DIExpression()), !dbg !2629
  br label %7, !dbg !2630

7:                                                ; preds = %0, %4
  %8 = phi i32 [ %6, %4 ], [ -1, %0 ], !dbg !2631
  ret i32 %8, !dbg !2632
}

; Function Attrs: nofree noinline norecurse nounwind optsize
define dso_local void @uart_output_char(i32 noundef %0, i8 noundef zeroext %1) local_unnamed_addr #3 !dbg !2633 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !2638, metadata !DIExpression()), !dbg !2641
  call void @llvm.dbg.value(metadata i8 %1, metadata !2639, metadata !DIExpression()), !dbg !2641
  %3 = icmp eq i32 %0, 0, !dbg !2642
  %4 = select i1 %3, i32 -2096955392, i32 -2096889856, !dbg !2642
  call void @llvm.dbg.value(metadata i32 %4, metadata !2640, metadata !DIExpression()), !dbg !2641
  %5 = or i32 %4, 20
  %6 = inttoptr i32 %5 to i32*
  br label %7, !dbg !2643

7:                                                ; preds = %7, %2
  %8 = load volatile i32, i32* %6, align 4, !dbg !2644
  %9 = and i32 %8, 32, !dbg !2645
  %10 = icmp eq i32 %9, 0, !dbg !2646
  br i1 %10, label %7, label %11, !dbg !2643, !llvm.loop !2647

11:                                               ; preds = %7
  %12 = zext i8 %1 to i32, !dbg !2649
  %13 = inttoptr i32 %4 to i32*, !dbg !2650
  store volatile i32 %12, i32* %13, align 65536, !dbg !2651
  ret void, !dbg !2652
}

; Function Attrs: nofree noinline norecurse nounwind optsize
define dso_local zeroext i8 @uart_input_char(i32 noundef %0) local_unnamed_addr #3 !dbg !2653 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !2657, metadata !DIExpression()), !dbg !2660
  %2 = icmp eq i32 %0, 0, !dbg !2661
  %3 = select i1 %2, i32 -2096955392, i32 -2096889856, !dbg !2661
  call void @llvm.dbg.value(metadata i32 %3, metadata !2658, metadata !DIExpression()), !dbg !2660
  %4 = or i32 %3, 20
  %5 = inttoptr i32 %4 to i32*
  br label %6, !dbg !2662

6:                                                ; preds = %6, %1
  %7 = load volatile i32, i32* %5, align 4, !dbg !2663
  %8 = and i32 %7, 1, !dbg !2664
  %9 = icmp eq i32 %8, 0, !dbg !2665
  br i1 %9, label %6, label %10, !dbg !2662, !llvm.loop !2666

10:                                               ; preds = %6
  %11 = inttoptr i32 %3 to i32*, !dbg !2668
  %12 = load volatile i32, i32* %11, align 65536, !dbg !2668
  %13 = trunc i32 %12 to i8, !dbg !2668
  call void @llvm.dbg.value(metadata i8 %13, metadata !2659, metadata !DIExpression()), !dbg !2660
  ret i8 %13, !dbg !2669
}

; Function Attrs: mustprogress nofree noinline norecurse nounwind optsize willreturn
define dso_local i32 @uart_input_char_unblocking(i32 noundef %0) local_unnamed_addr #4 !dbg !2670 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !2674, metadata !DIExpression()), !dbg !2677
  %2 = icmp eq i32 %0, 0, !dbg !2678
  %3 = select i1 %2, i32 -2096955392, i32 -2096889856, !dbg !2678
  call void @llvm.dbg.value(metadata i32 %3, metadata !2675, metadata !DIExpression()), !dbg !2677
  %4 = or i32 %3, 20, !dbg !2679
  %5 = inttoptr i32 %4 to i32*, !dbg !2679
  %6 = load volatile i32, i32* %5, align 4, !dbg !2679
  %7 = and i32 %6, 1, !dbg !2681
  %8 = icmp eq i32 %7, 0, !dbg !2681
  br i1 %8, label %13, label %9, !dbg !2682

9:                                                ; preds = %1
  %10 = inttoptr i32 %3 to i32*, !dbg !2683
  %11 = load volatile i32, i32* %10, align 65536, !dbg !2683
  %12 = and i32 %11, 255, !dbg !2685
  call void @llvm.dbg.value(metadata i32 %11, metadata !2676, metadata !DIExpression()), !dbg !2677
  br label %13, !dbg !2686

13:                                               ; preds = %1, %9
  %14 = phi i32 [ %12, %9 ], [ -1, %1 ], !dbg !2687
  ret i32 %14, !dbg !2688
}

; Function Attrs: noinline nounwind optsize
define dso_local void @halUART_HWInit(i32 noundef %0) local_unnamed_addr #0 !dbg !2689 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !2693, metadata !DIExpression()), !dbg !2694
  tail call void @halUART_SetFormat(i32 noundef %0, i32 noundef 115200, i16 noundef zeroext 3, i16 noundef zeroext 0, i16 noundef zeroext 0) #13, !dbg !2695
  switch i32 %0, label %7 [
    i32 0, label %3
    i32 1, label %2
  ], !dbg !2696

2:                                                ; preds = %1
  br label %3, !dbg !2697

3:                                                ; preds = %1, %2
  %4 = phi i32* [ inttoptr (i32 -2096889780 to i32*), %2 ], [ inttoptr (i32 -2096955316 to i32*), %1 ]
  %5 = load volatile i32, i32* %4, align 4, !dbg !2701
  %6 = or i32 %5, 1, !dbg !2701
  store volatile i32 %6, i32* %4, align 4, !dbg !2701
  br label %7, !dbg !2702

7:                                                ; preds = %3, %1
  ret void, !dbg !2702
}

; Function Attrs: noinline nounwind optsize
define dso_local void @halUART_SetFormat(i32 noundef %0, i32 noundef %1, i16 noundef zeroext %2, i16 noundef zeroext %3, i16 noundef zeroext %4) local_unnamed_addr #0 !dbg !2703 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !2709, metadata !DIExpression()), !dbg !2726
  call void @llvm.dbg.value(metadata i32 %1, metadata !2710, metadata !DIExpression()), !dbg !2726
  call void @llvm.dbg.value(metadata i16 %2, metadata !2711, metadata !DIExpression()), !dbg !2726
  call void @llvm.dbg.value(metadata i16 %3, metadata !2712, metadata !DIExpression()), !dbg !2726
  call void @llvm.dbg.value(metadata i16 %4, metadata !2713, metadata !DIExpression()), !dbg !2726
  call void @llvm.dbg.value(metadata i32 -2096955392, metadata !2715, metadata !DIExpression()), !dbg !2726
  call void @llvm.dbg.declare(metadata [11 x i16]* @__const.halUART_SetFormat.fraction_L_mapping, metadata !2722, metadata !DIExpression()), !dbg !2727
  call void @llvm.dbg.declare(metadata [11 x i16]* @__const.halUART_SetFormat.fraction_M_mapping, metadata !2724, metadata !DIExpression()), !dbg !2728
  call void @llvm.dbg.value(metadata i32 0, metadata !2725, metadata !DIExpression()), !dbg !2726
  %6 = tail call i32 @top_xtal_freq_get() #12, !dbg !2729
  store i32 %6, i32* @gUartClkFreq, align 4, !dbg !2730
  %7 = icmp eq i32 %0, 1, !dbg !2731
  %8 = select i1 %7, i32 -2096889856, i32 -2096955392, !dbg !2731
  call void @llvm.dbg.value(metadata i32 %8, metadata !2715, metadata !DIExpression()), !dbg !2726
  %9 = or i32 %8, 36, !dbg !2732
  %10 = inttoptr i32 %9 to i32*, !dbg !2732
  store volatile i32 3, i32* %10, align 4, !dbg !2733
  %11 = or i32 %8, 12, !dbg !2734
  %12 = inttoptr i32 %11 to i32*, !dbg !2734
  %13 = load volatile i32, i32* %12, align 4, !dbg !2734
  call void @llvm.dbg.value(metadata i32 %13, metadata !2717, metadata !DIExpression()), !dbg !2726
  %14 = or i32 %13, 128, !dbg !2735
  store volatile i32 %14, i32* %12, align 4, !dbg !2736
  %15 = load i32, i32* @gUartClkFreq, align 4, !dbg !2737
  %16 = udiv i32 %15, %1, !dbg !2738
  call void @llvm.dbg.value(metadata i32 %16, metadata !2716, metadata !DIExpression()), !dbg !2726
  %17 = lshr i32 %16, 8, !dbg !2739
  %18 = add nuw nsw i32 %17, 1, !dbg !2740
  call void @llvm.dbg.value(metadata i32 %18, metadata !2718, metadata !DIExpression()), !dbg !2726
  %19 = udiv i32 %16, %18, !dbg !2741
  %20 = add i32 %19, -1, !dbg !2743
  call void @llvm.dbg.value(metadata i32 %20, metadata !2719, metadata !DIExpression()), !dbg !2726
  %21 = icmp eq i32 %20, 3, !dbg !2744
  %22 = lshr i32 %20, 1, !dbg !2746
  %23 = add nsw i32 %22, -1, !dbg !2746
  %24 = select i1 %21, i32 0, i32 %23, !dbg !2746
  call void @llvm.dbg.value(metadata i32 %24, metadata !2720, metadata !DIExpression()), !dbg !2726
  call void @llvm.dbg.value(metadata i32 undef, metadata !2725, metadata !DIExpression()), !dbg !2726
  %25 = mul i32 %15, 10, !dbg !2747
  %26 = udiv i32 %25, %1, !dbg !2748
  %27 = udiv i32 %26, %16, !dbg !2749
  %28 = mul i32 %19, -10, !dbg !2750
  %29 = add i32 %27, %28, !dbg !2751
  %30 = urem i32 %29, 10, !dbg !2752
  call void @llvm.dbg.value(metadata i32 %30, metadata !2721, metadata !DIExpression()), !dbg !2726
  %31 = and i32 %18, 255, !dbg !2753
  %32 = inttoptr i32 %8 to i32*, !dbg !2754
  store volatile i32 %31, i32* %32, align 65536, !dbg !2755
  %33 = lshr i32 %18, 8, !dbg !2756
  %34 = and i32 %33, 255, !dbg !2757
  %35 = or i32 %8, 4, !dbg !2758
  %36 = inttoptr i32 %35 to i32*, !dbg !2758
  store volatile i32 %34, i32* %36, align 4, !dbg !2759
  %37 = or i32 %8, 40, !dbg !2760
  %38 = inttoptr i32 %37 to i32*, !dbg !2760
  store volatile i32 %20, i32* %38, align 8, !dbg !2761
  %39 = or i32 %8, 44, !dbg !2762
  %40 = inttoptr i32 %39 to i32*, !dbg !2762
  store volatile i32 %24, i32* %40, align 4, !dbg !2763
  %41 = getelementptr inbounds [11 x i16], [11 x i16]* @__const.halUART_SetFormat.fraction_M_mapping, i32 0, i32 %30, !dbg !2764
  %42 = load i16, i16* %41, align 2, !dbg !2764
  %43 = zext i16 %42 to i32, !dbg !2764
  %44 = or i32 %8, 88, !dbg !2765
  %45 = inttoptr i32 %44 to i32*, !dbg !2765
  store volatile i32 %43, i32* %45, align 8, !dbg !2766
  %46 = getelementptr inbounds [11 x i16], [11 x i16]* @__const.halUART_SetFormat.fraction_L_mapping, i32 0, i32 %30, !dbg !2767
  %47 = load i16, i16* %46, align 2, !dbg !2767
  %48 = zext i16 %47 to i32, !dbg !2767
  %49 = or i32 %8, 84, !dbg !2768
  %50 = inttoptr i32 %49 to i32*, !dbg !2768
  store volatile i32 %48, i32* %50, align 4, !dbg !2769
  store volatile i32 %13, i32* %12, align 4, !dbg !2770
  %51 = or i32 %8, 8, !dbg !2771
  %52 = inttoptr i32 %51 to i32*, !dbg !2771
  store volatile i32 71, i32* %52, align 8, !dbg !2772
  %53 = inttoptr i32 %11 to i16*, !dbg !2773
  %54 = load volatile i16, i16* %53, align 4, !dbg !2773
  call void @llvm.dbg.value(metadata i16 %54, metadata !2714, metadata !DIExpression()), !dbg !2726
  %55 = and i16 %54, -64, !dbg !2774
  call void @llvm.dbg.value(metadata i16 %54, metadata !2714, metadata !DIExpression(DW_OP_constu, 18446744073709551608, DW_OP_and, DW_OP_stack_value)), !dbg !2726
  call void @llvm.dbg.value(metadata !DIArgList(i16 %54, i16 %2), metadata !2714, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_constu, 18446744073709551552, DW_OP_and, DW_OP_LLVM_arg, 1, DW_OP_or, DW_OP_stack_value)), !dbg !2726
  %56 = and i16 %2, -61, !dbg !2775
  call void @llvm.dbg.value(metadata !DIArgList(i16 %54, i16 %56), metadata !2714, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_constu, 18446744073709551552, DW_OP_and, DW_OP_LLVM_arg, 1, DW_OP_or, DW_OP_stack_value)), !dbg !2726
  call void @llvm.dbg.value(metadata !DIArgList(i16 %55, i16 %4, i16 %56), metadata !2714, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 2, DW_OP_or, DW_OP_LLVM_arg, 1, DW_OP_or, DW_OP_stack_value)), !dbg !2726
  %57 = and i16 %4, -57, !dbg !2776
  call void @llvm.dbg.value(metadata i16 undef, metadata !2714, metadata !DIExpression()), !dbg !2726
  %58 = or i16 %56, %3, !dbg !2775
  %59 = or i16 %58, %57, !dbg !2776
  %60 = or i16 %59, %55, !dbg !2777
  call void @llvm.dbg.value(metadata i16 %60, metadata !2714, metadata !DIExpression()), !dbg !2726
  store volatile i16 %60, i16* %53, align 4, !dbg !2778
  ret void, !dbg !2779
}

; Function Attrs: mustprogress nofree noinline norecurse nounwind optsize willreturn
define dso_local void @halUART_Get_VFIFO_Length(i32 noundef %0, i32 noundef %1, i32* nocapture noundef writeonly %2) local_unnamed_addr #4 !dbg !2780 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !2785, metadata !DIExpression()), !dbg !2788
  call void @llvm.dbg.value(metadata i32 %1, metadata !2786, metadata !DIExpression()), !dbg !2788
  call void @llvm.dbg.value(metadata i32* %2, metadata !2787, metadata !DIExpression()), !dbg !2788
  %4 = icmp eq i32 %0, 0, !dbg !2789
  %5 = icmp eq i32 %1, 0, !dbg !2791
  br i1 %4, label %6, label %16, !dbg !2792

6:                                                ; preds = %3
  br i1 %5, label %10, label %7, !dbg !2793

7:                                                ; preds = %6
  %8 = load volatile i16, i16* inttoptr (i32 -2097082568 to i16*), align 8, !dbg !2795
  %9 = zext i16 %8 to i32, !dbg !2795
  br label %26, !dbg !2798

10:                                               ; preds = %6
  %11 = load volatile i16, i16* inttoptr (i32 -2097082812 to i16*), align 4, !dbg !2799
  %12 = zext i16 %11 to i32, !dbg !2799
  store i32 %12, i32* %2, align 4, !dbg !2801
  %13 = load volatile i16, i16* inttoptr (i32 -2097082824 to i16*), align 8, !dbg !2802
  %14 = zext i16 %13 to i32, !dbg !2802
  %15 = sub nsw i32 %12, %14, !dbg !2803
  br label %26

16:                                               ; preds = %3
  br i1 %5, label %20, label %17, !dbg !2804

17:                                               ; preds = %16
  %18 = load volatile i16, i16* inttoptr (i32 -2097082056 to i16*), align 8, !dbg !2806
  %19 = zext i16 %18 to i32, !dbg !2806
  br label %26, !dbg !2809

20:                                               ; preds = %16
  %21 = load volatile i16, i16* inttoptr (i32 -2097082300 to i16*), align 4, !dbg !2810
  %22 = zext i16 %21 to i32, !dbg !2810
  store i32 %22, i32* %2, align 4, !dbg !2812
  %23 = load volatile i16, i16* inttoptr (i32 -2097082312 to i16*), align 8, !dbg !2813
  %24 = zext i16 %23 to i32, !dbg !2813
  %25 = sub nsw i32 %22, %24, !dbg !2814
  br label %26

26:                                               ; preds = %17, %20, %7, %10
  %27 = phi i32 [ %19, %17 ], [ %25, %20 ], [ %9, %7 ], [ %15, %10 ]
  store i32 %27, i32* %2, align 4, !dbg !2791
  ret void, !dbg !2815
}

; Function Attrs: nofree noinline norecurse nounwind optsize
define dso_local void @halUART_Read_VFIFO_Data(i32 noundef %0, i8* nocapture noundef writeonly %1, i32 noundef %2) local_unnamed_addr #3 !dbg !2816 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !2820, metadata !DIExpression()), !dbg !2824
  call void @llvm.dbg.value(metadata i8* %1, metadata !2821, metadata !DIExpression()), !dbg !2824
  call void @llvm.dbg.value(metadata i32 %2, metadata !2822, metadata !DIExpression()), !dbg !2824
  call void @llvm.dbg.value(metadata i32 0, metadata !2823, metadata !DIExpression()), !dbg !2824
  call void @llvm.dbg.value(metadata i32 0, metadata !2823, metadata !DIExpression()), !dbg !2824
  %4 = icmp eq i32 %2, 0, !dbg !2825
  br i1 %4, label %15, label %5, !dbg !2828

5:                                                ; preds = %3, %12
  %6 = phi i32 [ %13, %12 ], [ 0, %3 ]
  call void @llvm.dbg.value(metadata i32 %6, metadata !2823, metadata !DIExpression()), !dbg !2824
  switch i32 %0, label %12 [
    i32 0, label %8
    i32 1, label %7
  ], !dbg !2829

7:                                                ; preds = %5
  br label %8, !dbg !2831

8:                                                ; preds = %5, %7
  %9 = phi i8* [ inttoptr (i32 2030044416 to i8*), %7 ], [ inttoptr (i32 2030043904 to i8*), %5 ]
  %10 = load volatile i8, i8* %9, align 256, !dbg !2835
  %11 = getelementptr inbounds i8, i8* %1, i32 %6, !dbg !2835
  store i8 %10, i8* %11, align 1, !dbg !2835
  br label %12, !dbg !2836

12:                                               ; preds = %8, %5
  %13 = add nuw i32 %6, 1, !dbg !2836
  call void @llvm.dbg.value(metadata i32 %13, metadata !2823, metadata !DIExpression()), !dbg !2824
  %14 = icmp eq i32 %13, %2, !dbg !2825
  br i1 %14, label %15, label %5, !dbg !2828, !llvm.loop !2837

15:                                               ; preds = %12, %3
  ret void, !dbg !2839
}

; Function Attrs: nofree noinline norecurse nounwind optsize
define dso_local void @halUART_Write_VFIFO_Data(i32 noundef %0, i8* nocapture noundef readonly %1, i32 noundef %2) local_unnamed_addr #3 !dbg !2840 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !2846, metadata !DIExpression()), !dbg !2850
  call void @llvm.dbg.value(metadata i8* %1, metadata !2847, metadata !DIExpression()), !dbg !2850
  call void @llvm.dbg.value(metadata i32 %2, metadata !2848, metadata !DIExpression()), !dbg !2850
  call void @llvm.dbg.value(metadata i32 0, metadata !2849, metadata !DIExpression()), !dbg !2850
  call void @llvm.dbg.value(metadata i32 0, metadata !2849, metadata !DIExpression()), !dbg !2850
  %4 = icmp eq i32 %2, 0, !dbg !2851
  br i1 %4, label %16, label %5, !dbg !2854

5:                                                ; preds = %3, %13
  %6 = phi i32 [ %14, %13 ], [ 0, %3 ]
  call void @llvm.dbg.value(metadata i32 %6, metadata !2849, metadata !DIExpression()), !dbg !2850
  switch i32 %0, label %13 [
    i32 0, label %7
    i32 1, label %10
  ], !dbg !2855

7:                                                ; preds = %5
  %8 = getelementptr inbounds i8, i8* %1, i32 %6, !dbg !2857
  %9 = load i8, i8* %8, align 1, !dbg !2857
  store volatile i8 %9, i8* inttoptr (i32 2030043648 to i8*), align 512, !dbg !2860
  br label %13, !dbg !2861

10:                                               ; preds = %5
  %11 = getelementptr inbounds i8, i8* %1, i32 %6, !dbg !2862
  %12 = load i8, i8* %11, align 1, !dbg !2862
  store volatile i8 %12, i8* inttoptr (i32 2030044160 to i8*), align 1024, !dbg !2865
  br label %13, !dbg !2866

13:                                               ; preds = %5, %7, %10
  %14 = add nuw i32 %6, 1, !dbg !2867
  call void @llvm.dbg.value(metadata i32 %14, metadata !2849, metadata !DIExpression()), !dbg !2850
  %15 = icmp eq i32 %14, %2, !dbg !2851
  br i1 %15, label %16, label %5, !dbg !2854, !llvm.loop !2868

16:                                               ; preds = %13, %3
  ret void, !dbg !2870
}

; Function Attrs: noinline nounwind optsize
define dso_local void @halUART_Tx_VFIFO_Initialize(i32 noundef %0, i8* noundef %1, i32 noundef %2, i32 noundef %3) local_unnamed_addr #0 !dbg !2871 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !2875, metadata !DIExpression()), !dbg !2879
  call void @llvm.dbg.value(metadata i8* %1, metadata !2876, metadata !DIExpression()), !dbg !2879
  call void @llvm.dbg.value(metadata i32 %2, metadata !2877, metadata !DIExpression()), !dbg !2879
  call void @llvm.dbg.value(metadata i32 %3, metadata !2878, metadata !DIExpression()), !dbg !2879
  switch i32 %0, label %9 [
    i32 0, label %6
    i32 1, label %5
  ], !dbg !2880

5:                                                ; preds = %4
  br label %6, !dbg !2881

6:                                                ; preds = %4, %5
  %7 = phi i32 [ 16, %5 ], [ 14, %4 ]
  %8 = ptrtoint i8* %1 to i32, !dbg !2885
  tail call void @DMA_Vfifo_SetAdrs(i32 noundef %8, i32 noundef %2, i32 noundef %7, i32 noundef 0, i32 noundef %3, i32 noundef 0) #12, !dbg !2885
  tail call void @DMA_Vfifo_Flush(i32 noundef %7) #12, !dbg !2885
  br label %9, !dbg !2886

9:                                                ; preds = %6, %4
  ret void, !dbg !2886
}

; Function Attrs: optsize
declare dso_local void @DMA_Vfifo_SetAdrs(i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare dso_local void @DMA_Vfifo_Flush(i32 noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize
define dso_local void @halUART_Rx_VFIFO_Initialize(i32 noundef %0, i8* noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %5) local_unnamed_addr #0 !dbg !2887 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !2891, metadata !DIExpression()), !dbg !2897
  call void @llvm.dbg.value(metadata i8* %1, metadata !2892, metadata !DIExpression()), !dbg !2897
  call void @llvm.dbg.value(metadata i32 %2, metadata !2893, metadata !DIExpression()), !dbg !2897
  call void @llvm.dbg.value(metadata i32 %3, metadata !2894, metadata !DIExpression()), !dbg !2897
  call void @llvm.dbg.value(metadata i32 %4, metadata !2895, metadata !DIExpression()), !dbg !2897
  call void @llvm.dbg.value(metadata i32 %5, metadata !2896, metadata !DIExpression()), !dbg !2897
  switch i32 %0, label %11 [
    i32 0, label %8
    i32 1, label %7
  ], !dbg !2898

7:                                                ; preds = %6
  br label %8, !dbg !2899

8:                                                ; preds = %6, %7
  %9 = phi i32 [ 17, %7 ], [ 15, %6 ]
  %10 = ptrtoint i8* %1 to i32, !dbg !2903
  tail call void @DMA_Vfifo_SetAdrs(i32 noundef %10, i32 noundef %2, i32 noundef %9, i32 noundef %3, i32 noundef %4, i32 noundef %5) #12, !dbg !2903
  tail call void @DMA_Vfifo_Flush(i32 noundef %9) #12, !dbg !2903
  br label %11, !dbg !2904

11:                                               ; preds = %8, %6
  ret void, !dbg !2904
}

; Function Attrs: noinline nounwind optsize
define dso_local void @halUART_VDMA_Rx_Register_Callback(i32 noundef %0, void ()* noundef %1) local_unnamed_addr #0 !dbg !2905 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !2909, metadata !DIExpression()), !dbg !2911
  call void @llvm.dbg.value(metadata void ()* %1, metadata !2910, metadata !DIExpression()), !dbg !2911
  switch i32 %0, label %6 [
    i32 0, label %4
    i32 1, label %3
  ], !dbg !2912

3:                                                ; preds = %2
  br label %4, !dbg !2913

4:                                                ; preds = %2, %3
  %5 = phi i32 [ 17, %3 ], [ 15, %2 ]
  tail call void @DMA_Vfifo_Register_Callback(i32 noundef %5, void ()* noundef %1) #12, !dbg !2917
  br label %6, !dbg !2918

6:                                                ; preds = %4, %2
  ret void, !dbg !2918
}

; Function Attrs: optsize
declare dso_local void @DMA_Vfifo_Register_Callback(i32 noundef, void ()* noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize
define dso_local void @halUART_VDMA_Rx_Register_TO_Callback(i32 noundef %0, void ()* noundef %1) local_unnamed_addr #0 !dbg !2919 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !2921, metadata !DIExpression()), !dbg !2923
  call void @llvm.dbg.value(metadata void ()* %1, metadata !2922, metadata !DIExpression()), !dbg !2923
  switch i32 %0, label %6 [
    i32 0, label %4
    i32 1, label %3
  ], !dbg !2924

3:                                                ; preds = %2
  br label %4, !dbg !2925

4:                                                ; preds = %2, %3
  %5 = phi i32 [ 17, %3 ], [ 15, %2 ]
  tail call void @DMA_Vfifo_Register_TO_Callback(i32 noundef %5, void ()* noundef %1) #12, !dbg !2929
  br label %6, !dbg !2930

6:                                                ; preds = %4, %2
  ret void, !dbg !2930
}

; Function Attrs: optsize
declare dso_local void @DMA_Vfifo_Register_TO_Callback(i32 noundef, void ()* noundef) local_unnamed_addr #2

; Function Attrs: nofree noinline norecurse nounwind optsize
define dso_local void @uart_set_hardware_flowcontrol(i32 noundef %0) local_unnamed_addr #3 !dbg !2931 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !2933, metadata !DIExpression()), !dbg !2937
  %2 = icmp eq i32 %0, 0, !dbg !2938
  %3 = select i1 %2, i32 -2096955392, i32 -2096889856, !dbg !2938
  call void @llvm.dbg.value(metadata i32 %3, metadata !2934, metadata !DIExpression()), !dbg !2937
  %4 = or i32 %3, 12, !dbg !2939
  %5 = inttoptr i32 %4 to i32*, !dbg !2939
  %6 = load volatile i32, i32* %5, align 4, !dbg !2939
  call void @llvm.dbg.value(metadata i32 %6, metadata !2936, metadata !DIExpression(DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 16, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !2937
  store volatile i32 191, i32* %5, align 4, !dbg !2940
  %7 = or i32 %3, 8, !dbg !2941
  %8 = inttoptr i32 %7 to i32*, !dbg !2941
  %9 = load volatile i32, i32* %8, align 8, !dbg !2941
  call void @llvm.dbg.value(metadata i32 %9, metadata !2935, metadata !DIExpression()), !dbg !2937
  %10 = and i32 %9, 65327, !dbg !2942
  %11 = or i32 %10, 208, !dbg !2942
  call void @llvm.dbg.value(metadata i32 %9, metadata !2935, metadata !DIExpression(DW_OP_constu, 208, DW_OP_or, DW_OP_stack_value)), !dbg !2937
  store volatile i32 %11, i32* %8, align 8, !dbg !2943
  %12 = or i32 %3, 68, !dbg !2944
  %13 = inttoptr i32 %12 to i32*, !dbg !2944
  store volatile i32 0, i32* %13, align 4, !dbg !2945
  store volatile i32 0, i32* %5, align 4, !dbg !2946
  %14 = or i32 %3, 16, !dbg !2947
  %15 = inttoptr i32 %14 to i32*, !dbg !2947
  store volatile i32 2, i32* %15, align 16, !dbg !2948
  %16 = and i32 %6, 65535, !dbg !2949
  store volatile i32 %16, i32* %5, align 4, !dbg !2950
  ret void, !dbg !2951
}

; Function Attrs: nofree noinline norecurse nounwind optsize
define dso_local void @uart_set_software_flowcontrol(i32 noundef %0, i8 noundef zeroext %1, i8 noundef zeroext %2, i8 noundef zeroext %3) local_unnamed_addr #3 !dbg !2952 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !2956, metadata !DIExpression()), !dbg !2963
  call void @llvm.dbg.value(metadata i8 %1, metadata !2957, metadata !DIExpression()), !dbg !2963
  call void @llvm.dbg.value(metadata i8 %2, metadata !2958, metadata !DIExpression()), !dbg !2963
  call void @llvm.dbg.value(metadata i8 %3, metadata !2959, metadata !DIExpression()), !dbg !2963
  %5 = icmp eq i32 %0, 0, !dbg !2964
  %6 = select i1 %5, i32 -2096955392, i32 -2096889856, !dbg !2964
  call void @llvm.dbg.value(metadata i32 %6, metadata !2960, metadata !DIExpression()), !dbg !2963
  %7 = or i32 %6, 12, !dbg !2965
  %8 = inttoptr i32 %7 to i32*, !dbg !2965
  %9 = load volatile i32, i32* %8, align 4, !dbg !2965
  call void @llvm.dbg.value(metadata i32 %9, metadata !2962, metadata !DIExpression(DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 16, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !2963
  store volatile i32 191, i32* %8, align 4, !dbg !2966
  %10 = zext i8 %1 to i32, !dbg !2967
  %11 = or i32 %6, 16, !dbg !2968
  %12 = inttoptr i32 %11 to i32*, !dbg !2968
  store volatile i32 %10, i32* %12, align 16, !dbg !2969
  %13 = or i32 %6, 20, !dbg !2970
  %14 = inttoptr i32 %13 to i32*, !dbg !2970
  store volatile i32 %10, i32* %14, align 4, !dbg !2971
  %15 = zext i8 %2 to i32, !dbg !2972
  %16 = or i32 %6, 24, !dbg !2973
  %17 = inttoptr i32 %16 to i32*, !dbg !2973
  store volatile i32 %15, i32* %17, align 8, !dbg !2974
  %18 = or i32 %6, 28, !dbg !2975
  %19 = inttoptr i32 %18 to i32*, !dbg !2975
  store volatile i32 %15, i32* %19, align 4, !dbg !2976
  %20 = or i32 %6, 8, !dbg !2977
  %21 = inttoptr i32 %20 to i32*, !dbg !2977
  %22 = load volatile i32, i32* %21, align 8, !dbg !2977
  call void @llvm.dbg.value(metadata i32 %22, metadata !2961, metadata !DIExpression()), !dbg !2963
  %23 = and i32 %22, 65525, !dbg !2978
  %24 = or i32 %23, 10, !dbg !2978
  call void @llvm.dbg.value(metadata i32 %22, metadata !2961, metadata !DIExpression(DW_OP_constu, 10, DW_OP_or, DW_OP_stack_value)), !dbg !2963
  store volatile i32 %24, i32* %21, align 8, !dbg !2979
  %25 = and i32 %9, 65535, !dbg !2980
  store volatile i32 %25, i32* %8, align 4, !dbg !2981
  %26 = zext i8 %3 to i32, !dbg !2982
  %27 = or i32 %6, 64, !dbg !2983
  %28 = inttoptr i32 %27 to i32*, !dbg !2983
  store volatile i32 %26, i32* %28, align 64, !dbg !2984
  %29 = or i32 %6, 68, !dbg !2985
  %30 = inttoptr i32 %29 to i32*, !dbg !2985
  store volatile i32 1, i32* %30, align 4, !dbg !2986
  ret void, !dbg !2987
}

; Function Attrs: nofree noinline norecurse nounwind optsize
define dso_local void @uart_disable_flowcontrol(i32 noundef %0) local_unnamed_addr #3 !dbg !2988 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !2990, metadata !DIExpression()), !dbg !2993
  %2 = icmp eq i32 %0, 0, !dbg !2994
  %3 = select i1 %2, i32 -2096955392, i32 -2096889856, !dbg !2994
  call void @llvm.dbg.value(metadata i32 %3, metadata !2991, metadata !DIExpression()), !dbg !2993
  %4 = or i32 %3, 12, !dbg !2995
  %5 = inttoptr i32 %4 to i32*, !dbg !2995
  %6 = load volatile i32, i32* %5, align 4, !dbg !2995
  call void @llvm.dbg.value(metadata i32 %6, metadata !2992, metadata !DIExpression(DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 16, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !2993
  store volatile i32 191, i32* %5, align 4, !dbg !2996
  %7 = or i32 %3, 8, !dbg !2997
  %8 = inttoptr i32 %7 to i32*, !dbg !2997
  store volatile i32 0, i32* %8, align 8, !dbg !2998
  store volatile i32 0, i32* %5, align 4, !dbg !2999
  %9 = and i32 %6, 65535, !dbg !3000
  store volatile i32 %9, i32* %5, align 4, !dbg !3001
  ret void, !dbg !3002
}

; Function Attrs: nofree noinline norecurse nounwind optsize
define dso_local void @uart_reset_default_value(i32 noundef %0) local_unnamed_addr #3 !dbg !3003 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !3005, metadata !DIExpression()), !dbg !3007
  %2 = icmp eq i32 %0, 0, !dbg !3008
  %3 = select i1 %2, i32 -2096955392, i32 -2096889856, !dbg !3008
  call void @llvm.dbg.value(metadata i32 %3, metadata !3006, metadata !DIExpression()), !dbg !3007
  %4 = or i32 %3, 12, !dbg !3009
  %5 = inttoptr i32 %4 to i32*, !dbg !3009
  store volatile i32 191, i32* %5, align 4, !dbg !3010
  %6 = or i32 %3, 8, !dbg !3011
  %7 = inttoptr i32 %6 to i32*, !dbg !3011
  store volatile i32 16, i32* %7, align 8, !dbg !3012
  %8 = or i32 %3, 16, !dbg !3013
  %9 = inttoptr i32 %8 to i32*, !dbg !3013
  store volatile i32 0, i32* %9, align 16, !dbg !3014
  %10 = or i32 %3, 24, !dbg !3015
  %11 = inttoptr i32 %10 to i32*, !dbg !3015
  store volatile i32 0, i32* %11, align 8, !dbg !3016
  store volatile i32 128, i32* %5, align 4, !dbg !3017
  %12 = inttoptr i32 %3 to i32*, !dbg !3018
  store volatile i32 0, i32* %12, align 65536, !dbg !3019
  %13 = or i32 %3, 4, !dbg !3020
  %14 = inttoptr i32 %13 to i32*, !dbg !3020
  store volatile i32 0, i32* %14, align 4, !dbg !3021
  store volatile i32 0, i32* %5, align 4, !dbg !3022
  store volatile i32 0, i32* %14, align 4, !dbg !3023
  store volatile i32 0, i32* %7, align 8, !dbg !3024
  store volatile i32 191, i32* %5, align 4, !dbg !3025
  store volatile i32 0, i32* %7, align 8, !dbg !3026
  store volatile i32 0, i32* %5, align 4, !dbg !3027
  store volatile i32 0, i32* %9, align 16, !dbg !3028
  %15 = or i32 %3, 28, !dbg !3029
  %16 = inttoptr i32 %15 to i32*, !dbg !3029
  store volatile i32 0, i32* %16, align 4, !dbg !3030
  %17 = or i32 %3, 36, !dbg !3031
  %18 = inttoptr i32 %17 to i32*, !dbg !3031
  store volatile i32 0, i32* %18, align 4, !dbg !3032
  %19 = or i32 %3, 40, !dbg !3033
  %20 = inttoptr i32 %19 to i32*, !dbg !3033
  store volatile i32 0, i32* %20, align 8, !dbg !3034
  %21 = or i32 %3, 44, !dbg !3035
  %22 = inttoptr i32 %21 to i32*, !dbg !3035
  store volatile i32 0, i32* %22, align 4, !dbg !3036
  %23 = or i32 %3, 52, !dbg !3037
  %24 = inttoptr i32 %23 to i32*, !dbg !3037
  store volatile i32 0, i32* %24, align 4, !dbg !3038
  %25 = or i32 %3, 60, !dbg !3039
  %26 = inttoptr i32 %25 to i32*, !dbg !3039
  store volatile i32 0, i32* %26, align 4, !dbg !3040
  %27 = or i32 %3, 64, !dbg !3041
  %28 = inttoptr i32 %27 to i32*, !dbg !3041
  store volatile i32 0, i32* %28, align 64, !dbg !3042
  %29 = or i32 %3, 68, !dbg !3043
  %30 = inttoptr i32 %29 to i32*, !dbg !3043
  store volatile i32 0, i32* %30, align 4, !dbg !3044
  %31 = or i32 %3, 72, !dbg !3045
  %32 = inttoptr i32 %31 to i32*, !dbg !3045
  store volatile i32 0, i32* %32, align 8, !dbg !3046
  %33 = or i32 %3, 76, !dbg !3047
  %34 = inttoptr i32 %33 to i32*, !dbg !3047
  store volatile i32 0, i32* %34, align 4, !dbg !3048
  %35 = or i32 %3, 80, !dbg !3049
  %36 = inttoptr i32 %35 to i32*, !dbg !3049
  store volatile i32 0, i32* %36, align 16, !dbg !3050
  %37 = or i32 %3, 84, !dbg !3051
  %38 = inttoptr i32 %37 to i32*, !dbg !3051
  store volatile i32 0, i32* %38, align 4, !dbg !3052
  %39 = or i32 %3, 88, !dbg !3053
  %40 = inttoptr i32 %39 to i32*, !dbg !3053
  store volatile i32 0, i32* %40, align 8, !dbg !3054
  %41 = or i32 %3, 96, !dbg !3055
  %42 = inttoptr i32 %41 to i32*, !dbg !3055
  store volatile i32 0, i32* %42, align 32, !dbg !3056
  ret void, !dbg !3057
}

; Function Attrs: nofree noinline norecurse nounwind optsize
define dso_local void @uart_query_empty(i32 noundef %0) local_unnamed_addr #3 !dbg !3058 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !3060, metadata !DIExpression()), !dbg !3062
  %2 = icmp eq i32 %0, 0, !dbg !3063
  call void @llvm.dbg.value(metadata i32 undef, metadata !3061, metadata !DIExpression()), !dbg !3062
  %3 = select i1 %2, i32 -2096955372, i32 -2096889836
  %4 = inttoptr i32 %3 to i32*
  br label %5, !dbg !3064

5:                                                ; preds = %5, %1
  %6 = load volatile i32, i32* %4, align 4, !dbg !3065
  %7 = and i32 %6, 64, !dbg !3066
  %8 = icmp eq i32 %7, 0, !dbg !3067
  br i1 %8, label %5, label %9, !dbg !3064, !llvm.loop !3068

9:                                                ; preds = %5
  ret void, !dbg !3070
}

; Function Attrs: noinline nounwind optsize
define dso_local void @log_hal_fatal_internal(i8* nocapture noundef readnone %0, i32 noundef %1, i8* noundef %2, ...) local_unnamed_addr #0 !dbg !3071 {
  %4 = alloca %struct.__va_list, align 4
  %5 = alloca i32, align 4
  call void @llvm.dbg.value(metadata i8* %0, metadata !3075, metadata !DIExpression()), !dbg !3088
  call void @llvm.dbg.value(metadata i32 %1, metadata !3076, metadata !DIExpression()), !dbg !3088
  call void @llvm.dbg.value(metadata i8* %2, metadata !3077, metadata !DIExpression()), !dbg !3088
  %6 = bitcast %struct.__va_list* %4 to i8*, !dbg !3089
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %6) #14, !dbg !3089
  call void @llvm.dbg.declare(metadata %struct.__va_list* %4, metadata !3078, metadata !DIExpression()), !dbg !3090
  %7 = bitcast i32* %5 to i8*, !dbg !3091
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %7) #14, !dbg !3091
  call void @llvm.dbg.value(metadata i32* %5, metadata !3087, metadata !DIExpression(DW_OP_deref)), !dbg !3088
  %8 = call i32 @hal_nvic_save_and_set_interrupt_mask(i32* noundef nonnull %5) #12, !dbg !3092
  call void @llvm.va_start(i8* nonnull %6), !dbg !3093
  %9 = bitcast %struct.__va_list* %4 to i32*, !dbg !3094
  %10 = load i32, i32* %9, align 4, !dbg !3094
  %11 = insertvalue [1 x i32] poison, i32 %10, 0, !dbg !3094
  %12 = call i32 @vprintf(i8* noundef %2, [1 x i32] %11) #12, !dbg !3094
  call void @llvm.va_end(i8* nonnull %6), !dbg !3095
  %13 = load i32, i32* %5, align 4, !dbg !3096
  call void @llvm.dbg.value(metadata i32 %13, metadata !3087, metadata !DIExpression()), !dbg !3088
  %14 = call i32 @hal_nvic_restore_interrupt_mask(i32 noundef %13) #12, !dbg !3097
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %7) #14, !dbg !3098
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %6) #14, !dbg !3098
  ret void, !dbg !3098
}

; Function Attrs: nofree nosync nounwind willreturn
declare void @llvm.va_start(i8*) #8

; Function Attrs: optsize
declare dso_local i32 @vprintf(i8* noundef, [1 x i32]) local_unnamed_addr #2

; Function Attrs: nofree nosync nounwind willreturn
declare void @llvm.va_end(i8*) #8

; Function Attrs: noinline nounwind optsize
define dso_local void @log_hal_error_internal(i8* nocapture noundef readnone %0, i32 noundef %1, i8* noundef %2, ...) local_unnamed_addr #0 !dbg !3099 {
  %4 = alloca %struct.__va_list, align 4
  %5 = alloca i32, align 4
  call void @llvm.dbg.value(metadata i8* %0, metadata !3101, metadata !DIExpression()), !dbg !3106
  call void @llvm.dbg.value(metadata i32 %1, metadata !3102, metadata !DIExpression()), !dbg !3106
  call void @llvm.dbg.value(metadata i8* %2, metadata !3103, metadata !DIExpression()), !dbg !3106
  %6 = bitcast %struct.__va_list* %4 to i8*, !dbg !3107
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %6) #14, !dbg !3107
  call void @llvm.dbg.declare(metadata %struct.__va_list* %4, metadata !3104, metadata !DIExpression()), !dbg !3108
  %7 = bitcast i32* %5 to i8*, !dbg !3109
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %7) #14, !dbg !3109
  call void @llvm.dbg.value(metadata i32* %5, metadata !3105, metadata !DIExpression(DW_OP_deref)), !dbg !3106
  %8 = call i32 @hal_nvic_save_and_set_interrupt_mask(i32* noundef nonnull %5) #12, !dbg !3110
  call void @llvm.va_start(i8* nonnull %6), !dbg !3111
  %9 = bitcast %struct.__va_list* %4 to i32*, !dbg !3112
  %10 = load i32, i32* %9, align 4, !dbg !3112
  %11 = insertvalue [1 x i32] poison, i32 %10, 0, !dbg !3112
  %12 = call i32 @vprintf(i8* noundef %2, [1 x i32] %11) #12, !dbg !3112
  call void @llvm.va_end(i8* nonnull %6), !dbg !3113
  %13 = load i32, i32* %5, align 4, !dbg !3114
  call void @llvm.dbg.value(metadata i32 %13, metadata !3105, metadata !DIExpression()), !dbg !3106
  %14 = call i32 @hal_nvic_restore_interrupt_mask(i32 noundef %13) #12, !dbg !3115
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %7) #14, !dbg !3116
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %6) #14, !dbg !3116
  ret void, !dbg !3116
}

; Function Attrs: noinline nounwind optsize
define dso_local void @log_hal_warning_internal(i8* nocapture noundef readnone %0, i32 noundef %1, i8* noundef %2, ...) local_unnamed_addr #0 !dbg !3117 {
  %4 = alloca %struct.__va_list, align 4
  %5 = alloca i32, align 4
  call void @llvm.dbg.value(metadata i8* %0, metadata !3119, metadata !DIExpression()), !dbg !3124
  call void @llvm.dbg.value(metadata i32 %1, metadata !3120, metadata !DIExpression()), !dbg !3124
  call void @llvm.dbg.value(metadata i8* %2, metadata !3121, metadata !DIExpression()), !dbg !3124
  %6 = bitcast %struct.__va_list* %4 to i8*, !dbg !3125
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %6) #14, !dbg !3125
  call void @llvm.dbg.declare(metadata %struct.__va_list* %4, metadata !3122, metadata !DIExpression()), !dbg !3126
  %7 = bitcast i32* %5 to i8*, !dbg !3127
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %7) #14, !dbg !3127
  call void @llvm.dbg.value(metadata i32* %5, metadata !3123, metadata !DIExpression(DW_OP_deref)), !dbg !3124
  %8 = call i32 @hal_nvic_save_and_set_interrupt_mask(i32* noundef nonnull %5) #12, !dbg !3128
  call void @llvm.va_start(i8* nonnull %6), !dbg !3129
  %9 = bitcast %struct.__va_list* %4 to i32*, !dbg !3130
  %10 = load i32, i32* %9, align 4, !dbg !3130
  %11 = insertvalue [1 x i32] poison, i32 %10, 0, !dbg !3130
  %12 = call i32 @vprintf(i8* noundef %2, [1 x i32] %11) #12, !dbg !3130
  call void @llvm.va_end(i8* nonnull %6), !dbg !3131
  %13 = load i32, i32* %5, align 4, !dbg !3132
  call void @llvm.dbg.value(metadata i32 %13, metadata !3123, metadata !DIExpression()), !dbg !3124
  %14 = call i32 @hal_nvic_restore_interrupt_mask(i32 noundef %13) #12, !dbg !3133
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %7) #14, !dbg !3134
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %6) #14, !dbg !3134
  ret void, !dbg !3134
}

; Function Attrs: noinline nounwind optsize
define dso_local void @log_hal_info_internal(i8* nocapture noundef readnone %0, i32 noundef %1, i8* noundef %2, ...) local_unnamed_addr #0 !dbg !3135 {
  %4 = alloca %struct.__va_list, align 4
  %5 = alloca i32, align 4
  call void @llvm.dbg.value(metadata i8* %0, metadata !3137, metadata !DIExpression()), !dbg !3142
  call void @llvm.dbg.value(metadata i32 %1, metadata !3138, metadata !DIExpression()), !dbg !3142
  call void @llvm.dbg.value(metadata i8* %2, metadata !3139, metadata !DIExpression()), !dbg !3142
  %6 = bitcast %struct.__va_list* %4 to i8*, !dbg !3143
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %6) #14, !dbg !3143
  call void @llvm.dbg.declare(metadata %struct.__va_list* %4, metadata !3140, metadata !DIExpression()), !dbg !3144
  %7 = bitcast i32* %5 to i8*, !dbg !3145
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %7) #14, !dbg !3145
  call void @llvm.dbg.value(metadata i32* %5, metadata !3141, metadata !DIExpression(DW_OP_deref)), !dbg !3142
  %8 = call i32 @hal_nvic_save_and_set_interrupt_mask(i32* noundef nonnull %5) #12, !dbg !3146
  call void @llvm.va_start(i8* nonnull %6), !dbg !3147
  %9 = bitcast %struct.__va_list* %4 to i32*, !dbg !3148
  %10 = load i32, i32* %9, align 4, !dbg !3148
  %11 = insertvalue [1 x i32] poison, i32 %10, 0, !dbg !3148
  %12 = call i32 @vprintf(i8* noundef %2, [1 x i32] %11) #12, !dbg !3148
  call void @llvm.va_end(i8* nonnull %6), !dbg !3149
  %13 = load i32, i32* %5, align 4, !dbg !3150
  call void @llvm.dbg.value(metadata i32 %13, metadata !3141, metadata !DIExpression()), !dbg !3142
  %14 = call i32 @hal_nvic_restore_interrupt_mask(i32 noundef %13) #12, !dbg !3151
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %7) #14, !dbg !3152
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %6) #14, !dbg !3152
  ret void, !dbg !3152
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize readnone willreturn
define dso_local void @log_hal_dump_internal(i8* nocapture noundef %0, i32 noundef %1, i8* nocapture noundef %2, i8* nocapture noundef %3, i32 noundef %4, ...) local_unnamed_addr #9 !dbg !3153 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !3159, metadata !DIExpression()), !dbg !3164
  call void @llvm.dbg.value(metadata i32 %1, metadata !3160, metadata !DIExpression()), !dbg !3164
  call void @llvm.dbg.value(metadata i8* %2, metadata !3161, metadata !DIExpression()), !dbg !3164
  call void @llvm.dbg.value(metadata i8* %3, metadata !3162, metadata !DIExpression()), !dbg !3164
  call void @llvm.dbg.value(metadata i32 %4, metadata !3163, metadata !DIExpression()), !dbg !3164
  ret void, !dbg !3165
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize readnone willreturn
define dso_local i32 @hal_nvic_init() local_unnamed_addr #9 !dbg !3166 {
  ret i32 0, !dbg !3170
}

; Function Attrs: nofree noinline norecurse nounwind optsize
define dso_local i32 @hal_nvic_enable_irq(i32 noundef %0) local_unnamed_addr #3 !dbg !3171 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !3175, metadata !DIExpression()), !dbg !3177
  call void @llvm.dbg.value(metadata i32 -1, metadata !3176, metadata !DIExpression()), !dbg !3177
  %2 = icmp ugt i32 %0, 95, !dbg !3178
  br i1 %2, label %4, label %3, !dbg !3178

3:                                                ; preds = %1
  tail call fastcc void @NVIC_EnableIRQ(i32 noundef %0) #13, !dbg !3180
  call void @llvm.dbg.value(metadata i32 0, metadata !3176, metadata !DIExpression()), !dbg !3177
  br label %4, !dbg !3182

4:                                                ; preds = %1, %3
  %5 = phi i32 [ 0, %3 ], [ -3, %1 ], !dbg !3177
  ret i32 %5, !dbg !3183
}

; Function Attrs: nofree noinline norecurse nounwind optsize
define internal fastcc void @NVIC_EnableIRQ(i32 noundef %0) unnamed_addr #3 !dbg !3184 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !3188, metadata !DIExpression()), !dbg !3189
  %2 = and i32 %0, 31, !dbg !3190
  %3 = shl nuw i32 1, %2, !dbg !3191
  %4 = lshr i32 %0, 5, !dbg !3192
  %5 = getelementptr inbounds [8 x i32], [8 x i32]* inttoptr (i32 -536813312 to [8 x i32]*), i32 0, i32 %4, !dbg !3193
  store volatile i32 %3, i32* %5, align 4, !dbg !3194
  ret void, !dbg !3195
}

; Function Attrs: nofree noinline norecurse nounwind optsize
define dso_local i32 @hal_nvic_disable_irq(i32 noundef %0) local_unnamed_addr #3 !dbg !3196 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !3198, metadata !DIExpression()), !dbg !3200
  call void @llvm.dbg.value(metadata i32 -1, metadata !3199, metadata !DIExpression()), !dbg !3200
  %2 = icmp ugt i32 %0, 95, !dbg !3201
  br i1 %2, label %4, label %3, !dbg !3201

3:                                                ; preds = %1
  tail call fastcc void @NVIC_DisableIRQ(i32 noundef %0) #13, !dbg !3203
  call void @llvm.dbg.value(metadata i32 0, metadata !3199, metadata !DIExpression()), !dbg !3200
  br label %4, !dbg !3205

4:                                                ; preds = %1, %3
  %5 = phi i32 [ 0, %3 ], [ -3, %1 ], !dbg !3200
  ret i32 %5, !dbg !3206
}

; Function Attrs: nofree noinline norecurse nounwind optsize
define internal fastcc void @NVIC_DisableIRQ(i32 noundef %0) unnamed_addr #3 !dbg !3207 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !3209, metadata !DIExpression()), !dbg !3210
  %2 = and i32 %0, 31, !dbg !3211
  %3 = shl nuw i32 1, %2, !dbg !3212
  %4 = lshr i32 %0, 5, !dbg !3213
  %5 = getelementptr inbounds [8 x i32], [8 x i32]* inttoptr (i32 -536813184 to [8 x i32]*), i32 0, i32 %4, !dbg !3214
  store volatile i32 %3, i32* %5, align 4, !dbg !3215
  ret void, !dbg !3216
}

; Function Attrs: mustprogress nofree noinline norecurse nounwind optsize willreturn
define dso_local i32 @hal_nvic_get_pending_irq(i32 noundef %0) local_unnamed_addr #4 !dbg !3217 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !3221, metadata !DIExpression()), !dbg !3223
  call void @llvm.dbg.value(metadata i32 255, metadata !3222, metadata !DIExpression()), !dbg !3223
  %2 = icmp ugt i32 %0, 95, !dbg !3224
  br i1 %2, label %5, label %3, !dbg !3224

3:                                                ; preds = %1
  %4 = tail call fastcc i32 @NVIC_GetPendingIRQ(i32 noundef %0) #13, !dbg !3226
  call void @llvm.dbg.value(metadata i32 %4, metadata !3222, metadata !DIExpression()), !dbg !3223
  br label %5, !dbg !3228

5:                                                ; preds = %1, %3
  %6 = phi i32 [ %4, %3 ], [ 255, %1 ], !dbg !3223
  ret i32 %6, !dbg !3229
}

; Function Attrs: mustprogress nofree noinline norecurse nounwind optsize willreturn
define internal fastcc i32 @NVIC_GetPendingIRQ(i32 noundef %0) unnamed_addr #4 !dbg !3230 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !3234, metadata !DIExpression()), !dbg !3235
  %2 = lshr i32 %0, 5, !dbg !3236
  %3 = getelementptr inbounds [8 x i32], [8 x i32]* inttoptr (i32 -536813056 to [8 x i32]*), i32 0, i32 %2, !dbg !3237
  %4 = load volatile i32, i32* %3, align 4, !dbg !3237
  %5 = and i32 %0, 31, !dbg !3238
  %6 = lshr i32 %4, %5, !dbg !3239
  %7 = and i32 %6, 1, !dbg !3239
  ret i32 %7, !dbg !3240
}

; Function Attrs: nofree noinline norecurse nounwind optsize
define dso_local i32 @hal_nvic_set_pending_irq(i32 noundef %0) local_unnamed_addr #3 !dbg !3241 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !3243, metadata !DIExpression()), !dbg !3245
  call void @llvm.dbg.value(metadata i32 -1, metadata !3244, metadata !DIExpression()), !dbg !3245
  %2 = icmp ugt i32 %0, 95, !dbg !3246
  br i1 %2, label %4, label %3, !dbg !3246

3:                                                ; preds = %1
  tail call fastcc void @NVIC_SetPendingIRQ(i32 noundef %0) #13, !dbg !3248
  call void @llvm.dbg.value(metadata i32 0, metadata !3244, metadata !DIExpression()), !dbg !3245
  br label %4, !dbg !3250

4:                                                ; preds = %1, %3
  %5 = phi i32 [ 0, %3 ], [ -3, %1 ], !dbg !3245
  ret i32 %5, !dbg !3251
}

; Function Attrs: nofree noinline norecurse nounwind optsize
define internal fastcc void @NVIC_SetPendingIRQ(i32 noundef %0) unnamed_addr #3 !dbg !3252 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !3254, metadata !DIExpression()), !dbg !3255
  %2 = and i32 %0, 31, !dbg !3256
  %3 = shl nuw i32 1, %2, !dbg !3257
  %4 = lshr i32 %0, 5, !dbg !3258
  %5 = getelementptr inbounds [8 x i32], [8 x i32]* inttoptr (i32 -536813056 to [8 x i32]*), i32 0, i32 %4, !dbg !3259
  store volatile i32 %3, i32* %5, align 4, !dbg !3260
  ret void, !dbg !3261
}

; Function Attrs: nofree noinline norecurse nounwind optsize
define dso_local i32 @hal_nvic_clear_pending_irq(i32 noundef %0) local_unnamed_addr #3 !dbg !3262 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !3264, metadata !DIExpression()), !dbg !3266
  call void @llvm.dbg.value(metadata i32 -1, metadata !3265, metadata !DIExpression()), !dbg !3266
  %2 = icmp ugt i32 %0, 95, !dbg !3267
  br i1 %2, label %4, label %3, !dbg !3267

3:                                                ; preds = %1
  tail call fastcc void @NVIC_ClearPendingIRQ(i32 noundef %0) #13, !dbg !3269
  call void @llvm.dbg.value(metadata i32 0, metadata !3265, metadata !DIExpression()), !dbg !3266
  br label %4, !dbg !3271

4:                                                ; preds = %1, %3
  %5 = phi i32 [ 0, %3 ], [ -3, %1 ], !dbg !3266
  ret i32 %5, !dbg !3272
}

; Function Attrs: nofree noinline norecurse nounwind optsize
define internal fastcc void @NVIC_ClearPendingIRQ(i32 noundef %0) unnamed_addr #3 !dbg !3273 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !3275, metadata !DIExpression()), !dbg !3276
  %2 = and i32 %0, 31, !dbg !3277
  %3 = shl nuw i32 1, %2, !dbg !3278
  %4 = lshr i32 %0, 5, !dbg !3279
  %5 = getelementptr inbounds [8 x i32], [8 x i32]* inttoptr (i32 -536812928 to [8 x i32]*), i32 0, i32 %4, !dbg !3280
  store volatile i32 %3, i32* %5, align 4, !dbg !3281
  ret void, !dbg !3282
}

; Function Attrs: nofree noinline norecurse nounwind optsize
define dso_local i32 @hal_nvic_set_priority(i32 noundef %0, i32 noundef %1) local_unnamed_addr #3 !dbg !3283 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !3287, metadata !DIExpression()), !dbg !3290
  call void @llvm.dbg.value(metadata i32 %1, metadata !3288, metadata !DIExpression()), !dbg !3290
  call void @llvm.dbg.value(metadata i32 -1, metadata !3289, metadata !DIExpression()), !dbg !3290
  %3 = icmp ugt i32 %0, 95, !dbg !3291
  br i1 %3, label %5, label %4, !dbg !3291

4:                                                ; preds = %2
  tail call fastcc void @NVIC_SetPriority(i32 noundef %0, i32 noundef %1) #13, !dbg !3293
  call void @llvm.dbg.value(metadata i32 0, metadata !3289, metadata !DIExpression()), !dbg !3290
  br label %5, !dbg !3295

5:                                                ; preds = %2, %4
  %6 = phi i32 [ 0, %4 ], [ -3, %2 ], !dbg !3290
  ret i32 %6, !dbg !3296
}

; Function Attrs: nofree noinline norecurse nounwind optsize
define internal fastcc void @NVIC_SetPriority(i32 noundef %0, i32 noundef %1) unnamed_addr #3 !dbg !3297 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !3301, metadata !DIExpression()), !dbg !3303
  call void @llvm.dbg.value(metadata i32 %1, metadata !3302, metadata !DIExpression()), !dbg !3303
  %3 = trunc i32 %1 to i8, !dbg !3304
  %4 = shl i8 %3, 5, !dbg !3304
  %5 = getelementptr inbounds [240 x i8], [240 x i8]* inttoptr (i32 -536812544 to [240 x i8]*), i32 0, i32 %0, !dbg !3307
  store volatile i8 %4, i8* %5, align 1, !dbg !3308
  ret void, !dbg !3309
}

; Function Attrs: mustprogress nofree noinline norecurse nounwind optsize willreturn
define dso_local i32 @hal_nvic_get_priority(i32 noundef %0) local_unnamed_addr #4 !dbg !3310 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !3312, metadata !DIExpression()), !dbg !3314
  call void @llvm.dbg.value(metadata i32 68, metadata !3313, metadata !DIExpression()), !dbg !3314
  %2 = icmp ugt i32 %0, 95, !dbg !3315
  br i1 %2, label %5, label %3, !dbg !3315

3:                                                ; preds = %1
  %4 = tail call fastcc i32 @NVIC_GetPriority(i32 noundef %0) #13, !dbg !3317
  call void @llvm.dbg.value(metadata i32 %4, metadata !3313, metadata !DIExpression()), !dbg !3314
  br label %5, !dbg !3319

5:                                                ; preds = %1, %3
  %6 = phi i32 [ %4, %3 ], [ 68, %1 ], !dbg !3314
  ret i32 %6, !dbg !3320
}

; Function Attrs: mustprogress nofree noinline norecurse nounwind optsize willreturn
define internal fastcc i32 @NVIC_GetPriority(i32 noundef %0) unnamed_addr #4 !dbg !3321 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !3323, metadata !DIExpression()), !dbg !3324
  %2 = getelementptr inbounds [240 x i8], [240 x i8]* inttoptr (i32 -536812544 to [240 x i8]*), i32 0, i32 %0, !dbg !3325
  %3 = load volatile i8, i8* %2, align 1, !dbg !3325
  %4 = lshr i8 %3, 5, !dbg !3328
  %5 = zext i8 %4 to i32, !dbg !3328
  ret i32 %5, !dbg !3329
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize readnone willreturn
define dso_local void @Flash_ReturnReady() local_unnamed_addr #9 !dbg !3330 {
  ret void, !dbg !3331
}

; Function Attrs: noinline nounwind optsize
define dso_local i32 @isrC_main() local_unnamed_addr #0 section ".ramTEXT" !dbg !3332 {
  call void @llvm.dbg.value(metadata i32 -1, metadata !3334, metadata !DIExpression()), !dbg !3336
  %1 = tail call fastcc i32 @get_current_irq() #13, !dbg !3337
  call void @llvm.dbg.value(metadata i32 %1, metadata !3335, metadata !DIExpression()), !dbg !3336
  %2 = icmp ugt i32 %1, 95, !dbg !3338
  br i1 %2, label %12, label %3, !dbg !3338

3:                                                ; preds = %0
  %4 = getelementptr inbounds [96 x %struct.nvic_function_t], [96 x %struct.nvic_function_t]* @nvic_function_table, i32 0, i32 %1, i32 0, !dbg !3340
  %5 = load void (i32)*, void (i32)** %4, align 4, !dbg !3340
  %6 = icmp eq void (i32)* %5, null, !dbg !3342
  br i1 %6, label %7, label %8, !dbg !3343

7:                                                ; preds = %3
  call void @llvm.dbg.value(metadata i32 -4, metadata !3334, metadata !DIExpression()), !dbg !3336
  tail call void (i8*, i32, i8*, ...) @log_hal_error_internal(i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @__FUNCTION__.isrC_main, i32 0, i32 0), i32 noundef 194, i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @.str.9, i32 0, i32 0)) #12, !dbg !3344
  br label %12, !dbg !3346

8:                                                ; preds = %3
  %9 = tail call fastcc i32 @get_pending_irq() #13, !dbg !3347
  %10 = getelementptr inbounds [96 x %struct.nvic_function_t], [96 x %struct.nvic_function_t]* @nvic_function_table, i32 0, i32 %1, i32 1, !dbg !3349
  store i32 %9, i32* %10, align 4, !dbg !3350
  %11 = load void (i32)*, void (i32)** %4, align 4, !dbg !3351
  tail call void %11(i32 noundef %1) #12, !dbg !3352
  call void @llvm.dbg.value(metadata i32 0, metadata !3334, metadata !DIExpression()), !dbg !3336
  br label %12, !dbg !3353

12:                                               ; preds = %0, %8, %7
  %13 = phi i32 [ -4, %7 ], [ 0, %8 ], [ -3, %0 ], !dbg !3336
  ret i32 %13, !dbg !3354
}

; Function Attrs: mustprogress nofree noinline norecurse nounwind optsize willreturn
define internal fastcc i32 @get_current_irq() unnamed_addr #4 !dbg !3355 {
  %1 = load volatile i32, i32* inttoptr (i32 -536810236 to i32*), align 4, !dbg !3358
  %2 = and i32 %1, 511, !dbg !3359
  call void @llvm.dbg.value(metadata i32 %2, metadata !3357, metadata !DIExpression()), !dbg !3360
  %3 = add nsw i32 %2, -16, !dbg !3361
  ret i32 %3, !dbg !3362
}

; Function Attrs: mustprogress nofree noinline norecurse nounwind optsize willreturn
define internal fastcc i32 @get_pending_irq() unnamed_addr #4 !dbg !3363 {
  %1 = load volatile i32, i32* inttoptr (i32 -536810236 to i32*), align 4, !dbg !3364
  %2 = lshr i32 %1, 22, !dbg !3365
  %3 = and i32 %2, 1, !dbg !3365
  ret i32 %3, !dbg !3366
}

; Function Attrs: noinline nounwind optsize
define dso_local i32 @hal_nvic_register_isr_handler(i32 noundef %0, void (i32)* noundef %1) local_unnamed_addr #0 !dbg !3367 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !3372, metadata !DIExpression()), !dbg !3375
  call void @llvm.dbg.value(metadata void (i32)* %1, metadata !3373, metadata !DIExpression()), !dbg !3375
  %3 = icmp ugt i32 %0, 95, !dbg !3376
  %4 = icmp eq void (i32)* %1, null
  %5 = or i1 %3, %4, !dbg !3376
  br i1 %5, label %10, label %6, !dbg !3376

6:                                                ; preds = %2
  %7 = tail call i32 @save_and_set_interrupt_mask() #12, !dbg !3378
  call void @llvm.dbg.value(metadata i32 %7, metadata !3374, metadata !DIExpression()), !dbg !3375
  tail call fastcc void @NVIC_ClearPendingIRQ(i32 noundef %0) #13, !dbg !3379
  %8 = getelementptr inbounds [96 x %struct.nvic_function_t], [96 x %struct.nvic_function_t]* @nvic_function_table, i32 0, i32 %0, i32 0, !dbg !3380
  store void (i32)* %1, void (i32)** %8, align 4, !dbg !3381
  %9 = getelementptr inbounds [96 x %struct.nvic_function_t], [96 x %struct.nvic_function_t]* @nvic_function_table, i32 0, i32 %0, i32 1, !dbg !3382
  store i32 0, i32* %9, align 4, !dbg !3383
  tail call void @restore_interrupt_mask(i32 noundef %7) #12, !dbg !3384
  br label %10, !dbg !3385

10:                                               ; preds = %2, %6
  %11 = phi i32 [ 0, %6 ], [ -2, %2 ], !dbg !3375
  ret i32 %11, !dbg !3386
}

; Function Attrs: noinline nounwind optsize
define dso_local i32 @hal_nvic_save_and_set_interrupt_mask(i32* nocapture noundef writeonly %0) local_unnamed_addr #0 !dbg !3387 {
  call void @llvm.dbg.value(metadata i32* %0, metadata !3391, metadata !DIExpression()), !dbg !3392
  %2 = tail call i32 @save_and_set_interrupt_mask() #12, !dbg !3393
  store i32 %2, i32* %0, align 4, !dbg !3394
  ret i32 0, !dbg !3395
}

; Function Attrs: noinline nounwind optsize
define dso_local i32 @hal_nvic_restore_interrupt_mask(i32 noundef %0) local_unnamed_addr #0 !dbg !3396 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !3400, metadata !DIExpression()), !dbg !3401
  tail call void @restore_interrupt_mask(i32 noundef %0) #12, !dbg !3402
  ret i32 0, !dbg !3403
}

; Function Attrs: noinline nounwind optsize
define dso_local i32 @hal_pinmux_set_function(i32 noundef %0, i8 noundef zeroext %1) local_unnamed_addr #0 !dbg !3404 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !3410, metadata !DIExpression()), !dbg !3413
  call void @llvm.dbg.value(metadata i8 %1, metadata !3411, metadata !DIExpression()), !dbg !3413
  %3 = icmp ugt i32 %0, 60, !dbg !3414
  br i1 %3, label %11, label %4, !dbg !3416

4:                                                ; preds = %2
  %5 = icmp ugt i8 %1, 15, !dbg !3417
  br i1 %5, label %11, label %6, !dbg !3419

6:                                                ; preds = %4
  %7 = zext i8 %1 to i32, !dbg !3420
  %8 = tail call i32 @pinmux_config(i32 noundef %0, i32 noundef %7) #12, !dbg !3421
  call void @llvm.dbg.value(metadata i32 %8, metadata !3412, metadata !DIExpression()), !dbg !3413
  %9 = icmp slt i32 %8, 0, !dbg !3422
  %10 = select i1 %9, i32 -3, i32 0, !dbg !3422
  br label %11, !dbg !3423

11:                                               ; preds = %4, %2, %6
  %12 = phi i32 [ %10, %6 ], [ -2, %2 ], [ -1, %4 ], !dbg !3413
  ret i32 %12, !dbg !3424
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize readnone willreturn
define dso_local i32 @hal_gpio_init(i32 noundef %0) local_unnamed_addr #9 !dbg !3425 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !3430, metadata !DIExpression()), !dbg !3431
  ret i32 0, !dbg !3432
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize readnone willreturn
define dso_local i32 @hal_gpio_deinit(i32 noundef %0) local_unnamed_addr #9 !dbg !3433 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !3435, metadata !DIExpression()), !dbg !3436
  ret i32 0, !dbg !3437
}

; Function Attrs: noinline nounwind optsize
define dso_local i32 @hal_gpio_get_input(i32 noundef %0, i32* noundef writeonly %1) local_unnamed_addr #0 !dbg !3438 {
  %3 = alloca %struct.gpio_status, align 4
  call void @llvm.dbg.value(metadata i32 %0, metadata !3443, metadata !DIExpression()), !dbg !3453
  call void @llvm.dbg.value(metadata i32* %1, metadata !3444, metadata !DIExpression()), !dbg !3453
  %4 = icmp eq i32* %1, null, !dbg !3454
  br i1 %4, label %12, label %5, !dbg !3456

5:                                                ; preds = %2
  %6 = icmp ugt i32 %0, 60, !dbg !3457
  br i1 %6, label %12, label %7, !dbg !3459

7:                                                ; preds = %5
  %8 = bitcast %struct.gpio_status* %3 to i8*, !dbg !3460
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %8) #14, !dbg !3460
  call void @gpio_get_status(%struct.gpio_status* nonnull sret(%struct.gpio_status) align 4 %3, i32 noundef %0) #12, !dbg !3460
  %9 = getelementptr inbounds %struct.gpio_status, %struct.gpio_status* %3, i32 0, i32 2, !dbg !3460
  %10 = load i8, i8* %9, align 1, !dbg !3460
  call void @llvm.dbg.value(metadata i8 %10, metadata !3445, metadata !DIExpression(DW_OP_LLVM_fragment, 40, 8)), !dbg !3453
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %8) #14, !dbg !3460
  %11 = zext i8 %10 to i32, !dbg !3461
  store i32 %11, i32* %1, align 4, !dbg !3462
  br label %12, !dbg !3463

12:                                               ; preds = %5, %2, %7
  %13 = phi i32 [ 0, %7 ], [ -1, %2 ], [ -2, %5 ], !dbg !3453
  ret i32 %13, !dbg !3464
}

; Function Attrs: optsize
declare dso_local void @gpio_get_status(%struct.gpio_status* sret(%struct.gpio_status) align 4, i32 noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize
define dso_local i32 @hal_gpio_set_output(i32 noundef %0, i32 noundef %1) local_unnamed_addr #0 !dbg !3465 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !3469, metadata !DIExpression()), !dbg !3472
  call void @llvm.dbg.value(metadata i32 %1, metadata !3470, metadata !DIExpression()), !dbg !3472
  %3 = icmp ugt i32 %0, 60, !dbg !3473
  br i1 %3, label %9, label %4, !dbg !3475

4:                                                ; preds = %2
  %5 = trunc i32 %1 to i8, !dbg !3476
  %6 = tail call i32 @gpio_write(i32 noundef %0, i8 noundef zeroext %5) #12, !dbg !3477
  call void @llvm.dbg.value(metadata i32 %6, metadata !3471, metadata !DIExpression()), !dbg !3472
  %7 = icmp slt i32 %6, 0, !dbg !3478
  %8 = select i1 %7, i32 -3, i32 0, !dbg !3478
  br label %9, !dbg !3479

9:                                                ; preds = %2, %4
  %10 = phi i32 [ %8, %4 ], [ -2, %2 ], !dbg !3472
  ret i32 %10, !dbg !3480
}

; Function Attrs: optsize
declare dso_local i32 @gpio_write(i32 noundef, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize
define dso_local i32 @hal_gpio_get_output(i32 noundef %0, i32* noundef writeonly %1) local_unnamed_addr #0 !dbg !3481 {
  %3 = alloca %struct.gpio_status, align 4
  call void @llvm.dbg.value(metadata i32 %0, metadata !3483, metadata !DIExpression()), !dbg !3486
  call void @llvm.dbg.value(metadata i32* %1, metadata !3484, metadata !DIExpression()), !dbg !3486
  %4 = icmp ugt i32 %0, 60, !dbg !3487
  br i1 %4, label %12, label %5, !dbg !3489

5:                                                ; preds = %2
  %6 = icmp eq i32* %1, null, !dbg !3490
  br i1 %6, label %12, label %7, !dbg !3492

7:                                                ; preds = %5
  %8 = bitcast %struct.gpio_status* %3 to i8*, !dbg !3493
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %8) #14, !dbg !3493
  call void @gpio_get_status(%struct.gpio_status* nonnull sret(%struct.gpio_status) align 4 %3, i32 noundef %0) #12, !dbg !3493
  %9 = getelementptr inbounds %struct.gpio_status, %struct.gpio_status* %3, i32 0, i32 3, !dbg !3493
  %10 = load i8, i8* %9, align 2, !dbg !3493
  call void @llvm.dbg.value(metadata i8 %10, metadata !3485, metadata !DIExpression(DW_OP_LLVM_fragment, 48, 8)), !dbg !3486
  call void @llvm.dbg.value(metadata i8 undef, metadata !3485, metadata !DIExpression(DW_OP_LLVM_fragment, 56, 8)), !dbg !3486
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %8) #14, !dbg !3493
  %11 = zext i8 %10 to i32, !dbg !3494
  store i32 %11, i32* %1, align 4, !dbg !3495
  br label %12, !dbg !3496

12:                                               ; preds = %5, %2, %7
  %13 = phi i32 [ 0, %7 ], [ -2, %2 ], [ -1, %5 ], !dbg !3486
  ret i32 %13, !dbg !3497
}

; Function Attrs: noinline nounwind optsize
define dso_local i32 @hal_gpio_set_direction(i32 noundef %0, i32 noundef %1) local_unnamed_addr #0 !dbg !3498 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !3503, metadata !DIExpression()), !dbg !3506
  call void @llvm.dbg.value(metadata i32 %1, metadata !3504, metadata !DIExpression()), !dbg !3506
  %3 = icmp ugt i32 %0, 60, !dbg !3507
  br i1 %3, label %8, label %4, !dbg !3509

4:                                                ; preds = %2
  %5 = tail call i32 @gpio_direction(i32 noundef %0, i32 noundef %1) #12, !dbg !3510
  call void @llvm.dbg.value(metadata i32 %5, metadata !3505, metadata !DIExpression()), !dbg !3506
  %6 = icmp slt i32 %5, 0, !dbg !3511
  %7 = select i1 %6, i32 -3, i32 0, !dbg !3511
  br label %8, !dbg !3512

8:                                                ; preds = %2, %4
  %9 = phi i32 [ %7, %4 ], [ -2, %2 ], !dbg !3506
  ret i32 %9, !dbg !3513
}

; Function Attrs: optsize
declare dso_local i32 @gpio_direction(i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize
define dso_local i32 @hal_gpio_get_direction(i32 noundef %0, i32* noundef writeonly %1) local_unnamed_addr #0 !dbg !3514 {
  %3 = alloca %struct.gpio_status, align 4
  call void @llvm.dbg.value(metadata i32 %0, metadata !3519, metadata !DIExpression()), !dbg !3522
  call void @llvm.dbg.value(metadata i32* %1, metadata !3520, metadata !DIExpression()), !dbg !3522
  %4 = icmp ugt i32 %0, 60, !dbg !3523
  br i1 %4, label %13, label %5, !dbg !3525

5:                                                ; preds = %2
  %6 = icmp eq i32* %1, null, !dbg !3526
  br i1 %6, label %13, label %7, !dbg !3528

7:                                                ; preds = %5
  %8 = bitcast %struct.gpio_status* %3 to i8*, !dbg !3529
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %8) #14, !dbg !3529
  call void @gpio_get_status(%struct.gpio_status* nonnull sret(%struct.gpio_status) align 4 %3, i32 noundef %0) #12, !dbg !3529
  call void @llvm.dbg.value(metadata i32 undef, metadata !3521, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32)), !dbg !3522
  %9 = getelementptr inbounds %struct.gpio_status, %struct.gpio_status* %3, i32 0, i32 1, !dbg !3529
  %10 = load i8, i8* %9, align 4, !dbg !3529
  call void @llvm.dbg.value(metadata i8 %10, metadata !3521, metadata !DIExpression(DW_OP_LLVM_fragment, 32, 8)), !dbg !3522
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %8) #14, !dbg !3529
  %11 = icmp ne i8 %10, 0, !dbg !3530
  %12 = zext i1 %11 to i32, !dbg !3530
  store i32 %12, i32* %1, align 4, !dbg !3531
  br label %13, !dbg !3532

13:                                               ; preds = %5, %2, %7
  %14 = phi i32 [ 0, %7 ], [ -2, %2 ], [ -1, %5 ], !dbg !3522
  ret i32 %14, !dbg !3533
}

; Function Attrs: noinline nounwind optsize
define dso_local i32 @hal_gpio_toggle_pin(i32 noundef %0) local_unnamed_addr #0 !dbg !3534 {
  %2 = alloca %struct.gpio_status, align 4
  call void @llvm.dbg.value(metadata i32 %0, metadata !3536, metadata !DIExpression()), !dbg !3538
  %3 = icmp ugt i32 %0, 60, !dbg !3539
  br i1 %3, label %11, label %4, !dbg !3541

4:                                                ; preds = %1
  %5 = bitcast %struct.gpio_status* %2 to i8*, !dbg !3542
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %5) #14, !dbg !3542
  call void @gpio_get_status(%struct.gpio_status* nonnull sret(%struct.gpio_status) align 4 %2, i32 noundef %0) #12, !dbg !3542
  %6 = getelementptr inbounds %struct.gpio_status, %struct.gpio_status* %2, i32 0, i32 3, !dbg !3542
  %7 = load i8, i8* %6, align 2, !dbg !3542
  call void @llvm.dbg.value(metadata i8 %7, metadata !3537, metadata !DIExpression(DW_OP_LLVM_fragment, 48, 8)), !dbg !3538
  call void @llvm.dbg.value(metadata i8 undef, metadata !3537, metadata !DIExpression(DW_OP_LLVM_fragment, 56, 8)), !dbg !3538
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %5) #14, !dbg !3542
  %8 = xor i8 %7, 1, !dbg !3543
  %9 = zext i8 %8 to i32, !dbg !3543
  %10 = call i32 @hal_gpio_set_output(i32 noundef %0, i32 noundef %9) #13, !dbg !3544
  br label %11, !dbg !3545

11:                                               ; preds = %1, %4
  %12 = phi i32 [ %10, %4 ], [ -2, %1 ], !dbg !3538
  ret i32 %12, !dbg !3546
}

; Function Attrs: noinline nounwind optsize
define dso_local i32 @hal_gpio_pull_up(i32 noundef %0) local_unnamed_addr #0 !dbg !3547 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !3549, metadata !DIExpression()), !dbg !3551
  %2 = icmp ugt i32 %0, 60, !dbg !3552
  br i1 %2, label %10, label %3, !dbg !3554

3:                                                ; preds = %1
  %4 = tail call i32 @gpio_PullDisable(i32 noundef %0) #12, !dbg !3555
  call void @llvm.dbg.value(metadata i32 %4, metadata !3550, metadata !DIExpression()), !dbg !3551
  %5 = icmp slt i32 %4, 0, !dbg !3556
  br i1 %5, label %10, label %6, !dbg !3558

6:                                                ; preds = %3
  %7 = tail call i32 @gpio_PullUp(i32 noundef %0) #12, !dbg !3559
  call void @llvm.dbg.value(metadata i32 %7, metadata !3550, metadata !DIExpression()), !dbg !3551
  %8 = icmp slt i32 %7, 0, !dbg !3560
  %9 = select i1 %8, i32 -3, i32 0, !dbg !3560
  br label %10, !dbg !3561

10:                                               ; preds = %3, %1, %6
  %11 = phi i32 [ %9, %6 ], [ -2, %1 ], [ -3, %3 ], !dbg !3551
  ret i32 %11, !dbg !3562
}

; Function Attrs: optsize
declare dso_local i32 @gpio_PullDisable(i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare dso_local i32 @gpio_PullUp(i32 noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize
define dso_local i32 @hal_gpio_pull_down(i32 noundef %0) local_unnamed_addr #0 !dbg !3563 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !3565, metadata !DIExpression()), !dbg !3567
  %2 = icmp ugt i32 %0, 60, !dbg !3568
  br i1 %2, label %10, label %3, !dbg !3570

3:                                                ; preds = %1
  %4 = tail call i32 @gpio_PullDisable(i32 noundef %0) #12, !dbg !3571
  call void @llvm.dbg.value(metadata i32 %4, metadata !3566, metadata !DIExpression()), !dbg !3567
  %5 = icmp slt i32 %4, 0, !dbg !3572
  br i1 %5, label %10, label %6, !dbg !3574

6:                                                ; preds = %3
  %7 = tail call i32 @gpio_PullDown(i32 noundef %0) #12, !dbg !3575
  call void @llvm.dbg.value(metadata i32 %7, metadata !3566, metadata !DIExpression()), !dbg !3567
  %8 = icmp slt i32 %7, 0, !dbg !3576
  %9 = select i1 %8, i32 -3, i32 0, !dbg !3576
  br label %10, !dbg !3577

10:                                               ; preds = %3, %1, %6
  %11 = phi i32 [ %9, %6 ], [ -2, %1 ], [ -3, %3 ], !dbg !3567
  ret i32 %11, !dbg !3578
}

; Function Attrs: optsize
declare dso_local i32 @gpio_PullDown(i32 noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize
define dso_local i32 @hal_gpio_disable_pull(i32 noundef %0) local_unnamed_addr #0 !dbg !3579 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !3581, metadata !DIExpression()), !dbg !3583
  %2 = icmp ugt i32 %0, 60, !dbg !3584
  br i1 %2, label %7, label %3, !dbg !3586

3:                                                ; preds = %1
  %4 = tail call i32 @gpio_PullDisable(i32 noundef %0) #12, !dbg !3587
  call void @llvm.dbg.value(metadata i32 %4, metadata !3582, metadata !DIExpression()), !dbg !3583
  %5 = icmp slt i32 %4, 0, !dbg !3588
  %6 = select i1 %5, i32 -3, i32 0, !dbg !3588
  br label %7, !dbg !3589

7:                                                ; preds = %1, %3
  %8 = phi i32 [ %6, %3 ], [ -2, %1 ], !dbg !3583
  ret i32 %8, !dbg !3590
}

; Function Attrs: noinline nounwind optsize
define dso_local i32 @hal_gpio_set_driving_current(i32 noundef %0, i32 noundef %1) local_unnamed_addr #0 !dbg !3591 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !3595, metadata !DIExpression()), !dbg !3598
  call void @llvm.dbg.value(metadata i32 %1, metadata !3596, metadata !DIExpression()), !dbg !3598
  %3 = icmp ugt i32 %0, 60, !dbg !3599
  br i1 %3, label %9, label %4, !dbg !3601

4:                                                ; preds = %2
  %5 = trunc i32 %1 to i8, !dbg !3602
  %6 = tail call i32 @gpio_SetDriving(i32 noundef %0, i8 noundef zeroext %5) #12, !dbg !3603
  call void @llvm.dbg.value(metadata i32 %6, metadata !3597, metadata !DIExpression()), !dbg !3598
  %7 = icmp slt i32 %6, 0, !dbg !3604
  %8 = select i1 %7, i32 -3, i32 0, !dbg !3604
  br label %9, !dbg !3605

9:                                                ; preds = %2, %4
  %10 = phi i32 [ %8, %4 ], [ -2, %2 ], !dbg !3598
  ret i32 %10, !dbg !3606
}

; Function Attrs: optsize
declare dso_local i32 @gpio_SetDriving(i32 noundef, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize
define dso_local i32 @hal_gpio_get_driving_current(i32 noundef %0, i32* nocapture noundef writeonly %1) local_unnamed_addr #0 !dbg !3607 {
  %3 = alloca i8, align 1
  call void @llvm.dbg.value(metadata i32 %0, metadata !3612, metadata !DIExpression()), !dbg !3616
  call void @llvm.dbg.value(metadata i32* %1, metadata !3613, metadata !DIExpression()), !dbg !3616
  call void @llvm.lifetime.start.p0i8(i64 1, i8* nonnull %3) #14, !dbg !3617
  %4 = icmp ugt i32 %0, 60, !dbg !3618
  br i1 %4, label %11, label %5, !dbg !3620

5:                                                ; preds = %2
  call void @llvm.dbg.value(metadata i8* %3, metadata !3615, metadata !DIExpression(DW_OP_deref)), !dbg !3616
  %6 = call i32 @gpio_GetDriving(i32 noundef %0, i8* noundef nonnull %3) #12, !dbg !3621
  call void @llvm.dbg.value(metadata i32 %6, metadata !3614, metadata !DIExpression()), !dbg !3616
  %7 = load i8, i8* %3, align 1, !dbg !3622
  call void @llvm.dbg.value(metadata i8 %7, metadata !3615, metadata !DIExpression()), !dbg !3616
  %8 = zext i8 %7 to i32, !dbg !3623
  store i32 %8, i32* %1, align 4, !dbg !3624
  %9 = icmp slt i32 %6, 0, !dbg !3625
  %10 = select i1 %9, i32 -3, i32 0, !dbg !3625
  br label %11, !dbg !3626

11:                                               ; preds = %2, %5
  %12 = phi i32 [ %10, %5 ], [ -2, %2 ], !dbg !3616
  call void @llvm.lifetime.end.p0i8(i64 1, i8* nonnull %3) #14, !dbg !3627
  ret i32 %12, !dbg !3627
}

; Function Attrs: optsize
declare dso_local i32 @gpio_GetDriving(i32 noundef, i8* noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize
define dso_local i32 @hal_gpt_init(i32 noundef %0) local_unnamed_addr #0 !dbg !3628 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !3632, metadata !DIExpression()), !dbg !3633
  %2 = getelementptr inbounds [5 x %struct.hal_gpt_context_t], [5 x %struct.hal_gpt_context_t]* @g_gpt_context, i32 0, i32 %0, !dbg !3634
  %3 = getelementptr inbounds [5 x %struct.hal_gpt_context_t], [5 x %struct.hal_gpt_context_t]* @g_gpt_context, i32 0, i32 %0, i32 2, !dbg !3636
  %4 = load i8, i8* %3, align 4, !dbg !3636, !range !3637
  %5 = icmp eq i8 %4, 0, !dbg !3636
  br i1 %5, label %6, label %12, !dbg !3638

6:                                                ; preds = %1
  %7 = tail call fastcc zeroext i1 @hal_gpt_is_port_valid(i32 noundef %0) #13, !dbg !3639
  br i1 %7, label %9, label %8, !dbg !3641

8:                                                ; preds = %6
  tail call void (i8*, i32, i8*, ...) @log_hal_error_internal(i8* noundef getelementptr inbounds ([13 x i8], [13 x i8]* @__FUNCTION__.hal_gpt_init, i32 0, i32 0), i32 noundef 89, i8* noundef getelementptr inbounds ([18 x i8], [18 x i8]* @.str.16, i32 0, i32 0), i32 noundef %0) #12, !dbg !3642
  br label %12, !dbg !3644

9:                                                ; preds = %6
  %10 = bitcast %struct.hal_gpt_context_t* %2 to i8*, !dbg !3645
  %11 = tail call i8* @memset(i8* noundef nonnull %10, i32 noundef 0, i32 noundef 16) #12, !dbg !3646
  store i8 1, i8* %3, align 4, !dbg !3647
  br label %12, !dbg !3648

12:                                               ; preds = %1, %9, %8
  %13 = phi i32 [ -2, %8 ], [ 0, %9 ], [ -3, %1 ], !dbg !3633
  ret i32 %13, !dbg !3649
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize readnone willreturn
define internal fastcc zeroext i1 @hal_gpt_is_port_valid(i32 noundef %0) unnamed_addr #9 !dbg !3650 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !3654, metadata !DIExpression()), !dbg !3655
  %2 = icmp ult i32 %0, 5, !dbg !3656
  %3 = icmp ne i32 %0, 2
  %4 = and i1 %2, %3, !dbg !3658
  ret i1 %4, !dbg !3659
}

; Function Attrs: optsize
declare dso_local i8* @memset(i8* noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize
define dso_local i32 @hal_gpt_deinit(i32 noundef %0) local_unnamed_addr #0 !dbg !3660 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !3662, metadata !DIExpression()), !dbg !3663
  %2 = tail call fastcc zeroext i1 @hal_gpt_is_port_valid(i32 noundef %0) #13, !dbg !3664
  br i1 %2, label %4, label %3, !dbg !3666

3:                                                ; preds = %1
  tail call void (i8*, i32, i8*, ...) @log_hal_error_internal(i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @__FUNCTION__.hal_gpt_deinit, i32 0, i32 0), i32 noundef 104, i8* noundef getelementptr inbounds ([18 x i8], [18 x i8]* @.str.16, i32 0, i32 0), i32 noundef %0) #12, !dbg !3667
  br label %14, !dbg !3669

4:                                                ; preds = %1
  %5 = getelementptr inbounds [5 x %struct.hal_gpt_context_t], [5 x %struct.hal_gpt_context_t]* @g_gpt_context, i32 0, i32 %0, !dbg !3670
  %6 = getelementptr inbounds %struct.hal_gpt_context_t, %struct.hal_gpt_context_t* %5, i32 0, i32 0, !dbg !3672
  %7 = load i32, i32* %6, align 4, !dbg !3672
  %8 = icmp eq i32 %7, 0, !dbg !3673
  br i1 %8, label %10, label %9, !dbg !3674

9:                                                ; preds = %4
  tail call void (i8*, i32, i8*, ...) @log_hal_error_internal(i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @__FUNCTION__.hal_gpt_deinit, i32 0, i32 0), i32 noundef 109, i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1.17, i32 0, i32 0), i32 noundef %0) #12, !dbg !3675
  br label %14, !dbg !3677

10:                                               ; preds = %4
  %11 = bitcast %struct.hal_gpt_context_t* %5 to i8*, !dbg !3678
  %12 = tail call i8* @memset(i8* noundef nonnull %11, i32 noundef 0, i32 noundef 16) #12, !dbg !3679
  %13 = getelementptr inbounds [5 x %struct.hal_gpt_context_t], [5 x %struct.hal_gpt_context_t]* @g_gpt_context, i32 0, i32 %0, i32 2, !dbg !3680
  store i8 0, i8* %13, align 4, !dbg !3681
  br label %14, !dbg !3682

14:                                               ; preds = %10, %9, %3
  %15 = phi i32 [ -2, %3 ], [ -3, %9 ], [ 0, %10 ], !dbg !3663
  ret i32 %15, !dbg !3683
}

; Function Attrs: noinline nounwind optsize
define dso_local i32 @hal_gpt_get_free_run_count(i32 noundef %0, i32* nocapture noundef writeonly %1) local_unnamed_addr #0 !dbg !3684 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !3689, metadata !DIExpression()), !dbg !3691
  call void @llvm.dbg.value(metadata i32* %1, metadata !3690, metadata !DIExpression()), !dbg !3691
  switch i32 %0, label %24 [
    i32 0, label %3
    i32 1, label %9
    i32 2, label %18
  ], !dbg !3692

3:                                                ; preds = %2
  %4 = load i32, i32* getelementptr inbounds ([5 x %struct.hal_gpt_context_t], [5 x %struct.hal_gpt_context_t]* @g_gpt_context, i32 0, i32 2, i32 0), align 4, !dbg !3693
  %5 = icmp eq i32 %4, 1, !dbg !3697
  br i1 %5, label %7, label %6, !dbg !3698

6:                                                ; preds = %3
  tail call void @CM4_GPT2Init() #12, !dbg !3699
  br label %7, !dbg !3701

7:                                                ; preds = %6, %3
  %8 = tail call i32 @get_current_count() #12, !dbg !3702
  store i32 %8, i32* %1, align 4, !dbg !3703
  store i32 1, i32* getelementptr inbounds ([5 x %struct.hal_gpt_context_t], [5 x %struct.hal_gpt_context_t]* @g_gpt_context, i32 0, i32 2, i32 0), align 4, !dbg !3704
  br label %25, !dbg !3705

9:                                                ; preds = %2
  %10 = load i32, i32* getelementptr inbounds ([5 x %struct.hal_gpt_context_t], [5 x %struct.hal_gpt_context_t]* @g_gpt_context, i32 0, i32 4, i32 0), align 4, !dbg !3706
  %11 = icmp eq i32 %10, 1, !dbg !3710
  br i1 %11, label %13, label %12, !dbg !3711

12:                                               ; preds = %9
  tail call void @CM4_GPT4Init() #12, !dbg !3712
  br label %13, !dbg !3714

13:                                               ; preds = %12, %9
  %14 = tail call i32 @get_current_gpt4_count() #12, !dbg !3715
  %15 = tail call i32 @top_mcu_freq_get() #12, !dbg !3716
  %16 = udiv i32 %15, 1000000, !dbg !3717
  %17 = udiv i32 %14, %16, !dbg !3718
  store i32 %17, i32* %1, align 4, !dbg !3719
  store i32 1, i32* getelementptr inbounds ([5 x %struct.hal_gpt_context_t], [5 x %struct.hal_gpt_context_t]* @g_gpt_context, i32 0, i32 4, i32 0), align 4, !dbg !3720
  br label %25, !dbg !3721

18:                                               ; preds = %2
  %19 = load i32, i32* getelementptr inbounds ([5 x %struct.hal_gpt_context_t], [5 x %struct.hal_gpt_context_t]* @g_gpt_context, i32 0, i32 4, i32 0), align 4, !dbg !3722
  %20 = icmp eq i32 %19, 1, !dbg !3726
  br i1 %20, label %22, label %21, !dbg !3727

21:                                               ; preds = %18
  tail call void @CM4_GPT4Init() #12, !dbg !3728
  br label %22, !dbg !3730

22:                                               ; preds = %21, %18
  %23 = tail call i32 @get_current_gpt4_count() #12, !dbg !3731
  store i32 %23, i32* %1, align 4, !dbg !3732
  store i32 1, i32* getelementptr inbounds ([5 x %struct.hal_gpt_context_t], [5 x %struct.hal_gpt_context_t]* @g_gpt_context, i32 0, i32 4, i32 0), align 4, !dbg !3733
  br label %25

24:                                               ; preds = %2
  tail call void (i8*, i32, i8*, ...) @log_hal_error_internal(i8* noundef getelementptr inbounds ([27 x i8], [27 x i8]* @__FUNCTION__.hal_gpt_get_free_run_count, i32 0, i32 0), i32 noundef 141, i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str.2, i32 0, i32 0), i32 noundef %0) #12, !dbg !3734
  br label %25, !dbg !3736

25:                                               ; preds = %7, %22, %13, %24
  %26 = phi i32 [ -1, %24 ], [ 0, %13 ], [ 0, %22 ], [ 0, %7 ], !dbg !3691
  ret i32 %26, !dbg !3737
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn writeonly
define dso_local i32 @hal_gpt_get_duration_count(i32 noundef %0, i32 noundef %1, i32* noundef writeonly %2) local_unnamed_addr #10 !dbg !3738 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !3742, metadata !DIExpression()), !dbg !3745
  call void @llvm.dbg.value(metadata i32 %1, metadata !3743, metadata !DIExpression()), !dbg !3745
  call void @llvm.dbg.value(metadata i32* %2, metadata !3744, metadata !DIExpression()), !dbg !3745
  %4 = icmp eq i32* %2, null, !dbg !3746
  br i1 %4, label %7, label %5, !dbg !3748

5:                                                ; preds = %3
  %6 = sub i32 %1, %0, !dbg !3749
  store i32 %6, i32* %2, align 4, !dbg !3749
  br label %7, !dbg !3751

7:                                                ; preds = %3, %5
  %8 = phi i32 [ 0, %5 ], [ -1, %3 ], !dbg !3745
  ret i32 %8, !dbg !3752
}

; Function Attrs: noinline nounwind optsize
define dso_local i32 @hal_gpt_get_running_status(i32 noundef %0, i32* nocapture noundef writeonly %1) local_unnamed_addr #0 !dbg !3753 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !3758, metadata !DIExpression()), !dbg !3760
  call void @llvm.dbg.value(metadata i32* %1, metadata !3759, metadata !DIExpression()), !dbg !3760
  %3 = icmp ugt i32 %0, 4, !dbg !3761
  br i1 %3, label %4, label %5, !dbg !3763

4:                                                ; preds = %2
  tail call void (i8*, i32, i8*, ...) @log_hal_error_internal(i8* noundef getelementptr inbounds ([27 x i8], [27 x i8]* @__FUNCTION__.hal_gpt_get_running_status, i32 0, i32 0), i32 noundef 167, i8* noundef getelementptr inbounds ([45 x i8], [45 x i8]* @.str.3, i32 0, i32 0), i32 noundef %0) #12, !dbg !3764
  br label %8, !dbg !3766

5:                                                ; preds = %2
  %6 = getelementptr inbounds [5 x %struct.hal_gpt_context_t], [5 x %struct.hal_gpt_context_t]* @g_gpt_context, i32 0, i32 %0, i32 0, !dbg !3767
  %7 = load i32, i32* %6, align 4, !dbg !3767
  store i32 %7, i32* %1, align 4, !dbg !3768
  br label %8, !dbg !3769

8:                                                ; preds = %5, %4
  %9 = phi i32 [ -2, %4 ], [ 0, %5 ], !dbg !3760
  ret i32 %9, !dbg !3770
}

; Function Attrs: noinline nounwind optsize
define dso_local i32 @hal_gpt_register_callback(i32 noundef %0, void (i8*)* noundef %1, i8* noundef %2) local_unnamed_addr #0 !dbg !3771 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !3775, metadata !DIExpression()), !dbg !3778
  call void @llvm.dbg.value(metadata void (i8*)* %1, metadata !3776, metadata !DIExpression()), !dbg !3778
  call void @llvm.dbg.value(metadata i8* %2, metadata !3777, metadata !DIExpression()), !dbg !3778
  %4 = tail call fastcc zeroext i1 @hal_gpt_is_port_valid(i32 noundef %0) #13, !dbg !3779
  br i1 %4, label %6, label %5, !dbg !3781

5:                                                ; preds = %3
  tail call void (i8*, i32, i8*, ...) @log_hal_error_internal(i8* noundef getelementptr inbounds ([26 x i8], [26 x i8]* @__FUNCTION__.hal_gpt_register_callback, i32 0, i32 0), i32 noundef 179, i8* noundef getelementptr inbounds ([51 x i8], [51 x i8]* @.str.4, i32 0, i32 0), i32 noundef %0) #12, !dbg !3782
  br label %15, !dbg !3784

6:                                                ; preds = %3
  %7 = getelementptr inbounds [5 x %struct.hal_gpt_context_t], [5 x %struct.hal_gpt_context_t]* @g_gpt_context, i32 0, i32 %0, i32 2, !dbg !3785
  %8 = load i8, i8* %7, align 4, !dbg !3785, !range !3637
  %9 = icmp eq i8 %8, 1, !dbg !3787
  br i1 %9, label %10, label %15, !dbg !3788

10:                                               ; preds = %6
  %11 = icmp eq void (i8*)* %1, null, !dbg !3789
  br i1 %11, label %15, label %12, !dbg !3791

12:                                               ; preds = %10
  %13 = getelementptr inbounds [5 x %struct.hal_gpt_context_t], [5 x %struct.hal_gpt_context_t]* @g_gpt_context, i32 0, i32 %0, i32 1, i32 0, !dbg !3792
  store void (i8*)* %1, void (i8*)** %13, align 4, !dbg !3793
  %14 = getelementptr inbounds [5 x %struct.hal_gpt_context_t], [5 x %struct.hal_gpt_context_t]* @g_gpt_context, i32 0, i32 %0, i32 1, i32 1, !dbg !3794
  store i8* %2, i8** %14, align 4, !dbg !3795
  br label %15, !dbg !3796

15:                                               ; preds = %10, %6, %12, %5
  %16 = phi i32 [ -2, %5 ], [ 0, %12 ], [ -3, %6 ], [ -1, %10 ], !dbg !3778
  ret i32 %16, !dbg !3797
}

; Function Attrs: noinline nounwind optsize
define dso_local i32 @hal_gpt_start_timer_ms(i32 noundef %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #0 !dbg !3798 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !3803, metadata !DIExpression()), !dbg !3806
  call void @llvm.dbg.value(metadata i32 %1, metadata !3804, metadata !DIExpression()), !dbg !3806
  call void @llvm.dbg.value(metadata i32 %2, metadata !3805, metadata !DIExpression()), !dbg !3806
  %4 = tail call fastcc zeroext i1 @hal_gpt_is_port_valid(i32 noundef %0) #13, !dbg !3807
  br i1 %4, label %6, label %5, !dbg !3809

5:                                                ; preds = %3
  tail call void (i8*, i32, i8*, ...) @log_hal_error_internal(i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @__FUNCTION__.hal_gpt_start_timer_ms, i32 0, i32 0), i32 noundef 221, i8* noundef getelementptr inbounds ([51 x i8], [51 x i8]* @.str.4, i32 0, i32 0), i32 noundef %0) #12, !dbg !3810
  br label %17, !dbg !3812

6:                                                ; preds = %3
  %7 = getelementptr inbounds [5 x %struct.hal_gpt_context_t], [5 x %struct.hal_gpt_context_t]* @g_gpt_context, i32 0, i32 %0, i32 2, !dbg !3813
  %8 = load i8, i8* %7, align 4, !dbg !3813, !range !3637
  %9 = icmp eq i8 %8, 1, !dbg !3815
  br i1 %9, label %10, label %17, !dbg !3816

10:                                               ; preds = %6
  %11 = icmp ugt i32 %1, 130150523, !dbg !3817
  br i1 %11, label %17, label %12, !dbg !3819

12:                                               ; preds = %10
  %13 = tail call fastcc i32 @hal_gpt_translate_timeout_time(i32 noundef %1) #13, !dbg !3820
  %14 = tail call fastcc zeroext i1 @hal_gpt_translate_type(i32 noundef %2) #13, !dbg !3821
  %15 = tail call fastcc void ()* @hal_gpt_map_callback(i32 noundef %0) #13, !dbg !3822
  tail call void @drvTMR_init(i32 noundef %0, i32 noundef %13, i1 noundef zeroext %14, void ()* noundef nonnull %15) #12, !dbg !3823
  tail call void @TMR_Start(i32 noundef %0) #12, !dbg !3824
  %16 = getelementptr inbounds [5 x %struct.hal_gpt_context_t], [5 x %struct.hal_gpt_context_t]* @g_gpt_context, i32 0, i32 %0, i32 0, !dbg !3825
  store i32 1, i32* %16, align 4, !dbg !3826
  br label %17, !dbg !3827

17:                                               ; preds = %10, %6, %12, %5
  %18 = phi i32 [ -2, %5 ], [ 0, %12 ], [ -3, %6 ], [ -1, %10 ], !dbg !3806
  ret i32 %18, !dbg !3828
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize readnone willreturn
define internal fastcc i32 @hal_gpt_translate_timeout_time(i32 noundef %0) unnamed_addr #9 !dbg !3829 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !3833, metadata !DIExpression()), !dbg !3834
  %2 = shl i32 %0, 5, !dbg !3835
  %3 = mul i32 %0, 7, !dbg !3836
  %4 = udiv i32 %3, 10, !dbg !3837
  %5 = add i32 %4, %2, !dbg !3838
  %6 = mul i32 %0, 6, !dbg !3839
  %7 = udiv i32 %6, 100, !dbg !3840
  %8 = add i32 %5, %7, !dbg !3841
  %9 = shl i32 %0, 3, !dbg !3842
  %10 = udiv i32 %9, 1000, !dbg !3843
  %11 = add i32 %8, %10, !dbg !3844
  ret i32 %11, !dbg !3845
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize readnone willreturn
define internal fastcc zeroext i1 @hal_gpt_translate_type(i32 noundef %0) unnamed_addr #9 !dbg !3846 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !3850, metadata !DIExpression()), !dbg !3851
  %2 = icmp eq i32 %0, 1, !dbg !3852
  ret i1 %2, !dbg !3853
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize readnone willreturn
define internal fastcc nonnull void ()* @hal_gpt_map_callback(i32 noundef %0) unnamed_addr #9 !dbg !3854 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !3859, metadata !DIExpression()), !dbg !3860
  %2 = icmp eq i32 %0, 0, !dbg !3861
  %3 = select i1 %2, void ()* @hal_gpt_callback0, void ()* @hal_gpt_callback1, !dbg !3862
  ret void ()* %3, !dbg !3863
}

; Function Attrs: noinline nounwind optsize
define internal void @hal_gpt_callback0() #0 !dbg !3864 {
  %1 = load void (i8*)*, void (i8*)** getelementptr inbounds ([5 x %struct.hal_gpt_context_t], [5 x %struct.hal_gpt_context_t]* @g_gpt_context, i32 0, i32 0, i32 1, i32 0), align 4, !dbg !3868
  %2 = icmp eq void (i8*)* %1, null, !dbg !3870
  br i1 %2, label %5, label %3, !dbg !3871

3:                                                ; preds = %0
  %4 = load i8*, i8** getelementptr inbounds ([5 x %struct.hal_gpt_context_t], [5 x %struct.hal_gpt_context_t]* @g_gpt_context, i32 0, i32 0, i32 1, i32 1), align 4, !dbg !3872
  tail call void %1(i8* noundef %4) #12, !dbg !3874
  br label %5, !dbg !3875

5:                                                ; preds = %3, %0
  store i32 0, i32* getelementptr inbounds ([5 x %struct.hal_gpt_context_t], [5 x %struct.hal_gpt_context_t]* @g_gpt_context, i32 0, i32 0, i32 0), align 4, !dbg !3876
  ret void, !dbg !3877
}

; Function Attrs: noinline nounwind optsize
define internal void @hal_gpt_callback1() #0 !dbg !3878 {
  %1 = load void (i8*)*, void (i8*)** getelementptr inbounds ([5 x %struct.hal_gpt_context_t], [5 x %struct.hal_gpt_context_t]* @g_gpt_context, i32 0, i32 1, i32 1, i32 0), align 4, !dbg !3881
  %2 = icmp eq void (i8*)* %1, null, !dbg !3883
  br i1 %2, label %5, label %3, !dbg !3884

3:                                                ; preds = %0
  %4 = load i8*, i8** getelementptr inbounds ([5 x %struct.hal_gpt_context_t], [5 x %struct.hal_gpt_context_t]* @g_gpt_context, i32 0, i32 1, i32 1, i32 1), align 4, !dbg !3885
  tail call void %1(i8* noundef %4) #12, !dbg !3887
  br label %5, !dbg !3888

5:                                                ; preds = %3, %0
  store i32 0, i32* getelementptr inbounds ([5 x %struct.hal_gpt_context_t], [5 x %struct.hal_gpt_context_t]* @g_gpt_context, i32 0, i32 1, i32 0), align 4, !dbg !3889
  ret void, !dbg !3890
}

; Function Attrs: noinline nounwind optsize
define dso_local i32 @hal_gpt_stop_timer(i32 noundef %0) local_unnamed_addr #0 !dbg !3891 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !3893, metadata !DIExpression()), !dbg !3894
  %2 = tail call fastcc zeroext i1 @hal_gpt_is_port_valid(i32 noundef %0) #13, !dbg !3895
  br i1 %2, label %4, label %3, !dbg !3897

3:                                                ; preds = %1
  tail call void (i8*, i32, i8*, ...) @log_hal_error_internal(i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @__FUNCTION__.hal_gpt_stop_timer, i32 0, i32 0), i32 noundef 245, i8* noundef getelementptr inbounds ([51 x i8], [51 x i8]* @.str.4, i32 0, i32 0), i32 noundef %0) #12, !dbg !3898
  br label %6, !dbg !3900

4:                                                ; preds = %1
  tail call void @TMR_Stop(i32 noundef %0) #12, !dbg !3901
  %5 = getelementptr inbounds [5 x %struct.hal_gpt_context_t], [5 x %struct.hal_gpt_context_t]* @g_gpt_context, i32 0, i32 %0, i32 0, !dbg !3902
  store i32 0, i32* %5, align 4, !dbg !3903
  br label %6, !dbg !3904

6:                                                ; preds = %4, %3
  %7 = phi i32 [ -2, %3 ], [ 0, %4 ], !dbg !3894
  ret i32 %7, !dbg !3905
}

; Function Attrs: noinline nounwind optsize
define dso_local i32 @hal_gpt_delay_ms(i32 noundef %0) local_unnamed_addr #0 !dbg !3906 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !3910, metadata !DIExpression()), !dbg !3911
  %2 = load i32, i32* getelementptr inbounds ([5 x %struct.hal_gpt_context_t], [5 x %struct.hal_gpt_context_t]* @g_gpt_context, i32 0, i32 2, i32 0), align 4, !dbg !3912
  %3 = icmp eq i32 %2, 1, !dbg !3914
  br i1 %3, label %5, label %4, !dbg !3915

4:                                                ; preds = %1
  tail call void @CM4_GPT2Init() #12, !dbg !3916
  br label %5, !dbg !3918

5:                                                ; preds = %4, %1
  tail call void @delay_ms(i32 noundef %0) #12, !dbg !3919
  store i32 1, i32* getelementptr inbounds ([5 x %struct.hal_gpt_context_t], [5 x %struct.hal_gpt_context_t]* @g_gpt_context, i32 0, i32 2, i32 0), align 4, !dbg !3920
  ret i32 0, !dbg !3921
}

; Function Attrs: noinline nounwind optsize
define dso_local i32 @hal_gpt_delay_us(i32 noundef %0) local_unnamed_addr #0 !dbg !3922 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !3924, metadata !DIExpression()), !dbg !3925
  %2 = load i32, i32* getelementptr inbounds ([5 x %struct.hal_gpt_context_t], [5 x %struct.hal_gpt_context_t]* @g_gpt_context, i32 0, i32 4, i32 0), align 4, !dbg !3926
  %3 = icmp eq i32 %2, 1, !dbg !3928
  br i1 %3, label %5, label %4, !dbg !3929

4:                                                ; preds = %1
  tail call void @CM4_GPT4Init() #12, !dbg !3930
  br label %5, !dbg !3932

5:                                                ; preds = %4, %1
  tail call void @delay_us(i32 noundef %0) #12, !dbg !3933
  store i32 1, i32* getelementptr inbounds ([5 x %struct.hal_gpt_context_t], [5 x %struct.hal_gpt_context_t]* @g_gpt_context, i32 0, i32 4, i32 0), align 4, !dbg !3934
  ret i32 0, !dbg !3935
}

; Function Attrs: noinline nounwind optsize
define dso_local i32 @hal_uart_init(i32 noundef %0, %struct.hal_uart_config_t* noundef %1) local_unnamed_addr #0 !dbg !3936 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !3942, metadata !DIExpression()), !dbg !3944
  call void @llvm.dbg.value(metadata %struct.hal_uart_config_t* %1, metadata !3943, metadata !DIExpression()), !dbg !3944
  %3 = tail call fastcc zeroext i1 @hal_uart_is_config_valid(i32 noundef %0, %struct.hal_uart_config_t* noundef %1) #13, !dbg !3945
  br i1 %3, label %4, label %18, !dbg !3947

4:                                                ; preds = %2
  %5 = getelementptr inbounds [2 x %struct.uart_context_t], [2 x %struct.uart_context_t]* @g_uart_context_table, i32 0, i32 %0, i32 0, !dbg !3948
  %6 = load i8, i8* %5, align 4, !dbg !3948, !range !3637
  %7 = icmp eq i8 %6, 0, !dbg !3948
  br i1 %7, label %8, label %18, !dbg !3950

8:                                                ; preds = %4
  %9 = tail call i8* @memset(i8* noundef nonnull %5, i32 noundef 0, i32 noundef 64) #12, !dbg !3951
  %10 = getelementptr inbounds [2 x %struct.uart_context_t], [2 x %struct.uart_context_t]* @g_uart_context_table, i32 0, i32 %0, i32 1, !dbg !3952
  %11 = bitcast %struct.hal_uart_config_t* %10 to i8*, !dbg !3953
  %12 = bitcast %struct.hal_uart_config_t* %1 to i8*, !dbg !3954
  %13 = tail call i8* @memcpy(i8* noundef nonnull %11, i8* noundef %12, i32 noundef 16) #12, !dbg !3955
  store i8 1, i8* %5, align 4, !dbg !3956
  %14 = tail call fastcc i32 @hal_uart_translate_port(i32 noundef %0) #13, !dbg !3957, !range !3958
  tail call void @uart_reset_default_value(i32 noundef %14) #12, !dbg !3959
  tail call void @halUART_HWInit(i32 noundef %14) #12, !dbg !3960
  %15 = tail call i32 @hal_uart_set_format(i32 noundef %0, %struct.hal_uart_config_t* noundef %1) #13, !dbg !3961
  %16 = icmp eq i32 %15, 0, !dbg !3963
  %17 = select i1 %16, i32 0, i32 -4, !dbg !3944
  br label %18, !dbg !3944

18:                                               ; preds = %8, %4, %2
  %19 = phi i32 [ -4, %2 ], [ -3, %4 ], [ %17, %8 ], !dbg !3944
  ret i32 %19, !dbg !3964
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize readonly willreturn
define internal fastcc zeroext i1 @hal_uart_is_config_valid(i32 noundef %0, %struct.hal_uart_config_t* noundef readonly %1) unnamed_addr #5 !dbg !3965 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !3971, metadata !DIExpression()), !dbg !3973
  call void @llvm.dbg.value(metadata %struct.hal_uart_config_t* %1, metadata !3972, metadata !DIExpression()), !dbg !3973
  %3 = tail call fastcc zeroext i1 @hal_uart_is_port_valid(i32 noundef %0) #13, !dbg !3974
  %4 = icmp ne %struct.hal_uart_config_t* %1, null
  %5 = and i1 %4, %3, !dbg !3976
  br i1 %5, label %6, label %22, !dbg !3976

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.hal_uart_config_t, %struct.hal_uart_config_t* %1, i32 0, i32 0, !dbg !3977
  %8 = load i32, i32* %7, align 4, !dbg !3977
  %9 = icmp ugt i32 %8, 12, !dbg !3979
  br i1 %9, label %22, label %10, !dbg !3980

10:                                               ; preds = %6
  %11 = getelementptr inbounds %struct.hal_uart_config_t, %struct.hal_uart_config_t* %1, i32 0, i32 3, !dbg !3981
  %12 = load i32, i32* %11, align 4, !dbg !3981
  %13 = icmp ugt i32 %12, 2, !dbg !3982
  br i1 %13, label %22, label %14, !dbg !3983

14:                                               ; preds = %10
  %15 = getelementptr inbounds %struct.hal_uart_config_t, %struct.hal_uart_config_t* %1, i32 0, i32 2, !dbg !3984
  %16 = load i32, i32* %15, align 4, !dbg !3984
  %17 = icmp ugt i32 %16, 1, !dbg !3985
  br i1 %17, label %22, label %18, !dbg !3986

18:                                               ; preds = %14
  %19 = getelementptr inbounds %struct.hal_uart_config_t, %struct.hal_uart_config_t* %1, i32 0, i32 1, !dbg !3987
  %20 = load i32, i32* %19, align 4, !dbg !3987
  %21 = icmp ult i32 %20, 4, !dbg !3988
  br label %22, !dbg !3989

22:                                               ; preds = %18, %6, %10, %14, %2
  %23 = phi i1 [ false, %2 ], [ false, %14 ], [ false, %10 ], [ false, %6 ], [ %21, %18 ], !dbg !3973
  ret i1 %23, !dbg !3990
}

; Function Attrs: optsize
declare dso_local i8* @memcpy(i8* noundef, i8* noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize readnone willreturn
define internal fastcc i32 @hal_uart_translate_port(i32 noundef %0) unnamed_addr #9 !dbg !3991 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !3995, metadata !DIExpression()), !dbg !3996
  %2 = icmp ne i32 %0, 0, !dbg !3997
  %3 = zext i1 %2 to i32, !dbg !3998
  ret i32 %3, !dbg !3999
}

; Function Attrs: noinline nounwind optsize
define dso_local i32 @hal_uart_set_format(i32 noundef %0, %struct.hal_uart_config_t* noundef %1) local_unnamed_addr #0 !dbg !4000 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !4004, metadata !DIExpression()), !dbg !4006
  call void @llvm.dbg.value(metadata %struct.hal_uart_config_t* %1, metadata !4005, metadata !DIExpression()), !dbg !4006
  %3 = tail call fastcc zeroext i1 @hal_uart_is_config_valid(i32 noundef %0, %struct.hal_uart_config_t* noundef %1) #13, !dbg !4007
  br i1 %3, label %4, label %22, !dbg !4009

4:                                                ; preds = %2
  %5 = getelementptr inbounds [2 x %struct.uart_context_t], [2 x %struct.uart_context_t]* @g_uart_context_table, i32 0, i32 %0, i32 1, !dbg !4010
  %6 = bitcast %struct.hal_uart_config_t* %5 to i8*, !dbg !4011
  %7 = bitcast %struct.hal_uart_config_t* %1 to i8*, !dbg !4012
  %8 = tail call i8* @memcpy(i8* noundef nonnull %6, i8* noundef %7, i32 noundef 16) #12, !dbg !4013
  %9 = tail call fastcc i32 @hal_uart_translate_port(i32 noundef %0) #13, !dbg !4014
  %10 = getelementptr inbounds %struct.hal_uart_config_t, %struct.hal_uart_config_t* %1, i32 0, i32 0, !dbg !4015
  %11 = load i32, i32* %10, align 4, !dbg !4015
  %12 = tail call fastcc i32 @hal_uart_translate_baudrate(i32 noundef %11) #13, !dbg !4016
  %13 = getelementptr inbounds %struct.hal_uart_config_t, %struct.hal_uart_config_t* %1, i32 0, i32 1, !dbg !4017
  %14 = load i32, i32* %13, align 4, !dbg !4017
  %15 = tail call fastcc zeroext i16 @hal_uart_translate_word_length(i32 noundef %14) #13, !dbg !4018
  %16 = getelementptr inbounds %struct.hal_uart_config_t, %struct.hal_uart_config_t* %1, i32 0, i32 3, !dbg !4019
  %17 = load i32, i32* %16, align 4, !dbg !4019
  %18 = tail call fastcc zeroext i16 @hal_uart_translate_parity(i32 noundef %17) #13, !dbg !4020
  %19 = getelementptr inbounds %struct.hal_uart_config_t, %struct.hal_uart_config_t* %1, i32 0, i32 2, !dbg !4021
  %20 = load i32, i32* %19, align 4, !dbg !4021
  %21 = tail call fastcc zeroext i16 @hal_uart_translate_stopbit(i32 noundef %20) #13, !dbg !4022
  tail call void @halUART_SetFormat(i32 noundef %9, i32 noundef %12, i16 noundef zeroext %15, i16 noundef zeroext %18, i16 noundef zeroext %21) #12, !dbg !4023
  br label %22, !dbg !4024

22:                                               ; preds = %2, %4
  %23 = phi i32 [ 0, %4 ], [ -4, %2 ], !dbg !4006
  ret i32 %23, !dbg !4025
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize readnone willreturn
define internal fastcc i32 @hal_uart_translate_baudrate(i32 noundef %0) unnamed_addr #9 !dbg !4026 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !4030, metadata !DIExpression()), !dbg !4035
  call void @llvm.dbg.declare(metadata [13 x i32]* @__const.hal_uart_translate_baudrate.baudrate_tbl, metadata !4031, metadata !DIExpression()), !dbg !4036
  %2 = getelementptr inbounds [13 x i32], [13 x i32]* @__const.hal_uart_translate_baudrate.baudrate_tbl, i32 0, i32 %0, !dbg !4037
  %3 = load i32, i32* %2, align 4, !dbg !4037
  ret i32 %3, !dbg !4038
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize readnone willreturn
define internal fastcc zeroext i16 @hal_uart_translate_word_length(i32 noundef %0) unnamed_addr #9 !dbg !4039 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !4043, metadata !DIExpression()), !dbg !4046
  call void @llvm.dbg.declare(metadata [4 x i16]* @__const.hal_uart_translate_word_length.databit_tbl, metadata !4044, metadata !DIExpression()), !dbg !4047
  %2 = getelementptr inbounds [4 x i16], [4 x i16]* @__const.hal_uart_translate_word_length.databit_tbl, i32 0, i32 %0, !dbg !4048
  %3 = load i16, i16* %2, align 2, !dbg !4048
  ret i16 %3, !dbg !4049
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize readnone willreturn
define internal fastcc zeroext i16 @hal_uart_translate_parity(i32 noundef %0) unnamed_addr #9 !dbg !4050 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !4054, metadata !DIExpression()), !dbg !4057
  call void @llvm.dbg.declare(metadata [5 x i16]* @__const.hal_uart_translate_parity.parity_tbl, metadata !4055, metadata !DIExpression()), !dbg !4058
  %2 = getelementptr inbounds [5 x i16], [5 x i16]* @__const.hal_uart_translate_parity.parity_tbl, i32 0, i32 %0, !dbg !4059
  %3 = load i16, i16* %2, align 2, !dbg !4059
  ret i16 %3, !dbg !4060
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize readnone willreturn
define internal fastcc zeroext i16 @hal_uart_translate_stopbit(i32 noundef %0) unnamed_addr #9 !dbg !4061 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !4065, metadata !DIExpression()), !dbg !4068
  call void @llvm.dbg.declare(metadata [3 x i16]* @__const.hal_uart_translate_stopbit.stopbit_tbl, metadata !4066, metadata !DIExpression()), !dbg !4069
  %2 = getelementptr inbounds [3 x i16], [3 x i16]* @__const.hal_uart_translate_stopbit.stopbit_tbl, i32 0, i32 %0, !dbg !4070
  %3 = load i16, i16* %2, align 2, !dbg !4070
  ret i16 %3, !dbg !4071
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize readnone willreturn
define internal fastcc zeroext i1 @hal_uart_is_port_valid(i32 noundef %0) unnamed_addr #9 !dbg !4072 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !4076, metadata !DIExpression()), !dbg !4077
  %2 = icmp ult i32 %0, 2, !dbg !4078
  ret i1 %2, !dbg !4079
}

; Function Attrs: noinline nounwind optsize
define dso_local i32 @hal_uart_deinit(i32 noundef %0) local_unnamed_addr #0 !dbg !4080 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !4084, metadata !DIExpression()), !dbg !4085
  %2 = tail call fastcc zeroext i1 @hal_uart_is_port_valid(i32 noundef %0) #13, !dbg !4086
  br i1 %2, label %3, label %10, !dbg !4088

3:                                                ; preds = %1
  %4 = getelementptr inbounds [2 x %struct.uart_context_t], [2 x %struct.uart_context_t]* @g_uart_context_table, i32 0, i32 %0, i32 0, !dbg !4089
  %5 = load i8, i8* %4, align 4, !dbg !4089, !range !3637
  %6 = icmp eq i8 %5, 0, !dbg !4091
  br i1 %6, label %10, label %7, !dbg !4092

7:                                                ; preds = %3
  %8 = tail call i8* @memset(i8* noundef nonnull %4, i32 noundef 0, i32 noundef 64) #12, !dbg !4093
  %9 = tail call fastcc i32 @hal_uart_translate_port(i32 noundef %0) #13, !dbg !4094, !range !3958
  tail call void @uart_query_empty(i32 noundef %9) #12, !dbg !4095
  tail call void @uart_reset_default_value(i32 noundef %9) #12, !dbg !4096
  br label %10, !dbg !4097

10:                                               ; preds = %3, %1, %7
  %11 = phi i32 [ 0, %7 ], [ -4, %1 ], [ -2, %3 ], !dbg !4085
  ret i32 %11, !dbg !4098
}

; Function Attrs: noinline nounwind optsize
define dso_local void @hal_uart_put_char(i32 noundef %0, i8 noundef zeroext %1) local_unnamed_addr #0 !dbg !4099 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !4103, metadata !DIExpression()), !dbg !4106
  call void @llvm.dbg.value(metadata i8 %1, metadata !4104, metadata !DIExpression()), !dbg !4106
  %3 = icmp eq i32 %0, 0, !dbg !4107
  %4 = icmp eq i32 %0, 1, !dbg !4107
  %5 = select i1 %4, i32 1, i32 2, !dbg !4107
  %6 = select i1 %3, i32 0, i32 %5, !dbg !4107
  call void @llvm.dbg.value(metadata i32 %6, metadata !4105, metadata !DIExpression()), !dbg !4106
  %7 = icmp eq i32 %6, 2, !dbg !4108
  br i1 %7, label %9, label %8, !dbg !4110

8:                                                ; preds = %2
  tail call void @uart_output_char(i32 noundef %6, i8 noundef zeroext %1) #12, !dbg !4111
  br label %9, !dbg !4113

9:                                                ; preds = %2, %8
  ret void, !dbg !4114
}

; Function Attrs: noinline nounwind optsize
define dso_local i32 @hal_uart_send_polling(i32 noundef %0, i8* noundef readonly %1, i32 noundef %2) local_unnamed_addr #0 !dbg !4115 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !4119, metadata !DIExpression()), !dbg !4124
  call void @llvm.dbg.value(metadata i8* %1, metadata !4120, metadata !DIExpression()), !dbg !4124
  call void @llvm.dbg.value(metadata i32 %2, metadata !4121, metadata !DIExpression()), !dbg !4124
  %4 = icmp eq i32 %0, 0, !dbg !4125
  %5 = icmp eq i32 %0, 1, !dbg !4125
  %6 = select i1 %5, i32 1, i32 2, !dbg !4125
  %7 = select i1 %4, i32 0, i32 %6, !dbg !4125
  call void @llvm.dbg.value(metadata i32 %7, metadata !4122, metadata !DIExpression()), !dbg !4124
  %8 = icmp eq i8* %1, null, !dbg !4126
  %9 = icmp ugt i32 %7, 1
  %10 = or i1 %8, %9, !dbg !4128
  %11 = icmp eq i32 %2, 0
  %12 = or i1 %10, %11, !dbg !4128
  call void @llvm.dbg.value(metadata i32 0, metadata !4123, metadata !DIExpression()), !dbg !4124
  br i1 %12, label %19, label %13, !dbg !4128

13:                                               ; preds = %3, %13
  %14 = phi i32 [ %17, %13 ], [ 0, %3 ]
  call void @llvm.dbg.value(metadata i32 %14, metadata !4123, metadata !DIExpression()), !dbg !4124
  %15 = getelementptr inbounds i8, i8* %1, i32 %14, !dbg !4129
  %16 = load i8, i8* %15, align 1, !dbg !4129
  tail call void @uart_output_char(i32 noundef %7, i8 noundef zeroext %16) #12, !dbg !4135
  %17 = add nuw i32 %14, 1, !dbg !4136
  call void @llvm.dbg.value(metadata i32 %17, metadata !4123, metadata !DIExpression()), !dbg !4124
  %18 = icmp eq i32 %17, %2, !dbg !4137
  br i1 %18, label %19, label %13, !dbg !4138, !llvm.loop !4139

19:                                               ; preds = %13, %3
  %20 = phi i32 [ 0, %3 ], [ %2, %13 ], !dbg !4124
  ret i32 %20, !dbg !4141
}

; Function Attrs: noinline nounwind optsize
define dso_local i32 @hal_uart_send_dma(i32 noundef %0, i8* noundef %1, i32 noundef %2) local_unnamed_addr #0 !dbg !4142 {
  %4 = alloca i32, align 4
  call void @llvm.dbg.value(metadata i32 %0, metadata !4144, metadata !DIExpression()), !dbg !4151
  call void @llvm.dbg.value(metadata i8* %1, metadata !4145, metadata !DIExpression()), !dbg !4151
  call void @llvm.dbg.value(metadata i32 %2, metadata !4146, metadata !DIExpression()), !dbg !4151
  %5 = bitcast i32* %4 to i8*, !dbg !4152
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %5) #14, !dbg !4152
  %6 = tail call fastcc zeroext i1 @hal_uart_is_port_valid(i32 noundef %0) #13, !dbg !4153
  br i1 %6, label %7, label %24, !dbg !4155

7:                                                ; preds = %3
  %8 = icmp eq i8* %1, null, !dbg !4156
  %9 = icmp eq i32 %2, 0
  %10 = or i1 %8, %9, !dbg !4158
  br i1 %10, label %24, label %11, !dbg !4158

11:                                               ; preds = %7
  %12 = getelementptr inbounds [2 x %struct.uart_context_t], [2 x %struct.uart_context_t]* @g_uart_context_table, i32 0, i32 %0, i32 4, !dbg !4159
  %13 = load i8, i8* %12, align 4, !dbg !4159, !range !3637
  %14 = icmp eq i8 %13, 0, !dbg !4159
  br i1 %14, label %24, label %15, !dbg !4161

15:                                               ; preds = %11
  %16 = tail call fastcc i32 @hal_uart_translate_port(i32 noundef %0) #13, !dbg !4162, !range !3958
  call void @llvm.dbg.value(metadata i32* %4, metadata !4147, metadata !DIExpression(DW_OP_deref)), !dbg !4151
  call void @halUART_Get_VFIFO_Length(i32 noundef %16, i32 noundef 0, i32* noundef nonnull %4) #12, !dbg !4163
  %17 = load i32, i32* %4, align 4, !dbg !4164
  call void @llvm.dbg.value(metadata i32 %17, metadata !4147, metadata !DIExpression()), !dbg !4151
  %18 = icmp ult i32 %17, %2, !dbg !4166
  %19 = select i1 %18, i32 %17, i32 %2
  call void @llvm.dbg.value(metadata i32 %19, metadata !4148, metadata !DIExpression()), !dbg !4151
  call void @halUART_Write_VFIFO_Data(i32 noundef %16, i8* noundef nonnull %1, i32 noundef %19) #12, !dbg !4167
  %20 = load i32, i32* %4, align 4, !dbg !4168
  call void @llvm.dbg.value(metadata i32 %20, metadata !4147, metadata !DIExpression()), !dbg !4151
  %21 = icmp eq i32 %19, %20, !dbg !4170
  br i1 %21, label %22, label %24, !dbg !4171

22:                                               ; preds = %15
  %23 = call fastcc i32 @uart_channel_to_dma_channel(i32 noundef %16, i1 noundef zeroext false) #13, !dbg !4172, !range !4174
  call void @llvm.dbg.value(metadata i32 %23, metadata !4149, metadata !DIExpression()), !dbg !4151
  call void @DMA_Vfifo_enable_interrupt(i32 noundef %23) #12, !dbg !4175
  br label %24, !dbg !4176

24:                                               ; preds = %15, %22, %11, %7, %3
  %25 = phi i32 [ 0, %3 ], [ 0, %7 ], [ 0, %11 ], [ %19, %22 ], [ %19, %15 ], !dbg !4151
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %5) #14, !dbg !4177
  ret i32 %25, !dbg !4177
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize readnone willreturn
define internal fastcc i32 @uart_channel_to_dma_channel(i32 noundef %0, i1 noundef zeroext %1) unnamed_addr #9 !dbg !4178 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !4182, metadata !DIExpression()), !dbg !4185
  call void @llvm.dbg.value(metadata i1 %1, metadata !4183, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !4185
  %3 = icmp eq i32 %0, 0, !dbg !4186
  %4 = select i1 %1, i32 15, i32 14, !dbg !4188
  %5 = select i1 %1, i32 17, i32 16, !dbg !4188
  %6 = select i1 %3, i32 %4, i32 %5, !dbg !4188
  call void @llvm.dbg.value(metadata i32 %6, metadata !4184, metadata !DIExpression()), !dbg !4185
  ret i32 %6, !dbg !4189
}

; Function Attrs: optsize
declare dso_local void @DMA_Vfifo_enable_interrupt(i32 noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize
define dso_local zeroext i8 @hal_uart_get_char(i32 noundef %0) local_unnamed_addr #0 !dbg !4190 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !4194, metadata !DIExpression()), !dbg !4196
  %2 = icmp eq i32 %0, 0, !dbg !4197
  %3 = icmp eq i32 %0, 1, !dbg !4197
  %4 = select i1 %3, i32 1, i32 2, !dbg !4197
  %5 = select i1 %2, i32 0, i32 %4, !dbg !4197
  call void @llvm.dbg.value(metadata i32 %5, metadata !4195, metadata !DIExpression()), !dbg !4196
  %6 = icmp ult i32 %5, 2, !dbg !4198
  br i1 %6, label %7, label %9, !dbg !4200

7:                                                ; preds = %1
  %8 = tail call zeroext i8 @uart_input_char(i32 noundef %5) #12, !dbg !4201
  br label %9, !dbg !4203

9:                                                ; preds = %1, %7
  %10 = phi i8 [ %8, %7 ], [ 0, %1 ], !dbg !4204
  ret i8 %10, !dbg !4205
}

; Function Attrs: noinline nounwind optsize
define dso_local i32 @hal_uart_get_char_unblocking(i32 noundef %0) local_unnamed_addr #0 !dbg !4206 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !4210, metadata !DIExpression()), !dbg !4212
  %2 = icmp eq i32 %0, 0, !dbg !4213
  %3 = icmp eq i32 %0, 1, !dbg !4213
  %4 = select i1 %3, i32 1, i32 2, !dbg !4213
  %5 = select i1 %2, i32 0, i32 %4, !dbg !4213
  call void @llvm.dbg.value(metadata i32 %5, metadata !4211, metadata !DIExpression()), !dbg !4212
  %6 = icmp ult i32 %5, 2, !dbg !4214
  br i1 %6, label %7, label %9, !dbg !4216

7:                                                ; preds = %1
  %8 = tail call i32 @uart_input_char_unblocking(i32 noundef %5) #12, !dbg !4217
  br label %9, !dbg !4219

9:                                                ; preds = %1, %7
  %10 = phi i32 [ %8, %7 ], [ 0, %1 ], !dbg !4220
  ret i32 %10, !dbg !4221
}

; Function Attrs: noinline nounwind optsize
define dso_local i32 @hal_uart_receive_polling(i32 noundef %0, i8* noundef writeonly %1, i32 noundef %2) local_unnamed_addr #0 !dbg !4222 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !4226, metadata !DIExpression()), !dbg !4231
  call void @llvm.dbg.value(metadata i8* %1, metadata !4227, metadata !DIExpression()), !dbg !4231
  call void @llvm.dbg.value(metadata i32 %2, metadata !4228, metadata !DIExpression()), !dbg !4231
  %4 = icmp eq i32 %0, 0, !dbg !4232
  %5 = icmp eq i32 %0, 1, !dbg !4232
  %6 = select i1 %5, i32 1, i32 2, !dbg !4232
  %7 = select i1 %4, i32 0, i32 %6, !dbg !4232
  call void @llvm.dbg.value(metadata i32 %7, metadata !4229, metadata !DIExpression()), !dbg !4231
  %8 = icmp eq i8* %1, null, !dbg !4233
  %9 = icmp ugt i32 %7, 1
  %10 = or i1 %8, %9, !dbg !4235
  %11 = icmp eq i32 %2, 0
  %12 = or i1 %10, %11, !dbg !4235
  call void @llvm.dbg.value(metadata i32 0, metadata !4230, metadata !DIExpression()), !dbg !4231
  br i1 %12, label %19, label %13, !dbg !4235

13:                                               ; preds = %3, %13
  %14 = phi i32 [ %17, %13 ], [ 0, %3 ]
  call void @llvm.dbg.value(metadata i32 %14, metadata !4230, metadata !DIExpression()), !dbg !4231
  %15 = tail call zeroext i8 @uart_input_char(i32 noundef %7) #12, !dbg !4236
  %16 = getelementptr inbounds i8, i8* %1, i32 %14, !dbg !4242
  store i8 %15, i8* %16, align 1, !dbg !4243
  %17 = add nuw i32 %14, 1, !dbg !4244
  call void @llvm.dbg.value(metadata i32 %17, metadata !4230, metadata !DIExpression()), !dbg !4231
  %18 = icmp eq i32 %17, %2, !dbg !4245
  br i1 %18, label %19, label %13, !dbg !4246, !llvm.loop !4247

19:                                               ; preds = %13, %3
  %20 = phi i32 [ 0, %3 ], [ %2, %13 ], !dbg !4231
  ret i32 %20, !dbg !4249
}

; Function Attrs: noinline nounwind optsize
define dso_local i32 @hal_uart_receive_dma(i32 noundef %0, i8* noundef %1, i32 noundef %2) local_unnamed_addr #0 !dbg !4250 {
  %4 = alloca i32, align 4
  call void @llvm.dbg.value(metadata i32 %0, metadata !4252, metadata !DIExpression()), !dbg !4258
  call void @llvm.dbg.value(metadata i8* %1, metadata !4253, metadata !DIExpression()), !dbg !4258
  call void @llvm.dbg.value(metadata i32 %2, metadata !4254, metadata !DIExpression()), !dbg !4258
  %5 = bitcast i32* %4 to i8*, !dbg !4259
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %5) #14, !dbg !4259
  %6 = tail call fastcc zeroext i1 @hal_uart_is_port_valid(i32 noundef %0) #13, !dbg !4260
  br i1 %6, label %7, label %20, !dbg !4262

7:                                                ; preds = %3
  %8 = icmp eq i8* %1, null, !dbg !4263
  %9 = icmp eq i32 %2, 0
  %10 = or i1 %8, %9, !dbg !4265
  br i1 %10, label %20, label %11, !dbg !4265

11:                                               ; preds = %7
  %12 = tail call fastcc i32 @hal_uart_translate_port(i32 noundef %0) #13, !dbg !4266, !range !3958
  call void @llvm.dbg.value(metadata i32* %4, metadata !4255, metadata !DIExpression(DW_OP_deref)), !dbg !4258
  call void @halUART_Get_VFIFO_Length(i32 noundef %12, i32 noundef 1, i32* noundef nonnull %4) #12, !dbg !4267
  %13 = load i32, i32* %4, align 4, !dbg !4268
  call void @llvm.dbg.value(metadata i32 %13, metadata !4255, metadata !DIExpression()), !dbg !4258
  %14 = icmp ult i32 %13, %2, !dbg !4270
  %15 = select i1 %14, i32 %13, i32 %2
  call void @llvm.dbg.value(metadata i32 %15, metadata !4256, metadata !DIExpression()), !dbg !4258
  call void @halUART_Read_VFIFO_Data(i32 noundef %12, i8* noundef nonnull %1, i32 noundef %15) #12, !dbg !4271
  %16 = load i32, i32* %4, align 4, !dbg !4272
  call void @llvm.dbg.value(metadata i32 %16, metadata !4255, metadata !DIExpression()), !dbg !4258
  %17 = icmp eq i32 %15, %16, !dbg !4274
  br i1 %17, label %18, label %20, !dbg !4275

18:                                               ; preds = %11
  %19 = call fastcc i32 @uart_channel_to_dma_channel(i32 noundef %12, i1 noundef zeroext true) #13, !dbg !4276, !range !4174
  call void @llvm.dbg.value(metadata i32 %19, metadata !4257, metadata !DIExpression()), !dbg !4258
  call void @DMA_Vfifo_enable_interrupt(i32 noundef %19) #12, !dbg !4278
  br label %20, !dbg !4279

20:                                               ; preds = %11, %18, %7, %3
  %21 = phi i32 [ 0, %3 ], [ 0, %7 ], [ %15, %18 ], [ %15, %11 ], !dbg !4258
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %5) #14, !dbg !4280
  ret i32 %21, !dbg !4280
}

; Function Attrs: noinline nounwind optsize
define dso_local i32 @hal_uart_get_available_send_space(i32 noundef %0) local_unnamed_addr #0 !dbg !4281 {
  %2 = alloca i32, align 4
  call void @llvm.dbg.value(metadata i32 %0, metadata !4283, metadata !DIExpression()), !dbg !4285
  %3 = bitcast i32* %2 to i8*, !dbg !4286
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %3) #14, !dbg !4286
  call void @llvm.dbg.value(metadata i32 0, metadata !4284, metadata !DIExpression()), !dbg !4285
  store i32 0, i32* %2, align 4, !dbg !4287
  %4 = tail call fastcc zeroext i1 @hal_uart_is_port_valid(i32 noundef %0) #13, !dbg !4288
  br i1 %4, label %5, label %8, !dbg !4290

5:                                                ; preds = %1
  %6 = tail call fastcc i32 @hal_uart_translate_port(i32 noundef %0) #13, !dbg !4291, !range !3958
  call void @llvm.dbg.value(metadata i32* %2, metadata !4284, metadata !DIExpression(DW_OP_deref)), !dbg !4285
  call void @halUART_Get_VFIFO_Length(i32 noundef %6, i32 noundef 0, i32* noundef nonnull %2) #12, !dbg !4292
  %7 = load i32, i32* %2, align 4, !dbg !4293
  call void @llvm.dbg.value(metadata i32 %7, metadata !4284, metadata !DIExpression()), !dbg !4285
  br label %8, !dbg !4294

8:                                                ; preds = %1, %5
  %9 = phi i32 [ %7, %5 ], [ 0, %1 ], !dbg !4285
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %3) #14, !dbg !4295
  ret i32 %9, !dbg !4295
}

; Function Attrs: noinline nounwind optsize
define dso_local i32 @hal_uart_get_available_receive_bytes(i32 noundef %0) local_unnamed_addr #0 !dbg !4296 {
  %2 = alloca i32, align 4
  call void @llvm.dbg.value(metadata i32 %0, metadata !4298, metadata !DIExpression()), !dbg !4300
  %3 = bitcast i32* %2 to i8*, !dbg !4301
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %3) #14, !dbg !4301
  call void @llvm.dbg.value(metadata i32 0, metadata !4299, metadata !DIExpression()), !dbg !4300
  store i32 0, i32* %2, align 4, !dbg !4302
  %4 = tail call fastcc zeroext i1 @hal_uart_is_port_valid(i32 noundef %0) #13, !dbg !4303
  br i1 %4, label %5, label %8, !dbg !4305

5:                                                ; preds = %1
  %6 = tail call fastcc i32 @hal_uart_translate_port(i32 noundef %0) #13, !dbg !4306, !range !3958
  call void @llvm.dbg.value(metadata i32* %2, metadata !4299, metadata !DIExpression(DW_OP_deref)), !dbg !4300
  call void @halUART_Get_VFIFO_Length(i32 noundef %6, i32 noundef 1, i32* noundef nonnull %2) #12, !dbg !4307
  %7 = load i32, i32* %2, align 4, !dbg !4308
  call void @llvm.dbg.value(metadata i32 %7, metadata !4299, metadata !DIExpression()), !dbg !4300
  br label %8, !dbg !4309

8:                                                ; preds = %1, %5
  %9 = phi i32 [ %7, %5 ], [ 0, %1 ], !dbg !4300
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %3) #14, !dbg !4310
  ret i32 %9, !dbg !4310
}

; Function Attrs: noinline nounwind optsize
define dso_local i32 @hal_uart_register_callback(i32 noundef %0, void (i32, i8*)* noundef %1, i8* noundef %2) local_unnamed_addr #0 !dbg !4311 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !4315, metadata !DIExpression()), !dbg !4319
  call void @llvm.dbg.value(metadata void (i32, i8*)* %1, metadata !4316, metadata !DIExpression()), !dbg !4319
  call void @llvm.dbg.value(metadata i8* %2, metadata !4317, metadata !DIExpression()), !dbg !4319
  %4 = tail call fastcc zeroext i1 @hal_uart_is_port_valid(i32 noundef %0) #13, !dbg !4320
  %5 = icmp ne void (i32, i8*)* %1, null
  %6 = and i1 %5, %4, !dbg !4322
  br i1 %6, label %7, label %18, !dbg !4322

7:                                                ; preds = %3
  %8 = getelementptr inbounds [2 x %struct.uart_context_t], [2 x %struct.uart_context_t]* @g_uart_context_table, i32 0, i32 %0, i32 3, i32 0, !dbg !4323
  store void (i32, i8*)* %1, void (i32, i8*)** %8, align 4, !dbg !4324
  %9 = getelementptr inbounds [2 x %struct.uart_context_t], [2 x %struct.uart_context_t]* @g_uart_context_table, i32 0, i32 %0, i32 3, i32 1, !dbg !4325
  store i8* %2, i8** %9, align 4, !dbg !4326
  %10 = getelementptr inbounds [2 x %struct.uart_context_t], [2 x %struct.uart_context_t]* @g_uart_context_table, i32 0, i32 %0, i32 2, !dbg !4327
  store i8 1, i8* %10, align 4, !dbg !4328
  %11 = tail call fastcc i32 @hal_uart_translate_port(i32 noundef %0) #13, !dbg !4329
  %12 = tail call fastcc void ()* @hal_uart_map_receive_callback(i32 noundef %0) #13, !dbg !4330
  tail call void @halUART_VDMA_Rx_Register_Callback(i32 noundef %11, void ()* noundef %12) #12, !dbg !4331
  tail call void @halUART_VDMA_Rx_Register_TO_Callback(i32 noundef %11, void ()* noundef %12) #12, !dbg !4332
  %13 = icmp eq i32 %11, 0, !dbg !4333
  br i1 %13, label %14, label %15, !dbg !4335

14:                                               ; preds = %7
  tail call void @DMA_Vfifo_Register_Callback(i32 noundef 14, void ()* noundef nonnull @hal_uart_send_callback0) #12, !dbg !4336
  br label %16, !dbg !4338

15:                                               ; preds = %7
  tail call void @DMA_Vfifo_Register_Callback(i32 noundef 16, void ()* noundef nonnull @hal_uart_send_callback1) #12, !dbg !4339
  br label %16

16:                                               ; preds = %15, %14
  %17 = tail call fastcc i32 @uart_channel_to_dma_channel(i32 noundef %11, i1 noundef zeroext false) #13, !dbg !4341, !range !4174
  call void @llvm.dbg.value(metadata i32 %17, metadata !4318, metadata !DIExpression()), !dbg !4319
  tail call void @DMA_Vfifo_enable_interrupt(i32 noundef %17) #12, !dbg !4342
  br label %18, !dbg !4343

18:                                               ; preds = %3, %16
  %19 = phi i32 [ 0, %16 ], [ -4, %3 ], !dbg !4319
  ret i32 %19, !dbg !4344
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize readnone willreturn
define internal fastcc void ()* @hal_uart_map_receive_callback(i32 noundef %0) unnamed_addr #9 !dbg !356 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !362, metadata !DIExpression()), !dbg !4345
  %2 = getelementptr inbounds [2 x void ()*], [2 x void ()*]* @hal_uart_map_receive_callback.func_tbl, i32 0, i32 %0, !dbg !4346
  %3 = load void ()*, void ()** %2, align 4, !dbg !4346
  ret void ()* %3, !dbg !4347
}

; Function Attrs: noinline nounwind optsize
define internal void @hal_uart_send_callback0() #0 !dbg !4348 {
  %1 = load i8, i8* getelementptr inbounds ([2 x %struct.uart_context_t], [2 x %struct.uart_context_t]* @g_uart_context_table, i32 0, i32 0, i32 2), align 4, !dbg !4354, !range !3637
  %2 = icmp eq i8 %1, 0, !dbg !4354
  br i1 %2, label %8, label %3, !dbg !4355

3:                                                ; preds = %0
  %4 = load void (i32, i8*)*, void (i32, i8*)** getelementptr inbounds ([2 x %struct.uart_context_t], [2 x %struct.uart_context_t]* @g_uart_context_table, i32 0, i32 0, i32 3, i32 0), align 4, !dbg !4356
  %5 = icmp eq void (i32, i8*)* %4, null, !dbg !4358
  br i1 %5, label %8, label %6, !dbg !4359

6:                                                ; preds = %3
  %7 = load i8*, i8** getelementptr inbounds ([2 x %struct.uart_context_t], [2 x %struct.uart_context_t]* @g_uart_context_table, i32 0, i32 0, i32 3, i32 1), align 4, !dbg !4360
  tail call void %4(i32 noundef 2, i8* noundef %7) #12, !dbg !4362
  br label %8, !dbg !4363

8:                                                ; preds = %3, %6, %0
  %9 = tail call fastcc i32 @hal_uart_translate_port(i32 noundef 0) #13, !dbg !4364, !range !3958
  tail call fastcc void @hal_uart_check_irq_disable(i32 noundef %9, i1 noundef zeroext false) #13, !dbg !4365
  ret void, !dbg !4366
}

; Function Attrs: noinline nounwind optsize
define internal void @hal_uart_send_callback1() #0 !dbg !4367 {
  %1 = load i8, i8* getelementptr inbounds ([2 x %struct.uart_context_t], [2 x %struct.uart_context_t]* @g_uart_context_table, i32 0, i32 1, i32 2), align 4, !dbg !4372, !range !3637
  %2 = icmp eq i8 %1, 0, !dbg !4372
  br i1 %2, label %8, label %3, !dbg !4373

3:                                                ; preds = %0
  %4 = load void (i32, i8*)*, void (i32, i8*)** getelementptr inbounds ([2 x %struct.uart_context_t], [2 x %struct.uart_context_t]* @g_uart_context_table, i32 0, i32 1, i32 3, i32 0), align 4, !dbg !4374
  %5 = icmp eq void (i32, i8*)* %4, null, !dbg !4376
  br i1 %5, label %8, label %6, !dbg !4377

6:                                                ; preds = %3
  %7 = load i8*, i8** getelementptr inbounds ([2 x %struct.uart_context_t], [2 x %struct.uart_context_t]* @g_uart_context_table, i32 0, i32 1, i32 3, i32 1), align 4, !dbg !4378
  tail call void %4(i32 noundef 2, i8* noundef %7) #12, !dbg !4380
  br label %8, !dbg !4381

8:                                                ; preds = %3, %6, %0
  %9 = tail call fastcc i32 @hal_uart_translate_port(i32 noundef 1) #13, !dbg !4382, !range !3958
  tail call fastcc void @hal_uart_check_irq_disable(i32 noundef %9, i1 noundef zeroext false) #13, !dbg !4383
  ret void, !dbg !4384
}

; Function Attrs: noinline nounwind optsize
define internal fastcc void @hal_uart_check_irq_disable(i32 noundef %0, i1 noundef zeroext %1) unnamed_addr #0 !dbg !4385 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  call void @llvm.dbg.value(metadata i32 %0, metadata !4389, metadata !DIExpression()), !dbg !4396
  call void @llvm.dbg.value(metadata i1 %1, metadata !4390, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !4396
  %5 = bitcast i32* %3 to i8*, !dbg !4397
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %5) #14, !dbg !4397
  %6 = bitcast i32* %4 to i8*, !dbg !4397
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %6) #14, !dbg !4397
  call void @llvm.dbg.value(metadata !DIArgList([2 x %struct.uart_context_t]* @g_uart_context_table, i32 %0), metadata !4393, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_constu, 64, DW_OP_mul, DW_OP_plus, DW_OP_plus_uconst, 36, DW_OP_stack_value)), !dbg !4396
  br i1 %1, label %7, label %12, !dbg !4398

7:                                                ; preds = %2
  call void @llvm.dbg.value(metadata !DIArgList([2 x %struct.uart_context_t]* @g_uart_context_table, i32 %0), metadata !4393, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_constu, 64, DW_OP_mul, DW_OP_plus, DW_OP_plus_uconst, 36, DW_OP_stack_value)), !dbg !4396
  call void @llvm.dbg.value(metadata i32* %3, metadata !4391, metadata !DIExpression(DW_OP_deref)), !dbg !4396
  call void @halUART_Get_VFIFO_Length(i32 noundef %0, i32 noundef 1, i32* noundef nonnull %3) #12, !dbg !4399
  %8 = load i32, i32* %3, align 4, !dbg !4402
  call void @llvm.dbg.value(metadata i32 %8, metadata !4391, metadata !DIExpression()), !dbg !4396
  %9 = getelementptr inbounds [2 x %struct.uart_context_t], [2 x %struct.uart_context_t]* @g_uart_context_table, i32 0, i32 %0, i32 5, i32 5, !dbg !4404
  %10 = load i32, i32* %9, align 4, !dbg !4404
  %11 = icmp ult i32 %8, %10, !dbg !4405
  br i1 %11, label %22, label %20, !dbg !4406

12:                                               ; preds = %2
  call void @llvm.dbg.value(metadata i32* %4, metadata !4392, metadata !DIExpression(DW_OP_deref)), !dbg !4396
  call void @halUART_Get_VFIFO_Length(i32 noundef %0, i32 noundef 0, i32* noundef nonnull %4) #12, !dbg !4407
  %13 = load i32, i32* %4, align 4, !dbg !4409
  call void @llvm.dbg.value(metadata i32 %13, metadata !4392, metadata !DIExpression()), !dbg !4396
  %14 = getelementptr inbounds [2 x %struct.uart_context_t], [2 x %struct.uart_context_t]* @g_uart_context_table, i32 0, i32 %0, i32 5, i32 1, !dbg !4411
  %15 = load i32, i32* %14, align 4, !dbg !4411
  %16 = getelementptr inbounds [2 x %struct.uart_context_t], [2 x %struct.uart_context_t]* @g_uart_context_table, i32 0, i32 %0, i32 5, i32 2, !dbg !4412
  %17 = load i32, i32* %16, align 4, !dbg !4412
  %18 = sub i32 %15, %17, !dbg !4413
  %19 = icmp ult i32 %13, %18, !dbg !4414
  br i1 %19, label %22, label %20, !dbg !4415

20:                                               ; preds = %12, %7
  %21 = call fastcc i32 @uart_channel_to_dma_channel(i32 noundef %0, i1 noundef zeroext %1) #13, !dbg !4416, !range !4174
  call void @DMA_Vfifo_disable_interrupt(i32 noundef %21) #12, !dbg !4416
  br label %22, !dbg !4417

22:                                               ; preds = %20, %12, %7
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %6) #14, !dbg !4417
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %5) #14, !dbg !4417
  ret void, !dbg !4417
}

; Function Attrs: optsize
declare dso_local void @DMA_Vfifo_disable_interrupt(i32 noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize
define internal void @hal_uart_receive_callback0() #0 !dbg !4418 {
  %1 = load i8, i8* getelementptr inbounds ([2 x %struct.uart_context_t], [2 x %struct.uart_context_t]* @g_uart_context_table, i32 0, i32 0, i32 2), align 4, !dbg !4423, !range !3637
  %2 = icmp eq i8 %1, 0, !dbg !4423
  br i1 %2, label %11, label %3, !dbg !4424

3:                                                ; preds = %0
  %4 = tail call i32 @hal_uart_get_available_receive_bytes(i32 noundef 0) #13, !dbg !4425
  %5 = icmp eq i32 %4, 0, !dbg !4426
  br i1 %5, label %11, label %6, !dbg !4427

6:                                                ; preds = %3
  %7 = load void (i32, i8*)*, void (i32, i8*)** getelementptr inbounds ([2 x %struct.uart_context_t], [2 x %struct.uart_context_t]* @g_uart_context_table, i32 0, i32 0, i32 3, i32 0), align 4, !dbg !4428
  %8 = icmp eq void (i32, i8*)* %7, null, !dbg !4430
  br i1 %8, label %11, label %9, !dbg !4431

9:                                                ; preds = %6
  %10 = load i8*, i8** getelementptr inbounds ([2 x %struct.uart_context_t], [2 x %struct.uart_context_t]* @g_uart_context_table, i32 0, i32 0, i32 3, i32 1), align 4, !dbg !4432
  tail call void %7(i32 noundef 1, i8* noundef %10) #12, !dbg !4434
  br label %11, !dbg !4435

11:                                               ; preds = %6, %9, %3, %0
  %12 = tail call fastcc i32 @hal_uart_translate_port(i32 noundef 0) #13, !dbg !4436, !range !3958
  tail call fastcc void @hal_uart_check_irq_disable(i32 noundef %12, i1 noundef zeroext true) #13, !dbg !4437
  ret void, !dbg !4438
}

; Function Attrs: noinline nounwind optsize
define internal void @hal_uart_receive_callback1() #0 !dbg !4439 {
  %1 = load i8, i8* getelementptr inbounds ([2 x %struct.uart_context_t], [2 x %struct.uart_context_t]* @g_uart_context_table, i32 0, i32 1, i32 2), align 4, !dbg !4444, !range !3637
  %2 = icmp eq i8 %1, 0, !dbg !4444
  br i1 %2, label %11, label %3, !dbg !4445

3:                                                ; preds = %0
  %4 = tail call i32 @hal_uart_get_available_receive_bytes(i32 noundef 1) #13, !dbg !4446
  %5 = icmp eq i32 %4, 0, !dbg !4447
  br i1 %5, label %11, label %6, !dbg !4448

6:                                                ; preds = %3
  %7 = load void (i32, i8*)*, void (i32, i8*)** getelementptr inbounds ([2 x %struct.uart_context_t], [2 x %struct.uart_context_t]* @g_uart_context_table, i32 0, i32 1, i32 3, i32 0), align 4, !dbg !4449
  %8 = icmp eq void (i32, i8*)* %7, null, !dbg !4451
  br i1 %8, label %11, label %9, !dbg !4452

9:                                                ; preds = %6
  %10 = load i8*, i8** getelementptr inbounds ([2 x %struct.uart_context_t], [2 x %struct.uart_context_t]* @g_uart_context_table, i32 0, i32 1, i32 3, i32 1), align 4, !dbg !4453
  tail call void %7(i32 noundef 1, i8* noundef %10) #12, !dbg !4455
  br label %11, !dbg !4456

11:                                               ; preds = %6, %9, %3, %0
  %12 = tail call fastcc i32 @hal_uart_translate_port(i32 noundef 1) #13, !dbg !4457, !range !3958
  tail call fastcc void @hal_uart_check_irq_disable(i32 noundef %12, i1 noundef zeroext true) #13, !dbg !4458
  ret void, !dbg !4459
}

; Function Attrs: noinline nounwind optsize
define dso_local i32 @hal_uart_set_baudrate(i32 noundef %0, i32 noundef %1) local_unnamed_addr #0 !dbg !4460 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !4464, metadata !DIExpression()), !dbg !4466
  call void @llvm.dbg.value(metadata i32 %1, metadata !4465, metadata !DIExpression()), !dbg !4466
  %3 = tail call fastcc zeroext i1 @hal_uart_is_port_valid(i32 noundef %0) #13, !dbg !4467
  %4 = icmp ult i32 %1, 13
  %5 = and i1 %4, %3, !dbg !4469
  br i1 %5, label %6, label %10, !dbg !4469

6:                                                ; preds = %2
  %7 = getelementptr inbounds [2 x %struct.uart_context_t], [2 x %struct.uart_context_t]* @g_uart_context_table, i32 0, i32 %0, i32 1, !dbg !4470
  %8 = getelementptr inbounds %struct.hal_uart_config_t, %struct.hal_uart_config_t* %7, i32 0, i32 0, !dbg !4471
  store i32 %1, i32* %8, align 4, !dbg !4472
  %9 = tail call i32 @hal_uart_set_format(i32 noundef %0, %struct.hal_uart_config_t* noundef nonnull %7) #13, !dbg !4473
  br label %10, !dbg !4474

10:                                               ; preds = %2, %6
  %11 = phi i32 [ %9, %6 ], [ -4, %2 ], !dbg !4466
  ret i32 %11, !dbg !4475
}

; Function Attrs: noinline nounwind optsize
define dso_local i32 @hal_uart_set_dma(i32 noundef %0, %struct.hal_uart_dma_config_t* noundef %1) local_unnamed_addr #0 !dbg !4476 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !4482, metadata !DIExpression()), !dbg !4484
  call void @llvm.dbg.value(metadata %struct.hal_uart_dma_config_t* %1, metadata !4483, metadata !DIExpression()), !dbg !4484
  %3 = tail call fastcc zeroext i1 @hal_uart_is_port_valid(i32 noundef %0) #13, !dbg !4485
  br i1 %3, label %4, label %28, !dbg !4487

4:                                                ; preds = %2
  %5 = tail call fastcc zeroext i1 @hal_uart_is_dma_config_valid(%struct.hal_uart_dma_config_t* noundef %1) #13, !dbg !4488
  br i1 %5, label %6, label %28, !dbg !4490

6:                                                ; preds = %4
  %7 = getelementptr inbounds [2 x %struct.uart_context_t], [2 x %struct.uart_context_t]* @g_uart_context_table, i32 0, i32 %0, i32 4, !dbg !4491
  store i8 1, i8* %7, align 4, !dbg !4492
  %8 = getelementptr inbounds [2 x %struct.uart_context_t], [2 x %struct.uart_context_t]* @g_uart_context_table, i32 0, i32 %0, i32 5, !dbg !4493
  %9 = bitcast %struct.hal_uart_dma_config_t* %8 to i8*, !dbg !4494
  %10 = bitcast %struct.hal_uart_dma_config_t* %1 to i8*, !dbg !4495
  %11 = tail call i8* @memcpy(i8* noundef nonnull %9, i8* noundef %10, i32 noundef 28) #12, !dbg !4496
  tail call void @DMA_Init() #12, !dbg !4497
  tail call void @DMA_Vfifo_init() #12, !dbg !4498
  %12 = tail call fastcc i32 @hal_uart_translate_port(i32 noundef %0) #13, !dbg !4499
  %13 = getelementptr inbounds %struct.hal_uart_dma_config_t, %struct.hal_uart_dma_config_t* %1, i32 0, i32 3, !dbg !4500
  %14 = load i8*, i8** %13, align 4, !dbg !4500
  %15 = getelementptr inbounds %struct.hal_uart_dma_config_t, %struct.hal_uart_dma_config_t* %1, i32 0, i32 4, !dbg !4501
  %16 = load i32, i32* %15, align 4, !dbg !4501
  %17 = getelementptr inbounds %struct.hal_uart_dma_config_t, %struct.hal_uart_dma_config_t* %1, i32 0, i32 6, !dbg !4502
  %18 = load i32, i32* %17, align 4, !dbg !4502
  %19 = getelementptr inbounds %struct.hal_uart_dma_config_t, %struct.hal_uart_dma_config_t* %1, i32 0, i32 5, !dbg !4503
  %20 = load i32, i32* %19, align 4, !dbg !4503
  %21 = tail call fastcc i32 @hal_uart_translate_timeout(i32 noundef 5000) #13, !dbg !4504
  tail call void @halUART_Rx_VFIFO_Initialize(i32 noundef %12, i8* noundef %14, i32 noundef %16, i32 noundef %18, i32 noundef %20, i32 noundef %21) #12, !dbg !4505
  %22 = getelementptr inbounds %struct.hal_uart_dma_config_t, %struct.hal_uart_dma_config_t* %1, i32 0, i32 0, !dbg !4506
  %23 = load i8*, i8** %22, align 4, !dbg !4506
  %24 = getelementptr inbounds %struct.hal_uart_dma_config_t, %struct.hal_uart_dma_config_t* %1, i32 0, i32 1, !dbg !4507
  %25 = load i32, i32* %24, align 4, !dbg !4507
  %26 = getelementptr inbounds %struct.hal_uart_dma_config_t, %struct.hal_uart_dma_config_t* %1, i32 0, i32 2, !dbg !4508
  %27 = load i32, i32* %26, align 4, !dbg !4508
  tail call void @halUART_Tx_VFIFO_Initialize(i32 noundef %12, i8* noundef %23, i32 noundef %25, i32 noundef %27) #12, !dbg !4509
  br label %28, !dbg !4510

28:                                               ; preds = %4, %2, %6
  %29 = phi i32 [ 0, %6 ], [ -4, %2 ], [ -4, %4 ], !dbg !4484
  ret i32 %29, !dbg !4511
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize readonly willreturn
define internal fastcc zeroext i1 @hal_uart_is_dma_config_valid(%struct.hal_uart_dma_config_t* noundef readonly %0) unnamed_addr #5 !dbg !4512 {
  call void @llvm.dbg.value(metadata %struct.hal_uart_dma_config_t* %0, metadata !4516, metadata !DIExpression()), !dbg !4517
  %2 = icmp eq %struct.hal_uart_dma_config_t* %0, null, !dbg !4518
  br i1 %2, label %27, label %3, !dbg !4520

3:                                                ; preds = %1
  %4 = getelementptr inbounds %struct.hal_uart_dma_config_t, %struct.hal_uart_dma_config_t* %0, i32 0, i32 3, !dbg !4521
  %5 = load i8*, i8** %4, align 4, !dbg !4521
  %6 = icmp eq i8* %5, null, !dbg !4523
  br i1 %6, label %27, label %7, !dbg !4524

7:                                                ; preds = %3
  %8 = getelementptr inbounds %struct.hal_uart_dma_config_t, %struct.hal_uart_dma_config_t* %0, i32 0, i32 4, !dbg !4525
  %9 = load i32, i32* %8, align 4, !dbg !4525
  %10 = getelementptr inbounds %struct.hal_uart_dma_config_t, %struct.hal_uart_dma_config_t* %0, i32 0, i32 5, !dbg !4527
  %11 = load i32, i32* %10, align 4, !dbg !4527
  %12 = icmp ult i32 %9, %11, !dbg !4528
  br i1 %12, label %27, label %13, !dbg !4529

13:                                               ; preds = %7
  %14 = getelementptr inbounds %struct.hal_uart_dma_config_t, %struct.hal_uart_dma_config_t* %0, i32 0, i32 6, !dbg !4530
  %15 = load i32, i32* %14, align 4, !dbg !4530
  %16 = icmp ult i32 %9, %15, !dbg !4532
  br i1 %16, label %27, label %17, !dbg !4533

17:                                               ; preds = %13
  %18 = getelementptr inbounds %struct.hal_uart_dma_config_t, %struct.hal_uart_dma_config_t* %0, i32 0, i32 0, !dbg !4534
  %19 = load i8*, i8** %18, align 4, !dbg !4534
  %20 = icmp eq i8* %19, null, !dbg !4536
  br i1 %20, label %27, label %21, !dbg !4537

21:                                               ; preds = %17
  %22 = getelementptr inbounds %struct.hal_uart_dma_config_t, %struct.hal_uart_dma_config_t* %0, i32 0, i32 1, !dbg !4538
  %23 = load i32, i32* %22, align 4, !dbg !4538
  %24 = getelementptr inbounds %struct.hal_uart_dma_config_t, %struct.hal_uart_dma_config_t* %0, i32 0, i32 2, !dbg !4540
  %25 = load i32, i32* %24, align 4, !dbg !4540
  %26 = icmp uge i32 %23, %25, !dbg !4541
  br label %27, !dbg !4542

27:                                               ; preds = %21, %17, %13, %7, %3, %1
  %28 = phi i1 [ false, %1 ], [ false, %3 ], [ false, %7 ], [ false, %13 ], [ false, %17 ], [ %26, %21 ], !dbg !4517
  ret i1 %28, !dbg !4543
}

; Function Attrs: optsize
declare dso_local void @DMA_Init() local_unnamed_addr #2

; Function Attrs: optsize
declare dso_local void @DMA_Vfifo_init() local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize
define internal fastcc i32 @hal_uart_translate_timeout(i32 noundef %0) unnamed_addr #0 !dbg !4544 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !4546, metadata !DIExpression()), !dbg !4548
  %2 = tail call i32 @top_mcu_freq_get() #12, !dbg !4549
  %3 = udiv i32 %2, 1000000, !dbg !4550
  call void @llvm.dbg.value(metadata i32 %3, metadata !4547, metadata !DIExpression()), !dbg !4548
  %4 = mul i32 %3, %0, !dbg !4551
  ret i32 %4, !dbg !4552
}

; Function Attrs: noinline nounwind optsize
define dso_local i32 @hal_uart_set_hardware_flowcontrol(i32 noundef %0) local_unnamed_addr #0 !dbg !4553 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !4555, metadata !DIExpression()), !dbg !4557
  %2 = tail call fastcc zeroext i1 @hal_uart_is_port_valid(i32 noundef %0) #13, !dbg !4558
  br i1 %2, label %3, label %8, !dbg !4560

3:                                                ; preds = %1
  %4 = icmp eq i32 %0, 0, !dbg !4561
  %5 = icmp eq i32 %0, 1, !dbg !4561
  %6 = select i1 %5, i32 1, i32 2, !dbg !4561
  %7 = select i1 %4, i32 0, i32 %6, !dbg !4561
  call void @llvm.dbg.value(metadata i32 %7, metadata !4556, metadata !DIExpression()), !dbg !4557
  tail call void @uart_set_hardware_flowcontrol(i32 noundef %7) #12, !dbg !4562
  br label %8, !dbg !4563

8:                                                ; preds = %1, %3
  %9 = phi i32 [ 0, %3 ], [ -4, %1 ], !dbg !4557
  ret i32 %9, !dbg !4564
}

; Function Attrs: noinline nounwind optsize
define dso_local i32 @hal_uart_set_software_flowcontrol(i32 noundef %0, i8 noundef zeroext %1, i8 noundef zeroext %2, i8 noundef zeroext %3) local_unnamed_addr #0 !dbg !4565 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !4569, metadata !DIExpression()), !dbg !4574
  call void @llvm.dbg.value(metadata i8 %1, metadata !4570, metadata !DIExpression()), !dbg !4574
  call void @llvm.dbg.value(metadata i8 %2, metadata !4571, metadata !DIExpression()), !dbg !4574
  call void @llvm.dbg.value(metadata i8 %3, metadata !4572, metadata !DIExpression()), !dbg !4574
  %5 = tail call fastcc zeroext i1 @hal_uart_is_port_valid(i32 noundef %0) #13, !dbg !4575
  br i1 %5, label %6, label %11, !dbg !4577

6:                                                ; preds = %4
  %7 = icmp eq i32 %0, 0, !dbg !4578
  %8 = icmp eq i32 %0, 1, !dbg !4578
  %9 = select i1 %8, i32 1, i32 2, !dbg !4578
  %10 = select i1 %7, i32 0, i32 %9, !dbg !4578
  call void @llvm.dbg.value(metadata i32 %10, metadata !4573, metadata !DIExpression()), !dbg !4574
  tail call void @uart_set_software_flowcontrol(i32 noundef %10, i8 noundef zeroext %1, i8 noundef zeroext %2, i8 noundef zeroext %3) #12, !dbg !4579
  br label %11, !dbg !4580

11:                                               ; preds = %4, %6
  %12 = phi i32 [ 0, %6 ], [ -4, %4 ], !dbg !4574
  ret i32 %12, !dbg !4581
}

; Function Attrs: noinline nounwind optsize
define dso_local i32 @hal_uart_disable_flowcontrol(i32 noundef %0) local_unnamed_addr #0 !dbg !4582 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !4584, metadata !DIExpression()), !dbg !4586
  %2 = tail call fastcc zeroext i1 @hal_uart_is_port_valid(i32 noundef %0) #13, !dbg !4587
  br i1 %2, label %3, label %8, !dbg !4589

3:                                                ; preds = %1
  %4 = icmp eq i32 %0, 0, !dbg !4590
  %5 = icmp eq i32 %0, 1, !dbg !4590
  %6 = select i1 %5, i32 1, i32 2, !dbg !4590
  %7 = select i1 %4, i32 0, i32 %6, !dbg !4590
  call void @llvm.dbg.value(metadata i32 %7, metadata !4585, metadata !DIExpression()), !dbg !4586
  tail call void @uart_disable_flowcontrol(i32 noundef %7) #12, !dbg !4591
  br label %8, !dbg !4592

8:                                                ; preds = %1, %3
  %9 = phi i32 [ 0, %3 ], [ -4, %1 ], !dbg !4586
  ret i32 %9, !dbg !4593
}

; Function Attrs: noinline nounwind optsize
define dso_local i32 @hal_uart_set_dma_timeout(i32 noundef %0, i32 noundef %1) local_unnamed_addr #0 !dbg !4594 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !4598, metadata !DIExpression()), !dbg !4600
  call void @llvm.dbg.value(metadata i32 %1, metadata !4599, metadata !DIExpression()), !dbg !4600
  %3 = tail call fastcc zeroext i1 @hal_uart_is_port_valid(i32 noundef %0) #13, !dbg !4601
  br i1 %3, label %4, label %8, !dbg !4603

4:                                                ; preds = %2
  %5 = icmp eq i32 %0, 0, !dbg !4604
  %6 = tail call fastcc i32 @hal_uart_translate_timeout(i32 noundef %1) #13, !dbg !4606
  %7 = select i1 %5, i32 15, i32 17
  tail call void @DMA_Vfifo_Set_timeout(i32 noundef %7, i32 noundef %6) #12, !dbg !4606
  br label %8, !dbg !4607

8:                                                ; preds = %4, %2
  %9 = phi i32 [ -4, %2 ], [ 0, %4 ], !dbg !4600
  ret i32 %9, !dbg !4607
}

; Function Attrs: optsize
declare dso_local void @DMA_Vfifo_Set_timeout(i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize
define dso_local i32 @__io_putchar(i32 noundef returned %0) local_unnamed_addr #0 !dbg !4608 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !4612, metadata !DIExpression()), !dbg !4613
  %2 = trunc i32 %0 to i8, !dbg !4614
  tail call void @hal_uart_put_char(i32 noundef 0, i8 noundef zeroext %2) #12, !dbg !4615
  ret i32 %0, !dbg !4616
}

; Function Attrs: noinline noreturn nounwind optsize
define dso_local i32 @main() local_unnamed_addr #11 !dbg !4617 {
  tail call fastcc void @SystemClock_Config() #13, !dbg !4618
  tail call fastcc void @prvSetupHardware() #13, !dbg !4619
  tail call void asm sideeffect "cpsie i", "~{memory}"() #14, !dbg !4620, !srcloc !4623
  tail call void asm sideeffect "cpsie f", "~{memory}"() #14, !dbg !4624, !srcloc !4627
  %1 = tail call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.18, i32 0, i32 0)) #12, !dbg !4628
  %2 = tail call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1.19, i32 0, i32 0)) #12, !dbg !4629
  %3 = tail call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.18, i32 0, i32 0)) #12, !dbg !4630
  tail call fastcc void @hal_gpt_interrupt_repeat_mode_example() #13, !dbg !4631
  br label %4, !dbg !4632

4:                                                ; preds = %0, %4
  br label %4, !dbg !4632, !llvm.loop !4633
}

; Function Attrs: noinline nounwind optsize
define internal fastcc void @SystemClock_Config() unnamed_addr #0 !dbg !4635 {
  tail call void @top_xtal_init() #12, !dbg !4636
  ret void, !dbg !4637
}

; Function Attrs: noinline nounwind optsize
define internal fastcc void @prvSetupHardware() unnamed_addr #0 !dbg !4638 {
  tail call fastcc void @log_uart_init() #13, !dbg !4639
  ret void, !dbg !4640
}

; Function Attrs: noinline nounwind optsize
define internal fastcc void @hal_gpt_interrupt_repeat_mode_example() unnamed_addr #0 !dbg !4641 {
  %1 = alloca i32, align 4
  %2 = bitcast i32* %1 to i8*, !dbg !4646
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %2) #14, !dbg !4646
  %3 = tail call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([28 x i8], [28 x i8]* @.str.2.20, i32 0, i32 0)) #12, !dbg !4647
  store i32 0, i32* @gpt_port, align 4, !dbg !4648
  call void @llvm.dbg.value(metadata i32 1000, metadata !4644, metadata !DIExpression()), !dbg !4649
  %4 = tail call i32 @hal_gpt_init(i32 noundef 0) #12, !dbg !4650
  call void @llvm.dbg.value(metadata i32 %4, metadata !4643, metadata !DIExpression()), !dbg !4649
  %5 = icmp eq i32 %4, 0, !dbg !4651
  br i1 %5, label %8, label %6, !dbg !4653

6:                                                ; preds = %0
  %7 = tail call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([38 x i8], [38 x i8]* @.str.3.21, i32 0, i32 0), i32 noundef %4) #12, !dbg !4654
  br label %24, !dbg !4656

8:                                                ; preds = %0
  %9 = load i32, i32* @gpt_port, align 4, !dbg !4657
  %10 = tail call i32 @hal_gpt_register_callback(i32 noundef %9, void (i8*)* noundef nonnull @gpt_callback, i8* noundef null) #12, !dbg !4658
  call void @llvm.dbg.value(metadata i32 %10, metadata !4643, metadata !DIExpression()), !dbg !4649
  %11 = icmp eq i32 %10, 0, !dbg !4659
  br i1 %11, label %16, label %12, !dbg !4661

12:                                               ; preds = %8
  %13 = tail call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([50 x i8], [50 x i8]* @.str.4.22, i32 0, i32 0), i32 noundef %10) #12, !dbg !4662
  %14 = load i32, i32* @gpt_port, align 4, !dbg !4664
  %15 = tail call i32 @hal_gpt_deinit(i32 noundef %14) #12, !dbg !4665
  br label %24, !dbg !4666

16:                                               ; preds = %8
  %17 = load i32, i32* @gpt_port, align 4, !dbg !4667
  %18 = tail call i32 @hal_gpt_start_timer_ms(i32 noundef %17, i32 noundef 1000, i32 noundef 1) #12, !dbg !4668
  call void @llvm.dbg.value(metadata i32 %18, metadata !4643, metadata !DIExpression()), !dbg !4649
  %19 = icmp eq i32 %18, 0, !dbg !4669
  br i1 %19, label %22, label %20, !dbg !4671

20:                                               ; preds = %16
  %21 = tail call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([48 x i8], [48 x i8]* @.str.5, i32 0, i32 0), i32 noundef %18) #12, !dbg !4672
  br label %24, !dbg !4674

22:                                               ; preds = %16
  call void @llvm.dbg.value(metadata i32* %1, metadata !4645, metadata !DIExpression(DW_OP_deref)), !dbg !4649
  %23 = call i32 @hal_gpt_get_free_run_count(i32 noundef 0, i32* noundef nonnull %1) #12, !dbg !4675
  br label %24, !dbg !4676

24:                                               ; preds = %22, %20, %12, %6
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %2) #14, !dbg !4676
  ret void, !dbg !4676
}

; Function Attrs: noinline nounwind optsize
define internal void @gpt_callback(i8* nocapture noundef readnone %0) #0 !dbg !447 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !449, metadata !DIExpression()), !dbg !4677
  call void @llvm.dbg.value(metadata i32 0, metadata !450, metadata !DIExpression()), !dbg !4677
  %2 = load i32, i32* @gpt_callback.timeout_times, align 4, !dbg !4678
  %3 = add i32 %2, 1, !dbg !4678
  store i32 %3, i32* @gpt_callback.timeout_times, align 4, !dbg !4678
  %4 = icmp ult i32 %3, 10, !dbg !4679
  br i1 %4, label %5, label %21, !dbg !4681

5:                                                ; preds = %1
  %6 = tail call fastcc i32 @get_current_millisecond() #13, !dbg !4682
  %7 = load i32, i32* @gpt_callback.last_time, align 4, !dbg !4684
  call void @llvm.dbg.value(metadata i32 undef, metadata !450, metadata !DIExpression()), !dbg !4677
  store i32 %6, i32* @gpt_callback.last_time, align 4, !dbg !4685
  %8 = add i32 %6, -1051, !dbg !4686
  %9 = sub i32 %8, %7, !dbg !4687
  %10 = icmp ult i32 %9, -101, !dbg !4687
  br i1 %10, label %11, label %36, !dbg !4687

11:                                               ; preds = %5
  %12 = load i32, i32* @gpt_port, align 4, !dbg !4689
  %13 = tail call i32 @hal_gpt_stop_timer(i32 noundef %12) #12, !dbg !4691
  %14 = load i32, i32* @gpt_port, align 4, !dbg !4692
  %15 = tail call i32 @hal_gpt_deinit(i32 noundef %14) #12, !dbg !4693
  %16 = load i32, i32* @gpt_callback.timeout_times, align 4, !dbg !4694
  %17 = tail call fastcc i32 @get_current_millisecond() #13, !dbg !4695, !range !4696
  %18 = tail call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([47 x i8], [47 x i8]* @.str.6, i32 0, i32 0), i32 noundef %16, i32 noundef %17) #12, !dbg !4697
  %19 = tail call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([34 x i8], [34 x i8]* @.str.7, i32 0, i32 0)) #12, !dbg !4698
  %20 = tail call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([31 x i8], [31 x i8]* @.str.8, i32 0, i32 0)) #12, !dbg !4699
  br label %36, !dbg !4700

21:                                               ; preds = %1
  %22 = load i32, i32* @gpt_port, align 4, !dbg !4701
  %23 = tail call i32 @hal_gpt_stop_timer(i32 noundef %22) #12, !dbg !4703
  call void @llvm.dbg.value(metadata i32 %23, metadata !451, metadata !DIExpression()), !dbg !4677
  %24 = icmp eq i32 %23, 0, !dbg !4704
  br i1 %24, label %27, label %25, !dbg !4706

25:                                               ; preds = %21
  %26 = tail call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([43 x i8], [43 x i8]* @.str.9.23, i32 0, i32 0), i32 noundef %23) #12, !dbg !4707
  br label %36, !dbg !4709

27:                                               ; preds = %21
  %28 = load i32, i32* @gpt_port, align 4, !dbg !4710
  %29 = tail call i32 @hal_gpt_deinit(i32 noundef %28) #12, !dbg !4711
  call void @llvm.dbg.value(metadata i32 %29, metadata !451, metadata !DIExpression()), !dbg !4677
  %30 = icmp eq i32 %29, 0, !dbg !4712
  br i1 %30, label %33, label %31, !dbg !4714

31:                                               ; preds = %27
  %32 = tail call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([43 x i8], [43 x i8]* @.str.10, i32 0, i32 0), i32 noundef %29) #12, !dbg !4715
  br label %36, !dbg !4717

33:                                               ; preds = %27
  %34 = tail call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([34 x i8], [34 x i8]* @.str.7, i32 0, i32 0)) #12, !dbg !4718
  %35 = tail call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([34 x i8], [34 x i8]* @.str.11, i32 0, i32 0)) #12, !dbg !4719
  br label %36

36:                                               ; preds = %33, %5, %31, %25, %11
  ret void, !dbg !4720
}

; Function Attrs: noinline nounwind optsize
define internal fastcc i32 @get_current_millisecond() unnamed_addr #0 !dbg !4721 {
  %1 = alloca i32, align 4
  %2 = bitcast i32* %1 to i8*, !dbg !4728
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %2) #14, !dbg !4728
  call void @llvm.dbg.value(metadata i32 0, metadata !4724, metadata !DIExpression()), !dbg !4729
  store i32 0, i32* %1, align 4, !dbg !4730
  call void @llvm.dbg.value(metadata i32* %1, metadata !4724, metadata !DIExpression(DW_OP_deref)), !dbg !4729
  %3 = call i32 @hal_gpt_get_free_run_count(i32 noundef 0, i32* noundef nonnull %1) #12, !dbg !4731
  call void @llvm.dbg.value(metadata i32 %3, metadata !4723, metadata !DIExpression()), !dbg !4729
  %4 = icmp eq i32 %3, 0, !dbg !4732
  br i1 %4, label %7, label %5, !dbg !4734

5:                                                ; preds = %0
  %6 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([52 x i8], [52 x i8]* @.str.12, i32 0, i32 0), i32 noundef %3) #12, !dbg !4735
  br label %16, !dbg !4737

7:                                                ; preds = %0
  %8 = load i32, i32* %1, align 4, !dbg !4738
  call void @llvm.dbg.value(metadata i32 %8, metadata !4724, metadata !DIExpression()), !dbg !4729
  %9 = lshr i32 %8, 15, !dbg !4739
  call void @llvm.dbg.value(metadata i32 %9, metadata !4726, metadata !DIExpression()), !dbg !4729
  %10 = and i32 %8, 32767, !dbg !4740
  %11 = mul nuw nsw i32 %10, 1000, !dbg !4741
  %12 = add nuw nsw i32 %11, 16384, !dbg !4742
  %13 = lshr i32 %12, 15, !dbg !4743
  call void @llvm.dbg.value(metadata i32 %13, metadata !4727, metadata !DIExpression()), !dbg !4729
  %14 = mul nuw nsw i32 %9, 1000, !dbg !4744
  %15 = add nuw nsw i32 %13, %14, !dbg !4745
  call void @llvm.dbg.value(metadata i32 %15, metadata !4725, metadata !DIExpression()), !dbg !4729
  br label %16, !dbg !4746

16:                                               ; preds = %7, %5
  %17 = phi i32 [ 0, %5 ], [ %15, %7 ], !dbg !4729
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %2) #14, !dbg !4747
  ret i32 %17, !dbg !4747
}

; Function Attrs: noinline nounwind optsize
define internal fastcc void @log_uart_init() unnamed_addr #0 !dbg !4748 {
  %1 = alloca %struct.hal_uart_config_t, align 4
  %2 = bitcast %struct.hal_uart_config_t* %1 to i8*, !dbg !4758
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %2) #14, !dbg !4758
  call void @llvm.dbg.declare(metadata %struct.hal_uart_config_t* %1, metadata !4750, metadata !DIExpression()), !dbg !4759
  %3 = tail call i32 @hal_pinmux_set_function(i32 noundef 0, i8 noundef zeroext 7) #12, !dbg !4760
  %4 = tail call i32 @hal_pinmux_set_function(i32 noundef 1, i8 noundef zeroext 7) #12, !dbg !4761
  %5 = tail call i32 @hal_pinmux_set_function(i32 noundef 2, i8 noundef zeroext 7) #12, !dbg !4762
  %6 = tail call i32 @hal_pinmux_set_function(i32 noundef 3, i8 noundef zeroext 7) #12, !dbg !4763
  %7 = getelementptr inbounds %struct.hal_uart_config_t, %struct.hal_uart_config_t* %1, i32 0, i32 0, !dbg !4764
  store i32 9, i32* %7, align 4, !dbg !4765
  %8 = getelementptr inbounds %struct.hal_uart_config_t, %struct.hal_uart_config_t* %1, i32 0, i32 1, !dbg !4766
  store i32 3, i32* %8, align 4, !dbg !4767
  %9 = getelementptr inbounds %struct.hal_uart_config_t, %struct.hal_uart_config_t* %1, i32 0, i32 2, !dbg !4768
  store i32 0, i32* %9, align 4, !dbg !4769
  %10 = getelementptr inbounds %struct.hal_uart_config_t, %struct.hal_uart_config_t* %1, i32 0, i32 3, !dbg !4770
  store i32 0, i32* %10, align 4, !dbg !4771
  %11 = call i32 @hal_uart_init(i32 noundef 0, %struct.hal_uart_config_t* noundef nonnull %1) #12, !dbg !4772
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %2) #14, !dbg !4773
  ret void, !dbg !4773
}

; Function Attrs: nofree noinline norecurse nounwind optsize
define dso_local i32 @SysTick_Set(i32 noundef %0) local_unnamed_addr #3 !dbg !4774 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !4776, metadata !DIExpression()), !dbg !4778
  %2 = add i32 %0, -1, !dbg !4779
  %3 = icmp ugt i32 %2, 16777215, !dbg !4781
  br i1 %3, label %8, label %4, !dbg !4782

4:                                                ; preds = %1
  %5 = load volatile i32, i32* inttoptr (i32 -536813552 to i32*), align 16, !dbg !4783
  call void @llvm.dbg.value(metadata i32 %5, metadata !4777, metadata !DIExpression()), !dbg !4778
  %6 = load volatile i32, i32* inttoptr (i32 -536813552 to i32*), align 16, !dbg !4784
  %7 = and i32 %6, -4, !dbg !4784
  store volatile i32 %7, i32* inttoptr (i32 -536813552 to i32*), align 16, !dbg !4784
  store volatile i32 %2, i32* inttoptr (i32 -536813548 to i32*), align 4, !dbg !4785
  store volatile i32 0, i32* inttoptr (i32 -536813544 to i32*), align 8, !dbg !4786
  store volatile i32 %5, i32* inttoptr (i32 -536813552 to i32*), align 16, !dbg !4787
  br label %8, !dbg !4788

8:                                                ; preds = %1, %4
  %9 = phi i32 [ 0, %4 ], [ 1, %1 ], !dbg !4778
  ret i32 %9, !dbg !4789
}

; Function Attrs: nofree noinline norecurse nounwind optsize
define dso_local void @SysInitStatus_Set() local_unnamed_addr #3 !dbg !4790 {
  store volatile i32 1, i32* @System_Initialize_Done, align 4, !dbg !4791
  ret void, !dbg !4792
}

; Function Attrs: mustprogress nofree noinline norecurse nounwind optsize willreturn
define dso_local i32 @SysInitStatus_Query() local_unnamed_addr #4 !dbg !4793 {
  %1 = load volatile i32, i32* @System_Initialize_Done, align 4, !dbg !4794
  ret i32 %1, !dbg !4795
}

; Function Attrs: noinline nounwind optsize
define dso_local void @SystemCoreClockUpdate() local_unnamed_addr #0 !dbg !4796 {
  %1 = tail call i32 @top_mcu_freq_get() #12, !dbg !4797
  store i32 %1, i32* @SystemCoreClock, align 4, !dbg !4798
  ret void, !dbg !4799
}

; Function Attrs: nofree noinline norecurse nounwind optsize
define dso_local void @SystemInit() local_unnamed_addr #3 !dbg !4800 {
  %1 = load volatile i32, i32* inttoptr (i32 -536810104 to i32*), align 8, !dbg !4801
  %2 = or i32 %1, 15728640, !dbg !4801
  store volatile i32 %2, i32* inttoptr (i32 -536810104 to i32*), align 8, !dbg !4801
  store volatile i32 536870912, i32* inttoptr (i32 -536810232 to i32*), align 8, !dbg !4802
  %3 = load volatile i32, i32* inttoptr (i32 -536810204 to i32*), align 4, !dbg !4803
  %4 = or i32 %3, 458752, !dbg !4803
  store volatile i32 %4, i32* inttoptr (i32 -536810204 to i32*), align 4, !dbg !4803
  ret void, !dbg !4804
}

; Function Attrs: nofree noinline norecurse nounwind optsize
define dso_local void @CachePreInit() local_unnamed_addr #3 !dbg !4805 {
  store volatile i32 0, i32* inttoptr (i32 22216704 to i32*), align 65536, !dbg !4806
  store volatile i32 19, i32* inttoptr (i32 22216708 to i32*), align 4, !dbg !4807
  store volatile i32 3, i32* inttoptr (i32 22216708 to i32*), align 4, !dbg !4808
  store volatile i32 268931328, i32* inttoptr (i32 22282240 to i32*), align 262144, !dbg !4809
  store volatile i32 269713408, i32* inttoptr (i32 22282304 to i32*), align 64, !dbg !4810
  store volatile i32 1, i32* inttoptr (i32 22216748 to i32*), align 4, !dbg !4811
  store volatile i32 781, i32* inttoptr (i32 22216704 to i32*), align 65536, !dbg !4812
  ret void, !dbg !4813
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize readnone willreturn
define dso_local i32 @_close(i32 noundef %0) local_unnamed_addr #9 !dbg !4814 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !4816, metadata !DIExpression()), !dbg !4817
  ret i32 0, !dbg !4818
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize readnone willreturn
define dso_local i32 @_fstat(i32 noundef %0, %struct.stat* nocapture noundef readnone %1) local_unnamed_addr #9 !dbg !4819 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !4869, metadata !DIExpression()), !dbg !4871
  call void @llvm.dbg.value(metadata %struct.stat* %1, metadata !4870, metadata !DIExpression()), !dbg !4871
  ret i32 0, !dbg !4872
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize readnone willreturn
define dso_local i32 @_isatty(i32 noundef %0) local_unnamed_addr #9 !dbg !4873 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !4875, metadata !DIExpression()), !dbg !4876
  ret i32 1, !dbg !4877
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize readnone willreturn
define dso_local i32 @_lseek(i32 noundef %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #9 !dbg !4878 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !4882, metadata !DIExpression()), !dbg !4885
  call void @llvm.dbg.value(metadata i32 %1, metadata !4883, metadata !DIExpression()), !dbg !4885
  call void @llvm.dbg.value(metadata i32 %2, metadata !4884, metadata !DIExpression()), !dbg !4885
  ret i32 0, !dbg !4886
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize readnone willreturn
define dso_local i32 @_open(i8* nocapture noundef readnone %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #9 !dbg !4887 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !4891, metadata !DIExpression()), !dbg !4894
  call void @llvm.dbg.value(metadata i32 %1, metadata !4892, metadata !DIExpression()), !dbg !4894
  call void @llvm.dbg.value(metadata i32 %2, metadata !4893, metadata !DIExpression()), !dbg !4894
  ret i32 -1, !dbg !4895
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize readnone willreturn
define dso_local i32 @_read(i32 noundef %0, i8* nocapture noundef readnone %1, i32 noundef %2) local_unnamed_addr #9 !dbg !4896 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !4900, metadata !DIExpression()), !dbg !4903
  call void @llvm.dbg.value(metadata i8* %1, metadata !4901, metadata !DIExpression()), !dbg !4903
  call void @llvm.dbg.value(metadata i32 %2, metadata !4902, metadata !DIExpression()), !dbg !4903
  ret i32 0, !dbg !4904
}

; Function Attrs: noinline nounwind optsize
define dso_local i32 @_write(i32 noundef %0, i8* nocapture noundef readonly %1, i32 noundef returned %2) local_unnamed_addr #0 !dbg !4905 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !4907, metadata !DIExpression()), !dbg !4911
  call void @llvm.dbg.value(metadata i8* %1, metadata !4908, metadata !DIExpression()), !dbg !4911
  call void @llvm.dbg.value(metadata i32 %2, metadata !4909, metadata !DIExpression()), !dbg !4911
  call void @llvm.dbg.value(metadata i32 0, metadata !4910, metadata !DIExpression()), !dbg !4911
  %4 = icmp sgt i32 %2, 0, !dbg !4912
  br i1 %4, label %5, label %14, !dbg !4915

5:                                                ; preds = %3, %5
  %6 = phi i32 [ %12, %5 ], [ 0, %3 ]
  %7 = phi i8* [ %8, %5 ], [ %1, %3 ]
  call void @llvm.dbg.value(metadata i32 %6, metadata !4910, metadata !DIExpression()), !dbg !4911
  call void @llvm.dbg.value(metadata i8* %7, metadata !4908, metadata !DIExpression()), !dbg !4911
  %8 = getelementptr inbounds i8, i8* %7, i32 1, !dbg !4916
  call void @llvm.dbg.value(metadata i8* %8, metadata !4908, metadata !DIExpression()), !dbg !4911
  %9 = load i8, i8* %7, align 1, !dbg !4918
  %10 = zext i8 %9 to i32, !dbg !4918
  %11 = tail call i32 @__io_putchar(i32 noundef %10) #12, !dbg !4919
  %12 = add nuw nsw i32 %6, 1, !dbg !4920
  call void @llvm.dbg.value(metadata i32 %12, metadata !4910, metadata !DIExpression()), !dbg !4911
  %13 = icmp eq i32 %12, %2, !dbg !4912
  br i1 %13, label %14, label %5, !dbg !4915, !llvm.loop !4921

14:                                               ; preds = %5, %3
  ret i32 %2, !dbg !4923
}

; Function Attrs: noinline nounwind optsize
define dso_local i8* @_sbrk_r(%struct._reent* nocapture noundef readnone %0, i32 noundef %1) local_unnamed_addr #0 !dbg !530 {
  call void @llvm.dbg.value(metadata %struct._reent* %0, metadata !733, metadata !DIExpression()), !dbg !4924
  call void @llvm.dbg.value(metadata i32 %1, metadata !734, metadata !DIExpression()), !dbg !4924
  %3 = tail call i8* asm sideeffect "MRS $0, msp\0A", "=r"() #14, !dbg !4925, !srcloc !4926
  call void @llvm.dbg.value(metadata i8* %3, metadata !736, metadata !DIExpression()), !dbg !4924
  %4 = load i8*, i8** @_sbrk_r.heap_end, align 4, !dbg !4927
  %5 = icmp eq i8* %4, null, !dbg !4929
  %6 = select i1 %5, i8* @end, i8* %4, !dbg !4930
  call void @llvm.dbg.value(metadata i8* %6, metadata !735, metadata !DIExpression()), !dbg !4924
  %7 = getelementptr inbounds i8, i8* %6, i32 %1, !dbg !4931
  %8 = icmp ult i8* %3, %7, !dbg !4933
  %9 = xor i1 %8, true, !dbg !4934
  %10 = or i1 %5, %9, !dbg !4934
  br i1 %10, label %11, label %13, !dbg !4934

11:                                               ; preds = %2
  %12 = select i1 %8, i8* %6, i8* %7, !dbg !4935
  store i8* %12, i8** @_sbrk_r.heap_end, align 4, !dbg !4934
  br label %13, !dbg !4934

13:                                               ; preds = %2, %11
  %14 = select i1 %8, i8* inttoptr (i32 -1 to i8*), i8* %6, !dbg !4935
  ret i8* %14, !dbg !4934
}

; Function Attrs: noinline noreturn nounwind optsize
define dso_local void @_exit(i32 noundef %0) local_unnamed_addr #11 !dbg !4936 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !4938, metadata !DIExpression()), !dbg !4939
  %2 = tail call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.30, i32 0, i32 0)) #12, !dbg !4940
  br label %3, !dbg !4941

3:                                                ; preds = %1, %3
  br label %3, !dbg !4941, !llvm.loop !4942
}

; Function Attrs: noinline nounwind optsize
define dso_local i32 @_kill(i32 noundef %0, i32 noundef %1) local_unnamed_addr #0 !dbg !4944 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !4948, metadata !DIExpression()), !dbg !4950
  call void @llvm.dbg.value(metadata i32 %1, metadata !4949, metadata !DIExpression()), !dbg !4950
  %3 = tail call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1.31, i32 0, i32 0), i32 noundef %1) #12, !dbg !4951
  ret i32 -1, !dbg !4952
}

; Function Attrs: noinline nounwind optsize
define dso_local i32 @_getpid() local_unnamed_addr #0 !dbg !4953 {
  %1 = tail call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2.32, i32 0, i32 0)) #12, !dbg !4958
  ret i32 0, !dbg !4959
}

attributes #0 = { noinline nounwind optsize "frame-pointer"="all" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="cortex-m4" "target-features"="+armv7e-m,+dsp,+fp16,+hwdiv,+strict-align,+thumb-mode,+vfp2sp,+vfp3d16sp,+vfp4d16sp,-aes,-bf16,-cdecp0,-cdecp1,-cdecp2,-cdecp3,-cdecp4,-cdecp5,-cdecp6,-cdecp7,-crc,-crypto,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16fml,-fp64,-fullfp16,-hwdiv-arm,-i8mm,-lob,-mve,-mve.fp,-neon,-pacbti,-ras,-sb,-sha2,-vfp2,-vfp3,-vfp3d16,-vfp3sp,-vfp4,-vfp4d16,-vfp4sp" }
attributes #1 = { nofree nosync nounwind readnone speculatable willreturn }
attributes #2 = { optsize "frame-pointer"="all" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="cortex-m4" "target-features"="+armv7e-m,+dsp,+fp16,+hwdiv,+strict-align,+thumb-mode,+vfp2sp,+vfp3d16sp,+vfp4d16sp,-aes,-bf16,-cdecp0,-cdecp1,-cdecp2,-cdecp3,-cdecp4,-cdecp5,-cdecp6,-cdecp7,-crc,-crypto,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16fml,-fp64,-fullfp16,-hwdiv-arm,-i8mm,-lob,-mve,-mve.fp,-neon,-pacbti,-ras,-sb,-sha2,-vfp2,-vfp3,-vfp3d16,-vfp3sp,-vfp4,-vfp4d16,-vfp4sp" }
attributes #3 = { nofree noinline norecurse nounwind optsize "frame-pointer"="all" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="cortex-m4" "target-features"="+armv7e-m,+dsp,+fp16,+hwdiv,+strict-align,+thumb-mode,+vfp2sp,+vfp3d16sp,+vfp4d16sp,-aes,-bf16,-cdecp0,-cdecp1,-cdecp2,-cdecp3,-cdecp4,-cdecp5,-cdecp6,-cdecp7,-crc,-crypto,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16fml,-fp64,-fullfp16,-hwdiv-arm,-i8mm,-lob,-mve,-mve.fp,-neon,-pacbti,-ras,-sb,-sha2,-vfp2,-vfp3,-vfp3d16,-vfp3sp,-vfp4,-vfp4d16,-vfp4sp" }
attributes #4 = { mustprogress nofree noinline norecurse nounwind optsize willreturn "frame-pointer"="all" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="cortex-m4" "target-features"="+armv7e-m,+dsp,+fp16,+hwdiv,+strict-align,+thumb-mode,+vfp2sp,+vfp3d16sp,+vfp4d16sp,-aes,-bf16,-cdecp0,-cdecp1,-cdecp2,-cdecp3,-cdecp4,-cdecp5,-cdecp6,-cdecp7,-crc,-crypto,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16fml,-fp64,-fullfp16,-hwdiv-arm,-i8mm,-lob,-mve,-mve.fp,-neon,-pacbti,-ras,-sb,-sha2,-vfp2,-vfp3,-vfp3d16,-vfp3sp,-vfp4,-vfp4d16,-vfp4sp" }
attributes #5 = { mustprogress nofree noinline norecurse nosync nounwind optsize readonly willreturn "frame-pointer"="all" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="cortex-m4" "target-features"="+armv7e-m,+dsp,+fp16,+hwdiv,+strict-align,+thumb-mode,+vfp2sp,+vfp3d16sp,+vfp4d16sp,-aes,-bf16,-cdecp0,-cdecp1,-cdecp2,-cdecp3,-cdecp4,-cdecp5,-cdecp6,-cdecp7,-crc,-crypto,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16fml,-fp64,-fullfp16,-hwdiv-arm,-i8mm,-lob,-mve,-mve.fp,-neon,-pacbti,-ras,-sb,-sha2,-vfp2,-vfp3,-vfp3d16,-vfp3sp,-vfp4,-vfp4d16,-vfp4sp" }
attributes #6 = { nofree noinline nounwind optsize "frame-pointer"="all" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="cortex-m4" "target-features"="+armv7e-m,+dsp,+fp16,+hwdiv,+strict-align,+thumb-mode,+vfp2sp,+vfp3d16sp,+vfp4d16sp,-aes,-bf16,-cdecp0,-cdecp1,-cdecp2,-cdecp3,-cdecp4,-cdecp5,-cdecp6,-cdecp7,-crc,-crypto,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16fml,-fp64,-fullfp16,-hwdiv-arm,-i8mm,-lob,-mve,-mve.fp,-neon,-pacbti,-ras,-sb,-sha2,-vfp2,-vfp3,-vfp3d16,-vfp3sp,-vfp4,-vfp4d16,-vfp4sp" }
attributes #7 = { argmemonly nofree nosync nounwind willreturn }
attributes #8 = { nofree nosync nounwind willreturn }
attributes #9 = { mustprogress nofree noinline norecurse nosync nounwind optsize readnone willreturn "frame-pointer"="all" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="cortex-m4" "target-features"="+armv7e-m,+dsp,+fp16,+hwdiv,+strict-align,+thumb-mode,+vfp2sp,+vfp3d16sp,+vfp4d16sp,-aes,-bf16,-cdecp0,-cdecp1,-cdecp2,-cdecp3,-cdecp4,-cdecp5,-cdecp6,-cdecp7,-crc,-crypto,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16fml,-fp64,-fullfp16,-hwdiv-arm,-i8mm,-lob,-mve,-mve.fp,-neon,-pacbti,-ras,-sb,-sha2,-vfp2,-vfp3,-vfp3d16,-vfp3sp,-vfp4,-vfp4d16,-vfp4sp" }
attributes #10 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn writeonly "frame-pointer"="all" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="cortex-m4" "target-features"="+armv7e-m,+dsp,+fp16,+hwdiv,+strict-align,+thumb-mode,+vfp2sp,+vfp3d16sp,+vfp4d16sp,-aes,-bf16,-cdecp0,-cdecp1,-cdecp2,-cdecp3,-cdecp4,-cdecp5,-cdecp6,-cdecp7,-crc,-crypto,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16fml,-fp64,-fullfp16,-hwdiv-arm,-i8mm,-lob,-mve,-mve.fp,-neon,-pacbti,-ras,-sb,-sha2,-vfp2,-vfp3,-vfp3d16,-vfp3sp,-vfp4,-vfp4d16,-vfp4sp" }
attributes #11 = { noinline noreturn nounwind optsize "frame-pointer"="all" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="cortex-m4" "target-features"="+armv7e-m,+dsp,+fp16,+hwdiv,+strict-align,+thumb-mode,+vfp2sp,+vfp3d16sp,+vfp4d16sp,-aes,-bf16,-cdecp0,-cdecp1,-cdecp2,-cdecp3,-cdecp4,-cdecp5,-cdecp6,-cdecp7,-crc,-crypto,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16fml,-fp64,-fullfp16,-hwdiv-arm,-i8mm,-lob,-mve,-mve.fp,-neon,-pacbti,-ras,-sb,-sha2,-vfp2,-vfp3,-vfp3d16,-vfp3sp,-vfp4,-vfp4d16,-vfp4sp" }
attributes #12 = { nobuiltin nounwind optsize "no-builtins" }
attributes #13 = { nobuiltin optsize "no-builtins" }
attributes #14 = { nounwind }

!llvm.dbg.cu = !{!2, !753, !762, !843, !888, !922, !85, !102, !925, !140, !927, !245, !299, !409, !460, !728, !739}
!llvm.ident = !{!967, !967, !967, !967, !967, !967, !967, !967, !967, !967, !967, !967, !967, !967, !967, !967, !967}
!llvm.module.flags = !{!968, !969, !970, !971, !972, !973, !974, !975, !976}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "g_u4ClkCnt1ms", scope: !2, file: !3, line: 71, type: !79, isLocal: false, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C99, file: !3, producer: "Ubuntu clang version 14.0.6", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !57, globals: !62, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "../../../../../driver/chip/mt7687/src/common/gpt.c", directory: "/home/mjshen/RTOSExploration/Embedded-GUI-for-MT2523/project/mt7687_hdk/hal_examples/gpt_interrupt_repeat_mode/GCC")
!4 = !{!5, !11}
!5 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !6, line: 121, baseType: !7, size: 32, elements: !8)
!6 = !DIFile(filename: "../../../../../driver/chip/mt7687/inc/type_def.h", directory: "/home/mjshen/RTOSExploration/Embedded-GUI-for-MT2523/project/mt7687_hdk/hal_examples/gpt_interrupt_repeat_mode/GCC")
!7 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!8 = !{!9, !10}
!9 = !DIEnumerator(name: "KAL_FALSE", value: 0)
!10 = !DIEnumerator(name: "KAL_TRUE", value: 1)
!11 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "IRQn", file: !12, line: 47, baseType: !13, size: 32, elements: !14)
!12 = !DIFile(filename: "../../../../../driver/CMSIS/Device/MTK/mt7687/Include/mt7687.h", directory: "/home/mjshen/RTOSExploration/Embedded-GUI-for-MT2523/project/mt7687_hdk/hal_examples/gpt_interrupt_repeat_mode/GCC")
!13 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!14 = !{!15, !16, !17, !18, !19, !20, !21, !22, !23, !24, !25, !26, !27, !28, !29, !30, !31, !32, !33, !34, !35, !36, !37, !38, !39, !40, !41, !42, !43, !44, !45, !46, !47, !48, !49, !50, !51, !52, !53, !54, !55, !56}
!15 = !DIEnumerator(name: "Reset_IRQn", value: -15)
!16 = !DIEnumerator(name: "NonMaskableInt_IRQn", value: -14)
!17 = !DIEnumerator(name: "HardFault_IRQn", value: -13)
!18 = !DIEnumerator(name: "MemoryManagement_IRQn", value: -12)
!19 = !DIEnumerator(name: "BusFault_IRQn", value: -11)
!20 = !DIEnumerator(name: "UsageFault_IRQn", value: -10)
!21 = !DIEnumerator(name: "SVC_IRQn", value: -5)
!22 = !DIEnumerator(name: "DebugMonitor_IRQn", value: -4)
!23 = !DIEnumerator(name: "PendSV_IRQn", value: -2)
!24 = !DIEnumerator(name: "SysTick_IRQn", value: -1)
!25 = !DIEnumerator(name: "CM4_UART1_IRQ", value: 0)
!26 = !DIEnumerator(name: "CM4_DMA_IRQ", value: 1)
!27 = !DIEnumerator(name: "CM4_HIF_IRQ", value: 2)
!28 = !DIEnumerator(name: "CM4_I2C1_IRQ", value: 3)
!29 = !DIEnumerator(name: "CM4_I2C2_IRQ", value: 4)
!30 = !DIEnumerator(name: "CM4_UART2_IRQ", value: 5)
!31 = !DIEnumerator(name: "CM4_MTK_CRYPTO_IRQ", value: 6)
!32 = !DIEnumerator(name: "CM4_SF_IRQ", value: 7)
!33 = !DIEnumerator(name: "CM4_EINT_IRQ", value: 8)
!34 = !DIEnumerator(name: "CM4_BTIF_IRQ", value: 9)
!35 = !DIEnumerator(name: "CM4_WDT_IRQ", value: 10)
!36 = !DIEnumerator(name: "CM4_AHB_MON_IRQ", value: 11)
!37 = !DIEnumerator(name: "CM4_SPI_SLAVE_IRQ", value: 12)
!38 = !DIEnumerator(name: "CM4_N9_WDT_IRQ", value: 13)
!39 = !DIEnumerator(name: "CM4_ADC_IRQ", value: 14)
!40 = !DIEnumerator(name: "CM4_IRDA_TX_IRQ", value: 15)
!41 = !DIEnumerator(name: "CM4_IRDA_RX_IRQ", value: 16)
!42 = !DIEnumerator(name: "CM4_USB_VBUS_ON_IRQ", value: 17)
!43 = !DIEnumerator(name: "CM4_USB_VBUS_OFF_IRQ", value: 18)
!44 = !DIEnumerator(name: "CM4_SPIS_CS_WAKEUP_IRQ", value: 19)
!45 = !DIEnumerator(name: "CM4_GPT3_IRQ", value: 20)
!46 = !DIEnumerator(name: "CM4_IRQ21_IRQ", value: 21)
!47 = !DIEnumerator(name: "CM4_AUDIO_IRQ", value: 22)
!48 = !DIEnumerator(name: "CM4_HIF_DMA_IRQ", value: 23)
!49 = !DIEnumerator(name: "CM4_GPT_IRQ", value: 24)
!50 = !DIEnumerator(name: "CM4_ADC_COMP_IRQ", value: 25)
!51 = !DIEnumerator(name: "CM4_AUDIO_WAKE_IRQ", value: 26)
!52 = !DIEnumerator(name: "CM4_SPIM_IRQ", value: 27)
!53 = !DIEnumerator(name: "CM4_USB_IRQ", value: 28)
!54 = !DIEnumerator(name: "CM4_UDMA_IRQ", value: 29)
!55 = !DIEnumerator(name: "CM4_TRNG_IRQ", value: 30)
!56 = !DIEnumerator(name: "IRQ_NUMBER_MAX", value: 96)
!57 = !{!58, !61}
!58 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !59, size: 32)
!59 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !60)
!60 = !DIDerivedType(tag: DW_TAG_typedef, name: "kal_uint32", file: !6, line: 116, baseType: !7)
!61 = !DIDerivedType(tag: DW_TAG_typedef, name: "IRQn_Type", file: !12, line: 95, baseType: !11)
!62 = !{!0, !63}
!63 = !DIGlobalVariableExpression(var: !64, expr: !DIExpression())
!64 = distinct !DIGlobalVariable(name: "GPTTimer", scope: !2, file: !3, line: 67, type: !65, isLocal: true, isDefinition: true)
!65 = !DIDerivedType(tag: DW_TAG_typedef, name: "GPTStruct", file: !66, line: 111, baseType: !67)
!66 = !DIFile(filename: "../../../../../driver/chip/mt7687/src/common/include/gpt.h", directory: "/home/mjshen/RTOSExploration/Embedded-GUI-for-MT2523/project/mt7687_hdk/hal_examples/gpt_interrupt_repeat_mode/GCC")
!67 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !66, line: 109, size: 96, elements: !68)
!68 = !{!69}
!69 = !DIDerivedType(tag: DW_TAG_member, name: "GPT_FUNC", scope: !67, file: !66, line: 110, baseType: !70, size: 96)
!70 = !DIDerivedType(tag: DW_TAG_typedef, name: "gpt_func", file: !66, line: 106, baseType: !71)
!71 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !66, line: 102, size: 96, elements: !72)
!72 = !{!73, !77, !78}
!73 = !DIDerivedType(tag: DW_TAG_member, name: "gpt0_func", scope: !71, file: !66, line: 103, baseType: !74, size: 32)
!74 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !75, size: 32)
!75 = !DISubroutineType(types: !76)
!76 = !{null}
!77 = !DIDerivedType(tag: DW_TAG_member, name: "gpt1_func", scope: !71, file: !66, line: 104, baseType: !74, size: 32, offset: 32)
!78 = !DIDerivedType(tag: DW_TAG_member, name: "gpt3_func", scope: !71, file: !66, line: 105, baseType: !74, size: 32, offset: 64)
!79 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !80)
!80 = !DIDerivedType(tag: DW_TAG_typedef, name: "UINT32", file: !6, line: 62, baseType: !7)
!81 = !DIGlobalVariableExpression(var: !64, expr: !DIExpression(DW_OP_LLVM_fragment, 0, 32))
!82 = !DIGlobalVariableExpression(var: !64, expr: !DIExpression(DW_OP_LLVM_fragment, 32, 32))
!83 = !DIGlobalVariableExpression(var: !84, expr: !DIExpression())
!84 = distinct !DIGlobalVariable(name: "gXtalFreq", scope: !85, file: !86, line: 43, type: !92, isLocal: true, isDefinition: true)
!85 = distinct !DICompileUnit(language: DW_LANG_C99, file: !86, producer: "Ubuntu clang version 14.0.6", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !87, globals: !97, splitDebugInlining: false, nameTableKind: None)
!86 = !DIFile(filename: "../../../../../driver/chip/mt7687/src/common/top.c", directory: "/home/mjshen/RTOSExploration/Embedded-GUI-for-MT2523/project/mt7687_hdk/hal_examples/gpt_interrupt_repeat_mode/GCC")
!87 = !{!88, !80, !90, !96}
!88 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !89, size: 32)
!89 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !7)
!90 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !91, size: 32)
!91 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !92)
!92 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint32_t", file: !93, line: 48, baseType: !94)
!93 = !DIFile(filename: "gcc-arm-none-eabi-10.3-2021.10/bin/../lib/gcc/arm-none-eabi/10.3.1/../../../../arm-none-eabi/include/sys/_stdint.h", directory: "/home/mjshen/RTOSExploration")
!94 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint32_t", file: !95, line: 79, baseType: !7)
!95 = !DIFile(filename: "gcc-arm-none-eabi-10.3-2021.10/bin/../lib/gcc/arm-none-eabi/10.3.1/../../../../arm-none-eabi/include/machine/_default_types.h", directory: "/home/mjshen/RTOSExploration")
!96 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !79, size: 32)
!97 = !{!83, !98}
!98 = !DIGlobalVariableExpression(var: !99, expr: !DIExpression())
!99 = distinct !DIGlobalVariable(name: "gCpuFrequency", scope: !85, file: !86, line: 44, type: !92, isLocal: true, isDefinition: true)
!100 = !DIGlobalVariableExpression(var: !101, expr: !DIExpression())
!101 = distinct !DIGlobalVariable(name: "gUartClkFreq", scope: !102, file: !103, line: 54, type: !92, isLocal: false, isDefinition: true)
!102 = distinct !DICompileUnit(language: DW_LANG_C99, file: !103, producer: "Ubuntu clang version 14.0.6", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !104, retainedTypes: !128, globals: !137, splitDebugInlining: false, nameTableKind: None)
!103 = !DIFile(filename: "../../../../../driver/chip/mt7687/src/common/uart.c", directory: "/home/mjshen/RTOSExploration/Embedded-GUI-for-MT2523/project/mt7687_hdk/hal_examples/gpt_interrupt_repeat_mode/GCC")
!104 = !{!105, !111}
!105 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !106, line: 71, baseType: !7, size: 32, elements: !107)
!106 = !DIFile(filename: "../../../../../driver/chip/mt7687/src/common/include/uart.h", directory: "/home/mjshen/RTOSExploration/Embedded-GUI-for-MT2523/project/mt7687_hdk/hal_examples/gpt_interrupt_repeat_mode/GCC")
!107 = !{!108, !109, !110}
!108 = !DIEnumerator(name: "UART_PORT0", value: 0)
!109 = !DIEnumerator(name: "UART_PORT1", value: 1)
!110 = !DIEnumerator(name: "UART_MAX_PORT", value: 2)
!111 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !112, line: 129, baseType: !7, size: 32, elements: !113)
!112 = !DIFile(filename: "../../../../../driver/chip/mt7687/inc/dma_sw.h", directory: "/home/mjshen/RTOSExploration/Embedded-GUI-for-MT2523/project/mt7687_hdk/hal_examples/gpt_interrupt_repeat_mode/GCC")
!113 = !{!114, !115, !116, !117, !118, !119, !120, !121, !122, !123, !124, !125, !126, !127}
!114 = !DIEnumerator(name: "VDMA_I2S_TX_CH", value: 12)
!115 = !DIEnumerator(name: "VDMA_I2S_RX_CH", value: 13)
!116 = !DIEnumerator(name: "VDMA_UART1TX_CH", value: 14)
!117 = !DIEnumerator(name: "VDMA_UART1RX_CH", value: 15)
!118 = !DIEnumerator(name: "VDMA_UART2TX_CH", value: 16)
!119 = !DIEnumerator(name: "VDMA_UART2RX_CH", value: 17)
!120 = !DIEnumerator(name: "VDMA_BTIF_TX_CH", value: 18)
!121 = !DIEnumerator(name: "VDMA_BTIF_RX_CH", value: 19)
!122 = !DIEnumerator(name: "VDMA_USB_EP2O_CH", value: 20)
!123 = !DIEnumerator(name: "VDMA_USB_EP3I_CH", value: 21)
!124 = !DIEnumerator(name: "VDMA_USB_EP3O_CH", value: 22)
!125 = !DIEnumerator(name: "VDMA_USB_EP4I_CH", value: 23)
!126 = !DIEnumerator(name: "VDMA_USB_EP4O_CH", value: 24)
!127 = !DIEnumerator(name: "VDMA_ADC_RX_CH", value: 25)
!128 = !{!88, !92, !129, !131, !133, !135, !80}
!129 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !130, size: 32)
!130 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !131)
!131 = !DIDerivedType(tag: DW_TAG_typedef, name: "kal_uint16", file: !6, line: 113, baseType: !132)
!132 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!133 = !DIDerivedType(tag: DW_TAG_typedef, name: "UINT8", file: !6, line: 59, baseType: !134)
!134 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!135 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !136, size: 32)
!136 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !133)
!137 = !{!100}
!138 = !DIGlobalVariableExpression(var: !139, expr: !DIExpression())
!139 = distinct !DIGlobalVariable(name: "nvic_function_table", scope: !140, file: !141, line: 53, type: !232, isLocal: false, isDefinition: true)
!140 = distinct !DICompileUnit(language: DW_LANG_C99, file: !141, producer: "Ubuntu clang version 14.0.6", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !142, retainedTypes: !151, globals: !231, splitDebugInlining: false, nameTableKind: None)
!141 = !DIFile(filename: "../../../../../driver/chip/mt7687/src/hal_nvic.c", directory: "/home/mjshen/RTOSExploration/Embedded-GUI-for-MT2523/project/mt7687_hdk/hal_examples/gpt_interrupt_repeat_mode/GCC")
!142 = !{!143, !11}
!143 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !144, line: 152, baseType: !13, size: 32, elements: !145)
!144 = !DIFile(filename: "../../../../../driver/chip/inc/hal_nvic.h", directory: "/home/mjshen/RTOSExploration/Embedded-GUI-for-MT2523/project/mt7687_hdk/hal_examples/gpt_interrupt_repeat_mode/GCC")
!145 = !{!146, !147, !148, !149, !150}
!146 = !DIEnumerator(name: "HAL_NVIC_STATUS_ERROR_NO_ISR", value: -4)
!147 = !DIEnumerator(name: "HAL_NVIC_STATUS_ERROR_IRQ_NUMBER", value: -3)
!148 = !DIEnumerator(name: "HAL_NVIC_STATUS_INVALID_PARAMETER", value: -2)
!149 = !DIEnumerator(name: "HAL_NVIC_STATUS_ERROR", value: -1)
!150 = !DIEnumerator(name: "HAL_NVIC_STATUS_OK", value: 0)
!151 = !{!152, !153, !92, !154, !156, !192}
!152 = !DIDerivedType(tag: DW_TAG_typedef, name: "hal_nvic_irq_t", file: !12, line: 97, baseType: !61)
!153 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 32)
!154 = !DIDerivedType(tag: DW_TAG_typedef, name: "int32_t", file: !93, line: 44, baseType: !155)
!155 = !DIDerivedType(tag: DW_TAG_typedef, name: "__int32_t", file: !95, line: 77, baseType: !13)
!156 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !157, size: 32)
!157 = !DIDerivedType(tag: DW_TAG_typedef, name: "NVIC_Type", file: !158, line: 378, baseType: !159)
!158 = !DIFile(filename: "../../../../../driver/CMSIS/Include/core_cm4.h", directory: "/home/mjshen/RTOSExploration/Embedded-GUI-for-MT2523/project/mt7687_hdk/hal_examples/gpt_interrupt_repeat_mode/GCC")
!159 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !158, line: 363, size: 28704, elements: !160)
!160 = !{!161, !165, !169, !170, !171, !172, !173, !174, !175, !176, !180, !187, !191}
!161 = !DIDerivedType(tag: DW_TAG_member, name: "ISER", scope: !159, file: !158, line: 365, baseType: !162, size: 256)
!162 = !DICompositeType(tag: DW_TAG_array_type, baseType: !91, size: 256, elements: !163)
!163 = !{!164}
!164 = !DISubrange(count: 8)
!165 = !DIDerivedType(tag: DW_TAG_member, name: "RESERVED0", scope: !159, file: !158, line: 366, baseType: !166, size: 768, offset: 256)
!166 = !DICompositeType(tag: DW_TAG_array_type, baseType: !92, size: 768, elements: !167)
!167 = !{!168}
!168 = !DISubrange(count: 24)
!169 = !DIDerivedType(tag: DW_TAG_member, name: "ICER", scope: !159, file: !158, line: 367, baseType: !162, size: 256, offset: 1024)
!170 = !DIDerivedType(tag: DW_TAG_member, name: "RSERVED1", scope: !159, file: !158, line: 368, baseType: !166, size: 768, offset: 1280)
!171 = !DIDerivedType(tag: DW_TAG_member, name: "ISPR", scope: !159, file: !158, line: 369, baseType: !162, size: 256, offset: 2048)
!172 = !DIDerivedType(tag: DW_TAG_member, name: "RESERVED2", scope: !159, file: !158, line: 370, baseType: !166, size: 768, offset: 2304)
!173 = !DIDerivedType(tag: DW_TAG_member, name: "ICPR", scope: !159, file: !158, line: 371, baseType: !162, size: 256, offset: 3072)
!174 = !DIDerivedType(tag: DW_TAG_member, name: "RESERVED3", scope: !159, file: !158, line: 372, baseType: !166, size: 768, offset: 3328)
!175 = !DIDerivedType(tag: DW_TAG_member, name: "IABR", scope: !159, file: !158, line: 373, baseType: !162, size: 256, offset: 4096)
!176 = !DIDerivedType(tag: DW_TAG_member, name: "RESERVED4", scope: !159, file: !158, line: 374, baseType: !177, size: 1792, offset: 4352)
!177 = !DICompositeType(tag: DW_TAG_array_type, baseType: !92, size: 1792, elements: !178)
!178 = !{!179}
!179 = !DISubrange(count: 56)
!180 = !DIDerivedType(tag: DW_TAG_member, name: "IP", scope: !159, file: !158, line: 375, baseType: !181, size: 1920, offset: 6144)
!181 = !DICompositeType(tag: DW_TAG_array_type, baseType: !182, size: 1920, elements: !185)
!182 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !183)
!183 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint8_t", file: !93, line: 24, baseType: !184)
!184 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint8_t", file: !95, line: 43, baseType: !134)
!185 = !{!186}
!186 = !DISubrange(count: 240)
!187 = !DIDerivedType(tag: DW_TAG_member, name: "RESERVED5", scope: !159, file: !158, line: 376, baseType: !188, size: 20608, offset: 8064)
!188 = !DICompositeType(tag: DW_TAG_array_type, baseType: !92, size: 20608, elements: !189)
!189 = !{!190}
!190 = !DISubrange(count: 644)
!191 = !DIDerivedType(tag: DW_TAG_member, name: "STIR", scope: !159, file: !158, line: 377, baseType: !91, size: 32, offset: 28672)
!192 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !193, size: 32)
!193 = !DIDerivedType(tag: DW_TAG_typedef, name: "SCB_Type", file: !158, line: 418, baseType: !194)
!194 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !158, line: 395, size: 1120, elements: !195)
!195 = !{!196, !198, !199, !200, !201, !202, !203, !207, !208, !209, !210, !211, !212, !213, !214, !218, !219, !220, !224, !228, !230}
!196 = !DIDerivedType(tag: DW_TAG_member, name: "CPUID", scope: !194, file: !158, line: 397, baseType: !197, size: 32)
!197 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !91)
!198 = !DIDerivedType(tag: DW_TAG_member, name: "ICSR", scope: !194, file: !158, line: 398, baseType: !91, size: 32, offset: 32)
!199 = !DIDerivedType(tag: DW_TAG_member, name: "VTOR", scope: !194, file: !158, line: 399, baseType: !91, size: 32, offset: 64)
!200 = !DIDerivedType(tag: DW_TAG_member, name: "AIRCR", scope: !194, file: !158, line: 400, baseType: !91, size: 32, offset: 96)
!201 = !DIDerivedType(tag: DW_TAG_member, name: "SCR", scope: !194, file: !158, line: 401, baseType: !91, size: 32, offset: 128)
!202 = !DIDerivedType(tag: DW_TAG_member, name: "CCR", scope: !194, file: !158, line: 402, baseType: !91, size: 32, offset: 160)
!203 = !DIDerivedType(tag: DW_TAG_member, name: "SHP", scope: !194, file: !158, line: 403, baseType: !204, size: 96, offset: 192)
!204 = !DICompositeType(tag: DW_TAG_array_type, baseType: !182, size: 96, elements: !205)
!205 = !{!206}
!206 = !DISubrange(count: 12)
!207 = !DIDerivedType(tag: DW_TAG_member, name: "SHCSR", scope: !194, file: !158, line: 404, baseType: !91, size: 32, offset: 288)
!208 = !DIDerivedType(tag: DW_TAG_member, name: "CFSR", scope: !194, file: !158, line: 405, baseType: !91, size: 32, offset: 320)
!209 = !DIDerivedType(tag: DW_TAG_member, name: "HFSR", scope: !194, file: !158, line: 406, baseType: !91, size: 32, offset: 352)
!210 = !DIDerivedType(tag: DW_TAG_member, name: "DFSR", scope: !194, file: !158, line: 407, baseType: !91, size: 32, offset: 384)
!211 = !DIDerivedType(tag: DW_TAG_member, name: "MMFAR", scope: !194, file: !158, line: 408, baseType: !91, size: 32, offset: 416)
!212 = !DIDerivedType(tag: DW_TAG_member, name: "BFAR", scope: !194, file: !158, line: 409, baseType: !91, size: 32, offset: 448)
!213 = !DIDerivedType(tag: DW_TAG_member, name: "AFSR", scope: !194, file: !158, line: 410, baseType: !91, size: 32, offset: 480)
!214 = !DIDerivedType(tag: DW_TAG_member, name: "PFR", scope: !194, file: !158, line: 411, baseType: !215, size: 64, offset: 512)
!215 = !DICompositeType(tag: DW_TAG_array_type, baseType: !197, size: 64, elements: !216)
!216 = !{!217}
!217 = !DISubrange(count: 2)
!218 = !DIDerivedType(tag: DW_TAG_member, name: "DFR", scope: !194, file: !158, line: 412, baseType: !197, size: 32, offset: 576)
!219 = !DIDerivedType(tag: DW_TAG_member, name: "ADR", scope: !194, file: !158, line: 413, baseType: !197, size: 32, offset: 608)
!220 = !DIDerivedType(tag: DW_TAG_member, name: "MMFR", scope: !194, file: !158, line: 414, baseType: !221, size: 128, offset: 640)
!221 = !DICompositeType(tag: DW_TAG_array_type, baseType: !197, size: 128, elements: !222)
!222 = !{!223}
!223 = !DISubrange(count: 4)
!224 = !DIDerivedType(tag: DW_TAG_member, name: "ISAR", scope: !194, file: !158, line: 415, baseType: !225, size: 160, offset: 768)
!225 = !DICompositeType(tag: DW_TAG_array_type, baseType: !197, size: 160, elements: !226)
!226 = !{!227}
!227 = !DISubrange(count: 5)
!228 = !DIDerivedType(tag: DW_TAG_member, name: "RESERVED0", scope: !194, file: !158, line: 416, baseType: !229, size: 160, offset: 928)
!229 = !DICompositeType(tag: DW_TAG_array_type, baseType: !92, size: 160, elements: !226)
!230 = !DIDerivedType(tag: DW_TAG_member, name: "CPACR", scope: !194, file: !158, line: 417, baseType: !91, size: 32, offset: 1088)
!231 = !{!138}
!232 = !DICompositeType(tag: DW_TAG_array_type, baseType: !233, size: 6144, elements: !241)
!233 = !DIDerivedType(tag: DW_TAG_typedef, name: "nvic_function_t", file: !141, line: 50, baseType: !234)
!234 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !141, line: 47, size: 64, elements: !235)
!235 = !{!236, !240}
!236 = !DIDerivedType(tag: DW_TAG_member, name: "nvic_callback", scope: !234, file: !141, line: 48, baseType: !237, size: 32)
!237 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !238, size: 32)
!238 = !DISubroutineType(types: !239)
!239 = !{null, !152}
!240 = !DIDerivedType(tag: DW_TAG_member, name: "irq_pending", scope: !234, file: !141, line: 49, baseType: !92, size: 32, offset: 32)
!241 = !{!242}
!242 = !DISubrange(count: 96)
!243 = !DIGlobalVariableExpression(var: !244, expr: !DIExpression())
!244 = distinct !DIGlobalVariable(name: "g_gpt_context", scope: !245, file: !246, line: 61, type: !279, isLocal: true, isDefinition: true)
!245 = distinct !DICompileUnit(language: DW_LANG_C99, file: !246, producer: "Ubuntu clang version 14.0.6", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !247, retainedTypes: !277, globals: !278, splitDebugInlining: false, nameTableKind: None)
!246 = !DIFile(filename: "../../../../../driver/chip/mt7687/src/hal_gpt.c", directory: "/home/mjshen/RTOSExploration/Embedded-GUI-for-MT2523/project/mt7687_hdk/hal_examples/gpt_interrupt_repeat_mode/GCC")
!247 = !{!248, !256, !264, !268, !273}
!248 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !249, line: 387, baseType: !13, size: 32, elements: !250)
!249 = !DIFile(filename: "../../../../../driver/chip/inc/hal_gpt.h", directory: "/home/mjshen/RTOSExploration/Embedded-GUI-for-MT2523/project/mt7687_hdk/hal_examples/gpt_interrupt_repeat_mode/GCC")
!250 = !{!251, !252, !253, !254, !255}
!251 = !DIEnumerator(name: "HAL_GPT_STATUS_ERROR_PORT_USED", value: -4)
!252 = !DIEnumerator(name: "HAL_GPT_STATUS_ERROR", value: -3)
!253 = !DIEnumerator(name: "HAL_GPT_STATUS_ERROR_PORT", value: -2)
!254 = !DIEnumerator(name: "HAL_GPT_STATUS_INVALID_PARAMETER", value: -1)
!255 = !DIEnumerator(name: "HAL_GPT_STATUS_OK", value: 0)
!256 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !257, line: 657, baseType: !7, size: 32, elements: !258)
!257 = !DIFile(filename: "../../../../../driver/chip/mt7687/inc/hal_platform.h", directory: "/home/mjshen/RTOSExploration/Embedded-GUI-for-MT2523/project/mt7687_hdk/hal_examples/gpt_interrupt_repeat_mode/GCC")
!258 = !{!259, !260, !261, !262, !263}
!259 = !DIEnumerator(name: "HAL_GPT_0", value: 0)
!260 = !DIEnumerator(name: "HAL_GPT_1", value: 1)
!261 = !DIEnumerator(name: "HAL_GPT_2", value: 2)
!262 = !DIEnumerator(name: "HAL_GPT_4", value: 4)
!263 = !DIEnumerator(name: "HAL_GPT_MAX", value: 5)
!264 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !249, line: 397, baseType: !7, size: 32, elements: !265)
!265 = !{!266, !267}
!266 = !DIEnumerator(name: "HAL_GPT_STOPPED", value: 0)
!267 = !DIEnumerator(name: "HAL_GPT_RUNNING", value: 1)
!268 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !257, line: 666, baseType: !7, size: 32, elements: !269)
!269 = !{!270, !271, !272}
!270 = !DIEnumerator(name: "HAL_GPT_CLOCK_SOURCE_32K", value: 0)
!271 = !DIEnumerator(name: "HAL_GPT_CLOCK_SOURCE_1M", value: 1)
!272 = !DIEnumerator(name: "HAL_GPT_CLOCK_SOURCE_BUS", value: 2)
!273 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !249, line: 380, baseType: !7, size: 32, elements: !274)
!274 = !{!275, !276}
!275 = !DIEnumerator(name: "HAL_GPT_TIMER_TYPE_ONE_SHOT", value: 0)
!276 = !DIEnumerator(name: "HAL_GPT_TIMER_TYPE_REPEAT", value: 1)
!277 = !{!153, !92}
!278 = !{!243}
!279 = !DICompositeType(tag: DW_TAG_array_type, baseType: !280, size: 640, elements: !226)
!280 = !DIDerivedType(tag: DW_TAG_typedef, name: "hal_gpt_context_t", file: !246, line: 55, baseType: !281)
!281 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !246, line: 51, size: 128, elements: !282)
!282 = !{!283, !285, !295}
!283 = !DIDerivedType(tag: DW_TAG_member, name: "running_status", scope: !281, file: !246, line: 52, baseType: !284, size: 32)
!284 = !DIDerivedType(tag: DW_TAG_typedef, name: "hal_gpt_running_status_t", file: !249, line: 400, baseType: !264)
!285 = !DIDerivedType(tag: DW_TAG_member, name: "callback_context", scope: !281, file: !246, line: 53, baseType: !286, size: 64, offset: 32)
!286 = !DIDerivedType(tag: DW_TAG_typedef, name: "hal_gpt_callback_context", file: !246, line: 49, baseType: !287)
!287 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !246, line: 46, size: 64, elements: !288)
!288 = !{!289, !294}
!289 = !DIDerivedType(tag: DW_TAG_member, name: "callback", scope: !287, file: !246, line: 47, baseType: !290, size: 32)
!290 = !DIDerivedType(tag: DW_TAG_typedef, name: "hal_gpt_callback_t", file: !249, line: 371, baseType: !291)
!291 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !292, size: 32)
!292 = !DISubroutineType(types: !293)
!293 = !{null, !153}
!294 = !DIDerivedType(tag: DW_TAG_member, name: "user_data", scope: !287, file: !246, line: 48, baseType: !153, size: 32, offset: 32)
!295 = !DIDerivedType(tag: DW_TAG_member, name: "has_initlized", scope: !281, file: !246, line: 54, baseType: !296, size: 8, offset: 96)
!296 = !DIBasicType(name: "_Bool", size: 8, encoding: DW_ATE_boolean)
!297 = !DIGlobalVariableExpression(var: !298, expr: !DIExpression())
!298 = distinct !DIGlobalVariable(name: "g_uart_context_table", scope: !299, file: !300, line: 77, type: !365, isLocal: true, isDefinition: true)
!299 = distinct !DICompileUnit(language: DW_LANG_C99, file: !300, producer: "Ubuntu clang version 14.0.6", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !301, retainedTypes: !351, globals: !353, splitDebugInlining: false, nameTableKind: None)
!300 = !DIFile(filename: "../../../../../driver/chip/mt7687/src/hal_uart.c", directory: "/home/mjshen/RTOSExploration/Embedded-GUI-for-MT2523/project/mt7687_hdk/hal_examples/gpt_interrupt_repeat_mode/GCC")
!301 = !{!302, !310, !315, !331, !337, !341, !105, !111, !346}
!302 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !303, line: 345, baseType: !13, size: 32, elements: !304)
!303 = !DIFile(filename: "../../../../../driver/chip/inc/hal_uart.h", directory: "/home/mjshen/RTOSExploration/Embedded-GUI-for-MT2523/project/mt7687_hdk/hal_examples/gpt_interrupt_repeat_mode/GCC")
!304 = !{!305, !306, !307, !308, !309}
!305 = !DIEnumerator(name: "HAL_UART_STATUS_ERROR_PARAMETER", value: -4)
!306 = !DIEnumerator(name: "HAL_UART_STATUS_ERROR_BUSY", value: -3)
!307 = !DIEnumerator(name: "HAL_UART_STATUS_ERROR_UNINITIALIZED", value: -2)
!308 = !DIEnumerator(name: "HAL_UART_STATUS_ERROR", value: -1)
!309 = !DIEnumerator(name: "HAL_UART_STATUS_OK", value: 0)
!310 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !257, line: 109, baseType: !7, size: 32, elements: !311)
!311 = !{!312, !313, !314}
!312 = !DIEnumerator(name: "HAL_UART_0", value: 0)
!313 = !DIEnumerator(name: "HAL_UART_1", value: 1)
!314 = !DIEnumerator(name: "HAL_UART_MAX", value: 2)
!315 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !303, line: 302, baseType: !7, size: 32, elements: !316)
!316 = !{!317, !318, !319, !320, !321, !322, !323, !324, !325, !326, !327, !328, !329, !330}
!317 = !DIEnumerator(name: "HAL_UART_BAUDRATE_110", value: 0)
!318 = !DIEnumerator(name: "HAL_UART_BAUDRATE_300", value: 1)
!319 = !DIEnumerator(name: "HAL_UART_BAUDRATE_1200", value: 2)
!320 = !DIEnumerator(name: "HAL_UART_BAUDRATE_2400", value: 3)
!321 = !DIEnumerator(name: "HAL_UART_BAUDRATE_4800", value: 4)
!322 = !DIEnumerator(name: "HAL_UART_BAUDRATE_9600", value: 5)
!323 = !DIEnumerator(name: "HAL_UART_BAUDRATE_19200", value: 6)
!324 = !DIEnumerator(name: "HAL_UART_BAUDRATE_38400", value: 7)
!325 = !DIEnumerator(name: "HAL_UART_BAUDRATE_57600", value: 8)
!326 = !DIEnumerator(name: "HAL_UART_BAUDRATE_115200", value: 9)
!327 = !DIEnumerator(name: "HAL_UART_BAUDRATE_230400", value: 10)
!328 = !DIEnumerator(name: "HAL_UART_BAUDRATE_460800", value: 11)
!329 = !DIEnumerator(name: "HAL_UART_BAUDRATE_921600", value: 12)
!330 = !DIEnumerator(name: "HAL_UART_BAUDRATE_MAX", value: 13)
!331 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !303, line: 321, baseType: !7, size: 32, elements: !332)
!332 = !{!333, !334, !335, !336}
!333 = !DIEnumerator(name: "HAL_UART_WORD_LENGTH_5", value: 0)
!334 = !DIEnumerator(name: "HAL_UART_WORD_LENGTH_6", value: 1)
!335 = !DIEnumerator(name: "HAL_UART_WORD_LENGTH_7", value: 2)
!336 = !DIEnumerator(name: "HAL_UART_WORD_LENGTH_8", value: 3)
!337 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !303, line: 330, baseType: !7, size: 32, elements: !338)
!338 = !{!339, !340}
!339 = !DIEnumerator(name: "HAL_UART_STOP_BIT_1", value: 0)
!340 = !DIEnumerator(name: "HAL_UART_STOP_BIT_2", value: 1)
!341 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !303, line: 337, baseType: !7, size: 32, elements: !342)
!342 = !{!343, !344, !345}
!343 = !DIEnumerator(name: "HAL_UART_PARITY_NONE", value: 0)
!344 = !DIEnumerator(name: "HAL_UART_PARITY_ODD", value: 1)
!345 = !DIEnumerator(name: "HAL_UART_PARITY_EVEN", value: 2)
!346 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !303, line: 355, baseType: !13, size: 32, elements: !347)
!347 = !{!348, !349, !350}
!348 = !DIEnumerator(name: "HAL_UART_EVENT_TRANSACTION_ERROR", value: -1)
!349 = !DIEnumerator(name: "HAL_UART_EVENT_READY_TO_READ", value: 1)
!350 = !DIEnumerator(name: "HAL_UART_EVENT_READY_TO_WRITE", value: 2)
!351 = !{!7, !153, !134, !352, !183}
!352 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_unsigned_char)
!353 = !{!297, !354}
!354 = !DIGlobalVariableExpression(var: !355, expr: !DIExpression())
!355 = distinct !DIGlobalVariable(name: "func_tbl", scope: !356, file: !300, line: 536, type: !363, isLocal: true, isDefinition: true)
!356 = distinct !DISubprogram(name: "hal_uart_map_receive_callback", scope: !300, file: !300, line: 534, type: !357, scopeLine: 535, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !299, retainedNodes: !361)
!357 = !DISubroutineType(types: !358)
!358 = !{!359, !360}
!359 = !DIDerivedType(tag: DW_TAG_typedef, name: "VOID_FUNC", file: !112, line: 197, baseType: !74)
!360 = !DIDerivedType(tag: DW_TAG_typedef, name: "hal_uart_port_t", file: !257, line: 113, baseType: !310)
!361 = !{!362}
!362 = !DILocalVariable(name: "uart_port", arg: 1, scope: !356, file: !300, line: 534, type: !360)
!363 = !DICompositeType(tag: DW_TAG_array_type, baseType: !364, size: 64, elements: !216)
!364 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !359)
!365 = !DICompositeType(tag: DW_TAG_array_type, baseType: !366, size: 1024, elements: !216)
!366 = !DIDerivedType(tag: DW_TAG_typedef, name: "uart_context_t", file: !300, line: 75, baseType: !367)
!367 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !300, line: 68, size: 512, elements: !368)
!368 = !{!369, !370, !382, !383, !394, !395}
!369 = !DIDerivedType(tag: DW_TAG_member, name: "basic_config_present", scope: !367, file: !300, line: 69, baseType: !296, size: 8)
!370 = !DIDerivedType(tag: DW_TAG_member, name: "basic_config", scope: !367, file: !300, line: 70, baseType: !371, size: 128, offset: 32)
!371 = !DIDerivedType(tag: DW_TAG_typedef, name: "hal_uart_config_t", file: !303, line: 378, baseType: !372)
!372 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !303, line: 373, size: 128, elements: !373)
!373 = !{!374, !376, !378, !380}
!374 = !DIDerivedType(tag: DW_TAG_member, name: "baudrate", scope: !372, file: !303, line: 374, baseType: !375, size: 32)
!375 = !DIDerivedType(tag: DW_TAG_typedef, name: "hal_uart_baudrate_t", file: !303, line: 317, baseType: !315)
!376 = !DIDerivedType(tag: DW_TAG_member, name: "word_length", scope: !372, file: !303, line: 375, baseType: !377, size: 32, offset: 32)
!377 = !DIDerivedType(tag: DW_TAG_typedef, name: "hal_uart_word_length_t", file: !303, line: 326, baseType: !331)
!378 = !DIDerivedType(tag: DW_TAG_member, name: "stop_bit", scope: !372, file: !303, line: 376, baseType: !379, size: 32, offset: 64)
!379 = !DIDerivedType(tag: DW_TAG_typedef, name: "hal_uart_stop_bit_t", file: !303, line: 333, baseType: !337)
!380 = !DIDerivedType(tag: DW_TAG_member, name: "parity", scope: !372, file: !303, line: 377, baseType: !381, size: 32, offset: 96)
!381 = !DIDerivedType(tag: DW_TAG_typedef, name: "hal_uart_parity_t", file: !303, line: 341, baseType: !341)
!382 = !DIDerivedType(tag: DW_TAG_member, name: "callback_present", scope: !367, file: !300, line: 71, baseType: !296, size: 8, offset: 160)
!383 = !DIDerivedType(tag: DW_TAG_member, name: "callback_config", scope: !367, file: !300, line: 72, baseType: !384, size: 64, offset: 192)
!384 = !DIDerivedType(tag: DW_TAG_typedef, name: "hal_uart_callback_config_t", file: !300, line: 66, baseType: !385)
!385 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !300, line: 63, size: 64, elements: !386)
!386 = !{!387, !393}
!387 = !DIDerivedType(tag: DW_TAG_member, name: "callback", scope: !385, file: !300, line: 64, baseType: !388, size: 32)
!388 = !DIDerivedType(tag: DW_TAG_typedef, name: "hal_uart_callback_t", file: !303, line: 410, baseType: !389)
!389 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !390, size: 32)
!390 = !DISubroutineType(types: !391)
!391 = !{null, !392, !153}
!392 = !DIDerivedType(tag: DW_TAG_typedef, name: "hal_uart_callback_event_t", file: !303, line: 359, baseType: !346)
!393 = !DIDerivedType(tag: DW_TAG_member, name: "user_data", scope: !385, file: !300, line: 65, baseType: !153, size: 32, offset: 32)
!394 = !DIDerivedType(tag: DW_TAG_member, name: "dma_config_present", scope: !367, file: !300, line: 73, baseType: !296, size: 8, offset: 256)
!395 = !DIDerivedType(tag: DW_TAG_member, name: "dma_config", scope: !367, file: !300, line: 74, baseType: !396, size: 224, offset: 288)
!396 = !DIDerivedType(tag: DW_TAG_typedef, name: "hal_uart_dma_config_t", file: !303, line: 390, baseType: !397)
!397 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !303, line: 382, size: 224, elements: !398)
!398 = !{!399, !401, !402, !403, !404, !405, !406}
!399 = !DIDerivedType(tag: DW_TAG_member, name: "send_vfifo_buffer", scope: !397, file: !303, line: 383, baseType: !400, size: 32)
!400 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !183, size: 32)
!401 = !DIDerivedType(tag: DW_TAG_member, name: "send_vfifo_buffer_size", scope: !397, file: !303, line: 384, baseType: !92, size: 32, offset: 32)
!402 = !DIDerivedType(tag: DW_TAG_member, name: "send_vfifo_threshold_size", scope: !397, file: !303, line: 385, baseType: !92, size: 32, offset: 64)
!403 = !DIDerivedType(tag: DW_TAG_member, name: "receive_vfifo_buffer", scope: !397, file: !303, line: 386, baseType: !400, size: 32, offset: 96)
!404 = !DIDerivedType(tag: DW_TAG_member, name: "receive_vfifo_buffer_size", scope: !397, file: !303, line: 387, baseType: !92, size: 32, offset: 128)
!405 = !DIDerivedType(tag: DW_TAG_member, name: "receive_vfifo_threshold_size", scope: !397, file: !303, line: 388, baseType: !92, size: 32, offset: 160)
!406 = !DIDerivedType(tag: DW_TAG_member, name: "receive_vfifo_alert_size", scope: !397, file: !303, line: 389, baseType: !92, size: 32, offset: 192)
!407 = !DIGlobalVariableExpression(var: !408, expr: !DIExpression())
!408 = distinct !DIGlobalVariable(name: "gpt_port", scope: !409, file: !410, line: 50, type: !457, isLocal: false, isDefinition: true)
!409 = distinct !DICompileUnit(language: DW_LANG_C99, file: !410, producer: "Ubuntu clang version 14.0.6", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !411, retainedTypes: !443, globals: !444, splitDebugInlining: false, nameTableKind: None)
!410 = !DIFile(filename: "../../../../../project/mt7687_hdk/hal_examples/gpt_interrupt_repeat_mode/src/main.c", directory: "/home/mjshen/RTOSExploration/Embedded-GUI-for-MT2523/project/mt7687_hdk/hal_examples/gpt_interrupt_repeat_mode/GCC")
!411 = !{!310, !256, !315, !331, !337, !341, !412, !248, !273, !268}
!412 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !257, line: 249, baseType: !7, size: 32, elements: !413)
!413 = !{!414, !415, !416, !417, !418, !419, !420, !421, !422, !423, !424, !425, !426, !427, !428, !429, !430, !431, !432, !433, !434, !435, !436, !437, !438, !439, !440, !441, !442}
!414 = !DIEnumerator(name: "HAL_GPIO_0", value: 0)
!415 = !DIEnumerator(name: "HAL_GPIO_1", value: 1)
!416 = !DIEnumerator(name: "HAL_GPIO_2", value: 2)
!417 = !DIEnumerator(name: "HAL_GPIO_3", value: 3)
!418 = !DIEnumerator(name: "HAL_GPIO_4", value: 4)
!419 = !DIEnumerator(name: "HAL_GPIO_5", value: 5)
!420 = !DIEnumerator(name: "HAL_GPIO_6", value: 6)
!421 = !DIEnumerator(name: "HAL_GPIO_7", value: 7)
!422 = !DIEnumerator(name: "HAL_GPIO_24", value: 24)
!423 = !DIEnumerator(name: "HAL_GPIO_25", value: 25)
!424 = !DIEnumerator(name: "HAL_GPIO_26", value: 26)
!425 = !DIEnumerator(name: "HAL_GPIO_27", value: 27)
!426 = !DIEnumerator(name: "HAL_GPIO_28", value: 28)
!427 = !DIEnumerator(name: "HAL_GPIO_29", value: 29)
!428 = !DIEnumerator(name: "HAL_GPIO_30", value: 30)
!429 = !DIEnumerator(name: "HAL_GPIO_31", value: 31)
!430 = !DIEnumerator(name: "HAL_GPIO_32", value: 32)
!431 = !DIEnumerator(name: "HAL_GPIO_33", value: 33)
!432 = !DIEnumerator(name: "HAL_GPIO_34", value: 34)
!433 = !DIEnumerator(name: "HAL_GPIO_35", value: 35)
!434 = !DIEnumerator(name: "HAL_GPIO_36", value: 36)
!435 = !DIEnumerator(name: "HAL_GPIO_37", value: 37)
!436 = !DIEnumerator(name: "HAL_GPIO_38", value: 38)
!437 = !DIEnumerator(name: "HAL_GPIO_39", value: 39)
!438 = !DIEnumerator(name: "HAL_GPIO_57", value: 57)
!439 = !DIEnumerator(name: "HAL_GPIO_58", value: 58)
!440 = !DIEnumerator(name: "HAL_GPIO_59", value: 59)
!441 = !DIEnumerator(name: "HAL_GPIO_60", value: 60)
!442 = !DIEnumerator(name: "HAL_GPIO_MAX", value: 61)
!443 = !{!153, !13}
!444 = !{!407, !445, !453, !455}
!445 = !DIGlobalVariableExpression(var: !446, expr: !DIExpression())
!446 = distinct !DIGlobalVariable(name: "current_time", scope: !447, file: !410, line: 139, type: !92, isLocal: true, isDefinition: true)
!447 = distinct !DISubprogram(name: "gpt_callback", scope: !410, file: !410, line: 137, type: !292, scopeLine: 138, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !409, retainedNodes: !448)
!448 = !{!449, !450, !451}
!449 = !DILocalVariable(name: "parameter", arg: 1, scope: !447, file: !410, line: 137, type: !153)
!450 = !DILocalVariable(name: "duration_time", scope: !447, file: !410, line: 142, type: !92)
!451 = !DILocalVariable(name: "ret", scope: !447, file: !410, line: 143, type: !452)
!452 = !DIDerivedType(tag: DW_TAG_typedef, name: "hal_gpt_status_t", file: !249, line: 393, baseType: !248)
!453 = !DIGlobalVariableExpression(var: !454, expr: !DIExpression())
!454 = distinct !DIGlobalVariable(name: "last_time", scope: !447, file: !410, line: 140, type: !92, isLocal: true, isDefinition: true)
!455 = !DIGlobalVariableExpression(var: !456, expr: !DIExpression())
!456 = distinct !DIGlobalVariable(name: "timeout_times", scope: !447, file: !410, line: 141, type: !92, isLocal: true, isDefinition: true)
!457 = !DIDerivedType(tag: DW_TAG_typedef, name: "hal_gpt_port_t", file: !257, line: 663, baseType: !256)
!458 = !DIGlobalVariableExpression(var: !459, expr: !DIExpression())
!459 = distinct !DIGlobalVariable(name: "SystemCoreClock", scope: !460, file: !461, line: 59, type: !92, isLocal: false, isDefinition: true)
!460 = distinct !DICompileUnit(language: DW_LANG_C99, file: !461, producer: "Ubuntu clang version 14.0.6", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !462, globals: !525, splitDebugInlining: false, nameTableKind: None)
!461 = !DIFile(filename: "../../../../../project/mt7687_hdk/hal_examples/gpt_interrupt_repeat_mode/src/system_mt7687.c", directory: "/home/mjshen/RTOSExploration/Embedded-GUI-for-MT2523/project/mt7687_hdk/hal_examples/gpt_interrupt_repeat_mode/GCC")
!462 = !{!463, !471, !496}
!463 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !464, size: 32)
!464 = !DIDerivedType(tag: DW_TAG_typedef, name: "SysTick_Type", file: !158, line: 656, baseType: !465)
!465 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !158, line: 650, size: 128, elements: !466)
!466 = !{!467, !468, !469, !470}
!467 = !DIDerivedType(tag: DW_TAG_member, name: "CTRL", scope: !465, file: !158, line: 652, baseType: !91, size: 32)
!468 = !DIDerivedType(tag: DW_TAG_member, name: "LOAD", scope: !465, file: !158, line: 653, baseType: !91, size: 32, offset: 32)
!469 = !DIDerivedType(tag: DW_TAG_member, name: "VAL", scope: !465, file: !158, line: 654, baseType: !91, size: 32, offset: 64)
!470 = !DIDerivedType(tag: DW_TAG_member, name: "CALIB", scope: !465, file: !158, line: 655, baseType: !197, size: 32, offset: 96)
!471 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !472, size: 32)
!472 = !DIDerivedType(tag: DW_TAG_typedef, name: "SCB_Type", file: !158, line: 418, baseType: !473)
!473 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !158, line: 395, size: 1120, elements: !474)
!474 = !{!475, !476, !477, !478, !479, !480, !481, !482, !483, !484, !485, !486, !487, !488, !489, !490, !491, !492, !493, !494, !495}
!475 = !DIDerivedType(tag: DW_TAG_member, name: "CPUID", scope: !473, file: !158, line: 397, baseType: !197, size: 32)
!476 = !DIDerivedType(tag: DW_TAG_member, name: "ICSR", scope: !473, file: !158, line: 398, baseType: !91, size: 32, offset: 32)
!477 = !DIDerivedType(tag: DW_TAG_member, name: "VTOR", scope: !473, file: !158, line: 399, baseType: !91, size: 32, offset: 64)
!478 = !DIDerivedType(tag: DW_TAG_member, name: "AIRCR", scope: !473, file: !158, line: 400, baseType: !91, size: 32, offset: 96)
!479 = !DIDerivedType(tag: DW_TAG_member, name: "SCR", scope: !473, file: !158, line: 401, baseType: !91, size: 32, offset: 128)
!480 = !DIDerivedType(tag: DW_TAG_member, name: "CCR", scope: !473, file: !158, line: 402, baseType: !91, size: 32, offset: 160)
!481 = !DIDerivedType(tag: DW_TAG_member, name: "SHP", scope: !473, file: !158, line: 403, baseType: !204, size: 96, offset: 192)
!482 = !DIDerivedType(tag: DW_TAG_member, name: "SHCSR", scope: !473, file: !158, line: 404, baseType: !91, size: 32, offset: 288)
!483 = !DIDerivedType(tag: DW_TAG_member, name: "CFSR", scope: !473, file: !158, line: 405, baseType: !91, size: 32, offset: 320)
!484 = !DIDerivedType(tag: DW_TAG_member, name: "HFSR", scope: !473, file: !158, line: 406, baseType: !91, size: 32, offset: 352)
!485 = !DIDerivedType(tag: DW_TAG_member, name: "DFSR", scope: !473, file: !158, line: 407, baseType: !91, size: 32, offset: 384)
!486 = !DIDerivedType(tag: DW_TAG_member, name: "MMFAR", scope: !473, file: !158, line: 408, baseType: !91, size: 32, offset: 416)
!487 = !DIDerivedType(tag: DW_TAG_member, name: "BFAR", scope: !473, file: !158, line: 409, baseType: !91, size: 32, offset: 448)
!488 = !DIDerivedType(tag: DW_TAG_member, name: "AFSR", scope: !473, file: !158, line: 410, baseType: !91, size: 32, offset: 480)
!489 = !DIDerivedType(tag: DW_TAG_member, name: "PFR", scope: !473, file: !158, line: 411, baseType: !215, size: 64, offset: 512)
!490 = !DIDerivedType(tag: DW_TAG_member, name: "DFR", scope: !473, file: !158, line: 412, baseType: !197, size: 32, offset: 576)
!491 = !DIDerivedType(tag: DW_TAG_member, name: "ADR", scope: !473, file: !158, line: 413, baseType: !197, size: 32, offset: 608)
!492 = !DIDerivedType(tag: DW_TAG_member, name: "MMFR", scope: !473, file: !158, line: 414, baseType: !221, size: 128, offset: 640)
!493 = !DIDerivedType(tag: DW_TAG_member, name: "ISAR", scope: !473, file: !158, line: 415, baseType: !225, size: 160, offset: 768)
!494 = !DIDerivedType(tag: DW_TAG_member, name: "RESERVED0", scope: !473, file: !158, line: 416, baseType: !229, size: 160, offset: 928)
!495 = !DIDerivedType(tag: DW_TAG_member, name: "CPACR", scope: !473, file: !158, line: 417, baseType: !91, size: 32, offset: 1088)
!496 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !497, size: 32)
!497 = !DIDerivedType(tag: DW_TAG_typedef, name: "CACHE_REGISTER_T", file: !498, line: 72, baseType: !499)
!498 = !DIFile(filename: "../../../../../driver/chip/mt7687/inc/hal_cache_hw.h", directory: "/home/mjshen/RTOSExploration/Embedded-GUI-for-MT2523/project/mt7687_hdk/hal_examples/gpt_interrupt_repeat_mode/GCC")
!499 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !498, line: 56, size: 525312, elements: !500)
!500 = !{!501, !502, !503, !504, !505, !506, !507, !508, !509, !510, !511, !515, !516, !520, !524}
!501 = !DIDerivedType(tag: DW_TAG_member, name: "CACHE_CON", scope: !499, file: !498, line: 57, baseType: !91, size: 32)
!502 = !DIDerivedType(tag: DW_TAG_member, name: "CACHE_OP", scope: !499, file: !498, line: 58, baseType: !91, size: 32, offset: 32)
!503 = !DIDerivedType(tag: DW_TAG_member, name: "CACHE_HCNT0L", scope: !499, file: !498, line: 59, baseType: !91, size: 32, offset: 64)
!504 = !DIDerivedType(tag: DW_TAG_member, name: "CACHE_HCNT0U", scope: !499, file: !498, line: 60, baseType: !91, size: 32, offset: 96)
!505 = !DIDerivedType(tag: DW_TAG_member, name: "CACHE_CCNT0L", scope: !499, file: !498, line: 61, baseType: !91, size: 32, offset: 128)
!506 = !DIDerivedType(tag: DW_TAG_member, name: "CACHE_CCNT0U", scope: !499, file: !498, line: 62, baseType: !91, size: 32, offset: 160)
!507 = !DIDerivedType(tag: DW_TAG_member, name: "CACHE_HCNT1L", scope: !499, file: !498, line: 63, baseType: !91, size: 32, offset: 192)
!508 = !DIDerivedType(tag: DW_TAG_member, name: "CACHE_HCNT1U", scope: !499, file: !498, line: 64, baseType: !91, size: 32, offset: 224)
!509 = !DIDerivedType(tag: DW_TAG_member, name: "CACHE_CCNT1L", scope: !499, file: !498, line: 65, baseType: !91, size: 32, offset: 256)
!510 = !DIDerivedType(tag: DW_TAG_member, name: "CACHE_CCNT1U", scope: !499, file: !498, line: 66, baseType: !91, size: 32, offset: 288)
!511 = !DIDerivedType(tag: DW_TAG_member, name: "RESERVED0", scope: !499, file: !498, line: 67, baseType: !512, size: 32, offset: 320)
!512 = !DICompositeType(tag: DW_TAG_array_type, baseType: !92, size: 32, elements: !513)
!513 = !{!514}
!514 = !DISubrange(count: 1)
!515 = !DIDerivedType(tag: DW_TAG_member, name: "CACHE_REGION_EN", scope: !499, file: !498, line: 68, baseType: !91, size: 32, offset: 352)
!516 = !DIDerivedType(tag: DW_TAG_member, name: "RESERVED1", scope: !499, file: !498, line: 69, baseType: !517, size: 523904, offset: 384)
!517 = !DICompositeType(tag: DW_TAG_array_type, baseType: !92, size: 523904, elements: !518)
!518 = !{!519}
!519 = !DISubrange(count: 16372)
!520 = !DIDerivedType(tag: DW_TAG_member, name: "CACHE_ENTRY_N", scope: !499, file: !498, line: 70, baseType: !521, size: 512, offset: 524288)
!521 = !DICompositeType(tag: DW_TAG_array_type, baseType: !91, size: 512, elements: !522)
!522 = !{!523}
!523 = !DISubrange(count: 16)
!524 = !DIDerivedType(tag: DW_TAG_member, name: "CACHE_END_ENTRY_N", scope: !499, file: !498, line: 71, baseType: !521, size: 512, offset: 524800)
!525 = !{!458, !526}
!526 = !DIGlobalVariableExpression(var: !527, expr: !DIExpression())
!527 = distinct !DIGlobalVariable(name: "System_Initialize_Done", scope: !460, file: !461, line: 61, type: !91, isLocal: true, isDefinition: true)
!528 = !DIGlobalVariableExpression(var: !529, expr: !DIExpression())
!529 = distinct !DIGlobalVariable(name: "heap_end", scope: !530, file: !531, line: 66, type: !536, isLocal: true, isDefinition: true)
!530 = distinct !DISubprogram(name: "_sbrk_r", scope: !531, file: !531, line: 63, type: !532, scopeLine: 64, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !728, retainedNodes: !732)
!531 = !DIFile(filename: "../../../../../project/mt7687_hdk/hal_examples/gpt_interrupt_repeat_mode/GCC/syscalls.c", directory: "/home/mjshen/RTOSExploration/Embedded-GUI-for-MT2523/project/mt7687_hdk/hal_examples/gpt_interrupt_repeat_mode/GCC")
!532 = !DISubroutineType(types: !533)
!533 = !{!534, !537, !727}
!534 = !DIDerivedType(tag: DW_TAG_typedef, name: "caddr_t", file: !535, line: 123, baseType: !536)
!535 = !DIFile(filename: "gcc-arm-none-eabi-10.3-2021.10/bin/../lib/gcc/arm-none-eabi/10.3.1/../../../../arm-none-eabi/include/sys/types.h", directory: "/home/mjshen/RTOSExploration")
!536 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !352, size: 32)
!537 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !538, size: 32)
!538 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_reent", file: !539, line: 377, size: 1920, elements: !540)
!539 = !DIFile(filename: "gcc-arm-none-eabi-10.3-2021.10/bin/../lib/gcc/arm-none-eabi/10.3.1/../../../../arm-none-eabi/include/sys/reent.h", directory: "/home/mjshen/RTOSExploration")
!540 = !{!541, !542, !616, !617, !618, !619, !620, !621, !622, !625, !646, !650, !651, !652, !653, !663, !676, !677, !682, !701, !702, !709, !710, !726}
!541 = !DIDerivedType(tag: DW_TAG_member, name: "_errno", scope: !538, file: !539, line: 381, baseType: !13, size: 32)
!542 = !DIDerivedType(tag: DW_TAG_member, name: "_stdin", scope: !538, file: !539, line: 386, baseType: !543, size: 32, offset: 32)
!543 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !544, size: 32)
!544 = !DIDerivedType(tag: DW_TAG_typedef, name: "__FILE", file: !539, line: 292, baseType: !545)
!545 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__sFILE", file: !539, line: 186, size: 832, elements: !546)
!546 = !{!547, !549, !550, !551, !553, !554, !559, !560, !561, !562, !566, !572, !579, !583, !584, !585, !586, !590, !592, !593, !594, !596, !602, !615}
!547 = !DIDerivedType(tag: DW_TAG_member, name: "_p", scope: !545, file: !539, line: 187, baseType: !548, size: 32)
!548 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !134, size: 32)
!549 = !DIDerivedType(tag: DW_TAG_member, name: "_r", scope: !545, file: !539, line: 188, baseType: !13, size: 32, offset: 32)
!550 = !DIDerivedType(tag: DW_TAG_member, name: "_w", scope: !545, file: !539, line: 189, baseType: !13, size: 32, offset: 64)
!551 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !545, file: !539, line: 190, baseType: !552, size: 16, offset: 96)
!552 = !DIBasicType(name: "short", size: 16, encoding: DW_ATE_signed)
!553 = !DIDerivedType(tag: DW_TAG_member, name: "_file", scope: !545, file: !539, line: 191, baseType: !552, size: 16, offset: 112)
!554 = !DIDerivedType(tag: DW_TAG_member, name: "_bf", scope: !545, file: !539, line: 192, baseType: !555, size: 64, offset: 128)
!555 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__sbuf", file: !539, line: 122, size: 64, elements: !556)
!556 = !{!557, !558}
!557 = !DIDerivedType(tag: DW_TAG_member, name: "_base", scope: !555, file: !539, line: 123, baseType: !548, size: 32)
!558 = !DIDerivedType(tag: DW_TAG_member, name: "_size", scope: !555, file: !539, line: 124, baseType: !13, size: 32, offset: 32)
!559 = !DIDerivedType(tag: DW_TAG_member, name: "_lbfsize", scope: !545, file: !539, line: 193, baseType: !13, size: 32, offset: 192)
!560 = !DIDerivedType(tag: DW_TAG_member, name: "_data", scope: !545, file: !539, line: 196, baseType: !537, size: 32, offset: 224)
!561 = !DIDerivedType(tag: DW_TAG_member, name: "_cookie", scope: !545, file: !539, line: 200, baseType: !153, size: 32, offset: 256)
!562 = !DIDerivedType(tag: DW_TAG_member, name: "_read", scope: !545, file: !539, line: 202, baseType: !563, size: 32, offset: 288)
!563 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !564, size: 32)
!564 = !DISubroutineType(types: !565)
!565 = !{!13, !537, !153, !536, !13}
!566 = !DIDerivedType(tag: DW_TAG_member, name: "_write", scope: !545, file: !539, line: 204, baseType: !567, size: 32, offset: 320)
!567 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !568, size: 32)
!568 = !DISubroutineType(types: !569)
!569 = !{!13, !537, !153, !570, !13}
!570 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !571, size: 32)
!571 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !352)
!572 = !DIDerivedType(tag: DW_TAG_member, name: "_seek", scope: !545, file: !539, line: 207, baseType: !573, size: 32, offset: 352)
!573 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !574, size: 32)
!574 = !DISubroutineType(types: !575)
!575 = !{!576, !537, !153, !576, !13}
!576 = !DIDerivedType(tag: DW_TAG_typedef, name: "_fpos_t", file: !577, line: 116, baseType: !578)
!577 = !DIFile(filename: "gcc-arm-none-eabi-10.3-2021.10/bin/../lib/gcc/arm-none-eabi/10.3.1/../../../../arm-none-eabi/include/sys/_types.h", directory: "/home/mjshen/RTOSExploration")
!578 = !DIBasicType(name: "long", size: 32, encoding: DW_ATE_signed)
!579 = !DIDerivedType(tag: DW_TAG_member, name: "_close", scope: !545, file: !539, line: 208, baseType: !580, size: 32, offset: 384)
!580 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !581, size: 32)
!581 = !DISubroutineType(types: !582)
!582 = !{!13, !537, !153}
!583 = !DIDerivedType(tag: DW_TAG_member, name: "_ub", scope: !545, file: !539, line: 211, baseType: !555, size: 64, offset: 416)
!584 = !DIDerivedType(tag: DW_TAG_member, name: "_up", scope: !545, file: !539, line: 212, baseType: !548, size: 32, offset: 480)
!585 = !DIDerivedType(tag: DW_TAG_member, name: "_ur", scope: !545, file: !539, line: 213, baseType: !13, size: 32, offset: 512)
!586 = !DIDerivedType(tag: DW_TAG_member, name: "_ubuf", scope: !545, file: !539, line: 216, baseType: !587, size: 24, offset: 544)
!587 = !DICompositeType(tag: DW_TAG_array_type, baseType: !134, size: 24, elements: !588)
!588 = !{!589}
!589 = !DISubrange(count: 3)
!590 = !DIDerivedType(tag: DW_TAG_member, name: "_nbuf", scope: !545, file: !539, line: 217, baseType: !591, size: 8, offset: 568)
!591 = !DICompositeType(tag: DW_TAG_array_type, baseType: !134, size: 8, elements: !513)
!592 = !DIDerivedType(tag: DW_TAG_member, name: "_lb", scope: !545, file: !539, line: 220, baseType: !555, size: 64, offset: 576)
!593 = !DIDerivedType(tag: DW_TAG_member, name: "_blksize", scope: !545, file: !539, line: 223, baseType: !13, size: 32, offset: 640)
!594 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !545, file: !539, line: 224, baseType: !595, size: 32, offset: 672)
!595 = !DIDerivedType(tag: DW_TAG_typedef, name: "_off_t", file: !577, line: 46, baseType: !578)
!596 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !545, file: !539, line: 231, baseType: !597, size: 32, offset: 704)
!597 = !DIDerivedType(tag: DW_TAG_typedef, name: "_flock_t", file: !539, line: 35, baseType: !598)
!598 = !DIDerivedType(tag: DW_TAG_typedef, name: "_LOCK_T", file: !599, line: 34, baseType: !600)
!599 = !DIFile(filename: "gcc-arm-none-eabi-10.3-2021.10/bin/../lib/gcc/arm-none-eabi/10.3.1/../../../../arm-none-eabi/include/sys/lock.h", directory: "/home/mjshen/RTOSExploration")
!600 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !601, size: 32)
!601 = !DICompositeType(tag: DW_TAG_structure_type, name: "__lock", file: !599, line: 33, flags: DIFlagFwdDecl)
!602 = !DIDerivedType(tag: DW_TAG_member, name: "_mbstate", scope: !545, file: !539, line: 233, baseType: !603, size: 64, offset: 736)
!603 = !DIDerivedType(tag: DW_TAG_typedef, name: "_mbstate_t", file: !577, line: 170, baseType: !604)
!604 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !577, line: 162, size: 64, elements: !605)
!605 = !{!606, !607}
!606 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !604, file: !577, line: 164, baseType: !13, size: 32)
!607 = !DIDerivedType(tag: DW_TAG_member, name: "__value", scope: !604, file: !577, line: 169, baseType: !608, size: 32, offset: 32)
!608 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !604, file: !577, line: 165, size: 32, elements: !609)
!609 = !{!610, !613}
!610 = !DIDerivedType(tag: DW_TAG_member, name: "__wch", scope: !608, file: !577, line: 167, baseType: !611, size: 32)
!611 = !DIDerivedType(tag: DW_TAG_typedef, name: "wint_t", file: !612, line: 116, baseType: !13)
!612 = !DIFile(filename: "/usr/lib/llvm-14/lib/clang/14.0.6/include/stddef.h", directory: "")
!613 = !DIDerivedType(tag: DW_TAG_member, name: "__wchb", scope: !608, file: !577, line: 168, baseType: !614, size: 32)
!614 = !DICompositeType(tag: DW_TAG_array_type, baseType: !134, size: 32, elements: !222)
!615 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !545, file: !539, line: 234, baseType: !13, size: 32, offset: 800)
!616 = !DIDerivedType(tag: DW_TAG_member, name: "_stdout", scope: !538, file: !539, line: 386, baseType: !543, size: 32, offset: 64)
!617 = !DIDerivedType(tag: DW_TAG_member, name: "_stderr", scope: !538, file: !539, line: 386, baseType: !543, size: 32, offset: 96)
!618 = !DIDerivedType(tag: DW_TAG_member, name: "_inc", scope: !538, file: !539, line: 388, baseType: !13, size: 32, offset: 128)
!619 = !DIDerivedType(tag: DW_TAG_member, name: "_emergency", scope: !538, file: !539, line: 390, baseType: !536, size: 32, offset: 160)
!620 = !DIDerivedType(tag: DW_TAG_member, name: "__sdidinit", scope: !538, file: !539, line: 392, baseType: !13, size: 32, offset: 192)
!621 = !DIDerivedType(tag: DW_TAG_member, name: "_unspecified_locale_info", scope: !538, file: !539, line: 394, baseType: !13, size: 32, offset: 224)
!622 = !DIDerivedType(tag: DW_TAG_member, name: "_locale", scope: !538, file: !539, line: 395, baseType: !623, size: 32, offset: 256)
!623 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !624, size: 32)
!624 = !DICompositeType(tag: DW_TAG_structure_type, name: "__locale_t", file: !539, line: 45, flags: DIFlagFwdDecl)
!625 = !DIDerivedType(tag: DW_TAG_member, name: "_mp", scope: !538, file: !539, line: 397, baseType: !626, size: 32, offset: 288)
!626 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !627, size: 32)
!627 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_mprec", file: !539, line: 349, size: 128, elements: !628)
!628 = !{!629, !642, !643, !644}
!629 = !DIDerivedType(tag: DW_TAG_member, name: "_result", scope: !627, file: !539, line: 352, baseType: !630, size: 32)
!630 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !631, size: 32)
!631 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_Bigint", file: !539, line: 52, size: 192, elements: !632)
!632 = !{!633, !634, !635, !636, !637, !638}
!633 = !DIDerivedType(tag: DW_TAG_member, name: "_next", scope: !631, file: !539, line: 54, baseType: !630, size: 32)
!634 = !DIDerivedType(tag: DW_TAG_member, name: "_k", scope: !631, file: !539, line: 55, baseType: !13, size: 32, offset: 32)
!635 = !DIDerivedType(tag: DW_TAG_member, name: "_maxwds", scope: !631, file: !539, line: 55, baseType: !13, size: 32, offset: 64)
!636 = !DIDerivedType(tag: DW_TAG_member, name: "_sign", scope: !631, file: !539, line: 55, baseType: !13, size: 32, offset: 96)
!637 = !DIDerivedType(tag: DW_TAG_member, name: "_wds", scope: !631, file: !539, line: 55, baseType: !13, size: 32, offset: 128)
!638 = !DIDerivedType(tag: DW_TAG_member, name: "_x", scope: !631, file: !539, line: 56, baseType: !639, size: 32, offset: 160)
!639 = !DICompositeType(tag: DW_TAG_array_type, baseType: !640, size: 32, elements: !513)
!640 = !DIDerivedType(tag: DW_TAG_typedef, name: "__ULong", file: !539, line: 22, baseType: !641)
!641 = !DIBasicType(name: "unsigned long", size: 32, encoding: DW_ATE_unsigned)
!642 = !DIDerivedType(tag: DW_TAG_member, name: "_result_k", scope: !627, file: !539, line: 353, baseType: !13, size: 32, offset: 32)
!643 = !DIDerivedType(tag: DW_TAG_member, name: "_p5s", scope: !627, file: !539, line: 354, baseType: !630, size: 32, offset: 64)
!644 = !DIDerivedType(tag: DW_TAG_member, name: "_freelist", scope: !627, file: !539, line: 355, baseType: !645, size: 32, offset: 96)
!645 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !630, size: 32)
!646 = !DIDerivedType(tag: DW_TAG_member, name: "__cleanup", scope: !538, file: !539, line: 399, baseType: !647, size: 32, offset: 320)
!647 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !648, size: 32)
!648 = !DISubroutineType(types: !649)
!649 = !{null, !537}
!650 = !DIDerivedType(tag: DW_TAG_member, name: "_gamma_signgam", scope: !538, file: !539, line: 401, baseType: !13, size: 32, offset: 352)
!651 = !DIDerivedType(tag: DW_TAG_member, name: "_cvtlen", scope: !538, file: !539, line: 404, baseType: !13, size: 32, offset: 384)
!652 = !DIDerivedType(tag: DW_TAG_member, name: "_cvtbuf", scope: !538, file: !539, line: 405, baseType: !536, size: 32, offset: 416)
!653 = !DIDerivedType(tag: DW_TAG_member, name: "_r48", scope: !538, file: !539, line: 407, baseType: !654, size: 32, offset: 448)
!654 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !655, size: 32)
!655 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_rand48", file: !539, line: 324, size: 192, elements: !656)
!656 = !{!657, !659, !660, !661}
!657 = !DIDerivedType(tag: DW_TAG_member, name: "_seed", scope: !655, file: !539, line: 325, baseType: !658, size: 48)
!658 = !DICompositeType(tag: DW_TAG_array_type, baseType: !132, size: 48, elements: !588)
!659 = !DIDerivedType(tag: DW_TAG_member, name: "_mult", scope: !655, file: !539, line: 326, baseType: !658, size: 48, offset: 48)
!660 = !DIDerivedType(tag: DW_TAG_member, name: "_add", scope: !655, file: !539, line: 327, baseType: !132, size: 16, offset: 96)
!661 = !DIDerivedType(tag: DW_TAG_member, name: "_rand_next", scope: !655, file: !539, line: 330, baseType: !662, size: 64, offset: 128)
!662 = !DIBasicType(name: "unsigned long long", size: 64, encoding: DW_ATE_unsigned)
!663 = !DIDerivedType(tag: DW_TAG_member, name: "_localtime_buf", scope: !538, file: !539, line: 408, baseType: !664, size: 32, offset: 480)
!664 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !665, size: 32)
!665 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__tm", file: !539, line: 60, size: 288, elements: !666)
!666 = !{!667, !668, !669, !670, !671, !672, !673, !674, !675}
!667 = !DIDerivedType(tag: DW_TAG_member, name: "__tm_sec", scope: !665, file: !539, line: 62, baseType: !13, size: 32)
!668 = !DIDerivedType(tag: DW_TAG_member, name: "__tm_min", scope: !665, file: !539, line: 63, baseType: !13, size: 32, offset: 32)
!669 = !DIDerivedType(tag: DW_TAG_member, name: "__tm_hour", scope: !665, file: !539, line: 64, baseType: !13, size: 32, offset: 64)
!670 = !DIDerivedType(tag: DW_TAG_member, name: "__tm_mday", scope: !665, file: !539, line: 65, baseType: !13, size: 32, offset: 96)
!671 = !DIDerivedType(tag: DW_TAG_member, name: "__tm_mon", scope: !665, file: !539, line: 66, baseType: !13, size: 32, offset: 128)
!672 = !DIDerivedType(tag: DW_TAG_member, name: "__tm_year", scope: !665, file: !539, line: 67, baseType: !13, size: 32, offset: 160)
!673 = !DIDerivedType(tag: DW_TAG_member, name: "__tm_wday", scope: !665, file: !539, line: 68, baseType: !13, size: 32, offset: 192)
!674 = !DIDerivedType(tag: DW_TAG_member, name: "__tm_yday", scope: !665, file: !539, line: 69, baseType: !13, size: 32, offset: 224)
!675 = !DIDerivedType(tag: DW_TAG_member, name: "__tm_isdst", scope: !665, file: !539, line: 70, baseType: !13, size: 32, offset: 256)
!676 = !DIDerivedType(tag: DW_TAG_member, name: "_asctime_buf", scope: !538, file: !539, line: 409, baseType: !536, size: 32, offset: 512)
!677 = !DIDerivedType(tag: DW_TAG_member, name: "_sig_func", scope: !538, file: !539, line: 412, baseType: !678, size: 32, offset: 544)
!678 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !679, size: 32)
!679 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !680, size: 32)
!680 = !DISubroutineType(types: !681)
!681 = !{null, !13}
!682 = !DIDerivedType(tag: DW_TAG_member, name: "_atexit", scope: !538, file: !539, line: 416, baseType: !683, size: 32, offset: 576)
!683 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !684, size: 32)
!684 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_atexit", file: !539, line: 90, size: 1120, elements: !685)
!685 = !{!686, !687, !688, !692}
!686 = !DIDerivedType(tag: DW_TAG_member, name: "_next", scope: !684, file: !539, line: 91, baseType: !683, size: 32)
!687 = !DIDerivedType(tag: DW_TAG_member, name: "_ind", scope: !684, file: !539, line: 92, baseType: !13, size: 32, offset: 32)
!688 = !DIDerivedType(tag: DW_TAG_member, name: "_fns", scope: !684, file: !539, line: 93, baseType: !689, size: 1024, offset: 64)
!689 = !DICompositeType(tag: DW_TAG_array_type, baseType: !74, size: 1024, elements: !690)
!690 = !{!691}
!691 = !DISubrange(count: 32)
!692 = !DIDerivedType(tag: DW_TAG_member, name: "_on_exit_args_ptr", scope: !684, file: !539, line: 94, baseType: !693, size: 32, offset: 1088)
!693 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !694, size: 32)
!694 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_on_exit_args", file: !539, line: 79, size: 2112, elements: !695)
!695 = !{!696, !698, !699, !700}
!696 = !DIDerivedType(tag: DW_TAG_member, name: "_fnargs", scope: !694, file: !539, line: 80, baseType: !697, size: 1024)
!697 = !DICompositeType(tag: DW_TAG_array_type, baseType: !153, size: 1024, elements: !690)
!698 = !DIDerivedType(tag: DW_TAG_member, name: "_dso_handle", scope: !694, file: !539, line: 81, baseType: !697, size: 1024, offset: 1024)
!699 = !DIDerivedType(tag: DW_TAG_member, name: "_fntypes", scope: !694, file: !539, line: 83, baseType: !640, size: 32, offset: 2048)
!700 = !DIDerivedType(tag: DW_TAG_member, name: "_is_cxa", scope: !694, file: !539, line: 86, baseType: !640, size: 32, offset: 2080)
!701 = !DIDerivedType(tag: DW_TAG_member, name: "_atexit0", scope: !538, file: !539, line: 417, baseType: !684, size: 1120, offset: 608)
!702 = !DIDerivedType(tag: DW_TAG_member, name: "__sglue", scope: !538, file: !539, line: 420, baseType: !703, size: 96, offset: 1728)
!703 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_glue", file: !539, line: 296, size: 96, elements: !704)
!704 = !{!705, !707, !708}
!705 = !DIDerivedType(tag: DW_TAG_member, name: "_next", scope: !703, file: !539, line: 298, baseType: !706, size: 32)
!706 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !703, size: 32)
!707 = !DIDerivedType(tag: DW_TAG_member, name: "_niobs", scope: !703, file: !539, line: 299, baseType: !13, size: 32, offset: 32)
!708 = !DIDerivedType(tag: DW_TAG_member, name: "_iobs", scope: !703, file: !539, line: 300, baseType: !543, size: 32, offset: 64)
!709 = !DIDerivedType(tag: DW_TAG_member, name: "__sf", scope: !538, file: !539, line: 421, baseType: !543, size: 32, offset: 1824)
!710 = !DIDerivedType(tag: DW_TAG_member, name: "_misc", scope: !538, file: !539, line: 422, baseType: !711, size: 32, offset: 1856)
!711 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !712, size: 32)
!712 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_misc_reent", file: !539, line: 359, size: 640, elements: !713)
!713 = !{!714, !715, !716, !717, !718, !720, !721, !722, !723, !724, !725}
!714 = !DIDerivedType(tag: DW_TAG_member, name: "_strtok_last", scope: !712, file: !539, line: 362, baseType: !536, size: 32)
!715 = !DIDerivedType(tag: DW_TAG_member, name: "_mblen_state", scope: !712, file: !539, line: 363, baseType: !603, size: 64, offset: 32)
!716 = !DIDerivedType(tag: DW_TAG_member, name: "_wctomb_state", scope: !712, file: !539, line: 364, baseType: !603, size: 64, offset: 96)
!717 = !DIDerivedType(tag: DW_TAG_member, name: "_mbtowc_state", scope: !712, file: !539, line: 365, baseType: !603, size: 64, offset: 160)
!718 = !DIDerivedType(tag: DW_TAG_member, name: "_l64a_buf", scope: !712, file: !539, line: 366, baseType: !719, size: 64, offset: 224)
!719 = !DICompositeType(tag: DW_TAG_array_type, baseType: !352, size: 64, elements: !163)
!720 = !DIDerivedType(tag: DW_TAG_member, name: "_getdate_err", scope: !712, file: !539, line: 367, baseType: !13, size: 32, offset: 288)
!721 = !DIDerivedType(tag: DW_TAG_member, name: "_mbrlen_state", scope: !712, file: !539, line: 368, baseType: !603, size: 64, offset: 320)
!722 = !DIDerivedType(tag: DW_TAG_member, name: "_mbrtowc_state", scope: !712, file: !539, line: 369, baseType: !603, size: 64, offset: 384)
!723 = !DIDerivedType(tag: DW_TAG_member, name: "_mbsrtowcs_state", scope: !712, file: !539, line: 370, baseType: !603, size: 64, offset: 448)
!724 = !DIDerivedType(tag: DW_TAG_member, name: "_wcrtomb_state", scope: !712, file: !539, line: 371, baseType: !603, size: 64, offset: 512)
!725 = !DIDerivedType(tag: DW_TAG_member, name: "_wcsrtombs_state", scope: !712, file: !539, line: 372, baseType: !603, size: 64, offset: 576)
!726 = !DIDerivedType(tag: DW_TAG_member, name: "_signal_buf", scope: !538, file: !539, line: 423, baseType: !536, size: 32, offset: 1888)
!727 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !612, line: 46, baseType: !7)
!728 = distinct !DICompileUnit(language: DW_LANG_C99, file: !729, producer: "Ubuntu clang version 14.0.6", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !730, globals: !731, splitDebugInlining: false, nameTableKind: None)
!729 = !DIFile(filename: "syscalls.c", directory: "/home/mjshen/RTOSExploration/Embedded-GUI-for-MT2523/project/mt7687_hdk/hal_examples/gpt_interrupt_repeat_mode/GCC")
!730 = !{!536, !534}
!731 = !{!528}
!732 = !{!733, !734, !735, !736}
!733 = !DILocalVariable(name: "r", arg: 1, scope: !530, file: !531, line: 63, type: !537)
!734 = !DILocalVariable(name: "nbytes", arg: 2, scope: !530, file: !531, line: 63, type: !727)
!735 = !DILocalVariable(name: "prev_heap_end", scope: !530, file: !531, line: 67, type: !536)
!736 = !DILocalVariable(name: "stack", scope: !530, file: !531, line: 68, type: !536)
!737 = !DIGlobalVariableExpression(var: !738, expr: !DIExpression())
!738 = distinct !DIGlobalVariable(name: "build_date_time_str", scope: !739, file: !744, line: 4, type: !750, isLocal: false, isDefinition: true)
!739 = distinct !DICompileUnit(language: DW_LANG_C99, file: !740, producer: "Ubuntu clang version 14.0.6", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, globals: !741, splitDebugInlining: false, nameTableKind: None)
!740 = !DIFile(filename: "/home/mjshen/RTOSExploration/Embedded-GUI-for-MT2523/project/mt7687_hdk/hal_examples/gpt_interrupt_repeat_mode/GCC/build/middleware/MTK/verno/verno.c", directory: "/home/mjshen/RTOSExploration/Embedded-GUI-for-MT2523/project/mt7687_hdk/hal_examples/gpt_interrupt_repeat_mode/GCC")
!741 = !{!737, !742, !748}
!742 = !DIGlobalVariableExpression(var: !743, expr: !DIExpression())
!743 = distinct !DIGlobalVariable(name: "sw_verno_str", scope: !739, file: !744, line: 5, type: !745, isLocal: false, isDefinition: true)
!744 = !DIFile(filename: "build/middleware/MTK/verno/verno.c", directory: "/home/mjshen/RTOSExploration/Embedded-GUI-for-MT2523/project/mt7687_hdk/hal_examples/gpt_interrupt_repeat_mode/GCC")
!745 = !DICompositeType(tag: DW_TAG_array_type, baseType: !352, size: 88, elements: !746)
!746 = !{!747}
!747 = !DISubrange(count: 11)
!748 = !DIGlobalVariableExpression(var: !749, expr: !DIExpression())
!749 = distinct !DIGlobalVariable(name: "hw_verno_str", scope: !739, file: !744, line: 6, type: !745, isLocal: false, isDefinition: true)
!750 = !DICompositeType(tag: DW_TAG_array_type, baseType: !352, size: 248, elements: !751)
!751 = !{!752}
!752 = !DISubrange(count: 31)
!753 = distinct !DICompileUnit(language: DW_LANG_C99, file: !754, producer: "Ubuntu clang version 14.0.6", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !755, retainedTypes: !761, splitDebugInlining: false, nameTableKind: None)
!754 = !DIFile(filename: "../../../../../driver/chip/mt7687/src/common/hal_gpio_7687.c", directory: "/home/mjshen/RTOSExploration/Embedded-GUI-for-MT2523/project/mt7687_hdk/hal_examples/gpt_interrupt_repeat_mode/GCC")
!755 = !{!756}
!756 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !757, line: 1209, baseType: !7, size: 32, elements: !758)
!757 = !DIFile(filename: "../../../../../driver/chip/mt7687/src/common/include/hal_gpio_7687.h", directory: "/home/mjshen/RTOSExploration/Embedded-GUI-for-MT2523/project/mt7687_hdk/hal_examples/gpt_interrupt_repeat_mode/GCC")
!758 = !{!759, !760}
!759 = !DIEnumerator(name: "ePAD_CONTROL_BY_N9", value: 0)
!760 = !DIEnumerator(name: "ePAD_CONTROL_BY_CM4", value: 1)
!761 = !{!58, !60}
!762 = distinct !DICompileUnit(language: DW_LANG_C99, file: !763, producer: "Ubuntu clang version 14.0.6", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !764, retainedTypes: !842, splitDebugInlining: false, nameTableKind: None)
!763 = !DIFile(filename: "../../../../../driver/chip/mt7687/src/common/hal_pinmux.c", directory: "/home/mjshen/RTOSExploration/Embedded-GUI-for-MT2523/project/mt7687_hdk/hal_examples/gpt_interrupt_repeat_mode/GCC")
!764 = !{!765}
!765 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !766, line: 150, baseType: !7, size: 32, elements: !767)
!766 = !DIFile(filename: "../../../../../driver/chip/mt7687/src/common/include/hal_pinmux.h", directory: "/home/mjshen/RTOSExploration/Embedded-GUI-for-MT2523/project/mt7687_hdk/hal_examples/gpt_interrupt_repeat_mode/GCC")
!767 = !{!768, !769, !770, !771, !772, !773, !774, !775, !776, !777, !778, !779, !780, !781, !782, !783, !784, !785, !786, !787, !788, !789, !790, !791, !792, !793, !794, !795, !796, !797, !798, !799, !800, !801, !802, !803, !804, !805, !806, !807, !808, !809, !810, !811, !812, !813, !814, !815, !816, !817, !818, !819, !820, !821, !822, !823, !824, !825, !826, !827, !828, !829, !830, !831, !832, !833, !834, !835, !836, !837, !838, !839, !840, !841}
!768 = !DIEnumerator(name: "ePAD_ANTSEL0", value: 0)
!769 = !DIEnumerator(name: "ePAD_ANTSEL1", value: 1)
!770 = !DIEnumerator(name: "ePAD_ANTSEL2", value: 2)
!771 = !DIEnumerator(name: "ePAD_ANTSEL3", value: 3)
!772 = !DIEnumerator(name: "ePAD_ANTSEL4", value: 4)
!773 = !DIEnumerator(name: "ePAD_ANTSEL5", value: 5)
!774 = !DIEnumerator(name: "ePAD_ANTSEL6", value: 6)
!775 = !DIEnumerator(name: "ePAD_ANTSEL7", value: 7)
!776 = !DIEnumerator(name: "ePAD_IN_GPIO8", value: 8)
!777 = !DIEnumerator(name: "ePAD_IN_GPIO9", value: 9)
!778 = !DIEnumerator(name: "ePAD_IN_GPIO10", value: 10)
!779 = !DIEnumerator(name: "ePAD_IN_GPIO11", value: 11)
!780 = !DIEnumerator(name: "ePAD_IN_GPIO12", value: 12)
!781 = !DIEnumerator(name: "ePAD_IN_GPIO13", value: 13)
!782 = !DIEnumerator(name: "ePAD_IN_GPIO14", value: 14)
!783 = !DIEnumerator(name: "ePAD_IN_GPIO15", value: 15)
!784 = !DIEnumerator(name: "ePAD_IN_GPIO16", value: 16)
!785 = !DIEnumerator(name: "ePAD_IN_GPIO17", value: 17)
!786 = !DIEnumerator(name: "ePAD_IN_GPIO18", value: 18)
!787 = !DIEnumerator(name: "ePAD_IN_GPIO19", value: 19)
!788 = !DIEnumerator(name: "ePAD_IN_GPIO20", value: 20)
!789 = !DIEnumerator(name: "ePAD_IN_GPIO21", value: 21)
!790 = !DIEnumerator(name: "ePAD_IN_GPIO22", value: 22)
!791 = !DIEnumerator(name: "ePAD_IN_UART0_TXD", value: 23)
!792 = !DIEnumerator(name: "ePAD_PERST_N", value: 24)
!793 = !DIEnumerator(name: "ePAD_WAKE_N", value: 25)
!794 = !DIEnumerator(name: "ePAD_CLK_REQ_N", value: 26)
!795 = !DIEnumerator(name: "ePAD_SDIO_CLK", value: 27)
!796 = !DIEnumerator(name: "ePAD_SDIO_CMD", value: 28)
!797 = !DIEnumerator(name: "ePAD_SDIO_DAT3", value: 29)
!798 = !DIEnumerator(name: "ePAD_SDIO_DAT2", value: 30)
!799 = !DIEnumerator(name: "ePAD_SDIO_DAT1", value: 31)
!800 = !DIEnumerator(name: "ePAD_SDIO_DAT0", value: 32)
!801 = !DIEnumerator(name: "ePAD_GPIO0", value: 33)
!802 = !DIEnumerator(name: "ePAD_GPIO1", value: 34)
!803 = !DIEnumerator(name: "ePAD_UART_DBG", value: 35)
!804 = !DIEnumerator(name: "ePAD_UART_RX", value: 36)
!805 = !DIEnumerator(name: "ePAD_UART_TX", value: 37)
!806 = !DIEnumerator(name: "ePAD_UART_RTS", value: 38)
!807 = !DIEnumerator(name: "ePAD_UART_CTS", value: 39)
!808 = !DIEnumerator(name: "ePAD_IN_GPIO44", value: 40)
!809 = !DIEnumerator(name: "ePAD_IN_GPIO45", value: 41)
!810 = !DIEnumerator(name: "ePAD_IN_GPIO46", value: 42)
!811 = !DIEnumerator(name: "ePAD_IN_GPIO47", value: 43)
!812 = !DIEnumerator(name: "ePAD_IN_GPIO48", value: 44)
!813 = !DIEnumerator(name: "ePAD_IN_GPIO49", value: 45)
!814 = !DIEnumerator(name: "ePAD_IN_GPIO50", value: 46)
!815 = !DIEnumerator(name: "ePAD_IN_GPIO51", value: 47)
!816 = !DIEnumerator(name: "ePAD_IN_GPIO52", value: 48)
!817 = !DIEnumerator(name: "ePAD_IN_GPIO53", value: 49)
!818 = !DIEnumerator(name: "ePAD_IN_GPIO54", value: 50)
!819 = !DIEnumerator(name: "ePAD_IN_PWM2", value: 51)
!820 = !DIEnumerator(name: "ePAD_IN_PWM3", value: 52)
!821 = !DIEnumerator(name: "ePAD_IN_PWM4", value: 53)
!822 = !DIEnumerator(name: "ePAD_IN_PWM5", value: 54)
!823 = !DIEnumerator(name: "ePAD_IN_PWM6", value: 55)
!824 = !DIEnumerator(name: "ePAD_IN_PWM7", value: 56)
!825 = !DIEnumerator(name: "ePAD_WF_RF_DIS_B", value: 57)
!826 = !DIEnumerator(name: "ePAD_BT_RF_DIS_B", value: 58)
!827 = !DIEnumerator(name: "ePAD_WF_LED_B", value: 59)
!828 = !DIEnumerator(name: "ePAD_BT_LED_B", value: 60)
!829 = !DIEnumerator(name: "ePAD_IN_ADC4", value: 61)
!830 = !DIEnumerator(name: "ePAD_IN_ADC5", value: 62)
!831 = !DIEnumerator(name: "ePAD_IN_ADC6", value: 63)
!832 = !DIEnumerator(name: "ePAD_IN_ADC7", value: 64)
!833 = !DIEnumerator(name: "ePAD_IN_ADC8", value: 65)
!834 = !DIEnumerator(name: "ePAD_IN_ADC9", value: 66)
!835 = !DIEnumerator(name: "ePAD_IN_ADC10", value: 67)
!836 = !DIEnumerator(name: "ePAD_IN_ADC11", value: 68)
!837 = !DIEnumerator(name: "ePAD_IN_ADC12", value: 69)
!838 = !DIEnumerator(name: "ePAD_IN_ADC13", value: 70)
!839 = !DIEnumerator(name: "ePAD_IN_ADC14", value: 71)
!840 = !DIEnumerator(name: "ePAD_IN_ADC15", value: 72)
!841 = !DIEnumerator(name: "ePAD_NUM", value: 73)
!842 = !{!58, !80}
!843 = distinct !DICompileUnit(language: DW_LANG_C99, file: !844, producer: "Ubuntu clang version 14.0.6", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !845, splitDebugInlining: false, nameTableKind: None)
!844 = !DIFile(filename: "../../../../../driver/chip/mt7687/src/common/nvic.c", directory: "/home/mjshen/RTOSExploration/Embedded-GUI-for-MT2523/project/mt7687_hdk/hal_examples/gpt_interrupt_repeat_mode/GCC")
!845 = !{!846, !871}
!846 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !847, size: 32)
!847 = !DIDerivedType(tag: DW_TAG_typedef, name: "SCB_Type", file: !158, line: 418, baseType: !848)
!848 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !158, line: 395, size: 1120, elements: !849)
!849 = !{!850, !851, !852, !853, !854, !855, !856, !857, !858, !859, !860, !861, !862, !863, !864, !865, !866, !867, !868, !869, !870}
!850 = !DIDerivedType(tag: DW_TAG_member, name: "CPUID", scope: !848, file: !158, line: 397, baseType: !197, size: 32)
!851 = !DIDerivedType(tag: DW_TAG_member, name: "ICSR", scope: !848, file: !158, line: 398, baseType: !91, size: 32, offset: 32)
!852 = !DIDerivedType(tag: DW_TAG_member, name: "VTOR", scope: !848, file: !158, line: 399, baseType: !91, size: 32, offset: 64)
!853 = !DIDerivedType(tag: DW_TAG_member, name: "AIRCR", scope: !848, file: !158, line: 400, baseType: !91, size: 32, offset: 96)
!854 = !DIDerivedType(tag: DW_TAG_member, name: "SCR", scope: !848, file: !158, line: 401, baseType: !91, size: 32, offset: 128)
!855 = !DIDerivedType(tag: DW_TAG_member, name: "CCR", scope: !848, file: !158, line: 402, baseType: !91, size: 32, offset: 160)
!856 = !DIDerivedType(tag: DW_TAG_member, name: "SHP", scope: !848, file: !158, line: 403, baseType: !204, size: 96, offset: 192)
!857 = !DIDerivedType(tag: DW_TAG_member, name: "SHCSR", scope: !848, file: !158, line: 404, baseType: !91, size: 32, offset: 288)
!858 = !DIDerivedType(tag: DW_TAG_member, name: "CFSR", scope: !848, file: !158, line: 405, baseType: !91, size: 32, offset: 320)
!859 = !DIDerivedType(tag: DW_TAG_member, name: "HFSR", scope: !848, file: !158, line: 406, baseType: !91, size: 32, offset: 352)
!860 = !DIDerivedType(tag: DW_TAG_member, name: "DFSR", scope: !848, file: !158, line: 407, baseType: !91, size: 32, offset: 384)
!861 = !DIDerivedType(tag: DW_TAG_member, name: "MMFAR", scope: !848, file: !158, line: 408, baseType: !91, size: 32, offset: 416)
!862 = !DIDerivedType(tag: DW_TAG_member, name: "BFAR", scope: !848, file: !158, line: 409, baseType: !91, size: 32, offset: 448)
!863 = !DIDerivedType(tag: DW_TAG_member, name: "AFSR", scope: !848, file: !158, line: 410, baseType: !91, size: 32, offset: 480)
!864 = !DIDerivedType(tag: DW_TAG_member, name: "PFR", scope: !848, file: !158, line: 411, baseType: !215, size: 64, offset: 512)
!865 = !DIDerivedType(tag: DW_TAG_member, name: "DFR", scope: !848, file: !158, line: 412, baseType: !197, size: 32, offset: 576)
!866 = !DIDerivedType(tag: DW_TAG_member, name: "ADR", scope: !848, file: !158, line: 413, baseType: !197, size: 32, offset: 608)
!867 = !DIDerivedType(tag: DW_TAG_member, name: "MMFR", scope: !848, file: !158, line: 414, baseType: !221, size: 128, offset: 640)
!868 = !DIDerivedType(tag: DW_TAG_member, name: "ISAR", scope: !848, file: !158, line: 415, baseType: !225, size: 160, offset: 768)
!869 = !DIDerivedType(tag: DW_TAG_member, name: "RESERVED0", scope: !848, file: !158, line: 416, baseType: !229, size: 160, offset: 928)
!870 = !DIDerivedType(tag: DW_TAG_member, name: "CPACR", scope: !848, file: !158, line: 417, baseType: !91, size: 32, offset: 1088)
!871 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !872, size: 32)
!872 = !DIDerivedType(tag: DW_TAG_typedef, name: "NVIC_Type", file: !158, line: 378, baseType: !873)
!873 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !158, line: 363, size: 28704, elements: !874)
!874 = !{!875, !876, !877, !878, !879, !880, !881, !882, !883, !884, !885, !886, !887}
!875 = !DIDerivedType(tag: DW_TAG_member, name: "ISER", scope: !873, file: !158, line: 365, baseType: !162, size: 256)
!876 = !DIDerivedType(tag: DW_TAG_member, name: "RESERVED0", scope: !873, file: !158, line: 366, baseType: !166, size: 768, offset: 256)
!877 = !DIDerivedType(tag: DW_TAG_member, name: "ICER", scope: !873, file: !158, line: 367, baseType: !162, size: 256, offset: 1024)
!878 = !DIDerivedType(tag: DW_TAG_member, name: "RSERVED1", scope: !873, file: !158, line: 368, baseType: !166, size: 768, offset: 1280)
!879 = !DIDerivedType(tag: DW_TAG_member, name: "ISPR", scope: !873, file: !158, line: 369, baseType: !162, size: 256, offset: 2048)
!880 = !DIDerivedType(tag: DW_TAG_member, name: "RESERVED2", scope: !873, file: !158, line: 370, baseType: !166, size: 768, offset: 2304)
!881 = !DIDerivedType(tag: DW_TAG_member, name: "ICPR", scope: !873, file: !158, line: 371, baseType: !162, size: 256, offset: 3072)
!882 = !DIDerivedType(tag: DW_TAG_member, name: "RESERVED3", scope: !873, file: !158, line: 372, baseType: !166, size: 768, offset: 3328)
!883 = !DIDerivedType(tag: DW_TAG_member, name: "IABR", scope: !873, file: !158, line: 373, baseType: !162, size: 256, offset: 4096)
!884 = !DIDerivedType(tag: DW_TAG_member, name: "RESERVED4", scope: !873, file: !158, line: 374, baseType: !177, size: 1792, offset: 4352)
!885 = !DIDerivedType(tag: DW_TAG_member, name: "IP", scope: !873, file: !158, line: 375, baseType: !181, size: 1920, offset: 6144)
!886 = !DIDerivedType(tag: DW_TAG_member, name: "RESERVED5", scope: !873, file: !158, line: 376, baseType: !188, size: 20608, offset: 8064)
!887 = !DIDerivedType(tag: DW_TAG_member, name: "STIR", scope: !873, file: !158, line: 377, baseType: !91, size: 32, offset: 28672)
!888 = distinct !DICompileUnit(language: DW_LANG_C99, file: !889, producer: "Ubuntu clang version 14.0.6", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !890, splitDebugInlining: false, nameTableKind: None)
!889 = !DIFile(filename: "../../../../../driver/chip/mt7687/src/common/pinmux.c", directory: "/home/mjshen/RTOSExploration/Embedded-GUI-for-MT2523/project/mt7687_hdk/hal_examples/gpt_interrupt_repeat_mode/GCC")
!890 = !{!891, !765}
!891 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !892, line: 55, baseType: !7, size: 32, elements: !893)
!892 = !DIFile(filename: "../../../../../driver/chip/mt7687/src/common/include/pinmux.h", directory: "/home/mjshen/RTOSExploration/Embedded-GUI-for-MT2523/project/mt7687_hdk/hal_examples/gpt_interrupt_repeat_mode/GCC")
!893 = !{!894, !895, !896, !897, !898, !899, !900, !901, !902, !903, !904, !905, !906, !907, !908, !909, !910, !911, !912, !913, !914, !915, !916, !917, !918, !919, !920, !921}
!894 = !DIEnumerator(name: "eIOT_GPIO_IDX_0", value: 0)
!895 = !DIEnumerator(name: "eIOT_GPIO_IDX_1", value: 1)
!896 = !DIEnumerator(name: "eIOT_GPIO_IDX_2", value: 2)
!897 = !DIEnumerator(name: "eIOT_GPIO_IDX_3", value: 3)
!898 = !DIEnumerator(name: "eIOT_GPIO_IDX_4", value: 4)
!899 = !DIEnumerator(name: "eIOT_GPIO_IDX_5", value: 5)
!900 = !DIEnumerator(name: "eIOT_GPIO_IDX_6", value: 6)
!901 = !DIEnumerator(name: "eIOT_GPIO_IDX_7", value: 7)
!902 = !DIEnumerator(name: "eIOT_GPIO_IDX_24", value: 24)
!903 = !DIEnumerator(name: "eIOT_GPIO_IDX_25", value: 25)
!904 = !DIEnumerator(name: "eIOT_GPIO_IDX_26", value: 26)
!905 = !DIEnumerator(name: "eIOT_GPIO_IDX_27", value: 27)
!906 = !DIEnumerator(name: "eIOT_GPIO_IDX_28", value: 28)
!907 = !DIEnumerator(name: "eIOT_GPIO_IDX_29", value: 29)
!908 = !DIEnumerator(name: "eIOT_GPIO_IDX_30", value: 30)
!909 = !DIEnumerator(name: "eIOT_GPIO_IDX_31", value: 31)
!910 = !DIEnumerator(name: "eIOT_GPIO_IDX_32", value: 32)
!911 = !DIEnumerator(name: "eIOT_GPIO_IDX_33", value: 33)
!912 = !DIEnumerator(name: "eIOT_GPIO_IDX_34", value: 34)
!913 = !DIEnumerator(name: "eIOT_GPIO_IDX_35", value: 35)
!914 = !DIEnumerator(name: "eIOT_GPIO_IDX_36", value: 36)
!915 = !DIEnumerator(name: "eIOT_GPIO_IDX_37", value: 37)
!916 = !DIEnumerator(name: "eIOT_GPIO_IDX_38", value: 38)
!917 = !DIEnumerator(name: "eIOT_GPIO_IDX_39", value: 39)
!918 = !DIEnumerator(name: "eIOT_GPIO_IDX_57", value: 57)
!919 = !DIEnumerator(name: "eIOT_GPIO_IDX_58", value: 58)
!920 = !DIEnumerator(name: "eIOT_GPIO_IDX_59", value: 59)
!921 = !DIEnumerator(name: "eIOT_GPIO_IDX_60", value: 60)
!922 = distinct !DICompileUnit(language: DW_LANG_C99, file: !923, producer: "Ubuntu clang version 14.0.6", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !924, splitDebugInlining: false, nameTableKind: None)
!923 = !DIFile(filename: "../../../../../driver/chip/mt7687/src/common/timer.c", directory: "/home/mjshen/RTOSExploration/Embedded-GUI-for-MT2523/project/mt7687_hdk/hal_examples/gpt_interrupt_repeat_mode/GCC")
!924 = !{!578, !58}
!925 = distinct !DICompileUnit(language: DW_LANG_C99, file: !926, producer: "Ubuntu clang version 14.0.6", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!926 = !DIFile(filename: "../../../../../driver/chip/mt7687/src/hal_log.c", directory: "/home/mjshen/RTOSExploration/Embedded-GUI-for-MT2523/project/mt7687_hdk/hal_examples/gpt_interrupt_repeat_mode/GCC")
!927 = distinct !DICompileUnit(language: DW_LANG_C99, file: !928, producer: "Ubuntu clang version 14.0.6", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !929, retainedTypes: !962, splitDebugInlining: false, nameTableKind: None)
!928 = !DIFile(filename: "../../../../../driver/chip/mt7687/src/hal_gpio.c", directory: "/home/mjshen/RTOSExploration/Embedded-GUI-for-MT2523/project/mt7687_hdk/hal_examples/gpt_interrupt_repeat_mode/GCC")
!929 = !{!930, !412, !891, !937, !943, !947, !951, !957}
!930 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !931, line: 233, baseType: !13, size: 32, elements: !932)
!931 = !DIFile(filename: "../../../../../driver/chip/inc/hal_gpio.h", directory: "/home/mjshen/RTOSExploration/Embedded-GUI-for-MT2523/project/mt7687_hdk/hal_examples/gpt_interrupt_repeat_mode/GCC")
!932 = !{!933, !934, !935, !936}
!933 = !DIEnumerator(name: "HAL_PINMUX_STATUS_ERROR", value: -3)
!934 = !DIEnumerator(name: "HAL_PINMUX_STATUS_ERROR_PORT", value: -2)
!935 = !DIEnumerator(name: "HAL_PINMUX_STATUS_INVALID_FUNCTION", value: -1)
!936 = !DIEnumerator(name: "HAL_PINMUX_STATUS_OK", value: 0)
!937 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !931, line: 224, baseType: !13, size: 32, elements: !938)
!938 = !{!939, !940, !941, !942}
!939 = !DIEnumerator(name: "HAL_GPIO_STATUS_ERROR", value: -3)
!940 = !DIEnumerator(name: "HAL_GPIO_STATUS_ERROR_PIN", value: -2)
!941 = !DIEnumerator(name: "HAL_GPIO_STATUS_INVALID_PARAMETER", value: -1)
!942 = !DIEnumerator(name: "HAL_GPIO_STATUS_OK", value: 0)
!943 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !931, line: 217, baseType: !7, size: 32, elements: !944)
!944 = !{!945, !946}
!945 = !DIEnumerator(name: "HAL_GPIO_DATA_LOW", value: 0)
!946 = !DIEnumerator(name: "HAL_GPIO_DATA_HIGH", value: 1)
!947 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !931, line: 210, baseType: !7, size: 32, elements: !948)
!948 = !{!949, !950}
!949 = !DIEnumerator(name: "HAL_GPIO_DIRECTION_INPUT", value: 0)
!950 = !DIEnumerator(name: "HAL_GPIO_DIRECTION_OUTPUT", value: 1)
!951 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !931, line: 242, baseType: !7, size: 32, elements: !952)
!952 = !{!953, !954, !955, !956}
!953 = !DIEnumerator(name: "HAL_GPIO_DRIVING_CURRENT_4MA", value: 0)
!954 = !DIEnumerator(name: "HAL_GPIO_DRIVING_CURRENT_8MA", value: 1)
!955 = !DIEnumerator(name: "HAL_GPIO_DRIVING_CURRENT_12MA", value: 2)
!956 = !DIEnumerator(name: "HAL_GPIO_DRIVING_CURRENT_16MA", value: 3)
!957 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !958, line: 57, baseType: !7, size: 32, elements: !959)
!958 = !DIFile(filename: "../../../../../driver/chip/mt7687/src/common/include/low_hal_gpio.h", directory: "/home/mjshen/RTOSExploration/Embedded-GUI-for-MT2523/project/mt7687_hdk/hal_examples/gpt_interrupt_repeat_mode/GCC")
!959 = !{!960, !961}
!960 = !DIEnumerator(name: "eDirection_IN", value: 0)
!961 = !DIEnumerator(name: "eDirection_OUT", value: 1)
!962 = !{!963, !153, !964, !183, !965, !966}
!963 = !DIDerivedType(tag: DW_TAG_typedef, name: "ENUM_IOT_GPIO_NAME_T", file: !892, line: 87, baseType: !891)
!964 = !DIDerivedType(tag: DW_TAG_typedef, name: "hal_gpio_data_t", file: !931, line: 220, baseType: !943)
!965 = !DIDerivedType(tag: DW_TAG_typedef, name: "hal_gpio_driving_current_t", file: !931, line: 247, baseType: !951)
!966 = !DIDerivedType(tag: DW_TAG_typedef, name: "ENUM_DIR_T", file: !958, line: 60, baseType: !957)
!967 = !{!"Ubuntu clang version 14.0.6"}
!968 = !{i32 7, !"Dwarf Version", i32 2}
!969 = !{i32 2, !"Debug Info Version", i32 3}
!970 = !{i32 1, !"wchar_size", i32 4}
!971 = !{i32 1, !"min_enum_size", i32 4}
!972 = !{i32 1, !"branch-target-enforcement", i32 0}
!973 = !{i32 1, !"sign-return-address", i32 0}
!974 = !{i32 1, !"sign-return-address-all", i32 0}
!975 = !{i32 1, !"sign-return-address-with-bkey", i32 0}
!976 = !{i32 7, !"frame-pointer", i32 2}
!977 = distinct !DISubprogram(name: "GPT_ResetTimer", scope: !3, file: !3, line: 73, type: !978, scopeLine: 74, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !980)
!978 = !DISubroutineType(types: !979)
!979 = !{null, !60, !60, !296}
!980 = !{!981, !982, !983}
!981 = !DILocalVariable(name: "timerNum", arg: 1, scope: !977, file: !3, line: 73, type: !60)
!982 = !DILocalVariable(name: "countValue", arg: 2, scope: !977, file: !3, line: 73, type: !60)
!983 = !DILocalVariable(name: "autoRepeat", arg: 3, scope: !977, file: !3, line: 73, type: !296)
!984 = !DILocation(line: 0, scope: !977)
!985 = !DILocation(line: 75, column: 5, scope: !986)
!986 = distinct !DILexicalBlock(scope: !977, file: !3, line: 75, column: 5)
!987 = !DILocation(line: 75, column: 5, scope: !977)
!988 = !DILocation(line: 75, column: 5, scope: !989)
!989 = distinct !DILexicalBlock(scope: !986, file: !3, line: 75, column: 5)
!990 = distinct !{!990, !988, !988}
!991 = !DILocation(line: 77, column: 9, scope: !977)
!992 = !DILocation(line: 78, column: 30, scope: !993)
!993 = distinct !DILexicalBlock(scope: !994, file: !3, line: 77, column: 24)
!994 = distinct !DILexicalBlock(scope: !977, file: !3, line: 77, column: 9)
!995 = !DILocation(line: 0, scope: !996)
!996 = distinct !DILexicalBlock(scope: !993, file: !3, line: 79, column: 13)
!997 = !DILocation(line: 79, column: 13, scope: !993)
!998 = !DILocation(line: 80, column: 34, scope: !999)
!999 = distinct !DILexicalBlock(scope: !996, file: !3, line: 79, column: 37)
!1000 = !DILocation(line: 81, column: 9, scope: !999)
!1001 = !DILocation(line: 82, column: 34, scope: !1002)
!1002 = distinct !DILexicalBlock(scope: !996, file: !3, line: 81, column: 16)
!1003 = !DILocation(line: 85, column: 30, scope: !1004)
!1004 = distinct !DILexicalBlock(scope: !1005, file: !3, line: 84, column: 31)
!1005 = distinct !DILexicalBlock(scope: !994, file: !3, line: 84, column: 16)
!1006 = !DILocation(line: 0, scope: !1007)
!1007 = distinct !DILexicalBlock(scope: !1004, file: !3, line: 86, column: 13)
!1008 = !DILocation(line: 86, column: 13, scope: !1004)
!1009 = !DILocation(line: 87, column: 34, scope: !1010)
!1010 = distinct !DILexicalBlock(scope: !1007, file: !3, line: 86, column: 37)
!1011 = !DILocation(line: 88, column: 9, scope: !1010)
!1012 = !DILocation(line: 89, column: 34, scope: !1013)
!1013 = distinct !DILexicalBlock(scope: !1007, file: !3, line: 88, column: 16)
!1014 = !DILocation(line: 92, column: 1, scope: !977)
!1015 = distinct !DISubprogram(name: "GPT_Start", scope: !3, file: !3, line: 94, type: !1016, scopeLine: 95, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1018)
!1016 = !DISubroutineType(types: !1017)
!1017 = !{null, !60}
!1018 = !{!1019}
!1019 = !DILocalVariable(name: "timerNum", arg: 1, scope: !1015, file: !3, line: 94, type: !60)
!1020 = !DILocation(line: 0, scope: !1015)
!1021 = !DILocation(line: 96, column: 5, scope: !1015)
!1022 = !DILocation(line: 96, column: 5, scope: !1023)
!1023 = distinct !DILexicalBlock(scope: !1024, file: !3, line: 96, column: 5)
!1024 = distinct !DILexicalBlock(scope: !1015, file: !3, line: 96, column: 5)
!1025 = distinct !{!1025, !1022, !1022}
!1026 = !DILocation(line: 99, column: 30, scope: !1027)
!1027 = distinct !DILexicalBlock(scope: !1028, file: !3, line: 98, column: 24)
!1028 = distinct !DILexicalBlock(scope: !1015, file: !3, line: 98, column: 9)
!1029 = !DILocation(line: 100, column: 9, scope: !1027)
!1030 = !DILocation(line: 101, column: 5, scope: !1027)
!1031 = !DILocation(line: 102, column: 30, scope: !1032)
!1032 = distinct !DILexicalBlock(scope: !1033, file: !3, line: 101, column: 31)
!1033 = distinct !DILexicalBlock(scope: !1028, file: !3, line: 101, column: 16)
!1034 = !DILocation(line: 103, column: 9, scope: !1032)
!1035 = !DILocation(line: 104, column: 5, scope: !1032)
!1036 = !DILocation(line: 105, column: 30, scope: !1037)
!1037 = distinct !DILexicalBlock(scope: !1038, file: !3, line: 104, column: 31)
!1038 = distinct !DILexicalBlock(scope: !1033, file: !3, line: 104, column: 16)
!1039 = !DILocation(line: 106, column: 5, scope: !1037)
!1040 = !DILocation(line: 108, column: 1, scope: !1015)
!1041 = distinct !DISubprogram(name: "GPT_Stop", scope: !3, file: !3, line: 110, type: !1016, scopeLine: 111, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1042)
!1042 = !{!1043}
!1043 = !DILocalVariable(name: "timerNum", arg: 1, scope: !1041, file: !3, line: 110, type: !60)
!1044 = !DILocation(line: 0, scope: !1041)
!1045 = !DILocation(line: 112, column: 9, scope: !1041)
!1046 = !DILocation(line: 113, column: 30, scope: !1047)
!1047 = distinct !DILexicalBlock(scope: !1048, file: !3, line: 112, column: 24)
!1048 = distinct !DILexicalBlock(scope: !1041, file: !3, line: 112, column: 9)
!1049 = !DILocation(line: 114, column: 30, scope: !1047)
!1050 = !DILocation(line: 115, column: 31, scope: !1047)
!1051 = !DILocation(line: 117, column: 5, scope: !1047)
!1052 = !DILocation(line: 118, column: 30, scope: !1053)
!1053 = distinct !DILexicalBlock(scope: !1054, file: !3, line: 117, column: 31)
!1054 = distinct !DILexicalBlock(scope: !1048, file: !3, line: 117, column: 16)
!1055 = !DILocation(line: 119, column: 30, scope: !1053)
!1056 = !DILocation(line: 120, column: 31, scope: !1053)
!1057 = !DILocation(line: 121, column: 5, scope: !1053)
!1058 = !DILocation(line: 122, column: 30, scope: !1059)
!1059 = distinct !DILexicalBlock(scope: !1060, file: !3, line: 121, column: 31)
!1060 = distinct !DILexicalBlock(scope: !1054, file: !3, line: 121, column: 16)
!1061 = !DILocation(line: 123, column: 5, scope: !1059)
!1062 = !DILocation(line: 124, column: 30, scope: !1063)
!1063 = distinct !DILexicalBlock(scope: !1064, file: !3, line: 123, column: 31)
!1064 = distinct !DILexicalBlock(scope: !1060, file: !3, line: 123, column: 16)
!1065 = !DILocation(line: 125, column: 5, scope: !1063)
!1066 = !DILocation(line: 128, column: 1, scope: !1041)
!1067 = distinct !DISubprogram(name: "GPT_INT_Handler", scope: !3, file: !3, line: 130, type: !238, scopeLine: 131, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1068)
!1068 = !{!1069, !1070}
!1069 = !DILocalVariable(name: "irq_number", arg: 1, scope: !1067, file: !3, line: 130, type: !152)
!1070 = !DILocalVariable(name: "GPT_Status", scope: !1067, file: !3, line: 132, type: !131)
!1071 = !DILocation(line: 0, scope: !1067)
!1072 = !DILocation(line: 135, column: 18, scope: !1067)
!1073 = !DILocation(line: 136, column: 26, scope: !1067)
!1074 = !DILocation(line: 136, column: 24, scope: !1067)
!1075 = !DILocation(line: 138, column: 20, scope: !1076)
!1076 = distinct !DILexicalBlock(scope: !1067, file: !3, line: 138, column: 9)
!1077 = !DILocation(line: 138, column: 9, scope: !1067)
!1078 = !DILocation(line: 141, column: 27, scope: !1079)
!1079 = distinct !DILexicalBlock(scope: !1076, file: !3, line: 141, column: 16)
!1080 = !DILocation(line: 141, column: 16, scope: !1076)
!1081 = !DILocation(line: 0, scope: !1076)
!1082 = !DILocation(line: 145, column: 1, scope: !1067)
!1083 = distinct !DISubprogram(name: "GPT_init", scope: !3, file: !3, line: 147, type: !1084, scopeLine: 148, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1086)
!1084 = !DISubroutineType(types: !1085)
!1085 = !{null, !60, !60, !74}
!1086 = !{!1087, !1088, !1089}
!1087 = !DILocalVariable(name: "timerNum", arg: 1, scope: !1083, file: !3, line: 147, type: !60)
!1088 = !DILocalVariable(name: "speed_32us", arg: 2, scope: !1083, file: !3, line: 147, type: !60)
!1089 = !DILocalVariable(name: "GPT_Callback", arg: 3, scope: !1083, file: !3, line: 147, type: !74)
!1090 = !DILocation(line: 0, scope: !1083)
!1091 = !DILocation(line: 149, column: 5, scope: !1083)
!1092 = !DILocation(line: 149, column: 5, scope: !1093)
!1093 = distinct !DILexicalBlock(scope: !1094, file: !3, line: 149, column: 5)
!1094 = distinct !DILexicalBlock(scope: !1083, file: !3, line: 149, column: 5)
!1095 = distinct !{!1095, !1092, !1092}
!1096 = !DILocation(line: 149, column: 5, scope: !1094)
!1097 = !DILocation(line: 151, column: 23, scope: !1098)
!1098 = distinct !DILexicalBlock(scope: !1083, file: !3, line: 151, column: 9)
!1099 = !DILocation(line: 152, column: 9, scope: !1100)
!1100 = distinct !DILexicalBlock(scope: !1098, file: !3, line: 151, column: 41)
!1101 = !DILocation(line: 153, column: 9, scope: !1100)
!1102 = !DILocation(line: 154, column: 9, scope: !1100)
!1103 = !DILocation(line: 155, column: 5, scope: !1100)
!1104 = !DILocation(line: 157, column: 9, scope: !1083)
!1105 = !DILocation(line: 158, column: 37, scope: !1106)
!1106 = distinct !DILexicalBlock(scope: !1107, file: !3, line: 157, column: 24)
!1107 = distinct !DILexicalBlock(scope: !1083, file: !3, line: 157, column: 9)
!1108 = !DILocation(line: 159, column: 30, scope: !1106)
!1109 = !DILocation(line: 160, column: 45, scope: !1106)
!1110 = !DILocation(line: 160, column: 30, scope: !1106)
!1111 = !DILocation(line: 161, column: 5, scope: !1106)
!1112 = !DILocation(line: 162, column: 37, scope: !1113)
!1113 = distinct !DILexicalBlock(scope: !1114, file: !3, line: 161, column: 31)
!1114 = distinct !DILexicalBlock(scope: !1107, file: !3, line: 161, column: 16)
!1115 = !DILocation(line: 163, column: 30, scope: !1113)
!1116 = !DILocation(line: 164, column: 45, scope: !1113)
!1117 = !DILocation(line: 164, column: 30, scope: !1113)
!1118 = !DILocation(line: 165, column: 5, scope: !1113)
!1119 = !DILocation(line: 166, column: 59, scope: !1120)
!1120 = distinct !DILexicalBlock(scope: !1121, file: !3, line: 165, column: 31)
!1121 = distinct !DILexicalBlock(scope: !1114, file: !3, line: 165, column: 16)
!1122 = !DILocation(line: 166, column: 45, scope: !1120)
!1123 = !DILocation(line: 166, column: 30, scope: !1120)
!1124 = !DILocation(line: 167, column: 5, scope: !1120)
!1125 = !DILocation(line: 168, column: 59, scope: !1126)
!1126 = distinct !DILexicalBlock(scope: !1127, file: !3, line: 167, column: 31)
!1127 = distinct !DILexicalBlock(scope: !1121, file: !3, line: 167, column: 16)
!1128 = !DILocation(line: 168, column: 45, scope: !1126)
!1129 = !DILocation(line: 168, column: 30, scope: !1126)
!1130 = !DILocation(line: 169, column: 30, scope: !1126)
!1131 = !DILocation(line: 170, column: 5, scope: !1126)
!1132 = !DILocation(line: 171, column: 1, scope: !1083)
!1133 = distinct !DISubprogram(name: "GPT_return_current_count", scope: !3, file: !3, line: 173, type: !1134, scopeLine: 174, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1136)
!1134 = !DISubroutineType(types: !1135)
!1135 = !{!60, !60}
!1136 = !{!1137, !1138}
!1137 = !DILocalVariable(name: "timerNum", arg: 1, scope: !1133, file: !3, line: 173, type: !60)
!1138 = !DILocalVariable(name: "current_count", scope: !1133, file: !3, line: 175, type: !60)
!1139 = !DILocation(line: 0, scope: !1133)
!1140 = !DILocation(line: 177, column: 5, scope: !1133)
!1141 = !DILocation(line: 177, column: 5, scope: !1142)
!1142 = distinct !DILexicalBlock(scope: !1143, file: !3, line: 177, column: 5)
!1143 = distinct !DILexicalBlock(scope: !1133, file: !3, line: 177, column: 5)
!1144 = distinct !{!1144, !1141, !1141}
!1145 = !DILocation(line: 183, column: 5, scope: !1146)
!1146 = distinct !DILexicalBlock(scope: !1147, file: !3, line: 181, column: 31)
!1147 = distinct !DILexicalBlock(scope: !1148, file: !3, line: 181, column: 16)
!1148 = distinct !DILexicalBlock(scope: !1133, file: !3, line: 179, column: 9)
!1149 = !DILocation(line: 185, column: 5, scope: !1150)
!1150 = distinct !DILexicalBlock(scope: !1151, file: !3, line: 183, column: 31)
!1151 = distinct !DILexicalBlock(scope: !1147, file: !3, line: 183, column: 16)
!1152 = !DILocation(line: 187, column: 5, scope: !1153)
!1153 = distinct !DILexicalBlock(scope: !1154, file: !3, line: 185, column: 31)
!1154 = distinct !DILexicalBlock(scope: !1151, file: !3, line: 185, column: 16)
!1155 = !DILocation(line: 0, scope: !1148)
!1156 = !DILocation(line: 189, column: 5, scope: !1133)
!1157 = distinct !DISubprogram(name: "CM4_GPT2Init", scope: !3, file: !3, line: 193, type: !75, scopeLine: 194, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1158)
!1158 = !{}
!1159 = !DILocation(line: 195, column: 5, scope: !1157)
!1160 = !DILocation(line: 196, column: 1, scope: !1157)
!1161 = distinct !DISubprogram(name: "CM4_GPT4Init", scope: !3, file: !3, line: 198, type: !75, scopeLine: 199, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1158)
!1162 = !DILocation(line: 200, column: 5, scope: !1161)
!1163 = !DILocation(line: 201, column: 1, scope: !1161)
!1164 = distinct !DISubprogram(name: "halGPIO_ConfDirection", scope: !754, file: !754, line: 54, type: !1165, scopeLine: 55, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !753, retainedNodes: !1168)
!1165 = !DISubroutineType(types: !1166)
!1166 = !{!1167, !80, !133}
!1167 = !DIDerivedType(tag: DW_TAG_typedef, name: "INT32", file: !6, line: 56, baseType: !13)
!1168 = !{!1169, !1170, !1171, !1173}
!1169 = !DILocalVariable(name: "GPIO_pin", arg: 1, scope: !1164, file: !754, line: 54, type: !80)
!1170 = !DILocalVariable(name: "outEnable", arg: 2, scope: !1164, file: !754, line: 54, type: !133)
!1171 = !DILocalVariable(name: "no", scope: !1164, file: !754, line: 57, type: !1172)
!1172 = !DIDerivedType(tag: DW_TAG_typedef, name: "UINT16", file: !6, line: 60, baseType: !132)
!1173 = !DILocalVariable(name: "remainder", scope: !1164, file: !754, line: 58, type: !1172)
!1174 = !DILocation(line: 0, scope: !1164)
!1175 = !DILocation(line: 59, column: 19, scope: !1164)
!1176 = !DILocation(line: 60, column: 17, scope: !1164)
!1177 = !DILocation(line: 61, column: 5, scope: !1164)
!1178 = !DILocation(line: 65, column: 27, scope: !1179)
!1179 = distinct !DILexicalBlock(scope: !1180, file: !754, line: 65, column: 17)
!1180 = distinct !DILexicalBlock(scope: !1164, file: !754, line: 61, column: 17)
!1181 = !DILocation(line: 0, scope: !1179)
!1182 = !DILocation(line: 65, column: 17, scope: !1180)
!1183 = !DILocation(line: 66, column: 21, scope: !1184)
!1184 = distinct !DILexicalBlock(scope: !1179, file: !754, line: 65, column: 33)
!1185 = !DILocation(line: 67, column: 73, scope: !1186)
!1186 = distinct !DILexicalBlock(scope: !1187, file: !754, line: 66, column: 38)
!1187 = distinct !DILexicalBlock(scope: !1184, file: !754, line: 66, column: 21)
!1188 = !DILocation(line: 67, column: 69, scope: !1186)
!1189 = !DILocation(line: 67, column: 66, scope: !1186)
!1190 = !DILocation(line: 68, column: 17, scope: !1186)
!1191 = !DILocation(line: 68, column: 28, scope: !1187)
!1192 = !DILocation(line: 69, column: 77, scope: !1193)
!1193 = distinct !DILexicalBlock(scope: !1194, file: !754, line: 68, column: 45)
!1194 = distinct !DILexicalBlock(scope: !1187, file: !754, line: 68, column: 28)
!1195 = !DILocation(line: 70, column: 77, scope: !1193)
!1196 = !DILocation(line: 71, column: 17, scope: !1193)
!1197 = !DILocation(line: 72, column: 77, scope: !1198)
!1198 = distinct !DILexicalBlock(scope: !1199, file: !754, line: 71, column: 45)
!1199 = distinct !DILexicalBlock(scope: !1194, file: !754, line: 71, column: 28)
!1200 = !DILocation(line: 73, column: 77, scope: !1198)
!1201 = !DILocation(line: 74, column: 17, scope: !1198)
!1202 = !DILocation(line: 75, column: 79, scope: !1203)
!1203 = distinct !DILexicalBlock(scope: !1204, file: !754, line: 74, column: 45)
!1204 = distinct !DILexicalBlock(scope: !1199, file: !754, line: 74, column: 28)
!1205 = !DILocation(line: 76, column: 79, scope: !1203)
!1206 = !DILocation(line: 77, column: 17, scope: !1203)
!1207 = !DILocation(line: 78, column: 79, scope: !1208)
!1208 = distinct !DILexicalBlock(scope: !1209, file: !754, line: 77, column: 45)
!1209 = distinct !DILexicalBlock(scope: !1204, file: !754, line: 77, column: 28)
!1210 = !DILocation(line: 79, column: 79, scope: !1208)
!1211 = !DILocation(line: 80, column: 17, scope: !1208)
!1212 = !DILocation(line: 81, column: 79, scope: !1213)
!1213 = distinct !DILexicalBlock(scope: !1214, file: !754, line: 80, column: 45)
!1214 = distinct !DILexicalBlock(scope: !1209, file: !754, line: 80, column: 28)
!1215 = !DILocation(line: 82, column: 79, scope: !1213)
!1216 = !DILocation(line: 83, column: 17, scope: !1213)
!1217 = !DILocation(line: 85, column: 17, scope: !1184)
!1218 = !DILocation(line: 86, column: 13, scope: !1184)
!1219 = !DILocation(line: 88, column: 21, scope: !1220)
!1220 = distinct !DILexicalBlock(scope: !1179, file: !754, line: 86, column: 20)
!1221 = !DILocation(line: 89, column: 72, scope: !1222)
!1222 = distinct !DILexicalBlock(scope: !1223, file: !754, line: 88, column: 38)
!1223 = distinct !DILexicalBlock(scope: !1220, file: !754, line: 88, column: 21)
!1224 = !DILocation(line: 89, column: 66, scope: !1222)
!1225 = !DILocation(line: 90, column: 17, scope: !1222)
!1226 = !DILocation(line: 90, column: 28, scope: !1223)
!1227 = !DILocation(line: 91, column: 77, scope: !1228)
!1228 = distinct !DILexicalBlock(scope: !1229, file: !754, line: 90, column: 45)
!1229 = distinct !DILexicalBlock(scope: !1223, file: !754, line: 90, column: 28)
!1230 = !DILocation(line: 92, column: 17, scope: !1228)
!1231 = !DILocation(line: 93, column: 77, scope: !1232)
!1232 = distinct !DILexicalBlock(scope: !1233, file: !754, line: 92, column: 45)
!1233 = distinct !DILexicalBlock(scope: !1229, file: !754, line: 92, column: 28)
!1234 = !DILocation(line: 94, column: 17, scope: !1232)
!1235 = !DILocation(line: 95, column: 79, scope: !1236)
!1236 = distinct !DILexicalBlock(scope: !1237, file: !754, line: 94, column: 45)
!1237 = distinct !DILexicalBlock(scope: !1233, file: !754, line: 94, column: 28)
!1238 = !DILocation(line: 96, column: 17, scope: !1236)
!1239 = !DILocation(line: 97, column: 79, scope: !1240)
!1240 = distinct !DILexicalBlock(scope: !1241, file: !754, line: 96, column: 45)
!1241 = distinct !DILexicalBlock(scope: !1237, file: !754, line: 96, column: 28)
!1242 = !DILocation(line: 98, column: 17, scope: !1240)
!1243 = !DILocation(line: 99, column: 79, scope: !1244)
!1244 = distinct !DILexicalBlock(scope: !1245, file: !754, line: 98, column: 45)
!1245 = distinct !DILexicalBlock(scope: !1241, file: !754, line: 98, column: 28)
!1246 = !DILocation(line: 100, column: 17, scope: !1244)
!1247 = !DILocation(line: 103, column: 17, scope: !1220)
!1248 = !DILocation(line: 109, column: 27, scope: !1249)
!1249 = distinct !DILexicalBlock(scope: !1180, file: !754, line: 109, column: 17)
!1250 = !DILocation(line: 0, scope: !1249)
!1251 = !DILocation(line: 109, column: 17, scope: !1180)
!1252 = !DILocation(line: 110, column: 21, scope: !1253)
!1253 = distinct !DILexicalBlock(scope: !1249, file: !754, line: 109, column: 33)
!1254 = !DILocation(line: 111, column: 73, scope: !1255)
!1255 = distinct !DILexicalBlock(scope: !1256, file: !754, line: 110, column: 36)
!1256 = distinct !DILexicalBlock(scope: !1253, file: !754, line: 110, column: 21)
!1257 = !DILocation(line: 111, column: 69, scope: !1255)
!1258 = !DILocation(line: 111, column: 66, scope: !1255)
!1259 = !DILocation(line: 112, column: 17, scope: !1255)
!1260 = !DILocation(line: 113, column: 79, scope: !1261)
!1261 = distinct !DILexicalBlock(scope: !1256, file: !754, line: 112, column: 24)
!1262 = !DILocation(line: 114, column: 79, scope: !1261)
!1263 = !DILocation(line: 117, column: 17, scope: !1253)
!1264 = !DILocation(line: 118, column: 13, scope: !1253)
!1265 = !DILocation(line: 120, column: 21, scope: !1266)
!1266 = distinct !DILexicalBlock(scope: !1249, file: !754, line: 118, column: 20)
!1267 = !DILocation(line: 121, column: 72, scope: !1268)
!1268 = distinct !DILexicalBlock(scope: !1269, file: !754, line: 120, column: 36)
!1269 = distinct !DILexicalBlock(scope: !1266, file: !754, line: 120, column: 21)
!1270 = !DILocation(line: 121, column: 66, scope: !1268)
!1271 = !DILocation(line: 122, column: 17, scope: !1268)
!1272 = !DILocation(line: 123, column: 79, scope: !1273)
!1273 = distinct !DILexicalBlock(scope: !1269, file: !754, line: 122, column: 24)
!1274 = !DILocation(line: 126, column: 17, scope: !1266)
!1275 = !DILocation(line: 133, column: 1, scope: !1164)
!1276 = distinct !DISubprogram(name: "halGPO_Write", scope: !754, file: !754, line: 136, type: !1165, scopeLine: 137, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !753, retainedNodes: !1277)
!1277 = !{!1278, !1279, !1280, !1281}
!1278 = !DILocalVariable(name: "GPIO_pin", arg: 1, scope: !1276, file: !754, line: 136, type: !80)
!1279 = !DILocalVariable(name: "writeValue", arg: 2, scope: !1276, file: !754, line: 136, type: !133)
!1280 = !DILocalVariable(name: "no", scope: !1276, file: !754, line: 138, type: !1172)
!1281 = !DILocalVariable(name: "remainder", scope: !1276, file: !754, line: 139, type: !1172)
!1282 = !DILocation(line: 0, scope: !1276)
!1283 = !DILocation(line: 140, column: 19, scope: !1276)
!1284 = !DILocation(line: 141, column: 17, scope: !1276)
!1285 = !DILocation(line: 142, column: 5, scope: !1276)
!1286 = !DILocation(line: 145, column: 17, scope: !1287)
!1287 = distinct !DILexicalBlock(scope: !1288, file: !754, line: 145, column: 17)
!1288 = distinct !DILexicalBlock(scope: !1276, file: !754, line: 142, column: 17)
!1289 = !DILocation(line: 0, scope: !1287)
!1290 = !DILocation(line: 145, column: 17, scope: !1288)
!1291 = !DILocation(line: 146, column: 17, scope: !1292)
!1292 = distinct !DILexicalBlock(scope: !1287, file: !754, line: 145, column: 29)
!1293 = !DILocation(line: 147, column: 13, scope: !1292)
!1294 = !DILocation(line: 148, column: 17, scope: !1295)
!1295 = distinct !DILexicalBlock(scope: !1287, file: !754, line: 147, column: 20)
!1296 = !DILocation(line: 153, column: 17, scope: !1297)
!1297 = distinct !DILexicalBlock(scope: !1288, file: !754, line: 153, column: 17)
!1298 = !DILocation(line: 0, scope: !1297)
!1299 = !DILocation(line: 153, column: 17, scope: !1288)
!1300 = !DILocation(line: 154, column: 17, scope: !1301)
!1301 = distinct !DILexicalBlock(scope: !1297, file: !754, line: 153, column: 29)
!1302 = !DILocation(line: 155, column: 13, scope: !1301)
!1303 = !DILocation(line: 156, column: 17, scope: !1304)
!1304 = distinct !DILexicalBlock(scope: !1297, file: !754, line: 155, column: 20)
!1305 = !DILocation(line: 163, column: 1, scope: !1276)
!1306 = distinct !DISubprogram(name: "halgetGPIO_DOUT", scope: !754, file: !754, line: 169, type: !1307, scopeLine: 170, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !753, retainedNodes: !1309)
!1307 = !DISubroutineType(types: !1308)
!1308 = !{!133, !80}
!1309 = !{!1310, !1311, !1312, !1313}
!1310 = !DILocalVariable(name: "GPIO_pin", arg: 1, scope: !1306, file: !754, line: 169, type: !80)
!1311 = !DILocalVariable(name: "no", scope: !1306, file: !754, line: 171, type: !1172)
!1312 = !DILocalVariable(name: "remainder", scope: !1306, file: !754, line: 172, type: !1172)
!1313 = !DILocalVariable(name: "dout", scope: !1306, file: !754, line: 175, type: !133)
!1314 = !DILocation(line: 0, scope: !1306)
!1315 = !DILocation(line: 173, column: 19, scope: !1306)
!1316 = !DILocation(line: 174, column: 17, scope: !1306)
!1317 = !DILocation(line: 177, column: 5, scope: !1306)
!1318 = !DILocation(line: 183, column: 13, scope: !1319)
!1319 = distinct !DILexicalBlock(scope: !1306, file: !754, line: 177, column: 17)
!1320 = !DILocation(line: 0, scope: !1319)
!1321 = !DILocation(line: 187, column: 5, scope: !1306)
!1322 = !DILocation(line: 188, column: 1, scope: !1306)
!1323 = distinct !DISubprogram(name: "halgetGPIO_DIN", scope: !754, file: !754, line: 189, type: !1307, scopeLine: 190, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !753, retainedNodes: !1324)
!1324 = !{!1325, !1326, !1327, !1328}
!1325 = !DILocalVariable(name: "GPIO_pin", arg: 1, scope: !1323, file: !754, line: 189, type: !80)
!1326 = !DILocalVariable(name: "no", scope: !1323, file: !754, line: 191, type: !1172)
!1327 = !DILocalVariable(name: "remainder", scope: !1323, file: !754, line: 192, type: !1172)
!1328 = !DILocalVariable(name: "din", scope: !1323, file: !754, line: 195, type: !133)
!1329 = !DILocation(line: 0, scope: !1323)
!1330 = !DILocation(line: 193, column: 19, scope: !1323)
!1331 = !DILocation(line: 194, column: 17, scope: !1323)
!1332 = !DILocation(line: 196, column: 5, scope: !1323)
!1333 = !DILocation(line: 203, column: 13, scope: !1334)
!1334 = distinct !DILexicalBlock(scope: !1323, file: !754, line: 196, column: 17)
!1335 = !DILocation(line: 0, scope: !1334)
!1336 = !DILocation(line: 208, column: 5, scope: !1323)
!1337 = !DILocation(line: 209, column: 1, scope: !1323)
!1338 = distinct !DISubprogram(name: "halgetGPIO_OutEnable", scope: !754, file: !754, line: 210, type: !1307, scopeLine: 211, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !753, retainedNodes: !1339)
!1339 = !{!1340, !1341, !1342, !1343}
!1340 = !DILocalVariable(name: "GPIO_pin", arg: 1, scope: !1338, file: !754, line: 210, type: !80)
!1341 = !DILocalVariable(name: "no", scope: !1338, file: !754, line: 212, type: !1172)
!1342 = !DILocalVariable(name: "remainder", scope: !1338, file: !754, line: 213, type: !1172)
!1343 = !DILocalVariable(name: "outEnable", scope: !1338, file: !754, line: 216, type: !133)
!1344 = !DILocation(line: 0, scope: !1338)
!1345 = !DILocation(line: 214, column: 19, scope: !1338)
!1346 = !DILocation(line: 215, column: 17, scope: !1338)
!1347 = !DILocation(line: 218, column: 5, scope: !1338)
!1348 = !DILocation(line: 224, column: 13, scope: !1349)
!1349 = distinct !DILexicalBlock(scope: !1338, file: !754, line: 218, column: 17)
!1350 = !DILocation(line: 0, scope: !1349)
!1351 = !DILocation(line: 228, column: 5, scope: !1338)
!1352 = !DILocation(line: 229, column: 1, scope: !1338)
!1353 = distinct !DISubprogram(name: "halGPIO_PullUp_SET", scope: !754, file: !754, line: 232, type: !1354, scopeLine: 233, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !753, retainedNodes: !1356)
!1354 = !DISubroutineType(types: !1355)
!1355 = !{!1167, !80}
!1356 = !{!1357, !1358, !1359}
!1357 = !DILocalVariable(name: "GPIO_pin", arg: 1, scope: !1353, file: !754, line: 232, type: !80)
!1358 = !DILocalVariable(name: "no", scope: !1353, file: !754, line: 234, type: !1172)
!1359 = !DILocalVariable(name: "remainder", scope: !1353, file: !754, line: 235, type: !1172)
!1360 = !DILocation(line: 0, scope: !1353)
!1361 = !DILocation(line: 236, column: 19, scope: !1353)
!1362 = !DILocation(line: 237, column: 17, scope: !1353)
!1363 = !DILocation(line: 238, column: 5, scope: !1353)
!1364 = !DILocation(line: 239, column: 5, scope: !1353)
!1365 = !DILocation(line: 241, column: 27, scope: !1366)
!1366 = distinct !DILexicalBlock(scope: !1367, file: !754, line: 241, column: 17)
!1367 = distinct !DILexicalBlock(scope: !1353, file: !754, line: 239, column: 17)
!1368 = !DILocation(line: 241, column: 17, scope: !1367)
!1369 = !DILocation(line: 241, column: 17, scope: !1366)
!1370 = !DILocation(line: 242, column: 17, scope: !1371)
!1371 = distinct !DILexicalBlock(scope: !1366, file: !754, line: 241, column: 34)
!1372 = !DILocation(line: 243, column: 13, scope: !1371)
!1373 = !DILocation(line: 243, column: 24, scope: !1366)
!1374 = !DILocation(line: 244, column: 73, scope: !1375)
!1375 = distinct !DILexicalBlock(scope: !1376, file: !754, line: 243, column: 41)
!1376 = distinct !DILexicalBlock(scope: !1366, file: !754, line: 243, column: 24)
!1377 = !DILocation(line: 245, column: 73, scope: !1375)
!1378 = !DILocation(line: 246, column: 13, scope: !1375)
!1379 = !DILocation(line: 247, column: 73, scope: !1380)
!1380 = distinct !DILexicalBlock(scope: !1381, file: !754, line: 246, column: 41)
!1381 = distinct !DILexicalBlock(scope: !1376, file: !754, line: 246, column: 24)
!1382 = !DILocation(line: 248, column: 73, scope: !1380)
!1383 = !DILocation(line: 249, column: 13, scope: !1380)
!1384 = !DILocation(line: 250, column: 75, scope: !1385)
!1385 = distinct !DILexicalBlock(scope: !1386, file: !754, line: 249, column: 41)
!1386 = distinct !DILexicalBlock(scope: !1381, file: !754, line: 249, column: 24)
!1387 = !DILocation(line: 251, column: 75, scope: !1385)
!1388 = !DILocation(line: 252, column: 13, scope: !1385)
!1389 = !DILocation(line: 253, column: 75, scope: !1390)
!1390 = distinct !DILexicalBlock(scope: !1391, file: !754, line: 252, column: 41)
!1391 = distinct !DILexicalBlock(scope: !1386, file: !754, line: 252, column: 24)
!1392 = !DILocation(line: 254, column: 75, scope: !1390)
!1393 = !DILocation(line: 255, column: 13, scope: !1390)
!1394 = !DILocation(line: 256, column: 75, scope: !1395)
!1395 = distinct !DILexicalBlock(scope: !1396, file: !754, line: 255, column: 41)
!1396 = distinct !DILexicalBlock(scope: !1391, file: !754, line: 255, column: 24)
!1397 = !DILocation(line: 257, column: 75, scope: !1395)
!1398 = !DILocation(line: 258, column: 13, scope: !1395)
!1399 = !DILocation(line: 261, column: 18, scope: !1400)
!1400 = distinct !DILexicalBlock(scope: !1367, file: !754, line: 261, column: 17)
!1401 = !DILocation(line: 261, column: 17, scope: !1367)
!1402 = !DILocation(line: 262, column: 75, scope: !1403)
!1403 = distinct !DILexicalBlock(scope: !1400, file: !754, line: 261, column: 29)
!1404 = !DILocation(line: 263, column: 75, scope: !1403)
!1405 = !DILocation(line: 264, column: 13, scope: !1403)
!1406 = !DILocation(line: 265, column: 17, scope: !1407)
!1407 = distinct !DILexicalBlock(scope: !1400, file: !754, line: 264, column: 20)
!1408 = !DILocation(line: 272, column: 1, scope: !1353)
!1409 = distinct !DISubprogram(name: "halGPIO_PullDown_RESET", scope: !754, file: !754, line: 359, type: !1354, scopeLine: 360, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !753, retainedNodes: !1410)
!1410 = !{!1411, !1412, !1413}
!1411 = !DILocalVariable(name: "GPIO_pin", arg: 1, scope: !1409, file: !754, line: 359, type: !80)
!1412 = !DILocalVariable(name: "no", scope: !1409, file: !754, line: 362, type: !1172)
!1413 = !DILocalVariable(name: "remainder", scope: !1409, file: !754, line: 363, type: !1172)
!1414 = !DILocation(line: 0, scope: !1409)
!1415 = !DILocation(line: 364, column: 19, scope: !1409)
!1416 = !DILocation(line: 365, column: 17, scope: !1409)
!1417 = !DILocation(line: 367, column: 5, scope: !1409)
!1418 = !DILocation(line: 369, column: 27, scope: !1419)
!1419 = distinct !DILexicalBlock(scope: !1420, file: !754, line: 369, column: 17)
!1420 = distinct !DILexicalBlock(scope: !1409, file: !754, line: 367, column: 17)
!1421 = !DILocation(line: 369, column: 17, scope: !1420)
!1422 = !DILocation(line: 369, column: 17, scope: !1419)
!1423 = !DILocation(line: 370, column: 17, scope: !1424)
!1424 = distinct !DILexicalBlock(scope: !1419, file: !754, line: 369, column: 34)
!1425 = !DILocation(line: 371, column: 13, scope: !1424)
!1426 = !DILocation(line: 371, column: 24, scope: !1419)
!1427 = !DILocation(line: 372, column: 73, scope: !1428)
!1428 = distinct !DILexicalBlock(scope: !1429, file: !754, line: 371, column: 41)
!1429 = distinct !DILexicalBlock(scope: !1419, file: !754, line: 371, column: 24)
!1430 = !DILocation(line: 373, column: 73, scope: !1428)
!1431 = !DILocation(line: 374, column: 13, scope: !1428)
!1432 = !DILocation(line: 375, column: 73, scope: !1433)
!1433 = distinct !DILexicalBlock(scope: !1434, file: !754, line: 374, column: 41)
!1434 = distinct !DILexicalBlock(scope: !1429, file: !754, line: 374, column: 24)
!1435 = !DILocation(line: 376, column: 73, scope: !1433)
!1436 = !DILocation(line: 377, column: 13, scope: !1433)
!1437 = !DILocation(line: 378, column: 75, scope: !1438)
!1438 = distinct !DILexicalBlock(scope: !1439, file: !754, line: 377, column: 41)
!1439 = distinct !DILexicalBlock(scope: !1434, file: !754, line: 377, column: 24)
!1440 = !DILocation(line: 379, column: 75, scope: !1438)
!1441 = !DILocation(line: 380, column: 13, scope: !1438)
!1442 = !DILocation(line: 381, column: 75, scope: !1443)
!1443 = distinct !DILexicalBlock(scope: !1444, file: !754, line: 380, column: 41)
!1444 = distinct !DILexicalBlock(scope: !1439, file: !754, line: 380, column: 24)
!1445 = !DILocation(line: 382, column: 75, scope: !1443)
!1446 = !DILocation(line: 383, column: 13, scope: !1443)
!1447 = !DILocation(line: 384, column: 75, scope: !1448)
!1448 = distinct !DILexicalBlock(scope: !1449, file: !754, line: 383, column: 41)
!1449 = distinct !DILexicalBlock(scope: !1444, file: !754, line: 383, column: 24)
!1450 = !DILocation(line: 385, column: 75, scope: !1448)
!1451 = !DILocation(line: 386, column: 13, scope: !1448)
!1452 = !DILocation(line: 389, column: 18, scope: !1453)
!1453 = distinct !DILexicalBlock(scope: !1420, file: !754, line: 389, column: 17)
!1454 = !DILocation(line: 389, column: 17, scope: !1420)
!1455 = !DILocation(line: 390, column: 75, scope: !1456)
!1456 = distinct !DILexicalBlock(scope: !1453, file: !754, line: 389, column: 29)
!1457 = !DILocation(line: 391, column: 75, scope: !1456)
!1458 = !DILocation(line: 392, column: 13, scope: !1456)
!1459 = !DILocation(line: 393, column: 17, scope: !1460)
!1460 = distinct !DILexicalBlock(scope: !1453, file: !754, line: 392, column: 20)
!1461 = !DILocation(line: 401, column: 1, scope: !1409)
!1462 = distinct !DISubprogram(name: "halGPIO_PullUp_RESET", scope: !754, file: !754, line: 274, type: !1354, scopeLine: 275, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !753, retainedNodes: !1463)
!1463 = !{!1464, !1465, !1466}
!1464 = !DILocalVariable(name: "GPIO_pin", arg: 1, scope: !1462, file: !754, line: 274, type: !80)
!1465 = !DILocalVariable(name: "no", scope: !1462, file: !754, line: 276, type: !1172)
!1466 = !DILocalVariable(name: "remainder", scope: !1462, file: !754, line: 277, type: !1172)
!1467 = !DILocation(line: 0, scope: !1462)
!1468 = !DILocation(line: 278, column: 19, scope: !1462)
!1469 = !DILocation(line: 279, column: 17, scope: !1462)
!1470 = !DILocation(line: 281, column: 5, scope: !1462)
!1471 = !DILocation(line: 283, column: 27, scope: !1472)
!1472 = distinct !DILexicalBlock(scope: !1473, file: !754, line: 283, column: 17)
!1473 = distinct !DILexicalBlock(scope: !1462, file: !754, line: 281, column: 17)
!1474 = !DILocation(line: 283, column: 17, scope: !1473)
!1475 = !DILocation(line: 283, column: 17, scope: !1472)
!1476 = !DILocation(line: 284, column: 17, scope: !1477)
!1477 = distinct !DILexicalBlock(scope: !1472, file: !754, line: 283, column: 34)
!1478 = !DILocation(line: 285, column: 13, scope: !1477)
!1479 = !DILocation(line: 285, column: 24, scope: !1472)
!1480 = !DILocation(line: 286, column: 73, scope: !1481)
!1481 = distinct !DILexicalBlock(scope: !1482, file: !754, line: 285, column: 41)
!1482 = distinct !DILexicalBlock(scope: !1472, file: !754, line: 285, column: 24)
!1483 = !DILocation(line: 287, column: 73, scope: !1481)
!1484 = !DILocation(line: 288, column: 13, scope: !1481)
!1485 = !DILocation(line: 289, column: 73, scope: !1486)
!1486 = distinct !DILexicalBlock(scope: !1487, file: !754, line: 288, column: 41)
!1487 = distinct !DILexicalBlock(scope: !1482, file: !754, line: 288, column: 24)
!1488 = !DILocation(line: 290, column: 73, scope: !1486)
!1489 = !DILocation(line: 291, column: 13, scope: !1486)
!1490 = !DILocation(line: 292, column: 75, scope: !1491)
!1491 = distinct !DILexicalBlock(scope: !1492, file: !754, line: 291, column: 41)
!1492 = distinct !DILexicalBlock(scope: !1487, file: !754, line: 291, column: 24)
!1493 = !DILocation(line: 293, column: 75, scope: !1491)
!1494 = !DILocation(line: 294, column: 13, scope: !1491)
!1495 = !DILocation(line: 295, column: 75, scope: !1496)
!1496 = distinct !DILexicalBlock(scope: !1497, file: !754, line: 294, column: 41)
!1497 = distinct !DILexicalBlock(scope: !1492, file: !754, line: 294, column: 24)
!1498 = !DILocation(line: 296, column: 75, scope: !1496)
!1499 = !DILocation(line: 297, column: 13, scope: !1496)
!1500 = !DILocation(line: 298, column: 75, scope: !1501)
!1501 = distinct !DILexicalBlock(scope: !1502, file: !754, line: 297, column: 41)
!1502 = distinct !DILexicalBlock(scope: !1497, file: !754, line: 297, column: 24)
!1503 = !DILocation(line: 299, column: 75, scope: !1501)
!1504 = !DILocation(line: 300, column: 13, scope: !1501)
!1505 = !DILocation(line: 303, column: 18, scope: !1506)
!1506 = distinct !DILexicalBlock(scope: !1473, file: !754, line: 303, column: 17)
!1507 = !DILocation(line: 303, column: 17, scope: !1473)
!1508 = !DILocation(line: 304, column: 75, scope: !1509)
!1509 = distinct !DILexicalBlock(scope: !1506, file: !754, line: 303, column: 29)
!1510 = !DILocation(line: 305, column: 75, scope: !1509)
!1511 = !DILocation(line: 306, column: 13, scope: !1509)
!1512 = !DILocation(line: 307, column: 17, scope: !1513)
!1513 = distinct !DILexicalBlock(scope: !1506, file: !754, line: 306, column: 20)
!1514 = !DILocation(line: 314, column: 1, scope: !1462)
!1515 = distinct !DISubprogram(name: "halGPIO_PullDown_SET", scope: !754, file: !754, line: 316, type: !1354, scopeLine: 317, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !753, retainedNodes: !1516)
!1516 = !{!1517, !1518, !1519}
!1517 = !DILocalVariable(name: "GPIO_pin", arg: 1, scope: !1515, file: !754, line: 316, type: !80)
!1518 = !DILocalVariable(name: "no", scope: !1515, file: !754, line: 318, type: !1172)
!1519 = !DILocalVariable(name: "remainder", scope: !1515, file: !754, line: 319, type: !1172)
!1520 = !DILocation(line: 0, scope: !1515)
!1521 = !DILocation(line: 320, column: 19, scope: !1515)
!1522 = !DILocation(line: 321, column: 17, scope: !1515)
!1523 = !DILocation(line: 322, column: 5, scope: !1515)
!1524 = !DILocation(line: 323, column: 5, scope: !1515)
!1525 = !DILocation(line: 325, column: 27, scope: !1526)
!1526 = distinct !DILexicalBlock(scope: !1527, file: !754, line: 325, column: 17)
!1527 = distinct !DILexicalBlock(scope: !1515, file: !754, line: 323, column: 17)
!1528 = !DILocation(line: 325, column: 17, scope: !1527)
!1529 = !DILocation(line: 325, column: 17, scope: !1526)
!1530 = !DILocation(line: 326, column: 17, scope: !1531)
!1531 = distinct !DILexicalBlock(scope: !1526, file: !754, line: 325, column: 34)
!1532 = !DILocation(line: 327, column: 13, scope: !1531)
!1533 = !DILocation(line: 327, column: 24, scope: !1526)
!1534 = !DILocation(line: 328, column: 73, scope: !1535)
!1535 = distinct !DILexicalBlock(scope: !1536, file: !754, line: 327, column: 41)
!1536 = distinct !DILexicalBlock(scope: !1526, file: !754, line: 327, column: 24)
!1537 = !DILocation(line: 329, column: 73, scope: !1535)
!1538 = !DILocation(line: 330, column: 13, scope: !1535)
!1539 = !DILocation(line: 331, column: 73, scope: !1540)
!1540 = distinct !DILexicalBlock(scope: !1541, file: !754, line: 330, column: 41)
!1541 = distinct !DILexicalBlock(scope: !1536, file: !754, line: 330, column: 24)
!1542 = !DILocation(line: 332, column: 73, scope: !1540)
!1543 = !DILocation(line: 333, column: 13, scope: !1540)
!1544 = !DILocation(line: 334, column: 75, scope: !1545)
!1545 = distinct !DILexicalBlock(scope: !1546, file: !754, line: 333, column: 41)
!1546 = distinct !DILexicalBlock(scope: !1541, file: !754, line: 333, column: 24)
!1547 = !DILocation(line: 335, column: 75, scope: !1545)
!1548 = !DILocation(line: 336, column: 13, scope: !1545)
!1549 = !DILocation(line: 337, column: 75, scope: !1550)
!1550 = distinct !DILexicalBlock(scope: !1551, file: !754, line: 336, column: 41)
!1551 = distinct !DILexicalBlock(scope: !1546, file: !754, line: 336, column: 24)
!1552 = !DILocation(line: 338, column: 75, scope: !1550)
!1553 = !DILocation(line: 339, column: 13, scope: !1550)
!1554 = !DILocation(line: 340, column: 75, scope: !1555)
!1555 = distinct !DILexicalBlock(scope: !1556, file: !754, line: 339, column: 41)
!1556 = distinct !DILexicalBlock(scope: !1551, file: !754, line: 339, column: 24)
!1557 = !DILocation(line: 341, column: 75, scope: !1555)
!1558 = !DILocation(line: 342, column: 13, scope: !1555)
!1559 = !DILocation(line: 345, column: 18, scope: !1560)
!1560 = distinct !DILexicalBlock(scope: !1527, file: !754, line: 345, column: 17)
!1561 = !DILocation(line: 345, column: 17, scope: !1527)
!1562 = !DILocation(line: 346, column: 75, scope: !1563)
!1563 = distinct !DILexicalBlock(scope: !1560, file: !754, line: 345, column: 29)
!1564 = !DILocation(line: 347, column: 75, scope: !1563)
!1565 = !DILocation(line: 348, column: 13, scope: !1563)
!1566 = !DILocation(line: 349, column: 17, scope: !1567)
!1567 = distinct !DILexicalBlock(scope: !1560, file: !754, line: 348, column: 20)
!1568 = !DILocation(line: 357, column: 1, scope: !1515)
!1569 = distinct !DISubprogram(name: "halGPIO_SetDriving", scope: !754, file: !754, line: 404, type: !1165, scopeLine: 405, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !753, retainedNodes: !1570)
!1570 = !{!1571, !1572, !1573, !1574}
!1571 = !DILocalVariable(name: "GPIO_pin", arg: 1, scope: !1569, file: !754, line: 404, type: !80)
!1572 = !DILocalVariable(name: "GPIO_driving", arg: 2, scope: !1569, file: !754, line: 404, type: !133)
!1573 = !DILocalVariable(name: "no", scope: !1569, file: !754, line: 406, type: !1172)
!1574 = !DILocalVariable(name: "remainder", scope: !1569, file: !754, line: 407, type: !1172)
!1575 = !DILocation(line: 0, scope: !1569)
!1576 = !DILocation(line: 408, column: 19, scope: !1569)
!1577 = !DILocation(line: 409, column: 17, scope: !1569)
!1578 = !DILocation(line: 411, column: 5, scope: !1569)
!1579 = !DILocation(line: 413, column: 84, scope: !1580)
!1580 = distinct !DILexicalBlock(scope: !1569, file: !754, line: 411, column: 17)
!1581 = !DILocation(line: 413, column: 70, scope: !1580)
!1582 = !DILocation(line: 413, column: 64, scope: !1580)
!1583 = !DILocation(line: 413, column: 61, scope: !1580)
!1584 = !DILocation(line: 414, column: 79, scope: !1580)
!1585 = !DILocation(line: 414, column: 83, scope: !1580)
!1586 = !DILocation(line: 414, column: 88, scope: !1580)
!1587 = !DILocation(line: 414, column: 61, scope: !1580)
!1588 = !DILocation(line: 415, column: 13, scope: !1580)
!1589 = !DILocation(line: 417, column: 27, scope: !1590)
!1590 = distinct !DILexicalBlock(scope: !1580, file: !754, line: 417, column: 17)
!1591 = !DILocation(line: 417, column: 17, scope: !1580)
!1592 = !DILocation(line: 418, column: 88, scope: !1593)
!1593 = distinct !DILexicalBlock(scope: !1590, file: !754, line: 417, column: 33)
!1594 = !DILocation(line: 418, column: 74, scope: !1593)
!1595 = !DILocation(line: 418, column: 68, scope: !1593)
!1596 = !DILocation(line: 418, column: 65, scope: !1593)
!1597 = !DILocation(line: 419, column: 83, scope: !1593)
!1598 = !DILocation(line: 419, column: 87, scope: !1593)
!1599 = !DILocation(line: 419, column: 92, scope: !1593)
!1600 = !DILocation(line: 419, column: 65, scope: !1593)
!1601 = !DILocation(line: 420, column: 13, scope: !1593)
!1602 = !DILocation(line: 420, column: 24, scope: !1590)
!1603 = !DILocation(line: 421, column: 73, scope: !1604)
!1604 = distinct !DILexicalBlock(scope: !1605, file: !754, line: 420, column: 41)
!1605 = distinct !DILexicalBlock(scope: !1590, file: !754, line: 420, column: 24)
!1606 = !DILocation(line: 422, column: 91, scope: !1604)
!1607 = !DILocation(line: 422, column: 100, scope: !1604)
!1608 = !DILocation(line: 422, column: 73, scope: !1604)
!1609 = !DILocation(line: 423, column: 73, scope: !1604)
!1610 = !DILocation(line: 424, column: 13, scope: !1604)
!1611 = !DILocation(line: 425, column: 73, scope: !1612)
!1612 = distinct !DILexicalBlock(scope: !1613, file: !754, line: 424, column: 41)
!1613 = distinct !DILexicalBlock(scope: !1605, file: !754, line: 424, column: 24)
!1614 = !DILocation(line: 426, column: 91, scope: !1612)
!1615 = !DILocation(line: 426, column: 100, scope: !1612)
!1616 = !DILocation(line: 426, column: 73, scope: !1612)
!1617 = !DILocation(line: 427, column: 73, scope: !1612)
!1618 = !DILocation(line: 428, column: 13, scope: !1612)
!1619 = !DILocation(line: 429, column: 75, scope: !1620)
!1620 = distinct !DILexicalBlock(scope: !1621, file: !754, line: 428, column: 41)
!1621 = distinct !DILexicalBlock(scope: !1613, file: !754, line: 428, column: 24)
!1622 = !DILocation(line: 430, column: 93, scope: !1620)
!1623 = !DILocation(line: 430, column: 102, scope: !1620)
!1624 = !DILocation(line: 430, column: 75, scope: !1620)
!1625 = !DILocation(line: 431, column: 75, scope: !1620)
!1626 = !DILocation(line: 432, column: 13, scope: !1620)
!1627 = !DILocation(line: 433, column: 75, scope: !1628)
!1628 = distinct !DILexicalBlock(scope: !1629, file: !754, line: 432, column: 41)
!1629 = distinct !DILexicalBlock(scope: !1621, file: !754, line: 432, column: 24)
!1630 = !DILocation(line: 434, column: 93, scope: !1628)
!1631 = !DILocation(line: 434, column: 102, scope: !1628)
!1632 = !DILocation(line: 434, column: 75, scope: !1628)
!1633 = !DILocation(line: 435, column: 75, scope: !1628)
!1634 = !DILocation(line: 436, column: 13, scope: !1628)
!1635 = !DILocation(line: 437, column: 75, scope: !1636)
!1636 = distinct !DILexicalBlock(scope: !1637, file: !754, line: 436, column: 41)
!1637 = distinct !DILexicalBlock(scope: !1629, file: !754, line: 436, column: 24)
!1638 = !DILocation(line: 438, column: 93, scope: !1636)
!1639 = !DILocation(line: 438, column: 102, scope: !1636)
!1640 = !DILocation(line: 438, column: 75, scope: !1636)
!1641 = !DILocation(line: 439, column: 75, scope: !1636)
!1642 = !DILocation(line: 440, column: 13, scope: !1636)
!1643 = !DILocation(line: 443, column: 18, scope: !1644)
!1644 = distinct !DILexicalBlock(scope: !1580, file: !754, line: 443, column: 17)
!1645 = !DILocation(line: 443, column: 17, scope: !1580)
!1646 = !DILocation(line: 444, column: 75, scope: !1647)
!1647 = distinct !DILexicalBlock(scope: !1644, file: !754, line: 443, column: 29)
!1648 = !DILocation(line: 445, column: 93, scope: !1647)
!1649 = !DILocation(line: 445, column: 102, scope: !1647)
!1650 = !DILocation(line: 445, column: 75, scope: !1647)
!1651 = !DILocation(line: 446, column: 75, scope: !1647)
!1652 = !DILocation(line: 447, column: 13, scope: !1647)
!1653 = !DILocation(line: 448, column: 88, scope: !1654)
!1654 = distinct !DILexicalBlock(scope: !1644, file: !754, line: 447, column: 20)
!1655 = !DILocation(line: 448, column: 74, scope: !1654)
!1656 = !DILocation(line: 448, column: 68, scope: !1654)
!1657 = !DILocation(line: 448, column: 65, scope: !1654)
!1658 = !DILocation(line: 449, column: 83, scope: !1654)
!1659 = !DILocation(line: 449, column: 87, scope: !1654)
!1660 = !DILocation(line: 449, column: 92, scope: !1654)
!1661 = !DILocation(line: 449, column: 65, scope: !1654)
!1662 = !DILocation(line: 453, column: 84, scope: !1580)
!1663 = !DILocation(line: 453, column: 70, scope: !1580)
!1664 = !DILocation(line: 453, column: 64, scope: !1580)
!1665 = !DILocation(line: 453, column: 61, scope: !1580)
!1666 = !DILocation(line: 454, column: 79, scope: !1580)
!1667 = !DILocation(line: 454, column: 83, scope: !1580)
!1668 = !DILocation(line: 454, column: 88, scope: !1580)
!1669 = !DILocation(line: 454, column: 61, scope: !1580)
!1670 = !DILocation(line: 455, column: 13, scope: !1580)
!1671 = !DILocation(line: 460, column: 1, scope: !1569)
!1672 = distinct !DISubprogram(name: "halGPIO_GetDriving", scope: !754, file: !754, line: 463, type: !1673, scopeLine: 464, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !753, retainedNodes: !1676)
!1673 = !DISubroutineType(types: !1674)
!1674 = !{!1167, !80, !1675}
!1675 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !133, size: 32)
!1676 = !{!1677, !1678, !1679, !1680, !1681}
!1677 = !DILocalVariable(name: "GPIO_pin", arg: 1, scope: !1672, file: !754, line: 463, type: !80)
!1678 = !DILocalVariable(name: "GPIO_driving", arg: 2, scope: !1672, file: !754, line: 463, type: !1675)
!1679 = !DILocalVariable(name: "no", scope: !1672, file: !754, line: 465, type: !1172)
!1680 = !DILocalVariable(name: "remainder", scope: !1672, file: !754, line: 466, type: !1172)
!1681 = !DILocalVariable(name: "temp", scope: !1672, file: !754, line: 467, type: !80)
!1682 = !DILocation(line: 0, scope: !1672)
!1683 = !DILocation(line: 468, column: 19, scope: !1672)
!1684 = !DILocation(line: 469, column: 17, scope: !1672)
!1685 = !DILocation(line: 471, column: 5, scope: !1672)
!1686 = !DILocation(line: 473, column: 20, scope: !1687)
!1687 = distinct !DILexicalBlock(scope: !1672, file: !754, line: 471, column: 17)
!1688 = !DILocation(line: 474, column: 40, scope: !1687)
!1689 = !DILocation(line: 474, column: 26, scope: !1687)
!1690 = !DILocation(line: 474, column: 18, scope: !1687)
!1691 = !DILocation(line: 475, column: 40, scope: !1687)
!1692 = !DILocation(line: 475, column: 29, scope: !1687)
!1693 = !DILocation(line: 476, column: 13, scope: !1687)
!1694 = !DILocation(line: 478, column: 27, scope: !1695)
!1695 = distinct !DILexicalBlock(scope: !1687, file: !754, line: 478, column: 17)
!1696 = !DILocation(line: 478, column: 17, scope: !1687)
!1697 = !DILocation(line: 479, column: 24, scope: !1698)
!1698 = distinct !DILexicalBlock(scope: !1695, file: !754, line: 478, column: 33)
!1699 = !DILocation(line: 480, column: 44, scope: !1698)
!1700 = !DILocation(line: 480, column: 30, scope: !1698)
!1701 = !DILocation(line: 480, column: 22, scope: !1698)
!1702 = !DILocation(line: 481, column: 44, scope: !1698)
!1703 = !DILocation(line: 481, column: 33, scope: !1698)
!1704 = !DILocation(line: 482, column: 13, scope: !1698)
!1705 = !DILocation(line: 482, column: 24, scope: !1695)
!1706 = !DILocation(line: 483, column: 24, scope: !1707)
!1707 = distinct !DILexicalBlock(scope: !1708, file: !754, line: 482, column: 41)
!1708 = distinct !DILexicalBlock(scope: !1695, file: !754, line: 482, column: 24)
!1709 = !DILocation(line: 485, column: 53, scope: !1707)
!1710 = !DILocation(line: 485, column: 33, scope: !1707)
!1711 = !DILocation(line: 486, column: 13, scope: !1707)
!1712 = !DILocation(line: 487, column: 24, scope: !1713)
!1713 = distinct !DILexicalBlock(scope: !1714, file: !754, line: 486, column: 41)
!1714 = distinct !DILexicalBlock(scope: !1708, file: !754, line: 486, column: 24)
!1715 = !DILocation(line: 489, column: 53, scope: !1713)
!1716 = !DILocation(line: 489, column: 33, scope: !1713)
!1717 = !DILocation(line: 490, column: 13, scope: !1713)
!1718 = !DILocation(line: 491, column: 24, scope: !1719)
!1719 = distinct !DILexicalBlock(scope: !1720, file: !754, line: 490, column: 41)
!1720 = distinct !DILexicalBlock(scope: !1714, file: !754, line: 490, column: 24)
!1721 = !DILocation(line: 493, column: 53, scope: !1719)
!1722 = !DILocation(line: 493, column: 33, scope: !1719)
!1723 = !DILocation(line: 494, column: 13, scope: !1719)
!1724 = !DILocation(line: 495, column: 24, scope: !1725)
!1725 = distinct !DILexicalBlock(scope: !1726, file: !754, line: 494, column: 41)
!1726 = distinct !DILexicalBlock(scope: !1720, file: !754, line: 494, column: 24)
!1727 = !DILocation(line: 497, column: 53, scope: !1725)
!1728 = !DILocation(line: 497, column: 33, scope: !1725)
!1729 = !DILocation(line: 498, column: 13, scope: !1725)
!1730 = !DILocation(line: 499, column: 24, scope: !1731)
!1731 = distinct !DILexicalBlock(scope: !1732, file: !754, line: 498, column: 41)
!1732 = distinct !DILexicalBlock(scope: !1726, file: !754, line: 498, column: 24)
!1733 = !DILocation(line: 501, column: 53, scope: !1731)
!1734 = !DILocation(line: 501, column: 33, scope: !1731)
!1735 = !DILocation(line: 502, column: 13, scope: !1731)
!1736 = !DILocation(line: 505, column: 18, scope: !1737)
!1737 = distinct !DILexicalBlock(scope: !1687, file: !754, line: 505, column: 17)
!1738 = !DILocation(line: 505, column: 17, scope: !1687)
!1739 = !DILocation(line: 506, column: 24, scope: !1740)
!1740 = distinct !DILexicalBlock(scope: !1737, file: !754, line: 505, column: 29)
!1741 = !DILocation(line: 508, column: 53, scope: !1740)
!1742 = !DILocation(line: 508, column: 33, scope: !1740)
!1743 = !DILocation(line: 509, column: 13, scope: !1740)
!1744 = !DILocation(line: 510, column: 24, scope: !1745)
!1745 = distinct !DILexicalBlock(scope: !1737, file: !754, line: 509, column: 20)
!1746 = !DILocation(line: 511, column: 44, scope: !1745)
!1747 = !DILocation(line: 511, column: 30, scope: !1745)
!1748 = !DILocation(line: 511, column: 22, scope: !1745)
!1749 = !DILocation(line: 512, column: 44, scope: !1745)
!1750 = !DILocation(line: 512, column: 33, scope: !1745)
!1751 = !DILocation(line: 516, column: 20, scope: !1687)
!1752 = !DILocation(line: 517, column: 40, scope: !1687)
!1753 = !DILocation(line: 517, column: 26, scope: !1687)
!1754 = !DILocation(line: 517, column: 18, scope: !1687)
!1755 = !DILocation(line: 518, column: 40, scope: !1687)
!1756 = !DILocation(line: 518, column: 29, scope: !1687)
!1757 = !DILocation(line: 519, column: 13, scope: !1687)
!1758 = !DILocation(line: 0, scope: !1687)
!1759 = !DILocation(line: 524, column: 1, scope: !1672)
!1760 = distinct !DISubprogram(name: "topPAD_Control_GPIO", scope: !754, file: !754, line: 526, type: !1761, scopeLine: 527, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !753, retainedNodes: !1764)
!1761 = !DISubroutineType(types: !1762)
!1762 = !{null, !80, !1763}
!1763 = !DIDerivedType(tag: DW_TAG_typedef, name: "ENUM_TOP_PAD_CONTROL_T", file: !757, line: 1212, baseType: !756)
!1764 = !{!1765, !1766, !1767, !1768}
!1765 = !DILocalVariable(name: "GPIO_pin", arg: 1, scope: !1760, file: !754, line: 526, type: !80)
!1766 = !DILocalVariable(name: "ePadControl", arg: 2, scope: !1760, file: !754, line: 526, type: !1763)
!1767 = !DILocalVariable(name: "no", scope: !1760, file: !754, line: 529, type: !1172)
!1768 = !DILocalVariable(name: "remainder", scope: !1760, file: !754, line: 530, type: !1172)
!1769 = !DILocation(line: 0, scope: !1760)
!1770 = !DILocation(line: 531, column: 19, scope: !1760)
!1771 = !DILocation(line: 532, column: 17, scope: !1760)
!1772 = !DILocation(line: 534, column: 9, scope: !1760)
!1773 = !DILocation(line: 536, column: 9, scope: !1774)
!1774 = distinct !DILexicalBlock(scope: !1775, file: !754, line: 534, column: 45)
!1775 = distinct !DILexicalBlock(scope: !1760, file: !754, line: 534, column: 9)
!1776 = !DILocation(line: 538, column: 56, scope: !1777)
!1777 = distinct !DILexicalBlock(scope: !1774, file: !754, line: 536, column: 21)
!1778 = !DILocation(line: 538, column: 53, scope: !1777)
!1779 = !DILocation(line: 538, column: 47, scope: !1777)
!1780 = !DILocation(line: 539, column: 17, scope: !1777)
!1781 = !DILocation(line: 541, column: 56, scope: !1777)
!1782 = !DILocation(line: 541, column: 53, scope: !1777)
!1783 = !DILocation(line: 541, column: 47, scope: !1777)
!1784 = !DILocation(line: 542, column: 17, scope: !1777)
!1785 = !DILocation(line: 548, column: 9, scope: !1786)
!1786 = distinct !DILexicalBlock(scope: !1787, file: !754, line: 547, column: 51)
!1787 = distinct !DILexicalBlock(scope: !1775, file: !754, line: 547, column: 16)
!1788 = !DILocation(line: 550, column: 57, scope: !1789)
!1789 = distinct !DILexicalBlock(scope: !1786, file: !754, line: 548, column: 21)
!1790 = !DILocation(line: 550, column: 54, scope: !1789)
!1791 = !DILocation(line: 550, column: 50, scope: !1789)
!1792 = !DILocation(line: 550, column: 47, scope: !1789)
!1793 = !DILocation(line: 551, column: 17, scope: !1789)
!1794 = !DILocation(line: 553, column: 57, scope: !1789)
!1795 = !DILocation(line: 553, column: 54, scope: !1789)
!1796 = !DILocation(line: 553, column: 50, scope: !1789)
!1797 = !DILocation(line: 553, column: 47, scope: !1789)
!1798 = !DILocation(line: 554, column: 17, scope: !1789)
!1799 = !DILocation(line: 560, column: 1, scope: !1760)
!1800 = distinct !DISubprogram(name: "halPinmuxTopOnPadFunc", scope: !763, file: !763, line: 85, type: !1801, scopeLine: 86, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !762, retainedNodes: !1805)
!1801 = !DISubroutineType(types: !1802)
!1802 = !{!1803, !1804, !133}
!1803 = !DIDerivedType(tag: DW_TAG_typedef, name: "VOID", file: !6, line: 79, baseType: null)
!1804 = !DIDerivedType(tag: DW_TAG_typedef, name: "ENUM_PAD_NAME_T", file: !766, line: 225, baseType: !765)
!1805 = !{!1806, !1807, !1808}
!1806 = !DILocalVariable(name: "ePadIndex", arg: 1, scope: !1800, file: !763, line: 85, type: !1804)
!1807 = !DILocalVariable(name: "ucFunc", arg: 2, scope: !1800, file: !763, line: 85, type: !133)
!1808 = !DILocalVariable(name: "temp", scope: !1800, file: !763, line: 87, type: !92)
!1809 = !DILocation(line: 0, scope: !1800)
!1810 = !DILocation(line: 88, column: 5, scope: !1800)
!1811 = !DILocation(line: 91, column: 20, scope: !1812)
!1812 = distinct !DILexicalBlock(scope: !1800, file: !763, line: 88, column: 24)
!1813 = !DILocation(line: 92, column: 18, scope: !1812)
!1814 = !DILocation(line: 93, column: 66, scope: !1812)
!1815 = !DILocation(line: 93, column: 63, scope: !1812)
!1816 = !DILocation(line: 93, column: 56, scope: !1812)
!1817 = !DILocation(line: 94, column: 13, scope: !1812)
!1818 = !DILocation(line: 97, column: 20, scope: !1812)
!1819 = !DILocation(line: 98, column: 18, scope: !1812)
!1820 = !DILocation(line: 99, column: 67, scope: !1812)
!1821 = !DILocation(line: 99, column: 74, scope: !1812)
!1822 = !DILocation(line: 99, column: 64, scope: !1812)
!1823 = !DILocation(line: 99, column: 56, scope: !1812)
!1824 = !DILocation(line: 100, column: 13, scope: !1812)
!1825 = !DILocation(line: 103, column: 20, scope: !1812)
!1826 = !DILocation(line: 104, column: 18, scope: !1812)
!1827 = !DILocation(line: 105, column: 67, scope: !1812)
!1828 = !DILocation(line: 105, column: 74, scope: !1812)
!1829 = !DILocation(line: 105, column: 64, scope: !1812)
!1830 = !DILocation(line: 105, column: 56, scope: !1812)
!1831 = !DILocation(line: 106, column: 13, scope: !1812)
!1832 = !DILocation(line: 109, column: 20, scope: !1812)
!1833 = !DILocation(line: 110, column: 18, scope: !1812)
!1834 = !DILocation(line: 111, column: 67, scope: !1812)
!1835 = !DILocation(line: 111, column: 74, scope: !1812)
!1836 = !DILocation(line: 111, column: 64, scope: !1812)
!1837 = !DILocation(line: 111, column: 56, scope: !1812)
!1838 = !DILocation(line: 112, column: 13, scope: !1812)
!1839 = !DILocation(line: 115, column: 20, scope: !1812)
!1840 = !DILocation(line: 116, column: 18, scope: !1812)
!1841 = !DILocation(line: 117, column: 67, scope: !1812)
!1842 = !DILocation(line: 117, column: 74, scope: !1812)
!1843 = !DILocation(line: 117, column: 64, scope: !1812)
!1844 = !DILocation(line: 117, column: 56, scope: !1812)
!1845 = !DILocation(line: 118, column: 13, scope: !1812)
!1846 = !DILocation(line: 121, column: 20, scope: !1812)
!1847 = !DILocation(line: 122, column: 18, scope: !1812)
!1848 = !DILocation(line: 123, column: 67, scope: !1812)
!1849 = !DILocation(line: 123, column: 74, scope: !1812)
!1850 = !DILocation(line: 123, column: 64, scope: !1812)
!1851 = !DILocation(line: 123, column: 56, scope: !1812)
!1852 = !DILocation(line: 124, column: 13, scope: !1812)
!1853 = !DILocation(line: 127, column: 20, scope: !1812)
!1854 = !DILocation(line: 128, column: 18, scope: !1812)
!1855 = !DILocation(line: 129, column: 67, scope: !1812)
!1856 = !DILocation(line: 129, column: 74, scope: !1812)
!1857 = !DILocation(line: 129, column: 64, scope: !1812)
!1858 = !DILocation(line: 129, column: 56, scope: !1812)
!1859 = !DILocation(line: 130, column: 13, scope: !1812)
!1860 = !DILocation(line: 133, column: 20, scope: !1812)
!1861 = !DILocation(line: 134, column: 18, scope: !1812)
!1862 = !DILocation(line: 135, column: 67, scope: !1812)
!1863 = !DILocation(line: 135, column: 74, scope: !1812)
!1864 = !DILocation(line: 135, column: 64, scope: !1812)
!1865 = !DILocation(line: 135, column: 56, scope: !1812)
!1866 = !DILocation(line: 136, column: 13, scope: !1812)
!1867 = !DILocation(line: 139, column: 20, scope: !1812)
!1868 = !DILocation(line: 140, column: 18, scope: !1812)
!1869 = !DILocation(line: 141, column: 67, scope: !1812)
!1870 = !DILocation(line: 141, column: 64, scope: !1812)
!1871 = !DILocation(line: 141, column: 56, scope: !1812)
!1872 = !DILocation(line: 142, column: 13, scope: !1812)
!1873 = !DILocation(line: 145, column: 20, scope: !1812)
!1874 = !DILocation(line: 146, column: 18, scope: !1812)
!1875 = !DILocation(line: 147, column: 67, scope: !1812)
!1876 = !DILocation(line: 147, column: 74, scope: !1812)
!1877 = !DILocation(line: 147, column: 64, scope: !1812)
!1878 = !DILocation(line: 147, column: 56, scope: !1812)
!1879 = !DILocation(line: 148, column: 13, scope: !1812)
!1880 = !DILocation(line: 151, column: 20, scope: !1812)
!1881 = !DILocation(line: 152, column: 18, scope: !1812)
!1882 = !DILocation(line: 153, column: 67, scope: !1812)
!1883 = !DILocation(line: 153, column: 74, scope: !1812)
!1884 = !DILocation(line: 153, column: 64, scope: !1812)
!1885 = !DILocation(line: 153, column: 56, scope: !1812)
!1886 = !DILocation(line: 154, column: 13, scope: !1812)
!1887 = !DILocation(line: 157, column: 20, scope: !1812)
!1888 = !DILocation(line: 158, column: 18, scope: !1812)
!1889 = !DILocation(line: 159, column: 67, scope: !1812)
!1890 = !DILocation(line: 159, column: 74, scope: !1812)
!1891 = !DILocation(line: 159, column: 64, scope: !1812)
!1892 = !DILocation(line: 159, column: 56, scope: !1812)
!1893 = !DILocation(line: 160, column: 29, scope: !1894)
!1894 = distinct !DILexicalBlock(scope: !1812, file: !763, line: 160, column: 17)
!1895 = !DILocation(line: 161, column: 17, scope: !1896)
!1896 = distinct !DILexicalBlock(scope: !1894, file: !763, line: 160, column: 60)
!1897 = !DILocation(line: 162, column: 13, scope: !1896)
!1898 = !DILocation(line: 166, column: 20, scope: !1812)
!1899 = !DILocation(line: 167, column: 18, scope: !1812)
!1900 = !DILocation(line: 168, column: 67, scope: !1812)
!1901 = !DILocation(line: 168, column: 74, scope: !1812)
!1902 = !DILocation(line: 168, column: 64, scope: !1812)
!1903 = !DILocation(line: 168, column: 56, scope: !1812)
!1904 = !DILocation(line: 169, column: 29, scope: !1905)
!1905 = distinct !DILexicalBlock(scope: !1812, file: !763, line: 169, column: 17)
!1906 = !DILocation(line: 170, column: 17, scope: !1907)
!1907 = distinct !DILexicalBlock(scope: !1905, file: !763, line: 169, column: 45)
!1908 = !DILocation(line: 171, column: 13, scope: !1907)
!1909 = !DILocation(line: 175, column: 20, scope: !1812)
!1910 = !DILocation(line: 176, column: 18, scope: !1812)
!1911 = !DILocation(line: 177, column: 67, scope: !1812)
!1912 = !DILocation(line: 177, column: 74, scope: !1812)
!1913 = !DILocation(line: 177, column: 64, scope: !1812)
!1914 = !DILocation(line: 177, column: 56, scope: !1812)
!1915 = !DILocation(line: 178, column: 19, scope: !1916)
!1916 = distinct !DILexicalBlock(scope: !1812, file: !763, line: 178, column: 17)
!1917 = !DILocation(line: 178, column: 17, scope: !1812)
!1918 = !DILocation(line: 179, column: 17, scope: !1919)
!1919 = distinct !DILexicalBlock(scope: !1916, file: !763, line: 178, column: 30)
!1920 = !DILocation(line: 180, column: 13, scope: !1919)
!1921 = !DILocation(line: 184, column: 20, scope: !1812)
!1922 = !DILocation(line: 185, column: 18, scope: !1812)
!1923 = !DILocation(line: 186, column: 67, scope: !1812)
!1924 = !DILocation(line: 186, column: 74, scope: !1812)
!1925 = !DILocation(line: 186, column: 64, scope: !1812)
!1926 = !DILocation(line: 186, column: 56, scope: !1812)
!1927 = !DILocation(line: 187, column: 29, scope: !1928)
!1928 = distinct !DILexicalBlock(scope: !1812, file: !763, line: 187, column: 17)
!1929 = !DILocation(line: 188, column: 17, scope: !1930)
!1930 = distinct !DILexicalBlock(scope: !1928, file: !763, line: 187, column: 45)
!1931 = !DILocation(line: 189, column: 13, scope: !1930)
!1932 = !DILocation(line: 193, column: 20, scope: !1812)
!1933 = !DILocation(line: 194, column: 18, scope: !1812)
!1934 = !DILocation(line: 195, column: 67, scope: !1812)
!1935 = !DILocation(line: 195, column: 74, scope: !1812)
!1936 = !DILocation(line: 195, column: 64, scope: !1812)
!1937 = !DILocation(line: 195, column: 56, scope: !1812)
!1938 = !DILocation(line: 196, column: 29, scope: !1939)
!1939 = distinct !DILexicalBlock(scope: !1812, file: !763, line: 196, column: 17)
!1940 = !DILocation(line: 197, column: 17, scope: !1941)
!1941 = distinct !DILexicalBlock(scope: !1939, file: !763, line: 196, column: 45)
!1942 = !DILocation(line: 198, column: 13, scope: !1941)
!1943 = !DILocation(line: 202, column: 20, scope: !1812)
!1944 = !DILocation(line: 203, column: 18, scope: !1812)
!1945 = !DILocation(line: 204, column: 67, scope: !1812)
!1946 = !DILocation(line: 204, column: 64, scope: !1812)
!1947 = !DILocation(line: 204, column: 56, scope: !1812)
!1948 = !DILocation(line: 205, column: 29, scope: !1949)
!1949 = distinct !DILexicalBlock(scope: !1812, file: !763, line: 205, column: 17)
!1950 = !DILocation(line: 206, column: 17, scope: !1951)
!1951 = distinct !DILexicalBlock(scope: !1949, file: !763, line: 205, column: 45)
!1952 = !DILocation(line: 207, column: 13, scope: !1951)
!1953 = !DILocation(line: 211, column: 20, scope: !1812)
!1954 = !DILocation(line: 212, column: 18, scope: !1812)
!1955 = !DILocation(line: 213, column: 67, scope: !1812)
!1956 = !DILocation(line: 213, column: 74, scope: !1812)
!1957 = !DILocation(line: 213, column: 64, scope: !1812)
!1958 = !DILocation(line: 213, column: 56, scope: !1812)
!1959 = !DILocation(line: 214, column: 13, scope: !1812)
!1960 = !DILocation(line: 217, column: 20, scope: !1812)
!1961 = !DILocation(line: 218, column: 18, scope: !1812)
!1962 = !DILocation(line: 219, column: 67, scope: !1812)
!1963 = !DILocation(line: 219, column: 74, scope: !1812)
!1964 = !DILocation(line: 219, column: 64, scope: !1812)
!1965 = !DILocation(line: 219, column: 56, scope: !1812)
!1966 = !DILocation(line: 220, column: 13, scope: !1812)
!1967 = !DILocation(line: 223, column: 20, scope: !1812)
!1968 = !DILocation(line: 224, column: 18, scope: !1812)
!1969 = !DILocation(line: 225, column: 67, scope: !1812)
!1970 = !DILocation(line: 225, column: 74, scope: !1812)
!1971 = !DILocation(line: 225, column: 64, scope: !1812)
!1972 = !DILocation(line: 225, column: 56, scope: !1812)
!1973 = !DILocation(line: 226, column: 13, scope: !1812)
!1974 = !DILocation(line: 229, column: 20, scope: !1812)
!1975 = !DILocation(line: 230, column: 18, scope: !1812)
!1976 = !DILocation(line: 231, column: 67, scope: !1812)
!1977 = !DILocation(line: 231, column: 74, scope: !1812)
!1978 = !DILocation(line: 231, column: 64, scope: !1812)
!1979 = !DILocation(line: 231, column: 56, scope: !1812)
!1980 = !DILocation(line: 232, column: 13, scope: !1812)
!1981 = !DILocation(line: 235, column: 20, scope: !1812)
!1982 = !DILocation(line: 236, column: 18, scope: !1812)
!1983 = !DILocation(line: 237, column: 66, scope: !1812)
!1984 = !DILocation(line: 237, column: 73, scope: !1812)
!1985 = !DILocation(line: 237, column: 63, scope: !1812)
!1986 = !DILocation(line: 237, column: 56, scope: !1812)
!1987 = !DILocation(line: 238, column: 13, scope: !1812)
!1988 = !DILocation(line: 241, column: 20, scope: !1812)
!1989 = !DILocation(line: 242, column: 18, scope: !1812)
!1990 = !DILocation(line: 243, column: 67, scope: !1812)
!1991 = !DILocation(line: 243, column: 74, scope: !1812)
!1992 = !DILocation(line: 243, column: 64, scope: !1812)
!1993 = !DILocation(line: 243, column: 56, scope: !1812)
!1994 = !DILocation(line: 244, column: 13, scope: !1812)
!1995 = !DILocation(line: 247, column: 20, scope: !1812)
!1996 = !DILocation(line: 248, column: 18, scope: !1812)
!1997 = !DILocation(line: 249, column: 67, scope: !1812)
!1998 = !DILocation(line: 249, column: 74, scope: !1812)
!1999 = !DILocation(line: 249, column: 64, scope: !1812)
!2000 = !DILocation(line: 249, column: 56, scope: !1812)
!2001 = !DILocation(line: 250, column: 13, scope: !1812)
!2002 = !DILocation(line: 253, column: 20, scope: !1812)
!2003 = !DILocation(line: 254, column: 18, scope: !1812)
!2004 = !DILocation(line: 255, column: 67, scope: !1812)
!2005 = !DILocation(line: 255, column: 74, scope: !1812)
!2006 = !DILocation(line: 255, column: 64, scope: !1812)
!2007 = !DILocation(line: 255, column: 56, scope: !1812)
!2008 = !DILocation(line: 256, column: 13, scope: !1812)
!2009 = !DILocation(line: 259, column: 20, scope: !1812)
!2010 = !DILocation(line: 260, column: 18, scope: !1812)
!2011 = !DILocation(line: 261, column: 67, scope: !1812)
!2012 = !DILocation(line: 261, column: 74, scope: !1812)
!2013 = !DILocation(line: 261, column: 64, scope: !1812)
!2014 = !DILocation(line: 261, column: 56, scope: !1812)
!2015 = !DILocation(line: 262, column: 13, scope: !1812)
!2016 = !DILocation(line: 265, column: 20, scope: !1812)
!2017 = !DILocation(line: 266, column: 18, scope: !1812)
!2018 = !DILocation(line: 267, column: 67, scope: !1812)
!2019 = !DILocation(line: 267, column: 74, scope: !1812)
!2020 = !DILocation(line: 267, column: 64, scope: !1812)
!2021 = !DILocation(line: 267, column: 56, scope: !1812)
!2022 = !DILocation(line: 268, column: 13, scope: !1812)
!2023 = !DILocation(line: 271, column: 20, scope: !1812)
!2024 = !DILocation(line: 272, column: 18, scope: !1812)
!2025 = !DILocation(line: 273, column: 67, scope: !1812)
!2026 = !DILocation(line: 273, column: 74, scope: !1812)
!2027 = !DILocation(line: 273, column: 64, scope: !1812)
!2028 = !DILocation(line: 273, column: 56, scope: !1812)
!2029 = !DILocation(line: 274, column: 13, scope: !1812)
!2030 = !DILocation(line: 278, column: 1, scope: !1800)
!2031 = distinct !DISubprogram(name: "NVIC_SetupVectorTable", scope: !844, file: !844, line: 47, type: !2032, scopeLine: 48, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !843, retainedNodes: !2034)
!2032 = !DISubroutineType(types: !2033)
!2033 = !{null, !92}
!2034 = !{!2035}
!2035 = !DILocalVariable(name: "addr", arg: 1, scope: !2031, file: !844, line: 47, type: !92)
!2036 = !DILocation(line: 0, scope: !2031)
!2037 = !DILocation(line: 49, column: 15, scope: !2031)
!2038 = !DILocation(line: 51, column: 5, scope: !2031)
!2039 = !{i64 2624}
!2040 = !DILocation(line: 52, column: 5, scope: !2031)
!2041 = !{i64 2651}
!2042 = !DILocation(line: 53, column: 1, scope: !2031)
!2043 = distinct !DISubprogram(name: "NVIC_SWInt", scope: !844, file: !844, line: 56, type: !2044, scopeLine: 57, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !843, retainedNodes: !2046)
!2044 = !DISubroutineType(types: !2045)
!2045 = !{null, !7}
!2046 = !{!2047}
!2047 = !DILocalVariable(name: "source", arg: 1, scope: !2043, file: !844, line: 56, type: !7)
!2048 = !DILocation(line: 0, scope: !2043)
!2049 = !DILocation(line: 58, column: 16, scope: !2043)
!2050 = !DILocation(line: 59, column: 1, scope: !2043)
!2051 = distinct !DISubprogram(name: "save_and_set_interrupt_mask", scope: !844, file: !844, line: 61, type: !2052, scopeLine: 62, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !843, retainedNodes: !2054)
!2052 = !DISubroutineType(types: !2053)
!2053 = !{!92}
!2054 = !{!2055}
!2055 = !DILocalVariable(name: "mask", scope: !2051, file: !844, line: 63, type: !92)
!2056 = !DILocation(line: 470, column: 3, scope: !2057, inlinedAt: !2061)
!2057 = distinct !DISubprogram(name: "__get_PRIMASK", scope: !2058, file: !2058, line: 466, type: !2052, scopeLine: 467, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !843, retainedNodes: !2059)
!2058 = !DIFile(filename: "../../../../../driver/CMSIS/Include/core_cmFunc.h", directory: "/home/mjshen/RTOSExploration/Embedded-GUI-for-MT2523/project/mt7687_hdk/hal_examples/gpt_interrupt_repeat_mode/GCC")
!2059 = !{!2060}
!2060 = !DILocalVariable(name: "result", scope: !2057, file: !2058, line: 468, type: !92)
!2061 = distinct !DILocation(line: 64, column: 5, scope: !2062)
!2062 = distinct !DILexicalBlock(scope: !2051, file: !844, line: 64, column: 5)
!2063 = !{i64 302175}
!2064 = !DILocation(line: 0, scope: !2057, inlinedAt: !2061)
!2065 = !DILocation(line: 0, scope: !2051)
!2066 = !DILocation(line: 330, column: 3, scope: !2067, inlinedAt: !2068)
!2067 = distinct !DISubprogram(name: "__disable_irq", scope: !2058, file: !2058, line: 328, type: !75, scopeLine: 329, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !843, retainedNodes: !1158)
!2068 = distinct !DILocation(line: 64, column: 5, scope: !2062)
!2069 = !{i64 298839}
!2070 = !DILocation(line: 65, column: 5, scope: !2051)
!2071 = distinct !DISubprogram(name: "restore_interrupt_mask", scope: !844, file: !844, line: 68, type: !2032, scopeLine: 69, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !843, retainedNodes: !2072)
!2072 = !{!2073}
!2073 = !DILocalVariable(name: "mask", arg: 1, scope: !2071, file: !844, line: 68, type: !92)
!2074 = !DILocation(line: 0, scope: !2071)
!2075 = !DILocalVariable(name: "priMask", arg: 1, scope: !2076, file: !2058, line: 481, type: !92)
!2076 = distinct !DISubprogram(name: "__set_PRIMASK", scope: !2058, file: !2058, line: 481, type: !2032, scopeLine: 482, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !843, retainedNodes: !2077)
!2077 = !{!2075}
!2078 = !DILocation(line: 0, scope: !2076, inlinedAt: !2079)
!2079 = distinct !DILocation(line: 70, column: 5, scope: !2080)
!2080 = distinct !DILexicalBlock(scope: !2071, file: !844, line: 70, column: 5)
!2081 = !DILocation(line: 483, column: 3, scope: !2076, inlinedAt: !2079)
!2082 = !{i64 302493}
!2083 = !DILocation(line: 71, column: 1, scope: !2071)
!2084 = distinct !DISubprogram(name: "pinmux_config", scope: !889, file: !889, line: 54, type: !2085, scopeLine: 55, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !888, retainedNodes: !2087)
!2085 = !DISubroutineType(types: !2086)
!2086 = !{!154, !963, !92}
!2087 = !{!2088, !2089, !2090}
!2088 = !DILocalVariable(name: "gpio_index", arg: 1, scope: !2084, file: !889, line: 54, type: !963)
!2089 = !DILocalVariable(name: "function", arg: 2, scope: !2084, file: !889, line: 54, type: !92)
!2090 = !DILocalVariable(name: "ePadIndex", scope: !2084, file: !889, line: 56, type: !1804)
!2091 = !DILocation(line: 0, scope: !2084)
!2092 = !DILocation(line: 60, column: 5, scope: !2084)
!2093 = !DILocation(line: 205, column: 38, scope: !2084)
!2094 = !DILocation(line: 205, column: 5, scope: !2084)
!2095 = !DILocation(line: 207, column: 5, scope: !2084)
!2096 = !DILocation(line: 208, column: 1, scope: !2084)
!2097 = distinct !DISubprogram(name: "get_current_count", scope: !923, file: !923, line: 56, type: !2052, scopeLine: 57, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !922, retainedNodes: !1158)
!2098 = !DILocation(line: 58, column: 12, scope: !2097)
!2099 = !DILocation(line: 58, column: 5, scope: !2097)
!2100 = distinct !DISubprogram(name: "delay_time", scope: !923, file: !923, line: 62, type: !1016, scopeLine: 63, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !922, retainedNodes: !2101)
!2101 = !{!2102, !2103, !2104}
!2102 = !DILocalVariable(name: "count", arg: 1, scope: !2100, file: !923, line: 62, type: !60)
!2103 = !DILocalVariable(name: "end_count", scope: !2100, file: !923, line: 64, type: !60)
!2104 = !DILocalVariable(name: "current", scope: !2100, file: !923, line: 64, type: !60)
!2105 = !DILocation(line: 0, scope: !2100)
!2106 = !DILocation(line: 66, column: 17, scope: !2100)
!2107 = !DILocation(line: 66, column: 37, scope: !2100)
!2108 = !DILocation(line: 66, column: 45, scope: !2100)
!2109 = !DILocation(line: 67, column: 15, scope: !2100)
!2110 = !DILocation(line: 68, column: 12, scope: !2100)
!2111 = !DILocation(line: 68, column: 5, scope: !2100)
!2112 = !DILocation(line: 69, column: 19, scope: !2113)
!2113 = distinct !DILexicalBlock(scope: !2100, file: !923, line: 68, column: 45)
!2114 = distinct !{!2114, !2111, !2115}
!2115 = !DILocation(line: 70, column: 5, scope: !2100)
!2116 = !DILocation(line: 72, column: 1, scope: !2100)
!2117 = distinct !DISubprogram(name: "delay_time_for_gpt4", scope: !923, file: !923, line: 75, type: !1016, scopeLine: 76, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !922, retainedNodes: !2118)
!2118 = !{!2119, !2120, !2121}
!2119 = !DILocalVariable(name: "count", arg: 1, scope: !2117, file: !923, line: 75, type: !60)
!2120 = !DILocalVariable(name: "end_count", scope: !2117, file: !923, line: 77, type: !60)
!2121 = !DILocalVariable(name: "current", scope: !2117, file: !923, line: 77, type: !60)
!2122 = !DILocation(line: 0, scope: !2117)
!2123 = !DILocation(line: 79, column: 17, scope: !2117)
!2124 = !DILocation(line: 79, column: 42, scope: !2117)
!2125 = !DILocation(line: 79, column: 50, scope: !2117)
!2126 = !DILocation(line: 80, column: 15, scope: !2117)
!2127 = !DILocation(line: 81, column: 12, scope: !2117)
!2128 = !DILocation(line: 81, column: 5, scope: !2117)
!2129 = !DILocation(line: 82, column: 19, scope: !2130)
!2130 = distinct !DILexicalBlock(scope: !2117, file: !923, line: 81, column: 45)
!2131 = distinct !{!2131, !2128, !2132}
!2132 = !DILocation(line: 83, column: 5, scope: !2117)
!2133 = !DILocation(line: 85, column: 1, scope: !2117)
!2134 = distinct !DISubprogram(name: "get_current_gpt4_count", scope: !923, file: !923, line: 95, type: !2052, scopeLine: 96, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !922, retainedNodes: !1158)
!2135 = !DILocation(line: 97, column: 13, scope: !2134)
!2136 = !DILocation(line: 97, column: 5, scope: !2134)
!2137 = distinct !DISubprogram(name: "delay_ms", scope: !923, file: !923, line: 107, type: !2032, scopeLine: 108, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !922, retainedNodes: !2138)
!2138 = !{!2139, !2140}
!2139 = !DILocalVariable(name: "ms", arg: 1, scope: !2137, file: !923, line: 107, type: !92)
!2140 = !DILocalVariable(name: "count", scope: !2137, file: !923, line: 109, type: !92)
!2141 = !DILocation(line: 0, scope: !2137)
!2142 = !DILocation(line: 111, column: 17, scope: !2137)
!2143 = !DILocation(line: 112, column: 17, scope: !2137)
!2144 = !DILocation(line: 112, column: 23, scope: !2137)
!2145 = !DILocation(line: 112, column: 11, scope: !2137)
!2146 = !DILocation(line: 113, column: 17, scope: !2137)
!2147 = !DILocation(line: 113, column: 23, scope: !2137)
!2148 = !DILocation(line: 113, column: 11, scope: !2137)
!2149 = !DILocation(line: 114, column: 17, scope: !2137)
!2150 = !DILocation(line: 114, column: 23, scope: !2137)
!2151 = !DILocation(line: 114, column: 11, scope: !2137)
!2152 = !DILocation(line: 115, column: 5, scope: !2137)
!2153 = !DILocation(line: 116, column: 1, scope: !2137)
!2154 = distinct !DISubprogram(name: "delay_us", scope: !923, file: !923, line: 120, type: !2032, scopeLine: 121, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !922, retainedNodes: !2155)
!2155 = !{!2156, !2157, !2158}
!2156 = !DILocalVariable(name: "us", arg: 1, scope: !2154, file: !923, line: 120, type: !92)
!2157 = !DILocalVariable(name: "count", scope: !2154, file: !923, line: 122, type: !92)
!2158 = !DILocalVariable(name: "ticks_per_us", scope: !2154, file: !923, line: 123, type: !92)
!2159 = !DILocation(line: 0, scope: !2154)
!2160 = !DILocation(line: 125, column: 20, scope: !2154)
!2161 = !DILocation(line: 125, column: 39, scope: !2154)
!2162 = !DILocation(line: 126, column: 26, scope: !2154)
!2163 = !DILocation(line: 128, column: 5, scope: !2154)
!2164 = !DILocation(line: 129, column: 1, scope: !2154)
!2165 = distinct !DISubprogram(name: "drvTMR_init", scope: !923, file: !923, line: 133, type: !2166, scopeLine: 134, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !922, retainedNodes: !2168)
!2166 = !DISubroutineType(types: !2167)
!2167 = !{null, !92, !92, !296, !74}
!2168 = !{!2169, !2170, !2171, !2172}
!2169 = !DILocalVariable(name: "timerNum", arg: 1, scope: !2165, file: !923, line: 133, type: !92)
!2170 = !DILocalVariable(name: "countValue", arg: 2, scope: !2165, file: !923, line: 133, type: !92)
!2171 = !DILocalVariable(name: "autoRepeat", arg: 3, scope: !2165, file: !923, line: 133, type: !296)
!2172 = !DILocalVariable(name: "TMR_Callback", arg: 4, scope: !2165, file: !923, line: 133, type: !74)
!2173 = !DILocation(line: 0, scope: !2165)
!2174 = !DILocation(line: 136, column: 5, scope: !2165)
!2175 = !DILocation(line: 138, column: 18, scope: !2176)
!2176 = distinct !DILexicalBlock(scope: !2165, file: !923, line: 138, column: 9)
!2177 = !DILocation(line: 138, column: 9, scope: !2165)
!2178 = !DILocation(line: 139, column: 30, scope: !2179)
!2179 = distinct !DILexicalBlock(scope: !2176, file: !923, line: 138, column: 27)
!2180 = !DILocation(line: 141, column: 5, scope: !2179)
!2181 = !DILocation(line: 142, column: 30, scope: !2182)
!2182 = distinct !DILexicalBlock(scope: !2176, file: !923, line: 141, column: 12)
!2183 = !DILocation(line: 0, scope: !2176)
!2184 = !DILocation(line: 146, column: 5, scope: !2165)
!2185 = !DILocation(line: 147, column: 1, scope: !2165)
!2186 = distinct !DISubprogram(name: "TMR_Start", scope: !923, file: !923, line: 149, type: !2032, scopeLine: 150, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !922, retainedNodes: !2187)
!2187 = !{!2188}
!2188 = !DILocalVariable(name: "timerNum", arg: 1, scope: !2186, file: !923, line: 149, type: !92)
!2189 = !DILocation(line: 0, scope: !2186)
!2190 = !DILocation(line: 151, column: 5, scope: !2186)
!2191 = !DILocation(line: 152, column: 1, scope: !2186)
!2192 = distinct !DISubprogram(name: "TMR_Stop", scope: !923, file: !923, line: 154, type: !2032, scopeLine: 155, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !922, retainedNodes: !2193)
!2193 = !{!2194}
!2194 = !DILocalVariable(name: "timerNum", arg: 1, scope: !2192, file: !923, line: 154, type: !92)
!2195 = !DILocation(line: 0, scope: !2192)
!2196 = !DILocation(line: 156, column: 5, scope: !2192)
!2197 = !DILocation(line: 157, column: 1, scope: !2192)
!2198 = distinct !DISubprogram(name: "drvGPT2Init", scope: !923, file: !923, line: 160, type: !75, scopeLine: 161, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !922, retainedNodes: !1158)
!2199 = !DILocation(line: 162, column: 5, scope: !2198)
!2200 = !DILocation(line: 163, column: 1, scope: !2198)
!2201 = distinct !DISubprogram(name: "drvGPT4Init", scope: !923, file: !923, line: 165, type: !75, scopeLine: 166, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !922, retainedNodes: !1158)
!2202 = !DILocation(line: 167, column: 5, scope: !2201)
!2203 = !DILocation(line: 168, column: 1, scope: !2201)
!2204 = distinct !DISubprogram(name: "clear_TMR_INT_status_bit", scope: !923, file: !923, line: 170, type: !2032, scopeLine: 171, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !922, retainedNodes: !2205)
!2205 = !{!2206}
!2206 = !DILocalVariable(name: "timerNum", arg: 1, scope: !2204, file: !923, line: 170, type: !92)
!2207 = !DILocation(line: 0, scope: !2204)
!2208 = !DILocation(line: 172, column: 9, scope: !2204)
!2209 = !DILocation(line: 177, column: 5, scope: !2210)
!2210 = distinct !DILexicalBlock(scope: !2211, file: !923, line: 175, column: 27)
!2211 = distinct !DILexicalBlock(scope: !2204, file: !923, line: 175, column: 9)
!2212 = !DILocation(line: 178, column: 1, scope: !2204)
!2213 = distinct !DISubprogram(name: "top_xtal_init", scope: !86, file: !86, line: 52, type: !75, scopeLine: 53, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !85, retainedNodes: !2214)
!2214 = !{!2215, !2216}
!2215 = !DILocalVariable(name: "u4RegVal", scope: !2213, file: !86, line: 54, type: !92)
!2216 = !DILocalVariable(name: "reg", scope: !2213, file: !86, line: 55, type: !641)
!2217 = !DILocation(line: 0, scope: !2213)
!2218 = !DILocation(line: 55, column: 25, scope: !2213)
!2219 = !DILocation(line: 56, column: 16, scope: !2213)
!2220 = !DILocation(line: 56, column: 23, scope: !2213)
!2221 = !DILocation(line: 58, column: 16, scope: !2213)
!2222 = !DILocation(line: 61, column: 5, scope: !2213)
!2223 = !DILocation(line: 59, column: 14, scope: !2213)
!2224 = !DILocation(line: 0, scope: !2225)
!2225 = distinct !DILexicalBlock(scope: !2213, file: !86, line: 61, column: 18)
!2226 = !DILocation(line: 87, column: 38, scope: !2213)
!2227 = !DILocation(line: 88, column: 21, scope: !2213)
!2228 = !DILocation(line: 88, column: 19, scope: !2213)
!2229 = !DILocation(line: 89, column: 5, scope: !2213)
!2230 = !DILocation(line: 90, column: 17, scope: !2213)
!2231 = !DILocation(line: 90, column: 33, scope: !2213)
!2232 = !DILocation(line: 90, column: 5, scope: !2213)
!2233 = !DILocation(line: 91, column: 1, scope: !2213)
!2234 = distinct !DISubprogram(name: "top_xtal_freq_get", scope: !86, file: !86, line: 98, type: !2052, scopeLine: 99, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !85, retainedNodes: !1158)
!2235 = !DILocation(line: 100, column: 12, scope: !2234)
!2236 = !DILocation(line: 100, column: 5, scope: !2234)
!2237 = distinct !DISubprogram(name: "top_mcu_freq_get", scope: !86, file: !86, line: 108, type: !2052, scopeLine: 109, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !85, retainedNodes: !1158)
!2238 = !DILocation(line: 110, column: 12, scope: !2237)
!2239 = !DILocation(line: 110, column: 5, scope: !2237)
!2240 = distinct !DISubprogram(name: "cmnPLL1ON", scope: !86, file: !86, line: 118, type: !75, scopeLine: 119, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !85, retainedNodes: !2241)
!2241 = !{!2242, !2243}
!2242 = !DILocalVariable(name: "reg", scope: !2240, file: !86, line: 120, type: !91)
!2243 = !DILocalVariable(name: "pTopCfgCM4PWRCtl", scope: !2240, file: !86, line: 121, type: !90)
!2244 = !DILocation(line: 120, column: 5, scope: !2240)
!2245 = !DILocation(line: 120, column: 23, scope: !2240)
!2246 = !DILocation(line: 0, scope: !2240)
!2247 = !DILocation(line: 123, column: 11, scope: !2240)
!2248 = !DILocation(line: 123, column: 9, scope: !2240)
!2249 = !DILocation(line: 124, column: 12, scope: !2240)
!2250 = !DILocation(line: 124, column: 16, scope: !2240)
!2251 = !DILocation(line: 124, column: 39, scope: !2240)
!2252 = !DILocation(line: 124, column: 9, scope: !2240)
!2253 = !DILocation(line: 126, column: 9, scope: !2254)
!2254 = distinct !DILexicalBlock(scope: !2240, file: !86, line: 126, column: 9)
!2255 = !DILocation(line: 126, column: 13, scope: !2254)
!2256 = !DILocation(line: 126, column: 9, scope: !2240)
!2257 = !DILocation(line: 127, column: 15, scope: !2258)
!2258 = distinct !DILexicalBlock(scope: !2254, file: !86, line: 126, column: 47)
!2259 = !DILocation(line: 127, column: 13, scope: !2258)
!2260 = !DILocation(line: 128, column: 15, scope: !2258)
!2261 = !DILocation(line: 128, column: 19, scope: !2258)
!2262 = !DILocation(line: 128, column: 13, scope: !2258)
!2263 = !DILocation(line: 129, column: 15, scope: !2258)
!2264 = !DILocation(line: 129, column: 19, scope: !2258)
!2265 = !DILocation(line: 129, column: 13, scope: !2258)
!2266 = !DILocation(line: 130, column: 46, scope: !2258)
!2267 = !DILocation(line: 130, column: 9, scope: !2258)
!2268 = !DILocation(line: 132, column: 9, scope: !2258)
!2269 = !DILocation(line: 133, column: 19, scope: !2270)
!2270 = distinct !DILexicalBlock(scope: !2258, file: !86, line: 132, column: 12)
!2271 = !DILocation(line: 133, column: 17, scope: !2270)
!2272 = !DILocation(line: 134, column: 19, scope: !2270)
!2273 = !DILocation(line: 134, column: 23, scope: !2270)
!2274 = !DILocation(line: 134, column: 17, scope: !2270)
!2275 = !DILocation(line: 135, column: 19, scope: !2258)
!2276 = !DILocation(line: 135, column: 18, scope: !2258)
!2277 = !DILocation(line: 135, column: 9, scope: !2270)
!2278 = distinct !{!2278, !2268, !2279}
!2279 = !DILocation(line: 135, column: 22, scope: !2258)
!2280 = !DILocation(line: 138, column: 1, scope: !2240)
!2281 = distinct !DISubprogram(name: "cmnReadRegister32", scope: !2282, file: !2282, line: 176, type: !2283, scopeLine: 177, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !85, retainedNodes: !2287)
!2282 = !DIFile(filename: "../../../../../driver/CMSIS/Device/MTK/mt7687/Include/system_mt7687.h", directory: "/home/mjshen/RTOSExploration/Embedded-GUI-for-MT2523/project/mt7687_hdk/hal_examples/gpt_interrupt_repeat_mode/GCC")
!2283 = !DISubroutineType(types: !2284)
!2284 = !{!92, !2285}
!2285 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2286, size: 32)
!2286 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: null)
!2287 = !{!2288}
!2288 = !DILocalVariable(name: "Register", arg: 1, scope: !2281, file: !2282, line: 176, type: !2285)
!2289 = !DILocation(line: 0, scope: !2281)
!2290 = !DILocation(line: 178, column: 13, scope: !2281)
!2291 = !DILocation(line: 178, column: 12, scope: !2281)
!2292 = !DILocation(line: 178, column: 5, scope: !2281)
!2293 = distinct !DISubprogram(name: "cmnWriteRegister32", scope: !2282, file: !2282, line: 171, type: !2294, scopeLine: 172, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !85, retainedNodes: !2296)
!2294 = !DISubroutineType(types: !2295)
!2295 = !{null, !2285, !92}
!2296 = !{!2297, !2298}
!2297 = !DILocalVariable(name: "Register", arg: 1, scope: !2293, file: !2282, line: 171, type: !2285)
!2298 = !DILocalVariable(name: "Value", arg: 2, scope: !2293, file: !2282, line: 171, type: !92)
!2299 = !DILocation(line: 0, scope: !2293)
!2300 = !DILocation(line: 173, column: 6, scope: !2293)
!2301 = !DILocation(line: 173, column: 36, scope: !2293)
!2302 = !DILocation(line: 174, column: 1, scope: !2293)
!2303 = distinct !DISubprogram(name: "cmnPLL1ON_PLL2ON", scope: !86, file: !86, line: 145, type: !2304, scopeLine: 146, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !85, retainedNodes: !2306)
!2304 = !DISubroutineType(types: !2305)
!2305 = !{null, !183}
!2306 = !{!2307, !2308, !2309}
!2307 = !DILocalVariable(name: "fg960M", arg: 1, scope: !2303, file: !86, line: 145, type: !183)
!2308 = !DILocalVariable(name: "reg", scope: !2303, file: !86, line: 147, type: !91)
!2309 = !DILocalVariable(name: "pTopCfgCM4PWRCtl", scope: !2303, file: !86, line: 148, type: !90)
!2310 = !DILocation(line: 0, scope: !2303)
!2311 = !DILocation(line: 147, column: 5, scope: !2303)
!2312 = !DILocation(line: 147, column: 23, scope: !2303)
!2313 = !DILocation(line: 150, column: 11, scope: !2303)
!2314 = !DILocation(line: 150, column: 9, scope: !2303)
!2315 = !DILocation(line: 151, column: 12, scope: !2303)
!2316 = !DILocation(line: 151, column: 16, scope: !2303)
!2317 = !DILocation(line: 151, column: 39, scope: !2303)
!2318 = !DILocation(line: 151, column: 9, scope: !2303)
!2319 = !DILocation(line: 153, column: 9, scope: !2320)
!2320 = distinct !DILexicalBlock(scope: !2303, file: !86, line: 153, column: 9)
!2321 = !DILocation(line: 153, column: 13, scope: !2320)
!2322 = !DILocation(line: 153, column: 9, scope: !2303)
!2323 = !DILocation(line: 154, column: 15, scope: !2324)
!2324 = distinct !DILexicalBlock(scope: !2320, file: !86, line: 153, column: 45)
!2325 = !DILocation(line: 154, column: 13, scope: !2324)
!2326 = !DILocation(line: 155, column: 15, scope: !2324)
!2327 = !DILocation(line: 155, column: 19, scope: !2324)
!2328 = !DILocation(line: 155, column: 13, scope: !2324)
!2329 = !DILocation(line: 156, column: 15, scope: !2324)
!2330 = !DILocation(line: 156, column: 19, scope: !2324)
!2331 = !DILocation(line: 156, column: 13, scope: !2324)
!2332 = !DILocation(line: 157, column: 15, scope: !2324)
!2333 = !DILocation(line: 157, column: 13, scope: !2324)
!2334 = !DILocation(line: 158, column: 46, scope: !2324)
!2335 = !DILocation(line: 158, column: 9, scope: !2324)
!2336 = !DILocation(line: 160, column: 15, scope: !2324)
!2337 = !DILocation(line: 160, column: 13, scope: !2324)
!2338 = !DILocation(line: 161, column: 15, scope: !2324)
!2339 = !DILocation(line: 161, column: 19, scope: !2324)
!2340 = !DILocation(line: 161, column: 13, scope: !2324)
!2341 = !DILocation(line: 162, column: 15, scope: !2324)
!2342 = !DILocation(line: 162, column: 19, scope: !2324)
!2343 = !DILocation(line: 162, column: 13, scope: !2324)
!2344 = !DILocation(line: 163, column: 15, scope: !2324)
!2345 = !DILocation(line: 163, column: 19, scope: !2324)
!2346 = !DILocation(line: 163, column: 13, scope: !2324)
!2347 = !DILocation(line: 164, column: 46, scope: !2324)
!2348 = !DILocation(line: 164, column: 9, scope: !2324)
!2349 = !DILocation(line: 166, column: 9, scope: !2324)
!2350 = !DILocation(line: 167, column: 19, scope: !2351)
!2351 = distinct !DILexicalBlock(scope: !2324, file: !86, line: 166, column: 12)
!2352 = !DILocation(line: 167, column: 17, scope: !2351)
!2353 = !DILocation(line: 168, column: 19, scope: !2351)
!2354 = !DILocation(line: 168, column: 23, scope: !2351)
!2355 = !DILocation(line: 168, column: 17, scope: !2351)
!2356 = !DILocation(line: 169, column: 19, scope: !2324)
!2357 = !DILocation(line: 169, column: 18, scope: !2324)
!2358 = !DILocation(line: 169, column: 9, scope: !2351)
!2359 = distinct !{!2359, !2349, !2360}
!2360 = !DILocation(line: 169, column: 22, scope: !2324)
!2361 = !DILocation(line: 171, column: 15, scope: !2324)
!2362 = !DILocation(line: 171, column: 13, scope: !2324)
!2363 = !DILocation(line: 172, column: 15, scope: !2324)
!2364 = !DILocation(line: 172, column: 19, scope: !2324)
!2365 = !DILocation(line: 172, column: 13, scope: !2324)
!2366 = !DILocation(line: 173, column: 15, scope: !2324)
!2367 = !DILocation(line: 173, column: 19, scope: !2324)
!2368 = !DILocation(line: 173, column: 13, scope: !2324)
!2369 = !DILocation(line: 174, column: 5, scope: !2324)
!2370 = !DILocation(line: 176, column: 11, scope: !2303)
!2371 = !DILocation(line: 176, column: 9, scope: !2303)
!2372 = !DILocation(line: 177, column: 9, scope: !2373)
!2373 = distinct !DILexicalBlock(scope: !2303, file: !86, line: 177, column: 9)
!2374 = !DILocation(line: 0, scope: !2373)
!2375 = !DILocation(line: 177, column: 9, scope: !2303)
!2376 = !DILocation(line: 178, column: 19, scope: !2377)
!2377 = distinct !DILexicalBlock(scope: !2373, file: !86, line: 177, column: 17)
!2378 = !DILocation(line: 178, column: 13, scope: !2377)
!2379 = !DILocation(line: 179, column: 5, scope: !2377)
!2380 = !DILocation(line: 180, column: 13, scope: !2381)
!2381 = distinct !DILexicalBlock(scope: !2373, file: !86, line: 179, column: 12)
!2382 = !DILocation(line: 182, column: 42, scope: !2303)
!2383 = !DILocation(line: 182, column: 5, scope: !2303)
!2384 = !DILocation(line: 184, column: 1, scope: !2303)
!2385 = distinct !DISubprogram(name: "cmnPLL1OFF_PLL2OFF", scope: !86, file: !86, line: 191, type: !75, scopeLine: 192, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !85, retainedNodes: !2386)
!2386 = !{!2387, !2388}
!2387 = !DILocalVariable(name: "reg", scope: !2385, file: !86, line: 193, type: !91)
!2388 = !DILocalVariable(name: "pTopCfgCM4PWRCtl", scope: !2385, file: !86, line: 194, type: !90)
!2389 = !DILocation(line: 193, column: 5, scope: !2385)
!2390 = !DILocation(line: 193, column: 23, scope: !2385)
!2391 = !DILocation(line: 0, scope: !2385)
!2392 = !DILocation(line: 196, column: 11, scope: !2385)
!2393 = !DILocation(line: 196, column: 9, scope: !2385)
!2394 = !DILocation(line: 197, column: 11, scope: !2385)
!2395 = !DILocation(line: 197, column: 15, scope: !2385)
!2396 = !DILocation(line: 197, column: 9, scope: !2385)
!2397 = !DILocation(line: 198, column: 11, scope: !2385)
!2398 = !DILocation(line: 198, column: 15, scope: !2385)
!2399 = !DILocation(line: 198, column: 9, scope: !2385)
!2400 = !DILocation(line: 199, column: 11, scope: !2385)
!2401 = !DILocation(line: 199, column: 9, scope: !2385)
!2402 = !DILocation(line: 200, column: 42, scope: !2385)
!2403 = !DILocation(line: 200, column: 5, scope: !2385)
!2404 = !DILocation(line: 202, column: 11, scope: !2385)
!2405 = !DILocation(line: 202, column: 9, scope: !2385)
!2406 = !DILocation(line: 203, column: 11, scope: !2385)
!2407 = !DILocation(line: 203, column: 15, scope: !2385)
!2408 = !DILocation(line: 203, column: 9, scope: !2385)
!2409 = !DILocation(line: 204, column: 11, scope: !2385)
!2410 = !DILocation(line: 204, column: 15, scope: !2385)
!2411 = !DILocation(line: 204, column: 9, scope: !2385)
!2412 = !DILocation(line: 205, column: 11, scope: !2385)
!2413 = !DILocation(line: 205, column: 9, scope: !2385)
!2414 = !DILocation(line: 206, column: 42, scope: !2385)
!2415 = !DILocation(line: 206, column: 5, scope: !2385)
!2416 = !DILocation(line: 209, column: 1, scope: !2385)
!2417 = distinct !DISubprogram(name: "cmnCpuClkConfigureToXtal", scope: !86, file: !86, line: 216, type: !75, scopeLine: 217, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !85, retainedNodes: !2418)
!2418 = !{!2419, !2420}
!2419 = !DILocalVariable(name: "reg", scope: !2417, file: !86, line: 218, type: !91)
!2420 = !DILocalVariable(name: "pTopCfgCM4CKG", scope: !2417, file: !86, line: 219, type: !90)
!2421 = !DILocation(line: 218, column: 5, scope: !2417)
!2422 = !DILocation(line: 218, column: 23, scope: !2417)
!2423 = !DILocation(line: 0, scope: !2417)
!2424 = !DILocation(line: 222, column: 11, scope: !2417)
!2425 = !DILocation(line: 222, column: 9, scope: !2417)
!2426 = !DILocation(line: 223, column: 11, scope: !2417)
!2427 = !DILocation(line: 223, column: 15, scope: !2417)
!2428 = !DILocation(line: 223, column: 9, scope: !2417)
!2429 = !DILocation(line: 224, column: 11, scope: !2417)
!2430 = !DILocation(line: 224, column: 9, scope: !2417)
!2431 = !DILocation(line: 225, column: 39, scope: !2417)
!2432 = !DILocation(line: 225, column: 5, scope: !2417)
!2433 = !DILocation(line: 228, column: 11, scope: !2417)
!2434 = !DILocation(line: 228, column: 9, scope: !2417)
!2435 = !DILocation(line: 229, column: 11, scope: !2417)
!2436 = !DILocation(line: 229, column: 15, scope: !2417)
!2437 = !DILocation(line: 229, column: 9, scope: !2417)
!2438 = !DILocation(line: 230, column: 11, scope: !2417)
!2439 = !DILocation(line: 230, column: 9, scope: !2417)
!2440 = !DILocation(line: 231, column: 39, scope: !2417)
!2441 = !DILocation(line: 231, column: 5, scope: !2417)
!2442 = !DILocation(line: 233, column: 5, scope: !2417)
!2443 = !DILocation(line: 233, column: 12, scope: !2417)
!2444 = !DILocation(line: 233, column: 19, scope: !2417)
!2445 = !DILocation(line: 233, column: 16, scope: !2417)
!2446 = distinct !{!2446, !2442, !2447}
!2447 = !DILocation(line: 233, column: 52, scope: !2417)
!2448 = !DILocation(line: 235, column: 21, scope: !2417)
!2449 = !DILocation(line: 235, column: 19, scope: !2417)
!2450 = !DILocation(line: 236, column: 5, scope: !2417)
!2451 = !DILocation(line: 237, column: 17, scope: !2417)
!2452 = !DILocation(line: 237, column: 33, scope: !2417)
!2453 = !DILocation(line: 237, column: 5, scope: !2417)
!2454 = !DILocation(line: 239, column: 1, scope: !2417)
!2455 = distinct !DISubprogram(name: "cmnCpuClkConfigureTo192M", scope: !86, file: !86, line: 246, type: !75, scopeLine: 247, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !85, retainedNodes: !2456)
!2456 = !{!2457, !2458}
!2457 = !DILocalVariable(name: "reg", scope: !2455, file: !86, line: 248, type: !91)
!2458 = !DILocalVariable(name: "pTopCfgCM4CKG", scope: !2455, file: !86, line: 249, type: !90)
!2459 = !DILocation(line: 248, column: 5, scope: !2455)
!2460 = !DILocation(line: 248, column: 23, scope: !2455)
!2461 = !DILocation(line: 0, scope: !2455)
!2462 = !DILocation(line: 252, column: 5, scope: !2455)
!2463 = !DILocation(line: 255, column: 11, scope: !2455)
!2464 = !DILocation(line: 255, column: 9, scope: !2455)
!2465 = !DILocation(line: 256, column: 11, scope: !2455)
!2466 = !DILocation(line: 256, column: 15, scope: !2455)
!2467 = !DILocation(line: 256, column: 9, scope: !2455)
!2468 = !DILocation(line: 257, column: 11, scope: !2455)
!2469 = !DILocation(line: 257, column: 15, scope: !2455)
!2470 = !DILocation(line: 257, column: 9, scope: !2455)
!2471 = !DILocation(line: 258, column: 39, scope: !2455)
!2472 = !DILocation(line: 258, column: 5, scope: !2455)
!2473 = !DILocation(line: 260, column: 5, scope: !2455)
!2474 = !DILocation(line: 260, column: 12, scope: !2455)
!2475 = !DILocation(line: 260, column: 19, scope: !2455)
!2476 = !DILocation(line: 260, column: 16, scope: !2455)
!2477 = distinct !{!2477, !2473, !2478}
!2478 = !DILocation(line: 260, column: 52, scope: !2455)
!2479 = !DILocation(line: 263, column: 11, scope: !2455)
!2480 = !DILocation(line: 263, column: 9, scope: !2455)
!2481 = !DILocation(line: 264, column: 11, scope: !2455)
!2482 = !DILocation(line: 264, column: 15, scope: !2455)
!2483 = !DILocation(line: 264, column: 9, scope: !2455)
!2484 = !DILocation(line: 265, column: 11, scope: !2455)
!2485 = !DILocation(line: 265, column: 15, scope: !2455)
!2486 = !DILocation(line: 265, column: 9, scope: !2455)
!2487 = !DILocation(line: 266, column: 39, scope: !2455)
!2488 = !DILocation(line: 266, column: 5, scope: !2455)
!2489 = !DILocation(line: 269, column: 11, scope: !2455)
!2490 = !DILocation(line: 269, column: 9, scope: !2455)
!2491 = !DILocation(line: 270, column: 11, scope: !2455)
!2492 = !DILocation(line: 270, column: 15, scope: !2455)
!2493 = !DILocation(line: 270, column: 9, scope: !2455)
!2494 = !DILocation(line: 271, column: 11, scope: !2455)
!2495 = !DILocation(line: 271, column: 15, scope: !2455)
!2496 = !DILocation(line: 271, column: 9, scope: !2455)
!2497 = !DILocation(line: 272, column: 39, scope: !2455)
!2498 = !DILocation(line: 272, column: 5, scope: !2455)
!2499 = !DILocation(line: 273, column: 19, scope: !2455)
!2500 = !DILocation(line: 274, column: 5, scope: !2455)
!2501 = !DILocation(line: 275, column: 17, scope: !2455)
!2502 = !DILocation(line: 275, column: 33, scope: !2455)
!2503 = !DILocation(line: 275, column: 5, scope: !2455)
!2504 = !DILocation(line: 277, column: 1, scope: !2455)
!2505 = distinct !DISubprogram(name: "cmnCpuClkConfigureTo160M", scope: !86, file: !86, line: 284, type: !75, scopeLine: 285, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !85, retainedNodes: !2506)
!2506 = !{!2507, !2508}
!2507 = !DILocalVariable(name: "reg", scope: !2505, file: !86, line: 286, type: !91)
!2508 = !DILocalVariable(name: "pTopCfgCM4CKG", scope: !2505, file: !86, line: 287, type: !90)
!2509 = !DILocation(line: 286, column: 5, scope: !2505)
!2510 = !DILocation(line: 286, column: 23, scope: !2505)
!2511 = !DILocation(line: 0, scope: !2505)
!2512 = !DILocation(line: 290, column: 5, scope: !2505)
!2513 = !DILocation(line: 293, column: 11, scope: !2505)
!2514 = !DILocation(line: 293, column: 9, scope: !2505)
!2515 = !DILocation(line: 294, column: 11, scope: !2505)
!2516 = !DILocation(line: 294, column: 15, scope: !2505)
!2517 = !DILocation(line: 294, column: 9, scope: !2505)
!2518 = !DILocation(line: 295, column: 11, scope: !2505)
!2519 = !DILocation(line: 295, column: 15, scope: !2505)
!2520 = !DILocation(line: 295, column: 9, scope: !2505)
!2521 = !DILocation(line: 296, column: 39, scope: !2505)
!2522 = !DILocation(line: 296, column: 5, scope: !2505)
!2523 = !DILocation(line: 298, column: 5, scope: !2505)
!2524 = !DILocation(line: 298, column: 12, scope: !2505)
!2525 = !DILocation(line: 298, column: 19, scope: !2505)
!2526 = !DILocation(line: 298, column: 16, scope: !2505)
!2527 = distinct !{!2527, !2523, !2528}
!2528 = !DILocation(line: 298, column: 52, scope: !2505)
!2529 = !DILocation(line: 301, column: 11, scope: !2505)
!2530 = !DILocation(line: 301, column: 9, scope: !2505)
!2531 = !DILocation(line: 302, column: 11, scope: !2505)
!2532 = !DILocation(line: 302, column: 15, scope: !2505)
!2533 = !DILocation(line: 302, column: 9, scope: !2505)
!2534 = !DILocation(line: 303, column: 11, scope: !2505)
!2535 = !DILocation(line: 303, column: 15, scope: !2505)
!2536 = !DILocation(line: 303, column: 9, scope: !2505)
!2537 = !DILocation(line: 304, column: 39, scope: !2505)
!2538 = !DILocation(line: 304, column: 5, scope: !2505)
!2539 = !DILocation(line: 307, column: 11, scope: !2505)
!2540 = !DILocation(line: 307, column: 9, scope: !2505)
!2541 = !DILocation(line: 308, column: 11, scope: !2505)
!2542 = !DILocation(line: 308, column: 15, scope: !2505)
!2543 = !DILocation(line: 308, column: 9, scope: !2505)
!2544 = !DILocation(line: 309, column: 11, scope: !2505)
!2545 = !DILocation(line: 309, column: 15, scope: !2505)
!2546 = !DILocation(line: 309, column: 9, scope: !2505)
!2547 = !DILocation(line: 310, column: 39, scope: !2505)
!2548 = !DILocation(line: 310, column: 5, scope: !2505)
!2549 = !DILocation(line: 311, column: 19, scope: !2505)
!2550 = !DILocation(line: 312, column: 5, scope: !2505)
!2551 = !DILocation(line: 313, column: 17, scope: !2505)
!2552 = !DILocation(line: 313, column: 33, scope: !2505)
!2553 = !DILocation(line: 313, column: 5, scope: !2505)
!2554 = !DILocation(line: 315, column: 1, scope: !2505)
!2555 = distinct !DISubprogram(name: "cmnCpuClkConfigureTo64M", scope: !86, file: !86, line: 323, type: !75, scopeLine: 324, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !85, retainedNodes: !2556)
!2556 = !{!2557, !2558}
!2557 = !DILocalVariable(name: "reg", scope: !2555, file: !86, line: 325, type: !91)
!2558 = !DILocalVariable(name: "pTopCfgCM4CKG", scope: !2555, file: !86, line: 326, type: !90)
!2559 = !DILocation(line: 325, column: 5, scope: !2555)
!2560 = !DILocation(line: 325, column: 23, scope: !2555)
!2561 = !DILocation(line: 0, scope: !2555)
!2562 = !DILocation(line: 329, column: 5, scope: !2555)
!2563 = !DILocation(line: 332, column: 11, scope: !2555)
!2564 = !DILocation(line: 332, column: 9, scope: !2555)
!2565 = !DILocation(line: 333, column: 11, scope: !2555)
!2566 = !DILocation(line: 333, column: 15, scope: !2555)
!2567 = !DILocation(line: 333, column: 9, scope: !2555)
!2568 = !DILocation(line: 334, column: 11, scope: !2555)
!2569 = !DILocation(line: 334, column: 9, scope: !2555)
!2570 = !DILocation(line: 335, column: 39, scope: !2555)
!2571 = !DILocation(line: 335, column: 5, scope: !2555)
!2572 = !DILocation(line: 337, column: 5, scope: !2555)
!2573 = !DILocation(line: 337, column: 12, scope: !2555)
!2574 = !DILocation(line: 337, column: 19, scope: !2555)
!2575 = !DILocation(line: 337, column: 16, scope: !2555)
!2576 = distinct !{!2576, !2572, !2577}
!2577 = !DILocation(line: 337, column: 52, scope: !2555)
!2578 = !DILocation(line: 340, column: 11, scope: !2555)
!2579 = !DILocation(line: 340, column: 9, scope: !2555)
!2580 = !DILocation(line: 341, column: 11, scope: !2555)
!2581 = !DILocation(line: 341, column: 15, scope: !2555)
!2582 = !DILocation(line: 341, column: 9, scope: !2555)
!2583 = !DILocation(line: 342, column: 11, scope: !2555)
!2584 = !DILocation(line: 342, column: 15, scope: !2555)
!2585 = !DILocation(line: 342, column: 9, scope: !2555)
!2586 = !DILocation(line: 343, column: 39, scope: !2555)
!2587 = !DILocation(line: 343, column: 5, scope: !2555)
!2588 = !DILocation(line: 344, column: 19, scope: !2555)
!2589 = !DILocation(line: 345, column: 5, scope: !2555)
!2590 = !DILocation(line: 346, column: 17, scope: !2555)
!2591 = !DILocation(line: 346, column: 33, scope: !2555)
!2592 = !DILocation(line: 346, column: 5, scope: !2555)
!2593 = !DILocation(line: 348, column: 1, scope: !2555)
!2594 = distinct !DISubprogram(name: "cmnSerialFlashClkConfToXtal", scope: !86, file: !86, line: 353, type: !75, scopeLine: 354, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !85, retainedNodes: !2595)
!2595 = !{!2596, !2597}
!2596 = !DILocalVariable(name: "reg", scope: !2594, file: !86, line: 355, type: !79)
!2597 = !DILocalVariable(name: "pTopCfgHclk", scope: !2594, file: !86, line: 356, type: !96)
!2598 = !DILocation(line: 355, column: 5, scope: !2594)
!2599 = !DILocation(line: 355, column: 21, scope: !2594)
!2600 = !DILocation(line: 0, scope: !2594)
!2601 = !DILocation(line: 358, column: 11, scope: !2594)
!2602 = !DILocation(line: 358, column: 9, scope: !2594)
!2603 = !DILocation(line: 359, column: 11, scope: !2594)
!2604 = !DILocation(line: 359, column: 15, scope: !2594)
!2605 = !DILocation(line: 359, column: 9, scope: !2594)
!2606 = !DILocation(line: 360, column: 11, scope: !2594)
!2607 = !DILocation(line: 360, column: 9, scope: !2594)
!2608 = !DILocation(line: 361, column: 37, scope: !2594)
!2609 = !DILocation(line: 361, column: 5, scope: !2594)
!2610 = !DILocation(line: 362, column: 1, scope: !2594)
!2611 = distinct !DISubprogram(name: "getc", scope: !103, file: !103, line: 68, type: !2612, scopeLine: 69, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !102, retainedNodes: !2614)
!2612 = !DISubroutineType(types: !2613)
!2613 = !{!13}
!2614 = !{!2615}
!2615 = !DILocalVariable(name: "rc", scope: !2611, file: !103, line: 71, type: !13)
!2616 = !DILocation(line: 71, column: 14, scope: !2611)
!2617 = !DILocation(line: 0, scope: !2611)
!2618 = !DILocation(line: 72, column: 5, scope: !2611)
!2619 = distinct !DISubprogram(name: "getc_nowait", scope: !103, file: !103, line: 80, type: !2612, scopeLine: 81, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !102, retainedNodes: !2620)
!2620 = !{!2621}
!2621 = !DILocalVariable(name: "c", scope: !2619, file: !103, line: 82, type: !352)
!2622 = !DILocation(line: 84, column: 9, scope: !2623)
!2623 = distinct !DILexicalBlock(scope: !2619, file: !103, line: 84, column: 9)
!2624 = !DILocation(line: 84, column: 40, scope: !2623)
!2625 = !DILocation(line: 84, column: 9, scope: !2619)
!2626 = !DILocation(line: 85, column: 13, scope: !2627)
!2627 = distinct !DILexicalBlock(scope: !2623, file: !103, line: 84, column: 47)
!2628 = !DILocation(line: 86, column: 16, scope: !2627)
!2629 = !DILocation(line: 0, scope: !2619)
!2630 = !DILocation(line: 86, column: 9, scope: !2627)
!2631 = !DILocation(line: 0, scope: !2623)
!2632 = !DILocation(line: 90, column: 1, scope: !2619)
!2633 = distinct !DISubprogram(name: "uart_output_char", scope: !103, file: !103, line: 93, type: !2634, scopeLine: 94, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !102, retainedNodes: !2637)
!2634 = !DISubroutineType(types: !2635)
!2635 = !{null, !2636, !134}
!2636 = !DIDerivedType(tag: DW_TAG_typedef, name: "UART_PORT", file: !106, line: 75, baseType: !105)
!2637 = !{!2638, !2639, !2640}
!2638 = !DILocalVariable(name: "port_no", arg: 1, scope: !2633, file: !103, line: 93, type: !2636)
!2639 = !DILocalVariable(name: "c", arg: 2, scope: !2633, file: !103, line: 93, type: !134)
!2640 = !DILocalVariable(name: "base", scope: !2633, file: !103, line: 95, type: !7)
!2641 = !DILocation(line: 0, scope: !2633)
!2642 = !DILocation(line: 95, column: 25, scope: !2633)
!2643 = !DILocation(line: 97, column: 5, scope: !2633)
!2644 = !DILocation(line: 97, column: 14, scope: !2633)
!2645 = !DILocation(line: 97, column: 42, scope: !2633)
!2646 = !DILocation(line: 97, column: 12, scope: !2633)
!2647 = distinct !{!2647, !2643, !2648}
!2648 = !DILocation(line: 98, column: 9, scope: !2633)
!2649 = !DILocation(line: 99, column: 35, scope: !2633)
!2650 = !DILocation(line: 99, column: 5, scope: !2633)
!2651 = !DILocation(line: 99, column: 33, scope: !2633)
!2652 = !DILocation(line: 102, column: 1, scope: !2633)
!2653 = distinct !DISubprogram(name: "uart_input_char", scope: !103, file: !103, line: 106, type: !2654, scopeLine: 107, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !102, retainedNodes: !2656)
!2654 = !DISubroutineType(types: !2655)
!2655 = !{!183, !2636}
!2656 = !{!2657, !2658, !2659}
!2657 = !DILocalVariable(name: "port_no", arg: 1, scope: !2653, file: !103, line: 106, type: !2636)
!2658 = !DILocalVariable(name: "base", scope: !2653, file: !103, line: 108, type: !7)
!2659 = !DILocalVariable(name: "c", scope: !2653, file: !103, line: 109, type: !352)
!2660 = !DILocation(line: 0, scope: !2653)
!2661 = !DILocation(line: 108, column: 25, scope: !2653)
!2662 = !DILocation(line: 111, column: 5, scope: !2653)
!2663 = !DILocation(line: 111, column: 14, scope: !2653)
!2664 = !DILocation(line: 111, column: 42, scope: !2653)
!2665 = !DILocation(line: 111, column: 12, scope: !2653)
!2666 = distinct !{!2666, !2662, !2667}
!2667 = !DILocation(line: 112, column: 9, scope: !2653)
!2668 = !DILocation(line: 114, column: 9, scope: !2653)
!2669 = !DILocation(line: 116, column: 5, scope: !2653)
!2670 = distinct !DISubprogram(name: "uart_input_char_unblocking", scope: !103, file: !103, line: 120, type: !2671, scopeLine: 121, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !102, retainedNodes: !2673)
!2671 = !DISubroutineType(types: !2672)
!2672 = !{!92, !2636}
!2673 = !{!2674, !2675, !2676}
!2674 = !DILocalVariable(name: "port_no", arg: 1, scope: !2670, file: !103, line: 120, type: !2636)
!2675 = !DILocalVariable(name: "base", scope: !2670, file: !103, line: 122, type: !7)
!2676 = !DILocalVariable(name: "c", scope: !2670, file: !103, line: 123, type: !352)
!2677 = !DILocation(line: 0, scope: !2670)
!2678 = !DILocation(line: 122, column: 25, scope: !2670)
!2679 = !DILocation(line: 125, column: 9, scope: !2680)
!2680 = distinct !DILexicalBlock(scope: !2670, file: !103, line: 125, column: 9)
!2681 = !DILocation(line: 125, column: 37, scope: !2680)
!2682 = !DILocation(line: 125, column: 9, scope: !2670)
!2683 = !DILocation(line: 126, column: 13, scope: !2684)
!2684 = distinct !DILexicalBlock(scope: !2680, file: !103, line: 125, column: 44)
!2685 = !DILocation(line: 127, column: 16, scope: !2684)
!2686 = !DILocation(line: 127, column: 9, scope: !2684)
!2687 = !DILocation(line: 0, scope: !2680)
!2688 = !DILocation(line: 131, column: 1, scope: !2670)
!2689 = distinct !DISubprogram(name: "halUART_HWInit", scope: !103, file: !103, line: 136, type: !2690, scopeLine: 137, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !102, retainedNodes: !2692)
!2690 = !DISubroutineType(types: !2691)
!2691 = !{null, !2636}
!2692 = !{!2693}
!2693 = !DILocalVariable(name: "u_port", arg: 1, scope: !2689, file: !103, line: 136, type: !2636)
!2694 = !DILocation(line: 0, scope: !2689)
!2695 = !DILocation(line: 139, column: 5, scope: !2689)
!2696 = !DILocation(line: 140, column: 9, scope: !2689)
!2697 = !DILocation(line: 153, column: 5, scope: !2698)
!2698 = distinct !DILexicalBlock(scope: !2699, file: !103, line: 147, column: 38)
!2699 = distinct !DILexicalBlock(scope: !2700, file: !103, line: 147, column: 16)
!2700 = distinct !DILexicalBlock(scope: !2689, file: !103, line: 140, column: 9)
!2701 = !DILocation(line: 0, scope: !2700)
!2702 = !DILocation(line: 155, column: 1, scope: !2689)
!2703 = distinct !DISubprogram(name: "halUART_SetFormat", scope: !103, file: !103, line: 158, type: !2704, scopeLine: 159, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !102, retainedNodes: !2708)
!2704 = !DISubroutineType(types: !2705)
!2705 = !{null, !2636, !92, !2706, !2706, !2706}
!2706 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint16_t", file: !93, line: 36, baseType: !2707)
!2707 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint16_t", file: !95, line: 57, baseType: !132)
!2708 = !{!2709, !2710, !2711, !2712, !2713, !2714, !2715, !2716, !2717, !2718, !2719, !2720, !2721, !2722, !2724, !2725}
!2709 = !DILocalVariable(name: "u_port", arg: 1, scope: !2703, file: !103, line: 158, type: !2636)
!2710 = !DILocalVariable(name: "baudrate", arg: 2, scope: !2703, file: !103, line: 158, type: !92)
!2711 = !DILocalVariable(name: "databit", arg: 3, scope: !2703, file: !103, line: 158, type: !2706)
!2712 = !DILocalVariable(name: "parity", arg: 4, scope: !2703, file: !103, line: 158, type: !2706)
!2713 = !DILocalVariable(name: "stopbit", arg: 5, scope: !2703, file: !103, line: 158, type: !2706)
!2714 = !DILocalVariable(name: "control_word", scope: !2703, file: !103, line: 160, type: !2706)
!2715 = !DILocalVariable(name: "UART_BASE", scope: !2703, file: !103, line: 161, type: !92)
!2716 = !DILocalVariable(name: "data", scope: !2703, file: !103, line: 162, type: !92)
!2717 = !DILocalVariable(name: "uart_lcr", scope: !2703, file: !103, line: 162, type: !92)
!2718 = !DILocalVariable(name: "high_speed_div", scope: !2703, file: !103, line: 162, type: !92)
!2719 = !DILocalVariable(name: "sample_count", scope: !2703, file: !103, line: 162, type: !92)
!2720 = !DILocalVariable(name: "sample_point", scope: !2703, file: !103, line: 162, type: !92)
!2721 = !DILocalVariable(name: "fraction", scope: !2703, file: !103, line: 162, type: !92)
!2722 = !DILocalVariable(name: "fraction_L_mapping", scope: !2703, file: !103, line: 163, type: !2723)
!2723 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2706, size: 176, elements: !746)
!2724 = !DILocalVariable(name: "fraction_M_mapping", scope: !2703, file: !103, line: 164, type: !2723)
!2725 = !DILocalVariable(name: "status", scope: !2703, file: !103, line: 165, type: !154)
!2726 = !DILocation(line: 0, scope: !2703)
!2727 = !DILocation(line: 163, column: 15, scope: !2703)
!2728 = !DILocation(line: 164, column: 15, scope: !2703)
!2729 = !DILocation(line: 166, column: 20, scope: !2703)
!2730 = !DILocation(line: 166, column: 18, scope: !2703)
!2731 = !DILocation(line: 168, column: 9, scope: !2703)
!2732 = !DILocation(line: 176, column: 5, scope: !2703)
!2733 = !DILocation(line: 176, column: 44, scope: !2703)
!2734 = !DILocation(line: 177, column: 16, scope: !2703)
!2735 = !DILocation(line: 178, column: 50, scope: !2703)
!2736 = !DILocation(line: 178, column: 38, scope: !2703)
!2737 = !DILocation(line: 179, column: 12, scope: !2703)
!2738 = !DILocation(line: 179, column: 25, scope: !2703)
!2739 = !DILocation(line: 180, column: 28, scope: !2703)
!2740 = !DILocation(line: 180, column: 34, scope: !2703)
!2741 = !DILocation(line: 182, column: 29, scope: !2742)
!2742 = distinct !DILexicalBlock(scope: !2703, file: !103, line: 181, column: 5)
!2743 = !DILocation(line: 182, column: 46, scope: !2742)
!2744 = !DILocation(line: 183, column: 26, scope: !2745)
!2745 = distinct !DILexicalBlock(scope: !2742, file: !103, line: 183, column: 13)
!2746 = !DILocation(line: 183, column: 13, scope: !2742)
!2747 = !DILocation(line: 192, column: 30, scope: !2703)
!2748 = !DILocation(line: 192, column: 35, scope: !2703)
!2749 = !DILocation(line: 192, column: 46, scope: !2703)
!2750 = !DILocation(line: 192, column: 74, scope: !2703)
!2751 = !DILocation(line: 192, column: 53, scope: !2703)
!2752 = !DILocation(line: 192, column: 80, scope: !2703)
!2753 = !DILocation(line: 193, column: 56, scope: !2703)
!2754 = !DILocation(line: 193, column: 5, scope: !2703)
!2755 = !DILocation(line: 193, column: 38, scope: !2703)
!2756 = !DILocation(line: 194, column: 57, scope: !2703)
!2757 = !DILocation(line: 194, column: 63, scope: !2703)
!2758 = !DILocation(line: 194, column: 5, scope: !2703)
!2759 = !DILocation(line: 194, column: 38, scope: !2703)
!2760 = !DILocation(line: 195, column: 5, scope: !2703)
!2761 = !DILocation(line: 195, column: 45, scope: !2703)
!2762 = !DILocation(line: 196, column: 5, scope: !2703)
!2763 = !DILocation(line: 196, column: 47, scope: !2703)
!2764 = !DILocation(line: 197, column: 46, scope: !2703)
!2765 = !DILocation(line: 197, column: 5, scope: !2703)
!2766 = !DILocation(line: 197, column: 44, scope: !2703)
!2767 = !DILocation(line: 198, column: 46, scope: !2703)
!2768 = !DILocation(line: 198, column: 5, scope: !2703)
!2769 = !DILocation(line: 198, column: 44, scope: !2703)
!2770 = !DILocation(line: 199, column: 38, scope: !2703)
!2771 = !DILocation(line: 200, column: 5, scope: !2703)
!2772 = !DILocation(line: 200, column: 38, scope: !2703)
!2773 = !DILocation(line: 202, column: 20, scope: !2703)
!2774 = !DILocation(line: 203, column: 18, scope: !2703)
!2775 = !DILocation(line: 205, column: 18, scope: !2703)
!2776 = !DILocation(line: 207, column: 18, scope: !2703)
!2777 = !DILocation(line: 208, column: 18, scope: !2703)
!2778 = !DILocation(line: 209, column: 5, scope: !2703)
!2779 = !DILocation(line: 213, column: 1, scope: !2703)
!2780 = distinct !DISubprogram(name: "halUART_Get_VFIFO_Length", scope: !103, file: !103, line: 215, type: !2781, scopeLine: 216, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !102, retainedNodes: !2784)
!2781 = !DISubroutineType(types: !2782)
!2782 = !{null, !2636, !154, !2783}
!2783 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !92, size: 32)
!2784 = !{!2785, !2786, !2787}
!2785 = !DILocalVariable(name: "u_port", arg: 1, scope: !2780, file: !103, line: 215, type: !2636)
!2786 = !DILocalVariable(name: "is_rx", arg: 2, scope: !2780, file: !103, line: 215, type: !154)
!2787 = !DILocalVariable(name: "length", arg: 3, scope: !2780, file: !103, line: 215, type: !2783)
!2788 = !DILocation(line: 0, scope: !2780)
!2789 = !DILocation(line: 217, column: 16, scope: !2790)
!2790 = distinct !DILexicalBlock(scope: !2780, file: !103, line: 217, column: 9)
!2791 = !DILocation(line: 0, scope: !2790)
!2792 = !DILocation(line: 217, column: 9, scope: !2780)
!2793 = !DILocation(line: 218, column: 13, scope: !2794)
!2794 = distinct !DILexicalBlock(scope: !2790, file: !103, line: 217, column: 31)
!2795 = !DILocation(line: 219, column: 23, scope: !2796)
!2796 = distinct !DILexicalBlock(scope: !2797, file: !103, line: 218, column: 20)
!2797 = distinct !DILexicalBlock(scope: !2794, file: !103, line: 218, column: 13)
!2798 = !DILocation(line: 220, column: 9, scope: !2796)
!2799 = !DILocation(line: 221, column: 23, scope: !2800)
!2800 = distinct !DILexicalBlock(scope: !2797, file: !103, line: 220, column: 16)
!2801 = !DILocation(line: 221, column: 21, scope: !2800)
!2802 = !DILocation(line: 222, column: 24, scope: !2800)
!2803 = !DILocation(line: 222, column: 21, scope: !2800)
!2804 = !DILocation(line: 225, column: 13, scope: !2805)
!2805 = distinct !DILexicalBlock(scope: !2790, file: !103, line: 224, column: 12)
!2806 = !DILocation(line: 226, column: 23, scope: !2807)
!2807 = distinct !DILexicalBlock(scope: !2808, file: !103, line: 225, column: 20)
!2808 = distinct !DILexicalBlock(scope: !2805, file: !103, line: 225, column: 13)
!2809 = !DILocation(line: 227, column: 9, scope: !2807)
!2810 = !DILocation(line: 228, column: 23, scope: !2811)
!2811 = distinct !DILexicalBlock(scope: !2808, file: !103, line: 227, column: 16)
!2812 = !DILocation(line: 228, column: 21, scope: !2811)
!2813 = !DILocation(line: 229, column: 24, scope: !2811)
!2814 = !DILocation(line: 229, column: 21, scope: !2811)
!2815 = !DILocation(line: 233, column: 5, scope: !2780)
!2816 = distinct !DISubprogram(name: "halUART_Read_VFIFO_Data", scope: !103, file: !103, line: 236, type: !2817, scopeLine: 237, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !102, retainedNodes: !2819)
!2817 = !DISubroutineType(types: !2818)
!2818 = !{null, !2636, !400, !92}
!2819 = !{!2820, !2821, !2822, !2823}
!2820 = !DILocalVariable(name: "u_port", arg: 1, scope: !2816, file: !103, line: 236, type: !2636)
!2821 = !DILocalVariable(name: "data", arg: 2, scope: !2816, file: !103, line: 236, type: !400)
!2822 = !DILocalVariable(name: "length", arg: 3, scope: !2816, file: !103, line: 236, type: !92)
!2823 = !DILocalVariable(name: "idx", scope: !2816, file: !103, line: 238, type: !80)
!2824 = !DILocation(line: 0, scope: !2816)
!2825 = !DILocation(line: 239, column: 23, scope: !2826)
!2826 = distinct !DILexicalBlock(scope: !2827, file: !103, line: 239, column: 5)
!2827 = distinct !DILexicalBlock(scope: !2816, file: !103, line: 239, column: 5)
!2828 = !DILocation(line: 239, column: 5, scope: !2827)
!2829 = !DILocation(line: 240, column: 13, scope: !2830)
!2830 = distinct !DILexicalBlock(scope: !2826, file: !103, line: 239, column: 40)
!2831 = !DILocation(line: 244, column: 9, scope: !2832)
!2832 = distinct !DILexicalBlock(scope: !2833, file: !103, line: 242, column: 42)
!2833 = distinct !DILexicalBlock(scope: !2834, file: !103, line: 242, column: 20)
!2834 = distinct !DILexicalBlock(scope: !2830, file: !103, line: 240, column: 13)
!2835 = !DILocation(line: 0, scope: !2834)
!2836 = !DILocation(line: 239, column: 36, scope: !2826)
!2837 = distinct !{!2837, !2828, !2838}
!2838 = !DILocation(line: 246, column: 5, scope: !2827)
!2839 = !DILocation(line: 249, column: 1, scope: !2816)
!2840 = distinct !DISubprogram(name: "halUART_Write_VFIFO_Data", scope: !103, file: !103, line: 251, type: !2841, scopeLine: 252, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !102, retainedNodes: !2845)
!2841 = !DISubroutineType(types: !2842)
!2842 = !{null, !2636, !2843, !92}
!2843 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2844, size: 32)
!2844 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !183)
!2845 = !{!2846, !2847, !2848, !2849}
!2846 = !DILocalVariable(name: "u_port", arg: 1, scope: !2840, file: !103, line: 251, type: !2636)
!2847 = !DILocalVariable(name: "data", arg: 2, scope: !2840, file: !103, line: 251, type: !2843)
!2848 = !DILocalVariable(name: "length", arg: 3, scope: !2840, file: !103, line: 251, type: !92)
!2849 = !DILocalVariable(name: "idx", scope: !2840, file: !103, line: 253, type: !80)
!2850 = !DILocation(line: 0, scope: !2840)
!2851 = !DILocation(line: 254, column: 23, scope: !2852)
!2852 = distinct !DILexicalBlock(scope: !2853, file: !103, line: 254, column: 5)
!2853 = distinct !DILexicalBlock(scope: !2840, file: !103, line: 254, column: 5)
!2854 = !DILocation(line: 254, column: 5, scope: !2853)
!2855 = !DILocation(line: 255, column: 13, scope: !2856)
!2856 = distinct !DILexicalBlock(scope: !2852, file: !103, line: 254, column: 40)
!2857 = !DILocation(line: 256, column: 61, scope: !2858)
!2858 = distinct !DILexicalBlock(scope: !2859, file: !103, line: 255, column: 35)
!2859 = distinct !DILexicalBlock(scope: !2856, file: !103, line: 255, column: 13)
!2860 = !DILocation(line: 256, column: 59, scope: !2858)
!2861 = !DILocation(line: 257, column: 9, scope: !2858)
!2862 = !DILocation(line: 258, column: 61, scope: !2863)
!2863 = distinct !DILexicalBlock(scope: !2864, file: !103, line: 257, column: 42)
!2864 = distinct !DILexicalBlock(scope: !2859, file: !103, line: 257, column: 20)
!2865 = !DILocation(line: 258, column: 59, scope: !2863)
!2866 = !DILocation(line: 259, column: 9, scope: !2863)
!2867 = !DILocation(line: 254, column: 36, scope: !2852)
!2868 = distinct !{!2868, !2854, !2869}
!2869 = !DILocation(line: 261, column: 5, scope: !2853)
!2870 = !DILocation(line: 264, column: 1, scope: !2840)
!2871 = distinct !DISubprogram(name: "halUART_Tx_VFIFO_Initialize", scope: !103, file: !103, line: 266, type: !2872, scopeLine: 267, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !102, retainedNodes: !2874)
!2872 = !DISubroutineType(types: !2873)
!2873 = !{null, !2636, !400, !92, !92}
!2874 = !{!2875, !2876, !2877, !2878}
!2875 = !DILocalVariable(name: "u_port", arg: 1, scope: !2871, file: !103, line: 266, type: !2636)
!2876 = !DILocalVariable(name: "vfifo_buffer", arg: 2, scope: !2871, file: !103, line: 266, type: !400)
!2877 = !DILocalVariable(name: "buffer_length", arg: 3, scope: !2871, file: !103, line: 266, type: !92)
!2878 = !DILocalVariable(name: "threshold", arg: 4, scope: !2871, file: !103, line: 266, type: !92)
!2879 = !DILocation(line: 0, scope: !2871)
!2880 = !DILocation(line: 268, column: 9, scope: !2871)
!2881 = !DILocation(line: 274, column: 5, scope: !2882)
!2882 = distinct !DILexicalBlock(scope: !2883, file: !103, line: 271, column: 38)
!2883 = distinct !DILexicalBlock(scope: !2884, file: !103, line: 271, column: 16)
!2884 = distinct !DILexicalBlock(scope: !2871, file: !103, line: 268, column: 9)
!2885 = !DILocation(line: 0, scope: !2884)
!2886 = !DILocation(line: 276, column: 1, scope: !2871)
!2887 = distinct !DISubprogram(name: "halUART_Rx_VFIFO_Initialize", scope: !103, file: !103, line: 278, type: !2888, scopeLine: 279, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !102, retainedNodes: !2890)
!2888 = !DISubroutineType(types: !2889)
!2889 = !{null, !2636, !400, !92, !92, !92, !92}
!2890 = !{!2891, !2892, !2893, !2894, !2895, !2896}
!2891 = !DILocalVariable(name: "u_port", arg: 1, scope: !2887, file: !103, line: 278, type: !2636)
!2892 = !DILocalVariable(name: "vfifo_buffer", arg: 2, scope: !2887, file: !103, line: 278, type: !400)
!2893 = !DILocalVariable(name: "buffer_length", arg: 3, scope: !2887, file: !103, line: 278, type: !92)
!2894 = !DILocalVariable(name: "alert_length", arg: 4, scope: !2887, file: !103, line: 278, type: !92)
!2895 = !DILocalVariable(name: "threshold", arg: 5, scope: !2887, file: !103, line: 278, type: !92)
!2896 = !DILocalVariable(name: "timeout", arg: 6, scope: !2887, file: !103, line: 278, type: !92)
!2897 = !DILocation(line: 0, scope: !2887)
!2898 = !DILocation(line: 280, column: 9, scope: !2887)
!2899 = !DILocation(line: 286, column: 5, scope: !2900)
!2900 = distinct !DILexicalBlock(scope: !2901, file: !103, line: 283, column: 38)
!2901 = distinct !DILexicalBlock(scope: !2902, file: !103, line: 283, column: 16)
!2902 = distinct !DILexicalBlock(scope: !2887, file: !103, line: 280, column: 9)
!2903 = !DILocation(line: 0, scope: !2902)
!2904 = !DILocation(line: 288, column: 1, scope: !2887)
!2905 = distinct !DISubprogram(name: "halUART_VDMA_Rx_Register_Callback", scope: !103, file: !103, line: 290, type: !2906, scopeLine: 291, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !102, retainedNodes: !2908)
!2906 = !DISubroutineType(types: !2907)
!2907 = !{null, !2636, !359}
!2908 = !{!2909, !2910}
!2909 = !DILocalVariable(name: "u_port", arg: 1, scope: !2905, file: !103, line: 290, type: !2636)
!2910 = !DILocalVariable(name: "func", arg: 2, scope: !2905, file: !103, line: 290, type: !359)
!2911 = !DILocation(line: 0, scope: !2905)
!2912 = !DILocation(line: 292, column: 9, scope: !2905)
!2913 = !DILocation(line: 296, column: 5, scope: !2914)
!2914 = distinct !DILexicalBlock(scope: !2915, file: !103, line: 294, column: 38)
!2915 = distinct !DILexicalBlock(scope: !2916, file: !103, line: 294, column: 16)
!2916 = distinct !DILexicalBlock(scope: !2905, file: !103, line: 292, column: 9)
!2917 = !DILocation(line: 0, scope: !2916)
!2918 = !DILocation(line: 298, column: 1, scope: !2905)
!2919 = distinct !DISubprogram(name: "halUART_VDMA_Rx_Register_TO_Callback", scope: !103, file: !103, line: 300, type: !2906, scopeLine: 301, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !102, retainedNodes: !2920)
!2920 = !{!2921, !2922}
!2921 = !DILocalVariable(name: "u_port", arg: 1, scope: !2919, file: !103, line: 300, type: !2636)
!2922 = !DILocalVariable(name: "func", arg: 2, scope: !2919, file: !103, line: 300, type: !359)
!2923 = !DILocation(line: 0, scope: !2919)
!2924 = !DILocation(line: 302, column: 9, scope: !2919)
!2925 = !DILocation(line: 306, column: 5, scope: !2926)
!2926 = distinct !DILexicalBlock(scope: !2927, file: !103, line: 304, column: 38)
!2927 = distinct !DILexicalBlock(scope: !2928, file: !103, line: 304, column: 16)
!2928 = distinct !DILexicalBlock(scope: !2919, file: !103, line: 302, column: 9)
!2929 = !DILocation(line: 0, scope: !2928)
!2930 = !DILocation(line: 308, column: 1, scope: !2919)
!2931 = distinct !DISubprogram(name: "uart_set_hardware_flowcontrol", scope: !103, file: !103, line: 310, type: !2690, scopeLine: 311, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !102, retainedNodes: !2932)
!2932 = !{!2933, !2934, !2935, !2936}
!2933 = !DILocalVariable(name: "u_port", arg: 1, scope: !2931, file: !103, line: 310, type: !2636)
!2934 = !DILocalVariable(name: "base", scope: !2931, file: !103, line: 312, type: !7)
!2935 = !DILocalVariable(name: "EFR", scope: !2931, file: !103, line: 313, type: !2706)
!2936 = !DILocalVariable(name: "LCR", scope: !2931, file: !103, line: 313, type: !2706)
!2937 = !DILocation(line: 0, scope: !2931)
!2938 = !DILocation(line: 312, column: 25, scope: !2931)
!2939 = !DILocation(line: 315, column: 11, scope: !2931)
!2940 = !DILocation(line: 317, column: 33, scope: !2931)
!2941 = !DILocation(line: 318, column: 11, scope: !2931)
!2942 = !DILocation(line: 320, column: 35, scope: !2931)
!2943 = !DILocation(line: 320, column: 33, scope: !2931)
!2944 = !DILocation(line: 322, column: 5, scope: !2931)
!2945 = !DILocation(line: 322, column: 39, scope: !2931)
!2946 = !DILocation(line: 324, column: 33, scope: !2931)
!2947 = !DILocation(line: 325, column: 5, scope: !2931)
!2948 = !DILocation(line: 325, column: 33, scope: !2931)
!2949 = !DILocation(line: 327, column: 35, scope: !2931)
!2950 = !DILocation(line: 327, column: 33, scope: !2931)
!2951 = !DILocation(line: 328, column: 1, scope: !2931)
!2952 = distinct !DISubprogram(name: "uart_set_software_flowcontrol", scope: !103, file: !103, line: 330, type: !2953, scopeLine: 331, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !102, retainedNodes: !2955)
!2953 = !DISubroutineType(types: !2954)
!2954 = !{null, !2636, !183, !183, !183}
!2955 = !{!2956, !2957, !2958, !2959, !2960, !2961, !2962}
!2956 = !DILocalVariable(name: "u_port", arg: 1, scope: !2952, file: !103, line: 330, type: !2636)
!2957 = !DILocalVariable(name: "xon", arg: 2, scope: !2952, file: !103, line: 330, type: !183)
!2958 = !DILocalVariable(name: "xoff", arg: 3, scope: !2952, file: !103, line: 330, type: !183)
!2959 = !DILocalVariable(name: "escape_character", arg: 4, scope: !2952, file: !103, line: 330, type: !183)
!2960 = !DILocalVariable(name: "base", scope: !2952, file: !103, line: 332, type: !7)
!2961 = !DILocalVariable(name: "EFR", scope: !2952, file: !103, line: 333, type: !2706)
!2962 = !DILocalVariable(name: "LCR", scope: !2952, file: !103, line: 333, type: !2706)
!2963 = !DILocation(line: 0, scope: !2952)
!2964 = !DILocation(line: 332, column: 25, scope: !2952)
!2965 = !DILocation(line: 335, column: 11, scope: !2952)
!2966 = !DILocation(line: 337, column: 33, scope: !2952)
!2967 = !DILocation(line: 338, column: 36, scope: !2952)
!2968 = !DILocation(line: 338, column: 5, scope: !2952)
!2969 = !DILocation(line: 338, column: 34, scope: !2952)
!2970 = !DILocation(line: 339, column: 5, scope: !2952)
!2971 = !DILocation(line: 339, column: 34, scope: !2952)
!2972 = !DILocation(line: 340, column: 37, scope: !2952)
!2973 = !DILocation(line: 340, column: 5, scope: !2952)
!2974 = !DILocation(line: 340, column: 35, scope: !2952)
!2975 = !DILocation(line: 341, column: 5, scope: !2952)
!2976 = !DILocation(line: 341, column: 35, scope: !2952)
!2977 = !DILocation(line: 343, column: 11, scope: !2952)
!2978 = !DILocation(line: 345, column: 35, scope: !2952)
!2979 = !DILocation(line: 345, column: 33, scope: !2952)
!2980 = !DILocation(line: 347, column: 35, scope: !2952)
!2981 = !DILocation(line: 347, column: 33, scope: !2952)
!2982 = !DILocation(line: 349, column: 43, scope: !2952)
!2983 = !DILocation(line: 349, column: 5, scope: !2952)
!2984 = !DILocation(line: 349, column: 41, scope: !2952)
!2985 = !DILocation(line: 350, column: 5, scope: !2952)
!2986 = !DILocation(line: 350, column: 39, scope: !2952)
!2987 = !DILocation(line: 351, column: 1, scope: !2952)
!2988 = distinct !DISubprogram(name: "uart_disable_flowcontrol", scope: !103, file: !103, line: 353, type: !2690, scopeLine: 354, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !102, retainedNodes: !2989)
!2989 = !{!2990, !2991, !2992}
!2990 = !DILocalVariable(name: "u_port", arg: 1, scope: !2988, file: !103, line: 353, type: !2636)
!2991 = !DILocalVariable(name: "base", scope: !2988, file: !103, line: 355, type: !7)
!2992 = !DILocalVariable(name: "LCR", scope: !2988, file: !103, line: 356, type: !2706)
!2993 = !DILocation(line: 0, scope: !2988)
!2994 = !DILocation(line: 355, column: 25, scope: !2988)
!2995 = !DILocation(line: 358, column: 11, scope: !2988)
!2996 = !DILocation(line: 360, column: 33, scope: !2988)
!2997 = !DILocation(line: 362, column: 5, scope: !2988)
!2998 = !DILocation(line: 362, column: 33, scope: !2988)
!2999 = !DILocation(line: 364, column: 33, scope: !2988)
!3000 = !DILocation(line: 366, column: 35, scope: !2988)
!3001 = !DILocation(line: 366, column: 33, scope: !2988)
!3002 = !DILocation(line: 367, column: 1, scope: !2988)
!3003 = distinct !DISubprogram(name: "uart_reset_default_value", scope: !103, file: !103, line: 436, type: !2690, scopeLine: 437, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !102, retainedNodes: !3004)
!3004 = !{!3005, !3006}
!3005 = !DILocalVariable(name: "u_port", arg: 1, scope: !3003, file: !103, line: 436, type: !2636)
!3006 = !DILocalVariable(name: "base", scope: !3003, file: !103, line: 438, type: !7)
!3007 = !DILocation(line: 0, scope: !3003)
!3008 = !DILocation(line: 438, column: 25, scope: !3003)
!3009 = !DILocation(line: 440, column: 5, scope: !3003)
!3010 = !DILocation(line: 440, column: 33, scope: !3003)
!3011 = !DILocation(line: 441, column: 5, scope: !3003)
!3012 = !DILocation(line: 441, column: 33, scope: !3003)
!3013 = !DILocation(line: 442, column: 5, scope: !3003)
!3014 = !DILocation(line: 442, column: 34, scope: !3003)
!3015 = !DILocation(line: 443, column: 5, scope: !3003)
!3016 = !DILocation(line: 443, column: 35, scope: !3003)
!3017 = !DILocation(line: 445, column: 33, scope: !3003)
!3018 = !DILocation(line: 446, column: 5, scope: !3003)
!3019 = !DILocation(line: 446, column: 33, scope: !3003)
!3020 = !DILocation(line: 447, column: 5, scope: !3003)
!3021 = !DILocation(line: 447, column: 33, scope: !3003)
!3022 = !DILocation(line: 449, column: 33, scope: !3003)
!3023 = !DILocation(line: 450, column: 33, scope: !3003)
!3024 = !DILocation(line: 451, column: 33, scope: !3003)
!3025 = !DILocation(line: 453, column: 33, scope: !3003)
!3026 = !DILocation(line: 454, column: 33, scope: !3003)
!3027 = !DILocation(line: 455, column: 33, scope: !3003)
!3028 = !DILocation(line: 457, column: 33, scope: !3003)
!3029 = !DILocation(line: 458, column: 5, scope: !3003)
!3030 = !DILocation(line: 458, column: 33, scope: !3003)
!3031 = !DILocation(line: 459, column: 5, scope: !3003)
!3032 = !DILocation(line: 459, column: 39, scope: !3003)
!3033 = !DILocation(line: 460, column: 5, scope: !3003)
!3034 = !DILocation(line: 460, column: 40, scope: !3003)
!3035 = !DILocation(line: 461, column: 5, scope: !3003)
!3036 = !DILocation(line: 461, column: 42, scope: !3003)
!3037 = !DILocation(line: 462, column: 5, scope: !3003)
!3038 = !DILocation(line: 462, column: 42, scope: !3003)
!3039 = !DILocation(line: 463, column: 5, scope: !3003)
!3040 = !DILocation(line: 463, column: 35, scope: !3003)
!3041 = !DILocation(line: 464, column: 5, scope: !3003)
!3042 = !DILocation(line: 464, column: 41, scope: !3003)
!3043 = !DILocation(line: 465, column: 5, scope: !3003)
!3044 = !DILocation(line: 465, column: 39, scope: !3003)
!3045 = !DILocation(line: 466, column: 5, scope: !3003)
!3046 = !DILocation(line: 466, column: 38, scope: !3003)
!3047 = !DILocation(line: 467, column: 5, scope: !3003)
!3048 = !DILocation(line: 467, column: 42, scope: !3003)
!3049 = !DILocation(line: 468, column: 5, scope: !3003)
!3050 = !DILocation(line: 468, column: 45, scope: !3003)
!3051 = !DILocation(line: 469, column: 5, scope: !3003)
!3052 = !DILocation(line: 469, column: 39, scope: !3003)
!3053 = !DILocation(line: 470, column: 5, scope: !3003)
!3054 = !DILocation(line: 470, column: 39, scope: !3003)
!3055 = !DILocation(line: 471, column: 5, scope: !3003)
!3056 = !DILocation(line: 471, column: 42, scope: !3003)
!3057 = !DILocation(line: 472, column: 1, scope: !3003)
!3058 = distinct !DISubprogram(name: "uart_query_empty", scope: !103, file: !103, line: 474, type: !2690, scopeLine: 475, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !102, retainedNodes: !3059)
!3059 = !{!3060, !3061}
!3060 = !DILocalVariable(name: "u_port", arg: 1, scope: !3058, file: !103, line: 474, type: !2636)
!3061 = !DILocalVariable(name: "base", scope: !3058, file: !103, line: 476, type: !7)
!3062 = !DILocation(line: 0, scope: !3058)
!3063 = !DILocation(line: 476, column: 25, scope: !3058)
!3064 = !DILocation(line: 478, column: 5, scope: !3058)
!3065 = !DILocation(line: 478, column: 14, scope: !3058)
!3066 = !DILocation(line: 478, column: 42, scope: !3058)
!3067 = !DILocation(line: 478, column: 12, scope: !3058)
!3068 = distinct !{!3068, !3064, !3069}
!3069 = !DILocation(line: 478, column: 50, scope: !3058)
!3070 = !DILocation(line: 479, column: 1, scope: !3058)
!3071 = distinct !DISubprogram(name: "log_hal_fatal_internal", scope: !926, file: !926, line: 64, type: !3072, scopeLine: 65, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !925, retainedNodes: !3074)
!3072 = !DISubroutineType(types: !3073)
!3073 = !{null, !570, !13, !570, null}
!3074 = !{!3075, !3076, !3077, !3078, !3087}
!3075 = !DILocalVariable(name: "func", arg: 1, scope: !3071, file: !926, line: 64, type: !570)
!3076 = !DILocalVariable(name: "line", arg: 2, scope: !3071, file: !926, line: 64, type: !13)
!3077 = !DILocalVariable(name: "message", arg: 3, scope: !3071, file: !926, line: 64, type: !570)
!3078 = !DILocalVariable(name: "ap", scope: !3071, file: !926, line: 66, type: !3079)
!3079 = !DIDerivedType(tag: DW_TAG_typedef, name: "va_list", file: !3080, line: 46, baseType: !3081)
!3080 = !DIFile(filename: "gcc-arm-none-eabi-10.3-2021.10/bin/../lib/gcc/arm-none-eabi/10.3.1/../../../../arm-none-eabi/include/stdio.h", directory: "/home/mjshen/RTOSExploration")
!3081 = !DIDerivedType(tag: DW_TAG_typedef, name: "__gnuc_va_list", file: !3082, line: 32, baseType: !3083)
!3082 = !DIFile(filename: "/usr/lib/llvm-14/lib/clang/14.0.6/include/stdarg.h", directory: "")
!3083 = !DIDerivedType(tag: DW_TAG_typedef, name: "__builtin_va_list", file: !926, baseType: !3084)
!3084 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__va_list", size: 32, elements: !3085)
!3085 = !{!3086}
!3086 = !DIDerivedType(tag: DW_TAG_member, name: "__ap", scope: !3084, file: !926, line: 66, baseType: !153, size: 32)
!3087 = !DILocalVariable(name: "mask", scope: !3071, file: !926, line: 68, type: !92)
!3088 = !DILocation(line: 0, scope: !3071)
!3089 = !DILocation(line: 66, column: 5, scope: !3071)
!3090 = !DILocation(line: 66, column: 13, scope: !3071)
!3091 = !DILocation(line: 68, column: 5, scope: !3071)
!3092 = !DILocation(line: 69, column: 5, scope: !3071)
!3093 = !DILocation(line: 71, column: 5, scope: !3071)
!3094 = !DILocation(line: 72, column: 5, scope: !3071)
!3095 = !DILocation(line: 73, column: 5, scope: !3071)
!3096 = !DILocation(line: 75, column: 37, scope: !3071)
!3097 = !DILocation(line: 75, column: 5, scope: !3071)
!3098 = !DILocation(line: 77, column: 1, scope: !3071)
!3099 = distinct !DISubprogram(name: "log_hal_error_internal", scope: !926, file: !926, line: 78, type: !3072, scopeLine: 79, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !925, retainedNodes: !3100)
!3100 = !{!3101, !3102, !3103, !3104, !3105}
!3101 = !DILocalVariable(name: "func", arg: 1, scope: !3099, file: !926, line: 78, type: !570)
!3102 = !DILocalVariable(name: "line", arg: 2, scope: !3099, file: !926, line: 78, type: !13)
!3103 = !DILocalVariable(name: "message", arg: 3, scope: !3099, file: !926, line: 78, type: !570)
!3104 = !DILocalVariable(name: "ap", scope: !3099, file: !926, line: 80, type: !3079)
!3105 = !DILocalVariable(name: "mask", scope: !3099, file: !926, line: 82, type: !92)
!3106 = !DILocation(line: 0, scope: !3099)
!3107 = !DILocation(line: 80, column: 5, scope: !3099)
!3108 = !DILocation(line: 80, column: 13, scope: !3099)
!3109 = !DILocation(line: 82, column: 5, scope: !3099)
!3110 = !DILocation(line: 83, column: 5, scope: !3099)
!3111 = !DILocation(line: 85, column: 5, scope: !3099)
!3112 = !DILocation(line: 86, column: 5, scope: !3099)
!3113 = !DILocation(line: 87, column: 5, scope: !3099)
!3114 = !DILocation(line: 89, column: 37, scope: !3099)
!3115 = !DILocation(line: 89, column: 5, scope: !3099)
!3116 = !DILocation(line: 91, column: 1, scope: !3099)
!3117 = distinct !DISubprogram(name: "log_hal_warning_internal", scope: !926, file: !926, line: 92, type: !3072, scopeLine: 93, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !925, retainedNodes: !3118)
!3118 = !{!3119, !3120, !3121, !3122, !3123}
!3119 = !DILocalVariable(name: "func", arg: 1, scope: !3117, file: !926, line: 92, type: !570)
!3120 = !DILocalVariable(name: "line", arg: 2, scope: !3117, file: !926, line: 92, type: !13)
!3121 = !DILocalVariable(name: "message", arg: 3, scope: !3117, file: !926, line: 92, type: !570)
!3122 = !DILocalVariable(name: "ap", scope: !3117, file: !926, line: 94, type: !3079)
!3123 = !DILocalVariable(name: "mask", scope: !3117, file: !926, line: 96, type: !92)
!3124 = !DILocation(line: 0, scope: !3117)
!3125 = !DILocation(line: 94, column: 5, scope: !3117)
!3126 = !DILocation(line: 94, column: 13, scope: !3117)
!3127 = !DILocation(line: 96, column: 5, scope: !3117)
!3128 = !DILocation(line: 97, column: 5, scope: !3117)
!3129 = !DILocation(line: 99, column: 5, scope: !3117)
!3130 = !DILocation(line: 100, column: 5, scope: !3117)
!3131 = !DILocation(line: 101, column: 5, scope: !3117)
!3132 = !DILocation(line: 103, column: 37, scope: !3117)
!3133 = !DILocation(line: 103, column: 5, scope: !3117)
!3134 = !DILocation(line: 105, column: 1, scope: !3117)
!3135 = distinct !DISubprogram(name: "log_hal_info_internal", scope: !926, file: !926, line: 106, type: !3072, scopeLine: 107, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !925, retainedNodes: !3136)
!3136 = !{!3137, !3138, !3139, !3140, !3141}
!3137 = !DILocalVariable(name: "func", arg: 1, scope: !3135, file: !926, line: 106, type: !570)
!3138 = !DILocalVariable(name: "line", arg: 2, scope: !3135, file: !926, line: 106, type: !13)
!3139 = !DILocalVariable(name: "message", arg: 3, scope: !3135, file: !926, line: 106, type: !570)
!3140 = !DILocalVariable(name: "ap", scope: !3135, file: !926, line: 108, type: !3079)
!3141 = !DILocalVariable(name: "mask", scope: !3135, file: !926, line: 110, type: !92)
!3142 = !DILocation(line: 0, scope: !3135)
!3143 = !DILocation(line: 108, column: 5, scope: !3135)
!3144 = !DILocation(line: 108, column: 13, scope: !3135)
!3145 = !DILocation(line: 110, column: 5, scope: !3135)
!3146 = !DILocation(line: 111, column: 5, scope: !3135)
!3147 = !DILocation(line: 113, column: 5, scope: !3135)
!3148 = !DILocation(line: 114, column: 5, scope: !3135)
!3149 = !DILocation(line: 115, column: 5, scope: !3135)
!3150 = !DILocation(line: 117, column: 37, scope: !3135)
!3151 = !DILocation(line: 117, column: 5, scope: !3135)
!3152 = !DILocation(line: 119, column: 1, scope: !3135)
!3153 = distinct !DISubprogram(name: "log_hal_dump_internal", scope: !926, file: !926, line: 121, type: !3154, scopeLine: 122, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !925, retainedNodes: !3158)
!3154 = !DISubroutineType(types: !3155)
!3155 = !{null, !570, !13, !570, !3156, !13, null}
!3156 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3157, size: 32)
!3157 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!3158 = !{!3159, !3160, !3161, !3162, !3163}
!3159 = !DILocalVariable(name: "func", arg: 1, scope: !3153, file: !926, line: 121, type: !570)
!3160 = !DILocalVariable(name: "line", arg: 2, scope: !3153, file: !926, line: 121, type: !13)
!3161 = !DILocalVariable(name: "message", arg: 3, scope: !3153, file: !926, line: 121, type: !570)
!3162 = !DILocalVariable(name: "data", arg: 4, scope: !3153, file: !926, line: 121, type: !3156)
!3163 = !DILocalVariable(name: "length", arg: 5, scope: !3153, file: !926, line: 121, type: !13)
!3164 = !DILocation(line: 0, scope: !3153)
!3165 = !DILocation(line: 123, column: 1, scope: !3153)
!3166 = distinct !DISubprogram(name: "hal_nvic_init", scope: !141, file: !141, line: 60, type: !3167, scopeLine: 61, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !140, retainedNodes: !1158)
!3167 = !DISubroutineType(types: !3168)
!3168 = !{!3169}
!3169 = !DIDerivedType(tag: DW_TAG_typedef, name: "hal_nvic_status_t", file: !144, line: 158, baseType: !143)
!3170 = !DILocation(line: 62, column: 5, scope: !3166)
!3171 = distinct !DISubprogram(name: "hal_nvic_enable_irq", scope: !141, file: !141, line: 65, type: !3172, scopeLine: 66, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !140, retainedNodes: !3174)
!3172 = !DISubroutineType(types: !3173)
!3173 = !{!3169, !152}
!3174 = !{!3175, !3176}
!3175 = !DILocalVariable(name: "irq_number", arg: 1, scope: !3171, file: !141, line: 65, type: !152)
!3176 = !DILocalVariable(name: "status", scope: !3171, file: !141, line: 67, type: !3169)
!3177 = !DILocation(line: 0, scope: !3171)
!3178 = !DILocation(line: 69, column: 40, scope: !3179)
!3179 = distinct !DILexicalBlock(scope: !3171, file: !141, line: 69, column: 9)
!3180 = !DILocation(line: 73, column: 9, scope: !3181)
!3181 = distinct !DILexicalBlock(scope: !3179, file: !141, line: 72, column: 12)
!3182 = !DILocation(line: 77, column: 5, scope: !3171)
!3183 = !DILocation(line: 78, column: 1, scope: !3171)
!3184 = distinct !DISubprogram(name: "NVIC_EnableIRQ", scope: !158, file: !158, line: 1494, type: !3185, scopeLine: 1495, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !140, retainedNodes: !3187)
!3185 = !DISubroutineType(types: !3186)
!3186 = !{null, !61}
!3187 = !{!3188}
!3188 = !DILocalVariable(name: "IRQn", arg: 1, scope: !3184, file: !158, line: 1494, type: !61)
!3189 = !DILocation(line: 0, scope: !3184)
!3190 = !DILocation(line: 1497, column: 91, scope: !3184)
!3191 = !DILocation(line: 1497, column: 61, scope: !3184)
!3192 = !DILocation(line: 1497, column: 40, scope: !3184)
!3193 = !DILocation(line: 1497, column: 3, scope: !3184)
!3194 = !DILocation(line: 1497, column: 46, scope: !3184)
!3195 = !DILocation(line: 1498, column: 1, scope: !3184)
!3196 = distinct !DISubprogram(name: "hal_nvic_disable_irq", scope: !141, file: !141, line: 80, type: !3172, scopeLine: 81, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !140, retainedNodes: !3197)
!3197 = !{!3198, !3199}
!3198 = !DILocalVariable(name: "irq_number", arg: 1, scope: !3196, file: !141, line: 80, type: !152)
!3199 = !DILocalVariable(name: "status", scope: !3196, file: !141, line: 82, type: !3169)
!3200 = !DILocation(line: 0, scope: !3196)
!3201 = !DILocation(line: 84, column: 40, scope: !3202)
!3202 = distinct !DILexicalBlock(scope: !3196, file: !141, line: 84, column: 9)
!3203 = !DILocation(line: 88, column: 9, scope: !3204)
!3204 = distinct !DILexicalBlock(scope: !3202, file: !141, line: 87, column: 12)
!3205 = !DILocation(line: 92, column: 5, scope: !3196)
!3206 = !DILocation(line: 93, column: 1, scope: !3196)
!3207 = distinct !DISubprogram(name: "NVIC_DisableIRQ", scope: !158, file: !158, line: 1507, type: !3185, scopeLine: 1508, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !140, retainedNodes: !3208)
!3208 = !{!3209}
!3209 = !DILocalVariable(name: "IRQn", arg: 1, scope: !3207, file: !158, line: 1507, type: !61)
!3210 = !DILocation(line: 0, scope: !3207)
!3211 = !DILocation(line: 1509, column: 65, scope: !3207)
!3212 = !DILocation(line: 1509, column: 44, scope: !3207)
!3213 = !DILocation(line: 1509, column: 32, scope: !3207)
!3214 = !DILocation(line: 1509, column: 3, scope: !3207)
!3215 = !DILocation(line: 1509, column: 39, scope: !3207)
!3216 = !DILocation(line: 1510, column: 1, scope: !3207)
!3217 = distinct !DISubprogram(name: "hal_nvic_get_pending_irq", scope: !141, file: !141, line: 95, type: !3218, scopeLine: 96, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !140, retainedNodes: !3220)
!3218 = !DISubroutineType(types: !3219)
!3219 = !{!92, !152}
!3220 = !{!3221, !3222}
!3221 = !DILocalVariable(name: "irq_number", arg: 1, scope: !3217, file: !141, line: 95, type: !152)
!3222 = !DILocalVariable(name: "ret", scope: !3217, file: !141, line: 97, type: !92)
!3223 = !DILocation(line: 0, scope: !3217)
!3224 = !DILocation(line: 99, column: 40, scope: !3225)
!3225 = distinct !DILexicalBlock(scope: !3217, file: !141, line: 99, column: 9)
!3226 = !DILocation(line: 102, column: 15, scope: !3227)
!3227 = distinct !DILexicalBlock(scope: !3225, file: !141, line: 101, column: 12)
!3228 = !DILocation(line: 105, column: 5, scope: !3217)
!3229 = !DILocation(line: 106, column: 1, scope: !3217)
!3230 = distinct !DISubprogram(name: "NVIC_GetPendingIRQ", scope: !158, file: !158, line: 1523, type: !3231, scopeLine: 1524, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !140, retainedNodes: !3233)
!3231 = !DISubroutineType(types: !3232)
!3232 = !{!92, !61}
!3233 = !{!3234}
!3234 = !DILocalVariable(name: "IRQn", arg: 1, scope: !3230, file: !158, line: 1523, type: !61)
!3235 = !DILocation(line: 0, scope: !3230)
!3236 = !DILocation(line: 1525, column: 51, scope: !3230)
!3237 = !DILocation(line: 1525, column: 23, scope: !3230)
!3238 = !DILocation(line: 1525, column: 83, scope: !3230)
!3239 = !DILocation(line: 1525, column: 22, scope: !3230)
!3240 = !DILocation(line: 1525, column: 3, scope: !3230)
!3241 = distinct !DISubprogram(name: "hal_nvic_set_pending_irq", scope: !141, file: !141, line: 108, type: !3172, scopeLine: 109, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !140, retainedNodes: !3242)
!3242 = !{!3243, !3244}
!3243 = !DILocalVariable(name: "irq_number", arg: 1, scope: !3241, file: !141, line: 108, type: !152)
!3244 = !DILocalVariable(name: "status", scope: !3241, file: !141, line: 110, type: !3169)
!3245 = !DILocation(line: 0, scope: !3241)
!3246 = !DILocation(line: 112, column: 40, scope: !3247)
!3247 = distinct !DILexicalBlock(scope: !3241, file: !141, line: 112, column: 9)
!3248 = !DILocation(line: 116, column: 9, scope: !3249)
!3249 = distinct !DILexicalBlock(scope: !3247, file: !141, line: 115, column: 12)
!3250 = !DILocation(line: 120, column: 5, scope: !3241)
!3251 = !DILocation(line: 121, column: 1, scope: !3241)
!3252 = distinct !DISubprogram(name: "NVIC_SetPendingIRQ", scope: !158, file: !158, line: 1535, type: !3185, scopeLine: 1536, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !140, retainedNodes: !3253)
!3253 = !{!3254}
!3254 = !DILocalVariable(name: "IRQn", arg: 1, scope: !3252, file: !158, line: 1535, type: !61)
!3255 = !DILocation(line: 0, scope: !3252)
!3256 = !DILocation(line: 1537, column: 65, scope: !3252)
!3257 = !DILocation(line: 1537, column: 44, scope: !3252)
!3258 = !DILocation(line: 1537, column: 32, scope: !3252)
!3259 = !DILocation(line: 1537, column: 3, scope: !3252)
!3260 = !DILocation(line: 1537, column: 39, scope: !3252)
!3261 = !DILocation(line: 1538, column: 1, scope: !3252)
!3262 = distinct !DISubprogram(name: "hal_nvic_clear_pending_irq", scope: !141, file: !141, line: 123, type: !3172, scopeLine: 124, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !140, retainedNodes: !3263)
!3263 = !{!3264, !3265}
!3264 = !DILocalVariable(name: "irq_number", arg: 1, scope: !3262, file: !141, line: 123, type: !152)
!3265 = !DILocalVariable(name: "status", scope: !3262, file: !141, line: 125, type: !3169)
!3266 = !DILocation(line: 0, scope: !3262)
!3267 = !DILocation(line: 127, column: 40, scope: !3268)
!3268 = distinct !DILexicalBlock(scope: !3262, file: !141, line: 127, column: 9)
!3269 = !DILocation(line: 131, column: 9, scope: !3270)
!3270 = distinct !DILexicalBlock(scope: !3268, file: !141, line: 130, column: 12)
!3271 = !DILocation(line: 135, column: 5, scope: !3262)
!3272 = !DILocation(line: 136, column: 1, scope: !3262)
!3273 = distinct !DISubprogram(name: "NVIC_ClearPendingIRQ", scope: !158, file: !158, line: 1547, type: !3185, scopeLine: 1548, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !140, retainedNodes: !3274)
!3274 = !{!3275}
!3275 = !DILocalVariable(name: "IRQn", arg: 1, scope: !3273, file: !158, line: 1547, type: !61)
!3276 = !DILocation(line: 0, scope: !3273)
!3277 = !DILocation(line: 1549, column: 65, scope: !3273)
!3278 = !DILocation(line: 1549, column: 44, scope: !3273)
!3279 = !DILocation(line: 1549, column: 32, scope: !3273)
!3280 = !DILocation(line: 1549, column: 3, scope: !3273)
!3281 = !DILocation(line: 1549, column: 39, scope: !3273)
!3282 = !DILocation(line: 1550, column: 1, scope: !3273)
!3283 = distinct !DISubprogram(name: "hal_nvic_set_priority", scope: !141, file: !141, line: 138, type: !3284, scopeLine: 139, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !140, retainedNodes: !3286)
!3284 = !DISubroutineType(types: !3285)
!3285 = !{!3169, !152, !92}
!3286 = !{!3287, !3288, !3289}
!3287 = !DILocalVariable(name: "irq_number", arg: 1, scope: !3283, file: !141, line: 138, type: !152)
!3288 = !DILocalVariable(name: "priority", arg: 2, scope: !3283, file: !141, line: 138, type: !92)
!3289 = !DILocalVariable(name: "status", scope: !3283, file: !141, line: 140, type: !3169)
!3290 = !DILocation(line: 0, scope: !3283)
!3291 = !DILocation(line: 142, column: 40, scope: !3292)
!3292 = distinct !DILexicalBlock(scope: !3283, file: !141, line: 142, column: 9)
!3293 = !DILocation(line: 146, column: 9, scope: !3294)
!3294 = distinct !DILexicalBlock(scope: !3292, file: !141, line: 145, column: 12)
!3295 = !DILocation(line: 150, column: 5, scope: !3283)
!3296 = !DILocation(line: 151, column: 1, scope: !3283)
!3297 = distinct !DISubprogram(name: "NVIC_SetPriority", scope: !158, file: !158, line: 1577, type: !3298, scopeLine: 1578, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !140, retainedNodes: !3300)
!3298 = !DISubroutineType(types: !3299)
!3299 = !{null, !61, !92}
!3300 = !{!3301, !3302}
!3301 = !DILocalVariable(name: "IRQn", arg: 1, scope: !3297, file: !158, line: 1577, type: !61)
!3302 = !DILocalVariable(name: "priority", arg: 2, scope: !3297, file: !158, line: 1577, type: !92)
!3303 = !DILocation(line: 0, scope: !3297)
!3304 = !DILocation(line: 1582, column: 34, scope: !3305)
!3305 = distinct !DILexicalBlock(scope: !3306, file: !158, line: 1581, column: 8)
!3306 = distinct !DILexicalBlock(scope: !3297, file: !158, line: 1579, column: 6)
!3307 = !DILocation(line: 1582, column: 5, scope: !3305)
!3308 = !DILocation(line: 1582, column: 32, scope: !3305)
!3309 = !DILocation(line: 1583, column: 1, scope: !3297)
!3310 = distinct !DISubprogram(name: "hal_nvic_get_priority", scope: !141, file: !141, line: 153, type: !3218, scopeLine: 154, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !140, retainedNodes: !3311)
!3311 = !{!3312, !3313}
!3312 = !DILocalVariable(name: "irq_number", arg: 1, scope: !3310, file: !141, line: 153, type: !152)
!3313 = !DILocalVariable(name: "ret", scope: !3310, file: !141, line: 155, type: !92)
!3314 = !DILocation(line: 0, scope: !3310)
!3315 = !DILocation(line: 157, column: 40, scope: !3316)
!3316 = distinct !DILexicalBlock(scope: !3310, file: !141, line: 157, column: 9)
!3317 = !DILocation(line: 160, column: 15, scope: !3318)
!3318 = distinct !DILexicalBlock(scope: !3316, file: !141, line: 159, column: 12)
!3319 = !DILocation(line: 163, column: 5, scope: !3310)
!3320 = !DILocation(line: 164, column: 1, scope: !3310)
!3321 = distinct !DISubprogram(name: "NVIC_GetPriority", scope: !158, file: !158, line: 1597, type: !3231, scopeLine: 1598, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !140, retainedNodes: !3322)
!3322 = !{!3323}
!3323 = !DILocalVariable(name: "IRQn", arg: 1, scope: !3321, file: !158, line: 1597, type: !61)
!3324 = !DILocation(line: 0, scope: !3321)
!3325 = !DILocation(line: 1603, column: 23, scope: !3326)
!3326 = distinct !DILexicalBlock(scope: !3327, file: !158, line: 1602, column: 8)
!3327 = distinct !DILexicalBlock(scope: !3321, file: !158, line: 1600, column: 6)
!3328 = !DILocation(line: 1603, column: 60, scope: !3326)
!3329 = !DILocation(line: 1604, column: 1, scope: !3321)
!3330 = distinct !DISubprogram(name: "Flash_ReturnReady", scope: !141, file: !141, line: 173, type: !75, scopeLine: 174, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !140, retainedNodes: !1158)
!3331 = !DILocation(line: 175, column: 1, scope: !3330)
!3332 = distinct !DISubprogram(name: "isrC_main", scope: !141, file: !141, line: 178, type: !3167, scopeLine: 179, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !140, retainedNodes: !3333)
!3333 = !{!3334, !3335}
!3334 = !DILocalVariable(name: "status", scope: !3332, file: !141, line: 180, type: !3169)
!3335 = !DILocalVariable(name: "irq_number", scope: !3332, file: !141, line: 181, type: !152)
!3336 = !DILocation(line: 0, scope: !3332)
!3337 = !DILocation(line: 188, column: 34, scope: !3332)
!3338 = !DILocation(line: 189, column: 24, scope: !3339)
!3339 = distinct !DILexicalBlock(scope: !3332, file: !141, line: 189, column: 9)
!3340 = !DILocation(line: 192, column: 48, scope: !3341)
!3341 = distinct !DILexicalBlock(scope: !3339, file: !141, line: 192, column: 16)
!3342 = !DILocation(line: 192, column: 62, scope: !3341)
!3343 = !DILocation(line: 192, column: 16, scope: !3339)
!3344 = !DILocation(line: 194, column: 9, scope: !3345)
!3345 = distinct !DILexicalBlock(scope: !3341, file: !141, line: 192, column: 71)
!3346 = !DILocation(line: 195, column: 9, scope: !3345)
!3347 = !DILocation(line: 197, column: 55, scope: !3348)
!3348 = distinct !DILexicalBlock(scope: !3341, file: !141, line: 196, column: 12)
!3349 = !DILocation(line: 197, column: 41, scope: !3348)
!3350 = !DILocation(line: 197, column: 53, scope: !3348)
!3351 = !DILocation(line: 198, column: 41, scope: !3348)
!3352 = !DILocation(line: 198, column: 9, scope: !3348)
!3353 = !DILocation(line: 202, column: 5, scope: !3332)
!3354 = !DILocation(line: 203, column: 1, scope: !3332)
!3355 = distinct !DISubprogram(name: "get_current_irq", scope: !141, file: !141, line: 166, type: !2052, scopeLine: 167, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !140, retainedNodes: !3356)
!3356 = !{!3357}
!3357 = !DILocalVariable(name: "irq_num", scope: !3355, file: !141, line: 168, type: !92)
!3358 = !DILocation(line: 168, column: 31, scope: !3355)
!3359 = !DILocation(line: 168, column: 36, scope: !3355)
!3360 = !DILocation(line: 0, scope: !3355)
!3361 = !DILocation(line: 169, column: 21, scope: !3355)
!3362 = !DILocation(line: 169, column: 5, scope: !3355)
!3363 = distinct !DISubprogram(name: "get_pending_irq", scope: !141, file: !141, line: 55, type: !2052, scopeLine: 56, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !140, retainedNodes: !1158)
!3364 = !DILocation(line: 57, column: 19, scope: !3363)
!3365 = !DILocation(line: 57, column: 51, scope: !3363)
!3366 = !DILocation(line: 57, column: 5, scope: !3363)
!3367 = distinct !DISubprogram(name: "hal_nvic_register_isr_handler", scope: !141, file: !141, line: 205, type: !3368, scopeLine: 206, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !140, retainedNodes: !3371)
!3368 = !DISubroutineType(types: !3369)
!3369 = !{!3169, !152, !3370}
!3370 = !DIDerivedType(tag: DW_TAG_typedef, name: "hal_nvic_isr_t", file: !144, line: 175, baseType: !237)
!3371 = !{!3372, !3373, !3374}
!3372 = !DILocalVariable(name: "irq_number", arg: 1, scope: !3367, file: !141, line: 205, type: !152)
!3373 = !DILocalVariable(name: "callback", arg: 2, scope: !3367, file: !141, line: 205, type: !3370)
!3374 = !DILocalVariable(name: "mask", scope: !3367, file: !141, line: 207, type: !92)
!3375 = !DILocation(line: 0, scope: !3367)
!3376 = !DILocation(line: 209, column: 24, scope: !3377)
!3377 = distinct !DILexicalBlock(scope: !3367, file: !141, line: 209, column: 9)
!3378 = !DILocation(line: 213, column: 12, scope: !3367)
!3379 = !DILocation(line: 214, column: 5, scope: !3367)
!3380 = !DILocation(line: 215, column: 37, scope: !3367)
!3381 = !DILocation(line: 215, column: 51, scope: !3367)
!3382 = !DILocation(line: 216, column: 37, scope: !3367)
!3383 = !DILocation(line: 216, column: 49, scope: !3367)
!3384 = !DILocation(line: 217, column: 5, scope: !3367)
!3385 = !DILocation(line: 219, column: 5, scope: !3367)
!3386 = !DILocation(line: 220, column: 1, scope: !3367)
!3387 = distinct !DISubprogram(name: "hal_nvic_save_and_set_interrupt_mask", scope: !141, file: !141, line: 222, type: !3388, scopeLine: 223, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !140, retainedNodes: !3390)
!3388 = !DISubroutineType(types: !3389)
!3389 = !{!3169, !2783}
!3390 = !{!3391}
!3391 = !DILocalVariable(name: "mask", arg: 1, scope: !3387, file: !141, line: 222, type: !2783)
!3392 = !DILocation(line: 0, scope: !3387)
!3393 = !DILocation(line: 224, column: 13, scope: !3387)
!3394 = !DILocation(line: 224, column: 11, scope: !3387)
!3395 = !DILocation(line: 225, column: 5, scope: !3387)
!3396 = distinct !DISubprogram(name: "hal_nvic_restore_interrupt_mask", scope: !141, file: !141, line: 228, type: !3397, scopeLine: 229, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !140, retainedNodes: !3399)
!3397 = !DISubroutineType(types: !3398)
!3398 = !{!3169, !92}
!3399 = !{!3400}
!3400 = !DILocalVariable(name: "mask", arg: 1, scope: !3396, file: !141, line: 228, type: !92)
!3401 = !DILocation(line: 0, scope: !3396)
!3402 = !DILocation(line: 230, column: 5, scope: !3396)
!3403 = !DILocation(line: 231, column: 5, scope: !3396)
!3404 = distinct !DISubprogram(name: "hal_pinmux_set_function", scope: !928, file: !928, line: 50, type: !3405, scopeLine: 51, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !927, retainedNodes: !3409)
!3405 = !DISubroutineType(types: !3406)
!3406 = !{!3407, !3408, !183}
!3407 = !DIDerivedType(tag: DW_TAG_typedef, name: "hal_pinmux_status_t", file: !931, line: 238, baseType: !930)
!3408 = !DIDerivedType(tag: DW_TAG_typedef, name: "hal_gpio_pin_t", file: !257, line: 281, baseType: !412)
!3409 = !{!3410, !3411, !3412}
!3410 = !DILocalVariable(name: "gpio_pin", arg: 1, scope: !3404, file: !928, line: 50, type: !3408)
!3411 = !DILocalVariable(name: "function_index", arg: 2, scope: !3404, file: !928, line: 50, type: !183)
!3412 = !DILocalVariable(name: "ret_value", scope: !3404, file: !928, line: 52, type: !154)
!3413 = !DILocation(line: 0, scope: !3404)
!3414 = !DILocation(line: 53, column: 18, scope: !3415)
!3415 = distinct !DILexicalBlock(scope: !3404, file: !928, line: 53, column: 9)
!3416 = !DILocation(line: 53, column: 9, scope: !3404)
!3417 = !DILocation(line: 57, column: 24, scope: !3418)
!3418 = distinct !DILexicalBlock(scope: !3404, file: !928, line: 57, column: 9)
!3419 = !DILocation(line: 57, column: 9, scope: !3404)
!3420 = !DILocation(line: 57, column: 9, scope: !3418)
!3421 = !DILocation(line: 60, column: 17, scope: !3404)
!3422 = !DILocation(line: 61, column: 12, scope: !3404)
!3423 = !DILocation(line: 61, column: 5, scope: !3404)
!3424 = !DILocation(line: 62, column: 1, scope: !3404)
!3425 = distinct !DISubprogram(name: "hal_gpio_init", scope: !928, file: !928, line: 64, type: !3426, scopeLine: 65, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !927, retainedNodes: !3429)
!3426 = !DISubroutineType(types: !3427)
!3427 = !{!3428, !3408}
!3428 = !DIDerivedType(tag: DW_TAG_typedef, name: "hal_gpio_status_t", file: !931, line: 229, baseType: !937)
!3429 = !{!3430}
!3430 = !DILocalVariable(name: "gpio_pin", arg: 1, scope: !3425, file: !928, line: 64, type: !3408)
!3431 = !DILocation(line: 0, scope: !3425)
!3432 = !DILocation(line: 66, column: 5, scope: !3425)
!3433 = distinct !DISubprogram(name: "hal_gpio_deinit", scope: !928, file: !928, line: 69, type: !3426, scopeLine: 70, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !927, retainedNodes: !3434)
!3434 = !{!3435}
!3435 = !DILocalVariable(name: "gpio_pin", arg: 1, scope: !3433, file: !928, line: 69, type: !3408)
!3436 = !DILocation(line: 0, scope: !3433)
!3437 = !DILocation(line: 71, column: 5, scope: !3433)
!3438 = distinct !DISubprogram(name: "hal_gpio_get_input", scope: !928, file: !928, line: 74, type: !3439, scopeLine: 75, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !927, retainedNodes: !3442)
!3439 = !DISubroutineType(types: !3440)
!3440 = !{!3428, !3408, !3441}
!3441 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !964, size: 32)
!3442 = !{!3443, !3444, !3445}
!3443 = !DILocalVariable(name: "gpio_pin", arg: 1, scope: !3438, file: !928, line: 74, type: !3408)
!3444 = !DILocalVariable(name: "gpio_data", arg: 2, scope: !3438, file: !928, line: 74, type: !3441)
!3445 = !DILocalVariable(name: "status", scope: !3438, file: !928, line: 76, type: !3446)
!3446 = !DIDerivedType(tag: DW_TAG_typedef, name: "gpio_status", file: !958, line: 67, baseType: !3447)
!3447 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !958, line: 62, size: 64, elements: !3448)
!3448 = !{!3449, !3450, !3451, !3452}
!3449 = !DIDerivedType(tag: DW_TAG_member, name: "GPIO_PIN", scope: !3447, file: !958, line: 63, baseType: !92, size: 32)
!3450 = !DIDerivedType(tag: DW_TAG_member, name: "GPIO_OUTEN", scope: !3447, file: !958, line: 64, baseType: !183, size: 8, offset: 32)
!3451 = !DIDerivedType(tag: DW_TAG_member, name: "GPI_DIN", scope: !3447, file: !958, line: 65, baseType: !183, size: 8, offset: 40)
!3452 = !DIDerivedType(tag: DW_TAG_member, name: "GPO_DOUT", scope: !3447, file: !958, line: 66, baseType: !183, size: 8, offset: 48)
!3453 = !DILocation(line: 0, scope: !3438)
!3454 = !DILocation(line: 77, column: 14, scope: !3455)
!3455 = distinct !DILexicalBlock(scope: !3438, file: !928, line: 77, column: 9)
!3456 = !DILocation(line: 77, column: 9, scope: !3438)
!3457 = !DILocation(line: 81, column: 18, scope: !3458)
!3458 = distinct !DILexicalBlock(scope: !3438, file: !928, line: 81, column: 9)
!3459 = !DILocation(line: 81, column: 9, scope: !3438)
!3460 = !DILocation(line: 85, column: 14, scope: !3438)
!3461 = !DILocation(line: 86, column: 18, scope: !3438)
!3462 = !DILocation(line: 86, column: 16, scope: !3438)
!3463 = !DILocation(line: 87, column: 5, scope: !3438)
!3464 = !DILocation(line: 88, column: 1, scope: !3438)
!3465 = distinct !DISubprogram(name: "hal_gpio_set_output", scope: !928, file: !928, line: 90, type: !3466, scopeLine: 91, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !927, retainedNodes: !3468)
!3466 = !DISubroutineType(types: !3467)
!3467 = !{!3428, !3408, !964}
!3468 = !{!3469, !3470, !3471}
!3469 = !DILocalVariable(name: "gpio_pin", arg: 1, scope: !3465, file: !928, line: 90, type: !3408)
!3470 = !DILocalVariable(name: "gpio_data", arg: 2, scope: !3465, file: !928, line: 90, type: !964)
!3471 = !DILocalVariable(name: "ret_value", scope: !3465, file: !928, line: 92, type: !154)
!3472 = !DILocation(line: 0, scope: !3465)
!3473 = !DILocation(line: 93, column: 18, scope: !3474)
!3474 = distinct !DILexicalBlock(scope: !3465, file: !928, line: 93, column: 9)
!3475 = !DILocation(line: 93, column: 9, scope: !3465)
!3476 = !DILocation(line: 97, column: 60, scope: !3465)
!3477 = !DILocation(line: 97, column: 17, scope: !3465)
!3478 = !DILocation(line: 98, column: 12, scope: !3465)
!3479 = !DILocation(line: 98, column: 5, scope: !3465)
!3480 = !DILocation(line: 99, column: 1, scope: !3465)
!3481 = distinct !DISubprogram(name: "hal_gpio_get_output", scope: !928, file: !928, line: 101, type: !3439, scopeLine: 102, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !927, retainedNodes: !3482)
!3482 = !{!3483, !3484, !3485}
!3483 = !DILocalVariable(name: "gpio_pin", arg: 1, scope: !3481, file: !928, line: 101, type: !3408)
!3484 = !DILocalVariable(name: "gpio_data", arg: 2, scope: !3481, file: !928, line: 101, type: !3441)
!3485 = !DILocalVariable(name: "status", scope: !3481, file: !928, line: 103, type: !3446)
!3486 = !DILocation(line: 0, scope: !3481)
!3487 = !DILocation(line: 104, column: 18, scope: !3488)
!3488 = distinct !DILexicalBlock(scope: !3481, file: !928, line: 104, column: 9)
!3489 = !DILocation(line: 104, column: 9, scope: !3481)
!3490 = !DILocation(line: 108, column: 14, scope: !3491)
!3491 = distinct !DILexicalBlock(scope: !3481, file: !928, line: 108, column: 9)
!3492 = !DILocation(line: 108, column: 9, scope: !3481)
!3493 = !DILocation(line: 112, column: 14, scope: !3481)
!3494 = !DILocation(line: 113, column: 18, scope: !3481)
!3495 = !DILocation(line: 113, column: 16, scope: !3481)
!3496 = !DILocation(line: 114, column: 5, scope: !3481)
!3497 = !DILocation(line: 115, column: 1, scope: !3481)
!3498 = distinct !DISubprogram(name: "hal_gpio_set_direction", scope: !928, file: !928, line: 117, type: !3499, scopeLine: 118, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !927, retainedNodes: !3502)
!3499 = !DISubroutineType(types: !3500)
!3500 = !{!3428, !3408, !3501}
!3501 = !DIDerivedType(tag: DW_TAG_typedef, name: "hal_gpio_direction_t", file: !931, line: 213, baseType: !947)
!3502 = !{!3503, !3504, !3505}
!3503 = !DILocalVariable(name: "gpio_pin", arg: 1, scope: !3498, file: !928, line: 117, type: !3408)
!3504 = !DILocalVariable(name: "direction", arg: 2, scope: !3498, file: !928, line: 117, type: !3501)
!3505 = !DILocalVariable(name: "ret_value", scope: !3498, file: !928, line: 119, type: !154)
!3506 = !DILocation(line: 0, scope: !3498)
!3507 = !DILocation(line: 120, column: 18, scope: !3508)
!3508 = distinct !DILexicalBlock(scope: !3498, file: !928, line: 120, column: 9)
!3509 = !DILocation(line: 120, column: 9, scope: !3498)
!3510 = !DILocation(line: 123, column: 17, scope: !3498)
!3511 = !DILocation(line: 125, column: 12, scope: !3498)
!3512 = !DILocation(line: 125, column: 5, scope: !3498)
!3513 = !DILocation(line: 126, column: 1, scope: !3498)
!3514 = distinct !DISubprogram(name: "hal_gpio_get_direction", scope: !928, file: !928, line: 128, type: !3515, scopeLine: 129, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !927, retainedNodes: !3518)
!3515 = !DISubroutineType(types: !3516)
!3516 = !{!3428, !3408, !3517}
!3517 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3501, size: 32)
!3518 = !{!3519, !3520, !3521}
!3519 = !DILocalVariable(name: "gpio_pin", arg: 1, scope: !3514, file: !928, line: 128, type: !3408)
!3520 = !DILocalVariable(name: "direction", arg: 2, scope: !3514, file: !928, line: 128, type: !3517)
!3521 = !DILocalVariable(name: "status", scope: !3514, file: !928, line: 131, type: !3446)
!3522 = !DILocation(line: 0, scope: !3514)
!3523 = !DILocation(line: 132, column: 18, scope: !3524)
!3524 = distinct !DILexicalBlock(scope: !3514, file: !928, line: 132, column: 9)
!3525 = !DILocation(line: 132, column: 9, scope: !3514)
!3526 = !DILocation(line: 136, column: 14, scope: !3527)
!3527 = distinct !DILexicalBlock(scope: !3514, file: !928, line: 136, column: 9)
!3528 = !DILocation(line: 136, column: 9, scope: !3514)
!3529 = !DILocation(line: 140, column: 14, scope: !3514)
!3530 = !DILocation(line: 141, column: 18, scope: !3514)
!3531 = !DILocation(line: 141, column: 16, scope: !3514)
!3532 = !DILocation(line: 142, column: 5, scope: !3514)
!3533 = !DILocation(line: 143, column: 1, scope: !3514)
!3534 = distinct !DISubprogram(name: "hal_gpio_toggle_pin", scope: !928, file: !928, line: 146, type: !3426, scopeLine: 147, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !927, retainedNodes: !3535)
!3535 = !{!3536, !3537}
!3536 = !DILocalVariable(name: "gpio_pin", arg: 1, scope: !3534, file: !928, line: 146, type: !3408)
!3537 = !DILocalVariable(name: "status", scope: !3534, file: !928, line: 148, type: !3446)
!3538 = !DILocation(line: 0, scope: !3534)
!3539 = !DILocation(line: 149, column: 18, scope: !3540)
!3540 = distinct !DILexicalBlock(scope: !3534, file: !928, line: 149, column: 9)
!3541 = !DILocation(line: 149, column: 9, scope: !3534)
!3542 = !DILocation(line: 153, column: 14, scope: !3534)
!3543 = !DILocation(line: 154, column: 76, scope: !3534)
!3544 = !DILocation(line: 154, column: 12, scope: !3534)
!3545 = !DILocation(line: 154, column: 5, scope: !3534)
!3546 = !DILocation(line: 155, column: 1, scope: !3534)
!3547 = distinct !DISubprogram(name: "hal_gpio_pull_up", scope: !928, file: !928, line: 157, type: !3426, scopeLine: 158, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !927, retainedNodes: !3548)
!3548 = !{!3549, !3550}
!3549 = !DILocalVariable(name: "gpio_pin", arg: 1, scope: !3547, file: !928, line: 157, type: !3408)
!3550 = !DILocalVariable(name: "ret_value", scope: !3547, file: !928, line: 159, type: !154)
!3551 = !DILocation(line: 0, scope: !3547)
!3552 = !DILocation(line: 160, column: 18, scope: !3553)
!3553 = distinct !DILexicalBlock(scope: !3547, file: !928, line: 160, column: 9)
!3554 = !DILocation(line: 160, column: 9, scope: !3547)
!3555 = !DILocation(line: 164, column: 17, scope: !3547)
!3556 = !DILocation(line: 165, column: 19, scope: !3557)
!3557 = distinct !DILexicalBlock(scope: !3547, file: !928, line: 165, column: 9)
!3558 = !DILocation(line: 165, column: 9, scope: !3547)
!3559 = !DILocation(line: 168, column: 17, scope: !3547)
!3560 = !DILocation(line: 169, column: 12, scope: !3547)
!3561 = !DILocation(line: 169, column: 5, scope: !3547)
!3562 = !DILocation(line: 170, column: 1, scope: !3547)
!3563 = distinct !DISubprogram(name: "hal_gpio_pull_down", scope: !928, file: !928, line: 172, type: !3426, scopeLine: 173, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !927, retainedNodes: !3564)
!3564 = !{!3565, !3566}
!3565 = !DILocalVariable(name: "gpio_pin", arg: 1, scope: !3563, file: !928, line: 172, type: !3408)
!3566 = !DILocalVariable(name: "ret_value", scope: !3563, file: !928, line: 174, type: !154)
!3567 = !DILocation(line: 0, scope: !3563)
!3568 = !DILocation(line: 175, column: 18, scope: !3569)
!3569 = distinct !DILexicalBlock(scope: !3563, file: !928, line: 175, column: 9)
!3570 = !DILocation(line: 175, column: 9, scope: !3563)
!3571 = !DILocation(line: 179, column: 17, scope: !3563)
!3572 = !DILocation(line: 180, column: 19, scope: !3573)
!3573 = distinct !DILexicalBlock(scope: !3563, file: !928, line: 180, column: 9)
!3574 = !DILocation(line: 180, column: 9, scope: !3563)
!3575 = !DILocation(line: 183, column: 17, scope: !3563)
!3576 = !DILocation(line: 184, column: 12, scope: !3563)
!3577 = !DILocation(line: 184, column: 5, scope: !3563)
!3578 = !DILocation(line: 185, column: 1, scope: !3563)
!3579 = distinct !DISubprogram(name: "hal_gpio_disable_pull", scope: !928, file: !928, line: 187, type: !3426, scopeLine: 188, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !927, retainedNodes: !3580)
!3580 = !{!3581, !3582}
!3581 = !DILocalVariable(name: "gpio_pin", arg: 1, scope: !3579, file: !928, line: 187, type: !3408)
!3582 = !DILocalVariable(name: "ret_value", scope: !3579, file: !928, line: 189, type: !154)
!3583 = !DILocation(line: 0, scope: !3579)
!3584 = !DILocation(line: 191, column: 18, scope: !3585)
!3585 = distinct !DILexicalBlock(scope: !3579, file: !928, line: 191, column: 9)
!3586 = !DILocation(line: 191, column: 9, scope: !3579)
!3587 = !DILocation(line: 195, column: 17, scope: !3579)
!3588 = !DILocation(line: 196, column: 12, scope: !3579)
!3589 = !DILocation(line: 196, column: 5, scope: !3579)
!3590 = !DILocation(line: 197, column: 1, scope: !3579)
!3591 = distinct !DISubprogram(name: "hal_gpio_set_driving_current", scope: !928, file: !928, line: 200, type: !3592, scopeLine: 201, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !927, retainedNodes: !3594)
!3592 = !DISubroutineType(types: !3593)
!3593 = !{!3428, !3408, !965}
!3594 = !{!3595, !3596, !3597}
!3595 = !DILocalVariable(name: "gpio_pin", arg: 1, scope: !3591, file: !928, line: 200, type: !3408)
!3596 = !DILocalVariable(name: "driving", arg: 2, scope: !3591, file: !928, line: 200, type: !965)
!3597 = !DILocalVariable(name: "ret_value", scope: !3591, file: !928, line: 202, type: !154)
!3598 = !DILocation(line: 0, scope: !3591)
!3599 = !DILocation(line: 204, column: 18, scope: !3600)
!3600 = distinct !DILexicalBlock(scope: !3591, file: !928, line: 204, column: 9)
!3601 = !DILocation(line: 204, column: 9, scope: !3591)
!3602 = !DILocation(line: 208, column: 64, scope: !3591)
!3603 = !DILocation(line: 208, column: 17, scope: !3591)
!3604 = !DILocation(line: 210, column: 12, scope: !3591)
!3605 = !DILocation(line: 210, column: 5, scope: !3591)
!3606 = !DILocation(line: 211, column: 1, scope: !3591)
!3607 = distinct !DISubprogram(name: "hal_gpio_get_driving_current", scope: !928, file: !928, line: 214, type: !3608, scopeLine: 215, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !927, retainedNodes: !3611)
!3608 = !DISubroutineType(types: !3609)
!3609 = !{!3428, !3408, !3610}
!3610 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !965, size: 32)
!3611 = !{!3612, !3613, !3614, !3615}
!3612 = !DILocalVariable(name: "gpio_pin", arg: 1, scope: !3607, file: !928, line: 214, type: !3408)
!3613 = !DILocalVariable(name: "driving", arg: 2, scope: !3607, file: !928, line: 214, type: !3610)
!3614 = !DILocalVariable(name: "ret_value", scope: !3607, file: !928, line: 216, type: !154)
!3615 = !DILocalVariable(name: "value", scope: !3607, file: !928, line: 217, type: !183)
!3616 = !DILocation(line: 0, scope: !3607)
!3617 = !DILocation(line: 217, column: 5, scope: !3607)
!3618 = !DILocation(line: 219, column: 18, scope: !3619)
!3619 = distinct !DILexicalBlock(scope: !3607, file: !928, line: 219, column: 9)
!3620 = !DILocation(line: 219, column: 9, scope: !3607)
!3621 = !DILocation(line: 223, column: 17, scope: !3607)
!3622 = !DILocation(line: 225, column: 44, scope: !3607)
!3623 = !DILocation(line: 225, column: 16, scope: !3607)
!3624 = !DILocation(line: 225, column: 14, scope: !3607)
!3625 = !DILocation(line: 227, column: 12, scope: !3607)
!3626 = !DILocation(line: 227, column: 5, scope: !3607)
!3627 = !DILocation(line: 228, column: 1, scope: !3607)
!3628 = distinct !DISubprogram(name: "hal_gpt_init", scope: !246, file: !246, line: 82, type: !3629, scopeLine: 83, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !245, retainedNodes: !3631)
!3629 = !DISubroutineType(types: !3630)
!3630 = !{!452, !457}
!3631 = !{!3632}
!3632 = !DILocalVariable(name: "gpt_port", arg: 1, scope: !3628, file: !246, line: 82, type: !457)
!3633 = !DILocation(line: 0, scope: !3628)
!3634 = !DILocation(line: 84, column: 9, scope: !3635)
!3635 = distinct !DILexicalBlock(scope: !3628, file: !246, line: 84, column: 9)
!3636 = !DILocation(line: 84, column: 33, scope: !3635)
!3637 = !{i8 0, i8 2}
!3638 = !DILocation(line: 84, column: 9, scope: !3628)
!3639 = !DILocation(line: 88, column: 9, scope: !3640)
!3640 = distinct !DILexicalBlock(scope: !3628, file: !246, line: 88, column: 9)
!3641 = !DILocation(line: 88, column: 9, scope: !3628)
!3642 = !DILocation(line: 89, column: 9, scope: !3643)
!3643 = distinct !DILexicalBlock(scope: !3640, file: !246, line: 88, column: 50)
!3644 = !DILocation(line: 90, column: 9, scope: !3643)
!3645 = !DILocation(line: 92, column: 12, scope: !3628)
!3646 = !DILocation(line: 92, column: 5, scope: !3628)
!3647 = !DILocation(line: 96, column: 43, scope: !3628)
!3648 = !DILocation(line: 98, column: 5, scope: !3628)
!3649 = !DILocation(line: 99, column: 1, scope: !3628)
!3650 = distinct !DISubprogram(name: "hal_gpt_is_port_valid", scope: !246, file: !246, line: 63, type: !3651, scopeLine: 64, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !245, retainedNodes: !3653)
!3651 = !DISubroutineType(types: !3652)
!3652 = !{!296, !457}
!3653 = !{!3654}
!3654 = !DILocalVariable(name: "gpt_port", arg: 1, scope: !3650, file: !246, line: 63, type: !457)
!3655 = !DILocation(line: 0, scope: !3650)
!3656 = !DILocation(line: 65, column: 19, scope: !3657)
!3657 = distinct !DILexicalBlock(scope: !3650, file: !246, line: 65, column: 9)
!3658 = !DILocation(line: 65, column: 34, scope: !3657)
!3659 = !DILocation(line: 70, column: 1, scope: !3650)
!3660 = distinct !DISubprogram(name: "hal_gpt_deinit", scope: !246, file: !246, line: 101, type: !3629, scopeLine: 102, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !245, retainedNodes: !3661)
!3661 = !{!3662}
!3662 = !DILocalVariable(name: "gpt_port", arg: 1, scope: !3660, file: !246, line: 101, type: !457)
!3663 = !DILocation(line: 0, scope: !3660)
!3664 = !DILocation(line: 103, column: 9, scope: !3665)
!3665 = distinct !DILexicalBlock(scope: !3660, file: !246, line: 103, column: 9)
!3666 = !DILocation(line: 103, column: 9, scope: !3660)
!3667 = !DILocation(line: 104, column: 9, scope: !3668)
!3668 = distinct !DILexicalBlock(scope: !3665, file: !246, line: 103, column: 50)
!3669 = !DILocation(line: 105, column: 9, scope: !3668)
!3670 = !DILocation(line: 108, column: 9, scope: !3671)
!3671 = distinct !DILexicalBlock(scope: !3660, file: !246, line: 108, column: 9)
!3672 = !DILocation(line: 108, column: 33, scope: !3671)
!3673 = !DILocation(line: 108, column: 48, scope: !3671)
!3674 = !DILocation(line: 108, column: 9, scope: !3660)
!3675 = !DILocation(line: 109, column: 9, scope: !3676)
!3676 = distinct !DILexicalBlock(scope: !3671, file: !246, line: 108, column: 68)
!3677 = !DILocation(line: 110, column: 9, scope: !3676)
!3678 = !DILocation(line: 113, column: 12, scope: !3660)
!3679 = !DILocation(line: 113, column: 5, scope: !3660)
!3680 = !DILocation(line: 116, column: 29, scope: !3660)
!3681 = !DILocation(line: 116, column: 43, scope: !3660)
!3682 = !DILocation(line: 117, column: 5, scope: !3660)
!3683 = !DILocation(line: 118, column: 1, scope: !3660)
!3684 = distinct !DISubprogram(name: "hal_gpt_get_free_run_count", scope: !246, file: !246, line: 120, type: !3685, scopeLine: 121, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !245, retainedNodes: !3688)
!3685 = !DISubroutineType(types: !3686)
!3686 = !{!452, !3687, !2783}
!3687 = !DIDerivedType(tag: DW_TAG_typedef, name: "hal_gpt_clock_source_t", file: !257, line: 674, baseType: !268)
!3688 = !{!3689, !3690}
!3689 = !DILocalVariable(name: "clock_source", arg: 1, scope: !3684, file: !246, line: 120, type: !3687)
!3690 = !DILocalVariable(name: "count", arg: 2, scope: !3684, file: !246, line: 120, type: !2783)
!3691 = !DILocation(line: 0, scope: !3684)
!3692 = !DILocation(line: 122, column: 9, scope: !3684)
!3693 = !DILocation(line: 123, column: 50, scope: !3694)
!3694 = distinct !DILexicalBlock(scope: !3695, file: !246, line: 123, column: 13)
!3695 = distinct !DILexicalBlock(scope: !3696, file: !246, line: 122, column: 51)
!3696 = distinct !DILexicalBlock(scope: !3684, file: !246, line: 122, column: 9)
!3697 = !DILocation(line: 123, column: 65, scope: !3694)
!3698 = !DILocation(line: 123, column: 13, scope: !3695)
!3699 = !DILocation(line: 124, column: 13, scope: !3700)
!3700 = distinct !DILexicalBlock(scope: !3694, file: !246, line: 123, column: 86)
!3701 = !DILocation(line: 125, column: 9, scope: !3700)
!3702 = !DILocation(line: 126, column: 18, scope: !3695)
!3703 = !DILocation(line: 126, column: 16, scope: !3695)
!3704 = !DILocation(line: 127, column: 49, scope: !3695)
!3705 = !DILocation(line: 128, column: 5, scope: !3695)
!3706 = !DILocation(line: 129, column: 50, scope: !3707)
!3707 = distinct !DILexicalBlock(scope: !3708, file: !246, line: 129, column: 13)
!3708 = distinct !DILexicalBlock(scope: !3709, file: !246, line: 128, column: 57)
!3709 = distinct !DILexicalBlock(scope: !3696, file: !246, line: 128, column: 16)
!3710 = !DILocation(line: 129, column: 65, scope: !3707)
!3711 = !DILocation(line: 129, column: 13, scope: !3708)
!3712 = !DILocation(line: 130, column: 13, scope: !3713)
!3713 = distinct !DILexicalBlock(scope: !3707, file: !246, line: 129, column: 86)
!3714 = !DILocation(line: 131, column: 9, scope: !3713)
!3715 = !DILocation(line: 132, column: 18, scope: !3708)
!3716 = !DILocation(line: 132, column: 46, scope: !3708)
!3717 = !DILocation(line: 132, column: 65, scope: !3708)
!3718 = !DILocation(line: 132, column: 43, scope: !3708)
!3719 = !DILocation(line: 132, column: 16, scope: !3708)
!3720 = !DILocation(line: 133, column: 49, scope: !3708)
!3721 = !DILocation(line: 134, column: 5, scope: !3708)
!3722 = !DILocation(line: 135, column: 50, scope: !3723)
!3723 = distinct !DILexicalBlock(scope: !3724, file: !246, line: 135, column: 13)
!3724 = distinct !DILexicalBlock(scope: !3725, file: !246, line: 134, column: 58)
!3725 = distinct !DILexicalBlock(scope: !3709, file: !246, line: 134, column: 16)
!3726 = !DILocation(line: 135, column: 65, scope: !3723)
!3727 = !DILocation(line: 135, column: 13, scope: !3724)
!3728 = !DILocation(line: 136, column: 13, scope: !3729)
!3729 = distinct !DILexicalBlock(scope: !3723, file: !246, line: 135, column: 86)
!3730 = !DILocation(line: 137, column: 9, scope: !3729)
!3731 = !DILocation(line: 138, column: 18, scope: !3724)
!3732 = !DILocation(line: 138, column: 16, scope: !3724)
!3733 = !DILocation(line: 139, column: 49, scope: !3724)
!3734 = !DILocation(line: 141, column: 9, scope: !3735)
!3735 = distinct !DILexicalBlock(scope: !3725, file: !246, line: 140, column: 11)
!3736 = !DILocation(line: 142, column: 9, scope: !3735)
!3737 = !DILocation(line: 146, column: 1, scope: !3684)
!3738 = distinct !DISubprogram(name: "hal_gpt_get_duration_count", scope: !246, file: !246, line: 148, type: !3739, scopeLine: 149, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !245, retainedNodes: !3741)
!3739 = !DISubroutineType(types: !3740)
!3740 = !{!452, !92, !92, !2783}
!3741 = !{!3742, !3743, !3744}
!3742 = !DILocalVariable(name: "start_count", arg: 1, scope: !3738, file: !246, line: 148, type: !92)
!3743 = !DILocalVariable(name: "end_count", arg: 2, scope: !3738, file: !246, line: 148, type: !92)
!3744 = !DILocalVariable(name: "duration_count", arg: 3, scope: !3738, file: !246, line: 148, type: !2783)
!3745 = !DILocation(line: 0, scope: !3738)
!3746 = !DILocation(line: 150, column: 24, scope: !3747)
!3747 = distinct !DILexicalBlock(scope: !3738, file: !246, line: 150, column: 9)
!3748 = !DILocation(line: 150, column: 9, scope: !3738)
!3749 = !DILocation(line: 0, scope: !3750)
!3750 = distinct !DILexicalBlock(scope: !3738, file: !246, line: 154, column: 9)
!3751 = !DILocation(line: 160, column: 5, scope: !3738)
!3752 = !DILocation(line: 161, column: 1, scope: !3738)
!3753 = distinct !DISubprogram(name: "hal_gpt_get_running_status", scope: !246, file: !246, line: 163, type: !3754, scopeLine: 165, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !245, retainedNodes: !3757)
!3754 = !DISubroutineType(types: !3755)
!3755 = !{!452, !457, !3756}
!3756 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !284, size: 32)
!3757 = !{!3758, !3759}
!3758 = !DILocalVariable(name: "gpt_port", arg: 1, scope: !3753, file: !246, line: 163, type: !457)
!3759 = !DILocalVariable(name: "running_status", arg: 2, scope: !3753, file: !246, line: 164, type: !3756)
!3760 = !DILocation(line: 0, scope: !3753)
!3761 = !DILocation(line: 166, column: 18, scope: !3762)
!3762 = distinct !DILexicalBlock(scope: !3753, file: !246, line: 166, column: 9)
!3763 = !DILocation(line: 166, column: 9, scope: !3753)
!3764 = !DILocation(line: 167, column: 9, scope: !3765)
!3765 = distinct !DILexicalBlock(scope: !3762, file: !246, line: 166, column: 34)
!3766 = !DILocation(line: 168, column: 9, scope: !3765)
!3767 = !DILocation(line: 170, column: 47, scope: !3753)
!3768 = !DILocation(line: 170, column: 21, scope: !3753)
!3769 = !DILocation(line: 171, column: 5, scope: !3753)
!3770 = !DILocation(line: 172, column: 1, scope: !3753)
!3771 = distinct !DISubprogram(name: "hal_gpt_register_callback", scope: !246, file: !246, line: 174, type: !3772, scopeLine: 177, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !245, retainedNodes: !3774)
!3772 = !DISubroutineType(types: !3773)
!3773 = !{!452, !457, !290, !153}
!3774 = !{!3775, !3776, !3777}
!3775 = !DILocalVariable(name: "gpt_port", arg: 1, scope: !3771, file: !246, line: 174, type: !457)
!3776 = !DILocalVariable(name: "callback", arg: 2, scope: !3771, file: !246, line: 175, type: !290)
!3777 = !DILocalVariable(name: "user_data", arg: 3, scope: !3771, file: !246, line: 176, type: !153)
!3778 = !DILocation(line: 0, scope: !3771)
!3779 = !DILocation(line: 178, column: 9, scope: !3780)
!3780 = distinct !DILexicalBlock(scope: !3771, file: !246, line: 178, column: 9)
!3781 = !DILocation(line: 178, column: 9, scope: !3771)
!3782 = !DILocation(line: 179, column: 9, scope: !3783)
!3783 = distinct !DILexicalBlock(scope: !3780, file: !246, line: 178, column: 50)
!3784 = !DILocation(line: 180, column: 9, scope: !3783)
!3785 = !DILocation(line: 182, column: 33, scope: !3786)
!3786 = distinct !DILexicalBlock(scope: !3771, file: !246, line: 182, column: 9)
!3787 = !DILocation(line: 182, column: 47, scope: !3786)
!3788 = !DILocation(line: 182, column: 9, scope: !3771)
!3789 = !DILocation(line: 185, column: 18, scope: !3790)
!3790 = distinct !DILexicalBlock(scope: !3771, file: !246, line: 185, column: 9)
!3791 = !DILocation(line: 185, column: 9, scope: !3771)
!3792 = !DILocation(line: 188, column: 46, scope: !3771)
!3793 = !DILocation(line: 188, column: 56, scope: !3771)
!3794 = !DILocation(line: 189, column: 46, scope: !3771)
!3795 = !DILocation(line: 189, column: 56, scope: !3771)
!3796 = !DILocation(line: 190, column: 5, scope: !3771)
!3797 = !DILocation(line: 191, column: 1, scope: !3771)
!3798 = distinct !DISubprogram(name: "hal_gpt_start_timer_ms", scope: !246, file: !246, line: 218, type: !3799, scopeLine: 219, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !245, retainedNodes: !3802)
!3799 = !DISubroutineType(types: !3800)
!3800 = !{!452, !457, !92, !3801}
!3801 = !DIDerivedType(tag: DW_TAG_typedef, name: "hal_gpt_timer_type_t", file: !249, line: 383, baseType: !273)
!3802 = !{!3803, !3804, !3805}
!3803 = !DILocalVariable(name: "gpt_port", arg: 1, scope: !3798, file: !246, line: 218, type: !457)
!3804 = !DILocalVariable(name: "timeout_time_ms", arg: 2, scope: !3798, file: !246, line: 218, type: !92)
!3805 = !DILocalVariable(name: "timer_type", arg: 3, scope: !3798, file: !246, line: 218, type: !3801)
!3806 = !DILocation(line: 0, scope: !3798)
!3807 = !DILocation(line: 220, column: 9, scope: !3808)
!3808 = distinct !DILexicalBlock(scope: !3798, file: !246, line: 220, column: 9)
!3809 = !DILocation(line: 220, column: 9, scope: !3798)
!3810 = !DILocation(line: 221, column: 9, scope: !3811)
!3811 = distinct !DILexicalBlock(scope: !3808, file: !246, line: 220, column: 50)
!3812 = !DILocation(line: 222, column: 9, scope: !3811)
!3813 = !DILocation(line: 225, column: 33, scope: !3814)
!3814 = distinct !DILexicalBlock(scope: !3798, file: !246, line: 225, column: 9)
!3815 = !DILocation(line: 225, column: 47, scope: !3814)
!3816 = !DILocation(line: 225, column: 9, scope: !3798)
!3817 = !DILocation(line: 229, column: 25, scope: !3818)
!3818 = distinct !DILexicalBlock(scope: !3798, file: !246, line: 229, column: 9)
!3819 = !DILocation(line: 229, column: 9, scope: !3798)
!3820 = !DILocation(line: 234, column: 17, scope: !3798)
!3821 = !DILocation(line: 235, column: 17, scope: !3798)
!3822 = !DILocation(line: 236, column: 17, scope: !3798)
!3823 = !DILocation(line: 233, column: 5, scope: !3798)
!3824 = !DILocation(line: 237, column: 5, scope: !3798)
!3825 = !DILocation(line: 238, column: 29, scope: !3798)
!3826 = !DILocation(line: 238, column: 44, scope: !3798)
!3827 = !DILocation(line: 239, column: 5, scope: !3798)
!3828 = !DILocation(line: 240, column: 1, scope: !3798)
!3829 = distinct !DISubprogram(name: "hal_gpt_translate_timeout_time", scope: !246, file: !246, line: 72, type: !3830, scopeLine: 73, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !245, retainedNodes: !3832)
!3830 = !DISubroutineType(types: !3831)
!3831 = !{!92, !92}
!3832 = !{!3833}
!3833 = !DILocalVariable(name: "mili_seconds", arg: 1, scope: !3829, file: !246, line: 72, type: !92)
!3834 = !DILocation(line: 0, scope: !3829)
!3835 = !DILocation(line: 74, column: 37, scope: !3829)
!3836 = !DILocation(line: 74, column: 47, scope: !3829)
!3837 = !DILocation(line: 74, column: 63, scope: !3829)
!3838 = !DILocation(line: 74, column: 42, scope: !3829)
!3839 = !DILocation(line: 74, column: 73, scope: !3829)
!3840 = !DILocation(line: 74, column: 89, scope: !3829)
!3841 = !DILocation(line: 74, column: 68, scope: !3829)
!3842 = !DILocation(line: 74, column: 100, scope: !3829)
!3843 = !DILocation(line: 74, column: 116, scope: !3829)
!3844 = !DILocation(line: 74, column: 95, scope: !3829)
!3845 = !DILocation(line: 74, column: 5, scope: !3829)
!3846 = distinct !DISubprogram(name: "hal_gpt_translate_type", scope: !246, file: !246, line: 77, type: !3847, scopeLine: 78, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !245, retainedNodes: !3849)
!3847 = !DISubroutineType(types: !3848)
!3848 = !{!296, !3801}
!3849 = !{!3850}
!3850 = !DILocalVariable(name: "type", arg: 1, scope: !3846, file: !246, line: 77, type: !3801)
!3851 = !DILocation(line: 0, scope: !3846)
!3852 = !DILocation(line: 79, column: 38, scope: !3846)
!3853 = !DILocation(line: 79, column: 5, scope: !3846)
!3854 = distinct !DISubprogram(name: "hal_gpt_map_callback", scope: !246, file: !246, line: 213, type: !3855, scopeLine: 214, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !245, retainedNodes: !3858)
!3855 = !DISubroutineType(types: !3856)
!3856 = !{!3857, !457}
!3857 = !DIDerivedType(tag: DW_TAG_typedef, name: "hal_gpt_internal_callback_t", file: !246, line: 211, baseType: !74)
!3858 = !{!3859}
!3859 = !DILocalVariable(name: "gpt_port", arg: 1, scope: !3854, file: !246, line: 213, type: !457)
!3860 = !DILocation(line: 0, scope: !3854)
!3861 = !DILocation(line: 215, column: 23, scope: !3854)
!3862 = !DILocation(line: 215, column: 12, scope: !3854)
!3863 = !DILocation(line: 215, column: 5, scope: !3854)
!3864 = distinct !DISubprogram(name: "hal_gpt_callback0", scope: !246, file: !246, line: 193, type: !75, scopeLine: 194, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !245, retainedNodes: !3865)
!3865 = !{!3866}
!3866 = !DILocalVariable(name: "context", scope: !3864, file: !246, line: 195, type: !3867)
!3867 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !286, size: 32)
!3868 = !DILocation(line: 196, column: 26, scope: !3869)
!3869 = distinct !DILexicalBlock(scope: !3864, file: !246, line: 196, column: 9)
!3870 = !DILocation(line: 196, column: 14, scope: !3869)
!3871 = !DILocation(line: 196, column: 9, scope: !3864)
!3872 = !DILocation(line: 197, column: 36, scope: !3873)
!3873 = distinct !DILexicalBlock(scope: !3869, file: !246, line: 196, column: 36)
!3874 = !DILocation(line: 197, column: 9, scope: !3873)
!3875 = !DILocation(line: 198, column: 5, scope: !3873)
!3876 = !DILocation(line: 199, column: 45, scope: !3864)
!3877 = !DILocation(line: 200, column: 1, scope: !3864)
!3878 = distinct !DISubprogram(name: "hal_gpt_callback1", scope: !246, file: !246, line: 202, type: !75, scopeLine: 203, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !245, retainedNodes: !3879)
!3879 = !{!3880}
!3880 = !DILocalVariable(name: "context", scope: !3878, file: !246, line: 204, type: !3867)
!3881 = !DILocation(line: 205, column: 26, scope: !3882)
!3882 = distinct !DILexicalBlock(scope: !3878, file: !246, line: 205, column: 9)
!3883 = !DILocation(line: 205, column: 14, scope: !3882)
!3884 = !DILocation(line: 205, column: 9, scope: !3878)
!3885 = !DILocation(line: 206, column: 36, scope: !3886)
!3886 = distinct !DILexicalBlock(scope: !3882, file: !246, line: 205, column: 36)
!3887 = !DILocation(line: 206, column: 9, scope: !3886)
!3888 = !DILocation(line: 207, column: 5, scope: !3886)
!3889 = !DILocation(line: 208, column: 45, scope: !3878)
!3890 = !DILocation(line: 209, column: 1, scope: !3878)
!3891 = distinct !DISubprogram(name: "hal_gpt_stop_timer", scope: !246, file: !246, line: 242, type: !3629, scopeLine: 243, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !245, retainedNodes: !3892)
!3892 = !{!3893}
!3893 = !DILocalVariable(name: "gpt_port", arg: 1, scope: !3891, file: !246, line: 242, type: !457)
!3894 = !DILocation(line: 0, scope: !3891)
!3895 = !DILocation(line: 244, column: 9, scope: !3896)
!3896 = distinct !DILexicalBlock(scope: !3891, file: !246, line: 244, column: 9)
!3897 = !DILocation(line: 244, column: 9, scope: !3891)
!3898 = !DILocation(line: 245, column: 9, scope: !3899)
!3899 = distinct !DILexicalBlock(scope: !3896, file: !246, line: 244, column: 50)
!3900 = !DILocation(line: 246, column: 9, scope: !3899)
!3901 = !DILocation(line: 248, column: 5, scope: !3891)
!3902 = !DILocation(line: 249, column: 29, scope: !3891)
!3903 = !DILocation(line: 249, column: 44, scope: !3891)
!3904 = !DILocation(line: 250, column: 5, scope: !3891)
!3905 = !DILocation(line: 251, column: 1, scope: !3891)
!3906 = distinct !DISubprogram(name: "hal_gpt_delay_ms", scope: !246, file: !246, line: 253, type: !3907, scopeLine: 254, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !245, retainedNodes: !3909)
!3907 = !DISubroutineType(types: !3908)
!3908 = !{!452, !92}
!3909 = !{!3910}
!3910 = !DILocalVariable(name: "ms", arg: 1, scope: !3906, file: !246, line: 253, type: !92)
!3911 = !DILocation(line: 0, scope: !3906)
!3912 = !DILocation(line: 255, column: 46, scope: !3913)
!3913 = distinct !DILexicalBlock(scope: !3906, file: !246, line: 255, column: 9)
!3914 = !DILocation(line: 255, column: 61, scope: !3913)
!3915 = !DILocation(line: 255, column: 9, scope: !3906)
!3916 = !DILocation(line: 256, column: 9, scope: !3917)
!3917 = distinct !DILexicalBlock(scope: !3913, file: !246, line: 255, column: 82)
!3918 = !DILocation(line: 257, column: 5, scope: !3917)
!3919 = !DILocation(line: 258, column: 5, scope: !3906)
!3920 = !DILocation(line: 259, column: 57, scope: !3906)
!3921 = !DILocation(line: 260, column: 5, scope: !3906)
!3922 = distinct !DISubprogram(name: "hal_gpt_delay_us", scope: !246, file: !246, line: 264, type: !3907, scopeLine: 265, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !245, retainedNodes: !3923)
!3923 = !{!3924}
!3924 = !DILocalVariable(name: "us", arg: 1, scope: !3922, file: !246, line: 264, type: !92)
!3925 = !DILocation(line: 0, scope: !3922)
!3926 = !DILocation(line: 266, column: 46, scope: !3927)
!3927 = distinct !DILexicalBlock(scope: !3922, file: !246, line: 266, column: 9)
!3928 = !DILocation(line: 266, column: 61, scope: !3927)
!3929 = !DILocation(line: 266, column: 9, scope: !3922)
!3930 = !DILocation(line: 267, column: 9, scope: !3931)
!3931 = distinct !DILexicalBlock(scope: !3927, file: !246, line: 266, column: 82)
!3932 = !DILocation(line: 268, column: 5, scope: !3931)
!3933 = !DILocation(line: 269, column: 5, scope: !3922)
!3934 = !DILocation(line: 270, column: 57, scope: !3922)
!3935 = !DILocation(line: 271, column: 5, scope: !3922)
!3936 = distinct !DISubprogram(name: "hal_uart_init", scope: !300, file: !300, line: 234, type: !3937, scopeLine: 235, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !299, retainedNodes: !3941)
!3937 = !DISubroutineType(types: !3938)
!3938 = !{!3939, !360, !3940}
!3939 = !DIDerivedType(tag: DW_TAG_typedef, name: "hal_uart_status_t", file: !303, line: 351, baseType: !302)
!3940 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !371, size: 32)
!3941 = !{!3942, !3943}
!3942 = !DILocalVariable(name: "uart_port", arg: 1, scope: !3936, file: !300, line: 234, type: !360)
!3943 = !DILocalVariable(name: "uart_config", arg: 2, scope: !3936, file: !300, line: 234, type: !3940)
!3944 = !DILocation(line: 0, scope: !3936)
!3945 = !DILocation(line: 236, column: 10, scope: !3946)
!3946 = distinct !DILexicalBlock(scope: !3936, file: !300, line: 236, column: 9)
!3947 = !DILocation(line: 236, column: 9, scope: !3936)
!3948 = !DILocation(line: 239, column: 41, scope: !3949)
!3949 = distinct !DILexicalBlock(scope: !3936, file: !300, line: 239, column: 9)
!3950 = !DILocation(line: 239, column: 9, scope: !3936)
!3951 = !DILocation(line: 242, column: 5, scope: !3936)
!3952 = !DILocation(line: 243, column: 45, scope: !3936)
!3953 = !DILocation(line: 243, column: 12, scope: !3936)
!3954 = !DILocation(line: 244, column: 12, scope: !3936)
!3955 = !DILocation(line: 243, column: 5, scope: !3936)
!3956 = !DILocation(line: 245, column: 58, scope: !3936)
!3957 = !DILocation(line: 246, column: 30, scope: !3936)
!3958 = !{i32 0, i32 2}
!3959 = !DILocation(line: 246, column: 5, scope: !3936)
!3960 = !DILocation(line: 247, column: 5, scope: !3936)
!3961 = !DILocation(line: 249, column: 31, scope: !3962)
!3962 = distinct !DILexicalBlock(scope: !3936, file: !300, line: 249, column: 9)
!3963 = !DILocation(line: 249, column: 28, scope: !3962)
!3964 = !DILocation(line: 261, column: 1, scope: !3936)
!3965 = distinct !DISubprogram(name: "hal_uart_is_config_valid", scope: !300, file: !300, line: 93, type: !3966, scopeLine: 94, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !299, retainedNodes: !3970)
!3966 = !DISubroutineType(types: !3967)
!3967 = !{!296, !360, !3968}
!3968 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3969, size: 32)
!3969 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !371)
!3970 = !{!3971, !3972}
!3971 = !DILocalVariable(name: "uart_port", arg: 1, scope: !3965, file: !300, line: 93, type: !360)
!3972 = !DILocalVariable(name: "uart_config", arg: 2, scope: !3965, file: !300, line: 93, type: !3968)
!3973 = !DILocation(line: 0, scope: !3965)
!3974 = !DILocation(line: 95, column: 10, scope: !3975)
!3975 = distinct !DILexicalBlock(scope: !3965, file: !300, line: 95, column: 9)
!3976 = !DILocation(line: 95, column: 9, scope: !3965)
!3977 = !DILocation(line: 101, column: 23, scope: !3978)
!3978 = distinct !DILexicalBlock(scope: !3965, file: !300, line: 101, column: 9)
!3979 = !DILocation(line: 101, column: 32, scope: !3978)
!3980 = !DILocation(line: 101, column: 60, scope: !3978)
!3981 = !DILocation(line: 102, column: 27, scope: !3978)
!3982 = !DILocation(line: 102, column: 34, scope: !3978)
!3983 = !DILocation(line: 102, column: 58, scope: !3978)
!3984 = !DILocation(line: 103, column: 27, scope: !3978)
!3985 = !DILocation(line: 103, column: 36, scope: !3978)
!3986 = !DILocation(line: 103, column: 59, scope: !3978)
!3987 = !DILocation(line: 104, column: 27, scope: !3978)
!3988 = !DILocation(line: 104, column: 39, scope: !3978)
!3989 = !DILocation(line: 101, column: 9, scope: !3965)
!3990 = !DILocation(line: 109, column: 1, scope: !3965)
!3991 = distinct !DISubprogram(name: "hal_uart_translate_port", scope: !300, file: !300, line: 139, type: !3992, scopeLine: 140, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !299, retainedNodes: !3994)
!3992 = !DISubroutineType(types: !3993)
!3993 = !{!2636, !360}
!3994 = !{!3995}
!3995 = !DILocalVariable(name: "uart_port", arg: 1, scope: !3991, file: !300, line: 139, type: !360)
!3996 = !DILocation(line: 0, scope: !3991)
!3997 = !DILocation(line: 141, column: 24, scope: !3991)
!3998 = !DILocation(line: 141, column: 12, scope: !3991)
!3999 = !DILocation(line: 141, column: 5, scope: !3991)
!4000 = distinct !DISubprogram(name: "hal_uart_set_format", scope: !300, file: !300, line: 593, type: !4001, scopeLine: 594, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !299, retainedNodes: !4003)
!4001 = !DISubroutineType(types: !4002)
!4002 = !{!3939, !360, !3968}
!4003 = !{!4004, !4005}
!4004 = !DILocalVariable(name: "uart_port", arg: 1, scope: !4000, file: !300, line: 593, type: !360)
!4005 = !DILocalVariable(name: "config", arg: 2, scope: !4000, file: !300, line: 593, type: !3968)
!4006 = !DILocation(line: 0, scope: !4000)
!4007 = !DILocation(line: 595, column: 10, scope: !4008)
!4008 = distinct !DILexicalBlock(scope: !4000, file: !300, line: 595, column: 9)
!4009 = !DILocation(line: 595, column: 9, scope: !4000)
!4010 = !DILocation(line: 598, column: 45, scope: !4000)
!4011 = !DILocation(line: 598, column: 12, scope: !4000)
!4012 = !DILocation(line: 598, column: 59, scope: !4000)
!4013 = !DILocation(line: 598, column: 5, scope: !4000)
!4014 = !DILocation(line: 599, column: 23, scope: !4000)
!4015 = !DILocation(line: 600, column: 59, scope: !4000)
!4016 = !DILocation(line: 600, column: 23, scope: !4000)
!4017 = !DILocation(line: 601, column: 62, scope: !4000)
!4018 = !DILocation(line: 601, column: 23, scope: !4000)
!4019 = !DILocation(line: 602, column: 57, scope: !4000)
!4020 = !DILocation(line: 602, column: 23, scope: !4000)
!4021 = !DILocation(line: 603, column: 58, scope: !4000)
!4022 = !DILocation(line: 603, column: 23, scope: !4000)
!4023 = !DILocation(line: 599, column: 5, scope: !4000)
!4024 = !DILocation(line: 604, column: 5, scope: !4000)
!4025 = !DILocation(line: 605, column: 1, scope: !4000)
!4026 = distinct !DISubprogram(name: "hal_uart_translate_baudrate", scope: !300, file: !300, line: 145, type: !4027, scopeLine: 146, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !299, retainedNodes: !4029)
!4027 = !DISubroutineType(types: !4028)
!4028 = !{!92, !375}
!4029 = !{!4030, !4031}
!4030 = !DILocalVariable(name: "bandrate", arg: 1, scope: !4026, file: !300, line: 145, type: !375)
!4031 = !DILocalVariable(name: "baudrate_tbl", scope: !4026, file: !300, line: 147, type: !4032)
!4032 = !DICompositeType(tag: DW_TAG_array_type, baseType: !92, size: 416, elements: !4033)
!4033 = !{!4034}
!4034 = !DISubrange(count: 13)
!4035 = !DILocation(line: 0, scope: !4026)
!4036 = !DILocation(line: 147, column: 14, scope: !4026)
!4037 = !DILocation(line: 151, column: 12, scope: !4026)
!4038 = !DILocation(line: 151, column: 5, scope: !4026)
!4039 = distinct !DISubprogram(name: "hal_uart_translate_word_length", scope: !300, file: !300, line: 155, type: !4040, scopeLine: 156, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !299, retainedNodes: !4042)
!4040 = !DISubroutineType(types: !4041)
!4041 = !{!2706, !377}
!4042 = !{!4043, !4044}
!4043 = !DILocalVariable(name: "word_length", arg: 1, scope: !4039, file: !300, line: 155, type: !377)
!4044 = !DILocalVariable(name: "databit_tbl", scope: !4039, file: !300, line: 157, type: !4045)
!4045 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2706, size: 64, elements: !222)
!4046 = !DILocation(line: 0, scope: !4039)
!4047 = !DILocation(line: 157, column: 14, scope: !4039)
!4048 = !DILocation(line: 160, column: 12, scope: !4039)
!4049 = !DILocation(line: 160, column: 5, scope: !4039)
!4050 = distinct !DISubprogram(name: "hal_uart_translate_parity", scope: !300, file: !300, line: 164, type: !4051, scopeLine: 165, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !299, retainedNodes: !4053)
!4051 = !DISubroutineType(types: !4052)
!4052 = !{!2706, !381}
!4053 = !{!4054, !4055}
!4054 = !DILocalVariable(name: "parity", arg: 1, scope: !4050, file: !300, line: 164, type: !381)
!4055 = !DILocalVariable(name: "parity_tbl", scope: !4050, file: !300, line: 166, type: !4056)
!4056 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2706, size: 80, elements: !226)
!4057 = !DILocation(line: 0, scope: !4050)
!4058 = !DILocation(line: 166, column: 14, scope: !4050)
!4059 = !DILocation(line: 169, column: 12, scope: !4050)
!4060 = !DILocation(line: 169, column: 5, scope: !4050)
!4061 = distinct !DISubprogram(name: "hal_uart_translate_stopbit", scope: !300, file: !300, line: 173, type: !4062, scopeLine: 174, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !299, retainedNodes: !4064)
!4062 = !DISubroutineType(types: !4063)
!4063 = !{!2706, !379}
!4064 = !{!4065, !4066}
!4065 = !DILocalVariable(name: "stopbit", arg: 1, scope: !4061, file: !300, line: 173, type: !379)
!4066 = !DILocalVariable(name: "stopbit_tbl", scope: !4061, file: !300, line: 175, type: !4067)
!4067 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2706, size: 48, elements: !588)
!4068 = !DILocation(line: 0, scope: !4061)
!4069 = !DILocation(line: 175, column: 14, scope: !4061)
!4070 = !DILocation(line: 178, column: 12, scope: !4061)
!4071 = !DILocation(line: 178, column: 5, scope: !4061)
!4072 = distinct !DISubprogram(name: "hal_uart_is_port_valid", scope: !300, file: !300, line: 87, type: !4073, scopeLine: 88, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !299, retainedNodes: !4075)
!4073 = !DISubroutineType(types: !4074)
!4074 = !{!296, !360}
!4075 = !{!4076}
!4076 = !DILocalVariable(name: "uart_port", arg: 1, scope: !4072, file: !300, line: 87, type: !360)
!4077 = !DILocation(line: 0, scope: !4072)
!4078 = !DILocation(line: 89, column: 23, scope: !4072)
!4079 = !DILocation(line: 89, column: 5, scope: !4072)
!4080 = distinct !DISubprogram(name: "hal_uart_deinit", scope: !300, file: !300, line: 264, type: !4081, scopeLine: 265, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !299, retainedNodes: !4083)
!4081 = !DISubroutineType(types: !4082)
!4082 = !{!3939, !360}
!4083 = !{!4084}
!4084 = !DILocalVariable(name: "uart_port", arg: 1, scope: !4080, file: !300, line: 264, type: !360)
!4085 = !DILocation(line: 0, scope: !4080)
!4086 = !DILocation(line: 266, column: 10, scope: !4087)
!4087 = distinct !DILexicalBlock(scope: !4080, file: !300, line: 266, column: 9)
!4088 = !DILocation(line: 266, column: 9, scope: !4080)
!4089 = !DILocation(line: 269, column: 41, scope: !4090)
!4090 = distinct !DILexicalBlock(scope: !4080, file: !300, line: 269, column: 9)
!4091 = !DILocation(line: 269, column: 62, scope: !4090)
!4092 = !DILocation(line: 269, column: 9, scope: !4080)
!4093 = !DILocation(line: 272, column: 5, scope: !4080)
!4094 = !DILocation(line: 275, column: 22, scope: !4080)
!4095 = !DILocation(line: 275, column: 5, scope: !4080)
!4096 = !DILocation(line: 284, column: 5, scope: !4080)
!4097 = !DILocation(line: 286, column: 5, scope: !4080)
!4098 = !DILocation(line: 287, column: 1, scope: !4080)
!4099 = distinct !DISubprogram(name: "hal_uart_put_char", scope: !300, file: !300, line: 290, type: !4100, scopeLine: 291, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !299, retainedNodes: !4102)
!4100 = !DISubroutineType(types: !4101)
!4101 = !{null, !360, !352}
!4102 = !{!4103, !4104, !4105}
!4103 = !DILocalVariable(name: "uart_port", arg: 1, scope: !4099, file: !300, line: 290, type: !360)
!4104 = !DILocalVariable(name: "byte", arg: 2, scope: !4099, file: !300, line: 290, type: !352)
!4105 = !DILocalVariable(name: "int_no", scope: !4099, file: !300, line: 292, type: !2636)
!4106 = !DILocation(line: 0, scope: !4099)
!4107 = !DILocation(line: 292, column: 26, scope: !4099)
!4108 = !DILocation(line: 294, column: 16, scope: !4109)
!4109 = distinct !DILexicalBlock(scope: !4099, file: !300, line: 294, column: 9)
!4110 = !DILocation(line: 294, column: 9, scope: !4099)
!4111 = !DILocation(line: 295, column: 9, scope: !4112)
!4112 = distinct !DILexicalBlock(scope: !4109, file: !300, line: 294, column: 34)
!4113 = !DILocation(line: 296, column: 5, scope: !4112)
!4114 = !DILocation(line: 299, column: 1, scope: !4099)
!4115 = distinct !DISubprogram(name: "hal_uart_send_polling", scope: !300, file: !300, line: 302, type: !4116, scopeLine: 303, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !299, retainedNodes: !4118)
!4116 = !DISubroutineType(types: !4117)
!4117 = !{!92, !360, !2843, !92}
!4118 = !{!4119, !4120, !4121, !4122, !4123}
!4119 = !DILocalVariable(name: "uart_port", arg: 1, scope: !4115, file: !300, line: 302, type: !360)
!4120 = !DILocalVariable(name: "data", arg: 2, scope: !4115, file: !300, line: 302, type: !2843)
!4121 = !DILocalVariable(name: "size", arg: 3, scope: !4115, file: !300, line: 302, type: !92)
!4122 = !DILocalVariable(name: "int_no", scope: !4115, file: !300, line: 304, type: !2636)
!4123 = !DILocalVariable(name: "index", scope: !4115, file: !300, line: 305, type: !92)
!4124 = !DILocation(line: 0, scope: !4115)
!4125 = !DILocation(line: 304, column: 26, scope: !4115)
!4126 = !DILocation(line: 307, column: 14, scope: !4127)
!4127 = distinct !DILexicalBlock(scope: !4115, file: !300, line: 307, column: 9)
!4128 = !DILocation(line: 307, column: 9, scope: !4115)
!4129 = !DILocation(line: 313, column: 53, scope: !4130)
!4130 = distinct !DILexicalBlock(scope: !4131, file: !300, line: 312, column: 48)
!4131 = distinct !DILexicalBlock(scope: !4132, file: !300, line: 312, column: 9)
!4132 = distinct !DILexicalBlock(scope: !4133, file: !300, line: 312, column: 9)
!4133 = distinct !DILexicalBlock(scope: !4134, file: !300, line: 311, column: 33)
!4134 = distinct !DILexicalBlock(scope: !4115, file: !300, line: 311, column: 9)
!4135 = !DILocation(line: 313, column: 13, scope: !4130)
!4136 = !DILocation(line: 312, column: 44, scope: !4131)
!4137 = !DILocation(line: 312, column: 31, scope: !4131)
!4138 = !DILocation(line: 312, column: 9, scope: !4132)
!4139 = distinct !{!4139, !4138, !4140}
!4140 = !DILocation(line: 314, column: 9, scope: !4132)
!4141 = !DILocation(line: 318, column: 1, scope: !4115)
!4142 = distinct !DISubprogram(name: "hal_uart_send_dma", scope: !300, file: !300, line: 320, type: !4116, scopeLine: 321, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !299, retainedNodes: !4143)
!4143 = !{!4144, !4145, !4146, !4147, !4148, !4149}
!4144 = !DILocalVariable(name: "uart_port", arg: 1, scope: !4142, file: !300, line: 320, type: !360)
!4145 = !DILocalVariable(name: "data", arg: 2, scope: !4142, file: !300, line: 320, type: !2843)
!4146 = !DILocalVariable(name: "size", arg: 3, scope: !4142, file: !300, line: 320, type: !92)
!4147 = !DILocalVariable(name: "actual_space", scope: !4142, file: !300, line: 322, type: !92)
!4148 = !DILocalVariable(name: "send_size", scope: !4142, file: !300, line: 322, type: !92)
!4149 = !DILocalVariable(name: "ch", scope: !4142, file: !300, line: 323, type: !4150)
!4150 = !DIDerivedType(tag: DW_TAG_typedef, name: "DMA_VFIFO_CHANNEL", file: !112, line: 144, baseType: !111)
!4151 = !DILocation(line: 0, scope: !4142)
!4152 = !DILocation(line: 322, column: 5, scope: !4142)
!4153 = !DILocation(line: 328, column: 10, scope: !4154)
!4154 = distinct !DILexicalBlock(scope: !4142, file: !300, line: 328, column: 9)
!4155 = !DILocation(line: 328, column: 9, scope: !4142)
!4156 = !DILocation(line: 332, column: 15, scope: !4157)
!4157 = distinct !DILexicalBlock(scope: !4142, file: !300, line: 332, column: 9)
!4158 = !DILocation(line: 332, column: 24, scope: !4157)
!4159 = !DILocation(line: 335, column: 42, scope: !4160)
!4160 = distinct !DILexicalBlock(scope: !4142, file: !300, line: 335, column: 9)
!4161 = !DILocation(line: 335, column: 9, scope: !4142)
!4162 = !DILocation(line: 349, column: 30, scope: !4142)
!4163 = !DILocation(line: 349, column: 5, scope: !4142)
!4164 = !DILocation(line: 350, column: 9, scope: !4165)
!4165 = distinct !DILexicalBlock(scope: !4142, file: !300, line: 350, column: 9)
!4166 = !DILocation(line: 350, column: 22, scope: !4165)
!4167 = !DILocation(line: 355, column: 5, scope: !4142)
!4168 = !DILocation(line: 357, column: 22, scope: !4169)
!4169 = distinct !DILexicalBlock(scope: !4142, file: !300, line: 357, column: 9)
!4170 = !DILocation(line: 357, column: 19, scope: !4169)
!4171 = !DILocation(line: 357, column: 9, scope: !4142)
!4172 = !DILocation(line: 358, column: 14, scope: !4173)
!4173 = distinct !DILexicalBlock(scope: !4169, file: !300, line: 357, column: 36)
!4174 = !{i32 14, i32 18}
!4175 = !DILocation(line: 359, column: 9, scope: !4173)
!4176 = !DILocation(line: 360, column: 5, scope: !4173)
!4177 = !DILocation(line: 362, column: 1, scope: !4142)
!4178 = distinct !DISubprogram(name: "uart_channel_to_dma_channel", scope: !300, file: !300, line: 191, type: !4179, scopeLine: 192, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !299, retainedNodes: !4181)
!4179 = !DISubroutineType(types: !4180)
!4180 = !{!4150, !2636, !296}
!4181 = !{!4182, !4183, !4184}
!4182 = !DILocalVariable(name: "port", arg: 1, scope: !4178, file: !300, line: 191, type: !2636)
!4183 = !DILocalVariable(name: "is_rx", arg: 2, scope: !4178, file: !300, line: 191, type: !296)
!4184 = !DILocalVariable(name: "ch", scope: !4178, file: !300, line: 193, type: !4150)
!4185 = !DILocation(line: 0, scope: !4178)
!4186 = !DILocation(line: 195, column: 14, scope: !4187)
!4187 = distinct !DILexicalBlock(scope: !4178, file: !300, line: 195, column: 9)
!4188 = !DILocation(line: 195, column: 9, scope: !4178)
!4189 = !DILocation(line: 209, column: 5, scope: !4178)
!4190 = distinct !DISubprogram(name: "hal_uart_get_char", scope: !300, file: !300, line: 365, type: !4191, scopeLine: 366, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !299, retainedNodes: !4193)
!4191 = !DISubroutineType(types: !4192)
!4192 = !{!352, !360}
!4193 = !{!4194, !4195}
!4194 = !DILocalVariable(name: "uart_port", arg: 1, scope: !4190, file: !300, line: 365, type: !360)
!4195 = !DILocalVariable(name: "int_no", scope: !4190, file: !300, line: 367, type: !2636)
!4196 = !DILocation(line: 0, scope: !4190)
!4197 = !DILocation(line: 367, column: 26, scope: !4190)
!4198 = !DILocation(line: 369, column: 16, scope: !4199)
!4199 = distinct !DILexicalBlock(scope: !4190, file: !300, line: 369, column: 9)
!4200 = !DILocation(line: 369, column: 9, scope: !4190)
!4201 = !DILocation(line: 370, column: 22, scope: !4202)
!4202 = distinct !DILexicalBlock(scope: !4199, file: !300, line: 369, column: 33)
!4203 = !DILocation(line: 370, column: 9, scope: !4202)
!4204 = !DILocation(line: 0, scope: !4199)
!4205 = !DILocation(line: 375, column: 1, scope: !4190)
!4206 = distinct !DISubprogram(name: "hal_uart_get_char_unblocking", scope: !300, file: !300, line: 377, type: !4207, scopeLine: 378, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !299, retainedNodes: !4209)
!4207 = !DISubroutineType(types: !4208)
!4208 = !{!92, !360}
!4209 = !{!4210, !4211}
!4210 = !DILocalVariable(name: "uart_port", arg: 1, scope: !4206, file: !300, line: 377, type: !360)
!4211 = !DILocalVariable(name: "int_no", scope: !4206, file: !300, line: 379, type: !2636)
!4212 = !DILocation(line: 0, scope: !4206)
!4213 = !DILocation(line: 379, column: 26, scope: !4206)
!4214 = !DILocation(line: 381, column: 16, scope: !4215)
!4215 = distinct !DILexicalBlock(scope: !4206, file: !300, line: 381, column: 9)
!4216 = !DILocation(line: 381, column: 9, scope: !4206)
!4217 = !DILocation(line: 382, column: 16, scope: !4218)
!4218 = distinct !DILexicalBlock(scope: !4215, file: !300, line: 381, column: 33)
!4219 = !DILocation(line: 382, column: 9, scope: !4218)
!4220 = !DILocation(line: 0, scope: !4215)
!4221 = !DILocation(line: 387, column: 1, scope: !4206)
!4222 = distinct !DISubprogram(name: "hal_uart_receive_polling", scope: !300, file: !300, line: 390, type: !4223, scopeLine: 391, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !299, retainedNodes: !4225)
!4223 = !DISubroutineType(types: !4224)
!4224 = !{!92, !360, !400, !92}
!4225 = !{!4226, !4227, !4228, !4229, !4230}
!4226 = !DILocalVariable(name: "uart_port", arg: 1, scope: !4222, file: !300, line: 390, type: !360)
!4227 = !DILocalVariable(name: "buffer", arg: 2, scope: !4222, file: !300, line: 390, type: !400)
!4228 = !DILocalVariable(name: "size", arg: 3, scope: !4222, file: !300, line: 390, type: !92)
!4229 = !DILocalVariable(name: "int_no", scope: !4222, file: !300, line: 392, type: !2636)
!4230 = !DILocalVariable(name: "index", scope: !4222, file: !300, line: 393, type: !92)
!4231 = !DILocation(line: 0, scope: !4222)
!4232 = !DILocation(line: 392, column: 26, scope: !4222)
!4233 = !DILocation(line: 395, column: 16, scope: !4234)
!4234 = distinct !DILexicalBlock(scope: !4222, file: !300, line: 395, column: 9)
!4235 = !DILocation(line: 395, column: 9, scope: !4222)
!4236 = !DILocation(line: 401, column: 38, scope: !4237)
!4237 = distinct !DILexicalBlock(scope: !4238, file: !300, line: 400, column: 48)
!4238 = distinct !DILexicalBlock(scope: !4239, file: !300, line: 400, column: 9)
!4239 = distinct !DILexicalBlock(scope: !4240, file: !300, line: 400, column: 9)
!4240 = distinct !DILexicalBlock(scope: !4241, file: !300, line: 399, column: 33)
!4241 = distinct !DILexicalBlock(scope: !4222, file: !300, line: 399, column: 9)
!4242 = !DILocation(line: 401, column: 13, scope: !4237)
!4243 = !DILocation(line: 401, column: 27, scope: !4237)
!4244 = !DILocation(line: 400, column: 44, scope: !4238)
!4245 = !DILocation(line: 400, column: 31, scope: !4238)
!4246 = !DILocation(line: 400, column: 9, scope: !4239)
!4247 = distinct !{!4247, !4246, !4248}
!4248 = !DILocation(line: 402, column: 9, scope: !4239)
!4249 = !DILocation(line: 406, column: 1, scope: !4222)
!4250 = distinct !DISubprogram(name: "hal_uart_receive_dma", scope: !300, file: !300, line: 408, type: !4223, scopeLine: 409, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !299, retainedNodes: !4251)
!4251 = !{!4252, !4253, !4254, !4255, !4256, !4257}
!4252 = !DILocalVariable(name: "uart_port", arg: 1, scope: !4250, file: !300, line: 408, type: !360)
!4253 = !DILocalVariable(name: "buffer", arg: 2, scope: !4250, file: !300, line: 408, type: !400)
!4254 = !DILocalVariable(name: "size", arg: 3, scope: !4250, file: !300, line: 408, type: !92)
!4255 = !DILocalVariable(name: "actual_size", scope: !4250, file: !300, line: 410, type: !92)
!4256 = !DILocalVariable(name: "receive_size", scope: !4250, file: !300, line: 410, type: !92)
!4257 = !DILocalVariable(name: "ch", scope: !4250, file: !300, line: 411, type: !4150)
!4258 = !DILocation(line: 0, scope: !4250)
!4259 = !DILocation(line: 410, column: 5, scope: !4250)
!4260 = !DILocation(line: 413, column: 10, scope: !4261)
!4261 = distinct !DILexicalBlock(scope: !4250, file: !300, line: 413, column: 9)
!4262 = !DILocation(line: 413, column: 9, scope: !4250)
!4263 = !DILocation(line: 417, column: 17, scope: !4264)
!4264 = distinct !DILexicalBlock(scope: !4250, file: !300, line: 417, column: 9)
!4265 = !DILocation(line: 417, column: 26, scope: !4264)
!4266 = !DILocation(line: 421, column: 30, scope: !4250)
!4267 = !DILocation(line: 421, column: 5, scope: !4250)
!4268 = !DILocation(line: 422, column: 9, scope: !4269)
!4269 = distinct !DILexicalBlock(scope: !4250, file: !300, line: 422, column: 9)
!4270 = !DILocation(line: 422, column: 21, scope: !4269)
!4271 = !DILocation(line: 427, column: 5, scope: !4250)
!4272 = !DILocation(line: 429, column: 25, scope: !4273)
!4273 = distinct !DILexicalBlock(scope: !4250, file: !300, line: 429, column: 9)
!4274 = !DILocation(line: 429, column: 22, scope: !4273)
!4275 = !DILocation(line: 429, column: 9, scope: !4250)
!4276 = !DILocation(line: 430, column: 14, scope: !4277)
!4277 = distinct !DILexicalBlock(scope: !4273, file: !300, line: 429, column: 38)
!4278 = !DILocation(line: 431, column: 9, scope: !4277)
!4279 = !DILocation(line: 432, column: 5, scope: !4277)
!4280 = !DILocation(line: 435, column: 1, scope: !4250)
!4281 = distinct !DISubprogram(name: "hal_uart_get_available_send_space", scope: !300, file: !300, line: 438, type: !4207, scopeLine: 439, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !299, retainedNodes: !4282)
!4282 = !{!4283, !4284}
!4283 = !DILocalVariable(name: "uart_port", arg: 1, scope: !4281, file: !300, line: 438, type: !360)
!4284 = !DILocalVariable(name: "length", scope: !4281, file: !300, line: 440, type: !92)
!4285 = !DILocation(line: 0, scope: !4281)
!4286 = !DILocation(line: 440, column: 5, scope: !4281)
!4287 = !DILocation(line: 440, column: 14, scope: !4281)
!4288 = !DILocation(line: 442, column: 10, scope: !4289)
!4289 = distinct !DILexicalBlock(scope: !4281, file: !300, line: 442, column: 9)
!4290 = !DILocation(line: 442, column: 9, scope: !4281)
!4291 = !DILocation(line: 446, column: 30, scope: !4281)
!4292 = !DILocation(line: 446, column: 5, scope: !4281)
!4293 = !DILocation(line: 447, column: 12, scope: !4281)
!4294 = !DILocation(line: 447, column: 5, scope: !4281)
!4295 = !DILocation(line: 448, column: 1, scope: !4281)
!4296 = distinct !DISubprogram(name: "hal_uart_get_available_receive_bytes", scope: !300, file: !300, line: 451, type: !4207, scopeLine: 452, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !299, retainedNodes: !4297)
!4297 = !{!4298, !4299}
!4298 = !DILocalVariable(name: "uart_port", arg: 1, scope: !4296, file: !300, line: 451, type: !360)
!4299 = !DILocalVariable(name: "length", scope: !4296, file: !300, line: 453, type: !92)
!4300 = !DILocation(line: 0, scope: !4296)
!4301 = !DILocation(line: 453, column: 5, scope: !4296)
!4302 = !DILocation(line: 453, column: 14, scope: !4296)
!4303 = !DILocation(line: 455, column: 10, scope: !4304)
!4304 = distinct !DILexicalBlock(scope: !4296, file: !300, line: 455, column: 9)
!4305 = !DILocation(line: 455, column: 9, scope: !4296)
!4306 = !DILocation(line: 459, column: 30, scope: !4296)
!4307 = !DILocation(line: 459, column: 5, scope: !4296)
!4308 = !DILocation(line: 461, column: 12, scope: !4296)
!4309 = !DILocation(line: 461, column: 5, scope: !4296)
!4310 = !DILocation(line: 462, column: 1, scope: !4296)
!4311 = distinct !DISubprogram(name: "hal_uart_register_callback", scope: !300, file: !300, line: 543, type: !4312, scopeLine: 546, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !299, retainedNodes: !4314)
!4312 = !DISubroutineType(types: !4313)
!4313 = !{!3939, !360, !388, !153}
!4314 = !{!4315, !4316, !4317, !4318}
!4315 = !DILocalVariable(name: "uart_port", arg: 1, scope: !4311, file: !300, line: 543, type: !360)
!4316 = !DILocalVariable(name: "user_callback", arg: 2, scope: !4311, file: !300, line: 544, type: !388)
!4317 = !DILocalVariable(name: "user_data", arg: 3, scope: !4311, file: !300, line: 545, type: !153)
!4318 = !DILocalVariable(name: "ch", scope: !4311, file: !300, line: 547, type: !4150)
!4319 = !DILocation(line: 0, scope: !4311)
!4320 = !DILocation(line: 549, column: 10, scope: !4321)
!4321 = distinct !DILexicalBlock(scope: !4311, file: !300, line: 549, column: 9)
!4322 = !DILocation(line: 549, column: 9, scope: !4311)
!4323 = !DILocation(line: 556, column: 53, scope: !4311)
!4324 = !DILocation(line: 556, column: 62, scope: !4311)
!4325 = !DILocation(line: 557, column: 53, scope: !4311)
!4326 = !DILocation(line: 557, column: 63, scope: !4311)
!4327 = !DILocation(line: 558, column: 37, scope: !4311)
!4328 = !DILocation(line: 558, column: 54, scope: !4311)
!4329 = !DILocation(line: 560, column: 39, scope: !4311)
!4330 = !DILocation(line: 561, column: 39, scope: !4311)
!4331 = !DILocation(line: 560, column: 5, scope: !4311)
!4332 = !DILocation(line: 562, column: 5, scope: !4311)
!4333 = !DILocation(line: 564, column: 44, scope: !4334)
!4334 = distinct !DILexicalBlock(scope: !4311, file: !300, line: 564, column: 9)
!4335 = !DILocation(line: 564, column: 9, scope: !4311)
!4336 = !DILocation(line: 565, column: 9, scope: !4337)
!4337 = distinct !DILexicalBlock(scope: !4334, file: !300, line: 564, column: 59)
!4338 = !DILocation(line: 566, column: 5, scope: !4337)
!4339 = !DILocation(line: 567, column: 9, scope: !4340)
!4340 = distinct !DILexicalBlock(scope: !4334, file: !300, line: 566, column: 12)
!4341 = !DILocation(line: 569, column: 10, scope: !4311)
!4342 = !DILocation(line: 570, column: 5, scope: !4311)
!4343 = !DILocation(line: 578, column: 5, scope: !4311)
!4344 = !DILocation(line: 579, column: 1, scope: !4311)
!4345 = !DILocation(line: 0, scope: !356)
!4346 = !DILocation(line: 539, column: 12, scope: !356)
!4347 = !DILocation(line: 539, column: 5, scope: !356)
!4348 = distinct !DISubprogram(name: "hal_uart_send_callback0", scope: !300, file: !300, line: 511, type: !75, scopeLine: 512, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !299, retainedNodes: !4349)
!4349 = !{!4350}
!4350 = !DILocalVariable(name: "callback_context", scope: !4351, file: !300, line: 514, type: !4353)
!4351 = distinct !DILexicalBlock(scope: !4352, file: !300, line: 513, column: 60)
!4352 = distinct !DILexicalBlock(scope: !4348, file: !300, line: 513, column: 9)
!4353 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !384, size: 32)
!4354 = !DILocation(line: 513, column: 42, scope: !4352)
!4355 = !DILocation(line: 513, column: 9, scope: !4348)
!4356 = !DILocation(line: 515, column: 39, scope: !4357)
!4357 = distinct !DILexicalBlock(scope: !4351, file: !300, line: 515, column: 13)
!4358 = !DILocation(line: 515, column: 18, scope: !4357)
!4359 = !DILocation(line: 515, column: 13, scope: !4351)
!4360 = !DILocation(line: 516, column: 89, scope: !4361)
!4361 = distinct !DILexicalBlock(scope: !4357, file: !300, line: 515, column: 49)
!4362 = !DILocation(line: 516, column: 13, scope: !4361)
!4363 = !DILocation(line: 517, column: 9, scope: !4361)
!4364 = !DILocation(line: 519, column: 32, scope: !4348)
!4365 = !DILocation(line: 519, column: 5, scope: !4348)
!4366 = !DILocation(line: 520, column: 1, scope: !4348)
!4367 = distinct !DISubprogram(name: "hal_uart_send_callback1", scope: !300, file: !300, line: 523, type: !75, scopeLine: 524, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !299, retainedNodes: !4368)
!4368 = !{!4369}
!4369 = !DILocalVariable(name: "callback_context", scope: !4370, file: !300, line: 526, type: !4353)
!4370 = distinct !DILexicalBlock(scope: !4371, file: !300, line: 525, column: 60)
!4371 = distinct !DILexicalBlock(scope: !4367, file: !300, line: 525, column: 9)
!4372 = !DILocation(line: 525, column: 42, scope: !4371)
!4373 = !DILocation(line: 525, column: 9, scope: !4367)
!4374 = !DILocation(line: 527, column: 39, scope: !4375)
!4375 = distinct !DILexicalBlock(scope: !4370, file: !300, line: 527, column: 13)
!4376 = !DILocation(line: 527, column: 18, scope: !4375)
!4377 = !DILocation(line: 527, column: 13, scope: !4370)
!4378 = !DILocation(line: 528, column: 89, scope: !4379)
!4379 = distinct !DILexicalBlock(scope: !4375, file: !300, line: 527, column: 49)
!4380 = !DILocation(line: 528, column: 13, scope: !4379)
!4381 = !DILocation(line: 529, column: 9, scope: !4379)
!4382 = !DILocation(line: 531, column: 32, scope: !4367)
!4383 = !DILocation(line: 531, column: 5, scope: !4367)
!4384 = !DILocation(line: 532, column: 1, scope: !4367)
!4385 = distinct !DISubprogram(name: "hal_uart_check_irq_disable", scope: !300, file: !300, line: 464, type: !4386, scopeLine: 465, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !299, retainedNodes: !4388)
!4386 = !DISubroutineType(types: !4387)
!4387 = !{null, !2636, !296}
!4388 = !{!4389, !4390, !4391, !4392, !4393, !4395}
!4389 = !DILocalVariable(name: "uart_port", arg: 1, scope: !4385, file: !300, line: 464, type: !2636)
!4390 = !DILocalVariable(name: "is_rx", arg: 2, scope: !4385, file: !300, line: 464, type: !296)
!4391 = !DILocalVariable(name: "avail_size", scope: !4385, file: !300, line: 466, type: !92)
!4392 = !DILocalVariable(name: "avail_space", scope: !4385, file: !300, line: 466, type: !92)
!4393 = !DILocalVariable(name: "dma_config", scope: !4385, file: !300, line: 467, type: !4394)
!4394 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !396, size: 32)
!4395 = !DILocalVariable(name: "ch", scope: !4385, file: !300, line: 468, type: !4150)
!4396 = !DILocation(line: 0, scope: !4385)
!4397 = !DILocation(line: 466, column: 5, scope: !4385)
!4398 = !DILocation(line: 471, column: 9, scope: !4385)
!4399 = !DILocation(line: 472, column: 9, scope: !4400)
!4400 = distinct !DILexicalBlock(scope: !4401, file: !300, line: 471, column: 16)
!4401 = distinct !DILexicalBlock(scope: !4385, file: !300, line: 471, column: 9)
!4402 = !DILocation(line: 473, column: 13, scope: !4403)
!4403 = distinct !DILexicalBlock(scope: !4400, file: !300, line: 473, column: 13)
!4404 = !DILocation(line: 473, column: 39, scope: !4403)
!4405 = !DILocation(line: 473, column: 24, scope: !4403)
!4406 = !DILocation(line: 473, column: 13, scope: !4400)
!4407 = !DILocation(line: 478, column: 9, scope: !4408)
!4408 = distinct !DILexicalBlock(scope: !4401, file: !300, line: 477, column: 12)
!4409 = !DILocation(line: 479, column: 13, scope: !4410)
!4410 = distinct !DILexicalBlock(scope: !4408, file: !300, line: 479, column: 13)
!4411 = !DILocation(line: 479, column: 40, scope: !4410)
!4412 = !DILocation(line: 479, column: 77, scope: !4410)
!4413 = !DILocation(line: 479, column: 63, scope: !4410)
!4414 = !DILocation(line: 479, column: 25, scope: !4410)
!4415 = !DILocation(line: 479, column: 13, scope: !4408)
!4416 = !DILocation(line: 0, scope: !4401)
!4417 = !DILocation(line: 484, column: 1, scope: !4385)
!4418 = distinct !DISubprogram(name: "hal_uart_receive_callback0", scope: !300, file: !300, line: 486, type: !75, scopeLine: 487, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !299, retainedNodes: !4419)
!4419 = !{!4420}
!4420 = !DILocalVariable(name: "callback_context", scope: !4421, file: !300, line: 490, type: !4353)
!4421 = distinct !DILexicalBlock(scope: !4422, file: !300, line: 489, column: 70)
!4422 = distinct !DILexicalBlock(scope: !4418, file: !300, line: 488, column: 9)
!4423 = !DILocation(line: 488, column: 43, scope: !4422)
!4424 = !DILocation(line: 488, column: 61, scope: !4422)
!4425 = !DILocation(line: 489, column: 14, scope: !4422)
!4426 = !DILocation(line: 489, column: 63, scope: !4422)
!4427 = !DILocation(line: 488, column: 9, scope: !4418)
!4428 = !DILocation(line: 491, column: 39, scope: !4429)
!4429 = distinct !DILexicalBlock(scope: !4421, file: !300, line: 491, column: 13)
!4430 = !DILocation(line: 491, column: 18, scope: !4429)
!4431 = !DILocation(line: 491, column: 13, scope: !4421)
!4432 = !DILocation(line: 492, column: 88, scope: !4433)
!4433 = distinct !DILexicalBlock(scope: !4429, file: !300, line: 491, column: 49)
!4434 = !DILocation(line: 492, column: 13, scope: !4433)
!4435 = !DILocation(line: 493, column: 9, scope: !4433)
!4436 = !DILocation(line: 495, column: 32, scope: !4418)
!4437 = !DILocation(line: 495, column: 5, scope: !4418)
!4438 = !DILocation(line: 496, column: 1, scope: !4418)
!4439 = distinct !DISubprogram(name: "hal_uart_receive_callback1", scope: !300, file: !300, line: 499, type: !75, scopeLine: 500, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !299, retainedNodes: !4440)
!4440 = !{!4441}
!4441 = !DILocalVariable(name: "callback_context", scope: !4442, file: !300, line: 503, type: !4353)
!4442 = distinct !DILexicalBlock(scope: !4443, file: !300, line: 502, column: 70)
!4443 = distinct !DILexicalBlock(scope: !4439, file: !300, line: 501, column: 9)
!4444 = !DILocation(line: 501, column: 43, scope: !4443)
!4445 = !DILocation(line: 501, column: 61, scope: !4443)
!4446 = !DILocation(line: 502, column: 14, scope: !4443)
!4447 = !DILocation(line: 502, column: 63, scope: !4443)
!4448 = !DILocation(line: 501, column: 9, scope: !4439)
!4449 = !DILocation(line: 504, column: 39, scope: !4450)
!4450 = distinct !DILexicalBlock(scope: !4442, file: !300, line: 504, column: 13)
!4451 = !DILocation(line: 504, column: 18, scope: !4450)
!4452 = !DILocation(line: 504, column: 13, scope: !4442)
!4453 = !DILocation(line: 505, column: 88, scope: !4454)
!4454 = distinct !DILexicalBlock(scope: !4450, file: !300, line: 504, column: 49)
!4455 = !DILocation(line: 505, column: 13, scope: !4454)
!4456 = !DILocation(line: 506, column: 9, scope: !4454)
!4457 = !DILocation(line: 508, column: 32, scope: !4439)
!4458 = !DILocation(line: 508, column: 5, scope: !4439)
!4459 = !DILocation(line: 509, column: 1, scope: !4439)
!4460 = distinct !DISubprogram(name: "hal_uart_set_baudrate", scope: !300, file: !300, line: 582, type: !4461, scopeLine: 583, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !299, retainedNodes: !4463)
!4461 = !DISubroutineType(types: !4462)
!4462 = !{!3939, !360, !375}
!4463 = !{!4464, !4465}
!4464 = !DILocalVariable(name: "uart_port", arg: 1, scope: !4460, file: !300, line: 582, type: !360)
!4465 = !DILocalVariable(name: "baudrate", arg: 2, scope: !4460, file: !300, line: 582, type: !375)
!4466 = !DILocation(line: 0, scope: !4460)
!4467 = !DILocation(line: 584, column: 11, scope: !4468)
!4468 = distinct !DILexicalBlock(scope: !4460, file: !300, line: 584, column: 9)
!4469 = !DILocation(line: 584, column: 46, scope: !4468)
!4470 = !DILocation(line: 588, column: 37, scope: !4460)
!4471 = !DILocation(line: 588, column: 50, scope: !4460)
!4472 = !DILocation(line: 588, column: 59, scope: !4460)
!4473 = !DILocation(line: 589, column: 12, scope: !4460)
!4474 = !DILocation(line: 589, column: 5, scope: !4460)
!4475 = !DILocation(line: 590, column: 1, scope: !4460)
!4476 = distinct !DISubprogram(name: "hal_uart_set_dma", scope: !300, file: !300, line: 608, type: !4477, scopeLine: 609, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !299, retainedNodes: !4481)
!4477 = !DISubroutineType(types: !4478)
!4478 = !{!3939, !360, !4479}
!4479 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4480, size: 32)
!4480 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !396)
!4481 = !{!4482, !4483}
!4482 = !DILocalVariable(name: "uart_port", arg: 1, scope: !4476, file: !300, line: 608, type: !360)
!4483 = !DILocalVariable(name: "uart_dma_config", arg: 2, scope: !4476, file: !300, line: 608, type: !4479)
!4484 = !DILocation(line: 0, scope: !4476)
!4485 = !DILocation(line: 610, column: 10, scope: !4486)
!4486 = distinct !DILexicalBlock(scope: !4476, file: !300, line: 610, column: 9)
!4487 = !DILocation(line: 610, column: 9, scope: !4476)
!4488 = !DILocation(line: 614, column: 10, scope: !4489)
!4489 = distinct !DILexicalBlock(scope: !4476, file: !300, line: 614, column: 9)
!4490 = !DILocation(line: 614, column: 9, scope: !4476)
!4491 = !DILocation(line: 618, column: 37, scope: !4476)
!4492 = !DILocation(line: 618, column: 56, scope: !4476)
!4493 = !DILocation(line: 619, column: 45, scope: !4476)
!4494 = !DILocation(line: 619, column: 12, scope: !4476)
!4495 = !DILocation(line: 620, column: 12, scope: !4476)
!4496 = !DILocation(line: 619, column: 5, scope: !4476)
!4497 = !DILocation(line: 621, column: 5, scope: !4476)
!4498 = !DILocation(line: 622, column: 5, scope: !4476)
!4499 = !DILocation(line: 623, column: 33, scope: !4476)
!4500 = !DILocation(line: 624, column: 50, scope: !4476)
!4501 = !DILocation(line: 625, column: 50, scope: !4476)
!4502 = !DILocation(line: 626, column: 50, scope: !4476)
!4503 = !DILocation(line: 627, column: 50, scope: !4476)
!4504 = !DILocation(line: 628, column: 33, scope: !4476)
!4505 = !DILocation(line: 623, column: 5, scope: !4476)
!4506 = !DILocation(line: 630, column: 50, scope: !4476)
!4507 = !DILocation(line: 631, column: 50, scope: !4476)
!4508 = !DILocation(line: 632, column: 50, scope: !4476)
!4509 = !DILocation(line: 629, column: 5, scope: !4476)
!4510 = !DILocation(line: 634, column: 5, scope: !4476)
!4511 = !DILocation(line: 635, column: 1, scope: !4476)
!4512 = distinct !DISubprogram(name: "hal_uart_is_dma_config_valid", scope: !300, file: !300, line: 112, type: !4513, scopeLine: 113, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !299, retainedNodes: !4515)
!4513 = !DISubroutineType(types: !4514)
!4514 = !{!296, !4479}
!4515 = !{!4516}
!4516 = !DILocalVariable(name: "dma_config", arg: 1, scope: !4512, file: !300, line: 112, type: !4479)
!4517 = !DILocation(line: 0, scope: !4512)
!4518 = !DILocation(line: 114, column: 14, scope: !4519)
!4519 = distinct !DILexicalBlock(scope: !4512, file: !300, line: 114, column: 9)
!4520 = !DILocation(line: 114, column: 9, scope: !4512)
!4521 = !DILocation(line: 117, column: 29, scope: !4522)
!4522 = distinct !DILexicalBlock(scope: !4512, file: !300, line: 117, column: 9)
!4523 = !DILocation(line: 117, column: 14, scope: !4522)
!4524 = !DILocation(line: 117, column: 9, scope: !4512)
!4525 = !DILocation(line: 120, column: 21, scope: !4526)
!4526 = distinct !DILexicalBlock(scope: !4512, file: !300, line: 120, column: 9)
!4527 = !DILocation(line: 120, column: 61, scope: !4526)
!4528 = !DILocation(line: 120, column: 47, scope: !4526)
!4529 = !DILocation(line: 120, column: 9, scope: !4512)
!4530 = !DILocation(line: 123, column: 61, scope: !4531)
!4531 = distinct !DILexicalBlock(scope: !4512, file: !300, line: 123, column: 9)
!4532 = !DILocation(line: 123, column: 47, scope: !4531)
!4533 = !DILocation(line: 123, column: 9, scope: !4512)
!4534 = !DILocation(line: 126, column: 29, scope: !4535)
!4535 = distinct !DILexicalBlock(scope: !4512, file: !300, line: 126, column: 9)
!4536 = !DILocation(line: 126, column: 14, scope: !4535)
!4537 = !DILocation(line: 126, column: 9, scope: !4512)
!4538 = !DILocation(line: 129, column: 21, scope: !4539)
!4539 = distinct !DILexicalBlock(scope: !4512, file: !300, line: 129, column: 9)
!4540 = !DILocation(line: 129, column: 58, scope: !4539)
!4541 = !DILocation(line: 129, column: 44, scope: !4539)
!4542 = !DILocation(line: 129, column: 9, scope: !4512)
!4543 = !DILocation(line: 136, column: 1, scope: !4512)
!4544 = distinct !DISubprogram(name: "hal_uart_translate_timeout", scope: !300, file: !300, line: 182, type: !3830, scopeLine: 183, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !299, retainedNodes: !4545)
!4545 = !{!4546, !4547}
!4546 = !DILocalVariable(name: "timeout_us", arg: 1, scope: !4544, file: !300, line: 182, type: !92)
!4547 = !DILocalVariable(name: "ticks_per_us", scope: !4544, file: !300, line: 184, type: !92)
!4548 = !DILocation(line: 0, scope: !4544)
!4549 = !DILocation(line: 186, column: 20, scope: !4544)
!4550 = !DILocation(line: 186, column: 39, scope: !4544)
!4551 = !DILocation(line: 188, column: 25, scope: !4544)
!4552 = !DILocation(line: 188, column: 5, scope: !4544)
!4553 = distinct !DISubprogram(name: "hal_uart_set_hardware_flowcontrol", scope: !300, file: !300, line: 637, type: !4081, scopeLine: 638, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !299, retainedNodes: !4554)
!4554 = !{!4555, !4556}
!4555 = !DILocalVariable(name: "uart_port", arg: 1, scope: !4553, file: !300, line: 637, type: !360)
!4556 = !DILocalVariable(name: "int_no", scope: !4553, file: !300, line: 639, type: !2636)
!4557 = !DILocation(line: 0, scope: !4553)
!4558 = !DILocation(line: 641, column: 10, scope: !4559)
!4559 = distinct !DILexicalBlock(scope: !4553, file: !300, line: 641, column: 9)
!4560 = !DILocation(line: 641, column: 9, scope: !4553)
!4561 = !DILocation(line: 645, column: 14, scope: !4553)
!4562 = !DILocation(line: 646, column: 5, scope: !4553)
!4563 = !DILocation(line: 648, column: 5, scope: !4553)
!4564 = !DILocation(line: 649, column: 1, scope: !4553)
!4565 = distinct !DISubprogram(name: "hal_uart_set_software_flowcontrol", scope: !300, file: !300, line: 651, type: !4566, scopeLine: 655, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !299, retainedNodes: !4568)
!4566 = !DISubroutineType(types: !4567)
!4567 = !{!3939, !360, !183, !183, !183}
!4568 = !{!4569, !4570, !4571, !4572, !4573}
!4569 = !DILocalVariable(name: "uart_port", arg: 1, scope: !4565, file: !300, line: 651, type: !360)
!4570 = !DILocalVariable(name: "xon", arg: 2, scope: !4565, file: !300, line: 652, type: !183)
!4571 = !DILocalVariable(name: "xoff", arg: 3, scope: !4565, file: !300, line: 653, type: !183)
!4572 = !DILocalVariable(name: "escape_character", arg: 4, scope: !4565, file: !300, line: 654, type: !183)
!4573 = !DILocalVariable(name: "int_no", scope: !4565, file: !300, line: 656, type: !2636)
!4574 = !DILocation(line: 0, scope: !4565)
!4575 = !DILocation(line: 658, column: 10, scope: !4576)
!4576 = distinct !DILexicalBlock(scope: !4565, file: !300, line: 658, column: 9)
!4577 = !DILocation(line: 658, column: 9, scope: !4565)
!4578 = !DILocation(line: 662, column: 14, scope: !4565)
!4579 = !DILocation(line: 663, column: 5, scope: !4565)
!4580 = !DILocation(line: 665, column: 5, scope: !4565)
!4581 = !DILocation(line: 666, column: 1, scope: !4565)
!4582 = distinct !DISubprogram(name: "hal_uart_disable_flowcontrol", scope: !300, file: !300, line: 668, type: !4081, scopeLine: 669, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !299, retainedNodes: !4583)
!4583 = !{!4584, !4585}
!4584 = !DILocalVariable(name: "uart_port", arg: 1, scope: !4582, file: !300, line: 668, type: !360)
!4585 = !DILocalVariable(name: "int_no", scope: !4582, file: !300, line: 670, type: !2636)
!4586 = !DILocation(line: 0, scope: !4582)
!4587 = !DILocation(line: 672, column: 10, scope: !4588)
!4588 = distinct !DILexicalBlock(scope: !4582, file: !300, line: 672, column: 9)
!4589 = !DILocation(line: 672, column: 9, scope: !4582)
!4590 = !DILocation(line: 676, column: 14, scope: !4582)
!4591 = !DILocation(line: 677, column: 5, scope: !4582)
!4592 = !DILocation(line: 679, column: 5, scope: !4582)
!4593 = !DILocation(line: 680, column: 1, scope: !4582)
!4594 = distinct !DISubprogram(name: "hal_uart_set_dma_timeout", scope: !300, file: !300, line: 683, type: !4595, scopeLine: 684, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !299, retainedNodes: !4597)
!4595 = !DISubroutineType(types: !4596)
!4596 = !{!3939, !360, !92}
!4597 = !{!4598, !4599}
!4598 = !DILocalVariable(name: "uart_port", arg: 1, scope: !4594, file: !300, line: 683, type: !360)
!4599 = !DILocalVariable(name: "timeout", arg: 2, scope: !4594, file: !300, line: 683, type: !92)
!4600 = !DILocation(line: 0, scope: !4594)
!4601 = !DILocation(line: 685, column: 10, scope: !4602)
!4602 = distinct !DILexicalBlock(scope: !4594, file: !300, line: 685, column: 9)
!4603 = !DILocation(line: 685, column: 9, scope: !4594)
!4604 = !DILocation(line: 689, column: 19, scope: !4605)
!4605 = distinct !DILexicalBlock(scope: !4594, file: !300, line: 689, column: 9)
!4606 = !DILocation(line: 0, scope: !4605)
!4607 = !DILocation(line: 696, column: 1, scope: !4594)
!4608 = distinct !DISubprogram(name: "__io_putchar", scope: !410, file: !410, line: 54, type: !4609, scopeLine: 58, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !409, retainedNodes: !4611)
!4609 = !DISubroutineType(types: !4610)
!4610 = !{!13, !13}
!4611 = !{!4612}
!4612 = !DILocalVariable(name: "ch", arg: 1, scope: !4608, file: !410, line: 54, type: !13)
!4613 = !DILocation(line: 0, scope: !4608)
!4614 = !DILocation(line: 61, column: 35, scope: !4608)
!4615 = !DILocation(line: 61, column: 5, scope: !4608)
!4616 = !DILocation(line: 62, column: 5, scope: !4608)
!4617 = distinct !DISubprogram(name: "main", scope: !410, file: !410, line: 216, type: !2612, scopeLine: 217, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !409, retainedNodes: !1158)
!4618 = !DILocation(line: 219, column: 5, scope: !4617)
!4619 = !DILocation(line: 223, column: 5, scope: !4617)
!4620 = !DILocation(line: 319, column: 3, scope: !4621, inlinedAt: !4622)
!4621 = distinct !DISubprogram(name: "__enable_irq", scope: !2058, file: !2058, line: 317, type: !75, scopeLine: 318, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !409, retainedNodes: !1158)
!4622 = distinct !DILocation(line: 226, column: 5, scope: !4617)
!4623 = !{i64 511223}
!4624 = !DILocation(line: 496, column: 3, scope: !4625, inlinedAt: !4626)
!4625 = distinct !DISubprogram(name: "__enable_fault_irq", scope: !2058, file: !2058, line: 494, type: !75, scopeLine: 495, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !409, retainedNodes: !1158)
!4626 = distinct !DILocation(line: 227, column: 5, scope: !4617)
!4627 = !{i64 515498}
!4628 = !DILocation(line: 230, column: 5, scope: !4617)
!4629 = !DILocation(line: 233, column: 5, scope: !4617)
!4630 = !DILocation(line: 234, column: 5, scope: !4617)
!4631 = !DILocation(line: 236, column: 5, scope: !4617)
!4632 = !DILocation(line: 238, column: 5, scope: !4617)
!4633 = distinct !{!4633, !4632, !4634}
!4634 = !DILocation(line: 238, column: 14, scope: !4617)
!4635 = distinct !DISubprogram(name: "SystemClock_Config", scope: !410, file: !410, line: 92, type: !75, scopeLine: 93, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !409, retainedNodes: !1158)
!4636 = !DILocation(line: 94, column: 5, scope: !4635)
!4637 = !DILocation(line: 95, column: 1, scope: !4635)
!4638 = distinct !DISubprogram(name: "prvSetupHardware", scope: !410, file: !410, line: 102, type: !75, scopeLine: 103, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !409, retainedNodes: !1158)
!4639 = !DILocation(line: 105, column: 5, scope: !4638)
!4640 = !DILocation(line: 106, column: 1, scope: !4638)
!4641 = distinct !DISubprogram(name: "hal_gpt_interrupt_repeat_mode_example", scope: !410, file: !410, line: 183, type: !75, scopeLine: 184, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !409, retainedNodes: !4642)
!4642 = !{!4643, !4644, !4645}
!4643 = !DILocalVariable(name: "ret", scope: !4641, file: !410, line: 185, type: !452)
!4644 = !DILocalVariable(name: "time", scope: !4641, file: !410, line: 186, type: !92)
!4645 = !DILocalVariable(name: "count", scope: !4641, file: !410, line: 186, type: !92)
!4646 = !DILocation(line: 186, column: 5, scope: !4641)
!4647 = !DILocation(line: 188, column: 5, scope: !4641)
!4648 = !DILocation(line: 189, column: 14, scope: !4641)
!4649 = !DILocation(line: 0, scope: !4641)
!4650 = !DILocation(line: 193, column: 11, scope: !4641)
!4651 = !DILocation(line: 194, column: 13, scope: !4652)
!4652 = distinct !DILexicalBlock(scope: !4641, file: !410, line: 194, column: 9)
!4653 = !DILocation(line: 194, column: 9, scope: !4641)
!4654 = !DILocation(line: 195, column: 9, scope: !4655)
!4655 = distinct !DILexicalBlock(scope: !4652, file: !410, line: 194, column: 35)
!4656 = !DILocation(line: 196, column: 9, scope: !4655)
!4657 = !DILocation(line: 200, column: 37, scope: !4641)
!4658 = !DILocation(line: 200, column: 11, scope: !4641)
!4659 = !DILocation(line: 201, column: 13, scope: !4660)
!4660 = distinct !DILexicalBlock(scope: !4641, file: !410, line: 201, column: 9)
!4661 = !DILocation(line: 201, column: 9, scope: !4641)
!4662 = !DILocation(line: 202, column: 9, scope: !4663)
!4663 = distinct !DILexicalBlock(scope: !4660, file: !410, line: 201, column: 35)
!4664 = !DILocation(line: 203, column: 24, scope: !4663)
!4665 = !DILocation(line: 203, column: 9, scope: !4663)
!4666 = !DILocation(line: 204, column: 9, scope: !4663)
!4667 = !DILocation(line: 208, column: 34, scope: !4641)
!4668 = !DILocation(line: 208, column: 11, scope: !4641)
!4669 = !DILocation(line: 209, column: 13, scope: !4670)
!4670 = distinct !DILexicalBlock(scope: !4641, file: !410, line: 209, column: 9)
!4671 = !DILocation(line: 209, column: 9, scope: !4641)
!4672 = !DILocation(line: 210, column: 9, scope: !4673)
!4673 = distinct !DILexicalBlock(scope: !4670, file: !410, line: 209, column: 35)
!4674 = !DILocation(line: 211, column: 9, scope: !4673)
!4675 = !DILocation(line: 213, column: 5, scope: !4641)
!4676 = !DILocation(line: 214, column: 1, scope: !4641)
!4677 = !DILocation(line: 0, scope: !447)
!4678 = !DILocation(line: 145, column: 19, scope: !447)
!4679 = !DILocation(line: 146, column: 23, scope: !4680)
!4680 = distinct !DILexicalBlock(scope: !447, file: !410, line: 146, column: 9)
!4681 = !DILocation(line: 146, column: 9, scope: !447)
!4682 = !DILocation(line: 147, column: 24, scope: !4683)
!4683 = distinct !DILexicalBlock(scope: !4680, file: !410, line: 146, column: 29)
!4684 = !DILocation(line: 148, column: 40, scope: !4683)
!4685 = !DILocation(line: 149, column: 19, scope: !4683)
!4686 = !DILocation(line: 148, column: 38, scope: !4683)
!4687 = !DILocation(line: 150, column: 34, scope: !4688)
!4688 = distinct !DILexicalBlock(scope: !4683, file: !410, line: 150, column: 13)
!4689 = !DILocation(line: 151, column: 32, scope: !4690)
!4690 = distinct !DILexicalBlock(scope: !4688, file: !410, line: 150, column: 58)
!4691 = !DILocation(line: 151, column: 13, scope: !4690)
!4692 = !DILocation(line: 152, column: 28, scope: !4690)
!4693 = !DILocation(line: 152, column: 13, scope: !4690)
!4694 = !DILocation(line: 153, column: 79, scope: !4690)
!4695 = !DILocation(line: 153, column: 99, scope: !4690)
!4696 = !{i32 0, i32 131072001}
!4697 = !DILocation(line: 153, column: 13, scope: !4690)
!4698 = !DILocation(line: 154, column: 13, scope: !4690)
!4699 = !DILocation(line: 156, column: 13, scope: !4690)
!4700 = !DILocation(line: 157, column: 13, scope: !4690)
!4701 = !DILocation(line: 160, column: 34, scope: !4702)
!4702 = distinct !DILexicalBlock(scope: !4680, file: !410, line: 159, column: 12)
!4703 = !DILocation(line: 160, column: 15, scope: !4702)
!4704 = !DILocation(line: 161, column: 17, scope: !4705)
!4705 = distinct !DILexicalBlock(scope: !4702, file: !410, line: 161, column: 13)
!4706 = !DILocation(line: 161, column: 13, scope: !4702)
!4707 = !DILocation(line: 162, column: 13, scope: !4708)
!4708 = distinct !DILexicalBlock(scope: !4705, file: !410, line: 161, column: 39)
!4709 = !DILocation(line: 163, column: 13, scope: !4708)
!4710 = !DILocation(line: 166, column: 30, scope: !4702)
!4711 = !DILocation(line: 166, column: 15, scope: !4702)
!4712 = !DILocation(line: 167, column: 17, scope: !4713)
!4713 = distinct !DILexicalBlock(scope: !4702, file: !410, line: 167, column: 13)
!4714 = !DILocation(line: 167, column: 13, scope: !4702)
!4715 = !DILocation(line: 168, column: 13, scope: !4716)
!4716 = distinct !DILexicalBlock(scope: !4713, file: !410, line: 167, column: 39)
!4717 = !DILocation(line: 169, column: 13, scope: !4716)
!4718 = !DILocation(line: 171, column: 9, scope: !4702)
!4719 = !DILocation(line: 173, column: 9, scope: !4702)
!4720 = !DILocation(line: 176, column: 1, scope: !447)
!4721 = distinct !DISubprogram(name: "get_current_millisecond", scope: !410, file: !410, line: 113, type: !2052, scopeLine: 114, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !409, retainedNodes: !4722)
!4722 = !{!4723, !4724, !4725, !4726, !4727}
!4723 = !DILocalVariable(name: "ret", scope: !4721, file: !410, line: 115, type: !452)
!4724 = !DILocalVariable(name: "count", scope: !4721, file: !410, line: 116, type: !92)
!4725 = !DILocalVariable(name: "time", scope: !4721, file: !410, line: 117, type: !92)
!4726 = !DILocalVariable(name: "time_s", scope: !4721, file: !410, line: 117, type: !92)
!4727 = !DILocalVariable(name: "time_ms", scope: !4721, file: !410, line: 117, type: !92)
!4728 = !DILocation(line: 116, column: 5, scope: !4721)
!4729 = !DILocation(line: 0, scope: !4721)
!4730 = !DILocation(line: 116, column: 14, scope: !4721)
!4731 = !DILocation(line: 118, column: 11, scope: !4721)
!4732 = !DILocation(line: 120, column: 13, scope: !4733)
!4733 = distinct !DILexicalBlock(scope: !4721, file: !410, line: 120, column: 9)
!4734 = !DILocation(line: 120, column: 9, scope: !4721)
!4735 = !DILocation(line: 121, column: 9, scope: !4736)
!4736 = distinct !DILexicalBlock(scope: !4733, file: !410, line: 120, column: 35)
!4737 = !DILocation(line: 122, column: 9, scope: !4736)
!4738 = !DILocation(line: 125, column: 14, scope: !4721)
!4739 = !DILocation(line: 125, column: 20, scope: !4721)
!4740 = !DILocation(line: 126, column: 23, scope: !4721)
!4741 = !DILocation(line: 126, column: 32, scope: !4721)
!4742 = !DILocation(line: 126, column: 39, scope: !4721)
!4743 = !DILocation(line: 126, column: 48, scope: !4721)
!4744 = !DILocation(line: 127, column: 19, scope: !4721)
!4745 = !DILocation(line: 127, column: 26, scope: !4721)
!4746 = !DILocation(line: 129, column: 5, scope: !4721)
!4747 = !DILocation(line: 130, column: 1, scope: !4721)
!4748 = distinct !DISubprogram(name: "log_uart_init", scope: !410, file: !410, line: 70, type: !75, scopeLine: 71, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !409, retainedNodes: !4749)
!4749 = !{!4750}
!4750 = !DILocalVariable(name: "uart_config", scope: !4748, file: !410, line: 72, type: !4751)
!4751 = !DIDerivedType(tag: DW_TAG_typedef, name: "hal_uart_config_t", file: !303, line: 378, baseType: !4752)
!4752 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !303, line: 373, size: 128, elements: !4753)
!4753 = !{!4754, !4755, !4756, !4757}
!4754 = !DIDerivedType(tag: DW_TAG_member, name: "baudrate", scope: !4752, file: !303, line: 374, baseType: !375, size: 32)
!4755 = !DIDerivedType(tag: DW_TAG_member, name: "word_length", scope: !4752, file: !303, line: 375, baseType: !377, size: 32, offset: 32)
!4756 = !DIDerivedType(tag: DW_TAG_member, name: "stop_bit", scope: !4752, file: !303, line: 376, baseType: !379, size: 32, offset: 64)
!4757 = !DIDerivedType(tag: DW_TAG_member, name: "parity", scope: !4752, file: !303, line: 377, baseType: !381, size: 32, offset: 96)
!4758 = !DILocation(line: 72, column: 5, scope: !4748)
!4759 = !DILocation(line: 72, column: 23, scope: !4748)
!4760 = !DILocation(line: 74, column: 5, scope: !4748)
!4761 = !DILocation(line: 75, column: 5, scope: !4748)
!4762 = !DILocation(line: 76, column: 5, scope: !4748)
!4763 = !DILocation(line: 77, column: 5, scope: !4748)
!4764 = !DILocation(line: 80, column: 17, scope: !4748)
!4765 = !DILocation(line: 80, column: 26, scope: !4748)
!4766 = !DILocation(line: 81, column: 17, scope: !4748)
!4767 = !DILocation(line: 81, column: 29, scope: !4748)
!4768 = !DILocation(line: 82, column: 17, scope: !4748)
!4769 = !DILocation(line: 82, column: 26, scope: !4748)
!4770 = !DILocation(line: 83, column: 17, scope: !4748)
!4771 = !DILocation(line: 83, column: 24, scope: !4748)
!4772 = !DILocation(line: 84, column: 5, scope: !4748)
!4773 = !DILocation(line: 85, column: 1, scope: !4748)
!4774 = distinct !DISubprogram(name: "SysTick_Set", scope: !461, file: !461, line: 70, type: !3830, scopeLine: 71, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !460, retainedNodes: !4775)
!4775 = !{!4776, !4777}
!4776 = !DILocalVariable(name: "ticks", arg: 1, scope: !4774, file: !461, line: 70, type: !92)
!4777 = !DILocalVariable(name: "val", scope: !4774, file: !461, line: 72, type: !92)
!4778 = !DILocation(line: 0, scope: !4774)
!4779 = !DILocation(line: 74, column: 16, scope: !4780)
!4780 = distinct !DILexicalBlock(scope: !4774, file: !461, line: 74, column: 9)
!4781 = !DILocation(line: 74, column: 21, scope: !4780)
!4782 = !DILocation(line: 74, column: 9, scope: !4774)
!4783 = !DILocation(line: 78, column: 20, scope: !4774)
!4784 = !DILocation(line: 80, column: 19, scope: !4774)
!4785 = !DILocation(line: 83, column: 20, scope: !4774)
!4786 = !DILocation(line: 84, column: 20, scope: !4774)
!4787 = !DILocation(line: 86, column: 19, scope: !4774)
!4788 = !DILocation(line: 88, column: 5, scope: !4774)
!4789 = !DILocation(line: 89, column: 1, scope: !4774)
!4790 = distinct !DISubprogram(name: "SysInitStatus_Set", scope: !461, file: !461, line: 98, type: !75, scopeLine: 99, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !460, retainedNodes: !1158)
!4791 = !DILocation(line: 100, column: 28, scope: !4790)
!4792 = !DILocation(line: 101, column: 1, scope: !4790)
!4793 = distinct !DISubprogram(name: "SysInitStatus_Query", scope: !461, file: !461, line: 110, type: !2052, scopeLine: 111, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !460, retainedNodes: !1158)
!4794 = !DILocation(line: 112, column: 12, scope: !4793)
!4795 = !DILocation(line: 112, column: 5, scope: !4793)
!4796 = distinct !DISubprogram(name: "SystemCoreClockUpdate", scope: !461, file: !461, line: 122, type: !75, scopeLine: 123, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !460, retainedNodes: !1158)
!4797 = !DILocation(line: 124, column: 23, scope: !4796)
!4798 = !DILocation(line: 124, column: 21, scope: !4796)
!4799 = !DILocation(line: 125, column: 1, scope: !4796)
!4800 = distinct !DISubprogram(name: "SystemInit", scope: !461, file: !461, line: 136, type: !75, scopeLine: 137, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !460, retainedNodes: !1158)
!4801 = !DILocation(line: 140, column: 16, scope: !4800)
!4802 = !DILocation(line: 144, column: 16, scope: !4800)
!4803 = !DILocation(line: 147, column: 16, scope: !4800)
!4804 = !DILocation(line: 150, column: 1, scope: !4800)
!4805 = distinct !DISubprogram(name: "CachePreInit", scope: !461, file: !461, line: 158, type: !75, scopeLine: 159, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !460, retainedNodes: !1158)
!4806 = !DILocation(line: 161, column: 22, scope: !4805)
!4807 = !DILocation(line: 164, column: 21, scope: !4805)
!4808 = !DILocation(line: 167, column: 21, scope: !4805)
!4809 = !DILocation(line: 170, column: 29, scope: !4805)
!4810 = !DILocation(line: 171, column: 33, scope: !4805)
!4811 = !DILocation(line: 173, column: 28, scope: !4805)
!4812 = !DILocation(line: 178, column: 30, scope: !4805)
!4813 = !DILocation(line: 192, column: 1, scope: !4805)
!4814 = distinct !DISubprogram(name: "_close", scope: !531, file: !531, line: 11, type: !4609, scopeLine: 12, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !728, retainedNodes: !4815)
!4815 = !{!4816}
!4816 = !DILocalVariable(name: "file", arg: 1, scope: !4814, file: !531, line: 11, type: !13)
!4817 = !DILocation(line: 0, scope: !4814)
!4818 = !DILocation(line: 13, column: 5, scope: !4814)
!4819 = distinct !DISubprogram(name: "_fstat", scope: !531, file: !531, line: 16, type: !4820, scopeLine: 17, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !728, retainedNodes: !4868)
!4820 = !DISubroutineType(types: !4821)
!4821 = !{!13, !13, !4822}
!4822 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4823, size: 32)
!4823 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "stat", file: !4824, line: 27, size: 704, elements: !4825)
!4824 = !DIFile(filename: "gcc-arm-none-eabi-10.3-2021.10/bin/../lib/gcc/arm-none-eabi/10.3.1/../../../../arm-none-eabi/include/sys/stat.h", directory: "/home/mjshen/RTOSExploration")
!4825 = !{!4826, !4829, !4832, !4835, !4838, !4841, !4844, !4845, !4848, !4858, !4859, !4860, !4863, !4866}
!4826 = !DIDerivedType(tag: DW_TAG_member, name: "st_dev", scope: !4823, file: !4824, line: 29, baseType: !4827, size: 16)
!4827 = !DIDerivedType(tag: DW_TAG_typedef, name: "dev_t", file: !535, line: 161, baseType: !4828)
!4828 = !DIDerivedType(tag: DW_TAG_typedef, name: "__dev_t", file: !577, line: 56, baseType: !552)
!4829 = !DIDerivedType(tag: DW_TAG_member, name: "st_ino", scope: !4823, file: !4824, line: 30, baseType: !4830, size: 16, offset: 16)
!4830 = !DIDerivedType(tag: DW_TAG_typedef, name: "ino_t", file: !535, line: 139, baseType: !4831)
!4831 = !DIDerivedType(tag: DW_TAG_typedef, name: "__ino_t", file: !577, line: 75, baseType: !132)
!4832 = !DIDerivedType(tag: DW_TAG_member, name: "st_mode", scope: !4823, file: !4824, line: 31, baseType: !4833, size: 32, offset: 32)
!4833 = !DIDerivedType(tag: DW_TAG_typedef, name: "mode_t", file: !535, line: 189, baseType: !4834)
!4834 = !DIDerivedType(tag: DW_TAG_typedef, name: "__mode_t", file: !577, line: 90, baseType: !94)
!4835 = !DIDerivedType(tag: DW_TAG_member, name: "st_nlink", scope: !4823, file: !4824, line: 32, baseType: !4836, size: 16, offset: 64)
!4836 = !DIDerivedType(tag: DW_TAG_typedef, name: "nlink_t", file: !535, line: 194, baseType: !4837)
!4837 = !DIDerivedType(tag: DW_TAG_typedef, name: "__nlink_t", file: !577, line: 209, baseType: !132)
!4838 = !DIDerivedType(tag: DW_TAG_member, name: "st_uid", scope: !4823, file: !4824, line: 33, baseType: !4839, size: 16, offset: 80)
!4839 = !DIDerivedType(tag: DW_TAG_typedef, name: "uid_t", file: !535, line: 165, baseType: !4840)
!4840 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uid_t", file: !577, line: 60, baseType: !132)
!4841 = !DIDerivedType(tag: DW_TAG_member, name: "st_gid", scope: !4823, file: !4824, line: 34, baseType: !4842, size: 16, offset: 96)
!4842 = !DIDerivedType(tag: DW_TAG_typedef, name: "gid_t", file: !535, line: 169, baseType: !4843)
!4843 = !DIDerivedType(tag: DW_TAG_typedef, name: "__gid_t", file: !577, line: 63, baseType: !132)
!4844 = !DIDerivedType(tag: DW_TAG_member, name: "st_rdev", scope: !4823, file: !4824, line: 35, baseType: !4827, size: 16, offset: 112)
!4845 = !DIDerivedType(tag: DW_TAG_member, name: "st_size", scope: !4823, file: !4824, line: 36, baseType: !4846, size: 32, offset: 128)
!4846 = !DIDerivedType(tag: DW_TAG_typedef, name: "off_t", file: !535, line: 157, baseType: !4847)
!4847 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off_t", file: !577, line: 102, baseType: !595)
!4848 = !DIDerivedType(tag: DW_TAG_member, name: "st_atim", scope: !4823, file: !4824, line: 42, baseType: !4849, size: 128, offset: 192)
!4849 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timespec", file: !4850, line: 47, size: 128, elements: !4851)
!4850 = !DIFile(filename: "gcc-arm-none-eabi-10.3-2021.10/bin/../lib/gcc/arm-none-eabi/10.3.1/../../../../arm-none-eabi/include/sys/_timespec.h", directory: "/home/mjshen/RTOSExploration")
!4851 = !{!4852, !4857}
!4852 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !4849, file: !4850, line: 48, baseType: !4853, size: 64)
!4853 = !DIDerivedType(tag: DW_TAG_typedef, name: "time_t", file: !4854, line: 42, baseType: !4855)
!4854 = !DIFile(filename: "gcc-arm-none-eabi-10.3-2021.10/bin/../lib/gcc/arm-none-eabi/10.3.1/../../../../arm-none-eabi/include/sys/_timeval.h", directory: "/home/mjshen/RTOSExploration")
!4855 = !DIDerivedType(tag: DW_TAG_typedef, name: "__int_least64_t", file: !95, line: 200, baseType: !4856)
!4856 = !DIBasicType(name: "long long", size: 64, encoding: DW_ATE_signed)
!4857 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !4849, file: !4850, line: 49, baseType: !578, size: 32, offset: 64)
!4858 = !DIDerivedType(tag: DW_TAG_member, name: "st_mtim", scope: !4823, file: !4824, line: 43, baseType: !4849, size: 128, offset: 320)
!4859 = !DIDerivedType(tag: DW_TAG_member, name: "st_ctim", scope: !4823, file: !4824, line: 44, baseType: !4849, size: 128, offset: 448)
!4860 = !DIDerivedType(tag: DW_TAG_member, name: "st_blksize", scope: !4823, file: !4824, line: 45, baseType: !4861, size: 32, offset: 576)
!4861 = !DIDerivedType(tag: DW_TAG_typedef, name: "blksize_t", file: !535, line: 102, baseType: !4862)
!4862 = !DIDerivedType(tag: DW_TAG_typedef, name: "__blksize_t", file: !577, line: 34, baseType: !578)
!4863 = !DIDerivedType(tag: DW_TAG_member, name: "st_blocks", scope: !4823, file: !4824, line: 46, baseType: !4864, size: 32, offset: 608)
!4864 = !DIDerivedType(tag: DW_TAG_typedef, name: "blkcnt_t", file: !535, line: 97, baseType: !4865)
!4865 = !DIDerivedType(tag: DW_TAG_typedef, name: "__blkcnt_t", file: !577, line: 30, baseType: !578)
!4866 = !DIDerivedType(tag: DW_TAG_member, name: "st_spare4", scope: !4823, file: !4824, line: 48, baseType: !4867, size: 64, offset: 640)
!4867 = !DICompositeType(tag: DW_TAG_array_type, baseType: !578, size: 64, elements: !216)
!4868 = !{!4869, !4870}
!4869 = !DILocalVariable(name: "file", arg: 1, scope: !4819, file: !531, line: 16, type: !13)
!4870 = !DILocalVariable(name: "st", arg: 2, scope: !4819, file: !531, line: 16, type: !4822)
!4871 = !DILocation(line: 0, scope: !4819)
!4872 = !DILocation(line: 18, column: 5, scope: !4819)
!4873 = distinct !DISubprogram(name: "_isatty", scope: !531, file: !531, line: 22, type: !4609, scopeLine: 23, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !728, retainedNodes: !4874)
!4874 = !{!4875}
!4875 = !DILocalVariable(name: "file", arg: 1, scope: !4873, file: !531, line: 22, type: !13)
!4876 = !DILocation(line: 0, scope: !4873)
!4877 = !DILocation(line: 24, column: 5, scope: !4873)
!4878 = distinct !DISubprogram(name: "_lseek", scope: !531, file: !531, line: 27, type: !4879, scopeLine: 28, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !728, retainedNodes: !4881)
!4879 = !DISubroutineType(types: !4880)
!4880 = !{!13, !13, !13, !13}
!4881 = !{!4882, !4883, !4884}
!4882 = !DILocalVariable(name: "file", arg: 1, scope: !4878, file: !531, line: 27, type: !13)
!4883 = !DILocalVariable(name: "ptr", arg: 2, scope: !4878, file: !531, line: 27, type: !13)
!4884 = !DILocalVariable(name: "dir", arg: 3, scope: !4878, file: !531, line: 27, type: !13)
!4885 = !DILocation(line: 0, scope: !4878)
!4886 = !DILocation(line: 29, column: 5, scope: !4878)
!4887 = distinct !DISubprogram(name: "_open", scope: !531, file: !531, line: 32, type: !4888, scopeLine: 33, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !728, retainedNodes: !4890)
!4888 = !DISubroutineType(types: !4889)
!4889 = !{!13, !570, !13, !13}
!4890 = !{!4891, !4892, !4893}
!4891 = !DILocalVariable(name: "name", arg: 1, scope: !4887, file: !531, line: 32, type: !570)
!4892 = !DILocalVariable(name: "flags", arg: 2, scope: !4887, file: !531, line: 32, type: !13)
!4893 = !DILocalVariable(name: "mode", arg: 3, scope: !4887, file: !531, line: 32, type: !13)
!4894 = !DILocation(line: 0, scope: !4887)
!4895 = !DILocation(line: 34, column: 5, scope: !4887)
!4896 = distinct !DISubprogram(name: "_read", scope: !531, file: !531, line: 37, type: !4897, scopeLine: 38, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !728, retainedNodes: !4899)
!4897 = !DISubroutineType(types: !4898)
!4898 = !{!13, !13, !536, !13}
!4899 = !{!4900, !4901, !4902}
!4900 = !DILocalVariable(name: "file", arg: 1, scope: !4896, file: !531, line: 37, type: !13)
!4901 = !DILocalVariable(name: "ptr", arg: 2, scope: !4896, file: !531, line: 37, type: !536)
!4902 = !DILocalVariable(name: "len", arg: 3, scope: !4896, file: !531, line: 37, type: !13)
!4903 = !DILocation(line: 0, scope: !4896)
!4904 = !DILocation(line: 39, column: 5, scope: !4896)
!4905 = distinct !DISubprogram(name: "_write", scope: !531, file: !531, line: 52, type: !4897, scopeLine: 53, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !728, retainedNodes: !4906)
!4906 = !{!4907, !4908, !4909, !4910}
!4907 = !DILocalVariable(name: "file", arg: 1, scope: !4905, file: !531, line: 52, type: !13)
!4908 = !DILocalVariable(name: "ptr", arg: 2, scope: !4905, file: !531, line: 52, type: !536)
!4909 = !DILocalVariable(name: "len", arg: 3, scope: !4905, file: !531, line: 52, type: !13)
!4910 = !DILocalVariable(name: "i", scope: !4905, file: !531, line: 54, type: !13)
!4911 = !DILocation(line: 0, scope: !4905)
!4912 = !DILocation(line: 56, column: 19, scope: !4913)
!4913 = distinct !DILexicalBlock(scope: !4914, file: !531, line: 56, column: 5)
!4914 = distinct !DILexicalBlock(scope: !4905, file: !531, line: 56, column: 5)
!4915 = !DILocation(line: 56, column: 5, scope: !4914)
!4916 = !DILocation(line: 57, column: 26, scope: !4917)
!4917 = distinct !DILexicalBlock(scope: !4913, file: !531, line: 56, column: 31)
!4918 = !DILocation(line: 57, column: 22, scope: !4917)
!4919 = !DILocation(line: 57, column: 9, scope: !4917)
!4920 = !DILocation(line: 56, column: 27, scope: !4913)
!4921 = distinct !{!4921, !4915, !4922}
!4922 = !DILocation(line: 58, column: 5, scope: !4914)
!4923 = !DILocation(line: 60, column: 5, scope: !4905)
!4924 = !DILocation(line: 0, scope: !530)
!4925 = !DILocation(line: 70, column: 5, scope: !530)
!4926 = !{i64 1109}
!4927 = !DILocation(line: 72, column: 14, scope: !4928)
!4928 = distinct !DILexicalBlock(scope: !530, file: !531, line: 72, column: 9)
!4929 = !DILocation(line: 72, column: 11, scope: !4928)
!4930 = !DILocation(line: 72, column: 9, scope: !530)
!4931 = !DILocation(line: 78, column: 32, scope: !4932)
!4932 = distinct !DILexicalBlock(scope: !530, file: !531, line: 78, column: 9)
!4933 = !DILocation(line: 78, column: 15, scope: !4932)
!4934 = !DILocation(line: 89, column: 1, scope: !530)
!4935 = !DILocation(line: 78, column: 9, scope: !530)
!4936 = distinct !DISubprogram(name: "_exit", scope: !531, file: !531, line: 91, type: !680, scopeLine: 92, flags: DIFlagPrototyped | DIFlagNoReturn, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !728, retainedNodes: !4937)
!4937 = !{!4938}
!4938 = !DILocalVariable(name: "__status", arg: 1, scope: !4936, file: !531, line: 91, type: !13)
!4939 = !DILocation(line: 0, scope: !4936)
!4940 = !DILocation(line: 93, column: 5, scope: !4936)
!4941 = !DILocation(line: 94, column: 5, scope: !4936)
!4942 = distinct !{!4942, !4941, !4943}
!4943 = !DILocation(line: 96, column: 5, scope: !4936)
!4944 = distinct !DISubprogram(name: "_kill", scope: !531, file: !531, line: 100, type: !4945, scopeLine: 101, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !728, retainedNodes: !4947)
!4945 = !DISubroutineType(types: !4946)
!4946 = !{!13, !13, !13}
!4947 = !{!4948, !4949}
!4948 = !DILocalVariable(name: "pid", arg: 1, scope: !4944, file: !531, line: 100, type: !13)
!4949 = !DILocalVariable(name: "sig", arg: 2, scope: !4944, file: !531, line: 100, type: !13)
!4950 = !DILocation(line: 0, scope: !4944)
!4951 = !DILocation(line: 102, column: 5, scope: !4944)
!4952 = !DILocation(line: 103, column: 5, scope: !4944)
!4953 = distinct !DISubprogram(name: "_getpid", scope: !531, file: !531, line: 107, type: !4954, scopeLine: 108, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !728, retainedNodes: !1158)
!4954 = !DISubroutineType(types: !4955)
!4955 = !{!4956}
!4956 = !DIDerivedType(tag: DW_TAG_typedef, name: "pid_t", file: !535, line: 174, baseType: !4957)
!4957 = !DIDerivedType(tag: DW_TAG_typedef, name: "__pid_t", file: !577, line: 52, baseType: !13)
!4958 = !DILocation(line: 109, column: 5, scope: !4953)
!4959 = !DILocation(line: 110, column: 5, scope: !4953)
