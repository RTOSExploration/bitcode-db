; ModuleID = './build/trng_generate_random_data.elf.bc'
source_filename = "llvm-link"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "thumbv7em-none-unknown-eabihf"

%union.CACHE_CON_Type = type { %struct.anon }
%struct.anon = type { i32 }
%struct.CACHE_ENTRY_Type = type { %union.CACHE_CON_Type, %union.CACHE_CON_Type }
%struct.nvic_function_t = type { void (i32)*, i32 }
%struct.uart_context_t = type { i8, %struct.hal_uart_config_t, i8, %struct.hal_uart_callback_config_t, i8, %struct.hal_uart_dma_config_t }
%struct.hal_uart_config_t = type { i32, i32, i32, i32 }
%struct.hal_uart_callback_config_t = type { void (i32, i8*)*, i8* }
%struct.hal_uart_dma_config_t = type { i8*, i32, i32, i8*, i32, i32, i32 }
%struct.__va_list = type { i8* }
%struct.hal_cache_region_config_t = type { i32, i32 }
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
%struct._mbstate_t = type { i32, %struct.anon }
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
@g_cache_status = dso_local global i8 0, align 1, !dbg !138
@g_cache_con = external dso_local local_unnamed_addr global %union.CACHE_CON_Type, align 4
@g_cache_region_en = external dso_local local_unnamed_addr global i32, align 4
@g_cache_entry = external dso_local local_unnamed_addr global [16 x %struct.CACHE_ENTRY_Type], align 4
@.str.7 = private unnamed_addr constant [50 x i8] c"../../../../../driver/chip/mt7687/src/hal_cache.c\00", align 1
@__func__.hal_cache_region_config = private unnamed_addr constant [24 x i8] c"hal_cache_region_config\00", align 1
@.str.1.8 = private unnamed_addr constant [2 x i8] c"0\00", align 1
@nvic_function_table = dso_local local_unnamed_addr global [96 x %struct.nvic_function_t] zeroinitializer, align 4, !dbg !223
@__FUNCTION__.isrC_main = private unnamed_addr constant [10 x i8] c"isrC_main\00", align 1
@.str.13 = private unnamed_addr constant [25 x i8] c"ERROR: no IRQ handler! \0A\00", align 1
@g_uart_context_table = internal global [2 x %struct.uart_context_t] zeroinitializer, align 4, !dbg !327
@hal_uart_map_receive_callback.func_tbl = internal unnamed_addr constant [2 x void ()*] [void ()* @hal_uart_receive_callback0, void ()* @hal_uart_receive_callback1], align 4, !dbg !385
@__const.hal_uart_translate_baudrate.baudrate_tbl = private unnamed_addr constant [13 x i32] [i32 110, i32 300, i32 1200, i32 2400, i32 4800, i32 9600, i32 19200, i32 38400, i32 57600, i32 115200, i32 230400, i32 460800, i32 921600], align 4
@__const.hal_uart_translate_word_length.databit_tbl = private unnamed_addr constant [4 x i16] [i16 0, i16 1, i16 2, i16 3], align 2
@__const.hal_uart_translate_parity.parity_tbl = private unnamed_addr constant [5 x i16] [i16 0, i16 8, i16 24, i16 0, i16 0], align 2
@__const.hal_uart_translate_stopbit.stopbit_tbl = private unnamed_addr constant [3 x i16] [i16 0, i16 4, i16 4], align 2
@.str.20 = private unnamed_addr constant [5 x i8] c"\0D\0A\0D\0A\00", align 1
@.str.1.21 = private unnamed_addr constant [20 x i8] c"welcome to main()\0D\0A\00", align 1
@.str.2 = private unnamed_addr constant [30 x i8] c"\0D\0A ---trng_example begin---\0D\0A\00", align 1
@.str.3 = private unnamed_addr constant [43 x i8] c"\0D\0A --TRNG generates random data : %x ---\0D\0A\00", align 1
@.str.4 = private unnamed_addr constant [36 x i8] c"\0D\0A ---trng_example finished!!!---\0D\0A\00", align 1
@.str.5 = private unnamed_addr constant [31 x i8] c"example project test success.\0A\00", align 1
@SystemCoreClock = dso_local local_unnamed_addr global i32 40000000, align 4, !dbg !438
@System_Initialize_Done = internal global i32 0, align 4, !dbg !496
@_sbrk_r.heap_end = internal unnamed_addr global i8* null, align 4, !dbg !498
@end = external dso_local global i8, align 1
@.str.28 = private unnamed_addr constant [7 x i8] c"_exit\0A\00", align 1
@.str.1.29 = private unnamed_addr constant [10 x i8] c"_kill %d\0A\00", align 1
@.str.2.30 = private unnamed_addr constant [9 x i8] c"_getpid\0A\00", align 1
@build_date_time_str = dso_local local_unnamed_addr global [31 x i8] c"2022/12/13 07:55:26 GMT +00:00\00", align 1, !dbg !707
@sw_verno_str = dso_local local_unnamed_addr global [11 x i8] c"SDK_V4.6.1\00", align 1, !dbg !712
@hw_verno_str = dso_local local_unnamed_addr global [11 x i8] c"mt7687_hdk\00", align 1, !dbg !718

; Function Attrs: noinline nounwind optsize
define dso_local void @GPT_ResetTimer(i32 noundef %0, i32 noundef %1, i1 noundef zeroext %2) local_unnamed_addr #0 !dbg !995 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !999, metadata !DIExpression()), !dbg !1002
  call void @llvm.dbg.value(metadata i32 %1, metadata !1000, metadata !DIExpression()), !dbg !1002
  call void @llvm.dbg.value(metadata i1 %2, metadata !1001, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1002
  %4 = icmp ugt i32 %0, 1, !dbg !1003
  br i1 %4, label %5, label %8, !dbg !1005

5:                                                ; preds = %3
  %6 = tail call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i32 0, i32 0), i8* noundef getelementptr inbounds ([51 x i8], [51 x i8]* @.str.1, i32 0, i32 0), i32 noundef 75) #12, !dbg !1006
  br label %7, !dbg !1006

7:                                                ; preds = %5, %7
  br label %7, !dbg !1006, !llvm.loop !1008

8:                                                ; preds = %3
  switch i32 %0, label %21 [
    i32 0, label %9
    i32 1, label %15
  ], !dbg !1009

9:                                                ; preds = %8
  store volatile i32 %1, i32* inttoptr (i32 -2096824300 to i32*), align 4, !dbg !1010
  %10 = load volatile i32, i32* inttoptr (i32 -2096824304 to i32*), align 16, !dbg !1013
  br i1 %2, label %11, label %13, !dbg !1015

11:                                               ; preds = %9
  %12 = or i32 %10, 2, !dbg !1016
  store volatile i32 %12, i32* inttoptr (i32 -2096824304 to i32*), align 16, !dbg !1016
  br label %21, !dbg !1018

13:                                               ; preds = %9
  %14 = and i32 %10, -3, !dbg !1019
  store volatile i32 %14, i32* inttoptr (i32 -2096824304 to i32*), align 16, !dbg !1019
  br label %21

15:                                               ; preds = %8
  store volatile i32 %1, i32* inttoptr (i32 -2096824284 to i32*), align 4, !dbg !1021
  %16 = load volatile i32, i32* inttoptr (i32 -2096824288 to i32*), align 32, !dbg !1024
  br i1 %2, label %17, label %19, !dbg !1026

17:                                               ; preds = %15
  %18 = or i32 %16, 2, !dbg !1027
  store volatile i32 %18, i32* inttoptr (i32 -2096824288 to i32*), align 32, !dbg !1027
  br label %21, !dbg !1029

19:                                               ; preds = %15
  %20 = and i32 %16, -3, !dbg !1030
  store volatile i32 %20, i32* inttoptr (i32 -2096824288 to i32*), align 32, !dbg !1030
  br label %21

21:                                               ; preds = %8, %19, %17, %11, %13
  ret void, !dbg !1032
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.value(metadata, metadata, metadata) #1

; Function Attrs: optsize
declare dso_local i32 @printf(i8* noundef, ...) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize
define dso_local void @GPT_Start(i32 noundef %0) local_unnamed_addr #0 !dbg !1033 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !1037, metadata !DIExpression()), !dbg !1038
  switch i32 %0, label %2 [
    i32 0, label %5
    i32 1, label %9
    i32 4, label %13
  ], !dbg !1039

2:                                                ; preds = %1
  %3 = tail call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i32 0, i32 0), i8* noundef getelementptr inbounds ([51 x i8], [51 x i8]* @.str.1, i32 0, i32 0), i32 noundef 96) #12, !dbg !1040
  br label %4, !dbg !1040

4:                                                ; preds = %2, %4
  br label %4, !dbg !1040, !llvm.loop !1043

5:                                                ; preds = %1
  %6 = load volatile i32, i32* inttoptr (i32 -2096824304 to i32*), align 16, !dbg !1044
  %7 = or i32 %6, 1, !dbg !1044
  store volatile i32 %7, i32* inttoptr (i32 -2096824304 to i32*), align 16, !dbg !1044
  %8 = tail call i32 @hal_nvic_enable_irq(i32 noundef 24) #12, !dbg !1047
  br label %16, !dbg !1048

9:                                                ; preds = %1
  %10 = load volatile i32, i32* inttoptr (i32 -2096824288 to i32*), align 32, !dbg !1049
  %11 = or i32 %10, 1, !dbg !1049
  store volatile i32 %11, i32* inttoptr (i32 -2096824288 to i32*), align 32, !dbg !1049
  %12 = tail call i32 @hal_nvic_enable_irq(i32 noundef 24) #12, !dbg !1052
  br label %16, !dbg !1053

13:                                               ; preds = %1
  %14 = load volatile i32, i32* inttoptr (i32 -2096824224 to i32*), align 32, !dbg !1054
  %15 = or i32 %14, 1, !dbg !1054
  store volatile i32 %15, i32* inttoptr (i32 -2096824224 to i32*), align 32, !dbg !1054
  br label %16, !dbg !1057

16:                                               ; preds = %9, %13, %5
  ret void, !dbg !1058
}

; Function Attrs: nofree noinline norecurse nounwind optsize
define dso_local void @GPT_Stop(i32 noundef %0) local_unnamed_addr #3 !dbg !1059 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !1061, metadata !DIExpression()), !dbg !1062
  switch i32 %0, label %18 [
    i32 0, label %2
    i32 1, label %7
    i32 2, label %12
    i32 4, label %15
  ], !dbg !1063

2:                                                ; preds = %1
  %3 = load volatile i32, i32* inttoptr (i32 -2096824316 to i32*), align 4, !dbg !1064
  %4 = and i32 %3, -2, !dbg !1064
  store volatile i32 %4, i32* inttoptr (i32 -2096824316 to i32*), align 4, !dbg !1064
  %5 = load volatile i32, i32* inttoptr (i32 -2096824304 to i32*), align 16, !dbg !1067
  %6 = and i32 %5, -2, !dbg !1067
  store volatile i32 %6, i32* inttoptr (i32 -2096824304 to i32*), align 16, !dbg !1067
  store volatile i32 1, i32* inttoptr (i32 -2096824320 to i32*), align 65536, !dbg !1068
  br label %18, !dbg !1069

7:                                                ; preds = %1
  %8 = load volatile i32, i32* inttoptr (i32 -2096824316 to i32*), align 4, !dbg !1070
  %9 = and i32 %8, -3, !dbg !1070
  store volatile i32 %9, i32* inttoptr (i32 -2096824316 to i32*), align 4, !dbg !1070
  %10 = load volatile i32, i32* inttoptr (i32 -2096824288 to i32*), align 32, !dbg !1073
  %11 = and i32 %10, -2, !dbg !1073
  store volatile i32 %11, i32* inttoptr (i32 -2096824288 to i32*), align 32, !dbg !1073
  store volatile i32 2, i32* inttoptr (i32 -2096824320 to i32*), align 65536, !dbg !1074
  br label %18, !dbg !1075

12:                                               ; preds = %1
  %13 = load volatile i32, i32* inttoptr (i32 -2096824272 to i32*), align 16, !dbg !1076
  %14 = and i32 %13, -2, !dbg !1076
  store volatile i32 %14, i32* inttoptr (i32 -2096824272 to i32*), align 16, !dbg !1076
  br label %18, !dbg !1079

15:                                               ; preds = %1
  %16 = load volatile i32, i32* inttoptr (i32 -2096824224 to i32*), align 32, !dbg !1080
  %17 = and i32 %16, -2, !dbg !1080
  store volatile i32 %17, i32* inttoptr (i32 -2096824224 to i32*), align 32, !dbg !1080
  br label %18, !dbg !1083

18:                                               ; preds = %1, %7, %15, %12, %2
  ret void, !dbg !1084
}

; Function Attrs: noinline nounwind optsize
define dso_local void @GPT_INT_Handler(i32 %0) #0 !dbg !1085 {
  call void @llvm.dbg.value(metadata i32 undef, metadata !1087, metadata !DIExpression()), !dbg !1089
  call void @llvm.dbg.value(metadata i32 undef, metadata !1087, metadata !DIExpression()), !dbg !1089
  %2 = load volatile i32, i32* inttoptr (i32 -2096824320 to i32*), align 65536, !dbg !1090
  %3 = and i32 %2, 65535, !dbg !1091
  call void @llvm.dbg.value(metadata i32 %2, metadata !1088, metadata !DIExpression()), !dbg !1089
  store volatile i32 %3, i32* inttoptr (i32 -2096824320 to i32*), align 65536, !dbg !1092
  %4 = and i32 %2, 1, !dbg !1093
  %5 = icmp eq i32 %4, 0, !dbg !1093
  br i1 %5, label %6, label %9, !dbg !1095

6:                                                ; preds = %1
  %7 = and i32 %2, 2, !dbg !1096
  %8 = icmp eq i32 %7, 0, !dbg !1096
  br i1 %8, label %13, label %9, !dbg !1098

9:                                                ; preds = %6, %1
  %10 = phi i32 [ 0, %1 ], [ 1, %6 ]
  %11 = phi void ()** [ @GPTTimer.0, %1 ], [ @GPTTimer.1, %6 ]
  tail call void @clear_TMR_INT_status_bit(i32 noundef %10) #12, !dbg !1099
  %12 = load void ()*, void ()** %11, align 4, !dbg !1099
  tail call void %12() #12, !dbg !1099
  br label %13, !dbg !1100

13:                                               ; preds = %9, %6
  ret void, !dbg !1100
}

; Function Attrs: noinline nounwind optsize
define dso_local void @GPT_init(i32 noundef %0, i32 noundef %1, void ()* noundef %2) local_unnamed_addr #0 !dbg !1101 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !1105, metadata !DIExpression()), !dbg !1108
  call void @llvm.dbg.value(metadata i32 %1, metadata !1106, metadata !DIExpression()), !dbg !1108
  call void @llvm.dbg.value(metadata void ()* %2, metadata !1107, metadata !DIExpression()), !dbg !1108
  switch i32 %0, label %4 [
    i32 4, label %7
    i32 2, label %7
    i32 1, label %7
    i32 0, label %7
  ], !dbg !1109

4:                                                ; preds = %3
  %5 = tail call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i32 0, i32 0), i8* noundef getelementptr inbounds ([51 x i8], [51 x i8]* @.str.1, i32 0, i32 0), i32 noundef 149) #12, !dbg !1110
  br label %6, !dbg !1110

6:                                                ; preds = %4, %6
  br label %6, !dbg !1110, !llvm.loop !1113

7:                                                ; preds = %3, %3, %3, %3
  %8 = icmp ult i32 %0, 2, !dbg !1114
  br i1 %8, label %9, label %13, !dbg !1115

9:                                                ; preds = %7
  %10 = tail call i32 @hal_nvic_register_isr_handler(i32 noundef 24, void (i32)* noundef nonnull @GPT_INT_Handler) #12, !dbg !1117
  %11 = tail call i32 @hal_nvic_set_priority(i32 noundef 24, i32 noundef 5) #12, !dbg !1119
  %12 = tail call i32 @hal_nvic_enable_irq(i32 noundef 24) #12, !dbg !1120
  br label %13, !dbg !1121

13:                                               ; preds = %7, %9
  switch i32 %0, label %36 [
    i32 0, label %14
    i32 1, label %20
    i32 2, label %26
    i32 4, label %31
  ], !dbg !1122

14:                                               ; preds = %13
  store void ()* %2, void ()** @GPTTimer.0, align 4, !dbg !1123
  %15 = load volatile i32, i32* inttoptr (i32 -2096824316 to i32*), align 4, !dbg !1126
  %16 = or i32 %15, 1, !dbg !1126
  store volatile i32 %16, i32* inttoptr (i32 -2096824316 to i32*), align 4, !dbg !1126
  %17 = shl i32 %1, 2, !dbg !1127
  %18 = load volatile i32, i32* inttoptr (i32 -2096824304 to i32*), align 16, !dbg !1128
  %19 = or i32 %18, %17, !dbg !1128
  store volatile i32 %19, i32* inttoptr (i32 -2096824304 to i32*), align 16, !dbg !1128
  br label %36, !dbg !1129

20:                                               ; preds = %13
  store void ()* %2, void ()** @GPTTimer.1, align 4, !dbg !1130
  %21 = load volatile i32, i32* inttoptr (i32 -2096824316 to i32*), align 4, !dbg !1133
  %22 = or i32 %21, 2, !dbg !1133
  store volatile i32 %22, i32* inttoptr (i32 -2096824316 to i32*), align 4, !dbg !1133
  %23 = shl i32 %1, 2, !dbg !1134
  %24 = load volatile i32, i32* inttoptr (i32 -2096824288 to i32*), align 32, !dbg !1135
  %25 = or i32 %24, %23, !dbg !1135
  store volatile i32 %25, i32* inttoptr (i32 -2096824288 to i32*), align 32, !dbg !1135
  br label %36, !dbg !1136

26:                                               ; preds = %13
  %27 = shl i32 %1, 1, !dbg !1137
  %28 = or i32 %27, 1, !dbg !1140
  %29 = load volatile i32, i32* inttoptr (i32 -2096824272 to i32*), align 16, !dbg !1141
  %30 = or i32 %29, %28, !dbg !1141
  store volatile i32 %30, i32* inttoptr (i32 -2096824272 to i32*), align 16, !dbg !1141
  br label %36, !dbg !1142

31:                                               ; preds = %13
  %32 = shl i32 %1, 1, !dbg !1143
  %33 = or i32 %32, 1, !dbg !1146
  %34 = load volatile i32, i32* inttoptr (i32 -2096824224 to i32*), align 32, !dbg !1147
  %35 = or i32 %34, %33, !dbg !1147
  store volatile i32 %35, i32* inttoptr (i32 -2096824224 to i32*), align 32, !dbg !1147
  store volatile i32 0, i32* inttoptr (i32 -2096824220 to i32*), align 4, !dbg !1148
  br label %36, !dbg !1149

36:                                               ; preds = %13, %20, %31, %26, %14
  ret void, !dbg !1150
}

; Function Attrs: noinline nounwind optsize
define dso_local i32 @GPT_return_current_count(i32 noundef %0) local_unnamed_addr #0 !dbg !1151 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !1155, metadata !DIExpression()), !dbg !1157
  switch i32 %0, label %2 [
    i32 0, label %8
    i32 1, label %5
    i32 2, label %6
    i32 4, label %7
  ], !dbg !1158

2:                                                ; preds = %1
  %3 = tail call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i32 0, i32 0), i8* noundef getelementptr inbounds ([51 x i8], [51 x i8]* @.str.1, i32 0, i32 0), i32 noundef 177) #12, !dbg !1159
  br label %4, !dbg !1159

4:                                                ; preds = %4, %2
  br label %4, !dbg !1159, !llvm.loop !1162

5:                                                ; preds = %1
  call void @llvm.dbg.value(metadata i32 undef, metadata !1156, metadata !DIExpression()), !dbg !1157
  br label %8, !dbg !1163

6:                                                ; preds = %1
  call void @llvm.dbg.value(metadata i32 undef, metadata !1156, metadata !DIExpression()), !dbg !1157
  br label %8, !dbg !1167

7:                                                ; preds = %1
  call void @llvm.dbg.value(metadata i32 undef, metadata !1156, metadata !DIExpression()), !dbg !1157
  br label %8, !dbg !1170

8:                                                ; preds = %1, %5, %7, %6
  %9 = phi i32* [ inttoptr (i32 -2096824252 to i32*), %5 ], [ inttoptr (i32 -2096824268 to i32*), %6 ], [ inttoptr (i32 -2096824216 to i32*), %7 ], [ inttoptr (i32 -2096824256 to i32*), %1 ]
  %10 = load volatile i32, i32* %9, align 4, !dbg !1173
  call void @llvm.dbg.value(metadata i32 %10, metadata !1156, metadata !DIExpression()), !dbg !1157
  ret i32 %10, !dbg !1174
}

; Function Attrs: noinline nounwind optsize
define dso_local void @CM4_GPT2Init() local_unnamed_addr #0 !dbg !1175 {
  tail call void @GPT_init(i32 noundef 2, i32 noundef 1, void ()* noundef null) #13, !dbg !1177
  ret void, !dbg !1178
}

; Function Attrs: noinline nounwind optsize
define dso_local void @CM4_GPT4Init() local_unnamed_addr #0 !dbg !1179 {
  tail call void @GPT_init(i32 noundef 4, i32 noundef 1, void ()* noundef null) #13, !dbg !1180
  ret void, !dbg !1181
}

; Function Attrs: nofree noinline norecurse nounwind optsize
define dso_local i32 @halGPIO_ConfDirection(i32 noundef %0, i8 noundef zeroext %1) local_unnamed_addr #3 !dbg !1182 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !1187, metadata !DIExpression()), !dbg !1192
  call void @llvm.dbg.value(metadata i8 %1, metadata !1188, metadata !DIExpression()), !dbg !1192
  %3 = lshr i32 %0, 5, !dbg !1193
  call void @llvm.dbg.value(metadata i32 %3, metadata !1189, metadata !DIExpression(DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 16, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1192
  %4 = trunc i32 %0 to i16, !dbg !1194
  %5 = and i16 %4, 31, !dbg !1194
  call void @llvm.dbg.value(metadata i16 %4, metadata !1191, metadata !DIExpression(DW_OP_constu, 31, DW_OP_and, DW_OP_stack_value)), !dbg !1192
  %6 = trunc i32 %3 to i16, !dbg !1195
  switch i16 %6, label %97 [
    i16 0, label %7
    i16 1, label %70
  ], !dbg !1195

7:                                                ; preds = %2
  %8 = icmp eq i8 %1, 1, !dbg !1196
  %9 = zext i16 %5 to i32, !dbg !1199
  %10 = icmp ult i16 %5, 27, !dbg !1199
  br i1 %8, label %11, label %46, !dbg !1200

11:                                               ; preds = %7
  br i1 %10, label %12, label %17, !dbg !1201

12:                                               ; preds = %11
  %13 = shl nuw i32 1, %9, !dbg !1203
  %14 = xor i32 %13, -1, !dbg !1206
  %15 = load volatile i32, i32* inttoptr (i32 -2097106688 to i32*), align 256, !dbg !1207
  %16 = and i32 %15, %14, !dbg !1207
  store volatile i32 %16, i32* inttoptr (i32 -2097106688 to i32*), align 256, !dbg !1207
  br label %44, !dbg !1208

17:                                               ; preds = %11
  %18 = trunc i32 %0 to i5, !dbg !1209
  switch i5 %18, label %39 [
    i5 -5, label %19
    i5 -4, label %24
    i5 -3, label %29
    i5 -2, label %34
  ], !dbg !1209

19:                                               ; preds = %17
  %20 = load volatile i32, i32* inttoptr (i32 -2130563000 to i32*), align 8, !dbg !1210
  %21 = and i32 %20, -3, !dbg !1210
  store volatile i32 %21, i32* inttoptr (i32 -2130563000 to i32*), align 8, !dbg !1210
  %22 = load volatile i32, i32* inttoptr (i32 -2130563000 to i32*), align 8, !dbg !1213
  %23 = or i32 %22, 2048, !dbg !1213
  store volatile i32 %23, i32* inttoptr (i32 -2130563000 to i32*), align 8, !dbg !1213
  br label %44, !dbg !1214

24:                                               ; preds = %17
  %25 = load volatile i32, i32* inttoptr (i32 -2130562996 to i32*), align 4, !dbg !1215
  %26 = and i32 %25, -3, !dbg !1215
  store volatile i32 %26, i32* inttoptr (i32 -2130562996 to i32*), align 4, !dbg !1215
  %27 = load volatile i32, i32* inttoptr (i32 -2130562996 to i32*), align 4, !dbg !1218
  %28 = or i32 %27, 2048, !dbg !1218
  store volatile i32 %28, i32* inttoptr (i32 -2130562996 to i32*), align 4, !dbg !1218
  br label %44, !dbg !1219

29:                                               ; preds = %17
  %30 = load volatile i32, i32* inttoptr (i32 -2130562980 to i32*), align 4, !dbg !1220
  %31 = and i32 %30, -3, !dbg !1220
  store volatile i32 %31, i32* inttoptr (i32 -2130562980 to i32*), align 4, !dbg !1220
  %32 = load volatile i32, i32* inttoptr (i32 -2130562980 to i32*), align 4, !dbg !1223
  %33 = or i32 %32, 2048, !dbg !1223
  store volatile i32 %33, i32* inttoptr (i32 -2130562980 to i32*), align 4, !dbg !1223
  br label %44, !dbg !1224

34:                                               ; preds = %17
  %35 = load volatile i32, i32* inttoptr (i32 -2130562984 to i32*), align 8, !dbg !1225
  %36 = and i32 %35, -3, !dbg !1225
  store volatile i32 %36, i32* inttoptr (i32 -2130562984 to i32*), align 8, !dbg !1225
  %37 = load volatile i32, i32* inttoptr (i32 -2130562984 to i32*), align 8, !dbg !1228
  %38 = or i32 %37, 2048, !dbg !1228
  store volatile i32 %38, i32* inttoptr (i32 -2130562984 to i32*), align 8, !dbg !1228
  br label %44, !dbg !1229

39:                                               ; preds = %17
  %40 = load volatile i32, i32* inttoptr (i32 -2130562988 to i32*), align 4, !dbg !1230
  %41 = and i32 %40, -3, !dbg !1230
  store volatile i32 %41, i32* inttoptr (i32 -2130562988 to i32*), align 4, !dbg !1230
  %42 = load volatile i32, i32* inttoptr (i32 -2130562988 to i32*), align 4, !dbg !1233
  %43 = or i32 %42, 2048, !dbg !1233
  store volatile i32 %43, i32* inttoptr (i32 -2130562988 to i32*), align 4, !dbg !1233
  br label %44, !dbg !1234

44:                                               ; preds = %19, %29, %39, %34, %24, %12
  %45 = shl nuw i32 1, %9, !dbg !1235
  store volatile i32 %45, i32* inttoptr (i32 -2097106796 to i32*), align 4, !dbg !1235
  br label %97, !dbg !1236

46:                                               ; preds = %7
  br i1 %10, label %47, label %51, !dbg !1237

47:                                               ; preds = %46
  %48 = shl nuw i32 1, %9, !dbg !1239
  %49 = load volatile i32, i32* inttoptr (i32 -2097106688 to i32*), align 256, !dbg !1242
  %50 = or i32 %49, %48, !dbg !1242
  store volatile i32 %50, i32* inttoptr (i32 -2097106688 to i32*), align 256, !dbg !1242
  br label %68, !dbg !1243

51:                                               ; preds = %46
  %52 = trunc i32 %0 to i5, !dbg !1244
  switch i5 %52, label %65 [
    i5 -5, label %53
    i5 -4, label %56
    i5 -3, label %59
    i5 -2, label %62
  ], !dbg !1244

53:                                               ; preds = %51
  %54 = load volatile i32, i32* inttoptr (i32 -2130563000 to i32*), align 8, !dbg !1245
  %55 = or i32 %54, 2050, !dbg !1245
  store volatile i32 %55, i32* inttoptr (i32 -2130563000 to i32*), align 8, !dbg !1245
  br label %68, !dbg !1248

56:                                               ; preds = %51
  %57 = load volatile i32, i32* inttoptr (i32 -2130562996 to i32*), align 4, !dbg !1249
  %58 = or i32 %57, 2050, !dbg !1249
  store volatile i32 %58, i32* inttoptr (i32 -2130562996 to i32*), align 4, !dbg !1249
  br label %68, !dbg !1252

59:                                               ; preds = %51
  %60 = load volatile i32, i32* inttoptr (i32 -2130562980 to i32*), align 4, !dbg !1253
  %61 = or i32 %60, 2050, !dbg !1253
  store volatile i32 %61, i32* inttoptr (i32 -2130562980 to i32*), align 4, !dbg !1253
  br label %68, !dbg !1256

62:                                               ; preds = %51
  %63 = load volatile i32, i32* inttoptr (i32 -2130562984 to i32*), align 8, !dbg !1257
  %64 = or i32 %63, 2050, !dbg !1257
  store volatile i32 %64, i32* inttoptr (i32 -2130562984 to i32*), align 8, !dbg !1257
  br label %68, !dbg !1260

65:                                               ; preds = %51
  %66 = load volatile i32, i32* inttoptr (i32 -2130562988 to i32*), align 4, !dbg !1261
  %67 = or i32 %66, 2050, !dbg !1261
  store volatile i32 %67, i32* inttoptr (i32 -2130562988 to i32*), align 4, !dbg !1261
  br label %68, !dbg !1264

68:                                               ; preds = %53, %59, %65, %62, %56, %47
  %69 = shl nuw i32 1, %9, !dbg !1265
  store volatile i32 %69, i32* inttoptr (i32 -2097106792 to i32*), align 8, !dbg !1265
  br label %97

70:                                               ; preds = %2
  %71 = icmp eq i8 %1, 1, !dbg !1266
  %72 = zext i16 %5 to i32, !dbg !1268
  %73 = icmp eq i16 %5, 0, !dbg !1268
  br i1 %71, label %74, label %87, !dbg !1269

74:                                               ; preds = %70
  br i1 %73, label %80, label %75, !dbg !1270

75:                                               ; preds = %74
  %76 = shl nuw i32 1, %72, !dbg !1272
  %77 = xor i32 %76, -1, !dbg !1275
  %78 = load volatile i32, i32* inttoptr (i32 -2097106684 to i32*), align 4, !dbg !1276
  %79 = and i32 %78, %77, !dbg !1276
  store volatile i32 %79, i32* inttoptr (i32 -2097106684 to i32*), align 4, !dbg !1276
  br label %85, !dbg !1277

80:                                               ; preds = %74
  %81 = load volatile i32, i32* inttoptr (i32 -2130562992 to i32*), align 16, !dbg !1278
  %82 = and i32 %81, -3, !dbg !1278
  store volatile i32 %82, i32* inttoptr (i32 -2130562992 to i32*), align 16, !dbg !1278
  %83 = load volatile i32, i32* inttoptr (i32 -2130562992 to i32*), align 16, !dbg !1280
  %84 = or i32 %83, 2048, !dbg !1280
  store volatile i32 %84, i32* inttoptr (i32 -2130562992 to i32*), align 16, !dbg !1280
  br label %85

85:                                               ; preds = %80, %75
  %86 = phi i32 [ 1, %80 ], [ %76, %75 ], !dbg !1281
  store volatile i32 %86, i32* inttoptr (i32 -2097106780 to i32*), align 4, !dbg !1281
  br label %97, !dbg !1282

87:                                               ; preds = %70
  br i1 %73, label %92, label %88, !dbg !1283

88:                                               ; preds = %87
  %89 = shl nuw i32 1, %72, !dbg !1285
  %90 = load volatile i32, i32* inttoptr (i32 -2097106684 to i32*), align 4, !dbg !1288
  %91 = or i32 %90, %89, !dbg !1288
  store volatile i32 %91, i32* inttoptr (i32 -2097106684 to i32*), align 4, !dbg !1288
  br label %95, !dbg !1289

92:                                               ; preds = %87
  %93 = load volatile i32, i32* inttoptr (i32 -2130562992 to i32*), align 16, !dbg !1290
  %94 = or i32 %93, 2050, !dbg !1290
  store volatile i32 %94, i32* inttoptr (i32 -2130562992 to i32*), align 16, !dbg !1290
  br label %95

95:                                               ; preds = %92, %88
  %96 = phi i32 [ 1, %92 ], [ %89, %88 ], !dbg !1292
  store volatile i32 %96, i32* inttoptr (i32 -2097106776 to i32*), align 8, !dbg !1292
  br label %97

97:                                               ; preds = %68, %44, %95, %85, %2
  %98 = phi i32 [ -1, %2 ], [ 0, %85 ], [ 0, %95 ], [ 0, %44 ], [ 0, %68 ], !dbg !1192
  ret i32 %98, !dbg !1293
}

; Function Attrs: nofree noinline norecurse nounwind optsize
define dso_local i32 @halGPO_Write(i32 noundef %0, i8 noundef zeroext %1) local_unnamed_addr #3 !dbg !1294 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !1296, metadata !DIExpression()), !dbg !1300
  call void @llvm.dbg.value(metadata i8 %1, metadata !1297, metadata !DIExpression()), !dbg !1300
  %3 = lshr i32 %0, 5, !dbg !1301
  call void @llvm.dbg.value(metadata i32 %3, metadata !1298, metadata !DIExpression(DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 16, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1300
  %4 = trunc i32 %0 to i16, !dbg !1302
  %5 = and i16 %4, 31, !dbg !1302
  call void @llvm.dbg.value(metadata i16 %5, metadata !1299, metadata !DIExpression()), !dbg !1300
  %6 = trunc i32 %3 to i16, !dbg !1303
  switch i16 %6, label %19 [
    i16 0, label %7
    i16 1, label %13
  ], !dbg !1303

7:                                                ; preds = %2
  %8 = icmp eq i8 %1, 0, !dbg !1304
  %9 = zext i16 %5 to i32, !dbg !1307
  %10 = shl nuw i32 1, %9, !dbg !1307
  br i1 %8, label %12, label %11, !dbg !1308

11:                                               ; preds = %7
  store volatile i32 %10, i32* inttoptr (i32 -2097106844 to i32*), align 4, !dbg !1309
  br label %19, !dbg !1311

12:                                               ; preds = %7
  store volatile i32 %10, i32* inttoptr (i32 -2097106840 to i32*), align 8, !dbg !1312
  br label %19

13:                                               ; preds = %2
  %14 = icmp eq i8 %1, 0, !dbg !1314
  %15 = zext i16 %5 to i32, !dbg !1316
  %16 = shl nuw i32 1, %15, !dbg !1316
  br i1 %14, label %18, label %17, !dbg !1317

17:                                               ; preds = %13
  store volatile i32 %16, i32* inttoptr (i32 -2097106828 to i32*), align 4, !dbg !1318
  br label %19, !dbg !1320

18:                                               ; preds = %13
  store volatile i32 %16, i32* inttoptr (i32 -2097106824 to i32*), align 8, !dbg !1321
  br label %19

19:                                               ; preds = %12, %11, %18, %17, %2
  %20 = phi i32 [ -1, %2 ], [ 0, %17 ], [ 0, %18 ], [ 0, %11 ], [ 0, %12 ], !dbg !1300
  ret i32 %20, !dbg !1323
}

; Function Attrs: mustprogress nofree noinline norecurse nounwind optsize willreturn
define dso_local zeroext i8 @halgetGPIO_DOUT(i32 noundef %0) local_unnamed_addr #4 !dbg !1324 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !1328, metadata !DIExpression()), !dbg !1332
  %2 = lshr i32 %0, 5, !dbg !1333
  call void @llvm.dbg.value(metadata i32 %2, metadata !1329, metadata !DIExpression(DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 16, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1332
  %3 = and i32 %0, 31, !dbg !1334
  call void @llvm.dbg.value(metadata i32 %0, metadata !1330, metadata !DIExpression(DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 16, DW_ATE_unsigned, DW_OP_constu, 31, DW_OP_and, DW_OP_stack_value)), !dbg !1332
  call void @llvm.dbg.value(metadata i8 0, metadata !1331, metadata !DIExpression()), !dbg !1332
  %4 = trunc i32 %2 to i16, !dbg !1335
  switch i16 %4, label %12 [
    i16 0, label %6
    i16 1, label %5
  ], !dbg !1335

5:                                                ; preds = %1
  call void @llvm.dbg.value(metadata i32 %9, metadata !1331, metadata !DIExpression(DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_constu, 1, DW_OP_and, DW_OP_stack_value)), !dbg !1332
  br label %6, !dbg !1336

6:                                                ; preds = %1, %5
  %7 = phi i32* [ inttoptr (i32 -2097106832 to i32*), %5 ], [ inttoptr (i32 -2097106848 to i32*), %1 ]
  %8 = load volatile i32, i32* %7, align 16, !dbg !1338
  %9 = lshr i32 %8, %3, !dbg !1338
  %10 = trunc i32 %9 to i8, !dbg !1338
  %11 = and i8 %10, 1, !dbg !1338
  call void @llvm.dbg.value(metadata i8 %11, metadata !1331, metadata !DIExpression()), !dbg !1332
  br label %12, !dbg !1339

12:                                               ; preds = %1, %6
  %13 = phi i8 [ %11, %6 ], [ 0, %1 ], !dbg !1332
  ret i8 %13, !dbg !1340
}

; Function Attrs: mustprogress nofree noinline norecurse nounwind optsize willreturn
define dso_local zeroext i8 @halgetGPIO_DIN(i32 noundef %0) local_unnamed_addr #4 !dbg !1341 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !1343, metadata !DIExpression()), !dbg !1347
  %2 = lshr i32 %0, 5, !dbg !1348
  call void @llvm.dbg.value(metadata i32 %2, metadata !1344, metadata !DIExpression(DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 16, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1347
  %3 = and i32 %0, 31, !dbg !1349
  call void @llvm.dbg.value(metadata i32 %0, metadata !1345, metadata !DIExpression(DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 16, DW_ATE_unsigned, DW_OP_constu, 31, DW_OP_and, DW_OP_stack_value)), !dbg !1347
  call void @llvm.dbg.value(metadata i8 0, metadata !1346, metadata !DIExpression()), !dbg !1347
  %4 = trunc i32 %2 to i16, !dbg !1350
  switch i16 %4, label %12 [
    i16 0, label %6
    i16 1, label %5
  ], !dbg !1350

5:                                                ; preds = %1
  call void @llvm.dbg.value(metadata i32 %9, metadata !1346, metadata !DIExpression(DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_constu, 1, DW_OP_and, DW_OP_stack_value)), !dbg !1347
  br label %6, !dbg !1351

6:                                                ; preds = %1, %5
  %7 = phi i32* [ inttoptr (i32 -2097106748 to i32*), %5 ], [ inttoptr (i32 -2097106752 to i32*), %1 ]
  %8 = load volatile i32, i32* %7, align 4, !dbg !1353
  %9 = lshr i32 %8, %3, !dbg !1353
  %10 = trunc i32 %9 to i8, !dbg !1353
  %11 = and i8 %10, 1, !dbg !1353
  call void @llvm.dbg.value(metadata i8 %11, metadata !1346, metadata !DIExpression()), !dbg !1347
  br label %12, !dbg !1354

12:                                               ; preds = %1, %6
  %13 = phi i8 [ %11, %6 ], [ 0, %1 ], !dbg !1347
  ret i8 %13, !dbg !1355
}

; Function Attrs: mustprogress nofree noinline norecurse nounwind optsize willreturn
define dso_local zeroext i8 @halgetGPIO_OutEnable(i32 noundef %0) local_unnamed_addr #4 !dbg !1356 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !1358, metadata !DIExpression()), !dbg !1362
  %2 = lshr i32 %0, 5, !dbg !1363
  call void @llvm.dbg.value(metadata i32 %2, metadata !1359, metadata !DIExpression(DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 16, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1362
  %3 = and i32 %0, 31, !dbg !1364
  call void @llvm.dbg.value(metadata i32 %0, metadata !1360, metadata !DIExpression(DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 16, DW_ATE_unsigned, DW_OP_constu, 31, DW_OP_and, DW_OP_stack_value)), !dbg !1362
  call void @llvm.dbg.value(metadata i8 0, metadata !1361, metadata !DIExpression()), !dbg !1362
  %4 = trunc i32 %2 to i16, !dbg !1365
  switch i16 %4, label %12 [
    i16 0, label %6
    i16 1, label %5
  ], !dbg !1365

5:                                                ; preds = %1
  call void @llvm.dbg.value(metadata i32 %9, metadata !1361, metadata !DIExpression(DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_constu, 1, DW_OP_and, DW_OP_stack_value)), !dbg !1362
  br label %6, !dbg !1366

6:                                                ; preds = %1, %5
  %7 = phi i32* [ inttoptr (i32 -2097106784 to i32*), %5 ], [ inttoptr (i32 -2097106800 to i32*), %1 ]
  %8 = load volatile i32, i32* %7, align 16, !dbg !1368
  %9 = lshr i32 %8, %3, !dbg !1368
  %10 = trunc i32 %9 to i8, !dbg !1368
  %11 = and i8 %10, 1, !dbg !1368
  call void @llvm.dbg.value(metadata i8 %11, metadata !1361, metadata !DIExpression()), !dbg !1362
  br label %12, !dbg !1369

12:                                               ; preds = %1, %6
  %13 = phi i8 [ %11, %6 ], [ 0, %1 ], !dbg !1362
  ret i8 %13, !dbg !1370
}

; Function Attrs: nofree noinline norecurse nounwind optsize
define dso_local i32 @halGPIO_PullUp_SET(i32 noundef %0) local_unnamed_addr #3 !dbg !1371 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !1375, metadata !DIExpression()), !dbg !1378
  %2 = lshr i32 %0, 5, !dbg !1379
  call void @llvm.dbg.value(metadata i32 %2, metadata !1376, metadata !DIExpression(DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 16, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1378
  %3 = trunc i32 %0 to i16, !dbg !1380
  %4 = and i16 %3, 31, !dbg !1380
  call void @llvm.dbg.value(metadata i16 %3, metadata !1377, metadata !DIExpression(DW_OP_constu, 31, DW_OP_and, DW_OP_stack_value)), !dbg !1378
  %5 = tail call i32 @halGPIO_PullDown_RESET(i32 noundef %0) #13, !dbg !1381
  %6 = trunc i32 %2 to i16, !dbg !1382
  switch i16 %6, label %49 [
    i16 0, label %7
    i16 1, label %39
  ], !dbg !1382

7:                                                ; preds = %1
  %8 = icmp ult i16 %4, 27, !dbg !1383
  br i1 %8, label %9, label %12, !dbg !1386

9:                                                ; preds = %7
  %10 = zext i16 %4 to i32, !dbg !1387
  %11 = shl nuw nsw i32 1, %10, !dbg !1388
  store volatile i32 %11, i32* inttoptr (i32 -2097106940 to i32*), align 4, !dbg !1388
  br label %49, !dbg !1390

12:                                               ; preds = %7
  %13 = trunc i32 %0 to i5, !dbg !1391
  switch i5 %13, label %34 [
    i5 -5, label %14
    i5 -4, label %19
    i5 -3, label %24
    i5 -2, label %29
  ], !dbg !1391

14:                                               ; preds = %12
  %15 = load volatile i32, i32* inttoptr (i32 -2130563000 to i32*), align 8, !dbg !1392
  %16 = and i32 %15, -29, !dbg !1392
  store volatile i32 %16, i32* inttoptr (i32 -2130563000 to i32*), align 8, !dbg !1392
  %17 = load volatile i32, i32* inttoptr (i32 -2130563000 to i32*), align 8, !dbg !1395
  %18 = or i32 %17, 2052, !dbg !1395
  store volatile i32 %18, i32* inttoptr (i32 -2130563000 to i32*), align 8, !dbg !1395
  br label %49, !dbg !1396

19:                                               ; preds = %12
  %20 = load volatile i32, i32* inttoptr (i32 -2130562996 to i32*), align 4, !dbg !1397
  %21 = and i32 %20, -29, !dbg !1397
  store volatile i32 %21, i32* inttoptr (i32 -2130562996 to i32*), align 4, !dbg !1397
  %22 = load volatile i32, i32* inttoptr (i32 -2130562996 to i32*), align 4, !dbg !1400
  %23 = or i32 %22, 2052, !dbg !1400
  store volatile i32 %23, i32* inttoptr (i32 -2130562996 to i32*), align 4, !dbg !1400
  br label %49, !dbg !1401

24:                                               ; preds = %12
  %25 = load volatile i32, i32* inttoptr (i32 -2130562980 to i32*), align 4, !dbg !1402
  %26 = and i32 %25, -29, !dbg !1402
  store volatile i32 %26, i32* inttoptr (i32 -2130562980 to i32*), align 4, !dbg !1402
  %27 = load volatile i32, i32* inttoptr (i32 -2130562980 to i32*), align 4, !dbg !1405
  %28 = or i32 %27, 2052, !dbg !1405
  store volatile i32 %28, i32* inttoptr (i32 -2130562980 to i32*), align 4, !dbg !1405
  br label %49, !dbg !1406

29:                                               ; preds = %12
  %30 = load volatile i32, i32* inttoptr (i32 -2130562984 to i32*), align 8, !dbg !1407
  %31 = and i32 %30, -29, !dbg !1407
  store volatile i32 %31, i32* inttoptr (i32 -2130562984 to i32*), align 8, !dbg !1407
  %32 = load volatile i32, i32* inttoptr (i32 -2130562984 to i32*), align 8, !dbg !1410
  %33 = or i32 %32, 2052, !dbg !1410
  store volatile i32 %33, i32* inttoptr (i32 -2130562984 to i32*), align 8, !dbg !1410
  br label %49, !dbg !1411

34:                                               ; preds = %12
  %35 = load volatile i32, i32* inttoptr (i32 -2130562988 to i32*), align 4, !dbg !1412
  %36 = and i32 %35, -29, !dbg !1412
  store volatile i32 %36, i32* inttoptr (i32 -2130562988 to i32*), align 4, !dbg !1412
  %37 = load volatile i32, i32* inttoptr (i32 -2130562988 to i32*), align 4, !dbg !1415
  %38 = or i32 %37, 2052, !dbg !1415
  store volatile i32 %38, i32* inttoptr (i32 -2130562988 to i32*), align 4, !dbg !1415
  br label %49, !dbg !1416

39:                                               ; preds = %1
  %40 = icmp eq i16 %4, 0, !dbg !1417
  br i1 %40, label %41, label %46, !dbg !1419

41:                                               ; preds = %39
  %42 = load volatile i32, i32* inttoptr (i32 -2130562992 to i32*), align 16, !dbg !1420
  %43 = and i32 %42, -29, !dbg !1420
  store volatile i32 %43, i32* inttoptr (i32 -2130562992 to i32*), align 16, !dbg !1420
  %44 = load volatile i32, i32* inttoptr (i32 -2130562992 to i32*), align 16, !dbg !1422
  %45 = or i32 %44, 2052, !dbg !1422
  store volatile i32 %45, i32* inttoptr (i32 -2130562992 to i32*), align 16, !dbg !1422
  br label %49, !dbg !1423

46:                                               ; preds = %39
  %47 = zext i16 %4 to i32, !dbg !1424
  %48 = shl nuw i32 1, %47, !dbg !1424
  store volatile i32 %48, i32* inttoptr (i32 -2097106924 to i32*), align 4, !dbg !1424
  br label %49

49:                                               ; preds = %14, %24, %34, %29, %19, %9, %46, %41, %1
  %50 = phi i32 [ -1, %1 ], [ 0, %41 ], [ 0, %46 ], [ 0, %9 ], [ 0, %19 ], [ 0, %29 ], [ 0, %34 ], [ 0, %24 ], [ 0, %14 ], !dbg !1378
  ret i32 %50, !dbg !1426
}

; Function Attrs: nofree noinline norecurse nounwind optsize
define dso_local i32 @halGPIO_PullDown_RESET(i32 noundef %0) local_unnamed_addr #3 !dbg !1427 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !1429, metadata !DIExpression()), !dbg !1432
  %2 = lshr i32 %0, 5, !dbg !1433
  call void @llvm.dbg.value(metadata i32 %2, metadata !1430, metadata !DIExpression(DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 16, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1432
  %3 = trunc i32 %0 to i16, !dbg !1434
  %4 = and i16 %3, 31, !dbg !1434
  call void @llvm.dbg.value(metadata i16 %3, metadata !1431, metadata !DIExpression(DW_OP_constu, 31, DW_OP_and, DW_OP_stack_value)), !dbg !1432
  %5 = trunc i32 %2 to i16, !dbg !1435
  switch i16 %5, label %48 [
    i16 0, label %6
    i16 1, label %38
  ], !dbg !1435

6:                                                ; preds = %1
  %7 = icmp ult i16 %4, 27, !dbg !1436
  br i1 %7, label %8, label %11, !dbg !1439

8:                                                ; preds = %6
  %9 = zext i16 %4 to i32, !dbg !1440
  %10 = shl nuw nsw i32 1, %9, !dbg !1441
  store volatile i32 %10, i32* inttoptr (i32 -2097106888 to i32*), align 8, !dbg !1441
  br label %48, !dbg !1443

11:                                               ; preds = %6
  %12 = trunc i32 %0 to i5, !dbg !1444
  switch i5 %12, label %33 [
    i5 -5, label %13
    i5 -4, label %18
    i5 -3, label %23
    i5 -2, label %28
  ], !dbg !1444

13:                                               ; preds = %11
  %14 = load volatile i32, i32* inttoptr (i32 -2130563000 to i32*), align 8, !dbg !1445
  %15 = and i32 %14, -29, !dbg !1445
  store volatile i32 %15, i32* inttoptr (i32 -2130563000 to i32*), align 8, !dbg !1445
  %16 = load volatile i32, i32* inttoptr (i32 -2130563000 to i32*), align 8, !dbg !1448
  %17 = or i32 %16, 2048, !dbg !1448
  store volatile i32 %17, i32* inttoptr (i32 -2130563000 to i32*), align 8, !dbg !1448
  br label %48, !dbg !1449

18:                                               ; preds = %11
  %19 = load volatile i32, i32* inttoptr (i32 -2130562996 to i32*), align 4, !dbg !1450
  %20 = and i32 %19, -29, !dbg !1450
  store volatile i32 %20, i32* inttoptr (i32 -2130562996 to i32*), align 4, !dbg !1450
  %21 = load volatile i32, i32* inttoptr (i32 -2130562996 to i32*), align 4, !dbg !1453
  %22 = or i32 %21, 2048, !dbg !1453
  store volatile i32 %22, i32* inttoptr (i32 -2130562996 to i32*), align 4, !dbg !1453
  br label %48, !dbg !1454

23:                                               ; preds = %11
  %24 = load volatile i32, i32* inttoptr (i32 -2130562980 to i32*), align 4, !dbg !1455
  %25 = and i32 %24, -29, !dbg !1455
  store volatile i32 %25, i32* inttoptr (i32 -2130562980 to i32*), align 4, !dbg !1455
  %26 = load volatile i32, i32* inttoptr (i32 -2130562980 to i32*), align 4, !dbg !1458
  %27 = or i32 %26, 2048, !dbg !1458
  store volatile i32 %27, i32* inttoptr (i32 -2130562980 to i32*), align 4, !dbg !1458
  br label %48, !dbg !1459

28:                                               ; preds = %11
  %29 = load volatile i32, i32* inttoptr (i32 -2130562984 to i32*), align 8, !dbg !1460
  %30 = and i32 %29, -29, !dbg !1460
  store volatile i32 %30, i32* inttoptr (i32 -2130562984 to i32*), align 8, !dbg !1460
  %31 = load volatile i32, i32* inttoptr (i32 -2130562984 to i32*), align 8, !dbg !1463
  %32 = or i32 %31, 2048, !dbg !1463
  store volatile i32 %32, i32* inttoptr (i32 -2130562984 to i32*), align 8, !dbg !1463
  br label %48, !dbg !1464

33:                                               ; preds = %11
  %34 = load volatile i32, i32* inttoptr (i32 -2130562988 to i32*), align 4, !dbg !1465
  %35 = and i32 %34, -29, !dbg !1465
  store volatile i32 %35, i32* inttoptr (i32 -2130562988 to i32*), align 4, !dbg !1465
  %36 = load volatile i32, i32* inttoptr (i32 -2130562988 to i32*), align 4, !dbg !1468
  %37 = or i32 %36, 2048, !dbg !1468
  store volatile i32 %37, i32* inttoptr (i32 -2130562988 to i32*), align 4, !dbg !1468
  br label %48, !dbg !1469

38:                                               ; preds = %1
  %39 = icmp eq i16 %4, 0, !dbg !1470
  br i1 %39, label %40, label %45, !dbg !1472

40:                                               ; preds = %38
  %41 = load volatile i32, i32* inttoptr (i32 -2130562992 to i32*), align 16, !dbg !1473
  %42 = and i32 %41, -29, !dbg !1473
  store volatile i32 %42, i32* inttoptr (i32 -2130562992 to i32*), align 16, !dbg !1473
  %43 = load volatile i32, i32* inttoptr (i32 -2130562992 to i32*), align 16, !dbg !1475
  %44 = or i32 %43, 2048, !dbg !1475
  store volatile i32 %44, i32* inttoptr (i32 -2130562992 to i32*), align 16, !dbg !1475
  br label %48, !dbg !1476

45:                                               ; preds = %38
  %46 = zext i16 %4 to i32, !dbg !1477
  %47 = shl nuw i32 1, %46, !dbg !1477
  store volatile i32 %47, i32* inttoptr (i32 -2097106872 to i32*), align 8, !dbg !1477
  br label %48

48:                                               ; preds = %13, %23, %33, %28, %18, %8, %45, %40, %1
  %49 = phi i32 [ -1, %1 ], [ 0, %40 ], [ 0, %45 ], [ 0, %8 ], [ 0, %18 ], [ 0, %28 ], [ 0, %33 ], [ 0, %23 ], [ 0, %13 ], !dbg !1432
  ret i32 %49, !dbg !1479
}

; Function Attrs: nofree noinline norecurse nounwind optsize
define dso_local i32 @halGPIO_PullUp_RESET(i32 noundef %0) local_unnamed_addr #3 !dbg !1480 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !1482, metadata !DIExpression()), !dbg !1485
  %2 = lshr i32 %0, 5, !dbg !1486
  call void @llvm.dbg.value(metadata i32 %2, metadata !1483, metadata !DIExpression(DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 16, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1485
  %3 = trunc i32 %0 to i16, !dbg !1487
  %4 = and i16 %3, 31, !dbg !1487
  call void @llvm.dbg.value(metadata i16 %3, metadata !1484, metadata !DIExpression(DW_OP_constu, 31, DW_OP_and, DW_OP_stack_value)), !dbg !1485
  %5 = trunc i32 %2 to i16, !dbg !1488
  switch i16 %5, label %48 [
    i16 0, label %6
    i16 1, label %38
  ], !dbg !1488

6:                                                ; preds = %1
  %7 = icmp ult i16 %4, 27, !dbg !1489
  br i1 %7, label %8, label %11, !dbg !1492

8:                                                ; preds = %6
  %9 = zext i16 %4 to i32, !dbg !1493
  %10 = shl nuw nsw i32 1, %9, !dbg !1494
  store volatile i32 %10, i32* inttoptr (i32 -2097106936 to i32*), align 8, !dbg !1494
  br label %48, !dbg !1496

11:                                               ; preds = %6
  %12 = trunc i32 %0 to i5, !dbg !1497
  switch i5 %12, label %33 [
    i5 -5, label %13
    i5 -4, label %18
    i5 -3, label %23
    i5 -2, label %28
  ], !dbg !1497

13:                                               ; preds = %11
  %14 = load volatile i32, i32* inttoptr (i32 -2130563000 to i32*), align 8, !dbg !1498
  %15 = and i32 %14, -29, !dbg !1498
  store volatile i32 %15, i32* inttoptr (i32 -2130563000 to i32*), align 8, !dbg !1498
  %16 = load volatile i32, i32* inttoptr (i32 -2130563000 to i32*), align 8, !dbg !1501
  %17 = or i32 %16, 2048, !dbg !1501
  store volatile i32 %17, i32* inttoptr (i32 -2130563000 to i32*), align 8, !dbg !1501
  br label %48, !dbg !1502

18:                                               ; preds = %11
  %19 = load volatile i32, i32* inttoptr (i32 -2130562996 to i32*), align 4, !dbg !1503
  %20 = and i32 %19, -29, !dbg !1503
  store volatile i32 %20, i32* inttoptr (i32 -2130562996 to i32*), align 4, !dbg !1503
  %21 = load volatile i32, i32* inttoptr (i32 -2130562996 to i32*), align 4, !dbg !1506
  %22 = or i32 %21, 2048, !dbg !1506
  store volatile i32 %22, i32* inttoptr (i32 -2130562996 to i32*), align 4, !dbg !1506
  br label %48, !dbg !1507

23:                                               ; preds = %11
  %24 = load volatile i32, i32* inttoptr (i32 -2130562980 to i32*), align 4, !dbg !1508
  %25 = and i32 %24, -29, !dbg !1508
  store volatile i32 %25, i32* inttoptr (i32 -2130562980 to i32*), align 4, !dbg !1508
  %26 = load volatile i32, i32* inttoptr (i32 -2130562980 to i32*), align 4, !dbg !1511
  %27 = or i32 %26, 2048, !dbg !1511
  store volatile i32 %27, i32* inttoptr (i32 -2130562980 to i32*), align 4, !dbg !1511
  br label %48, !dbg !1512

28:                                               ; preds = %11
  %29 = load volatile i32, i32* inttoptr (i32 -2130562984 to i32*), align 8, !dbg !1513
  %30 = and i32 %29, -29, !dbg !1513
  store volatile i32 %30, i32* inttoptr (i32 -2130562984 to i32*), align 8, !dbg !1513
  %31 = load volatile i32, i32* inttoptr (i32 -2130562984 to i32*), align 8, !dbg !1516
  %32 = or i32 %31, 2048, !dbg !1516
  store volatile i32 %32, i32* inttoptr (i32 -2130562984 to i32*), align 8, !dbg !1516
  br label %48, !dbg !1517

33:                                               ; preds = %11
  %34 = load volatile i32, i32* inttoptr (i32 -2130562988 to i32*), align 4, !dbg !1518
  %35 = and i32 %34, -29, !dbg !1518
  store volatile i32 %35, i32* inttoptr (i32 -2130562988 to i32*), align 4, !dbg !1518
  %36 = load volatile i32, i32* inttoptr (i32 -2130562988 to i32*), align 4, !dbg !1521
  %37 = or i32 %36, 2048, !dbg !1521
  store volatile i32 %37, i32* inttoptr (i32 -2130562988 to i32*), align 4, !dbg !1521
  br label %48, !dbg !1522

38:                                               ; preds = %1
  %39 = icmp eq i16 %4, 0, !dbg !1523
  br i1 %39, label %40, label %45, !dbg !1525

40:                                               ; preds = %38
  %41 = load volatile i32, i32* inttoptr (i32 -2130562992 to i32*), align 16, !dbg !1526
  %42 = and i32 %41, -29, !dbg !1526
  store volatile i32 %42, i32* inttoptr (i32 -2130562992 to i32*), align 16, !dbg !1526
  %43 = load volatile i32, i32* inttoptr (i32 -2130562992 to i32*), align 16, !dbg !1528
  %44 = or i32 %43, 2048, !dbg !1528
  store volatile i32 %44, i32* inttoptr (i32 -2130562992 to i32*), align 16, !dbg !1528
  br label %48, !dbg !1529

45:                                               ; preds = %38
  %46 = zext i16 %4 to i32, !dbg !1530
  %47 = shl nuw i32 1, %46, !dbg !1530
  store volatile i32 %47, i32* inttoptr (i32 -2097106920 to i32*), align 8, !dbg !1530
  br label %48

48:                                               ; preds = %13, %23, %33, %28, %18, %8, %45, %40, %1
  %49 = phi i32 [ -1, %1 ], [ 0, %40 ], [ 0, %45 ], [ 0, %8 ], [ 0, %18 ], [ 0, %28 ], [ 0, %33 ], [ 0, %23 ], [ 0, %13 ], !dbg !1485
  ret i32 %49, !dbg !1532
}

; Function Attrs: nofree noinline norecurse nounwind optsize
define dso_local i32 @halGPIO_PullDown_SET(i32 noundef %0) local_unnamed_addr #3 !dbg !1533 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !1535, metadata !DIExpression()), !dbg !1538
  %2 = lshr i32 %0, 5, !dbg !1539
  call void @llvm.dbg.value(metadata i32 %2, metadata !1536, metadata !DIExpression(DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 16, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1538
  %3 = trunc i32 %0 to i16, !dbg !1540
  %4 = and i16 %3, 31, !dbg !1540
  call void @llvm.dbg.value(metadata i16 %3, metadata !1537, metadata !DIExpression(DW_OP_constu, 31, DW_OP_and, DW_OP_stack_value)), !dbg !1538
  %5 = tail call i32 @halGPIO_PullUp_RESET(i32 noundef %0) #13, !dbg !1541
  %6 = trunc i32 %2 to i16, !dbg !1542
  switch i16 %6, label %49 [
    i16 0, label %7
    i16 1, label %39
  ], !dbg !1542

7:                                                ; preds = %1
  %8 = icmp ult i16 %4, 27, !dbg !1543
  br i1 %8, label %9, label %12, !dbg !1546

9:                                                ; preds = %7
  %10 = zext i16 %4 to i32, !dbg !1547
  %11 = shl nuw nsw i32 1, %10, !dbg !1548
  store volatile i32 %11, i32* inttoptr (i32 -2097106892 to i32*), align 4, !dbg !1548
  br label %49, !dbg !1550

12:                                               ; preds = %7
  %13 = trunc i32 %0 to i5, !dbg !1551
  switch i5 %13, label %34 [
    i5 -5, label %14
    i5 -4, label %19
    i5 -3, label %24
    i5 -2, label %29
  ], !dbg !1551

14:                                               ; preds = %12
  %15 = load volatile i32, i32* inttoptr (i32 -2130563000 to i32*), align 8, !dbg !1552
  %16 = and i32 %15, -29, !dbg !1552
  store volatile i32 %16, i32* inttoptr (i32 -2130563000 to i32*), align 8, !dbg !1552
  %17 = load volatile i32, i32* inttoptr (i32 -2130563000 to i32*), align 8, !dbg !1555
  %18 = or i32 %17, 2068, !dbg !1555
  store volatile i32 %18, i32* inttoptr (i32 -2130563000 to i32*), align 8, !dbg !1555
  br label %49, !dbg !1556

19:                                               ; preds = %12
  %20 = load volatile i32, i32* inttoptr (i32 -2130562996 to i32*), align 4, !dbg !1557
  %21 = and i32 %20, -29, !dbg !1557
  store volatile i32 %21, i32* inttoptr (i32 -2130562996 to i32*), align 4, !dbg !1557
  %22 = load volatile i32, i32* inttoptr (i32 -2130562996 to i32*), align 4, !dbg !1560
  %23 = or i32 %22, 2068, !dbg !1560
  store volatile i32 %23, i32* inttoptr (i32 -2130562996 to i32*), align 4, !dbg !1560
  br label %49, !dbg !1561

24:                                               ; preds = %12
  %25 = load volatile i32, i32* inttoptr (i32 -2130562980 to i32*), align 4, !dbg !1562
  %26 = and i32 %25, -29, !dbg !1562
  store volatile i32 %26, i32* inttoptr (i32 -2130562980 to i32*), align 4, !dbg !1562
  %27 = load volatile i32, i32* inttoptr (i32 -2130562980 to i32*), align 4, !dbg !1565
  %28 = or i32 %27, 2068, !dbg !1565
  store volatile i32 %28, i32* inttoptr (i32 -2130562980 to i32*), align 4, !dbg !1565
  br label %49, !dbg !1566

29:                                               ; preds = %12
  %30 = load volatile i32, i32* inttoptr (i32 -2130562984 to i32*), align 8, !dbg !1567
  %31 = and i32 %30, -29, !dbg !1567
  store volatile i32 %31, i32* inttoptr (i32 -2130562984 to i32*), align 8, !dbg !1567
  %32 = load volatile i32, i32* inttoptr (i32 -2130562984 to i32*), align 8, !dbg !1570
  %33 = or i32 %32, 2068, !dbg !1570
  store volatile i32 %33, i32* inttoptr (i32 -2130562984 to i32*), align 8, !dbg !1570
  br label %49, !dbg !1571

34:                                               ; preds = %12
  %35 = load volatile i32, i32* inttoptr (i32 -2130562988 to i32*), align 4, !dbg !1572
  %36 = and i32 %35, -29, !dbg !1572
  store volatile i32 %36, i32* inttoptr (i32 -2130562988 to i32*), align 4, !dbg !1572
  %37 = load volatile i32, i32* inttoptr (i32 -2130562988 to i32*), align 4, !dbg !1575
  %38 = or i32 %37, 2068, !dbg !1575
  store volatile i32 %38, i32* inttoptr (i32 -2130562988 to i32*), align 4, !dbg !1575
  br label %49, !dbg !1576

39:                                               ; preds = %1
  %40 = icmp eq i16 %4, 0, !dbg !1577
  br i1 %40, label %41, label %46, !dbg !1579

41:                                               ; preds = %39
  %42 = load volatile i32, i32* inttoptr (i32 -2130562992 to i32*), align 16, !dbg !1580
  %43 = and i32 %42, -29, !dbg !1580
  store volatile i32 %43, i32* inttoptr (i32 -2130562992 to i32*), align 16, !dbg !1580
  %44 = load volatile i32, i32* inttoptr (i32 -2130562992 to i32*), align 16, !dbg !1582
  %45 = or i32 %44, 2068, !dbg !1582
  store volatile i32 %45, i32* inttoptr (i32 -2130562992 to i32*), align 16, !dbg !1582
  br label %49, !dbg !1583

46:                                               ; preds = %39
  %47 = zext i16 %4 to i32, !dbg !1584
  %48 = shl nuw i32 1, %47, !dbg !1584
  store volatile i32 %48, i32* inttoptr (i32 -2097106876 to i32*), align 4, !dbg !1584
  br label %49

49:                                               ; preds = %14, %24, %34, %29, %19, %9, %46, %41, %1
  %50 = phi i32 [ -1, %1 ], [ 0, %41 ], [ 0, %46 ], [ 0, %9 ], [ 0, %19 ], [ 0, %29 ], [ 0, %34 ], [ 0, %24 ], [ 0, %14 ], !dbg !1538
  ret i32 %50, !dbg !1586
}

; Function Attrs: nofree noinline norecurse nounwind optsize
define dso_local i32 @halGPIO_SetDriving(i32 noundef %0, i8 noundef zeroext %1) local_unnamed_addr #3 !dbg !1587 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !1589, metadata !DIExpression()), !dbg !1593
  call void @llvm.dbg.value(metadata i8 %1, metadata !1590, metadata !DIExpression()), !dbg !1593
  %3 = lshr i32 %0, 4, !dbg !1594
  call void @llvm.dbg.value(metadata i32 %3, metadata !1591, metadata !DIExpression(DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 16, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1593
  %4 = trunc i32 %0 to i16, !dbg !1595
  %5 = and i16 %4, 15, !dbg !1595
  call void @llvm.dbg.value(metadata i16 %4, metadata !1592, metadata !DIExpression(DW_OP_constu, 15, DW_OP_and, DW_OP_stack_value)), !dbg !1593
  %6 = trunc i32 %3 to i16, !dbg !1596
  switch i16 %6, label %131 [
    i16 0, label %7
    i16 1, label %20
    i16 2, label %92
    i16 3, label %118
  ], !dbg !1596

7:                                                ; preds = %2
  %8 = shl nuw nsw i16 %5, 1, !dbg !1597
  %9 = zext i16 %8 to i32, !dbg !1597
  %10 = shl nuw i32 3, %9, !dbg !1599
  %11 = xor i32 %10, -1, !dbg !1600
  %12 = load volatile i32, i32* inttoptr (i32 -2097106736 to i32*), align 16, !dbg !1601
  %13 = and i32 %12, %11, !dbg !1601
  store volatile i32 %13, i32* inttoptr (i32 -2097106736 to i32*), align 16, !dbg !1601
  %14 = lshr i8 %1, 2, !dbg !1602
  %15 = zext i8 %14 to i32, !dbg !1602
  %16 = add nsw i32 %15, -1, !dbg !1603
  %17 = shl i32 %16, %9, !dbg !1604
  %18 = load volatile i32, i32* inttoptr (i32 -2097106736 to i32*), align 16, !dbg !1605
  %19 = or i32 %18, %17, !dbg !1605
  store volatile i32 %19, i32* inttoptr (i32 -2097106736 to i32*), align 16, !dbg !1605
  br label %131, !dbg !1606

20:                                               ; preds = %2
  %21 = icmp ult i16 %5, 11, !dbg !1607
  br i1 %21, label %22, label %35, !dbg !1609

22:                                               ; preds = %20
  %23 = shl nuw nsw i16 %5, 1, !dbg !1610
  %24 = zext i16 %23 to i32, !dbg !1610
  %25 = shl nuw nsw i32 3, %24, !dbg !1612
  %26 = xor i32 %25, -1, !dbg !1613
  %27 = load volatile i32, i32* inttoptr (i32 -2097106732 to i32*), align 4, !dbg !1614
  %28 = and i32 %27, %26, !dbg !1614
  store volatile i32 %28, i32* inttoptr (i32 -2097106732 to i32*), align 4, !dbg !1614
  %29 = lshr i8 %1, 2, !dbg !1615
  %30 = zext i8 %29 to i32, !dbg !1615
  %31 = add nsw i32 %30, -1, !dbg !1616
  %32 = shl nsw i32 %31, %24, !dbg !1617
  %33 = load volatile i32, i32* inttoptr (i32 -2097106732 to i32*), align 4, !dbg !1618
  %34 = or i32 %33, %32, !dbg !1618
  store volatile i32 %34, i32* inttoptr (i32 -2097106732 to i32*), align 4, !dbg !1618
  br label %131, !dbg !1619

35:                                               ; preds = %20
  %36 = trunc i32 %0 to i4, !dbg !1620
  switch i4 %36, label %81 [
    i4 -5, label %37
    i4 -4, label %48
    i4 -3, label %59
    i4 -2, label %70
  ], !dbg !1620

37:                                               ; preds = %35
  %38 = load volatile i32, i32* inttoptr (i32 -2130563000 to i32*), align 8, !dbg !1621
  %39 = and i32 %38, -449, !dbg !1621
  store volatile i32 %39, i32* inttoptr (i32 -2130563000 to i32*), align 8, !dbg !1621
  %40 = lshr i8 %1, 1, !dbg !1624
  %41 = zext i8 %40 to i32, !dbg !1624
  %42 = shl nuw nsw i32 %41, 6, !dbg !1625
  %43 = add nsw i32 %42, -64, !dbg !1625
  %44 = load volatile i32, i32* inttoptr (i32 -2130563000 to i32*), align 8, !dbg !1626
  %45 = or i32 %44, %43, !dbg !1626
  store volatile i32 %45, i32* inttoptr (i32 -2130563000 to i32*), align 8, !dbg !1626
  %46 = load volatile i32, i32* inttoptr (i32 -2130563000 to i32*), align 8, !dbg !1627
  %47 = or i32 %46, 2048, !dbg !1627
  store volatile i32 %47, i32* inttoptr (i32 -2130563000 to i32*), align 8, !dbg !1627
  br label %131, !dbg !1628

48:                                               ; preds = %35
  %49 = load volatile i32, i32* inttoptr (i32 -2130562996 to i32*), align 4, !dbg !1629
  %50 = and i32 %49, -449, !dbg !1629
  store volatile i32 %50, i32* inttoptr (i32 -2130562996 to i32*), align 4, !dbg !1629
  %51 = lshr i8 %1, 1, !dbg !1632
  %52 = zext i8 %51 to i32, !dbg !1632
  %53 = shl nuw nsw i32 %52, 6, !dbg !1633
  %54 = add nsw i32 %53, -64, !dbg !1633
  %55 = load volatile i32, i32* inttoptr (i32 -2130562996 to i32*), align 4, !dbg !1634
  %56 = or i32 %55, %54, !dbg !1634
  store volatile i32 %56, i32* inttoptr (i32 -2130562996 to i32*), align 4, !dbg !1634
  %57 = load volatile i32, i32* inttoptr (i32 -2130562996 to i32*), align 4, !dbg !1635
  %58 = or i32 %57, 2048, !dbg !1635
  store volatile i32 %58, i32* inttoptr (i32 -2130562996 to i32*), align 4, !dbg !1635
  br label %131, !dbg !1636

59:                                               ; preds = %35
  %60 = load volatile i32, i32* inttoptr (i32 -2130562980 to i32*), align 4, !dbg !1637
  %61 = and i32 %60, -449, !dbg !1637
  store volatile i32 %61, i32* inttoptr (i32 -2130562980 to i32*), align 4, !dbg !1637
  %62 = lshr i8 %1, 1, !dbg !1640
  %63 = zext i8 %62 to i32, !dbg !1640
  %64 = shl nuw nsw i32 %63, 6, !dbg !1641
  %65 = add nsw i32 %64, -64, !dbg !1641
  %66 = load volatile i32, i32* inttoptr (i32 -2130562980 to i32*), align 4, !dbg !1642
  %67 = or i32 %66, %65, !dbg !1642
  store volatile i32 %67, i32* inttoptr (i32 -2130562980 to i32*), align 4, !dbg !1642
  %68 = load volatile i32, i32* inttoptr (i32 -2130562980 to i32*), align 4, !dbg !1643
  %69 = or i32 %68, 2048, !dbg !1643
  store volatile i32 %69, i32* inttoptr (i32 -2130562980 to i32*), align 4, !dbg !1643
  br label %131, !dbg !1644

70:                                               ; preds = %35
  %71 = load volatile i32, i32* inttoptr (i32 -2130562984 to i32*), align 8, !dbg !1645
  %72 = and i32 %71, -449, !dbg !1645
  store volatile i32 %72, i32* inttoptr (i32 -2130562984 to i32*), align 8, !dbg !1645
  %73 = lshr i8 %1, 1, !dbg !1648
  %74 = zext i8 %73 to i32, !dbg !1648
  %75 = shl nuw nsw i32 %74, 6, !dbg !1649
  %76 = add nsw i32 %75, -64, !dbg !1649
  %77 = load volatile i32, i32* inttoptr (i32 -2130562984 to i32*), align 8, !dbg !1650
  %78 = or i32 %77, %76, !dbg !1650
  store volatile i32 %78, i32* inttoptr (i32 -2130562984 to i32*), align 8, !dbg !1650
  %79 = load volatile i32, i32* inttoptr (i32 -2130562984 to i32*), align 8, !dbg !1651
  %80 = or i32 %79, 2048, !dbg !1651
  store volatile i32 %80, i32* inttoptr (i32 -2130562984 to i32*), align 8, !dbg !1651
  br label %131, !dbg !1652

81:                                               ; preds = %35
  %82 = load volatile i32, i32* inttoptr (i32 -2130562988 to i32*), align 4, !dbg !1653
  %83 = and i32 %82, -449, !dbg !1653
  store volatile i32 %83, i32* inttoptr (i32 -2130562988 to i32*), align 4, !dbg !1653
  %84 = lshr i8 %1, 1, !dbg !1656
  %85 = zext i8 %84 to i32, !dbg !1656
  %86 = shl nuw nsw i32 %85, 6, !dbg !1657
  %87 = add nsw i32 %86, -64, !dbg !1657
  %88 = load volatile i32, i32* inttoptr (i32 -2130562988 to i32*), align 4, !dbg !1658
  %89 = or i32 %88, %87, !dbg !1658
  store volatile i32 %89, i32* inttoptr (i32 -2130562988 to i32*), align 4, !dbg !1658
  %90 = load volatile i32, i32* inttoptr (i32 -2130562988 to i32*), align 4, !dbg !1659
  %91 = or i32 %90, 2048, !dbg !1659
  store volatile i32 %91, i32* inttoptr (i32 -2130562988 to i32*), align 4, !dbg !1659
  br label %131, !dbg !1660

92:                                               ; preds = %2
  %93 = icmp eq i16 %5, 0, !dbg !1661
  br i1 %93, label %94, label %105, !dbg !1663

94:                                               ; preds = %92
  %95 = load volatile i32, i32* inttoptr (i32 -2130562992 to i32*), align 16, !dbg !1664
  %96 = and i32 %95, -449, !dbg !1664
  store volatile i32 %96, i32* inttoptr (i32 -2130562992 to i32*), align 16, !dbg !1664
  %97 = lshr i8 %1, 1, !dbg !1666
  %98 = zext i8 %97 to i32, !dbg !1666
  %99 = shl nuw nsw i32 %98, 6, !dbg !1667
  %100 = add nsw i32 %99, -64, !dbg !1667
  %101 = load volatile i32, i32* inttoptr (i32 -2130562992 to i32*), align 16, !dbg !1668
  %102 = or i32 %101, %100, !dbg !1668
  store volatile i32 %102, i32* inttoptr (i32 -2130562992 to i32*), align 16, !dbg !1668
  %103 = load volatile i32, i32* inttoptr (i32 -2130562992 to i32*), align 16, !dbg !1669
  %104 = or i32 %103, 2048, !dbg !1669
  store volatile i32 %104, i32* inttoptr (i32 -2130562992 to i32*), align 16, !dbg !1669
  br label %131, !dbg !1670

105:                                              ; preds = %92
  %106 = shl nuw nsw i16 %5, 1, !dbg !1671
  %107 = zext i16 %106 to i32, !dbg !1671
  %108 = shl nuw i32 3, %107, !dbg !1673
  %109 = xor i32 %108, -1, !dbg !1674
  %110 = load volatile i32, i32* inttoptr (i32 -2097106728 to i32*), align 8, !dbg !1675
  %111 = and i32 %110, %109, !dbg !1675
  store volatile i32 %111, i32* inttoptr (i32 -2097106728 to i32*), align 8, !dbg !1675
  %112 = lshr i8 %1, 2, !dbg !1676
  %113 = zext i8 %112 to i32, !dbg !1676
  %114 = add nsw i32 %113, -1, !dbg !1677
  %115 = shl i32 %114, %107, !dbg !1678
  %116 = load volatile i32, i32* inttoptr (i32 -2097106728 to i32*), align 8, !dbg !1679
  %117 = or i32 %116, %115, !dbg !1679
  store volatile i32 %117, i32* inttoptr (i32 -2097106728 to i32*), align 8, !dbg !1679
  br label %131

118:                                              ; preds = %2
  %119 = shl nuw nsw i16 %5, 1, !dbg !1680
  %120 = zext i16 %119 to i32, !dbg !1680
  %121 = shl nuw i32 3, %120, !dbg !1681
  %122 = xor i32 %121, -1, !dbg !1682
  %123 = load volatile i32, i32* inttoptr (i32 -2097106724 to i32*), align 4, !dbg !1683
  %124 = and i32 %123, %122, !dbg !1683
  store volatile i32 %124, i32* inttoptr (i32 -2097106724 to i32*), align 4, !dbg !1683
  %125 = lshr i8 %1, 2, !dbg !1684
  %126 = zext i8 %125 to i32, !dbg !1684
  %127 = add nsw i32 %126, -1, !dbg !1685
  %128 = shl i32 %127, %120, !dbg !1686
  %129 = load volatile i32, i32* inttoptr (i32 -2097106724 to i32*), align 4, !dbg !1687
  %130 = or i32 %129, %128, !dbg !1687
  store volatile i32 %130, i32* inttoptr (i32 -2097106724 to i32*), align 4, !dbg !1687
  br label %131, !dbg !1688

131:                                              ; preds = %7, %118, %37, %59, %81, %70, %48, %22, %105, %94, %2
  %132 = phi i32 [ -1, %2 ], [ 0, %94 ], [ 0, %105 ], [ 0, %22 ], [ 0, %48 ], [ 0, %70 ], [ 0, %81 ], [ 0, %59 ], [ 0, %37 ], [ 0, %118 ], [ 0, %7 ], !dbg !1593
  ret i32 %132, !dbg !1689
}

; Function Attrs: mustprogress nofree noinline norecurse nounwind optsize willreturn
define dso_local i32 @halGPIO_GetDriving(i32 noundef %0, i8* nocapture noundef writeonly %1) local_unnamed_addr #4 !dbg !1690 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !1695, metadata !DIExpression()), !dbg !1700
  call void @llvm.dbg.value(metadata i8* %1, metadata !1696, metadata !DIExpression()), !dbg !1700
  %3 = lshr i32 %0, 4, !dbg !1701
  call void @llvm.dbg.value(metadata i32 %3, metadata !1697, metadata !DIExpression(DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 16, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1700
  %4 = trunc i32 %0 to i16, !dbg !1702
  %5 = and i16 %4, 15, !dbg !1702
  call void @llvm.dbg.value(metadata i16 %4, metadata !1698, metadata !DIExpression(DW_OP_constu, 15, DW_OP_and, DW_OP_stack_value)), !dbg !1700
  %6 = trunc i32 %3 to i16, !dbg !1703
  switch i16 %6, label %91 [
    i16 0, label %7
    i16 1, label %17
    i16 2, label %61
    i16 3, label %79
  ], !dbg !1703

7:                                                ; preds = %2
  %8 = load volatile i32, i32* inttoptr (i32 -2097106736 to i32*), align 16, !dbg !1704
  call void @llvm.dbg.value(metadata i32 %8, metadata !1699, metadata !DIExpression()), !dbg !1700
  %9 = shl nuw nsw i16 %5, 1, !dbg !1706
  %10 = zext i16 %9 to i32, !dbg !1706
  %11 = shl nuw i32 3, %10, !dbg !1707
  %12 = and i32 %8, %11, !dbg !1708
  call void @llvm.dbg.value(metadata i32 %12, metadata !1699, metadata !DIExpression()), !dbg !1700
  %13 = lshr i32 %12, %10, !dbg !1709
  %14 = trunc i32 %13 to i8, !dbg !1710
  %15 = shl i8 %14, 2, !dbg !1710
  %16 = add i8 %15, 4, !dbg !1710
  br label %89, !dbg !1711

17:                                               ; preds = %2
  %18 = icmp ult i16 %5, 11, !dbg !1712
  br i1 %18, label %19, label %29, !dbg !1714

19:                                               ; preds = %17
  %20 = load volatile i32, i32* inttoptr (i32 -2097106732 to i32*), align 4, !dbg !1715
  call void @llvm.dbg.value(metadata i32 %20, metadata !1699, metadata !DIExpression()), !dbg !1700
  %21 = shl nuw nsw i16 %5, 1, !dbg !1717
  %22 = zext i16 %21 to i32, !dbg !1717
  %23 = shl nuw nsw i32 3, %22, !dbg !1718
  %24 = and i32 %20, %23, !dbg !1719
  call void @llvm.dbg.value(metadata i32 %24, metadata !1699, metadata !DIExpression()), !dbg !1700
  %25 = lshr i32 %24, %22, !dbg !1720
  %26 = trunc i32 %25 to i8, !dbg !1721
  %27 = shl i8 %26, 2, !dbg !1721
  %28 = add i8 %27, 4, !dbg !1721
  br label %89, !dbg !1722

29:                                               ; preds = %17
  %30 = trunc i32 %0 to i4, !dbg !1723
  switch i4 %30, label %55 [
    i4 -5, label %31
    i4 -4, label %37
    i4 -3, label %43
    i4 -2, label %49
  ], !dbg !1723

31:                                               ; preds = %29
  %32 = load volatile i32, i32* inttoptr (i32 -2130563000 to i32*), align 8, !dbg !1724
  call void @llvm.dbg.value(metadata i32 %32, metadata !1699, metadata !DIExpression()), !dbg !1700
  call void @llvm.dbg.value(metadata i32 %32, metadata !1699, metadata !DIExpression(DW_OP_constu, 448, DW_OP_and, DW_OP_stack_value)), !dbg !1700
  %33 = lshr i32 %32, 5, !dbg !1727
  %34 = trunc i32 %33 to i8, !dbg !1728
  %35 = and i8 %34, 14, !dbg !1728
  %36 = add nuw nsw i8 %35, 2, !dbg !1728
  br label %89, !dbg !1729

37:                                               ; preds = %29
  %38 = load volatile i32, i32* inttoptr (i32 -2130562996 to i32*), align 4, !dbg !1730
  call void @llvm.dbg.value(metadata i32 %38, metadata !1699, metadata !DIExpression()), !dbg !1700
  call void @llvm.dbg.value(metadata i32 %38, metadata !1699, metadata !DIExpression(DW_OP_constu, 448, DW_OP_and, DW_OP_stack_value)), !dbg !1700
  %39 = lshr i32 %38, 5, !dbg !1733
  %40 = trunc i32 %39 to i8, !dbg !1734
  %41 = and i8 %40, 14, !dbg !1734
  %42 = add nuw nsw i8 %41, 2, !dbg !1734
  br label %89, !dbg !1735

43:                                               ; preds = %29
  %44 = load volatile i32, i32* inttoptr (i32 -2130562980 to i32*), align 4, !dbg !1736
  call void @llvm.dbg.value(metadata i32 %44, metadata !1699, metadata !DIExpression()), !dbg !1700
  call void @llvm.dbg.value(metadata i32 %44, metadata !1699, metadata !DIExpression(DW_OP_constu, 448, DW_OP_and, DW_OP_stack_value)), !dbg !1700
  %45 = lshr i32 %44, 5, !dbg !1739
  %46 = trunc i32 %45 to i8, !dbg !1740
  %47 = and i8 %46, 14, !dbg !1740
  %48 = add nuw nsw i8 %47, 2, !dbg !1740
  br label %89, !dbg !1741

49:                                               ; preds = %29
  %50 = load volatile i32, i32* inttoptr (i32 -2130562984 to i32*), align 8, !dbg !1742
  call void @llvm.dbg.value(metadata i32 %50, metadata !1699, metadata !DIExpression()), !dbg !1700
  call void @llvm.dbg.value(metadata i32 %50, metadata !1699, metadata !DIExpression(DW_OP_constu, 448, DW_OP_and, DW_OP_stack_value)), !dbg !1700
  %51 = lshr i32 %50, 5, !dbg !1745
  %52 = trunc i32 %51 to i8, !dbg !1746
  %53 = and i8 %52, 14, !dbg !1746
  %54 = add nuw nsw i8 %53, 2, !dbg !1746
  br label %89, !dbg !1747

55:                                               ; preds = %29
  %56 = load volatile i32, i32* inttoptr (i32 -2130562988 to i32*), align 4, !dbg !1748
  call void @llvm.dbg.value(metadata i32 %56, metadata !1699, metadata !DIExpression()), !dbg !1700
  call void @llvm.dbg.value(metadata i32 %56, metadata !1699, metadata !DIExpression(DW_OP_constu, 448, DW_OP_and, DW_OP_stack_value)), !dbg !1700
  %57 = lshr i32 %56, 5, !dbg !1751
  %58 = trunc i32 %57 to i8, !dbg !1752
  %59 = and i8 %58, 14, !dbg !1752
  %60 = add nuw nsw i8 %59, 2, !dbg !1752
  br label %89, !dbg !1753

61:                                               ; preds = %2
  %62 = icmp eq i16 %5, 0, !dbg !1754
  br i1 %62, label %63, label %69, !dbg !1756

63:                                               ; preds = %61
  %64 = load volatile i32, i32* inttoptr (i32 -2130562992 to i32*), align 16, !dbg !1757
  call void @llvm.dbg.value(metadata i32 %64, metadata !1699, metadata !DIExpression()), !dbg !1700
  call void @llvm.dbg.value(metadata i32 %64, metadata !1699, metadata !DIExpression(DW_OP_constu, 448, DW_OP_and, DW_OP_stack_value)), !dbg !1700
  %65 = lshr i32 %64, 5, !dbg !1759
  %66 = trunc i32 %65 to i8, !dbg !1760
  %67 = and i8 %66, 14, !dbg !1760
  %68 = add nuw nsw i8 %67, 2, !dbg !1760
  br label %89, !dbg !1761

69:                                               ; preds = %61
  %70 = load volatile i32, i32* inttoptr (i32 -2097106728 to i32*), align 8, !dbg !1762
  call void @llvm.dbg.value(metadata i32 %70, metadata !1699, metadata !DIExpression()), !dbg !1700
  %71 = shl nuw nsw i16 %5, 1, !dbg !1764
  %72 = zext i16 %71 to i32, !dbg !1764
  %73 = shl nuw i32 3, %72, !dbg !1765
  %74 = and i32 %70, %73, !dbg !1766
  call void @llvm.dbg.value(metadata i32 %74, metadata !1699, metadata !DIExpression()), !dbg !1700
  %75 = lshr i32 %74, %72, !dbg !1767
  %76 = trunc i32 %75 to i8, !dbg !1768
  %77 = shl i8 %76, 2, !dbg !1768
  %78 = add i8 %77, 4, !dbg !1768
  br label %89

79:                                               ; preds = %2
  %80 = load volatile i32, i32* inttoptr (i32 -2097106724 to i32*), align 4, !dbg !1769
  call void @llvm.dbg.value(metadata i32 %80, metadata !1699, metadata !DIExpression()), !dbg !1700
  %81 = shl nuw nsw i16 %5, 1, !dbg !1770
  %82 = zext i16 %81 to i32, !dbg !1770
  %83 = shl nuw i32 3, %82, !dbg !1771
  %84 = and i32 %80, %83, !dbg !1772
  call void @llvm.dbg.value(metadata i32 %84, metadata !1699, metadata !DIExpression()), !dbg !1700
  %85 = lshr i32 %84, %82, !dbg !1773
  %86 = trunc i32 %85 to i8, !dbg !1774
  %87 = shl i8 %86, 2, !dbg !1774
  %88 = add i8 %87, 4, !dbg !1774
  br label %89, !dbg !1775

89:                                               ; preds = %63, %69, %19, %37, %49, %55, %43, %31, %79, %7
  %90 = phi i8 [ %16, %7 ], [ %88, %79 ], [ %36, %31 ], [ %48, %43 ], [ %60, %55 ], [ %54, %49 ], [ %42, %37 ], [ %28, %19 ], [ %78, %69 ], [ %68, %63 ]
  store i8 %90, i8* %1, align 1, !dbg !1776
  br label %91, !dbg !1777

91:                                               ; preds = %89, %2
  %92 = phi i32 [ -1, %2 ], [ 0, %89 ], !dbg !1700
  ret i32 %92, !dbg !1777
}

; Function Attrs: nofree noinline norecurse nounwind optsize
define dso_local void @topPAD_Control_GPIO(i32 noundef %0, i32 noundef %1) local_unnamed_addr #3 !dbg !1778 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !1783, metadata !DIExpression()), !dbg !1787
  call void @llvm.dbg.value(metadata i32 %1, metadata !1784, metadata !DIExpression()), !dbg !1787
  %3 = lshr i32 %0, 5, !dbg !1788
  call void @llvm.dbg.value(metadata i32 %3, metadata !1785, metadata !DIExpression(DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 16, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1787
  %4 = trunc i32 %0 to i16, !dbg !1789
  %5 = and i16 %4, 31, !dbg !1789
  call void @llvm.dbg.value(metadata i16 %5, metadata !1786, metadata !DIExpression()), !dbg !1787
  switch i32 %1, label %32 [
    i32 1, label %6
    i32 0, label %18
  ], !dbg !1790

6:                                                ; preds = %2
  call void @llvm.dbg.value(metadata i32 %3, metadata !1785, metadata !DIExpression()), !dbg !1787
  %7 = trunc i32 %3 to i16, !dbg !1791
  switch i16 %7, label %32 [
    i16 0, label %8
    i16 1, label %13
  ], !dbg !1791

8:                                                ; preds = %6
  %9 = zext i16 %5 to i32, !dbg !1794
  %10 = shl nuw i32 1, %9, !dbg !1796
  %11 = load volatile i32, i32* inttoptr (i32 -2130571136 to i32*), align 128, !dbg !1797
  %12 = or i32 %11, %10, !dbg !1797
  store volatile i32 %12, i32* inttoptr (i32 -2130571136 to i32*), align 128, !dbg !1797
  br label %32, !dbg !1798

13:                                               ; preds = %6
  %14 = zext i16 %5 to i32, !dbg !1799
  %15 = shl nuw i32 1, %14, !dbg !1800
  %16 = load volatile i32, i32* inttoptr (i32 -2130571132 to i32*), align 4, !dbg !1801
  %17 = or i32 %16, %15, !dbg !1801
  store volatile i32 %17, i32* inttoptr (i32 -2130571132 to i32*), align 4, !dbg !1801
  br label %32, !dbg !1802

18:                                               ; preds = %2
  %19 = trunc i32 %3 to i16, !dbg !1803
  switch i16 %19, label %32 [
    i16 0, label %20
    i16 1, label %26
  ], !dbg !1803

20:                                               ; preds = %18
  %21 = zext i16 %5 to i32, !dbg !1806
  %22 = shl nuw i32 1, %21, !dbg !1808
  %23 = xor i32 %22, -1, !dbg !1809
  %24 = load volatile i32, i32* inttoptr (i32 -2130571136 to i32*), align 128, !dbg !1810
  %25 = and i32 %24, %23, !dbg !1810
  store volatile i32 %25, i32* inttoptr (i32 -2130571136 to i32*), align 128, !dbg !1810
  br label %32, !dbg !1811

26:                                               ; preds = %18
  %27 = zext i16 %5 to i32, !dbg !1812
  %28 = shl nuw i32 1, %27, !dbg !1813
  %29 = xor i32 %28, -1, !dbg !1814
  %30 = load volatile i32, i32* inttoptr (i32 -2130571132 to i32*), align 4, !dbg !1815
  %31 = and i32 %30, %29, !dbg !1815
  store volatile i32 %31, i32* inttoptr (i32 -2130571132 to i32*), align 4, !dbg !1815
  br label %32, !dbg !1816

32:                                               ; preds = %2, %18, %26, %20, %8, %13, %6
  ret void, !dbg !1817
}

; Function Attrs: noinline nounwind optsize
define dso_local void @halPinmuxTopOnPadFunc(i32 noundef %0, i8 noundef zeroext %1) local_unnamed_addr #0 !dbg !1818 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !1824, metadata !DIExpression()), !dbg !1827
  call void @llvm.dbg.value(metadata i8 %1, metadata !1825, metadata !DIExpression()), !dbg !1827
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
  ], !dbg !1828

3:                                                ; preds = %2
  %4 = load volatile i32, i32* inttoptr (i32 -2130563040 to i32*), align 32, !dbg !1829
  call void @llvm.dbg.value(metadata i32 %4, metadata !1826, metadata !DIExpression()), !dbg !1827
  %5 = and i32 %4, -16, !dbg !1831
  call void @llvm.dbg.value(metadata i32 %5, metadata !1826, metadata !DIExpression()), !dbg !1827
  %6 = zext i8 %1 to i32, !dbg !1832
  %7 = or i32 %5, %6, !dbg !1833
  store volatile i32 %7, i32* inttoptr (i32 -2130563040 to i32*), align 32, !dbg !1834
  br label %187, !dbg !1835

8:                                                ; preds = %2
  %9 = load volatile i32, i32* inttoptr (i32 -2130563040 to i32*), align 32, !dbg !1836
  call void @llvm.dbg.value(metadata i32 %9, metadata !1826, metadata !DIExpression()), !dbg !1827
  %10 = and i32 %9, -241, !dbg !1837
  call void @llvm.dbg.value(metadata i32 %10, metadata !1826, metadata !DIExpression()), !dbg !1827
  %11 = zext i8 %1 to i32, !dbg !1838
  %12 = shl nuw nsw i32 %11, 4, !dbg !1839
  %13 = or i32 %10, %12, !dbg !1840
  store volatile i32 %13, i32* inttoptr (i32 -2130563040 to i32*), align 32, !dbg !1841
  br label %187, !dbg !1842

14:                                               ; preds = %2
  %15 = load volatile i32, i32* inttoptr (i32 -2130563040 to i32*), align 32, !dbg !1843
  call void @llvm.dbg.value(metadata i32 %15, metadata !1826, metadata !DIExpression()), !dbg !1827
  %16 = and i32 %15, -3841, !dbg !1844
  call void @llvm.dbg.value(metadata i32 %16, metadata !1826, metadata !DIExpression()), !dbg !1827
  %17 = zext i8 %1 to i32, !dbg !1845
  %18 = shl nuw nsw i32 %17, 8, !dbg !1846
  %19 = or i32 %16, %18, !dbg !1847
  store volatile i32 %19, i32* inttoptr (i32 -2130563040 to i32*), align 32, !dbg !1848
  br label %187, !dbg !1849

20:                                               ; preds = %2
  %21 = load volatile i32, i32* inttoptr (i32 -2130563040 to i32*), align 32, !dbg !1850
  call void @llvm.dbg.value(metadata i32 %21, metadata !1826, metadata !DIExpression()), !dbg !1827
  %22 = and i32 %21, -61441, !dbg !1851
  call void @llvm.dbg.value(metadata i32 %22, metadata !1826, metadata !DIExpression()), !dbg !1827
  %23 = zext i8 %1 to i32, !dbg !1852
  %24 = shl nuw nsw i32 %23, 12, !dbg !1853
  %25 = or i32 %22, %24, !dbg !1854
  store volatile i32 %25, i32* inttoptr (i32 -2130563040 to i32*), align 32, !dbg !1855
  br label %187, !dbg !1856

26:                                               ; preds = %2
  %27 = load volatile i32, i32* inttoptr (i32 -2130563040 to i32*), align 32, !dbg !1857
  call void @llvm.dbg.value(metadata i32 %27, metadata !1826, metadata !DIExpression()), !dbg !1827
  %28 = and i32 %27, -983041, !dbg !1858
  call void @llvm.dbg.value(metadata i32 %28, metadata !1826, metadata !DIExpression()), !dbg !1827
  %29 = zext i8 %1 to i32, !dbg !1859
  %30 = shl nuw nsw i32 %29, 16, !dbg !1860
  %31 = or i32 %28, %30, !dbg !1861
  store volatile i32 %31, i32* inttoptr (i32 -2130563040 to i32*), align 32, !dbg !1862
  br label %187, !dbg !1863

32:                                               ; preds = %2
  %33 = load volatile i32, i32* inttoptr (i32 -2130563040 to i32*), align 32, !dbg !1864
  call void @llvm.dbg.value(metadata i32 %33, metadata !1826, metadata !DIExpression()), !dbg !1827
  %34 = and i32 %33, -15728641, !dbg !1865
  call void @llvm.dbg.value(metadata i32 %34, metadata !1826, metadata !DIExpression()), !dbg !1827
  %35 = zext i8 %1 to i32, !dbg !1866
  %36 = shl nuw nsw i32 %35, 20, !dbg !1867
  %37 = or i32 %34, %36, !dbg !1868
  store volatile i32 %37, i32* inttoptr (i32 -2130563040 to i32*), align 32, !dbg !1869
  br label %187, !dbg !1870

38:                                               ; preds = %2
  %39 = load volatile i32, i32* inttoptr (i32 -2130563040 to i32*), align 32, !dbg !1871
  call void @llvm.dbg.value(metadata i32 %39, metadata !1826, metadata !DIExpression()), !dbg !1827
  %40 = and i32 %39, -251658241, !dbg !1872
  call void @llvm.dbg.value(metadata i32 %40, metadata !1826, metadata !DIExpression()), !dbg !1827
  %41 = zext i8 %1 to i32, !dbg !1873
  %42 = shl nuw i32 %41, 24, !dbg !1874
  %43 = or i32 %40, %42, !dbg !1875
  store volatile i32 %43, i32* inttoptr (i32 -2130563040 to i32*), align 32, !dbg !1876
  br label %187, !dbg !1877

44:                                               ; preds = %2
  %45 = load volatile i32, i32* inttoptr (i32 -2130563040 to i32*), align 32, !dbg !1878
  call void @llvm.dbg.value(metadata i32 %45, metadata !1826, metadata !DIExpression()), !dbg !1827
  %46 = and i32 %45, 268435455, !dbg !1879
  call void @llvm.dbg.value(metadata i32 %46, metadata !1826, metadata !DIExpression()), !dbg !1827
  %47 = zext i8 %1 to i32, !dbg !1880
  %48 = shl i32 %47, 28, !dbg !1881
  %49 = or i32 %46, %48, !dbg !1882
  store volatile i32 %49, i32* inttoptr (i32 -2130563040 to i32*), align 32, !dbg !1883
  br label %187, !dbg !1884

50:                                               ; preds = %2
  %51 = load volatile i32, i32* inttoptr (i32 -2130563028 to i32*), align 4, !dbg !1885
  call void @llvm.dbg.value(metadata i32 %51, metadata !1826, metadata !DIExpression()), !dbg !1827
  %52 = and i32 %51, -16, !dbg !1886
  call void @llvm.dbg.value(metadata i32 %52, metadata !1826, metadata !DIExpression()), !dbg !1827
  %53 = zext i8 %1 to i32, !dbg !1887
  %54 = or i32 %52, %53, !dbg !1888
  store volatile i32 %54, i32* inttoptr (i32 -2130563028 to i32*), align 4, !dbg !1889
  br label %187, !dbg !1890

55:                                               ; preds = %2
  %56 = load volatile i32, i32* inttoptr (i32 -2130563028 to i32*), align 4, !dbg !1891
  call void @llvm.dbg.value(metadata i32 %56, metadata !1826, metadata !DIExpression()), !dbg !1827
  %57 = and i32 %56, -241, !dbg !1892
  call void @llvm.dbg.value(metadata i32 %57, metadata !1826, metadata !DIExpression()), !dbg !1827
  %58 = zext i8 %1 to i32, !dbg !1893
  %59 = shl nuw nsw i32 %58, 4, !dbg !1894
  %60 = or i32 %57, %59, !dbg !1895
  store volatile i32 %60, i32* inttoptr (i32 -2130563028 to i32*), align 4, !dbg !1896
  br label %187, !dbg !1897

61:                                               ; preds = %2
  %62 = load volatile i32, i32* inttoptr (i32 -2130563028 to i32*), align 4, !dbg !1898
  call void @llvm.dbg.value(metadata i32 %62, metadata !1826, metadata !DIExpression()), !dbg !1827
  %63 = and i32 %62, -3841, !dbg !1899
  call void @llvm.dbg.value(metadata i32 %63, metadata !1826, metadata !DIExpression()), !dbg !1827
  %64 = zext i8 %1 to i32, !dbg !1900
  %65 = shl nuw nsw i32 %64, 8, !dbg !1901
  %66 = or i32 %63, %65, !dbg !1902
  store volatile i32 %66, i32* inttoptr (i32 -2130563028 to i32*), align 4, !dbg !1903
  br label %187, !dbg !1904

67:                                               ; preds = %2
  %68 = load volatile i32, i32* inttoptr (i32 -2130563028 to i32*), align 4, !dbg !1905
  call void @llvm.dbg.value(metadata i32 %68, metadata !1826, metadata !DIExpression()), !dbg !1827
  %69 = and i32 %68, -61441, !dbg !1906
  call void @llvm.dbg.value(metadata i32 %69, metadata !1826, metadata !DIExpression()), !dbg !1827
  %70 = zext i8 %1 to i32, !dbg !1907
  %71 = shl nuw nsw i32 %70, 12, !dbg !1908
  %72 = or i32 %69, %71, !dbg !1909
  store volatile i32 %72, i32* inttoptr (i32 -2130563028 to i32*), align 4, !dbg !1910
  switch i8 %1, label %187 [
    i8 5, label %73
    i8 4, label %73
    i8 2, label %73
  ], !dbg !1911

73:                                               ; preds = %67, %67, %67
  %74 = tail call i32 @halGPIO_ConfDirection(i32 noundef 27, i8 noundef zeroext 0) #12, !dbg !1913
  br label %187, !dbg !1915

75:                                               ; preds = %2
  %76 = load volatile i32, i32* inttoptr (i32 -2130563028 to i32*), align 4, !dbg !1916
  call void @llvm.dbg.value(metadata i32 %76, metadata !1826, metadata !DIExpression()), !dbg !1827
  %77 = and i32 %76, -983041, !dbg !1917
  call void @llvm.dbg.value(metadata i32 %77, metadata !1826, metadata !DIExpression()), !dbg !1827
  %78 = zext i8 %1 to i32, !dbg !1918
  %79 = shl nuw nsw i32 %78, 16, !dbg !1919
  %80 = or i32 %77, %79, !dbg !1920
  store volatile i32 %80, i32* inttoptr (i32 -2130563028 to i32*), align 4, !dbg !1921
  %81 = and i8 %1, -2, !dbg !1922
  %82 = icmp eq i8 %81, 4, !dbg !1922
  br i1 %82, label %83, label %187, !dbg !1922

83:                                               ; preds = %75
  %84 = tail call i32 @halGPIO_ConfDirection(i32 noundef 28, i8 noundef zeroext 0) #12, !dbg !1924
  br label %187, !dbg !1926

85:                                               ; preds = %2
  %86 = load volatile i32, i32* inttoptr (i32 -2130563028 to i32*), align 4, !dbg !1927
  call void @llvm.dbg.value(metadata i32 %86, metadata !1826, metadata !DIExpression()), !dbg !1827
  %87 = and i32 %86, -15728641, !dbg !1928
  call void @llvm.dbg.value(metadata i32 %87, metadata !1826, metadata !DIExpression()), !dbg !1827
  %88 = zext i8 %1 to i32, !dbg !1929
  %89 = shl nuw nsw i32 %88, 20, !dbg !1930
  %90 = or i32 %87, %89, !dbg !1931
  store volatile i32 %90, i32* inttoptr (i32 -2130563028 to i32*), align 4, !dbg !1932
  %91 = icmp eq i8 %1, 6, !dbg !1933
  br i1 %91, label %92, label %187, !dbg !1935

92:                                               ; preds = %85
  %93 = tail call i32 @halGPIO_ConfDirection(i32 noundef 29, i8 noundef zeroext 0) #12, !dbg !1936
  br label %187, !dbg !1938

94:                                               ; preds = %2
  %95 = load volatile i32, i32* inttoptr (i32 -2130563028 to i32*), align 4, !dbg !1939
  call void @llvm.dbg.value(metadata i32 %95, metadata !1826, metadata !DIExpression()), !dbg !1827
  %96 = and i32 %95, -251658241, !dbg !1940
  call void @llvm.dbg.value(metadata i32 %96, metadata !1826, metadata !DIExpression()), !dbg !1827
  %97 = zext i8 %1 to i32, !dbg !1941
  %98 = shl nuw i32 %97, 24, !dbg !1942
  %99 = or i32 %96, %98, !dbg !1943
  store volatile i32 %99, i32* inttoptr (i32 -2130563028 to i32*), align 4, !dbg !1944
  switch i8 %1, label %187 [
    i8 7, label %100
    i8 4, label %100
  ], !dbg !1945

100:                                              ; preds = %94, %94
  %101 = tail call i32 @halGPIO_ConfDirection(i32 noundef 30, i8 noundef zeroext 0) #12, !dbg !1947
  br label %187, !dbg !1949

102:                                              ; preds = %2
  %103 = load volatile i32, i32* inttoptr (i32 -2130563028 to i32*), align 4, !dbg !1950
  call void @llvm.dbg.value(metadata i32 %103, metadata !1826, metadata !DIExpression()), !dbg !1827
  %104 = and i32 %103, 268435455, !dbg !1951
  call void @llvm.dbg.value(metadata i32 %104, metadata !1826, metadata !DIExpression()), !dbg !1827
  %105 = zext i8 %1 to i32, !dbg !1952
  %106 = shl i32 %105, 28, !dbg !1953
  %107 = or i32 %104, %106, !dbg !1954
  store volatile i32 %107, i32* inttoptr (i32 -2130563028 to i32*), align 4, !dbg !1955
  %108 = and i8 %1, -3, !dbg !1956
  %109 = icmp eq i8 %108, 4, !dbg !1956
  br i1 %109, label %110, label %187, !dbg !1956

110:                                              ; preds = %102
  %111 = tail call i32 @halGPIO_ConfDirection(i32 noundef 31, i8 noundef zeroext 0) #12, !dbg !1958
  br label %187, !dbg !1960

112:                                              ; preds = %2
  %113 = load volatile i32, i32* inttoptr (i32 -2130563024 to i32*), align 16, !dbg !1961
  call void @llvm.dbg.value(metadata i32 %113, metadata !1826, metadata !DIExpression()), !dbg !1827
  %114 = and i32 %113, -16, !dbg !1962
  call void @llvm.dbg.value(metadata i32 %114, metadata !1826, metadata !DIExpression()), !dbg !1827
  %115 = zext i8 %1 to i32, !dbg !1963
  %116 = or i32 %114, %115, !dbg !1964
  store volatile i32 %116, i32* inttoptr (i32 -2130563024 to i32*), align 16, !dbg !1965
  %117 = and i8 %1, -3, !dbg !1966
  %118 = icmp eq i8 %117, 4, !dbg !1966
  br i1 %118, label %119, label %187, !dbg !1966

119:                                              ; preds = %112
  %120 = tail call i32 @halGPIO_ConfDirection(i32 noundef 32, i8 noundef zeroext 0) #12, !dbg !1968
  br label %187, !dbg !1970

121:                                              ; preds = %2
  %122 = load volatile i32, i32* inttoptr (i32 -2130563024 to i32*), align 16, !dbg !1971
  call void @llvm.dbg.value(metadata i32 %122, metadata !1826, metadata !DIExpression()), !dbg !1827
  %123 = and i32 %122, -241, !dbg !1972
  call void @llvm.dbg.value(metadata i32 %123, metadata !1826, metadata !DIExpression()), !dbg !1827
  %124 = zext i8 %1 to i32, !dbg !1973
  %125 = shl nuw nsw i32 %124, 4, !dbg !1974
  %126 = or i32 %123, %125, !dbg !1975
  store volatile i32 %126, i32* inttoptr (i32 -2130563024 to i32*), align 16, !dbg !1976
  br label %187, !dbg !1977

127:                                              ; preds = %2
  %128 = load volatile i32, i32* inttoptr (i32 -2130563024 to i32*), align 16, !dbg !1978
  call void @llvm.dbg.value(metadata i32 %128, metadata !1826, metadata !DIExpression()), !dbg !1827
  %129 = and i32 %128, -3841, !dbg !1979
  call void @llvm.dbg.value(metadata i32 %129, metadata !1826, metadata !DIExpression()), !dbg !1827
  %130 = zext i8 %1 to i32, !dbg !1980
  %131 = shl nuw nsw i32 %130, 8, !dbg !1981
  %132 = or i32 %129, %131, !dbg !1982
  store volatile i32 %132, i32* inttoptr (i32 -2130563024 to i32*), align 16, !dbg !1983
  br label %187, !dbg !1984

133:                                              ; preds = %2
  %134 = load volatile i32, i32* inttoptr (i32 -2130563024 to i32*), align 16, !dbg !1985
  call void @llvm.dbg.value(metadata i32 %134, metadata !1826, metadata !DIExpression()), !dbg !1827
  %135 = and i32 %134, -61441, !dbg !1986
  call void @llvm.dbg.value(metadata i32 %135, metadata !1826, metadata !DIExpression()), !dbg !1827
  %136 = zext i8 %1 to i32, !dbg !1987
  %137 = shl nuw nsw i32 %136, 12, !dbg !1988
  %138 = or i32 %135, %137, !dbg !1989
  store volatile i32 %138, i32* inttoptr (i32 -2130563024 to i32*), align 16, !dbg !1990
  br label %187, !dbg !1991

139:                                              ; preds = %2
  %140 = load volatile i32, i32* inttoptr (i32 -2130563024 to i32*), align 16, !dbg !1992
  call void @llvm.dbg.value(metadata i32 %140, metadata !1826, metadata !DIExpression()), !dbg !1827
  %141 = and i32 %140, -983041, !dbg !1993
  call void @llvm.dbg.value(metadata i32 %141, metadata !1826, metadata !DIExpression()), !dbg !1827
  %142 = zext i8 %1 to i32, !dbg !1994
  %143 = shl nuw nsw i32 %142, 16, !dbg !1995
  %144 = or i32 %141, %143, !dbg !1996
  store volatile i32 %144, i32* inttoptr (i32 -2130563024 to i32*), align 16, !dbg !1997
  br label %187, !dbg !1998

145:                                              ; preds = %2
  %146 = load volatile i32, i32* inttoptr (i32 -2130563024 to i32*), align 16, !dbg !1999
  call void @llvm.dbg.value(metadata i32 %146, metadata !1826, metadata !DIExpression()), !dbg !1827
  %147 = and i32 %146, -15728641, !dbg !2000
  call void @llvm.dbg.value(metadata i32 %147, metadata !1826, metadata !DIExpression()), !dbg !1827
  %148 = zext i8 %1 to i32, !dbg !2001
  %149 = shl nuw nsw i32 %148, 20, !dbg !2002
  %150 = or i32 %147, %149, !dbg !2003
  store volatile i32 %150, i32* inttoptr (i32 -2130563024 to i32*), align 16, !dbg !2004
  br label %187, !dbg !2005

151:                                              ; preds = %2
  %152 = load volatile i32, i32* inttoptr (i32 -2130563024 to i32*), align 16, !dbg !2006
  call void @llvm.dbg.value(metadata i32 %152, metadata !1826, metadata !DIExpression()), !dbg !1827
  %153 = and i32 %152, -251658241, !dbg !2007
  call void @llvm.dbg.value(metadata i32 %153, metadata !1826, metadata !DIExpression()), !dbg !1827
  %154 = zext i8 %1 to i32, !dbg !2008
  %155 = shl nuw i32 %154, 24, !dbg !2009
  %156 = or i32 %153, %155, !dbg !2010
  store volatile i32 %156, i32* inttoptr (i32 -2130563024 to i32*), align 16, !dbg !2011
  br label %187, !dbg !2012

157:                                              ; preds = %2
  %158 = load volatile i32, i32* inttoptr (i32 -2130563024 to i32*), align 16, !dbg !2013
  call void @llvm.dbg.value(metadata i32 %158, metadata !1826, metadata !DIExpression()), !dbg !1827
  %159 = and i32 %158, 268435455, !dbg !2014
  call void @llvm.dbg.value(metadata i32 %159, metadata !1826, metadata !DIExpression()), !dbg !1827
  %160 = zext i8 %1 to i32, !dbg !2015
  %161 = shl i32 %160, 28, !dbg !2016
  %162 = or i32 %159, %161, !dbg !2017
  store volatile i32 %162, i32* inttoptr (i32 -2130563024 to i32*), align 16, !dbg !2018
  br label %187, !dbg !2019

163:                                              ; preds = %2
  %164 = load volatile i32, i32* inttoptr (i32 -2130563012 to i32*), align 4, !dbg !2020
  call void @llvm.dbg.value(metadata i32 %164, metadata !1826, metadata !DIExpression()), !dbg !1827
  %165 = and i32 %164, -241, !dbg !2021
  call void @llvm.dbg.value(metadata i32 %165, metadata !1826, metadata !DIExpression()), !dbg !1827
  %166 = zext i8 %1 to i32, !dbg !2022
  %167 = shl nuw nsw i32 %166, 4, !dbg !2023
  %168 = or i32 %165, %167, !dbg !2024
  store volatile i32 %168, i32* inttoptr (i32 -2130563012 to i32*), align 4, !dbg !2025
  br label %187, !dbg !2026

169:                                              ; preds = %2
  %170 = load volatile i32, i32* inttoptr (i32 -2130563012 to i32*), align 4, !dbg !2027
  call void @llvm.dbg.value(metadata i32 %170, metadata !1826, metadata !DIExpression()), !dbg !1827
  %171 = and i32 %170, -3841, !dbg !2028
  call void @llvm.dbg.value(metadata i32 %171, metadata !1826, metadata !DIExpression()), !dbg !1827
  %172 = zext i8 %1 to i32, !dbg !2029
  %173 = shl nuw nsw i32 %172, 8, !dbg !2030
  %174 = or i32 %171, %173, !dbg !2031
  store volatile i32 %174, i32* inttoptr (i32 -2130563012 to i32*), align 4, !dbg !2032
  br label %187, !dbg !2033

175:                                              ; preds = %2
  %176 = load volatile i32, i32* inttoptr (i32 -2130563012 to i32*), align 4, !dbg !2034
  call void @llvm.dbg.value(metadata i32 %176, metadata !1826, metadata !DIExpression()), !dbg !1827
  %177 = and i32 %176, -61441, !dbg !2035
  call void @llvm.dbg.value(metadata i32 %177, metadata !1826, metadata !DIExpression()), !dbg !1827
  %178 = zext i8 %1 to i32, !dbg !2036
  %179 = shl nuw nsw i32 %178, 12, !dbg !2037
  %180 = or i32 %177, %179, !dbg !2038
  store volatile i32 %180, i32* inttoptr (i32 -2130563012 to i32*), align 4, !dbg !2039
  br label %187, !dbg !2040

181:                                              ; preds = %2
  %182 = load volatile i32, i32* inttoptr (i32 -2130563012 to i32*), align 4, !dbg !2041
  call void @llvm.dbg.value(metadata i32 %182, metadata !1826, metadata !DIExpression()), !dbg !1827
  %183 = and i32 %182, -983041, !dbg !2042
  call void @llvm.dbg.value(metadata i32 %183, metadata !1826, metadata !DIExpression()), !dbg !1827
  %184 = zext i8 %1 to i32, !dbg !2043
  %185 = shl nuw nsw i32 %184, 16, !dbg !2044
  %186 = or i32 %183, %185, !dbg !2045
  store volatile i32 %186, i32* inttoptr (i32 -2130563012 to i32*), align 4, !dbg !2046
  br label %187, !dbg !2047

187:                                              ; preds = %94, %67, %2, %119, %112, %110, %102, %100, %85, %92, %83, %75, %73, %181, %175, %169, %163, %157, %151, %145, %139, %133, %127, %121, %61, %55, %50, %44, %38, %32, %26, %20, %14, %8, %3
  ret void, !dbg !2048
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize readnone willreturn
define dso_local i32 @hal_trng_init() local_unnamed_addr #5 !dbg !2049 {
  ret i32 0, !dbg !2053
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize readnone willreturn
define dso_local i32 @hal_trng_deinit() local_unnamed_addr #5 !dbg !2054 {
  ret i32 0, !dbg !2055
}

; Function Attrs: noinline nounwind optsize
define dso_local i32 @hal_trng_get_generated_random_number(i32* nocapture noundef writeonly %0) local_unnamed_addr #0 !dbg !2056 {
  call void @llvm.dbg.value(metadata i32* %0, metadata !2061, metadata !DIExpression()), !dbg !2069
  call void @llvm.dbg.value(metadata i16 0, metadata !2062, metadata !DIExpression()), !dbg !2069
  call void @llvm.dbg.value(metadata i32* inttoptr (i32 -2096107520 to i32*), metadata !2063, metadata !DIExpression()), !dbg !2070
  %2 = load volatile i32, i32* inttoptr (i32 -2096107520 to i32*), align 4096, !dbg !2071
  %3 = or i32 %2, 1, !dbg !2071
  store volatile i32 %3, i32* inttoptr (i32 -2096107520 to i32*), align 4096, !dbg !2071
  call void @llvm.dbg.value(metadata i16 0, metadata !2062, metadata !DIExpression()), !dbg !2069
  br label %4, !dbg !2072

4:                                                ; preds = %1, %9
  %5 = phi i16 [ 0, %1 ], [ %10, %9 ]
  call void @llvm.dbg.value(metadata i16 %5, metadata !2062, metadata !DIExpression()), !dbg !2069
  %6 = load volatile i32, i32* inttoptr (i32 -2096107504 to i32*), align 16, !dbg !2073
  %7 = and i32 %6, 1, !dbg !2073
  %8 = icmp eq i32 %7, 0, !dbg !2076
  br i1 %8, label %9, label %12, !dbg !2077

9:                                                ; preds = %4
  tail call void @delay_time(i32 noundef 32) #12, !dbg !2078
  %10 = add nuw nsw i16 %5, 1, !dbg !2079
  call void @llvm.dbg.value(metadata i16 %10, metadata !2062, metadata !DIExpression()), !dbg !2069
  %11 = icmp ult i16 %5, 99, !dbg !2080
  br i1 %11, label %4, label %12, !dbg !2072, !llvm.loop !2081

12:                                               ; preds = %4, %9
  %13 = phi i16 [ %5, %4 ], [ 100, %9 ], !dbg !2069
  %14 = load volatile i32, i32* inttoptr (i32 -2096107512 to i32*), align 8, !dbg !2083
  store i32 %14, i32* %0, align 4, !dbg !2084
  call void @llvm.dbg.value(metadata i32* inttoptr (i32 -2096107500 to i32*), metadata !2065, metadata !DIExpression()), !dbg !2085
  %15 = load volatile i32, i32* inttoptr (i32 -2096107500 to i32*), align 4, !dbg !2086
  store volatile i32 1, i32* inttoptr (i32 -2096107500 to i32*), align 4, !dbg !2086
  call void @llvm.dbg.value(metadata i32* inttoptr (i32 -2096107520 to i32*), metadata !2067, metadata !DIExpression()), !dbg !2087
  %16 = load volatile i32, i32* inttoptr (i32 -2096107520 to i32*), align 4096, !dbg !2088
  %17 = and i32 %16, -2, !dbg !2088
  store volatile i32 %17, i32* inttoptr (i32 -2096107520 to i32*), align 4096, !dbg !2088
  %18 = icmp ugt i16 %13, 99, !dbg !2089
  br i1 %18, label %19, label %20, !dbg !2091

19:                                               ; preds = %12
  store i32 0, i32* %0, align 4, !dbg !2092
  br label %20, !dbg !2094

20:                                               ; preds = %12, %19
  %21 = phi i32 [ -2, %19 ], [ 0, %12 ], !dbg !2095
  ret i32 %21, !dbg !2096
}

; Function Attrs: noinline nounwind optsize
define dso_local void @NVIC_SetupVectorTable(i32 noundef %0) local_unnamed_addr #0 !dbg !2097 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !2101, metadata !DIExpression()), !dbg !2102
  store volatile i32 %0, i32* inttoptr (i32 -536810232 to i32*), align 8, !dbg !2103
  tail call void asm sideeffect "dsb", ""() #14, !dbg !2104, !srcloc !2105
  tail call void asm sideeffect "isb", ""() #14, !dbg !2106, !srcloc !2107
  ret void, !dbg !2108
}

; Function Attrs: nofree noinline norecurse nounwind optsize
define dso_local void @NVIC_SWInt(i32 noundef %0) local_unnamed_addr #3 !dbg !2109 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !2113, metadata !DIExpression()), !dbg !2114
  store volatile i32 %0, i32* inttoptr (i32 -536809728 to i32*), align 256, !dbg !2115
  ret void, !dbg !2116
}

; Function Attrs: noinline nounwind optsize
define dso_local i32 @save_and_set_interrupt_mask() local_unnamed_addr #0 section ".ramTEXT" !dbg !2117 {
  %1 = tail call i32 asm sideeffect "MRS $0, primask", "=r"() #14, !dbg !2122, !srcloc !2129
  call void @llvm.dbg.value(metadata i32 %1, metadata !2126, metadata !DIExpression()) #14, !dbg !2130
  call void @llvm.dbg.value(metadata i32 %1, metadata !2121, metadata !DIExpression()), !dbg !2131
  tail call void asm sideeffect "cpsid i", "~{memory}"() #14, !dbg !2132, !srcloc !2135
  ret i32 %1, !dbg !2136
}

; Function Attrs: noinline nounwind optsize
define dso_local void @restore_interrupt_mask(i32 noundef %0) local_unnamed_addr #0 section ".ramTEXT" !dbg !2137 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !2139, metadata !DIExpression()), !dbg !2140
  call void @llvm.dbg.value(metadata i32 %0, metadata !2141, metadata !DIExpression()) #14, !dbg !2144
  tail call void asm sideeffect "MSR primask, $0", "r,~{memory}"(i32 %0) #14, !dbg !2147, !srcloc !2148
  ret void, !dbg !2149
}

; Function Attrs: noinline nounwind optsize
define dso_local i32 @pinmux_config(i32 noundef %0, i32 noundef %1) local_unnamed_addr #0 !dbg !2150 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !2154, metadata !DIExpression()), !dbg !2157
  call void @llvm.dbg.value(metadata i32 %1, metadata !2155, metadata !DIExpression()), !dbg !2157
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
  ], !dbg !2158

3:                                                ; preds = %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2
  call void @llvm.dbg.value(metadata i32 %0, metadata !2156, metadata !DIExpression()), !dbg !2157
  %4 = trunc i32 %1 to i8, !dbg !2159
  tail call void @halPinmuxTopOnPadFunc(i32 noundef %0, i8 noundef zeroext %4) #12, !dbg !2160
  br label %5, !dbg !2161

5:                                                ; preds = %2, %3
  %6 = phi i32 [ 0, %3 ], [ -1, %2 ], !dbg !2157
  ret i32 %6, !dbg !2162
}

; Function Attrs: noinline nounwind optsize
define dso_local i32 @get_current_count() local_unnamed_addr #0 !dbg !2163 {
  %1 = tail call i32 @GPT_return_current_count(i32 noundef 2) #12, !dbg !2164
  ret i32 %1, !dbg !2165
}

; Function Attrs: noinline nounwind optsize
define dso_local void @delay_time(i32 noundef %0) local_unnamed_addr #0 !dbg !2166 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !2168, metadata !DIExpression()), !dbg !2171
  %2 = tail call i32 @get_current_count() #13, !dbg !2172
  %3 = add i32 %2, %0, !dbg !2173
  %4 = xor i32 %3, -1, !dbg !2174
  call void @llvm.dbg.value(metadata i32 %3, metadata !2169, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !2171
  %5 = tail call i32 @get_current_count() #13, !dbg !2175
  call void @llvm.dbg.value(metadata i32 %5, metadata !2170, metadata !DIExpression()), !dbg !2171
  %6 = add i32 %5, %4, !dbg !2176
  %7 = icmp slt i32 %6, 0, !dbg !2176
  br i1 %7, label %8, label %12, !dbg !2177

8:                                                ; preds = %1, %8
  %9 = tail call i32 @get_current_count() #13, !dbg !2178
  call void @llvm.dbg.value(metadata i32 %9, metadata !2170, metadata !DIExpression()), !dbg !2171
  %10 = add i32 %9, %4, !dbg !2176
  %11 = icmp slt i32 %10, 0, !dbg !2176
  br i1 %11, label %8, label %12, !dbg !2177, !llvm.loop !2180

12:                                               ; preds = %8, %1
  ret void, !dbg !2182
}

; Function Attrs: noinline nounwind optsize
define dso_local void @delay_time_for_gpt4(i32 noundef %0) local_unnamed_addr #0 !dbg !2183 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !2185, metadata !DIExpression()), !dbg !2188
  %2 = tail call i32 @get_current_gpt4_count() #13, !dbg !2189
  %3 = add i32 %2, %0, !dbg !2190
  %4 = xor i32 %3, -1, !dbg !2191
  call void @llvm.dbg.value(metadata i32 %3, metadata !2186, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !2188
  %5 = tail call i32 @get_current_gpt4_count() #13, !dbg !2192
  call void @llvm.dbg.value(metadata i32 %5, metadata !2187, metadata !DIExpression()), !dbg !2188
  %6 = add i32 %5, %4, !dbg !2193
  %7 = icmp slt i32 %6, 0, !dbg !2193
  br i1 %7, label %8, label %12, !dbg !2194

8:                                                ; preds = %1, %8
  %9 = tail call i32 @get_current_gpt4_count() #13, !dbg !2195
  call void @llvm.dbg.value(metadata i32 %9, metadata !2187, metadata !DIExpression()), !dbg !2188
  %10 = add i32 %9, %4, !dbg !2193
  %11 = icmp slt i32 %10, 0, !dbg !2193
  br i1 %11, label %8, label %12, !dbg !2194, !llvm.loop !2197

12:                                               ; preds = %8, %1
  ret void, !dbg !2199
}

; Function Attrs: noinline nounwind optsize
define dso_local i32 @get_current_gpt4_count() local_unnamed_addr #0 !dbg !2200 {
  %1 = tail call i32 @GPT_return_current_count(i32 noundef 4) #12, !dbg !2201
  ret i32 %1, !dbg !2202
}

; Function Attrs: noinline nounwind optsize
define dso_local void @delay_ms(i32 noundef %0) local_unnamed_addr #0 !dbg !2203 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !2205, metadata !DIExpression()), !dbg !2207
  %2 = shl i32 %0, 5, !dbg !2208
  call void @llvm.dbg.value(metadata i32 %2, metadata !2206, metadata !DIExpression()), !dbg !2207
  %3 = mul i32 %0, 7, !dbg !2209
  %4 = udiv i32 %3, 10, !dbg !2210
  %5 = add i32 %4, %2, !dbg !2211
  call void @llvm.dbg.value(metadata i32 %5, metadata !2206, metadata !DIExpression()), !dbg !2207
  %6 = mul i32 %0, 6, !dbg !2212
  %7 = udiv i32 %6, 100, !dbg !2213
  %8 = add i32 %5, %7, !dbg !2214
  call void @llvm.dbg.value(metadata i32 %8, metadata !2206, metadata !DIExpression()), !dbg !2207
  %9 = shl i32 %0, 3, !dbg !2215
  %10 = udiv i32 %9, 1000, !dbg !2216
  %11 = add i32 %8, %10, !dbg !2217
  call void @llvm.dbg.value(metadata i32 %11, metadata !2206, metadata !DIExpression()), !dbg !2207
  tail call void @delay_time(i32 noundef %11) #13, !dbg !2218
  ret void, !dbg !2219
}

; Function Attrs: noinline nounwind optsize
define dso_local void @delay_us(i32 noundef %0) local_unnamed_addr #0 !dbg !2220 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !2222, metadata !DIExpression()), !dbg !2225
  %2 = tail call i32 @top_mcu_freq_get() #12, !dbg !2226
  %3 = udiv i32 %2, 1000000, !dbg !2227
  call void @llvm.dbg.value(metadata i32 %3, metadata !2224, metadata !DIExpression()), !dbg !2225
  %4 = mul i32 %3, %0, !dbg !2228
  call void @llvm.dbg.value(metadata i32 %4, metadata !2223, metadata !DIExpression()), !dbg !2225
  tail call void @delay_time_for_gpt4(i32 noundef %4) #13, !dbg !2229
  ret void, !dbg !2230
}

; Function Attrs: noinline nounwind optsize
define dso_local void @drvTMR_init(i32 noundef %0, i32 noundef %1, i1 noundef zeroext %2, void ()* noundef %3) local_unnamed_addr #0 !dbg !2231 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !2235, metadata !DIExpression()), !dbg !2239
  call void @llvm.dbg.value(metadata i32 %1, metadata !2236, metadata !DIExpression()), !dbg !2239
  call void @llvm.dbg.value(metadata i1 %2, metadata !2237, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !2239
  call void @llvm.dbg.value(metadata void ()* %3, metadata !2238, metadata !DIExpression()), !dbg !2239
  tail call void @GPT_Stop(i32 noundef %0) #12, !dbg !2240
  %5 = icmp eq i32 %0, 0, !dbg !2241
  br i1 %5, label %6, label %7, !dbg !2243

6:                                                ; preds = %4
  store volatile i32 0, i32* inttoptr (i32 -2096824304 to i32*), align 16, !dbg !2244
  br label %8, !dbg !2246

7:                                                ; preds = %4
  store volatile i32 0, i32* inttoptr (i32 -2096824288 to i32*), align 32, !dbg !2247
  br label %8

8:                                                ; preds = %7, %6
  %9 = phi i32 [ %0, %7 ], [ 0, %6 ]
  tail call void @GPT_init(i32 noundef %9, i32 noundef 1, void ()* noundef %3) #12, !dbg !2249
  tail call void @GPT_ResetTimer(i32 noundef %0, i32 noundef %1, i1 noundef zeroext %2) #12, !dbg !2250
  ret void, !dbg !2251
}

; Function Attrs: noinline nounwind optsize
define dso_local void @TMR_Start(i32 noundef %0) local_unnamed_addr #0 !dbg !2252 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !2254, metadata !DIExpression()), !dbg !2255
  tail call void @GPT_Start(i32 noundef %0) #12, !dbg !2256
  ret void, !dbg !2257
}

; Function Attrs: noinline nounwind optsize
define dso_local void @TMR_Stop(i32 noundef %0) local_unnamed_addr #0 !dbg !2258 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !2260, metadata !DIExpression()), !dbg !2261
  tail call void @GPT_Stop(i32 noundef %0) #12, !dbg !2262
  ret void, !dbg !2263
}

; Function Attrs: noinline nounwind optsize
define dso_local void @drvGPT2Init() local_unnamed_addr #0 !dbg !2264 {
  tail call void @CM4_GPT2Init() #12, !dbg !2265
  ret void, !dbg !2266
}

; Function Attrs: noinline nounwind optsize
define dso_local void @drvGPT4Init() local_unnamed_addr #0 !dbg !2267 {
  tail call void @CM4_GPT4Init() #12, !dbg !2268
  ret void, !dbg !2269
}

; Function Attrs: nofree noinline norecurse nounwind optsize
define dso_local void @clear_TMR_INT_status_bit(i32 noundef %0) local_unnamed_addr #3 !dbg !2270 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !2272, metadata !DIExpression()), !dbg !2273
  switch i32 %0, label %5 [
    i32 0, label %3
    i32 1, label %2
  ], !dbg !2274

2:                                                ; preds = %1
  br label %3, !dbg !2275

3:                                                ; preds = %1, %2
  %4 = phi i32 [ 2, %2 ], [ 1, %1 ]
  store volatile i32 %4, i32* inttoptr (i32 -2096824320 to i32*), align 65536, !dbg !2273
  br label %5, !dbg !2278

5:                                                ; preds = %3, %1
  ret void, !dbg !2278
}

; Function Attrs: noinline nounwind optsize
define dso_local void @top_xtal_init() local_unnamed_addr #0 !dbg !2279 {
  call void @llvm.dbg.value(metadata i32 0, metadata !2281, metadata !DIExpression()), !dbg !2283
  %1 = load volatile i32, i32* inttoptr (i32 -2097118784 to i32*), align 64, !dbg !2284
  call void @llvm.dbg.value(metadata i32 %1, metadata !2282, metadata !DIExpression()), !dbg !2283
  %2 = lshr i32 %1, 13, !dbg !2285
  %3 = and i32 %2, 7, !dbg !2286
  call void @llvm.dbg.value(metadata i32 %3, metadata !2282, metadata !DIExpression()), !dbg !2283
  %4 = load volatile i32, i32* inttoptr (i32 -2097118792 to i32*), align 8, !dbg !2287
  call void @llvm.dbg.value(metadata i32 %4, metadata !2281, metadata !DIExpression()), !dbg !2283
  call void @llvm.dbg.value(metadata i32 %4, metadata !2281, metadata !DIExpression(DW_OP_constu, 18446744073709549568, DW_OP_and, DW_OP_stack_value)), !dbg !2283
  %5 = getelementptr inbounds [8 x i32], [8 x i32]* @switch.table.top_xtal_init, i32 0, i32 %3, !dbg !2288
  %6 = load i32, i32* %5, align 4, !dbg !2288
  %7 = getelementptr inbounds [8 x i32], [8 x i32]* @switch.table.top_xtal_init.1, i32 0, i32 %3, !dbg !2288
  %8 = load i32, i32* %7, align 4, !dbg !2288
  %9 = and i32 %4, -2048, !dbg !2289
  call void @llvm.dbg.value(metadata i32 %9, metadata !2281, metadata !DIExpression()), !dbg !2283
  store i32 %6, i32* @gXtalFreq, align 4, !dbg !2290
  %10 = or i32 %9, %8, !dbg !2290
  call void @llvm.dbg.value(metadata i32 %10, metadata !2281, metadata !DIExpression()), !dbg !2283
  store volatile i32 %10, i32* inttoptr (i32 -2097118792 to i32*), align 8, !dbg !2292
  %11 = load i32, i32* @gXtalFreq, align 4, !dbg !2293
  store i32 %11, i32* @gCpuFrequency, align 4, !dbg !2294
  tail call void @SystemCoreClockUpdate() #12, !dbg !2295
  %12 = load i32, i32* @SystemCoreClock, align 4, !dbg !2296
  %13 = udiv i32 %12, 1000, !dbg !2297
  %14 = tail call i32 @SysTick_Set(i32 noundef %13) #12, !dbg !2298
  ret void, !dbg !2299
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize readonly willreturn
define dso_local i32 @top_xtal_freq_get() local_unnamed_addr #6 !dbg !2300 {
  %1 = load i32, i32* @gXtalFreq, align 4, !dbg !2301
  ret i32 %1, !dbg !2302
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize readonly willreturn
define dso_local i32 @top_mcu_freq_get() local_unnamed_addr #6 !dbg !2303 {
  %1 = load i32, i32* @gCpuFrequency, align 4, !dbg !2304
  ret i32 %1, !dbg !2305
}

; Function Attrs: nofree noinline nounwind optsize
define dso_local void @cmnPLL1ON() local_unnamed_addr #7 !dbg !2306 {
  %1 = alloca i32, align 4
  %2 = bitcast i32* %1 to i8*, !dbg !2310
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %2), !dbg !2310
  call void @llvm.dbg.declare(metadata i32* %1, metadata !2308, metadata !DIExpression()), !dbg !2311
  call void @llvm.dbg.value(metadata i32* inttoptr (i32 -2097118792 to i32*), metadata !2309, metadata !DIExpression()), !dbg !2312
  %3 = tail call fastcc i32 @cmnReadRegister32(i8* noundef nonnull inttoptr (i32 -2097118792 to i8*)) #13, !dbg !2313
  store volatile i32 %3, i32* %1, align 4, !dbg !2314
  %4 = load volatile i32, i32* %1, align 4, !dbg !2315
  %5 = lshr i32 %4, 28, !dbg !2316
  %6 = and i32 %5, 3, !dbg !2317
  store volatile i32 %6, i32* %1, align 4, !dbg !2318
  %7 = load volatile i32, i32* %1, align 4, !dbg !2319
  %8 = icmp eq i32 %7, 0, !dbg !2321
  br i1 %8, label %9, label %22, !dbg !2322

9:                                                ; preds = %0
  %10 = tail call fastcc i32 @cmnReadRegister32(i8* noundef nonnull inttoptr (i32 -2097118792 to i8*)) #13, !dbg !2323
  store volatile i32 %10, i32* %1, align 4, !dbg !2325
  %11 = load volatile i32, i32* %1, align 4, !dbg !2326
  %12 = and i32 %11, -16777217, !dbg !2327
  store volatile i32 %12, i32* %1, align 4, !dbg !2328
  %13 = load volatile i32, i32* %1, align 4, !dbg !2329
  %14 = or i32 %13, 536870912, !dbg !2330
  store volatile i32 %14, i32* %1, align 4, !dbg !2331
  %15 = load volatile i32, i32* %1, align 4, !dbg !2332
  tail call fastcc void @cmnWriteRegister32(i8* noundef nonnull inttoptr (i32 -2097118792 to i8*), i32 noundef %15) #13, !dbg !2333
  br label %16, !dbg !2334

16:                                               ; preds = %16, %9
  %17 = tail call fastcc i32 @cmnReadRegister32(i8* noundef nonnull inttoptr (i32 -2097118792 to i8*)) #13, !dbg !2335
  store volatile i32 %17, i32* %1, align 4, !dbg !2337
  %18 = load volatile i32, i32* %1, align 4, !dbg !2338
  %19 = and i32 %18, 134217728, !dbg !2339
  store volatile i32 %19, i32* %1, align 4, !dbg !2340
  %20 = load volatile i32, i32* %1, align 4, !dbg !2341
  %21 = icmp eq i32 %20, 0, !dbg !2342
  br i1 %21, label %16, label %22, !dbg !2343, !llvm.loop !2344

22:                                               ; preds = %16, %0
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %2), !dbg !2346
  ret void, !dbg !2346
}

; Function Attrs: argmemonly nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0i8(i64 immarg, i8* nocapture) #8

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: mustprogress nofree noinline norecurse nounwind optsize willreturn
define internal fastcc i32 @cmnReadRegister32(i8* noundef %0) unnamed_addr #4 !dbg !2347 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !2354, metadata !DIExpression()), !dbg !2355
  %2 = bitcast i8* %0 to i32*, !dbg !2356
  %3 = load volatile i32, i32* %2, align 4, !dbg !2357
  ret i32 %3, !dbg !2358
}

; Function Attrs: nofree noinline norecurse nounwind optsize
define internal fastcc void @cmnWriteRegister32(i8* noundef %0, i32 noundef %1) unnamed_addr #3 !dbg !2359 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !2363, metadata !DIExpression()), !dbg !2365
  call void @llvm.dbg.value(metadata i32 %1, metadata !2364, metadata !DIExpression()), !dbg !2365
  %3 = bitcast i8* %0 to i32*, !dbg !2366
  store volatile i32 %1, i32* %3, align 4, !dbg !2367
  ret void, !dbg !2368
}

; Function Attrs: argmemonly nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0i8(i64 immarg, i8* nocapture) #8

; Function Attrs: nofree noinline nounwind optsize
define dso_local void @cmnPLL1ON_PLL2ON(i8 noundef zeroext %0) local_unnamed_addr #7 !dbg !2369 {
  %2 = alloca i32, align 4
  call void @llvm.dbg.value(metadata i8 %0, metadata !2373, metadata !DIExpression()), !dbg !2376
  %3 = bitcast i32* %2 to i8*, !dbg !2377
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %3), !dbg !2377
  call void @llvm.dbg.declare(metadata i32* %2, metadata !2374, metadata !DIExpression()), !dbg !2378
  call void @llvm.dbg.value(metadata i32* inttoptr (i32 -2097118792 to i32*), metadata !2375, metadata !DIExpression()), !dbg !2376
  %4 = tail call fastcc i32 @cmnReadRegister32(i8* noundef nonnull inttoptr (i32 -2097118792 to i8*)) #13, !dbg !2379
  store volatile i32 %4, i32* %2, align 4, !dbg !2380
  %5 = load volatile i32, i32* %2, align 4, !dbg !2381
  %6 = lshr i32 %5, 28, !dbg !2382
  %7 = and i32 %6, 3, !dbg !2383
  store volatile i32 %7, i32* %2, align 4, !dbg !2384
  %8 = load volatile i32, i32* %2, align 4, !dbg !2385
  %9 = icmp eq i32 %8, 3, !dbg !2387
  br i1 %9, label %38, label %10, !dbg !2388

10:                                               ; preds = %1
  %11 = tail call fastcc i32 @cmnReadRegister32(i8* noundef nonnull inttoptr (i32 -2097118792 to i8*)) #13, !dbg !2389
  store volatile i32 %11, i32* %2, align 4, !dbg !2391
  %12 = load volatile i32, i32* %2, align 4, !dbg !2392
  %13 = and i32 %12, -262145, !dbg !2393
  store volatile i32 %13, i32* %2, align 4, !dbg !2394
  %14 = load volatile i32, i32* %2, align 4, !dbg !2395
  %15 = and i32 %14, -16777217, !dbg !2396
  store volatile i32 %15, i32* %2, align 4, !dbg !2397
  %16 = load volatile i32, i32* %2, align 4, !dbg !2398
  store volatile i32 %16, i32* %2, align 4, !dbg !2399
  %17 = load volatile i32, i32* %2, align 4, !dbg !2400
  tail call fastcc void @cmnWriteRegister32(i8* noundef nonnull inttoptr (i32 -2097118792 to i8*), i32 noundef %17) #13, !dbg !2401
  %18 = tail call fastcc i32 @cmnReadRegister32(i8* noundef nonnull inttoptr (i32 -2097118792 to i8*)) #13, !dbg !2402
  store volatile i32 %18, i32* %2, align 4, !dbg !2403
  %19 = load volatile i32, i32* %2, align 4, !dbg !2404
  %20 = and i32 %19, -805306369, !dbg !2405
  store volatile i32 %20, i32* %2, align 4, !dbg !2406
  %21 = load volatile i32, i32* %2, align 4, !dbg !2407
  %22 = and i32 %21, -16777217, !dbg !2408
  store volatile i32 %22, i32* %2, align 4, !dbg !2409
  %23 = load volatile i32, i32* %2, align 4, !dbg !2410
  %24 = or i32 %23, 805306368, !dbg !2411
  store volatile i32 %24, i32* %2, align 4, !dbg !2412
  %25 = load volatile i32, i32* %2, align 4, !dbg !2413
  tail call fastcc void @cmnWriteRegister32(i8* noundef nonnull inttoptr (i32 -2097118792 to i8*), i32 noundef %25) #13, !dbg !2414
  br label %26, !dbg !2415

26:                                               ; preds = %26, %10
  %27 = tail call fastcc i32 @cmnReadRegister32(i8* noundef nonnull inttoptr (i32 -2097118792 to i8*)) #13, !dbg !2416
  store volatile i32 %27, i32* %2, align 4, !dbg !2418
  %28 = load volatile i32, i32* %2, align 4, !dbg !2419
  %29 = and i32 %28, 67108864, !dbg !2420
  store volatile i32 %29, i32* %2, align 4, !dbg !2421
  %30 = load volatile i32, i32* %2, align 4, !dbg !2422
  %31 = icmp eq i32 %30, 0, !dbg !2423
  br i1 %31, label %26, label %32, !dbg !2424, !llvm.loop !2425

32:                                               ; preds = %26
  %33 = tail call fastcc i32 @cmnReadRegister32(i8* noundef nonnull inttoptr (i32 -2097118792 to i8*)) #13, !dbg !2427
  store volatile i32 %33, i32* %2, align 4, !dbg !2428
  %34 = load volatile i32, i32* %2, align 4, !dbg !2429
  %35 = and i32 %34, -262145, !dbg !2430
  store volatile i32 %35, i32* %2, align 4, !dbg !2431
  %36 = load volatile i32, i32* %2, align 4, !dbg !2432
  %37 = and i32 %36, -16777217, !dbg !2433
  store volatile i32 %37, i32* %2, align 4, !dbg !2434
  br label %38, !dbg !2435

38:                                               ; preds = %32, %1
  %39 = tail call fastcc i32 @cmnReadRegister32(i8* noundef nonnull inttoptr (i32 -2097118792 to i8*)) #13, !dbg !2436
  store volatile i32 %39, i32* %2, align 4, !dbg !2437
  %40 = icmp eq i8 %0, 0, !dbg !2438
  %41 = load volatile i32, i32* %2, align 4, !dbg !2440
  br i1 %40, label %44, label %42, !dbg !2441

42:                                               ; preds = %38
  %43 = or i32 %41, 262144, !dbg !2442
  store volatile i32 %43, i32* %2, align 4, !dbg !2444
  br label %45, !dbg !2445

44:                                               ; preds = %38
  store volatile i32 %41, i32* %2, align 4, !dbg !2446
  br label %45

45:                                               ; preds = %44, %42
  %46 = load volatile i32, i32* %2, align 4, !dbg !2448
  tail call fastcc void @cmnWriteRegister32(i8* noundef nonnull inttoptr (i32 -2097118792 to i8*), i32 noundef %46) #13, !dbg !2449
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %3), !dbg !2450
  ret void, !dbg !2450
}

; Function Attrs: nofree noinline nounwind optsize
define dso_local void @cmnPLL1OFF_PLL2OFF() local_unnamed_addr #7 !dbg !2451 {
  %1 = alloca i32, align 4
  %2 = bitcast i32* %1 to i8*, !dbg !2455
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %2), !dbg !2455
  call void @llvm.dbg.declare(metadata i32* %1, metadata !2453, metadata !DIExpression()), !dbg !2456
  call void @llvm.dbg.value(metadata i32* inttoptr (i32 -2097118792 to i32*), metadata !2454, metadata !DIExpression()), !dbg !2457
  %3 = tail call fastcc i32 @cmnReadRegister32(i8* noundef nonnull inttoptr (i32 -2097118792 to i8*)) #13, !dbg !2458
  store volatile i32 %3, i32* %1, align 4, !dbg !2459
  %4 = load volatile i32, i32* %1, align 4, !dbg !2460
  %5 = and i32 %4, -805306369, !dbg !2461
  store volatile i32 %5, i32* %1, align 4, !dbg !2462
  %6 = load volatile i32, i32* %1, align 4, !dbg !2463
  %7 = and i32 %6, -16777217, !dbg !2464
  store volatile i32 %7, i32* %1, align 4, !dbg !2465
  %8 = load volatile i32, i32* %1, align 4, !dbg !2466
  store volatile i32 %8, i32* %1, align 4, !dbg !2467
  %9 = load volatile i32, i32* %1, align 4, !dbg !2468
  tail call fastcc void @cmnWriteRegister32(i8* noundef nonnull inttoptr (i32 -2097118792 to i8*), i32 noundef %9) #13, !dbg !2469
  %10 = tail call fastcc i32 @cmnReadRegister32(i8* noundef nonnull inttoptr (i32 -2097118792 to i8*)) #13, !dbg !2470
  store volatile i32 %10, i32* %1, align 4, !dbg !2471
  %11 = load volatile i32, i32* %1, align 4, !dbg !2472
  %12 = and i32 %11, -262145, !dbg !2473
  store volatile i32 %12, i32* %1, align 4, !dbg !2474
  %13 = load volatile i32, i32* %1, align 4, !dbg !2475
  %14 = and i32 %13, -16777217, !dbg !2476
  store volatile i32 %14, i32* %1, align 4, !dbg !2477
  %15 = load volatile i32, i32* %1, align 4, !dbg !2478
  store volatile i32 %15, i32* %1, align 4, !dbg !2479
  %16 = load volatile i32, i32* %1, align 4, !dbg !2480
  tail call fastcc void @cmnWriteRegister32(i8* noundef nonnull inttoptr (i32 -2097118792 to i8*), i32 noundef %16) #13, !dbg !2481
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %2), !dbg !2482
  ret void, !dbg !2482
}

; Function Attrs: noinline nounwind optsize
define dso_local void @cmnCpuClkConfigureToXtal() local_unnamed_addr #0 !dbg !2483 {
  %1 = alloca i32, align 4
  %2 = bitcast i32* %1 to i8*, !dbg !2487
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %2), !dbg !2487
  call void @llvm.dbg.declare(metadata i32* %1, metadata !2485, metadata !DIExpression()), !dbg !2488
  call void @llvm.dbg.value(metadata i32* inttoptr (i32 -2097118800 to i32*), metadata !2486, metadata !DIExpression()), !dbg !2489
  %3 = tail call fastcc i32 @cmnReadRegister32(i8* noundef nonnull inttoptr (i32 -2097118800 to i8*)) #13, !dbg !2490
  store volatile i32 %3, i32* %1, align 4, !dbg !2491
  %4 = load volatile i32, i32* %1, align 4, !dbg !2492
  %5 = and i32 %4, -8, !dbg !2493
  store volatile i32 %5, i32* %1, align 4, !dbg !2494
  %6 = load volatile i32, i32* %1, align 4, !dbg !2495
  store volatile i32 %6, i32* %1, align 4, !dbg !2496
  %7 = load volatile i32, i32* %1, align 4, !dbg !2497
  tail call fastcc void @cmnWriteRegister32(i8* noundef nonnull inttoptr (i32 -2097118800 to i8*), i32 noundef %7) #13, !dbg !2498
  %8 = tail call fastcc i32 @cmnReadRegister32(i8* noundef nonnull inttoptr (i32 -2097118800 to i8*)) #13, !dbg !2499
  store volatile i32 %8, i32* %1, align 4, !dbg !2500
  %9 = load volatile i32, i32* %1, align 4, !dbg !2501
  %10 = and i32 %9, -49153, !dbg !2502
  store volatile i32 %10, i32* %1, align 4, !dbg !2503
  %11 = load volatile i32, i32* %1, align 4, !dbg !2504
  store volatile i32 %11, i32* %1, align 4, !dbg !2505
  %12 = load volatile i32, i32* %1, align 4, !dbg !2506
  tail call fastcc void @cmnWriteRegister32(i8* noundef nonnull inttoptr (i32 -2097118800 to i8*), i32 noundef %12) #13, !dbg !2507
  br label %13, !dbg !2508

13:                                               ; preds = %13, %0
  %14 = load volatile i32, i32* %1, align 4, !dbg !2509
  %15 = tail call fastcc i32 @cmnReadRegister32(i8* noundef nonnull inttoptr (i32 -2097118800 to i8*)) #13, !dbg !2510
  %16 = icmp eq i32 %14, %15, !dbg !2511
  br i1 %16, label %17, label %13, !dbg !2508, !llvm.loop !2512

17:                                               ; preds = %13
  %18 = tail call i32 @top_xtal_freq_get() #13, !dbg !2514
  store i32 %18, i32* @gCpuFrequency, align 4, !dbg !2515
  tail call void @SystemCoreClockUpdate() #12, !dbg !2516
  %19 = load i32, i32* @SystemCoreClock, align 4, !dbg !2517
  %20 = udiv i32 %19, 1000, !dbg !2518
  %21 = tail call i32 @SysTick_Set(i32 noundef %20) #12, !dbg !2519
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %2), !dbg !2520
  ret void, !dbg !2520
}

; Function Attrs: noinline nounwind optsize
define dso_local void @cmnCpuClkConfigureTo192M() local_unnamed_addr #0 !dbg !2521 {
  %1 = alloca i32, align 4
  %2 = bitcast i32* %1 to i8*, !dbg !2525
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %2), !dbg !2525
  call void @llvm.dbg.declare(metadata i32* %1, metadata !2523, metadata !DIExpression()), !dbg !2526
  call void @llvm.dbg.value(metadata i32* inttoptr (i32 -2097118800 to i32*), metadata !2524, metadata !DIExpression()), !dbg !2527
  tail call void @cmnPLL1ON_PLL2ON(i8 noundef zeroext 1) #13, !dbg !2528
  %3 = tail call fastcc i32 @cmnReadRegister32(i8* noundef nonnull inttoptr (i32 -2097118800 to i8*)) #13, !dbg !2529
  store volatile i32 %3, i32* %1, align 4, !dbg !2530
  %4 = load volatile i32, i32* %1, align 4, !dbg !2531
  %5 = and i32 %4, -49153, !dbg !2532
  store volatile i32 %5, i32* %1, align 4, !dbg !2533
  %6 = load volatile i32, i32* %1, align 4, !dbg !2534
  %7 = or i32 %6, 16384, !dbg !2535
  store volatile i32 %7, i32* %1, align 4, !dbg !2536
  %8 = load volatile i32, i32* %1, align 4, !dbg !2537
  tail call fastcc void @cmnWriteRegister32(i8* noundef nonnull inttoptr (i32 -2097118800 to i8*), i32 noundef %8) #13, !dbg !2538
  br label %9, !dbg !2539

9:                                                ; preds = %9, %0
  %10 = load volatile i32, i32* %1, align 4, !dbg !2540
  %11 = tail call fastcc i32 @cmnReadRegister32(i8* noundef nonnull inttoptr (i32 -2097118800 to i8*)) #13, !dbg !2541
  %12 = icmp eq i32 %10, %11, !dbg !2542
  br i1 %12, label %13, label %9, !dbg !2539, !llvm.loop !2543

13:                                               ; preds = %9
  %14 = tail call fastcc i32 @cmnReadRegister32(i8* noundef nonnull inttoptr (i32 -2097118800 to i8*)) #13, !dbg !2545
  store volatile i32 %14, i32* %1, align 4, !dbg !2546
  %15 = load volatile i32, i32* %1, align 4, !dbg !2547
  %16 = and i32 %15, -1009, !dbg !2548
  store volatile i32 %16, i32* %1, align 4, !dbg !2549
  %17 = load volatile i32, i32* %1, align 4, !dbg !2550
  %18 = or i32 %17, 128, !dbg !2551
  store volatile i32 %18, i32* %1, align 4, !dbg !2552
  %19 = load volatile i32, i32* %1, align 4, !dbg !2553
  tail call fastcc void @cmnWriteRegister32(i8* noundef nonnull inttoptr (i32 -2097118800 to i8*), i32 noundef %19) #13, !dbg !2554
  %20 = tail call fastcc i32 @cmnReadRegister32(i8* noundef nonnull inttoptr (i32 -2097118800 to i8*)) #13, !dbg !2555
  store volatile i32 %20, i32* %1, align 4, !dbg !2556
  %21 = load volatile i32, i32* %1, align 4, !dbg !2557
  %22 = and i32 %21, -8, !dbg !2558
  store volatile i32 %22, i32* %1, align 4, !dbg !2559
  %23 = load volatile i32, i32* %1, align 4, !dbg !2560
  %24 = or i32 %23, 4, !dbg !2561
  store volatile i32 %24, i32* %1, align 4, !dbg !2562
  %25 = load volatile i32, i32* %1, align 4, !dbg !2563
  tail call fastcc void @cmnWriteRegister32(i8* noundef nonnull inttoptr (i32 -2097118800 to i8*), i32 noundef %25) #13, !dbg !2564
  store i32 192000000, i32* @gCpuFrequency, align 4, !dbg !2565
  tail call void @SystemCoreClockUpdate() #12, !dbg !2566
  %26 = load i32, i32* @SystemCoreClock, align 4, !dbg !2567
  %27 = udiv i32 %26, 1000, !dbg !2568
  %28 = tail call i32 @SysTick_Set(i32 noundef %27) #12, !dbg !2569
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %2), !dbg !2570
  ret void, !dbg !2570
}

; Function Attrs: noinline nounwind optsize
define dso_local void @cmnCpuClkConfigureTo160M() local_unnamed_addr #0 !dbg !2571 {
  %1 = alloca i32, align 4
  %2 = bitcast i32* %1 to i8*, !dbg !2575
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %2), !dbg !2575
  call void @llvm.dbg.declare(metadata i32* %1, metadata !2573, metadata !DIExpression()), !dbg !2576
  call void @llvm.dbg.value(metadata i32* inttoptr (i32 -2097118800 to i32*), metadata !2574, metadata !DIExpression()), !dbg !2577
  tail call void @cmnPLL1ON_PLL2ON(i8 noundef zeroext 0) #13, !dbg !2578
  %3 = tail call fastcc i32 @cmnReadRegister32(i8* noundef nonnull inttoptr (i32 -2097118800 to i8*)) #13, !dbg !2579
  store volatile i32 %3, i32* %1, align 4, !dbg !2580
  %4 = load volatile i32, i32* %1, align 4, !dbg !2581
  %5 = and i32 %4, -49153, !dbg !2582
  store volatile i32 %5, i32* %1, align 4, !dbg !2583
  %6 = load volatile i32, i32* %1, align 4, !dbg !2584
  %7 = or i32 %6, 32768, !dbg !2585
  store volatile i32 %7, i32* %1, align 4, !dbg !2586
  %8 = load volatile i32, i32* %1, align 4, !dbg !2587
  tail call fastcc void @cmnWriteRegister32(i8* noundef nonnull inttoptr (i32 -2097118800 to i8*), i32 noundef %8) #13, !dbg !2588
  br label %9, !dbg !2589

9:                                                ; preds = %9, %0
  %10 = load volatile i32, i32* %1, align 4, !dbg !2590
  %11 = tail call fastcc i32 @cmnReadRegister32(i8* noundef nonnull inttoptr (i32 -2097118800 to i8*)) #13, !dbg !2591
  %12 = icmp eq i32 %10, %11, !dbg !2592
  br i1 %12, label %13, label %9, !dbg !2589, !llvm.loop !2593

13:                                               ; preds = %9
  %14 = tail call fastcc i32 @cmnReadRegister32(i8* noundef nonnull inttoptr (i32 -2097118800 to i8*)) #13, !dbg !2595
  store volatile i32 %14, i32* %1, align 4, !dbg !2596
  %15 = load volatile i32, i32* %1, align 4, !dbg !2597
  %16 = and i32 %15, -1009, !dbg !2598
  store volatile i32 %16, i32* %1, align 4, !dbg !2599
  %17 = load volatile i32, i32* %1, align 4, !dbg !2600
  %18 = or i32 %17, 32, !dbg !2601
  store volatile i32 %18, i32* %1, align 4, !dbg !2602
  %19 = load volatile i32, i32* %1, align 4, !dbg !2603
  tail call fastcc void @cmnWriteRegister32(i8* noundef nonnull inttoptr (i32 -2097118800 to i8*), i32 noundef %19) #13, !dbg !2604
  %20 = tail call fastcc i32 @cmnReadRegister32(i8* noundef nonnull inttoptr (i32 -2097118800 to i8*)) #13, !dbg !2605
  store volatile i32 %20, i32* %1, align 4, !dbg !2606
  %21 = load volatile i32, i32* %1, align 4, !dbg !2607
  %22 = and i32 %21, -8, !dbg !2608
  store volatile i32 %22, i32* %1, align 4, !dbg !2609
  %23 = load volatile i32, i32* %1, align 4, !dbg !2610
  %24 = or i32 %23, 4, !dbg !2611
  store volatile i32 %24, i32* %1, align 4, !dbg !2612
  %25 = load volatile i32, i32* %1, align 4, !dbg !2613
  tail call fastcc void @cmnWriteRegister32(i8* noundef nonnull inttoptr (i32 -2097118800 to i8*), i32 noundef %25) #13, !dbg !2614
  store i32 160000000, i32* @gCpuFrequency, align 4, !dbg !2615
  tail call void @SystemCoreClockUpdate() #12, !dbg !2616
  %26 = load i32, i32* @SystemCoreClock, align 4, !dbg !2617
  %27 = udiv i32 %26, 1000, !dbg !2618
  %28 = tail call i32 @SysTick_Set(i32 noundef %27) #12, !dbg !2619
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %2), !dbg !2620
  ret void, !dbg !2620
}

; Function Attrs: noinline nounwind optsize
define dso_local void @cmnCpuClkConfigureTo64M() local_unnamed_addr #0 !dbg !2621 {
  %1 = alloca i32, align 4
  %2 = bitcast i32* %1 to i8*, !dbg !2625
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %2), !dbg !2625
  call void @llvm.dbg.declare(metadata i32* %1, metadata !2623, metadata !DIExpression()), !dbg !2626
  call void @llvm.dbg.value(metadata i32* inttoptr (i32 -2097118800 to i32*), metadata !2624, metadata !DIExpression()), !dbg !2627
  tail call void @cmnPLL1ON() #13, !dbg !2628
  %3 = tail call fastcc i32 @cmnReadRegister32(i8* noundef nonnull inttoptr (i32 -2097118800 to i8*)) #13, !dbg !2629
  store volatile i32 %3, i32* %1, align 4, !dbg !2630
  %4 = load volatile i32, i32* %1, align 4, !dbg !2631
  %5 = and i32 %4, -49153, !dbg !2632
  store volatile i32 %5, i32* %1, align 4, !dbg !2633
  %6 = load volatile i32, i32* %1, align 4, !dbg !2634
  store volatile i32 %6, i32* %1, align 4, !dbg !2635
  %7 = load volatile i32, i32* %1, align 4, !dbg !2636
  tail call fastcc void @cmnWriteRegister32(i8* noundef nonnull inttoptr (i32 -2097118800 to i8*), i32 noundef %7) #13, !dbg !2637
  br label %8, !dbg !2638

8:                                                ; preds = %8, %0
  %9 = load volatile i32, i32* %1, align 4, !dbg !2639
  %10 = tail call fastcc i32 @cmnReadRegister32(i8* noundef nonnull inttoptr (i32 -2097118800 to i8*)) #13, !dbg !2640
  %11 = icmp eq i32 %9, %10, !dbg !2641
  br i1 %11, label %12, label %8, !dbg !2638, !llvm.loop !2642

12:                                               ; preds = %8
  %13 = tail call fastcc i32 @cmnReadRegister32(i8* noundef nonnull inttoptr (i32 -2097118800 to i8*)) #13, !dbg !2644
  store volatile i32 %13, i32* %1, align 4, !dbg !2645
  %14 = load volatile i32, i32* %1, align 4, !dbg !2646
  %15 = and i32 %14, -8, !dbg !2647
  store volatile i32 %15, i32* %1, align 4, !dbg !2648
  %16 = load volatile i32, i32* %1, align 4, !dbg !2649
  %17 = or i32 %16, 2, !dbg !2650
  store volatile i32 %17, i32* %1, align 4, !dbg !2651
  %18 = load volatile i32, i32* %1, align 4, !dbg !2652
  tail call fastcc void @cmnWriteRegister32(i8* noundef nonnull inttoptr (i32 -2097118800 to i8*), i32 noundef %18) #13, !dbg !2653
  store i32 64000000, i32* @gCpuFrequency, align 4, !dbg !2654
  tail call void @SystemCoreClockUpdate() #12, !dbg !2655
  %19 = load i32, i32* @SystemCoreClock, align 4, !dbg !2656
  %20 = udiv i32 %19, 1000, !dbg !2657
  %21 = tail call i32 @SysTick_Set(i32 noundef %20) #12, !dbg !2658
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %2), !dbg !2659
  ret void, !dbg !2659
}

; Function Attrs: nofree noinline nounwind optsize
define dso_local void @cmnSerialFlashClkConfToXtal() local_unnamed_addr #7 section ".ramTEXT" !dbg !2660 {
  %1 = alloca i32, align 4
  %2 = bitcast i32* %1 to i8*, !dbg !2664
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %2), !dbg !2664
  call void @llvm.dbg.declare(metadata i32* %1, metadata !2662, metadata !DIExpression()), !dbg !2665
  call void @llvm.dbg.value(metadata i32* inttoptr (i32 -2097118796 to i32*), metadata !2663, metadata !DIExpression()), !dbg !2666
  %3 = tail call fastcc i32 @cmnReadRegister32(i8* noundef nonnull inttoptr (i32 -2097118796 to i8*)) #13, !dbg !2667
  store volatile i32 %3, i32* %1, align 4, !dbg !2668
  %4 = load volatile i32, i32* %1, align 4, !dbg !2669
  %5 = and i32 %4, -24577, !dbg !2670
  store volatile i32 %5, i32* %1, align 4, !dbg !2671
  %6 = load volatile i32, i32* %1, align 4, !dbg !2672
  store volatile i32 %6, i32* %1, align 4, !dbg !2673
  %7 = load volatile i32, i32* %1, align 4, !dbg !2674
  tail call fastcc void @cmnWriteRegister32(i8* noundef nonnull inttoptr (i32 -2097118796 to i8*), i32 noundef %7) #13, !dbg !2675
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %2), !dbg !2676
  ret void, !dbg !2676
}

; Function Attrs: mustprogress nofree noinline norecurse nounwind optsize willreturn
define dso_local i32 @getc() local_unnamed_addr #4 !dbg !2677 {
  %1 = tail call i32 @getc_nowait() #13, !dbg !2682
  call void @llvm.dbg.value(metadata i32 %1, metadata !2681, metadata !DIExpression()), !dbg !2683
  ret i32 %1, !dbg !2684
}

; Function Attrs: mustprogress nofree noinline norecurse nounwind optsize willreturn
define dso_local i32 @getc_nowait() local_unnamed_addr #4 !dbg !2685 {
  %1 = load volatile i32, i32* inttoptr (i32 -2096955372 to i32*), align 4, !dbg !2688
  %2 = and i32 %1, 1, !dbg !2690
  %3 = icmp eq i32 %2, 0, !dbg !2690
  br i1 %3, label %7, label %4, !dbg !2691

4:                                                ; preds = %0
  %5 = load volatile i32, i32* inttoptr (i32 -2096955392 to i32*), align 65536, !dbg !2692
  %6 = and i32 %5, 255, !dbg !2694
  call void @llvm.dbg.value(metadata i32 %5, metadata !2687, metadata !DIExpression()), !dbg !2695
  br label %7, !dbg !2696

7:                                                ; preds = %0, %4
  %8 = phi i32 [ %6, %4 ], [ -1, %0 ], !dbg !2697
  ret i32 %8, !dbg !2698
}

; Function Attrs: nofree noinline norecurse nounwind optsize
define dso_local void @uart_output_char(i32 noundef %0, i8 noundef zeroext %1) local_unnamed_addr #3 !dbg !2699 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !2704, metadata !DIExpression()), !dbg !2707
  call void @llvm.dbg.value(metadata i8 %1, metadata !2705, metadata !DIExpression()), !dbg !2707
  %3 = icmp eq i32 %0, 0, !dbg !2708
  %4 = select i1 %3, i32 -2096955392, i32 -2096889856, !dbg !2708
  call void @llvm.dbg.value(metadata i32 %4, metadata !2706, metadata !DIExpression()), !dbg !2707
  %5 = or i32 %4, 20
  %6 = inttoptr i32 %5 to i32*
  br label %7, !dbg !2709

7:                                                ; preds = %7, %2
  %8 = load volatile i32, i32* %6, align 4, !dbg !2710
  %9 = and i32 %8, 32, !dbg !2711
  %10 = icmp eq i32 %9, 0, !dbg !2712
  br i1 %10, label %7, label %11, !dbg !2709, !llvm.loop !2713

11:                                               ; preds = %7
  %12 = zext i8 %1 to i32, !dbg !2715
  %13 = inttoptr i32 %4 to i32*, !dbg !2716
  store volatile i32 %12, i32* %13, align 65536, !dbg !2717
  ret void, !dbg !2718
}

; Function Attrs: nofree noinline norecurse nounwind optsize
define dso_local zeroext i8 @uart_input_char(i32 noundef %0) local_unnamed_addr #3 !dbg !2719 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !2723, metadata !DIExpression()), !dbg !2726
  %2 = icmp eq i32 %0, 0, !dbg !2727
  %3 = select i1 %2, i32 -2096955392, i32 -2096889856, !dbg !2727
  call void @llvm.dbg.value(metadata i32 %3, metadata !2724, metadata !DIExpression()), !dbg !2726
  %4 = or i32 %3, 20
  %5 = inttoptr i32 %4 to i32*
  br label %6, !dbg !2728

6:                                                ; preds = %6, %1
  %7 = load volatile i32, i32* %5, align 4, !dbg !2729
  %8 = and i32 %7, 1, !dbg !2730
  %9 = icmp eq i32 %8, 0, !dbg !2731
  br i1 %9, label %6, label %10, !dbg !2728, !llvm.loop !2732

10:                                               ; preds = %6
  %11 = inttoptr i32 %3 to i32*, !dbg !2734
  %12 = load volatile i32, i32* %11, align 65536, !dbg !2734
  %13 = trunc i32 %12 to i8, !dbg !2734
  call void @llvm.dbg.value(metadata i8 %13, metadata !2725, metadata !DIExpression()), !dbg !2726
  ret i8 %13, !dbg !2735
}

; Function Attrs: mustprogress nofree noinline norecurse nounwind optsize willreturn
define dso_local i32 @uart_input_char_unblocking(i32 noundef %0) local_unnamed_addr #4 !dbg !2736 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !2740, metadata !DIExpression()), !dbg !2743
  %2 = icmp eq i32 %0, 0, !dbg !2744
  %3 = select i1 %2, i32 -2096955392, i32 -2096889856, !dbg !2744
  call void @llvm.dbg.value(metadata i32 %3, metadata !2741, metadata !DIExpression()), !dbg !2743
  %4 = or i32 %3, 20, !dbg !2745
  %5 = inttoptr i32 %4 to i32*, !dbg !2745
  %6 = load volatile i32, i32* %5, align 4, !dbg !2745
  %7 = and i32 %6, 1, !dbg !2747
  %8 = icmp eq i32 %7, 0, !dbg !2747
  br i1 %8, label %13, label %9, !dbg !2748

9:                                                ; preds = %1
  %10 = inttoptr i32 %3 to i32*, !dbg !2749
  %11 = load volatile i32, i32* %10, align 65536, !dbg !2749
  %12 = and i32 %11, 255, !dbg !2751
  call void @llvm.dbg.value(metadata i32 %11, metadata !2742, metadata !DIExpression()), !dbg !2743
  br label %13, !dbg !2752

13:                                               ; preds = %1, %9
  %14 = phi i32 [ %12, %9 ], [ -1, %1 ], !dbg !2753
  ret i32 %14, !dbg !2754
}

; Function Attrs: noinline nounwind optsize
define dso_local void @halUART_HWInit(i32 noundef %0) local_unnamed_addr #0 !dbg !2755 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !2759, metadata !DIExpression()), !dbg !2760
  tail call void @halUART_SetFormat(i32 noundef %0, i32 noundef 115200, i16 noundef zeroext 3, i16 noundef zeroext 0, i16 noundef zeroext 0) #13, !dbg !2761
  switch i32 %0, label %7 [
    i32 0, label %3
    i32 1, label %2
  ], !dbg !2762

2:                                                ; preds = %1
  br label %3, !dbg !2763

3:                                                ; preds = %1, %2
  %4 = phi i32* [ inttoptr (i32 -2096889780 to i32*), %2 ], [ inttoptr (i32 -2096955316 to i32*), %1 ]
  %5 = load volatile i32, i32* %4, align 4, !dbg !2767
  %6 = or i32 %5, 1, !dbg !2767
  store volatile i32 %6, i32* %4, align 4, !dbg !2767
  br label %7, !dbg !2768

7:                                                ; preds = %3, %1
  ret void, !dbg !2768
}

; Function Attrs: noinline nounwind optsize
define dso_local void @halUART_SetFormat(i32 noundef %0, i32 noundef %1, i16 noundef zeroext %2, i16 noundef zeroext %3, i16 noundef zeroext %4) local_unnamed_addr #0 !dbg !2769 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !2775, metadata !DIExpression()), !dbg !2792
  call void @llvm.dbg.value(metadata i32 %1, metadata !2776, metadata !DIExpression()), !dbg !2792
  call void @llvm.dbg.value(metadata i16 %2, metadata !2777, metadata !DIExpression()), !dbg !2792
  call void @llvm.dbg.value(metadata i16 %3, metadata !2778, metadata !DIExpression()), !dbg !2792
  call void @llvm.dbg.value(metadata i16 %4, metadata !2779, metadata !DIExpression()), !dbg !2792
  call void @llvm.dbg.value(metadata i32 -2096955392, metadata !2781, metadata !DIExpression()), !dbg !2792
  call void @llvm.dbg.declare(metadata [11 x i16]* @__const.halUART_SetFormat.fraction_L_mapping, metadata !2788, metadata !DIExpression()), !dbg !2793
  call void @llvm.dbg.declare(metadata [11 x i16]* @__const.halUART_SetFormat.fraction_M_mapping, metadata !2790, metadata !DIExpression()), !dbg !2794
  call void @llvm.dbg.value(metadata i32 0, metadata !2791, metadata !DIExpression()), !dbg !2792
  %6 = tail call i32 @top_xtal_freq_get() #12, !dbg !2795
  store i32 %6, i32* @gUartClkFreq, align 4, !dbg !2796
  %7 = icmp eq i32 %0, 1, !dbg !2797
  %8 = select i1 %7, i32 -2096889856, i32 -2096955392, !dbg !2797
  call void @llvm.dbg.value(metadata i32 %8, metadata !2781, metadata !DIExpression()), !dbg !2792
  %9 = or i32 %8, 36, !dbg !2798
  %10 = inttoptr i32 %9 to i32*, !dbg !2798
  store volatile i32 3, i32* %10, align 4, !dbg !2799
  %11 = or i32 %8, 12, !dbg !2800
  %12 = inttoptr i32 %11 to i32*, !dbg !2800
  %13 = load volatile i32, i32* %12, align 4, !dbg !2800
  call void @llvm.dbg.value(metadata i32 %13, metadata !2783, metadata !DIExpression()), !dbg !2792
  %14 = or i32 %13, 128, !dbg !2801
  store volatile i32 %14, i32* %12, align 4, !dbg !2802
  %15 = load i32, i32* @gUartClkFreq, align 4, !dbg !2803
  %16 = udiv i32 %15, %1, !dbg !2804
  call void @llvm.dbg.value(metadata i32 %16, metadata !2782, metadata !DIExpression()), !dbg !2792
  %17 = lshr i32 %16, 8, !dbg !2805
  %18 = add nuw nsw i32 %17, 1, !dbg !2806
  call void @llvm.dbg.value(metadata i32 %18, metadata !2784, metadata !DIExpression()), !dbg !2792
  %19 = udiv i32 %16, %18, !dbg !2807
  %20 = add i32 %19, -1, !dbg !2809
  call void @llvm.dbg.value(metadata i32 %20, metadata !2785, metadata !DIExpression()), !dbg !2792
  %21 = icmp eq i32 %20, 3, !dbg !2810
  %22 = lshr i32 %20, 1, !dbg !2812
  %23 = add nsw i32 %22, -1, !dbg !2812
  %24 = select i1 %21, i32 0, i32 %23, !dbg !2812
  call void @llvm.dbg.value(metadata i32 %24, metadata !2786, metadata !DIExpression()), !dbg !2792
  call void @llvm.dbg.value(metadata i32 undef, metadata !2791, metadata !DIExpression()), !dbg !2792
  %25 = mul i32 %15, 10, !dbg !2813
  %26 = udiv i32 %25, %1, !dbg !2814
  %27 = udiv i32 %26, %16, !dbg !2815
  %28 = mul i32 %19, -10, !dbg !2816
  %29 = add i32 %27, %28, !dbg !2817
  %30 = urem i32 %29, 10, !dbg !2818
  call void @llvm.dbg.value(metadata i32 %30, metadata !2787, metadata !DIExpression()), !dbg !2792
  %31 = and i32 %18, 255, !dbg !2819
  %32 = inttoptr i32 %8 to i32*, !dbg !2820
  store volatile i32 %31, i32* %32, align 65536, !dbg !2821
  %33 = lshr i32 %18, 8, !dbg !2822
  %34 = and i32 %33, 255, !dbg !2823
  %35 = or i32 %8, 4, !dbg !2824
  %36 = inttoptr i32 %35 to i32*, !dbg !2824
  store volatile i32 %34, i32* %36, align 4, !dbg !2825
  %37 = or i32 %8, 40, !dbg !2826
  %38 = inttoptr i32 %37 to i32*, !dbg !2826
  store volatile i32 %20, i32* %38, align 8, !dbg !2827
  %39 = or i32 %8, 44, !dbg !2828
  %40 = inttoptr i32 %39 to i32*, !dbg !2828
  store volatile i32 %24, i32* %40, align 4, !dbg !2829
  %41 = getelementptr inbounds [11 x i16], [11 x i16]* @__const.halUART_SetFormat.fraction_M_mapping, i32 0, i32 %30, !dbg !2830
  %42 = load i16, i16* %41, align 2, !dbg !2830
  %43 = zext i16 %42 to i32, !dbg !2830
  %44 = or i32 %8, 88, !dbg !2831
  %45 = inttoptr i32 %44 to i32*, !dbg !2831
  store volatile i32 %43, i32* %45, align 8, !dbg !2832
  %46 = getelementptr inbounds [11 x i16], [11 x i16]* @__const.halUART_SetFormat.fraction_L_mapping, i32 0, i32 %30, !dbg !2833
  %47 = load i16, i16* %46, align 2, !dbg !2833
  %48 = zext i16 %47 to i32, !dbg !2833
  %49 = or i32 %8, 84, !dbg !2834
  %50 = inttoptr i32 %49 to i32*, !dbg !2834
  store volatile i32 %48, i32* %50, align 4, !dbg !2835
  store volatile i32 %13, i32* %12, align 4, !dbg !2836
  %51 = or i32 %8, 8, !dbg !2837
  %52 = inttoptr i32 %51 to i32*, !dbg !2837
  store volatile i32 71, i32* %52, align 8, !dbg !2838
  %53 = inttoptr i32 %11 to i16*, !dbg !2839
  %54 = load volatile i16, i16* %53, align 4, !dbg !2839
  call void @llvm.dbg.value(metadata i16 %54, metadata !2780, metadata !DIExpression()), !dbg !2792
  %55 = and i16 %54, -64, !dbg !2840
  call void @llvm.dbg.value(metadata i16 %54, metadata !2780, metadata !DIExpression(DW_OP_constu, 18446744073709551608, DW_OP_and, DW_OP_stack_value)), !dbg !2792
  call void @llvm.dbg.value(metadata !DIArgList(i16 %54, i16 %2), metadata !2780, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_constu, 18446744073709551552, DW_OP_and, DW_OP_LLVM_arg, 1, DW_OP_or, DW_OP_stack_value)), !dbg !2792
  %56 = and i16 %2, -61, !dbg !2841
  call void @llvm.dbg.value(metadata !DIArgList(i16 %54, i16 %56), metadata !2780, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_constu, 18446744073709551552, DW_OP_and, DW_OP_LLVM_arg, 1, DW_OP_or, DW_OP_stack_value)), !dbg !2792
  call void @llvm.dbg.value(metadata !DIArgList(i16 %55, i16 %4, i16 %56), metadata !2780, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 2, DW_OP_or, DW_OP_LLVM_arg, 1, DW_OP_or, DW_OP_stack_value)), !dbg !2792
  %57 = and i16 %4, -57, !dbg !2842
  call void @llvm.dbg.value(metadata i16 undef, metadata !2780, metadata !DIExpression()), !dbg !2792
  %58 = or i16 %56, %3, !dbg !2841
  %59 = or i16 %58, %57, !dbg !2842
  %60 = or i16 %59, %55, !dbg !2843
  call void @llvm.dbg.value(metadata i16 %60, metadata !2780, metadata !DIExpression()), !dbg !2792
  store volatile i16 %60, i16* %53, align 4, !dbg !2844
  ret void, !dbg !2845
}

; Function Attrs: mustprogress nofree noinline norecurse nounwind optsize willreturn
define dso_local void @halUART_Get_VFIFO_Length(i32 noundef %0, i32 noundef %1, i32* nocapture noundef writeonly %2) local_unnamed_addr #4 !dbg !2846 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !2850, metadata !DIExpression()), !dbg !2853
  call void @llvm.dbg.value(metadata i32 %1, metadata !2851, metadata !DIExpression()), !dbg !2853
  call void @llvm.dbg.value(metadata i32* %2, metadata !2852, metadata !DIExpression()), !dbg !2853
  %4 = icmp eq i32 %0, 0, !dbg !2854
  %5 = icmp eq i32 %1, 0, !dbg !2856
  br i1 %4, label %6, label %16, !dbg !2857

6:                                                ; preds = %3
  br i1 %5, label %10, label %7, !dbg !2858

7:                                                ; preds = %6
  %8 = load volatile i16, i16* inttoptr (i32 -2097082568 to i16*), align 8, !dbg !2860
  %9 = zext i16 %8 to i32, !dbg !2860
  br label %26, !dbg !2863

10:                                               ; preds = %6
  %11 = load volatile i16, i16* inttoptr (i32 -2097082812 to i16*), align 4, !dbg !2864
  %12 = zext i16 %11 to i32, !dbg !2864
  store i32 %12, i32* %2, align 4, !dbg !2866
  %13 = load volatile i16, i16* inttoptr (i32 -2097082824 to i16*), align 8, !dbg !2867
  %14 = zext i16 %13 to i32, !dbg !2867
  %15 = sub nsw i32 %12, %14, !dbg !2868
  br label %26

16:                                               ; preds = %3
  br i1 %5, label %20, label %17, !dbg !2869

17:                                               ; preds = %16
  %18 = load volatile i16, i16* inttoptr (i32 -2097082056 to i16*), align 8, !dbg !2871
  %19 = zext i16 %18 to i32, !dbg !2871
  br label %26, !dbg !2874

20:                                               ; preds = %16
  %21 = load volatile i16, i16* inttoptr (i32 -2097082300 to i16*), align 4, !dbg !2875
  %22 = zext i16 %21 to i32, !dbg !2875
  store i32 %22, i32* %2, align 4, !dbg !2877
  %23 = load volatile i16, i16* inttoptr (i32 -2097082312 to i16*), align 8, !dbg !2878
  %24 = zext i16 %23 to i32, !dbg !2878
  %25 = sub nsw i32 %22, %24, !dbg !2879
  br label %26

26:                                               ; preds = %17, %20, %7, %10
  %27 = phi i32 [ %19, %17 ], [ %25, %20 ], [ %9, %7 ], [ %15, %10 ]
  store i32 %27, i32* %2, align 4, !dbg !2856
  ret void, !dbg !2880
}

; Function Attrs: nofree noinline norecurse nounwind optsize
define dso_local void @halUART_Read_VFIFO_Data(i32 noundef %0, i8* nocapture noundef writeonly %1, i32 noundef %2) local_unnamed_addr #3 !dbg !2881 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !2885, metadata !DIExpression()), !dbg !2889
  call void @llvm.dbg.value(metadata i8* %1, metadata !2886, metadata !DIExpression()), !dbg !2889
  call void @llvm.dbg.value(metadata i32 %2, metadata !2887, metadata !DIExpression()), !dbg !2889
  call void @llvm.dbg.value(metadata i32 0, metadata !2888, metadata !DIExpression()), !dbg !2889
  call void @llvm.dbg.value(metadata i32 0, metadata !2888, metadata !DIExpression()), !dbg !2889
  %4 = icmp eq i32 %2, 0, !dbg !2890
  br i1 %4, label %15, label %5, !dbg !2893

5:                                                ; preds = %3, %12
  %6 = phi i32 [ %13, %12 ], [ 0, %3 ]
  call void @llvm.dbg.value(metadata i32 %6, metadata !2888, metadata !DIExpression()), !dbg !2889
  switch i32 %0, label %12 [
    i32 0, label %8
    i32 1, label %7
  ], !dbg !2894

7:                                                ; preds = %5
  br label %8, !dbg !2896

8:                                                ; preds = %5, %7
  %9 = phi i8* [ inttoptr (i32 2030044416 to i8*), %7 ], [ inttoptr (i32 2030043904 to i8*), %5 ]
  %10 = load volatile i8, i8* %9, align 256, !dbg !2900
  %11 = getelementptr inbounds i8, i8* %1, i32 %6, !dbg !2900
  store i8 %10, i8* %11, align 1, !dbg !2900
  br label %12, !dbg !2901

12:                                               ; preds = %8, %5
  %13 = add nuw i32 %6, 1, !dbg !2901
  call void @llvm.dbg.value(metadata i32 %13, metadata !2888, metadata !DIExpression()), !dbg !2889
  %14 = icmp eq i32 %13, %2, !dbg !2890
  br i1 %14, label %15, label %5, !dbg !2893, !llvm.loop !2902

15:                                               ; preds = %12, %3
  ret void, !dbg !2904
}

; Function Attrs: nofree noinline norecurse nounwind optsize
define dso_local void @halUART_Write_VFIFO_Data(i32 noundef %0, i8* nocapture noundef readonly %1, i32 noundef %2) local_unnamed_addr #3 !dbg !2905 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !2911, metadata !DIExpression()), !dbg !2915
  call void @llvm.dbg.value(metadata i8* %1, metadata !2912, metadata !DIExpression()), !dbg !2915
  call void @llvm.dbg.value(metadata i32 %2, metadata !2913, metadata !DIExpression()), !dbg !2915
  call void @llvm.dbg.value(metadata i32 0, metadata !2914, metadata !DIExpression()), !dbg !2915
  call void @llvm.dbg.value(metadata i32 0, metadata !2914, metadata !DIExpression()), !dbg !2915
  %4 = icmp eq i32 %2, 0, !dbg !2916
  br i1 %4, label %16, label %5, !dbg !2919

5:                                                ; preds = %3, %13
  %6 = phi i32 [ %14, %13 ], [ 0, %3 ]
  call void @llvm.dbg.value(metadata i32 %6, metadata !2914, metadata !DIExpression()), !dbg !2915
  switch i32 %0, label %13 [
    i32 0, label %7
    i32 1, label %10
  ], !dbg !2920

7:                                                ; preds = %5
  %8 = getelementptr inbounds i8, i8* %1, i32 %6, !dbg !2922
  %9 = load i8, i8* %8, align 1, !dbg !2922
  store volatile i8 %9, i8* inttoptr (i32 2030043648 to i8*), align 512, !dbg !2925
  br label %13, !dbg !2926

10:                                               ; preds = %5
  %11 = getelementptr inbounds i8, i8* %1, i32 %6, !dbg !2927
  %12 = load i8, i8* %11, align 1, !dbg !2927
  store volatile i8 %12, i8* inttoptr (i32 2030044160 to i8*), align 1024, !dbg !2930
  br label %13, !dbg !2931

13:                                               ; preds = %5, %7, %10
  %14 = add nuw i32 %6, 1, !dbg !2932
  call void @llvm.dbg.value(metadata i32 %14, metadata !2914, metadata !DIExpression()), !dbg !2915
  %15 = icmp eq i32 %14, %2, !dbg !2916
  br i1 %15, label %16, label %5, !dbg !2919, !llvm.loop !2933

16:                                               ; preds = %13, %3
  ret void, !dbg !2935
}

; Function Attrs: noinline nounwind optsize
define dso_local void @halUART_Tx_VFIFO_Initialize(i32 noundef %0, i8* noundef %1, i32 noundef %2, i32 noundef %3) local_unnamed_addr #0 !dbg !2936 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !2940, metadata !DIExpression()), !dbg !2944
  call void @llvm.dbg.value(metadata i8* %1, metadata !2941, metadata !DIExpression()), !dbg !2944
  call void @llvm.dbg.value(metadata i32 %2, metadata !2942, metadata !DIExpression()), !dbg !2944
  call void @llvm.dbg.value(metadata i32 %3, metadata !2943, metadata !DIExpression()), !dbg !2944
  switch i32 %0, label %9 [
    i32 0, label %6
    i32 1, label %5
  ], !dbg !2945

5:                                                ; preds = %4
  br label %6, !dbg !2946

6:                                                ; preds = %4, %5
  %7 = phi i32 [ 16, %5 ], [ 14, %4 ]
  %8 = ptrtoint i8* %1 to i32, !dbg !2950
  tail call void @DMA_Vfifo_SetAdrs(i32 noundef %8, i32 noundef %2, i32 noundef %7, i32 noundef 0, i32 noundef %3, i32 noundef 0) #12, !dbg !2950
  tail call void @DMA_Vfifo_Flush(i32 noundef %7) #12, !dbg !2950
  br label %9, !dbg !2951

9:                                                ; preds = %6, %4
  ret void, !dbg !2951
}

; Function Attrs: optsize
declare dso_local void @DMA_Vfifo_SetAdrs(i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare dso_local void @DMA_Vfifo_Flush(i32 noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize
define dso_local void @halUART_Rx_VFIFO_Initialize(i32 noundef %0, i8* noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %5) local_unnamed_addr #0 !dbg !2952 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !2956, metadata !DIExpression()), !dbg !2962
  call void @llvm.dbg.value(metadata i8* %1, metadata !2957, metadata !DIExpression()), !dbg !2962
  call void @llvm.dbg.value(metadata i32 %2, metadata !2958, metadata !DIExpression()), !dbg !2962
  call void @llvm.dbg.value(metadata i32 %3, metadata !2959, metadata !DIExpression()), !dbg !2962
  call void @llvm.dbg.value(metadata i32 %4, metadata !2960, metadata !DIExpression()), !dbg !2962
  call void @llvm.dbg.value(metadata i32 %5, metadata !2961, metadata !DIExpression()), !dbg !2962
  switch i32 %0, label %11 [
    i32 0, label %8
    i32 1, label %7
  ], !dbg !2963

7:                                                ; preds = %6
  br label %8, !dbg !2964

8:                                                ; preds = %6, %7
  %9 = phi i32 [ 17, %7 ], [ 15, %6 ]
  %10 = ptrtoint i8* %1 to i32, !dbg !2968
  tail call void @DMA_Vfifo_SetAdrs(i32 noundef %10, i32 noundef %2, i32 noundef %9, i32 noundef %3, i32 noundef %4, i32 noundef %5) #12, !dbg !2968
  tail call void @DMA_Vfifo_Flush(i32 noundef %9) #12, !dbg !2968
  br label %11, !dbg !2969

11:                                               ; preds = %8, %6
  ret void, !dbg !2969
}

; Function Attrs: noinline nounwind optsize
define dso_local void @halUART_VDMA_Rx_Register_Callback(i32 noundef %0, void ()* noundef %1) local_unnamed_addr #0 !dbg !2970 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !2974, metadata !DIExpression()), !dbg !2976
  call void @llvm.dbg.value(metadata void ()* %1, metadata !2975, metadata !DIExpression()), !dbg !2976
  switch i32 %0, label %6 [
    i32 0, label %4
    i32 1, label %3
  ], !dbg !2977

3:                                                ; preds = %2
  br label %4, !dbg !2978

4:                                                ; preds = %2, %3
  %5 = phi i32 [ 17, %3 ], [ 15, %2 ]
  tail call void @DMA_Vfifo_Register_Callback(i32 noundef %5, void ()* noundef %1) #12, !dbg !2982
  br label %6, !dbg !2983

6:                                                ; preds = %4, %2
  ret void, !dbg !2983
}

; Function Attrs: optsize
declare dso_local void @DMA_Vfifo_Register_Callback(i32 noundef, void ()* noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize
define dso_local void @halUART_VDMA_Rx_Register_TO_Callback(i32 noundef %0, void ()* noundef %1) local_unnamed_addr #0 !dbg !2984 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !2986, metadata !DIExpression()), !dbg !2988
  call void @llvm.dbg.value(metadata void ()* %1, metadata !2987, metadata !DIExpression()), !dbg !2988
  switch i32 %0, label %6 [
    i32 0, label %4
    i32 1, label %3
  ], !dbg !2989

3:                                                ; preds = %2
  br label %4, !dbg !2990

4:                                                ; preds = %2, %3
  %5 = phi i32 [ 17, %3 ], [ 15, %2 ]
  tail call void @DMA_Vfifo_Register_TO_Callback(i32 noundef %5, void ()* noundef %1) #12, !dbg !2994
  br label %6, !dbg !2995

6:                                                ; preds = %4, %2
  ret void, !dbg !2995
}

; Function Attrs: optsize
declare dso_local void @DMA_Vfifo_Register_TO_Callback(i32 noundef, void ()* noundef) local_unnamed_addr #2

; Function Attrs: nofree noinline norecurse nounwind optsize
define dso_local void @uart_set_hardware_flowcontrol(i32 noundef %0) local_unnamed_addr #3 !dbg !2996 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !2998, metadata !DIExpression()), !dbg !3002
  %2 = icmp eq i32 %0, 0, !dbg !3003
  %3 = select i1 %2, i32 -2096955392, i32 -2096889856, !dbg !3003
  call void @llvm.dbg.value(metadata i32 %3, metadata !2999, metadata !DIExpression()), !dbg !3002
  %4 = or i32 %3, 12, !dbg !3004
  %5 = inttoptr i32 %4 to i32*, !dbg !3004
  %6 = load volatile i32, i32* %5, align 4, !dbg !3004
  call void @llvm.dbg.value(metadata i32 %6, metadata !3001, metadata !DIExpression(DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 16, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !3002
  store volatile i32 191, i32* %5, align 4, !dbg !3005
  %7 = or i32 %3, 8, !dbg !3006
  %8 = inttoptr i32 %7 to i32*, !dbg !3006
  %9 = load volatile i32, i32* %8, align 8, !dbg !3006
  call void @llvm.dbg.value(metadata i32 %9, metadata !3000, metadata !DIExpression()), !dbg !3002
  %10 = and i32 %9, 65327, !dbg !3007
  %11 = or i32 %10, 208, !dbg !3007
  call void @llvm.dbg.value(metadata i32 %9, metadata !3000, metadata !DIExpression(DW_OP_constu, 208, DW_OP_or, DW_OP_stack_value)), !dbg !3002
  store volatile i32 %11, i32* %8, align 8, !dbg !3008
  %12 = or i32 %3, 68, !dbg !3009
  %13 = inttoptr i32 %12 to i32*, !dbg !3009
  store volatile i32 0, i32* %13, align 4, !dbg !3010
  store volatile i32 0, i32* %5, align 4, !dbg !3011
  %14 = or i32 %3, 16, !dbg !3012
  %15 = inttoptr i32 %14 to i32*, !dbg !3012
  store volatile i32 2, i32* %15, align 16, !dbg !3013
  %16 = and i32 %6, 65535, !dbg !3014
  store volatile i32 %16, i32* %5, align 4, !dbg !3015
  ret void, !dbg !3016
}

; Function Attrs: nofree noinline norecurse nounwind optsize
define dso_local void @uart_set_software_flowcontrol(i32 noundef %0, i8 noundef zeroext %1, i8 noundef zeroext %2, i8 noundef zeroext %3) local_unnamed_addr #3 !dbg !3017 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !3021, metadata !DIExpression()), !dbg !3028
  call void @llvm.dbg.value(metadata i8 %1, metadata !3022, metadata !DIExpression()), !dbg !3028
  call void @llvm.dbg.value(metadata i8 %2, metadata !3023, metadata !DIExpression()), !dbg !3028
  call void @llvm.dbg.value(metadata i8 %3, metadata !3024, metadata !DIExpression()), !dbg !3028
  %5 = icmp eq i32 %0, 0, !dbg !3029
  %6 = select i1 %5, i32 -2096955392, i32 -2096889856, !dbg !3029
  call void @llvm.dbg.value(metadata i32 %6, metadata !3025, metadata !DIExpression()), !dbg !3028
  %7 = or i32 %6, 12, !dbg !3030
  %8 = inttoptr i32 %7 to i32*, !dbg !3030
  %9 = load volatile i32, i32* %8, align 4, !dbg !3030
  call void @llvm.dbg.value(metadata i32 %9, metadata !3027, metadata !DIExpression(DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 16, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !3028
  store volatile i32 191, i32* %8, align 4, !dbg !3031
  %10 = zext i8 %1 to i32, !dbg !3032
  %11 = or i32 %6, 16, !dbg !3033
  %12 = inttoptr i32 %11 to i32*, !dbg !3033
  store volatile i32 %10, i32* %12, align 16, !dbg !3034
  %13 = or i32 %6, 20, !dbg !3035
  %14 = inttoptr i32 %13 to i32*, !dbg !3035
  store volatile i32 %10, i32* %14, align 4, !dbg !3036
  %15 = zext i8 %2 to i32, !dbg !3037
  %16 = or i32 %6, 24, !dbg !3038
  %17 = inttoptr i32 %16 to i32*, !dbg !3038
  store volatile i32 %15, i32* %17, align 8, !dbg !3039
  %18 = or i32 %6, 28, !dbg !3040
  %19 = inttoptr i32 %18 to i32*, !dbg !3040
  store volatile i32 %15, i32* %19, align 4, !dbg !3041
  %20 = or i32 %6, 8, !dbg !3042
  %21 = inttoptr i32 %20 to i32*, !dbg !3042
  %22 = load volatile i32, i32* %21, align 8, !dbg !3042
  call void @llvm.dbg.value(metadata i32 %22, metadata !3026, metadata !DIExpression()), !dbg !3028
  %23 = and i32 %22, 65525, !dbg !3043
  %24 = or i32 %23, 10, !dbg !3043
  call void @llvm.dbg.value(metadata i32 %22, metadata !3026, metadata !DIExpression(DW_OP_constu, 10, DW_OP_or, DW_OP_stack_value)), !dbg !3028
  store volatile i32 %24, i32* %21, align 8, !dbg !3044
  %25 = and i32 %9, 65535, !dbg !3045
  store volatile i32 %25, i32* %8, align 4, !dbg !3046
  %26 = zext i8 %3 to i32, !dbg !3047
  %27 = or i32 %6, 64, !dbg !3048
  %28 = inttoptr i32 %27 to i32*, !dbg !3048
  store volatile i32 %26, i32* %28, align 64, !dbg !3049
  %29 = or i32 %6, 68, !dbg !3050
  %30 = inttoptr i32 %29 to i32*, !dbg !3050
  store volatile i32 1, i32* %30, align 4, !dbg !3051
  ret void, !dbg !3052
}

; Function Attrs: nofree noinline norecurse nounwind optsize
define dso_local void @uart_disable_flowcontrol(i32 noundef %0) local_unnamed_addr #3 !dbg !3053 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !3055, metadata !DIExpression()), !dbg !3058
  %2 = icmp eq i32 %0, 0, !dbg !3059
  %3 = select i1 %2, i32 -2096955392, i32 -2096889856, !dbg !3059
  call void @llvm.dbg.value(metadata i32 %3, metadata !3056, metadata !DIExpression()), !dbg !3058
  %4 = or i32 %3, 12, !dbg !3060
  %5 = inttoptr i32 %4 to i32*, !dbg !3060
  %6 = load volatile i32, i32* %5, align 4, !dbg !3060
  call void @llvm.dbg.value(metadata i32 %6, metadata !3057, metadata !DIExpression(DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 16, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !3058
  store volatile i32 191, i32* %5, align 4, !dbg !3061
  %7 = or i32 %3, 8, !dbg !3062
  %8 = inttoptr i32 %7 to i32*, !dbg !3062
  store volatile i32 0, i32* %8, align 8, !dbg !3063
  store volatile i32 0, i32* %5, align 4, !dbg !3064
  %9 = and i32 %6, 65535, !dbg !3065
  store volatile i32 %9, i32* %5, align 4, !dbg !3066
  ret void, !dbg !3067
}

; Function Attrs: nofree noinline norecurse nounwind optsize
define dso_local void @uart_reset_default_value(i32 noundef %0) local_unnamed_addr #3 !dbg !3068 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !3070, metadata !DIExpression()), !dbg !3072
  %2 = icmp eq i32 %0, 0, !dbg !3073
  %3 = select i1 %2, i32 -2096955392, i32 -2096889856, !dbg !3073
  call void @llvm.dbg.value(metadata i32 %3, metadata !3071, metadata !DIExpression()), !dbg !3072
  %4 = or i32 %3, 12, !dbg !3074
  %5 = inttoptr i32 %4 to i32*, !dbg !3074
  store volatile i32 191, i32* %5, align 4, !dbg !3075
  %6 = or i32 %3, 8, !dbg !3076
  %7 = inttoptr i32 %6 to i32*, !dbg !3076
  store volatile i32 16, i32* %7, align 8, !dbg !3077
  %8 = or i32 %3, 16, !dbg !3078
  %9 = inttoptr i32 %8 to i32*, !dbg !3078
  store volatile i32 0, i32* %9, align 16, !dbg !3079
  %10 = or i32 %3, 24, !dbg !3080
  %11 = inttoptr i32 %10 to i32*, !dbg !3080
  store volatile i32 0, i32* %11, align 8, !dbg !3081
  store volatile i32 128, i32* %5, align 4, !dbg !3082
  %12 = inttoptr i32 %3 to i32*, !dbg !3083
  store volatile i32 0, i32* %12, align 65536, !dbg !3084
  %13 = or i32 %3, 4, !dbg !3085
  %14 = inttoptr i32 %13 to i32*, !dbg !3085
  store volatile i32 0, i32* %14, align 4, !dbg !3086
  store volatile i32 0, i32* %5, align 4, !dbg !3087
  store volatile i32 0, i32* %14, align 4, !dbg !3088
  store volatile i32 0, i32* %7, align 8, !dbg !3089
  store volatile i32 191, i32* %5, align 4, !dbg !3090
  store volatile i32 0, i32* %7, align 8, !dbg !3091
  store volatile i32 0, i32* %5, align 4, !dbg !3092
  store volatile i32 0, i32* %9, align 16, !dbg !3093
  %15 = or i32 %3, 28, !dbg !3094
  %16 = inttoptr i32 %15 to i32*, !dbg !3094
  store volatile i32 0, i32* %16, align 4, !dbg !3095
  %17 = or i32 %3, 36, !dbg !3096
  %18 = inttoptr i32 %17 to i32*, !dbg !3096
  store volatile i32 0, i32* %18, align 4, !dbg !3097
  %19 = or i32 %3, 40, !dbg !3098
  %20 = inttoptr i32 %19 to i32*, !dbg !3098
  store volatile i32 0, i32* %20, align 8, !dbg !3099
  %21 = or i32 %3, 44, !dbg !3100
  %22 = inttoptr i32 %21 to i32*, !dbg !3100
  store volatile i32 0, i32* %22, align 4, !dbg !3101
  %23 = or i32 %3, 52, !dbg !3102
  %24 = inttoptr i32 %23 to i32*, !dbg !3102
  store volatile i32 0, i32* %24, align 4, !dbg !3103
  %25 = or i32 %3, 60, !dbg !3104
  %26 = inttoptr i32 %25 to i32*, !dbg !3104
  store volatile i32 0, i32* %26, align 4, !dbg !3105
  %27 = or i32 %3, 64, !dbg !3106
  %28 = inttoptr i32 %27 to i32*, !dbg !3106
  store volatile i32 0, i32* %28, align 64, !dbg !3107
  %29 = or i32 %3, 68, !dbg !3108
  %30 = inttoptr i32 %29 to i32*, !dbg !3108
  store volatile i32 0, i32* %30, align 4, !dbg !3109
  %31 = or i32 %3, 72, !dbg !3110
  %32 = inttoptr i32 %31 to i32*, !dbg !3110
  store volatile i32 0, i32* %32, align 8, !dbg !3111
  %33 = or i32 %3, 76, !dbg !3112
  %34 = inttoptr i32 %33 to i32*, !dbg !3112
  store volatile i32 0, i32* %34, align 4, !dbg !3113
  %35 = or i32 %3, 80, !dbg !3114
  %36 = inttoptr i32 %35 to i32*, !dbg !3114
  store volatile i32 0, i32* %36, align 16, !dbg !3115
  %37 = or i32 %3, 84, !dbg !3116
  %38 = inttoptr i32 %37 to i32*, !dbg !3116
  store volatile i32 0, i32* %38, align 4, !dbg !3117
  %39 = or i32 %3, 88, !dbg !3118
  %40 = inttoptr i32 %39 to i32*, !dbg !3118
  store volatile i32 0, i32* %40, align 8, !dbg !3119
  %41 = or i32 %3, 96, !dbg !3120
  %42 = inttoptr i32 %41 to i32*, !dbg !3120
  store volatile i32 0, i32* %42, align 32, !dbg !3121
  ret void, !dbg !3122
}

; Function Attrs: nofree noinline norecurse nounwind optsize
define dso_local void @uart_query_empty(i32 noundef %0) local_unnamed_addr #3 !dbg !3123 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !3125, metadata !DIExpression()), !dbg !3127
  %2 = icmp eq i32 %0, 0, !dbg !3128
  call void @llvm.dbg.value(metadata i32 undef, metadata !3126, metadata !DIExpression()), !dbg !3127
  %3 = select i1 %2, i32 -2096955372, i32 -2096889836
  %4 = inttoptr i32 %3 to i32*
  br label %5, !dbg !3129

5:                                                ; preds = %5, %1
  %6 = load volatile i32, i32* %4, align 4, !dbg !3130
  %7 = and i32 %6, 64, !dbg !3131
  %8 = icmp eq i32 %7, 0, !dbg !3132
  br i1 %8, label %5, label %9, !dbg !3129, !llvm.loop !3133

9:                                                ; preds = %5
  ret void, !dbg !3135
}

; Function Attrs: noinline nounwind optsize
define dso_local void @log_hal_fatal_internal(i8* nocapture noundef readnone %0, i32 noundef %1, i8* noundef %2, ...) local_unnamed_addr #0 !dbg !3136 {
  %4 = alloca %struct.__va_list, align 4
  %5 = alloca i32, align 4
  call void @llvm.dbg.value(metadata i8* %0, metadata !3140, metadata !DIExpression()), !dbg !3153
  call void @llvm.dbg.value(metadata i32 %1, metadata !3141, metadata !DIExpression()), !dbg !3153
  call void @llvm.dbg.value(metadata i8* %2, metadata !3142, metadata !DIExpression()), !dbg !3153
  %6 = bitcast %struct.__va_list* %4 to i8*, !dbg !3154
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %6) #14, !dbg !3154
  call void @llvm.dbg.declare(metadata %struct.__va_list* %4, metadata !3143, metadata !DIExpression()), !dbg !3155
  %7 = bitcast i32* %5 to i8*, !dbg !3156
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %7) #14, !dbg !3156
  call void @llvm.dbg.value(metadata i32* %5, metadata !3152, metadata !DIExpression(DW_OP_deref)), !dbg !3153
  %8 = call i32 @hal_nvic_save_and_set_interrupt_mask(i32* noundef nonnull %5) #12, !dbg !3157
  call void @llvm.va_start(i8* nonnull %6), !dbg !3158
  %9 = bitcast %struct.__va_list* %4 to i32*, !dbg !3159
  %10 = load i32, i32* %9, align 4, !dbg !3159
  %11 = insertvalue [1 x i32] poison, i32 %10, 0, !dbg !3159
  %12 = call i32 @vprintf(i8* noundef %2, [1 x i32] %11) #12, !dbg !3159
  call void @llvm.va_end(i8* nonnull %6), !dbg !3160
  %13 = load i32, i32* %5, align 4, !dbg !3161
  call void @llvm.dbg.value(metadata i32 %13, metadata !3152, metadata !DIExpression()), !dbg !3153
  %14 = call i32 @hal_nvic_restore_interrupt_mask(i32 noundef %13) #12, !dbg !3162
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %7) #14, !dbg !3163
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %6) #14, !dbg !3163
  ret void, !dbg !3163
}

; Function Attrs: nofree nosync nounwind willreturn
declare void @llvm.va_start(i8*) #9

; Function Attrs: optsize
declare dso_local i32 @vprintf(i8* noundef, [1 x i32]) local_unnamed_addr #2

; Function Attrs: nofree nosync nounwind willreturn
declare void @llvm.va_end(i8*) #9

; Function Attrs: noinline nounwind optsize
define dso_local void @log_hal_error_internal(i8* nocapture noundef readnone %0, i32 noundef %1, i8* noundef %2, ...) local_unnamed_addr #0 !dbg !3164 {
  %4 = alloca %struct.__va_list, align 4
  %5 = alloca i32, align 4
  call void @llvm.dbg.value(metadata i8* %0, metadata !3166, metadata !DIExpression()), !dbg !3171
  call void @llvm.dbg.value(metadata i32 %1, metadata !3167, metadata !DIExpression()), !dbg !3171
  call void @llvm.dbg.value(metadata i8* %2, metadata !3168, metadata !DIExpression()), !dbg !3171
  %6 = bitcast %struct.__va_list* %4 to i8*, !dbg !3172
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %6) #14, !dbg !3172
  call void @llvm.dbg.declare(metadata %struct.__va_list* %4, metadata !3169, metadata !DIExpression()), !dbg !3173
  %7 = bitcast i32* %5 to i8*, !dbg !3174
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %7) #14, !dbg !3174
  call void @llvm.dbg.value(metadata i32* %5, metadata !3170, metadata !DIExpression(DW_OP_deref)), !dbg !3171
  %8 = call i32 @hal_nvic_save_and_set_interrupt_mask(i32* noundef nonnull %5) #12, !dbg !3175
  call void @llvm.va_start(i8* nonnull %6), !dbg !3176
  %9 = bitcast %struct.__va_list* %4 to i32*, !dbg !3177
  %10 = load i32, i32* %9, align 4, !dbg !3177
  %11 = insertvalue [1 x i32] poison, i32 %10, 0, !dbg !3177
  %12 = call i32 @vprintf(i8* noundef %2, [1 x i32] %11) #12, !dbg !3177
  call void @llvm.va_end(i8* nonnull %6), !dbg !3178
  %13 = load i32, i32* %5, align 4, !dbg !3179
  call void @llvm.dbg.value(metadata i32 %13, metadata !3170, metadata !DIExpression()), !dbg !3171
  %14 = call i32 @hal_nvic_restore_interrupt_mask(i32 noundef %13) #12, !dbg !3180
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %7) #14, !dbg !3181
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %6) #14, !dbg !3181
  ret void, !dbg !3181
}

; Function Attrs: noinline nounwind optsize
define dso_local void @log_hal_warning_internal(i8* nocapture noundef readnone %0, i32 noundef %1, i8* noundef %2, ...) local_unnamed_addr #0 !dbg !3182 {
  %4 = alloca %struct.__va_list, align 4
  %5 = alloca i32, align 4
  call void @llvm.dbg.value(metadata i8* %0, metadata !3184, metadata !DIExpression()), !dbg !3189
  call void @llvm.dbg.value(metadata i32 %1, metadata !3185, metadata !DIExpression()), !dbg !3189
  call void @llvm.dbg.value(metadata i8* %2, metadata !3186, metadata !DIExpression()), !dbg !3189
  %6 = bitcast %struct.__va_list* %4 to i8*, !dbg !3190
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %6) #14, !dbg !3190
  call void @llvm.dbg.declare(metadata %struct.__va_list* %4, metadata !3187, metadata !DIExpression()), !dbg !3191
  %7 = bitcast i32* %5 to i8*, !dbg !3192
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %7) #14, !dbg !3192
  call void @llvm.dbg.value(metadata i32* %5, metadata !3188, metadata !DIExpression(DW_OP_deref)), !dbg !3189
  %8 = call i32 @hal_nvic_save_and_set_interrupt_mask(i32* noundef nonnull %5) #12, !dbg !3193
  call void @llvm.va_start(i8* nonnull %6), !dbg !3194
  %9 = bitcast %struct.__va_list* %4 to i32*, !dbg !3195
  %10 = load i32, i32* %9, align 4, !dbg !3195
  %11 = insertvalue [1 x i32] poison, i32 %10, 0, !dbg !3195
  %12 = call i32 @vprintf(i8* noundef %2, [1 x i32] %11) #12, !dbg !3195
  call void @llvm.va_end(i8* nonnull %6), !dbg !3196
  %13 = load i32, i32* %5, align 4, !dbg !3197
  call void @llvm.dbg.value(metadata i32 %13, metadata !3188, metadata !DIExpression()), !dbg !3189
  %14 = call i32 @hal_nvic_restore_interrupt_mask(i32 noundef %13) #12, !dbg !3198
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %7) #14, !dbg !3199
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %6) #14, !dbg !3199
  ret void, !dbg !3199
}

; Function Attrs: noinline nounwind optsize
define dso_local void @log_hal_info_internal(i8* nocapture noundef readnone %0, i32 noundef %1, i8* noundef %2, ...) local_unnamed_addr #0 !dbg !3200 {
  %4 = alloca %struct.__va_list, align 4
  %5 = alloca i32, align 4
  call void @llvm.dbg.value(metadata i8* %0, metadata !3202, metadata !DIExpression()), !dbg !3207
  call void @llvm.dbg.value(metadata i32 %1, metadata !3203, metadata !DIExpression()), !dbg !3207
  call void @llvm.dbg.value(metadata i8* %2, metadata !3204, metadata !DIExpression()), !dbg !3207
  %6 = bitcast %struct.__va_list* %4 to i8*, !dbg !3208
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %6) #14, !dbg !3208
  call void @llvm.dbg.declare(metadata %struct.__va_list* %4, metadata !3205, metadata !DIExpression()), !dbg !3209
  %7 = bitcast i32* %5 to i8*, !dbg !3210
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %7) #14, !dbg !3210
  call void @llvm.dbg.value(metadata i32* %5, metadata !3206, metadata !DIExpression(DW_OP_deref)), !dbg !3207
  %8 = call i32 @hal_nvic_save_and_set_interrupt_mask(i32* noundef nonnull %5) #12, !dbg !3211
  call void @llvm.va_start(i8* nonnull %6), !dbg !3212
  %9 = bitcast %struct.__va_list* %4 to i32*, !dbg !3213
  %10 = load i32, i32* %9, align 4, !dbg !3213
  %11 = insertvalue [1 x i32] poison, i32 %10, 0, !dbg !3213
  %12 = call i32 @vprintf(i8* noundef %2, [1 x i32] %11) #12, !dbg !3213
  call void @llvm.va_end(i8* nonnull %6), !dbg !3214
  %13 = load i32, i32* %5, align 4, !dbg !3215
  call void @llvm.dbg.value(metadata i32 %13, metadata !3206, metadata !DIExpression()), !dbg !3207
  %14 = call i32 @hal_nvic_restore_interrupt_mask(i32 noundef %13) #12, !dbg !3216
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %7) #14, !dbg !3217
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %6) #14, !dbg !3217
  ret void, !dbg !3217
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize readnone willreturn
define dso_local void @log_hal_dump_internal(i8* nocapture noundef %0, i32 noundef %1, i8* nocapture noundef %2, i8* nocapture noundef %3, i32 noundef %4, ...) local_unnamed_addr #5 !dbg !3218 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !3224, metadata !DIExpression()), !dbg !3229
  call void @llvm.dbg.value(metadata i32 %1, metadata !3225, metadata !DIExpression()), !dbg !3229
  call void @llvm.dbg.value(metadata i8* %2, metadata !3226, metadata !DIExpression()), !dbg !3229
  call void @llvm.dbg.value(metadata i8* %3, metadata !3227, metadata !DIExpression()), !dbg !3229
  call void @llvm.dbg.value(metadata i32 %4, metadata !3228, metadata !DIExpression()), !dbg !3229
  ret void, !dbg !3230
}

; Function Attrs: noinline nounwind optsize
define dso_local i32 @hal_cache_init() local_unnamed_addr #0 !dbg !3231 {
  %1 = tail call i32 @save_and_set_interrupt_mask() #12, !dbg !3239
  call void @llvm.dbg.value(metadata i32 %1, metadata !3238, metadata !DIExpression()), !dbg !3240
  %2 = load volatile i8, i8* @g_cache_status, align 1, !dbg !3241, !range !3243
  %3 = icmp eq i8 %2, 0, !dbg !3241
  br i1 %3, label %5, label %4, !dbg !3244

4:                                                ; preds = %0
  tail call void @restore_interrupt_mask(i32 noundef %1) #12, !dbg !3245
  br label %15, !dbg !3247

5:                                                ; preds = %0
  store volatile i8 1, i8* @g_cache_status, align 1, !dbg !3248
  tail call void @restore_interrupt_mask(i32 noundef %1) #12, !dbg !3250
  %6 = tail call i32 @hal_cache_invalidate_all_cache_lines() #13, !dbg !3251
  store volatile i32 0, i32* inttoptr (i32 22216704 to i32*), align 65536, !dbg !3252
  store volatile i32 0, i32* inttoptr (i32 22216748 to i32*), align 4, !dbg !3253
  store i32 0, i32* getelementptr inbounds (%union.CACHE_CON_Type, %union.CACHE_CON_Type* @g_cache_con, i32 0, i32 0, i32 0), align 4, !dbg !3254
  store i32 0, i32* @g_cache_region_en, align 4, !dbg !3255
  call void @llvm.dbg.value(metadata i32 0, metadata !3236, metadata !DIExpression()), !dbg !3240
  br label %7, !dbg !3256

7:                                                ; preds = %5, %7
  %8 = phi i32 [ 0, %5 ], [ %13, %7 ]
  call void @llvm.dbg.value(metadata i32 %8, metadata !3236, metadata !DIExpression()), !dbg !3240
  %9 = getelementptr inbounds [16 x i32], [16 x i32]* inttoptr (i32 22282240 to [16 x i32]*), i32 0, i32 %8, !dbg !3258
  store volatile i32 0, i32* %9, align 4, !dbg !3261
  %10 = getelementptr inbounds [16 x i32], [16 x i32]* inttoptr (i32 22282304 to [16 x i32]*), i32 0, i32 %8, !dbg !3262
  store volatile i32 0, i32* %10, align 4, !dbg !3263
  %11 = getelementptr inbounds [16 x %struct.CACHE_ENTRY_Type], [16 x %struct.CACHE_ENTRY_Type]* @g_cache_entry, i32 0, i32 %8, i32 0, i32 0, i32 0, !dbg !3264
  store i32 0, i32* %11, align 4, !dbg !3265
  %12 = getelementptr inbounds [16 x %struct.CACHE_ENTRY_Type], [16 x %struct.CACHE_ENTRY_Type]* @g_cache_entry, i32 0, i32 %8, i32 1, i32 0, i32 0, !dbg !3266
  store i32 0, i32* %12, align 4, !dbg !3267
  %13 = add nuw nsw i32 %8, 1, !dbg !3268
  call void @llvm.dbg.value(metadata i32 %13, metadata !3236, metadata !DIExpression()), !dbg !3240
  %14 = icmp eq i32 %13, 16, !dbg !3269
  br i1 %14, label %15, label %7, !dbg !3256, !llvm.loop !3270

15:                                               ; preds = %7, %4
  %16 = phi i32 [ -6, %4 ], [ 0, %7 ], !dbg !3240
  ret i32 %16, !dbg !3272
}

; Function Attrs: noinline nounwind optsize
define dso_local i32 @hal_cache_invalidate_all_cache_lines() local_unnamed_addr #0 section ".ramTEXT" !dbg !3273 {
  %1 = tail call i32 @save_and_set_interrupt_mask() #12, !dbg !3276
  call void @llvm.dbg.value(metadata i32 %1, metadata !3275, metadata !DIExpression()), !dbg !3277
  %2 = load volatile i32, i32* inttoptr (i32 22216708 to i32*), align 4, !dbg !3278
  %3 = and i32 %2, -31, !dbg !3278
  store volatile i32 %3, i32* inttoptr (i32 22216708 to i32*), align 4, !dbg !3278
  %4 = load volatile i32, i32* inttoptr (i32 22216708 to i32*), align 4, !dbg !3279
  %5 = or i32 %4, 19, !dbg !3279
  store volatile i32 %5, i32* inttoptr (i32 22216708 to i32*), align 4, !dbg !3279
  %6 = load volatile i32, i32* inttoptr (i32 22216708 to i32*), align 4, !dbg !3280
  %7 = and i32 %6, -31, !dbg !3280
  store volatile i32 %7, i32* inttoptr (i32 22216708 to i32*), align 4, !dbg !3280
  %8 = load volatile i32, i32* inttoptr (i32 22216708 to i32*), align 4, !dbg !3281
  %9 = or i32 %8, 3, !dbg !3281
  store volatile i32 %9, i32* inttoptr (i32 22216708 to i32*), align 4, !dbg !3281
  tail call void asm sideeffect "isb", ""() #14, !dbg !3282, !srcloc !3286
  tail call void @restore_interrupt_mask(i32 noundef %1) #12, !dbg !3287
  ret i32 0, !dbg !3288
}

; Function Attrs: noinline nounwind optsize
define dso_local i32 @hal_cache_deinit() local_unnamed_addr #0 !dbg !3289 {
  %1 = tail call i32 @hal_cache_invalidate_all_cache_lines() #13, !dbg !3292
  store volatile i32 0, i32* inttoptr (i32 22216704 to i32*), align 65536, !dbg !3293
  store volatile i32 0, i32* inttoptr (i32 22216748 to i32*), align 4, !dbg !3294
  store i32 0, i32* getelementptr inbounds (%union.CACHE_CON_Type, %union.CACHE_CON_Type* @g_cache_con, i32 0, i32 0, i32 0), align 4, !dbg !3295
  store i32 0, i32* @g_cache_region_en, align 4, !dbg !3296
  call void @llvm.dbg.value(metadata i32 0, metadata !3291, metadata !DIExpression()), !dbg !3297
  br label %2, !dbg !3298

2:                                                ; preds = %0, %2
  %3 = phi i32 [ 0, %0 ], [ %8, %2 ]
  call void @llvm.dbg.value(metadata i32 %3, metadata !3291, metadata !DIExpression()), !dbg !3297
  %4 = getelementptr inbounds [16 x i32], [16 x i32]* inttoptr (i32 22282240 to [16 x i32]*), i32 0, i32 %3, !dbg !3300
  store volatile i32 0, i32* %4, align 4, !dbg !3303
  %5 = getelementptr inbounds [16 x i32], [16 x i32]* inttoptr (i32 22282304 to [16 x i32]*), i32 0, i32 %3, !dbg !3304
  store volatile i32 0, i32* %5, align 4, !dbg !3305
  %6 = getelementptr inbounds [16 x %struct.CACHE_ENTRY_Type], [16 x %struct.CACHE_ENTRY_Type]* @g_cache_entry, i32 0, i32 %3, i32 0, i32 0, i32 0, !dbg !3306
  store i32 0, i32* %6, align 4, !dbg !3307
  %7 = getelementptr inbounds [16 x %struct.CACHE_ENTRY_Type], [16 x %struct.CACHE_ENTRY_Type]* @g_cache_entry, i32 0, i32 %3, i32 1, i32 0, i32 0, !dbg !3308
  store i32 0, i32* %7, align 4, !dbg !3309
  %8 = add nuw nsw i32 %3, 1, !dbg !3310
  call void @llvm.dbg.value(metadata i32 %8, metadata !3291, metadata !DIExpression()), !dbg !3297
  %9 = icmp eq i32 %8, 16, !dbg !3311
  br i1 %9, label %10, label %2, !dbg !3298, !llvm.loop !3312

10:                                               ; preds = %2
  store volatile i8 0, i8* @g_cache_status, align 1, !dbg !3314
  ret i32 0, !dbg !3315
}

; Function Attrs: nofree noinline norecurse nounwind optsize
define dso_local i32 @hal_cache_enable() local_unnamed_addr #3 !dbg !3316 {
  %1 = load i32, i32* getelementptr inbounds (%union.CACHE_CON_Type, %union.CACHE_CON_Type* @g_cache_con, i32 0, i32 0, i32 0), align 4, !dbg !3317
  %2 = and i32 %1, 768, !dbg !3319
  %3 = icmp eq i32 %2, 0, !dbg !3319
  br i1 %3, label %8, label %4, !dbg !3320

4:                                                ; preds = %0
  %5 = load volatile i32, i32* inttoptr (i32 22216704 to i32*), align 65536, !dbg !3321
  %6 = or i32 %5, 13, !dbg !3321
  store volatile i32 %6, i32* inttoptr (i32 22216704 to i32*), align 65536, !dbg !3321
  %7 = load volatile i32, i32* inttoptr (i32 22216704 to i32*), align 65536, !dbg !3322
  store i32 %7, i32* getelementptr inbounds (%union.CACHE_CON_Type, %union.CACHE_CON_Type* @g_cache_con, i32 0, i32 0, i32 0), align 4, !dbg !3323
  br label %8, !dbg !3324

8:                                                ; preds = %0, %4
  %9 = phi i32 [ 0, %4 ], [ -5, %0 ], !dbg !3325
  ret i32 %9, !dbg !3326
}

; Function Attrs: noinline nounwind optsize
define dso_local i32 @hal_cache_disable() local_unnamed_addr #0 !dbg !3327 {
  %1 = tail call i32 @save_and_set_interrupt_mask() #12, !dbg !3330
  call void @llvm.dbg.value(metadata i32 %1, metadata !3329, metadata !DIExpression()), !dbg !3331
  %2 = load volatile i32, i32* inttoptr (i32 22216704 to i32*), align 65536, !dbg !3332
  %3 = and i32 %2, 1, !dbg !3334
  %4 = icmp eq i32 %3, 0, !dbg !3334
  br i1 %4, label %7, label %5, !dbg !3335

5:                                                ; preds = %0
  %6 = tail call i32 @hal_cache_invalidate_all_cache_lines() #13, !dbg !3336
  br label %7, !dbg !3338

7:                                                ; preds = %5, %0
  %8 = load volatile i32, i32* inttoptr (i32 22216704 to i32*), align 65536, !dbg !3339
  %9 = and i32 %8, -2, !dbg !3339
  store volatile i32 %9, i32* inttoptr (i32 22216704 to i32*), align 65536, !dbg !3339
  %10 = load volatile i32, i32* inttoptr (i32 22216704 to i32*), align 65536, !dbg !3340
  store i32 %10, i32* getelementptr inbounds (%union.CACHE_CON_Type, %union.CACHE_CON_Type* @g_cache_con, i32 0, i32 0, i32 0), align 4, !dbg !3341
  tail call void @restore_interrupt_mask(i32 noundef %1) #12, !dbg !3342
  ret i32 0, !dbg !3343
}

; Function Attrs: nofree noinline norecurse nounwind optsize
define dso_local i32 @hal_cache_region_enable(i32 noundef %0) local_unnamed_addr #3 !dbg !3344 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !3348, metadata !DIExpression()), !dbg !3349
  %2 = icmp ugt i32 %0, 15, !dbg !3350
  br i1 %2, label %13, label %3, !dbg !3352

3:                                                ; preds = %1
  %4 = getelementptr inbounds [16 x i32], [16 x i32]* inttoptr (i32 22282240 to [16 x i32]*), i32 0, i32 %0, !dbg !3353
  %5 = load volatile i32, i32* %4, align 4, !dbg !3353
  %6 = and i32 %5, 256, !dbg !3355
  %7 = icmp eq i32 %6, 0, !dbg !3355
  br i1 %7, label %13, label %8, !dbg !3356

8:                                                ; preds = %3
  %9 = shl nuw nsw i32 1, %0, !dbg !3357
  %10 = load volatile i32, i32* inttoptr (i32 22216748 to i32*), align 4, !dbg !3359
  %11 = or i32 %10, %9, !dbg !3359
  store volatile i32 %11, i32* inttoptr (i32 22216748 to i32*), align 4, !dbg !3359
  %12 = load volatile i32, i32* inttoptr (i32 22216748 to i32*), align 4, !dbg !3360
  store i32 %12, i32* @g_cache_region_en, align 4, !dbg !3361
  br label %13, !dbg !3362

13:                                               ; preds = %3, %1, %8
  %14 = phi i32 [ 0, %8 ], [ -4, %1 ], [ -1, %3 ], !dbg !3349
  ret i32 %14, !dbg !3363
}

; Function Attrs: nofree noinline norecurse nounwind optsize
define dso_local i32 @hal_cache_region_disable(i32 noundef %0) local_unnamed_addr #3 !dbg !3364 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !3366, metadata !DIExpression()), !dbg !3367
  %2 = icmp ugt i32 %0, 15, !dbg !3368
  br i1 %2, label %11, label %3, !dbg !3370

3:                                                ; preds = %1
  %4 = shl nuw nsw i32 1, %0, !dbg !3371
  %5 = xor i32 %4, -1, !dbg !3372
  %6 = load volatile i32, i32* inttoptr (i32 22216748 to i32*), align 4, !dbg !3373
  %7 = and i32 %6, %5, !dbg !3373
  store volatile i32 %7, i32* inttoptr (i32 22216748 to i32*), align 4, !dbg !3373
  %8 = load volatile i32, i32* inttoptr (i32 22216748 to i32*), align 4, !dbg !3374
  store i32 %8, i32* @g_cache_region_en, align 4, !dbg !3375
  %9 = getelementptr inbounds [16 x %struct.CACHE_ENTRY_Type], [16 x %struct.CACHE_ENTRY_Type]* @g_cache_entry, i32 0, i32 %0, i32 0, i32 0, i32 0, !dbg !3376
  store i32 0, i32* %9, align 4, !dbg !3377
  %10 = getelementptr inbounds [16 x %struct.CACHE_ENTRY_Type], [16 x %struct.CACHE_ENTRY_Type]* @g_cache_entry, i32 0, i32 %0, i32 1, i32 0, i32 0, !dbg !3378
  store i32 0, i32* %10, align 4, !dbg !3379
  br label %11, !dbg !3380

11:                                               ; preds = %1, %3
  %12 = phi i32 [ 0, %3 ], [ -4, %1 ], !dbg !3367
  ret i32 %12, !dbg !3381
}

; Function Attrs: nofree noinline norecurse nounwind optsize
define dso_local i32 @hal_cache_set_size(i32 noundef %0) local_unnamed_addr #3 !dbg !3382 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !3387, metadata !DIExpression()), !dbg !3388
  %2 = icmp ugt i32 %0, 3, !dbg !3389
  br i1 %2, label %13, label %3, !dbg !3391

3:                                                ; preds = %1
  %4 = load volatile i32, i32* inttoptr (i32 22216704 to i32*), align 65536, !dbg !3392
  %5 = and i32 %4, -769, !dbg !3392
  store volatile i32 %5, i32* inttoptr (i32 22216704 to i32*), align 65536, !dbg !3392
  %6 = shl nuw nsw i32 %0, 8, !dbg !3393
  %7 = load volatile i32, i32* inttoptr (i32 22216704 to i32*), align 65536, !dbg !3394
  %8 = or i32 %7, %6, !dbg !3394
  store volatile i32 %8, i32* inttoptr (i32 22216704 to i32*), align 65536, !dbg !3394
  %9 = icmp eq i32 %0, 0, !dbg !3395
  br i1 %9, label %10, label %11, !dbg !3397

10:                                               ; preds = %3
  store volatile i32 0, i32* inttoptr (i32 22216704 to i32*), align 65536, !dbg !3398
  br label %11, !dbg !3400

11:                                               ; preds = %10, %3
  %12 = load volatile i32, i32* inttoptr (i32 22216704 to i32*), align 65536, !dbg !3401
  store i32 %12, i32* getelementptr inbounds (%union.CACHE_CON_Type, %union.CACHE_CON_Type* @g_cache_con, i32 0, i32 0, i32 0), align 4, !dbg !3402
  br label %13, !dbg !3403

13:                                               ; preds = %1, %11
  %14 = phi i32 [ 0, %11 ], [ -5, %1 ], !dbg !3388
  ret i32 %14, !dbg !3404
}

; Function Attrs: noinline nounwind optsize
define dso_local i32 @hal_cache_region_config(i32 noundef %0, %struct.hal_cache_region_config_t* noundef readonly %1) local_unnamed_addr #0 !dbg !3405 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !3416, metadata !DIExpression()), !dbg !3418
  call void @llvm.dbg.value(metadata %struct.hal_cache_region_config_t* %1, metadata !3417, metadata !DIExpression()), !dbg !3418
  %3 = icmp ugt i32 %0, 15, !dbg !3419
  br i1 %3, label %30, label %4, !dbg !3421

4:                                                ; preds = %2
  %5 = icmp eq %struct.hal_cache_region_config_t* %1, null, !dbg !3422
  br i1 %5, label %30, label %6, !dbg !3424

6:                                                ; preds = %4
  %7 = getelementptr inbounds %struct.hal_cache_region_config_t, %struct.hal_cache_region_config_t* %1, i32 0, i32 0, !dbg !3425
  %8 = load i32, i32* %7, align 4, !dbg !3425
  %9 = and i32 %8, 4095, !dbg !3427
  %10 = icmp eq i32 %9, 0, !dbg !3427
  br i1 %10, label %12, label %11, !dbg !3428

11:                                               ; preds = %6
  tail call void @__assert_func(i8* noundef getelementptr inbounds ([50 x i8], [50 x i8]* @.str.7, i32 0, i32 0), i32 noundef 251, i8* noundef getelementptr inbounds ([24 x i8], [24 x i8]* @__func__.hal_cache_region_config, i32 0, i32 0), i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1.8, i32 0, i32 0)) #15, !dbg !3429
  unreachable, !dbg !3429

12:                                               ; preds = %6
  %13 = getelementptr inbounds %struct.hal_cache_region_config_t, %struct.hal_cache_region_config_t* %1, i32 0, i32 1, !dbg !3431
  %14 = load i32, i32* %13, align 4, !dbg !3431
  %15 = and i32 %14, 4095, !dbg !3433
  %16 = icmp eq i32 %15, 0, !dbg !3433
  br i1 %16, label %18, label %17, !dbg !3434

17:                                               ; preds = %12
  tail call void @__assert_func(i8* noundef getelementptr inbounds ([50 x i8], [50 x i8]* @.str.7, i32 0, i32 0), i32 noundef 257, i8* noundef getelementptr inbounds ([24 x i8], [24 x i8]* @__func__.hal_cache_region_config, i32 0, i32 0), i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1.8, i32 0, i32 0)) #15, !dbg !3435
  unreachable, !dbg !3435

18:                                               ; preds = %12
  %19 = getelementptr inbounds [16 x i32], [16 x i32]* inttoptr (i32 22282240 to [16 x i32]*), i32 0, i32 %0, !dbg !3437
  store volatile i32 %8, i32* %19, align 4, !dbg !3438
  %20 = load i32, i32* %7, align 4, !dbg !3439
  %21 = load i32, i32* %13, align 4, !dbg !3440
  %22 = add i32 %21, %20, !dbg !3441
  %23 = getelementptr inbounds [16 x i32], [16 x i32]* inttoptr (i32 22282304 to [16 x i32]*), i32 0, i32 %0, !dbg !3442
  store volatile i32 %22, i32* %23, align 4, !dbg !3443
  %24 = load volatile i32, i32* %19, align 4, !dbg !3444
  %25 = or i32 %24, 256, !dbg !3444
  store volatile i32 %25, i32* %19, align 4, !dbg !3444
  %26 = load volatile i32, i32* %19, align 4, !dbg !3445
  %27 = getelementptr inbounds [16 x %struct.CACHE_ENTRY_Type], [16 x %struct.CACHE_ENTRY_Type]* @g_cache_entry, i32 0, i32 %0, i32 0, i32 0, i32 0, !dbg !3446
  store i32 %26, i32* %27, align 4, !dbg !3447
  %28 = load volatile i32, i32* %23, align 4, !dbg !3448
  %29 = getelementptr inbounds [16 x %struct.CACHE_ENTRY_Type], [16 x %struct.CACHE_ENTRY_Type]* @g_cache_entry, i32 0, i32 %0, i32 1, i32 0, i32 0, !dbg !3449
  store i32 %28, i32* %29, align 4, !dbg !3450
  br label %30, !dbg !3451

30:                                               ; preds = %4, %2, %18
  %31 = phi i32 [ 0, %18 ], [ -4, %2 ], [ -7, %4 ], !dbg !3418
  ret i32 %31, !dbg !3452
}

; Function Attrs: noreturn optsize
declare dso_local void @__assert_func(i8* noundef, i32 noundef, i8* noundef, i8* noundef) local_unnamed_addr #10

; Function Attrs: noinline nounwind optsize
define dso_local i32 @hal_cache_invalidate_one_cache_line(i32 noundef %0) local_unnamed_addr #0 section ".ramTEXT" !dbg !3453 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !3457, metadata !DIExpression()), !dbg !3459
  %2 = and i32 %0, 31, !dbg !3460
  %3 = icmp eq i32 %2, 0, !dbg !3460
  br i1 %3, label %4, label %9, !dbg !3462

4:                                                ; preds = %1
  %5 = tail call i32 @save_and_set_interrupt_mask() #12, !dbg !3463
  call void @llvm.dbg.value(metadata i32 %5, metadata !3458, metadata !DIExpression()), !dbg !3459
  %6 = and i32 %0, -32, !dbg !3464
  store volatile i32 %6, i32* inttoptr (i32 22216708 to i32*), align 4, !dbg !3465
  %7 = load volatile i32, i32* inttoptr (i32 22216708 to i32*), align 4, !dbg !3466
  %8 = or i32 %7, 5, !dbg !3466
  store volatile i32 %8, i32* inttoptr (i32 22216708 to i32*), align 4, !dbg !3466
  tail call void asm sideeffect "isb", ""() #14, !dbg !3467, !srcloc !3286
  tail call void @restore_interrupt_mask(i32 noundef %5) #12, !dbg !3469
  br label %9, !dbg !3470

9:                                                ; preds = %1, %4
  %10 = phi i32 [ 0, %4 ], [ -7, %1 ], !dbg !3459
  ret i32 %10, !dbg !3471
}

; Function Attrs: noinline nounwind optsize
define dso_local i32 @hal_cache_invalidate_multiple_cache_lines(i32 noundef %0, i32 noundef %1) local_unnamed_addr #0 section ".ramTEXT" !dbg !3472 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !3476, metadata !DIExpression()), !dbg !3480
  call void @llvm.dbg.value(metadata i32 %1, metadata !3477, metadata !DIExpression()), !dbg !3480
  %3 = add i32 %1, %0, !dbg !3481
  call void @llvm.dbg.value(metadata i32 %3, metadata !3479, metadata !DIExpression()), !dbg !3480
  %4 = or i32 %1, %0, !dbg !3482
  %5 = and i32 %4, 31, !dbg !3482
  %6 = icmp eq i32 %5, 0, !dbg !3482
  br i1 %6, label %7, label %16, !dbg !3482

7:                                                ; preds = %2
  %8 = tail call i32 @save_and_set_interrupt_mask() #12, !dbg !3484
  call void @llvm.dbg.value(metadata i32 %8, metadata !3478, metadata !DIExpression()), !dbg !3480
  call void @llvm.dbg.value(metadata i32 %0, metadata !3476, metadata !DIExpression()), !dbg !3480
  %9 = icmp ugt i32 %3, %0, !dbg !3485
  br i1 %9, label %10, label %15, !dbg !3486

10:                                               ; preds = %7, %10
  %11 = phi i32 [ %13, %10 ], [ %0, %7 ]
  call void @llvm.dbg.value(metadata i32 %11, metadata !3476, metadata !DIExpression()), !dbg !3480
  %12 = tail call i32 @hal_cache_invalidate_one_cache_line(i32 noundef %11) #13, !dbg !3487
  %13 = add i32 %11, 32, !dbg !3489
  call void @llvm.dbg.value(metadata i32 %13, metadata !3476, metadata !DIExpression()), !dbg !3480
  %14 = icmp ult i32 %13, %3, !dbg !3485
  br i1 %14, label %10, label %15, !dbg !3486, !llvm.loop !3490

15:                                               ; preds = %10, %7
  tail call void asm sideeffect "isb", ""() #14, !dbg !3492, !srcloc !3286
  tail call void @restore_interrupt_mask(i32 noundef %8) #12, !dbg !3494
  br label %16, !dbg !3495

16:                                               ; preds = %2, %15
  %17 = phi i32 [ 0, %15 ], [ -7, %2 ], !dbg !3480
  ret i32 %17, !dbg !3496
}

; Function Attrs: noinline nounwind optsize
define dso_local i32 @hal_cache_flush_one_cache_line(i32 noundef %0) local_unnamed_addr #0 section ".ramTEXT" !dbg !3497 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !3499, metadata !DIExpression()), !dbg !3501
  %2 = and i32 %0, 31, !dbg !3502
  %3 = icmp eq i32 %2, 0, !dbg !3502
  br i1 %3, label %4, label %9, !dbg !3504

4:                                                ; preds = %1
  %5 = tail call i32 @save_and_set_interrupt_mask() #12, !dbg !3505
  call void @llvm.dbg.value(metadata i32 %5, metadata !3500, metadata !DIExpression()), !dbg !3501
  %6 = and i32 %0, -32, !dbg !3506
  store volatile i32 %6, i32* inttoptr (i32 22216708 to i32*), align 4, !dbg !3507
  %7 = load volatile i32, i32* inttoptr (i32 22216708 to i32*), align 4, !dbg !3508
  %8 = or i32 %7, 21, !dbg !3508
  store volatile i32 %8, i32* inttoptr (i32 22216708 to i32*), align 4, !dbg !3508
  tail call void asm sideeffect "isb", ""() #14, !dbg !3509, !srcloc !3286
  tail call void @restore_interrupt_mask(i32 noundef %5) #12, !dbg !3511
  br label %9, !dbg !3512

9:                                                ; preds = %1, %4
  %10 = phi i32 [ 0, %4 ], [ -7, %1 ], !dbg !3501
  ret i32 %10, !dbg !3513
}

; Function Attrs: noinline nounwind optsize
define dso_local i32 @hal_cache_flush_multiple_cache_lines(i32 noundef %0, i32 noundef %1) local_unnamed_addr #0 section ".ramTEXT" !dbg !3514 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !3516, metadata !DIExpression()), !dbg !3520
  call void @llvm.dbg.value(metadata i32 %1, metadata !3517, metadata !DIExpression()), !dbg !3520
  %3 = add i32 %1, %0, !dbg !3521
  call void @llvm.dbg.value(metadata i32 %3, metadata !3519, metadata !DIExpression()), !dbg !3520
  %4 = or i32 %1, %0, !dbg !3522
  %5 = and i32 %4, 31, !dbg !3522
  %6 = icmp eq i32 %5, 0, !dbg !3522
  br i1 %6, label %7, label %16, !dbg !3522

7:                                                ; preds = %2
  %8 = tail call i32 @save_and_set_interrupt_mask() #12, !dbg !3524
  call void @llvm.dbg.value(metadata i32 %8, metadata !3518, metadata !DIExpression()), !dbg !3520
  call void @llvm.dbg.value(metadata i32 %0, metadata !3516, metadata !DIExpression()), !dbg !3520
  %9 = icmp ugt i32 %3, %0, !dbg !3525
  br i1 %9, label %10, label %15, !dbg !3526

10:                                               ; preds = %7, %10
  %11 = phi i32 [ %13, %10 ], [ %0, %7 ]
  call void @llvm.dbg.value(metadata i32 %11, metadata !3516, metadata !DIExpression()), !dbg !3520
  %12 = tail call i32 @hal_cache_flush_one_cache_line(i32 noundef %11) #13, !dbg !3527
  %13 = add i32 %11, 32, !dbg !3529
  call void @llvm.dbg.value(metadata i32 %13, metadata !3516, metadata !DIExpression()), !dbg !3520
  %14 = icmp ult i32 %13, %3, !dbg !3525
  br i1 %14, label %10, label %15, !dbg !3526, !llvm.loop !3530

15:                                               ; preds = %10, %7
  tail call void asm sideeffect "isb", ""() #14, !dbg !3532, !srcloc !3286
  tail call void @restore_interrupt_mask(i32 noundef %8) #12, !dbg !3534
  br label %16, !dbg !3535

16:                                               ; preds = %2, %15
  %17 = phi i32 [ 0, %15 ], [ -7, %2 ], !dbg !3520
  ret i32 %17, !dbg !3536
}

; Function Attrs: noinline nounwind optsize
define dso_local i32 @hal_cache_flush_all_cache_lines() local_unnamed_addr #0 section ".ramTEXT" !dbg !3537 {
  %1 = tail call i32 @save_and_set_interrupt_mask() #12, !dbg !3540
  call void @llvm.dbg.value(metadata i32 %1, metadata !3539, metadata !DIExpression()), !dbg !3541
  %2 = load volatile i32, i32* inttoptr (i32 22216708 to i32*), align 4, !dbg !3542
  %3 = and i32 %2, -31, !dbg !3542
  store volatile i32 %3, i32* inttoptr (i32 22216708 to i32*), align 4, !dbg !3542
  %4 = load volatile i32, i32* inttoptr (i32 22216708 to i32*), align 4, !dbg !3543
  %5 = or i32 %4, 19, !dbg !3543
  store volatile i32 %5, i32* inttoptr (i32 22216708 to i32*), align 4, !dbg !3543
  tail call void asm sideeffect "isb", ""() #14, !dbg !3544, !srcloc !3286
  tail call void @restore_interrupt_mask(i32 noundef %1) #12, !dbg !3546
  ret i32 0, !dbg !3547
}

; Function Attrs: nofree noinline norecurse nounwind optsize
define dso_local zeroext i1 @hal_cache_is_cacheable(i32 noundef %0) local_unnamed_addr #3 !dbg !3548 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !3552, metadata !DIExpression()), !dbg !3554
  %2 = load volatile i32, i32* inttoptr (i32 22216704 to i32*), align 65536, !dbg !3555
  %3 = and i32 %2, 8, !dbg !3557
  %4 = icmp eq i32 %3, 0, !dbg !3557
  br i1 %4, label %23, label %5, !dbg !3558

5:                                                ; preds = %1, %20
  %6 = phi i32 [ %21, %20 ], [ 0, %1 ]
  call void @llvm.dbg.value(metadata i32 %6, metadata !3553, metadata !DIExpression()), !dbg !3554
  %7 = load volatile i32, i32* inttoptr (i32 22216748 to i32*), align 4, !dbg !3559
  %8 = shl nuw nsw i32 1, %6, !dbg !3564
  %9 = and i32 %7, %8, !dbg !3565
  %10 = icmp eq i32 %9, 0, !dbg !3565
  br i1 %10, label %20, label %11, !dbg !3566

11:                                               ; preds = %5
  %12 = getelementptr inbounds [16 x i32], [16 x i32]* inttoptr (i32 22282240 to [16 x i32]*), i32 0, i32 %6, !dbg !3567
  %13 = load volatile i32, i32* %12, align 4, !dbg !3567
  %14 = and i32 %13, -257, !dbg !3570
  %15 = icmp ugt i32 %14, %0, !dbg !3571
  br i1 %15, label %20, label %16, !dbg !3572

16:                                               ; preds = %11
  %17 = getelementptr inbounds [16 x i32], [16 x i32]* inttoptr (i32 22282304 to [16 x i32]*), i32 0, i32 %6, !dbg !3573
  %18 = load volatile i32, i32* %17, align 4, !dbg !3573
  %19 = icmp ugt i32 %18, %0, !dbg !3574
  br i1 %19, label %23, label %20, !dbg !3575

20:                                               ; preds = %5, %16, %11
  %21 = add nuw nsw i32 %6, 1, !dbg !3576
  call void @llvm.dbg.value(metadata i32 %21, metadata !3553, metadata !DIExpression()), !dbg !3554
  %22 = icmp eq i32 %21, 16, !dbg !3577
  br i1 %22, label %23, label %5, !dbg !3578, !llvm.loop !3579

23:                                               ; preds = %20, %16, %1
  %24 = phi i1 [ false, %1 ], [ false, %20 ], [ true, %16 ], !dbg !3554
  ret i1 %24, !dbg !3581
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize readnone willreturn
define dso_local i32 @hal_nvic_init() local_unnamed_addr #5 !dbg !3582 {
  ret i32 0, !dbg !3586
}

; Function Attrs: nofree noinline norecurse nounwind optsize
define dso_local i32 @hal_nvic_enable_irq(i32 noundef %0) local_unnamed_addr #3 !dbg !3587 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !3591, metadata !DIExpression()), !dbg !3593
  call void @llvm.dbg.value(metadata i32 -1, metadata !3592, metadata !DIExpression()), !dbg !3593
  %2 = icmp ugt i32 %0, 95, !dbg !3594
  br i1 %2, label %4, label %3, !dbg !3594

3:                                                ; preds = %1
  tail call fastcc void @NVIC_EnableIRQ(i32 noundef %0) #13, !dbg !3596
  call void @llvm.dbg.value(metadata i32 0, metadata !3592, metadata !DIExpression()), !dbg !3593
  br label %4, !dbg !3598

4:                                                ; preds = %1, %3
  %5 = phi i32 [ 0, %3 ], [ -3, %1 ], !dbg !3593
  ret i32 %5, !dbg !3599
}

; Function Attrs: nofree noinline norecurse nounwind optsize
define internal fastcc void @NVIC_EnableIRQ(i32 noundef %0) unnamed_addr #3 !dbg !3600 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !3604, metadata !DIExpression()), !dbg !3605
  %2 = and i32 %0, 31, !dbg !3606
  %3 = shl nuw i32 1, %2, !dbg !3607
  %4 = lshr i32 %0, 5, !dbg !3608
  %5 = getelementptr inbounds [8 x i32], [8 x i32]* inttoptr (i32 -536813312 to [8 x i32]*), i32 0, i32 %4, !dbg !3609
  store volatile i32 %3, i32* %5, align 4, !dbg !3610
  ret void, !dbg !3611
}

; Function Attrs: nofree noinline norecurse nounwind optsize
define dso_local i32 @hal_nvic_disable_irq(i32 noundef %0) local_unnamed_addr #3 !dbg !3612 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !3614, metadata !DIExpression()), !dbg !3616
  call void @llvm.dbg.value(metadata i32 -1, metadata !3615, metadata !DIExpression()), !dbg !3616
  %2 = icmp ugt i32 %0, 95, !dbg !3617
  br i1 %2, label %4, label %3, !dbg !3617

3:                                                ; preds = %1
  tail call fastcc void @NVIC_DisableIRQ(i32 noundef %0) #13, !dbg !3619
  call void @llvm.dbg.value(metadata i32 0, metadata !3615, metadata !DIExpression()), !dbg !3616
  br label %4, !dbg !3621

4:                                                ; preds = %1, %3
  %5 = phi i32 [ 0, %3 ], [ -3, %1 ], !dbg !3616
  ret i32 %5, !dbg !3622
}

; Function Attrs: nofree noinline norecurse nounwind optsize
define internal fastcc void @NVIC_DisableIRQ(i32 noundef %0) unnamed_addr #3 !dbg !3623 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !3625, metadata !DIExpression()), !dbg !3626
  %2 = and i32 %0, 31, !dbg !3627
  %3 = shl nuw i32 1, %2, !dbg !3628
  %4 = lshr i32 %0, 5, !dbg !3629
  %5 = getelementptr inbounds [8 x i32], [8 x i32]* inttoptr (i32 -536813184 to [8 x i32]*), i32 0, i32 %4, !dbg !3630
  store volatile i32 %3, i32* %5, align 4, !dbg !3631
  ret void, !dbg !3632
}

; Function Attrs: mustprogress nofree noinline norecurse nounwind optsize willreturn
define dso_local i32 @hal_nvic_get_pending_irq(i32 noundef %0) local_unnamed_addr #4 !dbg !3633 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !3637, metadata !DIExpression()), !dbg !3639
  call void @llvm.dbg.value(metadata i32 255, metadata !3638, metadata !DIExpression()), !dbg !3639
  %2 = icmp ugt i32 %0, 95, !dbg !3640
  br i1 %2, label %5, label %3, !dbg !3640

3:                                                ; preds = %1
  %4 = tail call fastcc i32 @NVIC_GetPendingIRQ(i32 noundef %0) #13, !dbg !3642
  call void @llvm.dbg.value(metadata i32 %4, metadata !3638, metadata !DIExpression()), !dbg !3639
  br label %5, !dbg !3644

5:                                                ; preds = %1, %3
  %6 = phi i32 [ %4, %3 ], [ 255, %1 ], !dbg !3639
  ret i32 %6, !dbg !3645
}

; Function Attrs: mustprogress nofree noinline norecurse nounwind optsize willreturn
define internal fastcc i32 @NVIC_GetPendingIRQ(i32 noundef %0) unnamed_addr #4 !dbg !3646 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !3650, metadata !DIExpression()), !dbg !3651
  %2 = lshr i32 %0, 5, !dbg !3652
  %3 = getelementptr inbounds [8 x i32], [8 x i32]* inttoptr (i32 -536813056 to [8 x i32]*), i32 0, i32 %2, !dbg !3653
  %4 = load volatile i32, i32* %3, align 4, !dbg !3653
  %5 = and i32 %0, 31, !dbg !3654
  %6 = lshr i32 %4, %5, !dbg !3655
  %7 = and i32 %6, 1, !dbg !3655
  ret i32 %7, !dbg !3656
}

; Function Attrs: nofree noinline norecurse nounwind optsize
define dso_local i32 @hal_nvic_set_pending_irq(i32 noundef %0) local_unnamed_addr #3 !dbg !3657 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !3659, metadata !DIExpression()), !dbg !3661
  call void @llvm.dbg.value(metadata i32 -1, metadata !3660, metadata !DIExpression()), !dbg !3661
  %2 = icmp ugt i32 %0, 95, !dbg !3662
  br i1 %2, label %4, label %3, !dbg !3662

3:                                                ; preds = %1
  tail call fastcc void @NVIC_SetPendingIRQ(i32 noundef %0) #13, !dbg !3664
  call void @llvm.dbg.value(metadata i32 0, metadata !3660, metadata !DIExpression()), !dbg !3661
  br label %4, !dbg !3666

4:                                                ; preds = %1, %3
  %5 = phi i32 [ 0, %3 ], [ -3, %1 ], !dbg !3661
  ret i32 %5, !dbg !3667
}

; Function Attrs: nofree noinline norecurse nounwind optsize
define internal fastcc void @NVIC_SetPendingIRQ(i32 noundef %0) unnamed_addr #3 !dbg !3668 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !3670, metadata !DIExpression()), !dbg !3671
  %2 = and i32 %0, 31, !dbg !3672
  %3 = shl nuw i32 1, %2, !dbg !3673
  %4 = lshr i32 %0, 5, !dbg !3674
  %5 = getelementptr inbounds [8 x i32], [8 x i32]* inttoptr (i32 -536813056 to [8 x i32]*), i32 0, i32 %4, !dbg !3675
  store volatile i32 %3, i32* %5, align 4, !dbg !3676
  ret void, !dbg !3677
}

; Function Attrs: nofree noinline norecurse nounwind optsize
define dso_local i32 @hal_nvic_clear_pending_irq(i32 noundef %0) local_unnamed_addr #3 !dbg !3678 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !3680, metadata !DIExpression()), !dbg !3682
  call void @llvm.dbg.value(metadata i32 -1, metadata !3681, metadata !DIExpression()), !dbg !3682
  %2 = icmp ugt i32 %0, 95, !dbg !3683
  br i1 %2, label %4, label %3, !dbg !3683

3:                                                ; preds = %1
  tail call fastcc void @NVIC_ClearPendingIRQ(i32 noundef %0) #13, !dbg !3685
  call void @llvm.dbg.value(metadata i32 0, metadata !3681, metadata !DIExpression()), !dbg !3682
  br label %4, !dbg !3687

4:                                                ; preds = %1, %3
  %5 = phi i32 [ 0, %3 ], [ -3, %1 ], !dbg !3682
  ret i32 %5, !dbg !3688
}

; Function Attrs: nofree noinline norecurse nounwind optsize
define internal fastcc void @NVIC_ClearPendingIRQ(i32 noundef %0) unnamed_addr #3 !dbg !3689 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !3691, metadata !DIExpression()), !dbg !3692
  %2 = and i32 %0, 31, !dbg !3693
  %3 = shl nuw i32 1, %2, !dbg !3694
  %4 = lshr i32 %0, 5, !dbg !3695
  %5 = getelementptr inbounds [8 x i32], [8 x i32]* inttoptr (i32 -536812928 to [8 x i32]*), i32 0, i32 %4, !dbg !3696
  store volatile i32 %3, i32* %5, align 4, !dbg !3697
  ret void, !dbg !3698
}

; Function Attrs: nofree noinline norecurse nounwind optsize
define dso_local i32 @hal_nvic_set_priority(i32 noundef %0, i32 noundef %1) local_unnamed_addr #3 !dbg !3699 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !3703, metadata !DIExpression()), !dbg !3706
  call void @llvm.dbg.value(metadata i32 %1, metadata !3704, metadata !DIExpression()), !dbg !3706
  call void @llvm.dbg.value(metadata i32 -1, metadata !3705, metadata !DIExpression()), !dbg !3706
  %3 = icmp ugt i32 %0, 95, !dbg !3707
  br i1 %3, label %5, label %4, !dbg !3707

4:                                                ; preds = %2
  tail call fastcc void @NVIC_SetPriority(i32 noundef %0, i32 noundef %1) #13, !dbg !3709
  call void @llvm.dbg.value(metadata i32 0, metadata !3705, metadata !DIExpression()), !dbg !3706
  br label %5, !dbg !3711

5:                                                ; preds = %2, %4
  %6 = phi i32 [ 0, %4 ], [ -3, %2 ], !dbg !3706
  ret i32 %6, !dbg !3712
}

; Function Attrs: nofree noinline norecurse nounwind optsize
define internal fastcc void @NVIC_SetPriority(i32 noundef %0, i32 noundef %1) unnamed_addr #3 !dbg !3713 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !3717, metadata !DIExpression()), !dbg !3719
  call void @llvm.dbg.value(metadata i32 %1, metadata !3718, metadata !DIExpression()), !dbg !3719
  %3 = trunc i32 %1 to i8, !dbg !3720
  %4 = shl i8 %3, 5, !dbg !3720
  %5 = getelementptr inbounds [240 x i8], [240 x i8]* inttoptr (i32 -536812544 to [240 x i8]*), i32 0, i32 %0, !dbg !3723
  store volatile i8 %4, i8* %5, align 1, !dbg !3724
  ret void, !dbg !3725
}

; Function Attrs: mustprogress nofree noinline norecurse nounwind optsize willreturn
define dso_local i32 @hal_nvic_get_priority(i32 noundef %0) local_unnamed_addr #4 !dbg !3726 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !3728, metadata !DIExpression()), !dbg !3730
  call void @llvm.dbg.value(metadata i32 68, metadata !3729, metadata !DIExpression()), !dbg !3730
  %2 = icmp ugt i32 %0, 95, !dbg !3731
  br i1 %2, label %5, label %3, !dbg !3731

3:                                                ; preds = %1
  %4 = tail call fastcc i32 @NVIC_GetPriority(i32 noundef %0) #13, !dbg !3733
  call void @llvm.dbg.value(metadata i32 %4, metadata !3729, metadata !DIExpression()), !dbg !3730
  br label %5, !dbg !3735

5:                                                ; preds = %1, %3
  %6 = phi i32 [ %4, %3 ], [ 68, %1 ], !dbg !3730
  ret i32 %6, !dbg !3736
}

; Function Attrs: mustprogress nofree noinline norecurse nounwind optsize willreturn
define internal fastcc i32 @NVIC_GetPriority(i32 noundef %0) unnamed_addr #4 !dbg !3737 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !3739, metadata !DIExpression()), !dbg !3740
  %2 = getelementptr inbounds [240 x i8], [240 x i8]* inttoptr (i32 -536812544 to [240 x i8]*), i32 0, i32 %0, !dbg !3741
  %3 = load volatile i8, i8* %2, align 1, !dbg !3741
  %4 = lshr i8 %3, 5, !dbg !3744
  %5 = zext i8 %4 to i32, !dbg !3744
  ret i32 %5, !dbg !3745
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize readnone willreturn
define dso_local void @Flash_ReturnReady() local_unnamed_addr #5 !dbg !3746 {
  ret void, !dbg !3747
}

; Function Attrs: noinline nounwind optsize
define dso_local i32 @isrC_main() local_unnamed_addr #0 section ".ramTEXT" !dbg !3748 {
  call void @llvm.dbg.value(metadata i32 -1, metadata !3750, metadata !DIExpression()), !dbg !3752
  %1 = tail call fastcc i32 @get_current_irq() #13, !dbg !3753
  call void @llvm.dbg.value(metadata i32 %1, metadata !3751, metadata !DIExpression()), !dbg !3752
  %2 = icmp ugt i32 %1, 95, !dbg !3754
  br i1 %2, label %12, label %3, !dbg !3754

3:                                                ; preds = %0
  %4 = getelementptr inbounds [96 x %struct.nvic_function_t], [96 x %struct.nvic_function_t]* @nvic_function_table, i32 0, i32 %1, i32 0, !dbg !3756
  %5 = load void (i32)*, void (i32)** %4, align 4, !dbg !3756
  %6 = icmp eq void (i32)* %5, null, !dbg !3758
  br i1 %6, label %7, label %8, !dbg !3759

7:                                                ; preds = %3
  call void @llvm.dbg.value(metadata i32 -4, metadata !3750, metadata !DIExpression()), !dbg !3752
  tail call void (i8*, i32, i8*, ...) @log_hal_error_internal(i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @__FUNCTION__.isrC_main, i32 0, i32 0), i32 noundef 194, i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @.str.13, i32 0, i32 0)) #12, !dbg !3760
  br label %12, !dbg !3762

8:                                                ; preds = %3
  %9 = tail call fastcc i32 @get_pending_irq() #13, !dbg !3763
  %10 = getelementptr inbounds [96 x %struct.nvic_function_t], [96 x %struct.nvic_function_t]* @nvic_function_table, i32 0, i32 %1, i32 1, !dbg !3765
  store i32 %9, i32* %10, align 4, !dbg !3766
  %11 = load void (i32)*, void (i32)** %4, align 4, !dbg !3767
  tail call void %11(i32 noundef %1) #12, !dbg !3768
  call void @llvm.dbg.value(metadata i32 0, metadata !3750, metadata !DIExpression()), !dbg !3752
  br label %12, !dbg !3769

12:                                               ; preds = %0, %8, %7
  %13 = phi i32 [ -4, %7 ], [ 0, %8 ], [ -3, %0 ], !dbg !3752
  ret i32 %13, !dbg !3770
}

; Function Attrs: mustprogress nofree noinline norecurse nounwind optsize willreturn
define internal fastcc i32 @get_current_irq() unnamed_addr #4 !dbg !3771 {
  %1 = load volatile i32, i32* inttoptr (i32 -536810236 to i32*), align 4, !dbg !3774
  %2 = and i32 %1, 511, !dbg !3775
  call void @llvm.dbg.value(metadata i32 %2, metadata !3773, metadata !DIExpression()), !dbg !3776
  %3 = add nsw i32 %2, -16, !dbg !3777
  ret i32 %3, !dbg !3778
}

; Function Attrs: mustprogress nofree noinline norecurse nounwind optsize willreturn
define internal fastcc i32 @get_pending_irq() unnamed_addr #4 !dbg !3779 {
  %1 = load volatile i32, i32* inttoptr (i32 -536810236 to i32*), align 4, !dbg !3780
  %2 = lshr i32 %1, 22, !dbg !3781
  %3 = and i32 %2, 1, !dbg !3781
  ret i32 %3, !dbg !3782
}

; Function Attrs: noinline nounwind optsize
define dso_local i32 @hal_nvic_register_isr_handler(i32 noundef %0, void (i32)* noundef %1) local_unnamed_addr #0 !dbg !3783 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !3788, metadata !DIExpression()), !dbg !3791
  call void @llvm.dbg.value(metadata void (i32)* %1, metadata !3789, metadata !DIExpression()), !dbg !3791
  %3 = icmp ugt i32 %0, 95, !dbg !3792
  %4 = icmp eq void (i32)* %1, null
  %5 = or i1 %3, %4, !dbg !3792
  br i1 %5, label %10, label %6, !dbg !3792

6:                                                ; preds = %2
  %7 = tail call i32 @save_and_set_interrupt_mask() #12, !dbg !3794
  call void @llvm.dbg.value(metadata i32 %7, metadata !3790, metadata !DIExpression()), !dbg !3791
  tail call fastcc void @NVIC_ClearPendingIRQ(i32 noundef %0) #13, !dbg !3795
  %8 = getelementptr inbounds [96 x %struct.nvic_function_t], [96 x %struct.nvic_function_t]* @nvic_function_table, i32 0, i32 %0, i32 0, !dbg !3796
  store void (i32)* %1, void (i32)** %8, align 4, !dbg !3797
  %9 = getelementptr inbounds [96 x %struct.nvic_function_t], [96 x %struct.nvic_function_t]* @nvic_function_table, i32 0, i32 %0, i32 1, !dbg !3798
  store i32 0, i32* %9, align 4, !dbg !3799
  tail call void @restore_interrupt_mask(i32 noundef %7) #12, !dbg !3800
  br label %10, !dbg !3801

10:                                               ; preds = %2, %6
  %11 = phi i32 [ 0, %6 ], [ -2, %2 ], !dbg !3791
  ret i32 %11, !dbg !3802
}

; Function Attrs: noinline nounwind optsize
define dso_local i32 @hal_nvic_save_and_set_interrupt_mask(i32* nocapture noundef writeonly %0) local_unnamed_addr #0 !dbg !3803 {
  call void @llvm.dbg.value(metadata i32* %0, metadata !3807, metadata !DIExpression()), !dbg !3808
  %2 = tail call i32 @save_and_set_interrupt_mask() #12, !dbg !3809
  store i32 %2, i32* %0, align 4, !dbg !3810
  ret i32 0, !dbg !3811
}

; Function Attrs: noinline nounwind optsize
define dso_local i32 @hal_nvic_restore_interrupt_mask(i32 noundef %0) local_unnamed_addr #0 !dbg !3812 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !3816, metadata !DIExpression()), !dbg !3817
  tail call void @restore_interrupt_mask(i32 noundef %0) #12, !dbg !3818
  ret i32 0, !dbg !3819
}

; Function Attrs: noinline nounwind optsize
define dso_local i32 @hal_pinmux_set_function(i32 noundef %0, i8 noundef zeroext %1) local_unnamed_addr #0 !dbg !3820 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !3826, metadata !DIExpression()), !dbg !3829
  call void @llvm.dbg.value(metadata i8 %1, metadata !3827, metadata !DIExpression()), !dbg !3829
  %3 = icmp ugt i32 %0, 60, !dbg !3830
  br i1 %3, label %11, label %4, !dbg !3832

4:                                                ; preds = %2
  %5 = icmp ugt i8 %1, 15, !dbg !3833
  br i1 %5, label %11, label %6, !dbg !3835

6:                                                ; preds = %4
  %7 = zext i8 %1 to i32, !dbg !3836
  %8 = tail call i32 @pinmux_config(i32 noundef %0, i32 noundef %7) #12, !dbg !3837
  call void @llvm.dbg.value(metadata i32 %8, metadata !3828, metadata !DIExpression()), !dbg !3829
  %9 = icmp slt i32 %8, 0, !dbg !3838
  %10 = select i1 %9, i32 -3, i32 0, !dbg !3838
  br label %11, !dbg !3839

11:                                               ; preds = %4, %2, %6
  %12 = phi i32 [ %10, %6 ], [ -2, %2 ], [ -1, %4 ], !dbg !3829
  ret i32 %12, !dbg !3840
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize readnone willreturn
define dso_local i32 @hal_gpio_init(i32 noundef %0) local_unnamed_addr #5 !dbg !3841 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !3846, metadata !DIExpression()), !dbg !3847
  ret i32 0, !dbg !3848
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize readnone willreturn
define dso_local i32 @hal_gpio_deinit(i32 noundef %0) local_unnamed_addr #5 !dbg !3849 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !3851, metadata !DIExpression()), !dbg !3852
  ret i32 0, !dbg !3853
}

; Function Attrs: noinline nounwind optsize
define dso_local i32 @hal_gpio_get_input(i32 noundef %0, i32* noundef writeonly %1) local_unnamed_addr #0 !dbg !3854 {
  %3 = alloca %struct.gpio_status, align 4
  call void @llvm.dbg.value(metadata i32 %0, metadata !3859, metadata !DIExpression()), !dbg !3869
  call void @llvm.dbg.value(metadata i32* %1, metadata !3860, metadata !DIExpression()), !dbg !3869
  %4 = icmp eq i32* %1, null, !dbg !3870
  br i1 %4, label %12, label %5, !dbg !3872

5:                                                ; preds = %2
  %6 = icmp ugt i32 %0, 60, !dbg !3873
  br i1 %6, label %12, label %7, !dbg !3875

7:                                                ; preds = %5
  %8 = bitcast %struct.gpio_status* %3 to i8*, !dbg !3876
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %8) #14, !dbg !3876
  call void @gpio_get_status(%struct.gpio_status* nonnull sret(%struct.gpio_status) align 4 %3, i32 noundef %0) #12, !dbg !3876
  %9 = getelementptr inbounds %struct.gpio_status, %struct.gpio_status* %3, i32 0, i32 2, !dbg !3876
  %10 = load i8, i8* %9, align 1, !dbg !3876
  call void @llvm.dbg.value(metadata i8 %10, metadata !3861, metadata !DIExpression(DW_OP_LLVM_fragment, 40, 8)), !dbg !3869
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %8) #14, !dbg !3876
  %11 = zext i8 %10 to i32, !dbg !3877
  store i32 %11, i32* %1, align 4, !dbg !3878
  br label %12, !dbg !3879

12:                                               ; preds = %5, %2, %7
  %13 = phi i32 [ 0, %7 ], [ -1, %2 ], [ -2, %5 ], !dbg !3869
  ret i32 %13, !dbg !3880
}

; Function Attrs: optsize
declare dso_local void @gpio_get_status(%struct.gpio_status* sret(%struct.gpio_status) align 4, i32 noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize
define dso_local i32 @hal_gpio_set_output(i32 noundef %0, i32 noundef %1) local_unnamed_addr #0 !dbg !3881 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !3885, metadata !DIExpression()), !dbg !3888
  call void @llvm.dbg.value(metadata i32 %1, metadata !3886, metadata !DIExpression()), !dbg !3888
  %3 = icmp ugt i32 %0, 60, !dbg !3889
  br i1 %3, label %9, label %4, !dbg !3891

4:                                                ; preds = %2
  %5 = trunc i32 %1 to i8, !dbg !3892
  %6 = tail call i32 @gpio_write(i32 noundef %0, i8 noundef zeroext %5) #12, !dbg !3893
  call void @llvm.dbg.value(metadata i32 %6, metadata !3887, metadata !DIExpression()), !dbg !3888
  %7 = icmp slt i32 %6, 0, !dbg !3894
  %8 = select i1 %7, i32 -3, i32 0, !dbg !3894
  br label %9, !dbg !3895

9:                                                ; preds = %2, %4
  %10 = phi i32 [ %8, %4 ], [ -2, %2 ], !dbg !3888
  ret i32 %10, !dbg !3896
}

; Function Attrs: optsize
declare dso_local i32 @gpio_write(i32 noundef, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize
define dso_local i32 @hal_gpio_get_output(i32 noundef %0, i32* noundef writeonly %1) local_unnamed_addr #0 !dbg !3897 {
  %3 = alloca %struct.gpio_status, align 4
  call void @llvm.dbg.value(metadata i32 %0, metadata !3899, metadata !DIExpression()), !dbg !3902
  call void @llvm.dbg.value(metadata i32* %1, metadata !3900, metadata !DIExpression()), !dbg !3902
  %4 = icmp ugt i32 %0, 60, !dbg !3903
  br i1 %4, label %12, label %5, !dbg !3905

5:                                                ; preds = %2
  %6 = icmp eq i32* %1, null, !dbg !3906
  br i1 %6, label %12, label %7, !dbg !3908

7:                                                ; preds = %5
  %8 = bitcast %struct.gpio_status* %3 to i8*, !dbg !3909
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %8) #14, !dbg !3909
  call void @gpio_get_status(%struct.gpio_status* nonnull sret(%struct.gpio_status) align 4 %3, i32 noundef %0) #12, !dbg !3909
  %9 = getelementptr inbounds %struct.gpio_status, %struct.gpio_status* %3, i32 0, i32 3, !dbg !3909
  %10 = load i8, i8* %9, align 2, !dbg !3909
  call void @llvm.dbg.value(metadata i8 %10, metadata !3901, metadata !DIExpression(DW_OP_LLVM_fragment, 48, 8)), !dbg !3902
  call void @llvm.dbg.value(metadata i8 undef, metadata !3901, metadata !DIExpression(DW_OP_LLVM_fragment, 56, 8)), !dbg !3902
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %8) #14, !dbg !3909
  %11 = zext i8 %10 to i32, !dbg !3910
  store i32 %11, i32* %1, align 4, !dbg !3911
  br label %12, !dbg !3912

12:                                               ; preds = %5, %2, %7
  %13 = phi i32 [ 0, %7 ], [ -2, %2 ], [ -1, %5 ], !dbg !3902
  ret i32 %13, !dbg !3913
}

; Function Attrs: noinline nounwind optsize
define dso_local i32 @hal_gpio_set_direction(i32 noundef %0, i32 noundef %1) local_unnamed_addr #0 !dbg !3914 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !3919, metadata !DIExpression()), !dbg !3922
  call void @llvm.dbg.value(metadata i32 %1, metadata !3920, metadata !DIExpression()), !dbg !3922
  %3 = icmp ugt i32 %0, 60, !dbg !3923
  br i1 %3, label %8, label %4, !dbg !3925

4:                                                ; preds = %2
  %5 = tail call i32 @gpio_direction(i32 noundef %0, i32 noundef %1) #12, !dbg !3926
  call void @llvm.dbg.value(metadata i32 %5, metadata !3921, metadata !DIExpression()), !dbg !3922
  %6 = icmp slt i32 %5, 0, !dbg !3927
  %7 = select i1 %6, i32 -3, i32 0, !dbg !3927
  br label %8, !dbg !3928

8:                                                ; preds = %2, %4
  %9 = phi i32 [ %7, %4 ], [ -2, %2 ], !dbg !3922
  ret i32 %9, !dbg !3929
}

; Function Attrs: optsize
declare dso_local i32 @gpio_direction(i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize
define dso_local i32 @hal_gpio_get_direction(i32 noundef %0, i32* noundef writeonly %1) local_unnamed_addr #0 !dbg !3930 {
  %3 = alloca %struct.gpio_status, align 4
  call void @llvm.dbg.value(metadata i32 %0, metadata !3935, metadata !DIExpression()), !dbg !3938
  call void @llvm.dbg.value(metadata i32* %1, metadata !3936, metadata !DIExpression()), !dbg !3938
  %4 = icmp ugt i32 %0, 60, !dbg !3939
  br i1 %4, label %13, label %5, !dbg !3941

5:                                                ; preds = %2
  %6 = icmp eq i32* %1, null, !dbg !3942
  br i1 %6, label %13, label %7, !dbg !3944

7:                                                ; preds = %5
  %8 = bitcast %struct.gpio_status* %3 to i8*, !dbg !3945
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %8) #14, !dbg !3945
  call void @gpio_get_status(%struct.gpio_status* nonnull sret(%struct.gpio_status) align 4 %3, i32 noundef %0) #12, !dbg !3945
  call void @llvm.dbg.value(metadata i32 undef, metadata !3937, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32)), !dbg !3938
  %9 = getelementptr inbounds %struct.gpio_status, %struct.gpio_status* %3, i32 0, i32 1, !dbg !3945
  %10 = load i8, i8* %9, align 4, !dbg !3945
  call void @llvm.dbg.value(metadata i8 %10, metadata !3937, metadata !DIExpression(DW_OP_LLVM_fragment, 32, 8)), !dbg !3938
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %8) #14, !dbg !3945
  %11 = icmp ne i8 %10, 0, !dbg !3946
  %12 = zext i1 %11 to i32, !dbg !3946
  store i32 %12, i32* %1, align 4, !dbg !3947
  br label %13, !dbg !3948

13:                                               ; preds = %5, %2, %7
  %14 = phi i32 [ 0, %7 ], [ -2, %2 ], [ -1, %5 ], !dbg !3938
  ret i32 %14, !dbg !3949
}

; Function Attrs: noinline nounwind optsize
define dso_local i32 @hal_gpio_toggle_pin(i32 noundef %0) local_unnamed_addr #0 !dbg !3950 {
  %2 = alloca %struct.gpio_status, align 4
  call void @llvm.dbg.value(metadata i32 %0, metadata !3952, metadata !DIExpression()), !dbg !3954
  %3 = icmp ugt i32 %0, 60, !dbg !3955
  br i1 %3, label %11, label %4, !dbg !3957

4:                                                ; preds = %1
  %5 = bitcast %struct.gpio_status* %2 to i8*, !dbg !3958
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %5) #14, !dbg !3958
  call void @gpio_get_status(%struct.gpio_status* nonnull sret(%struct.gpio_status) align 4 %2, i32 noundef %0) #12, !dbg !3958
  %6 = getelementptr inbounds %struct.gpio_status, %struct.gpio_status* %2, i32 0, i32 3, !dbg !3958
  %7 = load i8, i8* %6, align 2, !dbg !3958
  call void @llvm.dbg.value(metadata i8 %7, metadata !3953, metadata !DIExpression(DW_OP_LLVM_fragment, 48, 8)), !dbg !3954
  call void @llvm.dbg.value(metadata i8 undef, metadata !3953, metadata !DIExpression(DW_OP_LLVM_fragment, 56, 8)), !dbg !3954
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %5) #14, !dbg !3958
  %8 = xor i8 %7, 1, !dbg !3959
  %9 = zext i8 %8 to i32, !dbg !3959
  %10 = call i32 @hal_gpio_set_output(i32 noundef %0, i32 noundef %9) #13, !dbg !3960
  br label %11, !dbg !3961

11:                                               ; preds = %1, %4
  %12 = phi i32 [ %10, %4 ], [ -2, %1 ], !dbg !3954
  ret i32 %12, !dbg !3962
}

; Function Attrs: noinline nounwind optsize
define dso_local i32 @hal_gpio_pull_up(i32 noundef %0) local_unnamed_addr #0 !dbg !3963 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !3965, metadata !DIExpression()), !dbg !3967
  %2 = icmp ugt i32 %0, 60, !dbg !3968
  br i1 %2, label %10, label %3, !dbg !3970

3:                                                ; preds = %1
  %4 = tail call i32 @gpio_PullDisable(i32 noundef %0) #12, !dbg !3971
  call void @llvm.dbg.value(metadata i32 %4, metadata !3966, metadata !DIExpression()), !dbg !3967
  %5 = icmp slt i32 %4, 0, !dbg !3972
  br i1 %5, label %10, label %6, !dbg !3974

6:                                                ; preds = %3
  %7 = tail call i32 @gpio_PullUp(i32 noundef %0) #12, !dbg !3975
  call void @llvm.dbg.value(metadata i32 %7, metadata !3966, metadata !DIExpression()), !dbg !3967
  %8 = icmp slt i32 %7, 0, !dbg !3976
  %9 = select i1 %8, i32 -3, i32 0, !dbg !3976
  br label %10, !dbg !3977

10:                                               ; preds = %3, %1, %6
  %11 = phi i32 [ %9, %6 ], [ -2, %1 ], [ -3, %3 ], !dbg !3967
  ret i32 %11, !dbg !3978
}

; Function Attrs: optsize
declare dso_local i32 @gpio_PullDisable(i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare dso_local i32 @gpio_PullUp(i32 noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize
define dso_local i32 @hal_gpio_pull_down(i32 noundef %0) local_unnamed_addr #0 !dbg !3979 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !3981, metadata !DIExpression()), !dbg !3983
  %2 = icmp ugt i32 %0, 60, !dbg !3984
  br i1 %2, label %10, label %3, !dbg !3986

3:                                                ; preds = %1
  %4 = tail call i32 @gpio_PullDisable(i32 noundef %0) #12, !dbg !3987
  call void @llvm.dbg.value(metadata i32 %4, metadata !3982, metadata !DIExpression()), !dbg !3983
  %5 = icmp slt i32 %4, 0, !dbg !3988
  br i1 %5, label %10, label %6, !dbg !3990

6:                                                ; preds = %3
  %7 = tail call i32 @gpio_PullDown(i32 noundef %0) #12, !dbg !3991
  call void @llvm.dbg.value(metadata i32 %7, metadata !3982, metadata !DIExpression()), !dbg !3983
  %8 = icmp slt i32 %7, 0, !dbg !3992
  %9 = select i1 %8, i32 -3, i32 0, !dbg !3992
  br label %10, !dbg !3993

10:                                               ; preds = %3, %1, %6
  %11 = phi i32 [ %9, %6 ], [ -2, %1 ], [ -3, %3 ], !dbg !3983
  ret i32 %11, !dbg !3994
}

; Function Attrs: optsize
declare dso_local i32 @gpio_PullDown(i32 noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize
define dso_local i32 @hal_gpio_disable_pull(i32 noundef %0) local_unnamed_addr #0 !dbg !3995 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !3997, metadata !DIExpression()), !dbg !3999
  %2 = icmp ugt i32 %0, 60, !dbg !4000
  br i1 %2, label %7, label %3, !dbg !4002

3:                                                ; preds = %1
  %4 = tail call i32 @gpio_PullDisable(i32 noundef %0) #12, !dbg !4003
  call void @llvm.dbg.value(metadata i32 %4, metadata !3998, metadata !DIExpression()), !dbg !3999
  %5 = icmp slt i32 %4, 0, !dbg !4004
  %6 = select i1 %5, i32 -3, i32 0, !dbg !4004
  br label %7, !dbg !4005

7:                                                ; preds = %1, %3
  %8 = phi i32 [ %6, %3 ], [ -2, %1 ], !dbg !3999
  ret i32 %8, !dbg !4006
}

; Function Attrs: noinline nounwind optsize
define dso_local i32 @hal_gpio_set_driving_current(i32 noundef %0, i32 noundef %1) local_unnamed_addr #0 !dbg !4007 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !4011, metadata !DIExpression()), !dbg !4014
  call void @llvm.dbg.value(metadata i32 %1, metadata !4012, metadata !DIExpression()), !dbg !4014
  %3 = icmp ugt i32 %0, 60, !dbg !4015
  br i1 %3, label %9, label %4, !dbg !4017

4:                                                ; preds = %2
  %5 = trunc i32 %1 to i8, !dbg !4018
  %6 = tail call i32 @gpio_SetDriving(i32 noundef %0, i8 noundef zeroext %5) #12, !dbg !4019
  call void @llvm.dbg.value(metadata i32 %6, metadata !4013, metadata !DIExpression()), !dbg !4014
  %7 = icmp slt i32 %6, 0, !dbg !4020
  %8 = select i1 %7, i32 -3, i32 0, !dbg !4020
  br label %9, !dbg !4021

9:                                                ; preds = %2, %4
  %10 = phi i32 [ %8, %4 ], [ -2, %2 ], !dbg !4014
  ret i32 %10, !dbg !4022
}

; Function Attrs: optsize
declare dso_local i32 @gpio_SetDriving(i32 noundef, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize
define dso_local i32 @hal_gpio_get_driving_current(i32 noundef %0, i32* nocapture noundef writeonly %1) local_unnamed_addr #0 !dbg !4023 {
  %3 = alloca i8, align 1
  call void @llvm.dbg.value(metadata i32 %0, metadata !4028, metadata !DIExpression()), !dbg !4032
  call void @llvm.dbg.value(metadata i32* %1, metadata !4029, metadata !DIExpression()), !dbg !4032
  call void @llvm.lifetime.start.p0i8(i64 1, i8* nonnull %3) #14, !dbg !4033
  %4 = icmp ugt i32 %0, 60, !dbg !4034
  br i1 %4, label %11, label %5, !dbg !4036

5:                                                ; preds = %2
  call void @llvm.dbg.value(metadata i8* %3, metadata !4031, metadata !DIExpression(DW_OP_deref)), !dbg !4032
  %6 = call i32 @gpio_GetDriving(i32 noundef %0, i8* noundef nonnull %3) #12, !dbg !4037
  call void @llvm.dbg.value(metadata i32 %6, metadata !4030, metadata !DIExpression()), !dbg !4032
  %7 = load i8, i8* %3, align 1, !dbg !4038
  call void @llvm.dbg.value(metadata i8 %7, metadata !4031, metadata !DIExpression()), !dbg !4032
  %8 = zext i8 %7 to i32, !dbg !4039
  store i32 %8, i32* %1, align 4, !dbg !4040
  %9 = icmp slt i32 %6, 0, !dbg !4041
  %10 = select i1 %9, i32 -3, i32 0, !dbg !4041
  br label %11, !dbg !4042

11:                                               ; preds = %2, %5
  %12 = phi i32 [ %10, %5 ], [ -2, %2 ], !dbg !4032
  call void @llvm.lifetime.end.p0i8(i64 1, i8* nonnull %3) #14, !dbg !4043
  ret i32 %12, !dbg !4043
}

; Function Attrs: optsize
declare dso_local i32 @gpio_GetDriving(i32 noundef, i8* noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize
define dso_local i32 @hal_uart_init(i32 noundef %0, %struct.hal_uart_config_t* noundef %1) local_unnamed_addr #0 !dbg !4044 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !4050, metadata !DIExpression()), !dbg !4052
  call void @llvm.dbg.value(metadata %struct.hal_uart_config_t* %1, metadata !4051, metadata !DIExpression()), !dbg !4052
  %3 = tail call fastcc zeroext i1 @hal_uart_is_config_valid(i32 noundef %0, %struct.hal_uart_config_t* noundef %1) #13, !dbg !4053
  br i1 %3, label %4, label %18, !dbg !4055

4:                                                ; preds = %2
  %5 = getelementptr inbounds [2 x %struct.uart_context_t], [2 x %struct.uart_context_t]* @g_uart_context_table, i32 0, i32 %0, i32 0, !dbg !4056
  %6 = load i8, i8* %5, align 4, !dbg !4056, !range !3243
  %7 = icmp eq i8 %6, 0, !dbg !4056
  br i1 %7, label %8, label %18, !dbg !4058

8:                                                ; preds = %4
  %9 = tail call i8* @memset(i8* noundef nonnull %5, i32 noundef 0, i32 noundef 64) #12, !dbg !4059
  %10 = getelementptr inbounds [2 x %struct.uart_context_t], [2 x %struct.uart_context_t]* @g_uart_context_table, i32 0, i32 %0, i32 1, !dbg !4060
  %11 = bitcast %struct.hal_uart_config_t* %10 to i8*, !dbg !4061
  %12 = bitcast %struct.hal_uart_config_t* %1 to i8*, !dbg !4062
  %13 = tail call i8* @memcpy(i8* noundef nonnull %11, i8* noundef %12, i32 noundef 16) #12, !dbg !4063
  store i8 1, i8* %5, align 4, !dbg !4064
  %14 = tail call fastcc i32 @hal_uart_translate_port(i32 noundef %0) #13, !dbg !4065, !range !4066
  tail call void @uart_reset_default_value(i32 noundef %14) #12, !dbg !4067
  tail call void @halUART_HWInit(i32 noundef %14) #12, !dbg !4068
  %15 = tail call i32 @hal_uart_set_format(i32 noundef %0, %struct.hal_uart_config_t* noundef %1) #13, !dbg !4069
  %16 = icmp eq i32 %15, 0, !dbg !4071
  %17 = select i1 %16, i32 0, i32 -4, !dbg !4052
  br label %18, !dbg !4052

18:                                               ; preds = %8, %4, %2
  %19 = phi i32 [ -4, %2 ], [ -3, %4 ], [ %17, %8 ], !dbg !4052
  ret i32 %19, !dbg !4072
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize readonly willreturn
define internal fastcc zeroext i1 @hal_uart_is_config_valid(i32 noundef %0, %struct.hal_uart_config_t* noundef readonly %1) unnamed_addr #6 !dbg !4073 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !4079, metadata !DIExpression()), !dbg !4081
  call void @llvm.dbg.value(metadata %struct.hal_uart_config_t* %1, metadata !4080, metadata !DIExpression()), !dbg !4081
  %3 = tail call fastcc zeroext i1 @hal_uart_is_port_valid(i32 noundef %0) #13, !dbg !4082
  %4 = icmp ne %struct.hal_uart_config_t* %1, null
  %5 = and i1 %4, %3, !dbg !4084
  br i1 %5, label %6, label %22, !dbg !4084

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.hal_uart_config_t, %struct.hal_uart_config_t* %1, i32 0, i32 0, !dbg !4085
  %8 = load i32, i32* %7, align 4, !dbg !4085
  %9 = icmp ugt i32 %8, 12, !dbg !4087
  br i1 %9, label %22, label %10, !dbg !4088

10:                                               ; preds = %6
  %11 = getelementptr inbounds %struct.hal_uart_config_t, %struct.hal_uart_config_t* %1, i32 0, i32 3, !dbg !4089
  %12 = load i32, i32* %11, align 4, !dbg !4089
  %13 = icmp ugt i32 %12, 2, !dbg !4090
  br i1 %13, label %22, label %14, !dbg !4091

14:                                               ; preds = %10
  %15 = getelementptr inbounds %struct.hal_uart_config_t, %struct.hal_uart_config_t* %1, i32 0, i32 2, !dbg !4092
  %16 = load i32, i32* %15, align 4, !dbg !4092
  %17 = icmp ugt i32 %16, 1, !dbg !4093
  br i1 %17, label %22, label %18, !dbg !4094

18:                                               ; preds = %14
  %19 = getelementptr inbounds %struct.hal_uart_config_t, %struct.hal_uart_config_t* %1, i32 0, i32 1, !dbg !4095
  %20 = load i32, i32* %19, align 4, !dbg !4095
  %21 = icmp ult i32 %20, 4, !dbg !4096
  br label %22, !dbg !4097

22:                                               ; preds = %18, %6, %10, %14, %2
  %23 = phi i1 [ false, %2 ], [ false, %14 ], [ false, %10 ], [ false, %6 ], [ %21, %18 ], !dbg !4081
  ret i1 %23, !dbg !4098
}

; Function Attrs: optsize
declare dso_local i8* @memset(i8* noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare dso_local i8* @memcpy(i8* noundef, i8* noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize readnone willreturn
define internal fastcc i32 @hal_uart_translate_port(i32 noundef %0) unnamed_addr #5 !dbg !4099 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !4103, metadata !DIExpression()), !dbg !4104
  %2 = icmp ne i32 %0, 0, !dbg !4105
  %3 = zext i1 %2 to i32, !dbg !4106
  ret i32 %3, !dbg !4107
}

; Function Attrs: noinline nounwind optsize
define dso_local i32 @hal_uart_set_format(i32 noundef %0, %struct.hal_uart_config_t* noundef %1) local_unnamed_addr #0 !dbg !4108 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !4112, metadata !DIExpression()), !dbg !4114
  call void @llvm.dbg.value(metadata %struct.hal_uart_config_t* %1, metadata !4113, metadata !DIExpression()), !dbg !4114
  %3 = tail call fastcc zeroext i1 @hal_uart_is_config_valid(i32 noundef %0, %struct.hal_uart_config_t* noundef %1) #13, !dbg !4115
  br i1 %3, label %4, label %22, !dbg !4117

4:                                                ; preds = %2
  %5 = getelementptr inbounds [2 x %struct.uart_context_t], [2 x %struct.uart_context_t]* @g_uart_context_table, i32 0, i32 %0, i32 1, !dbg !4118
  %6 = bitcast %struct.hal_uart_config_t* %5 to i8*, !dbg !4119
  %7 = bitcast %struct.hal_uart_config_t* %1 to i8*, !dbg !4120
  %8 = tail call i8* @memcpy(i8* noundef nonnull %6, i8* noundef %7, i32 noundef 16) #12, !dbg !4121
  %9 = tail call fastcc i32 @hal_uart_translate_port(i32 noundef %0) #13, !dbg !4122
  %10 = getelementptr inbounds %struct.hal_uart_config_t, %struct.hal_uart_config_t* %1, i32 0, i32 0, !dbg !4123
  %11 = load i32, i32* %10, align 4, !dbg !4123
  %12 = tail call fastcc i32 @hal_uart_translate_baudrate(i32 noundef %11) #13, !dbg !4124
  %13 = getelementptr inbounds %struct.hal_uart_config_t, %struct.hal_uart_config_t* %1, i32 0, i32 1, !dbg !4125
  %14 = load i32, i32* %13, align 4, !dbg !4125
  %15 = tail call fastcc zeroext i16 @hal_uart_translate_word_length(i32 noundef %14) #13, !dbg !4126
  %16 = getelementptr inbounds %struct.hal_uart_config_t, %struct.hal_uart_config_t* %1, i32 0, i32 3, !dbg !4127
  %17 = load i32, i32* %16, align 4, !dbg !4127
  %18 = tail call fastcc zeroext i16 @hal_uart_translate_parity(i32 noundef %17) #13, !dbg !4128
  %19 = getelementptr inbounds %struct.hal_uart_config_t, %struct.hal_uart_config_t* %1, i32 0, i32 2, !dbg !4129
  %20 = load i32, i32* %19, align 4, !dbg !4129
  %21 = tail call fastcc zeroext i16 @hal_uart_translate_stopbit(i32 noundef %20) #13, !dbg !4130
  tail call void @halUART_SetFormat(i32 noundef %9, i32 noundef %12, i16 noundef zeroext %15, i16 noundef zeroext %18, i16 noundef zeroext %21) #12, !dbg !4131
  br label %22, !dbg !4132

22:                                               ; preds = %2, %4
  %23 = phi i32 [ 0, %4 ], [ -4, %2 ], !dbg !4114
  ret i32 %23, !dbg !4133
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize readnone willreturn
define internal fastcc i32 @hal_uart_translate_baudrate(i32 noundef %0) unnamed_addr #5 !dbg !4134 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !4138, metadata !DIExpression()), !dbg !4143
  call void @llvm.dbg.declare(metadata [13 x i32]* @__const.hal_uart_translate_baudrate.baudrate_tbl, metadata !4139, metadata !DIExpression()), !dbg !4144
  %2 = getelementptr inbounds [13 x i32], [13 x i32]* @__const.hal_uart_translate_baudrate.baudrate_tbl, i32 0, i32 %0, !dbg !4145
  %3 = load i32, i32* %2, align 4, !dbg !4145
  ret i32 %3, !dbg !4146
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize readnone willreturn
define internal fastcc zeroext i16 @hal_uart_translate_word_length(i32 noundef %0) unnamed_addr #5 !dbg !4147 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !4151, metadata !DIExpression()), !dbg !4154
  call void @llvm.dbg.declare(metadata [4 x i16]* @__const.hal_uart_translate_word_length.databit_tbl, metadata !4152, metadata !DIExpression()), !dbg !4155
  %2 = getelementptr inbounds [4 x i16], [4 x i16]* @__const.hal_uart_translate_word_length.databit_tbl, i32 0, i32 %0, !dbg !4156
  %3 = load i16, i16* %2, align 2, !dbg !4156
  ret i16 %3, !dbg !4157
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize readnone willreturn
define internal fastcc zeroext i16 @hal_uart_translate_parity(i32 noundef %0) unnamed_addr #5 !dbg !4158 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !4162, metadata !DIExpression()), !dbg !4165
  call void @llvm.dbg.declare(metadata [5 x i16]* @__const.hal_uart_translate_parity.parity_tbl, metadata !4163, metadata !DIExpression()), !dbg !4166
  %2 = getelementptr inbounds [5 x i16], [5 x i16]* @__const.hal_uart_translate_parity.parity_tbl, i32 0, i32 %0, !dbg !4167
  %3 = load i16, i16* %2, align 2, !dbg !4167
  ret i16 %3, !dbg !4168
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize readnone willreturn
define internal fastcc zeroext i16 @hal_uart_translate_stopbit(i32 noundef %0) unnamed_addr #5 !dbg !4169 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !4173, metadata !DIExpression()), !dbg !4176
  call void @llvm.dbg.declare(metadata [3 x i16]* @__const.hal_uart_translate_stopbit.stopbit_tbl, metadata !4174, metadata !DIExpression()), !dbg !4177
  %2 = getelementptr inbounds [3 x i16], [3 x i16]* @__const.hal_uart_translate_stopbit.stopbit_tbl, i32 0, i32 %0, !dbg !4178
  %3 = load i16, i16* %2, align 2, !dbg !4178
  ret i16 %3, !dbg !4179
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize readnone willreturn
define internal fastcc zeroext i1 @hal_uart_is_port_valid(i32 noundef %0) unnamed_addr #5 !dbg !4180 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !4184, metadata !DIExpression()), !dbg !4185
  %2 = icmp ult i32 %0, 2, !dbg !4186
  ret i1 %2, !dbg !4187
}

; Function Attrs: noinline nounwind optsize
define dso_local i32 @hal_uart_deinit(i32 noundef %0) local_unnamed_addr #0 !dbg !4188 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !4192, metadata !DIExpression()), !dbg !4193
  %2 = tail call fastcc zeroext i1 @hal_uart_is_port_valid(i32 noundef %0) #13, !dbg !4194
  br i1 %2, label %3, label %10, !dbg !4196

3:                                                ; preds = %1
  %4 = getelementptr inbounds [2 x %struct.uart_context_t], [2 x %struct.uart_context_t]* @g_uart_context_table, i32 0, i32 %0, i32 0, !dbg !4197
  %5 = load i8, i8* %4, align 4, !dbg !4197, !range !3243
  %6 = icmp eq i8 %5, 0, !dbg !4199
  br i1 %6, label %10, label %7, !dbg !4200

7:                                                ; preds = %3
  %8 = tail call i8* @memset(i8* noundef nonnull %4, i32 noundef 0, i32 noundef 64) #12, !dbg !4201
  %9 = tail call fastcc i32 @hal_uart_translate_port(i32 noundef %0) #13, !dbg !4202, !range !4066
  tail call void @uart_query_empty(i32 noundef %9) #12, !dbg !4203
  tail call void @uart_reset_default_value(i32 noundef %9) #12, !dbg !4204
  br label %10, !dbg !4205

10:                                               ; preds = %3, %1, %7
  %11 = phi i32 [ 0, %7 ], [ -4, %1 ], [ -2, %3 ], !dbg !4193
  ret i32 %11, !dbg !4206
}

; Function Attrs: noinline nounwind optsize
define dso_local void @hal_uart_put_char(i32 noundef %0, i8 noundef zeroext %1) local_unnamed_addr #0 !dbg !4207 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !4211, metadata !DIExpression()), !dbg !4214
  call void @llvm.dbg.value(metadata i8 %1, metadata !4212, metadata !DIExpression()), !dbg !4214
  %3 = icmp eq i32 %0, 0, !dbg !4215
  %4 = icmp eq i32 %0, 1, !dbg !4215
  %5 = select i1 %4, i32 1, i32 2, !dbg !4215
  %6 = select i1 %3, i32 0, i32 %5, !dbg !4215
  call void @llvm.dbg.value(metadata i32 %6, metadata !4213, metadata !DIExpression()), !dbg !4214
  %7 = icmp eq i32 %6, 2, !dbg !4216
  br i1 %7, label %9, label %8, !dbg !4218

8:                                                ; preds = %2
  tail call void @uart_output_char(i32 noundef %6, i8 noundef zeroext %1) #12, !dbg !4219
  br label %9, !dbg !4221

9:                                                ; preds = %2, %8
  ret void, !dbg !4222
}

; Function Attrs: noinline nounwind optsize
define dso_local i32 @hal_uart_send_polling(i32 noundef %0, i8* noundef readonly %1, i32 noundef %2) local_unnamed_addr #0 !dbg !4223 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !4227, metadata !DIExpression()), !dbg !4232
  call void @llvm.dbg.value(metadata i8* %1, metadata !4228, metadata !DIExpression()), !dbg !4232
  call void @llvm.dbg.value(metadata i32 %2, metadata !4229, metadata !DIExpression()), !dbg !4232
  %4 = icmp eq i32 %0, 0, !dbg !4233
  %5 = icmp eq i32 %0, 1, !dbg !4233
  %6 = select i1 %5, i32 1, i32 2, !dbg !4233
  %7 = select i1 %4, i32 0, i32 %6, !dbg !4233
  call void @llvm.dbg.value(metadata i32 %7, metadata !4230, metadata !DIExpression()), !dbg !4232
  %8 = icmp eq i8* %1, null, !dbg !4234
  %9 = icmp ugt i32 %7, 1
  %10 = or i1 %8, %9, !dbg !4236
  %11 = icmp eq i32 %2, 0
  %12 = or i1 %10, %11, !dbg !4236
  call void @llvm.dbg.value(metadata i32 0, metadata !4231, metadata !DIExpression()), !dbg !4232
  br i1 %12, label %19, label %13, !dbg !4236

13:                                               ; preds = %3, %13
  %14 = phi i32 [ %17, %13 ], [ 0, %3 ]
  call void @llvm.dbg.value(metadata i32 %14, metadata !4231, metadata !DIExpression()), !dbg !4232
  %15 = getelementptr inbounds i8, i8* %1, i32 %14, !dbg !4237
  %16 = load i8, i8* %15, align 1, !dbg !4237
  tail call void @uart_output_char(i32 noundef %7, i8 noundef zeroext %16) #12, !dbg !4243
  %17 = add nuw i32 %14, 1, !dbg !4244
  call void @llvm.dbg.value(metadata i32 %17, metadata !4231, metadata !DIExpression()), !dbg !4232
  %18 = icmp eq i32 %17, %2, !dbg !4245
  br i1 %18, label %19, label %13, !dbg !4246, !llvm.loop !4247

19:                                               ; preds = %13, %3
  %20 = phi i32 [ 0, %3 ], [ %2, %13 ], !dbg !4232
  ret i32 %20, !dbg !4249
}

; Function Attrs: noinline nounwind optsize
define dso_local i32 @hal_uart_send_dma(i32 noundef %0, i8* noundef %1, i32 noundef %2) local_unnamed_addr #0 !dbg !4250 {
  %4 = alloca i32, align 4
  call void @llvm.dbg.value(metadata i32 %0, metadata !4252, metadata !DIExpression()), !dbg !4259
  call void @llvm.dbg.value(metadata i8* %1, metadata !4253, metadata !DIExpression()), !dbg !4259
  call void @llvm.dbg.value(metadata i32 %2, metadata !4254, metadata !DIExpression()), !dbg !4259
  %5 = bitcast i32* %4 to i8*, !dbg !4260
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %5) #14, !dbg !4260
  %6 = tail call fastcc zeroext i1 @hal_uart_is_port_valid(i32 noundef %0) #13, !dbg !4261
  br i1 %6, label %7, label %24, !dbg !4263

7:                                                ; preds = %3
  %8 = icmp eq i8* %1, null, !dbg !4264
  %9 = icmp eq i32 %2, 0
  %10 = or i1 %8, %9, !dbg !4266
  br i1 %10, label %24, label %11, !dbg !4266

11:                                               ; preds = %7
  %12 = getelementptr inbounds [2 x %struct.uart_context_t], [2 x %struct.uart_context_t]* @g_uart_context_table, i32 0, i32 %0, i32 4, !dbg !4267
  %13 = load i8, i8* %12, align 4, !dbg !4267, !range !3243
  %14 = icmp eq i8 %13, 0, !dbg !4267
  br i1 %14, label %24, label %15, !dbg !4269

15:                                               ; preds = %11
  %16 = tail call fastcc i32 @hal_uart_translate_port(i32 noundef %0) #13, !dbg !4270, !range !4066
  call void @llvm.dbg.value(metadata i32* %4, metadata !4255, metadata !DIExpression(DW_OP_deref)), !dbg !4259
  call void @halUART_Get_VFIFO_Length(i32 noundef %16, i32 noundef 0, i32* noundef nonnull %4) #12, !dbg !4271
  %17 = load i32, i32* %4, align 4, !dbg !4272
  call void @llvm.dbg.value(metadata i32 %17, metadata !4255, metadata !DIExpression()), !dbg !4259
  %18 = icmp ult i32 %17, %2, !dbg !4274
  %19 = select i1 %18, i32 %17, i32 %2
  call void @llvm.dbg.value(metadata i32 %19, metadata !4256, metadata !DIExpression()), !dbg !4259
  call void @halUART_Write_VFIFO_Data(i32 noundef %16, i8* noundef nonnull %1, i32 noundef %19) #12, !dbg !4275
  %20 = load i32, i32* %4, align 4, !dbg !4276
  call void @llvm.dbg.value(metadata i32 %20, metadata !4255, metadata !DIExpression()), !dbg !4259
  %21 = icmp eq i32 %19, %20, !dbg !4278
  br i1 %21, label %22, label %24, !dbg !4279

22:                                               ; preds = %15
  %23 = call fastcc i32 @uart_channel_to_dma_channel(i32 noundef %16, i1 noundef zeroext false) #13, !dbg !4280, !range !4282
  call void @llvm.dbg.value(metadata i32 %23, metadata !4257, metadata !DIExpression()), !dbg !4259
  call void @DMA_Vfifo_enable_interrupt(i32 noundef %23) #12, !dbg !4283
  br label %24, !dbg !4284

24:                                               ; preds = %15, %22, %11, %7, %3
  %25 = phi i32 [ 0, %3 ], [ 0, %7 ], [ 0, %11 ], [ %19, %22 ], [ %19, %15 ], !dbg !4259
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %5) #14, !dbg !4285
  ret i32 %25, !dbg !4285
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize readnone willreturn
define internal fastcc i32 @uart_channel_to_dma_channel(i32 noundef %0, i1 noundef zeroext %1) unnamed_addr #5 !dbg !4286 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !4290, metadata !DIExpression()), !dbg !4293
  call void @llvm.dbg.value(metadata i1 %1, metadata !4291, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !4293
  %3 = icmp eq i32 %0, 0, !dbg !4294
  %4 = select i1 %1, i32 15, i32 14, !dbg !4296
  %5 = select i1 %1, i32 17, i32 16, !dbg !4296
  %6 = select i1 %3, i32 %4, i32 %5, !dbg !4296
  call void @llvm.dbg.value(metadata i32 %6, metadata !4292, metadata !DIExpression()), !dbg !4293
  ret i32 %6, !dbg !4297
}

; Function Attrs: optsize
declare dso_local void @DMA_Vfifo_enable_interrupt(i32 noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize
define dso_local zeroext i8 @hal_uart_get_char(i32 noundef %0) local_unnamed_addr #0 !dbg !4298 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !4302, metadata !DIExpression()), !dbg !4304
  %2 = icmp eq i32 %0, 0, !dbg !4305
  %3 = icmp eq i32 %0, 1, !dbg !4305
  %4 = select i1 %3, i32 1, i32 2, !dbg !4305
  %5 = select i1 %2, i32 0, i32 %4, !dbg !4305
  call void @llvm.dbg.value(metadata i32 %5, metadata !4303, metadata !DIExpression()), !dbg !4304
  %6 = icmp ult i32 %5, 2, !dbg !4306
  br i1 %6, label %7, label %9, !dbg !4308

7:                                                ; preds = %1
  %8 = tail call zeroext i8 @uart_input_char(i32 noundef %5) #12, !dbg !4309
  br label %9, !dbg !4311

9:                                                ; preds = %1, %7
  %10 = phi i8 [ %8, %7 ], [ 0, %1 ], !dbg !4312
  ret i8 %10, !dbg !4313
}

; Function Attrs: noinline nounwind optsize
define dso_local i32 @hal_uart_get_char_unblocking(i32 noundef %0) local_unnamed_addr #0 !dbg !4314 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !4318, metadata !DIExpression()), !dbg !4320
  %2 = icmp eq i32 %0, 0, !dbg !4321
  %3 = icmp eq i32 %0, 1, !dbg !4321
  %4 = select i1 %3, i32 1, i32 2, !dbg !4321
  %5 = select i1 %2, i32 0, i32 %4, !dbg !4321
  call void @llvm.dbg.value(metadata i32 %5, metadata !4319, metadata !DIExpression()), !dbg !4320
  %6 = icmp ult i32 %5, 2, !dbg !4322
  br i1 %6, label %7, label %9, !dbg !4324

7:                                                ; preds = %1
  %8 = tail call i32 @uart_input_char_unblocking(i32 noundef %5) #12, !dbg !4325
  br label %9, !dbg !4327

9:                                                ; preds = %1, %7
  %10 = phi i32 [ %8, %7 ], [ 0, %1 ], !dbg !4328
  ret i32 %10, !dbg !4329
}

; Function Attrs: noinline nounwind optsize
define dso_local i32 @hal_uart_receive_polling(i32 noundef %0, i8* noundef writeonly %1, i32 noundef %2) local_unnamed_addr #0 !dbg !4330 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !4334, metadata !DIExpression()), !dbg !4339
  call void @llvm.dbg.value(metadata i8* %1, metadata !4335, metadata !DIExpression()), !dbg !4339
  call void @llvm.dbg.value(metadata i32 %2, metadata !4336, metadata !DIExpression()), !dbg !4339
  %4 = icmp eq i32 %0, 0, !dbg !4340
  %5 = icmp eq i32 %0, 1, !dbg !4340
  %6 = select i1 %5, i32 1, i32 2, !dbg !4340
  %7 = select i1 %4, i32 0, i32 %6, !dbg !4340
  call void @llvm.dbg.value(metadata i32 %7, metadata !4337, metadata !DIExpression()), !dbg !4339
  %8 = icmp eq i8* %1, null, !dbg !4341
  %9 = icmp ugt i32 %7, 1
  %10 = or i1 %8, %9, !dbg !4343
  %11 = icmp eq i32 %2, 0
  %12 = or i1 %10, %11, !dbg !4343
  call void @llvm.dbg.value(metadata i32 0, metadata !4338, metadata !DIExpression()), !dbg !4339
  br i1 %12, label %19, label %13, !dbg !4343

13:                                               ; preds = %3, %13
  %14 = phi i32 [ %17, %13 ], [ 0, %3 ]
  call void @llvm.dbg.value(metadata i32 %14, metadata !4338, metadata !DIExpression()), !dbg !4339
  %15 = tail call zeroext i8 @uart_input_char(i32 noundef %7) #12, !dbg !4344
  %16 = getelementptr inbounds i8, i8* %1, i32 %14, !dbg !4350
  store i8 %15, i8* %16, align 1, !dbg !4351
  %17 = add nuw i32 %14, 1, !dbg !4352
  call void @llvm.dbg.value(metadata i32 %17, metadata !4338, metadata !DIExpression()), !dbg !4339
  %18 = icmp eq i32 %17, %2, !dbg !4353
  br i1 %18, label %19, label %13, !dbg !4354, !llvm.loop !4355

19:                                               ; preds = %13, %3
  %20 = phi i32 [ 0, %3 ], [ %2, %13 ], !dbg !4339
  ret i32 %20, !dbg !4357
}

; Function Attrs: noinline nounwind optsize
define dso_local i32 @hal_uart_receive_dma(i32 noundef %0, i8* noundef %1, i32 noundef %2) local_unnamed_addr #0 !dbg !4358 {
  %4 = alloca i32, align 4
  call void @llvm.dbg.value(metadata i32 %0, metadata !4360, metadata !DIExpression()), !dbg !4366
  call void @llvm.dbg.value(metadata i8* %1, metadata !4361, metadata !DIExpression()), !dbg !4366
  call void @llvm.dbg.value(metadata i32 %2, metadata !4362, metadata !DIExpression()), !dbg !4366
  %5 = bitcast i32* %4 to i8*, !dbg !4367
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %5) #14, !dbg !4367
  %6 = tail call fastcc zeroext i1 @hal_uart_is_port_valid(i32 noundef %0) #13, !dbg !4368
  br i1 %6, label %7, label %20, !dbg !4370

7:                                                ; preds = %3
  %8 = icmp eq i8* %1, null, !dbg !4371
  %9 = icmp eq i32 %2, 0
  %10 = or i1 %8, %9, !dbg !4373
  br i1 %10, label %20, label %11, !dbg !4373

11:                                               ; preds = %7
  %12 = tail call fastcc i32 @hal_uart_translate_port(i32 noundef %0) #13, !dbg !4374, !range !4066
  call void @llvm.dbg.value(metadata i32* %4, metadata !4363, metadata !DIExpression(DW_OP_deref)), !dbg !4366
  call void @halUART_Get_VFIFO_Length(i32 noundef %12, i32 noundef 1, i32* noundef nonnull %4) #12, !dbg !4375
  %13 = load i32, i32* %4, align 4, !dbg !4376
  call void @llvm.dbg.value(metadata i32 %13, metadata !4363, metadata !DIExpression()), !dbg !4366
  %14 = icmp ult i32 %13, %2, !dbg !4378
  %15 = select i1 %14, i32 %13, i32 %2
  call void @llvm.dbg.value(metadata i32 %15, metadata !4364, metadata !DIExpression()), !dbg !4366
  call void @halUART_Read_VFIFO_Data(i32 noundef %12, i8* noundef nonnull %1, i32 noundef %15) #12, !dbg !4379
  %16 = load i32, i32* %4, align 4, !dbg !4380
  call void @llvm.dbg.value(metadata i32 %16, metadata !4363, metadata !DIExpression()), !dbg !4366
  %17 = icmp eq i32 %15, %16, !dbg !4382
  br i1 %17, label %18, label %20, !dbg !4383

18:                                               ; preds = %11
  %19 = call fastcc i32 @uart_channel_to_dma_channel(i32 noundef %12, i1 noundef zeroext true) #13, !dbg !4384, !range !4282
  call void @llvm.dbg.value(metadata i32 %19, metadata !4365, metadata !DIExpression()), !dbg !4366
  call void @DMA_Vfifo_enable_interrupt(i32 noundef %19) #12, !dbg !4386
  br label %20, !dbg !4387

20:                                               ; preds = %11, %18, %7, %3
  %21 = phi i32 [ 0, %3 ], [ 0, %7 ], [ %15, %18 ], [ %15, %11 ], !dbg !4366
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %5) #14, !dbg !4388
  ret i32 %21, !dbg !4388
}

; Function Attrs: noinline nounwind optsize
define dso_local i32 @hal_uart_get_available_send_space(i32 noundef %0) local_unnamed_addr #0 !dbg !4389 {
  %2 = alloca i32, align 4
  call void @llvm.dbg.value(metadata i32 %0, metadata !4391, metadata !DIExpression()), !dbg !4393
  %3 = bitcast i32* %2 to i8*, !dbg !4394
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %3) #14, !dbg !4394
  call void @llvm.dbg.value(metadata i32 0, metadata !4392, metadata !DIExpression()), !dbg !4393
  store i32 0, i32* %2, align 4, !dbg !4395
  %4 = tail call fastcc zeroext i1 @hal_uart_is_port_valid(i32 noundef %0) #13, !dbg !4396
  br i1 %4, label %5, label %8, !dbg !4398

5:                                                ; preds = %1
  %6 = tail call fastcc i32 @hal_uart_translate_port(i32 noundef %0) #13, !dbg !4399, !range !4066
  call void @llvm.dbg.value(metadata i32* %2, metadata !4392, metadata !DIExpression(DW_OP_deref)), !dbg !4393
  call void @halUART_Get_VFIFO_Length(i32 noundef %6, i32 noundef 0, i32* noundef nonnull %2) #12, !dbg !4400
  %7 = load i32, i32* %2, align 4, !dbg !4401
  call void @llvm.dbg.value(metadata i32 %7, metadata !4392, metadata !DIExpression()), !dbg !4393
  br label %8, !dbg !4402

8:                                                ; preds = %1, %5
  %9 = phi i32 [ %7, %5 ], [ 0, %1 ], !dbg !4393
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %3) #14, !dbg !4403
  ret i32 %9, !dbg !4403
}

; Function Attrs: noinline nounwind optsize
define dso_local i32 @hal_uart_get_available_receive_bytes(i32 noundef %0) local_unnamed_addr #0 !dbg !4404 {
  %2 = alloca i32, align 4
  call void @llvm.dbg.value(metadata i32 %0, metadata !4406, metadata !DIExpression()), !dbg !4408
  %3 = bitcast i32* %2 to i8*, !dbg !4409
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %3) #14, !dbg !4409
  call void @llvm.dbg.value(metadata i32 0, metadata !4407, metadata !DIExpression()), !dbg !4408
  store i32 0, i32* %2, align 4, !dbg !4410
  %4 = tail call fastcc zeroext i1 @hal_uart_is_port_valid(i32 noundef %0) #13, !dbg !4411
  br i1 %4, label %5, label %8, !dbg !4413

5:                                                ; preds = %1
  %6 = tail call fastcc i32 @hal_uart_translate_port(i32 noundef %0) #13, !dbg !4414, !range !4066
  call void @llvm.dbg.value(metadata i32* %2, metadata !4407, metadata !DIExpression(DW_OP_deref)), !dbg !4408
  call void @halUART_Get_VFIFO_Length(i32 noundef %6, i32 noundef 1, i32* noundef nonnull %2) #12, !dbg !4415
  %7 = load i32, i32* %2, align 4, !dbg !4416
  call void @llvm.dbg.value(metadata i32 %7, metadata !4407, metadata !DIExpression()), !dbg !4408
  br label %8, !dbg !4417

8:                                                ; preds = %1, %5
  %9 = phi i32 [ %7, %5 ], [ 0, %1 ], !dbg !4408
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %3) #14, !dbg !4418
  ret i32 %9, !dbg !4418
}

; Function Attrs: noinline nounwind optsize
define dso_local i32 @hal_uart_register_callback(i32 noundef %0, void (i32, i8*)* noundef %1, i8* noundef %2) local_unnamed_addr #0 !dbg !4419 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !4423, metadata !DIExpression()), !dbg !4427
  call void @llvm.dbg.value(metadata void (i32, i8*)* %1, metadata !4424, metadata !DIExpression()), !dbg !4427
  call void @llvm.dbg.value(metadata i8* %2, metadata !4425, metadata !DIExpression()), !dbg !4427
  %4 = tail call fastcc zeroext i1 @hal_uart_is_port_valid(i32 noundef %0) #13, !dbg !4428
  %5 = icmp ne void (i32, i8*)* %1, null
  %6 = and i1 %5, %4, !dbg !4430
  br i1 %6, label %7, label %18, !dbg !4430

7:                                                ; preds = %3
  %8 = getelementptr inbounds [2 x %struct.uart_context_t], [2 x %struct.uart_context_t]* @g_uart_context_table, i32 0, i32 %0, i32 3, i32 0, !dbg !4431
  store void (i32, i8*)* %1, void (i32, i8*)** %8, align 4, !dbg !4432
  %9 = getelementptr inbounds [2 x %struct.uart_context_t], [2 x %struct.uart_context_t]* @g_uart_context_table, i32 0, i32 %0, i32 3, i32 1, !dbg !4433
  store i8* %2, i8** %9, align 4, !dbg !4434
  %10 = getelementptr inbounds [2 x %struct.uart_context_t], [2 x %struct.uart_context_t]* @g_uart_context_table, i32 0, i32 %0, i32 2, !dbg !4435
  store i8 1, i8* %10, align 4, !dbg !4436
  %11 = tail call fastcc i32 @hal_uart_translate_port(i32 noundef %0) #13, !dbg !4437
  %12 = tail call fastcc void ()* @hal_uart_map_receive_callback(i32 noundef %0) #13, !dbg !4438
  tail call void @halUART_VDMA_Rx_Register_Callback(i32 noundef %11, void ()* noundef %12) #12, !dbg !4439
  tail call void @halUART_VDMA_Rx_Register_TO_Callback(i32 noundef %11, void ()* noundef %12) #12, !dbg !4440
  %13 = icmp eq i32 %11, 0, !dbg !4441
  br i1 %13, label %14, label %15, !dbg !4443

14:                                               ; preds = %7
  tail call void @DMA_Vfifo_Register_Callback(i32 noundef 14, void ()* noundef nonnull @hal_uart_send_callback0) #12, !dbg !4444
  br label %16, !dbg !4446

15:                                               ; preds = %7
  tail call void @DMA_Vfifo_Register_Callback(i32 noundef 16, void ()* noundef nonnull @hal_uart_send_callback1) #12, !dbg !4447
  br label %16

16:                                               ; preds = %15, %14
  %17 = tail call fastcc i32 @uart_channel_to_dma_channel(i32 noundef %11, i1 noundef zeroext false) #13, !dbg !4449, !range !4282
  call void @llvm.dbg.value(metadata i32 %17, metadata !4426, metadata !DIExpression()), !dbg !4427
  tail call void @DMA_Vfifo_enable_interrupt(i32 noundef %17) #12, !dbg !4450
  br label %18, !dbg !4451

18:                                               ; preds = %3, %16
  %19 = phi i32 [ 0, %16 ], [ -4, %3 ], !dbg !4427
  ret i32 %19, !dbg !4452
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize readnone willreturn
define internal fastcc void ()* @hal_uart_map_receive_callback(i32 noundef %0) unnamed_addr #5 !dbg !387 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !393, metadata !DIExpression()), !dbg !4453
  %2 = getelementptr inbounds [2 x void ()*], [2 x void ()*]* @hal_uart_map_receive_callback.func_tbl, i32 0, i32 %0, !dbg !4454
  %3 = load void ()*, void ()** %2, align 4, !dbg !4454
  ret void ()* %3, !dbg !4455
}

; Function Attrs: noinline nounwind optsize
define internal void @hal_uart_send_callback0() #0 !dbg !4456 {
  %1 = load i8, i8* getelementptr inbounds ([2 x %struct.uart_context_t], [2 x %struct.uart_context_t]* @g_uart_context_table, i32 0, i32 0, i32 2), align 4, !dbg !4462, !range !3243
  %2 = icmp eq i8 %1, 0, !dbg !4462
  br i1 %2, label %8, label %3, !dbg !4463

3:                                                ; preds = %0
  %4 = load void (i32, i8*)*, void (i32, i8*)** getelementptr inbounds ([2 x %struct.uart_context_t], [2 x %struct.uart_context_t]* @g_uart_context_table, i32 0, i32 0, i32 3, i32 0), align 4, !dbg !4464
  %5 = icmp eq void (i32, i8*)* %4, null, !dbg !4466
  br i1 %5, label %8, label %6, !dbg !4467

6:                                                ; preds = %3
  %7 = load i8*, i8** getelementptr inbounds ([2 x %struct.uart_context_t], [2 x %struct.uart_context_t]* @g_uart_context_table, i32 0, i32 0, i32 3, i32 1), align 4, !dbg !4468
  tail call void %4(i32 noundef 2, i8* noundef %7) #12, !dbg !4470
  br label %8, !dbg !4471

8:                                                ; preds = %3, %6, %0
  %9 = tail call fastcc i32 @hal_uart_translate_port(i32 noundef 0) #13, !dbg !4472, !range !4066
  tail call fastcc void @hal_uart_check_irq_disable(i32 noundef %9, i1 noundef zeroext false) #13, !dbg !4473
  ret void, !dbg !4474
}

; Function Attrs: noinline nounwind optsize
define internal void @hal_uart_send_callback1() #0 !dbg !4475 {
  %1 = load i8, i8* getelementptr inbounds ([2 x %struct.uart_context_t], [2 x %struct.uart_context_t]* @g_uart_context_table, i32 0, i32 1, i32 2), align 4, !dbg !4480, !range !3243
  %2 = icmp eq i8 %1, 0, !dbg !4480
  br i1 %2, label %8, label %3, !dbg !4481

3:                                                ; preds = %0
  %4 = load void (i32, i8*)*, void (i32, i8*)** getelementptr inbounds ([2 x %struct.uart_context_t], [2 x %struct.uart_context_t]* @g_uart_context_table, i32 0, i32 1, i32 3, i32 0), align 4, !dbg !4482
  %5 = icmp eq void (i32, i8*)* %4, null, !dbg !4484
  br i1 %5, label %8, label %6, !dbg !4485

6:                                                ; preds = %3
  %7 = load i8*, i8** getelementptr inbounds ([2 x %struct.uart_context_t], [2 x %struct.uart_context_t]* @g_uart_context_table, i32 0, i32 1, i32 3, i32 1), align 4, !dbg !4486
  tail call void %4(i32 noundef 2, i8* noundef %7) #12, !dbg !4488
  br label %8, !dbg !4489

8:                                                ; preds = %3, %6, %0
  %9 = tail call fastcc i32 @hal_uart_translate_port(i32 noundef 1) #13, !dbg !4490, !range !4066
  tail call fastcc void @hal_uart_check_irq_disable(i32 noundef %9, i1 noundef zeroext false) #13, !dbg !4491
  ret void, !dbg !4492
}

; Function Attrs: noinline nounwind optsize
define internal fastcc void @hal_uart_check_irq_disable(i32 noundef %0, i1 noundef zeroext %1) unnamed_addr #0 !dbg !4493 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  call void @llvm.dbg.value(metadata i32 %0, metadata !4497, metadata !DIExpression()), !dbg !4504
  call void @llvm.dbg.value(metadata i1 %1, metadata !4498, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !4504
  %5 = bitcast i32* %3 to i8*, !dbg !4505
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %5) #14, !dbg !4505
  %6 = bitcast i32* %4 to i8*, !dbg !4505
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %6) #14, !dbg !4505
  call void @llvm.dbg.value(metadata !DIArgList([2 x %struct.uart_context_t]* @g_uart_context_table, i32 %0), metadata !4501, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_constu, 64, DW_OP_mul, DW_OP_plus, DW_OP_plus_uconst, 36, DW_OP_stack_value)), !dbg !4504
  br i1 %1, label %7, label %12, !dbg !4506

7:                                                ; preds = %2
  call void @llvm.dbg.value(metadata !DIArgList([2 x %struct.uart_context_t]* @g_uart_context_table, i32 %0), metadata !4501, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_constu, 64, DW_OP_mul, DW_OP_plus, DW_OP_plus_uconst, 36, DW_OP_stack_value)), !dbg !4504
  call void @llvm.dbg.value(metadata i32* %3, metadata !4499, metadata !DIExpression(DW_OP_deref)), !dbg !4504
  call void @halUART_Get_VFIFO_Length(i32 noundef %0, i32 noundef 1, i32* noundef nonnull %3) #12, !dbg !4507
  %8 = load i32, i32* %3, align 4, !dbg !4510
  call void @llvm.dbg.value(metadata i32 %8, metadata !4499, metadata !DIExpression()), !dbg !4504
  %9 = getelementptr inbounds [2 x %struct.uart_context_t], [2 x %struct.uart_context_t]* @g_uart_context_table, i32 0, i32 %0, i32 5, i32 5, !dbg !4512
  %10 = load i32, i32* %9, align 4, !dbg !4512
  %11 = icmp ult i32 %8, %10, !dbg !4513
  br i1 %11, label %22, label %20, !dbg !4514

12:                                               ; preds = %2
  call void @llvm.dbg.value(metadata i32* %4, metadata !4500, metadata !DIExpression(DW_OP_deref)), !dbg !4504
  call void @halUART_Get_VFIFO_Length(i32 noundef %0, i32 noundef 0, i32* noundef nonnull %4) #12, !dbg !4515
  %13 = load i32, i32* %4, align 4, !dbg !4517
  call void @llvm.dbg.value(metadata i32 %13, metadata !4500, metadata !DIExpression()), !dbg !4504
  %14 = getelementptr inbounds [2 x %struct.uart_context_t], [2 x %struct.uart_context_t]* @g_uart_context_table, i32 0, i32 %0, i32 5, i32 1, !dbg !4519
  %15 = load i32, i32* %14, align 4, !dbg !4519
  %16 = getelementptr inbounds [2 x %struct.uart_context_t], [2 x %struct.uart_context_t]* @g_uart_context_table, i32 0, i32 %0, i32 5, i32 2, !dbg !4520
  %17 = load i32, i32* %16, align 4, !dbg !4520
  %18 = sub i32 %15, %17, !dbg !4521
  %19 = icmp ult i32 %13, %18, !dbg !4522
  br i1 %19, label %22, label %20, !dbg !4523

20:                                               ; preds = %12, %7
  %21 = call fastcc i32 @uart_channel_to_dma_channel(i32 noundef %0, i1 noundef zeroext %1) #13, !dbg !4524, !range !4282
  call void @DMA_Vfifo_disable_interrupt(i32 noundef %21) #12, !dbg !4524
  br label %22, !dbg !4525

22:                                               ; preds = %20, %12, %7
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %6) #14, !dbg !4525
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %5) #14, !dbg !4525
  ret void, !dbg !4525
}

; Function Attrs: optsize
declare dso_local void @DMA_Vfifo_disable_interrupt(i32 noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize
define internal void @hal_uart_receive_callback0() #0 !dbg !4526 {
  %1 = load i8, i8* getelementptr inbounds ([2 x %struct.uart_context_t], [2 x %struct.uart_context_t]* @g_uart_context_table, i32 0, i32 0, i32 2), align 4, !dbg !4531, !range !3243
  %2 = icmp eq i8 %1, 0, !dbg !4531
  br i1 %2, label %11, label %3, !dbg !4532

3:                                                ; preds = %0
  %4 = tail call i32 @hal_uart_get_available_receive_bytes(i32 noundef 0) #13, !dbg !4533
  %5 = icmp eq i32 %4, 0, !dbg !4534
  br i1 %5, label %11, label %6, !dbg !4535

6:                                                ; preds = %3
  %7 = load void (i32, i8*)*, void (i32, i8*)** getelementptr inbounds ([2 x %struct.uart_context_t], [2 x %struct.uart_context_t]* @g_uart_context_table, i32 0, i32 0, i32 3, i32 0), align 4, !dbg !4536
  %8 = icmp eq void (i32, i8*)* %7, null, !dbg !4538
  br i1 %8, label %11, label %9, !dbg !4539

9:                                                ; preds = %6
  %10 = load i8*, i8** getelementptr inbounds ([2 x %struct.uart_context_t], [2 x %struct.uart_context_t]* @g_uart_context_table, i32 0, i32 0, i32 3, i32 1), align 4, !dbg !4540
  tail call void %7(i32 noundef 1, i8* noundef %10) #12, !dbg !4542
  br label %11, !dbg !4543

11:                                               ; preds = %6, %9, %3, %0
  %12 = tail call fastcc i32 @hal_uart_translate_port(i32 noundef 0) #13, !dbg !4544, !range !4066
  tail call fastcc void @hal_uart_check_irq_disable(i32 noundef %12, i1 noundef zeroext true) #13, !dbg !4545
  ret void, !dbg !4546
}

; Function Attrs: noinline nounwind optsize
define internal void @hal_uart_receive_callback1() #0 !dbg !4547 {
  %1 = load i8, i8* getelementptr inbounds ([2 x %struct.uart_context_t], [2 x %struct.uart_context_t]* @g_uart_context_table, i32 0, i32 1, i32 2), align 4, !dbg !4552, !range !3243
  %2 = icmp eq i8 %1, 0, !dbg !4552
  br i1 %2, label %11, label %3, !dbg !4553

3:                                                ; preds = %0
  %4 = tail call i32 @hal_uart_get_available_receive_bytes(i32 noundef 1) #13, !dbg !4554
  %5 = icmp eq i32 %4, 0, !dbg !4555
  br i1 %5, label %11, label %6, !dbg !4556

6:                                                ; preds = %3
  %7 = load void (i32, i8*)*, void (i32, i8*)** getelementptr inbounds ([2 x %struct.uart_context_t], [2 x %struct.uart_context_t]* @g_uart_context_table, i32 0, i32 1, i32 3, i32 0), align 4, !dbg !4557
  %8 = icmp eq void (i32, i8*)* %7, null, !dbg !4559
  br i1 %8, label %11, label %9, !dbg !4560

9:                                                ; preds = %6
  %10 = load i8*, i8** getelementptr inbounds ([2 x %struct.uart_context_t], [2 x %struct.uart_context_t]* @g_uart_context_table, i32 0, i32 1, i32 3, i32 1), align 4, !dbg !4561
  tail call void %7(i32 noundef 1, i8* noundef %10) #12, !dbg !4563
  br label %11, !dbg !4564

11:                                               ; preds = %6, %9, %3, %0
  %12 = tail call fastcc i32 @hal_uart_translate_port(i32 noundef 1) #13, !dbg !4565, !range !4066
  tail call fastcc void @hal_uart_check_irq_disable(i32 noundef %12, i1 noundef zeroext true) #13, !dbg !4566
  ret void, !dbg !4567
}

; Function Attrs: noinline nounwind optsize
define dso_local i32 @hal_uart_set_baudrate(i32 noundef %0, i32 noundef %1) local_unnamed_addr #0 !dbg !4568 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !4572, metadata !DIExpression()), !dbg !4574
  call void @llvm.dbg.value(metadata i32 %1, metadata !4573, metadata !DIExpression()), !dbg !4574
  %3 = tail call fastcc zeroext i1 @hal_uart_is_port_valid(i32 noundef %0) #13, !dbg !4575
  %4 = icmp ult i32 %1, 13
  %5 = and i1 %4, %3, !dbg !4577
  br i1 %5, label %6, label %10, !dbg !4577

6:                                                ; preds = %2
  %7 = getelementptr inbounds [2 x %struct.uart_context_t], [2 x %struct.uart_context_t]* @g_uart_context_table, i32 0, i32 %0, i32 1, !dbg !4578
  %8 = getelementptr inbounds %struct.hal_uart_config_t, %struct.hal_uart_config_t* %7, i32 0, i32 0, !dbg !4579
  store i32 %1, i32* %8, align 4, !dbg !4580
  %9 = tail call i32 @hal_uart_set_format(i32 noundef %0, %struct.hal_uart_config_t* noundef nonnull %7) #13, !dbg !4581
  br label %10, !dbg !4582

10:                                               ; preds = %2, %6
  %11 = phi i32 [ %9, %6 ], [ -4, %2 ], !dbg !4574
  ret i32 %11, !dbg !4583
}

; Function Attrs: noinline nounwind optsize
define dso_local i32 @hal_uart_set_dma(i32 noundef %0, %struct.hal_uart_dma_config_t* noundef %1) local_unnamed_addr #0 !dbg !4584 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !4590, metadata !DIExpression()), !dbg !4592
  call void @llvm.dbg.value(metadata %struct.hal_uart_dma_config_t* %1, metadata !4591, metadata !DIExpression()), !dbg !4592
  %3 = tail call fastcc zeroext i1 @hal_uart_is_port_valid(i32 noundef %0) #13, !dbg !4593
  br i1 %3, label %4, label %28, !dbg !4595

4:                                                ; preds = %2
  %5 = tail call fastcc zeroext i1 @hal_uart_is_dma_config_valid(%struct.hal_uart_dma_config_t* noundef %1) #13, !dbg !4596
  br i1 %5, label %6, label %28, !dbg !4598

6:                                                ; preds = %4
  %7 = getelementptr inbounds [2 x %struct.uart_context_t], [2 x %struct.uart_context_t]* @g_uart_context_table, i32 0, i32 %0, i32 4, !dbg !4599
  store i8 1, i8* %7, align 4, !dbg !4600
  %8 = getelementptr inbounds [2 x %struct.uart_context_t], [2 x %struct.uart_context_t]* @g_uart_context_table, i32 0, i32 %0, i32 5, !dbg !4601
  %9 = bitcast %struct.hal_uart_dma_config_t* %8 to i8*, !dbg !4602
  %10 = bitcast %struct.hal_uart_dma_config_t* %1 to i8*, !dbg !4603
  %11 = tail call i8* @memcpy(i8* noundef nonnull %9, i8* noundef %10, i32 noundef 28) #12, !dbg !4604
  tail call void @DMA_Init() #12, !dbg !4605
  tail call void @DMA_Vfifo_init() #12, !dbg !4606
  %12 = tail call fastcc i32 @hal_uart_translate_port(i32 noundef %0) #13, !dbg !4607
  %13 = getelementptr inbounds %struct.hal_uart_dma_config_t, %struct.hal_uart_dma_config_t* %1, i32 0, i32 3, !dbg !4608
  %14 = load i8*, i8** %13, align 4, !dbg !4608
  %15 = getelementptr inbounds %struct.hal_uart_dma_config_t, %struct.hal_uart_dma_config_t* %1, i32 0, i32 4, !dbg !4609
  %16 = load i32, i32* %15, align 4, !dbg !4609
  %17 = getelementptr inbounds %struct.hal_uart_dma_config_t, %struct.hal_uart_dma_config_t* %1, i32 0, i32 6, !dbg !4610
  %18 = load i32, i32* %17, align 4, !dbg !4610
  %19 = getelementptr inbounds %struct.hal_uart_dma_config_t, %struct.hal_uart_dma_config_t* %1, i32 0, i32 5, !dbg !4611
  %20 = load i32, i32* %19, align 4, !dbg !4611
  %21 = tail call fastcc i32 @hal_uart_translate_timeout(i32 noundef 5000) #13, !dbg !4612
  tail call void @halUART_Rx_VFIFO_Initialize(i32 noundef %12, i8* noundef %14, i32 noundef %16, i32 noundef %18, i32 noundef %20, i32 noundef %21) #12, !dbg !4613
  %22 = getelementptr inbounds %struct.hal_uart_dma_config_t, %struct.hal_uart_dma_config_t* %1, i32 0, i32 0, !dbg !4614
  %23 = load i8*, i8** %22, align 4, !dbg !4614
  %24 = getelementptr inbounds %struct.hal_uart_dma_config_t, %struct.hal_uart_dma_config_t* %1, i32 0, i32 1, !dbg !4615
  %25 = load i32, i32* %24, align 4, !dbg !4615
  %26 = getelementptr inbounds %struct.hal_uart_dma_config_t, %struct.hal_uart_dma_config_t* %1, i32 0, i32 2, !dbg !4616
  %27 = load i32, i32* %26, align 4, !dbg !4616
  tail call void @halUART_Tx_VFIFO_Initialize(i32 noundef %12, i8* noundef %23, i32 noundef %25, i32 noundef %27) #12, !dbg !4617
  br label %28, !dbg !4618

28:                                               ; preds = %4, %2, %6
  %29 = phi i32 [ 0, %6 ], [ -4, %2 ], [ -4, %4 ], !dbg !4592
  ret i32 %29, !dbg !4619
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize readonly willreturn
define internal fastcc zeroext i1 @hal_uart_is_dma_config_valid(%struct.hal_uart_dma_config_t* noundef readonly %0) unnamed_addr #6 !dbg !4620 {
  call void @llvm.dbg.value(metadata %struct.hal_uart_dma_config_t* %0, metadata !4624, metadata !DIExpression()), !dbg !4625
  %2 = icmp eq %struct.hal_uart_dma_config_t* %0, null, !dbg !4626
  br i1 %2, label %27, label %3, !dbg !4628

3:                                                ; preds = %1
  %4 = getelementptr inbounds %struct.hal_uart_dma_config_t, %struct.hal_uart_dma_config_t* %0, i32 0, i32 3, !dbg !4629
  %5 = load i8*, i8** %4, align 4, !dbg !4629
  %6 = icmp eq i8* %5, null, !dbg !4631
  br i1 %6, label %27, label %7, !dbg !4632

7:                                                ; preds = %3
  %8 = getelementptr inbounds %struct.hal_uart_dma_config_t, %struct.hal_uart_dma_config_t* %0, i32 0, i32 4, !dbg !4633
  %9 = load i32, i32* %8, align 4, !dbg !4633
  %10 = getelementptr inbounds %struct.hal_uart_dma_config_t, %struct.hal_uart_dma_config_t* %0, i32 0, i32 5, !dbg !4635
  %11 = load i32, i32* %10, align 4, !dbg !4635
  %12 = icmp ult i32 %9, %11, !dbg !4636
  br i1 %12, label %27, label %13, !dbg !4637

13:                                               ; preds = %7
  %14 = getelementptr inbounds %struct.hal_uart_dma_config_t, %struct.hal_uart_dma_config_t* %0, i32 0, i32 6, !dbg !4638
  %15 = load i32, i32* %14, align 4, !dbg !4638
  %16 = icmp ult i32 %9, %15, !dbg !4640
  br i1 %16, label %27, label %17, !dbg !4641

17:                                               ; preds = %13
  %18 = getelementptr inbounds %struct.hal_uart_dma_config_t, %struct.hal_uart_dma_config_t* %0, i32 0, i32 0, !dbg !4642
  %19 = load i8*, i8** %18, align 4, !dbg !4642
  %20 = icmp eq i8* %19, null, !dbg !4644
  br i1 %20, label %27, label %21, !dbg !4645

21:                                               ; preds = %17
  %22 = getelementptr inbounds %struct.hal_uart_dma_config_t, %struct.hal_uart_dma_config_t* %0, i32 0, i32 1, !dbg !4646
  %23 = load i32, i32* %22, align 4, !dbg !4646
  %24 = getelementptr inbounds %struct.hal_uart_dma_config_t, %struct.hal_uart_dma_config_t* %0, i32 0, i32 2, !dbg !4648
  %25 = load i32, i32* %24, align 4, !dbg !4648
  %26 = icmp uge i32 %23, %25, !dbg !4649
  br label %27, !dbg !4650

27:                                               ; preds = %21, %17, %13, %7, %3, %1
  %28 = phi i1 [ false, %1 ], [ false, %3 ], [ false, %7 ], [ false, %13 ], [ false, %17 ], [ %26, %21 ], !dbg !4625
  ret i1 %28, !dbg !4651
}

; Function Attrs: optsize
declare dso_local void @DMA_Init() local_unnamed_addr #2

; Function Attrs: optsize
declare dso_local void @DMA_Vfifo_init() local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize
define internal fastcc i32 @hal_uart_translate_timeout(i32 noundef %0) unnamed_addr #0 !dbg !4652 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !4656, metadata !DIExpression()), !dbg !4658
  %2 = tail call i32 @top_mcu_freq_get() #12, !dbg !4659
  %3 = udiv i32 %2, 1000000, !dbg !4660
  call void @llvm.dbg.value(metadata i32 %3, metadata !4657, metadata !DIExpression()), !dbg !4658
  %4 = mul i32 %3, %0, !dbg !4661
  ret i32 %4, !dbg !4662
}

; Function Attrs: noinline nounwind optsize
define dso_local i32 @hal_uart_set_hardware_flowcontrol(i32 noundef %0) local_unnamed_addr #0 !dbg !4663 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !4665, metadata !DIExpression()), !dbg !4667
  %2 = tail call fastcc zeroext i1 @hal_uart_is_port_valid(i32 noundef %0) #13, !dbg !4668
  br i1 %2, label %3, label %8, !dbg !4670

3:                                                ; preds = %1
  %4 = icmp eq i32 %0, 0, !dbg !4671
  %5 = icmp eq i32 %0, 1, !dbg !4671
  %6 = select i1 %5, i32 1, i32 2, !dbg !4671
  %7 = select i1 %4, i32 0, i32 %6, !dbg !4671
  call void @llvm.dbg.value(metadata i32 %7, metadata !4666, metadata !DIExpression()), !dbg !4667
  tail call void @uart_set_hardware_flowcontrol(i32 noundef %7) #12, !dbg !4672
  br label %8, !dbg !4673

8:                                                ; preds = %1, %3
  %9 = phi i32 [ 0, %3 ], [ -4, %1 ], !dbg !4667
  ret i32 %9, !dbg !4674
}

; Function Attrs: noinline nounwind optsize
define dso_local i32 @hal_uart_set_software_flowcontrol(i32 noundef %0, i8 noundef zeroext %1, i8 noundef zeroext %2, i8 noundef zeroext %3) local_unnamed_addr #0 !dbg !4675 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !4679, metadata !DIExpression()), !dbg !4684
  call void @llvm.dbg.value(metadata i8 %1, metadata !4680, metadata !DIExpression()), !dbg !4684
  call void @llvm.dbg.value(metadata i8 %2, metadata !4681, metadata !DIExpression()), !dbg !4684
  call void @llvm.dbg.value(metadata i8 %3, metadata !4682, metadata !DIExpression()), !dbg !4684
  %5 = tail call fastcc zeroext i1 @hal_uart_is_port_valid(i32 noundef %0) #13, !dbg !4685
  br i1 %5, label %6, label %11, !dbg !4687

6:                                                ; preds = %4
  %7 = icmp eq i32 %0, 0, !dbg !4688
  %8 = icmp eq i32 %0, 1, !dbg !4688
  %9 = select i1 %8, i32 1, i32 2, !dbg !4688
  %10 = select i1 %7, i32 0, i32 %9, !dbg !4688
  call void @llvm.dbg.value(metadata i32 %10, metadata !4683, metadata !DIExpression()), !dbg !4684
  tail call void @uart_set_software_flowcontrol(i32 noundef %10, i8 noundef zeroext %1, i8 noundef zeroext %2, i8 noundef zeroext %3) #12, !dbg !4689
  br label %11, !dbg !4690

11:                                               ; preds = %4, %6
  %12 = phi i32 [ 0, %6 ], [ -4, %4 ], !dbg !4684
  ret i32 %12, !dbg !4691
}

; Function Attrs: noinline nounwind optsize
define dso_local i32 @hal_uart_disable_flowcontrol(i32 noundef %0) local_unnamed_addr #0 !dbg !4692 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !4694, metadata !DIExpression()), !dbg !4696
  %2 = tail call fastcc zeroext i1 @hal_uart_is_port_valid(i32 noundef %0) #13, !dbg !4697
  br i1 %2, label %3, label %8, !dbg !4699

3:                                                ; preds = %1
  %4 = icmp eq i32 %0, 0, !dbg !4700
  %5 = icmp eq i32 %0, 1, !dbg !4700
  %6 = select i1 %5, i32 1, i32 2, !dbg !4700
  %7 = select i1 %4, i32 0, i32 %6, !dbg !4700
  call void @llvm.dbg.value(metadata i32 %7, metadata !4695, metadata !DIExpression()), !dbg !4696
  tail call void @uart_disable_flowcontrol(i32 noundef %7) #12, !dbg !4701
  br label %8, !dbg !4702

8:                                                ; preds = %1, %3
  %9 = phi i32 [ 0, %3 ], [ -4, %1 ], !dbg !4696
  ret i32 %9, !dbg !4703
}

; Function Attrs: noinline nounwind optsize
define dso_local i32 @hal_uart_set_dma_timeout(i32 noundef %0, i32 noundef %1) local_unnamed_addr #0 !dbg !4704 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !4708, metadata !DIExpression()), !dbg !4710
  call void @llvm.dbg.value(metadata i32 %1, metadata !4709, metadata !DIExpression()), !dbg !4710
  %3 = tail call fastcc zeroext i1 @hal_uart_is_port_valid(i32 noundef %0) #13, !dbg !4711
  br i1 %3, label %4, label %8, !dbg !4713

4:                                                ; preds = %2
  %5 = icmp eq i32 %0, 0, !dbg !4714
  %6 = tail call fastcc i32 @hal_uart_translate_timeout(i32 noundef %1) #13, !dbg !4716
  %7 = select i1 %5, i32 15, i32 17
  tail call void @DMA_Vfifo_Set_timeout(i32 noundef %7, i32 noundef %6) #12, !dbg !4716
  br label %8, !dbg !4717

8:                                                ; preds = %4, %2
  %9 = phi i32 [ -4, %2 ], [ 0, %4 ], !dbg !4710
  ret i32 %9, !dbg !4717
}

; Function Attrs: optsize
declare dso_local void @DMA_Vfifo_Set_timeout(i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize
define dso_local i32 @__io_putchar(i32 noundef returned %0) local_unnamed_addr #0 !dbg !4718 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !4722, metadata !DIExpression()), !dbg !4723
  %2 = trunc i32 %0 to i8, !dbg !4724
  tail call void @hal_uart_put_char(i32 noundef 0, i8 noundef zeroext %2) #12, !dbg !4725
  ret i32 %0, !dbg !4726
}

; Function Attrs: noinline noreturn nounwind optsize
define dso_local i32 @main() local_unnamed_addr #11 !dbg !4727 {
  tail call fastcc void @SystemClock_Config() #13, !dbg !4728
  tail call fastcc void @prvSetupHardware() #13, !dbg !4729
  tail call void asm sideeffect "cpsie i", "~{memory}"() #14, !dbg !4730, !srcloc !4733
  tail call void asm sideeffect "cpsie f", "~{memory}"() #14, !dbg !4734, !srcloc !4737
  %1 = tail call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.20, i32 0, i32 0)) #12, !dbg !4738
  %2 = tail call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1.21, i32 0, i32 0)) #12, !dbg !4739
  %3 = tail call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.20, i32 0, i32 0)) #12, !dbg !4740
  tail call fastcc void @trng_generate_random_data() #13, !dbg !4741
  br label %4, !dbg !4742

4:                                                ; preds = %4, %0
  br label %4, !dbg !4743, !llvm.loop !4746
}

; Function Attrs: noinline nounwind optsize
define internal fastcc void @SystemClock_Config() unnamed_addr #0 !dbg !4749 {
  tail call void @top_xtal_init() #12, !dbg !4750
  ret void, !dbg !4751
}

; Function Attrs: noinline nounwind optsize
define internal fastcc void @prvSetupHardware() unnamed_addr #0 !dbg !4752 {
  tail call fastcc void @plain_log_uart_init() #13, !dbg !4753
  ret void, !dbg !4754
}

; Function Attrs: noinline nounwind optsize
define internal fastcc void @trng_generate_random_data() unnamed_addr #0 !dbg !4755 {
  %1 = alloca i32, align 4
  call void @llvm.dbg.value(metadata i32 0, metadata !4757, metadata !DIExpression()), !dbg !4759
  %2 = bitcast i32* %1 to i8*, !dbg !4760
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %2) #14, !dbg !4760
  call void @llvm.dbg.value(metadata i32 0, metadata !4758, metadata !DIExpression()), !dbg !4759
  store i32 0, i32* %1, align 4, !dbg !4761
  %3 = tail call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([30 x i8], [30 x i8]* @.str.2, i32 0, i32 0)) #12, !dbg !4762
  %4 = tail call i32 @hal_trng_init() #12, !dbg !4763
  call void @llvm.dbg.value(metadata i32 0, metadata !4757, metadata !DIExpression()), !dbg !4759
  br label %5, !dbg !4764

5:                                                ; preds = %0, %5
  %6 = phi i32 [ 0, %0 ], [ %10, %5 ]
  call void @llvm.dbg.value(metadata i32 %6, metadata !4757, metadata !DIExpression()), !dbg !4759
  call void @llvm.dbg.value(metadata i32* %1, metadata !4758, metadata !DIExpression(DW_OP_deref)), !dbg !4759
  %7 = call i32 @hal_trng_get_generated_random_number(i32* noundef nonnull %1) #12, !dbg !4766
  %8 = load i32, i32* %1, align 4, !dbg !4769
  call void @llvm.dbg.value(metadata i32 %8, metadata !4758, metadata !DIExpression()), !dbg !4759
  %9 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([43 x i8], [43 x i8]* @.str.3, i32 0, i32 0), i32 noundef %8) #12, !dbg !4770
  %10 = add nuw nsw i32 %6, 1, !dbg !4771
  call void @llvm.dbg.value(metadata i32 %10, metadata !4757, metadata !DIExpression()), !dbg !4759
  %11 = icmp eq i32 %10, 20, !dbg !4772
  br i1 %11, label %12, label %5, !dbg !4764, !llvm.loop !4773

12:                                               ; preds = %5
  %13 = call i32 @hal_trng_deinit() #12, !dbg !4775
  %14 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([36 x i8], [36 x i8]* @.str.4, i32 0, i32 0)) #12, !dbg !4776
  %15 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([31 x i8], [31 x i8]* @.str.5, i32 0, i32 0)) #12, !dbg !4777
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %2) #14, !dbg !4778
  ret void, !dbg !4778
}

; Function Attrs: noinline nounwind optsize
define internal fastcc void @plain_log_uart_init() unnamed_addr #0 !dbg !4779 {
  %1 = alloca %struct.hal_uart_config_t, align 4
  %2 = bitcast %struct.hal_uart_config_t* %1 to i8*, !dbg !4789
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %2) #14, !dbg !4789
  call void @llvm.dbg.declare(metadata %struct.hal_uart_config_t* %1, metadata !4781, metadata !DIExpression()), !dbg !4790
  %3 = tail call i32 @hal_pinmux_set_function(i32 noundef 0, i8 noundef zeroext 7) #12, !dbg !4791
  %4 = tail call i32 @hal_pinmux_set_function(i32 noundef 1, i8 noundef zeroext 7) #12, !dbg !4792
  %5 = tail call i32 @hal_pinmux_set_function(i32 noundef 2, i8 noundef zeroext 7) #12, !dbg !4793
  %6 = tail call i32 @hal_pinmux_set_function(i32 noundef 3, i8 noundef zeroext 7) #12, !dbg !4794
  %7 = getelementptr inbounds %struct.hal_uart_config_t, %struct.hal_uart_config_t* %1, i32 0, i32 0, !dbg !4795
  store i32 9, i32* %7, align 4, !dbg !4796
  %8 = getelementptr inbounds %struct.hal_uart_config_t, %struct.hal_uart_config_t* %1, i32 0, i32 1, !dbg !4797
  store i32 3, i32* %8, align 4, !dbg !4798
  %9 = getelementptr inbounds %struct.hal_uart_config_t, %struct.hal_uart_config_t* %1, i32 0, i32 2, !dbg !4799
  store i32 0, i32* %9, align 4, !dbg !4800
  %10 = getelementptr inbounds %struct.hal_uart_config_t, %struct.hal_uart_config_t* %1, i32 0, i32 3, !dbg !4801
  store i32 0, i32* %10, align 4, !dbg !4802
  %11 = call i32 @hal_uart_init(i32 noundef 0, %struct.hal_uart_config_t* noundef nonnull %1) #12, !dbg !4803
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %2) #14, !dbg !4804
  ret void, !dbg !4804
}

; Function Attrs: nofree noinline norecurse nounwind optsize
define dso_local i32 @SysTick_Set(i32 noundef %0) local_unnamed_addr #3 !dbg !4805 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !4807, metadata !DIExpression()), !dbg !4809
  %2 = add i32 %0, -1, !dbg !4810
  %3 = icmp ugt i32 %2, 16777215, !dbg !4812
  br i1 %3, label %8, label %4, !dbg !4813

4:                                                ; preds = %1
  %5 = load volatile i32, i32* inttoptr (i32 -536813552 to i32*), align 16, !dbg !4814
  call void @llvm.dbg.value(metadata i32 %5, metadata !4808, metadata !DIExpression()), !dbg !4809
  %6 = load volatile i32, i32* inttoptr (i32 -536813552 to i32*), align 16, !dbg !4815
  %7 = and i32 %6, -4, !dbg !4815
  store volatile i32 %7, i32* inttoptr (i32 -536813552 to i32*), align 16, !dbg !4815
  store volatile i32 %2, i32* inttoptr (i32 -536813548 to i32*), align 4, !dbg !4816
  store volatile i32 0, i32* inttoptr (i32 -536813544 to i32*), align 8, !dbg !4817
  store volatile i32 %5, i32* inttoptr (i32 -536813552 to i32*), align 16, !dbg !4818
  br label %8, !dbg !4819

8:                                                ; preds = %1, %4
  %9 = phi i32 [ 0, %4 ], [ 1, %1 ], !dbg !4809
  ret i32 %9, !dbg !4820
}

; Function Attrs: nofree noinline norecurse nounwind optsize
define dso_local void @SysInitStatus_Set() local_unnamed_addr #3 !dbg !4821 {
  store volatile i32 1, i32* @System_Initialize_Done, align 4, !dbg !4822
  ret void, !dbg !4823
}

; Function Attrs: mustprogress nofree noinline norecurse nounwind optsize willreturn
define dso_local i32 @SysInitStatus_Query() local_unnamed_addr #4 !dbg !4824 {
  %1 = load volatile i32, i32* @System_Initialize_Done, align 4, !dbg !4825
  ret i32 %1, !dbg !4826
}

; Function Attrs: noinline nounwind optsize
define dso_local void @SystemCoreClockUpdate() local_unnamed_addr #0 !dbg !4827 {
  %1 = tail call i32 @top_mcu_freq_get() #12, !dbg !4828
  store i32 %1, i32* @SystemCoreClock, align 4, !dbg !4829
  ret void, !dbg !4830
}

; Function Attrs: nofree noinline norecurse nounwind optsize
define dso_local void @SystemInit() local_unnamed_addr #3 !dbg !4831 {
  %1 = load volatile i32, i32* inttoptr (i32 -536810104 to i32*), align 8, !dbg !4832
  %2 = or i32 %1, 15728640, !dbg !4832
  store volatile i32 %2, i32* inttoptr (i32 -536810104 to i32*), align 8, !dbg !4832
  store volatile i32 536870912, i32* inttoptr (i32 -536810232 to i32*), align 8, !dbg !4833
  %3 = load volatile i32, i32* inttoptr (i32 -536810204 to i32*), align 4, !dbg !4834
  %4 = or i32 %3, 458752, !dbg !4834
  store volatile i32 %4, i32* inttoptr (i32 -536810204 to i32*), align 4, !dbg !4834
  ret void, !dbg !4835
}

; Function Attrs: nofree noinline norecurse nounwind optsize
define dso_local void @CachePreInit() local_unnamed_addr #3 !dbg !4836 {
  store volatile i32 0, i32* inttoptr (i32 22216704 to i32*), align 65536, !dbg !4837
  store volatile i32 19, i32* inttoptr (i32 22216708 to i32*), align 4, !dbg !4838
  store volatile i32 3, i32* inttoptr (i32 22216708 to i32*), align 4, !dbg !4839
  store volatile i32 268931328, i32* inttoptr (i32 22282240 to i32*), align 262144, !dbg !4840
  store volatile i32 269713408, i32* inttoptr (i32 22282304 to i32*), align 64, !dbg !4841
  store volatile i32 1, i32* inttoptr (i32 22216748 to i32*), align 4, !dbg !4842
  store volatile i32 781, i32* inttoptr (i32 22216704 to i32*), align 65536, !dbg !4843
  ret void, !dbg !4844
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize readnone willreturn
define dso_local i32 @_close(i32 noundef %0) local_unnamed_addr #5 !dbg !4845 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !4847, metadata !DIExpression()), !dbg !4848
  ret i32 0, !dbg !4849
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize readnone willreturn
define dso_local i32 @_fstat(i32 noundef %0, %struct.stat* nocapture noundef readnone %1) local_unnamed_addr #5 !dbg !4850 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !4900, metadata !DIExpression()), !dbg !4902
  call void @llvm.dbg.value(metadata %struct.stat* %1, metadata !4901, metadata !DIExpression()), !dbg !4902
  ret i32 0, !dbg !4903
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize readnone willreturn
define dso_local i32 @_isatty(i32 noundef %0) local_unnamed_addr #5 !dbg !4904 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !4906, metadata !DIExpression()), !dbg !4907
  ret i32 1, !dbg !4908
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize readnone willreturn
define dso_local i32 @_lseek(i32 noundef %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #5 !dbg !4909 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !4913, metadata !DIExpression()), !dbg !4916
  call void @llvm.dbg.value(metadata i32 %1, metadata !4914, metadata !DIExpression()), !dbg !4916
  call void @llvm.dbg.value(metadata i32 %2, metadata !4915, metadata !DIExpression()), !dbg !4916
  ret i32 0, !dbg !4917
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize readnone willreturn
define dso_local i32 @_open(i8* nocapture noundef readnone %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #5 !dbg !4918 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !4922, metadata !DIExpression()), !dbg !4925
  call void @llvm.dbg.value(metadata i32 %1, metadata !4923, metadata !DIExpression()), !dbg !4925
  call void @llvm.dbg.value(metadata i32 %2, metadata !4924, metadata !DIExpression()), !dbg !4925
  ret i32 -1, !dbg !4926
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize readnone willreturn
define dso_local i32 @_read(i32 noundef %0, i8* nocapture noundef readnone %1, i32 noundef %2) local_unnamed_addr #5 !dbg !4927 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !4931, metadata !DIExpression()), !dbg !4934
  call void @llvm.dbg.value(metadata i8* %1, metadata !4932, metadata !DIExpression()), !dbg !4934
  call void @llvm.dbg.value(metadata i32 %2, metadata !4933, metadata !DIExpression()), !dbg !4934
  ret i32 0, !dbg !4935
}

; Function Attrs: noinline nounwind optsize
define dso_local i32 @_write(i32 noundef %0, i8* nocapture noundef readonly %1, i32 noundef returned %2) local_unnamed_addr #0 !dbg !4936 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !4938, metadata !DIExpression()), !dbg !4942
  call void @llvm.dbg.value(metadata i8* %1, metadata !4939, metadata !DIExpression()), !dbg !4942
  call void @llvm.dbg.value(metadata i32 %2, metadata !4940, metadata !DIExpression()), !dbg !4942
  call void @llvm.dbg.value(metadata i32 0, metadata !4941, metadata !DIExpression()), !dbg !4942
  %4 = icmp sgt i32 %2, 0, !dbg !4943
  br i1 %4, label %5, label %14, !dbg !4946

5:                                                ; preds = %3, %5
  %6 = phi i32 [ %12, %5 ], [ 0, %3 ]
  %7 = phi i8* [ %8, %5 ], [ %1, %3 ]
  call void @llvm.dbg.value(metadata i32 %6, metadata !4941, metadata !DIExpression()), !dbg !4942
  call void @llvm.dbg.value(metadata i8* %7, metadata !4939, metadata !DIExpression()), !dbg !4942
  %8 = getelementptr inbounds i8, i8* %7, i32 1, !dbg !4947
  call void @llvm.dbg.value(metadata i8* %8, metadata !4939, metadata !DIExpression()), !dbg !4942
  %9 = load i8, i8* %7, align 1, !dbg !4949
  %10 = zext i8 %9 to i32, !dbg !4949
  %11 = tail call i32 @__io_putchar(i32 noundef %10) #12, !dbg !4950
  %12 = add nuw nsw i32 %6, 1, !dbg !4951
  call void @llvm.dbg.value(metadata i32 %12, metadata !4941, metadata !DIExpression()), !dbg !4942
  %13 = icmp eq i32 %12, %2, !dbg !4943
  br i1 %13, label %14, label %5, !dbg !4946, !llvm.loop !4952

14:                                               ; preds = %5, %3
  ret i32 %2, !dbg !4954
}

; Function Attrs: noinline nounwind optsize
define dso_local i8* @_sbrk_r(%struct._reent* nocapture noundef readnone %0, i32 noundef %1) local_unnamed_addr #0 !dbg !500 {
  call void @llvm.dbg.value(metadata %struct._reent* %0, metadata !703, metadata !DIExpression()), !dbg !4955
  call void @llvm.dbg.value(metadata i32 %1, metadata !704, metadata !DIExpression()), !dbg !4955
  %3 = tail call i8* asm sideeffect "MRS $0, msp\0A", "=r"() #14, !dbg !4956, !srcloc !4957
  call void @llvm.dbg.value(metadata i8* %3, metadata !706, metadata !DIExpression()), !dbg !4955
  %4 = load i8*, i8** @_sbrk_r.heap_end, align 4, !dbg !4958
  %5 = icmp eq i8* %4, null, !dbg !4960
  %6 = select i1 %5, i8* @end, i8* %4, !dbg !4961
  call void @llvm.dbg.value(metadata i8* %6, metadata !705, metadata !DIExpression()), !dbg !4955
  %7 = getelementptr inbounds i8, i8* %6, i32 %1, !dbg !4962
  %8 = icmp ult i8* %3, %7, !dbg !4964
  %9 = xor i1 %8, true, !dbg !4965
  %10 = or i1 %5, %9, !dbg !4965
  br i1 %10, label %11, label %13, !dbg !4965

11:                                               ; preds = %2
  %12 = select i1 %8, i8* %6, i8* %7, !dbg !4966
  store i8* %12, i8** @_sbrk_r.heap_end, align 4, !dbg !4965
  br label %13, !dbg !4965

13:                                               ; preds = %2, %11
  %14 = select i1 %8, i8* inttoptr (i32 -1 to i8*), i8* %6, !dbg !4966
  ret i8* %14, !dbg !4965
}

; Function Attrs: noinline noreturn nounwind optsize
define dso_local void @_exit(i32 noundef %0) local_unnamed_addr #11 !dbg !4967 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !4969, metadata !DIExpression()), !dbg !4970
  %2 = tail call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.28, i32 0, i32 0)) #12, !dbg !4971
  br label %3, !dbg !4972

3:                                                ; preds = %1, %3
  br label %3, !dbg !4972, !llvm.loop !4973
}

; Function Attrs: noinline nounwind optsize
define dso_local i32 @_kill(i32 noundef %0, i32 noundef %1) local_unnamed_addr #0 !dbg !4975 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !4979, metadata !DIExpression()), !dbg !4981
  call void @llvm.dbg.value(metadata i32 %1, metadata !4980, metadata !DIExpression()), !dbg !4981
  %3 = tail call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1.29, i32 0, i32 0), i32 noundef %1) #12, !dbg !4982
  ret i32 -1, !dbg !4983
}

; Function Attrs: noinline nounwind optsize
define dso_local i32 @_getpid() local_unnamed_addr #0 !dbg !4984 {
  %1 = tail call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2.30, i32 0, i32 0)) #12, !dbg !4989
  ret i32 0, !dbg !4990
}

attributes #0 = { noinline nounwind optsize "frame-pointer"="all" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="cortex-m4" "target-features"="+armv7e-m,+dsp,+fp16,+hwdiv,+strict-align,+thumb-mode,+vfp2sp,+vfp3d16sp,+vfp4d16sp,-aes,-bf16,-cdecp0,-cdecp1,-cdecp2,-cdecp3,-cdecp4,-cdecp5,-cdecp6,-cdecp7,-crc,-crypto,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16fml,-fp64,-fullfp16,-hwdiv-arm,-i8mm,-lob,-mve,-mve.fp,-neon,-pacbti,-ras,-sb,-sha2,-vfp2,-vfp3,-vfp3d16,-vfp3sp,-vfp4,-vfp4d16,-vfp4sp" }
attributes #1 = { nofree nosync nounwind readnone speculatable willreturn }
attributes #2 = { optsize "frame-pointer"="all" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="cortex-m4" "target-features"="+armv7e-m,+dsp,+fp16,+hwdiv,+strict-align,+thumb-mode,+vfp2sp,+vfp3d16sp,+vfp4d16sp,-aes,-bf16,-cdecp0,-cdecp1,-cdecp2,-cdecp3,-cdecp4,-cdecp5,-cdecp6,-cdecp7,-crc,-crypto,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16fml,-fp64,-fullfp16,-hwdiv-arm,-i8mm,-lob,-mve,-mve.fp,-neon,-pacbti,-ras,-sb,-sha2,-vfp2,-vfp3,-vfp3d16,-vfp3sp,-vfp4,-vfp4d16,-vfp4sp" }
attributes #3 = { nofree noinline norecurse nounwind optsize "frame-pointer"="all" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="cortex-m4" "target-features"="+armv7e-m,+dsp,+fp16,+hwdiv,+strict-align,+thumb-mode,+vfp2sp,+vfp3d16sp,+vfp4d16sp,-aes,-bf16,-cdecp0,-cdecp1,-cdecp2,-cdecp3,-cdecp4,-cdecp5,-cdecp6,-cdecp7,-crc,-crypto,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16fml,-fp64,-fullfp16,-hwdiv-arm,-i8mm,-lob,-mve,-mve.fp,-neon,-pacbti,-ras,-sb,-sha2,-vfp2,-vfp3,-vfp3d16,-vfp3sp,-vfp4,-vfp4d16,-vfp4sp" }
attributes #4 = { mustprogress nofree noinline norecurse nounwind optsize willreturn "frame-pointer"="all" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="cortex-m4" "target-features"="+armv7e-m,+dsp,+fp16,+hwdiv,+strict-align,+thumb-mode,+vfp2sp,+vfp3d16sp,+vfp4d16sp,-aes,-bf16,-cdecp0,-cdecp1,-cdecp2,-cdecp3,-cdecp4,-cdecp5,-cdecp6,-cdecp7,-crc,-crypto,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16fml,-fp64,-fullfp16,-hwdiv-arm,-i8mm,-lob,-mve,-mve.fp,-neon,-pacbti,-ras,-sb,-sha2,-vfp2,-vfp3,-vfp3d16,-vfp3sp,-vfp4,-vfp4d16,-vfp4sp" }
attributes #5 = { mustprogress nofree noinline norecurse nosync nounwind optsize readnone willreturn "frame-pointer"="all" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="cortex-m4" "target-features"="+armv7e-m,+dsp,+fp16,+hwdiv,+strict-align,+thumb-mode,+vfp2sp,+vfp3d16sp,+vfp4d16sp,-aes,-bf16,-cdecp0,-cdecp1,-cdecp2,-cdecp3,-cdecp4,-cdecp5,-cdecp6,-cdecp7,-crc,-crypto,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16fml,-fp64,-fullfp16,-hwdiv-arm,-i8mm,-lob,-mve,-mve.fp,-neon,-pacbti,-ras,-sb,-sha2,-vfp2,-vfp3,-vfp3d16,-vfp3sp,-vfp4,-vfp4d16,-vfp4sp" }
attributes #6 = { mustprogress nofree noinline norecurse nosync nounwind optsize readonly willreturn "frame-pointer"="all" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="cortex-m4" "target-features"="+armv7e-m,+dsp,+fp16,+hwdiv,+strict-align,+thumb-mode,+vfp2sp,+vfp3d16sp,+vfp4d16sp,-aes,-bf16,-cdecp0,-cdecp1,-cdecp2,-cdecp3,-cdecp4,-cdecp5,-cdecp6,-cdecp7,-crc,-crypto,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16fml,-fp64,-fullfp16,-hwdiv-arm,-i8mm,-lob,-mve,-mve.fp,-neon,-pacbti,-ras,-sb,-sha2,-vfp2,-vfp3,-vfp3d16,-vfp3sp,-vfp4,-vfp4d16,-vfp4sp" }
attributes #7 = { nofree noinline nounwind optsize "frame-pointer"="all" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="cortex-m4" "target-features"="+armv7e-m,+dsp,+fp16,+hwdiv,+strict-align,+thumb-mode,+vfp2sp,+vfp3d16sp,+vfp4d16sp,-aes,-bf16,-cdecp0,-cdecp1,-cdecp2,-cdecp3,-cdecp4,-cdecp5,-cdecp6,-cdecp7,-crc,-crypto,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16fml,-fp64,-fullfp16,-hwdiv-arm,-i8mm,-lob,-mve,-mve.fp,-neon,-pacbti,-ras,-sb,-sha2,-vfp2,-vfp3,-vfp3d16,-vfp3sp,-vfp4,-vfp4d16,-vfp4sp" }
attributes #8 = { argmemonly nofree nosync nounwind willreturn }
attributes #9 = { nofree nosync nounwind willreturn }
attributes #10 = { noreturn optsize "frame-pointer"="all" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="cortex-m4" "target-features"="+armv7e-m,+dsp,+fp16,+hwdiv,+strict-align,+thumb-mode,+vfp2sp,+vfp3d16sp,+vfp4d16sp,-aes,-bf16,-cdecp0,-cdecp1,-cdecp2,-cdecp3,-cdecp4,-cdecp5,-cdecp6,-cdecp7,-crc,-crypto,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16fml,-fp64,-fullfp16,-hwdiv-arm,-i8mm,-lob,-mve,-mve.fp,-neon,-pacbti,-ras,-sb,-sha2,-vfp2,-vfp3,-vfp3d16,-vfp3sp,-vfp4,-vfp4d16,-vfp4sp" }
attributes #11 = { noinline noreturn nounwind optsize "frame-pointer"="all" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="cortex-m4" "target-features"="+armv7e-m,+dsp,+fp16,+hwdiv,+strict-align,+thumb-mode,+vfp2sp,+vfp3d16sp,+vfp4d16sp,-aes,-bf16,-cdecp0,-cdecp1,-cdecp2,-cdecp3,-cdecp4,-cdecp5,-cdecp6,-cdecp7,-crc,-crypto,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16fml,-fp64,-fullfp16,-hwdiv-arm,-i8mm,-lob,-mve,-mve.fp,-neon,-pacbti,-ras,-sb,-sha2,-vfp2,-vfp3,-vfp3d16,-vfp3sp,-vfp4,-vfp4d16,-vfp4sp" }
attributes #12 = { nobuiltin nounwind optsize "no-builtins" }
attributes #13 = { nobuiltin optsize "no-builtins" }
attributes #14 = { nounwind }
attributes #15 = { nobuiltin noreturn nounwind optsize "no-builtins" }

!llvm.dbg.cu = !{!2, !723, !732, !813, !826, !871, !905, !85, !102, !908, !140, !225, !910, !329, !981, !440, !698, !709}
!llvm.ident = !{!985, !985, !985, !985, !985, !985, !985, !985, !985, !985, !985, !985, !985, !985, !985, !985, !985, !985}
!llvm.module.flags = !{!986, !987, !988, !989, !990, !991, !992, !993, !994}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "g_u4ClkCnt1ms", scope: !2, file: !3, line: 71, type: !79, isLocal: false, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C99, file: !3, producer: "Ubuntu clang version 14.0.6", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !57, globals: !62, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "../../../../../driver/chip/mt7687/src/common/gpt.c", directory: "/home/mjshen/RTOSExploration/Embedded-GUI-for-MT2523/project/mt7687_hdk/hal_examples/trng_generate_random_data/GCC")
!4 = !{!5, !11}
!5 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !6, line: 121, baseType: !7, size: 32, elements: !8)
!6 = !DIFile(filename: "../../../../../driver/chip/mt7687/inc/type_def.h", directory: "/home/mjshen/RTOSExploration/Embedded-GUI-for-MT2523/project/mt7687_hdk/hal_examples/trng_generate_random_data/GCC")
!7 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!8 = !{!9, !10}
!9 = !DIEnumerator(name: "KAL_FALSE", value: 0)
!10 = !DIEnumerator(name: "KAL_TRUE", value: 1)
!11 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "IRQn", file: !12, line: 47, baseType: !13, size: 32, elements: !14)
!12 = !DIFile(filename: "../../../../../driver/CMSIS/Device/MTK/mt7687/Include/mt7687.h", directory: "/home/mjshen/RTOSExploration/Embedded-GUI-for-MT2523/project/mt7687_hdk/hal_examples/trng_generate_random_data/GCC")
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
!66 = !DIFile(filename: "../../../../../driver/chip/mt7687/src/common/include/gpt.h", directory: "/home/mjshen/RTOSExploration/Embedded-GUI-for-MT2523/project/mt7687_hdk/hal_examples/trng_generate_random_data/GCC")
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
!86 = !DIFile(filename: "../../../../../driver/chip/mt7687/src/common/top.c", directory: "/home/mjshen/RTOSExploration/Embedded-GUI-for-MT2523/project/mt7687_hdk/hal_examples/trng_generate_random_data/GCC")
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
!103 = !DIFile(filename: "../../../../../driver/chip/mt7687/src/common/uart.c", directory: "/home/mjshen/RTOSExploration/Embedded-GUI-for-MT2523/project/mt7687_hdk/hal_examples/trng_generate_random_data/GCC")
!104 = !{!105, !111}
!105 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !106, line: 71, baseType: !7, size: 32, elements: !107)
!106 = !DIFile(filename: "../../../../../driver/chip/mt7687/src/common/include/uart.h", directory: "/home/mjshen/RTOSExploration/Embedded-GUI-for-MT2523/project/mt7687_hdk/hal_examples/trng_generate_random_data/GCC")
!107 = !{!108, !109, !110}
!108 = !DIEnumerator(name: "UART_PORT0", value: 0)
!109 = !DIEnumerator(name: "UART_PORT1", value: 1)
!110 = !DIEnumerator(name: "UART_MAX_PORT", value: 2)
!111 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !112, line: 129, baseType: !7, size: 32, elements: !113)
!112 = !DIFile(filename: "../../../../../driver/chip/mt7687/inc/dma_sw.h", directory: "/home/mjshen/RTOSExploration/Embedded-GUI-for-MT2523/project/mt7687_hdk/hal_examples/trng_generate_random_data/GCC")
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
!139 = distinct !DIGlobalVariable(name: "g_cache_status", scope: !140, file: !141, line: 51, type: !221, isLocal: false, isDefinition: true)
!140 = distinct !DICompileUnit(language: DW_LANG_C99, file: !141, producer: "Ubuntu clang version 14.0.6", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !142, retainedTypes: !189, globals: !220, splitDebugInlining: false, nameTableKind: None)
!141 = !DIFile(filename: "../../../../../driver/chip/mt7687/src/hal_cache.c", directory: "/home/mjshen/RTOSExploration/Embedded-GUI-for-MT2523/project/mt7687_hdk/hal_examples/trng_generate_random_data/GCC")
!142 = !{!143, !154, !173, !180}
!143 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !144, line: 163, baseType: !13, size: 32, elements: !145)
!144 = !DIFile(filename: "../../../../../driver/chip/inc/hal_cache.h", directory: "/home/mjshen/RTOSExploration/Embedded-GUI-for-MT2523/project/mt7687_hdk/hal_examples/trng_generate_random_data/GCC")
!145 = !{!146, !147, !148, !149, !150, !151, !152, !153}
!146 = !DIEnumerator(name: "HAL_CACHE_STATUS_INVALID_PARAMETER", value: -7)
!147 = !DIEnumerator(name: "HAL_CACHE_STATUS_ERROR_BUSY", value: -6)
!148 = !DIEnumerator(name: "HAL_CACHE_STATUS_ERROR_CACHE_SIZE", value: -5)
!149 = !DIEnumerator(name: "HAL_CACHE_STATUS_ERROR_REGION", value: -4)
!150 = !DIEnumerator(name: "HAL_CACHE_STATUS_ERROR_REGION_ADDRESS", value: -3)
!151 = !DIEnumerator(name: "HAL_CACHE_STATUS_ERROR_REGION_SIZE", value: -2)
!152 = !DIEnumerator(name: "HAL_CACHE_STATUS_ERROR", value: -1)
!153 = !DIEnumerator(name: "HAL_CACHE_STATUS_OK", value: 0)
!154 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !144, line: 186, baseType: !7, size: 32, elements: !155)
!155 = !{!156, !157, !158, !159, !160, !161, !162, !163, !164, !165, !166, !167, !168, !169, !170, !171, !172}
!156 = !DIEnumerator(name: "HAL_CACHE_REGION_0", value: 0)
!157 = !DIEnumerator(name: "HAL_CACHE_REGION_1", value: 1)
!158 = !DIEnumerator(name: "HAL_CACHE_REGION_2", value: 2)
!159 = !DIEnumerator(name: "HAL_CACHE_REGION_3", value: 3)
!160 = !DIEnumerator(name: "HAL_CACHE_REGION_4", value: 4)
!161 = !DIEnumerator(name: "HAL_CACHE_REGION_5", value: 5)
!162 = !DIEnumerator(name: "HAL_CACHE_REGION_6", value: 6)
!163 = !DIEnumerator(name: "HAL_CACHE_REGION_7", value: 7)
!164 = !DIEnumerator(name: "HAL_CACHE_REGION_8", value: 8)
!165 = !DIEnumerator(name: "HAL_CACHE_REGION_9", value: 9)
!166 = !DIEnumerator(name: "HAL_CACHE_REGION_10", value: 10)
!167 = !DIEnumerator(name: "HAL_CACHE_REGION_11", value: 11)
!168 = !DIEnumerator(name: "HAL_CACHE_REGION_12", value: 12)
!169 = !DIEnumerator(name: "HAL_CACHE_REGION_13", value: 13)
!170 = !DIEnumerator(name: "HAL_CACHE_REGION_14", value: 14)
!171 = !DIEnumerator(name: "HAL_CACHE_REGION_15", value: 15)
!172 = !DIEnumerator(name: "HAL_CACHE_REGION_MAX", value: 16)
!173 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !144, line: 176, baseType: !7, size: 32, elements: !174)
!174 = !{!175, !176, !177, !178, !179}
!175 = !DIEnumerator(name: "HAL_CACHE_SIZE_0KB", value: 0)
!176 = !DIEnumerator(name: "HAL_CACHE_SIZE_8KB", value: 1)
!177 = !DIEnumerator(name: "HAL_CACHE_SIZE_16KB", value: 2)
!178 = !DIEnumerator(name: "HAL_CACHE_SIZE_32KB", value: 3)
!179 = !DIEnumerator(name: "HAL_CACHE_SIZE_MAX", value: 4)
!180 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !181, line: 99, baseType: !7, size: 32, elements: !182)
!181 = !DIFile(filename: "../../../../../driver/chip/mt7687/inc/hal_cache_internal.h", directory: "/home/mjshen/RTOSExploration/Embedded-GUI-for-MT2523/project/mt7687_hdk/hal_examples/trng_generate_random_data/GCC")
!182 = !{!183, !184, !185, !186, !187, !188}
!183 = !DIEnumerator(name: "CACHE_INVALIDATE_ALL_LINES", value: 1)
!184 = !DIEnumerator(name: "CACHE_INVALIDATE_ONE_LINE_BY_ADDRESS", value: 2)
!185 = !DIEnumerator(name: "CACHE_INVALIDATE_ONE_LINE_BY_SET_WAY", value: 4)
!186 = !DIEnumerator(name: "CACHE_FLUSH_ALL_LINES", value: 9)
!187 = !DIEnumerator(name: "CACHE_FLUSH_ONE_LINE_BY_ADDRESS", value: 10)
!188 = !DIEnumerator(name: "CACHE_FLUSH_ONE_LINE_BY_SET_WAY", value: 12)
!189 = !{!190, !219}
!190 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !191, size: 32)
!191 = !DIDerivedType(tag: DW_TAG_typedef, name: "CACHE_REGISTER_T", file: !192, line: 72, baseType: !193)
!192 = !DIFile(filename: "../../../../../driver/chip/mt7687/inc/hal_cache_hw.h", directory: "/home/mjshen/RTOSExploration/Embedded-GUI-for-MT2523/project/mt7687_hdk/hal_examples/trng_generate_random_data/GCC")
!193 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !192, line: 56, size: 525312, elements: !194)
!194 = !{!195, !196, !197, !198, !199, !200, !201, !202, !203, !204, !205, !209, !210, !214, !218}
!195 = !DIDerivedType(tag: DW_TAG_member, name: "CACHE_CON", scope: !193, file: !192, line: 57, baseType: !91, size: 32)
!196 = !DIDerivedType(tag: DW_TAG_member, name: "CACHE_OP", scope: !193, file: !192, line: 58, baseType: !91, size: 32, offset: 32)
!197 = !DIDerivedType(tag: DW_TAG_member, name: "CACHE_HCNT0L", scope: !193, file: !192, line: 59, baseType: !91, size: 32, offset: 64)
!198 = !DIDerivedType(tag: DW_TAG_member, name: "CACHE_HCNT0U", scope: !193, file: !192, line: 60, baseType: !91, size: 32, offset: 96)
!199 = !DIDerivedType(tag: DW_TAG_member, name: "CACHE_CCNT0L", scope: !193, file: !192, line: 61, baseType: !91, size: 32, offset: 128)
!200 = !DIDerivedType(tag: DW_TAG_member, name: "CACHE_CCNT0U", scope: !193, file: !192, line: 62, baseType: !91, size: 32, offset: 160)
!201 = !DIDerivedType(tag: DW_TAG_member, name: "CACHE_HCNT1L", scope: !193, file: !192, line: 63, baseType: !91, size: 32, offset: 192)
!202 = !DIDerivedType(tag: DW_TAG_member, name: "CACHE_HCNT1U", scope: !193, file: !192, line: 64, baseType: !91, size: 32, offset: 224)
!203 = !DIDerivedType(tag: DW_TAG_member, name: "CACHE_CCNT1L", scope: !193, file: !192, line: 65, baseType: !91, size: 32, offset: 256)
!204 = !DIDerivedType(tag: DW_TAG_member, name: "CACHE_CCNT1U", scope: !193, file: !192, line: 66, baseType: !91, size: 32, offset: 288)
!205 = !DIDerivedType(tag: DW_TAG_member, name: "RESERVED0", scope: !193, file: !192, line: 67, baseType: !206, size: 32, offset: 320)
!206 = !DICompositeType(tag: DW_TAG_array_type, baseType: !92, size: 32, elements: !207)
!207 = !{!208}
!208 = !DISubrange(count: 1)
!209 = !DIDerivedType(tag: DW_TAG_member, name: "CACHE_REGION_EN", scope: !193, file: !192, line: 68, baseType: !91, size: 32, offset: 352)
!210 = !DIDerivedType(tag: DW_TAG_member, name: "RESERVED1", scope: !193, file: !192, line: 69, baseType: !211, size: 523904, offset: 384)
!211 = !DICompositeType(tag: DW_TAG_array_type, baseType: !92, size: 523904, elements: !212)
!212 = !{!213}
!213 = !DISubrange(count: 16372)
!214 = !DIDerivedType(tag: DW_TAG_member, name: "CACHE_ENTRY_N", scope: !193, file: !192, line: 70, baseType: !215, size: 512, offset: 524288)
!215 = !DICompositeType(tag: DW_TAG_array_type, baseType: !91, size: 512, elements: !216)
!216 = !{!217}
!217 = !DISubrange(count: 16)
!218 = !DIDerivedType(tag: DW_TAG_member, name: "CACHE_END_ENTRY_N", scope: !193, file: !192, line: 71, baseType: !215, size: 512, offset: 524800)
!219 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 32)
!220 = !{!138}
!221 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !222)
!222 = !DIBasicType(name: "_Bool", size: 8, encoding: DW_ATE_boolean)
!223 = !DIGlobalVariableExpression(var: !224, expr: !DIExpression())
!224 = distinct !DIGlobalVariable(name: "nvic_function_table", scope: !225, file: !226, line: 53, type: !316, isLocal: false, isDefinition: true)
!225 = distinct !DICompileUnit(language: DW_LANG_C99, file: !226, producer: "Ubuntu clang version 14.0.6", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !227, retainedTypes: !236, globals: !315, splitDebugInlining: false, nameTableKind: None)
!226 = !DIFile(filename: "../../../../../driver/chip/mt7687/src/hal_nvic.c", directory: "/home/mjshen/RTOSExploration/Embedded-GUI-for-MT2523/project/mt7687_hdk/hal_examples/trng_generate_random_data/GCC")
!227 = !{!228, !11}
!228 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !229, line: 152, baseType: !13, size: 32, elements: !230)
!229 = !DIFile(filename: "../../../../../driver/chip/inc/hal_nvic.h", directory: "/home/mjshen/RTOSExploration/Embedded-GUI-for-MT2523/project/mt7687_hdk/hal_examples/trng_generate_random_data/GCC")
!230 = !{!231, !232, !233, !234, !235}
!231 = !DIEnumerator(name: "HAL_NVIC_STATUS_ERROR_NO_ISR", value: -4)
!232 = !DIEnumerator(name: "HAL_NVIC_STATUS_ERROR_IRQ_NUMBER", value: -3)
!233 = !DIEnumerator(name: "HAL_NVIC_STATUS_INVALID_PARAMETER", value: -2)
!234 = !DIEnumerator(name: "HAL_NVIC_STATUS_ERROR", value: -1)
!235 = !DIEnumerator(name: "HAL_NVIC_STATUS_OK", value: 0)
!236 = !{!237, !219, !92, !238, !240, !276}
!237 = !DIDerivedType(tag: DW_TAG_typedef, name: "hal_nvic_irq_t", file: !12, line: 97, baseType: !61)
!238 = !DIDerivedType(tag: DW_TAG_typedef, name: "int32_t", file: !93, line: 44, baseType: !239)
!239 = !DIDerivedType(tag: DW_TAG_typedef, name: "__int32_t", file: !95, line: 77, baseType: !13)
!240 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !241, size: 32)
!241 = !DIDerivedType(tag: DW_TAG_typedef, name: "NVIC_Type", file: !242, line: 378, baseType: !243)
!242 = !DIFile(filename: "../../../../../driver/CMSIS/Include/core_cm4.h", directory: "/home/mjshen/RTOSExploration/Embedded-GUI-for-MT2523/project/mt7687_hdk/hal_examples/trng_generate_random_data/GCC")
!243 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !242, line: 363, size: 28704, elements: !244)
!244 = !{!245, !249, !253, !254, !255, !256, !257, !258, !259, !260, !264, !271, !275}
!245 = !DIDerivedType(tag: DW_TAG_member, name: "ISER", scope: !243, file: !242, line: 365, baseType: !246, size: 256)
!246 = !DICompositeType(tag: DW_TAG_array_type, baseType: !91, size: 256, elements: !247)
!247 = !{!248}
!248 = !DISubrange(count: 8)
!249 = !DIDerivedType(tag: DW_TAG_member, name: "RESERVED0", scope: !243, file: !242, line: 366, baseType: !250, size: 768, offset: 256)
!250 = !DICompositeType(tag: DW_TAG_array_type, baseType: !92, size: 768, elements: !251)
!251 = !{!252}
!252 = !DISubrange(count: 24)
!253 = !DIDerivedType(tag: DW_TAG_member, name: "ICER", scope: !243, file: !242, line: 367, baseType: !246, size: 256, offset: 1024)
!254 = !DIDerivedType(tag: DW_TAG_member, name: "RSERVED1", scope: !243, file: !242, line: 368, baseType: !250, size: 768, offset: 1280)
!255 = !DIDerivedType(tag: DW_TAG_member, name: "ISPR", scope: !243, file: !242, line: 369, baseType: !246, size: 256, offset: 2048)
!256 = !DIDerivedType(tag: DW_TAG_member, name: "RESERVED2", scope: !243, file: !242, line: 370, baseType: !250, size: 768, offset: 2304)
!257 = !DIDerivedType(tag: DW_TAG_member, name: "ICPR", scope: !243, file: !242, line: 371, baseType: !246, size: 256, offset: 3072)
!258 = !DIDerivedType(tag: DW_TAG_member, name: "RESERVED3", scope: !243, file: !242, line: 372, baseType: !250, size: 768, offset: 3328)
!259 = !DIDerivedType(tag: DW_TAG_member, name: "IABR", scope: !243, file: !242, line: 373, baseType: !246, size: 256, offset: 4096)
!260 = !DIDerivedType(tag: DW_TAG_member, name: "RESERVED4", scope: !243, file: !242, line: 374, baseType: !261, size: 1792, offset: 4352)
!261 = !DICompositeType(tag: DW_TAG_array_type, baseType: !92, size: 1792, elements: !262)
!262 = !{!263}
!263 = !DISubrange(count: 56)
!264 = !DIDerivedType(tag: DW_TAG_member, name: "IP", scope: !243, file: !242, line: 375, baseType: !265, size: 1920, offset: 6144)
!265 = !DICompositeType(tag: DW_TAG_array_type, baseType: !266, size: 1920, elements: !269)
!266 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !267)
!267 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint8_t", file: !93, line: 24, baseType: !268)
!268 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint8_t", file: !95, line: 43, baseType: !134)
!269 = !{!270}
!270 = !DISubrange(count: 240)
!271 = !DIDerivedType(tag: DW_TAG_member, name: "RESERVED5", scope: !243, file: !242, line: 376, baseType: !272, size: 20608, offset: 8064)
!272 = !DICompositeType(tag: DW_TAG_array_type, baseType: !92, size: 20608, elements: !273)
!273 = !{!274}
!274 = !DISubrange(count: 644)
!275 = !DIDerivedType(tag: DW_TAG_member, name: "STIR", scope: !243, file: !242, line: 377, baseType: !91, size: 32, offset: 28672)
!276 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !277, size: 32)
!277 = !DIDerivedType(tag: DW_TAG_typedef, name: "SCB_Type", file: !242, line: 418, baseType: !278)
!278 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !242, line: 395, size: 1120, elements: !279)
!279 = !{!280, !282, !283, !284, !285, !286, !287, !291, !292, !293, !294, !295, !296, !297, !298, !302, !303, !304, !308, !312, !314}
!280 = !DIDerivedType(tag: DW_TAG_member, name: "CPUID", scope: !278, file: !242, line: 397, baseType: !281, size: 32)
!281 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !91)
!282 = !DIDerivedType(tag: DW_TAG_member, name: "ICSR", scope: !278, file: !242, line: 398, baseType: !91, size: 32, offset: 32)
!283 = !DIDerivedType(tag: DW_TAG_member, name: "VTOR", scope: !278, file: !242, line: 399, baseType: !91, size: 32, offset: 64)
!284 = !DIDerivedType(tag: DW_TAG_member, name: "AIRCR", scope: !278, file: !242, line: 400, baseType: !91, size: 32, offset: 96)
!285 = !DIDerivedType(tag: DW_TAG_member, name: "SCR", scope: !278, file: !242, line: 401, baseType: !91, size: 32, offset: 128)
!286 = !DIDerivedType(tag: DW_TAG_member, name: "CCR", scope: !278, file: !242, line: 402, baseType: !91, size: 32, offset: 160)
!287 = !DIDerivedType(tag: DW_TAG_member, name: "SHP", scope: !278, file: !242, line: 403, baseType: !288, size: 96, offset: 192)
!288 = !DICompositeType(tag: DW_TAG_array_type, baseType: !266, size: 96, elements: !289)
!289 = !{!290}
!290 = !DISubrange(count: 12)
!291 = !DIDerivedType(tag: DW_TAG_member, name: "SHCSR", scope: !278, file: !242, line: 404, baseType: !91, size: 32, offset: 288)
!292 = !DIDerivedType(tag: DW_TAG_member, name: "CFSR", scope: !278, file: !242, line: 405, baseType: !91, size: 32, offset: 320)
!293 = !DIDerivedType(tag: DW_TAG_member, name: "HFSR", scope: !278, file: !242, line: 406, baseType: !91, size: 32, offset: 352)
!294 = !DIDerivedType(tag: DW_TAG_member, name: "DFSR", scope: !278, file: !242, line: 407, baseType: !91, size: 32, offset: 384)
!295 = !DIDerivedType(tag: DW_TAG_member, name: "MMFAR", scope: !278, file: !242, line: 408, baseType: !91, size: 32, offset: 416)
!296 = !DIDerivedType(tag: DW_TAG_member, name: "BFAR", scope: !278, file: !242, line: 409, baseType: !91, size: 32, offset: 448)
!297 = !DIDerivedType(tag: DW_TAG_member, name: "AFSR", scope: !278, file: !242, line: 410, baseType: !91, size: 32, offset: 480)
!298 = !DIDerivedType(tag: DW_TAG_member, name: "PFR", scope: !278, file: !242, line: 411, baseType: !299, size: 64, offset: 512)
!299 = !DICompositeType(tag: DW_TAG_array_type, baseType: !281, size: 64, elements: !300)
!300 = !{!301}
!301 = !DISubrange(count: 2)
!302 = !DIDerivedType(tag: DW_TAG_member, name: "DFR", scope: !278, file: !242, line: 412, baseType: !281, size: 32, offset: 576)
!303 = !DIDerivedType(tag: DW_TAG_member, name: "ADR", scope: !278, file: !242, line: 413, baseType: !281, size: 32, offset: 608)
!304 = !DIDerivedType(tag: DW_TAG_member, name: "MMFR", scope: !278, file: !242, line: 414, baseType: !305, size: 128, offset: 640)
!305 = !DICompositeType(tag: DW_TAG_array_type, baseType: !281, size: 128, elements: !306)
!306 = !{!307}
!307 = !DISubrange(count: 4)
!308 = !DIDerivedType(tag: DW_TAG_member, name: "ISAR", scope: !278, file: !242, line: 415, baseType: !309, size: 160, offset: 768)
!309 = !DICompositeType(tag: DW_TAG_array_type, baseType: !281, size: 160, elements: !310)
!310 = !{!311}
!311 = !DISubrange(count: 5)
!312 = !DIDerivedType(tag: DW_TAG_member, name: "RESERVED0", scope: !278, file: !242, line: 416, baseType: !313, size: 160, offset: 928)
!313 = !DICompositeType(tag: DW_TAG_array_type, baseType: !92, size: 160, elements: !310)
!314 = !DIDerivedType(tag: DW_TAG_member, name: "CPACR", scope: !278, file: !242, line: 417, baseType: !91, size: 32, offset: 1088)
!315 = !{!223}
!316 = !DICompositeType(tag: DW_TAG_array_type, baseType: !317, size: 6144, elements: !325)
!317 = !DIDerivedType(tag: DW_TAG_typedef, name: "nvic_function_t", file: !226, line: 50, baseType: !318)
!318 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !226, line: 47, size: 64, elements: !319)
!319 = !{!320, !324}
!320 = !DIDerivedType(tag: DW_TAG_member, name: "nvic_callback", scope: !318, file: !226, line: 48, baseType: !321, size: 32)
!321 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !322, size: 32)
!322 = !DISubroutineType(types: !323)
!323 = !{null, !237}
!324 = !DIDerivedType(tag: DW_TAG_member, name: "irq_pending", scope: !318, file: !226, line: 49, baseType: !92, size: 32, offset: 32)
!325 = !{!326}
!326 = !DISubrange(count: 96)
!327 = !DIGlobalVariableExpression(var: !328, expr: !DIExpression())
!328 = distinct !DIGlobalVariable(name: "g_uart_context_table", scope: !329, file: !330, line: 77, type: !396, isLocal: true, isDefinition: true)
!329 = distinct !DICompileUnit(language: DW_LANG_C99, file: !330, producer: "Ubuntu clang version 14.0.6", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !331, retainedTypes: !382, globals: !384, splitDebugInlining: false, nameTableKind: None)
!330 = !DIFile(filename: "../../../../../driver/chip/mt7687/src/hal_uart.c", directory: "/home/mjshen/RTOSExploration/Embedded-GUI-for-MT2523/project/mt7687_hdk/hal_examples/trng_generate_random_data/GCC")
!331 = !{!332, !340, !346, !362, !368, !372, !105, !111, !377}
!332 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !333, line: 345, baseType: !13, size: 32, elements: !334)
!333 = !DIFile(filename: "../../../../../driver/chip/inc/hal_uart.h", directory: "/home/mjshen/RTOSExploration/Embedded-GUI-for-MT2523/project/mt7687_hdk/hal_examples/trng_generate_random_data/GCC")
!334 = !{!335, !336, !337, !338, !339}
!335 = !DIEnumerator(name: "HAL_UART_STATUS_ERROR_PARAMETER", value: -4)
!336 = !DIEnumerator(name: "HAL_UART_STATUS_ERROR_BUSY", value: -3)
!337 = !DIEnumerator(name: "HAL_UART_STATUS_ERROR_UNINITIALIZED", value: -2)
!338 = !DIEnumerator(name: "HAL_UART_STATUS_ERROR", value: -1)
!339 = !DIEnumerator(name: "HAL_UART_STATUS_OK", value: 0)
!340 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !341, line: 109, baseType: !7, size: 32, elements: !342)
!341 = !DIFile(filename: "../../../../../driver/chip/mt7687/inc/hal_platform.h", directory: "/home/mjshen/RTOSExploration/Embedded-GUI-for-MT2523/project/mt7687_hdk/hal_examples/trng_generate_random_data/GCC")
!342 = !{!343, !344, !345}
!343 = !DIEnumerator(name: "HAL_UART_0", value: 0)
!344 = !DIEnumerator(name: "HAL_UART_1", value: 1)
!345 = !DIEnumerator(name: "HAL_UART_MAX", value: 2)
!346 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !333, line: 302, baseType: !7, size: 32, elements: !347)
!347 = !{!348, !349, !350, !351, !352, !353, !354, !355, !356, !357, !358, !359, !360, !361}
!348 = !DIEnumerator(name: "HAL_UART_BAUDRATE_110", value: 0)
!349 = !DIEnumerator(name: "HAL_UART_BAUDRATE_300", value: 1)
!350 = !DIEnumerator(name: "HAL_UART_BAUDRATE_1200", value: 2)
!351 = !DIEnumerator(name: "HAL_UART_BAUDRATE_2400", value: 3)
!352 = !DIEnumerator(name: "HAL_UART_BAUDRATE_4800", value: 4)
!353 = !DIEnumerator(name: "HAL_UART_BAUDRATE_9600", value: 5)
!354 = !DIEnumerator(name: "HAL_UART_BAUDRATE_19200", value: 6)
!355 = !DIEnumerator(name: "HAL_UART_BAUDRATE_38400", value: 7)
!356 = !DIEnumerator(name: "HAL_UART_BAUDRATE_57600", value: 8)
!357 = !DIEnumerator(name: "HAL_UART_BAUDRATE_115200", value: 9)
!358 = !DIEnumerator(name: "HAL_UART_BAUDRATE_230400", value: 10)
!359 = !DIEnumerator(name: "HAL_UART_BAUDRATE_460800", value: 11)
!360 = !DIEnumerator(name: "HAL_UART_BAUDRATE_921600", value: 12)
!361 = !DIEnumerator(name: "HAL_UART_BAUDRATE_MAX", value: 13)
!362 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !333, line: 321, baseType: !7, size: 32, elements: !363)
!363 = !{!364, !365, !366, !367}
!364 = !DIEnumerator(name: "HAL_UART_WORD_LENGTH_5", value: 0)
!365 = !DIEnumerator(name: "HAL_UART_WORD_LENGTH_6", value: 1)
!366 = !DIEnumerator(name: "HAL_UART_WORD_LENGTH_7", value: 2)
!367 = !DIEnumerator(name: "HAL_UART_WORD_LENGTH_8", value: 3)
!368 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !333, line: 330, baseType: !7, size: 32, elements: !369)
!369 = !{!370, !371}
!370 = !DIEnumerator(name: "HAL_UART_STOP_BIT_1", value: 0)
!371 = !DIEnumerator(name: "HAL_UART_STOP_BIT_2", value: 1)
!372 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !333, line: 337, baseType: !7, size: 32, elements: !373)
!373 = !{!374, !375, !376}
!374 = !DIEnumerator(name: "HAL_UART_PARITY_NONE", value: 0)
!375 = !DIEnumerator(name: "HAL_UART_PARITY_ODD", value: 1)
!376 = !DIEnumerator(name: "HAL_UART_PARITY_EVEN", value: 2)
!377 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !333, line: 355, baseType: !13, size: 32, elements: !378)
!378 = !{!379, !380, !381}
!379 = !DIEnumerator(name: "HAL_UART_EVENT_TRANSACTION_ERROR", value: -1)
!380 = !DIEnumerator(name: "HAL_UART_EVENT_READY_TO_READ", value: 1)
!381 = !DIEnumerator(name: "HAL_UART_EVENT_READY_TO_WRITE", value: 2)
!382 = !{!7, !219, !134, !383, !267}
!383 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_unsigned_char)
!384 = !{!327, !385}
!385 = !DIGlobalVariableExpression(var: !386, expr: !DIExpression())
!386 = distinct !DIGlobalVariable(name: "func_tbl", scope: !387, file: !330, line: 536, type: !394, isLocal: true, isDefinition: true)
!387 = distinct !DISubprogram(name: "hal_uart_map_receive_callback", scope: !330, file: !330, line: 534, type: !388, scopeLine: 535, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !329, retainedNodes: !392)
!388 = !DISubroutineType(types: !389)
!389 = !{!390, !391}
!390 = !DIDerivedType(tag: DW_TAG_typedef, name: "VOID_FUNC", file: !112, line: 197, baseType: !74)
!391 = !DIDerivedType(tag: DW_TAG_typedef, name: "hal_uart_port_t", file: !341, line: 113, baseType: !340)
!392 = !{!393}
!393 = !DILocalVariable(name: "uart_port", arg: 1, scope: !387, file: !330, line: 534, type: !391)
!394 = !DICompositeType(tag: DW_TAG_array_type, baseType: !395, size: 64, elements: !300)
!395 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !390)
!396 = !DICompositeType(tag: DW_TAG_array_type, baseType: !397, size: 1024, elements: !300)
!397 = !DIDerivedType(tag: DW_TAG_typedef, name: "uart_context_t", file: !330, line: 75, baseType: !398)
!398 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !330, line: 68, size: 512, elements: !399)
!399 = !{!400, !401, !413, !414, !425, !426}
!400 = !DIDerivedType(tag: DW_TAG_member, name: "basic_config_present", scope: !398, file: !330, line: 69, baseType: !222, size: 8)
!401 = !DIDerivedType(tag: DW_TAG_member, name: "basic_config", scope: !398, file: !330, line: 70, baseType: !402, size: 128, offset: 32)
!402 = !DIDerivedType(tag: DW_TAG_typedef, name: "hal_uart_config_t", file: !333, line: 378, baseType: !403)
!403 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !333, line: 373, size: 128, elements: !404)
!404 = !{!405, !407, !409, !411}
!405 = !DIDerivedType(tag: DW_TAG_member, name: "baudrate", scope: !403, file: !333, line: 374, baseType: !406, size: 32)
!406 = !DIDerivedType(tag: DW_TAG_typedef, name: "hal_uart_baudrate_t", file: !333, line: 317, baseType: !346)
!407 = !DIDerivedType(tag: DW_TAG_member, name: "word_length", scope: !403, file: !333, line: 375, baseType: !408, size: 32, offset: 32)
!408 = !DIDerivedType(tag: DW_TAG_typedef, name: "hal_uart_word_length_t", file: !333, line: 326, baseType: !362)
!409 = !DIDerivedType(tag: DW_TAG_member, name: "stop_bit", scope: !403, file: !333, line: 376, baseType: !410, size: 32, offset: 64)
!410 = !DIDerivedType(tag: DW_TAG_typedef, name: "hal_uart_stop_bit_t", file: !333, line: 333, baseType: !368)
!411 = !DIDerivedType(tag: DW_TAG_member, name: "parity", scope: !403, file: !333, line: 377, baseType: !412, size: 32, offset: 96)
!412 = !DIDerivedType(tag: DW_TAG_typedef, name: "hal_uart_parity_t", file: !333, line: 341, baseType: !372)
!413 = !DIDerivedType(tag: DW_TAG_member, name: "callback_present", scope: !398, file: !330, line: 71, baseType: !222, size: 8, offset: 160)
!414 = !DIDerivedType(tag: DW_TAG_member, name: "callback_config", scope: !398, file: !330, line: 72, baseType: !415, size: 64, offset: 192)
!415 = !DIDerivedType(tag: DW_TAG_typedef, name: "hal_uart_callback_config_t", file: !330, line: 66, baseType: !416)
!416 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !330, line: 63, size: 64, elements: !417)
!417 = !{!418, !424}
!418 = !DIDerivedType(tag: DW_TAG_member, name: "callback", scope: !416, file: !330, line: 64, baseType: !419, size: 32)
!419 = !DIDerivedType(tag: DW_TAG_typedef, name: "hal_uart_callback_t", file: !333, line: 410, baseType: !420)
!420 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !421, size: 32)
!421 = !DISubroutineType(types: !422)
!422 = !{null, !423, !219}
!423 = !DIDerivedType(tag: DW_TAG_typedef, name: "hal_uart_callback_event_t", file: !333, line: 359, baseType: !377)
!424 = !DIDerivedType(tag: DW_TAG_member, name: "user_data", scope: !416, file: !330, line: 65, baseType: !219, size: 32, offset: 32)
!425 = !DIDerivedType(tag: DW_TAG_member, name: "dma_config_present", scope: !398, file: !330, line: 73, baseType: !222, size: 8, offset: 256)
!426 = !DIDerivedType(tag: DW_TAG_member, name: "dma_config", scope: !398, file: !330, line: 74, baseType: !427, size: 224, offset: 288)
!427 = !DIDerivedType(tag: DW_TAG_typedef, name: "hal_uart_dma_config_t", file: !333, line: 390, baseType: !428)
!428 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !333, line: 382, size: 224, elements: !429)
!429 = !{!430, !432, !433, !434, !435, !436, !437}
!430 = !DIDerivedType(tag: DW_TAG_member, name: "send_vfifo_buffer", scope: !428, file: !333, line: 383, baseType: !431, size: 32)
!431 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !267, size: 32)
!432 = !DIDerivedType(tag: DW_TAG_member, name: "send_vfifo_buffer_size", scope: !428, file: !333, line: 384, baseType: !92, size: 32, offset: 32)
!433 = !DIDerivedType(tag: DW_TAG_member, name: "send_vfifo_threshold_size", scope: !428, file: !333, line: 385, baseType: !92, size: 32, offset: 64)
!434 = !DIDerivedType(tag: DW_TAG_member, name: "receive_vfifo_buffer", scope: !428, file: !333, line: 386, baseType: !431, size: 32, offset: 96)
!435 = !DIDerivedType(tag: DW_TAG_member, name: "receive_vfifo_buffer_size", scope: !428, file: !333, line: 387, baseType: !92, size: 32, offset: 128)
!436 = !DIDerivedType(tag: DW_TAG_member, name: "receive_vfifo_threshold_size", scope: !428, file: !333, line: 388, baseType: !92, size: 32, offset: 160)
!437 = !DIDerivedType(tag: DW_TAG_member, name: "receive_vfifo_alert_size", scope: !428, file: !333, line: 389, baseType: !92, size: 32, offset: 192)
!438 = !DIGlobalVariableExpression(var: !439, expr: !DIExpression())
!439 = distinct !DIGlobalVariable(name: "SystemCoreClock", scope: !440, file: !441, line: 59, type: !92, isLocal: false, isDefinition: true)
!440 = distinct !DICompileUnit(language: DW_LANG_C99, file: !441, producer: "Ubuntu clang version 14.0.6", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !442, globals: !495, splitDebugInlining: false, nameTableKind: None)
!441 = !DIFile(filename: "../../../../../project/mt7687_hdk/hal_examples/trng_generate_random_data/src/system_mt7687.c", directory: "/home/mjshen/RTOSExploration/Embedded-GUI-for-MT2523/project/mt7687_hdk/hal_examples/trng_generate_random_data/GCC")
!442 = !{!443, !451, !476}
!443 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !444, size: 32)
!444 = !DIDerivedType(tag: DW_TAG_typedef, name: "SysTick_Type", file: !242, line: 656, baseType: !445)
!445 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !242, line: 650, size: 128, elements: !446)
!446 = !{!447, !448, !449, !450}
!447 = !DIDerivedType(tag: DW_TAG_member, name: "CTRL", scope: !445, file: !242, line: 652, baseType: !91, size: 32)
!448 = !DIDerivedType(tag: DW_TAG_member, name: "LOAD", scope: !445, file: !242, line: 653, baseType: !91, size: 32, offset: 32)
!449 = !DIDerivedType(tag: DW_TAG_member, name: "VAL", scope: !445, file: !242, line: 654, baseType: !91, size: 32, offset: 64)
!450 = !DIDerivedType(tag: DW_TAG_member, name: "CALIB", scope: !445, file: !242, line: 655, baseType: !281, size: 32, offset: 96)
!451 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !452, size: 32)
!452 = !DIDerivedType(tag: DW_TAG_typedef, name: "SCB_Type", file: !242, line: 418, baseType: !453)
!453 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !242, line: 395, size: 1120, elements: !454)
!454 = !{!455, !456, !457, !458, !459, !460, !461, !462, !463, !464, !465, !466, !467, !468, !469, !470, !471, !472, !473, !474, !475}
!455 = !DIDerivedType(tag: DW_TAG_member, name: "CPUID", scope: !453, file: !242, line: 397, baseType: !281, size: 32)
!456 = !DIDerivedType(tag: DW_TAG_member, name: "ICSR", scope: !453, file: !242, line: 398, baseType: !91, size: 32, offset: 32)
!457 = !DIDerivedType(tag: DW_TAG_member, name: "VTOR", scope: !453, file: !242, line: 399, baseType: !91, size: 32, offset: 64)
!458 = !DIDerivedType(tag: DW_TAG_member, name: "AIRCR", scope: !453, file: !242, line: 400, baseType: !91, size: 32, offset: 96)
!459 = !DIDerivedType(tag: DW_TAG_member, name: "SCR", scope: !453, file: !242, line: 401, baseType: !91, size: 32, offset: 128)
!460 = !DIDerivedType(tag: DW_TAG_member, name: "CCR", scope: !453, file: !242, line: 402, baseType: !91, size: 32, offset: 160)
!461 = !DIDerivedType(tag: DW_TAG_member, name: "SHP", scope: !453, file: !242, line: 403, baseType: !288, size: 96, offset: 192)
!462 = !DIDerivedType(tag: DW_TAG_member, name: "SHCSR", scope: !453, file: !242, line: 404, baseType: !91, size: 32, offset: 288)
!463 = !DIDerivedType(tag: DW_TAG_member, name: "CFSR", scope: !453, file: !242, line: 405, baseType: !91, size: 32, offset: 320)
!464 = !DIDerivedType(tag: DW_TAG_member, name: "HFSR", scope: !453, file: !242, line: 406, baseType: !91, size: 32, offset: 352)
!465 = !DIDerivedType(tag: DW_TAG_member, name: "DFSR", scope: !453, file: !242, line: 407, baseType: !91, size: 32, offset: 384)
!466 = !DIDerivedType(tag: DW_TAG_member, name: "MMFAR", scope: !453, file: !242, line: 408, baseType: !91, size: 32, offset: 416)
!467 = !DIDerivedType(tag: DW_TAG_member, name: "BFAR", scope: !453, file: !242, line: 409, baseType: !91, size: 32, offset: 448)
!468 = !DIDerivedType(tag: DW_TAG_member, name: "AFSR", scope: !453, file: !242, line: 410, baseType: !91, size: 32, offset: 480)
!469 = !DIDerivedType(tag: DW_TAG_member, name: "PFR", scope: !453, file: !242, line: 411, baseType: !299, size: 64, offset: 512)
!470 = !DIDerivedType(tag: DW_TAG_member, name: "DFR", scope: !453, file: !242, line: 412, baseType: !281, size: 32, offset: 576)
!471 = !DIDerivedType(tag: DW_TAG_member, name: "ADR", scope: !453, file: !242, line: 413, baseType: !281, size: 32, offset: 608)
!472 = !DIDerivedType(tag: DW_TAG_member, name: "MMFR", scope: !453, file: !242, line: 414, baseType: !305, size: 128, offset: 640)
!473 = !DIDerivedType(tag: DW_TAG_member, name: "ISAR", scope: !453, file: !242, line: 415, baseType: !309, size: 160, offset: 768)
!474 = !DIDerivedType(tag: DW_TAG_member, name: "RESERVED0", scope: !453, file: !242, line: 416, baseType: !313, size: 160, offset: 928)
!475 = !DIDerivedType(tag: DW_TAG_member, name: "CPACR", scope: !453, file: !242, line: 417, baseType: !91, size: 32, offset: 1088)
!476 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !477, size: 32)
!477 = !DIDerivedType(tag: DW_TAG_typedef, name: "CACHE_REGISTER_T", file: !192, line: 72, baseType: !478)
!478 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !192, line: 56, size: 525312, elements: !479)
!479 = !{!480, !481, !482, !483, !484, !485, !486, !487, !488, !489, !490, !491, !492, !493, !494}
!480 = !DIDerivedType(tag: DW_TAG_member, name: "CACHE_CON", scope: !478, file: !192, line: 57, baseType: !91, size: 32)
!481 = !DIDerivedType(tag: DW_TAG_member, name: "CACHE_OP", scope: !478, file: !192, line: 58, baseType: !91, size: 32, offset: 32)
!482 = !DIDerivedType(tag: DW_TAG_member, name: "CACHE_HCNT0L", scope: !478, file: !192, line: 59, baseType: !91, size: 32, offset: 64)
!483 = !DIDerivedType(tag: DW_TAG_member, name: "CACHE_HCNT0U", scope: !478, file: !192, line: 60, baseType: !91, size: 32, offset: 96)
!484 = !DIDerivedType(tag: DW_TAG_member, name: "CACHE_CCNT0L", scope: !478, file: !192, line: 61, baseType: !91, size: 32, offset: 128)
!485 = !DIDerivedType(tag: DW_TAG_member, name: "CACHE_CCNT0U", scope: !478, file: !192, line: 62, baseType: !91, size: 32, offset: 160)
!486 = !DIDerivedType(tag: DW_TAG_member, name: "CACHE_HCNT1L", scope: !478, file: !192, line: 63, baseType: !91, size: 32, offset: 192)
!487 = !DIDerivedType(tag: DW_TAG_member, name: "CACHE_HCNT1U", scope: !478, file: !192, line: 64, baseType: !91, size: 32, offset: 224)
!488 = !DIDerivedType(tag: DW_TAG_member, name: "CACHE_CCNT1L", scope: !478, file: !192, line: 65, baseType: !91, size: 32, offset: 256)
!489 = !DIDerivedType(tag: DW_TAG_member, name: "CACHE_CCNT1U", scope: !478, file: !192, line: 66, baseType: !91, size: 32, offset: 288)
!490 = !DIDerivedType(tag: DW_TAG_member, name: "RESERVED0", scope: !478, file: !192, line: 67, baseType: !206, size: 32, offset: 320)
!491 = !DIDerivedType(tag: DW_TAG_member, name: "CACHE_REGION_EN", scope: !478, file: !192, line: 68, baseType: !91, size: 32, offset: 352)
!492 = !DIDerivedType(tag: DW_TAG_member, name: "RESERVED1", scope: !478, file: !192, line: 69, baseType: !211, size: 523904, offset: 384)
!493 = !DIDerivedType(tag: DW_TAG_member, name: "CACHE_ENTRY_N", scope: !478, file: !192, line: 70, baseType: !215, size: 512, offset: 524288)
!494 = !DIDerivedType(tag: DW_TAG_member, name: "CACHE_END_ENTRY_N", scope: !478, file: !192, line: 71, baseType: !215, size: 512, offset: 524800)
!495 = !{!438, !496}
!496 = !DIGlobalVariableExpression(var: !497, expr: !DIExpression())
!497 = distinct !DIGlobalVariable(name: "System_Initialize_Done", scope: !440, file: !441, line: 61, type: !91, isLocal: true, isDefinition: true)
!498 = !DIGlobalVariableExpression(var: !499, expr: !DIExpression())
!499 = distinct !DIGlobalVariable(name: "heap_end", scope: !500, file: !501, line: 66, type: !506, isLocal: true, isDefinition: true)
!500 = distinct !DISubprogram(name: "_sbrk_r", scope: !501, file: !501, line: 63, type: !502, scopeLine: 64, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !698, retainedNodes: !702)
!501 = !DIFile(filename: "../../../../../project/mt7687_hdk/hal_examples/trng_generate_random_data/GCC/syscalls.c", directory: "/home/mjshen/RTOSExploration/Embedded-GUI-for-MT2523/project/mt7687_hdk/hal_examples/trng_generate_random_data/GCC")
!502 = !DISubroutineType(types: !503)
!503 = !{!504, !507, !697}
!504 = !DIDerivedType(tag: DW_TAG_typedef, name: "caddr_t", file: !505, line: 123, baseType: !506)
!505 = !DIFile(filename: "gcc-arm-none-eabi-10.3-2021.10/bin/../lib/gcc/arm-none-eabi/10.3.1/../../../../arm-none-eabi/include/sys/types.h", directory: "/home/mjshen/RTOSExploration")
!506 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !383, size: 32)
!507 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !508, size: 32)
!508 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_reent", file: !509, line: 377, size: 1920, elements: !510)
!509 = !DIFile(filename: "gcc-arm-none-eabi-10.3-2021.10/bin/../lib/gcc/arm-none-eabi/10.3.1/../../../../arm-none-eabi/include/sys/reent.h", directory: "/home/mjshen/RTOSExploration")
!510 = !{!511, !512, !586, !587, !588, !589, !590, !591, !592, !595, !616, !620, !621, !622, !623, !633, !646, !647, !652, !671, !672, !679, !680, !696}
!511 = !DIDerivedType(tag: DW_TAG_member, name: "_errno", scope: !508, file: !509, line: 381, baseType: !13, size: 32)
!512 = !DIDerivedType(tag: DW_TAG_member, name: "_stdin", scope: !508, file: !509, line: 386, baseType: !513, size: 32, offset: 32)
!513 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !514, size: 32)
!514 = !DIDerivedType(tag: DW_TAG_typedef, name: "__FILE", file: !509, line: 292, baseType: !515)
!515 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__sFILE", file: !509, line: 186, size: 832, elements: !516)
!516 = !{!517, !519, !520, !521, !523, !524, !529, !530, !531, !532, !536, !542, !549, !553, !554, !555, !556, !560, !562, !563, !564, !566, !572, !585}
!517 = !DIDerivedType(tag: DW_TAG_member, name: "_p", scope: !515, file: !509, line: 187, baseType: !518, size: 32)
!518 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !134, size: 32)
!519 = !DIDerivedType(tag: DW_TAG_member, name: "_r", scope: !515, file: !509, line: 188, baseType: !13, size: 32, offset: 32)
!520 = !DIDerivedType(tag: DW_TAG_member, name: "_w", scope: !515, file: !509, line: 189, baseType: !13, size: 32, offset: 64)
!521 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !515, file: !509, line: 190, baseType: !522, size: 16, offset: 96)
!522 = !DIBasicType(name: "short", size: 16, encoding: DW_ATE_signed)
!523 = !DIDerivedType(tag: DW_TAG_member, name: "_file", scope: !515, file: !509, line: 191, baseType: !522, size: 16, offset: 112)
!524 = !DIDerivedType(tag: DW_TAG_member, name: "_bf", scope: !515, file: !509, line: 192, baseType: !525, size: 64, offset: 128)
!525 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__sbuf", file: !509, line: 122, size: 64, elements: !526)
!526 = !{!527, !528}
!527 = !DIDerivedType(tag: DW_TAG_member, name: "_base", scope: !525, file: !509, line: 123, baseType: !518, size: 32)
!528 = !DIDerivedType(tag: DW_TAG_member, name: "_size", scope: !525, file: !509, line: 124, baseType: !13, size: 32, offset: 32)
!529 = !DIDerivedType(tag: DW_TAG_member, name: "_lbfsize", scope: !515, file: !509, line: 193, baseType: !13, size: 32, offset: 192)
!530 = !DIDerivedType(tag: DW_TAG_member, name: "_data", scope: !515, file: !509, line: 196, baseType: !507, size: 32, offset: 224)
!531 = !DIDerivedType(tag: DW_TAG_member, name: "_cookie", scope: !515, file: !509, line: 200, baseType: !219, size: 32, offset: 256)
!532 = !DIDerivedType(tag: DW_TAG_member, name: "_read", scope: !515, file: !509, line: 202, baseType: !533, size: 32, offset: 288)
!533 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !534, size: 32)
!534 = !DISubroutineType(types: !535)
!535 = !{!13, !507, !219, !506, !13}
!536 = !DIDerivedType(tag: DW_TAG_member, name: "_write", scope: !515, file: !509, line: 204, baseType: !537, size: 32, offset: 320)
!537 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !538, size: 32)
!538 = !DISubroutineType(types: !539)
!539 = !{!13, !507, !219, !540, !13}
!540 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !541, size: 32)
!541 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !383)
!542 = !DIDerivedType(tag: DW_TAG_member, name: "_seek", scope: !515, file: !509, line: 207, baseType: !543, size: 32, offset: 352)
!543 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !544, size: 32)
!544 = !DISubroutineType(types: !545)
!545 = !{!546, !507, !219, !546, !13}
!546 = !DIDerivedType(tag: DW_TAG_typedef, name: "_fpos_t", file: !547, line: 116, baseType: !548)
!547 = !DIFile(filename: "gcc-arm-none-eabi-10.3-2021.10/bin/../lib/gcc/arm-none-eabi/10.3.1/../../../../arm-none-eabi/include/sys/_types.h", directory: "/home/mjshen/RTOSExploration")
!548 = !DIBasicType(name: "long", size: 32, encoding: DW_ATE_signed)
!549 = !DIDerivedType(tag: DW_TAG_member, name: "_close", scope: !515, file: !509, line: 208, baseType: !550, size: 32, offset: 384)
!550 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !551, size: 32)
!551 = !DISubroutineType(types: !552)
!552 = !{!13, !507, !219}
!553 = !DIDerivedType(tag: DW_TAG_member, name: "_ub", scope: !515, file: !509, line: 211, baseType: !525, size: 64, offset: 416)
!554 = !DIDerivedType(tag: DW_TAG_member, name: "_up", scope: !515, file: !509, line: 212, baseType: !518, size: 32, offset: 480)
!555 = !DIDerivedType(tag: DW_TAG_member, name: "_ur", scope: !515, file: !509, line: 213, baseType: !13, size: 32, offset: 512)
!556 = !DIDerivedType(tag: DW_TAG_member, name: "_ubuf", scope: !515, file: !509, line: 216, baseType: !557, size: 24, offset: 544)
!557 = !DICompositeType(tag: DW_TAG_array_type, baseType: !134, size: 24, elements: !558)
!558 = !{!559}
!559 = !DISubrange(count: 3)
!560 = !DIDerivedType(tag: DW_TAG_member, name: "_nbuf", scope: !515, file: !509, line: 217, baseType: !561, size: 8, offset: 568)
!561 = !DICompositeType(tag: DW_TAG_array_type, baseType: !134, size: 8, elements: !207)
!562 = !DIDerivedType(tag: DW_TAG_member, name: "_lb", scope: !515, file: !509, line: 220, baseType: !525, size: 64, offset: 576)
!563 = !DIDerivedType(tag: DW_TAG_member, name: "_blksize", scope: !515, file: !509, line: 223, baseType: !13, size: 32, offset: 640)
!564 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !515, file: !509, line: 224, baseType: !565, size: 32, offset: 672)
!565 = !DIDerivedType(tag: DW_TAG_typedef, name: "_off_t", file: !547, line: 46, baseType: !548)
!566 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !515, file: !509, line: 231, baseType: !567, size: 32, offset: 704)
!567 = !DIDerivedType(tag: DW_TAG_typedef, name: "_flock_t", file: !509, line: 35, baseType: !568)
!568 = !DIDerivedType(tag: DW_TAG_typedef, name: "_LOCK_T", file: !569, line: 34, baseType: !570)
!569 = !DIFile(filename: "gcc-arm-none-eabi-10.3-2021.10/bin/../lib/gcc/arm-none-eabi/10.3.1/../../../../arm-none-eabi/include/sys/lock.h", directory: "/home/mjshen/RTOSExploration")
!570 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !571, size: 32)
!571 = !DICompositeType(tag: DW_TAG_structure_type, name: "__lock", file: !569, line: 33, flags: DIFlagFwdDecl)
!572 = !DIDerivedType(tag: DW_TAG_member, name: "_mbstate", scope: !515, file: !509, line: 233, baseType: !573, size: 64, offset: 736)
!573 = !DIDerivedType(tag: DW_TAG_typedef, name: "_mbstate_t", file: !547, line: 170, baseType: !574)
!574 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !547, line: 162, size: 64, elements: !575)
!575 = !{!576, !577}
!576 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !574, file: !547, line: 164, baseType: !13, size: 32)
!577 = !DIDerivedType(tag: DW_TAG_member, name: "__value", scope: !574, file: !547, line: 169, baseType: !578, size: 32, offset: 32)
!578 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !574, file: !547, line: 165, size: 32, elements: !579)
!579 = !{!580, !583}
!580 = !DIDerivedType(tag: DW_TAG_member, name: "__wch", scope: !578, file: !547, line: 167, baseType: !581, size: 32)
!581 = !DIDerivedType(tag: DW_TAG_typedef, name: "wint_t", file: !582, line: 116, baseType: !13)
!582 = !DIFile(filename: "/usr/lib/llvm-14/lib/clang/14.0.6/include/stddef.h", directory: "")
!583 = !DIDerivedType(tag: DW_TAG_member, name: "__wchb", scope: !578, file: !547, line: 168, baseType: !584, size: 32)
!584 = !DICompositeType(tag: DW_TAG_array_type, baseType: !134, size: 32, elements: !306)
!585 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !515, file: !509, line: 234, baseType: !13, size: 32, offset: 800)
!586 = !DIDerivedType(tag: DW_TAG_member, name: "_stdout", scope: !508, file: !509, line: 386, baseType: !513, size: 32, offset: 64)
!587 = !DIDerivedType(tag: DW_TAG_member, name: "_stderr", scope: !508, file: !509, line: 386, baseType: !513, size: 32, offset: 96)
!588 = !DIDerivedType(tag: DW_TAG_member, name: "_inc", scope: !508, file: !509, line: 388, baseType: !13, size: 32, offset: 128)
!589 = !DIDerivedType(tag: DW_TAG_member, name: "_emergency", scope: !508, file: !509, line: 390, baseType: !506, size: 32, offset: 160)
!590 = !DIDerivedType(tag: DW_TAG_member, name: "__sdidinit", scope: !508, file: !509, line: 392, baseType: !13, size: 32, offset: 192)
!591 = !DIDerivedType(tag: DW_TAG_member, name: "_unspecified_locale_info", scope: !508, file: !509, line: 394, baseType: !13, size: 32, offset: 224)
!592 = !DIDerivedType(tag: DW_TAG_member, name: "_locale", scope: !508, file: !509, line: 395, baseType: !593, size: 32, offset: 256)
!593 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !594, size: 32)
!594 = !DICompositeType(tag: DW_TAG_structure_type, name: "__locale_t", file: !509, line: 45, flags: DIFlagFwdDecl)
!595 = !DIDerivedType(tag: DW_TAG_member, name: "_mp", scope: !508, file: !509, line: 397, baseType: !596, size: 32, offset: 288)
!596 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !597, size: 32)
!597 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_mprec", file: !509, line: 349, size: 128, elements: !598)
!598 = !{!599, !612, !613, !614}
!599 = !DIDerivedType(tag: DW_TAG_member, name: "_result", scope: !597, file: !509, line: 352, baseType: !600, size: 32)
!600 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !601, size: 32)
!601 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_Bigint", file: !509, line: 52, size: 192, elements: !602)
!602 = !{!603, !604, !605, !606, !607, !608}
!603 = !DIDerivedType(tag: DW_TAG_member, name: "_next", scope: !601, file: !509, line: 54, baseType: !600, size: 32)
!604 = !DIDerivedType(tag: DW_TAG_member, name: "_k", scope: !601, file: !509, line: 55, baseType: !13, size: 32, offset: 32)
!605 = !DIDerivedType(tag: DW_TAG_member, name: "_maxwds", scope: !601, file: !509, line: 55, baseType: !13, size: 32, offset: 64)
!606 = !DIDerivedType(tag: DW_TAG_member, name: "_sign", scope: !601, file: !509, line: 55, baseType: !13, size: 32, offset: 96)
!607 = !DIDerivedType(tag: DW_TAG_member, name: "_wds", scope: !601, file: !509, line: 55, baseType: !13, size: 32, offset: 128)
!608 = !DIDerivedType(tag: DW_TAG_member, name: "_x", scope: !601, file: !509, line: 56, baseType: !609, size: 32, offset: 160)
!609 = !DICompositeType(tag: DW_TAG_array_type, baseType: !610, size: 32, elements: !207)
!610 = !DIDerivedType(tag: DW_TAG_typedef, name: "__ULong", file: !509, line: 22, baseType: !611)
!611 = !DIBasicType(name: "unsigned long", size: 32, encoding: DW_ATE_unsigned)
!612 = !DIDerivedType(tag: DW_TAG_member, name: "_result_k", scope: !597, file: !509, line: 353, baseType: !13, size: 32, offset: 32)
!613 = !DIDerivedType(tag: DW_TAG_member, name: "_p5s", scope: !597, file: !509, line: 354, baseType: !600, size: 32, offset: 64)
!614 = !DIDerivedType(tag: DW_TAG_member, name: "_freelist", scope: !597, file: !509, line: 355, baseType: !615, size: 32, offset: 96)
!615 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !600, size: 32)
!616 = !DIDerivedType(tag: DW_TAG_member, name: "__cleanup", scope: !508, file: !509, line: 399, baseType: !617, size: 32, offset: 320)
!617 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !618, size: 32)
!618 = !DISubroutineType(types: !619)
!619 = !{null, !507}
!620 = !DIDerivedType(tag: DW_TAG_member, name: "_gamma_signgam", scope: !508, file: !509, line: 401, baseType: !13, size: 32, offset: 352)
!621 = !DIDerivedType(tag: DW_TAG_member, name: "_cvtlen", scope: !508, file: !509, line: 404, baseType: !13, size: 32, offset: 384)
!622 = !DIDerivedType(tag: DW_TAG_member, name: "_cvtbuf", scope: !508, file: !509, line: 405, baseType: !506, size: 32, offset: 416)
!623 = !DIDerivedType(tag: DW_TAG_member, name: "_r48", scope: !508, file: !509, line: 407, baseType: !624, size: 32, offset: 448)
!624 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !625, size: 32)
!625 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_rand48", file: !509, line: 324, size: 192, elements: !626)
!626 = !{!627, !629, !630, !631}
!627 = !DIDerivedType(tag: DW_TAG_member, name: "_seed", scope: !625, file: !509, line: 325, baseType: !628, size: 48)
!628 = !DICompositeType(tag: DW_TAG_array_type, baseType: !132, size: 48, elements: !558)
!629 = !DIDerivedType(tag: DW_TAG_member, name: "_mult", scope: !625, file: !509, line: 326, baseType: !628, size: 48, offset: 48)
!630 = !DIDerivedType(tag: DW_TAG_member, name: "_add", scope: !625, file: !509, line: 327, baseType: !132, size: 16, offset: 96)
!631 = !DIDerivedType(tag: DW_TAG_member, name: "_rand_next", scope: !625, file: !509, line: 330, baseType: !632, size: 64, offset: 128)
!632 = !DIBasicType(name: "unsigned long long", size: 64, encoding: DW_ATE_unsigned)
!633 = !DIDerivedType(tag: DW_TAG_member, name: "_localtime_buf", scope: !508, file: !509, line: 408, baseType: !634, size: 32, offset: 480)
!634 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !635, size: 32)
!635 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__tm", file: !509, line: 60, size: 288, elements: !636)
!636 = !{!637, !638, !639, !640, !641, !642, !643, !644, !645}
!637 = !DIDerivedType(tag: DW_TAG_member, name: "__tm_sec", scope: !635, file: !509, line: 62, baseType: !13, size: 32)
!638 = !DIDerivedType(tag: DW_TAG_member, name: "__tm_min", scope: !635, file: !509, line: 63, baseType: !13, size: 32, offset: 32)
!639 = !DIDerivedType(tag: DW_TAG_member, name: "__tm_hour", scope: !635, file: !509, line: 64, baseType: !13, size: 32, offset: 64)
!640 = !DIDerivedType(tag: DW_TAG_member, name: "__tm_mday", scope: !635, file: !509, line: 65, baseType: !13, size: 32, offset: 96)
!641 = !DIDerivedType(tag: DW_TAG_member, name: "__tm_mon", scope: !635, file: !509, line: 66, baseType: !13, size: 32, offset: 128)
!642 = !DIDerivedType(tag: DW_TAG_member, name: "__tm_year", scope: !635, file: !509, line: 67, baseType: !13, size: 32, offset: 160)
!643 = !DIDerivedType(tag: DW_TAG_member, name: "__tm_wday", scope: !635, file: !509, line: 68, baseType: !13, size: 32, offset: 192)
!644 = !DIDerivedType(tag: DW_TAG_member, name: "__tm_yday", scope: !635, file: !509, line: 69, baseType: !13, size: 32, offset: 224)
!645 = !DIDerivedType(tag: DW_TAG_member, name: "__tm_isdst", scope: !635, file: !509, line: 70, baseType: !13, size: 32, offset: 256)
!646 = !DIDerivedType(tag: DW_TAG_member, name: "_asctime_buf", scope: !508, file: !509, line: 409, baseType: !506, size: 32, offset: 512)
!647 = !DIDerivedType(tag: DW_TAG_member, name: "_sig_func", scope: !508, file: !509, line: 412, baseType: !648, size: 32, offset: 544)
!648 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !649, size: 32)
!649 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !650, size: 32)
!650 = !DISubroutineType(types: !651)
!651 = !{null, !13}
!652 = !DIDerivedType(tag: DW_TAG_member, name: "_atexit", scope: !508, file: !509, line: 416, baseType: !653, size: 32, offset: 576)
!653 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !654, size: 32)
!654 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_atexit", file: !509, line: 90, size: 1120, elements: !655)
!655 = !{!656, !657, !658, !662}
!656 = !DIDerivedType(tag: DW_TAG_member, name: "_next", scope: !654, file: !509, line: 91, baseType: !653, size: 32)
!657 = !DIDerivedType(tag: DW_TAG_member, name: "_ind", scope: !654, file: !509, line: 92, baseType: !13, size: 32, offset: 32)
!658 = !DIDerivedType(tag: DW_TAG_member, name: "_fns", scope: !654, file: !509, line: 93, baseType: !659, size: 1024, offset: 64)
!659 = !DICompositeType(tag: DW_TAG_array_type, baseType: !74, size: 1024, elements: !660)
!660 = !{!661}
!661 = !DISubrange(count: 32)
!662 = !DIDerivedType(tag: DW_TAG_member, name: "_on_exit_args_ptr", scope: !654, file: !509, line: 94, baseType: !663, size: 32, offset: 1088)
!663 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !664, size: 32)
!664 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_on_exit_args", file: !509, line: 79, size: 2112, elements: !665)
!665 = !{!666, !668, !669, !670}
!666 = !DIDerivedType(tag: DW_TAG_member, name: "_fnargs", scope: !664, file: !509, line: 80, baseType: !667, size: 1024)
!667 = !DICompositeType(tag: DW_TAG_array_type, baseType: !219, size: 1024, elements: !660)
!668 = !DIDerivedType(tag: DW_TAG_member, name: "_dso_handle", scope: !664, file: !509, line: 81, baseType: !667, size: 1024, offset: 1024)
!669 = !DIDerivedType(tag: DW_TAG_member, name: "_fntypes", scope: !664, file: !509, line: 83, baseType: !610, size: 32, offset: 2048)
!670 = !DIDerivedType(tag: DW_TAG_member, name: "_is_cxa", scope: !664, file: !509, line: 86, baseType: !610, size: 32, offset: 2080)
!671 = !DIDerivedType(tag: DW_TAG_member, name: "_atexit0", scope: !508, file: !509, line: 417, baseType: !654, size: 1120, offset: 608)
!672 = !DIDerivedType(tag: DW_TAG_member, name: "__sglue", scope: !508, file: !509, line: 420, baseType: !673, size: 96, offset: 1728)
!673 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_glue", file: !509, line: 296, size: 96, elements: !674)
!674 = !{!675, !677, !678}
!675 = !DIDerivedType(tag: DW_TAG_member, name: "_next", scope: !673, file: !509, line: 298, baseType: !676, size: 32)
!676 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !673, size: 32)
!677 = !DIDerivedType(tag: DW_TAG_member, name: "_niobs", scope: !673, file: !509, line: 299, baseType: !13, size: 32, offset: 32)
!678 = !DIDerivedType(tag: DW_TAG_member, name: "_iobs", scope: !673, file: !509, line: 300, baseType: !513, size: 32, offset: 64)
!679 = !DIDerivedType(tag: DW_TAG_member, name: "__sf", scope: !508, file: !509, line: 421, baseType: !513, size: 32, offset: 1824)
!680 = !DIDerivedType(tag: DW_TAG_member, name: "_misc", scope: !508, file: !509, line: 422, baseType: !681, size: 32, offset: 1856)
!681 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !682, size: 32)
!682 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_misc_reent", file: !509, line: 359, size: 640, elements: !683)
!683 = !{!684, !685, !686, !687, !688, !690, !691, !692, !693, !694, !695}
!684 = !DIDerivedType(tag: DW_TAG_member, name: "_strtok_last", scope: !682, file: !509, line: 362, baseType: !506, size: 32)
!685 = !DIDerivedType(tag: DW_TAG_member, name: "_mblen_state", scope: !682, file: !509, line: 363, baseType: !573, size: 64, offset: 32)
!686 = !DIDerivedType(tag: DW_TAG_member, name: "_wctomb_state", scope: !682, file: !509, line: 364, baseType: !573, size: 64, offset: 96)
!687 = !DIDerivedType(tag: DW_TAG_member, name: "_mbtowc_state", scope: !682, file: !509, line: 365, baseType: !573, size: 64, offset: 160)
!688 = !DIDerivedType(tag: DW_TAG_member, name: "_l64a_buf", scope: !682, file: !509, line: 366, baseType: !689, size: 64, offset: 224)
!689 = !DICompositeType(tag: DW_TAG_array_type, baseType: !383, size: 64, elements: !247)
!690 = !DIDerivedType(tag: DW_TAG_member, name: "_getdate_err", scope: !682, file: !509, line: 367, baseType: !13, size: 32, offset: 288)
!691 = !DIDerivedType(tag: DW_TAG_member, name: "_mbrlen_state", scope: !682, file: !509, line: 368, baseType: !573, size: 64, offset: 320)
!692 = !DIDerivedType(tag: DW_TAG_member, name: "_mbrtowc_state", scope: !682, file: !509, line: 369, baseType: !573, size: 64, offset: 384)
!693 = !DIDerivedType(tag: DW_TAG_member, name: "_mbsrtowcs_state", scope: !682, file: !509, line: 370, baseType: !573, size: 64, offset: 448)
!694 = !DIDerivedType(tag: DW_TAG_member, name: "_wcrtomb_state", scope: !682, file: !509, line: 371, baseType: !573, size: 64, offset: 512)
!695 = !DIDerivedType(tag: DW_TAG_member, name: "_wcsrtombs_state", scope: !682, file: !509, line: 372, baseType: !573, size: 64, offset: 576)
!696 = !DIDerivedType(tag: DW_TAG_member, name: "_signal_buf", scope: !508, file: !509, line: 423, baseType: !506, size: 32, offset: 1888)
!697 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !582, line: 46, baseType: !7)
!698 = distinct !DICompileUnit(language: DW_LANG_C99, file: !699, producer: "Ubuntu clang version 14.0.6", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !700, globals: !701, splitDebugInlining: false, nameTableKind: None)
!699 = !DIFile(filename: "syscalls.c", directory: "/home/mjshen/RTOSExploration/Embedded-GUI-for-MT2523/project/mt7687_hdk/hal_examples/trng_generate_random_data/GCC")
!700 = !{!506, !504}
!701 = !{!498}
!702 = !{!703, !704, !705, !706}
!703 = !DILocalVariable(name: "r", arg: 1, scope: !500, file: !501, line: 63, type: !507)
!704 = !DILocalVariable(name: "nbytes", arg: 2, scope: !500, file: !501, line: 63, type: !697)
!705 = !DILocalVariable(name: "prev_heap_end", scope: !500, file: !501, line: 67, type: !506)
!706 = !DILocalVariable(name: "stack", scope: !500, file: !501, line: 68, type: !506)
!707 = !DIGlobalVariableExpression(var: !708, expr: !DIExpression())
!708 = distinct !DIGlobalVariable(name: "build_date_time_str", scope: !709, file: !714, line: 4, type: !720, isLocal: false, isDefinition: true)
!709 = distinct !DICompileUnit(language: DW_LANG_C99, file: !710, producer: "Ubuntu clang version 14.0.6", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, globals: !711, splitDebugInlining: false, nameTableKind: None)
!710 = !DIFile(filename: "/home/mjshen/RTOSExploration/Embedded-GUI-for-MT2523/project/mt7687_hdk/hal_examples/trng_generate_random_data/GCC/build/middleware/MTK/verno/verno.c", directory: "/home/mjshen/RTOSExploration/Embedded-GUI-for-MT2523/project/mt7687_hdk/hal_examples/trng_generate_random_data/GCC")
!711 = !{!707, !712, !718}
!712 = !DIGlobalVariableExpression(var: !713, expr: !DIExpression())
!713 = distinct !DIGlobalVariable(name: "sw_verno_str", scope: !709, file: !714, line: 5, type: !715, isLocal: false, isDefinition: true)
!714 = !DIFile(filename: "build/middleware/MTK/verno/verno.c", directory: "/home/mjshen/RTOSExploration/Embedded-GUI-for-MT2523/project/mt7687_hdk/hal_examples/trng_generate_random_data/GCC")
!715 = !DICompositeType(tag: DW_TAG_array_type, baseType: !383, size: 88, elements: !716)
!716 = !{!717}
!717 = !DISubrange(count: 11)
!718 = !DIGlobalVariableExpression(var: !719, expr: !DIExpression())
!719 = distinct !DIGlobalVariable(name: "hw_verno_str", scope: !709, file: !714, line: 6, type: !715, isLocal: false, isDefinition: true)
!720 = !DICompositeType(tag: DW_TAG_array_type, baseType: !383, size: 248, elements: !721)
!721 = !{!722}
!722 = !DISubrange(count: 31)
!723 = distinct !DICompileUnit(language: DW_LANG_C99, file: !724, producer: "Ubuntu clang version 14.0.6", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !725, retainedTypes: !731, splitDebugInlining: false, nameTableKind: None)
!724 = !DIFile(filename: "../../../../../driver/chip/mt7687/src/common/hal_gpio_7687.c", directory: "/home/mjshen/RTOSExploration/Embedded-GUI-for-MT2523/project/mt7687_hdk/hal_examples/trng_generate_random_data/GCC")
!725 = !{!726}
!726 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !727, line: 1209, baseType: !7, size: 32, elements: !728)
!727 = !DIFile(filename: "../../../../../driver/chip/mt7687/src/common/include/hal_gpio_7687.h", directory: "/home/mjshen/RTOSExploration/Embedded-GUI-for-MT2523/project/mt7687_hdk/hal_examples/trng_generate_random_data/GCC")
!728 = !{!729, !730}
!729 = !DIEnumerator(name: "ePAD_CONTROL_BY_N9", value: 0)
!730 = !DIEnumerator(name: "ePAD_CONTROL_BY_CM4", value: 1)
!731 = !{!58, !60}
!732 = distinct !DICompileUnit(language: DW_LANG_C99, file: !733, producer: "Ubuntu clang version 14.0.6", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !734, retainedTypes: !812, splitDebugInlining: false, nameTableKind: None)
!733 = !DIFile(filename: "../../../../../driver/chip/mt7687/src/common/hal_pinmux.c", directory: "/home/mjshen/RTOSExploration/Embedded-GUI-for-MT2523/project/mt7687_hdk/hal_examples/trng_generate_random_data/GCC")
!734 = !{!735}
!735 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !736, line: 150, baseType: !7, size: 32, elements: !737)
!736 = !DIFile(filename: "../../../../../driver/chip/mt7687/src/common/include/hal_pinmux.h", directory: "/home/mjshen/RTOSExploration/Embedded-GUI-for-MT2523/project/mt7687_hdk/hal_examples/trng_generate_random_data/GCC")
!737 = !{!738, !739, !740, !741, !742, !743, !744, !745, !746, !747, !748, !749, !750, !751, !752, !753, !754, !755, !756, !757, !758, !759, !760, !761, !762, !763, !764, !765, !766, !767, !768, !769, !770, !771, !772, !773, !774, !775, !776, !777, !778, !779, !780, !781, !782, !783, !784, !785, !786, !787, !788, !789, !790, !791, !792, !793, !794, !795, !796, !797, !798, !799, !800, !801, !802, !803, !804, !805, !806, !807, !808, !809, !810, !811}
!738 = !DIEnumerator(name: "ePAD_ANTSEL0", value: 0)
!739 = !DIEnumerator(name: "ePAD_ANTSEL1", value: 1)
!740 = !DIEnumerator(name: "ePAD_ANTSEL2", value: 2)
!741 = !DIEnumerator(name: "ePAD_ANTSEL3", value: 3)
!742 = !DIEnumerator(name: "ePAD_ANTSEL4", value: 4)
!743 = !DIEnumerator(name: "ePAD_ANTSEL5", value: 5)
!744 = !DIEnumerator(name: "ePAD_ANTSEL6", value: 6)
!745 = !DIEnumerator(name: "ePAD_ANTSEL7", value: 7)
!746 = !DIEnumerator(name: "ePAD_IN_GPIO8", value: 8)
!747 = !DIEnumerator(name: "ePAD_IN_GPIO9", value: 9)
!748 = !DIEnumerator(name: "ePAD_IN_GPIO10", value: 10)
!749 = !DIEnumerator(name: "ePAD_IN_GPIO11", value: 11)
!750 = !DIEnumerator(name: "ePAD_IN_GPIO12", value: 12)
!751 = !DIEnumerator(name: "ePAD_IN_GPIO13", value: 13)
!752 = !DIEnumerator(name: "ePAD_IN_GPIO14", value: 14)
!753 = !DIEnumerator(name: "ePAD_IN_GPIO15", value: 15)
!754 = !DIEnumerator(name: "ePAD_IN_GPIO16", value: 16)
!755 = !DIEnumerator(name: "ePAD_IN_GPIO17", value: 17)
!756 = !DIEnumerator(name: "ePAD_IN_GPIO18", value: 18)
!757 = !DIEnumerator(name: "ePAD_IN_GPIO19", value: 19)
!758 = !DIEnumerator(name: "ePAD_IN_GPIO20", value: 20)
!759 = !DIEnumerator(name: "ePAD_IN_GPIO21", value: 21)
!760 = !DIEnumerator(name: "ePAD_IN_GPIO22", value: 22)
!761 = !DIEnumerator(name: "ePAD_IN_UART0_TXD", value: 23)
!762 = !DIEnumerator(name: "ePAD_PERST_N", value: 24)
!763 = !DIEnumerator(name: "ePAD_WAKE_N", value: 25)
!764 = !DIEnumerator(name: "ePAD_CLK_REQ_N", value: 26)
!765 = !DIEnumerator(name: "ePAD_SDIO_CLK", value: 27)
!766 = !DIEnumerator(name: "ePAD_SDIO_CMD", value: 28)
!767 = !DIEnumerator(name: "ePAD_SDIO_DAT3", value: 29)
!768 = !DIEnumerator(name: "ePAD_SDIO_DAT2", value: 30)
!769 = !DIEnumerator(name: "ePAD_SDIO_DAT1", value: 31)
!770 = !DIEnumerator(name: "ePAD_SDIO_DAT0", value: 32)
!771 = !DIEnumerator(name: "ePAD_GPIO0", value: 33)
!772 = !DIEnumerator(name: "ePAD_GPIO1", value: 34)
!773 = !DIEnumerator(name: "ePAD_UART_DBG", value: 35)
!774 = !DIEnumerator(name: "ePAD_UART_RX", value: 36)
!775 = !DIEnumerator(name: "ePAD_UART_TX", value: 37)
!776 = !DIEnumerator(name: "ePAD_UART_RTS", value: 38)
!777 = !DIEnumerator(name: "ePAD_UART_CTS", value: 39)
!778 = !DIEnumerator(name: "ePAD_IN_GPIO44", value: 40)
!779 = !DIEnumerator(name: "ePAD_IN_GPIO45", value: 41)
!780 = !DIEnumerator(name: "ePAD_IN_GPIO46", value: 42)
!781 = !DIEnumerator(name: "ePAD_IN_GPIO47", value: 43)
!782 = !DIEnumerator(name: "ePAD_IN_GPIO48", value: 44)
!783 = !DIEnumerator(name: "ePAD_IN_GPIO49", value: 45)
!784 = !DIEnumerator(name: "ePAD_IN_GPIO50", value: 46)
!785 = !DIEnumerator(name: "ePAD_IN_GPIO51", value: 47)
!786 = !DIEnumerator(name: "ePAD_IN_GPIO52", value: 48)
!787 = !DIEnumerator(name: "ePAD_IN_GPIO53", value: 49)
!788 = !DIEnumerator(name: "ePAD_IN_GPIO54", value: 50)
!789 = !DIEnumerator(name: "ePAD_IN_PWM2", value: 51)
!790 = !DIEnumerator(name: "ePAD_IN_PWM3", value: 52)
!791 = !DIEnumerator(name: "ePAD_IN_PWM4", value: 53)
!792 = !DIEnumerator(name: "ePAD_IN_PWM5", value: 54)
!793 = !DIEnumerator(name: "ePAD_IN_PWM6", value: 55)
!794 = !DIEnumerator(name: "ePAD_IN_PWM7", value: 56)
!795 = !DIEnumerator(name: "ePAD_WF_RF_DIS_B", value: 57)
!796 = !DIEnumerator(name: "ePAD_BT_RF_DIS_B", value: 58)
!797 = !DIEnumerator(name: "ePAD_WF_LED_B", value: 59)
!798 = !DIEnumerator(name: "ePAD_BT_LED_B", value: 60)
!799 = !DIEnumerator(name: "ePAD_IN_ADC4", value: 61)
!800 = !DIEnumerator(name: "ePAD_IN_ADC5", value: 62)
!801 = !DIEnumerator(name: "ePAD_IN_ADC6", value: 63)
!802 = !DIEnumerator(name: "ePAD_IN_ADC7", value: 64)
!803 = !DIEnumerator(name: "ePAD_IN_ADC8", value: 65)
!804 = !DIEnumerator(name: "ePAD_IN_ADC9", value: 66)
!805 = !DIEnumerator(name: "ePAD_IN_ADC10", value: 67)
!806 = !DIEnumerator(name: "ePAD_IN_ADC11", value: 68)
!807 = !DIEnumerator(name: "ePAD_IN_ADC12", value: 69)
!808 = !DIEnumerator(name: "ePAD_IN_ADC13", value: 70)
!809 = !DIEnumerator(name: "ePAD_IN_ADC14", value: 71)
!810 = !DIEnumerator(name: "ePAD_IN_ADC15", value: 72)
!811 = !DIEnumerator(name: "ePAD_NUM", value: 73)
!812 = !{!58, !80}
!813 = distinct !DICompileUnit(language: DW_LANG_C99, file: !814, producer: "Ubuntu clang version 14.0.6", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !815, retainedTypes: !822, splitDebugInlining: false, nameTableKind: None)
!814 = !DIFile(filename: "../../../../../driver/chip/mt7687/src/common/hal_trng.c", directory: "/home/mjshen/RTOSExploration/Embedded-GUI-for-MT2523/project/mt7687_hdk/hal_examples/trng_generate_random_data/GCC")
!815 = !{!816}
!816 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !817, line: 92, baseType: !13, size: 32, elements: !818)
!817 = !DIFile(filename: "../../../../../driver/chip/inc/hal_trng.h", directory: "/home/mjshen/RTOSExploration/Embedded-GUI-for-MT2523/project/mt7687_hdk/hal_examples/trng_generate_random_data/GCC")
!818 = !{!819, !820, !821}
!819 = !DIEnumerator(name: "HAL_TRNG_STATUS_ERROR", value: -2)
!820 = !DIEnumerator(name: "HAL_TRNG_STATUS_INVALID_PARAMETER", value: -1)
!821 = !DIEnumerator(name: "HAL_TRNG_STATUS_OK", value: 0)
!822 = !{!823, !825}
!823 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !824, size: 32)
!824 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !825)
!825 = !DIDerivedType(tag: DW_TAG_typedef, name: "u_int32", file: !6, line: 133, baseType: !7)
!826 = distinct !DICompileUnit(language: DW_LANG_C99, file: !827, producer: "Ubuntu clang version 14.0.6", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !828, splitDebugInlining: false, nameTableKind: None)
!827 = !DIFile(filename: "../../../../../driver/chip/mt7687/src/common/nvic.c", directory: "/home/mjshen/RTOSExploration/Embedded-GUI-for-MT2523/project/mt7687_hdk/hal_examples/trng_generate_random_data/GCC")
!828 = !{!829, !854}
!829 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !830, size: 32)
!830 = !DIDerivedType(tag: DW_TAG_typedef, name: "SCB_Type", file: !242, line: 418, baseType: !831)
!831 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !242, line: 395, size: 1120, elements: !832)
!832 = !{!833, !834, !835, !836, !837, !838, !839, !840, !841, !842, !843, !844, !845, !846, !847, !848, !849, !850, !851, !852, !853}
!833 = !DIDerivedType(tag: DW_TAG_member, name: "CPUID", scope: !831, file: !242, line: 397, baseType: !281, size: 32)
!834 = !DIDerivedType(tag: DW_TAG_member, name: "ICSR", scope: !831, file: !242, line: 398, baseType: !91, size: 32, offset: 32)
!835 = !DIDerivedType(tag: DW_TAG_member, name: "VTOR", scope: !831, file: !242, line: 399, baseType: !91, size: 32, offset: 64)
!836 = !DIDerivedType(tag: DW_TAG_member, name: "AIRCR", scope: !831, file: !242, line: 400, baseType: !91, size: 32, offset: 96)
!837 = !DIDerivedType(tag: DW_TAG_member, name: "SCR", scope: !831, file: !242, line: 401, baseType: !91, size: 32, offset: 128)
!838 = !DIDerivedType(tag: DW_TAG_member, name: "CCR", scope: !831, file: !242, line: 402, baseType: !91, size: 32, offset: 160)
!839 = !DIDerivedType(tag: DW_TAG_member, name: "SHP", scope: !831, file: !242, line: 403, baseType: !288, size: 96, offset: 192)
!840 = !DIDerivedType(tag: DW_TAG_member, name: "SHCSR", scope: !831, file: !242, line: 404, baseType: !91, size: 32, offset: 288)
!841 = !DIDerivedType(tag: DW_TAG_member, name: "CFSR", scope: !831, file: !242, line: 405, baseType: !91, size: 32, offset: 320)
!842 = !DIDerivedType(tag: DW_TAG_member, name: "HFSR", scope: !831, file: !242, line: 406, baseType: !91, size: 32, offset: 352)
!843 = !DIDerivedType(tag: DW_TAG_member, name: "DFSR", scope: !831, file: !242, line: 407, baseType: !91, size: 32, offset: 384)
!844 = !DIDerivedType(tag: DW_TAG_member, name: "MMFAR", scope: !831, file: !242, line: 408, baseType: !91, size: 32, offset: 416)
!845 = !DIDerivedType(tag: DW_TAG_member, name: "BFAR", scope: !831, file: !242, line: 409, baseType: !91, size: 32, offset: 448)
!846 = !DIDerivedType(tag: DW_TAG_member, name: "AFSR", scope: !831, file: !242, line: 410, baseType: !91, size: 32, offset: 480)
!847 = !DIDerivedType(tag: DW_TAG_member, name: "PFR", scope: !831, file: !242, line: 411, baseType: !299, size: 64, offset: 512)
!848 = !DIDerivedType(tag: DW_TAG_member, name: "DFR", scope: !831, file: !242, line: 412, baseType: !281, size: 32, offset: 576)
!849 = !DIDerivedType(tag: DW_TAG_member, name: "ADR", scope: !831, file: !242, line: 413, baseType: !281, size: 32, offset: 608)
!850 = !DIDerivedType(tag: DW_TAG_member, name: "MMFR", scope: !831, file: !242, line: 414, baseType: !305, size: 128, offset: 640)
!851 = !DIDerivedType(tag: DW_TAG_member, name: "ISAR", scope: !831, file: !242, line: 415, baseType: !309, size: 160, offset: 768)
!852 = !DIDerivedType(tag: DW_TAG_member, name: "RESERVED0", scope: !831, file: !242, line: 416, baseType: !313, size: 160, offset: 928)
!853 = !DIDerivedType(tag: DW_TAG_member, name: "CPACR", scope: !831, file: !242, line: 417, baseType: !91, size: 32, offset: 1088)
!854 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !855, size: 32)
!855 = !DIDerivedType(tag: DW_TAG_typedef, name: "NVIC_Type", file: !242, line: 378, baseType: !856)
!856 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !242, line: 363, size: 28704, elements: !857)
!857 = !{!858, !859, !860, !861, !862, !863, !864, !865, !866, !867, !868, !869, !870}
!858 = !DIDerivedType(tag: DW_TAG_member, name: "ISER", scope: !856, file: !242, line: 365, baseType: !246, size: 256)
!859 = !DIDerivedType(tag: DW_TAG_member, name: "RESERVED0", scope: !856, file: !242, line: 366, baseType: !250, size: 768, offset: 256)
!860 = !DIDerivedType(tag: DW_TAG_member, name: "ICER", scope: !856, file: !242, line: 367, baseType: !246, size: 256, offset: 1024)
!861 = !DIDerivedType(tag: DW_TAG_member, name: "RSERVED1", scope: !856, file: !242, line: 368, baseType: !250, size: 768, offset: 1280)
!862 = !DIDerivedType(tag: DW_TAG_member, name: "ISPR", scope: !856, file: !242, line: 369, baseType: !246, size: 256, offset: 2048)
!863 = !DIDerivedType(tag: DW_TAG_member, name: "RESERVED2", scope: !856, file: !242, line: 370, baseType: !250, size: 768, offset: 2304)
!864 = !DIDerivedType(tag: DW_TAG_member, name: "ICPR", scope: !856, file: !242, line: 371, baseType: !246, size: 256, offset: 3072)
!865 = !DIDerivedType(tag: DW_TAG_member, name: "RESERVED3", scope: !856, file: !242, line: 372, baseType: !250, size: 768, offset: 3328)
!866 = !DIDerivedType(tag: DW_TAG_member, name: "IABR", scope: !856, file: !242, line: 373, baseType: !246, size: 256, offset: 4096)
!867 = !DIDerivedType(tag: DW_TAG_member, name: "RESERVED4", scope: !856, file: !242, line: 374, baseType: !261, size: 1792, offset: 4352)
!868 = !DIDerivedType(tag: DW_TAG_member, name: "IP", scope: !856, file: !242, line: 375, baseType: !265, size: 1920, offset: 6144)
!869 = !DIDerivedType(tag: DW_TAG_member, name: "RESERVED5", scope: !856, file: !242, line: 376, baseType: !272, size: 20608, offset: 8064)
!870 = !DIDerivedType(tag: DW_TAG_member, name: "STIR", scope: !856, file: !242, line: 377, baseType: !91, size: 32, offset: 28672)
!871 = distinct !DICompileUnit(language: DW_LANG_C99, file: !872, producer: "Ubuntu clang version 14.0.6", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !873, splitDebugInlining: false, nameTableKind: None)
!872 = !DIFile(filename: "../../../../../driver/chip/mt7687/src/common/pinmux.c", directory: "/home/mjshen/RTOSExploration/Embedded-GUI-for-MT2523/project/mt7687_hdk/hal_examples/trng_generate_random_data/GCC")
!873 = !{!874, !735}
!874 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !875, line: 55, baseType: !7, size: 32, elements: !876)
!875 = !DIFile(filename: "../../../../../driver/chip/mt7687/src/common/include/pinmux.h", directory: "/home/mjshen/RTOSExploration/Embedded-GUI-for-MT2523/project/mt7687_hdk/hal_examples/trng_generate_random_data/GCC")
!876 = !{!877, !878, !879, !880, !881, !882, !883, !884, !885, !886, !887, !888, !889, !890, !891, !892, !893, !894, !895, !896, !897, !898, !899, !900, !901, !902, !903, !904}
!877 = !DIEnumerator(name: "eIOT_GPIO_IDX_0", value: 0)
!878 = !DIEnumerator(name: "eIOT_GPIO_IDX_1", value: 1)
!879 = !DIEnumerator(name: "eIOT_GPIO_IDX_2", value: 2)
!880 = !DIEnumerator(name: "eIOT_GPIO_IDX_3", value: 3)
!881 = !DIEnumerator(name: "eIOT_GPIO_IDX_4", value: 4)
!882 = !DIEnumerator(name: "eIOT_GPIO_IDX_5", value: 5)
!883 = !DIEnumerator(name: "eIOT_GPIO_IDX_6", value: 6)
!884 = !DIEnumerator(name: "eIOT_GPIO_IDX_7", value: 7)
!885 = !DIEnumerator(name: "eIOT_GPIO_IDX_24", value: 24)
!886 = !DIEnumerator(name: "eIOT_GPIO_IDX_25", value: 25)
!887 = !DIEnumerator(name: "eIOT_GPIO_IDX_26", value: 26)
!888 = !DIEnumerator(name: "eIOT_GPIO_IDX_27", value: 27)
!889 = !DIEnumerator(name: "eIOT_GPIO_IDX_28", value: 28)
!890 = !DIEnumerator(name: "eIOT_GPIO_IDX_29", value: 29)
!891 = !DIEnumerator(name: "eIOT_GPIO_IDX_30", value: 30)
!892 = !DIEnumerator(name: "eIOT_GPIO_IDX_31", value: 31)
!893 = !DIEnumerator(name: "eIOT_GPIO_IDX_32", value: 32)
!894 = !DIEnumerator(name: "eIOT_GPIO_IDX_33", value: 33)
!895 = !DIEnumerator(name: "eIOT_GPIO_IDX_34", value: 34)
!896 = !DIEnumerator(name: "eIOT_GPIO_IDX_35", value: 35)
!897 = !DIEnumerator(name: "eIOT_GPIO_IDX_36", value: 36)
!898 = !DIEnumerator(name: "eIOT_GPIO_IDX_37", value: 37)
!899 = !DIEnumerator(name: "eIOT_GPIO_IDX_38", value: 38)
!900 = !DIEnumerator(name: "eIOT_GPIO_IDX_39", value: 39)
!901 = !DIEnumerator(name: "eIOT_GPIO_IDX_57", value: 57)
!902 = !DIEnumerator(name: "eIOT_GPIO_IDX_58", value: 58)
!903 = !DIEnumerator(name: "eIOT_GPIO_IDX_59", value: 59)
!904 = !DIEnumerator(name: "eIOT_GPIO_IDX_60", value: 60)
!905 = distinct !DICompileUnit(language: DW_LANG_C99, file: !906, producer: "Ubuntu clang version 14.0.6", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !907, splitDebugInlining: false, nameTableKind: None)
!906 = !DIFile(filename: "../../../../../driver/chip/mt7687/src/common/timer.c", directory: "/home/mjshen/RTOSExploration/Embedded-GUI-for-MT2523/project/mt7687_hdk/hal_examples/trng_generate_random_data/GCC")
!907 = !{!548, !58}
!908 = distinct !DICompileUnit(language: DW_LANG_C99, file: !909, producer: "Ubuntu clang version 14.0.6", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!909 = !DIFile(filename: "../../../../../driver/chip/mt7687/src/hal_log.c", directory: "/home/mjshen/RTOSExploration/Embedded-GUI-for-MT2523/project/mt7687_hdk/hal_examples/trng_generate_random_data/GCC")
!910 = distinct !DICompileUnit(language: DW_LANG_C99, file: !911, producer: "Ubuntu clang version 14.0.6", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !912, retainedTypes: !976, splitDebugInlining: false, nameTableKind: None)
!911 = !DIFile(filename: "../../../../../driver/chip/mt7687/src/hal_gpio.c", directory: "/home/mjshen/RTOSExploration/Embedded-GUI-for-MT2523/project/mt7687_hdk/hal_examples/trng_generate_random_data/GCC")
!912 = !{!913, !920, !874, !951, !957, !961, !965, !971}
!913 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !914, line: 233, baseType: !13, size: 32, elements: !915)
!914 = !DIFile(filename: "../../../../../driver/chip/inc/hal_gpio.h", directory: "/home/mjshen/RTOSExploration/Embedded-GUI-for-MT2523/project/mt7687_hdk/hal_examples/trng_generate_random_data/GCC")
!915 = !{!916, !917, !918, !919}
!916 = !DIEnumerator(name: "HAL_PINMUX_STATUS_ERROR", value: -3)
!917 = !DIEnumerator(name: "HAL_PINMUX_STATUS_ERROR_PORT", value: -2)
!918 = !DIEnumerator(name: "HAL_PINMUX_STATUS_INVALID_FUNCTION", value: -1)
!919 = !DIEnumerator(name: "HAL_PINMUX_STATUS_OK", value: 0)
!920 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !341, line: 249, baseType: !7, size: 32, elements: !921)
!921 = !{!922, !923, !924, !925, !926, !927, !928, !929, !930, !931, !932, !933, !934, !935, !936, !937, !938, !939, !940, !941, !942, !943, !944, !945, !946, !947, !948, !949, !950}
!922 = !DIEnumerator(name: "HAL_GPIO_0", value: 0)
!923 = !DIEnumerator(name: "HAL_GPIO_1", value: 1)
!924 = !DIEnumerator(name: "HAL_GPIO_2", value: 2)
!925 = !DIEnumerator(name: "HAL_GPIO_3", value: 3)
!926 = !DIEnumerator(name: "HAL_GPIO_4", value: 4)
!927 = !DIEnumerator(name: "HAL_GPIO_5", value: 5)
!928 = !DIEnumerator(name: "HAL_GPIO_6", value: 6)
!929 = !DIEnumerator(name: "HAL_GPIO_7", value: 7)
!930 = !DIEnumerator(name: "HAL_GPIO_24", value: 24)
!931 = !DIEnumerator(name: "HAL_GPIO_25", value: 25)
!932 = !DIEnumerator(name: "HAL_GPIO_26", value: 26)
!933 = !DIEnumerator(name: "HAL_GPIO_27", value: 27)
!934 = !DIEnumerator(name: "HAL_GPIO_28", value: 28)
!935 = !DIEnumerator(name: "HAL_GPIO_29", value: 29)
!936 = !DIEnumerator(name: "HAL_GPIO_30", value: 30)
!937 = !DIEnumerator(name: "HAL_GPIO_31", value: 31)
!938 = !DIEnumerator(name: "HAL_GPIO_32", value: 32)
!939 = !DIEnumerator(name: "HAL_GPIO_33", value: 33)
!940 = !DIEnumerator(name: "HAL_GPIO_34", value: 34)
!941 = !DIEnumerator(name: "HAL_GPIO_35", value: 35)
!942 = !DIEnumerator(name: "HAL_GPIO_36", value: 36)
!943 = !DIEnumerator(name: "HAL_GPIO_37", value: 37)
!944 = !DIEnumerator(name: "HAL_GPIO_38", value: 38)
!945 = !DIEnumerator(name: "HAL_GPIO_39", value: 39)
!946 = !DIEnumerator(name: "HAL_GPIO_57", value: 57)
!947 = !DIEnumerator(name: "HAL_GPIO_58", value: 58)
!948 = !DIEnumerator(name: "HAL_GPIO_59", value: 59)
!949 = !DIEnumerator(name: "HAL_GPIO_60", value: 60)
!950 = !DIEnumerator(name: "HAL_GPIO_MAX", value: 61)
!951 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !914, line: 224, baseType: !13, size: 32, elements: !952)
!952 = !{!953, !954, !955, !956}
!953 = !DIEnumerator(name: "HAL_GPIO_STATUS_ERROR", value: -3)
!954 = !DIEnumerator(name: "HAL_GPIO_STATUS_ERROR_PIN", value: -2)
!955 = !DIEnumerator(name: "HAL_GPIO_STATUS_INVALID_PARAMETER", value: -1)
!956 = !DIEnumerator(name: "HAL_GPIO_STATUS_OK", value: 0)
!957 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !914, line: 217, baseType: !7, size: 32, elements: !958)
!958 = !{!959, !960}
!959 = !DIEnumerator(name: "HAL_GPIO_DATA_LOW", value: 0)
!960 = !DIEnumerator(name: "HAL_GPIO_DATA_HIGH", value: 1)
!961 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !914, line: 210, baseType: !7, size: 32, elements: !962)
!962 = !{!963, !964}
!963 = !DIEnumerator(name: "HAL_GPIO_DIRECTION_INPUT", value: 0)
!964 = !DIEnumerator(name: "HAL_GPIO_DIRECTION_OUTPUT", value: 1)
!965 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !914, line: 242, baseType: !7, size: 32, elements: !966)
!966 = !{!967, !968, !969, !970}
!967 = !DIEnumerator(name: "HAL_GPIO_DRIVING_CURRENT_4MA", value: 0)
!968 = !DIEnumerator(name: "HAL_GPIO_DRIVING_CURRENT_8MA", value: 1)
!969 = !DIEnumerator(name: "HAL_GPIO_DRIVING_CURRENT_12MA", value: 2)
!970 = !DIEnumerator(name: "HAL_GPIO_DRIVING_CURRENT_16MA", value: 3)
!971 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !972, line: 57, baseType: !7, size: 32, elements: !973)
!972 = !DIFile(filename: "../../../../../driver/chip/mt7687/src/common/include/low_hal_gpio.h", directory: "/home/mjshen/RTOSExploration/Embedded-GUI-for-MT2523/project/mt7687_hdk/hal_examples/trng_generate_random_data/GCC")
!973 = !{!974, !975}
!974 = !DIEnumerator(name: "eDirection_IN", value: 0)
!975 = !DIEnumerator(name: "eDirection_OUT", value: 1)
!976 = !{!977, !219, !978, !267, !979, !980}
!977 = !DIDerivedType(tag: DW_TAG_typedef, name: "ENUM_IOT_GPIO_NAME_T", file: !875, line: 87, baseType: !874)
!978 = !DIDerivedType(tag: DW_TAG_typedef, name: "hal_gpio_data_t", file: !914, line: 220, baseType: !957)
!979 = !DIDerivedType(tag: DW_TAG_typedef, name: "hal_gpio_driving_current_t", file: !914, line: 247, baseType: !965)
!980 = !DIDerivedType(tag: DW_TAG_typedef, name: "ENUM_DIR_T", file: !972, line: 60, baseType: !971)
!981 = distinct !DICompileUnit(language: DW_LANG_C99, file: !982, producer: "Ubuntu clang version 14.0.6", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !983, retainedTypes: !984, splitDebugInlining: false, nameTableKind: None)
!982 = !DIFile(filename: "../../../../../project/mt7687_hdk/hal_examples/trng_generate_random_data/src/main.c", directory: "/home/mjshen/RTOSExploration/Embedded-GUI-for-MT2523/project/mt7687_hdk/hal_examples/trng_generate_random_data/GCC")
!983 = !{!340, !346, !362, !368, !372, !920}
!984 = !{!7}
!985 = !{!"Ubuntu clang version 14.0.6"}
!986 = !{i32 7, !"Dwarf Version", i32 2}
!987 = !{i32 2, !"Debug Info Version", i32 3}
!988 = !{i32 1, !"wchar_size", i32 4}
!989 = !{i32 1, !"min_enum_size", i32 4}
!990 = !{i32 1, !"branch-target-enforcement", i32 0}
!991 = !{i32 1, !"sign-return-address", i32 0}
!992 = !{i32 1, !"sign-return-address-all", i32 0}
!993 = !{i32 1, !"sign-return-address-with-bkey", i32 0}
!994 = !{i32 7, !"frame-pointer", i32 2}
!995 = distinct !DISubprogram(name: "GPT_ResetTimer", scope: !3, file: !3, line: 73, type: !996, scopeLine: 74, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !998)
!996 = !DISubroutineType(types: !997)
!997 = !{null, !60, !60, !222}
!998 = !{!999, !1000, !1001}
!999 = !DILocalVariable(name: "timerNum", arg: 1, scope: !995, file: !3, line: 73, type: !60)
!1000 = !DILocalVariable(name: "countValue", arg: 2, scope: !995, file: !3, line: 73, type: !60)
!1001 = !DILocalVariable(name: "autoRepeat", arg: 3, scope: !995, file: !3, line: 73, type: !222)
!1002 = !DILocation(line: 0, scope: !995)
!1003 = !DILocation(line: 75, column: 5, scope: !1004)
!1004 = distinct !DILexicalBlock(scope: !995, file: !3, line: 75, column: 5)
!1005 = !DILocation(line: 75, column: 5, scope: !995)
!1006 = !DILocation(line: 75, column: 5, scope: !1007)
!1007 = distinct !DILexicalBlock(scope: !1004, file: !3, line: 75, column: 5)
!1008 = distinct !{!1008, !1006, !1006}
!1009 = !DILocation(line: 77, column: 9, scope: !995)
!1010 = !DILocation(line: 78, column: 30, scope: !1011)
!1011 = distinct !DILexicalBlock(scope: !1012, file: !3, line: 77, column: 24)
!1012 = distinct !DILexicalBlock(scope: !995, file: !3, line: 77, column: 9)
!1013 = !DILocation(line: 0, scope: !1014)
!1014 = distinct !DILexicalBlock(scope: !1011, file: !3, line: 79, column: 13)
!1015 = !DILocation(line: 79, column: 13, scope: !1011)
!1016 = !DILocation(line: 80, column: 34, scope: !1017)
!1017 = distinct !DILexicalBlock(scope: !1014, file: !3, line: 79, column: 37)
!1018 = !DILocation(line: 81, column: 9, scope: !1017)
!1019 = !DILocation(line: 82, column: 34, scope: !1020)
!1020 = distinct !DILexicalBlock(scope: !1014, file: !3, line: 81, column: 16)
!1021 = !DILocation(line: 85, column: 30, scope: !1022)
!1022 = distinct !DILexicalBlock(scope: !1023, file: !3, line: 84, column: 31)
!1023 = distinct !DILexicalBlock(scope: !1012, file: !3, line: 84, column: 16)
!1024 = !DILocation(line: 0, scope: !1025)
!1025 = distinct !DILexicalBlock(scope: !1022, file: !3, line: 86, column: 13)
!1026 = !DILocation(line: 86, column: 13, scope: !1022)
!1027 = !DILocation(line: 87, column: 34, scope: !1028)
!1028 = distinct !DILexicalBlock(scope: !1025, file: !3, line: 86, column: 37)
!1029 = !DILocation(line: 88, column: 9, scope: !1028)
!1030 = !DILocation(line: 89, column: 34, scope: !1031)
!1031 = distinct !DILexicalBlock(scope: !1025, file: !3, line: 88, column: 16)
!1032 = !DILocation(line: 92, column: 1, scope: !995)
!1033 = distinct !DISubprogram(name: "GPT_Start", scope: !3, file: !3, line: 94, type: !1034, scopeLine: 95, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1036)
!1034 = !DISubroutineType(types: !1035)
!1035 = !{null, !60}
!1036 = !{!1037}
!1037 = !DILocalVariable(name: "timerNum", arg: 1, scope: !1033, file: !3, line: 94, type: !60)
!1038 = !DILocation(line: 0, scope: !1033)
!1039 = !DILocation(line: 96, column: 5, scope: !1033)
!1040 = !DILocation(line: 96, column: 5, scope: !1041)
!1041 = distinct !DILexicalBlock(scope: !1042, file: !3, line: 96, column: 5)
!1042 = distinct !DILexicalBlock(scope: !1033, file: !3, line: 96, column: 5)
!1043 = distinct !{!1043, !1040, !1040}
!1044 = !DILocation(line: 99, column: 30, scope: !1045)
!1045 = distinct !DILexicalBlock(scope: !1046, file: !3, line: 98, column: 24)
!1046 = distinct !DILexicalBlock(scope: !1033, file: !3, line: 98, column: 9)
!1047 = !DILocation(line: 100, column: 9, scope: !1045)
!1048 = !DILocation(line: 101, column: 5, scope: !1045)
!1049 = !DILocation(line: 102, column: 30, scope: !1050)
!1050 = distinct !DILexicalBlock(scope: !1051, file: !3, line: 101, column: 31)
!1051 = distinct !DILexicalBlock(scope: !1046, file: !3, line: 101, column: 16)
!1052 = !DILocation(line: 103, column: 9, scope: !1050)
!1053 = !DILocation(line: 104, column: 5, scope: !1050)
!1054 = !DILocation(line: 105, column: 30, scope: !1055)
!1055 = distinct !DILexicalBlock(scope: !1056, file: !3, line: 104, column: 31)
!1056 = distinct !DILexicalBlock(scope: !1051, file: !3, line: 104, column: 16)
!1057 = !DILocation(line: 106, column: 5, scope: !1055)
!1058 = !DILocation(line: 108, column: 1, scope: !1033)
!1059 = distinct !DISubprogram(name: "GPT_Stop", scope: !3, file: !3, line: 110, type: !1034, scopeLine: 111, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1060)
!1060 = !{!1061}
!1061 = !DILocalVariable(name: "timerNum", arg: 1, scope: !1059, file: !3, line: 110, type: !60)
!1062 = !DILocation(line: 0, scope: !1059)
!1063 = !DILocation(line: 112, column: 9, scope: !1059)
!1064 = !DILocation(line: 113, column: 30, scope: !1065)
!1065 = distinct !DILexicalBlock(scope: !1066, file: !3, line: 112, column: 24)
!1066 = distinct !DILexicalBlock(scope: !1059, file: !3, line: 112, column: 9)
!1067 = !DILocation(line: 114, column: 30, scope: !1065)
!1068 = !DILocation(line: 115, column: 31, scope: !1065)
!1069 = !DILocation(line: 117, column: 5, scope: !1065)
!1070 = !DILocation(line: 118, column: 30, scope: !1071)
!1071 = distinct !DILexicalBlock(scope: !1072, file: !3, line: 117, column: 31)
!1072 = distinct !DILexicalBlock(scope: !1066, file: !3, line: 117, column: 16)
!1073 = !DILocation(line: 119, column: 30, scope: !1071)
!1074 = !DILocation(line: 120, column: 31, scope: !1071)
!1075 = !DILocation(line: 121, column: 5, scope: !1071)
!1076 = !DILocation(line: 122, column: 30, scope: !1077)
!1077 = distinct !DILexicalBlock(scope: !1078, file: !3, line: 121, column: 31)
!1078 = distinct !DILexicalBlock(scope: !1072, file: !3, line: 121, column: 16)
!1079 = !DILocation(line: 123, column: 5, scope: !1077)
!1080 = !DILocation(line: 124, column: 30, scope: !1081)
!1081 = distinct !DILexicalBlock(scope: !1082, file: !3, line: 123, column: 31)
!1082 = distinct !DILexicalBlock(scope: !1078, file: !3, line: 123, column: 16)
!1083 = !DILocation(line: 125, column: 5, scope: !1081)
!1084 = !DILocation(line: 128, column: 1, scope: !1059)
!1085 = distinct !DISubprogram(name: "GPT_INT_Handler", scope: !3, file: !3, line: 130, type: !322, scopeLine: 131, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1086)
!1086 = !{!1087, !1088}
!1087 = !DILocalVariable(name: "irq_number", arg: 1, scope: !1085, file: !3, line: 130, type: !237)
!1088 = !DILocalVariable(name: "GPT_Status", scope: !1085, file: !3, line: 132, type: !131)
!1089 = !DILocation(line: 0, scope: !1085)
!1090 = !DILocation(line: 135, column: 18, scope: !1085)
!1091 = !DILocation(line: 136, column: 26, scope: !1085)
!1092 = !DILocation(line: 136, column: 24, scope: !1085)
!1093 = !DILocation(line: 138, column: 20, scope: !1094)
!1094 = distinct !DILexicalBlock(scope: !1085, file: !3, line: 138, column: 9)
!1095 = !DILocation(line: 138, column: 9, scope: !1085)
!1096 = !DILocation(line: 141, column: 27, scope: !1097)
!1097 = distinct !DILexicalBlock(scope: !1094, file: !3, line: 141, column: 16)
!1098 = !DILocation(line: 141, column: 16, scope: !1094)
!1099 = !DILocation(line: 0, scope: !1094)
!1100 = !DILocation(line: 145, column: 1, scope: !1085)
!1101 = distinct !DISubprogram(name: "GPT_init", scope: !3, file: !3, line: 147, type: !1102, scopeLine: 148, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1104)
!1102 = !DISubroutineType(types: !1103)
!1103 = !{null, !60, !60, !74}
!1104 = !{!1105, !1106, !1107}
!1105 = !DILocalVariable(name: "timerNum", arg: 1, scope: !1101, file: !3, line: 147, type: !60)
!1106 = !DILocalVariable(name: "speed_32us", arg: 2, scope: !1101, file: !3, line: 147, type: !60)
!1107 = !DILocalVariable(name: "GPT_Callback", arg: 3, scope: !1101, file: !3, line: 147, type: !74)
!1108 = !DILocation(line: 0, scope: !1101)
!1109 = !DILocation(line: 149, column: 5, scope: !1101)
!1110 = !DILocation(line: 149, column: 5, scope: !1111)
!1111 = distinct !DILexicalBlock(scope: !1112, file: !3, line: 149, column: 5)
!1112 = distinct !DILexicalBlock(scope: !1101, file: !3, line: 149, column: 5)
!1113 = distinct !{!1113, !1110, !1110}
!1114 = !DILocation(line: 149, column: 5, scope: !1112)
!1115 = !DILocation(line: 151, column: 23, scope: !1116)
!1116 = distinct !DILexicalBlock(scope: !1101, file: !3, line: 151, column: 9)
!1117 = !DILocation(line: 152, column: 9, scope: !1118)
!1118 = distinct !DILexicalBlock(scope: !1116, file: !3, line: 151, column: 41)
!1119 = !DILocation(line: 153, column: 9, scope: !1118)
!1120 = !DILocation(line: 154, column: 9, scope: !1118)
!1121 = !DILocation(line: 155, column: 5, scope: !1118)
!1122 = !DILocation(line: 157, column: 9, scope: !1101)
!1123 = !DILocation(line: 158, column: 37, scope: !1124)
!1124 = distinct !DILexicalBlock(scope: !1125, file: !3, line: 157, column: 24)
!1125 = distinct !DILexicalBlock(scope: !1101, file: !3, line: 157, column: 9)
!1126 = !DILocation(line: 159, column: 30, scope: !1124)
!1127 = !DILocation(line: 160, column: 45, scope: !1124)
!1128 = !DILocation(line: 160, column: 30, scope: !1124)
!1129 = !DILocation(line: 161, column: 5, scope: !1124)
!1130 = !DILocation(line: 162, column: 37, scope: !1131)
!1131 = distinct !DILexicalBlock(scope: !1132, file: !3, line: 161, column: 31)
!1132 = distinct !DILexicalBlock(scope: !1125, file: !3, line: 161, column: 16)
!1133 = !DILocation(line: 163, column: 30, scope: !1131)
!1134 = !DILocation(line: 164, column: 45, scope: !1131)
!1135 = !DILocation(line: 164, column: 30, scope: !1131)
!1136 = !DILocation(line: 165, column: 5, scope: !1131)
!1137 = !DILocation(line: 166, column: 59, scope: !1138)
!1138 = distinct !DILexicalBlock(scope: !1139, file: !3, line: 165, column: 31)
!1139 = distinct !DILexicalBlock(scope: !1132, file: !3, line: 165, column: 16)
!1140 = !DILocation(line: 166, column: 45, scope: !1138)
!1141 = !DILocation(line: 166, column: 30, scope: !1138)
!1142 = !DILocation(line: 167, column: 5, scope: !1138)
!1143 = !DILocation(line: 168, column: 59, scope: !1144)
!1144 = distinct !DILexicalBlock(scope: !1145, file: !3, line: 167, column: 31)
!1145 = distinct !DILexicalBlock(scope: !1139, file: !3, line: 167, column: 16)
!1146 = !DILocation(line: 168, column: 45, scope: !1144)
!1147 = !DILocation(line: 168, column: 30, scope: !1144)
!1148 = !DILocation(line: 169, column: 30, scope: !1144)
!1149 = !DILocation(line: 170, column: 5, scope: !1144)
!1150 = !DILocation(line: 171, column: 1, scope: !1101)
!1151 = distinct !DISubprogram(name: "GPT_return_current_count", scope: !3, file: !3, line: 173, type: !1152, scopeLine: 174, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1154)
!1152 = !DISubroutineType(types: !1153)
!1153 = !{!60, !60}
!1154 = !{!1155, !1156}
!1155 = !DILocalVariable(name: "timerNum", arg: 1, scope: !1151, file: !3, line: 173, type: !60)
!1156 = !DILocalVariable(name: "current_count", scope: !1151, file: !3, line: 175, type: !60)
!1157 = !DILocation(line: 0, scope: !1151)
!1158 = !DILocation(line: 177, column: 5, scope: !1151)
!1159 = !DILocation(line: 177, column: 5, scope: !1160)
!1160 = distinct !DILexicalBlock(scope: !1161, file: !3, line: 177, column: 5)
!1161 = distinct !DILexicalBlock(scope: !1151, file: !3, line: 177, column: 5)
!1162 = distinct !{!1162, !1159, !1159}
!1163 = !DILocation(line: 183, column: 5, scope: !1164)
!1164 = distinct !DILexicalBlock(scope: !1165, file: !3, line: 181, column: 31)
!1165 = distinct !DILexicalBlock(scope: !1166, file: !3, line: 181, column: 16)
!1166 = distinct !DILexicalBlock(scope: !1151, file: !3, line: 179, column: 9)
!1167 = !DILocation(line: 185, column: 5, scope: !1168)
!1168 = distinct !DILexicalBlock(scope: !1169, file: !3, line: 183, column: 31)
!1169 = distinct !DILexicalBlock(scope: !1165, file: !3, line: 183, column: 16)
!1170 = !DILocation(line: 187, column: 5, scope: !1171)
!1171 = distinct !DILexicalBlock(scope: !1172, file: !3, line: 185, column: 31)
!1172 = distinct !DILexicalBlock(scope: !1169, file: !3, line: 185, column: 16)
!1173 = !DILocation(line: 0, scope: !1166)
!1174 = !DILocation(line: 189, column: 5, scope: !1151)
!1175 = distinct !DISubprogram(name: "CM4_GPT2Init", scope: !3, file: !3, line: 193, type: !75, scopeLine: 194, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1176)
!1176 = !{}
!1177 = !DILocation(line: 195, column: 5, scope: !1175)
!1178 = !DILocation(line: 196, column: 1, scope: !1175)
!1179 = distinct !DISubprogram(name: "CM4_GPT4Init", scope: !3, file: !3, line: 198, type: !75, scopeLine: 199, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1176)
!1180 = !DILocation(line: 200, column: 5, scope: !1179)
!1181 = !DILocation(line: 201, column: 1, scope: !1179)
!1182 = distinct !DISubprogram(name: "halGPIO_ConfDirection", scope: !724, file: !724, line: 54, type: !1183, scopeLine: 55, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !723, retainedNodes: !1186)
!1183 = !DISubroutineType(types: !1184)
!1184 = !{!1185, !80, !133}
!1185 = !DIDerivedType(tag: DW_TAG_typedef, name: "INT32", file: !6, line: 56, baseType: !13)
!1186 = !{!1187, !1188, !1189, !1191}
!1187 = !DILocalVariable(name: "GPIO_pin", arg: 1, scope: !1182, file: !724, line: 54, type: !80)
!1188 = !DILocalVariable(name: "outEnable", arg: 2, scope: !1182, file: !724, line: 54, type: !133)
!1189 = !DILocalVariable(name: "no", scope: !1182, file: !724, line: 57, type: !1190)
!1190 = !DIDerivedType(tag: DW_TAG_typedef, name: "UINT16", file: !6, line: 60, baseType: !132)
!1191 = !DILocalVariable(name: "remainder", scope: !1182, file: !724, line: 58, type: !1190)
!1192 = !DILocation(line: 0, scope: !1182)
!1193 = !DILocation(line: 59, column: 19, scope: !1182)
!1194 = !DILocation(line: 60, column: 17, scope: !1182)
!1195 = !DILocation(line: 61, column: 5, scope: !1182)
!1196 = !DILocation(line: 65, column: 27, scope: !1197)
!1197 = distinct !DILexicalBlock(scope: !1198, file: !724, line: 65, column: 17)
!1198 = distinct !DILexicalBlock(scope: !1182, file: !724, line: 61, column: 17)
!1199 = !DILocation(line: 0, scope: !1197)
!1200 = !DILocation(line: 65, column: 17, scope: !1198)
!1201 = !DILocation(line: 66, column: 21, scope: !1202)
!1202 = distinct !DILexicalBlock(scope: !1197, file: !724, line: 65, column: 33)
!1203 = !DILocation(line: 67, column: 73, scope: !1204)
!1204 = distinct !DILexicalBlock(scope: !1205, file: !724, line: 66, column: 38)
!1205 = distinct !DILexicalBlock(scope: !1202, file: !724, line: 66, column: 21)
!1206 = !DILocation(line: 67, column: 69, scope: !1204)
!1207 = !DILocation(line: 67, column: 66, scope: !1204)
!1208 = !DILocation(line: 68, column: 17, scope: !1204)
!1209 = !DILocation(line: 68, column: 28, scope: !1205)
!1210 = !DILocation(line: 69, column: 77, scope: !1211)
!1211 = distinct !DILexicalBlock(scope: !1212, file: !724, line: 68, column: 45)
!1212 = distinct !DILexicalBlock(scope: !1205, file: !724, line: 68, column: 28)
!1213 = !DILocation(line: 70, column: 77, scope: !1211)
!1214 = !DILocation(line: 71, column: 17, scope: !1211)
!1215 = !DILocation(line: 72, column: 77, scope: !1216)
!1216 = distinct !DILexicalBlock(scope: !1217, file: !724, line: 71, column: 45)
!1217 = distinct !DILexicalBlock(scope: !1212, file: !724, line: 71, column: 28)
!1218 = !DILocation(line: 73, column: 77, scope: !1216)
!1219 = !DILocation(line: 74, column: 17, scope: !1216)
!1220 = !DILocation(line: 75, column: 79, scope: !1221)
!1221 = distinct !DILexicalBlock(scope: !1222, file: !724, line: 74, column: 45)
!1222 = distinct !DILexicalBlock(scope: !1217, file: !724, line: 74, column: 28)
!1223 = !DILocation(line: 76, column: 79, scope: !1221)
!1224 = !DILocation(line: 77, column: 17, scope: !1221)
!1225 = !DILocation(line: 78, column: 79, scope: !1226)
!1226 = distinct !DILexicalBlock(scope: !1227, file: !724, line: 77, column: 45)
!1227 = distinct !DILexicalBlock(scope: !1222, file: !724, line: 77, column: 28)
!1228 = !DILocation(line: 79, column: 79, scope: !1226)
!1229 = !DILocation(line: 80, column: 17, scope: !1226)
!1230 = !DILocation(line: 81, column: 79, scope: !1231)
!1231 = distinct !DILexicalBlock(scope: !1232, file: !724, line: 80, column: 45)
!1232 = distinct !DILexicalBlock(scope: !1227, file: !724, line: 80, column: 28)
!1233 = !DILocation(line: 82, column: 79, scope: !1231)
!1234 = !DILocation(line: 83, column: 17, scope: !1231)
!1235 = !DILocation(line: 85, column: 17, scope: !1202)
!1236 = !DILocation(line: 86, column: 13, scope: !1202)
!1237 = !DILocation(line: 88, column: 21, scope: !1238)
!1238 = distinct !DILexicalBlock(scope: !1197, file: !724, line: 86, column: 20)
!1239 = !DILocation(line: 89, column: 72, scope: !1240)
!1240 = distinct !DILexicalBlock(scope: !1241, file: !724, line: 88, column: 38)
!1241 = distinct !DILexicalBlock(scope: !1238, file: !724, line: 88, column: 21)
!1242 = !DILocation(line: 89, column: 66, scope: !1240)
!1243 = !DILocation(line: 90, column: 17, scope: !1240)
!1244 = !DILocation(line: 90, column: 28, scope: !1241)
!1245 = !DILocation(line: 91, column: 77, scope: !1246)
!1246 = distinct !DILexicalBlock(scope: !1247, file: !724, line: 90, column: 45)
!1247 = distinct !DILexicalBlock(scope: !1241, file: !724, line: 90, column: 28)
!1248 = !DILocation(line: 92, column: 17, scope: !1246)
!1249 = !DILocation(line: 93, column: 77, scope: !1250)
!1250 = distinct !DILexicalBlock(scope: !1251, file: !724, line: 92, column: 45)
!1251 = distinct !DILexicalBlock(scope: !1247, file: !724, line: 92, column: 28)
!1252 = !DILocation(line: 94, column: 17, scope: !1250)
!1253 = !DILocation(line: 95, column: 79, scope: !1254)
!1254 = distinct !DILexicalBlock(scope: !1255, file: !724, line: 94, column: 45)
!1255 = distinct !DILexicalBlock(scope: !1251, file: !724, line: 94, column: 28)
!1256 = !DILocation(line: 96, column: 17, scope: !1254)
!1257 = !DILocation(line: 97, column: 79, scope: !1258)
!1258 = distinct !DILexicalBlock(scope: !1259, file: !724, line: 96, column: 45)
!1259 = distinct !DILexicalBlock(scope: !1255, file: !724, line: 96, column: 28)
!1260 = !DILocation(line: 98, column: 17, scope: !1258)
!1261 = !DILocation(line: 99, column: 79, scope: !1262)
!1262 = distinct !DILexicalBlock(scope: !1263, file: !724, line: 98, column: 45)
!1263 = distinct !DILexicalBlock(scope: !1259, file: !724, line: 98, column: 28)
!1264 = !DILocation(line: 100, column: 17, scope: !1262)
!1265 = !DILocation(line: 103, column: 17, scope: !1238)
!1266 = !DILocation(line: 109, column: 27, scope: !1267)
!1267 = distinct !DILexicalBlock(scope: !1198, file: !724, line: 109, column: 17)
!1268 = !DILocation(line: 0, scope: !1267)
!1269 = !DILocation(line: 109, column: 17, scope: !1198)
!1270 = !DILocation(line: 110, column: 21, scope: !1271)
!1271 = distinct !DILexicalBlock(scope: !1267, file: !724, line: 109, column: 33)
!1272 = !DILocation(line: 111, column: 73, scope: !1273)
!1273 = distinct !DILexicalBlock(scope: !1274, file: !724, line: 110, column: 36)
!1274 = distinct !DILexicalBlock(scope: !1271, file: !724, line: 110, column: 21)
!1275 = !DILocation(line: 111, column: 69, scope: !1273)
!1276 = !DILocation(line: 111, column: 66, scope: !1273)
!1277 = !DILocation(line: 112, column: 17, scope: !1273)
!1278 = !DILocation(line: 113, column: 79, scope: !1279)
!1279 = distinct !DILexicalBlock(scope: !1274, file: !724, line: 112, column: 24)
!1280 = !DILocation(line: 114, column: 79, scope: !1279)
!1281 = !DILocation(line: 117, column: 17, scope: !1271)
!1282 = !DILocation(line: 118, column: 13, scope: !1271)
!1283 = !DILocation(line: 120, column: 21, scope: !1284)
!1284 = distinct !DILexicalBlock(scope: !1267, file: !724, line: 118, column: 20)
!1285 = !DILocation(line: 121, column: 72, scope: !1286)
!1286 = distinct !DILexicalBlock(scope: !1287, file: !724, line: 120, column: 36)
!1287 = distinct !DILexicalBlock(scope: !1284, file: !724, line: 120, column: 21)
!1288 = !DILocation(line: 121, column: 66, scope: !1286)
!1289 = !DILocation(line: 122, column: 17, scope: !1286)
!1290 = !DILocation(line: 123, column: 79, scope: !1291)
!1291 = distinct !DILexicalBlock(scope: !1287, file: !724, line: 122, column: 24)
!1292 = !DILocation(line: 126, column: 17, scope: !1284)
!1293 = !DILocation(line: 133, column: 1, scope: !1182)
!1294 = distinct !DISubprogram(name: "halGPO_Write", scope: !724, file: !724, line: 136, type: !1183, scopeLine: 137, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !723, retainedNodes: !1295)
!1295 = !{!1296, !1297, !1298, !1299}
!1296 = !DILocalVariable(name: "GPIO_pin", arg: 1, scope: !1294, file: !724, line: 136, type: !80)
!1297 = !DILocalVariable(name: "writeValue", arg: 2, scope: !1294, file: !724, line: 136, type: !133)
!1298 = !DILocalVariable(name: "no", scope: !1294, file: !724, line: 138, type: !1190)
!1299 = !DILocalVariable(name: "remainder", scope: !1294, file: !724, line: 139, type: !1190)
!1300 = !DILocation(line: 0, scope: !1294)
!1301 = !DILocation(line: 140, column: 19, scope: !1294)
!1302 = !DILocation(line: 141, column: 17, scope: !1294)
!1303 = !DILocation(line: 142, column: 5, scope: !1294)
!1304 = !DILocation(line: 145, column: 17, scope: !1305)
!1305 = distinct !DILexicalBlock(scope: !1306, file: !724, line: 145, column: 17)
!1306 = distinct !DILexicalBlock(scope: !1294, file: !724, line: 142, column: 17)
!1307 = !DILocation(line: 0, scope: !1305)
!1308 = !DILocation(line: 145, column: 17, scope: !1306)
!1309 = !DILocation(line: 146, column: 17, scope: !1310)
!1310 = distinct !DILexicalBlock(scope: !1305, file: !724, line: 145, column: 29)
!1311 = !DILocation(line: 147, column: 13, scope: !1310)
!1312 = !DILocation(line: 148, column: 17, scope: !1313)
!1313 = distinct !DILexicalBlock(scope: !1305, file: !724, line: 147, column: 20)
!1314 = !DILocation(line: 153, column: 17, scope: !1315)
!1315 = distinct !DILexicalBlock(scope: !1306, file: !724, line: 153, column: 17)
!1316 = !DILocation(line: 0, scope: !1315)
!1317 = !DILocation(line: 153, column: 17, scope: !1306)
!1318 = !DILocation(line: 154, column: 17, scope: !1319)
!1319 = distinct !DILexicalBlock(scope: !1315, file: !724, line: 153, column: 29)
!1320 = !DILocation(line: 155, column: 13, scope: !1319)
!1321 = !DILocation(line: 156, column: 17, scope: !1322)
!1322 = distinct !DILexicalBlock(scope: !1315, file: !724, line: 155, column: 20)
!1323 = !DILocation(line: 163, column: 1, scope: !1294)
!1324 = distinct !DISubprogram(name: "halgetGPIO_DOUT", scope: !724, file: !724, line: 169, type: !1325, scopeLine: 170, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !723, retainedNodes: !1327)
!1325 = !DISubroutineType(types: !1326)
!1326 = !{!133, !80}
!1327 = !{!1328, !1329, !1330, !1331}
!1328 = !DILocalVariable(name: "GPIO_pin", arg: 1, scope: !1324, file: !724, line: 169, type: !80)
!1329 = !DILocalVariable(name: "no", scope: !1324, file: !724, line: 171, type: !1190)
!1330 = !DILocalVariable(name: "remainder", scope: !1324, file: !724, line: 172, type: !1190)
!1331 = !DILocalVariable(name: "dout", scope: !1324, file: !724, line: 175, type: !133)
!1332 = !DILocation(line: 0, scope: !1324)
!1333 = !DILocation(line: 173, column: 19, scope: !1324)
!1334 = !DILocation(line: 174, column: 17, scope: !1324)
!1335 = !DILocation(line: 177, column: 5, scope: !1324)
!1336 = !DILocation(line: 183, column: 13, scope: !1337)
!1337 = distinct !DILexicalBlock(scope: !1324, file: !724, line: 177, column: 17)
!1338 = !DILocation(line: 0, scope: !1337)
!1339 = !DILocation(line: 187, column: 5, scope: !1324)
!1340 = !DILocation(line: 188, column: 1, scope: !1324)
!1341 = distinct !DISubprogram(name: "halgetGPIO_DIN", scope: !724, file: !724, line: 189, type: !1325, scopeLine: 190, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !723, retainedNodes: !1342)
!1342 = !{!1343, !1344, !1345, !1346}
!1343 = !DILocalVariable(name: "GPIO_pin", arg: 1, scope: !1341, file: !724, line: 189, type: !80)
!1344 = !DILocalVariable(name: "no", scope: !1341, file: !724, line: 191, type: !1190)
!1345 = !DILocalVariable(name: "remainder", scope: !1341, file: !724, line: 192, type: !1190)
!1346 = !DILocalVariable(name: "din", scope: !1341, file: !724, line: 195, type: !133)
!1347 = !DILocation(line: 0, scope: !1341)
!1348 = !DILocation(line: 193, column: 19, scope: !1341)
!1349 = !DILocation(line: 194, column: 17, scope: !1341)
!1350 = !DILocation(line: 196, column: 5, scope: !1341)
!1351 = !DILocation(line: 203, column: 13, scope: !1352)
!1352 = distinct !DILexicalBlock(scope: !1341, file: !724, line: 196, column: 17)
!1353 = !DILocation(line: 0, scope: !1352)
!1354 = !DILocation(line: 208, column: 5, scope: !1341)
!1355 = !DILocation(line: 209, column: 1, scope: !1341)
!1356 = distinct !DISubprogram(name: "halgetGPIO_OutEnable", scope: !724, file: !724, line: 210, type: !1325, scopeLine: 211, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !723, retainedNodes: !1357)
!1357 = !{!1358, !1359, !1360, !1361}
!1358 = !DILocalVariable(name: "GPIO_pin", arg: 1, scope: !1356, file: !724, line: 210, type: !80)
!1359 = !DILocalVariable(name: "no", scope: !1356, file: !724, line: 212, type: !1190)
!1360 = !DILocalVariable(name: "remainder", scope: !1356, file: !724, line: 213, type: !1190)
!1361 = !DILocalVariable(name: "outEnable", scope: !1356, file: !724, line: 216, type: !133)
!1362 = !DILocation(line: 0, scope: !1356)
!1363 = !DILocation(line: 214, column: 19, scope: !1356)
!1364 = !DILocation(line: 215, column: 17, scope: !1356)
!1365 = !DILocation(line: 218, column: 5, scope: !1356)
!1366 = !DILocation(line: 224, column: 13, scope: !1367)
!1367 = distinct !DILexicalBlock(scope: !1356, file: !724, line: 218, column: 17)
!1368 = !DILocation(line: 0, scope: !1367)
!1369 = !DILocation(line: 228, column: 5, scope: !1356)
!1370 = !DILocation(line: 229, column: 1, scope: !1356)
!1371 = distinct !DISubprogram(name: "halGPIO_PullUp_SET", scope: !724, file: !724, line: 232, type: !1372, scopeLine: 233, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !723, retainedNodes: !1374)
!1372 = !DISubroutineType(types: !1373)
!1373 = !{!1185, !80}
!1374 = !{!1375, !1376, !1377}
!1375 = !DILocalVariable(name: "GPIO_pin", arg: 1, scope: !1371, file: !724, line: 232, type: !80)
!1376 = !DILocalVariable(name: "no", scope: !1371, file: !724, line: 234, type: !1190)
!1377 = !DILocalVariable(name: "remainder", scope: !1371, file: !724, line: 235, type: !1190)
!1378 = !DILocation(line: 0, scope: !1371)
!1379 = !DILocation(line: 236, column: 19, scope: !1371)
!1380 = !DILocation(line: 237, column: 17, scope: !1371)
!1381 = !DILocation(line: 238, column: 5, scope: !1371)
!1382 = !DILocation(line: 239, column: 5, scope: !1371)
!1383 = !DILocation(line: 241, column: 27, scope: !1384)
!1384 = distinct !DILexicalBlock(scope: !1385, file: !724, line: 241, column: 17)
!1385 = distinct !DILexicalBlock(scope: !1371, file: !724, line: 239, column: 17)
!1386 = !DILocation(line: 241, column: 17, scope: !1385)
!1387 = !DILocation(line: 241, column: 17, scope: !1384)
!1388 = !DILocation(line: 242, column: 17, scope: !1389)
!1389 = distinct !DILexicalBlock(scope: !1384, file: !724, line: 241, column: 34)
!1390 = !DILocation(line: 243, column: 13, scope: !1389)
!1391 = !DILocation(line: 243, column: 24, scope: !1384)
!1392 = !DILocation(line: 244, column: 73, scope: !1393)
!1393 = distinct !DILexicalBlock(scope: !1394, file: !724, line: 243, column: 41)
!1394 = distinct !DILexicalBlock(scope: !1384, file: !724, line: 243, column: 24)
!1395 = !DILocation(line: 245, column: 73, scope: !1393)
!1396 = !DILocation(line: 246, column: 13, scope: !1393)
!1397 = !DILocation(line: 247, column: 73, scope: !1398)
!1398 = distinct !DILexicalBlock(scope: !1399, file: !724, line: 246, column: 41)
!1399 = distinct !DILexicalBlock(scope: !1394, file: !724, line: 246, column: 24)
!1400 = !DILocation(line: 248, column: 73, scope: !1398)
!1401 = !DILocation(line: 249, column: 13, scope: !1398)
!1402 = !DILocation(line: 250, column: 75, scope: !1403)
!1403 = distinct !DILexicalBlock(scope: !1404, file: !724, line: 249, column: 41)
!1404 = distinct !DILexicalBlock(scope: !1399, file: !724, line: 249, column: 24)
!1405 = !DILocation(line: 251, column: 75, scope: !1403)
!1406 = !DILocation(line: 252, column: 13, scope: !1403)
!1407 = !DILocation(line: 253, column: 75, scope: !1408)
!1408 = distinct !DILexicalBlock(scope: !1409, file: !724, line: 252, column: 41)
!1409 = distinct !DILexicalBlock(scope: !1404, file: !724, line: 252, column: 24)
!1410 = !DILocation(line: 254, column: 75, scope: !1408)
!1411 = !DILocation(line: 255, column: 13, scope: !1408)
!1412 = !DILocation(line: 256, column: 75, scope: !1413)
!1413 = distinct !DILexicalBlock(scope: !1414, file: !724, line: 255, column: 41)
!1414 = distinct !DILexicalBlock(scope: !1409, file: !724, line: 255, column: 24)
!1415 = !DILocation(line: 257, column: 75, scope: !1413)
!1416 = !DILocation(line: 258, column: 13, scope: !1413)
!1417 = !DILocation(line: 261, column: 18, scope: !1418)
!1418 = distinct !DILexicalBlock(scope: !1385, file: !724, line: 261, column: 17)
!1419 = !DILocation(line: 261, column: 17, scope: !1385)
!1420 = !DILocation(line: 262, column: 75, scope: !1421)
!1421 = distinct !DILexicalBlock(scope: !1418, file: !724, line: 261, column: 29)
!1422 = !DILocation(line: 263, column: 75, scope: !1421)
!1423 = !DILocation(line: 264, column: 13, scope: !1421)
!1424 = !DILocation(line: 265, column: 17, scope: !1425)
!1425 = distinct !DILexicalBlock(scope: !1418, file: !724, line: 264, column: 20)
!1426 = !DILocation(line: 272, column: 1, scope: !1371)
!1427 = distinct !DISubprogram(name: "halGPIO_PullDown_RESET", scope: !724, file: !724, line: 359, type: !1372, scopeLine: 360, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !723, retainedNodes: !1428)
!1428 = !{!1429, !1430, !1431}
!1429 = !DILocalVariable(name: "GPIO_pin", arg: 1, scope: !1427, file: !724, line: 359, type: !80)
!1430 = !DILocalVariable(name: "no", scope: !1427, file: !724, line: 362, type: !1190)
!1431 = !DILocalVariable(name: "remainder", scope: !1427, file: !724, line: 363, type: !1190)
!1432 = !DILocation(line: 0, scope: !1427)
!1433 = !DILocation(line: 364, column: 19, scope: !1427)
!1434 = !DILocation(line: 365, column: 17, scope: !1427)
!1435 = !DILocation(line: 367, column: 5, scope: !1427)
!1436 = !DILocation(line: 369, column: 27, scope: !1437)
!1437 = distinct !DILexicalBlock(scope: !1438, file: !724, line: 369, column: 17)
!1438 = distinct !DILexicalBlock(scope: !1427, file: !724, line: 367, column: 17)
!1439 = !DILocation(line: 369, column: 17, scope: !1438)
!1440 = !DILocation(line: 369, column: 17, scope: !1437)
!1441 = !DILocation(line: 370, column: 17, scope: !1442)
!1442 = distinct !DILexicalBlock(scope: !1437, file: !724, line: 369, column: 34)
!1443 = !DILocation(line: 371, column: 13, scope: !1442)
!1444 = !DILocation(line: 371, column: 24, scope: !1437)
!1445 = !DILocation(line: 372, column: 73, scope: !1446)
!1446 = distinct !DILexicalBlock(scope: !1447, file: !724, line: 371, column: 41)
!1447 = distinct !DILexicalBlock(scope: !1437, file: !724, line: 371, column: 24)
!1448 = !DILocation(line: 373, column: 73, scope: !1446)
!1449 = !DILocation(line: 374, column: 13, scope: !1446)
!1450 = !DILocation(line: 375, column: 73, scope: !1451)
!1451 = distinct !DILexicalBlock(scope: !1452, file: !724, line: 374, column: 41)
!1452 = distinct !DILexicalBlock(scope: !1447, file: !724, line: 374, column: 24)
!1453 = !DILocation(line: 376, column: 73, scope: !1451)
!1454 = !DILocation(line: 377, column: 13, scope: !1451)
!1455 = !DILocation(line: 378, column: 75, scope: !1456)
!1456 = distinct !DILexicalBlock(scope: !1457, file: !724, line: 377, column: 41)
!1457 = distinct !DILexicalBlock(scope: !1452, file: !724, line: 377, column: 24)
!1458 = !DILocation(line: 379, column: 75, scope: !1456)
!1459 = !DILocation(line: 380, column: 13, scope: !1456)
!1460 = !DILocation(line: 381, column: 75, scope: !1461)
!1461 = distinct !DILexicalBlock(scope: !1462, file: !724, line: 380, column: 41)
!1462 = distinct !DILexicalBlock(scope: !1457, file: !724, line: 380, column: 24)
!1463 = !DILocation(line: 382, column: 75, scope: !1461)
!1464 = !DILocation(line: 383, column: 13, scope: !1461)
!1465 = !DILocation(line: 384, column: 75, scope: !1466)
!1466 = distinct !DILexicalBlock(scope: !1467, file: !724, line: 383, column: 41)
!1467 = distinct !DILexicalBlock(scope: !1462, file: !724, line: 383, column: 24)
!1468 = !DILocation(line: 385, column: 75, scope: !1466)
!1469 = !DILocation(line: 386, column: 13, scope: !1466)
!1470 = !DILocation(line: 389, column: 18, scope: !1471)
!1471 = distinct !DILexicalBlock(scope: !1438, file: !724, line: 389, column: 17)
!1472 = !DILocation(line: 389, column: 17, scope: !1438)
!1473 = !DILocation(line: 390, column: 75, scope: !1474)
!1474 = distinct !DILexicalBlock(scope: !1471, file: !724, line: 389, column: 29)
!1475 = !DILocation(line: 391, column: 75, scope: !1474)
!1476 = !DILocation(line: 392, column: 13, scope: !1474)
!1477 = !DILocation(line: 393, column: 17, scope: !1478)
!1478 = distinct !DILexicalBlock(scope: !1471, file: !724, line: 392, column: 20)
!1479 = !DILocation(line: 401, column: 1, scope: !1427)
!1480 = distinct !DISubprogram(name: "halGPIO_PullUp_RESET", scope: !724, file: !724, line: 274, type: !1372, scopeLine: 275, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !723, retainedNodes: !1481)
!1481 = !{!1482, !1483, !1484}
!1482 = !DILocalVariable(name: "GPIO_pin", arg: 1, scope: !1480, file: !724, line: 274, type: !80)
!1483 = !DILocalVariable(name: "no", scope: !1480, file: !724, line: 276, type: !1190)
!1484 = !DILocalVariable(name: "remainder", scope: !1480, file: !724, line: 277, type: !1190)
!1485 = !DILocation(line: 0, scope: !1480)
!1486 = !DILocation(line: 278, column: 19, scope: !1480)
!1487 = !DILocation(line: 279, column: 17, scope: !1480)
!1488 = !DILocation(line: 281, column: 5, scope: !1480)
!1489 = !DILocation(line: 283, column: 27, scope: !1490)
!1490 = distinct !DILexicalBlock(scope: !1491, file: !724, line: 283, column: 17)
!1491 = distinct !DILexicalBlock(scope: !1480, file: !724, line: 281, column: 17)
!1492 = !DILocation(line: 283, column: 17, scope: !1491)
!1493 = !DILocation(line: 283, column: 17, scope: !1490)
!1494 = !DILocation(line: 284, column: 17, scope: !1495)
!1495 = distinct !DILexicalBlock(scope: !1490, file: !724, line: 283, column: 34)
!1496 = !DILocation(line: 285, column: 13, scope: !1495)
!1497 = !DILocation(line: 285, column: 24, scope: !1490)
!1498 = !DILocation(line: 286, column: 73, scope: !1499)
!1499 = distinct !DILexicalBlock(scope: !1500, file: !724, line: 285, column: 41)
!1500 = distinct !DILexicalBlock(scope: !1490, file: !724, line: 285, column: 24)
!1501 = !DILocation(line: 287, column: 73, scope: !1499)
!1502 = !DILocation(line: 288, column: 13, scope: !1499)
!1503 = !DILocation(line: 289, column: 73, scope: !1504)
!1504 = distinct !DILexicalBlock(scope: !1505, file: !724, line: 288, column: 41)
!1505 = distinct !DILexicalBlock(scope: !1500, file: !724, line: 288, column: 24)
!1506 = !DILocation(line: 290, column: 73, scope: !1504)
!1507 = !DILocation(line: 291, column: 13, scope: !1504)
!1508 = !DILocation(line: 292, column: 75, scope: !1509)
!1509 = distinct !DILexicalBlock(scope: !1510, file: !724, line: 291, column: 41)
!1510 = distinct !DILexicalBlock(scope: !1505, file: !724, line: 291, column: 24)
!1511 = !DILocation(line: 293, column: 75, scope: !1509)
!1512 = !DILocation(line: 294, column: 13, scope: !1509)
!1513 = !DILocation(line: 295, column: 75, scope: !1514)
!1514 = distinct !DILexicalBlock(scope: !1515, file: !724, line: 294, column: 41)
!1515 = distinct !DILexicalBlock(scope: !1510, file: !724, line: 294, column: 24)
!1516 = !DILocation(line: 296, column: 75, scope: !1514)
!1517 = !DILocation(line: 297, column: 13, scope: !1514)
!1518 = !DILocation(line: 298, column: 75, scope: !1519)
!1519 = distinct !DILexicalBlock(scope: !1520, file: !724, line: 297, column: 41)
!1520 = distinct !DILexicalBlock(scope: !1515, file: !724, line: 297, column: 24)
!1521 = !DILocation(line: 299, column: 75, scope: !1519)
!1522 = !DILocation(line: 300, column: 13, scope: !1519)
!1523 = !DILocation(line: 303, column: 18, scope: !1524)
!1524 = distinct !DILexicalBlock(scope: !1491, file: !724, line: 303, column: 17)
!1525 = !DILocation(line: 303, column: 17, scope: !1491)
!1526 = !DILocation(line: 304, column: 75, scope: !1527)
!1527 = distinct !DILexicalBlock(scope: !1524, file: !724, line: 303, column: 29)
!1528 = !DILocation(line: 305, column: 75, scope: !1527)
!1529 = !DILocation(line: 306, column: 13, scope: !1527)
!1530 = !DILocation(line: 307, column: 17, scope: !1531)
!1531 = distinct !DILexicalBlock(scope: !1524, file: !724, line: 306, column: 20)
!1532 = !DILocation(line: 314, column: 1, scope: !1480)
!1533 = distinct !DISubprogram(name: "halGPIO_PullDown_SET", scope: !724, file: !724, line: 316, type: !1372, scopeLine: 317, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !723, retainedNodes: !1534)
!1534 = !{!1535, !1536, !1537}
!1535 = !DILocalVariable(name: "GPIO_pin", arg: 1, scope: !1533, file: !724, line: 316, type: !80)
!1536 = !DILocalVariable(name: "no", scope: !1533, file: !724, line: 318, type: !1190)
!1537 = !DILocalVariable(name: "remainder", scope: !1533, file: !724, line: 319, type: !1190)
!1538 = !DILocation(line: 0, scope: !1533)
!1539 = !DILocation(line: 320, column: 19, scope: !1533)
!1540 = !DILocation(line: 321, column: 17, scope: !1533)
!1541 = !DILocation(line: 322, column: 5, scope: !1533)
!1542 = !DILocation(line: 323, column: 5, scope: !1533)
!1543 = !DILocation(line: 325, column: 27, scope: !1544)
!1544 = distinct !DILexicalBlock(scope: !1545, file: !724, line: 325, column: 17)
!1545 = distinct !DILexicalBlock(scope: !1533, file: !724, line: 323, column: 17)
!1546 = !DILocation(line: 325, column: 17, scope: !1545)
!1547 = !DILocation(line: 325, column: 17, scope: !1544)
!1548 = !DILocation(line: 326, column: 17, scope: !1549)
!1549 = distinct !DILexicalBlock(scope: !1544, file: !724, line: 325, column: 34)
!1550 = !DILocation(line: 327, column: 13, scope: !1549)
!1551 = !DILocation(line: 327, column: 24, scope: !1544)
!1552 = !DILocation(line: 328, column: 73, scope: !1553)
!1553 = distinct !DILexicalBlock(scope: !1554, file: !724, line: 327, column: 41)
!1554 = distinct !DILexicalBlock(scope: !1544, file: !724, line: 327, column: 24)
!1555 = !DILocation(line: 329, column: 73, scope: !1553)
!1556 = !DILocation(line: 330, column: 13, scope: !1553)
!1557 = !DILocation(line: 331, column: 73, scope: !1558)
!1558 = distinct !DILexicalBlock(scope: !1559, file: !724, line: 330, column: 41)
!1559 = distinct !DILexicalBlock(scope: !1554, file: !724, line: 330, column: 24)
!1560 = !DILocation(line: 332, column: 73, scope: !1558)
!1561 = !DILocation(line: 333, column: 13, scope: !1558)
!1562 = !DILocation(line: 334, column: 75, scope: !1563)
!1563 = distinct !DILexicalBlock(scope: !1564, file: !724, line: 333, column: 41)
!1564 = distinct !DILexicalBlock(scope: !1559, file: !724, line: 333, column: 24)
!1565 = !DILocation(line: 335, column: 75, scope: !1563)
!1566 = !DILocation(line: 336, column: 13, scope: !1563)
!1567 = !DILocation(line: 337, column: 75, scope: !1568)
!1568 = distinct !DILexicalBlock(scope: !1569, file: !724, line: 336, column: 41)
!1569 = distinct !DILexicalBlock(scope: !1564, file: !724, line: 336, column: 24)
!1570 = !DILocation(line: 338, column: 75, scope: !1568)
!1571 = !DILocation(line: 339, column: 13, scope: !1568)
!1572 = !DILocation(line: 340, column: 75, scope: !1573)
!1573 = distinct !DILexicalBlock(scope: !1574, file: !724, line: 339, column: 41)
!1574 = distinct !DILexicalBlock(scope: !1569, file: !724, line: 339, column: 24)
!1575 = !DILocation(line: 341, column: 75, scope: !1573)
!1576 = !DILocation(line: 342, column: 13, scope: !1573)
!1577 = !DILocation(line: 345, column: 18, scope: !1578)
!1578 = distinct !DILexicalBlock(scope: !1545, file: !724, line: 345, column: 17)
!1579 = !DILocation(line: 345, column: 17, scope: !1545)
!1580 = !DILocation(line: 346, column: 75, scope: !1581)
!1581 = distinct !DILexicalBlock(scope: !1578, file: !724, line: 345, column: 29)
!1582 = !DILocation(line: 347, column: 75, scope: !1581)
!1583 = !DILocation(line: 348, column: 13, scope: !1581)
!1584 = !DILocation(line: 349, column: 17, scope: !1585)
!1585 = distinct !DILexicalBlock(scope: !1578, file: !724, line: 348, column: 20)
!1586 = !DILocation(line: 357, column: 1, scope: !1533)
!1587 = distinct !DISubprogram(name: "halGPIO_SetDriving", scope: !724, file: !724, line: 404, type: !1183, scopeLine: 405, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !723, retainedNodes: !1588)
!1588 = !{!1589, !1590, !1591, !1592}
!1589 = !DILocalVariable(name: "GPIO_pin", arg: 1, scope: !1587, file: !724, line: 404, type: !80)
!1590 = !DILocalVariable(name: "GPIO_driving", arg: 2, scope: !1587, file: !724, line: 404, type: !133)
!1591 = !DILocalVariable(name: "no", scope: !1587, file: !724, line: 406, type: !1190)
!1592 = !DILocalVariable(name: "remainder", scope: !1587, file: !724, line: 407, type: !1190)
!1593 = !DILocation(line: 0, scope: !1587)
!1594 = !DILocation(line: 408, column: 19, scope: !1587)
!1595 = !DILocation(line: 409, column: 17, scope: !1587)
!1596 = !DILocation(line: 411, column: 5, scope: !1587)
!1597 = !DILocation(line: 413, column: 84, scope: !1598)
!1598 = distinct !DILexicalBlock(scope: !1587, file: !724, line: 411, column: 17)
!1599 = !DILocation(line: 413, column: 70, scope: !1598)
!1600 = !DILocation(line: 413, column: 64, scope: !1598)
!1601 = !DILocation(line: 413, column: 61, scope: !1598)
!1602 = !DILocation(line: 414, column: 79, scope: !1598)
!1603 = !DILocation(line: 414, column: 83, scope: !1598)
!1604 = !DILocation(line: 414, column: 88, scope: !1598)
!1605 = !DILocation(line: 414, column: 61, scope: !1598)
!1606 = !DILocation(line: 415, column: 13, scope: !1598)
!1607 = !DILocation(line: 417, column: 27, scope: !1608)
!1608 = distinct !DILexicalBlock(scope: !1598, file: !724, line: 417, column: 17)
!1609 = !DILocation(line: 417, column: 17, scope: !1598)
!1610 = !DILocation(line: 418, column: 88, scope: !1611)
!1611 = distinct !DILexicalBlock(scope: !1608, file: !724, line: 417, column: 33)
!1612 = !DILocation(line: 418, column: 74, scope: !1611)
!1613 = !DILocation(line: 418, column: 68, scope: !1611)
!1614 = !DILocation(line: 418, column: 65, scope: !1611)
!1615 = !DILocation(line: 419, column: 83, scope: !1611)
!1616 = !DILocation(line: 419, column: 87, scope: !1611)
!1617 = !DILocation(line: 419, column: 92, scope: !1611)
!1618 = !DILocation(line: 419, column: 65, scope: !1611)
!1619 = !DILocation(line: 420, column: 13, scope: !1611)
!1620 = !DILocation(line: 420, column: 24, scope: !1608)
!1621 = !DILocation(line: 421, column: 73, scope: !1622)
!1622 = distinct !DILexicalBlock(scope: !1623, file: !724, line: 420, column: 41)
!1623 = distinct !DILexicalBlock(scope: !1608, file: !724, line: 420, column: 24)
!1624 = !DILocation(line: 422, column: 91, scope: !1622)
!1625 = !DILocation(line: 422, column: 100, scope: !1622)
!1626 = !DILocation(line: 422, column: 73, scope: !1622)
!1627 = !DILocation(line: 423, column: 73, scope: !1622)
!1628 = !DILocation(line: 424, column: 13, scope: !1622)
!1629 = !DILocation(line: 425, column: 73, scope: !1630)
!1630 = distinct !DILexicalBlock(scope: !1631, file: !724, line: 424, column: 41)
!1631 = distinct !DILexicalBlock(scope: !1623, file: !724, line: 424, column: 24)
!1632 = !DILocation(line: 426, column: 91, scope: !1630)
!1633 = !DILocation(line: 426, column: 100, scope: !1630)
!1634 = !DILocation(line: 426, column: 73, scope: !1630)
!1635 = !DILocation(line: 427, column: 73, scope: !1630)
!1636 = !DILocation(line: 428, column: 13, scope: !1630)
!1637 = !DILocation(line: 429, column: 75, scope: !1638)
!1638 = distinct !DILexicalBlock(scope: !1639, file: !724, line: 428, column: 41)
!1639 = distinct !DILexicalBlock(scope: !1631, file: !724, line: 428, column: 24)
!1640 = !DILocation(line: 430, column: 93, scope: !1638)
!1641 = !DILocation(line: 430, column: 102, scope: !1638)
!1642 = !DILocation(line: 430, column: 75, scope: !1638)
!1643 = !DILocation(line: 431, column: 75, scope: !1638)
!1644 = !DILocation(line: 432, column: 13, scope: !1638)
!1645 = !DILocation(line: 433, column: 75, scope: !1646)
!1646 = distinct !DILexicalBlock(scope: !1647, file: !724, line: 432, column: 41)
!1647 = distinct !DILexicalBlock(scope: !1639, file: !724, line: 432, column: 24)
!1648 = !DILocation(line: 434, column: 93, scope: !1646)
!1649 = !DILocation(line: 434, column: 102, scope: !1646)
!1650 = !DILocation(line: 434, column: 75, scope: !1646)
!1651 = !DILocation(line: 435, column: 75, scope: !1646)
!1652 = !DILocation(line: 436, column: 13, scope: !1646)
!1653 = !DILocation(line: 437, column: 75, scope: !1654)
!1654 = distinct !DILexicalBlock(scope: !1655, file: !724, line: 436, column: 41)
!1655 = distinct !DILexicalBlock(scope: !1647, file: !724, line: 436, column: 24)
!1656 = !DILocation(line: 438, column: 93, scope: !1654)
!1657 = !DILocation(line: 438, column: 102, scope: !1654)
!1658 = !DILocation(line: 438, column: 75, scope: !1654)
!1659 = !DILocation(line: 439, column: 75, scope: !1654)
!1660 = !DILocation(line: 440, column: 13, scope: !1654)
!1661 = !DILocation(line: 443, column: 18, scope: !1662)
!1662 = distinct !DILexicalBlock(scope: !1598, file: !724, line: 443, column: 17)
!1663 = !DILocation(line: 443, column: 17, scope: !1598)
!1664 = !DILocation(line: 444, column: 75, scope: !1665)
!1665 = distinct !DILexicalBlock(scope: !1662, file: !724, line: 443, column: 29)
!1666 = !DILocation(line: 445, column: 93, scope: !1665)
!1667 = !DILocation(line: 445, column: 102, scope: !1665)
!1668 = !DILocation(line: 445, column: 75, scope: !1665)
!1669 = !DILocation(line: 446, column: 75, scope: !1665)
!1670 = !DILocation(line: 447, column: 13, scope: !1665)
!1671 = !DILocation(line: 448, column: 88, scope: !1672)
!1672 = distinct !DILexicalBlock(scope: !1662, file: !724, line: 447, column: 20)
!1673 = !DILocation(line: 448, column: 74, scope: !1672)
!1674 = !DILocation(line: 448, column: 68, scope: !1672)
!1675 = !DILocation(line: 448, column: 65, scope: !1672)
!1676 = !DILocation(line: 449, column: 83, scope: !1672)
!1677 = !DILocation(line: 449, column: 87, scope: !1672)
!1678 = !DILocation(line: 449, column: 92, scope: !1672)
!1679 = !DILocation(line: 449, column: 65, scope: !1672)
!1680 = !DILocation(line: 453, column: 84, scope: !1598)
!1681 = !DILocation(line: 453, column: 70, scope: !1598)
!1682 = !DILocation(line: 453, column: 64, scope: !1598)
!1683 = !DILocation(line: 453, column: 61, scope: !1598)
!1684 = !DILocation(line: 454, column: 79, scope: !1598)
!1685 = !DILocation(line: 454, column: 83, scope: !1598)
!1686 = !DILocation(line: 454, column: 88, scope: !1598)
!1687 = !DILocation(line: 454, column: 61, scope: !1598)
!1688 = !DILocation(line: 455, column: 13, scope: !1598)
!1689 = !DILocation(line: 460, column: 1, scope: !1587)
!1690 = distinct !DISubprogram(name: "halGPIO_GetDriving", scope: !724, file: !724, line: 463, type: !1691, scopeLine: 464, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !723, retainedNodes: !1694)
!1691 = !DISubroutineType(types: !1692)
!1692 = !{!1185, !80, !1693}
!1693 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !133, size: 32)
!1694 = !{!1695, !1696, !1697, !1698, !1699}
!1695 = !DILocalVariable(name: "GPIO_pin", arg: 1, scope: !1690, file: !724, line: 463, type: !80)
!1696 = !DILocalVariable(name: "GPIO_driving", arg: 2, scope: !1690, file: !724, line: 463, type: !1693)
!1697 = !DILocalVariable(name: "no", scope: !1690, file: !724, line: 465, type: !1190)
!1698 = !DILocalVariable(name: "remainder", scope: !1690, file: !724, line: 466, type: !1190)
!1699 = !DILocalVariable(name: "temp", scope: !1690, file: !724, line: 467, type: !80)
!1700 = !DILocation(line: 0, scope: !1690)
!1701 = !DILocation(line: 468, column: 19, scope: !1690)
!1702 = !DILocation(line: 469, column: 17, scope: !1690)
!1703 = !DILocation(line: 471, column: 5, scope: !1690)
!1704 = !DILocation(line: 473, column: 20, scope: !1705)
!1705 = distinct !DILexicalBlock(scope: !1690, file: !724, line: 471, column: 17)
!1706 = !DILocation(line: 474, column: 40, scope: !1705)
!1707 = !DILocation(line: 474, column: 26, scope: !1705)
!1708 = !DILocation(line: 474, column: 18, scope: !1705)
!1709 = !DILocation(line: 475, column: 40, scope: !1705)
!1710 = !DILocation(line: 475, column: 29, scope: !1705)
!1711 = !DILocation(line: 476, column: 13, scope: !1705)
!1712 = !DILocation(line: 478, column: 27, scope: !1713)
!1713 = distinct !DILexicalBlock(scope: !1705, file: !724, line: 478, column: 17)
!1714 = !DILocation(line: 478, column: 17, scope: !1705)
!1715 = !DILocation(line: 479, column: 24, scope: !1716)
!1716 = distinct !DILexicalBlock(scope: !1713, file: !724, line: 478, column: 33)
!1717 = !DILocation(line: 480, column: 44, scope: !1716)
!1718 = !DILocation(line: 480, column: 30, scope: !1716)
!1719 = !DILocation(line: 480, column: 22, scope: !1716)
!1720 = !DILocation(line: 481, column: 44, scope: !1716)
!1721 = !DILocation(line: 481, column: 33, scope: !1716)
!1722 = !DILocation(line: 482, column: 13, scope: !1716)
!1723 = !DILocation(line: 482, column: 24, scope: !1713)
!1724 = !DILocation(line: 483, column: 24, scope: !1725)
!1725 = distinct !DILexicalBlock(scope: !1726, file: !724, line: 482, column: 41)
!1726 = distinct !DILexicalBlock(scope: !1713, file: !724, line: 482, column: 24)
!1727 = !DILocation(line: 485, column: 53, scope: !1725)
!1728 = !DILocation(line: 485, column: 33, scope: !1725)
!1729 = !DILocation(line: 486, column: 13, scope: !1725)
!1730 = !DILocation(line: 487, column: 24, scope: !1731)
!1731 = distinct !DILexicalBlock(scope: !1732, file: !724, line: 486, column: 41)
!1732 = distinct !DILexicalBlock(scope: !1726, file: !724, line: 486, column: 24)
!1733 = !DILocation(line: 489, column: 53, scope: !1731)
!1734 = !DILocation(line: 489, column: 33, scope: !1731)
!1735 = !DILocation(line: 490, column: 13, scope: !1731)
!1736 = !DILocation(line: 491, column: 24, scope: !1737)
!1737 = distinct !DILexicalBlock(scope: !1738, file: !724, line: 490, column: 41)
!1738 = distinct !DILexicalBlock(scope: !1732, file: !724, line: 490, column: 24)
!1739 = !DILocation(line: 493, column: 53, scope: !1737)
!1740 = !DILocation(line: 493, column: 33, scope: !1737)
!1741 = !DILocation(line: 494, column: 13, scope: !1737)
!1742 = !DILocation(line: 495, column: 24, scope: !1743)
!1743 = distinct !DILexicalBlock(scope: !1744, file: !724, line: 494, column: 41)
!1744 = distinct !DILexicalBlock(scope: !1738, file: !724, line: 494, column: 24)
!1745 = !DILocation(line: 497, column: 53, scope: !1743)
!1746 = !DILocation(line: 497, column: 33, scope: !1743)
!1747 = !DILocation(line: 498, column: 13, scope: !1743)
!1748 = !DILocation(line: 499, column: 24, scope: !1749)
!1749 = distinct !DILexicalBlock(scope: !1750, file: !724, line: 498, column: 41)
!1750 = distinct !DILexicalBlock(scope: !1744, file: !724, line: 498, column: 24)
!1751 = !DILocation(line: 501, column: 53, scope: !1749)
!1752 = !DILocation(line: 501, column: 33, scope: !1749)
!1753 = !DILocation(line: 502, column: 13, scope: !1749)
!1754 = !DILocation(line: 505, column: 18, scope: !1755)
!1755 = distinct !DILexicalBlock(scope: !1705, file: !724, line: 505, column: 17)
!1756 = !DILocation(line: 505, column: 17, scope: !1705)
!1757 = !DILocation(line: 506, column: 24, scope: !1758)
!1758 = distinct !DILexicalBlock(scope: !1755, file: !724, line: 505, column: 29)
!1759 = !DILocation(line: 508, column: 53, scope: !1758)
!1760 = !DILocation(line: 508, column: 33, scope: !1758)
!1761 = !DILocation(line: 509, column: 13, scope: !1758)
!1762 = !DILocation(line: 510, column: 24, scope: !1763)
!1763 = distinct !DILexicalBlock(scope: !1755, file: !724, line: 509, column: 20)
!1764 = !DILocation(line: 511, column: 44, scope: !1763)
!1765 = !DILocation(line: 511, column: 30, scope: !1763)
!1766 = !DILocation(line: 511, column: 22, scope: !1763)
!1767 = !DILocation(line: 512, column: 44, scope: !1763)
!1768 = !DILocation(line: 512, column: 33, scope: !1763)
!1769 = !DILocation(line: 516, column: 20, scope: !1705)
!1770 = !DILocation(line: 517, column: 40, scope: !1705)
!1771 = !DILocation(line: 517, column: 26, scope: !1705)
!1772 = !DILocation(line: 517, column: 18, scope: !1705)
!1773 = !DILocation(line: 518, column: 40, scope: !1705)
!1774 = !DILocation(line: 518, column: 29, scope: !1705)
!1775 = !DILocation(line: 519, column: 13, scope: !1705)
!1776 = !DILocation(line: 0, scope: !1705)
!1777 = !DILocation(line: 524, column: 1, scope: !1690)
!1778 = distinct !DISubprogram(name: "topPAD_Control_GPIO", scope: !724, file: !724, line: 526, type: !1779, scopeLine: 527, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !723, retainedNodes: !1782)
!1779 = !DISubroutineType(types: !1780)
!1780 = !{null, !80, !1781}
!1781 = !DIDerivedType(tag: DW_TAG_typedef, name: "ENUM_TOP_PAD_CONTROL_T", file: !727, line: 1212, baseType: !726)
!1782 = !{!1783, !1784, !1785, !1786}
!1783 = !DILocalVariable(name: "GPIO_pin", arg: 1, scope: !1778, file: !724, line: 526, type: !80)
!1784 = !DILocalVariable(name: "ePadControl", arg: 2, scope: !1778, file: !724, line: 526, type: !1781)
!1785 = !DILocalVariable(name: "no", scope: !1778, file: !724, line: 529, type: !1190)
!1786 = !DILocalVariable(name: "remainder", scope: !1778, file: !724, line: 530, type: !1190)
!1787 = !DILocation(line: 0, scope: !1778)
!1788 = !DILocation(line: 531, column: 19, scope: !1778)
!1789 = !DILocation(line: 532, column: 17, scope: !1778)
!1790 = !DILocation(line: 534, column: 9, scope: !1778)
!1791 = !DILocation(line: 536, column: 9, scope: !1792)
!1792 = distinct !DILexicalBlock(scope: !1793, file: !724, line: 534, column: 45)
!1793 = distinct !DILexicalBlock(scope: !1778, file: !724, line: 534, column: 9)
!1794 = !DILocation(line: 538, column: 56, scope: !1795)
!1795 = distinct !DILexicalBlock(scope: !1792, file: !724, line: 536, column: 21)
!1796 = !DILocation(line: 538, column: 53, scope: !1795)
!1797 = !DILocation(line: 538, column: 47, scope: !1795)
!1798 = !DILocation(line: 539, column: 17, scope: !1795)
!1799 = !DILocation(line: 541, column: 56, scope: !1795)
!1800 = !DILocation(line: 541, column: 53, scope: !1795)
!1801 = !DILocation(line: 541, column: 47, scope: !1795)
!1802 = !DILocation(line: 542, column: 17, scope: !1795)
!1803 = !DILocation(line: 548, column: 9, scope: !1804)
!1804 = distinct !DILexicalBlock(scope: !1805, file: !724, line: 547, column: 51)
!1805 = distinct !DILexicalBlock(scope: !1793, file: !724, line: 547, column: 16)
!1806 = !DILocation(line: 550, column: 57, scope: !1807)
!1807 = distinct !DILexicalBlock(scope: !1804, file: !724, line: 548, column: 21)
!1808 = !DILocation(line: 550, column: 54, scope: !1807)
!1809 = !DILocation(line: 550, column: 50, scope: !1807)
!1810 = !DILocation(line: 550, column: 47, scope: !1807)
!1811 = !DILocation(line: 551, column: 17, scope: !1807)
!1812 = !DILocation(line: 553, column: 57, scope: !1807)
!1813 = !DILocation(line: 553, column: 54, scope: !1807)
!1814 = !DILocation(line: 553, column: 50, scope: !1807)
!1815 = !DILocation(line: 553, column: 47, scope: !1807)
!1816 = !DILocation(line: 554, column: 17, scope: !1807)
!1817 = !DILocation(line: 560, column: 1, scope: !1778)
!1818 = distinct !DISubprogram(name: "halPinmuxTopOnPadFunc", scope: !733, file: !733, line: 85, type: !1819, scopeLine: 86, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !732, retainedNodes: !1823)
!1819 = !DISubroutineType(types: !1820)
!1820 = !{!1821, !1822, !133}
!1821 = !DIDerivedType(tag: DW_TAG_typedef, name: "VOID", file: !6, line: 79, baseType: null)
!1822 = !DIDerivedType(tag: DW_TAG_typedef, name: "ENUM_PAD_NAME_T", file: !736, line: 225, baseType: !735)
!1823 = !{!1824, !1825, !1826}
!1824 = !DILocalVariable(name: "ePadIndex", arg: 1, scope: !1818, file: !733, line: 85, type: !1822)
!1825 = !DILocalVariable(name: "ucFunc", arg: 2, scope: !1818, file: !733, line: 85, type: !133)
!1826 = !DILocalVariable(name: "temp", scope: !1818, file: !733, line: 87, type: !92)
!1827 = !DILocation(line: 0, scope: !1818)
!1828 = !DILocation(line: 88, column: 5, scope: !1818)
!1829 = !DILocation(line: 91, column: 20, scope: !1830)
!1830 = distinct !DILexicalBlock(scope: !1818, file: !733, line: 88, column: 24)
!1831 = !DILocation(line: 92, column: 18, scope: !1830)
!1832 = !DILocation(line: 93, column: 66, scope: !1830)
!1833 = !DILocation(line: 93, column: 63, scope: !1830)
!1834 = !DILocation(line: 93, column: 56, scope: !1830)
!1835 = !DILocation(line: 94, column: 13, scope: !1830)
!1836 = !DILocation(line: 97, column: 20, scope: !1830)
!1837 = !DILocation(line: 98, column: 18, scope: !1830)
!1838 = !DILocation(line: 99, column: 67, scope: !1830)
!1839 = !DILocation(line: 99, column: 74, scope: !1830)
!1840 = !DILocation(line: 99, column: 64, scope: !1830)
!1841 = !DILocation(line: 99, column: 56, scope: !1830)
!1842 = !DILocation(line: 100, column: 13, scope: !1830)
!1843 = !DILocation(line: 103, column: 20, scope: !1830)
!1844 = !DILocation(line: 104, column: 18, scope: !1830)
!1845 = !DILocation(line: 105, column: 67, scope: !1830)
!1846 = !DILocation(line: 105, column: 74, scope: !1830)
!1847 = !DILocation(line: 105, column: 64, scope: !1830)
!1848 = !DILocation(line: 105, column: 56, scope: !1830)
!1849 = !DILocation(line: 106, column: 13, scope: !1830)
!1850 = !DILocation(line: 109, column: 20, scope: !1830)
!1851 = !DILocation(line: 110, column: 18, scope: !1830)
!1852 = !DILocation(line: 111, column: 67, scope: !1830)
!1853 = !DILocation(line: 111, column: 74, scope: !1830)
!1854 = !DILocation(line: 111, column: 64, scope: !1830)
!1855 = !DILocation(line: 111, column: 56, scope: !1830)
!1856 = !DILocation(line: 112, column: 13, scope: !1830)
!1857 = !DILocation(line: 115, column: 20, scope: !1830)
!1858 = !DILocation(line: 116, column: 18, scope: !1830)
!1859 = !DILocation(line: 117, column: 67, scope: !1830)
!1860 = !DILocation(line: 117, column: 74, scope: !1830)
!1861 = !DILocation(line: 117, column: 64, scope: !1830)
!1862 = !DILocation(line: 117, column: 56, scope: !1830)
!1863 = !DILocation(line: 118, column: 13, scope: !1830)
!1864 = !DILocation(line: 121, column: 20, scope: !1830)
!1865 = !DILocation(line: 122, column: 18, scope: !1830)
!1866 = !DILocation(line: 123, column: 67, scope: !1830)
!1867 = !DILocation(line: 123, column: 74, scope: !1830)
!1868 = !DILocation(line: 123, column: 64, scope: !1830)
!1869 = !DILocation(line: 123, column: 56, scope: !1830)
!1870 = !DILocation(line: 124, column: 13, scope: !1830)
!1871 = !DILocation(line: 127, column: 20, scope: !1830)
!1872 = !DILocation(line: 128, column: 18, scope: !1830)
!1873 = !DILocation(line: 129, column: 67, scope: !1830)
!1874 = !DILocation(line: 129, column: 74, scope: !1830)
!1875 = !DILocation(line: 129, column: 64, scope: !1830)
!1876 = !DILocation(line: 129, column: 56, scope: !1830)
!1877 = !DILocation(line: 130, column: 13, scope: !1830)
!1878 = !DILocation(line: 133, column: 20, scope: !1830)
!1879 = !DILocation(line: 134, column: 18, scope: !1830)
!1880 = !DILocation(line: 135, column: 67, scope: !1830)
!1881 = !DILocation(line: 135, column: 74, scope: !1830)
!1882 = !DILocation(line: 135, column: 64, scope: !1830)
!1883 = !DILocation(line: 135, column: 56, scope: !1830)
!1884 = !DILocation(line: 136, column: 13, scope: !1830)
!1885 = !DILocation(line: 139, column: 20, scope: !1830)
!1886 = !DILocation(line: 140, column: 18, scope: !1830)
!1887 = !DILocation(line: 141, column: 67, scope: !1830)
!1888 = !DILocation(line: 141, column: 64, scope: !1830)
!1889 = !DILocation(line: 141, column: 56, scope: !1830)
!1890 = !DILocation(line: 142, column: 13, scope: !1830)
!1891 = !DILocation(line: 145, column: 20, scope: !1830)
!1892 = !DILocation(line: 146, column: 18, scope: !1830)
!1893 = !DILocation(line: 147, column: 67, scope: !1830)
!1894 = !DILocation(line: 147, column: 74, scope: !1830)
!1895 = !DILocation(line: 147, column: 64, scope: !1830)
!1896 = !DILocation(line: 147, column: 56, scope: !1830)
!1897 = !DILocation(line: 148, column: 13, scope: !1830)
!1898 = !DILocation(line: 151, column: 20, scope: !1830)
!1899 = !DILocation(line: 152, column: 18, scope: !1830)
!1900 = !DILocation(line: 153, column: 67, scope: !1830)
!1901 = !DILocation(line: 153, column: 74, scope: !1830)
!1902 = !DILocation(line: 153, column: 64, scope: !1830)
!1903 = !DILocation(line: 153, column: 56, scope: !1830)
!1904 = !DILocation(line: 154, column: 13, scope: !1830)
!1905 = !DILocation(line: 157, column: 20, scope: !1830)
!1906 = !DILocation(line: 158, column: 18, scope: !1830)
!1907 = !DILocation(line: 159, column: 67, scope: !1830)
!1908 = !DILocation(line: 159, column: 74, scope: !1830)
!1909 = !DILocation(line: 159, column: 64, scope: !1830)
!1910 = !DILocation(line: 159, column: 56, scope: !1830)
!1911 = !DILocation(line: 160, column: 29, scope: !1912)
!1912 = distinct !DILexicalBlock(scope: !1830, file: !733, line: 160, column: 17)
!1913 = !DILocation(line: 161, column: 17, scope: !1914)
!1914 = distinct !DILexicalBlock(scope: !1912, file: !733, line: 160, column: 60)
!1915 = !DILocation(line: 162, column: 13, scope: !1914)
!1916 = !DILocation(line: 166, column: 20, scope: !1830)
!1917 = !DILocation(line: 167, column: 18, scope: !1830)
!1918 = !DILocation(line: 168, column: 67, scope: !1830)
!1919 = !DILocation(line: 168, column: 74, scope: !1830)
!1920 = !DILocation(line: 168, column: 64, scope: !1830)
!1921 = !DILocation(line: 168, column: 56, scope: !1830)
!1922 = !DILocation(line: 169, column: 29, scope: !1923)
!1923 = distinct !DILexicalBlock(scope: !1830, file: !733, line: 169, column: 17)
!1924 = !DILocation(line: 170, column: 17, scope: !1925)
!1925 = distinct !DILexicalBlock(scope: !1923, file: !733, line: 169, column: 45)
!1926 = !DILocation(line: 171, column: 13, scope: !1925)
!1927 = !DILocation(line: 175, column: 20, scope: !1830)
!1928 = !DILocation(line: 176, column: 18, scope: !1830)
!1929 = !DILocation(line: 177, column: 67, scope: !1830)
!1930 = !DILocation(line: 177, column: 74, scope: !1830)
!1931 = !DILocation(line: 177, column: 64, scope: !1830)
!1932 = !DILocation(line: 177, column: 56, scope: !1830)
!1933 = !DILocation(line: 178, column: 19, scope: !1934)
!1934 = distinct !DILexicalBlock(scope: !1830, file: !733, line: 178, column: 17)
!1935 = !DILocation(line: 178, column: 17, scope: !1830)
!1936 = !DILocation(line: 179, column: 17, scope: !1937)
!1937 = distinct !DILexicalBlock(scope: !1934, file: !733, line: 178, column: 30)
!1938 = !DILocation(line: 180, column: 13, scope: !1937)
!1939 = !DILocation(line: 184, column: 20, scope: !1830)
!1940 = !DILocation(line: 185, column: 18, scope: !1830)
!1941 = !DILocation(line: 186, column: 67, scope: !1830)
!1942 = !DILocation(line: 186, column: 74, scope: !1830)
!1943 = !DILocation(line: 186, column: 64, scope: !1830)
!1944 = !DILocation(line: 186, column: 56, scope: !1830)
!1945 = !DILocation(line: 187, column: 29, scope: !1946)
!1946 = distinct !DILexicalBlock(scope: !1830, file: !733, line: 187, column: 17)
!1947 = !DILocation(line: 188, column: 17, scope: !1948)
!1948 = distinct !DILexicalBlock(scope: !1946, file: !733, line: 187, column: 45)
!1949 = !DILocation(line: 189, column: 13, scope: !1948)
!1950 = !DILocation(line: 193, column: 20, scope: !1830)
!1951 = !DILocation(line: 194, column: 18, scope: !1830)
!1952 = !DILocation(line: 195, column: 67, scope: !1830)
!1953 = !DILocation(line: 195, column: 74, scope: !1830)
!1954 = !DILocation(line: 195, column: 64, scope: !1830)
!1955 = !DILocation(line: 195, column: 56, scope: !1830)
!1956 = !DILocation(line: 196, column: 29, scope: !1957)
!1957 = distinct !DILexicalBlock(scope: !1830, file: !733, line: 196, column: 17)
!1958 = !DILocation(line: 197, column: 17, scope: !1959)
!1959 = distinct !DILexicalBlock(scope: !1957, file: !733, line: 196, column: 45)
!1960 = !DILocation(line: 198, column: 13, scope: !1959)
!1961 = !DILocation(line: 202, column: 20, scope: !1830)
!1962 = !DILocation(line: 203, column: 18, scope: !1830)
!1963 = !DILocation(line: 204, column: 67, scope: !1830)
!1964 = !DILocation(line: 204, column: 64, scope: !1830)
!1965 = !DILocation(line: 204, column: 56, scope: !1830)
!1966 = !DILocation(line: 205, column: 29, scope: !1967)
!1967 = distinct !DILexicalBlock(scope: !1830, file: !733, line: 205, column: 17)
!1968 = !DILocation(line: 206, column: 17, scope: !1969)
!1969 = distinct !DILexicalBlock(scope: !1967, file: !733, line: 205, column: 45)
!1970 = !DILocation(line: 207, column: 13, scope: !1969)
!1971 = !DILocation(line: 211, column: 20, scope: !1830)
!1972 = !DILocation(line: 212, column: 18, scope: !1830)
!1973 = !DILocation(line: 213, column: 67, scope: !1830)
!1974 = !DILocation(line: 213, column: 74, scope: !1830)
!1975 = !DILocation(line: 213, column: 64, scope: !1830)
!1976 = !DILocation(line: 213, column: 56, scope: !1830)
!1977 = !DILocation(line: 214, column: 13, scope: !1830)
!1978 = !DILocation(line: 217, column: 20, scope: !1830)
!1979 = !DILocation(line: 218, column: 18, scope: !1830)
!1980 = !DILocation(line: 219, column: 67, scope: !1830)
!1981 = !DILocation(line: 219, column: 74, scope: !1830)
!1982 = !DILocation(line: 219, column: 64, scope: !1830)
!1983 = !DILocation(line: 219, column: 56, scope: !1830)
!1984 = !DILocation(line: 220, column: 13, scope: !1830)
!1985 = !DILocation(line: 223, column: 20, scope: !1830)
!1986 = !DILocation(line: 224, column: 18, scope: !1830)
!1987 = !DILocation(line: 225, column: 67, scope: !1830)
!1988 = !DILocation(line: 225, column: 74, scope: !1830)
!1989 = !DILocation(line: 225, column: 64, scope: !1830)
!1990 = !DILocation(line: 225, column: 56, scope: !1830)
!1991 = !DILocation(line: 226, column: 13, scope: !1830)
!1992 = !DILocation(line: 229, column: 20, scope: !1830)
!1993 = !DILocation(line: 230, column: 18, scope: !1830)
!1994 = !DILocation(line: 231, column: 67, scope: !1830)
!1995 = !DILocation(line: 231, column: 74, scope: !1830)
!1996 = !DILocation(line: 231, column: 64, scope: !1830)
!1997 = !DILocation(line: 231, column: 56, scope: !1830)
!1998 = !DILocation(line: 232, column: 13, scope: !1830)
!1999 = !DILocation(line: 235, column: 20, scope: !1830)
!2000 = !DILocation(line: 236, column: 18, scope: !1830)
!2001 = !DILocation(line: 237, column: 66, scope: !1830)
!2002 = !DILocation(line: 237, column: 73, scope: !1830)
!2003 = !DILocation(line: 237, column: 63, scope: !1830)
!2004 = !DILocation(line: 237, column: 56, scope: !1830)
!2005 = !DILocation(line: 238, column: 13, scope: !1830)
!2006 = !DILocation(line: 241, column: 20, scope: !1830)
!2007 = !DILocation(line: 242, column: 18, scope: !1830)
!2008 = !DILocation(line: 243, column: 67, scope: !1830)
!2009 = !DILocation(line: 243, column: 74, scope: !1830)
!2010 = !DILocation(line: 243, column: 64, scope: !1830)
!2011 = !DILocation(line: 243, column: 56, scope: !1830)
!2012 = !DILocation(line: 244, column: 13, scope: !1830)
!2013 = !DILocation(line: 247, column: 20, scope: !1830)
!2014 = !DILocation(line: 248, column: 18, scope: !1830)
!2015 = !DILocation(line: 249, column: 67, scope: !1830)
!2016 = !DILocation(line: 249, column: 74, scope: !1830)
!2017 = !DILocation(line: 249, column: 64, scope: !1830)
!2018 = !DILocation(line: 249, column: 56, scope: !1830)
!2019 = !DILocation(line: 250, column: 13, scope: !1830)
!2020 = !DILocation(line: 253, column: 20, scope: !1830)
!2021 = !DILocation(line: 254, column: 18, scope: !1830)
!2022 = !DILocation(line: 255, column: 67, scope: !1830)
!2023 = !DILocation(line: 255, column: 74, scope: !1830)
!2024 = !DILocation(line: 255, column: 64, scope: !1830)
!2025 = !DILocation(line: 255, column: 56, scope: !1830)
!2026 = !DILocation(line: 256, column: 13, scope: !1830)
!2027 = !DILocation(line: 259, column: 20, scope: !1830)
!2028 = !DILocation(line: 260, column: 18, scope: !1830)
!2029 = !DILocation(line: 261, column: 67, scope: !1830)
!2030 = !DILocation(line: 261, column: 74, scope: !1830)
!2031 = !DILocation(line: 261, column: 64, scope: !1830)
!2032 = !DILocation(line: 261, column: 56, scope: !1830)
!2033 = !DILocation(line: 262, column: 13, scope: !1830)
!2034 = !DILocation(line: 265, column: 20, scope: !1830)
!2035 = !DILocation(line: 266, column: 18, scope: !1830)
!2036 = !DILocation(line: 267, column: 67, scope: !1830)
!2037 = !DILocation(line: 267, column: 74, scope: !1830)
!2038 = !DILocation(line: 267, column: 64, scope: !1830)
!2039 = !DILocation(line: 267, column: 56, scope: !1830)
!2040 = !DILocation(line: 268, column: 13, scope: !1830)
!2041 = !DILocation(line: 271, column: 20, scope: !1830)
!2042 = !DILocation(line: 272, column: 18, scope: !1830)
!2043 = !DILocation(line: 273, column: 67, scope: !1830)
!2044 = !DILocation(line: 273, column: 74, scope: !1830)
!2045 = !DILocation(line: 273, column: 64, scope: !1830)
!2046 = !DILocation(line: 273, column: 56, scope: !1830)
!2047 = !DILocation(line: 274, column: 13, scope: !1830)
!2048 = !DILocation(line: 278, column: 1, scope: !1818)
!2049 = distinct !DISubprogram(name: "hal_trng_init", scope: !814, file: !814, line: 59, type: !2050, scopeLine: 60, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !813, retainedNodes: !1176)
!2050 = !DISubroutineType(types: !2051)
!2051 = !{!2052}
!2052 = !DIDerivedType(tag: DW_TAG_typedef, name: "hal_trng_status_t", file: !817, line: 96, baseType: !816)
!2053 = !DILocation(line: 61, column: 5, scope: !2049)
!2054 = distinct !DISubprogram(name: "hal_trng_deinit", scope: !814, file: !814, line: 71, type: !2050, scopeLine: 72, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !813, retainedNodes: !1176)
!2055 = !DILocation(line: 73, column: 5, scope: !2054)
!2056 = distinct !DISubprogram(name: "hal_trng_get_generated_random_number", scope: !814, file: !814, line: 85, type: !2057, scopeLine: 86, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !813, retainedNodes: !2060)
!2057 = !DISubroutineType(types: !2058)
!2058 = !{!2052, !2059}
!2059 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !92, size: 32)
!2060 = !{!2061, !2062, !2063, !2065, !2067}
!2061 = !DILocalVariable(name: "random_number", arg: 1, scope: !2056, file: !814, line: 85, type: !2059)
!2062 = !DILocalVariable(name: "cnt", scope: !2056, file: !814, line: 87, type: !1190)
!2063 = !DILocalVariable(name: "addr", scope: !2064, file: !814, line: 89, type: !823)
!2064 = distinct !DILexicalBlock(scope: !2056, file: !814, line: 89, column: 5)
!2065 = !DILocalVariable(name: "addr", scope: !2066, file: !814, line: 100, type: !823)
!2066 = distinct !DILexicalBlock(scope: !2056, file: !814, line: 100, column: 5)
!2067 = !DILocalVariable(name: "addr", scope: !2068, file: !814, line: 101, type: !823)
!2068 = distinct !DILexicalBlock(scope: !2056, file: !814, line: 101, column: 5)
!2069 = !DILocation(line: 0, scope: !2056)
!2070 = !DILocation(line: 0, scope: !2064)
!2071 = !DILocation(line: 89, column: 5, scope: !2064)
!2072 = !DILocation(line: 91, column: 5, scope: !2056)
!2073 = !DILocation(line: 92, column: 13, scope: !2074)
!2074 = distinct !DILexicalBlock(scope: !2075, file: !814, line: 92, column: 13)
!2075 = distinct !DILexicalBlock(scope: !2056, file: !814, line: 91, column: 23)
!2076 = !DILocation(line: 92, column: 50, scope: !2074)
!2077 = !DILocation(line: 92, column: 13, scope: !2075)
!2078 = !DILocation(line: 95, column: 9, scope: !2075)
!2079 = !DILocation(line: 96, column: 12, scope: !2075)
!2080 = !DILocation(line: 91, column: 16, scope: !2056)
!2081 = distinct !{!2081, !2072, !2082}
!2082 = !DILocation(line: 97, column: 5, scope: !2056)
!2083 = !DILocation(line: 99, column: 22, scope: !2056)
!2084 = !DILocation(line: 99, column: 20, scope: !2056)
!2085 = !DILocation(line: 0, scope: !2066)
!2086 = !DILocation(line: 100, column: 5, scope: !2066)
!2087 = !DILocation(line: 0, scope: !2068)
!2088 = !DILocation(line: 101, column: 5, scope: !2068)
!2089 = !DILocation(line: 103, column: 13, scope: !2090)
!2090 = distinct !DILexicalBlock(scope: !2056, file: !814, line: 103, column: 9)
!2091 = !DILocation(line: 103, column: 9, scope: !2056)
!2092 = !DILocation(line: 104, column: 24, scope: !2093)
!2093 = distinct !DILexicalBlock(scope: !2090, file: !814, line: 103, column: 21)
!2094 = !DILocation(line: 105, column: 9, scope: !2093)
!2095 = !DILocation(line: 0, scope: !2090)
!2096 = !DILocation(line: 109, column: 1, scope: !2056)
!2097 = distinct !DISubprogram(name: "NVIC_SetupVectorTable", scope: !827, file: !827, line: 47, type: !2098, scopeLine: 48, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !826, retainedNodes: !2100)
!2098 = !DISubroutineType(types: !2099)
!2099 = !{null, !92}
!2100 = !{!2101}
!2101 = !DILocalVariable(name: "addr", arg: 1, scope: !2097, file: !827, line: 47, type: !92)
!2102 = !DILocation(line: 0, scope: !2097)
!2103 = !DILocation(line: 49, column: 15, scope: !2097)
!2104 = !DILocation(line: 51, column: 5, scope: !2097)
!2105 = !{i64 2624}
!2106 = !DILocation(line: 52, column: 5, scope: !2097)
!2107 = !{i64 2651}
!2108 = !DILocation(line: 53, column: 1, scope: !2097)
!2109 = distinct !DISubprogram(name: "NVIC_SWInt", scope: !827, file: !827, line: 56, type: !2110, scopeLine: 57, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !826, retainedNodes: !2112)
!2110 = !DISubroutineType(types: !2111)
!2111 = !{null, !7}
!2112 = !{!2113}
!2113 = !DILocalVariable(name: "source", arg: 1, scope: !2109, file: !827, line: 56, type: !7)
!2114 = !DILocation(line: 0, scope: !2109)
!2115 = !DILocation(line: 58, column: 16, scope: !2109)
!2116 = !DILocation(line: 59, column: 1, scope: !2109)
!2117 = distinct !DISubprogram(name: "save_and_set_interrupt_mask", scope: !827, file: !827, line: 61, type: !2118, scopeLine: 62, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !826, retainedNodes: !2120)
!2118 = !DISubroutineType(types: !2119)
!2119 = !{!92}
!2120 = !{!2121}
!2121 = !DILocalVariable(name: "mask", scope: !2117, file: !827, line: 63, type: !92)
!2122 = !DILocation(line: 470, column: 3, scope: !2123, inlinedAt: !2127)
!2123 = distinct !DISubprogram(name: "__get_PRIMASK", scope: !2124, file: !2124, line: 466, type: !2118, scopeLine: 467, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !826, retainedNodes: !2125)
!2124 = !DIFile(filename: "../../../../../driver/CMSIS/Include/core_cmFunc.h", directory: "/home/mjshen/RTOSExploration/Embedded-GUI-for-MT2523/project/mt7687_hdk/hal_examples/trng_generate_random_data/GCC")
!2125 = !{!2126}
!2126 = !DILocalVariable(name: "result", scope: !2123, file: !2124, line: 468, type: !92)
!2127 = distinct !DILocation(line: 64, column: 5, scope: !2128)
!2128 = distinct !DILexicalBlock(scope: !2117, file: !827, line: 64, column: 5)
!2129 = !{i64 302171}
!2130 = !DILocation(line: 0, scope: !2123, inlinedAt: !2127)
!2131 = !DILocation(line: 0, scope: !2117)
!2132 = !DILocation(line: 330, column: 3, scope: !2133, inlinedAt: !2134)
!2133 = distinct !DISubprogram(name: "__disable_irq", scope: !2124, file: !2124, line: 328, type: !75, scopeLine: 329, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !826, retainedNodes: !1176)
!2134 = distinct !DILocation(line: 64, column: 5, scope: !2128)
!2135 = !{i64 298835}
!2136 = !DILocation(line: 65, column: 5, scope: !2117)
!2137 = distinct !DISubprogram(name: "restore_interrupt_mask", scope: !827, file: !827, line: 68, type: !2098, scopeLine: 69, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !826, retainedNodes: !2138)
!2138 = !{!2139}
!2139 = !DILocalVariable(name: "mask", arg: 1, scope: !2137, file: !827, line: 68, type: !92)
!2140 = !DILocation(line: 0, scope: !2137)
!2141 = !DILocalVariable(name: "priMask", arg: 1, scope: !2142, file: !2124, line: 481, type: !92)
!2142 = distinct !DISubprogram(name: "__set_PRIMASK", scope: !2124, file: !2124, line: 481, type: !2098, scopeLine: 482, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !826, retainedNodes: !2143)
!2143 = !{!2141}
!2144 = !DILocation(line: 0, scope: !2142, inlinedAt: !2145)
!2145 = distinct !DILocation(line: 70, column: 5, scope: !2146)
!2146 = distinct !DILexicalBlock(scope: !2137, file: !827, line: 70, column: 5)
!2147 = !DILocation(line: 483, column: 3, scope: !2142, inlinedAt: !2145)
!2148 = !{i64 302489}
!2149 = !DILocation(line: 71, column: 1, scope: !2137)
!2150 = distinct !DISubprogram(name: "pinmux_config", scope: !872, file: !872, line: 54, type: !2151, scopeLine: 55, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !871, retainedNodes: !2153)
!2151 = !DISubroutineType(types: !2152)
!2152 = !{!238, !977, !92}
!2153 = !{!2154, !2155, !2156}
!2154 = !DILocalVariable(name: "gpio_index", arg: 1, scope: !2150, file: !872, line: 54, type: !977)
!2155 = !DILocalVariable(name: "function", arg: 2, scope: !2150, file: !872, line: 54, type: !92)
!2156 = !DILocalVariable(name: "ePadIndex", scope: !2150, file: !872, line: 56, type: !1822)
!2157 = !DILocation(line: 0, scope: !2150)
!2158 = !DILocation(line: 60, column: 5, scope: !2150)
!2159 = !DILocation(line: 205, column: 38, scope: !2150)
!2160 = !DILocation(line: 205, column: 5, scope: !2150)
!2161 = !DILocation(line: 207, column: 5, scope: !2150)
!2162 = !DILocation(line: 208, column: 1, scope: !2150)
!2163 = distinct !DISubprogram(name: "get_current_count", scope: !906, file: !906, line: 56, type: !2118, scopeLine: 57, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !905, retainedNodes: !1176)
!2164 = !DILocation(line: 58, column: 12, scope: !2163)
!2165 = !DILocation(line: 58, column: 5, scope: !2163)
!2166 = distinct !DISubprogram(name: "delay_time", scope: !906, file: !906, line: 62, type: !1034, scopeLine: 63, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !905, retainedNodes: !2167)
!2167 = !{!2168, !2169, !2170}
!2168 = !DILocalVariable(name: "count", arg: 1, scope: !2166, file: !906, line: 62, type: !60)
!2169 = !DILocalVariable(name: "end_count", scope: !2166, file: !906, line: 64, type: !60)
!2170 = !DILocalVariable(name: "current", scope: !2166, file: !906, line: 64, type: !60)
!2171 = !DILocation(line: 0, scope: !2166)
!2172 = !DILocation(line: 66, column: 17, scope: !2166)
!2173 = !DILocation(line: 66, column: 37, scope: !2166)
!2174 = !DILocation(line: 66, column: 45, scope: !2166)
!2175 = !DILocation(line: 67, column: 15, scope: !2166)
!2176 = !DILocation(line: 68, column: 12, scope: !2166)
!2177 = !DILocation(line: 68, column: 5, scope: !2166)
!2178 = !DILocation(line: 69, column: 19, scope: !2179)
!2179 = distinct !DILexicalBlock(scope: !2166, file: !906, line: 68, column: 45)
!2180 = distinct !{!2180, !2177, !2181}
!2181 = !DILocation(line: 70, column: 5, scope: !2166)
!2182 = !DILocation(line: 72, column: 1, scope: !2166)
!2183 = distinct !DISubprogram(name: "delay_time_for_gpt4", scope: !906, file: !906, line: 75, type: !1034, scopeLine: 76, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !905, retainedNodes: !2184)
!2184 = !{!2185, !2186, !2187}
!2185 = !DILocalVariable(name: "count", arg: 1, scope: !2183, file: !906, line: 75, type: !60)
!2186 = !DILocalVariable(name: "end_count", scope: !2183, file: !906, line: 77, type: !60)
!2187 = !DILocalVariable(name: "current", scope: !2183, file: !906, line: 77, type: !60)
!2188 = !DILocation(line: 0, scope: !2183)
!2189 = !DILocation(line: 79, column: 17, scope: !2183)
!2190 = !DILocation(line: 79, column: 42, scope: !2183)
!2191 = !DILocation(line: 79, column: 50, scope: !2183)
!2192 = !DILocation(line: 80, column: 15, scope: !2183)
!2193 = !DILocation(line: 81, column: 12, scope: !2183)
!2194 = !DILocation(line: 81, column: 5, scope: !2183)
!2195 = !DILocation(line: 82, column: 19, scope: !2196)
!2196 = distinct !DILexicalBlock(scope: !2183, file: !906, line: 81, column: 45)
!2197 = distinct !{!2197, !2194, !2198}
!2198 = !DILocation(line: 83, column: 5, scope: !2183)
!2199 = !DILocation(line: 85, column: 1, scope: !2183)
!2200 = distinct !DISubprogram(name: "get_current_gpt4_count", scope: !906, file: !906, line: 95, type: !2118, scopeLine: 96, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !905, retainedNodes: !1176)
!2201 = !DILocation(line: 97, column: 13, scope: !2200)
!2202 = !DILocation(line: 97, column: 5, scope: !2200)
!2203 = distinct !DISubprogram(name: "delay_ms", scope: !906, file: !906, line: 107, type: !2098, scopeLine: 108, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !905, retainedNodes: !2204)
!2204 = !{!2205, !2206}
!2205 = !DILocalVariable(name: "ms", arg: 1, scope: !2203, file: !906, line: 107, type: !92)
!2206 = !DILocalVariable(name: "count", scope: !2203, file: !906, line: 109, type: !92)
!2207 = !DILocation(line: 0, scope: !2203)
!2208 = !DILocation(line: 111, column: 17, scope: !2203)
!2209 = !DILocation(line: 112, column: 17, scope: !2203)
!2210 = !DILocation(line: 112, column: 23, scope: !2203)
!2211 = !DILocation(line: 112, column: 11, scope: !2203)
!2212 = !DILocation(line: 113, column: 17, scope: !2203)
!2213 = !DILocation(line: 113, column: 23, scope: !2203)
!2214 = !DILocation(line: 113, column: 11, scope: !2203)
!2215 = !DILocation(line: 114, column: 17, scope: !2203)
!2216 = !DILocation(line: 114, column: 23, scope: !2203)
!2217 = !DILocation(line: 114, column: 11, scope: !2203)
!2218 = !DILocation(line: 115, column: 5, scope: !2203)
!2219 = !DILocation(line: 116, column: 1, scope: !2203)
!2220 = distinct !DISubprogram(name: "delay_us", scope: !906, file: !906, line: 120, type: !2098, scopeLine: 121, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !905, retainedNodes: !2221)
!2221 = !{!2222, !2223, !2224}
!2222 = !DILocalVariable(name: "us", arg: 1, scope: !2220, file: !906, line: 120, type: !92)
!2223 = !DILocalVariable(name: "count", scope: !2220, file: !906, line: 122, type: !92)
!2224 = !DILocalVariable(name: "ticks_per_us", scope: !2220, file: !906, line: 123, type: !92)
!2225 = !DILocation(line: 0, scope: !2220)
!2226 = !DILocation(line: 125, column: 20, scope: !2220)
!2227 = !DILocation(line: 125, column: 39, scope: !2220)
!2228 = !DILocation(line: 126, column: 26, scope: !2220)
!2229 = !DILocation(line: 128, column: 5, scope: !2220)
!2230 = !DILocation(line: 129, column: 1, scope: !2220)
!2231 = distinct !DISubprogram(name: "drvTMR_init", scope: !906, file: !906, line: 133, type: !2232, scopeLine: 134, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !905, retainedNodes: !2234)
!2232 = !DISubroutineType(types: !2233)
!2233 = !{null, !92, !92, !222, !74}
!2234 = !{!2235, !2236, !2237, !2238}
!2235 = !DILocalVariable(name: "timerNum", arg: 1, scope: !2231, file: !906, line: 133, type: !92)
!2236 = !DILocalVariable(name: "countValue", arg: 2, scope: !2231, file: !906, line: 133, type: !92)
!2237 = !DILocalVariable(name: "autoRepeat", arg: 3, scope: !2231, file: !906, line: 133, type: !222)
!2238 = !DILocalVariable(name: "TMR_Callback", arg: 4, scope: !2231, file: !906, line: 133, type: !74)
!2239 = !DILocation(line: 0, scope: !2231)
!2240 = !DILocation(line: 136, column: 5, scope: !2231)
!2241 = !DILocation(line: 138, column: 18, scope: !2242)
!2242 = distinct !DILexicalBlock(scope: !2231, file: !906, line: 138, column: 9)
!2243 = !DILocation(line: 138, column: 9, scope: !2231)
!2244 = !DILocation(line: 139, column: 30, scope: !2245)
!2245 = distinct !DILexicalBlock(scope: !2242, file: !906, line: 138, column: 27)
!2246 = !DILocation(line: 141, column: 5, scope: !2245)
!2247 = !DILocation(line: 142, column: 30, scope: !2248)
!2248 = distinct !DILexicalBlock(scope: !2242, file: !906, line: 141, column: 12)
!2249 = !DILocation(line: 0, scope: !2242)
!2250 = !DILocation(line: 146, column: 5, scope: !2231)
!2251 = !DILocation(line: 147, column: 1, scope: !2231)
!2252 = distinct !DISubprogram(name: "TMR_Start", scope: !906, file: !906, line: 149, type: !2098, scopeLine: 150, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !905, retainedNodes: !2253)
!2253 = !{!2254}
!2254 = !DILocalVariable(name: "timerNum", arg: 1, scope: !2252, file: !906, line: 149, type: !92)
!2255 = !DILocation(line: 0, scope: !2252)
!2256 = !DILocation(line: 151, column: 5, scope: !2252)
!2257 = !DILocation(line: 152, column: 1, scope: !2252)
!2258 = distinct !DISubprogram(name: "TMR_Stop", scope: !906, file: !906, line: 154, type: !2098, scopeLine: 155, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !905, retainedNodes: !2259)
!2259 = !{!2260}
!2260 = !DILocalVariable(name: "timerNum", arg: 1, scope: !2258, file: !906, line: 154, type: !92)
!2261 = !DILocation(line: 0, scope: !2258)
!2262 = !DILocation(line: 156, column: 5, scope: !2258)
!2263 = !DILocation(line: 157, column: 1, scope: !2258)
!2264 = distinct !DISubprogram(name: "drvGPT2Init", scope: !906, file: !906, line: 160, type: !75, scopeLine: 161, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !905, retainedNodes: !1176)
!2265 = !DILocation(line: 162, column: 5, scope: !2264)
!2266 = !DILocation(line: 163, column: 1, scope: !2264)
!2267 = distinct !DISubprogram(name: "drvGPT4Init", scope: !906, file: !906, line: 165, type: !75, scopeLine: 166, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !905, retainedNodes: !1176)
!2268 = !DILocation(line: 167, column: 5, scope: !2267)
!2269 = !DILocation(line: 168, column: 1, scope: !2267)
!2270 = distinct !DISubprogram(name: "clear_TMR_INT_status_bit", scope: !906, file: !906, line: 170, type: !2098, scopeLine: 171, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !905, retainedNodes: !2271)
!2271 = !{!2272}
!2272 = !DILocalVariable(name: "timerNum", arg: 1, scope: !2270, file: !906, line: 170, type: !92)
!2273 = !DILocation(line: 0, scope: !2270)
!2274 = !DILocation(line: 172, column: 9, scope: !2270)
!2275 = !DILocation(line: 177, column: 5, scope: !2276)
!2276 = distinct !DILexicalBlock(scope: !2277, file: !906, line: 175, column: 27)
!2277 = distinct !DILexicalBlock(scope: !2270, file: !906, line: 175, column: 9)
!2278 = !DILocation(line: 178, column: 1, scope: !2270)
!2279 = distinct !DISubprogram(name: "top_xtal_init", scope: !86, file: !86, line: 52, type: !75, scopeLine: 53, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !85, retainedNodes: !2280)
!2280 = !{!2281, !2282}
!2281 = !DILocalVariable(name: "u4RegVal", scope: !2279, file: !86, line: 54, type: !92)
!2282 = !DILocalVariable(name: "reg", scope: !2279, file: !86, line: 55, type: !611)
!2283 = !DILocation(line: 0, scope: !2279)
!2284 = !DILocation(line: 55, column: 25, scope: !2279)
!2285 = !DILocation(line: 56, column: 16, scope: !2279)
!2286 = !DILocation(line: 56, column: 23, scope: !2279)
!2287 = !DILocation(line: 58, column: 16, scope: !2279)
!2288 = !DILocation(line: 61, column: 5, scope: !2279)
!2289 = !DILocation(line: 59, column: 14, scope: !2279)
!2290 = !DILocation(line: 0, scope: !2291)
!2291 = distinct !DILexicalBlock(scope: !2279, file: !86, line: 61, column: 18)
!2292 = !DILocation(line: 87, column: 38, scope: !2279)
!2293 = !DILocation(line: 88, column: 21, scope: !2279)
!2294 = !DILocation(line: 88, column: 19, scope: !2279)
!2295 = !DILocation(line: 89, column: 5, scope: !2279)
!2296 = !DILocation(line: 90, column: 17, scope: !2279)
!2297 = !DILocation(line: 90, column: 33, scope: !2279)
!2298 = !DILocation(line: 90, column: 5, scope: !2279)
!2299 = !DILocation(line: 91, column: 1, scope: !2279)
!2300 = distinct !DISubprogram(name: "top_xtal_freq_get", scope: !86, file: !86, line: 98, type: !2118, scopeLine: 99, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !85, retainedNodes: !1176)
!2301 = !DILocation(line: 100, column: 12, scope: !2300)
!2302 = !DILocation(line: 100, column: 5, scope: !2300)
!2303 = distinct !DISubprogram(name: "top_mcu_freq_get", scope: !86, file: !86, line: 108, type: !2118, scopeLine: 109, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !85, retainedNodes: !1176)
!2304 = !DILocation(line: 110, column: 12, scope: !2303)
!2305 = !DILocation(line: 110, column: 5, scope: !2303)
!2306 = distinct !DISubprogram(name: "cmnPLL1ON", scope: !86, file: !86, line: 118, type: !75, scopeLine: 119, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !85, retainedNodes: !2307)
!2307 = !{!2308, !2309}
!2308 = !DILocalVariable(name: "reg", scope: !2306, file: !86, line: 120, type: !91)
!2309 = !DILocalVariable(name: "pTopCfgCM4PWRCtl", scope: !2306, file: !86, line: 121, type: !90)
!2310 = !DILocation(line: 120, column: 5, scope: !2306)
!2311 = !DILocation(line: 120, column: 23, scope: !2306)
!2312 = !DILocation(line: 0, scope: !2306)
!2313 = !DILocation(line: 123, column: 11, scope: !2306)
!2314 = !DILocation(line: 123, column: 9, scope: !2306)
!2315 = !DILocation(line: 124, column: 12, scope: !2306)
!2316 = !DILocation(line: 124, column: 16, scope: !2306)
!2317 = !DILocation(line: 124, column: 39, scope: !2306)
!2318 = !DILocation(line: 124, column: 9, scope: !2306)
!2319 = !DILocation(line: 126, column: 9, scope: !2320)
!2320 = distinct !DILexicalBlock(scope: !2306, file: !86, line: 126, column: 9)
!2321 = !DILocation(line: 126, column: 13, scope: !2320)
!2322 = !DILocation(line: 126, column: 9, scope: !2306)
!2323 = !DILocation(line: 127, column: 15, scope: !2324)
!2324 = distinct !DILexicalBlock(scope: !2320, file: !86, line: 126, column: 47)
!2325 = !DILocation(line: 127, column: 13, scope: !2324)
!2326 = !DILocation(line: 128, column: 15, scope: !2324)
!2327 = !DILocation(line: 128, column: 19, scope: !2324)
!2328 = !DILocation(line: 128, column: 13, scope: !2324)
!2329 = !DILocation(line: 129, column: 15, scope: !2324)
!2330 = !DILocation(line: 129, column: 19, scope: !2324)
!2331 = !DILocation(line: 129, column: 13, scope: !2324)
!2332 = !DILocation(line: 130, column: 46, scope: !2324)
!2333 = !DILocation(line: 130, column: 9, scope: !2324)
!2334 = !DILocation(line: 132, column: 9, scope: !2324)
!2335 = !DILocation(line: 133, column: 19, scope: !2336)
!2336 = distinct !DILexicalBlock(scope: !2324, file: !86, line: 132, column: 12)
!2337 = !DILocation(line: 133, column: 17, scope: !2336)
!2338 = !DILocation(line: 134, column: 19, scope: !2336)
!2339 = !DILocation(line: 134, column: 23, scope: !2336)
!2340 = !DILocation(line: 134, column: 17, scope: !2336)
!2341 = !DILocation(line: 135, column: 19, scope: !2324)
!2342 = !DILocation(line: 135, column: 18, scope: !2324)
!2343 = !DILocation(line: 135, column: 9, scope: !2336)
!2344 = distinct !{!2344, !2334, !2345}
!2345 = !DILocation(line: 135, column: 22, scope: !2324)
!2346 = !DILocation(line: 138, column: 1, scope: !2306)
!2347 = distinct !DISubprogram(name: "cmnReadRegister32", scope: !2348, file: !2348, line: 176, type: !2349, scopeLine: 177, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !85, retainedNodes: !2353)
!2348 = !DIFile(filename: "../../../../../driver/CMSIS/Device/MTK/mt7687/Include/system_mt7687.h", directory: "/home/mjshen/RTOSExploration/Embedded-GUI-for-MT2523/project/mt7687_hdk/hal_examples/trng_generate_random_data/GCC")
!2349 = !DISubroutineType(types: !2350)
!2350 = !{!92, !2351}
!2351 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2352, size: 32)
!2352 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: null)
!2353 = !{!2354}
!2354 = !DILocalVariable(name: "Register", arg: 1, scope: !2347, file: !2348, line: 176, type: !2351)
!2355 = !DILocation(line: 0, scope: !2347)
!2356 = !DILocation(line: 178, column: 13, scope: !2347)
!2357 = !DILocation(line: 178, column: 12, scope: !2347)
!2358 = !DILocation(line: 178, column: 5, scope: !2347)
!2359 = distinct !DISubprogram(name: "cmnWriteRegister32", scope: !2348, file: !2348, line: 171, type: !2360, scopeLine: 172, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !85, retainedNodes: !2362)
!2360 = !DISubroutineType(types: !2361)
!2361 = !{null, !2351, !92}
!2362 = !{!2363, !2364}
!2363 = !DILocalVariable(name: "Register", arg: 1, scope: !2359, file: !2348, line: 171, type: !2351)
!2364 = !DILocalVariable(name: "Value", arg: 2, scope: !2359, file: !2348, line: 171, type: !92)
!2365 = !DILocation(line: 0, scope: !2359)
!2366 = !DILocation(line: 173, column: 6, scope: !2359)
!2367 = !DILocation(line: 173, column: 36, scope: !2359)
!2368 = !DILocation(line: 174, column: 1, scope: !2359)
!2369 = distinct !DISubprogram(name: "cmnPLL1ON_PLL2ON", scope: !86, file: !86, line: 145, type: !2370, scopeLine: 146, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !85, retainedNodes: !2372)
!2370 = !DISubroutineType(types: !2371)
!2371 = !{null, !267}
!2372 = !{!2373, !2374, !2375}
!2373 = !DILocalVariable(name: "fg960M", arg: 1, scope: !2369, file: !86, line: 145, type: !267)
!2374 = !DILocalVariable(name: "reg", scope: !2369, file: !86, line: 147, type: !91)
!2375 = !DILocalVariable(name: "pTopCfgCM4PWRCtl", scope: !2369, file: !86, line: 148, type: !90)
!2376 = !DILocation(line: 0, scope: !2369)
!2377 = !DILocation(line: 147, column: 5, scope: !2369)
!2378 = !DILocation(line: 147, column: 23, scope: !2369)
!2379 = !DILocation(line: 150, column: 11, scope: !2369)
!2380 = !DILocation(line: 150, column: 9, scope: !2369)
!2381 = !DILocation(line: 151, column: 12, scope: !2369)
!2382 = !DILocation(line: 151, column: 16, scope: !2369)
!2383 = !DILocation(line: 151, column: 39, scope: !2369)
!2384 = !DILocation(line: 151, column: 9, scope: !2369)
!2385 = !DILocation(line: 153, column: 9, scope: !2386)
!2386 = distinct !DILexicalBlock(scope: !2369, file: !86, line: 153, column: 9)
!2387 = !DILocation(line: 153, column: 13, scope: !2386)
!2388 = !DILocation(line: 153, column: 9, scope: !2369)
!2389 = !DILocation(line: 154, column: 15, scope: !2390)
!2390 = distinct !DILexicalBlock(scope: !2386, file: !86, line: 153, column: 45)
!2391 = !DILocation(line: 154, column: 13, scope: !2390)
!2392 = !DILocation(line: 155, column: 15, scope: !2390)
!2393 = !DILocation(line: 155, column: 19, scope: !2390)
!2394 = !DILocation(line: 155, column: 13, scope: !2390)
!2395 = !DILocation(line: 156, column: 15, scope: !2390)
!2396 = !DILocation(line: 156, column: 19, scope: !2390)
!2397 = !DILocation(line: 156, column: 13, scope: !2390)
!2398 = !DILocation(line: 157, column: 15, scope: !2390)
!2399 = !DILocation(line: 157, column: 13, scope: !2390)
!2400 = !DILocation(line: 158, column: 46, scope: !2390)
!2401 = !DILocation(line: 158, column: 9, scope: !2390)
!2402 = !DILocation(line: 160, column: 15, scope: !2390)
!2403 = !DILocation(line: 160, column: 13, scope: !2390)
!2404 = !DILocation(line: 161, column: 15, scope: !2390)
!2405 = !DILocation(line: 161, column: 19, scope: !2390)
!2406 = !DILocation(line: 161, column: 13, scope: !2390)
!2407 = !DILocation(line: 162, column: 15, scope: !2390)
!2408 = !DILocation(line: 162, column: 19, scope: !2390)
!2409 = !DILocation(line: 162, column: 13, scope: !2390)
!2410 = !DILocation(line: 163, column: 15, scope: !2390)
!2411 = !DILocation(line: 163, column: 19, scope: !2390)
!2412 = !DILocation(line: 163, column: 13, scope: !2390)
!2413 = !DILocation(line: 164, column: 46, scope: !2390)
!2414 = !DILocation(line: 164, column: 9, scope: !2390)
!2415 = !DILocation(line: 166, column: 9, scope: !2390)
!2416 = !DILocation(line: 167, column: 19, scope: !2417)
!2417 = distinct !DILexicalBlock(scope: !2390, file: !86, line: 166, column: 12)
!2418 = !DILocation(line: 167, column: 17, scope: !2417)
!2419 = !DILocation(line: 168, column: 19, scope: !2417)
!2420 = !DILocation(line: 168, column: 23, scope: !2417)
!2421 = !DILocation(line: 168, column: 17, scope: !2417)
!2422 = !DILocation(line: 169, column: 19, scope: !2390)
!2423 = !DILocation(line: 169, column: 18, scope: !2390)
!2424 = !DILocation(line: 169, column: 9, scope: !2417)
!2425 = distinct !{!2425, !2415, !2426}
!2426 = !DILocation(line: 169, column: 22, scope: !2390)
!2427 = !DILocation(line: 171, column: 15, scope: !2390)
!2428 = !DILocation(line: 171, column: 13, scope: !2390)
!2429 = !DILocation(line: 172, column: 15, scope: !2390)
!2430 = !DILocation(line: 172, column: 19, scope: !2390)
!2431 = !DILocation(line: 172, column: 13, scope: !2390)
!2432 = !DILocation(line: 173, column: 15, scope: !2390)
!2433 = !DILocation(line: 173, column: 19, scope: !2390)
!2434 = !DILocation(line: 173, column: 13, scope: !2390)
!2435 = !DILocation(line: 174, column: 5, scope: !2390)
!2436 = !DILocation(line: 176, column: 11, scope: !2369)
!2437 = !DILocation(line: 176, column: 9, scope: !2369)
!2438 = !DILocation(line: 177, column: 9, scope: !2439)
!2439 = distinct !DILexicalBlock(scope: !2369, file: !86, line: 177, column: 9)
!2440 = !DILocation(line: 0, scope: !2439)
!2441 = !DILocation(line: 177, column: 9, scope: !2369)
!2442 = !DILocation(line: 178, column: 19, scope: !2443)
!2443 = distinct !DILexicalBlock(scope: !2439, file: !86, line: 177, column: 17)
!2444 = !DILocation(line: 178, column: 13, scope: !2443)
!2445 = !DILocation(line: 179, column: 5, scope: !2443)
!2446 = !DILocation(line: 180, column: 13, scope: !2447)
!2447 = distinct !DILexicalBlock(scope: !2439, file: !86, line: 179, column: 12)
!2448 = !DILocation(line: 182, column: 42, scope: !2369)
!2449 = !DILocation(line: 182, column: 5, scope: !2369)
!2450 = !DILocation(line: 184, column: 1, scope: !2369)
!2451 = distinct !DISubprogram(name: "cmnPLL1OFF_PLL2OFF", scope: !86, file: !86, line: 191, type: !75, scopeLine: 192, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !85, retainedNodes: !2452)
!2452 = !{!2453, !2454}
!2453 = !DILocalVariable(name: "reg", scope: !2451, file: !86, line: 193, type: !91)
!2454 = !DILocalVariable(name: "pTopCfgCM4PWRCtl", scope: !2451, file: !86, line: 194, type: !90)
!2455 = !DILocation(line: 193, column: 5, scope: !2451)
!2456 = !DILocation(line: 193, column: 23, scope: !2451)
!2457 = !DILocation(line: 0, scope: !2451)
!2458 = !DILocation(line: 196, column: 11, scope: !2451)
!2459 = !DILocation(line: 196, column: 9, scope: !2451)
!2460 = !DILocation(line: 197, column: 11, scope: !2451)
!2461 = !DILocation(line: 197, column: 15, scope: !2451)
!2462 = !DILocation(line: 197, column: 9, scope: !2451)
!2463 = !DILocation(line: 198, column: 11, scope: !2451)
!2464 = !DILocation(line: 198, column: 15, scope: !2451)
!2465 = !DILocation(line: 198, column: 9, scope: !2451)
!2466 = !DILocation(line: 199, column: 11, scope: !2451)
!2467 = !DILocation(line: 199, column: 9, scope: !2451)
!2468 = !DILocation(line: 200, column: 42, scope: !2451)
!2469 = !DILocation(line: 200, column: 5, scope: !2451)
!2470 = !DILocation(line: 202, column: 11, scope: !2451)
!2471 = !DILocation(line: 202, column: 9, scope: !2451)
!2472 = !DILocation(line: 203, column: 11, scope: !2451)
!2473 = !DILocation(line: 203, column: 15, scope: !2451)
!2474 = !DILocation(line: 203, column: 9, scope: !2451)
!2475 = !DILocation(line: 204, column: 11, scope: !2451)
!2476 = !DILocation(line: 204, column: 15, scope: !2451)
!2477 = !DILocation(line: 204, column: 9, scope: !2451)
!2478 = !DILocation(line: 205, column: 11, scope: !2451)
!2479 = !DILocation(line: 205, column: 9, scope: !2451)
!2480 = !DILocation(line: 206, column: 42, scope: !2451)
!2481 = !DILocation(line: 206, column: 5, scope: !2451)
!2482 = !DILocation(line: 209, column: 1, scope: !2451)
!2483 = distinct !DISubprogram(name: "cmnCpuClkConfigureToXtal", scope: !86, file: !86, line: 216, type: !75, scopeLine: 217, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !85, retainedNodes: !2484)
!2484 = !{!2485, !2486}
!2485 = !DILocalVariable(name: "reg", scope: !2483, file: !86, line: 218, type: !91)
!2486 = !DILocalVariable(name: "pTopCfgCM4CKG", scope: !2483, file: !86, line: 219, type: !90)
!2487 = !DILocation(line: 218, column: 5, scope: !2483)
!2488 = !DILocation(line: 218, column: 23, scope: !2483)
!2489 = !DILocation(line: 0, scope: !2483)
!2490 = !DILocation(line: 222, column: 11, scope: !2483)
!2491 = !DILocation(line: 222, column: 9, scope: !2483)
!2492 = !DILocation(line: 223, column: 11, scope: !2483)
!2493 = !DILocation(line: 223, column: 15, scope: !2483)
!2494 = !DILocation(line: 223, column: 9, scope: !2483)
!2495 = !DILocation(line: 224, column: 11, scope: !2483)
!2496 = !DILocation(line: 224, column: 9, scope: !2483)
!2497 = !DILocation(line: 225, column: 39, scope: !2483)
!2498 = !DILocation(line: 225, column: 5, scope: !2483)
!2499 = !DILocation(line: 228, column: 11, scope: !2483)
!2500 = !DILocation(line: 228, column: 9, scope: !2483)
!2501 = !DILocation(line: 229, column: 11, scope: !2483)
!2502 = !DILocation(line: 229, column: 15, scope: !2483)
!2503 = !DILocation(line: 229, column: 9, scope: !2483)
!2504 = !DILocation(line: 230, column: 11, scope: !2483)
!2505 = !DILocation(line: 230, column: 9, scope: !2483)
!2506 = !DILocation(line: 231, column: 39, scope: !2483)
!2507 = !DILocation(line: 231, column: 5, scope: !2483)
!2508 = !DILocation(line: 233, column: 5, scope: !2483)
!2509 = !DILocation(line: 233, column: 12, scope: !2483)
!2510 = !DILocation(line: 233, column: 19, scope: !2483)
!2511 = !DILocation(line: 233, column: 16, scope: !2483)
!2512 = distinct !{!2512, !2508, !2513}
!2513 = !DILocation(line: 233, column: 52, scope: !2483)
!2514 = !DILocation(line: 235, column: 21, scope: !2483)
!2515 = !DILocation(line: 235, column: 19, scope: !2483)
!2516 = !DILocation(line: 236, column: 5, scope: !2483)
!2517 = !DILocation(line: 237, column: 17, scope: !2483)
!2518 = !DILocation(line: 237, column: 33, scope: !2483)
!2519 = !DILocation(line: 237, column: 5, scope: !2483)
!2520 = !DILocation(line: 239, column: 1, scope: !2483)
!2521 = distinct !DISubprogram(name: "cmnCpuClkConfigureTo192M", scope: !86, file: !86, line: 246, type: !75, scopeLine: 247, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !85, retainedNodes: !2522)
!2522 = !{!2523, !2524}
!2523 = !DILocalVariable(name: "reg", scope: !2521, file: !86, line: 248, type: !91)
!2524 = !DILocalVariable(name: "pTopCfgCM4CKG", scope: !2521, file: !86, line: 249, type: !90)
!2525 = !DILocation(line: 248, column: 5, scope: !2521)
!2526 = !DILocation(line: 248, column: 23, scope: !2521)
!2527 = !DILocation(line: 0, scope: !2521)
!2528 = !DILocation(line: 252, column: 5, scope: !2521)
!2529 = !DILocation(line: 255, column: 11, scope: !2521)
!2530 = !DILocation(line: 255, column: 9, scope: !2521)
!2531 = !DILocation(line: 256, column: 11, scope: !2521)
!2532 = !DILocation(line: 256, column: 15, scope: !2521)
!2533 = !DILocation(line: 256, column: 9, scope: !2521)
!2534 = !DILocation(line: 257, column: 11, scope: !2521)
!2535 = !DILocation(line: 257, column: 15, scope: !2521)
!2536 = !DILocation(line: 257, column: 9, scope: !2521)
!2537 = !DILocation(line: 258, column: 39, scope: !2521)
!2538 = !DILocation(line: 258, column: 5, scope: !2521)
!2539 = !DILocation(line: 260, column: 5, scope: !2521)
!2540 = !DILocation(line: 260, column: 12, scope: !2521)
!2541 = !DILocation(line: 260, column: 19, scope: !2521)
!2542 = !DILocation(line: 260, column: 16, scope: !2521)
!2543 = distinct !{!2543, !2539, !2544}
!2544 = !DILocation(line: 260, column: 52, scope: !2521)
!2545 = !DILocation(line: 263, column: 11, scope: !2521)
!2546 = !DILocation(line: 263, column: 9, scope: !2521)
!2547 = !DILocation(line: 264, column: 11, scope: !2521)
!2548 = !DILocation(line: 264, column: 15, scope: !2521)
!2549 = !DILocation(line: 264, column: 9, scope: !2521)
!2550 = !DILocation(line: 265, column: 11, scope: !2521)
!2551 = !DILocation(line: 265, column: 15, scope: !2521)
!2552 = !DILocation(line: 265, column: 9, scope: !2521)
!2553 = !DILocation(line: 266, column: 39, scope: !2521)
!2554 = !DILocation(line: 266, column: 5, scope: !2521)
!2555 = !DILocation(line: 269, column: 11, scope: !2521)
!2556 = !DILocation(line: 269, column: 9, scope: !2521)
!2557 = !DILocation(line: 270, column: 11, scope: !2521)
!2558 = !DILocation(line: 270, column: 15, scope: !2521)
!2559 = !DILocation(line: 270, column: 9, scope: !2521)
!2560 = !DILocation(line: 271, column: 11, scope: !2521)
!2561 = !DILocation(line: 271, column: 15, scope: !2521)
!2562 = !DILocation(line: 271, column: 9, scope: !2521)
!2563 = !DILocation(line: 272, column: 39, scope: !2521)
!2564 = !DILocation(line: 272, column: 5, scope: !2521)
!2565 = !DILocation(line: 273, column: 19, scope: !2521)
!2566 = !DILocation(line: 274, column: 5, scope: !2521)
!2567 = !DILocation(line: 275, column: 17, scope: !2521)
!2568 = !DILocation(line: 275, column: 33, scope: !2521)
!2569 = !DILocation(line: 275, column: 5, scope: !2521)
!2570 = !DILocation(line: 277, column: 1, scope: !2521)
!2571 = distinct !DISubprogram(name: "cmnCpuClkConfigureTo160M", scope: !86, file: !86, line: 284, type: !75, scopeLine: 285, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !85, retainedNodes: !2572)
!2572 = !{!2573, !2574}
!2573 = !DILocalVariable(name: "reg", scope: !2571, file: !86, line: 286, type: !91)
!2574 = !DILocalVariable(name: "pTopCfgCM4CKG", scope: !2571, file: !86, line: 287, type: !90)
!2575 = !DILocation(line: 286, column: 5, scope: !2571)
!2576 = !DILocation(line: 286, column: 23, scope: !2571)
!2577 = !DILocation(line: 0, scope: !2571)
!2578 = !DILocation(line: 290, column: 5, scope: !2571)
!2579 = !DILocation(line: 293, column: 11, scope: !2571)
!2580 = !DILocation(line: 293, column: 9, scope: !2571)
!2581 = !DILocation(line: 294, column: 11, scope: !2571)
!2582 = !DILocation(line: 294, column: 15, scope: !2571)
!2583 = !DILocation(line: 294, column: 9, scope: !2571)
!2584 = !DILocation(line: 295, column: 11, scope: !2571)
!2585 = !DILocation(line: 295, column: 15, scope: !2571)
!2586 = !DILocation(line: 295, column: 9, scope: !2571)
!2587 = !DILocation(line: 296, column: 39, scope: !2571)
!2588 = !DILocation(line: 296, column: 5, scope: !2571)
!2589 = !DILocation(line: 298, column: 5, scope: !2571)
!2590 = !DILocation(line: 298, column: 12, scope: !2571)
!2591 = !DILocation(line: 298, column: 19, scope: !2571)
!2592 = !DILocation(line: 298, column: 16, scope: !2571)
!2593 = distinct !{!2593, !2589, !2594}
!2594 = !DILocation(line: 298, column: 52, scope: !2571)
!2595 = !DILocation(line: 301, column: 11, scope: !2571)
!2596 = !DILocation(line: 301, column: 9, scope: !2571)
!2597 = !DILocation(line: 302, column: 11, scope: !2571)
!2598 = !DILocation(line: 302, column: 15, scope: !2571)
!2599 = !DILocation(line: 302, column: 9, scope: !2571)
!2600 = !DILocation(line: 303, column: 11, scope: !2571)
!2601 = !DILocation(line: 303, column: 15, scope: !2571)
!2602 = !DILocation(line: 303, column: 9, scope: !2571)
!2603 = !DILocation(line: 304, column: 39, scope: !2571)
!2604 = !DILocation(line: 304, column: 5, scope: !2571)
!2605 = !DILocation(line: 307, column: 11, scope: !2571)
!2606 = !DILocation(line: 307, column: 9, scope: !2571)
!2607 = !DILocation(line: 308, column: 11, scope: !2571)
!2608 = !DILocation(line: 308, column: 15, scope: !2571)
!2609 = !DILocation(line: 308, column: 9, scope: !2571)
!2610 = !DILocation(line: 309, column: 11, scope: !2571)
!2611 = !DILocation(line: 309, column: 15, scope: !2571)
!2612 = !DILocation(line: 309, column: 9, scope: !2571)
!2613 = !DILocation(line: 310, column: 39, scope: !2571)
!2614 = !DILocation(line: 310, column: 5, scope: !2571)
!2615 = !DILocation(line: 311, column: 19, scope: !2571)
!2616 = !DILocation(line: 312, column: 5, scope: !2571)
!2617 = !DILocation(line: 313, column: 17, scope: !2571)
!2618 = !DILocation(line: 313, column: 33, scope: !2571)
!2619 = !DILocation(line: 313, column: 5, scope: !2571)
!2620 = !DILocation(line: 315, column: 1, scope: !2571)
!2621 = distinct !DISubprogram(name: "cmnCpuClkConfigureTo64M", scope: !86, file: !86, line: 323, type: !75, scopeLine: 324, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !85, retainedNodes: !2622)
!2622 = !{!2623, !2624}
!2623 = !DILocalVariable(name: "reg", scope: !2621, file: !86, line: 325, type: !91)
!2624 = !DILocalVariable(name: "pTopCfgCM4CKG", scope: !2621, file: !86, line: 326, type: !90)
!2625 = !DILocation(line: 325, column: 5, scope: !2621)
!2626 = !DILocation(line: 325, column: 23, scope: !2621)
!2627 = !DILocation(line: 0, scope: !2621)
!2628 = !DILocation(line: 329, column: 5, scope: !2621)
!2629 = !DILocation(line: 332, column: 11, scope: !2621)
!2630 = !DILocation(line: 332, column: 9, scope: !2621)
!2631 = !DILocation(line: 333, column: 11, scope: !2621)
!2632 = !DILocation(line: 333, column: 15, scope: !2621)
!2633 = !DILocation(line: 333, column: 9, scope: !2621)
!2634 = !DILocation(line: 334, column: 11, scope: !2621)
!2635 = !DILocation(line: 334, column: 9, scope: !2621)
!2636 = !DILocation(line: 335, column: 39, scope: !2621)
!2637 = !DILocation(line: 335, column: 5, scope: !2621)
!2638 = !DILocation(line: 337, column: 5, scope: !2621)
!2639 = !DILocation(line: 337, column: 12, scope: !2621)
!2640 = !DILocation(line: 337, column: 19, scope: !2621)
!2641 = !DILocation(line: 337, column: 16, scope: !2621)
!2642 = distinct !{!2642, !2638, !2643}
!2643 = !DILocation(line: 337, column: 52, scope: !2621)
!2644 = !DILocation(line: 340, column: 11, scope: !2621)
!2645 = !DILocation(line: 340, column: 9, scope: !2621)
!2646 = !DILocation(line: 341, column: 11, scope: !2621)
!2647 = !DILocation(line: 341, column: 15, scope: !2621)
!2648 = !DILocation(line: 341, column: 9, scope: !2621)
!2649 = !DILocation(line: 342, column: 11, scope: !2621)
!2650 = !DILocation(line: 342, column: 15, scope: !2621)
!2651 = !DILocation(line: 342, column: 9, scope: !2621)
!2652 = !DILocation(line: 343, column: 39, scope: !2621)
!2653 = !DILocation(line: 343, column: 5, scope: !2621)
!2654 = !DILocation(line: 344, column: 19, scope: !2621)
!2655 = !DILocation(line: 345, column: 5, scope: !2621)
!2656 = !DILocation(line: 346, column: 17, scope: !2621)
!2657 = !DILocation(line: 346, column: 33, scope: !2621)
!2658 = !DILocation(line: 346, column: 5, scope: !2621)
!2659 = !DILocation(line: 348, column: 1, scope: !2621)
!2660 = distinct !DISubprogram(name: "cmnSerialFlashClkConfToXtal", scope: !86, file: !86, line: 353, type: !75, scopeLine: 354, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !85, retainedNodes: !2661)
!2661 = !{!2662, !2663}
!2662 = !DILocalVariable(name: "reg", scope: !2660, file: !86, line: 355, type: !79)
!2663 = !DILocalVariable(name: "pTopCfgHclk", scope: !2660, file: !86, line: 356, type: !96)
!2664 = !DILocation(line: 355, column: 5, scope: !2660)
!2665 = !DILocation(line: 355, column: 21, scope: !2660)
!2666 = !DILocation(line: 0, scope: !2660)
!2667 = !DILocation(line: 358, column: 11, scope: !2660)
!2668 = !DILocation(line: 358, column: 9, scope: !2660)
!2669 = !DILocation(line: 359, column: 11, scope: !2660)
!2670 = !DILocation(line: 359, column: 15, scope: !2660)
!2671 = !DILocation(line: 359, column: 9, scope: !2660)
!2672 = !DILocation(line: 360, column: 11, scope: !2660)
!2673 = !DILocation(line: 360, column: 9, scope: !2660)
!2674 = !DILocation(line: 361, column: 37, scope: !2660)
!2675 = !DILocation(line: 361, column: 5, scope: !2660)
!2676 = !DILocation(line: 362, column: 1, scope: !2660)
!2677 = distinct !DISubprogram(name: "getc", scope: !103, file: !103, line: 68, type: !2678, scopeLine: 69, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !102, retainedNodes: !2680)
!2678 = !DISubroutineType(types: !2679)
!2679 = !{!13}
!2680 = !{!2681}
!2681 = !DILocalVariable(name: "rc", scope: !2677, file: !103, line: 71, type: !13)
!2682 = !DILocation(line: 71, column: 14, scope: !2677)
!2683 = !DILocation(line: 0, scope: !2677)
!2684 = !DILocation(line: 72, column: 5, scope: !2677)
!2685 = distinct !DISubprogram(name: "getc_nowait", scope: !103, file: !103, line: 80, type: !2678, scopeLine: 81, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !102, retainedNodes: !2686)
!2686 = !{!2687}
!2687 = !DILocalVariable(name: "c", scope: !2685, file: !103, line: 82, type: !383)
!2688 = !DILocation(line: 84, column: 9, scope: !2689)
!2689 = distinct !DILexicalBlock(scope: !2685, file: !103, line: 84, column: 9)
!2690 = !DILocation(line: 84, column: 40, scope: !2689)
!2691 = !DILocation(line: 84, column: 9, scope: !2685)
!2692 = !DILocation(line: 85, column: 13, scope: !2693)
!2693 = distinct !DILexicalBlock(scope: !2689, file: !103, line: 84, column: 47)
!2694 = !DILocation(line: 86, column: 16, scope: !2693)
!2695 = !DILocation(line: 0, scope: !2685)
!2696 = !DILocation(line: 86, column: 9, scope: !2693)
!2697 = !DILocation(line: 0, scope: !2689)
!2698 = !DILocation(line: 90, column: 1, scope: !2685)
!2699 = distinct !DISubprogram(name: "uart_output_char", scope: !103, file: !103, line: 93, type: !2700, scopeLine: 94, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !102, retainedNodes: !2703)
!2700 = !DISubroutineType(types: !2701)
!2701 = !{null, !2702, !134}
!2702 = !DIDerivedType(tag: DW_TAG_typedef, name: "UART_PORT", file: !106, line: 75, baseType: !105)
!2703 = !{!2704, !2705, !2706}
!2704 = !DILocalVariable(name: "port_no", arg: 1, scope: !2699, file: !103, line: 93, type: !2702)
!2705 = !DILocalVariable(name: "c", arg: 2, scope: !2699, file: !103, line: 93, type: !134)
!2706 = !DILocalVariable(name: "base", scope: !2699, file: !103, line: 95, type: !7)
!2707 = !DILocation(line: 0, scope: !2699)
!2708 = !DILocation(line: 95, column: 25, scope: !2699)
!2709 = !DILocation(line: 97, column: 5, scope: !2699)
!2710 = !DILocation(line: 97, column: 14, scope: !2699)
!2711 = !DILocation(line: 97, column: 42, scope: !2699)
!2712 = !DILocation(line: 97, column: 12, scope: !2699)
!2713 = distinct !{!2713, !2709, !2714}
!2714 = !DILocation(line: 98, column: 9, scope: !2699)
!2715 = !DILocation(line: 99, column: 35, scope: !2699)
!2716 = !DILocation(line: 99, column: 5, scope: !2699)
!2717 = !DILocation(line: 99, column: 33, scope: !2699)
!2718 = !DILocation(line: 102, column: 1, scope: !2699)
!2719 = distinct !DISubprogram(name: "uart_input_char", scope: !103, file: !103, line: 106, type: !2720, scopeLine: 107, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !102, retainedNodes: !2722)
!2720 = !DISubroutineType(types: !2721)
!2721 = !{!267, !2702}
!2722 = !{!2723, !2724, !2725}
!2723 = !DILocalVariable(name: "port_no", arg: 1, scope: !2719, file: !103, line: 106, type: !2702)
!2724 = !DILocalVariable(name: "base", scope: !2719, file: !103, line: 108, type: !7)
!2725 = !DILocalVariable(name: "c", scope: !2719, file: !103, line: 109, type: !383)
!2726 = !DILocation(line: 0, scope: !2719)
!2727 = !DILocation(line: 108, column: 25, scope: !2719)
!2728 = !DILocation(line: 111, column: 5, scope: !2719)
!2729 = !DILocation(line: 111, column: 14, scope: !2719)
!2730 = !DILocation(line: 111, column: 42, scope: !2719)
!2731 = !DILocation(line: 111, column: 12, scope: !2719)
!2732 = distinct !{!2732, !2728, !2733}
!2733 = !DILocation(line: 112, column: 9, scope: !2719)
!2734 = !DILocation(line: 114, column: 9, scope: !2719)
!2735 = !DILocation(line: 116, column: 5, scope: !2719)
!2736 = distinct !DISubprogram(name: "uart_input_char_unblocking", scope: !103, file: !103, line: 120, type: !2737, scopeLine: 121, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !102, retainedNodes: !2739)
!2737 = !DISubroutineType(types: !2738)
!2738 = !{!92, !2702}
!2739 = !{!2740, !2741, !2742}
!2740 = !DILocalVariable(name: "port_no", arg: 1, scope: !2736, file: !103, line: 120, type: !2702)
!2741 = !DILocalVariable(name: "base", scope: !2736, file: !103, line: 122, type: !7)
!2742 = !DILocalVariable(name: "c", scope: !2736, file: !103, line: 123, type: !383)
!2743 = !DILocation(line: 0, scope: !2736)
!2744 = !DILocation(line: 122, column: 25, scope: !2736)
!2745 = !DILocation(line: 125, column: 9, scope: !2746)
!2746 = distinct !DILexicalBlock(scope: !2736, file: !103, line: 125, column: 9)
!2747 = !DILocation(line: 125, column: 37, scope: !2746)
!2748 = !DILocation(line: 125, column: 9, scope: !2736)
!2749 = !DILocation(line: 126, column: 13, scope: !2750)
!2750 = distinct !DILexicalBlock(scope: !2746, file: !103, line: 125, column: 44)
!2751 = !DILocation(line: 127, column: 16, scope: !2750)
!2752 = !DILocation(line: 127, column: 9, scope: !2750)
!2753 = !DILocation(line: 0, scope: !2746)
!2754 = !DILocation(line: 131, column: 1, scope: !2736)
!2755 = distinct !DISubprogram(name: "halUART_HWInit", scope: !103, file: !103, line: 136, type: !2756, scopeLine: 137, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !102, retainedNodes: !2758)
!2756 = !DISubroutineType(types: !2757)
!2757 = !{null, !2702}
!2758 = !{!2759}
!2759 = !DILocalVariable(name: "u_port", arg: 1, scope: !2755, file: !103, line: 136, type: !2702)
!2760 = !DILocation(line: 0, scope: !2755)
!2761 = !DILocation(line: 139, column: 5, scope: !2755)
!2762 = !DILocation(line: 140, column: 9, scope: !2755)
!2763 = !DILocation(line: 153, column: 5, scope: !2764)
!2764 = distinct !DILexicalBlock(scope: !2765, file: !103, line: 147, column: 38)
!2765 = distinct !DILexicalBlock(scope: !2766, file: !103, line: 147, column: 16)
!2766 = distinct !DILexicalBlock(scope: !2755, file: !103, line: 140, column: 9)
!2767 = !DILocation(line: 0, scope: !2766)
!2768 = !DILocation(line: 155, column: 1, scope: !2755)
!2769 = distinct !DISubprogram(name: "halUART_SetFormat", scope: !103, file: !103, line: 158, type: !2770, scopeLine: 159, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !102, retainedNodes: !2774)
!2770 = !DISubroutineType(types: !2771)
!2771 = !{null, !2702, !92, !2772, !2772, !2772}
!2772 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint16_t", file: !93, line: 36, baseType: !2773)
!2773 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint16_t", file: !95, line: 57, baseType: !132)
!2774 = !{!2775, !2776, !2777, !2778, !2779, !2780, !2781, !2782, !2783, !2784, !2785, !2786, !2787, !2788, !2790, !2791}
!2775 = !DILocalVariable(name: "u_port", arg: 1, scope: !2769, file: !103, line: 158, type: !2702)
!2776 = !DILocalVariable(name: "baudrate", arg: 2, scope: !2769, file: !103, line: 158, type: !92)
!2777 = !DILocalVariable(name: "databit", arg: 3, scope: !2769, file: !103, line: 158, type: !2772)
!2778 = !DILocalVariable(name: "parity", arg: 4, scope: !2769, file: !103, line: 158, type: !2772)
!2779 = !DILocalVariable(name: "stopbit", arg: 5, scope: !2769, file: !103, line: 158, type: !2772)
!2780 = !DILocalVariable(name: "control_word", scope: !2769, file: !103, line: 160, type: !2772)
!2781 = !DILocalVariable(name: "UART_BASE", scope: !2769, file: !103, line: 161, type: !92)
!2782 = !DILocalVariable(name: "data", scope: !2769, file: !103, line: 162, type: !92)
!2783 = !DILocalVariable(name: "uart_lcr", scope: !2769, file: !103, line: 162, type: !92)
!2784 = !DILocalVariable(name: "high_speed_div", scope: !2769, file: !103, line: 162, type: !92)
!2785 = !DILocalVariable(name: "sample_count", scope: !2769, file: !103, line: 162, type: !92)
!2786 = !DILocalVariable(name: "sample_point", scope: !2769, file: !103, line: 162, type: !92)
!2787 = !DILocalVariable(name: "fraction", scope: !2769, file: !103, line: 162, type: !92)
!2788 = !DILocalVariable(name: "fraction_L_mapping", scope: !2769, file: !103, line: 163, type: !2789)
!2789 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2772, size: 176, elements: !716)
!2790 = !DILocalVariable(name: "fraction_M_mapping", scope: !2769, file: !103, line: 164, type: !2789)
!2791 = !DILocalVariable(name: "status", scope: !2769, file: !103, line: 165, type: !238)
!2792 = !DILocation(line: 0, scope: !2769)
!2793 = !DILocation(line: 163, column: 15, scope: !2769)
!2794 = !DILocation(line: 164, column: 15, scope: !2769)
!2795 = !DILocation(line: 166, column: 20, scope: !2769)
!2796 = !DILocation(line: 166, column: 18, scope: !2769)
!2797 = !DILocation(line: 168, column: 9, scope: !2769)
!2798 = !DILocation(line: 176, column: 5, scope: !2769)
!2799 = !DILocation(line: 176, column: 44, scope: !2769)
!2800 = !DILocation(line: 177, column: 16, scope: !2769)
!2801 = !DILocation(line: 178, column: 50, scope: !2769)
!2802 = !DILocation(line: 178, column: 38, scope: !2769)
!2803 = !DILocation(line: 179, column: 12, scope: !2769)
!2804 = !DILocation(line: 179, column: 25, scope: !2769)
!2805 = !DILocation(line: 180, column: 28, scope: !2769)
!2806 = !DILocation(line: 180, column: 34, scope: !2769)
!2807 = !DILocation(line: 182, column: 29, scope: !2808)
!2808 = distinct !DILexicalBlock(scope: !2769, file: !103, line: 181, column: 5)
!2809 = !DILocation(line: 182, column: 46, scope: !2808)
!2810 = !DILocation(line: 183, column: 26, scope: !2811)
!2811 = distinct !DILexicalBlock(scope: !2808, file: !103, line: 183, column: 13)
!2812 = !DILocation(line: 183, column: 13, scope: !2808)
!2813 = !DILocation(line: 192, column: 30, scope: !2769)
!2814 = !DILocation(line: 192, column: 35, scope: !2769)
!2815 = !DILocation(line: 192, column: 46, scope: !2769)
!2816 = !DILocation(line: 192, column: 74, scope: !2769)
!2817 = !DILocation(line: 192, column: 53, scope: !2769)
!2818 = !DILocation(line: 192, column: 80, scope: !2769)
!2819 = !DILocation(line: 193, column: 56, scope: !2769)
!2820 = !DILocation(line: 193, column: 5, scope: !2769)
!2821 = !DILocation(line: 193, column: 38, scope: !2769)
!2822 = !DILocation(line: 194, column: 57, scope: !2769)
!2823 = !DILocation(line: 194, column: 63, scope: !2769)
!2824 = !DILocation(line: 194, column: 5, scope: !2769)
!2825 = !DILocation(line: 194, column: 38, scope: !2769)
!2826 = !DILocation(line: 195, column: 5, scope: !2769)
!2827 = !DILocation(line: 195, column: 45, scope: !2769)
!2828 = !DILocation(line: 196, column: 5, scope: !2769)
!2829 = !DILocation(line: 196, column: 47, scope: !2769)
!2830 = !DILocation(line: 197, column: 46, scope: !2769)
!2831 = !DILocation(line: 197, column: 5, scope: !2769)
!2832 = !DILocation(line: 197, column: 44, scope: !2769)
!2833 = !DILocation(line: 198, column: 46, scope: !2769)
!2834 = !DILocation(line: 198, column: 5, scope: !2769)
!2835 = !DILocation(line: 198, column: 44, scope: !2769)
!2836 = !DILocation(line: 199, column: 38, scope: !2769)
!2837 = !DILocation(line: 200, column: 5, scope: !2769)
!2838 = !DILocation(line: 200, column: 38, scope: !2769)
!2839 = !DILocation(line: 202, column: 20, scope: !2769)
!2840 = !DILocation(line: 203, column: 18, scope: !2769)
!2841 = !DILocation(line: 205, column: 18, scope: !2769)
!2842 = !DILocation(line: 207, column: 18, scope: !2769)
!2843 = !DILocation(line: 208, column: 18, scope: !2769)
!2844 = !DILocation(line: 209, column: 5, scope: !2769)
!2845 = !DILocation(line: 213, column: 1, scope: !2769)
!2846 = distinct !DISubprogram(name: "halUART_Get_VFIFO_Length", scope: !103, file: !103, line: 215, type: !2847, scopeLine: 216, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !102, retainedNodes: !2849)
!2847 = !DISubroutineType(types: !2848)
!2848 = !{null, !2702, !238, !2059}
!2849 = !{!2850, !2851, !2852}
!2850 = !DILocalVariable(name: "u_port", arg: 1, scope: !2846, file: !103, line: 215, type: !2702)
!2851 = !DILocalVariable(name: "is_rx", arg: 2, scope: !2846, file: !103, line: 215, type: !238)
!2852 = !DILocalVariable(name: "length", arg: 3, scope: !2846, file: !103, line: 215, type: !2059)
!2853 = !DILocation(line: 0, scope: !2846)
!2854 = !DILocation(line: 217, column: 16, scope: !2855)
!2855 = distinct !DILexicalBlock(scope: !2846, file: !103, line: 217, column: 9)
!2856 = !DILocation(line: 0, scope: !2855)
!2857 = !DILocation(line: 217, column: 9, scope: !2846)
!2858 = !DILocation(line: 218, column: 13, scope: !2859)
!2859 = distinct !DILexicalBlock(scope: !2855, file: !103, line: 217, column: 31)
!2860 = !DILocation(line: 219, column: 23, scope: !2861)
!2861 = distinct !DILexicalBlock(scope: !2862, file: !103, line: 218, column: 20)
!2862 = distinct !DILexicalBlock(scope: !2859, file: !103, line: 218, column: 13)
!2863 = !DILocation(line: 220, column: 9, scope: !2861)
!2864 = !DILocation(line: 221, column: 23, scope: !2865)
!2865 = distinct !DILexicalBlock(scope: !2862, file: !103, line: 220, column: 16)
!2866 = !DILocation(line: 221, column: 21, scope: !2865)
!2867 = !DILocation(line: 222, column: 24, scope: !2865)
!2868 = !DILocation(line: 222, column: 21, scope: !2865)
!2869 = !DILocation(line: 225, column: 13, scope: !2870)
!2870 = distinct !DILexicalBlock(scope: !2855, file: !103, line: 224, column: 12)
!2871 = !DILocation(line: 226, column: 23, scope: !2872)
!2872 = distinct !DILexicalBlock(scope: !2873, file: !103, line: 225, column: 20)
!2873 = distinct !DILexicalBlock(scope: !2870, file: !103, line: 225, column: 13)
!2874 = !DILocation(line: 227, column: 9, scope: !2872)
!2875 = !DILocation(line: 228, column: 23, scope: !2876)
!2876 = distinct !DILexicalBlock(scope: !2873, file: !103, line: 227, column: 16)
!2877 = !DILocation(line: 228, column: 21, scope: !2876)
!2878 = !DILocation(line: 229, column: 24, scope: !2876)
!2879 = !DILocation(line: 229, column: 21, scope: !2876)
!2880 = !DILocation(line: 233, column: 5, scope: !2846)
!2881 = distinct !DISubprogram(name: "halUART_Read_VFIFO_Data", scope: !103, file: !103, line: 236, type: !2882, scopeLine: 237, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !102, retainedNodes: !2884)
!2882 = !DISubroutineType(types: !2883)
!2883 = !{null, !2702, !431, !92}
!2884 = !{!2885, !2886, !2887, !2888}
!2885 = !DILocalVariable(name: "u_port", arg: 1, scope: !2881, file: !103, line: 236, type: !2702)
!2886 = !DILocalVariable(name: "data", arg: 2, scope: !2881, file: !103, line: 236, type: !431)
!2887 = !DILocalVariable(name: "length", arg: 3, scope: !2881, file: !103, line: 236, type: !92)
!2888 = !DILocalVariable(name: "idx", scope: !2881, file: !103, line: 238, type: !80)
!2889 = !DILocation(line: 0, scope: !2881)
!2890 = !DILocation(line: 239, column: 23, scope: !2891)
!2891 = distinct !DILexicalBlock(scope: !2892, file: !103, line: 239, column: 5)
!2892 = distinct !DILexicalBlock(scope: !2881, file: !103, line: 239, column: 5)
!2893 = !DILocation(line: 239, column: 5, scope: !2892)
!2894 = !DILocation(line: 240, column: 13, scope: !2895)
!2895 = distinct !DILexicalBlock(scope: !2891, file: !103, line: 239, column: 40)
!2896 = !DILocation(line: 244, column: 9, scope: !2897)
!2897 = distinct !DILexicalBlock(scope: !2898, file: !103, line: 242, column: 42)
!2898 = distinct !DILexicalBlock(scope: !2899, file: !103, line: 242, column: 20)
!2899 = distinct !DILexicalBlock(scope: !2895, file: !103, line: 240, column: 13)
!2900 = !DILocation(line: 0, scope: !2899)
!2901 = !DILocation(line: 239, column: 36, scope: !2891)
!2902 = distinct !{!2902, !2893, !2903}
!2903 = !DILocation(line: 246, column: 5, scope: !2892)
!2904 = !DILocation(line: 249, column: 1, scope: !2881)
!2905 = distinct !DISubprogram(name: "halUART_Write_VFIFO_Data", scope: !103, file: !103, line: 251, type: !2906, scopeLine: 252, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !102, retainedNodes: !2910)
!2906 = !DISubroutineType(types: !2907)
!2907 = !{null, !2702, !2908, !92}
!2908 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2909, size: 32)
!2909 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !267)
!2910 = !{!2911, !2912, !2913, !2914}
!2911 = !DILocalVariable(name: "u_port", arg: 1, scope: !2905, file: !103, line: 251, type: !2702)
!2912 = !DILocalVariable(name: "data", arg: 2, scope: !2905, file: !103, line: 251, type: !2908)
!2913 = !DILocalVariable(name: "length", arg: 3, scope: !2905, file: !103, line: 251, type: !92)
!2914 = !DILocalVariable(name: "idx", scope: !2905, file: !103, line: 253, type: !80)
!2915 = !DILocation(line: 0, scope: !2905)
!2916 = !DILocation(line: 254, column: 23, scope: !2917)
!2917 = distinct !DILexicalBlock(scope: !2918, file: !103, line: 254, column: 5)
!2918 = distinct !DILexicalBlock(scope: !2905, file: !103, line: 254, column: 5)
!2919 = !DILocation(line: 254, column: 5, scope: !2918)
!2920 = !DILocation(line: 255, column: 13, scope: !2921)
!2921 = distinct !DILexicalBlock(scope: !2917, file: !103, line: 254, column: 40)
!2922 = !DILocation(line: 256, column: 61, scope: !2923)
!2923 = distinct !DILexicalBlock(scope: !2924, file: !103, line: 255, column: 35)
!2924 = distinct !DILexicalBlock(scope: !2921, file: !103, line: 255, column: 13)
!2925 = !DILocation(line: 256, column: 59, scope: !2923)
!2926 = !DILocation(line: 257, column: 9, scope: !2923)
!2927 = !DILocation(line: 258, column: 61, scope: !2928)
!2928 = distinct !DILexicalBlock(scope: !2929, file: !103, line: 257, column: 42)
!2929 = distinct !DILexicalBlock(scope: !2924, file: !103, line: 257, column: 20)
!2930 = !DILocation(line: 258, column: 59, scope: !2928)
!2931 = !DILocation(line: 259, column: 9, scope: !2928)
!2932 = !DILocation(line: 254, column: 36, scope: !2917)
!2933 = distinct !{!2933, !2919, !2934}
!2934 = !DILocation(line: 261, column: 5, scope: !2918)
!2935 = !DILocation(line: 264, column: 1, scope: !2905)
!2936 = distinct !DISubprogram(name: "halUART_Tx_VFIFO_Initialize", scope: !103, file: !103, line: 266, type: !2937, scopeLine: 267, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !102, retainedNodes: !2939)
!2937 = !DISubroutineType(types: !2938)
!2938 = !{null, !2702, !431, !92, !92}
!2939 = !{!2940, !2941, !2942, !2943}
!2940 = !DILocalVariable(name: "u_port", arg: 1, scope: !2936, file: !103, line: 266, type: !2702)
!2941 = !DILocalVariable(name: "vfifo_buffer", arg: 2, scope: !2936, file: !103, line: 266, type: !431)
!2942 = !DILocalVariable(name: "buffer_length", arg: 3, scope: !2936, file: !103, line: 266, type: !92)
!2943 = !DILocalVariable(name: "threshold", arg: 4, scope: !2936, file: !103, line: 266, type: !92)
!2944 = !DILocation(line: 0, scope: !2936)
!2945 = !DILocation(line: 268, column: 9, scope: !2936)
!2946 = !DILocation(line: 274, column: 5, scope: !2947)
!2947 = distinct !DILexicalBlock(scope: !2948, file: !103, line: 271, column: 38)
!2948 = distinct !DILexicalBlock(scope: !2949, file: !103, line: 271, column: 16)
!2949 = distinct !DILexicalBlock(scope: !2936, file: !103, line: 268, column: 9)
!2950 = !DILocation(line: 0, scope: !2949)
!2951 = !DILocation(line: 276, column: 1, scope: !2936)
!2952 = distinct !DISubprogram(name: "halUART_Rx_VFIFO_Initialize", scope: !103, file: !103, line: 278, type: !2953, scopeLine: 279, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !102, retainedNodes: !2955)
!2953 = !DISubroutineType(types: !2954)
!2954 = !{null, !2702, !431, !92, !92, !92, !92}
!2955 = !{!2956, !2957, !2958, !2959, !2960, !2961}
!2956 = !DILocalVariable(name: "u_port", arg: 1, scope: !2952, file: !103, line: 278, type: !2702)
!2957 = !DILocalVariable(name: "vfifo_buffer", arg: 2, scope: !2952, file: !103, line: 278, type: !431)
!2958 = !DILocalVariable(name: "buffer_length", arg: 3, scope: !2952, file: !103, line: 278, type: !92)
!2959 = !DILocalVariable(name: "alert_length", arg: 4, scope: !2952, file: !103, line: 278, type: !92)
!2960 = !DILocalVariable(name: "threshold", arg: 5, scope: !2952, file: !103, line: 278, type: !92)
!2961 = !DILocalVariable(name: "timeout", arg: 6, scope: !2952, file: !103, line: 278, type: !92)
!2962 = !DILocation(line: 0, scope: !2952)
!2963 = !DILocation(line: 280, column: 9, scope: !2952)
!2964 = !DILocation(line: 286, column: 5, scope: !2965)
!2965 = distinct !DILexicalBlock(scope: !2966, file: !103, line: 283, column: 38)
!2966 = distinct !DILexicalBlock(scope: !2967, file: !103, line: 283, column: 16)
!2967 = distinct !DILexicalBlock(scope: !2952, file: !103, line: 280, column: 9)
!2968 = !DILocation(line: 0, scope: !2967)
!2969 = !DILocation(line: 288, column: 1, scope: !2952)
!2970 = distinct !DISubprogram(name: "halUART_VDMA_Rx_Register_Callback", scope: !103, file: !103, line: 290, type: !2971, scopeLine: 291, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !102, retainedNodes: !2973)
!2971 = !DISubroutineType(types: !2972)
!2972 = !{null, !2702, !390}
!2973 = !{!2974, !2975}
!2974 = !DILocalVariable(name: "u_port", arg: 1, scope: !2970, file: !103, line: 290, type: !2702)
!2975 = !DILocalVariable(name: "func", arg: 2, scope: !2970, file: !103, line: 290, type: !390)
!2976 = !DILocation(line: 0, scope: !2970)
!2977 = !DILocation(line: 292, column: 9, scope: !2970)
!2978 = !DILocation(line: 296, column: 5, scope: !2979)
!2979 = distinct !DILexicalBlock(scope: !2980, file: !103, line: 294, column: 38)
!2980 = distinct !DILexicalBlock(scope: !2981, file: !103, line: 294, column: 16)
!2981 = distinct !DILexicalBlock(scope: !2970, file: !103, line: 292, column: 9)
!2982 = !DILocation(line: 0, scope: !2981)
!2983 = !DILocation(line: 298, column: 1, scope: !2970)
!2984 = distinct !DISubprogram(name: "halUART_VDMA_Rx_Register_TO_Callback", scope: !103, file: !103, line: 300, type: !2971, scopeLine: 301, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !102, retainedNodes: !2985)
!2985 = !{!2986, !2987}
!2986 = !DILocalVariable(name: "u_port", arg: 1, scope: !2984, file: !103, line: 300, type: !2702)
!2987 = !DILocalVariable(name: "func", arg: 2, scope: !2984, file: !103, line: 300, type: !390)
!2988 = !DILocation(line: 0, scope: !2984)
!2989 = !DILocation(line: 302, column: 9, scope: !2984)
!2990 = !DILocation(line: 306, column: 5, scope: !2991)
!2991 = distinct !DILexicalBlock(scope: !2992, file: !103, line: 304, column: 38)
!2992 = distinct !DILexicalBlock(scope: !2993, file: !103, line: 304, column: 16)
!2993 = distinct !DILexicalBlock(scope: !2984, file: !103, line: 302, column: 9)
!2994 = !DILocation(line: 0, scope: !2993)
!2995 = !DILocation(line: 308, column: 1, scope: !2984)
!2996 = distinct !DISubprogram(name: "uart_set_hardware_flowcontrol", scope: !103, file: !103, line: 310, type: !2756, scopeLine: 311, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !102, retainedNodes: !2997)
!2997 = !{!2998, !2999, !3000, !3001}
!2998 = !DILocalVariable(name: "u_port", arg: 1, scope: !2996, file: !103, line: 310, type: !2702)
!2999 = !DILocalVariable(name: "base", scope: !2996, file: !103, line: 312, type: !7)
!3000 = !DILocalVariable(name: "EFR", scope: !2996, file: !103, line: 313, type: !2772)
!3001 = !DILocalVariable(name: "LCR", scope: !2996, file: !103, line: 313, type: !2772)
!3002 = !DILocation(line: 0, scope: !2996)
!3003 = !DILocation(line: 312, column: 25, scope: !2996)
!3004 = !DILocation(line: 315, column: 11, scope: !2996)
!3005 = !DILocation(line: 317, column: 33, scope: !2996)
!3006 = !DILocation(line: 318, column: 11, scope: !2996)
!3007 = !DILocation(line: 320, column: 35, scope: !2996)
!3008 = !DILocation(line: 320, column: 33, scope: !2996)
!3009 = !DILocation(line: 322, column: 5, scope: !2996)
!3010 = !DILocation(line: 322, column: 39, scope: !2996)
!3011 = !DILocation(line: 324, column: 33, scope: !2996)
!3012 = !DILocation(line: 325, column: 5, scope: !2996)
!3013 = !DILocation(line: 325, column: 33, scope: !2996)
!3014 = !DILocation(line: 327, column: 35, scope: !2996)
!3015 = !DILocation(line: 327, column: 33, scope: !2996)
!3016 = !DILocation(line: 328, column: 1, scope: !2996)
!3017 = distinct !DISubprogram(name: "uart_set_software_flowcontrol", scope: !103, file: !103, line: 330, type: !3018, scopeLine: 331, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !102, retainedNodes: !3020)
!3018 = !DISubroutineType(types: !3019)
!3019 = !{null, !2702, !267, !267, !267}
!3020 = !{!3021, !3022, !3023, !3024, !3025, !3026, !3027}
!3021 = !DILocalVariable(name: "u_port", arg: 1, scope: !3017, file: !103, line: 330, type: !2702)
!3022 = !DILocalVariable(name: "xon", arg: 2, scope: !3017, file: !103, line: 330, type: !267)
!3023 = !DILocalVariable(name: "xoff", arg: 3, scope: !3017, file: !103, line: 330, type: !267)
!3024 = !DILocalVariable(name: "escape_character", arg: 4, scope: !3017, file: !103, line: 330, type: !267)
!3025 = !DILocalVariable(name: "base", scope: !3017, file: !103, line: 332, type: !7)
!3026 = !DILocalVariable(name: "EFR", scope: !3017, file: !103, line: 333, type: !2772)
!3027 = !DILocalVariable(name: "LCR", scope: !3017, file: !103, line: 333, type: !2772)
!3028 = !DILocation(line: 0, scope: !3017)
!3029 = !DILocation(line: 332, column: 25, scope: !3017)
!3030 = !DILocation(line: 335, column: 11, scope: !3017)
!3031 = !DILocation(line: 337, column: 33, scope: !3017)
!3032 = !DILocation(line: 338, column: 36, scope: !3017)
!3033 = !DILocation(line: 338, column: 5, scope: !3017)
!3034 = !DILocation(line: 338, column: 34, scope: !3017)
!3035 = !DILocation(line: 339, column: 5, scope: !3017)
!3036 = !DILocation(line: 339, column: 34, scope: !3017)
!3037 = !DILocation(line: 340, column: 37, scope: !3017)
!3038 = !DILocation(line: 340, column: 5, scope: !3017)
!3039 = !DILocation(line: 340, column: 35, scope: !3017)
!3040 = !DILocation(line: 341, column: 5, scope: !3017)
!3041 = !DILocation(line: 341, column: 35, scope: !3017)
!3042 = !DILocation(line: 343, column: 11, scope: !3017)
!3043 = !DILocation(line: 345, column: 35, scope: !3017)
!3044 = !DILocation(line: 345, column: 33, scope: !3017)
!3045 = !DILocation(line: 347, column: 35, scope: !3017)
!3046 = !DILocation(line: 347, column: 33, scope: !3017)
!3047 = !DILocation(line: 349, column: 43, scope: !3017)
!3048 = !DILocation(line: 349, column: 5, scope: !3017)
!3049 = !DILocation(line: 349, column: 41, scope: !3017)
!3050 = !DILocation(line: 350, column: 5, scope: !3017)
!3051 = !DILocation(line: 350, column: 39, scope: !3017)
!3052 = !DILocation(line: 351, column: 1, scope: !3017)
!3053 = distinct !DISubprogram(name: "uart_disable_flowcontrol", scope: !103, file: !103, line: 353, type: !2756, scopeLine: 354, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !102, retainedNodes: !3054)
!3054 = !{!3055, !3056, !3057}
!3055 = !DILocalVariable(name: "u_port", arg: 1, scope: !3053, file: !103, line: 353, type: !2702)
!3056 = !DILocalVariable(name: "base", scope: !3053, file: !103, line: 355, type: !7)
!3057 = !DILocalVariable(name: "LCR", scope: !3053, file: !103, line: 356, type: !2772)
!3058 = !DILocation(line: 0, scope: !3053)
!3059 = !DILocation(line: 355, column: 25, scope: !3053)
!3060 = !DILocation(line: 358, column: 11, scope: !3053)
!3061 = !DILocation(line: 360, column: 33, scope: !3053)
!3062 = !DILocation(line: 362, column: 5, scope: !3053)
!3063 = !DILocation(line: 362, column: 33, scope: !3053)
!3064 = !DILocation(line: 364, column: 33, scope: !3053)
!3065 = !DILocation(line: 366, column: 35, scope: !3053)
!3066 = !DILocation(line: 366, column: 33, scope: !3053)
!3067 = !DILocation(line: 367, column: 1, scope: !3053)
!3068 = distinct !DISubprogram(name: "uart_reset_default_value", scope: !103, file: !103, line: 436, type: !2756, scopeLine: 437, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !102, retainedNodes: !3069)
!3069 = !{!3070, !3071}
!3070 = !DILocalVariable(name: "u_port", arg: 1, scope: !3068, file: !103, line: 436, type: !2702)
!3071 = !DILocalVariable(name: "base", scope: !3068, file: !103, line: 438, type: !7)
!3072 = !DILocation(line: 0, scope: !3068)
!3073 = !DILocation(line: 438, column: 25, scope: !3068)
!3074 = !DILocation(line: 440, column: 5, scope: !3068)
!3075 = !DILocation(line: 440, column: 33, scope: !3068)
!3076 = !DILocation(line: 441, column: 5, scope: !3068)
!3077 = !DILocation(line: 441, column: 33, scope: !3068)
!3078 = !DILocation(line: 442, column: 5, scope: !3068)
!3079 = !DILocation(line: 442, column: 34, scope: !3068)
!3080 = !DILocation(line: 443, column: 5, scope: !3068)
!3081 = !DILocation(line: 443, column: 35, scope: !3068)
!3082 = !DILocation(line: 445, column: 33, scope: !3068)
!3083 = !DILocation(line: 446, column: 5, scope: !3068)
!3084 = !DILocation(line: 446, column: 33, scope: !3068)
!3085 = !DILocation(line: 447, column: 5, scope: !3068)
!3086 = !DILocation(line: 447, column: 33, scope: !3068)
!3087 = !DILocation(line: 449, column: 33, scope: !3068)
!3088 = !DILocation(line: 450, column: 33, scope: !3068)
!3089 = !DILocation(line: 451, column: 33, scope: !3068)
!3090 = !DILocation(line: 453, column: 33, scope: !3068)
!3091 = !DILocation(line: 454, column: 33, scope: !3068)
!3092 = !DILocation(line: 455, column: 33, scope: !3068)
!3093 = !DILocation(line: 457, column: 33, scope: !3068)
!3094 = !DILocation(line: 458, column: 5, scope: !3068)
!3095 = !DILocation(line: 458, column: 33, scope: !3068)
!3096 = !DILocation(line: 459, column: 5, scope: !3068)
!3097 = !DILocation(line: 459, column: 39, scope: !3068)
!3098 = !DILocation(line: 460, column: 5, scope: !3068)
!3099 = !DILocation(line: 460, column: 40, scope: !3068)
!3100 = !DILocation(line: 461, column: 5, scope: !3068)
!3101 = !DILocation(line: 461, column: 42, scope: !3068)
!3102 = !DILocation(line: 462, column: 5, scope: !3068)
!3103 = !DILocation(line: 462, column: 42, scope: !3068)
!3104 = !DILocation(line: 463, column: 5, scope: !3068)
!3105 = !DILocation(line: 463, column: 35, scope: !3068)
!3106 = !DILocation(line: 464, column: 5, scope: !3068)
!3107 = !DILocation(line: 464, column: 41, scope: !3068)
!3108 = !DILocation(line: 465, column: 5, scope: !3068)
!3109 = !DILocation(line: 465, column: 39, scope: !3068)
!3110 = !DILocation(line: 466, column: 5, scope: !3068)
!3111 = !DILocation(line: 466, column: 38, scope: !3068)
!3112 = !DILocation(line: 467, column: 5, scope: !3068)
!3113 = !DILocation(line: 467, column: 42, scope: !3068)
!3114 = !DILocation(line: 468, column: 5, scope: !3068)
!3115 = !DILocation(line: 468, column: 45, scope: !3068)
!3116 = !DILocation(line: 469, column: 5, scope: !3068)
!3117 = !DILocation(line: 469, column: 39, scope: !3068)
!3118 = !DILocation(line: 470, column: 5, scope: !3068)
!3119 = !DILocation(line: 470, column: 39, scope: !3068)
!3120 = !DILocation(line: 471, column: 5, scope: !3068)
!3121 = !DILocation(line: 471, column: 42, scope: !3068)
!3122 = !DILocation(line: 472, column: 1, scope: !3068)
!3123 = distinct !DISubprogram(name: "uart_query_empty", scope: !103, file: !103, line: 474, type: !2756, scopeLine: 475, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !102, retainedNodes: !3124)
!3124 = !{!3125, !3126}
!3125 = !DILocalVariable(name: "u_port", arg: 1, scope: !3123, file: !103, line: 474, type: !2702)
!3126 = !DILocalVariable(name: "base", scope: !3123, file: !103, line: 476, type: !7)
!3127 = !DILocation(line: 0, scope: !3123)
!3128 = !DILocation(line: 476, column: 25, scope: !3123)
!3129 = !DILocation(line: 478, column: 5, scope: !3123)
!3130 = !DILocation(line: 478, column: 14, scope: !3123)
!3131 = !DILocation(line: 478, column: 42, scope: !3123)
!3132 = !DILocation(line: 478, column: 12, scope: !3123)
!3133 = distinct !{!3133, !3129, !3134}
!3134 = !DILocation(line: 478, column: 50, scope: !3123)
!3135 = !DILocation(line: 479, column: 1, scope: !3123)
!3136 = distinct !DISubprogram(name: "log_hal_fatal_internal", scope: !909, file: !909, line: 64, type: !3137, scopeLine: 65, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !908, retainedNodes: !3139)
!3137 = !DISubroutineType(types: !3138)
!3138 = !{null, !540, !13, !540, null}
!3139 = !{!3140, !3141, !3142, !3143, !3152}
!3140 = !DILocalVariable(name: "func", arg: 1, scope: !3136, file: !909, line: 64, type: !540)
!3141 = !DILocalVariable(name: "line", arg: 2, scope: !3136, file: !909, line: 64, type: !13)
!3142 = !DILocalVariable(name: "message", arg: 3, scope: !3136, file: !909, line: 64, type: !540)
!3143 = !DILocalVariable(name: "ap", scope: !3136, file: !909, line: 66, type: !3144)
!3144 = !DIDerivedType(tag: DW_TAG_typedef, name: "va_list", file: !3145, line: 46, baseType: !3146)
!3145 = !DIFile(filename: "gcc-arm-none-eabi-10.3-2021.10/bin/../lib/gcc/arm-none-eabi/10.3.1/../../../../arm-none-eabi/include/stdio.h", directory: "/home/mjshen/RTOSExploration")
!3146 = !DIDerivedType(tag: DW_TAG_typedef, name: "__gnuc_va_list", file: !3147, line: 32, baseType: !3148)
!3147 = !DIFile(filename: "/usr/lib/llvm-14/lib/clang/14.0.6/include/stdarg.h", directory: "")
!3148 = !DIDerivedType(tag: DW_TAG_typedef, name: "__builtin_va_list", file: !909, baseType: !3149)
!3149 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__va_list", size: 32, elements: !3150)
!3150 = !{!3151}
!3151 = !DIDerivedType(tag: DW_TAG_member, name: "__ap", scope: !3149, file: !909, line: 66, baseType: !219, size: 32)
!3152 = !DILocalVariable(name: "mask", scope: !3136, file: !909, line: 68, type: !92)
!3153 = !DILocation(line: 0, scope: !3136)
!3154 = !DILocation(line: 66, column: 5, scope: !3136)
!3155 = !DILocation(line: 66, column: 13, scope: !3136)
!3156 = !DILocation(line: 68, column: 5, scope: !3136)
!3157 = !DILocation(line: 69, column: 5, scope: !3136)
!3158 = !DILocation(line: 71, column: 5, scope: !3136)
!3159 = !DILocation(line: 72, column: 5, scope: !3136)
!3160 = !DILocation(line: 73, column: 5, scope: !3136)
!3161 = !DILocation(line: 75, column: 37, scope: !3136)
!3162 = !DILocation(line: 75, column: 5, scope: !3136)
!3163 = !DILocation(line: 77, column: 1, scope: !3136)
!3164 = distinct !DISubprogram(name: "log_hal_error_internal", scope: !909, file: !909, line: 78, type: !3137, scopeLine: 79, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !908, retainedNodes: !3165)
!3165 = !{!3166, !3167, !3168, !3169, !3170}
!3166 = !DILocalVariable(name: "func", arg: 1, scope: !3164, file: !909, line: 78, type: !540)
!3167 = !DILocalVariable(name: "line", arg: 2, scope: !3164, file: !909, line: 78, type: !13)
!3168 = !DILocalVariable(name: "message", arg: 3, scope: !3164, file: !909, line: 78, type: !540)
!3169 = !DILocalVariable(name: "ap", scope: !3164, file: !909, line: 80, type: !3144)
!3170 = !DILocalVariable(name: "mask", scope: !3164, file: !909, line: 82, type: !92)
!3171 = !DILocation(line: 0, scope: !3164)
!3172 = !DILocation(line: 80, column: 5, scope: !3164)
!3173 = !DILocation(line: 80, column: 13, scope: !3164)
!3174 = !DILocation(line: 82, column: 5, scope: !3164)
!3175 = !DILocation(line: 83, column: 5, scope: !3164)
!3176 = !DILocation(line: 85, column: 5, scope: !3164)
!3177 = !DILocation(line: 86, column: 5, scope: !3164)
!3178 = !DILocation(line: 87, column: 5, scope: !3164)
!3179 = !DILocation(line: 89, column: 37, scope: !3164)
!3180 = !DILocation(line: 89, column: 5, scope: !3164)
!3181 = !DILocation(line: 91, column: 1, scope: !3164)
!3182 = distinct !DISubprogram(name: "log_hal_warning_internal", scope: !909, file: !909, line: 92, type: !3137, scopeLine: 93, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !908, retainedNodes: !3183)
!3183 = !{!3184, !3185, !3186, !3187, !3188}
!3184 = !DILocalVariable(name: "func", arg: 1, scope: !3182, file: !909, line: 92, type: !540)
!3185 = !DILocalVariable(name: "line", arg: 2, scope: !3182, file: !909, line: 92, type: !13)
!3186 = !DILocalVariable(name: "message", arg: 3, scope: !3182, file: !909, line: 92, type: !540)
!3187 = !DILocalVariable(name: "ap", scope: !3182, file: !909, line: 94, type: !3144)
!3188 = !DILocalVariable(name: "mask", scope: !3182, file: !909, line: 96, type: !92)
!3189 = !DILocation(line: 0, scope: !3182)
!3190 = !DILocation(line: 94, column: 5, scope: !3182)
!3191 = !DILocation(line: 94, column: 13, scope: !3182)
!3192 = !DILocation(line: 96, column: 5, scope: !3182)
!3193 = !DILocation(line: 97, column: 5, scope: !3182)
!3194 = !DILocation(line: 99, column: 5, scope: !3182)
!3195 = !DILocation(line: 100, column: 5, scope: !3182)
!3196 = !DILocation(line: 101, column: 5, scope: !3182)
!3197 = !DILocation(line: 103, column: 37, scope: !3182)
!3198 = !DILocation(line: 103, column: 5, scope: !3182)
!3199 = !DILocation(line: 105, column: 1, scope: !3182)
!3200 = distinct !DISubprogram(name: "log_hal_info_internal", scope: !909, file: !909, line: 106, type: !3137, scopeLine: 107, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !908, retainedNodes: !3201)
!3201 = !{!3202, !3203, !3204, !3205, !3206}
!3202 = !DILocalVariable(name: "func", arg: 1, scope: !3200, file: !909, line: 106, type: !540)
!3203 = !DILocalVariable(name: "line", arg: 2, scope: !3200, file: !909, line: 106, type: !13)
!3204 = !DILocalVariable(name: "message", arg: 3, scope: !3200, file: !909, line: 106, type: !540)
!3205 = !DILocalVariable(name: "ap", scope: !3200, file: !909, line: 108, type: !3144)
!3206 = !DILocalVariable(name: "mask", scope: !3200, file: !909, line: 110, type: !92)
!3207 = !DILocation(line: 0, scope: !3200)
!3208 = !DILocation(line: 108, column: 5, scope: !3200)
!3209 = !DILocation(line: 108, column: 13, scope: !3200)
!3210 = !DILocation(line: 110, column: 5, scope: !3200)
!3211 = !DILocation(line: 111, column: 5, scope: !3200)
!3212 = !DILocation(line: 113, column: 5, scope: !3200)
!3213 = !DILocation(line: 114, column: 5, scope: !3200)
!3214 = !DILocation(line: 115, column: 5, scope: !3200)
!3215 = !DILocation(line: 117, column: 37, scope: !3200)
!3216 = !DILocation(line: 117, column: 5, scope: !3200)
!3217 = !DILocation(line: 119, column: 1, scope: !3200)
!3218 = distinct !DISubprogram(name: "log_hal_dump_internal", scope: !909, file: !909, line: 121, type: !3219, scopeLine: 122, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !908, retainedNodes: !3223)
!3219 = !DISubroutineType(types: !3220)
!3220 = !{null, !540, !13, !540, !3221, !13, null}
!3221 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3222, size: 32)
!3222 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!3223 = !{!3224, !3225, !3226, !3227, !3228}
!3224 = !DILocalVariable(name: "func", arg: 1, scope: !3218, file: !909, line: 121, type: !540)
!3225 = !DILocalVariable(name: "line", arg: 2, scope: !3218, file: !909, line: 121, type: !13)
!3226 = !DILocalVariable(name: "message", arg: 3, scope: !3218, file: !909, line: 121, type: !540)
!3227 = !DILocalVariable(name: "data", arg: 4, scope: !3218, file: !909, line: 121, type: !3221)
!3228 = !DILocalVariable(name: "length", arg: 5, scope: !3218, file: !909, line: 121, type: !13)
!3229 = !DILocation(line: 0, scope: !3218)
!3230 = !DILocation(line: 123, column: 1, scope: !3218)
!3231 = distinct !DISubprogram(name: "hal_cache_init", scope: !141, file: !141, line: 53, type: !3232, scopeLine: 54, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !140, retainedNodes: !3235)
!3232 = !DISubroutineType(types: !3233)
!3233 = !{!3234}
!3234 = !DIDerivedType(tag: DW_TAG_typedef, name: "hal_cache_status_t", file: !144, line: 172, baseType: !143)
!3235 = !{!3236, !3238}
!3236 = !DILocalVariable(name: "region", scope: !3231, file: !141, line: 55, type: !3237)
!3237 = !DIDerivedType(tag: DW_TAG_typedef, name: "hal_cache_region_t", file: !144, line: 204, baseType: !154)
!3238 = !DILocalVariable(name: "irq_flag", scope: !3231, file: !141, line: 56, type: !92)
!3239 = !DILocation(line: 59, column: 16, scope: !3231)
!3240 = !DILocation(line: 0, scope: !3231)
!3241 = !DILocation(line: 62, column: 9, scope: !3242)
!3242 = distinct !DILexicalBlock(scope: !3231, file: !141, line: 62, column: 9)
!3243 = !{i8 0, i8 2}
!3244 = !DILocation(line: 62, column: 9, scope: !3231)
!3245 = !DILocation(line: 64, column: 9, scope: !3246)
!3246 = distinct !DILexicalBlock(scope: !3242, file: !141, line: 62, column: 39)
!3247 = !DILocation(line: 66, column: 9, scope: !3246)
!3248 = !DILocation(line: 69, column: 24, scope: !3249)
!3249 = distinct !DILexicalBlock(scope: !3242, file: !141, line: 67, column: 12)
!3250 = !DILocation(line: 72, column: 9, scope: !3249)
!3251 = !DILocation(line: 77, column: 5, scope: !3231)
!3252 = !DILocation(line: 80, column: 22, scope: !3231)
!3253 = !DILocation(line: 81, column: 28, scope: !3231)
!3254 = !DILocation(line: 84, column: 19, scope: !3231)
!3255 = !DILocation(line: 85, column: 23, scope: !3231)
!3256 = !DILocation(line: 88, column: 5, scope: !3257)
!3257 = distinct !DILexicalBlock(scope: !3231, file: !141, line: 88, column: 5)
!3258 = !DILocation(line: 90, column: 9, scope: !3259)
!3259 = distinct !DILexicalBlock(scope: !3260, file: !141, line: 88, column: 81)
!3260 = distinct !DILexicalBlock(scope: !3257, file: !141, line: 88, column: 5)
!3261 = !DILocation(line: 90, column: 38, scope: !3259)
!3262 = !DILocation(line: 91, column: 9, scope: !3259)
!3263 = !DILocation(line: 91, column: 42, scope: !3259)
!3264 = !DILocation(line: 94, column: 45, scope: !3259)
!3265 = !DILocation(line: 94, column: 47, scope: !3259)
!3266 = !DILocation(line: 95, column: 49, scope: !3259)
!3267 = !DILocation(line: 95, column: 51, scope: !3259)
!3268 = !DILocation(line: 88, column: 77, scope: !3260)
!3269 = !DILocation(line: 88, column: 46, scope: !3260)
!3270 = distinct !{!3270, !3256, !3271}
!3271 = !DILocation(line: 96, column: 5, scope: !3257)
!3272 = !DILocation(line: 99, column: 1, scope: !3231)
!3273 = distinct !DISubprogram(name: "hal_cache_invalidate_all_cache_lines", scope: !141, file: !141, line: 327, type: !3232, scopeLine: 328, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !140, retainedNodes: !3274)
!3274 = !{!3275}
!3275 = !DILocalVariable(name: "irq_flag", scope: !3273, file: !141, line: 329, type: !92)
!3276 = !DILocation(line: 332, column: 16, scope: !3273)
!3277 = !DILocation(line: 0, scope: !3273)
!3278 = !DILocation(line: 335, column: 21, scope: !3273)
!3279 = !DILocation(line: 336, column: 21, scope: !3273)
!3280 = !DILocation(line: 339, column: 21, scope: !3273)
!3281 = !DILocation(line: 340, column: 21, scope: !3273)
!3282 = !DILocation(line: 434, column: 3, scope: !3283, inlinedAt: !3285)
!3283 = distinct !DISubprogram(name: "__ISB", scope: !3284, file: !3284, line: 432, type: !75, scopeLine: 433, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !140, retainedNodes: !1176)
!3284 = !DIFile(filename: "../../../../../driver/CMSIS/Include/core_cmInstr.h", directory: "/home/mjshen/RTOSExploration/Embedded-GUI-for-MT2523/project/mt7687_hdk/hal_examples/trng_generate_random_data/GCC")
!3285 = distinct !DILocation(line: 343, column: 5, scope: !3273)
!3286 = !{i64 296584}
!3287 = !DILocation(line: 346, column: 5, scope: !3273)
!3288 = !DILocation(line: 348, column: 5, scope: !3273)
!3289 = distinct !DISubprogram(name: "hal_cache_deinit", scope: !141, file: !141, line: 101, type: !3232, scopeLine: 102, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !140, retainedNodes: !3290)
!3290 = !{!3291}
!3291 = !DILocalVariable(name: "region", scope: !3289, file: !141, line: 103, type: !3237)
!3292 = !DILocation(line: 107, column: 5, scope: !3289)
!3293 = !DILocation(line: 110, column: 22, scope: !3289)
!3294 = !DILocation(line: 111, column: 28, scope: !3289)
!3295 = !DILocation(line: 114, column: 19, scope: !3289)
!3296 = !DILocation(line: 115, column: 23, scope: !3289)
!3297 = !DILocation(line: 0, scope: !3289)
!3298 = !DILocation(line: 118, column: 5, scope: !3299)
!3299 = distinct !DILexicalBlock(scope: !3289, file: !141, line: 118, column: 5)
!3300 = !DILocation(line: 120, column: 9, scope: !3301)
!3301 = distinct !DILexicalBlock(scope: !3302, file: !141, line: 118, column: 81)
!3302 = distinct !DILexicalBlock(scope: !3299, file: !141, line: 118, column: 5)
!3303 = !DILocation(line: 120, column: 38, scope: !3301)
!3304 = !DILocation(line: 121, column: 9, scope: !3301)
!3305 = !DILocation(line: 121, column: 42, scope: !3301)
!3306 = !DILocation(line: 124, column: 45, scope: !3301)
!3307 = !DILocation(line: 124, column: 47, scope: !3301)
!3308 = !DILocation(line: 125, column: 49, scope: !3301)
!3309 = !DILocation(line: 125, column: 51, scope: !3301)
!3310 = !DILocation(line: 118, column: 77, scope: !3302)
!3311 = !DILocation(line: 118, column: 46, scope: !3302)
!3312 = distinct !{!3312, !3298, !3313}
!3313 = !DILocation(line: 126, column: 5, scope: !3299)
!3314 = !DILocation(line: 129, column: 20, scope: !3289)
!3315 = !DILocation(line: 131, column: 5, scope: !3289)
!3316 = distinct !DISubprogram(name: "hal_cache_enable", scope: !141, file: !141, line: 134, type: !3232, scopeLine: 135, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !140, retainedNodes: !1176)
!3317 = !DILocation(line: 137, column: 45, scope: !3318)
!3318 = distinct !DILexicalBlock(scope: !3316, file: !141, line: 137, column: 9)
!3319 = !DILocation(line: 137, column: 28, scope: !3318)
!3320 = !DILocation(line: 137, column: 9, scope: !3316)
!3321 = !DILocation(line: 142, column: 22, scope: !3316)
!3322 = !DILocation(line: 145, column: 28, scope: !3316)
!3323 = !DILocation(line: 145, column: 19, scope: !3316)
!3324 = !DILocation(line: 147, column: 5, scope: !3316)
!3325 = !DILocation(line: 0, scope: !3316)
!3326 = !DILocation(line: 148, column: 1, scope: !3316)
!3327 = distinct !DISubprogram(name: "hal_cache_disable", scope: !141, file: !141, line: 150, type: !3232, scopeLine: 151, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !140, retainedNodes: !3328)
!3328 = !{!3329}
!3329 = !DILocalVariable(name: "irq_flag", scope: !3327, file: !141, line: 152, type: !92)
!3330 = !DILocation(line: 155, column: 16, scope: !3327)
!3331 = !DILocation(line: 0, scope: !3327)
!3332 = !DILocation(line: 158, column: 16, scope: !3333)
!3333 = distinct !DILexicalBlock(scope: !3327, file: !141, line: 158, column: 9)
!3334 = !DILocation(line: 158, column: 26, scope: !3333)
!3335 = !DILocation(line: 158, column: 9, scope: !3327)
!3336 = !DILocation(line: 160, column: 9, scope: !3337)
!3337 = distinct !DILexicalBlock(scope: !3333, file: !141, line: 158, column: 49)
!3338 = !DILocation(line: 161, column: 5, scope: !3337)
!3339 = !DILocation(line: 164, column: 22, scope: !3327)
!3340 = !DILocation(line: 167, column: 28, scope: !3327)
!3341 = !DILocation(line: 167, column: 19, scope: !3327)
!3342 = !DILocation(line: 170, column: 5, scope: !3327)
!3343 = !DILocation(line: 172, column: 5, scope: !3327)
!3344 = distinct !DISubprogram(name: "hal_cache_region_enable", scope: !141, file: !141, line: 175, type: !3345, scopeLine: 176, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !140, retainedNodes: !3347)
!3345 = !DISubroutineType(types: !3346)
!3346 = !{!3234, !3237}
!3347 = !{!3348}
!3348 = !DILocalVariable(name: "region", arg: 1, scope: !3344, file: !141, line: 175, type: !3237)
!3349 = !DILocation(line: 0, scope: !3344)
!3350 = !DILocation(line: 178, column: 16, scope: !3351)
!3351 = distinct !DILexicalBlock(scope: !3344, file: !141, line: 178, column: 9)
!3352 = !DILocation(line: 178, column: 9, scope: !3344)
!3353 = !DILocation(line: 183, column: 9, scope: !3354)
!3354 = distinct !DILexicalBlock(scope: !3344, file: !141, line: 183, column: 9)
!3355 = !DILocation(line: 183, column: 38, scope: !3354)
!3356 = !DILocation(line: 183, column: 9, scope: !3344)
!3357 = !DILocation(line: 184, column: 38, scope: !3358)
!3358 = distinct !DILexicalBlock(scope: !3354, file: !141, line: 183, column: 62)
!3359 = !DILocation(line: 184, column: 32, scope: !3358)
!3360 = !DILocation(line: 190, column: 32, scope: !3344)
!3361 = !DILocation(line: 190, column: 23, scope: !3344)
!3362 = !DILocation(line: 192, column: 5, scope: !3344)
!3363 = !DILocation(line: 193, column: 1, scope: !3344)
!3364 = distinct !DISubprogram(name: "hal_cache_region_disable", scope: !141, file: !141, line: 195, type: !3345, scopeLine: 196, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !140, retainedNodes: !3365)
!3365 = !{!3366}
!3366 = !DILocalVariable(name: "region", arg: 1, scope: !3364, file: !141, line: 195, type: !3237)
!3367 = !DILocation(line: 0, scope: !3364)
!3368 = !DILocation(line: 198, column: 16, scope: !3369)
!3369 = distinct !DILexicalBlock(scope: !3364, file: !141, line: 198, column: 9)
!3370 = !DILocation(line: 198, column: 9, scope: !3364)
!3371 = !DILocation(line: 203, column: 35, scope: !3364)
!3372 = !DILocation(line: 203, column: 31, scope: !3364)
!3373 = !DILocation(line: 203, column: 28, scope: !3364)
!3374 = !DILocation(line: 206, column: 32, scope: !3364)
!3375 = !DILocation(line: 206, column: 23, scope: !3364)
!3376 = !DILocation(line: 209, column: 41, scope: !3364)
!3377 = !DILocation(line: 209, column: 43, scope: !3364)
!3378 = !DILocation(line: 210, column: 45, scope: !3364)
!3379 = !DILocation(line: 210, column: 47, scope: !3364)
!3380 = !DILocation(line: 212, column: 5, scope: !3364)
!3381 = !DILocation(line: 213, column: 1, scope: !3364)
!3382 = distinct !DISubprogram(name: "hal_cache_set_size", scope: !141, file: !141, line: 215, type: !3383, scopeLine: 216, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !140, retainedNodes: !3386)
!3383 = !DISubroutineType(types: !3384)
!3384 = !{!3234, !3385}
!3385 = !DIDerivedType(tag: DW_TAG_typedef, name: "hal_cache_size_t", file: !144, line: 182, baseType: !173)
!3386 = !{!3387}
!3387 = !DILocalVariable(name: "cache_size", arg: 1, scope: !3382, file: !141, line: 215, type: !3385)
!3388 = !DILocation(line: 0, scope: !3382)
!3389 = !DILocation(line: 218, column: 20, scope: !3390)
!3390 = distinct !DILexicalBlock(scope: !3382, file: !141, line: 218, column: 9)
!3391 = !DILocation(line: 218, column: 9, scope: !3382)
!3392 = !DILocation(line: 223, column: 22, scope: !3382)
!3393 = !DILocation(line: 224, column: 37, scope: !3382)
!3394 = !DILocation(line: 224, column: 22, scope: !3382)
!3395 = !DILocation(line: 227, column: 20, scope: !3396)
!3396 = distinct !DILexicalBlock(scope: !3382, file: !141, line: 227, column: 9)
!3397 = !DILocation(line: 227, column: 9, scope: !3382)
!3398 = !DILocation(line: 228, column: 26, scope: !3399)
!3399 = distinct !DILexicalBlock(scope: !3396, file: !141, line: 227, column: 43)
!3400 = !DILocation(line: 229, column: 5, scope: !3399)
!3401 = !DILocation(line: 232, column: 28, scope: !3382)
!3402 = !DILocation(line: 232, column: 19, scope: !3382)
!3403 = !DILocation(line: 234, column: 5, scope: !3382)
!3404 = !DILocation(line: 235, column: 1, scope: !3382)
!3405 = distinct !DISubprogram(name: "hal_cache_region_config", scope: !141, file: !141, line: 237, type: !3406, scopeLine: 238, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !140, retainedNodes: !3415)
!3406 = !DISubroutineType(types: !3407)
!3407 = !{!3234, !3237, !3408}
!3408 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3409, size: 32)
!3409 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3410)
!3410 = !DIDerivedType(tag: DW_TAG_typedef, name: "hal_cache_region_config_t", file: !144, line: 222, baseType: !3411)
!3411 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !144, line: 219, size: 64, elements: !3412)
!3412 = !{!3413, !3414}
!3413 = !DIDerivedType(tag: DW_TAG_member, name: "cache_region_address", scope: !3411, file: !144, line: 220, baseType: !92, size: 32)
!3414 = !DIDerivedType(tag: DW_TAG_member, name: "cache_region_size", scope: !3411, file: !144, line: 221, baseType: !92, size: 32, offset: 32)
!3415 = !{!3416, !3417}
!3416 = !DILocalVariable(name: "region", arg: 1, scope: !3405, file: !141, line: 237, type: !3237)
!3417 = !DILocalVariable(name: "region_config", arg: 2, scope: !3405, file: !141, line: 237, type: !3408)
!3418 = !DILocation(line: 0, scope: !3405)
!3419 = !DILocation(line: 240, column: 16, scope: !3420)
!3420 = distinct !DILexicalBlock(scope: !3405, file: !141, line: 240, column: 9)
!3421 = !DILocation(line: 240, column: 9, scope: !3405)
!3422 = !DILocation(line: 245, column: 23, scope: !3423)
!3423 = distinct !DILexicalBlock(scope: !3405, file: !141, line: 245, column: 9)
!3424 = !DILocation(line: 245, column: 9, scope: !3405)
!3425 = !DILocation(line: 250, column: 24, scope: !3426)
!3426 = distinct !DILexicalBlock(scope: !3405, file: !141, line: 250, column: 9)
!3427 = !DILocation(line: 250, column: 45, scope: !3426)
!3428 = !DILocation(line: 250, column: 9, scope: !3405)
!3429 = !DILocation(line: 251, column: 9, scope: !3430)
!3430 = distinct !DILexicalBlock(scope: !3426, file: !141, line: 250, column: 81)
!3431 = !DILocation(line: 256, column: 24, scope: !3432)
!3432 = distinct !DILexicalBlock(scope: !3405, file: !141, line: 256, column: 9)
!3433 = !DILocation(line: 256, column: 42, scope: !3432)
!3434 = !DILocation(line: 256, column: 9, scope: !3405)
!3435 = !DILocation(line: 257, column: 9, scope: !3436)
!3436 = distinct !DILexicalBlock(scope: !3432, file: !141, line: 256, column: 78)
!3437 = !DILocation(line: 262, column: 5, scope: !3405)
!3438 = !DILocation(line: 262, column: 34, scope: !3405)
!3439 = !DILocation(line: 263, column: 55, scope: !3405)
!3440 = !DILocation(line: 263, column: 93, scope: !3405)
!3441 = !DILocation(line: 263, column: 76, scope: !3405)
!3442 = !DILocation(line: 263, column: 5, scope: !3405)
!3443 = !DILocation(line: 263, column: 38, scope: !3405)
!3444 = !DILocation(line: 266, column: 34, scope: !3405)
!3445 = !DILocation(line: 269, column: 45, scope: !3405)
!3446 = !DILocation(line: 269, column: 41, scope: !3405)
!3447 = !DILocation(line: 269, column: 43, scope: !3405)
!3448 = !DILocation(line: 270, column: 49, scope: !3405)
!3449 = !DILocation(line: 270, column: 45, scope: !3405)
!3450 = !DILocation(line: 270, column: 47, scope: !3405)
!3451 = !DILocation(line: 272, column: 5, scope: !3405)
!3452 = !DILocation(line: 273, column: 1, scope: !3405)
!3453 = distinct !DISubprogram(name: "hal_cache_invalidate_one_cache_line", scope: !141, file: !141, line: 275, type: !3454, scopeLine: 276, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !140, retainedNodes: !3456)
!3454 = !DISubroutineType(types: !3455)
!3455 = !{!3234, !92}
!3456 = !{!3457, !3458}
!3457 = !DILocalVariable(name: "address", arg: 1, scope: !3453, file: !141, line: 275, type: !92)
!3458 = !DILocalVariable(name: "irq_flag", scope: !3453, file: !141, line: 277, type: !92)
!3459 = !DILocation(line: 0, scope: !3453)
!3460 = !DILocation(line: 280, column: 17, scope: !3461)
!3461 = distinct !DILexicalBlock(scope: !3453, file: !141, line: 280, column: 9)
!3462 = !DILocation(line: 280, column: 9, scope: !3453)
!3463 = !DILocation(line: 284, column: 16, scope: !3453)
!3464 = !DILocation(line: 287, column: 32, scope: !3453)
!3465 = !DILocation(line: 287, column: 21, scope: !3453)
!3466 = !DILocation(line: 288, column: 21, scope: !3453)
!3467 = !DILocation(line: 434, column: 3, scope: !3283, inlinedAt: !3468)
!3468 = distinct !DILocation(line: 291, column: 5, scope: !3453)
!3469 = !DILocation(line: 294, column: 5, scope: !3453)
!3470 = !DILocation(line: 296, column: 5, scope: !3453)
!3471 = !DILocation(line: 297, column: 1, scope: !3453)
!3472 = distinct !DISubprogram(name: "hal_cache_invalidate_multiple_cache_lines", scope: !141, file: !141, line: 299, type: !3473, scopeLine: 300, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !140, retainedNodes: !3475)
!3473 = !DISubroutineType(types: !3474)
!3474 = !{!3234, !92, !92}
!3475 = !{!3476, !3477, !3478, !3479}
!3476 = !DILocalVariable(name: "address", arg: 1, scope: !3472, file: !141, line: 299, type: !92)
!3477 = !DILocalVariable(name: "length", arg: 2, scope: !3472, file: !141, line: 299, type: !92)
!3478 = !DILocalVariable(name: "irq_flag", scope: !3472, file: !141, line: 301, type: !92)
!3479 = !DILocalVariable(name: "end_address", scope: !3472, file: !141, line: 302, type: !92)
!3480 = !DILocation(line: 0, scope: !3472)
!3481 = !DILocation(line: 302, column: 36, scope: !3472)
!3482 = !DILocation(line: 305, column: 47, scope: !3483)
!3483 = distinct !DILexicalBlock(scope: !3472, file: !141, line: 305, column: 9)
!3484 = !DILocation(line: 310, column: 16, scope: !3472)
!3485 = !DILocation(line: 313, column: 20, scope: !3472)
!3486 = !DILocation(line: 313, column: 5, scope: !3472)
!3487 = !DILocation(line: 314, column: 9, scope: !3488)
!3488 = distinct !DILexicalBlock(scope: !3472, file: !141, line: 313, column: 35)
!3489 = !DILocation(line: 315, column: 17, scope: !3488)
!3490 = distinct !{!3490, !3486, !3491}
!3491 = !DILocation(line: 316, column: 5, scope: !3472)
!3492 = !DILocation(line: 434, column: 3, scope: !3283, inlinedAt: !3493)
!3493 = distinct !DILocation(line: 319, column: 5, scope: !3472)
!3494 = !DILocation(line: 322, column: 5, scope: !3472)
!3495 = !DILocation(line: 324, column: 5, scope: !3472)
!3496 = !DILocation(line: 325, column: 1, scope: !3472)
!3497 = distinct !DISubprogram(name: "hal_cache_flush_one_cache_line", scope: !141, file: !141, line: 351, type: !3454, scopeLine: 352, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !140, retainedNodes: !3498)
!3498 = !{!3499, !3500}
!3499 = !DILocalVariable(name: "address", arg: 1, scope: !3497, file: !141, line: 351, type: !92)
!3500 = !DILocalVariable(name: "irq_flag", scope: !3497, file: !141, line: 353, type: !92)
!3501 = !DILocation(line: 0, scope: !3497)
!3502 = !DILocation(line: 356, column: 17, scope: !3503)
!3503 = distinct !DILexicalBlock(scope: !3497, file: !141, line: 356, column: 9)
!3504 = !DILocation(line: 356, column: 9, scope: !3497)
!3505 = !DILocation(line: 361, column: 16, scope: !3497)
!3506 = !DILocation(line: 364, column: 32, scope: !3497)
!3507 = !DILocation(line: 364, column: 21, scope: !3497)
!3508 = !DILocation(line: 365, column: 21, scope: !3497)
!3509 = !DILocation(line: 434, column: 3, scope: !3283, inlinedAt: !3510)
!3510 = distinct !DILocation(line: 368, column: 5, scope: !3497)
!3511 = !DILocation(line: 371, column: 5, scope: !3497)
!3512 = !DILocation(line: 373, column: 5, scope: !3497)
!3513 = !DILocation(line: 374, column: 1, scope: !3497)
!3514 = distinct !DISubprogram(name: "hal_cache_flush_multiple_cache_lines", scope: !141, file: !141, line: 376, type: !3473, scopeLine: 377, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !140, retainedNodes: !3515)
!3515 = !{!3516, !3517, !3518, !3519}
!3516 = !DILocalVariable(name: "address", arg: 1, scope: !3514, file: !141, line: 376, type: !92)
!3517 = !DILocalVariable(name: "length", arg: 2, scope: !3514, file: !141, line: 376, type: !92)
!3518 = !DILocalVariable(name: "irq_flag", scope: !3514, file: !141, line: 378, type: !92)
!3519 = !DILocalVariable(name: "end_address", scope: !3514, file: !141, line: 379, type: !92)
!3520 = !DILocation(line: 0, scope: !3514)
!3521 = !DILocation(line: 379, column: 36, scope: !3514)
!3522 = !DILocation(line: 382, column: 47, scope: !3523)
!3523 = distinct !DILexicalBlock(scope: !3514, file: !141, line: 382, column: 9)
!3524 = !DILocation(line: 387, column: 16, scope: !3514)
!3525 = !DILocation(line: 390, column: 20, scope: !3514)
!3526 = !DILocation(line: 390, column: 5, scope: !3514)
!3527 = !DILocation(line: 391, column: 9, scope: !3528)
!3528 = distinct !DILexicalBlock(scope: !3514, file: !141, line: 390, column: 35)
!3529 = !DILocation(line: 392, column: 17, scope: !3528)
!3530 = distinct !{!3530, !3526, !3531}
!3531 = !DILocation(line: 393, column: 5, scope: !3514)
!3532 = !DILocation(line: 434, column: 3, scope: !3283, inlinedAt: !3533)
!3533 = distinct !DILocation(line: 396, column: 5, scope: !3514)
!3534 = !DILocation(line: 399, column: 5, scope: !3514)
!3535 = !DILocation(line: 401, column: 5, scope: !3514)
!3536 = !DILocation(line: 402, column: 1, scope: !3514)
!3537 = distinct !DISubprogram(name: "hal_cache_flush_all_cache_lines", scope: !141, file: !141, line: 404, type: !3232, scopeLine: 405, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !140, retainedNodes: !3538)
!3538 = !{!3539}
!3539 = !DILocalVariable(name: "irq_flag", scope: !3537, file: !141, line: 406, type: !92)
!3540 = !DILocation(line: 409, column: 16, scope: !3537)
!3541 = !DILocation(line: 0, scope: !3537)
!3542 = !DILocation(line: 412, column: 21, scope: !3537)
!3543 = !DILocation(line: 413, column: 21, scope: !3537)
!3544 = !DILocation(line: 434, column: 3, scope: !3283, inlinedAt: !3545)
!3545 = distinct !DILocation(line: 416, column: 5, scope: !3537)
!3546 = !DILocation(line: 419, column: 5, scope: !3537)
!3547 = !DILocation(line: 421, column: 5, scope: !3537)
!3548 = distinct !DISubprogram(name: "hal_cache_is_cacheable", scope: !141, file: !141, line: 424, type: !3549, scopeLine: 425, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !140, retainedNodes: !3551)
!3549 = !DISubroutineType(types: !3550)
!3550 = !{!222, !92}
!3551 = !{!3552, !3553}
!3552 = !DILocalVariable(name: "address", arg: 1, scope: !3548, file: !141, line: 424, type: !92)
!3553 = !DILocalVariable(name: "region", scope: !3548, file: !141, line: 426, type: !3237)
!3554 = !DILocation(line: 0, scope: !3548)
!3555 = !DILocation(line: 429, column: 18, scope: !3556)
!3556 = distinct !DILexicalBlock(scope: !3548, file: !141, line: 429, column: 9)
!3557 = !DILocation(line: 429, column: 28, scope: !3556)
!3558 = !DILocation(line: 429, column: 9, scope: !3548)
!3559 = !DILocation(line: 435, column: 20, scope: !3560)
!3560 = distinct !DILexicalBlock(scope: !3561, file: !141, line: 435, column: 13)
!3561 = distinct !DILexicalBlock(scope: !3562, file: !141, line: 433, column: 81)
!3562 = distinct !DILexicalBlock(scope: !3563, file: !141, line: 433, column: 5)
!3563 = distinct !DILexicalBlock(scope: !3548, file: !141, line: 433, column: 5)
!3564 = !DILocation(line: 435, column: 41, scope: !3560)
!3565 = !DILocation(line: 435, column: 36, scope: !3560)
!3566 = !DILocation(line: 435, column: 13, scope: !3561)
!3567 = !DILocation(line: 436, column: 30, scope: !3568)
!3568 = distinct !DILexicalBlock(scope: !3569, file: !141, line: 436, column: 17)
!3569 = distinct !DILexicalBlock(scope: !3560, file: !141, line: 435, column: 53)
!3570 = !DILocation(line: 436, column: 59, scope: !3568)
!3571 = !DILocation(line: 436, column: 26, scope: !3568)
!3572 = !DILocation(line: 436, column: 85, scope: !3568)
!3573 = !DILocation(line: 436, column: 99, scope: !3568)
!3574 = !DILocation(line: 436, column: 97, scope: !3568)
!3575 = !DILocation(line: 436, column: 17, scope: !3569)
!3576 = !DILocation(line: 433, column: 77, scope: !3562)
!3577 = !DILocation(line: 433, column: 46, scope: !3562)
!3578 = !DILocation(line: 433, column: 5, scope: !3563)
!3579 = distinct !{!3579, !3578, !3580}
!3580 = !DILocation(line: 440, column: 5, scope: !3563)
!3581 = !DILocation(line: 442, column: 1, scope: !3548)
!3582 = distinct !DISubprogram(name: "hal_nvic_init", scope: !226, file: !226, line: 60, type: !3583, scopeLine: 61, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !225, retainedNodes: !1176)
!3583 = !DISubroutineType(types: !3584)
!3584 = !{!3585}
!3585 = !DIDerivedType(tag: DW_TAG_typedef, name: "hal_nvic_status_t", file: !229, line: 158, baseType: !228)
!3586 = !DILocation(line: 62, column: 5, scope: !3582)
!3587 = distinct !DISubprogram(name: "hal_nvic_enable_irq", scope: !226, file: !226, line: 65, type: !3588, scopeLine: 66, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !225, retainedNodes: !3590)
!3588 = !DISubroutineType(types: !3589)
!3589 = !{!3585, !237}
!3590 = !{!3591, !3592}
!3591 = !DILocalVariable(name: "irq_number", arg: 1, scope: !3587, file: !226, line: 65, type: !237)
!3592 = !DILocalVariable(name: "status", scope: !3587, file: !226, line: 67, type: !3585)
!3593 = !DILocation(line: 0, scope: !3587)
!3594 = !DILocation(line: 69, column: 40, scope: !3595)
!3595 = distinct !DILexicalBlock(scope: !3587, file: !226, line: 69, column: 9)
!3596 = !DILocation(line: 73, column: 9, scope: !3597)
!3597 = distinct !DILexicalBlock(scope: !3595, file: !226, line: 72, column: 12)
!3598 = !DILocation(line: 77, column: 5, scope: !3587)
!3599 = !DILocation(line: 78, column: 1, scope: !3587)
!3600 = distinct !DISubprogram(name: "NVIC_EnableIRQ", scope: !242, file: !242, line: 1494, type: !3601, scopeLine: 1495, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !225, retainedNodes: !3603)
!3601 = !DISubroutineType(types: !3602)
!3602 = !{null, !61}
!3603 = !{!3604}
!3604 = !DILocalVariable(name: "IRQn", arg: 1, scope: !3600, file: !242, line: 1494, type: !61)
!3605 = !DILocation(line: 0, scope: !3600)
!3606 = !DILocation(line: 1497, column: 91, scope: !3600)
!3607 = !DILocation(line: 1497, column: 61, scope: !3600)
!3608 = !DILocation(line: 1497, column: 40, scope: !3600)
!3609 = !DILocation(line: 1497, column: 3, scope: !3600)
!3610 = !DILocation(line: 1497, column: 46, scope: !3600)
!3611 = !DILocation(line: 1498, column: 1, scope: !3600)
!3612 = distinct !DISubprogram(name: "hal_nvic_disable_irq", scope: !226, file: !226, line: 80, type: !3588, scopeLine: 81, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !225, retainedNodes: !3613)
!3613 = !{!3614, !3615}
!3614 = !DILocalVariable(name: "irq_number", arg: 1, scope: !3612, file: !226, line: 80, type: !237)
!3615 = !DILocalVariable(name: "status", scope: !3612, file: !226, line: 82, type: !3585)
!3616 = !DILocation(line: 0, scope: !3612)
!3617 = !DILocation(line: 84, column: 40, scope: !3618)
!3618 = distinct !DILexicalBlock(scope: !3612, file: !226, line: 84, column: 9)
!3619 = !DILocation(line: 88, column: 9, scope: !3620)
!3620 = distinct !DILexicalBlock(scope: !3618, file: !226, line: 87, column: 12)
!3621 = !DILocation(line: 92, column: 5, scope: !3612)
!3622 = !DILocation(line: 93, column: 1, scope: !3612)
!3623 = distinct !DISubprogram(name: "NVIC_DisableIRQ", scope: !242, file: !242, line: 1507, type: !3601, scopeLine: 1508, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !225, retainedNodes: !3624)
!3624 = !{!3625}
!3625 = !DILocalVariable(name: "IRQn", arg: 1, scope: !3623, file: !242, line: 1507, type: !61)
!3626 = !DILocation(line: 0, scope: !3623)
!3627 = !DILocation(line: 1509, column: 65, scope: !3623)
!3628 = !DILocation(line: 1509, column: 44, scope: !3623)
!3629 = !DILocation(line: 1509, column: 32, scope: !3623)
!3630 = !DILocation(line: 1509, column: 3, scope: !3623)
!3631 = !DILocation(line: 1509, column: 39, scope: !3623)
!3632 = !DILocation(line: 1510, column: 1, scope: !3623)
!3633 = distinct !DISubprogram(name: "hal_nvic_get_pending_irq", scope: !226, file: !226, line: 95, type: !3634, scopeLine: 96, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !225, retainedNodes: !3636)
!3634 = !DISubroutineType(types: !3635)
!3635 = !{!92, !237}
!3636 = !{!3637, !3638}
!3637 = !DILocalVariable(name: "irq_number", arg: 1, scope: !3633, file: !226, line: 95, type: !237)
!3638 = !DILocalVariable(name: "ret", scope: !3633, file: !226, line: 97, type: !92)
!3639 = !DILocation(line: 0, scope: !3633)
!3640 = !DILocation(line: 99, column: 40, scope: !3641)
!3641 = distinct !DILexicalBlock(scope: !3633, file: !226, line: 99, column: 9)
!3642 = !DILocation(line: 102, column: 15, scope: !3643)
!3643 = distinct !DILexicalBlock(scope: !3641, file: !226, line: 101, column: 12)
!3644 = !DILocation(line: 105, column: 5, scope: !3633)
!3645 = !DILocation(line: 106, column: 1, scope: !3633)
!3646 = distinct !DISubprogram(name: "NVIC_GetPendingIRQ", scope: !242, file: !242, line: 1523, type: !3647, scopeLine: 1524, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !225, retainedNodes: !3649)
!3647 = !DISubroutineType(types: !3648)
!3648 = !{!92, !61}
!3649 = !{!3650}
!3650 = !DILocalVariable(name: "IRQn", arg: 1, scope: !3646, file: !242, line: 1523, type: !61)
!3651 = !DILocation(line: 0, scope: !3646)
!3652 = !DILocation(line: 1525, column: 51, scope: !3646)
!3653 = !DILocation(line: 1525, column: 23, scope: !3646)
!3654 = !DILocation(line: 1525, column: 83, scope: !3646)
!3655 = !DILocation(line: 1525, column: 22, scope: !3646)
!3656 = !DILocation(line: 1525, column: 3, scope: !3646)
!3657 = distinct !DISubprogram(name: "hal_nvic_set_pending_irq", scope: !226, file: !226, line: 108, type: !3588, scopeLine: 109, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !225, retainedNodes: !3658)
!3658 = !{!3659, !3660}
!3659 = !DILocalVariable(name: "irq_number", arg: 1, scope: !3657, file: !226, line: 108, type: !237)
!3660 = !DILocalVariable(name: "status", scope: !3657, file: !226, line: 110, type: !3585)
!3661 = !DILocation(line: 0, scope: !3657)
!3662 = !DILocation(line: 112, column: 40, scope: !3663)
!3663 = distinct !DILexicalBlock(scope: !3657, file: !226, line: 112, column: 9)
!3664 = !DILocation(line: 116, column: 9, scope: !3665)
!3665 = distinct !DILexicalBlock(scope: !3663, file: !226, line: 115, column: 12)
!3666 = !DILocation(line: 120, column: 5, scope: !3657)
!3667 = !DILocation(line: 121, column: 1, scope: !3657)
!3668 = distinct !DISubprogram(name: "NVIC_SetPendingIRQ", scope: !242, file: !242, line: 1535, type: !3601, scopeLine: 1536, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !225, retainedNodes: !3669)
!3669 = !{!3670}
!3670 = !DILocalVariable(name: "IRQn", arg: 1, scope: !3668, file: !242, line: 1535, type: !61)
!3671 = !DILocation(line: 0, scope: !3668)
!3672 = !DILocation(line: 1537, column: 65, scope: !3668)
!3673 = !DILocation(line: 1537, column: 44, scope: !3668)
!3674 = !DILocation(line: 1537, column: 32, scope: !3668)
!3675 = !DILocation(line: 1537, column: 3, scope: !3668)
!3676 = !DILocation(line: 1537, column: 39, scope: !3668)
!3677 = !DILocation(line: 1538, column: 1, scope: !3668)
!3678 = distinct !DISubprogram(name: "hal_nvic_clear_pending_irq", scope: !226, file: !226, line: 123, type: !3588, scopeLine: 124, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !225, retainedNodes: !3679)
!3679 = !{!3680, !3681}
!3680 = !DILocalVariable(name: "irq_number", arg: 1, scope: !3678, file: !226, line: 123, type: !237)
!3681 = !DILocalVariable(name: "status", scope: !3678, file: !226, line: 125, type: !3585)
!3682 = !DILocation(line: 0, scope: !3678)
!3683 = !DILocation(line: 127, column: 40, scope: !3684)
!3684 = distinct !DILexicalBlock(scope: !3678, file: !226, line: 127, column: 9)
!3685 = !DILocation(line: 131, column: 9, scope: !3686)
!3686 = distinct !DILexicalBlock(scope: !3684, file: !226, line: 130, column: 12)
!3687 = !DILocation(line: 135, column: 5, scope: !3678)
!3688 = !DILocation(line: 136, column: 1, scope: !3678)
!3689 = distinct !DISubprogram(name: "NVIC_ClearPendingIRQ", scope: !242, file: !242, line: 1547, type: !3601, scopeLine: 1548, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !225, retainedNodes: !3690)
!3690 = !{!3691}
!3691 = !DILocalVariable(name: "IRQn", arg: 1, scope: !3689, file: !242, line: 1547, type: !61)
!3692 = !DILocation(line: 0, scope: !3689)
!3693 = !DILocation(line: 1549, column: 65, scope: !3689)
!3694 = !DILocation(line: 1549, column: 44, scope: !3689)
!3695 = !DILocation(line: 1549, column: 32, scope: !3689)
!3696 = !DILocation(line: 1549, column: 3, scope: !3689)
!3697 = !DILocation(line: 1549, column: 39, scope: !3689)
!3698 = !DILocation(line: 1550, column: 1, scope: !3689)
!3699 = distinct !DISubprogram(name: "hal_nvic_set_priority", scope: !226, file: !226, line: 138, type: !3700, scopeLine: 139, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !225, retainedNodes: !3702)
!3700 = !DISubroutineType(types: !3701)
!3701 = !{!3585, !237, !92}
!3702 = !{!3703, !3704, !3705}
!3703 = !DILocalVariable(name: "irq_number", arg: 1, scope: !3699, file: !226, line: 138, type: !237)
!3704 = !DILocalVariable(name: "priority", arg: 2, scope: !3699, file: !226, line: 138, type: !92)
!3705 = !DILocalVariable(name: "status", scope: !3699, file: !226, line: 140, type: !3585)
!3706 = !DILocation(line: 0, scope: !3699)
!3707 = !DILocation(line: 142, column: 40, scope: !3708)
!3708 = distinct !DILexicalBlock(scope: !3699, file: !226, line: 142, column: 9)
!3709 = !DILocation(line: 146, column: 9, scope: !3710)
!3710 = distinct !DILexicalBlock(scope: !3708, file: !226, line: 145, column: 12)
!3711 = !DILocation(line: 150, column: 5, scope: !3699)
!3712 = !DILocation(line: 151, column: 1, scope: !3699)
!3713 = distinct !DISubprogram(name: "NVIC_SetPriority", scope: !242, file: !242, line: 1577, type: !3714, scopeLine: 1578, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !225, retainedNodes: !3716)
!3714 = !DISubroutineType(types: !3715)
!3715 = !{null, !61, !92}
!3716 = !{!3717, !3718}
!3717 = !DILocalVariable(name: "IRQn", arg: 1, scope: !3713, file: !242, line: 1577, type: !61)
!3718 = !DILocalVariable(name: "priority", arg: 2, scope: !3713, file: !242, line: 1577, type: !92)
!3719 = !DILocation(line: 0, scope: !3713)
!3720 = !DILocation(line: 1582, column: 34, scope: !3721)
!3721 = distinct !DILexicalBlock(scope: !3722, file: !242, line: 1581, column: 8)
!3722 = distinct !DILexicalBlock(scope: !3713, file: !242, line: 1579, column: 6)
!3723 = !DILocation(line: 1582, column: 5, scope: !3721)
!3724 = !DILocation(line: 1582, column: 32, scope: !3721)
!3725 = !DILocation(line: 1583, column: 1, scope: !3713)
!3726 = distinct !DISubprogram(name: "hal_nvic_get_priority", scope: !226, file: !226, line: 153, type: !3634, scopeLine: 154, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !225, retainedNodes: !3727)
!3727 = !{!3728, !3729}
!3728 = !DILocalVariable(name: "irq_number", arg: 1, scope: !3726, file: !226, line: 153, type: !237)
!3729 = !DILocalVariable(name: "ret", scope: !3726, file: !226, line: 155, type: !92)
!3730 = !DILocation(line: 0, scope: !3726)
!3731 = !DILocation(line: 157, column: 40, scope: !3732)
!3732 = distinct !DILexicalBlock(scope: !3726, file: !226, line: 157, column: 9)
!3733 = !DILocation(line: 160, column: 15, scope: !3734)
!3734 = distinct !DILexicalBlock(scope: !3732, file: !226, line: 159, column: 12)
!3735 = !DILocation(line: 163, column: 5, scope: !3726)
!3736 = !DILocation(line: 164, column: 1, scope: !3726)
!3737 = distinct !DISubprogram(name: "NVIC_GetPriority", scope: !242, file: !242, line: 1597, type: !3647, scopeLine: 1598, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !225, retainedNodes: !3738)
!3738 = !{!3739}
!3739 = !DILocalVariable(name: "IRQn", arg: 1, scope: !3737, file: !242, line: 1597, type: !61)
!3740 = !DILocation(line: 0, scope: !3737)
!3741 = !DILocation(line: 1603, column: 23, scope: !3742)
!3742 = distinct !DILexicalBlock(scope: !3743, file: !242, line: 1602, column: 8)
!3743 = distinct !DILexicalBlock(scope: !3737, file: !242, line: 1600, column: 6)
!3744 = !DILocation(line: 1603, column: 60, scope: !3742)
!3745 = !DILocation(line: 1604, column: 1, scope: !3737)
!3746 = distinct !DISubprogram(name: "Flash_ReturnReady", scope: !226, file: !226, line: 173, type: !75, scopeLine: 174, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !225, retainedNodes: !1176)
!3747 = !DILocation(line: 175, column: 1, scope: !3746)
!3748 = distinct !DISubprogram(name: "isrC_main", scope: !226, file: !226, line: 178, type: !3583, scopeLine: 179, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !225, retainedNodes: !3749)
!3749 = !{!3750, !3751}
!3750 = !DILocalVariable(name: "status", scope: !3748, file: !226, line: 180, type: !3585)
!3751 = !DILocalVariable(name: "irq_number", scope: !3748, file: !226, line: 181, type: !237)
!3752 = !DILocation(line: 0, scope: !3748)
!3753 = !DILocation(line: 188, column: 34, scope: !3748)
!3754 = !DILocation(line: 189, column: 24, scope: !3755)
!3755 = distinct !DILexicalBlock(scope: !3748, file: !226, line: 189, column: 9)
!3756 = !DILocation(line: 192, column: 48, scope: !3757)
!3757 = distinct !DILexicalBlock(scope: !3755, file: !226, line: 192, column: 16)
!3758 = !DILocation(line: 192, column: 62, scope: !3757)
!3759 = !DILocation(line: 192, column: 16, scope: !3755)
!3760 = !DILocation(line: 194, column: 9, scope: !3761)
!3761 = distinct !DILexicalBlock(scope: !3757, file: !226, line: 192, column: 71)
!3762 = !DILocation(line: 195, column: 9, scope: !3761)
!3763 = !DILocation(line: 197, column: 55, scope: !3764)
!3764 = distinct !DILexicalBlock(scope: !3757, file: !226, line: 196, column: 12)
!3765 = !DILocation(line: 197, column: 41, scope: !3764)
!3766 = !DILocation(line: 197, column: 53, scope: !3764)
!3767 = !DILocation(line: 198, column: 41, scope: !3764)
!3768 = !DILocation(line: 198, column: 9, scope: !3764)
!3769 = !DILocation(line: 202, column: 5, scope: !3748)
!3770 = !DILocation(line: 203, column: 1, scope: !3748)
!3771 = distinct !DISubprogram(name: "get_current_irq", scope: !226, file: !226, line: 166, type: !2118, scopeLine: 167, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !225, retainedNodes: !3772)
!3772 = !{!3773}
!3773 = !DILocalVariable(name: "irq_num", scope: !3771, file: !226, line: 168, type: !92)
!3774 = !DILocation(line: 168, column: 31, scope: !3771)
!3775 = !DILocation(line: 168, column: 36, scope: !3771)
!3776 = !DILocation(line: 0, scope: !3771)
!3777 = !DILocation(line: 169, column: 21, scope: !3771)
!3778 = !DILocation(line: 169, column: 5, scope: !3771)
!3779 = distinct !DISubprogram(name: "get_pending_irq", scope: !226, file: !226, line: 55, type: !2118, scopeLine: 56, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !225, retainedNodes: !1176)
!3780 = !DILocation(line: 57, column: 19, scope: !3779)
!3781 = !DILocation(line: 57, column: 51, scope: !3779)
!3782 = !DILocation(line: 57, column: 5, scope: !3779)
!3783 = distinct !DISubprogram(name: "hal_nvic_register_isr_handler", scope: !226, file: !226, line: 205, type: !3784, scopeLine: 206, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !225, retainedNodes: !3787)
!3784 = !DISubroutineType(types: !3785)
!3785 = !{!3585, !237, !3786}
!3786 = !DIDerivedType(tag: DW_TAG_typedef, name: "hal_nvic_isr_t", file: !229, line: 175, baseType: !321)
!3787 = !{!3788, !3789, !3790}
!3788 = !DILocalVariable(name: "irq_number", arg: 1, scope: !3783, file: !226, line: 205, type: !237)
!3789 = !DILocalVariable(name: "callback", arg: 2, scope: !3783, file: !226, line: 205, type: !3786)
!3790 = !DILocalVariable(name: "mask", scope: !3783, file: !226, line: 207, type: !92)
!3791 = !DILocation(line: 0, scope: !3783)
!3792 = !DILocation(line: 209, column: 24, scope: !3793)
!3793 = distinct !DILexicalBlock(scope: !3783, file: !226, line: 209, column: 9)
!3794 = !DILocation(line: 213, column: 12, scope: !3783)
!3795 = !DILocation(line: 214, column: 5, scope: !3783)
!3796 = !DILocation(line: 215, column: 37, scope: !3783)
!3797 = !DILocation(line: 215, column: 51, scope: !3783)
!3798 = !DILocation(line: 216, column: 37, scope: !3783)
!3799 = !DILocation(line: 216, column: 49, scope: !3783)
!3800 = !DILocation(line: 217, column: 5, scope: !3783)
!3801 = !DILocation(line: 219, column: 5, scope: !3783)
!3802 = !DILocation(line: 220, column: 1, scope: !3783)
!3803 = distinct !DISubprogram(name: "hal_nvic_save_and_set_interrupt_mask", scope: !226, file: !226, line: 222, type: !3804, scopeLine: 223, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !225, retainedNodes: !3806)
!3804 = !DISubroutineType(types: !3805)
!3805 = !{!3585, !2059}
!3806 = !{!3807}
!3807 = !DILocalVariable(name: "mask", arg: 1, scope: !3803, file: !226, line: 222, type: !2059)
!3808 = !DILocation(line: 0, scope: !3803)
!3809 = !DILocation(line: 224, column: 13, scope: !3803)
!3810 = !DILocation(line: 224, column: 11, scope: !3803)
!3811 = !DILocation(line: 225, column: 5, scope: !3803)
!3812 = distinct !DISubprogram(name: "hal_nvic_restore_interrupt_mask", scope: !226, file: !226, line: 228, type: !3813, scopeLine: 229, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !225, retainedNodes: !3815)
!3813 = !DISubroutineType(types: !3814)
!3814 = !{!3585, !92}
!3815 = !{!3816}
!3816 = !DILocalVariable(name: "mask", arg: 1, scope: !3812, file: !226, line: 228, type: !92)
!3817 = !DILocation(line: 0, scope: !3812)
!3818 = !DILocation(line: 230, column: 5, scope: !3812)
!3819 = !DILocation(line: 231, column: 5, scope: !3812)
!3820 = distinct !DISubprogram(name: "hal_pinmux_set_function", scope: !911, file: !911, line: 50, type: !3821, scopeLine: 51, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !910, retainedNodes: !3825)
!3821 = !DISubroutineType(types: !3822)
!3822 = !{!3823, !3824, !267}
!3823 = !DIDerivedType(tag: DW_TAG_typedef, name: "hal_pinmux_status_t", file: !914, line: 238, baseType: !913)
!3824 = !DIDerivedType(tag: DW_TAG_typedef, name: "hal_gpio_pin_t", file: !341, line: 281, baseType: !920)
!3825 = !{!3826, !3827, !3828}
!3826 = !DILocalVariable(name: "gpio_pin", arg: 1, scope: !3820, file: !911, line: 50, type: !3824)
!3827 = !DILocalVariable(name: "function_index", arg: 2, scope: !3820, file: !911, line: 50, type: !267)
!3828 = !DILocalVariable(name: "ret_value", scope: !3820, file: !911, line: 52, type: !238)
!3829 = !DILocation(line: 0, scope: !3820)
!3830 = !DILocation(line: 53, column: 18, scope: !3831)
!3831 = distinct !DILexicalBlock(scope: !3820, file: !911, line: 53, column: 9)
!3832 = !DILocation(line: 53, column: 9, scope: !3820)
!3833 = !DILocation(line: 57, column: 24, scope: !3834)
!3834 = distinct !DILexicalBlock(scope: !3820, file: !911, line: 57, column: 9)
!3835 = !DILocation(line: 57, column: 9, scope: !3820)
!3836 = !DILocation(line: 57, column: 9, scope: !3834)
!3837 = !DILocation(line: 60, column: 17, scope: !3820)
!3838 = !DILocation(line: 61, column: 12, scope: !3820)
!3839 = !DILocation(line: 61, column: 5, scope: !3820)
!3840 = !DILocation(line: 62, column: 1, scope: !3820)
!3841 = distinct !DISubprogram(name: "hal_gpio_init", scope: !911, file: !911, line: 64, type: !3842, scopeLine: 65, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !910, retainedNodes: !3845)
!3842 = !DISubroutineType(types: !3843)
!3843 = !{!3844, !3824}
!3844 = !DIDerivedType(tag: DW_TAG_typedef, name: "hal_gpio_status_t", file: !914, line: 229, baseType: !951)
!3845 = !{!3846}
!3846 = !DILocalVariable(name: "gpio_pin", arg: 1, scope: !3841, file: !911, line: 64, type: !3824)
!3847 = !DILocation(line: 0, scope: !3841)
!3848 = !DILocation(line: 66, column: 5, scope: !3841)
!3849 = distinct !DISubprogram(name: "hal_gpio_deinit", scope: !911, file: !911, line: 69, type: !3842, scopeLine: 70, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !910, retainedNodes: !3850)
!3850 = !{!3851}
!3851 = !DILocalVariable(name: "gpio_pin", arg: 1, scope: !3849, file: !911, line: 69, type: !3824)
!3852 = !DILocation(line: 0, scope: !3849)
!3853 = !DILocation(line: 71, column: 5, scope: !3849)
!3854 = distinct !DISubprogram(name: "hal_gpio_get_input", scope: !911, file: !911, line: 74, type: !3855, scopeLine: 75, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !910, retainedNodes: !3858)
!3855 = !DISubroutineType(types: !3856)
!3856 = !{!3844, !3824, !3857}
!3857 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !978, size: 32)
!3858 = !{!3859, !3860, !3861}
!3859 = !DILocalVariable(name: "gpio_pin", arg: 1, scope: !3854, file: !911, line: 74, type: !3824)
!3860 = !DILocalVariable(name: "gpio_data", arg: 2, scope: !3854, file: !911, line: 74, type: !3857)
!3861 = !DILocalVariable(name: "status", scope: !3854, file: !911, line: 76, type: !3862)
!3862 = !DIDerivedType(tag: DW_TAG_typedef, name: "gpio_status", file: !972, line: 67, baseType: !3863)
!3863 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !972, line: 62, size: 64, elements: !3864)
!3864 = !{!3865, !3866, !3867, !3868}
!3865 = !DIDerivedType(tag: DW_TAG_member, name: "GPIO_PIN", scope: !3863, file: !972, line: 63, baseType: !92, size: 32)
!3866 = !DIDerivedType(tag: DW_TAG_member, name: "GPIO_OUTEN", scope: !3863, file: !972, line: 64, baseType: !267, size: 8, offset: 32)
!3867 = !DIDerivedType(tag: DW_TAG_member, name: "GPI_DIN", scope: !3863, file: !972, line: 65, baseType: !267, size: 8, offset: 40)
!3868 = !DIDerivedType(tag: DW_TAG_member, name: "GPO_DOUT", scope: !3863, file: !972, line: 66, baseType: !267, size: 8, offset: 48)
!3869 = !DILocation(line: 0, scope: !3854)
!3870 = !DILocation(line: 77, column: 14, scope: !3871)
!3871 = distinct !DILexicalBlock(scope: !3854, file: !911, line: 77, column: 9)
!3872 = !DILocation(line: 77, column: 9, scope: !3854)
!3873 = !DILocation(line: 81, column: 18, scope: !3874)
!3874 = distinct !DILexicalBlock(scope: !3854, file: !911, line: 81, column: 9)
!3875 = !DILocation(line: 81, column: 9, scope: !3854)
!3876 = !DILocation(line: 85, column: 14, scope: !3854)
!3877 = !DILocation(line: 86, column: 18, scope: !3854)
!3878 = !DILocation(line: 86, column: 16, scope: !3854)
!3879 = !DILocation(line: 87, column: 5, scope: !3854)
!3880 = !DILocation(line: 88, column: 1, scope: !3854)
!3881 = distinct !DISubprogram(name: "hal_gpio_set_output", scope: !911, file: !911, line: 90, type: !3882, scopeLine: 91, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !910, retainedNodes: !3884)
!3882 = !DISubroutineType(types: !3883)
!3883 = !{!3844, !3824, !978}
!3884 = !{!3885, !3886, !3887}
!3885 = !DILocalVariable(name: "gpio_pin", arg: 1, scope: !3881, file: !911, line: 90, type: !3824)
!3886 = !DILocalVariable(name: "gpio_data", arg: 2, scope: !3881, file: !911, line: 90, type: !978)
!3887 = !DILocalVariable(name: "ret_value", scope: !3881, file: !911, line: 92, type: !238)
!3888 = !DILocation(line: 0, scope: !3881)
!3889 = !DILocation(line: 93, column: 18, scope: !3890)
!3890 = distinct !DILexicalBlock(scope: !3881, file: !911, line: 93, column: 9)
!3891 = !DILocation(line: 93, column: 9, scope: !3881)
!3892 = !DILocation(line: 97, column: 60, scope: !3881)
!3893 = !DILocation(line: 97, column: 17, scope: !3881)
!3894 = !DILocation(line: 98, column: 12, scope: !3881)
!3895 = !DILocation(line: 98, column: 5, scope: !3881)
!3896 = !DILocation(line: 99, column: 1, scope: !3881)
!3897 = distinct !DISubprogram(name: "hal_gpio_get_output", scope: !911, file: !911, line: 101, type: !3855, scopeLine: 102, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !910, retainedNodes: !3898)
!3898 = !{!3899, !3900, !3901}
!3899 = !DILocalVariable(name: "gpio_pin", arg: 1, scope: !3897, file: !911, line: 101, type: !3824)
!3900 = !DILocalVariable(name: "gpio_data", arg: 2, scope: !3897, file: !911, line: 101, type: !3857)
!3901 = !DILocalVariable(name: "status", scope: !3897, file: !911, line: 103, type: !3862)
!3902 = !DILocation(line: 0, scope: !3897)
!3903 = !DILocation(line: 104, column: 18, scope: !3904)
!3904 = distinct !DILexicalBlock(scope: !3897, file: !911, line: 104, column: 9)
!3905 = !DILocation(line: 104, column: 9, scope: !3897)
!3906 = !DILocation(line: 108, column: 14, scope: !3907)
!3907 = distinct !DILexicalBlock(scope: !3897, file: !911, line: 108, column: 9)
!3908 = !DILocation(line: 108, column: 9, scope: !3897)
!3909 = !DILocation(line: 112, column: 14, scope: !3897)
!3910 = !DILocation(line: 113, column: 18, scope: !3897)
!3911 = !DILocation(line: 113, column: 16, scope: !3897)
!3912 = !DILocation(line: 114, column: 5, scope: !3897)
!3913 = !DILocation(line: 115, column: 1, scope: !3897)
!3914 = distinct !DISubprogram(name: "hal_gpio_set_direction", scope: !911, file: !911, line: 117, type: !3915, scopeLine: 118, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !910, retainedNodes: !3918)
!3915 = !DISubroutineType(types: !3916)
!3916 = !{!3844, !3824, !3917}
!3917 = !DIDerivedType(tag: DW_TAG_typedef, name: "hal_gpio_direction_t", file: !914, line: 213, baseType: !961)
!3918 = !{!3919, !3920, !3921}
!3919 = !DILocalVariable(name: "gpio_pin", arg: 1, scope: !3914, file: !911, line: 117, type: !3824)
!3920 = !DILocalVariable(name: "direction", arg: 2, scope: !3914, file: !911, line: 117, type: !3917)
!3921 = !DILocalVariable(name: "ret_value", scope: !3914, file: !911, line: 119, type: !238)
!3922 = !DILocation(line: 0, scope: !3914)
!3923 = !DILocation(line: 120, column: 18, scope: !3924)
!3924 = distinct !DILexicalBlock(scope: !3914, file: !911, line: 120, column: 9)
!3925 = !DILocation(line: 120, column: 9, scope: !3914)
!3926 = !DILocation(line: 123, column: 17, scope: !3914)
!3927 = !DILocation(line: 125, column: 12, scope: !3914)
!3928 = !DILocation(line: 125, column: 5, scope: !3914)
!3929 = !DILocation(line: 126, column: 1, scope: !3914)
!3930 = distinct !DISubprogram(name: "hal_gpio_get_direction", scope: !911, file: !911, line: 128, type: !3931, scopeLine: 129, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !910, retainedNodes: !3934)
!3931 = !DISubroutineType(types: !3932)
!3932 = !{!3844, !3824, !3933}
!3933 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3917, size: 32)
!3934 = !{!3935, !3936, !3937}
!3935 = !DILocalVariable(name: "gpio_pin", arg: 1, scope: !3930, file: !911, line: 128, type: !3824)
!3936 = !DILocalVariable(name: "direction", arg: 2, scope: !3930, file: !911, line: 128, type: !3933)
!3937 = !DILocalVariable(name: "status", scope: !3930, file: !911, line: 131, type: !3862)
!3938 = !DILocation(line: 0, scope: !3930)
!3939 = !DILocation(line: 132, column: 18, scope: !3940)
!3940 = distinct !DILexicalBlock(scope: !3930, file: !911, line: 132, column: 9)
!3941 = !DILocation(line: 132, column: 9, scope: !3930)
!3942 = !DILocation(line: 136, column: 14, scope: !3943)
!3943 = distinct !DILexicalBlock(scope: !3930, file: !911, line: 136, column: 9)
!3944 = !DILocation(line: 136, column: 9, scope: !3930)
!3945 = !DILocation(line: 140, column: 14, scope: !3930)
!3946 = !DILocation(line: 141, column: 18, scope: !3930)
!3947 = !DILocation(line: 141, column: 16, scope: !3930)
!3948 = !DILocation(line: 142, column: 5, scope: !3930)
!3949 = !DILocation(line: 143, column: 1, scope: !3930)
!3950 = distinct !DISubprogram(name: "hal_gpio_toggle_pin", scope: !911, file: !911, line: 146, type: !3842, scopeLine: 147, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !910, retainedNodes: !3951)
!3951 = !{!3952, !3953}
!3952 = !DILocalVariable(name: "gpio_pin", arg: 1, scope: !3950, file: !911, line: 146, type: !3824)
!3953 = !DILocalVariable(name: "status", scope: !3950, file: !911, line: 148, type: !3862)
!3954 = !DILocation(line: 0, scope: !3950)
!3955 = !DILocation(line: 149, column: 18, scope: !3956)
!3956 = distinct !DILexicalBlock(scope: !3950, file: !911, line: 149, column: 9)
!3957 = !DILocation(line: 149, column: 9, scope: !3950)
!3958 = !DILocation(line: 153, column: 14, scope: !3950)
!3959 = !DILocation(line: 154, column: 76, scope: !3950)
!3960 = !DILocation(line: 154, column: 12, scope: !3950)
!3961 = !DILocation(line: 154, column: 5, scope: !3950)
!3962 = !DILocation(line: 155, column: 1, scope: !3950)
!3963 = distinct !DISubprogram(name: "hal_gpio_pull_up", scope: !911, file: !911, line: 157, type: !3842, scopeLine: 158, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !910, retainedNodes: !3964)
!3964 = !{!3965, !3966}
!3965 = !DILocalVariable(name: "gpio_pin", arg: 1, scope: !3963, file: !911, line: 157, type: !3824)
!3966 = !DILocalVariable(name: "ret_value", scope: !3963, file: !911, line: 159, type: !238)
!3967 = !DILocation(line: 0, scope: !3963)
!3968 = !DILocation(line: 160, column: 18, scope: !3969)
!3969 = distinct !DILexicalBlock(scope: !3963, file: !911, line: 160, column: 9)
!3970 = !DILocation(line: 160, column: 9, scope: !3963)
!3971 = !DILocation(line: 164, column: 17, scope: !3963)
!3972 = !DILocation(line: 165, column: 19, scope: !3973)
!3973 = distinct !DILexicalBlock(scope: !3963, file: !911, line: 165, column: 9)
!3974 = !DILocation(line: 165, column: 9, scope: !3963)
!3975 = !DILocation(line: 168, column: 17, scope: !3963)
!3976 = !DILocation(line: 169, column: 12, scope: !3963)
!3977 = !DILocation(line: 169, column: 5, scope: !3963)
!3978 = !DILocation(line: 170, column: 1, scope: !3963)
!3979 = distinct !DISubprogram(name: "hal_gpio_pull_down", scope: !911, file: !911, line: 172, type: !3842, scopeLine: 173, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !910, retainedNodes: !3980)
!3980 = !{!3981, !3982}
!3981 = !DILocalVariable(name: "gpio_pin", arg: 1, scope: !3979, file: !911, line: 172, type: !3824)
!3982 = !DILocalVariable(name: "ret_value", scope: !3979, file: !911, line: 174, type: !238)
!3983 = !DILocation(line: 0, scope: !3979)
!3984 = !DILocation(line: 175, column: 18, scope: !3985)
!3985 = distinct !DILexicalBlock(scope: !3979, file: !911, line: 175, column: 9)
!3986 = !DILocation(line: 175, column: 9, scope: !3979)
!3987 = !DILocation(line: 179, column: 17, scope: !3979)
!3988 = !DILocation(line: 180, column: 19, scope: !3989)
!3989 = distinct !DILexicalBlock(scope: !3979, file: !911, line: 180, column: 9)
!3990 = !DILocation(line: 180, column: 9, scope: !3979)
!3991 = !DILocation(line: 183, column: 17, scope: !3979)
!3992 = !DILocation(line: 184, column: 12, scope: !3979)
!3993 = !DILocation(line: 184, column: 5, scope: !3979)
!3994 = !DILocation(line: 185, column: 1, scope: !3979)
!3995 = distinct !DISubprogram(name: "hal_gpio_disable_pull", scope: !911, file: !911, line: 187, type: !3842, scopeLine: 188, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !910, retainedNodes: !3996)
!3996 = !{!3997, !3998}
!3997 = !DILocalVariable(name: "gpio_pin", arg: 1, scope: !3995, file: !911, line: 187, type: !3824)
!3998 = !DILocalVariable(name: "ret_value", scope: !3995, file: !911, line: 189, type: !238)
!3999 = !DILocation(line: 0, scope: !3995)
!4000 = !DILocation(line: 191, column: 18, scope: !4001)
!4001 = distinct !DILexicalBlock(scope: !3995, file: !911, line: 191, column: 9)
!4002 = !DILocation(line: 191, column: 9, scope: !3995)
!4003 = !DILocation(line: 195, column: 17, scope: !3995)
!4004 = !DILocation(line: 196, column: 12, scope: !3995)
!4005 = !DILocation(line: 196, column: 5, scope: !3995)
!4006 = !DILocation(line: 197, column: 1, scope: !3995)
!4007 = distinct !DISubprogram(name: "hal_gpio_set_driving_current", scope: !911, file: !911, line: 200, type: !4008, scopeLine: 201, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !910, retainedNodes: !4010)
!4008 = !DISubroutineType(types: !4009)
!4009 = !{!3844, !3824, !979}
!4010 = !{!4011, !4012, !4013}
!4011 = !DILocalVariable(name: "gpio_pin", arg: 1, scope: !4007, file: !911, line: 200, type: !3824)
!4012 = !DILocalVariable(name: "driving", arg: 2, scope: !4007, file: !911, line: 200, type: !979)
!4013 = !DILocalVariable(name: "ret_value", scope: !4007, file: !911, line: 202, type: !238)
!4014 = !DILocation(line: 0, scope: !4007)
!4015 = !DILocation(line: 204, column: 18, scope: !4016)
!4016 = distinct !DILexicalBlock(scope: !4007, file: !911, line: 204, column: 9)
!4017 = !DILocation(line: 204, column: 9, scope: !4007)
!4018 = !DILocation(line: 208, column: 64, scope: !4007)
!4019 = !DILocation(line: 208, column: 17, scope: !4007)
!4020 = !DILocation(line: 210, column: 12, scope: !4007)
!4021 = !DILocation(line: 210, column: 5, scope: !4007)
!4022 = !DILocation(line: 211, column: 1, scope: !4007)
!4023 = distinct !DISubprogram(name: "hal_gpio_get_driving_current", scope: !911, file: !911, line: 214, type: !4024, scopeLine: 215, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !910, retainedNodes: !4027)
!4024 = !DISubroutineType(types: !4025)
!4025 = !{!3844, !3824, !4026}
!4026 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !979, size: 32)
!4027 = !{!4028, !4029, !4030, !4031}
!4028 = !DILocalVariable(name: "gpio_pin", arg: 1, scope: !4023, file: !911, line: 214, type: !3824)
!4029 = !DILocalVariable(name: "driving", arg: 2, scope: !4023, file: !911, line: 214, type: !4026)
!4030 = !DILocalVariable(name: "ret_value", scope: !4023, file: !911, line: 216, type: !238)
!4031 = !DILocalVariable(name: "value", scope: !4023, file: !911, line: 217, type: !267)
!4032 = !DILocation(line: 0, scope: !4023)
!4033 = !DILocation(line: 217, column: 5, scope: !4023)
!4034 = !DILocation(line: 219, column: 18, scope: !4035)
!4035 = distinct !DILexicalBlock(scope: !4023, file: !911, line: 219, column: 9)
!4036 = !DILocation(line: 219, column: 9, scope: !4023)
!4037 = !DILocation(line: 223, column: 17, scope: !4023)
!4038 = !DILocation(line: 225, column: 44, scope: !4023)
!4039 = !DILocation(line: 225, column: 16, scope: !4023)
!4040 = !DILocation(line: 225, column: 14, scope: !4023)
!4041 = !DILocation(line: 227, column: 12, scope: !4023)
!4042 = !DILocation(line: 227, column: 5, scope: !4023)
!4043 = !DILocation(line: 228, column: 1, scope: !4023)
!4044 = distinct !DISubprogram(name: "hal_uart_init", scope: !330, file: !330, line: 234, type: !4045, scopeLine: 235, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !329, retainedNodes: !4049)
!4045 = !DISubroutineType(types: !4046)
!4046 = !{!4047, !391, !4048}
!4047 = !DIDerivedType(tag: DW_TAG_typedef, name: "hal_uart_status_t", file: !333, line: 351, baseType: !332)
!4048 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !402, size: 32)
!4049 = !{!4050, !4051}
!4050 = !DILocalVariable(name: "uart_port", arg: 1, scope: !4044, file: !330, line: 234, type: !391)
!4051 = !DILocalVariable(name: "uart_config", arg: 2, scope: !4044, file: !330, line: 234, type: !4048)
!4052 = !DILocation(line: 0, scope: !4044)
!4053 = !DILocation(line: 236, column: 10, scope: !4054)
!4054 = distinct !DILexicalBlock(scope: !4044, file: !330, line: 236, column: 9)
!4055 = !DILocation(line: 236, column: 9, scope: !4044)
!4056 = !DILocation(line: 239, column: 41, scope: !4057)
!4057 = distinct !DILexicalBlock(scope: !4044, file: !330, line: 239, column: 9)
!4058 = !DILocation(line: 239, column: 9, scope: !4044)
!4059 = !DILocation(line: 242, column: 5, scope: !4044)
!4060 = !DILocation(line: 243, column: 45, scope: !4044)
!4061 = !DILocation(line: 243, column: 12, scope: !4044)
!4062 = !DILocation(line: 244, column: 12, scope: !4044)
!4063 = !DILocation(line: 243, column: 5, scope: !4044)
!4064 = !DILocation(line: 245, column: 58, scope: !4044)
!4065 = !DILocation(line: 246, column: 30, scope: !4044)
!4066 = !{i32 0, i32 2}
!4067 = !DILocation(line: 246, column: 5, scope: !4044)
!4068 = !DILocation(line: 247, column: 5, scope: !4044)
!4069 = !DILocation(line: 249, column: 31, scope: !4070)
!4070 = distinct !DILexicalBlock(scope: !4044, file: !330, line: 249, column: 9)
!4071 = !DILocation(line: 249, column: 28, scope: !4070)
!4072 = !DILocation(line: 261, column: 1, scope: !4044)
!4073 = distinct !DISubprogram(name: "hal_uart_is_config_valid", scope: !330, file: !330, line: 93, type: !4074, scopeLine: 94, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !329, retainedNodes: !4078)
!4074 = !DISubroutineType(types: !4075)
!4075 = !{!222, !391, !4076}
!4076 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4077, size: 32)
!4077 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !402)
!4078 = !{!4079, !4080}
!4079 = !DILocalVariable(name: "uart_port", arg: 1, scope: !4073, file: !330, line: 93, type: !391)
!4080 = !DILocalVariable(name: "uart_config", arg: 2, scope: !4073, file: !330, line: 93, type: !4076)
!4081 = !DILocation(line: 0, scope: !4073)
!4082 = !DILocation(line: 95, column: 10, scope: !4083)
!4083 = distinct !DILexicalBlock(scope: !4073, file: !330, line: 95, column: 9)
!4084 = !DILocation(line: 95, column: 9, scope: !4073)
!4085 = !DILocation(line: 101, column: 23, scope: !4086)
!4086 = distinct !DILexicalBlock(scope: !4073, file: !330, line: 101, column: 9)
!4087 = !DILocation(line: 101, column: 32, scope: !4086)
!4088 = !DILocation(line: 101, column: 60, scope: !4086)
!4089 = !DILocation(line: 102, column: 27, scope: !4086)
!4090 = !DILocation(line: 102, column: 34, scope: !4086)
!4091 = !DILocation(line: 102, column: 58, scope: !4086)
!4092 = !DILocation(line: 103, column: 27, scope: !4086)
!4093 = !DILocation(line: 103, column: 36, scope: !4086)
!4094 = !DILocation(line: 103, column: 59, scope: !4086)
!4095 = !DILocation(line: 104, column: 27, scope: !4086)
!4096 = !DILocation(line: 104, column: 39, scope: !4086)
!4097 = !DILocation(line: 101, column: 9, scope: !4073)
!4098 = !DILocation(line: 109, column: 1, scope: !4073)
!4099 = distinct !DISubprogram(name: "hal_uart_translate_port", scope: !330, file: !330, line: 139, type: !4100, scopeLine: 140, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !329, retainedNodes: !4102)
!4100 = !DISubroutineType(types: !4101)
!4101 = !{!2702, !391}
!4102 = !{!4103}
!4103 = !DILocalVariable(name: "uart_port", arg: 1, scope: !4099, file: !330, line: 139, type: !391)
!4104 = !DILocation(line: 0, scope: !4099)
!4105 = !DILocation(line: 141, column: 24, scope: !4099)
!4106 = !DILocation(line: 141, column: 12, scope: !4099)
!4107 = !DILocation(line: 141, column: 5, scope: !4099)
!4108 = distinct !DISubprogram(name: "hal_uart_set_format", scope: !330, file: !330, line: 593, type: !4109, scopeLine: 594, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !329, retainedNodes: !4111)
!4109 = !DISubroutineType(types: !4110)
!4110 = !{!4047, !391, !4076}
!4111 = !{!4112, !4113}
!4112 = !DILocalVariable(name: "uart_port", arg: 1, scope: !4108, file: !330, line: 593, type: !391)
!4113 = !DILocalVariable(name: "config", arg: 2, scope: !4108, file: !330, line: 593, type: !4076)
!4114 = !DILocation(line: 0, scope: !4108)
!4115 = !DILocation(line: 595, column: 10, scope: !4116)
!4116 = distinct !DILexicalBlock(scope: !4108, file: !330, line: 595, column: 9)
!4117 = !DILocation(line: 595, column: 9, scope: !4108)
!4118 = !DILocation(line: 598, column: 45, scope: !4108)
!4119 = !DILocation(line: 598, column: 12, scope: !4108)
!4120 = !DILocation(line: 598, column: 59, scope: !4108)
!4121 = !DILocation(line: 598, column: 5, scope: !4108)
!4122 = !DILocation(line: 599, column: 23, scope: !4108)
!4123 = !DILocation(line: 600, column: 59, scope: !4108)
!4124 = !DILocation(line: 600, column: 23, scope: !4108)
!4125 = !DILocation(line: 601, column: 62, scope: !4108)
!4126 = !DILocation(line: 601, column: 23, scope: !4108)
!4127 = !DILocation(line: 602, column: 57, scope: !4108)
!4128 = !DILocation(line: 602, column: 23, scope: !4108)
!4129 = !DILocation(line: 603, column: 58, scope: !4108)
!4130 = !DILocation(line: 603, column: 23, scope: !4108)
!4131 = !DILocation(line: 599, column: 5, scope: !4108)
!4132 = !DILocation(line: 604, column: 5, scope: !4108)
!4133 = !DILocation(line: 605, column: 1, scope: !4108)
!4134 = distinct !DISubprogram(name: "hal_uart_translate_baudrate", scope: !330, file: !330, line: 145, type: !4135, scopeLine: 146, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !329, retainedNodes: !4137)
!4135 = !DISubroutineType(types: !4136)
!4136 = !{!92, !406}
!4137 = !{!4138, !4139}
!4138 = !DILocalVariable(name: "bandrate", arg: 1, scope: !4134, file: !330, line: 145, type: !406)
!4139 = !DILocalVariable(name: "baudrate_tbl", scope: !4134, file: !330, line: 147, type: !4140)
!4140 = !DICompositeType(tag: DW_TAG_array_type, baseType: !92, size: 416, elements: !4141)
!4141 = !{!4142}
!4142 = !DISubrange(count: 13)
!4143 = !DILocation(line: 0, scope: !4134)
!4144 = !DILocation(line: 147, column: 14, scope: !4134)
!4145 = !DILocation(line: 151, column: 12, scope: !4134)
!4146 = !DILocation(line: 151, column: 5, scope: !4134)
!4147 = distinct !DISubprogram(name: "hal_uart_translate_word_length", scope: !330, file: !330, line: 155, type: !4148, scopeLine: 156, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !329, retainedNodes: !4150)
!4148 = !DISubroutineType(types: !4149)
!4149 = !{!2772, !408}
!4150 = !{!4151, !4152}
!4151 = !DILocalVariable(name: "word_length", arg: 1, scope: !4147, file: !330, line: 155, type: !408)
!4152 = !DILocalVariable(name: "databit_tbl", scope: !4147, file: !330, line: 157, type: !4153)
!4153 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2772, size: 64, elements: !306)
!4154 = !DILocation(line: 0, scope: !4147)
!4155 = !DILocation(line: 157, column: 14, scope: !4147)
!4156 = !DILocation(line: 160, column: 12, scope: !4147)
!4157 = !DILocation(line: 160, column: 5, scope: !4147)
!4158 = distinct !DISubprogram(name: "hal_uart_translate_parity", scope: !330, file: !330, line: 164, type: !4159, scopeLine: 165, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !329, retainedNodes: !4161)
!4159 = !DISubroutineType(types: !4160)
!4160 = !{!2772, !412}
!4161 = !{!4162, !4163}
!4162 = !DILocalVariable(name: "parity", arg: 1, scope: !4158, file: !330, line: 164, type: !412)
!4163 = !DILocalVariable(name: "parity_tbl", scope: !4158, file: !330, line: 166, type: !4164)
!4164 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2772, size: 80, elements: !310)
!4165 = !DILocation(line: 0, scope: !4158)
!4166 = !DILocation(line: 166, column: 14, scope: !4158)
!4167 = !DILocation(line: 169, column: 12, scope: !4158)
!4168 = !DILocation(line: 169, column: 5, scope: !4158)
!4169 = distinct !DISubprogram(name: "hal_uart_translate_stopbit", scope: !330, file: !330, line: 173, type: !4170, scopeLine: 174, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !329, retainedNodes: !4172)
!4170 = !DISubroutineType(types: !4171)
!4171 = !{!2772, !410}
!4172 = !{!4173, !4174}
!4173 = !DILocalVariable(name: "stopbit", arg: 1, scope: !4169, file: !330, line: 173, type: !410)
!4174 = !DILocalVariable(name: "stopbit_tbl", scope: !4169, file: !330, line: 175, type: !4175)
!4175 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2772, size: 48, elements: !558)
!4176 = !DILocation(line: 0, scope: !4169)
!4177 = !DILocation(line: 175, column: 14, scope: !4169)
!4178 = !DILocation(line: 178, column: 12, scope: !4169)
!4179 = !DILocation(line: 178, column: 5, scope: !4169)
!4180 = distinct !DISubprogram(name: "hal_uart_is_port_valid", scope: !330, file: !330, line: 87, type: !4181, scopeLine: 88, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !329, retainedNodes: !4183)
!4181 = !DISubroutineType(types: !4182)
!4182 = !{!222, !391}
!4183 = !{!4184}
!4184 = !DILocalVariable(name: "uart_port", arg: 1, scope: !4180, file: !330, line: 87, type: !391)
!4185 = !DILocation(line: 0, scope: !4180)
!4186 = !DILocation(line: 89, column: 23, scope: !4180)
!4187 = !DILocation(line: 89, column: 5, scope: !4180)
!4188 = distinct !DISubprogram(name: "hal_uart_deinit", scope: !330, file: !330, line: 264, type: !4189, scopeLine: 265, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !329, retainedNodes: !4191)
!4189 = !DISubroutineType(types: !4190)
!4190 = !{!4047, !391}
!4191 = !{!4192}
!4192 = !DILocalVariable(name: "uart_port", arg: 1, scope: !4188, file: !330, line: 264, type: !391)
!4193 = !DILocation(line: 0, scope: !4188)
!4194 = !DILocation(line: 266, column: 10, scope: !4195)
!4195 = distinct !DILexicalBlock(scope: !4188, file: !330, line: 266, column: 9)
!4196 = !DILocation(line: 266, column: 9, scope: !4188)
!4197 = !DILocation(line: 269, column: 41, scope: !4198)
!4198 = distinct !DILexicalBlock(scope: !4188, file: !330, line: 269, column: 9)
!4199 = !DILocation(line: 269, column: 62, scope: !4198)
!4200 = !DILocation(line: 269, column: 9, scope: !4188)
!4201 = !DILocation(line: 272, column: 5, scope: !4188)
!4202 = !DILocation(line: 275, column: 22, scope: !4188)
!4203 = !DILocation(line: 275, column: 5, scope: !4188)
!4204 = !DILocation(line: 284, column: 5, scope: !4188)
!4205 = !DILocation(line: 286, column: 5, scope: !4188)
!4206 = !DILocation(line: 287, column: 1, scope: !4188)
!4207 = distinct !DISubprogram(name: "hal_uart_put_char", scope: !330, file: !330, line: 290, type: !4208, scopeLine: 291, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !329, retainedNodes: !4210)
!4208 = !DISubroutineType(types: !4209)
!4209 = !{null, !391, !383}
!4210 = !{!4211, !4212, !4213}
!4211 = !DILocalVariable(name: "uart_port", arg: 1, scope: !4207, file: !330, line: 290, type: !391)
!4212 = !DILocalVariable(name: "byte", arg: 2, scope: !4207, file: !330, line: 290, type: !383)
!4213 = !DILocalVariable(name: "int_no", scope: !4207, file: !330, line: 292, type: !2702)
!4214 = !DILocation(line: 0, scope: !4207)
!4215 = !DILocation(line: 292, column: 26, scope: !4207)
!4216 = !DILocation(line: 294, column: 16, scope: !4217)
!4217 = distinct !DILexicalBlock(scope: !4207, file: !330, line: 294, column: 9)
!4218 = !DILocation(line: 294, column: 9, scope: !4207)
!4219 = !DILocation(line: 295, column: 9, scope: !4220)
!4220 = distinct !DILexicalBlock(scope: !4217, file: !330, line: 294, column: 34)
!4221 = !DILocation(line: 296, column: 5, scope: !4220)
!4222 = !DILocation(line: 299, column: 1, scope: !4207)
!4223 = distinct !DISubprogram(name: "hal_uart_send_polling", scope: !330, file: !330, line: 302, type: !4224, scopeLine: 303, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !329, retainedNodes: !4226)
!4224 = !DISubroutineType(types: !4225)
!4225 = !{!92, !391, !2908, !92}
!4226 = !{!4227, !4228, !4229, !4230, !4231}
!4227 = !DILocalVariable(name: "uart_port", arg: 1, scope: !4223, file: !330, line: 302, type: !391)
!4228 = !DILocalVariable(name: "data", arg: 2, scope: !4223, file: !330, line: 302, type: !2908)
!4229 = !DILocalVariable(name: "size", arg: 3, scope: !4223, file: !330, line: 302, type: !92)
!4230 = !DILocalVariable(name: "int_no", scope: !4223, file: !330, line: 304, type: !2702)
!4231 = !DILocalVariable(name: "index", scope: !4223, file: !330, line: 305, type: !92)
!4232 = !DILocation(line: 0, scope: !4223)
!4233 = !DILocation(line: 304, column: 26, scope: !4223)
!4234 = !DILocation(line: 307, column: 14, scope: !4235)
!4235 = distinct !DILexicalBlock(scope: !4223, file: !330, line: 307, column: 9)
!4236 = !DILocation(line: 307, column: 9, scope: !4223)
!4237 = !DILocation(line: 313, column: 53, scope: !4238)
!4238 = distinct !DILexicalBlock(scope: !4239, file: !330, line: 312, column: 48)
!4239 = distinct !DILexicalBlock(scope: !4240, file: !330, line: 312, column: 9)
!4240 = distinct !DILexicalBlock(scope: !4241, file: !330, line: 312, column: 9)
!4241 = distinct !DILexicalBlock(scope: !4242, file: !330, line: 311, column: 33)
!4242 = distinct !DILexicalBlock(scope: !4223, file: !330, line: 311, column: 9)
!4243 = !DILocation(line: 313, column: 13, scope: !4238)
!4244 = !DILocation(line: 312, column: 44, scope: !4239)
!4245 = !DILocation(line: 312, column: 31, scope: !4239)
!4246 = !DILocation(line: 312, column: 9, scope: !4240)
!4247 = distinct !{!4247, !4246, !4248}
!4248 = !DILocation(line: 314, column: 9, scope: !4240)
!4249 = !DILocation(line: 318, column: 1, scope: !4223)
!4250 = distinct !DISubprogram(name: "hal_uart_send_dma", scope: !330, file: !330, line: 320, type: !4224, scopeLine: 321, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !329, retainedNodes: !4251)
!4251 = !{!4252, !4253, !4254, !4255, !4256, !4257}
!4252 = !DILocalVariable(name: "uart_port", arg: 1, scope: !4250, file: !330, line: 320, type: !391)
!4253 = !DILocalVariable(name: "data", arg: 2, scope: !4250, file: !330, line: 320, type: !2908)
!4254 = !DILocalVariable(name: "size", arg: 3, scope: !4250, file: !330, line: 320, type: !92)
!4255 = !DILocalVariable(name: "actual_space", scope: !4250, file: !330, line: 322, type: !92)
!4256 = !DILocalVariable(name: "send_size", scope: !4250, file: !330, line: 322, type: !92)
!4257 = !DILocalVariable(name: "ch", scope: !4250, file: !330, line: 323, type: !4258)
!4258 = !DIDerivedType(tag: DW_TAG_typedef, name: "DMA_VFIFO_CHANNEL", file: !112, line: 144, baseType: !111)
!4259 = !DILocation(line: 0, scope: !4250)
!4260 = !DILocation(line: 322, column: 5, scope: !4250)
!4261 = !DILocation(line: 328, column: 10, scope: !4262)
!4262 = distinct !DILexicalBlock(scope: !4250, file: !330, line: 328, column: 9)
!4263 = !DILocation(line: 328, column: 9, scope: !4250)
!4264 = !DILocation(line: 332, column: 15, scope: !4265)
!4265 = distinct !DILexicalBlock(scope: !4250, file: !330, line: 332, column: 9)
!4266 = !DILocation(line: 332, column: 24, scope: !4265)
!4267 = !DILocation(line: 335, column: 42, scope: !4268)
!4268 = distinct !DILexicalBlock(scope: !4250, file: !330, line: 335, column: 9)
!4269 = !DILocation(line: 335, column: 9, scope: !4250)
!4270 = !DILocation(line: 349, column: 30, scope: !4250)
!4271 = !DILocation(line: 349, column: 5, scope: !4250)
!4272 = !DILocation(line: 350, column: 9, scope: !4273)
!4273 = distinct !DILexicalBlock(scope: !4250, file: !330, line: 350, column: 9)
!4274 = !DILocation(line: 350, column: 22, scope: !4273)
!4275 = !DILocation(line: 355, column: 5, scope: !4250)
!4276 = !DILocation(line: 357, column: 22, scope: !4277)
!4277 = distinct !DILexicalBlock(scope: !4250, file: !330, line: 357, column: 9)
!4278 = !DILocation(line: 357, column: 19, scope: !4277)
!4279 = !DILocation(line: 357, column: 9, scope: !4250)
!4280 = !DILocation(line: 358, column: 14, scope: !4281)
!4281 = distinct !DILexicalBlock(scope: !4277, file: !330, line: 357, column: 36)
!4282 = !{i32 14, i32 18}
!4283 = !DILocation(line: 359, column: 9, scope: !4281)
!4284 = !DILocation(line: 360, column: 5, scope: !4281)
!4285 = !DILocation(line: 362, column: 1, scope: !4250)
!4286 = distinct !DISubprogram(name: "uart_channel_to_dma_channel", scope: !330, file: !330, line: 191, type: !4287, scopeLine: 192, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !329, retainedNodes: !4289)
!4287 = !DISubroutineType(types: !4288)
!4288 = !{!4258, !2702, !222}
!4289 = !{!4290, !4291, !4292}
!4290 = !DILocalVariable(name: "port", arg: 1, scope: !4286, file: !330, line: 191, type: !2702)
!4291 = !DILocalVariable(name: "is_rx", arg: 2, scope: !4286, file: !330, line: 191, type: !222)
!4292 = !DILocalVariable(name: "ch", scope: !4286, file: !330, line: 193, type: !4258)
!4293 = !DILocation(line: 0, scope: !4286)
!4294 = !DILocation(line: 195, column: 14, scope: !4295)
!4295 = distinct !DILexicalBlock(scope: !4286, file: !330, line: 195, column: 9)
!4296 = !DILocation(line: 195, column: 9, scope: !4286)
!4297 = !DILocation(line: 209, column: 5, scope: !4286)
!4298 = distinct !DISubprogram(name: "hal_uart_get_char", scope: !330, file: !330, line: 365, type: !4299, scopeLine: 366, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !329, retainedNodes: !4301)
!4299 = !DISubroutineType(types: !4300)
!4300 = !{!383, !391}
!4301 = !{!4302, !4303}
!4302 = !DILocalVariable(name: "uart_port", arg: 1, scope: !4298, file: !330, line: 365, type: !391)
!4303 = !DILocalVariable(name: "int_no", scope: !4298, file: !330, line: 367, type: !2702)
!4304 = !DILocation(line: 0, scope: !4298)
!4305 = !DILocation(line: 367, column: 26, scope: !4298)
!4306 = !DILocation(line: 369, column: 16, scope: !4307)
!4307 = distinct !DILexicalBlock(scope: !4298, file: !330, line: 369, column: 9)
!4308 = !DILocation(line: 369, column: 9, scope: !4298)
!4309 = !DILocation(line: 370, column: 22, scope: !4310)
!4310 = distinct !DILexicalBlock(scope: !4307, file: !330, line: 369, column: 33)
!4311 = !DILocation(line: 370, column: 9, scope: !4310)
!4312 = !DILocation(line: 0, scope: !4307)
!4313 = !DILocation(line: 375, column: 1, scope: !4298)
!4314 = distinct !DISubprogram(name: "hal_uart_get_char_unblocking", scope: !330, file: !330, line: 377, type: !4315, scopeLine: 378, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !329, retainedNodes: !4317)
!4315 = !DISubroutineType(types: !4316)
!4316 = !{!92, !391}
!4317 = !{!4318, !4319}
!4318 = !DILocalVariable(name: "uart_port", arg: 1, scope: !4314, file: !330, line: 377, type: !391)
!4319 = !DILocalVariable(name: "int_no", scope: !4314, file: !330, line: 379, type: !2702)
!4320 = !DILocation(line: 0, scope: !4314)
!4321 = !DILocation(line: 379, column: 26, scope: !4314)
!4322 = !DILocation(line: 381, column: 16, scope: !4323)
!4323 = distinct !DILexicalBlock(scope: !4314, file: !330, line: 381, column: 9)
!4324 = !DILocation(line: 381, column: 9, scope: !4314)
!4325 = !DILocation(line: 382, column: 16, scope: !4326)
!4326 = distinct !DILexicalBlock(scope: !4323, file: !330, line: 381, column: 33)
!4327 = !DILocation(line: 382, column: 9, scope: !4326)
!4328 = !DILocation(line: 0, scope: !4323)
!4329 = !DILocation(line: 387, column: 1, scope: !4314)
!4330 = distinct !DISubprogram(name: "hal_uart_receive_polling", scope: !330, file: !330, line: 390, type: !4331, scopeLine: 391, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !329, retainedNodes: !4333)
!4331 = !DISubroutineType(types: !4332)
!4332 = !{!92, !391, !431, !92}
!4333 = !{!4334, !4335, !4336, !4337, !4338}
!4334 = !DILocalVariable(name: "uart_port", arg: 1, scope: !4330, file: !330, line: 390, type: !391)
!4335 = !DILocalVariable(name: "buffer", arg: 2, scope: !4330, file: !330, line: 390, type: !431)
!4336 = !DILocalVariable(name: "size", arg: 3, scope: !4330, file: !330, line: 390, type: !92)
!4337 = !DILocalVariable(name: "int_no", scope: !4330, file: !330, line: 392, type: !2702)
!4338 = !DILocalVariable(name: "index", scope: !4330, file: !330, line: 393, type: !92)
!4339 = !DILocation(line: 0, scope: !4330)
!4340 = !DILocation(line: 392, column: 26, scope: !4330)
!4341 = !DILocation(line: 395, column: 16, scope: !4342)
!4342 = distinct !DILexicalBlock(scope: !4330, file: !330, line: 395, column: 9)
!4343 = !DILocation(line: 395, column: 9, scope: !4330)
!4344 = !DILocation(line: 401, column: 38, scope: !4345)
!4345 = distinct !DILexicalBlock(scope: !4346, file: !330, line: 400, column: 48)
!4346 = distinct !DILexicalBlock(scope: !4347, file: !330, line: 400, column: 9)
!4347 = distinct !DILexicalBlock(scope: !4348, file: !330, line: 400, column: 9)
!4348 = distinct !DILexicalBlock(scope: !4349, file: !330, line: 399, column: 33)
!4349 = distinct !DILexicalBlock(scope: !4330, file: !330, line: 399, column: 9)
!4350 = !DILocation(line: 401, column: 13, scope: !4345)
!4351 = !DILocation(line: 401, column: 27, scope: !4345)
!4352 = !DILocation(line: 400, column: 44, scope: !4346)
!4353 = !DILocation(line: 400, column: 31, scope: !4346)
!4354 = !DILocation(line: 400, column: 9, scope: !4347)
!4355 = distinct !{!4355, !4354, !4356}
!4356 = !DILocation(line: 402, column: 9, scope: !4347)
!4357 = !DILocation(line: 406, column: 1, scope: !4330)
!4358 = distinct !DISubprogram(name: "hal_uart_receive_dma", scope: !330, file: !330, line: 408, type: !4331, scopeLine: 409, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !329, retainedNodes: !4359)
!4359 = !{!4360, !4361, !4362, !4363, !4364, !4365}
!4360 = !DILocalVariable(name: "uart_port", arg: 1, scope: !4358, file: !330, line: 408, type: !391)
!4361 = !DILocalVariable(name: "buffer", arg: 2, scope: !4358, file: !330, line: 408, type: !431)
!4362 = !DILocalVariable(name: "size", arg: 3, scope: !4358, file: !330, line: 408, type: !92)
!4363 = !DILocalVariable(name: "actual_size", scope: !4358, file: !330, line: 410, type: !92)
!4364 = !DILocalVariable(name: "receive_size", scope: !4358, file: !330, line: 410, type: !92)
!4365 = !DILocalVariable(name: "ch", scope: !4358, file: !330, line: 411, type: !4258)
!4366 = !DILocation(line: 0, scope: !4358)
!4367 = !DILocation(line: 410, column: 5, scope: !4358)
!4368 = !DILocation(line: 413, column: 10, scope: !4369)
!4369 = distinct !DILexicalBlock(scope: !4358, file: !330, line: 413, column: 9)
!4370 = !DILocation(line: 413, column: 9, scope: !4358)
!4371 = !DILocation(line: 417, column: 17, scope: !4372)
!4372 = distinct !DILexicalBlock(scope: !4358, file: !330, line: 417, column: 9)
!4373 = !DILocation(line: 417, column: 26, scope: !4372)
!4374 = !DILocation(line: 421, column: 30, scope: !4358)
!4375 = !DILocation(line: 421, column: 5, scope: !4358)
!4376 = !DILocation(line: 422, column: 9, scope: !4377)
!4377 = distinct !DILexicalBlock(scope: !4358, file: !330, line: 422, column: 9)
!4378 = !DILocation(line: 422, column: 21, scope: !4377)
!4379 = !DILocation(line: 427, column: 5, scope: !4358)
!4380 = !DILocation(line: 429, column: 25, scope: !4381)
!4381 = distinct !DILexicalBlock(scope: !4358, file: !330, line: 429, column: 9)
!4382 = !DILocation(line: 429, column: 22, scope: !4381)
!4383 = !DILocation(line: 429, column: 9, scope: !4358)
!4384 = !DILocation(line: 430, column: 14, scope: !4385)
!4385 = distinct !DILexicalBlock(scope: !4381, file: !330, line: 429, column: 38)
!4386 = !DILocation(line: 431, column: 9, scope: !4385)
!4387 = !DILocation(line: 432, column: 5, scope: !4385)
!4388 = !DILocation(line: 435, column: 1, scope: !4358)
!4389 = distinct !DISubprogram(name: "hal_uart_get_available_send_space", scope: !330, file: !330, line: 438, type: !4315, scopeLine: 439, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !329, retainedNodes: !4390)
!4390 = !{!4391, !4392}
!4391 = !DILocalVariable(name: "uart_port", arg: 1, scope: !4389, file: !330, line: 438, type: !391)
!4392 = !DILocalVariable(name: "length", scope: !4389, file: !330, line: 440, type: !92)
!4393 = !DILocation(line: 0, scope: !4389)
!4394 = !DILocation(line: 440, column: 5, scope: !4389)
!4395 = !DILocation(line: 440, column: 14, scope: !4389)
!4396 = !DILocation(line: 442, column: 10, scope: !4397)
!4397 = distinct !DILexicalBlock(scope: !4389, file: !330, line: 442, column: 9)
!4398 = !DILocation(line: 442, column: 9, scope: !4389)
!4399 = !DILocation(line: 446, column: 30, scope: !4389)
!4400 = !DILocation(line: 446, column: 5, scope: !4389)
!4401 = !DILocation(line: 447, column: 12, scope: !4389)
!4402 = !DILocation(line: 447, column: 5, scope: !4389)
!4403 = !DILocation(line: 448, column: 1, scope: !4389)
!4404 = distinct !DISubprogram(name: "hal_uart_get_available_receive_bytes", scope: !330, file: !330, line: 451, type: !4315, scopeLine: 452, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !329, retainedNodes: !4405)
!4405 = !{!4406, !4407}
!4406 = !DILocalVariable(name: "uart_port", arg: 1, scope: !4404, file: !330, line: 451, type: !391)
!4407 = !DILocalVariable(name: "length", scope: !4404, file: !330, line: 453, type: !92)
!4408 = !DILocation(line: 0, scope: !4404)
!4409 = !DILocation(line: 453, column: 5, scope: !4404)
!4410 = !DILocation(line: 453, column: 14, scope: !4404)
!4411 = !DILocation(line: 455, column: 10, scope: !4412)
!4412 = distinct !DILexicalBlock(scope: !4404, file: !330, line: 455, column: 9)
!4413 = !DILocation(line: 455, column: 9, scope: !4404)
!4414 = !DILocation(line: 459, column: 30, scope: !4404)
!4415 = !DILocation(line: 459, column: 5, scope: !4404)
!4416 = !DILocation(line: 461, column: 12, scope: !4404)
!4417 = !DILocation(line: 461, column: 5, scope: !4404)
!4418 = !DILocation(line: 462, column: 1, scope: !4404)
!4419 = distinct !DISubprogram(name: "hal_uart_register_callback", scope: !330, file: !330, line: 543, type: !4420, scopeLine: 546, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !329, retainedNodes: !4422)
!4420 = !DISubroutineType(types: !4421)
!4421 = !{!4047, !391, !419, !219}
!4422 = !{!4423, !4424, !4425, !4426}
!4423 = !DILocalVariable(name: "uart_port", arg: 1, scope: !4419, file: !330, line: 543, type: !391)
!4424 = !DILocalVariable(name: "user_callback", arg: 2, scope: !4419, file: !330, line: 544, type: !419)
!4425 = !DILocalVariable(name: "user_data", arg: 3, scope: !4419, file: !330, line: 545, type: !219)
!4426 = !DILocalVariable(name: "ch", scope: !4419, file: !330, line: 547, type: !4258)
!4427 = !DILocation(line: 0, scope: !4419)
!4428 = !DILocation(line: 549, column: 10, scope: !4429)
!4429 = distinct !DILexicalBlock(scope: !4419, file: !330, line: 549, column: 9)
!4430 = !DILocation(line: 549, column: 9, scope: !4419)
!4431 = !DILocation(line: 556, column: 53, scope: !4419)
!4432 = !DILocation(line: 556, column: 62, scope: !4419)
!4433 = !DILocation(line: 557, column: 53, scope: !4419)
!4434 = !DILocation(line: 557, column: 63, scope: !4419)
!4435 = !DILocation(line: 558, column: 37, scope: !4419)
!4436 = !DILocation(line: 558, column: 54, scope: !4419)
!4437 = !DILocation(line: 560, column: 39, scope: !4419)
!4438 = !DILocation(line: 561, column: 39, scope: !4419)
!4439 = !DILocation(line: 560, column: 5, scope: !4419)
!4440 = !DILocation(line: 562, column: 5, scope: !4419)
!4441 = !DILocation(line: 564, column: 44, scope: !4442)
!4442 = distinct !DILexicalBlock(scope: !4419, file: !330, line: 564, column: 9)
!4443 = !DILocation(line: 564, column: 9, scope: !4419)
!4444 = !DILocation(line: 565, column: 9, scope: !4445)
!4445 = distinct !DILexicalBlock(scope: !4442, file: !330, line: 564, column: 59)
!4446 = !DILocation(line: 566, column: 5, scope: !4445)
!4447 = !DILocation(line: 567, column: 9, scope: !4448)
!4448 = distinct !DILexicalBlock(scope: !4442, file: !330, line: 566, column: 12)
!4449 = !DILocation(line: 569, column: 10, scope: !4419)
!4450 = !DILocation(line: 570, column: 5, scope: !4419)
!4451 = !DILocation(line: 578, column: 5, scope: !4419)
!4452 = !DILocation(line: 579, column: 1, scope: !4419)
!4453 = !DILocation(line: 0, scope: !387)
!4454 = !DILocation(line: 539, column: 12, scope: !387)
!4455 = !DILocation(line: 539, column: 5, scope: !387)
!4456 = distinct !DISubprogram(name: "hal_uart_send_callback0", scope: !330, file: !330, line: 511, type: !75, scopeLine: 512, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !329, retainedNodes: !4457)
!4457 = !{!4458}
!4458 = !DILocalVariable(name: "callback_context", scope: !4459, file: !330, line: 514, type: !4461)
!4459 = distinct !DILexicalBlock(scope: !4460, file: !330, line: 513, column: 60)
!4460 = distinct !DILexicalBlock(scope: !4456, file: !330, line: 513, column: 9)
!4461 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !415, size: 32)
!4462 = !DILocation(line: 513, column: 42, scope: !4460)
!4463 = !DILocation(line: 513, column: 9, scope: !4456)
!4464 = !DILocation(line: 515, column: 39, scope: !4465)
!4465 = distinct !DILexicalBlock(scope: !4459, file: !330, line: 515, column: 13)
!4466 = !DILocation(line: 515, column: 18, scope: !4465)
!4467 = !DILocation(line: 515, column: 13, scope: !4459)
!4468 = !DILocation(line: 516, column: 89, scope: !4469)
!4469 = distinct !DILexicalBlock(scope: !4465, file: !330, line: 515, column: 49)
!4470 = !DILocation(line: 516, column: 13, scope: !4469)
!4471 = !DILocation(line: 517, column: 9, scope: !4469)
!4472 = !DILocation(line: 519, column: 32, scope: !4456)
!4473 = !DILocation(line: 519, column: 5, scope: !4456)
!4474 = !DILocation(line: 520, column: 1, scope: !4456)
!4475 = distinct !DISubprogram(name: "hal_uart_send_callback1", scope: !330, file: !330, line: 523, type: !75, scopeLine: 524, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !329, retainedNodes: !4476)
!4476 = !{!4477}
!4477 = !DILocalVariable(name: "callback_context", scope: !4478, file: !330, line: 526, type: !4461)
!4478 = distinct !DILexicalBlock(scope: !4479, file: !330, line: 525, column: 60)
!4479 = distinct !DILexicalBlock(scope: !4475, file: !330, line: 525, column: 9)
!4480 = !DILocation(line: 525, column: 42, scope: !4479)
!4481 = !DILocation(line: 525, column: 9, scope: !4475)
!4482 = !DILocation(line: 527, column: 39, scope: !4483)
!4483 = distinct !DILexicalBlock(scope: !4478, file: !330, line: 527, column: 13)
!4484 = !DILocation(line: 527, column: 18, scope: !4483)
!4485 = !DILocation(line: 527, column: 13, scope: !4478)
!4486 = !DILocation(line: 528, column: 89, scope: !4487)
!4487 = distinct !DILexicalBlock(scope: !4483, file: !330, line: 527, column: 49)
!4488 = !DILocation(line: 528, column: 13, scope: !4487)
!4489 = !DILocation(line: 529, column: 9, scope: !4487)
!4490 = !DILocation(line: 531, column: 32, scope: !4475)
!4491 = !DILocation(line: 531, column: 5, scope: !4475)
!4492 = !DILocation(line: 532, column: 1, scope: !4475)
!4493 = distinct !DISubprogram(name: "hal_uart_check_irq_disable", scope: !330, file: !330, line: 464, type: !4494, scopeLine: 465, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !329, retainedNodes: !4496)
!4494 = !DISubroutineType(types: !4495)
!4495 = !{null, !2702, !222}
!4496 = !{!4497, !4498, !4499, !4500, !4501, !4503}
!4497 = !DILocalVariable(name: "uart_port", arg: 1, scope: !4493, file: !330, line: 464, type: !2702)
!4498 = !DILocalVariable(name: "is_rx", arg: 2, scope: !4493, file: !330, line: 464, type: !222)
!4499 = !DILocalVariable(name: "avail_size", scope: !4493, file: !330, line: 466, type: !92)
!4500 = !DILocalVariable(name: "avail_space", scope: !4493, file: !330, line: 466, type: !92)
!4501 = !DILocalVariable(name: "dma_config", scope: !4493, file: !330, line: 467, type: !4502)
!4502 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !427, size: 32)
!4503 = !DILocalVariable(name: "ch", scope: !4493, file: !330, line: 468, type: !4258)
!4504 = !DILocation(line: 0, scope: !4493)
!4505 = !DILocation(line: 466, column: 5, scope: !4493)
!4506 = !DILocation(line: 471, column: 9, scope: !4493)
!4507 = !DILocation(line: 472, column: 9, scope: !4508)
!4508 = distinct !DILexicalBlock(scope: !4509, file: !330, line: 471, column: 16)
!4509 = distinct !DILexicalBlock(scope: !4493, file: !330, line: 471, column: 9)
!4510 = !DILocation(line: 473, column: 13, scope: !4511)
!4511 = distinct !DILexicalBlock(scope: !4508, file: !330, line: 473, column: 13)
!4512 = !DILocation(line: 473, column: 39, scope: !4511)
!4513 = !DILocation(line: 473, column: 24, scope: !4511)
!4514 = !DILocation(line: 473, column: 13, scope: !4508)
!4515 = !DILocation(line: 478, column: 9, scope: !4516)
!4516 = distinct !DILexicalBlock(scope: !4509, file: !330, line: 477, column: 12)
!4517 = !DILocation(line: 479, column: 13, scope: !4518)
!4518 = distinct !DILexicalBlock(scope: !4516, file: !330, line: 479, column: 13)
!4519 = !DILocation(line: 479, column: 40, scope: !4518)
!4520 = !DILocation(line: 479, column: 77, scope: !4518)
!4521 = !DILocation(line: 479, column: 63, scope: !4518)
!4522 = !DILocation(line: 479, column: 25, scope: !4518)
!4523 = !DILocation(line: 479, column: 13, scope: !4516)
!4524 = !DILocation(line: 0, scope: !4509)
!4525 = !DILocation(line: 484, column: 1, scope: !4493)
!4526 = distinct !DISubprogram(name: "hal_uart_receive_callback0", scope: !330, file: !330, line: 486, type: !75, scopeLine: 487, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !329, retainedNodes: !4527)
!4527 = !{!4528}
!4528 = !DILocalVariable(name: "callback_context", scope: !4529, file: !330, line: 490, type: !4461)
!4529 = distinct !DILexicalBlock(scope: !4530, file: !330, line: 489, column: 70)
!4530 = distinct !DILexicalBlock(scope: !4526, file: !330, line: 488, column: 9)
!4531 = !DILocation(line: 488, column: 43, scope: !4530)
!4532 = !DILocation(line: 488, column: 61, scope: !4530)
!4533 = !DILocation(line: 489, column: 14, scope: !4530)
!4534 = !DILocation(line: 489, column: 63, scope: !4530)
!4535 = !DILocation(line: 488, column: 9, scope: !4526)
!4536 = !DILocation(line: 491, column: 39, scope: !4537)
!4537 = distinct !DILexicalBlock(scope: !4529, file: !330, line: 491, column: 13)
!4538 = !DILocation(line: 491, column: 18, scope: !4537)
!4539 = !DILocation(line: 491, column: 13, scope: !4529)
!4540 = !DILocation(line: 492, column: 88, scope: !4541)
!4541 = distinct !DILexicalBlock(scope: !4537, file: !330, line: 491, column: 49)
!4542 = !DILocation(line: 492, column: 13, scope: !4541)
!4543 = !DILocation(line: 493, column: 9, scope: !4541)
!4544 = !DILocation(line: 495, column: 32, scope: !4526)
!4545 = !DILocation(line: 495, column: 5, scope: !4526)
!4546 = !DILocation(line: 496, column: 1, scope: !4526)
!4547 = distinct !DISubprogram(name: "hal_uart_receive_callback1", scope: !330, file: !330, line: 499, type: !75, scopeLine: 500, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !329, retainedNodes: !4548)
!4548 = !{!4549}
!4549 = !DILocalVariable(name: "callback_context", scope: !4550, file: !330, line: 503, type: !4461)
!4550 = distinct !DILexicalBlock(scope: !4551, file: !330, line: 502, column: 70)
!4551 = distinct !DILexicalBlock(scope: !4547, file: !330, line: 501, column: 9)
!4552 = !DILocation(line: 501, column: 43, scope: !4551)
!4553 = !DILocation(line: 501, column: 61, scope: !4551)
!4554 = !DILocation(line: 502, column: 14, scope: !4551)
!4555 = !DILocation(line: 502, column: 63, scope: !4551)
!4556 = !DILocation(line: 501, column: 9, scope: !4547)
!4557 = !DILocation(line: 504, column: 39, scope: !4558)
!4558 = distinct !DILexicalBlock(scope: !4550, file: !330, line: 504, column: 13)
!4559 = !DILocation(line: 504, column: 18, scope: !4558)
!4560 = !DILocation(line: 504, column: 13, scope: !4550)
!4561 = !DILocation(line: 505, column: 88, scope: !4562)
!4562 = distinct !DILexicalBlock(scope: !4558, file: !330, line: 504, column: 49)
!4563 = !DILocation(line: 505, column: 13, scope: !4562)
!4564 = !DILocation(line: 506, column: 9, scope: !4562)
!4565 = !DILocation(line: 508, column: 32, scope: !4547)
!4566 = !DILocation(line: 508, column: 5, scope: !4547)
!4567 = !DILocation(line: 509, column: 1, scope: !4547)
!4568 = distinct !DISubprogram(name: "hal_uart_set_baudrate", scope: !330, file: !330, line: 582, type: !4569, scopeLine: 583, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !329, retainedNodes: !4571)
!4569 = !DISubroutineType(types: !4570)
!4570 = !{!4047, !391, !406}
!4571 = !{!4572, !4573}
!4572 = !DILocalVariable(name: "uart_port", arg: 1, scope: !4568, file: !330, line: 582, type: !391)
!4573 = !DILocalVariable(name: "baudrate", arg: 2, scope: !4568, file: !330, line: 582, type: !406)
!4574 = !DILocation(line: 0, scope: !4568)
!4575 = !DILocation(line: 584, column: 11, scope: !4576)
!4576 = distinct !DILexicalBlock(scope: !4568, file: !330, line: 584, column: 9)
!4577 = !DILocation(line: 584, column: 46, scope: !4576)
!4578 = !DILocation(line: 588, column: 37, scope: !4568)
!4579 = !DILocation(line: 588, column: 50, scope: !4568)
!4580 = !DILocation(line: 588, column: 59, scope: !4568)
!4581 = !DILocation(line: 589, column: 12, scope: !4568)
!4582 = !DILocation(line: 589, column: 5, scope: !4568)
!4583 = !DILocation(line: 590, column: 1, scope: !4568)
!4584 = distinct !DISubprogram(name: "hal_uart_set_dma", scope: !330, file: !330, line: 608, type: !4585, scopeLine: 609, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !329, retainedNodes: !4589)
!4585 = !DISubroutineType(types: !4586)
!4586 = !{!4047, !391, !4587}
!4587 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4588, size: 32)
!4588 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !427)
!4589 = !{!4590, !4591}
!4590 = !DILocalVariable(name: "uart_port", arg: 1, scope: !4584, file: !330, line: 608, type: !391)
!4591 = !DILocalVariable(name: "uart_dma_config", arg: 2, scope: !4584, file: !330, line: 608, type: !4587)
!4592 = !DILocation(line: 0, scope: !4584)
!4593 = !DILocation(line: 610, column: 10, scope: !4594)
!4594 = distinct !DILexicalBlock(scope: !4584, file: !330, line: 610, column: 9)
!4595 = !DILocation(line: 610, column: 9, scope: !4584)
!4596 = !DILocation(line: 614, column: 10, scope: !4597)
!4597 = distinct !DILexicalBlock(scope: !4584, file: !330, line: 614, column: 9)
!4598 = !DILocation(line: 614, column: 9, scope: !4584)
!4599 = !DILocation(line: 618, column: 37, scope: !4584)
!4600 = !DILocation(line: 618, column: 56, scope: !4584)
!4601 = !DILocation(line: 619, column: 45, scope: !4584)
!4602 = !DILocation(line: 619, column: 12, scope: !4584)
!4603 = !DILocation(line: 620, column: 12, scope: !4584)
!4604 = !DILocation(line: 619, column: 5, scope: !4584)
!4605 = !DILocation(line: 621, column: 5, scope: !4584)
!4606 = !DILocation(line: 622, column: 5, scope: !4584)
!4607 = !DILocation(line: 623, column: 33, scope: !4584)
!4608 = !DILocation(line: 624, column: 50, scope: !4584)
!4609 = !DILocation(line: 625, column: 50, scope: !4584)
!4610 = !DILocation(line: 626, column: 50, scope: !4584)
!4611 = !DILocation(line: 627, column: 50, scope: !4584)
!4612 = !DILocation(line: 628, column: 33, scope: !4584)
!4613 = !DILocation(line: 623, column: 5, scope: !4584)
!4614 = !DILocation(line: 630, column: 50, scope: !4584)
!4615 = !DILocation(line: 631, column: 50, scope: !4584)
!4616 = !DILocation(line: 632, column: 50, scope: !4584)
!4617 = !DILocation(line: 629, column: 5, scope: !4584)
!4618 = !DILocation(line: 634, column: 5, scope: !4584)
!4619 = !DILocation(line: 635, column: 1, scope: !4584)
!4620 = distinct !DISubprogram(name: "hal_uart_is_dma_config_valid", scope: !330, file: !330, line: 112, type: !4621, scopeLine: 113, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !329, retainedNodes: !4623)
!4621 = !DISubroutineType(types: !4622)
!4622 = !{!222, !4587}
!4623 = !{!4624}
!4624 = !DILocalVariable(name: "dma_config", arg: 1, scope: !4620, file: !330, line: 112, type: !4587)
!4625 = !DILocation(line: 0, scope: !4620)
!4626 = !DILocation(line: 114, column: 14, scope: !4627)
!4627 = distinct !DILexicalBlock(scope: !4620, file: !330, line: 114, column: 9)
!4628 = !DILocation(line: 114, column: 9, scope: !4620)
!4629 = !DILocation(line: 117, column: 29, scope: !4630)
!4630 = distinct !DILexicalBlock(scope: !4620, file: !330, line: 117, column: 9)
!4631 = !DILocation(line: 117, column: 14, scope: !4630)
!4632 = !DILocation(line: 117, column: 9, scope: !4620)
!4633 = !DILocation(line: 120, column: 21, scope: !4634)
!4634 = distinct !DILexicalBlock(scope: !4620, file: !330, line: 120, column: 9)
!4635 = !DILocation(line: 120, column: 61, scope: !4634)
!4636 = !DILocation(line: 120, column: 47, scope: !4634)
!4637 = !DILocation(line: 120, column: 9, scope: !4620)
!4638 = !DILocation(line: 123, column: 61, scope: !4639)
!4639 = distinct !DILexicalBlock(scope: !4620, file: !330, line: 123, column: 9)
!4640 = !DILocation(line: 123, column: 47, scope: !4639)
!4641 = !DILocation(line: 123, column: 9, scope: !4620)
!4642 = !DILocation(line: 126, column: 29, scope: !4643)
!4643 = distinct !DILexicalBlock(scope: !4620, file: !330, line: 126, column: 9)
!4644 = !DILocation(line: 126, column: 14, scope: !4643)
!4645 = !DILocation(line: 126, column: 9, scope: !4620)
!4646 = !DILocation(line: 129, column: 21, scope: !4647)
!4647 = distinct !DILexicalBlock(scope: !4620, file: !330, line: 129, column: 9)
!4648 = !DILocation(line: 129, column: 58, scope: !4647)
!4649 = !DILocation(line: 129, column: 44, scope: !4647)
!4650 = !DILocation(line: 129, column: 9, scope: !4620)
!4651 = !DILocation(line: 136, column: 1, scope: !4620)
!4652 = distinct !DISubprogram(name: "hal_uart_translate_timeout", scope: !330, file: !330, line: 182, type: !4653, scopeLine: 183, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !329, retainedNodes: !4655)
!4653 = !DISubroutineType(types: !4654)
!4654 = !{!92, !92}
!4655 = !{!4656, !4657}
!4656 = !DILocalVariable(name: "timeout_us", arg: 1, scope: !4652, file: !330, line: 182, type: !92)
!4657 = !DILocalVariable(name: "ticks_per_us", scope: !4652, file: !330, line: 184, type: !92)
!4658 = !DILocation(line: 0, scope: !4652)
!4659 = !DILocation(line: 186, column: 20, scope: !4652)
!4660 = !DILocation(line: 186, column: 39, scope: !4652)
!4661 = !DILocation(line: 188, column: 25, scope: !4652)
!4662 = !DILocation(line: 188, column: 5, scope: !4652)
!4663 = distinct !DISubprogram(name: "hal_uart_set_hardware_flowcontrol", scope: !330, file: !330, line: 637, type: !4189, scopeLine: 638, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !329, retainedNodes: !4664)
!4664 = !{!4665, !4666}
!4665 = !DILocalVariable(name: "uart_port", arg: 1, scope: !4663, file: !330, line: 637, type: !391)
!4666 = !DILocalVariable(name: "int_no", scope: !4663, file: !330, line: 639, type: !2702)
!4667 = !DILocation(line: 0, scope: !4663)
!4668 = !DILocation(line: 641, column: 10, scope: !4669)
!4669 = distinct !DILexicalBlock(scope: !4663, file: !330, line: 641, column: 9)
!4670 = !DILocation(line: 641, column: 9, scope: !4663)
!4671 = !DILocation(line: 645, column: 14, scope: !4663)
!4672 = !DILocation(line: 646, column: 5, scope: !4663)
!4673 = !DILocation(line: 648, column: 5, scope: !4663)
!4674 = !DILocation(line: 649, column: 1, scope: !4663)
!4675 = distinct !DISubprogram(name: "hal_uart_set_software_flowcontrol", scope: !330, file: !330, line: 651, type: !4676, scopeLine: 655, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !329, retainedNodes: !4678)
!4676 = !DISubroutineType(types: !4677)
!4677 = !{!4047, !391, !267, !267, !267}
!4678 = !{!4679, !4680, !4681, !4682, !4683}
!4679 = !DILocalVariable(name: "uart_port", arg: 1, scope: !4675, file: !330, line: 651, type: !391)
!4680 = !DILocalVariable(name: "xon", arg: 2, scope: !4675, file: !330, line: 652, type: !267)
!4681 = !DILocalVariable(name: "xoff", arg: 3, scope: !4675, file: !330, line: 653, type: !267)
!4682 = !DILocalVariable(name: "escape_character", arg: 4, scope: !4675, file: !330, line: 654, type: !267)
!4683 = !DILocalVariable(name: "int_no", scope: !4675, file: !330, line: 656, type: !2702)
!4684 = !DILocation(line: 0, scope: !4675)
!4685 = !DILocation(line: 658, column: 10, scope: !4686)
!4686 = distinct !DILexicalBlock(scope: !4675, file: !330, line: 658, column: 9)
!4687 = !DILocation(line: 658, column: 9, scope: !4675)
!4688 = !DILocation(line: 662, column: 14, scope: !4675)
!4689 = !DILocation(line: 663, column: 5, scope: !4675)
!4690 = !DILocation(line: 665, column: 5, scope: !4675)
!4691 = !DILocation(line: 666, column: 1, scope: !4675)
!4692 = distinct !DISubprogram(name: "hal_uart_disable_flowcontrol", scope: !330, file: !330, line: 668, type: !4189, scopeLine: 669, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !329, retainedNodes: !4693)
!4693 = !{!4694, !4695}
!4694 = !DILocalVariable(name: "uart_port", arg: 1, scope: !4692, file: !330, line: 668, type: !391)
!4695 = !DILocalVariable(name: "int_no", scope: !4692, file: !330, line: 670, type: !2702)
!4696 = !DILocation(line: 0, scope: !4692)
!4697 = !DILocation(line: 672, column: 10, scope: !4698)
!4698 = distinct !DILexicalBlock(scope: !4692, file: !330, line: 672, column: 9)
!4699 = !DILocation(line: 672, column: 9, scope: !4692)
!4700 = !DILocation(line: 676, column: 14, scope: !4692)
!4701 = !DILocation(line: 677, column: 5, scope: !4692)
!4702 = !DILocation(line: 679, column: 5, scope: !4692)
!4703 = !DILocation(line: 680, column: 1, scope: !4692)
!4704 = distinct !DISubprogram(name: "hal_uart_set_dma_timeout", scope: !330, file: !330, line: 683, type: !4705, scopeLine: 684, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !329, retainedNodes: !4707)
!4705 = !DISubroutineType(types: !4706)
!4706 = !{!4047, !391, !92}
!4707 = !{!4708, !4709}
!4708 = !DILocalVariable(name: "uart_port", arg: 1, scope: !4704, file: !330, line: 683, type: !391)
!4709 = !DILocalVariable(name: "timeout", arg: 2, scope: !4704, file: !330, line: 683, type: !92)
!4710 = !DILocation(line: 0, scope: !4704)
!4711 = !DILocation(line: 685, column: 10, scope: !4712)
!4712 = distinct !DILexicalBlock(scope: !4704, file: !330, line: 685, column: 9)
!4713 = !DILocation(line: 685, column: 9, scope: !4704)
!4714 = !DILocation(line: 689, column: 19, scope: !4715)
!4715 = distinct !DILexicalBlock(scope: !4704, file: !330, line: 689, column: 9)
!4716 = !DILocation(line: 0, scope: !4715)
!4717 = !DILocation(line: 696, column: 1, scope: !4704)
!4718 = distinct !DISubprogram(name: "__io_putchar", scope: !982, file: !982, line: 54, type: !4719, scopeLine: 58, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !981, retainedNodes: !4721)
!4719 = !DISubroutineType(types: !4720)
!4720 = !{!13, !13}
!4721 = !{!4722}
!4722 = !DILocalVariable(name: "ch", arg: 1, scope: !4718, file: !982, line: 54, type: !13)
!4723 = !DILocation(line: 0, scope: !4718)
!4724 = !DILocation(line: 61, column: 35, scope: !4718)
!4725 = !DILocation(line: 61, column: 5, scope: !4718)
!4726 = !DILocation(line: 62, column: 5, scope: !4718)
!4727 = distinct !DISubprogram(name: "main", scope: !982, file: !982, line: 133, type: !2678, scopeLine: 134, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !981, retainedNodes: !1176)
!4728 = !DILocation(line: 136, column: 5, scope: !4727)
!4729 = !DILocation(line: 139, column: 5, scope: !4727)
!4730 = !DILocation(line: 319, column: 3, scope: !4731, inlinedAt: !4732)
!4731 = distinct !DISubprogram(name: "__enable_irq", scope: !2124, file: !2124, line: 317, type: !75, scopeLine: 318, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !981, retainedNodes: !1176)
!4732 = distinct !DILocation(line: 142, column: 5, scope: !4727)
!4733 = !{i64 512635}
!4734 = !DILocation(line: 496, column: 3, scope: !4735, inlinedAt: !4736)
!4735 = distinct !DISubprogram(name: "__enable_fault_irq", scope: !2124, file: !2124, line: 494, type: !75, scopeLine: 495, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !981, retainedNodes: !1176)
!4736 = distinct !DILocation(line: 143, column: 5, scope: !4727)
!4737 = !{i64 516910}
!4738 = !DILocation(line: 146, column: 5, scope: !4727)
!4739 = !DILocation(line: 149, column: 5, scope: !4727)
!4740 = !DILocation(line: 150, column: 5, scope: !4727)
!4741 = !DILocation(line: 152, column: 5, scope: !4727)
!4742 = !DILocation(line: 153, column: 5, scope: !4727)
!4743 = !DILocation(line: 153, column: 5, scope: !4744)
!4744 = distinct !DILexicalBlock(scope: !4745, file: !982, line: 153, column: 5)
!4745 = distinct !DILexicalBlock(scope: !4727, file: !982, line: 153, column: 5)
!4746 = distinct !{!4746, !4747, !4748}
!4747 = !DILocation(line: 153, column: 5, scope: !4745)
!4748 = !DILocation(line: 153, column: 13, scope: !4745)
!4749 = distinct !DISubprogram(name: "SystemClock_Config", scope: !982, file: !982, line: 93, type: !75, scopeLine: 94, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !981, retainedNodes: !1176)
!4750 = !DILocation(line: 95, column: 5, scope: !4749)
!4751 = !DILocation(line: 96, column: 1, scope: !4749)
!4752 = distinct !DISubprogram(name: "prvSetupHardware", scope: !982, file: !982, line: 103, type: !75, scopeLine: 104, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !981, retainedNodes: !1176)
!4753 = !DILocation(line: 106, column: 5, scope: !4752)
!4754 = !DILocation(line: 107, column: 1, scope: !4752)
!4755 = distinct !DISubprogram(name: "trng_generate_random_data", scope: !982, file: !982, line: 114, type: !75, scopeLine: 115, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !981, retainedNodes: !4756)
!4756 = !{!4757, !4758}
!4757 = !DILocalVariable(name: "count", scope: !4755, file: !982, line: 116, type: !92)
!4758 = !DILocalVariable(name: "random_number", scope: !4755, file: !982, line: 117, type: !92)
!4759 = !DILocation(line: 0, scope: !4755)
!4760 = !DILocation(line: 117, column: 5, scope: !4755)
!4761 = !DILocation(line: 117, column: 14, scope: !4755)
!4762 = !DILocation(line: 118, column: 5, scope: !4755)
!4763 = !DILocation(line: 120, column: 5, scope: !4755)
!4764 = !DILocation(line: 121, column: 5, scope: !4765)
!4765 = distinct !DILexicalBlock(scope: !4755, file: !982, line: 121, column: 5)
!4766 = !DILocation(line: 122, column: 9, scope: !4767)
!4767 = distinct !DILexicalBlock(scope: !4768, file: !982, line: 121, column: 42)
!4768 = distinct !DILexicalBlock(scope: !4765, file: !982, line: 121, column: 5)
!4769 = !DILocation(line: 123, column: 80, scope: !4767)
!4770 = !DILocation(line: 123, column: 9, scope: !4767)
!4771 = !DILocation(line: 121, column: 38, scope: !4768)
!4772 = !DILocation(line: 121, column: 27, scope: !4768)
!4773 = distinct !{!4773, !4764, !4774}
!4774 = !DILocation(line: 124, column: 5, scope: !4765)
!4775 = !DILocation(line: 125, column: 5, scope: !4755)
!4776 = !DILocation(line: 126, column: 5, scope: !4755)
!4777 = !DILocation(line: 129, column: 5, scope: !4755)
!4778 = !DILocation(line: 131, column: 1, scope: !4755)
!4779 = distinct !DISubprogram(name: "plain_log_uart_init", scope: !982, file: !982, line: 70, type: !75, scopeLine: 71, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !981, retainedNodes: !4780)
!4780 = !{!4781}
!4781 = !DILocalVariable(name: "uart_config", scope: !4779, file: !982, line: 72, type: !4782)
!4782 = !DIDerivedType(tag: DW_TAG_typedef, name: "hal_uart_config_t", file: !333, line: 378, baseType: !4783)
!4783 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !333, line: 373, size: 128, elements: !4784)
!4784 = !{!4785, !4786, !4787, !4788}
!4785 = !DIDerivedType(tag: DW_TAG_member, name: "baudrate", scope: !4783, file: !333, line: 374, baseType: !406, size: 32)
!4786 = !DIDerivedType(tag: DW_TAG_member, name: "word_length", scope: !4783, file: !333, line: 375, baseType: !408, size: 32, offset: 32)
!4787 = !DIDerivedType(tag: DW_TAG_member, name: "stop_bit", scope: !4783, file: !333, line: 376, baseType: !410, size: 32, offset: 64)
!4788 = !DIDerivedType(tag: DW_TAG_member, name: "parity", scope: !4783, file: !333, line: 377, baseType: !412, size: 32, offset: 96)
!4789 = !DILocation(line: 72, column: 5, scope: !4779)
!4790 = !DILocation(line: 72, column: 23, scope: !4779)
!4791 = !DILocation(line: 74, column: 5, scope: !4779)
!4792 = !DILocation(line: 75, column: 5, scope: !4779)
!4793 = !DILocation(line: 76, column: 5, scope: !4779)
!4794 = !DILocation(line: 77, column: 5, scope: !4779)
!4795 = !DILocation(line: 80, column: 17, scope: !4779)
!4796 = !DILocation(line: 80, column: 26, scope: !4779)
!4797 = !DILocation(line: 81, column: 17, scope: !4779)
!4798 = !DILocation(line: 81, column: 29, scope: !4779)
!4799 = !DILocation(line: 82, column: 17, scope: !4779)
!4800 = !DILocation(line: 82, column: 26, scope: !4779)
!4801 = !DILocation(line: 83, column: 17, scope: !4779)
!4802 = !DILocation(line: 83, column: 24, scope: !4779)
!4803 = !DILocation(line: 84, column: 5, scope: !4779)
!4804 = !DILocation(line: 85, column: 1, scope: !4779)
!4805 = distinct !DISubprogram(name: "SysTick_Set", scope: !441, file: !441, line: 70, type: !4653, scopeLine: 71, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !440, retainedNodes: !4806)
!4806 = !{!4807, !4808}
!4807 = !DILocalVariable(name: "ticks", arg: 1, scope: !4805, file: !441, line: 70, type: !92)
!4808 = !DILocalVariable(name: "val", scope: !4805, file: !441, line: 72, type: !92)
!4809 = !DILocation(line: 0, scope: !4805)
!4810 = !DILocation(line: 74, column: 16, scope: !4811)
!4811 = distinct !DILexicalBlock(scope: !4805, file: !441, line: 74, column: 9)
!4812 = !DILocation(line: 74, column: 21, scope: !4811)
!4813 = !DILocation(line: 74, column: 9, scope: !4805)
!4814 = !DILocation(line: 78, column: 20, scope: !4805)
!4815 = !DILocation(line: 80, column: 19, scope: !4805)
!4816 = !DILocation(line: 83, column: 20, scope: !4805)
!4817 = !DILocation(line: 84, column: 20, scope: !4805)
!4818 = !DILocation(line: 86, column: 19, scope: !4805)
!4819 = !DILocation(line: 88, column: 5, scope: !4805)
!4820 = !DILocation(line: 89, column: 1, scope: !4805)
!4821 = distinct !DISubprogram(name: "SysInitStatus_Set", scope: !441, file: !441, line: 98, type: !75, scopeLine: 99, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !440, retainedNodes: !1176)
!4822 = !DILocation(line: 100, column: 28, scope: !4821)
!4823 = !DILocation(line: 101, column: 1, scope: !4821)
!4824 = distinct !DISubprogram(name: "SysInitStatus_Query", scope: !441, file: !441, line: 110, type: !2118, scopeLine: 111, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !440, retainedNodes: !1176)
!4825 = !DILocation(line: 112, column: 12, scope: !4824)
!4826 = !DILocation(line: 112, column: 5, scope: !4824)
!4827 = distinct !DISubprogram(name: "SystemCoreClockUpdate", scope: !441, file: !441, line: 122, type: !75, scopeLine: 123, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !440, retainedNodes: !1176)
!4828 = !DILocation(line: 124, column: 23, scope: !4827)
!4829 = !DILocation(line: 124, column: 21, scope: !4827)
!4830 = !DILocation(line: 125, column: 1, scope: !4827)
!4831 = distinct !DISubprogram(name: "SystemInit", scope: !441, file: !441, line: 136, type: !75, scopeLine: 137, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !440, retainedNodes: !1176)
!4832 = !DILocation(line: 140, column: 16, scope: !4831)
!4833 = !DILocation(line: 144, column: 16, scope: !4831)
!4834 = !DILocation(line: 147, column: 16, scope: !4831)
!4835 = !DILocation(line: 150, column: 1, scope: !4831)
!4836 = distinct !DISubprogram(name: "CachePreInit", scope: !441, file: !441, line: 158, type: !75, scopeLine: 159, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !440, retainedNodes: !1176)
!4837 = !DILocation(line: 161, column: 22, scope: !4836)
!4838 = !DILocation(line: 164, column: 21, scope: !4836)
!4839 = !DILocation(line: 167, column: 21, scope: !4836)
!4840 = !DILocation(line: 170, column: 29, scope: !4836)
!4841 = !DILocation(line: 171, column: 33, scope: !4836)
!4842 = !DILocation(line: 173, column: 28, scope: !4836)
!4843 = !DILocation(line: 178, column: 30, scope: !4836)
!4844 = !DILocation(line: 192, column: 1, scope: !4836)
!4845 = distinct !DISubprogram(name: "_close", scope: !501, file: !501, line: 11, type: !4719, scopeLine: 12, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !698, retainedNodes: !4846)
!4846 = !{!4847}
!4847 = !DILocalVariable(name: "file", arg: 1, scope: !4845, file: !501, line: 11, type: !13)
!4848 = !DILocation(line: 0, scope: !4845)
!4849 = !DILocation(line: 13, column: 5, scope: !4845)
!4850 = distinct !DISubprogram(name: "_fstat", scope: !501, file: !501, line: 16, type: !4851, scopeLine: 17, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !698, retainedNodes: !4899)
!4851 = !DISubroutineType(types: !4852)
!4852 = !{!13, !13, !4853}
!4853 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4854, size: 32)
!4854 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "stat", file: !4855, line: 27, size: 704, elements: !4856)
!4855 = !DIFile(filename: "gcc-arm-none-eabi-10.3-2021.10/bin/../lib/gcc/arm-none-eabi/10.3.1/../../../../arm-none-eabi/include/sys/stat.h", directory: "/home/mjshen/RTOSExploration")
!4856 = !{!4857, !4860, !4863, !4866, !4869, !4872, !4875, !4876, !4879, !4889, !4890, !4891, !4894, !4897}
!4857 = !DIDerivedType(tag: DW_TAG_member, name: "st_dev", scope: !4854, file: !4855, line: 29, baseType: !4858, size: 16)
!4858 = !DIDerivedType(tag: DW_TAG_typedef, name: "dev_t", file: !505, line: 161, baseType: !4859)
!4859 = !DIDerivedType(tag: DW_TAG_typedef, name: "__dev_t", file: !547, line: 56, baseType: !522)
!4860 = !DIDerivedType(tag: DW_TAG_member, name: "st_ino", scope: !4854, file: !4855, line: 30, baseType: !4861, size: 16, offset: 16)
!4861 = !DIDerivedType(tag: DW_TAG_typedef, name: "ino_t", file: !505, line: 139, baseType: !4862)
!4862 = !DIDerivedType(tag: DW_TAG_typedef, name: "__ino_t", file: !547, line: 75, baseType: !132)
!4863 = !DIDerivedType(tag: DW_TAG_member, name: "st_mode", scope: !4854, file: !4855, line: 31, baseType: !4864, size: 32, offset: 32)
!4864 = !DIDerivedType(tag: DW_TAG_typedef, name: "mode_t", file: !505, line: 189, baseType: !4865)
!4865 = !DIDerivedType(tag: DW_TAG_typedef, name: "__mode_t", file: !547, line: 90, baseType: !94)
!4866 = !DIDerivedType(tag: DW_TAG_member, name: "st_nlink", scope: !4854, file: !4855, line: 32, baseType: !4867, size: 16, offset: 64)
!4867 = !DIDerivedType(tag: DW_TAG_typedef, name: "nlink_t", file: !505, line: 194, baseType: !4868)
!4868 = !DIDerivedType(tag: DW_TAG_typedef, name: "__nlink_t", file: !547, line: 209, baseType: !132)
!4869 = !DIDerivedType(tag: DW_TAG_member, name: "st_uid", scope: !4854, file: !4855, line: 33, baseType: !4870, size: 16, offset: 80)
!4870 = !DIDerivedType(tag: DW_TAG_typedef, name: "uid_t", file: !505, line: 165, baseType: !4871)
!4871 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uid_t", file: !547, line: 60, baseType: !132)
!4872 = !DIDerivedType(tag: DW_TAG_member, name: "st_gid", scope: !4854, file: !4855, line: 34, baseType: !4873, size: 16, offset: 96)
!4873 = !DIDerivedType(tag: DW_TAG_typedef, name: "gid_t", file: !505, line: 169, baseType: !4874)
!4874 = !DIDerivedType(tag: DW_TAG_typedef, name: "__gid_t", file: !547, line: 63, baseType: !132)
!4875 = !DIDerivedType(tag: DW_TAG_member, name: "st_rdev", scope: !4854, file: !4855, line: 35, baseType: !4858, size: 16, offset: 112)
!4876 = !DIDerivedType(tag: DW_TAG_member, name: "st_size", scope: !4854, file: !4855, line: 36, baseType: !4877, size: 32, offset: 128)
!4877 = !DIDerivedType(tag: DW_TAG_typedef, name: "off_t", file: !505, line: 157, baseType: !4878)
!4878 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off_t", file: !547, line: 102, baseType: !565)
!4879 = !DIDerivedType(tag: DW_TAG_member, name: "st_atim", scope: !4854, file: !4855, line: 42, baseType: !4880, size: 128, offset: 192)
!4880 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timespec", file: !4881, line: 47, size: 128, elements: !4882)
!4881 = !DIFile(filename: "gcc-arm-none-eabi-10.3-2021.10/bin/../lib/gcc/arm-none-eabi/10.3.1/../../../../arm-none-eabi/include/sys/_timespec.h", directory: "/home/mjshen/RTOSExploration")
!4882 = !{!4883, !4888}
!4883 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !4880, file: !4881, line: 48, baseType: !4884, size: 64)
!4884 = !DIDerivedType(tag: DW_TAG_typedef, name: "time_t", file: !4885, line: 42, baseType: !4886)
!4885 = !DIFile(filename: "gcc-arm-none-eabi-10.3-2021.10/bin/../lib/gcc/arm-none-eabi/10.3.1/../../../../arm-none-eabi/include/sys/_timeval.h", directory: "/home/mjshen/RTOSExploration")
!4886 = !DIDerivedType(tag: DW_TAG_typedef, name: "__int_least64_t", file: !95, line: 200, baseType: !4887)
!4887 = !DIBasicType(name: "long long", size: 64, encoding: DW_ATE_signed)
!4888 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !4880, file: !4881, line: 49, baseType: !548, size: 32, offset: 64)
!4889 = !DIDerivedType(tag: DW_TAG_member, name: "st_mtim", scope: !4854, file: !4855, line: 43, baseType: !4880, size: 128, offset: 320)
!4890 = !DIDerivedType(tag: DW_TAG_member, name: "st_ctim", scope: !4854, file: !4855, line: 44, baseType: !4880, size: 128, offset: 448)
!4891 = !DIDerivedType(tag: DW_TAG_member, name: "st_blksize", scope: !4854, file: !4855, line: 45, baseType: !4892, size: 32, offset: 576)
!4892 = !DIDerivedType(tag: DW_TAG_typedef, name: "blksize_t", file: !505, line: 102, baseType: !4893)
!4893 = !DIDerivedType(tag: DW_TAG_typedef, name: "__blksize_t", file: !547, line: 34, baseType: !548)
!4894 = !DIDerivedType(tag: DW_TAG_member, name: "st_blocks", scope: !4854, file: !4855, line: 46, baseType: !4895, size: 32, offset: 608)
!4895 = !DIDerivedType(tag: DW_TAG_typedef, name: "blkcnt_t", file: !505, line: 97, baseType: !4896)
!4896 = !DIDerivedType(tag: DW_TAG_typedef, name: "__blkcnt_t", file: !547, line: 30, baseType: !548)
!4897 = !DIDerivedType(tag: DW_TAG_member, name: "st_spare4", scope: !4854, file: !4855, line: 48, baseType: !4898, size: 64, offset: 640)
!4898 = !DICompositeType(tag: DW_TAG_array_type, baseType: !548, size: 64, elements: !300)
!4899 = !{!4900, !4901}
!4900 = !DILocalVariable(name: "file", arg: 1, scope: !4850, file: !501, line: 16, type: !13)
!4901 = !DILocalVariable(name: "st", arg: 2, scope: !4850, file: !501, line: 16, type: !4853)
!4902 = !DILocation(line: 0, scope: !4850)
!4903 = !DILocation(line: 18, column: 5, scope: !4850)
!4904 = distinct !DISubprogram(name: "_isatty", scope: !501, file: !501, line: 22, type: !4719, scopeLine: 23, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !698, retainedNodes: !4905)
!4905 = !{!4906}
!4906 = !DILocalVariable(name: "file", arg: 1, scope: !4904, file: !501, line: 22, type: !13)
!4907 = !DILocation(line: 0, scope: !4904)
!4908 = !DILocation(line: 24, column: 5, scope: !4904)
!4909 = distinct !DISubprogram(name: "_lseek", scope: !501, file: !501, line: 27, type: !4910, scopeLine: 28, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !698, retainedNodes: !4912)
!4910 = !DISubroutineType(types: !4911)
!4911 = !{!13, !13, !13, !13}
!4912 = !{!4913, !4914, !4915}
!4913 = !DILocalVariable(name: "file", arg: 1, scope: !4909, file: !501, line: 27, type: !13)
!4914 = !DILocalVariable(name: "ptr", arg: 2, scope: !4909, file: !501, line: 27, type: !13)
!4915 = !DILocalVariable(name: "dir", arg: 3, scope: !4909, file: !501, line: 27, type: !13)
!4916 = !DILocation(line: 0, scope: !4909)
!4917 = !DILocation(line: 29, column: 5, scope: !4909)
!4918 = distinct !DISubprogram(name: "_open", scope: !501, file: !501, line: 32, type: !4919, scopeLine: 33, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !698, retainedNodes: !4921)
!4919 = !DISubroutineType(types: !4920)
!4920 = !{!13, !540, !13, !13}
!4921 = !{!4922, !4923, !4924}
!4922 = !DILocalVariable(name: "name", arg: 1, scope: !4918, file: !501, line: 32, type: !540)
!4923 = !DILocalVariable(name: "flags", arg: 2, scope: !4918, file: !501, line: 32, type: !13)
!4924 = !DILocalVariable(name: "mode", arg: 3, scope: !4918, file: !501, line: 32, type: !13)
!4925 = !DILocation(line: 0, scope: !4918)
!4926 = !DILocation(line: 34, column: 5, scope: !4918)
!4927 = distinct !DISubprogram(name: "_read", scope: !501, file: !501, line: 37, type: !4928, scopeLine: 38, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !698, retainedNodes: !4930)
!4928 = !DISubroutineType(types: !4929)
!4929 = !{!13, !13, !506, !13}
!4930 = !{!4931, !4932, !4933}
!4931 = !DILocalVariable(name: "file", arg: 1, scope: !4927, file: !501, line: 37, type: !13)
!4932 = !DILocalVariable(name: "ptr", arg: 2, scope: !4927, file: !501, line: 37, type: !506)
!4933 = !DILocalVariable(name: "len", arg: 3, scope: !4927, file: !501, line: 37, type: !13)
!4934 = !DILocation(line: 0, scope: !4927)
!4935 = !DILocation(line: 39, column: 5, scope: !4927)
!4936 = distinct !DISubprogram(name: "_write", scope: !501, file: !501, line: 52, type: !4928, scopeLine: 53, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !698, retainedNodes: !4937)
!4937 = !{!4938, !4939, !4940, !4941}
!4938 = !DILocalVariable(name: "file", arg: 1, scope: !4936, file: !501, line: 52, type: !13)
!4939 = !DILocalVariable(name: "ptr", arg: 2, scope: !4936, file: !501, line: 52, type: !506)
!4940 = !DILocalVariable(name: "len", arg: 3, scope: !4936, file: !501, line: 52, type: !13)
!4941 = !DILocalVariable(name: "i", scope: !4936, file: !501, line: 54, type: !13)
!4942 = !DILocation(line: 0, scope: !4936)
!4943 = !DILocation(line: 56, column: 19, scope: !4944)
!4944 = distinct !DILexicalBlock(scope: !4945, file: !501, line: 56, column: 5)
!4945 = distinct !DILexicalBlock(scope: !4936, file: !501, line: 56, column: 5)
!4946 = !DILocation(line: 56, column: 5, scope: !4945)
!4947 = !DILocation(line: 57, column: 26, scope: !4948)
!4948 = distinct !DILexicalBlock(scope: !4944, file: !501, line: 56, column: 31)
!4949 = !DILocation(line: 57, column: 22, scope: !4948)
!4950 = !DILocation(line: 57, column: 9, scope: !4948)
!4951 = !DILocation(line: 56, column: 27, scope: !4944)
!4952 = distinct !{!4952, !4946, !4953}
!4953 = !DILocation(line: 58, column: 5, scope: !4945)
!4954 = !DILocation(line: 60, column: 5, scope: !4936)
!4955 = !DILocation(line: 0, scope: !500)
!4956 = !DILocation(line: 70, column: 5, scope: !500)
!4957 = !{i64 1109}
!4958 = !DILocation(line: 72, column: 14, scope: !4959)
!4959 = distinct !DILexicalBlock(scope: !500, file: !501, line: 72, column: 9)
!4960 = !DILocation(line: 72, column: 11, scope: !4959)
!4961 = !DILocation(line: 72, column: 9, scope: !500)
!4962 = !DILocation(line: 78, column: 32, scope: !4963)
!4963 = distinct !DILexicalBlock(scope: !500, file: !501, line: 78, column: 9)
!4964 = !DILocation(line: 78, column: 15, scope: !4963)
!4965 = !DILocation(line: 89, column: 1, scope: !500)
!4966 = !DILocation(line: 78, column: 9, scope: !500)
!4967 = distinct !DISubprogram(name: "_exit", scope: !501, file: !501, line: 91, type: !650, scopeLine: 92, flags: DIFlagPrototyped | DIFlagNoReturn, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !698, retainedNodes: !4968)
!4968 = !{!4969}
!4969 = !DILocalVariable(name: "__status", arg: 1, scope: !4967, file: !501, line: 91, type: !13)
!4970 = !DILocation(line: 0, scope: !4967)
!4971 = !DILocation(line: 93, column: 5, scope: !4967)
!4972 = !DILocation(line: 94, column: 5, scope: !4967)
!4973 = distinct !{!4973, !4972, !4974}
!4974 = !DILocation(line: 96, column: 5, scope: !4967)
!4975 = distinct !DISubprogram(name: "_kill", scope: !501, file: !501, line: 100, type: !4976, scopeLine: 101, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !698, retainedNodes: !4978)
!4976 = !DISubroutineType(types: !4977)
!4977 = !{!13, !13, !13}
!4978 = !{!4979, !4980}
!4979 = !DILocalVariable(name: "pid", arg: 1, scope: !4975, file: !501, line: 100, type: !13)
!4980 = !DILocalVariable(name: "sig", arg: 2, scope: !4975, file: !501, line: 100, type: !13)
!4981 = !DILocation(line: 0, scope: !4975)
!4982 = !DILocation(line: 102, column: 5, scope: !4975)
!4983 = !DILocation(line: 103, column: 5, scope: !4975)
!4984 = distinct !DISubprogram(name: "_getpid", scope: !501, file: !501, line: 107, type: !4985, scopeLine: 108, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !698, retainedNodes: !1176)
!4985 = !DISubroutineType(types: !4986)
!4986 = !{!4987}
!4987 = !DIDerivedType(tag: DW_TAG_typedef, name: "pid_t", file: !505, line: 174, baseType: !4988)
!4988 = !DIDerivedType(tag: DW_TAG_typedef, name: "__pid_t", file: !547, line: 52, baseType: !13)
!4989 = !DILocation(line: 109, column: 5, scope: !4984)
!4990 = !DILocation(line: 110, column: 5, scope: !4984)
