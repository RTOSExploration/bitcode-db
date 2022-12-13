; ModuleID = './build/wdt_feed_watchdog.elf.bc'
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
%struct._IOT_WDT_TypeDef = type { i32, i32, i32, i32, i32, i32 }
%struct.__va_list = type { i8* }
%struct.gpio_status = type { i32, i8, i8, i8 }
%struct.hal_wdt_config_t = type { i32, i32 }
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
@.str.16 = private unnamed_addr constant [25 x i8] c"ERROR: no IRQ handler! \0A\00", align 1
@g_gpt_context = internal global [5 x %struct.hal_gpt_context_t] zeroinitializer, align 4, !dbg !243
@__FUNCTION__.hal_gpt_init = private unnamed_addr constant [13 x i8] c"hal_gpt_init\00", align 1
@.str.23 = private unnamed_addr constant [18 x i8] c"Invalid port: %d.\00", align 1
@__FUNCTION__.hal_gpt_deinit = private unnamed_addr constant [15 x i8] c"hal_gpt_deinit\00", align 1
@.str.1.24 = private unnamed_addr constant [23 x i8] c"Should call  port: %d.\00", align 1
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
@s_hal_mode = internal unnamed_addr global i32 0, align 4, !dbg !407
@s_hal_enable = internal unnamed_addr global i1 false, align 1, !dbg !439
@s_hal_wdt_callback = internal unnamed_addr global void (i32)* null, align 4, !dbg !429
@.str.25 = private unnamed_addr constant [5 x i8] c"\0D\0A\0D\0A\00", align 1
@.str.1.26 = private unnamed_addr constant [20 x i8] c"welcome to main()\0D\0A\00", align 1
@.str.2.27 = private unnamed_addr constant [21 x i8] c"WDT test begins...\0D\0A\00", align 1
@.str.3.28 = private unnamed_addr constant [28 x i8] c"WDT initialization error.\0D\0A\00", align 1
@.str.4.29 = private unnamed_addr constant [20 x i8] c"WDT enable error.\0D\0A\00", align 1
@.str.5 = private unnamed_addr constant [33 x i8] c"WDT will reset in 3 seconds...\0D\0A\00", align 1
@SystemCoreClock = dso_local local_unnamed_addr global i32 40000000, align 4, !dbg !440
@System_Initialize_Done = internal global i32 0, align 4, !dbg !508
@_sbrk_r.heap_end = internal unnamed_addr global i8* null, align 4, !dbg !510
@end = external dso_local global i8, align 1
@.str.36 = private unnamed_addr constant [7 x i8] c"_exit\0A\00", align 1
@.str.1.37 = private unnamed_addr constant [10 x i8] c"_kill %d\0A\00", align 1
@.str.2.38 = private unnamed_addr constant [9 x i8] c"_getpid\0A\00", align 1
@build_date_time_str = dso_local local_unnamed_addr global [31 x i8] c"2022/12/13 07:54:08 GMT +00:00\00", align 1, !dbg !719
@sw_verno_str = dso_local local_unnamed_addr global [11 x i8] c"SDK_V4.6.1\00", align 1, !dbg !724
@hw_verno_str = dso_local local_unnamed_addr global [11 x i8] c"mt7687_hdk\00", align 1, !dbg !730

; Function Attrs: noinline nounwind optsize
define dso_local void @GPT_ResetTimer(i32 noundef %0, i32 noundef %1, i1 noundef zeroext %2) local_unnamed_addr #0 !dbg !1050 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !1054, metadata !DIExpression()), !dbg !1057
  call void @llvm.dbg.value(metadata i32 %1, metadata !1055, metadata !DIExpression()), !dbg !1057
  call void @llvm.dbg.value(metadata i1 %2, metadata !1056, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1057
  %4 = icmp ugt i32 %0, 1, !dbg !1058
  br i1 %4, label %5, label %8, !dbg !1060

5:                                                ; preds = %3
  %6 = tail call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i32 0, i32 0), i8* noundef getelementptr inbounds ([51 x i8], [51 x i8]* @.str.1, i32 0, i32 0), i32 noundef 75) #13, !dbg !1061
  br label %7, !dbg !1061

7:                                                ; preds = %5, %7
  br label %7, !dbg !1061, !llvm.loop !1063

8:                                                ; preds = %3
  switch i32 %0, label %21 [
    i32 0, label %9
    i32 1, label %15
  ], !dbg !1064

9:                                                ; preds = %8
  store volatile i32 %1, i32* inttoptr (i32 -2096824300 to i32*), align 4, !dbg !1065
  %10 = load volatile i32, i32* inttoptr (i32 -2096824304 to i32*), align 16, !dbg !1068
  br i1 %2, label %11, label %13, !dbg !1070

11:                                               ; preds = %9
  %12 = or i32 %10, 2, !dbg !1071
  store volatile i32 %12, i32* inttoptr (i32 -2096824304 to i32*), align 16, !dbg !1071
  br label %21, !dbg !1073

13:                                               ; preds = %9
  %14 = and i32 %10, -3, !dbg !1074
  store volatile i32 %14, i32* inttoptr (i32 -2096824304 to i32*), align 16, !dbg !1074
  br label %21

15:                                               ; preds = %8
  store volatile i32 %1, i32* inttoptr (i32 -2096824284 to i32*), align 4, !dbg !1076
  %16 = load volatile i32, i32* inttoptr (i32 -2096824288 to i32*), align 32, !dbg !1079
  br i1 %2, label %17, label %19, !dbg !1081

17:                                               ; preds = %15
  %18 = or i32 %16, 2, !dbg !1082
  store volatile i32 %18, i32* inttoptr (i32 -2096824288 to i32*), align 32, !dbg !1082
  br label %21, !dbg !1084

19:                                               ; preds = %15
  %20 = and i32 %16, -3, !dbg !1085
  store volatile i32 %20, i32* inttoptr (i32 -2096824288 to i32*), align 32, !dbg !1085
  br label %21

21:                                               ; preds = %8, %19, %17, %11, %13
  ret void, !dbg !1087
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.value(metadata, metadata, metadata) #1

; Function Attrs: optsize
declare dso_local i32 @printf(i8* noundef, ...) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize
define dso_local void @GPT_Start(i32 noundef %0) local_unnamed_addr #0 !dbg !1088 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !1092, metadata !DIExpression()), !dbg !1093
  switch i32 %0, label %2 [
    i32 0, label %5
    i32 1, label %9
    i32 4, label %13
  ], !dbg !1094

2:                                                ; preds = %1
  %3 = tail call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i32 0, i32 0), i8* noundef getelementptr inbounds ([51 x i8], [51 x i8]* @.str.1, i32 0, i32 0), i32 noundef 96) #13, !dbg !1095
  br label %4, !dbg !1095

4:                                                ; preds = %2, %4
  br label %4, !dbg !1095, !llvm.loop !1098

5:                                                ; preds = %1
  %6 = load volatile i32, i32* inttoptr (i32 -2096824304 to i32*), align 16, !dbg !1099
  %7 = or i32 %6, 1, !dbg !1099
  store volatile i32 %7, i32* inttoptr (i32 -2096824304 to i32*), align 16, !dbg !1099
  %8 = tail call i32 @hal_nvic_enable_irq(i32 noundef 24) #13, !dbg !1102
  br label %16, !dbg !1103

9:                                                ; preds = %1
  %10 = load volatile i32, i32* inttoptr (i32 -2096824288 to i32*), align 32, !dbg !1104
  %11 = or i32 %10, 1, !dbg !1104
  store volatile i32 %11, i32* inttoptr (i32 -2096824288 to i32*), align 32, !dbg !1104
  %12 = tail call i32 @hal_nvic_enable_irq(i32 noundef 24) #13, !dbg !1107
  br label %16, !dbg !1108

13:                                               ; preds = %1
  %14 = load volatile i32, i32* inttoptr (i32 -2096824224 to i32*), align 32, !dbg !1109
  %15 = or i32 %14, 1, !dbg !1109
  store volatile i32 %15, i32* inttoptr (i32 -2096824224 to i32*), align 32, !dbg !1109
  br label %16, !dbg !1112

16:                                               ; preds = %9, %13, %5
  ret void, !dbg !1113
}

; Function Attrs: nofree noinline norecurse nounwind optsize
define dso_local void @GPT_Stop(i32 noundef %0) local_unnamed_addr #3 !dbg !1114 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !1116, metadata !DIExpression()), !dbg !1117
  switch i32 %0, label %18 [
    i32 0, label %2
    i32 1, label %7
    i32 2, label %12
    i32 4, label %15
  ], !dbg !1118

2:                                                ; preds = %1
  %3 = load volatile i32, i32* inttoptr (i32 -2096824316 to i32*), align 4, !dbg !1119
  %4 = and i32 %3, -2, !dbg !1119
  store volatile i32 %4, i32* inttoptr (i32 -2096824316 to i32*), align 4, !dbg !1119
  %5 = load volatile i32, i32* inttoptr (i32 -2096824304 to i32*), align 16, !dbg !1122
  %6 = and i32 %5, -2, !dbg !1122
  store volatile i32 %6, i32* inttoptr (i32 -2096824304 to i32*), align 16, !dbg !1122
  store volatile i32 1, i32* inttoptr (i32 -2096824320 to i32*), align 65536, !dbg !1123
  br label %18, !dbg !1124

7:                                                ; preds = %1
  %8 = load volatile i32, i32* inttoptr (i32 -2096824316 to i32*), align 4, !dbg !1125
  %9 = and i32 %8, -3, !dbg !1125
  store volatile i32 %9, i32* inttoptr (i32 -2096824316 to i32*), align 4, !dbg !1125
  %10 = load volatile i32, i32* inttoptr (i32 -2096824288 to i32*), align 32, !dbg !1128
  %11 = and i32 %10, -2, !dbg !1128
  store volatile i32 %11, i32* inttoptr (i32 -2096824288 to i32*), align 32, !dbg !1128
  store volatile i32 2, i32* inttoptr (i32 -2096824320 to i32*), align 65536, !dbg !1129
  br label %18, !dbg !1130

12:                                               ; preds = %1
  %13 = load volatile i32, i32* inttoptr (i32 -2096824272 to i32*), align 16, !dbg !1131
  %14 = and i32 %13, -2, !dbg !1131
  store volatile i32 %14, i32* inttoptr (i32 -2096824272 to i32*), align 16, !dbg !1131
  br label %18, !dbg !1134

15:                                               ; preds = %1
  %16 = load volatile i32, i32* inttoptr (i32 -2096824224 to i32*), align 32, !dbg !1135
  %17 = and i32 %16, -2, !dbg !1135
  store volatile i32 %17, i32* inttoptr (i32 -2096824224 to i32*), align 32, !dbg !1135
  br label %18, !dbg !1138

18:                                               ; preds = %1, %7, %15, %12, %2
  ret void, !dbg !1139
}

; Function Attrs: noinline nounwind optsize
define dso_local void @GPT_INT_Handler(i32 %0) #0 !dbg !1140 {
  call void @llvm.dbg.value(metadata i32 undef, metadata !1142, metadata !DIExpression()), !dbg !1144
  call void @llvm.dbg.value(metadata i32 undef, metadata !1142, metadata !DIExpression()), !dbg !1144
  %2 = load volatile i32, i32* inttoptr (i32 -2096824320 to i32*), align 65536, !dbg !1145
  %3 = and i32 %2, 65535, !dbg !1146
  call void @llvm.dbg.value(metadata i32 %2, metadata !1143, metadata !DIExpression()), !dbg !1144
  store volatile i32 %3, i32* inttoptr (i32 -2096824320 to i32*), align 65536, !dbg !1147
  %4 = and i32 %2, 1, !dbg !1148
  %5 = icmp eq i32 %4, 0, !dbg !1148
  br i1 %5, label %6, label %9, !dbg !1150

6:                                                ; preds = %1
  %7 = and i32 %2, 2, !dbg !1151
  %8 = icmp eq i32 %7, 0, !dbg !1151
  br i1 %8, label %13, label %9, !dbg !1153

9:                                                ; preds = %6, %1
  %10 = phi i32 [ 0, %1 ], [ 1, %6 ]
  %11 = phi void ()** [ @GPTTimer.0, %1 ], [ @GPTTimer.1, %6 ]
  tail call void @clear_TMR_INT_status_bit(i32 noundef %10) #13, !dbg !1154
  %12 = load void ()*, void ()** %11, align 4, !dbg !1154
  tail call void %12() #13, !dbg !1154
  br label %13, !dbg !1155

13:                                               ; preds = %9, %6
  ret void, !dbg !1155
}

; Function Attrs: noinline nounwind optsize
define dso_local void @GPT_init(i32 noundef %0, i32 noundef %1, void ()* noundef %2) local_unnamed_addr #0 !dbg !1156 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !1160, metadata !DIExpression()), !dbg !1163
  call void @llvm.dbg.value(metadata i32 %1, metadata !1161, metadata !DIExpression()), !dbg !1163
  call void @llvm.dbg.value(metadata void ()* %2, metadata !1162, metadata !DIExpression()), !dbg !1163
  switch i32 %0, label %4 [
    i32 4, label %7
    i32 2, label %7
    i32 1, label %7
    i32 0, label %7
  ], !dbg !1164

4:                                                ; preds = %3
  %5 = tail call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i32 0, i32 0), i8* noundef getelementptr inbounds ([51 x i8], [51 x i8]* @.str.1, i32 0, i32 0), i32 noundef 149) #13, !dbg !1165
  br label %6, !dbg !1165

6:                                                ; preds = %4, %6
  br label %6, !dbg !1165, !llvm.loop !1168

7:                                                ; preds = %3, %3, %3, %3
  %8 = icmp ult i32 %0, 2, !dbg !1169
  br i1 %8, label %9, label %13, !dbg !1170

9:                                                ; preds = %7
  %10 = tail call i32 @hal_nvic_register_isr_handler(i32 noundef 24, void (i32)* noundef nonnull @GPT_INT_Handler) #13, !dbg !1172
  %11 = tail call i32 @hal_nvic_set_priority(i32 noundef 24, i32 noundef 5) #13, !dbg !1174
  %12 = tail call i32 @hal_nvic_enable_irq(i32 noundef 24) #13, !dbg !1175
  br label %13, !dbg !1176

13:                                               ; preds = %7, %9
  switch i32 %0, label %36 [
    i32 0, label %14
    i32 1, label %20
    i32 2, label %26
    i32 4, label %31
  ], !dbg !1177

14:                                               ; preds = %13
  store void ()* %2, void ()** @GPTTimer.0, align 4, !dbg !1178
  %15 = load volatile i32, i32* inttoptr (i32 -2096824316 to i32*), align 4, !dbg !1181
  %16 = or i32 %15, 1, !dbg !1181
  store volatile i32 %16, i32* inttoptr (i32 -2096824316 to i32*), align 4, !dbg !1181
  %17 = shl i32 %1, 2, !dbg !1182
  %18 = load volatile i32, i32* inttoptr (i32 -2096824304 to i32*), align 16, !dbg !1183
  %19 = or i32 %18, %17, !dbg !1183
  store volatile i32 %19, i32* inttoptr (i32 -2096824304 to i32*), align 16, !dbg !1183
  br label %36, !dbg !1184

20:                                               ; preds = %13
  store void ()* %2, void ()** @GPTTimer.1, align 4, !dbg !1185
  %21 = load volatile i32, i32* inttoptr (i32 -2096824316 to i32*), align 4, !dbg !1188
  %22 = or i32 %21, 2, !dbg !1188
  store volatile i32 %22, i32* inttoptr (i32 -2096824316 to i32*), align 4, !dbg !1188
  %23 = shl i32 %1, 2, !dbg !1189
  %24 = load volatile i32, i32* inttoptr (i32 -2096824288 to i32*), align 32, !dbg !1190
  %25 = or i32 %24, %23, !dbg !1190
  store volatile i32 %25, i32* inttoptr (i32 -2096824288 to i32*), align 32, !dbg !1190
  br label %36, !dbg !1191

26:                                               ; preds = %13
  %27 = shl i32 %1, 1, !dbg !1192
  %28 = or i32 %27, 1, !dbg !1195
  %29 = load volatile i32, i32* inttoptr (i32 -2096824272 to i32*), align 16, !dbg !1196
  %30 = or i32 %29, %28, !dbg !1196
  store volatile i32 %30, i32* inttoptr (i32 -2096824272 to i32*), align 16, !dbg !1196
  br label %36, !dbg !1197

31:                                               ; preds = %13
  %32 = shl i32 %1, 1, !dbg !1198
  %33 = or i32 %32, 1, !dbg !1201
  %34 = load volatile i32, i32* inttoptr (i32 -2096824224 to i32*), align 32, !dbg !1202
  %35 = or i32 %34, %33, !dbg !1202
  store volatile i32 %35, i32* inttoptr (i32 -2096824224 to i32*), align 32, !dbg !1202
  store volatile i32 0, i32* inttoptr (i32 -2096824220 to i32*), align 4, !dbg !1203
  br label %36, !dbg !1204

36:                                               ; preds = %13, %20, %31, %26, %14
  ret void, !dbg !1205
}

; Function Attrs: noinline nounwind optsize
define dso_local i32 @GPT_return_current_count(i32 noundef %0) local_unnamed_addr #0 !dbg !1206 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !1210, metadata !DIExpression()), !dbg !1212
  switch i32 %0, label %2 [
    i32 0, label %8
    i32 1, label %5
    i32 2, label %6
    i32 4, label %7
  ], !dbg !1213

2:                                                ; preds = %1
  %3 = tail call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i32 0, i32 0), i8* noundef getelementptr inbounds ([51 x i8], [51 x i8]* @.str.1, i32 0, i32 0), i32 noundef 177) #13, !dbg !1214
  br label %4, !dbg !1214

4:                                                ; preds = %4, %2
  br label %4, !dbg !1214, !llvm.loop !1217

5:                                                ; preds = %1
  call void @llvm.dbg.value(metadata i32 undef, metadata !1211, metadata !DIExpression()), !dbg !1212
  br label %8, !dbg !1218

6:                                                ; preds = %1
  call void @llvm.dbg.value(metadata i32 undef, metadata !1211, metadata !DIExpression()), !dbg !1212
  br label %8, !dbg !1222

7:                                                ; preds = %1
  call void @llvm.dbg.value(metadata i32 undef, metadata !1211, metadata !DIExpression()), !dbg !1212
  br label %8, !dbg !1225

8:                                                ; preds = %1, %5, %7, %6
  %9 = phi i32* [ inttoptr (i32 -2096824252 to i32*), %5 ], [ inttoptr (i32 -2096824268 to i32*), %6 ], [ inttoptr (i32 -2096824216 to i32*), %7 ], [ inttoptr (i32 -2096824256 to i32*), %1 ]
  %10 = load volatile i32, i32* %9, align 4, !dbg !1228
  call void @llvm.dbg.value(metadata i32 %10, metadata !1211, metadata !DIExpression()), !dbg !1212
  ret i32 %10, !dbg !1229
}

; Function Attrs: noinline nounwind optsize
define dso_local void @CM4_GPT2Init() local_unnamed_addr #0 !dbg !1230 {
  tail call void @GPT_init(i32 noundef 2, i32 noundef 1, void ()* noundef null) #14, !dbg !1232
  ret void, !dbg !1233
}

; Function Attrs: noinline nounwind optsize
define dso_local void @CM4_GPT4Init() local_unnamed_addr #0 !dbg !1234 {
  tail call void @GPT_init(i32 noundef 4, i32 noundef 1, void ()* noundef null) #14, !dbg !1235
  ret void, !dbg !1236
}

; Function Attrs: nofree noinline norecurse nounwind optsize
define dso_local i32 @halGPIO_ConfDirection(i32 noundef %0, i8 noundef zeroext %1) local_unnamed_addr #3 !dbg !1237 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !1242, metadata !DIExpression()), !dbg !1247
  call void @llvm.dbg.value(metadata i8 %1, metadata !1243, metadata !DIExpression()), !dbg !1247
  %3 = lshr i32 %0, 5, !dbg !1248
  call void @llvm.dbg.value(metadata i32 %3, metadata !1244, metadata !DIExpression(DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 16, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1247
  %4 = trunc i32 %0 to i16, !dbg !1249
  %5 = and i16 %4, 31, !dbg !1249
  call void @llvm.dbg.value(metadata i16 %4, metadata !1246, metadata !DIExpression(DW_OP_constu, 31, DW_OP_and, DW_OP_stack_value)), !dbg !1247
  %6 = trunc i32 %3 to i16, !dbg !1250
  switch i16 %6, label %97 [
    i16 0, label %7
    i16 1, label %70
  ], !dbg !1250

7:                                                ; preds = %2
  %8 = icmp eq i8 %1, 1, !dbg !1251
  %9 = zext i16 %5 to i32, !dbg !1254
  %10 = icmp ult i16 %5, 27, !dbg !1254
  br i1 %8, label %11, label %46, !dbg !1255

11:                                               ; preds = %7
  br i1 %10, label %12, label %17, !dbg !1256

12:                                               ; preds = %11
  %13 = shl nuw i32 1, %9, !dbg !1258
  %14 = xor i32 %13, -1, !dbg !1261
  %15 = load volatile i32, i32* inttoptr (i32 -2097106688 to i32*), align 256, !dbg !1262
  %16 = and i32 %15, %14, !dbg !1262
  store volatile i32 %16, i32* inttoptr (i32 -2097106688 to i32*), align 256, !dbg !1262
  br label %44, !dbg !1263

17:                                               ; preds = %11
  %18 = trunc i32 %0 to i5, !dbg !1264
  switch i5 %18, label %39 [
    i5 -5, label %19
    i5 -4, label %24
    i5 -3, label %29
    i5 -2, label %34
  ], !dbg !1264

19:                                               ; preds = %17
  %20 = load volatile i32, i32* inttoptr (i32 -2130563000 to i32*), align 8, !dbg !1265
  %21 = and i32 %20, -3, !dbg !1265
  store volatile i32 %21, i32* inttoptr (i32 -2130563000 to i32*), align 8, !dbg !1265
  %22 = load volatile i32, i32* inttoptr (i32 -2130563000 to i32*), align 8, !dbg !1268
  %23 = or i32 %22, 2048, !dbg !1268
  store volatile i32 %23, i32* inttoptr (i32 -2130563000 to i32*), align 8, !dbg !1268
  br label %44, !dbg !1269

24:                                               ; preds = %17
  %25 = load volatile i32, i32* inttoptr (i32 -2130562996 to i32*), align 4, !dbg !1270
  %26 = and i32 %25, -3, !dbg !1270
  store volatile i32 %26, i32* inttoptr (i32 -2130562996 to i32*), align 4, !dbg !1270
  %27 = load volatile i32, i32* inttoptr (i32 -2130562996 to i32*), align 4, !dbg !1273
  %28 = or i32 %27, 2048, !dbg !1273
  store volatile i32 %28, i32* inttoptr (i32 -2130562996 to i32*), align 4, !dbg !1273
  br label %44, !dbg !1274

29:                                               ; preds = %17
  %30 = load volatile i32, i32* inttoptr (i32 -2130562980 to i32*), align 4, !dbg !1275
  %31 = and i32 %30, -3, !dbg !1275
  store volatile i32 %31, i32* inttoptr (i32 -2130562980 to i32*), align 4, !dbg !1275
  %32 = load volatile i32, i32* inttoptr (i32 -2130562980 to i32*), align 4, !dbg !1278
  %33 = or i32 %32, 2048, !dbg !1278
  store volatile i32 %33, i32* inttoptr (i32 -2130562980 to i32*), align 4, !dbg !1278
  br label %44, !dbg !1279

34:                                               ; preds = %17
  %35 = load volatile i32, i32* inttoptr (i32 -2130562984 to i32*), align 8, !dbg !1280
  %36 = and i32 %35, -3, !dbg !1280
  store volatile i32 %36, i32* inttoptr (i32 -2130562984 to i32*), align 8, !dbg !1280
  %37 = load volatile i32, i32* inttoptr (i32 -2130562984 to i32*), align 8, !dbg !1283
  %38 = or i32 %37, 2048, !dbg !1283
  store volatile i32 %38, i32* inttoptr (i32 -2130562984 to i32*), align 8, !dbg !1283
  br label %44, !dbg !1284

39:                                               ; preds = %17
  %40 = load volatile i32, i32* inttoptr (i32 -2130562988 to i32*), align 4, !dbg !1285
  %41 = and i32 %40, -3, !dbg !1285
  store volatile i32 %41, i32* inttoptr (i32 -2130562988 to i32*), align 4, !dbg !1285
  %42 = load volatile i32, i32* inttoptr (i32 -2130562988 to i32*), align 4, !dbg !1288
  %43 = or i32 %42, 2048, !dbg !1288
  store volatile i32 %43, i32* inttoptr (i32 -2130562988 to i32*), align 4, !dbg !1288
  br label %44, !dbg !1289

44:                                               ; preds = %19, %29, %39, %34, %24, %12
  %45 = shl nuw i32 1, %9, !dbg !1290
  store volatile i32 %45, i32* inttoptr (i32 -2097106796 to i32*), align 4, !dbg !1290
  br label %97, !dbg !1291

46:                                               ; preds = %7
  br i1 %10, label %47, label %51, !dbg !1292

47:                                               ; preds = %46
  %48 = shl nuw i32 1, %9, !dbg !1294
  %49 = load volatile i32, i32* inttoptr (i32 -2097106688 to i32*), align 256, !dbg !1297
  %50 = or i32 %49, %48, !dbg !1297
  store volatile i32 %50, i32* inttoptr (i32 -2097106688 to i32*), align 256, !dbg !1297
  br label %68, !dbg !1298

51:                                               ; preds = %46
  %52 = trunc i32 %0 to i5, !dbg !1299
  switch i5 %52, label %65 [
    i5 -5, label %53
    i5 -4, label %56
    i5 -3, label %59
    i5 -2, label %62
  ], !dbg !1299

53:                                               ; preds = %51
  %54 = load volatile i32, i32* inttoptr (i32 -2130563000 to i32*), align 8, !dbg !1300
  %55 = or i32 %54, 2050, !dbg !1300
  store volatile i32 %55, i32* inttoptr (i32 -2130563000 to i32*), align 8, !dbg !1300
  br label %68, !dbg !1303

56:                                               ; preds = %51
  %57 = load volatile i32, i32* inttoptr (i32 -2130562996 to i32*), align 4, !dbg !1304
  %58 = or i32 %57, 2050, !dbg !1304
  store volatile i32 %58, i32* inttoptr (i32 -2130562996 to i32*), align 4, !dbg !1304
  br label %68, !dbg !1307

59:                                               ; preds = %51
  %60 = load volatile i32, i32* inttoptr (i32 -2130562980 to i32*), align 4, !dbg !1308
  %61 = or i32 %60, 2050, !dbg !1308
  store volatile i32 %61, i32* inttoptr (i32 -2130562980 to i32*), align 4, !dbg !1308
  br label %68, !dbg !1311

62:                                               ; preds = %51
  %63 = load volatile i32, i32* inttoptr (i32 -2130562984 to i32*), align 8, !dbg !1312
  %64 = or i32 %63, 2050, !dbg !1312
  store volatile i32 %64, i32* inttoptr (i32 -2130562984 to i32*), align 8, !dbg !1312
  br label %68, !dbg !1315

65:                                               ; preds = %51
  %66 = load volatile i32, i32* inttoptr (i32 -2130562988 to i32*), align 4, !dbg !1316
  %67 = or i32 %66, 2050, !dbg !1316
  store volatile i32 %67, i32* inttoptr (i32 -2130562988 to i32*), align 4, !dbg !1316
  br label %68, !dbg !1319

68:                                               ; preds = %53, %59, %65, %62, %56, %47
  %69 = shl nuw i32 1, %9, !dbg !1320
  store volatile i32 %69, i32* inttoptr (i32 -2097106792 to i32*), align 8, !dbg !1320
  br label %97

70:                                               ; preds = %2
  %71 = icmp eq i8 %1, 1, !dbg !1321
  %72 = zext i16 %5 to i32, !dbg !1323
  %73 = icmp eq i16 %5, 0, !dbg !1323
  br i1 %71, label %74, label %87, !dbg !1324

74:                                               ; preds = %70
  br i1 %73, label %80, label %75, !dbg !1325

75:                                               ; preds = %74
  %76 = shl nuw i32 1, %72, !dbg !1327
  %77 = xor i32 %76, -1, !dbg !1330
  %78 = load volatile i32, i32* inttoptr (i32 -2097106684 to i32*), align 4, !dbg !1331
  %79 = and i32 %78, %77, !dbg !1331
  store volatile i32 %79, i32* inttoptr (i32 -2097106684 to i32*), align 4, !dbg !1331
  br label %85, !dbg !1332

80:                                               ; preds = %74
  %81 = load volatile i32, i32* inttoptr (i32 -2130562992 to i32*), align 16, !dbg !1333
  %82 = and i32 %81, -3, !dbg !1333
  store volatile i32 %82, i32* inttoptr (i32 -2130562992 to i32*), align 16, !dbg !1333
  %83 = load volatile i32, i32* inttoptr (i32 -2130562992 to i32*), align 16, !dbg !1335
  %84 = or i32 %83, 2048, !dbg !1335
  store volatile i32 %84, i32* inttoptr (i32 -2130562992 to i32*), align 16, !dbg !1335
  br label %85

85:                                               ; preds = %80, %75
  %86 = phi i32 [ 1, %80 ], [ %76, %75 ], !dbg !1336
  store volatile i32 %86, i32* inttoptr (i32 -2097106780 to i32*), align 4, !dbg !1336
  br label %97, !dbg !1337

87:                                               ; preds = %70
  br i1 %73, label %92, label %88, !dbg !1338

88:                                               ; preds = %87
  %89 = shl nuw i32 1, %72, !dbg !1340
  %90 = load volatile i32, i32* inttoptr (i32 -2097106684 to i32*), align 4, !dbg !1343
  %91 = or i32 %90, %89, !dbg !1343
  store volatile i32 %91, i32* inttoptr (i32 -2097106684 to i32*), align 4, !dbg !1343
  br label %95, !dbg !1344

92:                                               ; preds = %87
  %93 = load volatile i32, i32* inttoptr (i32 -2130562992 to i32*), align 16, !dbg !1345
  %94 = or i32 %93, 2050, !dbg !1345
  store volatile i32 %94, i32* inttoptr (i32 -2130562992 to i32*), align 16, !dbg !1345
  br label %95

95:                                               ; preds = %92, %88
  %96 = phi i32 [ 1, %92 ], [ %89, %88 ], !dbg !1347
  store volatile i32 %96, i32* inttoptr (i32 -2097106776 to i32*), align 8, !dbg !1347
  br label %97

97:                                               ; preds = %68, %44, %95, %85, %2
  %98 = phi i32 [ -1, %2 ], [ 0, %85 ], [ 0, %95 ], [ 0, %44 ], [ 0, %68 ], !dbg !1247
  ret i32 %98, !dbg !1348
}

; Function Attrs: nofree noinline norecurse nounwind optsize
define dso_local i32 @halGPO_Write(i32 noundef %0, i8 noundef zeroext %1) local_unnamed_addr #3 !dbg !1349 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !1351, metadata !DIExpression()), !dbg !1355
  call void @llvm.dbg.value(metadata i8 %1, metadata !1352, metadata !DIExpression()), !dbg !1355
  %3 = lshr i32 %0, 5, !dbg !1356
  call void @llvm.dbg.value(metadata i32 %3, metadata !1353, metadata !DIExpression(DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 16, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1355
  %4 = trunc i32 %0 to i16, !dbg !1357
  %5 = and i16 %4, 31, !dbg !1357
  call void @llvm.dbg.value(metadata i16 %5, metadata !1354, metadata !DIExpression()), !dbg !1355
  %6 = trunc i32 %3 to i16, !dbg !1358
  switch i16 %6, label %19 [
    i16 0, label %7
    i16 1, label %13
  ], !dbg !1358

7:                                                ; preds = %2
  %8 = icmp eq i8 %1, 0, !dbg !1359
  %9 = zext i16 %5 to i32, !dbg !1362
  %10 = shl nuw i32 1, %9, !dbg !1362
  br i1 %8, label %12, label %11, !dbg !1363

11:                                               ; preds = %7
  store volatile i32 %10, i32* inttoptr (i32 -2097106844 to i32*), align 4, !dbg !1364
  br label %19, !dbg !1366

12:                                               ; preds = %7
  store volatile i32 %10, i32* inttoptr (i32 -2097106840 to i32*), align 8, !dbg !1367
  br label %19

13:                                               ; preds = %2
  %14 = icmp eq i8 %1, 0, !dbg !1369
  %15 = zext i16 %5 to i32, !dbg !1371
  %16 = shl nuw i32 1, %15, !dbg !1371
  br i1 %14, label %18, label %17, !dbg !1372

17:                                               ; preds = %13
  store volatile i32 %16, i32* inttoptr (i32 -2097106828 to i32*), align 4, !dbg !1373
  br label %19, !dbg !1375

18:                                               ; preds = %13
  store volatile i32 %16, i32* inttoptr (i32 -2097106824 to i32*), align 8, !dbg !1376
  br label %19

19:                                               ; preds = %12, %11, %18, %17, %2
  %20 = phi i32 [ -1, %2 ], [ 0, %17 ], [ 0, %18 ], [ 0, %11 ], [ 0, %12 ], !dbg !1355
  ret i32 %20, !dbg !1378
}

; Function Attrs: mustprogress nofree noinline norecurse nounwind optsize willreturn
define dso_local zeroext i8 @halgetGPIO_DOUT(i32 noundef %0) local_unnamed_addr #4 !dbg !1379 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !1383, metadata !DIExpression()), !dbg !1387
  %2 = lshr i32 %0, 5, !dbg !1388
  call void @llvm.dbg.value(metadata i32 %2, metadata !1384, metadata !DIExpression(DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 16, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1387
  %3 = and i32 %0, 31, !dbg !1389
  call void @llvm.dbg.value(metadata i32 %0, metadata !1385, metadata !DIExpression(DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 16, DW_ATE_unsigned, DW_OP_constu, 31, DW_OP_and, DW_OP_stack_value)), !dbg !1387
  call void @llvm.dbg.value(metadata i8 0, metadata !1386, metadata !DIExpression()), !dbg !1387
  %4 = trunc i32 %2 to i16, !dbg !1390
  switch i16 %4, label %12 [
    i16 0, label %6
    i16 1, label %5
  ], !dbg !1390

5:                                                ; preds = %1
  call void @llvm.dbg.value(metadata i32 %9, metadata !1386, metadata !DIExpression(DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_constu, 1, DW_OP_and, DW_OP_stack_value)), !dbg !1387
  br label %6, !dbg !1391

6:                                                ; preds = %1, %5
  %7 = phi i32* [ inttoptr (i32 -2097106832 to i32*), %5 ], [ inttoptr (i32 -2097106848 to i32*), %1 ]
  %8 = load volatile i32, i32* %7, align 16, !dbg !1393
  %9 = lshr i32 %8, %3, !dbg !1393
  %10 = trunc i32 %9 to i8, !dbg !1393
  %11 = and i8 %10, 1, !dbg !1393
  call void @llvm.dbg.value(metadata i8 %11, metadata !1386, metadata !DIExpression()), !dbg !1387
  br label %12, !dbg !1394

12:                                               ; preds = %1, %6
  %13 = phi i8 [ %11, %6 ], [ 0, %1 ], !dbg !1387
  ret i8 %13, !dbg !1395
}

; Function Attrs: mustprogress nofree noinline norecurse nounwind optsize willreturn
define dso_local zeroext i8 @halgetGPIO_DIN(i32 noundef %0) local_unnamed_addr #4 !dbg !1396 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !1398, metadata !DIExpression()), !dbg !1402
  %2 = lshr i32 %0, 5, !dbg !1403
  call void @llvm.dbg.value(metadata i32 %2, metadata !1399, metadata !DIExpression(DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 16, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1402
  %3 = and i32 %0, 31, !dbg !1404
  call void @llvm.dbg.value(metadata i32 %0, metadata !1400, metadata !DIExpression(DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 16, DW_ATE_unsigned, DW_OP_constu, 31, DW_OP_and, DW_OP_stack_value)), !dbg !1402
  call void @llvm.dbg.value(metadata i8 0, metadata !1401, metadata !DIExpression()), !dbg !1402
  %4 = trunc i32 %2 to i16, !dbg !1405
  switch i16 %4, label %12 [
    i16 0, label %6
    i16 1, label %5
  ], !dbg !1405

5:                                                ; preds = %1
  call void @llvm.dbg.value(metadata i32 %9, metadata !1401, metadata !DIExpression(DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_constu, 1, DW_OP_and, DW_OP_stack_value)), !dbg !1402
  br label %6, !dbg !1406

6:                                                ; preds = %1, %5
  %7 = phi i32* [ inttoptr (i32 -2097106748 to i32*), %5 ], [ inttoptr (i32 -2097106752 to i32*), %1 ]
  %8 = load volatile i32, i32* %7, align 4, !dbg !1408
  %9 = lshr i32 %8, %3, !dbg !1408
  %10 = trunc i32 %9 to i8, !dbg !1408
  %11 = and i8 %10, 1, !dbg !1408
  call void @llvm.dbg.value(metadata i8 %11, metadata !1401, metadata !DIExpression()), !dbg !1402
  br label %12, !dbg !1409

12:                                               ; preds = %1, %6
  %13 = phi i8 [ %11, %6 ], [ 0, %1 ], !dbg !1402
  ret i8 %13, !dbg !1410
}

; Function Attrs: mustprogress nofree noinline norecurse nounwind optsize willreturn
define dso_local zeroext i8 @halgetGPIO_OutEnable(i32 noundef %0) local_unnamed_addr #4 !dbg !1411 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !1413, metadata !DIExpression()), !dbg !1417
  %2 = lshr i32 %0, 5, !dbg !1418
  call void @llvm.dbg.value(metadata i32 %2, metadata !1414, metadata !DIExpression(DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 16, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1417
  %3 = and i32 %0, 31, !dbg !1419
  call void @llvm.dbg.value(metadata i32 %0, metadata !1415, metadata !DIExpression(DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 16, DW_ATE_unsigned, DW_OP_constu, 31, DW_OP_and, DW_OP_stack_value)), !dbg !1417
  call void @llvm.dbg.value(metadata i8 0, metadata !1416, metadata !DIExpression()), !dbg !1417
  %4 = trunc i32 %2 to i16, !dbg !1420
  switch i16 %4, label %12 [
    i16 0, label %6
    i16 1, label %5
  ], !dbg !1420

5:                                                ; preds = %1
  call void @llvm.dbg.value(metadata i32 %9, metadata !1416, metadata !DIExpression(DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_constu, 1, DW_OP_and, DW_OP_stack_value)), !dbg !1417
  br label %6, !dbg !1421

6:                                                ; preds = %1, %5
  %7 = phi i32* [ inttoptr (i32 -2097106784 to i32*), %5 ], [ inttoptr (i32 -2097106800 to i32*), %1 ]
  %8 = load volatile i32, i32* %7, align 16, !dbg !1423
  %9 = lshr i32 %8, %3, !dbg !1423
  %10 = trunc i32 %9 to i8, !dbg !1423
  %11 = and i8 %10, 1, !dbg !1423
  call void @llvm.dbg.value(metadata i8 %11, metadata !1416, metadata !DIExpression()), !dbg !1417
  br label %12, !dbg !1424

12:                                               ; preds = %1, %6
  %13 = phi i8 [ %11, %6 ], [ 0, %1 ], !dbg !1417
  ret i8 %13, !dbg !1425
}

; Function Attrs: nofree noinline norecurse nounwind optsize
define dso_local i32 @halGPIO_PullUp_SET(i32 noundef %0) local_unnamed_addr #3 !dbg !1426 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !1430, metadata !DIExpression()), !dbg !1433
  %2 = lshr i32 %0, 5, !dbg !1434
  call void @llvm.dbg.value(metadata i32 %2, metadata !1431, metadata !DIExpression(DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 16, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1433
  %3 = trunc i32 %0 to i16, !dbg !1435
  %4 = and i16 %3, 31, !dbg !1435
  call void @llvm.dbg.value(metadata i16 %3, metadata !1432, metadata !DIExpression(DW_OP_constu, 31, DW_OP_and, DW_OP_stack_value)), !dbg !1433
  %5 = tail call i32 @halGPIO_PullDown_RESET(i32 noundef %0) #14, !dbg !1436
  %6 = trunc i32 %2 to i16, !dbg !1437
  switch i16 %6, label %49 [
    i16 0, label %7
    i16 1, label %39
  ], !dbg !1437

7:                                                ; preds = %1
  %8 = icmp ult i16 %4, 27, !dbg !1438
  br i1 %8, label %9, label %12, !dbg !1441

9:                                                ; preds = %7
  %10 = zext i16 %4 to i32, !dbg !1442
  %11 = shl nuw nsw i32 1, %10, !dbg !1443
  store volatile i32 %11, i32* inttoptr (i32 -2097106940 to i32*), align 4, !dbg !1443
  br label %49, !dbg !1445

12:                                               ; preds = %7
  %13 = trunc i32 %0 to i5, !dbg !1446
  switch i5 %13, label %34 [
    i5 -5, label %14
    i5 -4, label %19
    i5 -3, label %24
    i5 -2, label %29
  ], !dbg !1446

14:                                               ; preds = %12
  %15 = load volatile i32, i32* inttoptr (i32 -2130563000 to i32*), align 8, !dbg !1447
  %16 = and i32 %15, -29, !dbg !1447
  store volatile i32 %16, i32* inttoptr (i32 -2130563000 to i32*), align 8, !dbg !1447
  %17 = load volatile i32, i32* inttoptr (i32 -2130563000 to i32*), align 8, !dbg !1450
  %18 = or i32 %17, 2052, !dbg !1450
  store volatile i32 %18, i32* inttoptr (i32 -2130563000 to i32*), align 8, !dbg !1450
  br label %49, !dbg !1451

19:                                               ; preds = %12
  %20 = load volatile i32, i32* inttoptr (i32 -2130562996 to i32*), align 4, !dbg !1452
  %21 = and i32 %20, -29, !dbg !1452
  store volatile i32 %21, i32* inttoptr (i32 -2130562996 to i32*), align 4, !dbg !1452
  %22 = load volatile i32, i32* inttoptr (i32 -2130562996 to i32*), align 4, !dbg !1455
  %23 = or i32 %22, 2052, !dbg !1455
  store volatile i32 %23, i32* inttoptr (i32 -2130562996 to i32*), align 4, !dbg !1455
  br label %49, !dbg !1456

24:                                               ; preds = %12
  %25 = load volatile i32, i32* inttoptr (i32 -2130562980 to i32*), align 4, !dbg !1457
  %26 = and i32 %25, -29, !dbg !1457
  store volatile i32 %26, i32* inttoptr (i32 -2130562980 to i32*), align 4, !dbg !1457
  %27 = load volatile i32, i32* inttoptr (i32 -2130562980 to i32*), align 4, !dbg !1460
  %28 = or i32 %27, 2052, !dbg !1460
  store volatile i32 %28, i32* inttoptr (i32 -2130562980 to i32*), align 4, !dbg !1460
  br label %49, !dbg !1461

29:                                               ; preds = %12
  %30 = load volatile i32, i32* inttoptr (i32 -2130562984 to i32*), align 8, !dbg !1462
  %31 = and i32 %30, -29, !dbg !1462
  store volatile i32 %31, i32* inttoptr (i32 -2130562984 to i32*), align 8, !dbg !1462
  %32 = load volatile i32, i32* inttoptr (i32 -2130562984 to i32*), align 8, !dbg !1465
  %33 = or i32 %32, 2052, !dbg !1465
  store volatile i32 %33, i32* inttoptr (i32 -2130562984 to i32*), align 8, !dbg !1465
  br label %49, !dbg !1466

34:                                               ; preds = %12
  %35 = load volatile i32, i32* inttoptr (i32 -2130562988 to i32*), align 4, !dbg !1467
  %36 = and i32 %35, -29, !dbg !1467
  store volatile i32 %36, i32* inttoptr (i32 -2130562988 to i32*), align 4, !dbg !1467
  %37 = load volatile i32, i32* inttoptr (i32 -2130562988 to i32*), align 4, !dbg !1470
  %38 = or i32 %37, 2052, !dbg !1470
  store volatile i32 %38, i32* inttoptr (i32 -2130562988 to i32*), align 4, !dbg !1470
  br label %49, !dbg !1471

39:                                               ; preds = %1
  %40 = icmp eq i16 %4, 0, !dbg !1472
  br i1 %40, label %41, label %46, !dbg !1474

41:                                               ; preds = %39
  %42 = load volatile i32, i32* inttoptr (i32 -2130562992 to i32*), align 16, !dbg !1475
  %43 = and i32 %42, -29, !dbg !1475
  store volatile i32 %43, i32* inttoptr (i32 -2130562992 to i32*), align 16, !dbg !1475
  %44 = load volatile i32, i32* inttoptr (i32 -2130562992 to i32*), align 16, !dbg !1477
  %45 = or i32 %44, 2052, !dbg !1477
  store volatile i32 %45, i32* inttoptr (i32 -2130562992 to i32*), align 16, !dbg !1477
  br label %49, !dbg !1478

46:                                               ; preds = %39
  %47 = zext i16 %4 to i32, !dbg !1479
  %48 = shl nuw i32 1, %47, !dbg !1479
  store volatile i32 %48, i32* inttoptr (i32 -2097106924 to i32*), align 4, !dbg !1479
  br label %49

49:                                               ; preds = %14, %24, %34, %29, %19, %9, %46, %41, %1
  %50 = phi i32 [ -1, %1 ], [ 0, %41 ], [ 0, %46 ], [ 0, %9 ], [ 0, %19 ], [ 0, %29 ], [ 0, %34 ], [ 0, %24 ], [ 0, %14 ], !dbg !1433
  ret i32 %50, !dbg !1481
}

; Function Attrs: nofree noinline norecurse nounwind optsize
define dso_local i32 @halGPIO_PullDown_RESET(i32 noundef %0) local_unnamed_addr #3 !dbg !1482 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !1484, metadata !DIExpression()), !dbg !1487
  %2 = lshr i32 %0, 5, !dbg !1488
  call void @llvm.dbg.value(metadata i32 %2, metadata !1485, metadata !DIExpression(DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 16, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1487
  %3 = trunc i32 %0 to i16, !dbg !1489
  %4 = and i16 %3, 31, !dbg !1489
  call void @llvm.dbg.value(metadata i16 %3, metadata !1486, metadata !DIExpression(DW_OP_constu, 31, DW_OP_and, DW_OP_stack_value)), !dbg !1487
  %5 = trunc i32 %2 to i16, !dbg !1490
  switch i16 %5, label %48 [
    i16 0, label %6
    i16 1, label %38
  ], !dbg !1490

6:                                                ; preds = %1
  %7 = icmp ult i16 %4, 27, !dbg !1491
  br i1 %7, label %8, label %11, !dbg !1494

8:                                                ; preds = %6
  %9 = zext i16 %4 to i32, !dbg !1495
  %10 = shl nuw nsw i32 1, %9, !dbg !1496
  store volatile i32 %10, i32* inttoptr (i32 -2097106888 to i32*), align 8, !dbg !1496
  br label %48, !dbg !1498

11:                                               ; preds = %6
  %12 = trunc i32 %0 to i5, !dbg !1499
  switch i5 %12, label %33 [
    i5 -5, label %13
    i5 -4, label %18
    i5 -3, label %23
    i5 -2, label %28
  ], !dbg !1499

13:                                               ; preds = %11
  %14 = load volatile i32, i32* inttoptr (i32 -2130563000 to i32*), align 8, !dbg !1500
  %15 = and i32 %14, -29, !dbg !1500
  store volatile i32 %15, i32* inttoptr (i32 -2130563000 to i32*), align 8, !dbg !1500
  %16 = load volatile i32, i32* inttoptr (i32 -2130563000 to i32*), align 8, !dbg !1503
  %17 = or i32 %16, 2048, !dbg !1503
  store volatile i32 %17, i32* inttoptr (i32 -2130563000 to i32*), align 8, !dbg !1503
  br label %48, !dbg !1504

18:                                               ; preds = %11
  %19 = load volatile i32, i32* inttoptr (i32 -2130562996 to i32*), align 4, !dbg !1505
  %20 = and i32 %19, -29, !dbg !1505
  store volatile i32 %20, i32* inttoptr (i32 -2130562996 to i32*), align 4, !dbg !1505
  %21 = load volatile i32, i32* inttoptr (i32 -2130562996 to i32*), align 4, !dbg !1508
  %22 = or i32 %21, 2048, !dbg !1508
  store volatile i32 %22, i32* inttoptr (i32 -2130562996 to i32*), align 4, !dbg !1508
  br label %48, !dbg !1509

23:                                               ; preds = %11
  %24 = load volatile i32, i32* inttoptr (i32 -2130562980 to i32*), align 4, !dbg !1510
  %25 = and i32 %24, -29, !dbg !1510
  store volatile i32 %25, i32* inttoptr (i32 -2130562980 to i32*), align 4, !dbg !1510
  %26 = load volatile i32, i32* inttoptr (i32 -2130562980 to i32*), align 4, !dbg !1513
  %27 = or i32 %26, 2048, !dbg !1513
  store volatile i32 %27, i32* inttoptr (i32 -2130562980 to i32*), align 4, !dbg !1513
  br label %48, !dbg !1514

28:                                               ; preds = %11
  %29 = load volatile i32, i32* inttoptr (i32 -2130562984 to i32*), align 8, !dbg !1515
  %30 = and i32 %29, -29, !dbg !1515
  store volatile i32 %30, i32* inttoptr (i32 -2130562984 to i32*), align 8, !dbg !1515
  %31 = load volatile i32, i32* inttoptr (i32 -2130562984 to i32*), align 8, !dbg !1518
  %32 = or i32 %31, 2048, !dbg !1518
  store volatile i32 %32, i32* inttoptr (i32 -2130562984 to i32*), align 8, !dbg !1518
  br label %48, !dbg !1519

33:                                               ; preds = %11
  %34 = load volatile i32, i32* inttoptr (i32 -2130562988 to i32*), align 4, !dbg !1520
  %35 = and i32 %34, -29, !dbg !1520
  store volatile i32 %35, i32* inttoptr (i32 -2130562988 to i32*), align 4, !dbg !1520
  %36 = load volatile i32, i32* inttoptr (i32 -2130562988 to i32*), align 4, !dbg !1523
  %37 = or i32 %36, 2048, !dbg !1523
  store volatile i32 %37, i32* inttoptr (i32 -2130562988 to i32*), align 4, !dbg !1523
  br label %48, !dbg !1524

38:                                               ; preds = %1
  %39 = icmp eq i16 %4, 0, !dbg !1525
  br i1 %39, label %40, label %45, !dbg !1527

40:                                               ; preds = %38
  %41 = load volatile i32, i32* inttoptr (i32 -2130562992 to i32*), align 16, !dbg !1528
  %42 = and i32 %41, -29, !dbg !1528
  store volatile i32 %42, i32* inttoptr (i32 -2130562992 to i32*), align 16, !dbg !1528
  %43 = load volatile i32, i32* inttoptr (i32 -2130562992 to i32*), align 16, !dbg !1530
  %44 = or i32 %43, 2048, !dbg !1530
  store volatile i32 %44, i32* inttoptr (i32 -2130562992 to i32*), align 16, !dbg !1530
  br label %48, !dbg !1531

45:                                               ; preds = %38
  %46 = zext i16 %4 to i32, !dbg !1532
  %47 = shl nuw i32 1, %46, !dbg !1532
  store volatile i32 %47, i32* inttoptr (i32 -2097106872 to i32*), align 8, !dbg !1532
  br label %48

48:                                               ; preds = %13, %23, %33, %28, %18, %8, %45, %40, %1
  %49 = phi i32 [ -1, %1 ], [ 0, %40 ], [ 0, %45 ], [ 0, %8 ], [ 0, %18 ], [ 0, %28 ], [ 0, %33 ], [ 0, %23 ], [ 0, %13 ], !dbg !1487
  ret i32 %49, !dbg !1534
}

; Function Attrs: nofree noinline norecurse nounwind optsize
define dso_local i32 @halGPIO_PullUp_RESET(i32 noundef %0) local_unnamed_addr #3 !dbg !1535 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !1537, metadata !DIExpression()), !dbg !1540
  %2 = lshr i32 %0, 5, !dbg !1541
  call void @llvm.dbg.value(metadata i32 %2, metadata !1538, metadata !DIExpression(DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 16, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1540
  %3 = trunc i32 %0 to i16, !dbg !1542
  %4 = and i16 %3, 31, !dbg !1542
  call void @llvm.dbg.value(metadata i16 %3, metadata !1539, metadata !DIExpression(DW_OP_constu, 31, DW_OP_and, DW_OP_stack_value)), !dbg !1540
  %5 = trunc i32 %2 to i16, !dbg !1543
  switch i16 %5, label %48 [
    i16 0, label %6
    i16 1, label %38
  ], !dbg !1543

6:                                                ; preds = %1
  %7 = icmp ult i16 %4, 27, !dbg !1544
  br i1 %7, label %8, label %11, !dbg !1547

8:                                                ; preds = %6
  %9 = zext i16 %4 to i32, !dbg !1548
  %10 = shl nuw nsw i32 1, %9, !dbg !1549
  store volatile i32 %10, i32* inttoptr (i32 -2097106936 to i32*), align 8, !dbg !1549
  br label %48, !dbg !1551

11:                                               ; preds = %6
  %12 = trunc i32 %0 to i5, !dbg !1552
  switch i5 %12, label %33 [
    i5 -5, label %13
    i5 -4, label %18
    i5 -3, label %23
    i5 -2, label %28
  ], !dbg !1552

13:                                               ; preds = %11
  %14 = load volatile i32, i32* inttoptr (i32 -2130563000 to i32*), align 8, !dbg !1553
  %15 = and i32 %14, -29, !dbg !1553
  store volatile i32 %15, i32* inttoptr (i32 -2130563000 to i32*), align 8, !dbg !1553
  %16 = load volatile i32, i32* inttoptr (i32 -2130563000 to i32*), align 8, !dbg !1556
  %17 = or i32 %16, 2048, !dbg !1556
  store volatile i32 %17, i32* inttoptr (i32 -2130563000 to i32*), align 8, !dbg !1556
  br label %48, !dbg !1557

18:                                               ; preds = %11
  %19 = load volatile i32, i32* inttoptr (i32 -2130562996 to i32*), align 4, !dbg !1558
  %20 = and i32 %19, -29, !dbg !1558
  store volatile i32 %20, i32* inttoptr (i32 -2130562996 to i32*), align 4, !dbg !1558
  %21 = load volatile i32, i32* inttoptr (i32 -2130562996 to i32*), align 4, !dbg !1561
  %22 = or i32 %21, 2048, !dbg !1561
  store volatile i32 %22, i32* inttoptr (i32 -2130562996 to i32*), align 4, !dbg !1561
  br label %48, !dbg !1562

23:                                               ; preds = %11
  %24 = load volatile i32, i32* inttoptr (i32 -2130562980 to i32*), align 4, !dbg !1563
  %25 = and i32 %24, -29, !dbg !1563
  store volatile i32 %25, i32* inttoptr (i32 -2130562980 to i32*), align 4, !dbg !1563
  %26 = load volatile i32, i32* inttoptr (i32 -2130562980 to i32*), align 4, !dbg !1566
  %27 = or i32 %26, 2048, !dbg !1566
  store volatile i32 %27, i32* inttoptr (i32 -2130562980 to i32*), align 4, !dbg !1566
  br label %48, !dbg !1567

28:                                               ; preds = %11
  %29 = load volatile i32, i32* inttoptr (i32 -2130562984 to i32*), align 8, !dbg !1568
  %30 = and i32 %29, -29, !dbg !1568
  store volatile i32 %30, i32* inttoptr (i32 -2130562984 to i32*), align 8, !dbg !1568
  %31 = load volatile i32, i32* inttoptr (i32 -2130562984 to i32*), align 8, !dbg !1571
  %32 = or i32 %31, 2048, !dbg !1571
  store volatile i32 %32, i32* inttoptr (i32 -2130562984 to i32*), align 8, !dbg !1571
  br label %48, !dbg !1572

33:                                               ; preds = %11
  %34 = load volatile i32, i32* inttoptr (i32 -2130562988 to i32*), align 4, !dbg !1573
  %35 = and i32 %34, -29, !dbg !1573
  store volatile i32 %35, i32* inttoptr (i32 -2130562988 to i32*), align 4, !dbg !1573
  %36 = load volatile i32, i32* inttoptr (i32 -2130562988 to i32*), align 4, !dbg !1576
  %37 = or i32 %36, 2048, !dbg !1576
  store volatile i32 %37, i32* inttoptr (i32 -2130562988 to i32*), align 4, !dbg !1576
  br label %48, !dbg !1577

38:                                               ; preds = %1
  %39 = icmp eq i16 %4, 0, !dbg !1578
  br i1 %39, label %40, label %45, !dbg !1580

40:                                               ; preds = %38
  %41 = load volatile i32, i32* inttoptr (i32 -2130562992 to i32*), align 16, !dbg !1581
  %42 = and i32 %41, -29, !dbg !1581
  store volatile i32 %42, i32* inttoptr (i32 -2130562992 to i32*), align 16, !dbg !1581
  %43 = load volatile i32, i32* inttoptr (i32 -2130562992 to i32*), align 16, !dbg !1583
  %44 = or i32 %43, 2048, !dbg !1583
  store volatile i32 %44, i32* inttoptr (i32 -2130562992 to i32*), align 16, !dbg !1583
  br label %48, !dbg !1584

45:                                               ; preds = %38
  %46 = zext i16 %4 to i32, !dbg !1585
  %47 = shl nuw i32 1, %46, !dbg !1585
  store volatile i32 %47, i32* inttoptr (i32 -2097106920 to i32*), align 8, !dbg !1585
  br label %48

48:                                               ; preds = %13, %23, %33, %28, %18, %8, %45, %40, %1
  %49 = phi i32 [ -1, %1 ], [ 0, %40 ], [ 0, %45 ], [ 0, %8 ], [ 0, %18 ], [ 0, %28 ], [ 0, %33 ], [ 0, %23 ], [ 0, %13 ], !dbg !1540
  ret i32 %49, !dbg !1587
}

; Function Attrs: nofree noinline norecurse nounwind optsize
define dso_local i32 @halGPIO_PullDown_SET(i32 noundef %0) local_unnamed_addr #3 !dbg !1588 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !1590, metadata !DIExpression()), !dbg !1593
  %2 = lshr i32 %0, 5, !dbg !1594
  call void @llvm.dbg.value(metadata i32 %2, metadata !1591, metadata !DIExpression(DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 16, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1593
  %3 = trunc i32 %0 to i16, !dbg !1595
  %4 = and i16 %3, 31, !dbg !1595
  call void @llvm.dbg.value(metadata i16 %3, metadata !1592, metadata !DIExpression(DW_OP_constu, 31, DW_OP_and, DW_OP_stack_value)), !dbg !1593
  %5 = tail call i32 @halGPIO_PullUp_RESET(i32 noundef %0) #14, !dbg !1596
  %6 = trunc i32 %2 to i16, !dbg !1597
  switch i16 %6, label %49 [
    i16 0, label %7
    i16 1, label %39
  ], !dbg !1597

7:                                                ; preds = %1
  %8 = icmp ult i16 %4, 27, !dbg !1598
  br i1 %8, label %9, label %12, !dbg !1601

9:                                                ; preds = %7
  %10 = zext i16 %4 to i32, !dbg !1602
  %11 = shl nuw nsw i32 1, %10, !dbg !1603
  store volatile i32 %11, i32* inttoptr (i32 -2097106892 to i32*), align 4, !dbg !1603
  br label %49, !dbg !1605

12:                                               ; preds = %7
  %13 = trunc i32 %0 to i5, !dbg !1606
  switch i5 %13, label %34 [
    i5 -5, label %14
    i5 -4, label %19
    i5 -3, label %24
    i5 -2, label %29
  ], !dbg !1606

14:                                               ; preds = %12
  %15 = load volatile i32, i32* inttoptr (i32 -2130563000 to i32*), align 8, !dbg !1607
  %16 = and i32 %15, -29, !dbg !1607
  store volatile i32 %16, i32* inttoptr (i32 -2130563000 to i32*), align 8, !dbg !1607
  %17 = load volatile i32, i32* inttoptr (i32 -2130563000 to i32*), align 8, !dbg !1610
  %18 = or i32 %17, 2068, !dbg !1610
  store volatile i32 %18, i32* inttoptr (i32 -2130563000 to i32*), align 8, !dbg !1610
  br label %49, !dbg !1611

19:                                               ; preds = %12
  %20 = load volatile i32, i32* inttoptr (i32 -2130562996 to i32*), align 4, !dbg !1612
  %21 = and i32 %20, -29, !dbg !1612
  store volatile i32 %21, i32* inttoptr (i32 -2130562996 to i32*), align 4, !dbg !1612
  %22 = load volatile i32, i32* inttoptr (i32 -2130562996 to i32*), align 4, !dbg !1615
  %23 = or i32 %22, 2068, !dbg !1615
  store volatile i32 %23, i32* inttoptr (i32 -2130562996 to i32*), align 4, !dbg !1615
  br label %49, !dbg !1616

24:                                               ; preds = %12
  %25 = load volatile i32, i32* inttoptr (i32 -2130562980 to i32*), align 4, !dbg !1617
  %26 = and i32 %25, -29, !dbg !1617
  store volatile i32 %26, i32* inttoptr (i32 -2130562980 to i32*), align 4, !dbg !1617
  %27 = load volatile i32, i32* inttoptr (i32 -2130562980 to i32*), align 4, !dbg !1620
  %28 = or i32 %27, 2068, !dbg !1620
  store volatile i32 %28, i32* inttoptr (i32 -2130562980 to i32*), align 4, !dbg !1620
  br label %49, !dbg !1621

29:                                               ; preds = %12
  %30 = load volatile i32, i32* inttoptr (i32 -2130562984 to i32*), align 8, !dbg !1622
  %31 = and i32 %30, -29, !dbg !1622
  store volatile i32 %31, i32* inttoptr (i32 -2130562984 to i32*), align 8, !dbg !1622
  %32 = load volatile i32, i32* inttoptr (i32 -2130562984 to i32*), align 8, !dbg !1625
  %33 = or i32 %32, 2068, !dbg !1625
  store volatile i32 %33, i32* inttoptr (i32 -2130562984 to i32*), align 8, !dbg !1625
  br label %49, !dbg !1626

34:                                               ; preds = %12
  %35 = load volatile i32, i32* inttoptr (i32 -2130562988 to i32*), align 4, !dbg !1627
  %36 = and i32 %35, -29, !dbg !1627
  store volatile i32 %36, i32* inttoptr (i32 -2130562988 to i32*), align 4, !dbg !1627
  %37 = load volatile i32, i32* inttoptr (i32 -2130562988 to i32*), align 4, !dbg !1630
  %38 = or i32 %37, 2068, !dbg !1630
  store volatile i32 %38, i32* inttoptr (i32 -2130562988 to i32*), align 4, !dbg !1630
  br label %49, !dbg !1631

39:                                               ; preds = %1
  %40 = icmp eq i16 %4, 0, !dbg !1632
  br i1 %40, label %41, label %46, !dbg !1634

41:                                               ; preds = %39
  %42 = load volatile i32, i32* inttoptr (i32 -2130562992 to i32*), align 16, !dbg !1635
  %43 = and i32 %42, -29, !dbg !1635
  store volatile i32 %43, i32* inttoptr (i32 -2130562992 to i32*), align 16, !dbg !1635
  %44 = load volatile i32, i32* inttoptr (i32 -2130562992 to i32*), align 16, !dbg !1637
  %45 = or i32 %44, 2068, !dbg !1637
  store volatile i32 %45, i32* inttoptr (i32 -2130562992 to i32*), align 16, !dbg !1637
  br label %49, !dbg !1638

46:                                               ; preds = %39
  %47 = zext i16 %4 to i32, !dbg !1639
  %48 = shl nuw i32 1, %47, !dbg !1639
  store volatile i32 %48, i32* inttoptr (i32 -2097106876 to i32*), align 4, !dbg !1639
  br label %49

49:                                               ; preds = %14, %24, %34, %29, %19, %9, %46, %41, %1
  %50 = phi i32 [ -1, %1 ], [ 0, %41 ], [ 0, %46 ], [ 0, %9 ], [ 0, %19 ], [ 0, %29 ], [ 0, %34 ], [ 0, %24 ], [ 0, %14 ], !dbg !1593
  ret i32 %50, !dbg !1641
}

; Function Attrs: nofree noinline norecurse nounwind optsize
define dso_local i32 @halGPIO_SetDriving(i32 noundef %0, i8 noundef zeroext %1) local_unnamed_addr #3 !dbg !1642 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !1644, metadata !DIExpression()), !dbg !1648
  call void @llvm.dbg.value(metadata i8 %1, metadata !1645, metadata !DIExpression()), !dbg !1648
  %3 = lshr i32 %0, 4, !dbg !1649
  call void @llvm.dbg.value(metadata i32 %3, metadata !1646, metadata !DIExpression(DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 16, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1648
  %4 = trunc i32 %0 to i16, !dbg !1650
  %5 = and i16 %4, 15, !dbg !1650
  call void @llvm.dbg.value(metadata i16 %4, metadata !1647, metadata !DIExpression(DW_OP_constu, 15, DW_OP_and, DW_OP_stack_value)), !dbg !1648
  %6 = trunc i32 %3 to i16, !dbg !1651
  switch i16 %6, label %131 [
    i16 0, label %7
    i16 1, label %20
    i16 2, label %92
    i16 3, label %118
  ], !dbg !1651

7:                                                ; preds = %2
  %8 = shl nuw nsw i16 %5, 1, !dbg !1652
  %9 = zext i16 %8 to i32, !dbg !1652
  %10 = shl nuw i32 3, %9, !dbg !1654
  %11 = xor i32 %10, -1, !dbg !1655
  %12 = load volatile i32, i32* inttoptr (i32 -2097106736 to i32*), align 16, !dbg !1656
  %13 = and i32 %12, %11, !dbg !1656
  store volatile i32 %13, i32* inttoptr (i32 -2097106736 to i32*), align 16, !dbg !1656
  %14 = lshr i8 %1, 2, !dbg !1657
  %15 = zext i8 %14 to i32, !dbg !1657
  %16 = add nsw i32 %15, -1, !dbg !1658
  %17 = shl i32 %16, %9, !dbg !1659
  %18 = load volatile i32, i32* inttoptr (i32 -2097106736 to i32*), align 16, !dbg !1660
  %19 = or i32 %18, %17, !dbg !1660
  store volatile i32 %19, i32* inttoptr (i32 -2097106736 to i32*), align 16, !dbg !1660
  br label %131, !dbg !1661

20:                                               ; preds = %2
  %21 = icmp ult i16 %5, 11, !dbg !1662
  br i1 %21, label %22, label %35, !dbg !1664

22:                                               ; preds = %20
  %23 = shl nuw nsw i16 %5, 1, !dbg !1665
  %24 = zext i16 %23 to i32, !dbg !1665
  %25 = shl nuw nsw i32 3, %24, !dbg !1667
  %26 = xor i32 %25, -1, !dbg !1668
  %27 = load volatile i32, i32* inttoptr (i32 -2097106732 to i32*), align 4, !dbg !1669
  %28 = and i32 %27, %26, !dbg !1669
  store volatile i32 %28, i32* inttoptr (i32 -2097106732 to i32*), align 4, !dbg !1669
  %29 = lshr i8 %1, 2, !dbg !1670
  %30 = zext i8 %29 to i32, !dbg !1670
  %31 = add nsw i32 %30, -1, !dbg !1671
  %32 = shl nsw i32 %31, %24, !dbg !1672
  %33 = load volatile i32, i32* inttoptr (i32 -2097106732 to i32*), align 4, !dbg !1673
  %34 = or i32 %33, %32, !dbg !1673
  store volatile i32 %34, i32* inttoptr (i32 -2097106732 to i32*), align 4, !dbg !1673
  br label %131, !dbg !1674

35:                                               ; preds = %20
  %36 = trunc i32 %0 to i4, !dbg !1675
  switch i4 %36, label %81 [
    i4 -5, label %37
    i4 -4, label %48
    i4 -3, label %59
    i4 -2, label %70
  ], !dbg !1675

37:                                               ; preds = %35
  %38 = load volatile i32, i32* inttoptr (i32 -2130563000 to i32*), align 8, !dbg !1676
  %39 = and i32 %38, -449, !dbg !1676
  store volatile i32 %39, i32* inttoptr (i32 -2130563000 to i32*), align 8, !dbg !1676
  %40 = lshr i8 %1, 1, !dbg !1679
  %41 = zext i8 %40 to i32, !dbg !1679
  %42 = shl nuw nsw i32 %41, 6, !dbg !1680
  %43 = add nsw i32 %42, -64, !dbg !1680
  %44 = load volatile i32, i32* inttoptr (i32 -2130563000 to i32*), align 8, !dbg !1681
  %45 = or i32 %44, %43, !dbg !1681
  store volatile i32 %45, i32* inttoptr (i32 -2130563000 to i32*), align 8, !dbg !1681
  %46 = load volatile i32, i32* inttoptr (i32 -2130563000 to i32*), align 8, !dbg !1682
  %47 = or i32 %46, 2048, !dbg !1682
  store volatile i32 %47, i32* inttoptr (i32 -2130563000 to i32*), align 8, !dbg !1682
  br label %131, !dbg !1683

48:                                               ; preds = %35
  %49 = load volatile i32, i32* inttoptr (i32 -2130562996 to i32*), align 4, !dbg !1684
  %50 = and i32 %49, -449, !dbg !1684
  store volatile i32 %50, i32* inttoptr (i32 -2130562996 to i32*), align 4, !dbg !1684
  %51 = lshr i8 %1, 1, !dbg !1687
  %52 = zext i8 %51 to i32, !dbg !1687
  %53 = shl nuw nsw i32 %52, 6, !dbg !1688
  %54 = add nsw i32 %53, -64, !dbg !1688
  %55 = load volatile i32, i32* inttoptr (i32 -2130562996 to i32*), align 4, !dbg !1689
  %56 = or i32 %55, %54, !dbg !1689
  store volatile i32 %56, i32* inttoptr (i32 -2130562996 to i32*), align 4, !dbg !1689
  %57 = load volatile i32, i32* inttoptr (i32 -2130562996 to i32*), align 4, !dbg !1690
  %58 = or i32 %57, 2048, !dbg !1690
  store volatile i32 %58, i32* inttoptr (i32 -2130562996 to i32*), align 4, !dbg !1690
  br label %131, !dbg !1691

59:                                               ; preds = %35
  %60 = load volatile i32, i32* inttoptr (i32 -2130562980 to i32*), align 4, !dbg !1692
  %61 = and i32 %60, -449, !dbg !1692
  store volatile i32 %61, i32* inttoptr (i32 -2130562980 to i32*), align 4, !dbg !1692
  %62 = lshr i8 %1, 1, !dbg !1695
  %63 = zext i8 %62 to i32, !dbg !1695
  %64 = shl nuw nsw i32 %63, 6, !dbg !1696
  %65 = add nsw i32 %64, -64, !dbg !1696
  %66 = load volatile i32, i32* inttoptr (i32 -2130562980 to i32*), align 4, !dbg !1697
  %67 = or i32 %66, %65, !dbg !1697
  store volatile i32 %67, i32* inttoptr (i32 -2130562980 to i32*), align 4, !dbg !1697
  %68 = load volatile i32, i32* inttoptr (i32 -2130562980 to i32*), align 4, !dbg !1698
  %69 = or i32 %68, 2048, !dbg !1698
  store volatile i32 %69, i32* inttoptr (i32 -2130562980 to i32*), align 4, !dbg !1698
  br label %131, !dbg !1699

70:                                               ; preds = %35
  %71 = load volatile i32, i32* inttoptr (i32 -2130562984 to i32*), align 8, !dbg !1700
  %72 = and i32 %71, -449, !dbg !1700
  store volatile i32 %72, i32* inttoptr (i32 -2130562984 to i32*), align 8, !dbg !1700
  %73 = lshr i8 %1, 1, !dbg !1703
  %74 = zext i8 %73 to i32, !dbg !1703
  %75 = shl nuw nsw i32 %74, 6, !dbg !1704
  %76 = add nsw i32 %75, -64, !dbg !1704
  %77 = load volatile i32, i32* inttoptr (i32 -2130562984 to i32*), align 8, !dbg !1705
  %78 = or i32 %77, %76, !dbg !1705
  store volatile i32 %78, i32* inttoptr (i32 -2130562984 to i32*), align 8, !dbg !1705
  %79 = load volatile i32, i32* inttoptr (i32 -2130562984 to i32*), align 8, !dbg !1706
  %80 = or i32 %79, 2048, !dbg !1706
  store volatile i32 %80, i32* inttoptr (i32 -2130562984 to i32*), align 8, !dbg !1706
  br label %131, !dbg !1707

81:                                               ; preds = %35
  %82 = load volatile i32, i32* inttoptr (i32 -2130562988 to i32*), align 4, !dbg !1708
  %83 = and i32 %82, -449, !dbg !1708
  store volatile i32 %83, i32* inttoptr (i32 -2130562988 to i32*), align 4, !dbg !1708
  %84 = lshr i8 %1, 1, !dbg !1711
  %85 = zext i8 %84 to i32, !dbg !1711
  %86 = shl nuw nsw i32 %85, 6, !dbg !1712
  %87 = add nsw i32 %86, -64, !dbg !1712
  %88 = load volatile i32, i32* inttoptr (i32 -2130562988 to i32*), align 4, !dbg !1713
  %89 = or i32 %88, %87, !dbg !1713
  store volatile i32 %89, i32* inttoptr (i32 -2130562988 to i32*), align 4, !dbg !1713
  %90 = load volatile i32, i32* inttoptr (i32 -2130562988 to i32*), align 4, !dbg !1714
  %91 = or i32 %90, 2048, !dbg !1714
  store volatile i32 %91, i32* inttoptr (i32 -2130562988 to i32*), align 4, !dbg !1714
  br label %131, !dbg !1715

92:                                               ; preds = %2
  %93 = icmp eq i16 %5, 0, !dbg !1716
  br i1 %93, label %94, label %105, !dbg !1718

94:                                               ; preds = %92
  %95 = load volatile i32, i32* inttoptr (i32 -2130562992 to i32*), align 16, !dbg !1719
  %96 = and i32 %95, -449, !dbg !1719
  store volatile i32 %96, i32* inttoptr (i32 -2130562992 to i32*), align 16, !dbg !1719
  %97 = lshr i8 %1, 1, !dbg !1721
  %98 = zext i8 %97 to i32, !dbg !1721
  %99 = shl nuw nsw i32 %98, 6, !dbg !1722
  %100 = add nsw i32 %99, -64, !dbg !1722
  %101 = load volatile i32, i32* inttoptr (i32 -2130562992 to i32*), align 16, !dbg !1723
  %102 = or i32 %101, %100, !dbg !1723
  store volatile i32 %102, i32* inttoptr (i32 -2130562992 to i32*), align 16, !dbg !1723
  %103 = load volatile i32, i32* inttoptr (i32 -2130562992 to i32*), align 16, !dbg !1724
  %104 = or i32 %103, 2048, !dbg !1724
  store volatile i32 %104, i32* inttoptr (i32 -2130562992 to i32*), align 16, !dbg !1724
  br label %131, !dbg !1725

105:                                              ; preds = %92
  %106 = shl nuw nsw i16 %5, 1, !dbg !1726
  %107 = zext i16 %106 to i32, !dbg !1726
  %108 = shl nuw i32 3, %107, !dbg !1728
  %109 = xor i32 %108, -1, !dbg !1729
  %110 = load volatile i32, i32* inttoptr (i32 -2097106728 to i32*), align 8, !dbg !1730
  %111 = and i32 %110, %109, !dbg !1730
  store volatile i32 %111, i32* inttoptr (i32 -2097106728 to i32*), align 8, !dbg !1730
  %112 = lshr i8 %1, 2, !dbg !1731
  %113 = zext i8 %112 to i32, !dbg !1731
  %114 = add nsw i32 %113, -1, !dbg !1732
  %115 = shl i32 %114, %107, !dbg !1733
  %116 = load volatile i32, i32* inttoptr (i32 -2097106728 to i32*), align 8, !dbg !1734
  %117 = or i32 %116, %115, !dbg !1734
  store volatile i32 %117, i32* inttoptr (i32 -2097106728 to i32*), align 8, !dbg !1734
  br label %131

118:                                              ; preds = %2
  %119 = shl nuw nsw i16 %5, 1, !dbg !1735
  %120 = zext i16 %119 to i32, !dbg !1735
  %121 = shl nuw i32 3, %120, !dbg !1736
  %122 = xor i32 %121, -1, !dbg !1737
  %123 = load volatile i32, i32* inttoptr (i32 -2097106724 to i32*), align 4, !dbg !1738
  %124 = and i32 %123, %122, !dbg !1738
  store volatile i32 %124, i32* inttoptr (i32 -2097106724 to i32*), align 4, !dbg !1738
  %125 = lshr i8 %1, 2, !dbg !1739
  %126 = zext i8 %125 to i32, !dbg !1739
  %127 = add nsw i32 %126, -1, !dbg !1740
  %128 = shl i32 %127, %120, !dbg !1741
  %129 = load volatile i32, i32* inttoptr (i32 -2097106724 to i32*), align 4, !dbg !1742
  %130 = or i32 %129, %128, !dbg !1742
  store volatile i32 %130, i32* inttoptr (i32 -2097106724 to i32*), align 4, !dbg !1742
  br label %131, !dbg !1743

131:                                              ; preds = %7, %118, %37, %59, %81, %70, %48, %22, %105, %94, %2
  %132 = phi i32 [ -1, %2 ], [ 0, %94 ], [ 0, %105 ], [ 0, %22 ], [ 0, %48 ], [ 0, %70 ], [ 0, %81 ], [ 0, %59 ], [ 0, %37 ], [ 0, %118 ], [ 0, %7 ], !dbg !1648
  ret i32 %132, !dbg !1744
}

; Function Attrs: mustprogress nofree noinline norecurse nounwind optsize willreturn
define dso_local i32 @halGPIO_GetDriving(i32 noundef %0, i8* nocapture noundef writeonly %1) local_unnamed_addr #4 !dbg !1745 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !1750, metadata !DIExpression()), !dbg !1755
  call void @llvm.dbg.value(metadata i8* %1, metadata !1751, metadata !DIExpression()), !dbg !1755
  %3 = lshr i32 %0, 4, !dbg !1756
  call void @llvm.dbg.value(metadata i32 %3, metadata !1752, metadata !DIExpression(DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 16, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1755
  %4 = trunc i32 %0 to i16, !dbg !1757
  %5 = and i16 %4, 15, !dbg !1757
  call void @llvm.dbg.value(metadata i16 %4, metadata !1753, metadata !DIExpression(DW_OP_constu, 15, DW_OP_and, DW_OP_stack_value)), !dbg !1755
  %6 = trunc i32 %3 to i16, !dbg !1758
  switch i16 %6, label %91 [
    i16 0, label %7
    i16 1, label %17
    i16 2, label %61
    i16 3, label %79
  ], !dbg !1758

7:                                                ; preds = %2
  %8 = load volatile i32, i32* inttoptr (i32 -2097106736 to i32*), align 16, !dbg !1759
  call void @llvm.dbg.value(metadata i32 %8, metadata !1754, metadata !DIExpression()), !dbg !1755
  %9 = shl nuw nsw i16 %5, 1, !dbg !1761
  %10 = zext i16 %9 to i32, !dbg !1761
  %11 = shl nuw i32 3, %10, !dbg !1762
  %12 = and i32 %8, %11, !dbg !1763
  call void @llvm.dbg.value(metadata i32 %12, metadata !1754, metadata !DIExpression()), !dbg !1755
  %13 = lshr i32 %12, %10, !dbg !1764
  %14 = trunc i32 %13 to i8, !dbg !1765
  %15 = shl i8 %14, 2, !dbg !1765
  %16 = add i8 %15, 4, !dbg !1765
  br label %89, !dbg !1766

17:                                               ; preds = %2
  %18 = icmp ult i16 %5, 11, !dbg !1767
  br i1 %18, label %19, label %29, !dbg !1769

19:                                               ; preds = %17
  %20 = load volatile i32, i32* inttoptr (i32 -2097106732 to i32*), align 4, !dbg !1770
  call void @llvm.dbg.value(metadata i32 %20, metadata !1754, metadata !DIExpression()), !dbg !1755
  %21 = shl nuw nsw i16 %5, 1, !dbg !1772
  %22 = zext i16 %21 to i32, !dbg !1772
  %23 = shl nuw nsw i32 3, %22, !dbg !1773
  %24 = and i32 %20, %23, !dbg !1774
  call void @llvm.dbg.value(metadata i32 %24, metadata !1754, metadata !DIExpression()), !dbg !1755
  %25 = lshr i32 %24, %22, !dbg !1775
  %26 = trunc i32 %25 to i8, !dbg !1776
  %27 = shl i8 %26, 2, !dbg !1776
  %28 = add i8 %27, 4, !dbg !1776
  br label %89, !dbg !1777

29:                                               ; preds = %17
  %30 = trunc i32 %0 to i4, !dbg !1778
  switch i4 %30, label %55 [
    i4 -5, label %31
    i4 -4, label %37
    i4 -3, label %43
    i4 -2, label %49
  ], !dbg !1778

31:                                               ; preds = %29
  %32 = load volatile i32, i32* inttoptr (i32 -2130563000 to i32*), align 8, !dbg !1779
  call void @llvm.dbg.value(metadata i32 %32, metadata !1754, metadata !DIExpression()), !dbg !1755
  call void @llvm.dbg.value(metadata i32 %32, metadata !1754, metadata !DIExpression(DW_OP_constu, 448, DW_OP_and, DW_OP_stack_value)), !dbg !1755
  %33 = lshr i32 %32, 5, !dbg !1782
  %34 = trunc i32 %33 to i8, !dbg !1783
  %35 = and i8 %34, 14, !dbg !1783
  %36 = add nuw nsw i8 %35, 2, !dbg !1783
  br label %89, !dbg !1784

37:                                               ; preds = %29
  %38 = load volatile i32, i32* inttoptr (i32 -2130562996 to i32*), align 4, !dbg !1785
  call void @llvm.dbg.value(metadata i32 %38, metadata !1754, metadata !DIExpression()), !dbg !1755
  call void @llvm.dbg.value(metadata i32 %38, metadata !1754, metadata !DIExpression(DW_OP_constu, 448, DW_OP_and, DW_OP_stack_value)), !dbg !1755
  %39 = lshr i32 %38, 5, !dbg !1788
  %40 = trunc i32 %39 to i8, !dbg !1789
  %41 = and i8 %40, 14, !dbg !1789
  %42 = add nuw nsw i8 %41, 2, !dbg !1789
  br label %89, !dbg !1790

43:                                               ; preds = %29
  %44 = load volatile i32, i32* inttoptr (i32 -2130562980 to i32*), align 4, !dbg !1791
  call void @llvm.dbg.value(metadata i32 %44, metadata !1754, metadata !DIExpression()), !dbg !1755
  call void @llvm.dbg.value(metadata i32 %44, metadata !1754, metadata !DIExpression(DW_OP_constu, 448, DW_OP_and, DW_OP_stack_value)), !dbg !1755
  %45 = lshr i32 %44, 5, !dbg !1794
  %46 = trunc i32 %45 to i8, !dbg !1795
  %47 = and i8 %46, 14, !dbg !1795
  %48 = add nuw nsw i8 %47, 2, !dbg !1795
  br label %89, !dbg !1796

49:                                               ; preds = %29
  %50 = load volatile i32, i32* inttoptr (i32 -2130562984 to i32*), align 8, !dbg !1797
  call void @llvm.dbg.value(metadata i32 %50, metadata !1754, metadata !DIExpression()), !dbg !1755
  call void @llvm.dbg.value(metadata i32 %50, metadata !1754, metadata !DIExpression(DW_OP_constu, 448, DW_OP_and, DW_OP_stack_value)), !dbg !1755
  %51 = lshr i32 %50, 5, !dbg !1800
  %52 = trunc i32 %51 to i8, !dbg !1801
  %53 = and i8 %52, 14, !dbg !1801
  %54 = add nuw nsw i8 %53, 2, !dbg !1801
  br label %89, !dbg !1802

55:                                               ; preds = %29
  %56 = load volatile i32, i32* inttoptr (i32 -2130562988 to i32*), align 4, !dbg !1803
  call void @llvm.dbg.value(metadata i32 %56, metadata !1754, metadata !DIExpression()), !dbg !1755
  call void @llvm.dbg.value(metadata i32 %56, metadata !1754, metadata !DIExpression(DW_OP_constu, 448, DW_OP_and, DW_OP_stack_value)), !dbg !1755
  %57 = lshr i32 %56, 5, !dbg !1806
  %58 = trunc i32 %57 to i8, !dbg !1807
  %59 = and i8 %58, 14, !dbg !1807
  %60 = add nuw nsw i8 %59, 2, !dbg !1807
  br label %89, !dbg !1808

61:                                               ; preds = %2
  %62 = icmp eq i16 %5, 0, !dbg !1809
  br i1 %62, label %63, label %69, !dbg !1811

63:                                               ; preds = %61
  %64 = load volatile i32, i32* inttoptr (i32 -2130562992 to i32*), align 16, !dbg !1812
  call void @llvm.dbg.value(metadata i32 %64, metadata !1754, metadata !DIExpression()), !dbg !1755
  call void @llvm.dbg.value(metadata i32 %64, metadata !1754, metadata !DIExpression(DW_OP_constu, 448, DW_OP_and, DW_OP_stack_value)), !dbg !1755
  %65 = lshr i32 %64, 5, !dbg !1814
  %66 = trunc i32 %65 to i8, !dbg !1815
  %67 = and i8 %66, 14, !dbg !1815
  %68 = add nuw nsw i8 %67, 2, !dbg !1815
  br label %89, !dbg !1816

69:                                               ; preds = %61
  %70 = load volatile i32, i32* inttoptr (i32 -2097106728 to i32*), align 8, !dbg !1817
  call void @llvm.dbg.value(metadata i32 %70, metadata !1754, metadata !DIExpression()), !dbg !1755
  %71 = shl nuw nsw i16 %5, 1, !dbg !1819
  %72 = zext i16 %71 to i32, !dbg !1819
  %73 = shl nuw i32 3, %72, !dbg !1820
  %74 = and i32 %70, %73, !dbg !1821
  call void @llvm.dbg.value(metadata i32 %74, metadata !1754, metadata !DIExpression()), !dbg !1755
  %75 = lshr i32 %74, %72, !dbg !1822
  %76 = trunc i32 %75 to i8, !dbg !1823
  %77 = shl i8 %76, 2, !dbg !1823
  %78 = add i8 %77, 4, !dbg !1823
  br label %89

79:                                               ; preds = %2
  %80 = load volatile i32, i32* inttoptr (i32 -2097106724 to i32*), align 4, !dbg !1824
  call void @llvm.dbg.value(metadata i32 %80, metadata !1754, metadata !DIExpression()), !dbg !1755
  %81 = shl nuw nsw i16 %5, 1, !dbg !1825
  %82 = zext i16 %81 to i32, !dbg !1825
  %83 = shl nuw i32 3, %82, !dbg !1826
  %84 = and i32 %80, %83, !dbg !1827
  call void @llvm.dbg.value(metadata i32 %84, metadata !1754, metadata !DIExpression()), !dbg !1755
  %85 = lshr i32 %84, %82, !dbg !1828
  %86 = trunc i32 %85 to i8, !dbg !1829
  %87 = shl i8 %86, 2, !dbg !1829
  %88 = add i8 %87, 4, !dbg !1829
  br label %89, !dbg !1830

89:                                               ; preds = %63, %69, %19, %37, %49, %55, %43, %31, %79, %7
  %90 = phi i8 [ %16, %7 ], [ %88, %79 ], [ %36, %31 ], [ %48, %43 ], [ %60, %55 ], [ %54, %49 ], [ %42, %37 ], [ %28, %19 ], [ %78, %69 ], [ %68, %63 ]
  store i8 %90, i8* %1, align 1, !dbg !1831
  br label %91, !dbg !1832

91:                                               ; preds = %89, %2
  %92 = phi i32 [ -1, %2 ], [ 0, %89 ], !dbg !1755
  ret i32 %92, !dbg !1832
}

; Function Attrs: nofree noinline norecurse nounwind optsize
define dso_local void @topPAD_Control_GPIO(i32 noundef %0, i32 noundef %1) local_unnamed_addr #3 !dbg !1833 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !1838, metadata !DIExpression()), !dbg !1842
  call void @llvm.dbg.value(metadata i32 %1, metadata !1839, metadata !DIExpression()), !dbg !1842
  %3 = lshr i32 %0, 5, !dbg !1843
  call void @llvm.dbg.value(metadata i32 %3, metadata !1840, metadata !DIExpression(DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 16, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1842
  %4 = trunc i32 %0 to i16, !dbg !1844
  %5 = and i16 %4, 31, !dbg !1844
  call void @llvm.dbg.value(metadata i16 %5, metadata !1841, metadata !DIExpression()), !dbg !1842
  switch i32 %1, label %32 [
    i32 1, label %6
    i32 0, label %18
  ], !dbg !1845

6:                                                ; preds = %2
  call void @llvm.dbg.value(metadata i32 %3, metadata !1840, metadata !DIExpression()), !dbg !1842
  %7 = trunc i32 %3 to i16, !dbg !1846
  switch i16 %7, label %32 [
    i16 0, label %8
    i16 1, label %13
  ], !dbg !1846

8:                                                ; preds = %6
  %9 = zext i16 %5 to i32, !dbg !1849
  %10 = shl nuw i32 1, %9, !dbg !1851
  %11 = load volatile i32, i32* inttoptr (i32 -2130571136 to i32*), align 128, !dbg !1852
  %12 = or i32 %11, %10, !dbg !1852
  store volatile i32 %12, i32* inttoptr (i32 -2130571136 to i32*), align 128, !dbg !1852
  br label %32, !dbg !1853

13:                                               ; preds = %6
  %14 = zext i16 %5 to i32, !dbg !1854
  %15 = shl nuw i32 1, %14, !dbg !1855
  %16 = load volatile i32, i32* inttoptr (i32 -2130571132 to i32*), align 4, !dbg !1856
  %17 = or i32 %16, %15, !dbg !1856
  store volatile i32 %17, i32* inttoptr (i32 -2130571132 to i32*), align 4, !dbg !1856
  br label %32, !dbg !1857

18:                                               ; preds = %2
  %19 = trunc i32 %3 to i16, !dbg !1858
  switch i16 %19, label %32 [
    i16 0, label %20
    i16 1, label %26
  ], !dbg !1858

20:                                               ; preds = %18
  %21 = zext i16 %5 to i32, !dbg !1861
  %22 = shl nuw i32 1, %21, !dbg !1863
  %23 = xor i32 %22, -1, !dbg !1864
  %24 = load volatile i32, i32* inttoptr (i32 -2130571136 to i32*), align 128, !dbg !1865
  %25 = and i32 %24, %23, !dbg !1865
  store volatile i32 %25, i32* inttoptr (i32 -2130571136 to i32*), align 128, !dbg !1865
  br label %32, !dbg !1866

26:                                               ; preds = %18
  %27 = zext i16 %5 to i32, !dbg !1867
  %28 = shl nuw i32 1, %27, !dbg !1868
  %29 = xor i32 %28, -1, !dbg !1869
  %30 = load volatile i32, i32* inttoptr (i32 -2130571132 to i32*), align 4, !dbg !1870
  %31 = and i32 %30, %29, !dbg !1870
  store volatile i32 %31, i32* inttoptr (i32 -2130571132 to i32*), align 4, !dbg !1870
  br label %32, !dbg !1871

32:                                               ; preds = %2, %18, %26, %20, %8, %13, %6
  ret void, !dbg !1872
}

; Function Attrs: noinline nounwind optsize
define dso_local void @halPinmuxTopOnPadFunc(i32 noundef %0, i8 noundef zeroext %1) local_unnamed_addr #0 !dbg !1873 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !1879, metadata !DIExpression()), !dbg !1882
  call void @llvm.dbg.value(metadata i8 %1, metadata !1880, metadata !DIExpression()), !dbg !1882
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
  ], !dbg !1883

3:                                                ; preds = %2
  %4 = load volatile i32, i32* inttoptr (i32 -2130563040 to i32*), align 32, !dbg !1884
  call void @llvm.dbg.value(metadata i32 %4, metadata !1881, metadata !DIExpression()), !dbg !1882
  %5 = and i32 %4, -16, !dbg !1886
  call void @llvm.dbg.value(metadata i32 %5, metadata !1881, metadata !DIExpression()), !dbg !1882
  %6 = zext i8 %1 to i32, !dbg !1887
  %7 = or i32 %5, %6, !dbg !1888
  store volatile i32 %7, i32* inttoptr (i32 -2130563040 to i32*), align 32, !dbg !1889
  br label %187, !dbg !1890

8:                                                ; preds = %2
  %9 = load volatile i32, i32* inttoptr (i32 -2130563040 to i32*), align 32, !dbg !1891
  call void @llvm.dbg.value(metadata i32 %9, metadata !1881, metadata !DIExpression()), !dbg !1882
  %10 = and i32 %9, -241, !dbg !1892
  call void @llvm.dbg.value(metadata i32 %10, metadata !1881, metadata !DIExpression()), !dbg !1882
  %11 = zext i8 %1 to i32, !dbg !1893
  %12 = shl nuw nsw i32 %11, 4, !dbg !1894
  %13 = or i32 %10, %12, !dbg !1895
  store volatile i32 %13, i32* inttoptr (i32 -2130563040 to i32*), align 32, !dbg !1896
  br label %187, !dbg !1897

14:                                               ; preds = %2
  %15 = load volatile i32, i32* inttoptr (i32 -2130563040 to i32*), align 32, !dbg !1898
  call void @llvm.dbg.value(metadata i32 %15, metadata !1881, metadata !DIExpression()), !dbg !1882
  %16 = and i32 %15, -3841, !dbg !1899
  call void @llvm.dbg.value(metadata i32 %16, metadata !1881, metadata !DIExpression()), !dbg !1882
  %17 = zext i8 %1 to i32, !dbg !1900
  %18 = shl nuw nsw i32 %17, 8, !dbg !1901
  %19 = or i32 %16, %18, !dbg !1902
  store volatile i32 %19, i32* inttoptr (i32 -2130563040 to i32*), align 32, !dbg !1903
  br label %187, !dbg !1904

20:                                               ; preds = %2
  %21 = load volatile i32, i32* inttoptr (i32 -2130563040 to i32*), align 32, !dbg !1905
  call void @llvm.dbg.value(metadata i32 %21, metadata !1881, metadata !DIExpression()), !dbg !1882
  %22 = and i32 %21, -61441, !dbg !1906
  call void @llvm.dbg.value(metadata i32 %22, metadata !1881, metadata !DIExpression()), !dbg !1882
  %23 = zext i8 %1 to i32, !dbg !1907
  %24 = shl nuw nsw i32 %23, 12, !dbg !1908
  %25 = or i32 %22, %24, !dbg !1909
  store volatile i32 %25, i32* inttoptr (i32 -2130563040 to i32*), align 32, !dbg !1910
  br label %187, !dbg !1911

26:                                               ; preds = %2
  %27 = load volatile i32, i32* inttoptr (i32 -2130563040 to i32*), align 32, !dbg !1912
  call void @llvm.dbg.value(metadata i32 %27, metadata !1881, metadata !DIExpression()), !dbg !1882
  %28 = and i32 %27, -983041, !dbg !1913
  call void @llvm.dbg.value(metadata i32 %28, metadata !1881, metadata !DIExpression()), !dbg !1882
  %29 = zext i8 %1 to i32, !dbg !1914
  %30 = shl nuw nsw i32 %29, 16, !dbg !1915
  %31 = or i32 %28, %30, !dbg !1916
  store volatile i32 %31, i32* inttoptr (i32 -2130563040 to i32*), align 32, !dbg !1917
  br label %187, !dbg !1918

32:                                               ; preds = %2
  %33 = load volatile i32, i32* inttoptr (i32 -2130563040 to i32*), align 32, !dbg !1919
  call void @llvm.dbg.value(metadata i32 %33, metadata !1881, metadata !DIExpression()), !dbg !1882
  %34 = and i32 %33, -15728641, !dbg !1920
  call void @llvm.dbg.value(metadata i32 %34, metadata !1881, metadata !DIExpression()), !dbg !1882
  %35 = zext i8 %1 to i32, !dbg !1921
  %36 = shl nuw nsw i32 %35, 20, !dbg !1922
  %37 = or i32 %34, %36, !dbg !1923
  store volatile i32 %37, i32* inttoptr (i32 -2130563040 to i32*), align 32, !dbg !1924
  br label %187, !dbg !1925

38:                                               ; preds = %2
  %39 = load volatile i32, i32* inttoptr (i32 -2130563040 to i32*), align 32, !dbg !1926
  call void @llvm.dbg.value(metadata i32 %39, metadata !1881, metadata !DIExpression()), !dbg !1882
  %40 = and i32 %39, -251658241, !dbg !1927
  call void @llvm.dbg.value(metadata i32 %40, metadata !1881, metadata !DIExpression()), !dbg !1882
  %41 = zext i8 %1 to i32, !dbg !1928
  %42 = shl nuw i32 %41, 24, !dbg !1929
  %43 = or i32 %40, %42, !dbg !1930
  store volatile i32 %43, i32* inttoptr (i32 -2130563040 to i32*), align 32, !dbg !1931
  br label %187, !dbg !1932

44:                                               ; preds = %2
  %45 = load volatile i32, i32* inttoptr (i32 -2130563040 to i32*), align 32, !dbg !1933
  call void @llvm.dbg.value(metadata i32 %45, metadata !1881, metadata !DIExpression()), !dbg !1882
  %46 = and i32 %45, 268435455, !dbg !1934
  call void @llvm.dbg.value(metadata i32 %46, metadata !1881, metadata !DIExpression()), !dbg !1882
  %47 = zext i8 %1 to i32, !dbg !1935
  %48 = shl i32 %47, 28, !dbg !1936
  %49 = or i32 %46, %48, !dbg !1937
  store volatile i32 %49, i32* inttoptr (i32 -2130563040 to i32*), align 32, !dbg !1938
  br label %187, !dbg !1939

50:                                               ; preds = %2
  %51 = load volatile i32, i32* inttoptr (i32 -2130563028 to i32*), align 4, !dbg !1940
  call void @llvm.dbg.value(metadata i32 %51, metadata !1881, metadata !DIExpression()), !dbg !1882
  %52 = and i32 %51, -16, !dbg !1941
  call void @llvm.dbg.value(metadata i32 %52, metadata !1881, metadata !DIExpression()), !dbg !1882
  %53 = zext i8 %1 to i32, !dbg !1942
  %54 = or i32 %52, %53, !dbg !1943
  store volatile i32 %54, i32* inttoptr (i32 -2130563028 to i32*), align 4, !dbg !1944
  br label %187, !dbg !1945

55:                                               ; preds = %2
  %56 = load volatile i32, i32* inttoptr (i32 -2130563028 to i32*), align 4, !dbg !1946
  call void @llvm.dbg.value(metadata i32 %56, metadata !1881, metadata !DIExpression()), !dbg !1882
  %57 = and i32 %56, -241, !dbg !1947
  call void @llvm.dbg.value(metadata i32 %57, metadata !1881, metadata !DIExpression()), !dbg !1882
  %58 = zext i8 %1 to i32, !dbg !1948
  %59 = shl nuw nsw i32 %58, 4, !dbg !1949
  %60 = or i32 %57, %59, !dbg !1950
  store volatile i32 %60, i32* inttoptr (i32 -2130563028 to i32*), align 4, !dbg !1951
  br label %187, !dbg !1952

61:                                               ; preds = %2
  %62 = load volatile i32, i32* inttoptr (i32 -2130563028 to i32*), align 4, !dbg !1953
  call void @llvm.dbg.value(metadata i32 %62, metadata !1881, metadata !DIExpression()), !dbg !1882
  %63 = and i32 %62, -3841, !dbg !1954
  call void @llvm.dbg.value(metadata i32 %63, metadata !1881, metadata !DIExpression()), !dbg !1882
  %64 = zext i8 %1 to i32, !dbg !1955
  %65 = shl nuw nsw i32 %64, 8, !dbg !1956
  %66 = or i32 %63, %65, !dbg !1957
  store volatile i32 %66, i32* inttoptr (i32 -2130563028 to i32*), align 4, !dbg !1958
  br label %187, !dbg !1959

67:                                               ; preds = %2
  %68 = load volatile i32, i32* inttoptr (i32 -2130563028 to i32*), align 4, !dbg !1960
  call void @llvm.dbg.value(metadata i32 %68, metadata !1881, metadata !DIExpression()), !dbg !1882
  %69 = and i32 %68, -61441, !dbg !1961
  call void @llvm.dbg.value(metadata i32 %69, metadata !1881, metadata !DIExpression()), !dbg !1882
  %70 = zext i8 %1 to i32, !dbg !1962
  %71 = shl nuw nsw i32 %70, 12, !dbg !1963
  %72 = or i32 %69, %71, !dbg !1964
  store volatile i32 %72, i32* inttoptr (i32 -2130563028 to i32*), align 4, !dbg !1965
  switch i8 %1, label %187 [
    i8 5, label %73
    i8 4, label %73
    i8 2, label %73
  ], !dbg !1966

73:                                               ; preds = %67, %67, %67
  %74 = tail call i32 @halGPIO_ConfDirection(i32 noundef 27, i8 noundef zeroext 0) #13, !dbg !1968
  br label %187, !dbg !1970

75:                                               ; preds = %2
  %76 = load volatile i32, i32* inttoptr (i32 -2130563028 to i32*), align 4, !dbg !1971
  call void @llvm.dbg.value(metadata i32 %76, metadata !1881, metadata !DIExpression()), !dbg !1882
  %77 = and i32 %76, -983041, !dbg !1972
  call void @llvm.dbg.value(metadata i32 %77, metadata !1881, metadata !DIExpression()), !dbg !1882
  %78 = zext i8 %1 to i32, !dbg !1973
  %79 = shl nuw nsw i32 %78, 16, !dbg !1974
  %80 = or i32 %77, %79, !dbg !1975
  store volatile i32 %80, i32* inttoptr (i32 -2130563028 to i32*), align 4, !dbg !1976
  %81 = and i8 %1, -2, !dbg !1977
  %82 = icmp eq i8 %81, 4, !dbg !1977
  br i1 %82, label %83, label %187, !dbg !1977

83:                                               ; preds = %75
  %84 = tail call i32 @halGPIO_ConfDirection(i32 noundef 28, i8 noundef zeroext 0) #13, !dbg !1979
  br label %187, !dbg !1981

85:                                               ; preds = %2
  %86 = load volatile i32, i32* inttoptr (i32 -2130563028 to i32*), align 4, !dbg !1982
  call void @llvm.dbg.value(metadata i32 %86, metadata !1881, metadata !DIExpression()), !dbg !1882
  %87 = and i32 %86, -15728641, !dbg !1983
  call void @llvm.dbg.value(metadata i32 %87, metadata !1881, metadata !DIExpression()), !dbg !1882
  %88 = zext i8 %1 to i32, !dbg !1984
  %89 = shl nuw nsw i32 %88, 20, !dbg !1985
  %90 = or i32 %87, %89, !dbg !1986
  store volatile i32 %90, i32* inttoptr (i32 -2130563028 to i32*), align 4, !dbg !1987
  %91 = icmp eq i8 %1, 6, !dbg !1988
  br i1 %91, label %92, label %187, !dbg !1990

92:                                               ; preds = %85
  %93 = tail call i32 @halGPIO_ConfDirection(i32 noundef 29, i8 noundef zeroext 0) #13, !dbg !1991
  br label %187, !dbg !1993

94:                                               ; preds = %2
  %95 = load volatile i32, i32* inttoptr (i32 -2130563028 to i32*), align 4, !dbg !1994
  call void @llvm.dbg.value(metadata i32 %95, metadata !1881, metadata !DIExpression()), !dbg !1882
  %96 = and i32 %95, -251658241, !dbg !1995
  call void @llvm.dbg.value(metadata i32 %96, metadata !1881, metadata !DIExpression()), !dbg !1882
  %97 = zext i8 %1 to i32, !dbg !1996
  %98 = shl nuw i32 %97, 24, !dbg !1997
  %99 = or i32 %96, %98, !dbg !1998
  store volatile i32 %99, i32* inttoptr (i32 -2130563028 to i32*), align 4, !dbg !1999
  switch i8 %1, label %187 [
    i8 7, label %100
    i8 4, label %100
  ], !dbg !2000

100:                                              ; preds = %94, %94
  %101 = tail call i32 @halGPIO_ConfDirection(i32 noundef 30, i8 noundef zeroext 0) #13, !dbg !2002
  br label %187, !dbg !2004

102:                                              ; preds = %2
  %103 = load volatile i32, i32* inttoptr (i32 -2130563028 to i32*), align 4, !dbg !2005
  call void @llvm.dbg.value(metadata i32 %103, metadata !1881, metadata !DIExpression()), !dbg !1882
  %104 = and i32 %103, 268435455, !dbg !2006
  call void @llvm.dbg.value(metadata i32 %104, metadata !1881, metadata !DIExpression()), !dbg !1882
  %105 = zext i8 %1 to i32, !dbg !2007
  %106 = shl i32 %105, 28, !dbg !2008
  %107 = or i32 %104, %106, !dbg !2009
  store volatile i32 %107, i32* inttoptr (i32 -2130563028 to i32*), align 4, !dbg !2010
  %108 = and i8 %1, -3, !dbg !2011
  %109 = icmp eq i8 %108, 4, !dbg !2011
  br i1 %109, label %110, label %187, !dbg !2011

110:                                              ; preds = %102
  %111 = tail call i32 @halGPIO_ConfDirection(i32 noundef 31, i8 noundef zeroext 0) #13, !dbg !2013
  br label %187, !dbg !2015

112:                                              ; preds = %2
  %113 = load volatile i32, i32* inttoptr (i32 -2130563024 to i32*), align 16, !dbg !2016
  call void @llvm.dbg.value(metadata i32 %113, metadata !1881, metadata !DIExpression()), !dbg !1882
  %114 = and i32 %113, -16, !dbg !2017
  call void @llvm.dbg.value(metadata i32 %114, metadata !1881, metadata !DIExpression()), !dbg !1882
  %115 = zext i8 %1 to i32, !dbg !2018
  %116 = or i32 %114, %115, !dbg !2019
  store volatile i32 %116, i32* inttoptr (i32 -2130563024 to i32*), align 16, !dbg !2020
  %117 = and i8 %1, -3, !dbg !2021
  %118 = icmp eq i8 %117, 4, !dbg !2021
  br i1 %118, label %119, label %187, !dbg !2021

119:                                              ; preds = %112
  %120 = tail call i32 @halGPIO_ConfDirection(i32 noundef 32, i8 noundef zeroext 0) #13, !dbg !2023
  br label %187, !dbg !2025

121:                                              ; preds = %2
  %122 = load volatile i32, i32* inttoptr (i32 -2130563024 to i32*), align 16, !dbg !2026
  call void @llvm.dbg.value(metadata i32 %122, metadata !1881, metadata !DIExpression()), !dbg !1882
  %123 = and i32 %122, -241, !dbg !2027
  call void @llvm.dbg.value(metadata i32 %123, metadata !1881, metadata !DIExpression()), !dbg !1882
  %124 = zext i8 %1 to i32, !dbg !2028
  %125 = shl nuw nsw i32 %124, 4, !dbg !2029
  %126 = or i32 %123, %125, !dbg !2030
  store volatile i32 %126, i32* inttoptr (i32 -2130563024 to i32*), align 16, !dbg !2031
  br label %187, !dbg !2032

127:                                              ; preds = %2
  %128 = load volatile i32, i32* inttoptr (i32 -2130563024 to i32*), align 16, !dbg !2033
  call void @llvm.dbg.value(metadata i32 %128, metadata !1881, metadata !DIExpression()), !dbg !1882
  %129 = and i32 %128, -3841, !dbg !2034
  call void @llvm.dbg.value(metadata i32 %129, metadata !1881, metadata !DIExpression()), !dbg !1882
  %130 = zext i8 %1 to i32, !dbg !2035
  %131 = shl nuw nsw i32 %130, 8, !dbg !2036
  %132 = or i32 %129, %131, !dbg !2037
  store volatile i32 %132, i32* inttoptr (i32 -2130563024 to i32*), align 16, !dbg !2038
  br label %187, !dbg !2039

133:                                              ; preds = %2
  %134 = load volatile i32, i32* inttoptr (i32 -2130563024 to i32*), align 16, !dbg !2040
  call void @llvm.dbg.value(metadata i32 %134, metadata !1881, metadata !DIExpression()), !dbg !1882
  %135 = and i32 %134, -61441, !dbg !2041
  call void @llvm.dbg.value(metadata i32 %135, metadata !1881, metadata !DIExpression()), !dbg !1882
  %136 = zext i8 %1 to i32, !dbg !2042
  %137 = shl nuw nsw i32 %136, 12, !dbg !2043
  %138 = or i32 %135, %137, !dbg !2044
  store volatile i32 %138, i32* inttoptr (i32 -2130563024 to i32*), align 16, !dbg !2045
  br label %187, !dbg !2046

139:                                              ; preds = %2
  %140 = load volatile i32, i32* inttoptr (i32 -2130563024 to i32*), align 16, !dbg !2047
  call void @llvm.dbg.value(metadata i32 %140, metadata !1881, metadata !DIExpression()), !dbg !1882
  %141 = and i32 %140, -983041, !dbg !2048
  call void @llvm.dbg.value(metadata i32 %141, metadata !1881, metadata !DIExpression()), !dbg !1882
  %142 = zext i8 %1 to i32, !dbg !2049
  %143 = shl nuw nsw i32 %142, 16, !dbg !2050
  %144 = or i32 %141, %143, !dbg !2051
  store volatile i32 %144, i32* inttoptr (i32 -2130563024 to i32*), align 16, !dbg !2052
  br label %187, !dbg !2053

145:                                              ; preds = %2
  %146 = load volatile i32, i32* inttoptr (i32 -2130563024 to i32*), align 16, !dbg !2054
  call void @llvm.dbg.value(metadata i32 %146, metadata !1881, metadata !DIExpression()), !dbg !1882
  %147 = and i32 %146, -15728641, !dbg !2055
  call void @llvm.dbg.value(metadata i32 %147, metadata !1881, metadata !DIExpression()), !dbg !1882
  %148 = zext i8 %1 to i32, !dbg !2056
  %149 = shl nuw nsw i32 %148, 20, !dbg !2057
  %150 = or i32 %147, %149, !dbg !2058
  store volatile i32 %150, i32* inttoptr (i32 -2130563024 to i32*), align 16, !dbg !2059
  br label %187, !dbg !2060

151:                                              ; preds = %2
  %152 = load volatile i32, i32* inttoptr (i32 -2130563024 to i32*), align 16, !dbg !2061
  call void @llvm.dbg.value(metadata i32 %152, metadata !1881, metadata !DIExpression()), !dbg !1882
  %153 = and i32 %152, -251658241, !dbg !2062
  call void @llvm.dbg.value(metadata i32 %153, metadata !1881, metadata !DIExpression()), !dbg !1882
  %154 = zext i8 %1 to i32, !dbg !2063
  %155 = shl nuw i32 %154, 24, !dbg !2064
  %156 = or i32 %153, %155, !dbg !2065
  store volatile i32 %156, i32* inttoptr (i32 -2130563024 to i32*), align 16, !dbg !2066
  br label %187, !dbg !2067

157:                                              ; preds = %2
  %158 = load volatile i32, i32* inttoptr (i32 -2130563024 to i32*), align 16, !dbg !2068
  call void @llvm.dbg.value(metadata i32 %158, metadata !1881, metadata !DIExpression()), !dbg !1882
  %159 = and i32 %158, 268435455, !dbg !2069
  call void @llvm.dbg.value(metadata i32 %159, metadata !1881, metadata !DIExpression()), !dbg !1882
  %160 = zext i8 %1 to i32, !dbg !2070
  %161 = shl i32 %160, 28, !dbg !2071
  %162 = or i32 %159, %161, !dbg !2072
  store volatile i32 %162, i32* inttoptr (i32 -2130563024 to i32*), align 16, !dbg !2073
  br label %187, !dbg !2074

163:                                              ; preds = %2
  %164 = load volatile i32, i32* inttoptr (i32 -2130563012 to i32*), align 4, !dbg !2075
  call void @llvm.dbg.value(metadata i32 %164, metadata !1881, metadata !DIExpression()), !dbg !1882
  %165 = and i32 %164, -241, !dbg !2076
  call void @llvm.dbg.value(metadata i32 %165, metadata !1881, metadata !DIExpression()), !dbg !1882
  %166 = zext i8 %1 to i32, !dbg !2077
  %167 = shl nuw nsw i32 %166, 4, !dbg !2078
  %168 = or i32 %165, %167, !dbg !2079
  store volatile i32 %168, i32* inttoptr (i32 -2130563012 to i32*), align 4, !dbg !2080
  br label %187, !dbg !2081

169:                                              ; preds = %2
  %170 = load volatile i32, i32* inttoptr (i32 -2130563012 to i32*), align 4, !dbg !2082
  call void @llvm.dbg.value(metadata i32 %170, metadata !1881, metadata !DIExpression()), !dbg !1882
  %171 = and i32 %170, -3841, !dbg !2083
  call void @llvm.dbg.value(metadata i32 %171, metadata !1881, metadata !DIExpression()), !dbg !1882
  %172 = zext i8 %1 to i32, !dbg !2084
  %173 = shl nuw nsw i32 %172, 8, !dbg !2085
  %174 = or i32 %171, %173, !dbg !2086
  store volatile i32 %174, i32* inttoptr (i32 -2130563012 to i32*), align 4, !dbg !2087
  br label %187, !dbg !2088

175:                                              ; preds = %2
  %176 = load volatile i32, i32* inttoptr (i32 -2130563012 to i32*), align 4, !dbg !2089
  call void @llvm.dbg.value(metadata i32 %176, metadata !1881, metadata !DIExpression()), !dbg !1882
  %177 = and i32 %176, -61441, !dbg !2090
  call void @llvm.dbg.value(metadata i32 %177, metadata !1881, metadata !DIExpression()), !dbg !1882
  %178 = zext i8 %1 to i32, !dbg !2091
  %179 = shl nuw nsw i32 %178, 12, !dbg !2092
  %180 = or i32 %177, %179, !dbg !2093
  store volatile i32 %180, i32* inttoptr (i32 -2130563012 to i32*), align 4, !dbg !2094
  br label %187, !dbg !2095

181:                                              ; preds = %2
  %182 = load volatile i32, i32* inttoptr (i32 -2130563012 to i32*), align 4, !dbg !2096
  call void @llvm.dbg.value(metadata i32 %182, metadata !1881, metadata !DIExpression()), !dbg !1882
  %183 = and i32 %182, -983041, !dbg !2097
  call void @llvm.dbg.value(metadata i32 %183, metadata !1881, metadata !DIExpression()), !dbg !1882
  %184 = zext i8 %1 to i32, !dbg !2098
  %185 = shl nuw nsw i32 %184, 16, !dbg !2099
  %186 = or i32 %183, %185, !dbg !2100
  store volatile i32 %186, i32* inttoptr (i32 -2130563012 to i32*), align 4, !dbg !2101
  br label %187, !dbg !2102

187:                                              ; preds = %94, %67, %2, %119, %112, %110, %102, %100, %85, %92, %83, %75, %73, %181, %175, %169, %163, %157, %151, %145, %139, %133, %127, %121, %61, %55, %50, %44, %38, %32, %26, %20, %14, %8, %3
  ret void, !dbg !2103
}

; Function Attrs: noinline nounwind optsize
define dso_local void @halWDTCRWrite(i32* noundef %0, i32 noundef %1) local_unnamed_addr #0 !dbg !2104 {
  call void @llvm.dbg.value(metadata i32* %0, metadata !2108, metadata !DIExpression()), !dbg !2110
  call void @llvm.dbg.value(metadata i32 %1, metadata !2109, metadata !DIExpression()), !dbg !2110
  store volatile i32 %1, i32* %0, align 4, !dbg !2111
  tail call void @drvGPT2Init() #13, !dbg !2112
  tail call void @delay_time(i32 noundef 10) #13, !dbg !2113
  ret void, !dbg !2114
}

; Function Attrs: mustprogress nofree noinline norecurse nounwind optsize willreturn
define dso_local i32 @halWDTReadInterruptStatus() local_unnamed_addr #4 !dbg !2115 {
  call void @llvm.dbg.value(metadata %struct._IOT_WDT_TypeDef* inttoptr (i32 -2096627664 to %struct._IOT_WDT_TypeDef*), metadata !2119, metadata !DIExpression()), !dbg !2120
  %1 = load volatile i32, i32* inttoptr (i32 -2096627652 to i32*), align 4, !dbg !2121
  ret i32 %1, !dbg !2122
}

; Function Attrs: noinline nounwind optsize
define dso_local void @halWDTRestart() local_unnamed_addr #0 !dbg !2123 {
  call void @llvm.dbg.value(metadata %struct._IOT_WDT_TypeDef* null, metadata !2127, metadata !DIExpression()), !dbg !2128
  call void @llvm.dbg.value(metadata %struct._IOT_WDT_TypeDef* inttoptr (i32 -2096627664 to %struct._IOT_WDT_TypeDef*), metadata !2127, metadata !DIExpression()), !dbg !2128
  tail call void @halWDTCRWrite(i32* noundef nonnull inttoptr (i32 -2096627656 to i32*), i32 noundef 6513) #14, !dbg !2129
  ret void, !dbg !2130
}

; Function Attrs: noinline nounwind optsize
define dso_local void @halWDTSetTimeout(i16 noundef zeroext %0) local_unnamed_addr #0 !dbg !2131 {
  call void @llvm.dbg.value(metadata i16 %0, metadata !2135, metadata !DIExpression()), !dbg !2138
  call void @llvm.dbg.value(metadata %struct._IOT_WDT_TypeDef* null, metadata !2136, metadata !DIExpression()), !dbg !2138
  call void @llvm.dbg.value(metadata i32 0, metadata !2137, metadata !DIExpression()), !dbg !2138
  call void @llvm.dbg.value(metadata %struct._IOT_WDT_TypeDef* inttoptr (i32 -2096627664 to %struct._IOT_WDT_TypeDef*), metadata !2136, metadata !DIExpression()), !dbg !2138
  %2 = load volatile i32, i32* inttoptr (i32 -2096627660 to i32*), align 4, !dbg !2139
  call void @llvm.dbg.value(metadata i32 %2, metadata !2137, metadata !DIExpression()), !dbg !2138
  %3 = and i32 %2, -65536, !dbg !2140
  call void @llvm.dbg.value(metadata i32 %2, metadata !2137, metadata !DIExpression(DW_OP_constu, 18446744073709486080, DW_OP_and, DW_OP_stack_value)), !dbg !2138
  call void @llvm.dbg.value(metadata i32 %3, metadata !2137, metadata !DIExpression(DW_OP_constu, 8, DW_OP_or, DW_OP_stack_value)), !dbg !2138
  call void @llvm.dbg.value(metadata i32 %3, metadata !2137, metadata !DIExpression(DW_OP_constu, 8, DW_OP_or, DW_OP_stack_value)), !dbg !2138
  %4 = zext i16 %0 to i32, !dbg !2141
  %5 = shl nuw nsw i32 %4, 5, !dbg !2142
  %6 = or i32 %5, %3, !dbg !2143
  %7 = or i32 %6, 8, !dbg !2143
  call void @llvm.dbg.value(metadata i32 %7, metadata !2137, metadata !DIExpression()), !dbg !2138
  tail call void @halWDTCRWrite(i32* noundef nonnull inttoptr (i32 -2096627660 to i32*), i32 noundef %7) #14, !dbg !2144
  tail call void @halWDTRestart() #14, !dbg !2145
  ret void, !dbg !2146
}

; Function Attrs: nofree noinline norecurse noreturn nounwind optsize
define dso_local void @WDT_LISR(i32 %0) #5 !dbg !2147 {
  call void @llvm.dbg.value(metadata i32 undef, metadata !2151, metadata !DIExpression()), !dbg !2152
  tail call fastcc void @NVIC_DisableIRQ() #14, !dbg !2153
  %2 = load volatile i32, i32* inttoptr (i32 -2130563040 to i32*), align 32, !dbg !2154
  %3 = and i32 %2, -241, !dbg !2154
  store volatile i32 %3, i32* inttoptr (i32 -2130563040 to i32*), align 32, !dbg !2154
  %4 = load volatile i32, i32* inttoptr (i32 -2130563040 to i32*), align 32, !dbg !2155
  %5 = or i32 %4, 128, !dbg !2155
  store volatile i32 %5, i32* inttoptr (i32 -2130563040 to i32*), align 32, !dbg !2155
  %6 = load volatile i32, i32* inttoptr (i32 -2097106800 to i32*), align 16, !dbg !2156
  %7 = or i32 %6, 2, !dbg !2156
  store volatile i32 %7, i32* inttoptr (i32 -2097106800 to i32*), align 16, !dbg !2156
  %8 = load volatile i32, i32* inttoptr (i32 -2097106848 to i32*), align 32, !dbg !2157
  %9 = and i32 %8, -3, !dbg !2157
  store volatile i32 %9, i32* inttoptr (i32 -2097106848 to i32*), align 32, !dbg !2157
  br label %10, !dbg !2158

10:                                               ; preds = %1, %10
  br label %10, !dbg !2158, !llvm.loop !2159
}

; Function Attrs: nofree noinline norecurse nounwind optsize
define internal fastcc void @NVIC_DisableIRQ() unnamed_addr #3 !dbg !2161 {
  call void @llvm.dbg.value(metadata i32 10, metadata !2165, metadata !DIExpression()), !dbg !2166
  store volatile i32 1024, i32* inttoptr (i32 -536813184 to i32*), align 128, !dbg !2167
  ret void, !dbg !2168
}

; Function Attrs: noinline nounwind optsize
define dso_local void @halWDTConfig(i8 noundef zeroext %0, i8 noundef zeroext %1, i8 noundef zeroext %2, i8 noundef zeroext %3) local_unnamed_addr #0 !dbg !2169 {
  %5 = alloca i8, align 1
  call void @llvm.dbg.value(metadata i8 %0, metadata !2173, metadata !DIExpression()), !dbg !2180
  call void @llvm.dbg.value(metadata i8 %1, metadata !2174, metadata !DIExpression()), !dbg !2180
  call void @llvm.dbg.value(metadata i8 %2, metadata !2175, metadata !DIExpression()), !dbg !2180
  call void @llvm.dbg.value(metadata i8 %3, metadata !2176, metadata !DIExpression()), !dbg !2180
  call void @llvm.dbg.value(metadata %struct._IOT_WDT_TypeDef* null, metadata !2177, metadata !DIExpression()), !dbg !2180
  call void @llvm.dbg.value(metadata i32 0, metadata !2178, metadata !DIExpression()), !dbg !2180
  call void @llvm.lifetime.start.p0i8(i64 1, i8* nonnull %5) #15, !dbg !2181
  call void @llvm.dbg.value(metadata %struct._IOT_WDT_TypeDef* inttoptr (i32 -2096627664 to %struct._IOT_WDT_TypeDef*), metadata !2177, metadata !DIExpression()), !dbg !2180
  %6 = load volatile i32, i32* inttoptr (i32 -2096627664 to i32*), align 16, !dbg !2182
  call void @llvm.dbg.value(metadata i32 %6, metadata !2178, metadata !DIExpression()), !dbg !2180
  call void @llvm.dbg.value(metadata i32 %6, metadata !2178, metadata !DIExpression(DW_OP_constu, 18446744073709486335, DW_OP_and, DW_OP_stack_value)), !dbg !2180
  call void @llvm.dbg.value(metadata i32 %6, metadata !2178, metadata !DIExpression(DW_OP_constu, 18446744073709486335, DW_OP_and, DW_OP_constu, 8704, DW_OP_or, DW_OP_stack_value)), !dbg !2180
  %7 = icmp eq i8 %0, 0, !dbg !2183
  %8 = and i32 %6, -65289, !dbg !2185
  %9 = or i32 %8, 8704, !dbg !2185
  %10 = or i32 %8, 8712, !dbg !2185
  %11 = select i1 %7, i32 %9, i32 %10, !dbg !2185
  call void @llvm.dbg.value(metadata i32 %11, metadata !2178, metadata !DIExpression()), !dbg !2180
  br i1 %7, label %12, label %23, !dbg !2186

12:                                               ; preds = %4
  call void @llvm.dbg.value(metadata i8* %5, metadata !2179, metadata !DIExpression(DW_OP_deref)), !dbg !2180
  %13 = call i32 @hal_efuse_read(i16 noundef zeroext 263, i8* noundef nonnull %5, i8 noundef zeroext 1) #13, !dbg !2187
  %14 = load volatile i32, i32* inttoptr (i32 -2097118784 to i32*), align 64, !dbg !2190
  %15 = and i32 %14, 512, !dbg !2192
  %16 = icmp eq i32 %15, 0, !dbg !2192
  %17 = load i8, i8* %5, align 1
  %18 = icmp slt i8 %17, 0
  %19 = select i1 %16, i1 true, i1 %18, !dbg !2193
  call void @llvm.dbg.value(metadata i8 %17, metadata !2179, metadata !DIExpression()), !dbg !2180
  br i1 %19, label %20, label %23, !dbg !2193

20:                                               ; preds = %12
  %21 = or i32 %11, 8, !dbg !2194
  call void @llvm.dbg.value(metadata i32 %21, metadata !2178, metadata !DIExpression()), !dbg !2180
  %22 = call i32 @hal_nvic_register_isr_handler(i32 noundef 10, void (i32)* noundef nonnull @WDT_LISR) #13, !dbg !2196
  call fastcc void @NVIC_SetPriority() #14, !dbg !2197
  call fastcc void @NVIC_EnableIRQ() #14, !dbg !2198
  br label %23, !dbg !2199

23:                                               ; preds = %12, %20, %4
  %24 = phi i32 [ %21, %20 ], [ %10, %4 ], [ %9, %12 ], !dbg !2180
  call void @llvm.dbg.value(metadata i32 %24, metadata !2178, metadata !DIExpression()), !dbg !2180
  %25 = icmp eq i8 %1, 0, !dbg !2200
  %26 = and i32 %24, -7, !dbg !2202
  %27 = select i1 %25, i32 0, i32 4, !dbg !2202
  call void @llvm.dbg.value(metadata !DIArgList(i32 %26, i32 %27), metadata !2178, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_or, DW_OP_stack_value)), !dbg !2180
  %28 = icmp eq i8 %2, 0, !dbg !2203
  %29 = select i1 %28, i32 0, i32 2, !dbg !2205
  %30 = or i32 %29, %27, !dbg !2202
  %31 = or i32 %30, %26, !dbg !2205
  call void @llvm.dbg.value(metadata i32 %31, metadata !2178, metadata !DIExpression()), !dbg !2180
  call void @halWDTCRWrite(i32* noundef nonnull inttoptr (i32 -2096627664 to i32*), i32 noundef %31) #14, !dbg !2206
  %32 = icmp eq i8 %3, 1, !dbg !2207
  %33 = load volatile i32, i32* inttoptr (i32 -2097114756 to i32*), align 4, !dbg !2209
  %34 = and i32 %33, -65537, !dbg !2210
  %35 = select i1 %32, i32 65536, i32 0, !dbg !2210
  %36 = or i32 %34, %35, !dbg !2210
  store volatile i32 %36, i32* inttoptr (i32 -2097114756 to i32*), align 4, !dbg !2209
  call void @llvm.lifetime.end.p0i8(i64 1, i8* nonnull %5) #15, !dbg !2211
  ret void, !dbg !2211
}

; Function Attrs: argmemonly nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0i8(i64 immarg, i8* nocapture) #6

; Function Attrs: optsize
declare dso_local i32 @hal_efuse_read(i16 noundef zeroext, i8* noundef, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: nofree noinline norecurse nounwind optsize
define internal fastcc void @NVIC_SetPriority() unnamed_addr #3 !dbg !2212 {
  call void @llvm.dbg.value(metadata i32 10, metadata !2216, metadata !DIExpression()), !dbg !2218
  call void @llvm.dbg.value(metadata i32 5, metadata !2217, metadata !DIExpression()), !dbg !2218
  store volatile i8 -96, i8* inttoptr (i32 -536812534 to i8*), align 2, !dbg !2219
  ret void, !dbg !2222
}

; Function Attrs: nofree noinline norecurse nounwind optsize
define internal fastcc void @NVIC_EnableIRQ() unnamed_addr #3 !dbg !2223 {
  call void @llvm.dbg.value(metadata i32 10, metadata !2225, metadata !DIExpression()), !dbg !2226
  store volatile i32 1024, i32* inttoptr (i32 -536813312 to i32*), align 256, !dbg !2227
  ret void, !dbg !2228
}

; Function Attrs: argmemonly nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0i8(i64 immarg, i8* nocapture) #6

; Function Attrs: noinline nounwind optsize
define dso_local void @halWDTEnable(i8 noundef zeroext %0) local_unnamed_addr #0 !dbg !2229 {
  call void @llvm.dbg.value(metadata i8 %0, metadata !2233, metadata !DIExpression()), !dbg !2236
  call void @llvm.dbg.value(metadata %struct._IOT_WDT_TypeDef* null, metadata !2234, metadata !DIExpression()), !dbg !2236
  call void @llvm.dbg.value(metadata i32 0, metadata !2235, metadata !DIExpression()), !dbg !2236
  call void @llvm.dbg.value(metadata %struct._IOT_WDT_TypeDef* inttoptr (i32 -2096627664 to %struct._IOT_WDT_TypeDef*), metadata !2234, metadata !DIExpression()), !dbg !2236
  %2 = load volatile i32, i32* inttoptr (i32 -2096627664 to i32*), align 16, !dbg !2237
  call void @llvm.dbg.value(metadata i32 %2, metadata !2235, metadata !DIExpression()), !dbg !2236
  call void @llvm.dbg.value(metadata i32 %2, metadata !2235, metadata !DIExpression(DW_OP_constu, 18446744073709486335, DW_OP_and, DW_OP_stack_value)), !dbg !2236
  call void @llvm.dbg.value(metadata i32 %2, metadata !2235, metadata !DIExpression(DW_OP_constu, 18446744073709486335, DW_OP_and, DW_OP_constu, 8704, DW_OP_or, DW_OP_stack_value)), !dbg !2236
  %3 = icmp eq i8 %0, 0, !dbg !2238
  %4 = and i32 %2, -65282, !dbg !2240
  %5 = select i1 %3, i32 8704, i32 8705, !dbg !2240
  %6 = or i32 %4, %5, !dbg !2240
  call void @llvm.dbg.value(metadata i32 %6, metadata !2235, metadata !DIExpression()), !dbg !2236
  tail call void @halWDTCRWrite(i32* noundef nonnull inttoptr (i32 -2096627664 to i32*), i32 noundef %6) #14, !dbg !2241
  ret void, !dbg !2242
}

; Function Attrs: noinline nounwind optsize
define dso_local void @halWDTSoftwareReset() local_unnamed_addr #0 !dbg !2243 {
  %1 = alloca i8, align 1
  call void @llvm.dbg.value(metadata %struct._IOT_WDT_TypeDef* null, metadata !2245, metadata !DIExpression()), !dbg !2247
  call void @llvm.lifetime.start.p0i8(i64 1, i8* nonnull %1) #15, !dbg !2248
  call void @llvm.dbg.value(metadata i8* %1, metadata !2246, metadata !DIExpression(DW_OP_deref)), !dbg !2247
  %2 = call i32 @hal_efuse_read(i16 noundef zeroext 263, i8* noundef nonnull %1, i8 noundef zeroext 1) #13, !dbg !2249
  %3 = load volatile i32, i32* inttoptr (i32 -2097118784 to i32*), align 64, !dbg !2250
  %4 = and i32 %3, 512, !dbg !2252
  %5 = icmp eq i32 %4, 0, !dbg !2252
  %6 = load i8, i8* %1, align 1
  %7 = icmp slt i8 %6, 0
  %8 = select i1 %5, i1 true, i1 %7, !dbg !2253
  call void @llvm.dbg.value(metadata i8 %6, metadata !2246, metadata !DIExpression()), !dbg !2247
  br i1 %8, label %9, label %10, !dbg !2253

9:                                                ; preds = %0
  call void @WDT_LISR(i32 undef) #14, !dbg !2254
  unreachable, !dbg !2256

10:                                               ; preds = %0
  call void @llvm.dbg.value(metadata %struct._IOT_WDT_TypeDef* inttoptr (i32 -2096627664 to %struct._IOT_WDT_TypeDef*), metadata !2245, metadata !DIExpression()), !dbg !2247
  call void @halWDTCRWrite(i32* noundef nonnull inttoptr (i32 -2096627644 to i32*), i32 noundef 4617) #14, !dbg !2257
  call void @llvm.lifetime.end.p0i8(i64 1, i8* nonnull %1) #15, !dbg !2259
  ret void, !dbg !2259
}

; Function Attrs: noinline nounwind optsize
define dso_local void @NVIC_SetupVectorTable(i32 noundef %0) local_unnamed_addr #0 !dbg !2260 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !2264, metadata !DIExpression()), !dbg !2265
  store volatile i32 %0, i32* inttoptr (i32 -536810232 to i32*), align 8, !dbg !2266
  tail call void asm sideeffect "dsb", ""() #15, !dbg !2267, !srcloc !2268
  tail call void asm sideeffect "isb", ""() #15, !dbg !2269, !srcloc !2270
  ret void, !dbg !2271
}

; Function Attrs: nofree noinline norecurse nounwind optsize
define dso_local void @NVIC_SWInt(i32 noundef %0) local_unnamed_addr #3 !dbg !2272 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !2276, metadata !DIExpression()), !dbg !2277
  store volatile i32 %0, i32* inttoptr (i32 -536809728 to i32*), align 256, !dbg !2278
  ret void, !dbg !2279
}

; Function Attrs: noinline nounwind optsize
define dso_local i32 @save_and_set_interrupt_mask() local_unnamed_addr #0 section ".ramTEXT" !dbg !2280 {
  %1 = tail call i32 asm sideeffect "MRS $0, primask", "=r"() #15, !dbg !2285, !srcloc !2292
  call void @llvm.dbg.value(metadata i32 %1, metadata !2289, metadata !DIExpression()) #15, !dbg !2293
  call void @llvm.dbg.value(metadata i32 %1, metadata !2284, metadata !DIExpression()), !dbg !2294
  tail call void asm sideeffect "cpsid i", "~{memory}"() #15, !dbg !2295, !srcloc !2298
  ret i32 %1, !dbg !2299
}

; Function Attrs: noinline nounwind optsize
define dso_local void @restore_interrupt_mask(i32 noundef %0) local_unnamed_addr #0 section ".ramTEXT" !dbg !2300 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !2302, metadata !DIExpression()), !dbg !2303
  call void @llvm.dbg.value(metadata i32 %0, metadata !2304, metadata !DIExpression()) #15, !dbg !2307
  tail call void asm sideeffect "MSR primask, $0", "r,~{memory}"(i32 %0) #15, !dbg !2310, !srcloc !2311
  ret void, !dbg !2312
}

; Function Attrs: noinline nounwind optsize
define dso_local i32 @pinmux_config(i32 noundef %0, i32 noundef %1) local_unnamed_addr #0 !dbg !2313 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !2317, metadata !DIExpression()), !dbg !2320
  call void @llvm.dbg.value(metadata i32 %1, metadata !2318, metadata !DIExpression()), !dbg !2320
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
  ], !dbg !2321

3:                                                ; preds = %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2
  call void @llvm.dbg.value(metadata i32 %0, metadata !2319, metadata !DIExpression()), !dbg !2320
  %4 = trunc i32 %1 to i8, !dbg !2322
  tail call void @halPinmuxTopOnPadFunc(i32 noundef %0, i8 noundef zeroext %4) #13, !dbg !2323
  br label %5, !dbg !2324

5:                                                ; preds = %2, %3
  %6 = phi i32 [ 0, %3 ], [ -1, %2 ], !dbg !2320
  ret i32 %6, !dbg !2325
}

; Function Attrs: noinline nounwind optsize
define dso_local i32 @get_current_count() local_unnamed_addr #0 !dbg !2326 {
  %1 = tail call i32 @GPT_return_current_count(i32 noundef 2) #13, !dbg !2327
  ret i32 %1, !dbg !2328
}

; Function Attrs: noinline nounwind optsize
define dso_local void @delay_time(i32 noundef %0) local_unnamed_addr #0 !dbg !2329 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !2331, metadata !DIExpression()), !dbg !2334
  %2 = tail call i32 @get_current_count() #14, !dbg !2335
  %3 = add i32 %2, %0, !dbg !2336
  %4 = xor i32 %3, -1, !dbg !2337
  call void @llvm.dbg.value(metadata i32 %3, metadata !2332, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !2334
  %5 = tail call i32 @get_current_count() #14, !dbg !2338
  call void @llvm.dbg.value(metadata i32 %5, metadata !2333, metadata !DIExpression()), !dbg !2334
  %6 = add i32 %5, %4, !dbg !2339
  %7 = icmp slt i32 %6, 0, !dbg !2339
  br i1 %7, label %8, label %12, !dbg !2340

8:                                                ; preds = %1, %8
  %9 = tail call i32 @get_current_count() #14, !dbg !2341
  call void @llvm.dbg.value(metadata i32 %9, metadata !2333, metadata !DIExpression()), !dbg !2334
  %10 = add i32 %9, %4, !dbg !2339
  %11 = icmp slt i32 %10, 0, !dbg !2339
  br i1 %11, label %8, label %12, !dbg !2340, !llvm.loop !2343

12:                                               ; preds = %8, %1
  ret void, !dbg !2345
}

; Function Attrs: noinline nounwind optsize
define dso_local void @delay_time_for_gpt4(i32 noundef %0) local_unnamed_addr #0 !dbg !2346 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !2348, metadata !DIExpression()), !dbg !2351
  %2 = tail call i32 @get_current_gpt4_count() #14, !dbg !2352
  %3 = add i32 %2, %0, !dbg !2353
  %4 = xor i32 %3, -1, !dbg !2354
  call void @llvm.dbg.value(metadata i32 %3, metadata !2349, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !2351
  %5 = tail call i32 @get_current_gpt4_count() #14, !dbg !2355
  call void @llvm.dbg.value(metadata i32 %5, metadata !2350, metadata !DIExpression()), !dbg !2351
  %6 = add i32 %5, %4, !dbg !2356
  %7 = icmp slt i32 %6, 0, !dbg !2356
  br i1 %7, label %8, label %12, !dbg !2357

8:                                                ; preds = %1, %8
  %9 = tail call i32 @get_current_gpt4_count() #14, !dbg !2358
  call void @llvm.dbg.value(metadata i32 %9, metadata !2350, metadata !DIExpression()), !dbg !2351
  %10 = add i32 %9, %4, !dbg !2356
  %11 = icmp slt i32 %10, 0, !dbg !2356
  br i1 %11, label %8, label %12, !dbg !2357, !llvm.loop !2360

12:                                               ; preds = %8, %1
  ret void, !dbg !2362
}

; Function Attrs: noinline nounwind optsize
define dso_local i32 @get_current_gpt4_count() local_unnamed_addr #0 !dbg !2363 {
  %1 = tail call i32 @GPT_return_current_count(i32 noundef 4) #13, !dbg !2364
  ret i32 %1, !dbg !2365
}

; Function Attrs: noinline nounwind optsize
define dso_local void @delay_ms(i32 noundef %0) local_unnamed_addr #0 !dbg !2366 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !2368, metadata !DIExpression()), !dbg !2370
  %2 = shl i32 %0, 5, !dbg !2371
  call void @llvm.dbg.value(metadata i32 %2, metadata !2369, metadata !DIExpression()), !dbg !2370
  %3 = mul i32 %0, 7, !dbg !2372
  %4 = udiv i32 %3, 10, !dbg !2373
  %5 = add i32 %4, %2, !dbg !2374
  call void @llvm.dbg.value(metadata i32 %5, metadata !2369, metadata !DIExpression()), !dbg !2370
  %6 = mul i32 %0, 6, !dbg !2375
  %7 = udiv i32 %6, 100, !dbg !2376
  %8 = add i32 %5, %7, !dbg !2377
  call void @llvm.dbg.value(metadata i32 %8, metadata !2369, metadata !DIExpression()), !dbg !2370
  %9 = shl i32 %0, 3, !dbg !2378
  %10 = udiv i32 %9, 1000, !dbg !2379
  %11 = add i32 %8, %10, !dbg !2380
  call void @llvm.dbg.value(metadata i32 %11, metadata !2369, metadata !DIExpression()), !dbg !2370
  tail call void @delay_time(i32 noundef %11) #14, !dbg !2381
  ret void, !dbg !2382
}

; Function Attrs: noinline nounwind optsize
define dso_local void @delay_us(i32 noundef %0) local_unnamed_addr #0 !dbg !2383 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !2385, metadata !DIExpression()), !dbg !2388
  %2 = tail call i32 @top_mcu_freq_get() #13, !dbg !2389
  %3 = udiv i32 %2, 1000000, !dbg !2390
  call void @llvm.dbg.value(metadata i32 %3, metadata !2387, metadata !DIExpression()), !dbg !2388
  %4 = mul i32 %3, %0, !dbg !2391
  call void @llvm.dbg.value(metadata i32 %4, metadata !2386, metadata !DIExpression()), !dbg !2388
  tail call void @delay_time_for_gpt4(i32 noundef %4) #14, !dbg !2392
  ret void, !dbg !2393
}

; Function Attrs: noinline nounwind optsize
define dso_local void @drvTMR_init(i32 noundef %0, i32 noundef %1, i1 noundef zeroext %2, void ()* noundef %3) local_unnamed_addr #0 !dbg !2394 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !2398, metadata !DIExpression()), !dbg !2402
  call void @llvm.dbg.value(metadata i32 %1, metadata !2399, metadata !DIExpression()), !dbg !2402
  call void @llvm.dbg.value(metadata i1 %2, metadata !2400, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !2402
  call void @llvm.dbg.value(metadata void ()* %3, metadata !2401, metadata !DIExpression()), !dbg !2402
  tail call void @GPT_Stop(i32 noundef %0) #13, !dbg !2403
  %5 = icmp eq i32 %0, 0, !dbg !2404
  br i1 %5, label %6, label %7, !dbg !2406

6:                                                ; preds = %4
  store volatile i32 0, i32* inttoptr (i32 -2096824304 to i32*), align 16, !dbg !2407
  br label %8, !dbg !2409

7:                                                ; preds = %4
  store volatile i32 0, i32* inttoptr (i32 -2096824288 to i32*), align 32, !dbg !2410
  br label %8

8:                                                ; preds = %7, %6
  %9 = phi i32 [ %0, %7 ], [ 0, %6 ]
  tail call void @GPT_init(i32 noundef %9, i32 noundef 1, void ()* noundef %3) #13, !dbg !2412
  tail call void @GPT_ResetTimer(i32 noundef %0, i32 noundef %1, i1 noundef zeroext %2) #13, !dbg !2413
  ret void, !dbg !2414
}

; Function Attrs: noinline nounwind optsize
define dso_local void @TMR_Start(i32 noundef %0) local_unnamed_addr #0 !dbg !2415 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !2417, metadata !DIExpression()), !dbg !2418
  tail call void @GPT_Start(i32 noundef %0) #13, !dbg !2419
  ret void, !dbg !2420
}

; Function Attrs: noinline nounwind optsize
define dso_local void @TMR_Stop(i32 noundef %0) local_unnamed_addr #0 !dbg !2421 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !2423, metadata !DIExpression()), !dbg !2424
  tail call void @GPT_Stop(i32 noundef %0) #13, !dbg !2425
  ret void, !dbg !2426
}

; Function Attrs: noinline nounwind optsize
define dso_local void @drvGPT2Init() local_unnamed_addr #0 !dbg !2427 {
  tail call void @CM4_GPT2Init() #13, !dbg !2428
  ret void, !dbg !2429
}

; Function Attrs: noinline nounwind optsize
define dso_local void @drvGPT4Init() local_unnamed_addr #0 !dbg !2430 {
  tail call void @CM4_GPT4Init() #13, !dbg !2431
  ret void, !dbg !2432
}

; Function Attrs: nofree noinline norecurse nounwind optsize
define dso_local void @clear_TMR_INT_status_bit(i32 noundef %0) local_unnamed_addr #3 !dbg !2433 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !2435, metadata !DIExpression()), !dbg !2436
  switch i32 %0, label %5 [
    i32 0, label %3
    i32 1, label %2
  ], !dbg !2437

2:                                                ; preds = %1
  br label %3, !dbg !2438

3:                                                ; preds = %1, %2
  %4 = phi i32 [ 2, %2 ], [ 1, %1 ]
  store volatile i32 %4, i32* inttoptr (i32 -2096824320 to i32*), align 65536, !dbg !2436
  br label %5, !dbg !2441

5:                                                ; preds = %3, %1
  ret void, !dbg !2441
}

; Function Attrs: noinline nounwind optsize
define dso_local void @top_xtal_init() local_unnamed_addr #0 !dbg !2442 {
  call void @llvm.dbg.value(metadata i32 0, metadata !2444, metadata !DIExpression()), !dbg !2446
  %1 = load volatile i32, i32* inttoptr (i32 -2097118784 to i32*), align 64, !dbg !2447
  call void @llvm.dbg.value(metadata i32 %1, metadata !2445, metadata !DIExpression()), !dbg !2446
  %2 = lshr i32 %1, 13, !dbg !2448
  %3 = and i32 %2, 7, !dbg !2449
  call void @llvm.dbg.value(metadata i32 %3, metadata !2445, metadata !DIExpression()), !dbg !2446
  %4 = load volatile i32, i32* inttoptr (i32 -2097118792 to i32*), align 8, !dbg !2450
  call void @llvm.dbg.value(metadata i32 %4, metadata !2444, metadata !DIExpression()), !dbg !2446
  call void @llvm.dbg.value(metadata i32 %4, metadata !2444, metadata !DIExpression(DW_OP_constu, 18446744073709549568, DW_OP_and, DW_OP_stack_value)), !dbg !2446
  %5 = getelementptr inbounds [8 x i32], [8 x i32]* @switch.table.top_xtal_init, i32 0, i32 %3, !dbg !2451
  %6 = load i32, i32* %5, align 4, !dbg !2451
  %7 = getelementptr inbounds [8 x i32], [8 x i32]* @switch.table.top_xtal_init.1, i32 0, i32 %3, !dbg !2451
  %8 = load i32, i32* %7, align 4, !dbg !2451
  %9 = and i32 %4, -2048, !dbg !2452
  call void @llvm.dbg.value(metadata i32 %9, metadata !2444, metadata !DIExpression()), !dbg !2446
  store i32 %6, i32* @gXtalFreq, align 4, !dbg !2453
  %10 = or i32 %9, %8, !dbg !2453
  call void @llvm.dbg.value(metadata i32 %10, metadata !2444, metadata !DIExpression()), !dbg !2446
  store volatile i32 %10, i32* inttoptr (i32 -2097118792 to i32*), align 8, !dbg !2455
  %11 = load i32, i32* @gXtalFreq, align 4, !dbg !2456
  store i32 %11, i32* @gCpuFrequency, align 4, !dbg !2457
  tail call void @SystemCoreClockUpdate() #13, !dbg !2458
  %12 = load i32, i32* @SystemCoreClock, align 4, !dbg !2459
  %13 = udiv i32 %12, 1000, !dbg !2460
  %14 = tail call i32 @SysTick_Set(i32 noundef %13) #13, !dbg !2461
  ret void, !dbg !2462
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize readonly willreturn
define dso_local i32 @top_xtal_freq_get() local_unnamed_addr #7 !dbg !2463 {
  %1 = load i32, i32* @gXtalFreq, align 4, !dbg !2464
  ret i32 %1, !dbg !2465
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize readonly willreturn
define dso_local i32 @top_mcu_freq_get() local_unnamed_addr #7 !dbg !2466 {
  %1 = load i32, i32* @gCpuFrequency, align 4, !dbg !2467
  ret i32 %1, !dbg !2468
}

; Function Attrs: nofree noinline nounwind optsize
define dso_local void @cmnPLL1ON() local_unnamed_addr #8 !dbg !2469 {
  %1 = alloca i32, align 4
  %2 = bitcast i32* %1 to i8*, !dbg !2473
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %2), !dbg !2473
  call void @llvm.dbg.declare(metadata i32* %1, metadata !2471, metadata !DIExpression()), !dbg !2474
  call void @llvm.dbg.value(metadata i32* inttoptr (i32 -2097118792 to i32*), metadata !2472, metadata !DIExpression()), !dbg !2475
  %3 = tail call fastcc i32 @cmnReadRegister32(i8* noundef nonnull inttoptr (i32 -2097118792 to i8*)) #14, !dbg !2476
  store volatile i32 %3, i32* %1, align 4, !dbg !2477
  %4 = load volatile i32, i32* %1, align 4, !dbg !2478
  %5 = lshr i32 %4, 28, !dbg !2479
  %6 = and i32 %5, 3, !dbg !2480
  store volatile i32 %6, i32* %1, align 4, !dbg !2481
  %7 = load volatile i32, i32* %1, align 4, !dbg !2482
  %8 = icmp eq i32 %7, 0, !dbg !2484
  br i1 %8, label %9, label %22, !dbg !2485

9:                                                ; preds = %0
  %10 = tail call fastcc i32 @cmnReadRegister32(i8* noundef nonnull inttoptr (i32 -2097118792 to i8*)) #14, !dbg !2486
  store volatile i32 %10, i32* %1, align 4, !dbg !2488
  %11 = load volatile i32, i32* %1, align 4, !dbg !2489
  %12 = and i32 %11, -16777217, !dbg !2490
  store volatile i32 %12, i32* %1, align 4, !dbg !2491
  %13 = load volatile i32, i32* %1, align 4, !dbg !2492
  %14 = or i32 %13, 536870912, !dbg !2493
  store volatile i32 %14, i32* %1, align 4, !dbg !2494
  %15 = load volatile i32, i32* %1, align 4, !dbg !2495
  tail call fastcc void @cmnWriteRegister32(i8* noundef nonnull inttoptr (i32 -2097118792 to i8*), i32 noundef %15) #14, !dbg !2496
  br label %16, !dbg !2497

16:                                               ; preds = %16, %9
  %17 = tail call fastcc i32 @cmnReadRegister32(i8* noundef nonnull inttoptr (i32 -2097118792 to i8*)) #14, !dbg !2498
  store volatile i32 %17, i32* %1, align 4, !dbg !2500
  %18 = load volatile i32, i32* %1, align 4, !dbg !2501
  %19 = and i32 %18, 134217728, !dbg !2502
  store volatile i32 %19, i32* %1, align 4, !dbg !2503
  %20 = load volatile i32, i32* %1, align 4, !dbg !2504
  %21 = icmp eq i32 %20, 0, !dbg !2505
  br i1 %21, label %16, label %22, !dbg !2506, !llvm.loop !2507

22:                                               ; preds = %16, %0
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %2), !dbg !2509
  ret void, !dbg !2509
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: mustprogress nofree noinline norecurse nounwind optsize willreturn
define internal fastcc i32 @cmnReadRegister32(i8* noundef %0) unnamed_addr #4 !dbg !2510 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !2517, metadata !DIExpression()), !dbg !2518
  %2 = bitcast i8* %0 to i32*, !dbg !2519
  %3 = load volatile i32, i32* %2, align 4, !dbg !2520
  ret i32 %3, !dbg !2521
}

; Function Attrs: nofree noinline norecurse nounwind optsize
define internal fastcc void @cmnWriteRegister32(i8* noundef %0, i32 noundef %1) unnamed_addr #3 !dbg !2522 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !2526, metadata !DIExpression()), !dbg !2528
  call void @llvm.dbg.value(metadata i32 %1, metadata !2527, metadata !DIExpression()), !dbg !2528
  %3 = bitcast i8* %0 to i32*, !dbg !2529
  store volatile i32 %1, i32* %3, align 4, !dbg !2530
  ret void, !dbg !2531
}

; Function Attrs: nofree noinline nounwind optsize
define dso_local void @cmnPLL1ON_PLL2ON(i8 noundef zeroext %0) local_unnamed_addr #8 !dbg !2532 {
  %2 = alloca i32, align 4
  call void @llvm.dbg.value(metadata i8 %0, metadata !2536, metadata !DIExpression()), !dbg !2539
  %3 = bitcast i32* %2 to i8*, !dbg !2540
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %3), !dbg !2540
  call void @llvm.dbg.declare(metadata i32* %2, metadata !2537, metadata !DIExpression()), !dbg !2541
  call void @llvm.dbg.value(metadata i32* inttoptr (i32 -2097118792 to i32*), metadata !2538, metadata !DIExpression()), !dbg !2539
  %4 = tail call fastcc i32 @cmnReadRegister32(i8* noundef nonnull inttoptr (i32 -2097118792 to i8*)) #14, !dbg !2542
  store volatile i32 %4, i32* %2, align 4, !dbg !2543
  %5 = load volatile i32, i32* %2, align 4, !dbg !2544
  %6 = lshr i32 %5, 28, !dbg !2545
  %7 = and i32 %6, 3, !dbg !2546
  store volatile i32 %7, i32* %2, align 4, !dbg !2547
  %8 = load volatile i32, i32* %2, align 4, !dbg !2548
  %9 = icmp eq i32 %8, 3, !dbg !2550
  br i1 %9, label %38, label %10, !dbg !2551

10:                                               ; preds = %1
  %11 = tail call fastcc i32 @cmnReadRegister32(i8* noundef nonnull inttoptr (i32 -2097118792 to i8*)) #14, !dbg !2552
  store volatile i32 %11, i32* %2, align 4, !dbg !2554
  %12 = load volatile i32, i32* %2, align 4, !dbg !2555
  %13 = and i32 %12, -262145, !dbg !2556
  store volatile i32 %13, i32* %2, align 4, !dbg !2557
  %14 = load volatile i32, i32* %2, align 4, !dbg !2558
  %15 = and i32 %14, -16777217, !dbg !2559
  store volatile i32 %15, i32* %2, align 4, !dbg !2560
  %16 = load volatile i32, i32* %2, align 4, !dbg !2561
  store volatile i32 %16, i32* %2, align 4, !dbg !2562
  %17 = load volatile i32, i32* %2, align 4, !dbg !2563
  tail call fastcc void @cmnWriteRegister32(i8* noundef nonnull inttoptr (i32 -2097118792 to i8*), i32 noundef %17) #14, !dbg !2564
  %18 = tail call fastcc i32 @cmnReadRegister32(i8* noundef nonnull inttoptr (i32 -2097118792 to i8*)) #14, !dbg !2565
  store volatile i32 %18, i32* %2, align 4, !dbg !2566
  %19 = load volatile i32, i32* %2, align 4, !dbg !2567
  %20 = and i32 %19, -805306369, !dbg !2568
  store volatile i32 %20, i32* %2, align 4, !dbg !2569
  %21 = load volatile i32, i32* %2, align 4, !dbg !2570
  %22 = and i32 %21, -16777217, !dbg !2571
  store volatile i32 %22, i32* %2, align 4, !dbg !2572
  %23 = load volatile i32, i32* %2, align 4, !dbg !2573
  %24 = or i32 %23, 805306368, !dbg !2574
  store volatile i32 %24, i32* %2, align 4, !dbg !2575
  %25 = load volatile i32, i32* %2, align 4, !dbg !2576
  tail call fastcc void @cmnWriteRegister32(i8* noundef nonnull inttoptr (i32 -2097118792 to i8*), i32 noundef %25) #14, !dbg !2577
  br label %26, !dbg !2578

26:                                               ; preds = %26, %10
  %27 = tail call fastcc i32 @cmnReadRegister32(i8* noundef nonnull inttoptr (i32 -2097118792 to i8*)) #14, !dbg !2579
  store volatile i32 %27, i32* %2, align 4, !dbg !2581
  %28 = load volatile i32, i32* %2, align 4, !dbg !2582
  %29 = and i32 %28, 67108864, !dbg !2583
  store volatile i32 %29, i32* %2, align 4, !dbg !2584
  %30 = load volatile i32, i32* %2, align 4, !dbg !2585
  %31 = icmp eq i32 %30, 0, !dbg !2586
  br i1 %31, label %26, label %32, !dbg !2587, !llvm.loop !2588

32:                                               ; preds = %26
  %33 = tail call fastcc i32 @cmnReadRegister32(i8* noundef nonnull inttoptr (i32 -2097118792 to i8*)) #14, !dbg !2590
  store volatile i32 %33, i32* %2, align 4, !dbg !2591
  %34 = load volatile i32, i32* %2, align 4, !dbg !2592
  %35 = and i32 %34, -262145, !dbg !2593
  store volatile i32 %35, i32* %2, align 4, !dbg !2594
  %36 = load volatile i32, i32* %2, align 4, !dbg !2595
  %37 = and i32 %36, -16777217, !dbg !2596
  store volatile i32 %37, i32* %2, align 4, !dbg !2597
  br label %38, !dbg !2598

38:                                               ; preds = %32, %1
  %39 = tail call fastcc i32 @cmnReadRegister32(i8* noundef nonnull inttoptr (i32 -2097118792 to i8*)) #14, !dbg !2599
  store volatile i32 %39, i32* %2, align 4, !dbg !2600
  %40 = icmp eq i8 %0, 0, !dbg !2601
  %41 = load volatile i32, i32* %2, align 4, !dbg !2603
  br i1 %40, label %44, label %42, !dbg !2604

42:                                               ; preds = %38
  %43 = or i32 %41, 262144, !dbg !2605
  store volatile i32 %43, i32* %2, align 4, !dbg !2607
  br label %45, !dbg !2608

44:                                               ; preds = %38
  store volatile i32 %41, i32* %2, align 4, !dbg !2609
  br label %45

45:                                               ; preds = %44, %42
  %46 = load volatile i32, i32* %2, align 4, !dbg !2611
  tail call fastcc void @cmnWriteRegister32(i8* noundef nonnull inttoptr (i32 -2097118792 to i8*), i32 noundef %46) #14, !dbg !2612
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %3), !dbg !2613
  ret void, !dbg !2613
}

; Function Attrs: nofree noinline nounwind optsize
define dso_local void @cmnPLL1OFF_PLL2OFF() local_unnamed_addr #8 !dbg !2614 {
  %1 = alloca i32, align 4
  %2 = bitcast i32* %1 to i8*, !dbg !2618
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %2), !dbg !2618
  call void @llvm.dbg.declare(metadata i32* %1, metadata !2616, metadata !DIExpression()), !dbg !2619
  call void @llvm.dbg.value(metadata i32* inttoptr (i32 -2097118792 to i32*), metadata !2617, metadata !DIExpression()), !dbg !2620
  %3 = tail call fastcc i32 @cmnReadRegister32(i8* noundef nonnull inttoptr (i32 -2097118792 to i8*)) #14, !dbg !2621
  store volatile i32 %3, i32* %1, align 4, !dbg !2622
  %4 = load volatile i32, i32* %1, align 4, !dbg !2623
  %5 = and i32 %4, -805306369, !dbg !2624
  store volatile i32 %5, i32* %1, align 4, !dbg !2625
  %6 = load volatile i32, i32* %1, align 4, !dbg !2626
  %7 = and i32 %6, -16777217, !dbg !2627
  store volatile i32 %7, i32* %1, align 4, !dbg !2628
  %8 = load volatile i32, i32* %1, align 4, !dbg !2629
  store volatile i32 %8, i32* %1, align 4, !dbg !2630
  %9 = load volatile i32, i32* %1, align 4, !dbg !2631
  tail call fastcc void @cmnWriteRegister32(i8* noundef nonnull inttoptr (i32 -2097118792 to i8*), i32 noundef %9) #14, !dbg !2632
  %10 = tail call fastcc i32 @cmnReadRegister32(i8* noundef nonnull inttoptr (i32 -2097118792 to i8*)) #14, !dbg !2633
  store volatile i32 %10, i32* %1, align 4, !dbg !2634
  %11 = load volatile i32, i32* %1, align 4, !dbg !2635
  %12 = and i32 %11, -262145, !dbg !2636
  store volatile i32 %12, i32* %1, align 4, !dbg !2637
  %13 = load volatile i32, i32* %1, align 4, !dbg !2638
  %14 = and i32 %13, -16777217, !dbg !2639
  store volatile i32 %14, i32* %1, align 4, !dbg !2640
  %15 = load volatile i32, i32* %1, align 4, !dbg !2641
  store volatile i32 %15, i32* %1, align 4, !dbg !2642
  %16 = load volatile i32, i32* %1, align 4, !dbg !2643
  tail call fastcc void @cmnWriteRegister32(i8* noundef nonnull inttoptr (i32 -2097118792 to i8*), i32 noundef %16) #14, !dbg !2644
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %2), !dbg !2645
  ret void, !dbg !2645
}

; Function Attrs: noinline nounwind optsize
define dso_local void @cmnCpuClkConfigureToXtal() local_unnamed_addr #0 !dbg !2646 {
  %1 = alloca i32, align 4
  %2 = bitcast i32* %1 to i8*, !dbg !2650
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %2), !dbg !2650
  call void @llvm.dbg.declare(metadata i32* %1, metadata !2648, metadata !DIExpression()), !dbg !2651
  call void @llvm.dbg.value(metadata i32* inttoptr (i32 -2097118800 to i32*), metadata !2649, metadata !DIExpression()), !dbg !2652
  %3 = tail call fastcc i32 @cmnReadRegister32(i8* noundef nonnull inttoptr (i32 -2097118800 to i8*)) #14, !dbg !2653
  store volatile i32 %3, i32* %1, align 4, !dbg !2654
  %4 = load volatile i32, i32* %1, align 4, !dbg !2655
  %5 = and i32 %4, -8, !dbg !2656
  store volatile i32 %5, i32* %1, align 4, !dbg !2657
  %6 = load volatile i32, i32* %1, align 4, !dbg !2658
  store volatile i32 %6, i32* %1, align 4, !dbg !2659
  %7 = load volatile i32, i32* %1, align 4, !dbg !2660
  tail call fastcc void @cmnWriteRegister32(i8* noundef nonnull inttoptr (i32 -2097118800 to i8*), i32 noundef %7) #14, !dbg !2661
  %8 = tail call fastcc i32 @cmnReadRegister32(i8* noundef nonnull inttoptr (i32 -2097118800 to i8*)) #14, !dbg !2662
  store volatile i32 %8, i32* %1, align 4, !dbg !2663
  %9 = load volatile i32, i32* %1, align 4, !dbg !2664
  %10 = and i32 %9, -49153, !dbg !2665
  store volatile i32 %10, i32* %1, align 4, !dbg !2666
  %11 = load volatile i32, i32* %1, align 4, !dbg !2667
  store volatile i32 %11, i32* %1, align 4, !dbg !2668
  %12 = load volatile i32, i32* %1, align 4, !dbg !2669
  tail call fastcc void @cmnWriteRegister32(i8* noundef nonnull inttoptr (i32 -2097118800 to i8*), i32 noundef %12) #14, !dbg !2670
  br label %13, !dbg !2671

13:                                               ; preds = %13, %0
  %14 = load volatile i32, i32* %1, align 4, !dbg !2672
  %15 = tail call fastcc i32 @cmnReadRegister32(i8* noundef nonnull inttoptr (i32 -2097118800 to i8*)) #14, !dbg !2673
  %16 = icmp eq i32 %14, %15, !dbg !2674
  br i1 %16, label %17, label %13, !dbg !2671, !llvm.loop !2675

17:                                               ; preds = %13
  %18 = tail call i32 @top_xtal_freq_get() #14, !dbg !2677
  store i32 %18, i32* @gCpuFrequency, align 4, !dbg !2678
  tail call void @SystemCoreClockUpdate() #13, !dbg !2679
  %19 = load i32, i32* @SystemCoreClock, align 4, !dbg !2680
  %20 = udiv i32 %19, 1000, !dbg !2681
  %21 = tail call i32 @SysTick_Set(i32 noundef %20) #13, !dbg !2682
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %2), !dbg !2683
  ret void, !dbg !2683
}

; Function Attrs: noinline nounwind optsize
define dso_local void @cmnCpuClkConfigureTo192M() local_unnamed_addr #0 !dbg !2684 {
  %1 = alloca i32, align 4
  %2 = bitcast i32* %1 to i8*, !dbg !2688
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %2), !dbg !2688
  call void @llvm.dbg.declare(metadata i32* %1, metadata !2686, metadata !DIExpression()), !dbg !2689
  call void @llvm.dbg.value(metadata i32* inttoptr (i32 -2097118800 to i32*), metadata !2687, metadata !DIExpression()), !dbg !2690
  tail call void @cmnPLL1ON_PLL2ON(i8 noundef zeroext 1) #14, !dbg !2691
  %3 = tail call fastcc i32 @cmnReadRegister32(i8* noundef nonnull inttoptr (i32 -2097118800 to i8*)) #14, !dbg !2692
  store volatile i32 %3, i32* %1, align 4, !dbg !2693
  %4 = load volatile i32, i32* %1, align 4, !dbg !2694
  %5 = and i32 %4, -49153, !dbg !2695
  store volatile i32 %5, i32* %1, align 4, !dbg !2696
  %6 = load volatile i32, i32* %1, align 4, !dbg !2697
  %7 = or i32 %6, 16384, !dbg !2698
  store volatile i32 %7, i32* %1, align 4, !dbg !2699
  %8 = load volatile i32, i32* %1, align 4, !dbg !2700
  tail call fastcc void @cmnWriteRegister32(i8* noundef nonnull inttoptr (i32 -2097118800 to i8*), i32 noundef %8) #14, !dbg !2701
  br label %9, !dbg !2702

9:                                                ; preds = %9, %0
  %10 = load volatile i32, i32* %1, align 4, !dbg !2703
  %11 = tail call fastcc i32 @cmnReadRegister32(i8* noundef nonnull inttoptr (i32 -2097118800 to i8*)) #14, !dbg !2704
  %12 = icmp eq i32 %10, %11, !dbg !2705
  br i1 %12, label %13, label %9, !dbg !2702, !llvm.loop !2706

13:                                               ; preds = %9
  %14 = tail call fastcc i32 @cmnReadRegister32(i8* noundef nonnull inttoptr (i32 -2097118800 to i8*)) #14, !dbg !2708
  store volatile i32 %14, i32* %1, align 4, !dbg !2709
  %15 = load volatile i32, i32* %1, align 4, !dbg !2710
  %16 = and i32 %15, -1009, !dbg !2711
  store volatile i32 %16, i32* %1, align 4, !dbg !2712
  %17 = load volatile i32, i32* %1, align 4, !dbg !2713
  %18 = or i32 %17, 128, !dbg !2714
  store volatile i32 %18, i32* %1, align 4, !dbg !2715
  %19 = load volatile i32, i32* %1, align 4, !dbg !2716
  tail call fastcc void @cmnWriteRegister32(i8* noundef nonnull inttoptr (i32 -2097118800 to i8*), i32 noundef %19) #14, !dbg !2717
  %20 = tail call fastcc i32 @cmnReadRegister32(i8* noundef nonnull inttoptr (i32 -2097118800 to i8*)) #14, !dbg !2718
  store volatile i32 %20, i32* %1, align 4, !dbg !2719
  %21 = load volatile i32, i32* %1, align 4, !dbg !2720
  %22 = and i32 %21, -8, !dbg !2721
  store volatile i32 %22, i32* %1, align 4, !dbg !2722
  %23 = load volatile i32, i32* %1, align 4, !dbg !2723
  %24 = or i32 %23, 4, !dbg !2724
  store volatile i32 %24, i32* %1, align 4, !dbg !2725
  %25 = load volatile i32, i32* %1, align 4, !dbg !2726
  tail call fastcc void @cmnWriteRegister32(i8* noundef nonnull inttoptr (i32 -2097118800 to i8*), i32 noundef %25) #14, !dbg !2727
  store i32 192000000, i32* @gCpuFrequency, align 4, !dbg !2728
  tail call void @SystemCoreClockUpdate() #13, !dbg !2729
  %26 = load i32, i32* @SystemCoreClock, align 4, !dbg !2730
  %27 = udiv i32 %26, 1000, !dbg !2731
  %28 = tail call i32 @SysTick_Set(i32 noundef %27) #13, !dbg !2732
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %2), !dbg !2733
  ret void, !dbg !2733
}

; Function Attrs: noinline nounwind optsize
define dso_local void @cmnCpuClkConfigureTo160M() local_unnamed_addr #0 !dbg !2734 {
  %1 = alloca i32, align 4
  %2 = bitcast i32* %1 to i8*, !dbg !2738
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %2), !dbg !2738
  call void @llvm.dbg.declare(metadata i32* %1, metadata !2736, metadata !DIExpression()), !dbg !2739
  call void @llvm.dbg.value(metadata i32* inttoptr (i32 -2097118800 to i32*), metadata !2737, metadata !DIExpression()), !dbg !2740
  tail call void @cmnPLL1ON_PLL2ON(i8 noundef zeroext 0) #14, !dbg !2741
  %3 = tail call fastcc i32 @cmnReadRegister32(i8* noundef nonnull inttoptr (i32 -2097118800 to i8*)) #14, !dbg !2742
  store volatile i32 %3, i32* %1, align 4, !dbg !2743
  %4 = load volatile i32, i32* %1, align 4, !dbg !2744
  %5 = and i32 %4, -49153, !dbg !2745
  store volatile i32 %5, i32* %1, align 4, !dbg !2746
  %6 = load volatile i32, i32* %1, align 4, !dbg !2747
  %7 = or i32 %6, 32768, !dbg !2748
  store volatile i32 %7, i32* %1, align 4, !dbg !2749
  %8 = load volatile i32, i32* %1, align 4, !dbg !2750
  tail call fastcc void @cmnWriteRegister32(i8* noundef nonnull inttoptr (i32 -2097118800 to i8*), i32 noundef %8) #14, !dbg !2751
  br label %9, !dbg !2752

9:                                                ; preds = %9, %0
  %10 = load volatile i32, i32* %1, align 4, !dbg !2753
  %11 = tail call fastcc i32 @cmnReadRegister32(i8* noundef nonnull inttoptr (i32 -2097118800 to i8*)) #14, !dbg !2754
  %12 = icmp eq i32 %10, %11, !dbg !2755
  br i1 %12, label %13, label %9, !dbg !2752, !llvm.loop !2756

13:                                               ; preds = %9
  %14 = tail call fastcc i32 @cmnReadRegister32(i8* noundef nonnull inttoptr (i32 -2097118800 to i8*)) #14, !dbg !2758
  store volatile i32 %14, i32* %1, align 4, !dbg !2759
  %15 = load volatile i32, i32* %1, align 4, !dbg !2760
  %16 = and i32 %15, -1009, !dbg !2761
  store volatile i32 %16, i32* %1, align 4, !dbg !2762
  %17 = load volatile i32, i32* %1, align 4, !dbg !2763
  %18 = or i32 %17, 32, !dbg !2764
  store volatile i32 %18, i32* %1, align 4, !dbg !2765
  %19 = load volatile i32, i32* %1, align 4, !dbg !2766
  tail call fastcc void @cmnWriteRegister32(i8* noundef nonnull inttoptr (i32 -2097118800 to i8*), i32 noundef %19) #14, !dbg !2767
  %20 = tail call fastcc i32 @cmnReadRegister32(i8* noundef nonnull inttoptr (i32 -2097118800 to i8*)) #14, !dbg !2768
  store volatile i32 %20, i32* %1, align 4, !dbg !2769
  %21 = load volatile i32, i32* %1, align 4, !dbg !2770
  %22 = and i32 %21, -8, !dbg !2771
  store volatile i32 %22, i32* %1, align 4, !dbg !2772
  %23 = load volatile i32, i32* %1, align 4, !dbg !2773
  %24 = or i32 %23, 4, !dbg !2774
  store volatile i32 %24, i32* %1, align 4, !dbg !2775
  %25 = load volatile i32, i32* %1, align 4, !dbg !2776
  tail call fastcc void @cmnWriteRegister32(i8* noundef nonnull inttoptr (i32 -2097118800 to i8*), i32 noundef %25) #14, !dbg !2777
  store i32 160000000, i32* @gCpuFrequency, align 4, !dbg !2778
  tail call void @SystemCoreClockUpdate() #13, !dbg !2779
  %26 = load i32, i32* @SystemCoreClock, align 4, !dbg !2780
  %27 = udiv i32 %26, 1000, !dbg !2781
  %28 = tail call i32 @SysTick_Set(i32 noundef %27) #13, !dbg !2782
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %2), !dbg !2783
  ret void, !dbg !2783
}

; Function Attrs: noinline nounwind optsize
define dso_local void @cmnCpuClkConfigureTo64M() local_unnamed_addr #0 !dbg !2784 {
  %1 = alloca i32, align 4
  %2 = bitcast i32* %1 to i8*, !dbg !2788
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %2), !dbg !2788
  call void @llvm.dbg.declare(metadata i32* %1, metadata !2786, metadata !DIExpression()), !dbg !2789
  call void @llvm.dbg.value(metadata i32* inttoptr (i32 -2097118800 to i32*), metadata !2787, metadata !DIExpression()), !dbg !2790
  tail call void @cmnPLL1ON() #14, !dbg !2791
  %3 = tail call fastcc i32 @cmnReadRegister32(i8* noundef nonnull inttoptr (i32 -2097118800 to i8*)) #14, !dbg !2792
  store volatile i32 %3, i32* %1, align 4, !dbg !2793
  %4 = load volatile i32, i32* %1, align 4, !dbg !2794
  %5 = and i32 %4, -49153, !dbg !2795
  store volatile i32 %5, i32* %1, align 4, !dbg !2796
  %6 = load volatile i32, i32* %1, align 4, !dbg !2797
  store volatile i32 %6, i32* %1, align 4, !dbg !2798
  %7 = load volatile i32, i32* %1, align 4, !dbg !2799
  tail call fastcc void @cmnWriteRegister32(i8* noundef nonnull inttoptr (i32 -2097118800 to i8*), i32 noundef %7) #14, !dbg !2800
  br label %8, !dbg !2801

8:                                                ; preds = %8, %0
  %9 = load volatile i32, i32* %1, align 4, !dbg !2802
  %10 = tail call fastcc i32 @cmnReadRegister32(i8* noundef nonnull inttoptr (i32 -2097118800 to i8*)) #14, !dbg !2803
  %11 = icmp eq i32 %9, %10, !dbg !2804
  br i1 %11, label %12, label %8, !dbg !2801, !llvm.loop !2805

12:                                               ; preds = %8
  %13 = tail call fastcc i32 @cmnReadRegister32(i8* noundef nonnull inttoptr (i32 -2097118800 to i8*)) #14, !dbg !2807
  store volatile i32 %13, i32* %1, align 4, !dbg !2808
  %14 = load volatile i32, i32* %1, align 4, !dbg !2809
  %15 = and i32 %14, -8, !dbg !2810
  store volatile i32 %15, i32* %1, align 4, !dbg !2811
  %16 = load volatile i32, i32* %1, align 4, !dbg !2812
  %17 = or i32 %16, 2, !dbg !2813
  store volatile i32 %17, i32* %1, align 4, !dbg !2814
  %18 = load volatile i32, i32* %1, align 4, !dbg !2815
  tail call fastcc void @cmnWriteRegister32(i8* noundef nonnull inttoptr (i32 -2097118800 to i8*), i32 noundef %18) #14, !dbg !2816
  store i32 64000000, i32* @gCpuFrequency, align 4, !dbg !2817
  tail call void @SystemCoreClockUpdate() #13, !dbg !2818
  %19 = load i32, i32* @SystemCoreClock, align 4, !dbg !2819
  %20 = udiv i32 %19, 1000, !dbg !2820
  %21 = tail call i32 @SysTick_Set(i32 noundef %20) #13, !dbg !2821
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %2), !dbg !2822
  ret void, !dbg !2822
}

; Function Attrs: nofree noinline nounwind optsize
define dso_local void @cmnSerialFlashClkConfToXtal() local_unnamed_addr #8 section ".ramTEXT" !dbg !2823 {
  %1 = alloca i32, align 4
  %2 = bitcast i32* %1 to i8*, !dbg !2827
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %2), !dbg !2827
  call void @llvm.dbg.declare(metadata i32* %1, metadata !2825, metadata !DIExpression()), !dbg !2828
  call void @llvm.dbg.value(metadata i32* inttoptr (i32 -2097118796 to i32*), metadata !2826, metadata !DIExpression()), !dbg !2829
  %3 = tail call fastcc i32 @cmnReadRegister32(i8* noundef nonnull inttoptr (i32 -2097118796 to i8*)) #14, !dbg !2830
  store volatile i32 %3, i32* %1, align 4, !dbg !2831
  %4 = load volatile i32, i32* %1, align 4, !dbg !2832
  %5 = and i32 %4, -24577, !dbg !2833
  store volatile i32 %5, i32* %1, align 4, !dbg !2834
  %6 = load volatile i32, i32* %1, align 4, !dbg !2835
  store volatile i32 %6, i32* %1, align 4, !dbg !2836
  %7 = load volatile i32, i32* %1, align 4, !dbg !2837
  tail call fastcc void @cmnWriteRegister32(i8* noundef nonnull inttoptr (i32 -2097118796 to i8*), i32 noundef %7) #14, !dbg !2838
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %2), !dbg !2839
  ret void, !dbg !2839
}

; Function Attrs: mustprogress nofree noinline norecurse nounwind optsize willreturn
define dso_local i32 @getc() local_unnamed_addr #4 !dbg !2840 {
  %1 = tail call i32 @getc_nowait() #14, !dbg !2845
  call void @llvm.dbg.value(metadata i32 %1, metadata !2844, metadata !DIExpression()), !dbg !2846
  ret i32 %1, !dbg !2847
}

; Function Attrs: mustprogress nofree noinline norecurse nounwind optsize willreturn
define dso_local i32 @getc_nowait() local_unnamed_addr #4 !dbg !2848 {
  %1 = load volatile i32, i32* inttoptr (i32 -2096955372 to i32*), align 4, !dbg !2851
  %2 = and i32 %1, 1, !dbg !2853
  %3 = icmp eq i32 %2, 0, !dbg !2853
  br i1 %3, label %7, label %4, !dbg !2854

4:                                                ; preds = %0
  %5 = load volatile i32, i32* inttoptr (i32 -2096955392 to i32*), align 65536, !dbg !2855
  %6 = and i32 %5, 255, !dbg !2857
  call void @llvm.dbg.value(metadata i32 %5, metadata !2850, metadata !DIExpression()), !dbg !2858
  br label %7, !dbg !2859

7:                                                ; preds = %0, %4
  %8 = phi i32 [ %6, %4 ], [ -1, %0 ], !dbg !2860
  ret i32 %8, !dbg !2861
}

; Function Attrs: nofree noinline norecurse nounwind optsize
define dso_local void @uart_output_char(i32 noundef %0, i8 noundef zeroext %1) local_unnamed_addr #3 !dbg !2862 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !2867, metadata !DIExpression()), !dbg !2870
  call void @llvm.dbg.value(metadata i8 %1, metadata !2868, metadata !DIExpression()), !dbg !2870
  %3 = icmp eq i32 %0, 0, !dbg !2871
  %4 = select i1 %3, i32 -2096955392, i32 -2096889856, !dbg !2871
  call void @llvm.dbg.value(metadata i32 %4, metadata !2869, metadata !DIExpression()), !dbg !2870
  %5 = or i32 %4, 20
  %6 = inttoptr i32 %5 to i32*
  br label %7, !dbg !2872

7:                                                ; preds = %7, %2
  %8 = load volatile i32, i32* %6, align 4, !dbg !2873
  %9 = and i32 %8, 32, !dbg !2874
  %10 = icmp eq i32 %9, 0, !dbg !2875
  br i1 %10, label %7, label %11, !dbg !2872, !llvm.loop !2876

11:                                               ; preds = %7
  %12 = zext i8 %1 to i32, !dbg !2878
  %13 = inttoptr i32 %4 to i32*, !dbg !2879
  store volatile i32 %12, i32* %13, align 65536, !dbg !2880
  ret void, !dbg !2881
}

; Function Attrs: nofree noinline norecurse nounwind optsize
define dso_local zeroext i8 @uart_input_char(i32 noundef %0) local_unnamed_addr #3 !dbg !2882 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !2886, metadata !DIExpression()), !dbg !2889
  %2 = icmp eq i32 %0, 0, !dbg !2890
  %3 = select i1 %2, i32 -2096955392, i32 -2096889856, !dbg !2890
  call void @llvm.dbg.value(metadata i32 %3, metadata !2887, metadata !DIExpression()), !dbg !2889
  %4 = or i32 %3, 20
  %5 = inttoptr i32 %4 to i32*
  br label %6, !dbg !2891

6:                                                ; preds = %6, %1
  %7 = load volatile i32, i32* %5, align 4, !dbg !2892
  %8 = and i32 %7, 1, !dbg !2893
  %9 = icmp eq i32 %8, 0, !dbg !2894
  br i1 %9, label %6, label %10, !dbg !2891, !llvm.loop !2895

10:                                               ; preds = %6
  %11 = inttoptr i32 %3 to i32*, !dbg !2897
  %12 = load volatile i32, i32* %11, align 65536, !dbg !2897
  %13 = trunc i32 %12 to i8, !dbg !2897
  call void @llvm.dbg.value(metadata i8 %13, metadata !2888, metadata !DIExpression()), !dbg !2889
  ret i8 %13, !dbg !2898
}

; Function Attrs: mustprogress nofree noinline norecurse nounwind optsize willreturn
define dso_local i32 @uart_input_char_unblocking(i32 noundef %0) local_unnamed_addr #4 !dbg !2899 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !2903, metadata !DIExpression()), !dbg !2906
  %2 = icmp eq i32 %0, 0, !dbg !2907
  %3 = select i1 %2, i32 -2096955392, i32 -2096889856, !dbg !2907
  call void @llvm.dbg.value(metadata i32 %3, metadata !2904, metadata !DIExpression()), !dbg !2906
  %4 = or i32 %3, 20, !dbg !2908
  %5 = inttoptr i32 %4 to i32*, !dbg !2908
  %6 = load volatile i32, i32* %5, align 4, !dbg !2908
  %7 = and i32 %6, 1, !dbg !2910
  %8 = icmp eq i32 %7, 0, !dbg !2910
  br i1 %8, label %13, label %9, !dbg !2911

9:                                                ; preds = %1
  %10 = inttoptr i32 %3 to i32*, !dbg !2912
  %11 = load volatile i32, i32* %10, align 65536, !dbg !2912
  %12 = and i32 %11, 255, !dbg !2914
  call void @llvm.dbg.value(metadata i32 %11, metadata !2905, metadata !DIExpression()), !dbg !2906
  br label %13, !dbg !2915

13:                                               ; preds = %1, %9
  %14 = phi i32 [ %12, %9 ], [ -1, %1 ], !dbg !2916
  ret i32 %14, !dbg !2917
}

; Function Attrs: noinline nounwind optsize
define dso_local void @halUART_HWInit(i32 noundef %0) local_unnamed_addr #0 !dbg !2918 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !2922, metadata !DIExpression()), !dbg !2923
  tail call void @halUART_SetFormat(i32 noundef %0, i32 noundef 115200, i16 noundef zeroext 3, i16 noundef zeroext 0, i16 noundef zeroext 0) #14, !dbg !2924
  switch i32 %0, label %7 [
    i32 0, label %3
    i32 1, label %2
  ], !dbg !2925

2:                                                ; preds = %1
  br label %3, !dbg !2926

3:                                                ; preds = %1, %2
  %4 = phi i32* [ inttoptr (i32 -2096889780 to i32*), %2 ], [ inttoptr (i32 -2096955316 to i32*), %1 ]
  %5 = load volatile i32, i32* %4, align 4, !dbg !2930
  %6 = or i32 %5, 1, !dbg !2930
  store volatile i32 %6, i32* %4, align 4, !dbg !2930
  br label %7, !dbg !2931

7:                                                ; preds = %3, %1
  ret void, !dbg !2931
}

; Function Attrs: noinline nounwind optsize
define dso_local void @halUART_SetFormat(i32 noundef %0, i32 noundef %1, i16 noundef zeroext %2, i16 noundef zeroext %3, i16 noundef zeroext %4) local_unnamed_addr #0 !dbg !2932 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !2938, metadata !DIExpression()), !dbg !2955
  call void @llvm.dbg.value(metadata i32 %1, metadata !2939, metadata !DIExpression()), !dbg !2955
  call void @llvm.dbg.value(metadata i16 %2, metadata !2940, metadata !DIExpression()), !dbg !2955
  call void @llvm.dbg.value(metadata i16 %3, metadata !2941, metadata !DIExpression()), !dbg !2955
  call void @llvm.dbg.value(metadata i16 %4, metadata !2942, metadata !DIExpression()), !dbg !2955
  call void @llvm.dbg.value(metadata i32 -2096955392, metadata !2944, metadata !DIExpression()), !dbg !2955
  call void @llvm.dbg.declare(metadata [11 x i16]* @__const.halUART_SetFormat.fraction_L_mapping, metadata !2951, metadata !DIExpression()), !dbg !2956
  call void @llvm.dbg.declare(metadata [11 x i16]* @__const.halUART_SetFormat.fraction_M_mapping, metadata !2953, metadata !DIExpression()), !dbg !2957
  call void @llvm.dbg.value(metadata i32 0, metadata !2954, metadata !DIExpression()), !dbg !2955
  %6 = tail call i32 @top_xtal_freq_get() #13, !dbg !2958
  store i32 %6, i32* @gUartClkFreq, align 4, !dbg !2959
  %7 = icmp eq i32 %0, 1, !dbg !2960
  %8 = select i1 %7, i32 -2096889856, i32 -2096955392, !dbg !2960
  call void @llvm.dbg.value(metadata i32 %8, metadata !2944, metadata !DIExpression()), !dbg !2955
  %9 = or i32 %8, 36, !dbg !2961
  %10 = inttoptr i32 %9 to i32*, !dbg !2961
  store volatile i32 3, i32* %10, align 4, !dbg !2962
  %11 = or i32 %8, 12, !dbg !2963
  %12 = inttoptr i32 %11 to i32*, !dbg !2963
  %13 = load volatile i32, i32* %12, align 4, !dbg !2963
  call void @llvm.dbg.value(metadata i32 %13, metadata !2946, metadata !DIExpression()), !dbg !2955
  %14 = or i32 %13, 128, !dbg !2964
  store volatile i32 %14, i32* %12, align 4, !dbg !2965
  %15 = load i32, i32* @gUartClkFreq, align 4, !dbg !2966
  %16 = udiv i32 %15, %1, !dbg !2967
  call void @llvm.dbg.value(metadata i32 %16, metadata !2945, metadata !DIExpression()), !dbg !2955
  %17 = lshr i32 %16, 8, !dbg !2968
  %18 = add nuw nsw i32 %17, 1, !dbg !2969
  call void @llvm.dbg.value(metadata i32 %18, metadata !2947, metadata !DIExpression()), !dbg !2955
  %19 = udiv i32 %16, %18, !dbg !2970
  %20 = add i32 %19, -1, !dbg !2972
  call void @llvm.dbg.value(metadata i32 %20, metadata !2948, metadata !DIExpression()), !dbg !2955
  %21 = icmp eq i32 %20, 3, !dbg !2973
  %22 = lshr i32 %20, 1, !dbg !2975
  %23 = add nsw i32 %22, -1, !dbg !2975
  %24 = select i1 %21, i32 0, i32 %23, !dbg !2975
  call void @llvm.dbg.value(metadata i32 %24, metadata !2949, metadata !DIExpression()), !dbg !2955
  call void @llvm.dbg.value(metadata i32 undef, metadata !2954, metadata !DIExpression()), !dbg !2955
  %25 = mul i32 %15, 10, !dbg !2976
  %26 = udiv i32 %25, %1, !dbg !2977
  %27 = udiv i32 %26, %16, !dbg !2978
  %28 = mul i32 %19, -10, !dbg !2979
  %29 = add i32 %27, %28, !dbg !2980
  %30 = urem i32 %29, 10, !dbg !2981
  call void @llvm.dbg.value(metadata i32 %30, metadata !2950, metadata !DIExpression()), !dbg !2955
  %31 = and i32 %18, 255, !dbg !2982
  %32 = inttoptr i32 %8 to i32*, !dbg !2983
  store volatile i32 %31, i32* %32, align 65536, !dbg !2984
  %33 = lshr i32 %18, 8, !dbg !2985
  %34 = and i32 %33, 255, !dbg !2986
  %35 = or i32 %8, 4, !dbg !2987
  %36 = inttoptr i32 %35 to i32*, !dbg !2987
  store volatile i32 %34, i32* %36, align 4, !dbg !2988
  %37 = or i32 %8, 40, !dbg !2989
  %38 = inttoptr i32 %37 to i32*, !dbg !2989
  store volatile i32 %20, i32* %38, align 8, !dbg !2990
  %39 = or i32 %8, 44, !dbg !2991
  %40 = inttoptr i32 %39 to i32*, !dbg !2991
  store volatile i32 %24, i32* %40, align 4, !dbg !2992
  %41 = getelementptr inbounds [11 x i16], [11 x i16]* @__const.halUART_SetFormat.fraction_M_mapping, i32 0, i32 %30, !dbg !2993
  %42 = load i16, i16* %41, align 2, !dbg !2993
  %43 = zext i16 %42 to i32, !dbg !2993
  %44 = or i32 %8, 88, !dbg !2994
  %45 = inttoptr i32 %44 to i32*, !dbg !2994
  store volatile i32 %43, i32* %45, align 8, !dbg !2995
  %46 = getelementptr inbounds [11 x i16], [11 x i16]* @__const.halUART_SetFormat.fraction_L_mapping, i32 0, i32 %30, !dbg !2996
  %47 = load i16, i16* %46, align 2, !dbg !2996
  %48 = zext i16 %47 to i32, !dbg !2996
  %49 = or i32 %8, 84, !dbg !2997
  %50 = inttoptr i32 %49 to i32*, !dbg !2997
  store volatile i32 %48, i32* %50, align 4, !dbg !2998
  store volatile i32 %13, i32* %12, align 4, !dbg !2999
  %51 = or i32 %8, 8, !dbg !3000
  %52 = inttoptr i32 %51 to i32*, !dbg !3000
  store volatile i32 71, i32* %52, align 8, !dbg !3001
  %53 = inttoptr i32 %11 to i16*, !dbg !3002
  %54 = load volatile i16, i16* %53, align 4, !dbg !3002
  call void @llvm.dbg.value(metadata i16 %54, metadata !2943, metadata !DIExpression()), !dbg !2955
  %55 = and i16 %54, -64, !dbg !3003
  call void @llvm.dbg.value(metadata i16 %54, metadata !2943, metadata !DIExpression(DW_OP_constu, 18446744073709551608, DW_OP_and, DW_OP_stack_value)), !dbg !2955
  call void @llvm.dbg.value(metadata !DIArgList(i16 %54, i16 %2), metadata !2943, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_constu, 18446744073709551552, DW_OP_and, DW_OP_LLVM_arg, 1, DW_OP_or, DW_OP_stack_value)), !dbg !2955
  %56 = and i16 %2, -61, !dbg !3004
  call void @llvm.dbg.value(metadata !DIArgList(i16 %54, i16 %56), metadata !2943, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_constu, 18446744073709551552, DW_OP_and, DW_OP_LLVM_arg, 1, DW_OP_or, DW_OP_stack_value)), !dbg !2955
  call void @llvm.dbg.value(metadata !DIArgList(i16 %55, i16 %4, i16 %56), metadata !2943, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 2, DW_OP_or, DW_OP_LLVM_arg, 1, DW_OP_or, DW_OP_stack_value)), !dbg !2955
  %57 = and i16 %4, -57, !dbg !3005
  call void @llvm.dbg.value(metadata i16 undef, metadata !2943, metadata !DIExpression()), !dbg !2955
  %58 = or i16 %56, %3, !dbg !3004
  %59 = or i16 %58, %57, !dbg !3005
  %60 = or i16 %59, %55, !dbg !3006
  call void @llvm.dbg.value(metadata i16 %60, metadata !2943, metadata !DIExpression()), !dbg !2955
  store volatile i16 %60, i16* %53, align 4, !dbg !3007
  ret void, !dbg !3008
}

; Function Attrs: mustprogress nofree noinline norecurse nounwind optsize willreturn
define dso_local void @halUART_Get_VFIFO_Length(i32 noundef %0, i32 noundef %1, i32* nocapture noundef writeonly %2) local_unnamed_addr #4 !dbg !3009 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !3014, metadata !DIExpression()), !dbg !3017
  call void @llvm.dbg.value(metadata i32 %1, metadata !3015, metadata !DIExpression()), !dbg !3017
  call void @llvm.dbg.value(metadata i32* %2, metadata !3016, metadata !DIExpression()), !dbg !3017
  %4 = icmp eq i32 %0, 0, !dbg !3018
  %5 = icmp eq i32 %1, 0, !dbg !3020
  br i1 %4, label %6, label %16, !dbg !3021

6:                                                ; preds = %3
  br i1 %5, label %10, label %7, !dbg !3022

7:                                                ; preds = %6
  %8 = load volatile i16, i16* inttoptr (i32 -2097082568 to i16*), align 8, !dbg !3024
  %9 = zext i16 %8 to i32, !dbg !3024
  br label %26, !dbg !3027

10:                                               ; preds = %6
  %11 = load volatile i16, i16* inttoptr (i32 -2097082812 to i16*), align 4, !dbg !3028
  %12 = zext i16 %11 to i32, !dbg !3028
  store i32 %12, i32* %2, align 4, !dbg !3030
  %13 = load volatile i16, i16* inttoptr (i32 -2097082824 to i16*), align 8, !dbg !3031
  %14 = zext i16 %13 to i32, !dbg !3031
  %15 = sub nsw i32 %12, %14, !dbg !3032
  br label %26

16:                                               ; preds = %3
  br i1 %5, label %20, label %17, !dbg !3033

17:                                               ; preds = %16
  %18 = load volatile i16, i16* inttoptr (i32 -2097082056 to i16*), align 8, !dbg !3035
  %19 = zext i16 %18 to i32, !dbg !3035
  br label %26, !dbg !3038

20:                                               ; preds = %16
  %21 = load volatile i16, i16* inttoptr (i32 -2097082300 to i16*), align 4, !dbg !3039
  %22 = zext i16 %21 to i32, !dbg !3039
  store i32 %22, i32* %2, align 4, !dbg !3041
  %23 = load volatile i16, i16* inttoptr (i32 -2097082312 to i16*), align 8, !dbg !3042
  %24 = zext i16 %23 to i32, !dbg !3042
  %25 = sub nsw i32 %22, %24, !dbg !3043
  br label %26

26:                                               ; preds = %17, %20, %7, %10
  %27 = phi i32 [ %19, %17 ], [ %25, %20 ], [ %9, %7 ], [ %15, %10 ]
  store i32 %27, i32* %2, align 4, !dbg !3020
  ret void, !dbg !3044
}

; Function Attrs: nofree noinline norecurse nounwind optsize
define dso_local void @halUART_Read_VFIFO_Data(i32 noundef %0, i8* nocapture noundef writeonly %1, i32 noundef %2) local_unnamed_addr #3 !dbg !3045 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !3049, metadata !DIExpression()), !dbg !3053
  call void @llvm.dbg.value(metadata i8* %1, metadata !3050, metadata !DIExpression()), !dbg !3053
  call void @llvm.dbg.value(metadata i32 %2, metadata !3051, metadata !DIExpression()), !dbg !3053
  call void @llvm.dbg.value(metadata i32 0, metadata !3052, metadata !DIExpression()), !dbg !3053
  call void @llvm.dbg.value(metadata i32 0, metadata !3052, metadata !DIExpression()), !dbg !3053
  %4 = icmp eq i32 %2, 0, !dbg !3054
  br i1 %4, label %15, label %5, !dbg !3057

5:                                                ; preds = %3, %12
  %6 = phi i32 [ %13, %12 ], [ 0, %3 ]
  call void @llvm.dbg.value(metadata i32 %6, metadata !3052, metadata !DIExpression()), !dbg !3053
  switch i32 %0, label %12 [
    i32 0, label %8
    i32 1, label %7
  ], !dbg !3058

7:                                                ; preds = %5
  br label %8, !dbg !3060

8:                                                ; preds = %5, %7
  %9 = phi i8* [ inttoptr (i32 2030044416 to i8*), %7 ], [ inttoptr (i32 2030043904 to i8*), %5 ]
  %10 = load volatile i8, i8* %9, align 256, !dbg !3064
  %11 = getelementptr inbounds i8, i8* %1, i32 %6, !dbg !3064
  store i8 %10, i8* %11, align 1, !dbg !3064
  br label %12, !dbg !3065

12:                                               ; preds = %8, %5
  %13 = add nuw i32 %6, 1, !dbg !3065
  call void @llvm.dbg.value(metadata i32 %13, metadata !3052, metadata !DIExpression()), !dbg !3053
  %14 = icmp eq i32 %13, %2, !dbg !3054
  br i1 %14, label %15, label %5, !dbg !3057, !llvm.loop !3066

15:                                               ; preds = %12, %3
  ret void, !dbg !3068
}

; Function Attrs: nofree noinline norecurse nounwind optsize
define dso_local void @halUART_Write_VFIFO_Data(i32 noundef %0, i8* nocapture noundef readonly %1, i32 noundef %2) local_unnamed_addr #3 !dbg !3069 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !3075, metadata !DIExpression()), !dbg !3079
  call void @llvm.dbg.value(metadata i8* %1, metadata !3076, metadata !DIExpression()), !dbg !3079
  call void @llvm.dbg.value(metadata i32 %2, metadata !3077, metadata !DIExpression()), !dbg !3079
  call void @llvm.dbg.value(metadata i32 0, metadata !3078, metadata !DIExpression()), !dbg !3079
  call void @llvm.dbg.value(metadata i32 0, metadata !3078, metadata !DIExpression()), !dbg !3079
  %4 = icmp eq i32 %2, 0, !dbg !3080
  br i1 %4, label %16, label %5, !dbg !3083

5:                                                ; preds = %3, %13
  %6 = phi i32 [ %14, %13 ], [ 0, %3 ]
  call void @llvm.dbg.value(metadata i32 %6, metadata !3078, metadata !DIExpression()), !dbg !3079
  switch i32 %0, label %13 [
    i32 0, label %7
    i32 1, label %10
  ], !dbg !3084

7:                                                ; preds = %5
  %8 = getelementptr inbounds i8, i8* %1, i32 %6, !dbg !3086
  %9 = load i8, i8* %8, align 1, !dbg !3086
  store volatile i8 %9, i8* inttoptr (i32 2030043648 to i8*), align 512, !dbg !3089
  br label %13, !dbg !3090

10:                                               ; preds = %5
  %11 = getelementptr inbounds i8, i8* %1, i32 %6, !dbg !3091
  %12 = load i8, i8* %11, align 1, !dbg !3091
  store volatile i8 %12, i8* inttoptr (i32 2030044160 to i8*), align 1024, !dbg !3094
  br label %13, !dbg !3095

13:                                               ; preds = %5, %7, %10
  %14 = add nuw i32 %6, 1, !dbg !3096
  call void @llvm.dbg.value(metadata i32 %14, metadata !3078, metadata !DIExpression()), !dbg !3079
  %15 = icmp eq i32 %14, %2, !dbg !3080
  br i1 %15, label %16, label %5, !dbg !3083, !llvm.loop !3097

16:                                               ; preds = %13, %3
  ret void, !dbg !3099
}

; Function Attrs: noinline nounwind optsize
define dso_local void @halUART_Tx_VFIFO_Initialize(i32 noundef %0, i8* noundef %1, i32 noundef %2, i32 noundef %3) local_unnamed_addr #0 !dbg !3100 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !3104, metadata !DIExpression()), !dbg !3108
  call void @llvm.dbg.value(metadata i8* %1, metadata !3105, metadata !DIExpression()), !dbg !3108
  call void @llvm.dbg.value(metadata i32 %2, metadata !3106, metadata !DIExpression()), !dbg !3108
  call void @llvm.dbg.value(metadata i32 %3, metadata !3107, metadata !DIExpression()), !dbg !3108
  switch i32 %0, label %9 [
    i32 0, label %6
    i32 1, label %5
  ], !dbg !3109

5:                                                ; preds = %4
  br label %6, !dbg !3110

6:                                                ; preds = %4, %5
  %7 = phi i32 [ 16, %5 ], [ 14, %4 ]
  %8 = ptrtoint i8* %1 to i32, !dbg !3114
  tail call void @DMA_Vfifo_SetAdrs(i32 noundef %8, i32 noundef %2, i32 noundef %7, i32 noundef 0, i32 noundef %3, i32 noundef 0) #13, !dbg !3114
  tail call void @DMA_Vfifo_Flush(i32 noundef %7) #13, !dbg !3114
  br label %9, !dbg !3115

9:                                                ; preds = %6, %4
  ret void, !dbg !3115
}

; Function Attrs: optsize
declare dso_local void @DMA_Vfifo_SetAdrs(i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare dso_local void @DMA_Vfifo_Flush(i32 noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize
define dso_local void @halUART_Rx_VFIFO_Initialize(i32 noundef %0, i8* noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %5) local_unnamed_addr #0 !dbg !3116 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !3120, metadata !DIExpression()), !dbg !3126
  call void @llvm.dbg.value(metadata i8* %1, metadata !3121, metadata !DIExpression()), !dbg !3126
  call void @llvm.dbg.value(metadata i32 %2, metadata !3122, metadata !DIExpression()), !dbg !3126
  call void @llvm.dbg.value(metadata i32 %3, metadata !3123, metadata !DIExpression()), !dbg !3126
  call void @llvm.dbg.value(metadata i32 %4, metadata !3124, metadata !DIExpression()), !dbg !3126
  call void @llvm.dbg.value(metadata i32 %5, metadata !3125, metadata !DIExpression()), !dbg !3126
  switch i32 %0, label %11 [
    i32 0, label %8
    i32 1, label %7
  ], !dbg !3127

7:                                                ; preds = %6
  br label %8, !dbg !3128

8:                                                ; preds = %6, %7
  %9 = phi i32 [ 17, %7 ], [ 15, %6 ]
  %10 = ptrtoint i8* %1 to i32, !dbg !3132
  tail call void @DMA_Vfifo_SetAdrs(i32 noundef %10, i32 noundef %2, i32 noundef %9, i32 noundef %3, i32 noundef %4, i32 noundef %5) #13, !dbg !3132
  tail call void @DMA_Vfifo_Flush(i32 noundef %9) #13, !dbg !3132
  br label %11, !dbg !3133

11:                                               ; preds = %8, %6
  ret void, !dbg !3133
}

; Function Attrs: noinline nounwind optsize
define dso_local void @halUART_VDMA_Rx_Register_Callback(i32 noundef %0, void ()* noundef %1) local_unnamed_addr #0 !dbg !3134 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !3138, metadata !DIExpression()), !dbg !3140
  call void @llvm.dbg.value(metadata void ()* %1, metadata !3139, metadata !DIExpression()), !dbg !3140
  switch i32 %0, label %6 [
    i32 0, label %4
    i32 1, label %3
  ], !dbg !3141

3:                                                ; preds = %2
  br label %4, !dbg !3142

4:                                                ; preds = %2, %3
  %5 = phi i32 [ 17, %3 ], [ 15, %2 ]
  tail call void @DMA_Vfifo_Register_Callback(i32 noundef %5, void ()* noundef %1) #13, !dbg !3146
  br label %6, !dbg !3147

6:                                                ; preds = %4, %2
  ret void, !dbg !3147
}

; Function Attrs: optsize
declare dso_local void @DMA_Vfifo_Register_Callback(i32 noundef, void ()* noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize
define dso_local void @halUART_VDMA_Rx_Register_TO_Callback(i32 noundef %0, void ()* noundef %1) local_unnamed_addr #0 !dbg !3148 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !3150, metadata !DIExpression()), !dbg !3152
  call void @llvm.dbg.value(metadata void ()* %1, metadata !3151, metadata !DIExpression()), !dbg !3152
  switch i32 %0, label %6 [
    i32 0, label %4
    i32 1, label %3
  ], !dbg !3153

3:                                                ; preds = %2
  br label %4, !dbg !3154

4:                                                ; preds = %2, %3
  %5 = phi i32 [ 17, %3 ], [ 15, %2 ]
  tail call void @DMA_Vfifo_Register_TO_Callback(i32 noundef %5, void ()* noundef %1) #13, !dbg !3158
  br label %6, !dbg !3159

6:                                                ; preds = %4, %2
  ret void, !dbg !3159
}

; Function Attrs: optsize
declare dso_local void @DMA_Vfifo_Register_TO_Callback(i32 noundef, void ()* noundef) local_unnamed_addr #2

; Function Attrs: nofree noinline norecurse nounwind optsize
define dso_local void @uart_set_hardware_flowcontrol(i32 noundef %0) local_unnamed_addr #3 !dbg !3160 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !3162, metadata !DIExpression()), !dbg !3166
  %2 = icmp eq i32 %0, 0, !dbg !3167
  %3 = select i1 %2, i32 -2096955392, i32 -2096889856, !dbg !3167
  call void @llvm.dbg.value(metadata i32 %3, metadata !3163, metadata !DIExpression()), !dbg !3166
  %4 = or i32 %3, 12, !dbg !3168
  %5 = inttoptr i32 %4 to i32*, !dbg !3168
  %6 = load volatile i32, i32* %5, align 4, !dbg !3168
  call void @llvm.dbg.value(metadata i32 %6, metadata !3165, metadata !DIExpression(DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 16, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !3166
  store volatile i32 191, i32* %5, align 4, !dbg !3169
  %7 = or i32 %3, 8, !dbg !3170
  %8 = inttoptr i32 %7 to i32*, !dbg !3170
  %9 = load volatile i32, i32* %8, align 8, !dbg !3170
  call void @llvm.dbg.value(metadata i32 %9, metadata !3164, metadata !DIExpression()), !dbg !3166
  %10 = and i32 %9, 65327, !dbg !3171
  %11 = or i32 %10, 208, !dbg !3171
  call void @llvm.dbg.value(metadata i32 %9, metadata !3164, metadata !DIExpression(DW_OP_constu, 208, DW_OP_or, DW_OP_stack_value)), !dbg !3166
  store volatile i32 %11, i32* %8, align 8, !dbg !3172
  %12 = or i32 %3, 68, !dbg !3173
  %13 = inttoptr i32 %12 to i32*, !dbg !3173
  store volatile i32 0, i32* %13, align 4, !dbg !3174
  store volatile i32 0, i32* %5, align 4, !dbg !3175
  %14 = or i32 %3, 16, !dbg !3176
  %15 = inttoptr i32 %14 to i32*, !dbg !3176
  store volatile i32 2, i32* %15, align 16, !dbg !3177
  %16 = and i32 %6, 65535, !dbg !3178
  store volatile i32 %16, i32* %5, align 4, !dbg !3179
  ret void, !dbg !3180
}

; Function Attrs: nofree noinline norecurse nounwind optsize
define dso_local void @uart_set_software_flowcontrol(i32 noundef %0, i8 noundef zeroext %1, i8 noundef zeroext %2, i8 noundef zeroext %3) local_unnamed_addr #3 !dbg !3181 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !3185, metadata !DIExpression()), !dbg !3192
  call void @llvm.dbg.value(metadata i8 %1, metadata !3186, metadata !DIExpression()), !dbg !3192
  call void @llvm.dbg.value(metadata i8 %2, metadata !3187, metadata !DIExpression()), !dbg !3192
  call void @llvm.dbg.value(metadata i8 %3, metadata !3188, metadata !DIExpression()), !dbg !3192
  %5 = icmp eq i32 %0, 0, !dbg !3193
  %6 = select i1 %5, i32 -2096955392, i32 -2096889856, !dbg !3193
  call void @llvm.dbg.value(metadata i32 %6, metadata !3189, metadata !DIExpression()), !dbg !3192
  %7 = or i32 %6, 12, !dbg !3194
  %8 = inttoptr i32 %7 to i32*, !dbg !3194
  %9 = load volatile i32, i32* %8, align 4, !dbg !3194
  call void @llvm.dbg.value(metadata i32 %9, metadata !3191, metadata !DIExpression(DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 16, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !3192
  store volatile i32 191, i32* %8, align 4, !dbg !3195
  %10 = zext i8 %1 to i32, !dbg !3196
  %11 = or i32 %6, 16, !dbg !3197
  %12 = inttoptr i32 %11 to i32*, !dbg !3197
  store volatile i32 %10, i32* %12, align 16, !dbg !3198
  %13 = or i32 %6, 20, !dbg !3199
  %14 = inttoptr i32 %13 to i32*, !dbg !3199
  store volatile i32 %10, i32* %14, align 4, !dbg !3200
  %15 = zext i8 %2 to i32, !dbg !3201
  %16 = or i32 %6, 24, !dbg !3202
  %17 = inttoptr i32 %16 to i32*, !dbg !3202
  store volatile i32 %15, i32* %17, align 8, !dbg !3203
  %18 = or i32 %6, 28, !dbg !3204
  %19 = inttoptr i32 %18 to i32*, !dbg !3204
  store volatile i32 %15, i32* %19, align 4, !dbg !3205
  %20 = or i32 %6, 8, !dbg !3206
  %21 = inttoptr i32 %20 to i32*, !dbg !3206
  %22 = load volatile i32, i32* %21, align 8, !dbg !3206
  call void @llvm.dbg.value(metadata i32 %22, metadata !3190, metadata !DIExpression()), !dbg !3192
  %23 = and i32 %22, 65525, !dbg !3207
  %24 = or i32 %23, 10, !dbg !3207
  call void @llvm.dbg.value(metadata i32 %22, metadata !3190, metadata !DIExpression(DW_OP_constu, 10, DW_OP_or, DW_OP_stack_value)), !dbg !3192
  store volatile i32 %24, i32* %21, align 8, !dbg !3208
  %25 = and i32 %9, 65535, !dbg !3209
  store volatile i32 %25, i32* %8, align 4, !dbg !3210
  %26 = zext i8 %3 to i32, !dbg !3211
  %27 = or i32 %6, 64, !dbg !3212
  %28 = inttoptr i32 %27 to i32*, !dbg !3212
  store volatile i32 %26, i32* %28, align 64, !dbg !3213
  %29 = or i32 %6, 68, !dbg !3214
  %30 = inttoptr i32 %29 to i32*, !dbg !3214
  store volatile i32 1, i32* %30, align 4, !dbg !3215
  ret void, !dbg !3216
}

; Function Attrs: nofree noinline norecurse nounwind optsize
define dso_local void @uart_disable_flowcontrol(i32 noundef %0) local_unnamed_addr #3 !dbg !3217 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !3219, metadata !DIExpression()), !dbg !3222
  %2 = icmp eq i32 %0, 0, !dbg !3223
  %3 = select i1 %2, i32 -2096955392, i32 -2096889856, !dbg !3223
  call void @llvm.dbg.value(metadata i32 %3, metadata !3220, metadata !DIExpression()), !dbg !3222
  %4 = or i32 %3, 12, !dbg !3224
  %5 = inttoptr i32 %4 to i32*, !dbg !3224
  %6 = load volatile i32, i32* %5, align 4, !dbg !3224
  call void @llvm.dbg.value(metadata i32 %6, metadata !3221, metadata !DIExpression(DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 16, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !3222
  store volatile i32 191, i32* %5, align 4, !dbg !3225
  %7 = or i32 %3, 8, !dbg !3226
  %8 = inttoptr i32 %7 to i32*, !dbg !3226
  store volatile i32 0, i32* %8, align 8, !dbg !3227
  store volatile i32 0, i32* %5, align 4, !dbg !3228
  %9 = and i32 %6, 65535, !dbg !3229
  store volatile i32 %9, i32* %5, align 4, !dbg !3230
  ret void, !dbg !3231
}

; Function Attrs: nofree noinline norecurse nounwind optsize
define dso_local void @uart_reset_default_value(i32 noundef %0) local_unnamed_addr #3 !dbg !3232 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !3234, metadata !DIExpression()), !dbg !3236
  %2 = icmp eq i32 %0, 0, !dbg !3237
  %3 = select i1 %2, i32 -2096955392, i32 -2096889856, !dbg !3237
  call void @llvm.dbg.value(metadata i32 %3, metadata !3235, metadata !DIExpression()), !dbg !3236
  %4 = or i32 %3, 12, !dbg !3238
  %5 = inttoptr i32 %4 to i32*, !dbg !3238
  store volatile i32 191, i32* %5, align 4, !dbg !3239
  %6 = or i32 %3, 8, !dbg !3240
  %7 = inttoptr i32 %6 to i32*, !dbg !3240
  store volatile i32 16, i32* %7, align 8, !dbg !3241
  %8 = or i32 %3, 16, !dbg !3242
  %9 = inttoptr i32 %8 to i32*, !dbg !3242
  store volatile i32 0, i32* %9, align 16, !dbg !3243
  %10 = or i32 %3, 24, !dbg !3244
  %11 = inttoptr i32 %10 to i32*, !dbg !3244
  store volatile i32 0, i32* %11, align 8, !dbg !3245
  store volatile i32 128, i32* %5, align 4, !dbg !3246
  %12 = inttoptr i32 %3 to i32*, !dbg !3247
  store volatile i32 0, i32* %12, align 65536, !dbg !3248
  %13 = or i32 %3, 4, !dbg !3249
  %14 = inttoptr i32 %13 to i32*, !dbg !3249
  store volatile i32 0, i32* %14, align 4, !dbg !3250
  store volatile i32 0, i32* %5, align 4, !dbg !3251
  store volatile i32 0, i32* %14, align 4, !dbg !3252
  store volatile i32 0, i32* %7, align 8, !dbg !3253
  store volatile i32 191, i32* %5, align 4, !dbg !3254
  store volatile i32 0, i32* %7, align 8, !dbg !3255
  store volatile i32 0, i32* %5, align 4, !dbg !3256
  store volatile i32 0, i32* %9, align 16, !dbg !3257
  %15 = or i32 %3, 28, !dbg !3258
  %16 = inttoptr i32 %15 to i32*, !dbg !3258
  store volatile i32 0, i32* %16, align 4, !dbg !3259
  %17 = or i32 %3, 36, !dbg !3260
  %18 = inttoptr i32 %17 to i32*, !dbg !3260
  store volatile i32 0, i32* %18, align 4, !dbg !3261
  %19 = or i32 %3, 40, !dbg !3262
  %20 = inttoptr i32 %19 to i32*, !dbg !3262
  store volatile i32 0, i32* %20, align 8, !dbg !3263
  %21 = or i32 %3, 44, !dbg !3264
  %22 = inttoptr i32 %21 to i32*, !dbg !3264
  store volatile i32 0, i32* %22, align 4, !dbg !3265
  %23 = or i32 %3, 52, !dbg !3266
  %24 = inttoptr i32 %23 to i32*, !dbg !3266
  store volatile i32 0, i32* %24, align 4, !dbg !3267
  %25 = or i32 %3, 60, !dbg !3268
  %26 = inttoptr i32 %25 to i32*, !dbg !3268
  store volatile i32 0, i32* %26, align 4, !dbg !3269
  %27 = or i32 %3, 64, !dbg !3270
  %28 = inttoptr i32 %27 to i32*, !dbg !3270
  store volatile i32 0, i32* %28, align 64, !dbg !3271
  %29 = or i32 %3, 68, !dbg !3272
  %30 = inttoptr i32 %29 to i32*, !dbg !3272
  store volatile i32 0, i32* %30, align 4, !dbg !3273
  %31 = or i32 %3, 72, !dbg !3274
  %32 = inttoptr i32 %31 to i32*, !dbg !3274
  store volatile i32 0, i32* %32, align 8, !dbg !3275
  %33 = or i32 %3, 76, !dbg !3276
  %34 = inttoptr i32 %33 to i32*, !dbg !3276
  store volatile i32 0, i32* %34, align 4, !dbg !3277
  %35 = or i32 %3, 80, !dbg !3278
  %36 = inttoptr i32 %35 to i32*, !dbg !3278
  store volatile i32 0, i32* %36, align 16, !dbg !3279
  %37 = or i32 %3, 84, !dbg !3280
  %38 = inttoptr i32 %37 to i32*, !dbg !3280
  store volatile i32 0, i32* %38, align 4, !dbg !3281
  %39 = or i32 %3, 88, !dbg !3282
  %40 = inttoptr i32 %39 to i32*, !dbg !3282
  store volatile i32 0, i32* %40, align 8, !dbg !3283
  %41 = or i32 %3, 96, !dbg !3284
  %42 = inttoptr i32 %41 to i32*, !dbg !3284
  store volatile i32 0, i32* %42, align 32, !dbg !3285
  ret void, !dbg !3286
}

; Function Attrs: nofree noinline norecurse nounwind optsize
define dso_local void @uart_query_empty(i32 noundef %0) local_unnamed_addr #3 !dbg !3287 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !3289, metadata !DIExpression()), !dbg !3291
  %2 = icmp eq i32 %0, 0, !dbg !3292
  call void @llvm.dbg.value(metadata i32 undef, metadata !3290, metadata !DIExpression()), !dbg !3291
  %3 = select i1 %2, i32 -2096955372, i32 -2096889836
  %4 = inttoptr i32 %3 to i32*
  br label %5, !dbg !3293

5:                                                ; preds = %5, %1
  %6 = load volatile i32, i32* %4, align 4, !dbg !3294
  %7 = and i32 %6, 64, !dbg !3295
  %8 = icmp eq i32 %7, 0, !dbg !3296
  br i1 %8, label %5, label %9, !dbg !3293, !llvm.loop !3297

9:                                                ; preds = %5
  ret void, !dbg !3299
}

; Function Attrs: noinline nounwind optsize
define dso_local void @log_hal_fatal_internal(i8* nocapture noundef readnone %0, i32 noundef %1, i8* noundef %2, ...) local_unnamed_addr #0 !dbg !3300 {
  %4 = alloca %struct.__va_list, align 4
  %5 = alloca i32, align 4
  call void @llvm.dbg.value(metadata i8* %0, metadata !3304, metadata !DIExpression()), !dbg !3317
  call void @llvm.dbg.value(metadata i32 %1, metadata !3305, metadata !DIExpression()), !dbg !3317
  call void @llvm.dbg.value(metadata i8* %2, metadata !3306, metadata !DIExpression()), !dbg !3317
  %6 = bitcast %struct.__va_list* %4 to i8*, !dbg !3318
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %6) #15, !dbg !3318
  call void @llvm.dbg.declare(metadata %struct.__va_list* %4, metadata !3307, metadata !DIExpression()), !dbg !3319
  %7 = bitcast i32* %5 to i8*, !dbg !3320
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %7) #15, !dbg !3320
  call void @llvm.dbg.value(metadata i32* %5, metadata !3316, metadata !DIExpression(DW_OP_deref)), !dbg !3317
  %8 = call i32 @hal_nvic_save_and_set_interrupt_mask(i32* noundef nonnull %5) #13, !dbg !3321
  call void @llvm.va_start(i8* nonnull %6), !dbg !3322
  %9 = bitcast %struct.__va_list* %4 to i32*, !dbg !3323
  %10 = load i32, i32* %9, align 4, !dbg !3323
  %11 = insertvalue [1 x i32] poison, i32 %10, 0, !dbg !3323
  %12 = call i32 @vprintf(i8* noundef %2, [1 x i32] %11) #13, !dbg !3323
  call void @llvm.va_end(i8* nonnull %6), !dbg !3324
  %13 = load i32, i32* %5, align 4, !dbg !3325
  call void @llvm.dbg.value(metadata i32 %13, metadata !3316, metadata !DIExpression()), !dbg !3317
  %14 = call i32 @hal_nvic_restore_interrupt_mask(i32 noundef %13) #13, !dbg !3326
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %7) #15, !dbg !3327
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %6) #15, !dbg !3327
  ret void, !dbg !3327
}

; Function Attrs: nofree nosync nounwind willreturn
declare void @llvm.va_start(i8*) #9

; Function Attrs: optsize
declare dso_local i32 @vprintf(i8* noundef, [1 x i32]) local_unnamed_addr #2

; Function Attrs: nofree nosync nounwind willreturn
declare void @llvm.va_end(i8*) #9

; Function Attrs: noinline nounwind optsize
define dso_local void @log_hal_error_internal(i8* nocapture noundef readnone %0, i32 noundef %1, i8* noundef %2, ...) local_unnamed_addr #0 !dbg !3328 {
  %4 = alloca %struct.__va_list, align 4
  %5 = alloca i32, align 4
  call void @llvm.dbg.value(metadata i8* %0, metadata !3330, metadata !DIExpression()), !dbg !3335
  call void @llvm.dbg.value(metadata i32 %1, metadata !3331, metadata !DIExpression()), !dbg !3335
  call void @llvm.dbg.value(metadata i8* %2, metadata !3332, metadata !DIExpression()), !dbg !3335
  %6 = bitcast %struct.__va_list* %4 to i8*, !dbg !3336
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %6) #15, !dbg !3336
  call void @llvm.dbg.declare(metadata %struct.__va_list* %4, metadata !3333, metadata !DIExpression()), !dbg !3337
  %7 = bitcast i32* %5 to i8*, !dbg !3338
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %7) #15, !dbg !3338
  call void @llvm.dbg.value(metadata i32* %5, metadata !3334, metadata !DIExpression(DW_OP_deref)), !dbg !3335
  %8 = call i32 @hal_nvic_save_and_set_interrupt_mask(i32* noundef nonnull %5) #13, !dbg !3339
  call void @llvm.va_start(i8* nonnull %6), !dbg !3340
  %9 = bitcast %struct.__va_list* %4 to i32*, !dbg !3341
  %10 = load i32, i32* %9, align 4, !dbg !3341
  %11 = insertvalue [1 x i32] poison, i32 %10, 0, !dbg !3341
  %12 = call i32 @vprintf(i8* noundef %2, [1 x i32] %11) #13, !dbg !3341
  call void @llvm.va_end(i8* nonnull %6), !dbg !3342
  %13 = load i32, i32* %5, align 4, !dbg !3343
  call void @llvm.dbg.value(metadata i32 %13, metadata !3334, metadata !DIExpression()), !dbg !3335
  %14 = call i32 @hal_nvic_restore_interrupt_mask(i32 noundef %13) #13, !dbg !3344
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %7) #15, !dbg !3345
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %6) #15, !dbg !3345
  ret void, !dbg !3345
}

; Function Attrs: noinline nounwind optsize
define dso_local void @log_hal_warning_internal(i8* nocapture noundef readnone %0, i32 noundef %1, i8* noundef %2, ...) local_unnamed_addr #0 !dbg !3346 {
  %4 = alloca %struct.__va_list, align 4
  %5 = alloca i32, align 4
  call void @llvm.dbg.value(metadata i8* %0, metadata !3348, metadata !DIExpression()), !dbg !3353
  call void @llvm.dbg.value(metadata i32 %1, metadata !3349, metadata !DIExpression()), !dbg !3353
  call void @llvm.dbg.value(metadata i8* %2, metadata !3350, metadata !DIExpression()), !dbg !3353
  %6 = bitcast %struct.__va_list* %4 to i8*, !dbg !3354
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %6) #15, !dbg !3354
  call void @llvm.dbg.declare(metadata %struct.__va_list* %4, metadata !3351, metadata !DIExpression()), !dbg !3355
  %7 = bitcast i32* %5 to i8*, !dbg !3356
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %7) #15, !dbg !3356
  call void @llvm.dbg.value(metadata i32* %5, metadata !3352, metadata !DIExpression(DW_OP_deref)), !dbg !3353
  %8 = call i32 @hal_nvic_save_and_set_interrupt_mask(i32* noundef nonnull %5) #13, !dbg !3357
  call void @llvm.va_start(i8* nonnull %6), !dbg !3358
  %9 = bitcast %struct.__va_list* %4 to i32*, !dbg !3359
  %10 = load i32, i32* %9, align 4, !dbg !3359
  %11 = insertvalue [1 x i32] poison, i32 %10, 0, !dbg !3359
  %12 = call i32 @vprintf(i8* noundef %2, [1 x i32] %11) #13, !dbg !3359
  call void @llvm.va_end(i8* nonnull %6), !dbg !3360
  %13 = load i32, i32* %5, align 4, !dbg !3361
  call void @llvm.dbg.value(metadata i32 %13, metadata !3352, metadata !DIExpression()), !dbg !3353
  %14 = call i32 @hal_nvic_restore_interrupt_mask(i32 noundef %13) #13, !dbg !3362
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %7) #15, !dbg !3363
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %6) #15, !dbg !3363
  ret void, !dbg !3363
}

; Function Attrs: noinline nounwind optsize
define dso_local void @log_hal_info_internal(i8* nocapture noundef readnone %0, i32 noundef %1, i8* noundef %2, ...) local_unnamed_addr #0 !dbg !3364 {
  %4 = alloca %struct.__va_list, align 4
  %5 = alloca i32, align 4
  call void @llvm.dbg.value(metadata i8* %0, metadata !3366, metadata !DIExpression()), !dbg !3371
  call void @llvm.dbg.value(metadata i32 %1, metadata !3367, metadata !DIExpression()), !dbg !3371
  call void @llvm.dbg.value(metadata i8* %2, metadata !3368, metadata !DIExpression()), !dbg !3371
  %6 = bitcast %struct.__va_list* %4 to i8*, !dbg !3372
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %6) #15, !dbg !3372
  call void @llvm.dbg.declare(metadata %struct.__va_list* %4, metadata !3369, metadata !DIExpression()), !dbg !3373
  %7 = bitcast i32* %5 to i8*, !dbg !3374
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %7) #15, !dbg !3374
  call void @llvm.dbg.value(metadata i32* %5, metadata !3370, metadata !DIExpression(DW_OP_deref)), !dbg !3371
  %8 = call i32 @hal_nvic_save_and_set_interrupt_mask(i32* noundef nonnull %5) #13, !dbg !3375
  call void @llvm.va_start(i8* nonnull %6), !dbg !3376
  %9 = bitcast %struct.__va_list* %4 to i32*, !dbg !3377
  %10 = load i32, i32* %9, align 4, !dbg !3377
  %11 = insertvalue [1 x i32] poison, i32 %10, 0, !dbg !3377
  %12 = call i32 @vprintf(i8* noundef %2, [1 x i32] %11) #13, !dbg !3377
  call void @llvm.va_end(i8* nonnull %6), !dbg !3378
  %13 = load i32, i32* %5, align 4, !dbg !3379
  call void @llvm.dbg.value(metadata i32 %13, metadata !3370, metadata !DIExpression()), !dbg !3371
  %14 = call i32 @hal_nvic_restore_interrupt_mask(i32 noundef %13) #13, !dbg !3380
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %7) #15, !dbg !3381
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %6) #15, !dbg !3381
  ret void, !dbg !3381
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize readnone willreturn
define dso_local void @log_hal_dump_internal(i8* nocapture noundef %0, i32 noundef %1, i8* nocapture noundef %2, i8* nocapture noundef %3, i32 noundef %4, ...) local_unnamed_addr #10 !dbg !3382 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !3388, metadata !DIExpression()), !dbg !3393
  call void @llvm.dbg.value(metadata i32 %1, metadata !3389, metadata !DIExpression()), !dbg !3393
  call void @llvm.dbg.value(metadata i8* %2, metadata !3390, metadata !DIExpression()), !dbg !3393
  call void @llvm.dbg.value(metadata i8* %3, metadata !3391, metadata !DIExpression()), !dbg !3393
  call void @llvm.dbg.value(metadata i32 %4, metadata !3392, metadata !DIExpression()), !dbg !3393
  ret void, !dbg !3394
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize readnone willreturn
define dso_local i32 @hal_nvic_init() local_unnamed_addr #10 !dbg !3395 {
  ret i32 0, !dbg !3399
}

; Function Attrs: nofree noinline norecurse nounwind optsize
define dso_local i32 @hal_nvic_enable_irq(i32 noundef %0) local_unnamed_addr #3 !dbg !3400 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !3404, metadata !DIExpression()), !dbg !3406
  call void @llvm.dbg.value(metadata i32 -1, metadata !3405, metadata !DIExpression()), !dbg !3406
  %2 = icmp ugt i32 %0, 95, !dbg !3407
  br i1 %2, label %4, label %3, !dbg !3407

3:                                                ; preds = %1
  tail call fastcc void @NVIC_EnableIRQ.11(i32 noundef %0) #14, !dbg !3409
  call void @llvm.dbg.value(metadata i32 0, metadata !3405, metadata !DIExpression()), !dbg !3406
  br label %4, !dbg !3411

4:                                                ; preds = %1, %3
  %5 = phi i32 [ 0, %3 ], [ -3, %1 ], !dbg !3406
  ret i32 %5, !dbg !3412
}

; Function Attrs: nofree noinline norecurse nounwind optsize
define internal fastcc void @NVIC_EnableIRQ.11(i32 noundef %0) unnamed_addr #3 !dbg !3413 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !3415, metadata !DIExpression()), !dbg !3416
  %2 = and i32 %0, 31, !dbg !3417
  %3 = shl nuw i32 1, %2, !dbg !3418
  %4 = lshr i32 %0, 5, !dbg !3419
  %5 = getelementptr inbounds [8 x i32], [8 x i32]* inttoptr (i32 -536813312 to [8 x i32]*), i32 0, i32 %4, !dbg !3420
  store volatile i32 %3, i32* %5, align 4, !dbg !3421
  ret void, !dbg !3422
}

; Function Attrs: nofree noinline norecurse nounwind optsize
define dso_local i32 @hal_nvic_disable_irq(i32 noundef %0) local_unnamed_addr #3 !dbg !3423 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !3425, metadata !DIExpression()), !dbg !3427
  call void @llvm.dbg.value(metadata i32 -1, metadata !3426, metadata !DIExpression()), !dbg !3427
  %2 = icmp ugt i32 %0, 95, !dbg !3428
  br i1 %2, label %4, label %3, !dbg !3428

3:                                                ; preds = %1
  tail call fastcc void @NVIC_DisableIRQ.12(i32 noundef %0) #14, !dbg !3430
  call void @llvm.dbg.value(metadata i32 0, metadata !3426, metadata !DIExpression()), !dbg !3427
  br label %4, !dbg !3432

4:                                                ; preds = %1, %3
  %5 = phi i32 [ 0, %3 ], [ -3, %1 ], !dbg !3427
  ret i32 %5, !dbg !3433
}

; Function Attrs: nofree noinline norecurse nounwind optsize
define internal fastcc void @NVIC_DisableIRQ.12(i32 noundef %0) unnamed_addr #3 !dbg !3434 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !3436, metadata !DIExpression()), !dbg !3437
  %2 = and i32 %0, 31, !dbg !3438
  %3 = shl nuw i32 1, %2, !dbg !3439
  %4 = lshr i32 %0, 5, !dbg !3440
  %5 = getelementptr inbounds [8 x i32], [8 x i32]* inttoptr (i32 -536813184 to [8 x i32]*), i32 0, i32 %4, !dbg !3441
  store volatile i32 %3, i32* %5, align 4, !dbg !3442
  ret void, !dbg !3443
}

; Function Attrs: mustprogress nofree noinline norecurse nounwind optsize willreturn
define dso_local i32 @hal_nvic_get_pending_irq(i32 noundef %0) local_unnamed_addr #4 !dbg !3444 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !3448, metadata !DIExpression()), !dbg !3450
  call void @llvm.dbg.value(metadata i32 255, metadata !3449, metadata !DIExpression()), !dbg !3450
  %2 = icmp ugt i32 %0, 95, !dbg !3451
  br i1 %2, label %5, label %3, !dbg !3451

3:                                                ; preds = %1
  %4 = tail call fastcc i32 @NVIC_GetPendingIRQ(i32 noundef %0) #14, !dbg !3453
  call void @llvm.dbg.value(metadata i32 %4, metadata !3449, metadata !DIExpression()), !dbg !3450
  br label %5, !dbg !3455

5:                                                ; preds = %1, %3
  %6 = phi i32 [ %4, %3 ], [ 255, %1 ], !dbg !3450
  ret i32 %6, !dbg !3456
}

; Function Attrs: mustprogress nofree noinline norecurse nounwind optsize willreturn
define internal fastcc i32 @NVIC_GetPendingIRQ(i32 noundef %0) unnamed_addr #4 !dbg !3457 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !3461, metadata !DIExpression()), !dbg !3462
  %2 = lshr i32 %0, 5, !dbg !3463
  %3 = getelementptr inbounds [8 x i32], [8 x i32]* inttoptr (i32 -536813056 to [8 x i32]*), i32 0, i32 %2, !dbg !3464
  %4 = load volatile i32, i32* %3, align 4, !dbg !3464
  %5 = and i32 %0, 31, !dbg !3465
  %6 = lshr i32 %4, %5, !dbg !3466
  %7 = and i32 %6, 1, !dbg !3466
  ret i32 %7, !dbg !3467
}

; Function Attrs: nofree noinline norecurse nounwind optsize
define dso_local i32 @hal_nvic_set_pending_irq(i32 noundef %0) local_unnamed_addr #3 !dbg !3468 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !3470, metadata !DIExpression()), !dbg !3472
  call void @llvm.dbg.value(metadata i32 -1, metadata !3471, metadata !DIExpression()), !dbg !3472
  %2 = icmp ugt i32 %0, 95, !dbg !3473
  br i1 %2, label %4, label %3, !dbg !3473

3:                                                ; preds = %1
  tail call fastcc void @NVIC_SetPendingIRQ(i32 noundef %0) #14, !dbg !3475
  call void @llvm.dbg.value(metadata i32 0, metadata !3471, metadata !DIExpression()), !dbg !3472
  br label %4, !dbg !3477

4:                                                ; preds = %1, %3
  %5 = phi i32 [ 0, %3 ], [ -3, %1 ], !dbg !3472
  ret i32 %5, !dbg !3478
}

; Function Attrs: nofree noinline norecurse nounwind optsize
define internal fastcc void @NVIC_SetPendingIRQ(i32 noundef %0) unnamed_addr #3 !dbg !3479 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !3481, metadata !DIExpression()), !dbg !3482
  %2 = and i32 %0, 31, !dbg !3483
  %3 = shl nuw i32 1, %2, !dbg !3484
  %4 = lshr i32 %0, 5, !dbg !3485
  %5 = getelementptr inbounds [8 x i32], [8 x i32]* inttoptr (i32 -536813056 to [8 x i32]*), i32 0, i32 %4, !dbg !3486
  store volatile i32 %3, i32* %5, align 4, !dbg !3487
  ret void, !dbg !3488
}

; Function Attrs: nofree noinline norecurse nounwind optsize
define dso_local i32 @hal_nvic_clear_pending_irq(i32 noundef %0) local_unnamed_addr #3 !dbg !3489 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !3491, metadata !DIExpression()), !dbg !3493
  call void @llvm.dbg.value(metadata i32 -1, metadata !3492, metadata !DIExpression()), !dbg !3493
  %2 = icmp ugt i32 %0, 95, !dbg !3494
  br i1 %2, label %4, label %3, !dbg !3494

3:                                                ; preds = %1
  tail call fastcc void @NVIC_ClearPendingIRQ(i32 noundef %0) #14, !dbg !3496
  call void @llvm.dbg.value(metadata i32 0, metadata !3492, metadata !DIExpression()), !dbg !3493
  br label %4, !dbg !3498

4:                                                ; preds = %1, %3
  %5 = phi i32 [ 0, %3 ], [ -3, %1 ], !dbg !3493
  ret i32 %5, !dbg !3499
}

; Function Attrs: nofree noinline norecurse nounwind optsize
define internal fastcc void @NVIC_ClearPendingIRQ(i32 noundef %0) unnamed_addr #3 !dbg !3500 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !3502, metadata !DIExpression()), !dbg !3503
  %2 = and i32 %0, 31, !dbg !3504
  %3 = shl nuw i32 1, %2, !dbg !3505
  %4 = lshr i32 %0, 5, !dbg !3506
  %5 = getelementptr inbounds [8 x i32], [8 x i32]* inttoptr (i32 -536812928 to [8 x i32]*), i32 0, i32 %4, !dbg !3507
  store volatile i32 %3, i32* %5, align 4, !dbg !3508
  ret void, !dbg !3509
}

; Function Attrs: nofree noinline norecurse nounwind optsize
define dso_local i32 @hal_nvic_set_priority(i32 noundef %0, i32 noundef %1) local_unnamed_addr #3 !dbg !3510 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !3514, metadata !DIExpression()), !dbg !3517
  call void @llvm.dbg.value(metadata i32 %1, metadata !3515, metadata !DIExpression()), !dbg !3517
  call void @llvm.dbg.value(metadata i32 -1, metadata !3516, metadata !DIExpression()), !dbg !3517
  %3 = icmp ugt i32 %0, 95, !dbg !3518
  br i1 %3, label %5, label %4, !dbg !3518

4:                                                ; preds = %2
  tail call fastcc void @NVIC_SetPriority.15(i32 noundef %0, i32 noundef %1) #14, !dbg !3520
  call void @llvm.dbg.value(metadata i32 0, metadata !3516, metadata !DIExpression()), !dbg !3517
  br label %5, !dbg !3522

5:                                                ; preds = %2, %4
  %6 = phi i32 [ 0, %4 ], [ -3, %2 ], !dbg !3517
  ret i32 %6, !dbg !3523
}

; Function Attrs: nofree noinline norecurse nounwind optsize
define internal fastcc void @NVIC_SetPriority.15(i32 noundef %0, i32 noundef %1) unnamed_addr #3 !dbg !3524 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !3526, metadata !DIExpression()), !dbg !3528
  call void @llvm.dbg.value(metadata i32 %1, metadata !3527, metadata !DIExpression()), !dbg !3528
  %3 = trunc i32 %1 to i8, !dbg !3529
  %4 = shl i8 %3, 5, !dbg !3529
  %5 = getelementptr inbounds [240 x i8], [240 x i8]* inttoptr (i32 -536812544 to [240 x i8]*), i32 0, i32 %0, !dbg !3532
  store volatile i8 %4, i8* %5, align 1, !dbg !3533
  ret void, !dbg !3534
}

; Function Attrs: mustprogress nofree noinline norecurse nounwind optsize willreturn
define dso_local i32 @hal_nvic_get_priority(i32 noundef %0) local_unnamed_addr #4 !dbg !3535 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !3537, metadata !DIExpression()), !dbg !3539
  call void @llvm.dbg.value(metadata i32 68, metadata !3538, metadata !DIExpression()), !dbg !3539
  %2 = icmp ugt i32 %0, 95, !dbg !3540
  br i1 %2, label %5, label %3, !dbg !3540

3:                                                ; preds = %1
  %4 = tail call fastcc i32 @NVIC_GetPriority(i32 noundef %0) #14, !dbg !3542
  call void @llvm.dbg.value(metadata i32 %4, metadata !3538, metadata !DIExpression()), !dbg !3539
  br label %5, !dbg !3544

5:                                                ; preds = %1, %3
  %6 = phi i32 [ %4, %3 ], [ 68, %1 ], !dbg !3539
  ret i32 %6, !dbg !3545
}

; Function Attrs: mustprogress nofree noinline norecurse nounwind optsize willreturn
define internal fastcc i32 @NVIC_GetPriority(i32 noundef %0) unnamed_addr #4 !dbg !3546 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !3548, metadata !DIExpression()), !dbg !3549
  %2 = getelementptr inbounds [240 x i8], [240 x i8]* inttoptr (i32 -536812544 to [240 x i8]*), i32 0, i32 %0, !dbg !3550
  %3 = load volatile i8, i8* %2, align 1, !dbg !3550
  %4 = lshr i8 %3, 5, !dbg !3553
  %5 = zext i8 %4 to i32, !dbg !3553
  ret i32 %5, !dbg !3554
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize readnone willreturn
define dso_local void @Flash_ReturnReady() local_unnamed_addr #10 !dbg !3555 {
  ret void, !dbg !3556
}

; Function Attrs: noinline nounwind optsize
define dso_local i32 @isrC_main() local_unnamed_addr #0 section ".ramTEXT" !dbg !3557 {
  call void @llvm.dbg.value(metadata i32 -1, metadata !3559, metadata !DIExpression()), !dbg !3561
  %1 = tail call fastcc i32 @get_current_irq() #14, !dbg !3562
  call void @llvm.dbg.value(metadata i32 %1, metadata !3560, metadata !DIExpression()), !dbg !3561
  %2 = icmp ugt i32 %1, 95, !dbg !3563
  br i1 %2, label %12, label %3, !dbg !3563

3:                                                ; preds = %0
  %4 = getelementptr inbounds [96 x %struct.nvic_function_t], [96 x %struct.nvic_function_t]* @nvic_function_table, i32 0, i32 %1, i32 0, !dbg !3565
  %5 = load void (i32)*, void (i32)** %4, align 4, !dbg !3565
  %6 = icmp eq void (i32)* %5, null, !dbg !3567
  br i1 %6, label %7, label %8, !dbg !3568

7:                                                ; preds = %3
  call void @llvm.dbg.value(metadata i32 -4, metadata !3559, metadata !DIExpression()), !dbg !3561
  tail call void (i8*, i32, i8*, ...) @log_hal_error_internal(i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @__FUNCTION__.isrC_main, i32 0, i32 0), i32 noundef 194, i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @.str.16, i32 0, i32 0)) #13, !dbg !3569
  br label %12, !dbg !3571

8:                                                ; preds = %3
  %9 = tail call fastcc i32 @get_pending_irq() #14, !dbg !3572
  %10 = getelementptr inbounds [96 x %struct.nvic_function_t], [96 x %struct.nvic_function_t]* @nvic_function_table, i32 0, i32 %1, i32 1, !dbg !3574
  store i32 %9, i32* %10, align 4, !dbg !3575
  %11 = load void (i32)*, void (i32)** %4, align 4, !dbg !3576
  tail call void %11(i32 noundef %1) #13, !dbg !3577
  call void @llvm.dbg.value(metadata i32 0, metadata !3559, metadata !DIExpression()), !dbg !3561
  br label %12, !dbg !3578

12:                                               ; preds = %0, %8, %7
  %13 = phi i32 [ -4, %7 ], [ 0, %8 ], [ -3, %0 ], !dbg !3561
  ret i32 %13, !dbg !3579
}

; Function Attrs: mustprogress nofree noinline norecurse nounwind optsize willreturn
define internal fastcc i32 @get_current_irq() unnamed_addr #4 !dbg !3580 {
  %1 = load volatile i32, i32* inttoptr (i32 -536810236 to i32*), align 4, !dbg !3583
  %2 = and i32 %1, 511, !dbg !3584
  call void @llvm.dbg.value(metadata i32 %2, metadata !3582, metadata !DIExpression()), !dbg !3585
  %3 = add nsw i32 %2, -16, !dbg !3586
  ret i32 %3, !dbg !3587
}

; Function Attrs: mustprogress nofree noinline norecurse nounwind optsize willreturn
define internal fastcc i32 @get_pending_irq() unnamed_addr #4 !dbg !3588 {
  %1 = load volatile i32, i32* inttoptr (i32 -536810236 to i32*), align 4, !dbg !3589
  %2 = lshr i32 %1, 22, !dbg !3590
  %3 = and i32 %2, 1, !dbg !3590
  ret i32 %3, !dbg !3591
}

; Function Attrs: noinline nounwind optsize
define dso_local i32 @hal_nvic_register_isr_handler(i32 noundef %0, void (i32)* noundef %1) local_unnamed_addr #0 !dbg !3592 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !3597, metadata !DIExpression()), !dbg !3600
  call void @llvm.dbg.value(metadata void (i32)* %1, metadata !3598, metadata !DIExpression()), !dbg !3600
  %3 = icmp ugt i32 %0, 95, !dbg !3601
  %4 = icmp eq void (i32)* %1, null
  %5 = or i1 %3, %4, !dbg !3601
  br i1 %5, label %10, label %6, !dbg !3601

6:                                                ; preds = %2
  %7 = tail call i32 @save_and_set_interrupt_mask() #13, !dbg !3603
  call void @llvm.dbg.value(metadata i32 %7, metadata !3599, metadata !DIExpression()), !dbg !3600
  tail call fastcc void @NVIC_ClearPendingIRQ(i32 noundef %0) #14, !dbg !3604
  %8 = getelementptr inbounds [96 x %struct.nvic_function_t], [96 x %struct.nvic_function_t]* @nvic_function_table, i32 0, i32 %0, i32 0, !dbg !3605
  store void (i32)* %1, void (i32)** %8, align 4, !dbg !3606
  %9 = getelementptr inbounds [96 x %struct.nvic_function_t], [96 x %struct.nvic_function_t]* @nvic_function_table, i32 0, i32 %0, i32 1, !dbg !3607
  store i32 0, i32* %9, align 4, !dbg !3608
  tail call void @restore_interrupt_mask(i32 noundef %7) #13, !dbg !3609
  br label %10, !dbg !3610

10:                                               ; preds = %2, %6
  %11 = phi i32 [ 0, %6 ], [ -2, %2 ], !dbg !3600
  ret i32 %11, !dbg !3611
}

; Function Attrs: noinline nounwind optsize
define dso_local i32 @hal_nvic_save_and_set_interrupt_mask(i32* nocapture noundef writeonly %0) local_unnamed_addr #0 !dbg !3612 {
  call void @llvm.dbg.value(metadata i32* %0, metadata !3616, metadata !DIExpression()), !dbg !3617
  %2 = tail call i32 @save_and_set_interrupt_mask() #13, !dbg !3618
  store i32 %2, i32* %0, align 4, !dbg !3619
  ret i32 0, !dbg !3620
}

; Function Attrs: noinline nounwind optsize
define dso_local i32 @hal_nvic_restore_interrupt_mask(i32 noundef %0) local_unnamed_addr #0 !dbg !3621 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !3625, metadata !DIExpression()), !dbg !3626
  tail call void @restore_interrupt_mask(i32 noundef %0) #13, !dbg !3627
  ret i32 0, !dbg !3628
}

; Function Attrs: noinline nounwind optsize
define dso_local i32 @hal_pinmux_set_function(i32 noundef %0, i8 noundef zeroext %1) local_unnamed_addr #0 !dbg !3629 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !3635, metadata !DIExpression()), !dbg !3638
  call void @llvm.dbg.value(metadata i8 %1, metadata !3636, metadata !DIExpression()), !dbg !3638
  %3 = icmp ugt i32 %0, 60, !dbg !3639
  br i1 %3, label %11, label %4, !dbg !3641

4:                                                ; preds = %2
  %5 = icmp ugt i8 %1, 15, !dbg !3642
  br i1 %5, label %11, label %6, !dbg !3644

6:                                                ; preds = %4
  %7 = zext i8 %1 to i32, !dbg !3645
  %8 = tail call i32 @pinmux_config(i32 noundef %0, i32 noundef %7) #13, !dbg !3646
  call void @llvm.dbg.value(metadata i32 %8, metadata !3637, metadata !DIExpression()), !dbg !3638
  %9 = icmp slt i32 %8, 0, !dbg !3647
  %10 = select i1 %9, i32 -3, i32 0, !dbg !3647
  br label %11, !dbg !3648

11:                                               ; preds = %4, %2, %6
  %12 = phi i32 [ %10, %6 ], [ -2, %2 ], [ -1, %4 ], !dbg !3638
  ret i32 %12, !dbg !3649
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize readnone willreturn
define dso_local i32 @hal_gpio_init(i32 noundef %0) local_unnamed_addr #10 !dbg !3650 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !3655, metadata !DIExpression()), !dbg !3656
  ret i32 0, !dbg !3657
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize readnone willreturn
define dso_local i32 @hal_gpio_deinit(i32 noundef %0) local_unnamed_addr #10 !dbg !3658 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !3660, metadata !DIExpression()), !dbg !3661
  ret i32 0, !dbg !3662
}

; Function Attrs: noinline nounwind optsize
define dso_local i32 @hal_gpio_get_input(i32 noundef %0, i32* noundef writeonly %1) local_unnamed_addr #0 !dbg !3663 {
  %3 = alloca %struct.gpio_status, align 4
  call void @llvm.dbg.value(metadata i32 %0, metadata !3668, metadata !DIExpression()), !dbg !3678
  call void @llvm.dbg.value(metadata i32* %1, metadata !3669, metadata !DIExpression()), !dbg !3678
  %4 = icmp eq i32* %1, null, !dbg !3679
  br i1 %4, label %12, label %5, !dbg !3681

5:                                                ; preds = %2
  %6 = icmp ugt i32 %0, 60, !dbg !3682
  br i1 %6, label %12, label %7, !dbg !3684

7:                                                ; preds = %5
  %8 = bitcast %struct.gpio_status* %3 to i8*, !dbg !3685
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %8) #15, !dbg !3685
  call void @gpio_get_status(%struct.gpio_status* nonnull sret(%struct.gpio_status) align 4 %3, i32 noundef %0) #13, !dbg !3685
  %9 = getelementptr inbounds %struct.gpio_status, %struct.gpio_status* %3, i32 0, i32 2, !dbg !3685
  %10 = load i8, i8* %9, align 1, !dbg !3685
  call void @llvm.dbg.value(metadata i8 %10, metadata !3670, metadata !DIExpression(DW_OP_LLVM_fragment, 40, 8)), !dbg !3678
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %8) #15, !dbg !3685
  %11 = zext i8 %10 to i32, !dbg !3686
  store i32 %11, i32* %1, align 4, !dbg !3687
  br label %12, !dbg !3688

12:                                               ; preds = %5, %2, %7
  %13 = phi i32 [ 0, %7 ], [ -1, %2 ], [ -2, %5 ], !dbg !3678
  ret i32 %13, !dbg !3689
}

; Function Attrs: optsize
declare dso_local void @gpio_get_status(%struct.gpio_status* sret(%struct.gpio_status) align 4, i32 noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize
define dso_local i32 @hal_gpio_set_output(i32 noundef %0, i32 noundef %1) local_unnamed_addr #0 !dbg !3690 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !3694, metadata !DIExpression()), !dbg !3697
  call void @llvm.dbg.value(metadata i32 %1, metadata !3695, metadata !DIExpression()), !dbg !3697
  %3 = icmp ugt i32 %0, 60, !dbg !3698
  br i1 %3, label %9, label %4, !dbg !3700

4:                                                ; preds = %2
  %5 = trunc i32 %1 to i8, !dbg !3701
  %6 = tail call i32 @gpio_write(i32 noundef %0, i8 noundef zeroext %5) #13, !dbg !3702
  call void @llvm.dbg.value(metadata i32 %6, metadata !3696, metadata !DIExpression()), !dbg !3697
  %7 = icmp slt i32 %6, 0, !dbg !3703
  %8 = select i1 %7, i32 -3, i32 0, !dbg !3703
  br label %9, !dbg !3704

9:                                                ; preds = %2, %4
  %10 = phi i32 [ %8, %4 ], [ -2, %2 ], !dbg !3697
  ret i32 %10, !dbg !3705
}

; Function Attrs: optsize
declare dso_local i32 @gpio_write(i32 noundef, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize
define dso_local i32 @hal_gpio_get_output(i32 noundef %0, i32* noundef writeonly %1) local_unnamed_addr #0 !dbg !3706 {
  %3 = alloca %struct.gpio_status, align 4
  call void @llvm.dbg.value(metadata i32 %0, metadata !3708, metadata !DIExpression()), !dbg !3711
  call void @llvm.dbg.value(metadata i32* %1, metadata !3709, metadata !DIExpression()), !dbg !3711
  %4 = icmp ugt i32 %0, 60, !dbg !3712
  br i1 %4, label %12, label %5, !dbg !3714

5:                                                ; preds = %2
  %6 = icmp eq i32* %1, null, !dbg !3715
  br i1 %6, label %12, label %7, !dbg !3717

7:                                                ; preds = %5
  %8 = bitcast %struct.gpio_status* %3 to i8*, !dbg !3718
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %8) #15, !dbg !3718
  call void @gpio_get_status(%struct.gpio_status* nonnull sret(%struct.gpio_status) align 4 %3, i32 noundef %0) #13, !dbg !3718
  %9 = getelementptr inbounds %struct.gpio_status, %struct.gpio_status* %3, i32 0, i32 3, !dbg !3718
  %10 = load i8, i8* %9, align 2, !dbg !3718
  call void @llvm.dbg.value(metadata i8 %10, metadata !3710, metadata !DIExpression(DW_OP_LLVM_fragment, 48, 8)), !dbg !3711
  call void @llvm.dbg.value(metadata i8 undef, metadata !3710, metadata !DIExpression(DW_OP_LLVM_fragment, 56, 8)), !dbg !3711
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %8) #15, !dbg !3718
  %11 = zext i8 %10 to i32, !dbg !3719
  store i32 %11, i32* %1, align 4, !dbg !3720
  br label %12, !dbg !3721

12:                                               ; preds = %5, %2, %7
  %13 = phi i32 [ 0, %7 ], [ -2, %2 ], [ -1, %5 ], !dbg !3711
  ret i32 %13, !dbg !3722
}

; Function Attrs: noinline nounwind optsize
define dso_local i32 @hal_gpio_set_direction(i32 noundef %0, i32 noundef %1) local_unnamed_addr #0 !dbg !3723 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !3728, metadata !DIExpression()), !dbg !3731
  call void @llvm.dbg.value(metadata i32 %1, metadata !3729, metadata !DIExpression()), !dbg !3731
  %3 = icmp ugt i32 %0, 60, !dbg !3732
  br i1 %3, label %8, label %4, !dbg !3734

4:                                                ; preds = %2
  %5 = tail call i32 @gpio_direction(i32 noundef %0, i32 noundef %1) #13, !dbg !3735
  call void @llvm.dbg.value(metadata i32 %5, metadata !3730, metadata !DIExpression()), !dbg !3731
  %6 = icmp slt i32 %5, 0, !dbg !3736
  %7 = select i1 %6, i32 -3, i32 0, !dbg !3736
  br label %8, !dbg !3737

8:                                                ; preds = %2, %4
  %9 = phi i32 [ %7, %4 ], [ -2, %2 ], !dbg !3731
  ret i32 %9, !dbg !3738
}

; Function Attrs: optsize
declare dso_local i32 @gpio_direction(i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize
define dso_local i32 @hal_gpio_get_direction(i32 noundef %0, i32* noundef writeonly %1) local_unnamed_addr #0 !dbg !3739 {
  %3 = alloca %struct.gpio_status, align 4
  call void @llvm.dbg.value(metadata i32 %0, metadata !3744, metadata !DIExpression()), !dbg !3747
  call void @llvm.dbg.value(metadata i32* %1, metadata !3745, metadata !DIExpression()), !dbg !3747
  %4 = icmp ugt i32 %0, 60, !dbg !3748
  br i1 %4, label %13, label %5, !dbg !3750

5:                                                ; preds = %2
  %6 = icmp eq i32* %1, null, !dbg !3751
  br i1 %6, label %13, label %7, !dbg !3753

7:                                                ; preds = %5
  %8 = bitcast %struct.gpio_status* %3 to i8*, !dbg !3754
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %8) #15, !dbg !3754
  call void @gpio_get_status(%struct.gpio_status* nonnull sret(%struct.gpio_status) align 4 %3, i32 noundef %0) #13, !dbg !3754
  call void @llvm.dbg.value(metadata i32 undef, metadata !3746, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32)), !dbg !3747
  %9 = getelementptr inbounds %struct.gpio_status, %struct.gpio_status* %3, i32 0, i32 1, !dbg !3754
  %10 = load i8, i8* %9, align 4, !dbg !3754
  call void @llvm.dbg.value(metadata i8 %10, metadata !3746, metadata !DIExpression(DW_OP_LLVM_fragment, 32, 8)), !dbg !3747
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %8) #15, !dbg !3754
  %11 = icmp ne i8 %10, 0, !dbg !3755
  %12 = zext i1 %11 to i32, !dbg !3755
  store i32 %12, i32* %1, align 4, !dbg !3756
  br label %13, !dbg !3757

13:                                               ; preds = %5, %2, %7
  %14 = phi i32 [ 0, %7 ], [ -2, %2 ], [ -1, %5 ], !dbg !3747
  ret i32 %14, !dbg !3758
}

; Function Attrs: noinline nounwind optsize
define dso_local i32 @hal_gpio_toggle_pin(i32 noundef %0) local_unnamed_addr #0 !dbg !3759 {
  %2 = alloca %struct.gpio_status, align 4
  call void @llvm.dbg.value(metadata i32 %0, metadata !3761, metadata !DIExpression()), !dbg !3763
  %3 = icmp ugt i32 %0, 60, !dbg !3764
  br i1 %3, label %11, label %4, !dbg !3766

4:                                                ; preds = %1
  %5 = bitcast %struct.gpio_status* %2 to i8*, !dbg !3767
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %5) #15, !dbg !3767
  call void @gpio_get_status(%struct.gpio_status* nonnull sret(%struct.gpio_status) align 4 %2, i32 noundef %0) #13, !dbg !3767
  %6 = getelementptr inbounds %struct.gpio_status, %struct.gpio_status* %2, i32 0, i32 3, !dbg !3767
  %7 = load i8, i8* %6, align 2, !dbg !3767
  call void @llvm.dbg.value(metadata i8 %7, metadata !3762, metadata !DIExpression(DW_OP_LLVM_fragment, 48, 8)), !dbg !3763
  call void @llvm.dbg.value(metadata i8 undef, metadata !3762, metadata !DIExpression(DW_OP_LLVM_fragment, 56, 8)), !dbg !3763
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %5) #15, !dbg !3767
  %8 = xor i8 %7, 1, !dbg !3768
  %9 = zext i8 %8 to i32, !dbg !3768
  %10 = call i32 @hal_gpio_set_output(i32 noundef %0, i32 noundef %9) #14, !dbg !3769
  br label %11, !dbg !3770

11:                                               ; preds = %1, %4
  %12 = phi i32 [ %10, %4 ], [ -2, %1 ], !dbg !3763
  ret i32 %12, !dbg !3771
}

; Function Attrs: noinline nounwind optsize
define dso_local i32 @hal_gpio_pull_up(i32 noundef %0) local_unnamed_addr #0 !dbg !3772 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !3774, metadata !DIExpression()), !dbg !3776
  %2 = icmp ugt i32 %0, 60, !dbg !3777
  br i1 %2, label %10, label %3, !dbg !3779

3:                                                ; preds = %1
  %4 = tail call i32 @gpio_PullDisable(i32 noundef %0) #13, !dbg !3780
  call void @llvm.dbg.value(metadata i32 %4, metadata !3775, metadata !DIExpression()), !dbg !3776
  %5 = icmp slt i32 %4, 0, !dbg !3781
  br i1 %5, label %10, label %6, !dbg !3783

6:                                                ; preds = %3
  %7 = tail call i32 @gpio_PullUp(i32 noundef %0) #13, !dbg !3784
  call void @llvm.dbg.value(metadata i32 %7, metadata !3775, metadata !DIExpression()), !dbg !3776
  %8 = icmp slt i32 %7, 0, !dbg !3785
  %9 = select i1 %8, i32 -3, i32 0, !dbg !3785
  br label %10, !dbg !3786

10:                                               ; preds = %3, %1, %6
  %11 = phi i32 [ %9, %6 ], [ -2, %1 ], [ -3, %3 ], !dbg !3776
  ret i32 %11, !dbg !3787
}

; Function Attrs: optsize
declare dso_local i32 @gpio_PullDisable(i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare dso_local i32 @gpio_PullUp(i32 noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize
define dso_local i32 @hal_gpio_pull_down(i32 noundef %0) local_unnamed_addr #0 !dbg !3788 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !3790, metadata !DIExpression()), !dbg !3792
  %2 = icmp ugt i32 %0, 60, !dbg !3793
  br i1 %2, label %10, label %3, !dbg !3795

3:                                                ; preds = %1
  %4 = tail call i32 @gpio_PullDisable(i32 noundef %0) #13, !dbg !3796
  call void @llvm.dbg.value(metadata i32 %4, metadata !3791, metadata !DIExpression()), !dbg !3792
  %5 = icmp slt i32 %4, 0, !dbg !3797
  br i1 %5, label %10, label %6, !dbg !3799

6:                                                ; preds = %3
  %7 = tail call i32 @gpio_PullDown(i32 noundef %0) #13, !dbg !3800
  call void @llvm.dbg.value(metadata i32 %7, metadata !3791, metadata !DIExpression()), !dbg !3792
  %8 = icmp slt i32 %7, 0, !dbg !3801
  %9 = select i1 %8, i32 -3, i32 0, !dbg !3801
  br label %10, !dbg !3802

10:                                               ; preds = %3, %1, %6
  %11 = phi i32 [ %9, %6 ], [ -2, %1 ], [ -3, %3 ], !dbg !3792
  ret i32 %11, !dbg !3803
}

; Function Attrs: optsize
declare dso_local i32 @gpio_PullDown(i32 noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize
define dso_local i32 @hal_gpio_disable_pull(i32 noundef %0) local_unnamed_addr #0 !dbg !3804 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !3806, metadata !DIExpression()), !dbg !3808
  %2 = icmp ugt i32 %0, 60, !dbg !3809
  br i1 %2, label %7, label %3, !dbg !3811

3:                                                ; preds = %1
  %4 = tail call i32 @gpio_PullDisable(i32 noundef %0) #13, !dbg !3812
  call void @llvm.dbg.value(metadata i32 %4, metadata !3807, metadata !DIExpression()), !dbg !3808
  %5 = icmp slt i32 %4, 0, !dbg !3813
  %6 = select i1 %5, i32 -3, i32 0, !dbg !3813
  br label %7, !dbg !3814

7:                                                ; preds = %1, %3
  %8 = phi i32 [ %6, %3 ], [ -2, %1 ], !dbg !3808
  ret i32 %8, !dbg !3815
}

; Function Attrs: noinline nounwind optsize
define dso_local i32 @hal_gpio_set_driving_current(i32 noundef %0, i32 noundef %1) local_unnamed_addr #0 !dbg !3816 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !3820, metadata !DIExpression()), !dbg !3823
  call void @llvm.dbg.value(metadata i32 %1, metadata !3821, metadata !DIExpression()), !dbg !3823
  %3 = icmp ugt i32 %0, 60, !dbg !3824
  br i1 %3, label %9, label %4, !dbg !3826

4:                                                ; preds = %2
  %5 = trunc i32 %1 to i8, !dbg !3827
  %6 = tail call i32 @gpio_SetDriving(i32 noundef %0, i8 noundef zeroext %5) #13, !dbg !3828
  call void @llvm.dbg.value(metadata i32 %6, metadata !3822, metadata !DIExpression()), !dbg !3823
  %7 = icmp slt i32 %6, 0, !dbg !3829
  %8 = select i1 %7, i32 -3, i32 0, !dbg !3829
  br label %9, !dbg !3830

9:                                                ; preds = %2, %4
  %10 = phi i32 [ %8, %4 ], [ -2, %2 ], !dbg !3823
  ret i32 %10, !dbg !3831
}

; Function Attrs: optsize
declare dso_local i32 @gpio_SetDriving(i32 noundef, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize
define dso_local i32 @hal_gpio_get_driving_current(i32 noundef %0, i32* nocapture noundef writeonly %1) local_unnamed_addr #0 !dbg !3832 {
  %3 = alloca i8, align 1
  call void @llvm.dbg.value(metadata i32 %0, metadata !3837, metadata !DIExpression()), !dbg !3841
  call void @llvm.dbg.value(metadata i32* %1, metadata !3838, metadata !DIExpression()), !dbg !3841
  call void @llvm.lifetime.start.p0i8(i64 1, i8* nonnull %3) #15, !dbg !3842
  %4 = icmp ugt i32 %0, 60, !dbg !3843
  br i1 %4, label %11, label %5, !dbg !3845

5:                                                ; preds = %2
  call void @llvm.dbg.value(metadata i8* %3, metadata !3840, metadata !DIExpression(DW_OP_deref)), !dbg !3841
  %6 = call i32 @gpio_GetDriving(i32 noundef %0, i8* noundef nonnull %3) #13, !dbg !3846
  call void @llvm.dbg.value(metadata i32 %6, metadata !3839, metadata !DIExpression()), !dbg !3841
  %7 = load i8, i8* %3, align 1, !dbg !3847
  call void @llvm.dbg.value(metadata i8 %7, metadata !3840, metadata !DIExpression()), !dbg !3841
  %8 = zext i8 %7 to i32, !dbg !3848
  store i32 %8, i32* %1, align 4, !dbg !3849
  %9 = icmp slt i32 %6, 0, !dbg !3850
  %10 = select i1 %9, i32 -3, i32 0, !dbg !3850
  br label %11, !dbg !3851

11:                                               ; preds = %2, %5
  %12 = phi i32 [ %10, %5 ], [ -2, %2 ], !dbg !3841
  call void @llvm.lifetime.end.p0i8(i64 1, i8* nonnull %3) #15, !dbg !3852
  ret i32 %12, !dbg !3852
}

; Function Attrs: optsize
declare dso_local i32 @gpio_GetDriving(i32 noundef, i8* noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize
define dso_local i32 @hal_gpt_init(i32 noundef %0) local_unnamed_addr #0 !dbg !3853 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !3859, metadata !DIExpression()), !dbg !3860
  %2 = getelementptr inbounds [5 x %struct.hal_gpt_context_t], [5 x %struct.hal_gpt_context_t]* @g_gpt_context, i32 0, i32 %0, !dbg !3861
  %3 = getelementptr inbounds [5 x %struct.hal_gpt_context_t], [5 x %struct.hal_gpt_context_t]* @g_gpt_context, i32 0, i32 %0, i32 2, !dbg !3863
  %4 = load i8, i8* %3, align 4, !dbg !3863, !range !3864
  %5 = icmp eq i8 %4, 0, !dbg !3863
  br i1 %5, label %6, label %12, !dbg !3865

6:                                                ; preds = %1
  %7 = tail call fastcc zeroext i1 @hal_gpt_is_port_valid(i32 noundef %0) #14, !dbg !3866
  br i1 %7, label %9, label %8, !dbg !3868

8:                                                ; preds = %6
  tail call void (i8*, i32, i8*, ...) @log_hal_error_internal(i8* noundef getelementptr inbounds ([13 x i8], [13 x i8]* @__FUNCTION__.hal_gpt_init, i32 0, i32 0), i32 noundef 89, i8* noundef getelementptr inbounds ([18 x i8], [18 x i8]* @.str.23, i32 0, i32 0), i32 noundef %0) #13, !dbg !3869
  br label %12, !dbg !3871

9:                                                ; preds = %6
  %10 = bitcast %struct.hal_gpt_context_t* %2 to i8*, !dbg !3872
  %11 = tail call i8* @memset(i8* noundef nonnull %10, i32 noundef 0, i32 noundef 16) #13, !dbg !3873
  store i8 1, i8* %3, align 4, !dbg !3874
  br label %12, !dbg !3875

12:                                               ; preds = %1, %9, %8
  %13 = phi i32 [ -2, %8 ], [ 0, %9 ], [ -3, %1 ], !dbg !3860
  ret i32 %13, !dbg !3876
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize readnone willreturn
define internal fastcc zeroext i1 @hal_gpt_is_port_valid(i32 noundef %0) unnamed_addr #10 !dbg !3877 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !3881, metadata !DIExpression()), !dbg !3882
  %2 = icmp ult i32 %0, 5, !dbg !3883
  %3 = icmp ne i32 %0, 2
  %4 = and i1 %2, %3, !dbg !3885
  ret i1 %4, !dbg !3886
}

; Function Attrs: optsize
declare dso_local i8* @memset(i8* noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize
define dso_local i32 @hal_gpt_deinit(i32 noundef %0) local_unnamed_addr #0 !dbg !3887 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !3889, metadata !DIExpression()), !dbg !3890
  %2 = tail call fastcc zeroext i1 @hal_gpt_is_port_valid(i32 noundef %0) #14, !dbg !3891
  br i1 %2, label %4, label %3, !dbg !3893

3:                                                ; preds = %1
  tail call void (i8*, i32, i8*, ...) @log_hal_error_internal(i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @__FUNCTION__.hal_gpt_deinit, i32 0, i32 0), i32 noundef 104, i8* noundef getelementptr inbounds ([18 x i8], [18 x i8]* @.str.23, i32 0, i32 0), i32 noundef %0) #13, !dbg !3894
  br label %14, !dbg !3896

4:                                                ; preds = %1
  %5 = getelementptr inbounds [5 x %struct.hal_gpt_context_t], [5 x %struct.hal_gpt_context_t]* @g_gpt_context, i32 0, i32 %0, !dbg !3897
  %6 = getelementptr inbounds %struct.hal_gpt_context_t, %struct.hal_gpt_context_t* %5, i32 0, i32 0, !dbg !3899
  %7 = load i32, i32* %6, align 4, !dbg !3899
  %8 = icmp eq i32 %7, 0, !dbg !3900
  br i1 %8, label %10, label %9, !dbg !3901

9:                                                ; preds = %4
  tail call void (i8*, i32, i8*, ...) @log_hal_error_internal(i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @__FUNCTION__.hal_gpt_deinit, i32 0, i32 0), i32 noundef 109, i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1.24, i32 0, i32 0), i32 noundef %0) #13, !dbg !3902
  br label %14, !dbg !3904

10:                                               ; preds = %4
  %11 = bitcast %struct.hal_gpt_context_t* %5 to i8*, !dbg !3905
  %12 = tail call i8* @memset(i8* noundef nonnull %11, i32 noundef 0, i32 noundef 16) #13, !dbg !3906
  %13 = getelementptr inbounds [5 x %struct.hal_gpt_context_t], [5 x %struct.hal_gpt_context_t]* @g_gpt_context, i32 0, i32 %0, i32 2, !dbg !3907
  store i8 0, i8* %13, align 4, !dbg !3908
  br label %14, !dbg !3909

14:                                               ; preds = %10, %9, %3
  %15 = phi i32 [ -2, %3 ], [ -3, %9 ], [ 0, %10 ], !dbg !3890
  ret i32 %15, !dbg !3910
}

; Function Attrs: noinline nounwind optsize
define dso_local i32 @hal_gpt_get_free_run_count(i32 noundef %0, i32* nocapture noundef writeonly %1) local_unnamed_addr #0 !dbg !3911 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !3916, metadata !DIExpression()), !dbg !3918
  call void @llvm.dbg.value(metadata i32* %1, metadata !3917, metadata !DIExpression()), !dbg !3918
  switch i32 %0, label %24 [
    i32 0, label %3
    i32 1, label %9
    i32 2, label %18
  ], !dbg !3919

3:                                                ; preds = %2
  %4 = load i32, i32* getelementptr inbounds ([5 x %struct.hal_gpt_context_t], [5 x %struct.hal_gpt_context_t]* @g_gpt_context, i32 0, i32 2, i32 0), align 4, !dbg !3920
  %5 = icmp eq i32 %4, 1, !dbg !3924
  br i1 %5, label %7, label %6, !dbg !3925

6:                                                ; preds = %3
  tail call void @CM4_GPT2Init() #13, !dbg !3926
  br label %7, !dbg !3928

7:                                                ; preds = %6, %3
  %8 = tail call i32 @get_current_count() #13, !dbg !3929
  store i32 %8, i32* %1, align 4, !dbg !3930
  store i32 1, i32* getelementptr inbounds ([5 x %struct.hal_gpt_context_t], [5 x %struct.hal_gpt_context_t]* @g_gpt_context, i32 0, i32 2, i32 0), align 4, !dbg !3931
  br label %25, !dbg !3932

9:                                                ; preds = %2
  %10 = load i32, i32* getelementptr inbounds ([5 x %struct.hal_gpt_context_t], [5 x %struct.hal_gpt_context_t]* @g_gpt_context, i32 0, i32 4, i32 0), align 4, !dbg !3933
  %11 = icmp eq i32 %10, 1, !dbg !3937
  br i1 %11, label %13, label %12, !dbg !3938

12:                                               ; preds = %9
  tail call void @CM4_GPT4Init() #13, !dbg !3939
  br label %13, !dbg !3941

13:                                               ; preds = %12, %9
  %14 = tail call i32 @get_current_gpt4_count() #13, !dbg !3942
  %15 = tail call i32 @top_mcu_freq_get() #13, !dbg !3943
  %16 = udiv i32 %15, 1000000, !dbg !3944
  %17 = udiv i32 %14, %16, !dbg !3945
  store i32 %17, i32* %1, align 4, !dbg !3946
  store i32 1, i32* getelementptr inbounds ([5 x %struct.hal_gpt_context_t], [5 x %struct.hal_gpt_context_t]* @g_gpt_context, i32 0, i32 4, i32 0), align 4, !dbg !3947
  br label %25, !dbg !3948

18:                                               ; preds = %2
  %19 = load i32, i32* getelementptr inbounds ([5 x %struct.hal_gpt_context_t], [5 x %struct.hal_gpt_context_t]* @g_gpt_context, i32 0, i32 4, i32 0), align 4, !dbg !3949
  %20 = icmp eq i32 %19, 1, !dbg !3953
  br i1 %20, label %22, label %21, !dbg !3954

21:                                               ; preds = %18
  tail call void @CM4_GPT4Init() #13, !dbg !3955
  br label %22, !dbg !3957

22:                                               ; preds = %21, %18
  %23 = tail call i32 @get_current_gpt4_count() #13, !dbg !3958
  store i32 %23, i32* %1, align 4, !dbg !3959
  store i32 1, i32* getelementptr inbounds ([5 x %struct.hal_gpt_context_t], [5 x %struct.hal_gpt_context_t]* @g_gpt_context, i32 0, i32 4, i32 0), align 4, !dbg !3960
  br label %25

24:                                               ; preds = %2
  tail call void (i8*, i32, i8*, ...) @log_hal_error_internal(i8* noundef getelementptr inbounds ([27 x i8], [27 x i8]* @__FUNCTION__.hal_gpt_get_free_run_count, i32 0, i32 0), i32 noundef 141, i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str.2, i32 0, i32 0), i32 noundef %0) #13, !dbg !3961
  br label %25, !dbg !3963

25:                                               ; preds = %7, %22, %13, %24
  %26 = phi i32 [ -1, %24 ], [ 0, %13 ], [ 0, %22 ], [ 0, %7 ], !dbg !3918
  ret i32 %26, !dbg !3964
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn writeonly
define dso_local i32 @hal_gpt_get_duration_count(i32 noundef %0, i32 noundef %1, i32* noundef writeonly %2) local_unnamed_addr #11 !dbg !3965 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !3969, metadata !DIExpression()), !dbg !3972
  call void @llvm.dbg.value(metadata i32 %1, metadata !3970, metadata !DIExpression()), !dbg !3972
  call void @llvm.dbg.value(metadata i32* %2, metadata !3971, metadata !DIExpression()), !dbg !3972
  %4 = icmp eq i32* %2, null, !dbg !3973
  br i1 %4, label %7, label %5, !dbg !3975

5:                                                ; preds = %3
  %6 = sub i32 %1, %0, !dbg !3976
  store i32 %6, i32* %2, align 4, !dbg !3976
  br label %7, !dbg !3978

7:                                                ; preds = %3, %5
  %8 = phi i32 [ 0, %5 ], [ -1, %3 ], !dbg !3972
  ret i32 %8, !dbg !3979
}

; Function Attrs: noinline nounwind optsize
define dso_local i32 @hal_gpt_get_running_status(i32 noundef %0, i32* nocapture noundef writeonly %1) local_unnamed_addr #0 !dbg !3980 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !3985, metadata !DIExpression()), !dbg !3987
  call void @llvm.dbg.value(metadata i32* %1, metadata !3986, metadata !DIExpression()), !dbg !3987
  %3 = icmp ugt i32 %0, 4, !dbg !3988
  br i1 %3, label %4, label %5, !dbg !3990

4:                                                ; preds = %2
  tail call void (i8*, i32, i8*, ...) @log_hal_error_internal(i8* noundef getelementptr inbounds ([27 x i8], [27 x i8]* @__FUNCTION__.hal_gpt_get_running_status, i32 0, i32 0), i32 noundef 167, i8* noundef getelementptr inbounds ([45 x i8], [45 x i8]* @.str.3, i32 0, i32 0), i32 noundef %0) #13, !dbg !3991
  br label %8, !dbg !3993

5:                                                ; preds = %2
  %6 = getelementptr inbounds [5 x %struct.hal_gpt_context_t], [5 x %struct.hal_gpt_context_t]* @g_gpt_context, i32 0, i32 %0, i32 0, !dbg !3994
  %7 = load i32, i32* %6, align 4, !dbg !3994
  store i32 %7, i32* %1, align 4, !dbg !3995
  br label %8, !dbg !3996

8:                                                ; preds = %5, %4
  %9 = phi i32 [ -2, %4 ], [ 0, %5 ], !dbg !3987
  ret i32 %9, !dbg !3997
}

; Function Attrs: noinline nounwind optsize
define dso_local i32 @hal_gpt_register_callback(i32 noundef %0, void (i8*)* noundef %1, i8* noundef %2) local_unnamed_addr #0 !dbg !3998 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !4002, metadata !DIExpression()), !dbg !4005
  call void @llvm.dbg.value(metadata void (i8*)* %1, metadata !4003, metadata !DIExpression()), !dbg !4005
  call void @llvm.dbg.value(metadata i8* %2, metadata !4004, metadata !DIExpression()), !dbg !4005
  %4 = tail call fastcc zeroext i1 @hal_gpt_is_port_valid(i32 noundef %0) #14, !dbg !4006
  br i1 %4, label %6, label %5, !dbg !4008

5:                                                ; preds = %3
  tail call void (i8*, i32, i8*, ...) @log_hal_error_internal(i8* noundef getelementptr inbounds ([26 x i8], [26 x i8]* @__FUNCTION__.hal_gpt_register_callback, i32 0, i32 0), i32 noundef 179, i8* noundef getelementptr inbounds ([51 x i8], [51 x i8]* @.str.4, i32 0, i32 0), i32 noundef %0) #13, !dbg !4009
  br label %15, !dbg !4011

6:                                                ; preds = %3
  %7 = getelementptr inbounds [5 x %struct.hal_gpt_context_t], [5 x %struct.hal_gpt_context_t]* @g_gpt_context, i32 0, i32 %0, i32 2, !dbg !4012
  %8 = load i8, i8* %7, align 4, !dbg !4012, !range !3864
  %9 = icmp eq i8 %8, 1, !dbg !4014
  br i1 %9, label %10, label %15, !dbg !4015

10:                                               ; preds = %6
  %11 = icmp eq void (i8*)* %1, null, !dbg !4016
  br i1 %11, label %15, label %12, !dbg !4018

12:                                               ; preds = %10
  %13 = getelementptr inbounds [5 x %struct.hal_gpt_context_t], [5 x %struct.hal_gpt_context_t]* @g_gpt_context, i32 0, i32 %0, i32 1, i32 0, !dbg !4019
  store void (i8*)* %1, void (i8*)** %13, align 4, !dbg !4020
  %14 = getelementptr inbounds [5 x %struct.hal_gpt_context_t], [5 x %struct.hal_gpt_context_t]* @g_gpt_context, i32 0, i32 %0, i32 1, i32 1, !dbg !4021
  store i8* %2, i8** %14, align 4, !dbg !4022
  br label %15, !dbg !4023

15:                                               ; preds = %10, %6, %12, %5
  %16 = phi i32 [ -2, %5 ], [ 0, %12 ], [ -3, %6 ], [ -1, %10 ], !dbg !4005
  ret i32 %16, !dbg !4024
}

; Function Attrs: noinline nounwind optsize
define dso_local i32 @hal_gpt_start_timer_ms(i32 noundef %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #0 !dbg !4025 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !4030, metadata !DIExpression()), !dbg !4033
  call void @llvm.dbg.value(metadata i32 %1, metadata !4031, metadata !DIExpression()), !dbg !4033
  call void @llvm.dbg.value(metadata i32 %2, metadata !4032, metadata !DIExpression()), !dbg !4033
  %4 = tail call fastcc zeroext i1 @hal_gpt_is_port_valid(i32 noundef %0) #14, !dbg !4034
  br i1 %4, label %6, label %5, !dbg !4036

5:                                                ; preds = %3
  tail call void (i8*, i32, i8*, ...) @log_hal_error_internal(i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @__FUNCTION__.hal_gpt_start_timer_ms, i32 0, i32 0), i32 noundef 221, i8* noundef getelementptr inbounds ([51 x i8], [51 x i8]* @.str.4, i32 0, i32 0), i32 noundef %0) #13, !dbg !4037
  br label %17, !dbg !4039

6:                                                ; preds = %3
  %7 = getelementptr inbounds [5 x %struct.hal_gpt_context_t], [5 x %struct.hal_gpt_context_t]* @g_gpt_context, i32 0, i32 %0, i32 2, !dbg !4040
  %8 = load i8, i8* %7, align 4, !dbg !4040, !range !3864
  %9 = icmp eq i8 %8, 1, !dbg !4042
  br i1 %9, label %10, label %17, !dbg !4043

10:                                               ; preds = %6
  %11 = icmp ugt i32 %1, 130150523, !dbg !4044
  br i1 %11, label %17, label %12, !dbg !4046

12:                                               ; preds = %10
  %13 = tail call fastcc i32 @hal_gpt_translate_timeout_time(i32 noundef %1) #14, !dbg !4047
  %14 = tail call fastcc zeroext i1 @hal_gpt_translate_type(i32 noundef %2) #14, !dbg !4048
  %15 = tail call fastcc void ()* @hal_gpt_map_callback(i32 noundef %0) #14, !dbg !4049
  tail call void @drvTMR_init(i32 noundef %0, i32 noundef %13, i1 noundef zeroext %14, void ()* noundef nonnull %15) #13, !dbg !4050
  tail call void @TMR_Start(i32 noundef %0) #13, !dbg !4051
  %16 = getelementptr inbounds [5 x %struct.hal_gpt_context_t], [5 x %struct.hal_gpt_context_t]* @g_gpt_context, i32 0, i32 %0, i32 0, !dbg !4052
  store i32 1, i32* %16, align 4, !dbg !4053
  br label %17, !dbg !4054

17:                                               ; preds = %10, %6, %12, %5
  %18 = phi i32 [ -2, %5 ], [ 0, %12 ], [ -3, %6 ], [ -1, %10 ], !dbg !4033
  ret i32 %18, !dbg !4055
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize readnone willreturn
define internal fastcc i32 @hal_gpt_translate_timeout_time(i32 noundef %0) unnamed_addr #10 !dbg !4056 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !4060, metadata !DIExpression()), !dbg !4061
  %2 = shl i32 %0, 5, !dbg !4062
  %3 = mul i32 %0, 7, !dbg !4063
  %4 = udiv i32 %3, 10, !dbg !4064
  %5 = add i32 %4, %2, !dbg !4065
  %6 = mul i32 %0, 6, !dbg !4066
  %7 = udiv i32 %6, 100, !dbg !4067
  %8 = add i32 %5, %7, !dbg !4068
  %9 = shl i32 %0, 3, !dbg !4069
  %10 = udiv i32 %9, 1000, !dbg !4070
  %11 = add i32 %8, %10, !dbg !4071
  ret i32 %11, !dbg !4072
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize readnone willreturn
define internal fastcc zeroext i1 @hal_gpt_translate_type(i32 noundef %0) unnamed_addr #10 !dbg !4073 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !4077, metadata !DIExpression()), !dbg !4078
  %2 = icmp eq i32 %0, 1, !dbg !4079
  ret i1 %2, !dbg !4080
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize readnone willreturn
define internal fastcc nonnull void ()* @hal_gpt_map_callback(i32 noundef %0) unnamed_addr #10 !dbg !4081 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !4086, metadata !DIExpression()), !dbg !4087
  %2 = icmp eq i32 %0, 0, !dbg !4088
  %3 = select i1 %2, void ()* @hal_gpt_callback0, void ()* @hal_gpt_callback1, !dbg !4089
  ret void ()* %3, !dbg !4090
}

; Function Attrs: noinline nounwind optsize
define internal void @hal_gpt_callback0() #0 !dbg !4091 {
  %1 = load void (i8*)*, void (i8*)** getelementptr inbounds ([5 x %struct.hal_gpt_context_t], [5 x %struct.hal_gpt_context_t]* @g_gpt_context, i32 0, i32 0, i32 1, i32 0), align 4, !dbg !4095
  %2 = icmp eq void (i8*)* %1, null, !dbg !4097
  br i1 %2, label %5, label %3, !dbg !4098

3:                                                ; preds = %0
  %4 = load i8*, i8** getelementptr inbounds ([5 x %struct.hal_gpt_context_t], [5 x %struct.hal_gpt_context_t]* @g_gpt_context, i32 0, i32 0, i32 1, i32 1), align 4, !dbg !4099
  tail call void %1(i8* noundef %4) #13, !dbg !4101
  br label %5, !dbg !4102

5:                                                ; preds = %3, %0
  store i32 0, i32* getelementptr inbounds ([5 x %struct.hal_gpt_context_t], [5 x %struct.hal_gpt_context_t]* @g_gpt_context, i32 0, i32 0, i32 0), align 4, !dbg !4103
  ret void, !dbg !4104
}

; Function Attrs: noinline nounwind optsize
define internal void @hal_gpt_callback1() #0 !dbg !4105 {
  %1 = load void (i8*)*, void (i8*)** getelementptr inbounds ([5 x %struct.hal_gpt_context_t], [5 x %struct.hal_gpt_context_t]* @g_gpt_context, i32 0, i32 1, i32 1, i32 0), align 4, !dbg !4108
  %2 = icmp eq void (i8*)* %1, null, !dbg !4110
  br i1 %2, label %5, label %3, !dbg !4111

3:                                                ; preds = %0
  %4 = load i8*, i8** getelementptr inbounds ([5 x %struct.hal_gpt_context_t], [5 x %struct.hal_gpt_context_t]* @g_gpt_context, i32 0, i32 1, i32 1, i32 1), align 4, !dbg !4112
  tail call void %1(i8* noundef %4) #13, !dbg !4114
  br label %5, !dbg !4115

5:                                                ; preds = %3, %0
  store i32 0, i32* getelementptr inbounds ([5 x %struct.hal_gpt_context_t], [5 x %struct.hal_gpt_context_t]* @g_gpt_context, i32 0, i32 1, i32 0), align 4, !dbg !4116
  ret void, !dbg !4117
}

; Function Attrs: noinline nounwind optsize
define dso_local i32 @hal_gpt_stop_timer(i32 noundef %0) local_unnamed_addr #0 !dbg !4118 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !4120, metadata !DIExpression()), !dbg !4121
  %2 = tail call fastcc zeroext i1 @hal_gpt_is_port_valid(i32 noundef %0) #14, !dbg !4122
  br i1 %2, label %4, label %3, !dbg !4124

3:                                                ; preds = %1
  tail call void (i8*, i32, i8*, ...) @log_hal_error_internal(i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @__FUNCTION__.hal_gpt_stop_timer, i32 0, i32 0), i32 noundef 245, i8* noundef getelementptr inbounds ([51 x i8], [51 x i8]* @.str.4, i32 0, i32 0), i32 noundef %0) #13, !dbg !4125
  br label %6, !dbg !4127

4:                                                ; preds = %1
  tail call void @TMR_Stop(i32 noundef %0) #13, !dbg !4128
  %5 = getelementptr inbounds [5 x %struct.hal_gpt_context_t], [5 x %struct.hal_gpt_context_t]* @g_gpt_context, i32 0, i32 %0, i32 0, !dbg !4129
  store i32 0, i32* %5, align 4, !dbg !4130
  br label %6, !dbg !4131

6:                                                ; preds = %4, %3
  %7 = phi i32 [ -2, %3 ], [ 0, %4 ], !dbg !4121
  ret i32 %7, !dbg !4132
}

; Function Attrs: noinline nounwind optsize
define dso_local i32 @hal_gpt_delay_ms(i32 noundef %0) local_unnamed_addr #0 !dbg !4133 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !4137, metadata !DIExpression()), !dbg !4138
  %2 = load i32, i32* getelementptr inbounds ([5 x %struct.hal_gpt_context_t], [5 x %struct.hal_gpt_context_t]* @g_gpt_context, i32 0, i32 2, i32 0), align 4, !dbg !4139
  %3 = icmp eq i32 %2, 1, !dbg !4141
  br i1 %3, label %5, label %4, !dbg !4142

4:                                                ; preds = %1
  tail call void @CM4_GPT2Init() #13, !dbg !4143
  br label %5, !dbg !4145

5:                                                ; preds = %4, %1
  tail call void @delay_ms(i32 noundef %0) #13, !dbg !4146
  store i32 1, i32* getelementptr inbounds ([5 x %struct.hal_gpt_context_t], [5 x %struct.hal_gpt_context_t]* @g_gpt_context, i32 0, i32 2, i32 0), align 4, !dbg !4147
  ret i32 0, !dbg !4148
}

; Function Attrs: noinline nounwind optsize
define dso_local i32 @hal_gpt_delay_us(i32 noundef %0) local_unnamed_addr #0 !dbg !4149 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !4151, metadata !DIExpression()), !dbg !4152
  %2 = load i32, i32* getelementptr inbounds ([5 x %struct.hal_gpt_context_t], [5 x %struct.hal_gpt_context_t]* @g_gpt_context, i32 0, i32 4, i32 0), align 4, !dbg !4153
  %3 = icmp eq i32 %2, 1, !dbg !4155
  br i1 %3, label %5, label %4, !dbg !4156

4:                                                ; preds = %1
  tail call void @CM4_GPT4Init() #13, !dbg !4157
  br label %5, !dbg !4159

5:                                                ; preds = %4, %1
  tail call void @delay_us(i32 noundef %0) #13, !dbg !4160
  store i32 1, i32* getelementptr inbounds ([5 x %struct.hal_gpt_context_t], [5 x %struct.hal_gpt_context_t]* @g_gpt_context, i32 0, i32 4, i32 0), align 4, !dbg !4161
  ret i32 0, !dbg !4162
}

; Function Attrs: noinline nounwind optsize
define dso_local i32 @hal_uart_init(i32 noundef %0, %struct.hal_uart_config_t* noundef %1) local_unnamed_addr #0 !dbg !4163 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !4169, metadata !DIExpression()), !dbg !4171
  call void @llvm.dbg.value(metadata %struct.hal_uart_config_t* %1, metadata !4170, metadata !DIExpression()), !dbg !4171
  %3 = tail call fastcc zeroext i1 @hal_uart_is_config_valid(i32 noundef %0, %struct.hal_uart_config_t* noundef %1) #14, !dbg !4172
  br i1 %3, label %4, label %18, !dbg !4174

4:                                                ; preds = %2
  %5 = getelementptr inbounds [2 x %struct.uart_context_t], [2 x %struct.uart_context_t]* @g_uart_context_table, i32 0, i32 %0, i32 0, !dbg !4175
  %6 = load i8, i8* %5, align 4, !dbg !4175, !range !3864
  %7 = icmp eq i8 %6, 0, !dbg !4175
  br i1 %7, label %8, label %18, !dbg !4177

8:                                                ; preds = %4
  %9 = tail call i8* @memset(i8* noundef nonnull %5, i32 noundef 0, i32 noundef 64) #13, !dbg !4178
  %10 = getelementptr inbounds [2 x %struct.uart_context_t], [2 x %struct.uart_context_t]* @g_uart_context_table, i32 0, i32 %0, i32 1, !dbg !4179
  %11 = bitcast %struct.hal_uart_config_t* %10 to i8*, !dbg !4180
  %12 = bitcast %struct.hal_uart_config_t* %1 to i8*, !dbg !4181
  %13 = tail call i8* @memcpy(i8* noundef nonnull %11, i8* noundef %12, i32 noundef 16) #13, !dbg !4182
  store i8 1, i8* %5, align 4, !dbg !4183
  %14 = tail call fastcc i32 @hal_uart_translate_port(i32 noundef %0) #14, !dbg !4184, !range !4185
  tail call void @uart_reset_default_value(i32 noundef %14) #13, !dbg !4186
  tail call void @halUART_HWInit(i32 noundef %14) #13, !dbg !4187
  %15 = tail call i32 @hal_uart_set_format(i32 noundef %0, %struct.hal_uart_config_t* noundef %1) #14, !dbg !4188
  %16 = icmp eq i32 %15, 0, !dbg !4190
  %17 = select i1 %16, i32 0, i32 -4, !dbg !4171
  br label %18, !dbg !4171

18:                                               ; preds = %8, %4, %2
  %19 = phi i32 [ -4, %2 ], [ -3, %4 ], [ %17, %8 ], !dbg !4171
  ret i32 %19, !dbg !4191
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize readonly willreturn
define internal fastcc zeroext i1 @hal_uart_is_config_valid(i32 noundef %0, %struct.hal_uart_config_t* noundef readonly %1) unnamed_addr #7 !dbg !4192 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !4198, metadata !DIExpression()), !dbg !4200
  call void @llvm.dbg.value(metadata %struct.hal_uart_config_t* %1, metadata !4199, metadata !DIExpression()), !dbg !4200
  %3 = tail call fastcc zeroext i1 @hal_uart_is_port_valid(i32 noundef %0) #14, !dbg !4201
  %4 = icmp ne %struct.hal_uart_config_t* %1, null
  %5 = and i1 %4, %3, !dbg !4203
  br i1 %5, label %6, label %22, !dbg !4203

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.hal_uart_config_t, %struct.hal_uart_config_t* %1, i32 0, i32 0, !dbg !4204
  %8 = load i32, i32* %7, align 4, !dbg !4204
  %9 = icmp ugt i32 %8, 12, !dbg !4206
  br i1 %9, label %22, label %10, !dbg !4207

10:                                               ; preds = %6
  %11 = getelementptr inbounds %struct.hal_uart_config_t, %struct.hal_uart_config_t* %1, i32 0, i32 3, !dbg !4208
  %12 = load i32, i32* %11, align 4, !dbg !4208
  %13 = icmp ugt i32 %12, 2, !dbg !4209
  br i1 %13, label %22, label %14, !dbg !4210

14:                                               ; preds = %10
  %15 = getelementptr inbounds %struct.hal_uart_config_t, %struct.hal_uart_config_t* %1, i32 0, i32 2, !dbg !4211
  %16 = load i32, i32* %15, align 4, !dbg !4211
  %17 = icmp ugt i32 %16, 1, !dbg !4212
  br i1 %17, label %22, label %18, !dbg !4213

18:                                               ; preds = %14
  %19 = getelementptr inbounds %struct.hal_uart_config_t, %struct.hal_uart_config_t* %1, i32 0, i32 1, !dbg !4214
  %20 = load i32, i32* %19, align 4, !dbg !4214
  %21 = icmp ult i32 %20, 4, !dbg !4215
  br label %22, !dbg !4216

22:                                               ; preds = %18, %6, %10, %14, %2
  %23 = phi i1 [ false, %2 ], [ false, %14 ], [ false, %10 ], [ false, %6 ], [ %21, %18 ], !dbg !4200
  ret i1 %23, !dbg !4217
}

; Function Attrs: optsize
declare dso_local i8* @memcpy(i8* noundef, i8* noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize readnone willreturn
define internal fastcc i32 @hal_uart_translate_port(i32 noundef %0) unnamed_addr #10 !dbg !4218 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !4222, metadata !DIExpression()), !dbg !4223
  %2 = icmp ne i32 %0, 0, !dbg !4224
  %3 = zext i1 %2 to i32, !dbg !4225
  ret i32 %3, !dbg !4226
}

; Function Attrs: noinline nounwind optsize
define dso_local i32 @hal_uart_set_format(i32 noundef %0, %struct.hal_uart_config_t* noundef %1) local_unnamed_addr #0 !dbg !4227 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !4231, metadata !DIExpression()), !dbg !4233
  call void @llvm.dbg.value(metadata %struct.hal_uart_config_t* %1, metadata !4232, metadata !DIExpression()), !dbg !4233
  %3 = tail call fastcc zeroext i1 @hal_uart_is_config_valid(i32 noundef %0, %struct.hal_uart_config_t* noundef %1) #14, !dbg !4234
  br i1 %3, label %4, label %22, !dbg !4236

4:                                                ; preds = %2
  %5 = getelementptr inbounds [2 x %struct.uart_context_t], [2 x %struct.uart_context_t]* @g_uart_context_table, i32 0, i32 %0, i32 1, !dbg !4237
  %6 = bitcast %struct.hal_uart_config_t* %5 to i8*, !dbg !4238
  %7 = bitcast %struct.hal_uart_config_t* %1 to i8*, !dbg !4239
  %8 = tail call i8* @memcpy(i8* noundef nonnull %6, i8* noundef %7, i32 noundef 16) #13, !dbg !4240
  %9 = tail call fastcc i32 @hal_uart_translate_port(i32 noundef %0) #14, !dbg !4241
  %10 = getelementptr inbounds %struct.hal_uart_config_t, %struct.hal_uart_config_t* %1, i32 0, i32 0, !dbg !4242
  %11 = load i32, i32* %10, align 4, !dbg !4242
  %12 = tail call fastcc i32 @hal_uart_translate_baudrate(i32 noundef %11) #14, !dbg !4243
  %13 = getelementptr inbounds %struct.hal_uart_config_t, %struct.hal_uart_config_t* %1, i32 0, i32 1, !dbg !4244
  %14 = load i32, i32* %13, align 4, !dbg !4244
  %15 = tail call fastcc zeroext i16 @hal_uart_translate_word_length(i32 noundef %14) #14, !dbg !4245
  %16 = getelementptr inbounds %struct.hal_uart_config_t, %struct.hal_uart_config_t* %1, i32 0, i32 3, !dbg !4246
  %17 = load i32, i32* %16, align 4, !dbg !4246
  %18 = tail call fastcc zeroext i16 @hal_uart_translate_parity(i32 noundef %17) #14, !dbg !4247
  %19 = getelementptr inbounds %struct.hal_uart_config_t, %struct.hal_uart_config_t* %1, i32 0, i32 2, !dbg !4248
  %20 = load i32, i32* %19, align 4, !dbg !4248
  %21 = tail call fastcc zeroext i16 @hal_uart_translate_stopbit(i32 noundef %20) #14, !dbg !4249
  tail call void @halUART_SetFormat(i32 noundef %9, i32 noundef %12, i16 noundef zeroext %15, i16 noundef zeroext %18, i16 noundef zeroext %21) #13, !dbg !4250
  br label %22, !dbg !4251

22:                                               ; preds = %2, %4
  %23 = phi i32 [ 0, %4 ], [ -4, %2 ], !dbg !4233
  ret i32 %23, !dbg !4252
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize readnone willreturn
define internal fastcc i32 @hal_uart_translate_baudrate(i32 noundef %0) unnamed_addr #10 !dbg !4253 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !4257, metadata !DIExpression()), !dbg !4262
  call void @llvm.dbg.declare(metadata [13 x i32]* @__const.hal_uart_translate_baudrate.baudrate_tbl, metadata !4258, metadata !DIExpression()), !dbg !4263
  %2 = getelementptr inbounds [13 x i32], [13 x i32]* @__const.hal_uart_translate_baudrate.baudrate_tbl, i32 0, i32 %0, !dbg !4264
  %3 = load i32, i32* %2, align 4, !dbg !4264
  ret i32 %3, !dbg !4265
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize readnone willreturn
define internal fastcc zeroext i16 @hal_uart_translate_word_length(i32 noundef %0) unnamed_addr #10 !dbg !4266 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !4270, metadata !DIExpression()), !dbg !4273
  call void @llvm.dbg.declare(metadata [4 x i16]* @__const.hal_uart_translate_word_length.databit_tbl, metadata !4271, metadata !DIExpression()), !dbg !4274
  %2 = getelementptr inbounds [4 x i16], [4 x i16]* @__const.hal_uart_translate_word_length.databit_tbl, i32 0, i32 %0, !dbg !4275
  %3 = load i16, i16* %2, align 2, !dbg !4275
  ret i16 %3, !dbg !4276
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize readnone willreturn
define internal fastcc zeroext i16 @hal_uart_translate_parity(i32 noundef %0) unnamed_addr #10 !dbg !4277 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !4281, metadata !DIExpression()), !dbg !4284
  call void @llvm.dbg.declare(metadata [5 x i16]* @__const.hal_uart_translate_parity.parity_tbl, metadata !4282, metadata !DIExpression()), !dbg !4285
  %2 = getelementptr inbounds [5 x i16], [5 x i16]* @__const.hal_uart_translate_parity.parity_tbl, i32 0, i32 %0, !dbg !4286
  %3 = load i16, i16* %2, align 2, !dbg !4286
  ret i16 %3, !dbg !4287
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize readnone willreturn
define internal fastcc zeroext i16 @hal_uart_translate_stopbit(i32 noundef %0) unnamed_addr #10 !dbg !4288 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !4292, metadata !DIExpression()), !dbg !4295
  call void @llvm.dbg.declare(metadata [3 x i16]* @__const.hal_uart_translate_stopbit.stopbit_tbl, metadata !4293, metadata !DIExpression()), !dbg !4296
  %2 = getelementptr inbounds [3 x i16], [3 x i16]* @__const.hal_uart_translate_stopbit.stopbit_tbl, i32 0, i32 %0, !dbg !4297
  %3 = load i16, i16* %2, align 2, !dbg !4297
  ret i16 %3, !dbg !4298
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize readnone willreturn
define internal fastcc zeroext i1 @hal_uart_is_port_valid(i32 noundef %0) unnamed_addr #10 !dbg !4299 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !4303, metadata !DIExpression()), !dbg !4304
  %2 = icmp ult i32 %0, 2, !dbg !4305
  ret i1 %2, !dbg !4306
}

; Function Attrs: noinline nounwind optsize
define dso_local i32 @hal_uart_deinit(i32 noundef %0) local_unnamed_addr #0 !dbg !4307 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !4311, metadata !DIExpression()), !dbg !4312
  %2 = tail call fastcc zeroext i1 @hal_uart_is_port_valid(i32 noundef %0) #14, !dbg !4313
  br i1 %2, label %3, label %10, !dbg !4315

3:                                                ; preds = %1
  %4 = getelementptr inbounds [2 x %struct.uart_context_t], [2 x %struct.uart_context_t]* @g_uart_context_table, i32 0, i32 %0, i32 0, !dbg !4316
  %5 = load i8, i8* %4, align 4, !dbg !4316, !range !3864
  %6 = icmp eq i8 %5, 0, !dbg !4318
  br i1 %6, label %10, label %7, !dbg !4319

7:                                                ; preds = %3
  %8 = tail call i8* @memset(i8* noundef nonnull %4, i32 noundef 0, i32 noundef 64) #13, !dbg !4320
  %9 = tail call fastcc i32 @hal_uart_translate_port(i32 noundef %0) #14, !dbg !4321, !range !4185
  tail call void @uart_query_empty(i32 noundef %9) #13, !dbg !4322
  tail call void @uart_reset_default_value(i32 noundef %9) #13, !dbg !4323
  br label %10, !dbg !4324

10:                                               ; preds = %3, %1, %7
  %11 = phi i32 [ 0, %7 ], [ -4, %1 ], [ -2, %3 ], !dbg !4312
  ret i32 %11, !dbg !4325
}

; Function Attrs: noinline nounwind optsize
define dso_local void @hal_uart_put_char(i32 noundef %0, i8 noundef zeroext %1) local_unnamed_addr #0 !dbg !4326 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !4330, metadata !DIExpression()), !dbg !4333
  call void @llvm.dbg.value(metadata i8 %1, metadata !4331, metadata !DIExpression()), !dbg !4333
  %3 = icmp eq i32 %0, 0, !dbg !4334
  %4 = icmp eq i32 %0, 1, !dbg !4334
  %5 = select i1 %4, i32 1, i32 2, !dbg !4334
  %6 = select i1 %3, i32 0, i32 %5, !dbg !4334
  call void @llvm.dbg.value(metadata i32 %6, metadata !4332, metadata !DIExpression()), !dbg !4333
  %7 = icmp eq i32 %6, 2, !dbg !4335
  br i1 %7, label %9, label %8, !dbg !4337

8:                                                ; preds = %2
  tail call void @uart_output_char(i32 noundef %6, i8 noundef zeroext %1) #13, !dbg !4338
  br label %9, !dbg !4340

9:                                                ; preds = %2, %8
  ret void, !dbg !4341
}

; Function Attrs: noinline nounwind optsize
define dso_local i32 @hal_uart_send_polling(i32 noundef %0, i8* noundef readonly %1, i32 noundef %2) local_unnamed_addr #0 !dbg !4342 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !4346, metadata !DIExpression()), !dbg !4351
  call void @llvm.dbg.value(metadata i8* %1, metadata !4347, metadata !DIExpression()), !dbg !4351
  call void @llvm.dbg.value(metadata i32 %2, metadata !4348, metadata !DIExpression()), !dbg !4351
  %4 = icmp eq i32 %0, 0, !dbg !4352
  %5 = icmp eq i32 %0, 1, !dbg !4352
  %6 = select i1 %5, i32 1, i32 2, !dbg !4352
  %7 = select i1 %4, i32 0, i32 %6, !dbg !4352
  call void @llvm.dbg.value(metadata i32 %7, metadata !4349, metadata !DIExpression()), !dbg !4351
  %8 = icmp eq i8* %1, null, !dbg !4353
  %9 = icmp ugt i32 %7, 1
  %10 = or i1 %8, %9, !dbg !4355
  %11 = icmp eq i32 %2, 0
  %12 = or i1 %10, %11, !dbg !4355
  call void @llvm.dbg.value(metadata i32 0, metadata !4350, metadata !DIExpression()), !dbg !4351
  br i1 %12, label %19, label %13, !dbg !4355

13:                                               ; preds = %3, %13
  %14 = phi i32 [ %17, %13 ], [ 0, %3 ]
  call void @llvm.dbg.value(metadata i32 %14, metadata !4350, metadata !DIExpression()), !dbg !4351
  %15 = getelementptr inbounds i8, i8* %1, i32 %14, !dbg !4356
  %16 = load i8, i8* %15, align 1, !dbg !4356
  tail call void @uart_output_char(i32 noundef %7, i8 noundef zeroext %16) #13, !dbg !4362
  %17 = add nuw i32 %14, 1, !dbg !4363
  call void @llvm.dbg.value(metadata i32 %17, metadata !4350, metadata !DIExpression()), !dbg !4351
  %18 = icmp eq i32 %17, %2, !dbg !4364
  br i1 %18, label %19, label %13, !dbg !4365, !llvm.loop !4366

19:                                               ; preds = %13, %3
  %20 = phi i32 [ 0, %3 ], [ %2, %13 ], !dbg !4351
  ret i32 %20, !dbg !4368
}

; Function Attrs: noinline nounwind optsize
define dso_local i32 @hal_uart_send_dma(i32 noundef %0, i8* noundef %1, i32 noundef %2) local_unnamed_addr #0 !dbg !4369 {
  %4 = alloca i32, align 4
  call void @llvm.dbg.value(metadata i32 %0, metadata !4371, metadata !DIExpression()), !dbg !4378
  call void @llvm.dbg.value(metadata i8* %1, metadata !4372, metadata !DIExpression()), !dbg !4378
  call void @llvm.dbg.value(metadata i32 %2, metadata !4373, metadata !DIExpression()), !dbg !4378
  %5 = bitcast i32* %4 to i8*, !dbg !4379
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %5) #15, !dbg !4379
  %6 = tail call fastcc zeroext i1 @hal_uart_is_port_valid(i32 noundef %0) #14, !dbg !4380
  br i1 %6, label %7, label %24, !dbg !4382

7:                                                ; preds = %3
  %8 = icmp eq i8* %1, null, !dbg !4383
  %9 = icmp eq i32 %2, 0
  %10 = or i1 %8, %9, !dbg !4385
  br i1 %10, label %24, label %11, !dbg !4385

11:                                               ; preds = %7
  %12 = getelementptr inbounds [2 x %struct.uart_context_t], [2 x %struct.uart_context_t]* @g_uart_context_table, i32 0, i32 %0, i32 4, !dbg !4386
  %13 = load i8, i8* %12, align 4, !dbg !4386, !range !3864
  %14 = icmp eq i8 %13, 0, !dbg !4386
  br i1 %14, label %24, label %15, !dbg !4388

15:                                               ; preds = %11
  %16 = tail call fastcc i32 @hal_uart_translate_port(i32 noundef %0) #14, !dbg !4389, !range !4185
  call void @llvm.dbg.value(metadata i32* %4, metadata !4374, metadata !DIExpression(DW_OP_deref)), !dbg !4378
  call void @halUART_Get_VFIFO_Length(i32 noundef %16, i32 noundef 0, i32* noundef nonnull %4) #13, !dbg !4390
  %17 = load i32, i32* %4, align 4, !dbg !4391
  call void @llvm.dbg.value(metadata i32 %17, metadata !4374, metadata !DIExpression()), !dbg !4378
  %18 = icmp ult i32 %17, %2, !dbg !4393
  %19 = select i1 %18, i32 %17, i32 %2
  call void @llvm.dbg.value(metadata i32 %19, metadata !4375, metadata !DIExpression()), !dbg !4378
  call void @halUART_Write_VFIFO_Data(i32 noundef %16, i8* noundef nonnull %1, i32 noundef %19) #13, !dbg !4394
  %20 = load i32, i32* %4, align 4, !dbg !4395
  call void @llvm.dbg.value(metadata i32 %20, metadata !4374, metadata !DIExpression()), !dbg !4378
  %21 = icmp eq i32 %19, %20, !dbg !4397
  br i1 %21, label %22, label %24, !dbg !4398

22:                                               ; preds = %15
  %23 = call fastcc i32 @uart_channel_to_dma_channel(i32 noundef %16, i1 noundef zeroext false) #14, !dbg !4399, !range !4401
  call void @llvm.dbg.value(metadata i32 %23, metadata !4376, metadata !DIExpression()), !dbg !4378
  call void @DMA_Vfifo_enable_interrupt(i32 noundef %23) #13, !dbg !4402
  br label %24, !dbg !4403

24:                                               ; preds = %15, %22, %11, %7, %3
  %25 = phi i32 [ 0, %3 ], [ 0, %7 ], [ 0, %11 ], [ %19, %22 ], [ %19, %15 ], !dbg !4378
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %5) #15, !dbg !4404
  ret i32 %25, !dbg !4404
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize readnone willreturn
define internal fastcc i32 @uart_channel_to_dma_channel(i32 noundef %0, i1 noundef zeroext %1) unnamed_addr #10 !dbg !4405 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !4409, metadata !DIExpression()), !dbg !4412
  call void @llvm.dbg.value(metadata i1 %1, metadata !4410, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !4412
  %3 = icmp eq i32 %0, 0, !dbg !4413
  %4 = select i1 %1, i32 15, i32 14, !dbg !4415
  %5 = select i1 %1, i32 17, i32 16, !dbg !4415
  %6 = select i1 %3, i32 %4, i32 %5, !dbg !4415
  call void @llvm.dbg.value(metadata i32 %6, metadata !4411, metadata !DIExpression()), !dbg !4412
  ret i32 %6, !dbg !4416
}

; Function Attrs: optsize
declare dso_local void @DMA_Vfifo_enable_interrupt(i32 noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize
define dso_local zeroext i8 @hal_uart_get_char(i32 noundef %0) local_unnamed_addr #0 !dbg !4417 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !4421, metadata !DIExpression()), !dbg !4423
  %2 = icmp eq i32 %0, 0, !dbg !4424
  %3 = icmp eq i32 %0, 1, !dbg !4424
  %4 = select i1 %3, i32 1, i32 2, !dbg !4424
  %5 = select i1 %2, i32 0, i32 %4, !dbg !4424
  call void @llvm.dbg.value(metadata i32 %5, metadata !4422, metadata !DIExpression()), !dbg !4423
  %6 = icmp ult i32 %5, 2, !dbg !4425
  br i1 %6, label %7, label %9, !dbg !4427

7:                                                ; preds = %1
  %8 = tail call zeroext i8 @uart_input_char(i32 noundef %5) #13, !dbg !4428
  br label %9, !dbg !4430

9:                                                ; preds = %1, %7
  %10 = phi i8 [ %8, %7 ], [ 0, %1 ], !dbg !4431
  ret i8 %10, !dbg !4432
}

; Function Attrs: noinline nounwind optsize
define dso_local i32 @hal_uart_get_char_unblocking(i32 noundef %0) local_unnamed_addr #0 !dbg !4433 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !4437, metadata !DIExpression()), !dbg !4439
  %2 = icmp eq i32 %0, 0, !dbg !4440
  %3 = icmp eq i32 %0, 1, !dbg !4440
  %4 = select i1 %3, i32 1, i32 2, !dbg !4440
  %5 = select i1 %2, i32 0, i32 %4, !dbg !4440
  call void @llvm.dbg.value(metadata i32 %5, metadata !4438, metadata !DIExpression()), !dbg !4439
  %6 = icmp ult i32 %5, 2, !dbg !4441
  br i1 %6, label %7, label %9, !dbg !4443

7:                                                ; preds = %1
  %8 = tail call i32 @uart_input_char_unblocking(i32 noundef %5) #13, !dbg !4444
  br label %9, !dbg !4446

9:                                                ; preds = %1, %7
  %10 = phi i32 [ %8, %7 ], [ 0, %1 ], !dbg !4447
  ret i32 %10, !dbg !4448
}

; Function Attrs: noinline nounwind optsize
define dso_local i32 @hal_uart_receive_polling(i32 noundef %0, i8* noundef writeonly %1, i32 noundef %2) local_unnamed_addr #0 !dbg !4449 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !4453, metadata !DIExpression()), !dbg !4458
  call void @llvm.dbg.value(metadata i8* %1, metadata !4454, metadata !DIExpression()), !dbg !4458
  call void @llvm.dbg.value(metadata i32 %2, metadata !4455, metadata !DIExpression()), !dbg !4458
  %4 = icmp eq i32 %0, 0, !dbg !4459
  %5 = icmp eq i32 %0, 1, !dbg !4459
  %6 = select i1 %5, i32 1, i32 2, !dbg !4459
  %7 = select i1 %4, i32 0, i32 %6, !dbg !4459
  call void @llvm.dbg.value(metadata i32 %7, metadata !4456, metadata !DIExpression()), !dbg !4458
  %8 = icmp eq i8* %1, null, !dbg !4460
  %9 = icmp ugt i32 %7, 1
  %10 = or i1 %8, %9, !dbg !4462
  %11 = icmp eq i32 %2, 0
  %12 = or i1 %10, %11, !dbg !4462
  call void @llvm.dbg.value(metadata i32 0, metadata !4457, metadata !DIExpression()), !dbg !4458
  br i1 %12, label %19, label %13, !dbg !4462

13:                                               ; preds = %3, %13
  %14 = phi i32 [ %17, %13 ], [ 0, %3 ]
  call void @llvm.dbg.value(metadata i32 %14, metadata !4457, metadata !DIExpression()), !dbg !4458
  %15 = tail call zeroext i8 @uart_input_char(i32 noundef %7) #13, !dbg !4463
  %16 = getelementptr inbounds i8, i8* %1, i32 %14, !dbg !4469
  store i8 %15, i8* %16, align 1, !dbg !4470
  %17 = add nuw i32 %14, 1, !dbg !4471
  call void @llvm.dbg.value(metadata i32 %17, metadata !4457, metadata !DIExpression()), !dbg !4458
  %18 = icmp eq i32 %17, %2, !dbg !4472
  br i1 %18, label %19, label %13, !dbg !4473, !llvm.loop !4474

19:                                               ; preds = %13, %3
  %20 = phi i32 [ 0, %3 ], [ %2, %13 ], !dbg !4458
  ret i32 %20, !dbg !4476
}

; Function Attrs: noinline nounwind optsize
define dso_local i32 @hal_uart_receive_dma(i32 noundef %0, i8* noundef %1, i32 noundef %2) local_unnamed_addr #0 !dbg !4477 {
  %4 = alloca i32, align 4
  call void @llvm.dbg.value(metadata i32 %0, metadata !4479, metadata !DIExpression()), !dbg !4485
  call void @llvm.dbg.value(metadata i8* %1, metadata !4480, metadata !DIExpression()), !dbg !4485
  call void @llvm.dbg.value(metadata i32 %2, metadata !4481, metadata !DIExpression()), !dbg !4485
  %5 = bitcast i32* %4 to i8*, !dbg !4486
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %5) #15, !dbg !4486
  %6 = tail call fastcc zeroext i1 @hal_uart_is_port_valid(i32 noundef %0) #14, !dbg !4487
  br i1 %6, label %7, label %20, !dbg !4489

7:                                                ; preds = %3
  %8 = icmp eq i8* %1, null, !dbg !4490
  %9 = icmp eq i32 %2, 0
  %10 = or i1 %8, %9, !dbg !4492
  br i1 %10, label %20, label %11, !dbg !4492

11:                                               ; preds = %7
  %12 = tail call fastcc i32 @hal_uart_translate_port(i32 noundef %0) #14, !dbg !4493, !range !4185
  call void @llvm.dbg.value(metadata i32* %4, metadata !4482, metadata !DIExpression(DW_OP_deref)), !dbg !4485
  call void @halUART_Get_VFIFO_Length(i32 noundef %12, i32 noundef 1, i32* noundef nonnull %4) #13, !dbg !4494
  %13 = load i32, i32* %4, align 4, !dbg !4495
  call void @llvm.dbg.value(metadata i32 %13, metadata !4482, metadata !DIExpression()), !dbg !4485
  %14 = icmp ult i32 %13, %2, !dbg !4497
  %15 = select i1 %14, i32 %13, i32 %2
  call void @llvm.dbg.value(metadata i32 %15, metadata !4483, metadata !DIExpression()), !dbg !4485
  call void @halUART_Read_VFIFO_Data(i32 noundef %12, i8* noundef nonnull %1, i32 noundef %15) #13, !dbg !4498
  %16 = load i32, i32* %4, align 4, !dbg !4499
  call void @llvm.dbg.value(metadata i32 %16, metadata !4482, metadata !DIExpression()), !dbg !4485
  %17 = icmp eq i32 %15, %16, !dbg !4501
  br i1 %17, label %18, label %20, !dbg !4502

18:                                               ; preds = %11
  %19 = call fastcc i32 @uart_channel_to_dma_channel(i32 noundef %12, i1 noundef zeroext true) #14, !dbg !4503, !range !4401
  call void @llvm.dbg.value(metadata i32 %19, metadata !4484, metadata !DIExpression()), !dbg !4485
  call void @DMA_Vfifo_enable_interrupt(i32 noundef %19) #13, !dbg !4505
  br label %20, !dbg !4506

20:                                               ; preds = %11, %18, %7, %3
  %21 = phi i32 [ 0, %3 ], [ 0, %7 ], [ %15, %18 ], [ %15, %11 ], !dbg !4485
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %5) #15, !dbg !4507
  ret i32 %21, !dbg !4507
}

; Function Attrs: noinline nounwind optsize
define dso_local i32 @hal_uart_get_available_send_space(i32 noundef %0) local_unnamed_addr #0 !dbg !4508 {
  %2 = alloca i32, align 4
  call void @llvm.dbg.value(metadata i32 %0, metadata !4510, metadata !DIExpression()), !dbg !4512
  %3 = bitcast i32* %2 to i8*, !dbg !4513
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %3) #15, !dbg !4513
  call void @llvm.dbg.value(metadata i32 0, metadata !4511, metadata !DIExpression()), !dbg !4512
  store i32 0, i32* %2, align 4, !dbg !4514
  %4 = tail call fastcc zeroext i1 @hal_uart_is_port_valid(i32 noundef %0) #14, !dbg !4515
  br i1 %4, label %5, label %8, !dbg !4517

5:                                                ; preds = %1
  %6 = tail call fastcc i32 @hal_uart_translate_port(i32 noundef %0) #14, !dbg !4518, !range !4185
  call void @llvm.dbg.value(metadata i32* %2, metadata !4511, metadata !DIExpression(DW_OP_deref)), !dbg !4512
  call void @halUART_Get_VFIFO_Length(i32 noundef %6, i32 noundef 0, i32* noundef nonnull %2) #13, !dbg !4519
  %7 = load i32, i32* %2, align 4, !dbg !4520
  call void @llvm.dbg.value(metadata i32 %7, metadata !4511, metadata !DIExpression()), !dbg !4512
  br label %8, !dbg !4521

8:                                                ; preds = %1, %5
  %9 = phi i32 [ %7, %5 ], [ 0, %1 ], !dbg !4512
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %3) #15, !dbg !4522
  ret i32 %9, !dbg !4522
}

; Function Attrs: noinline nounwind optsize
define dso_local i32 @hal_uart_get_available_receive_bytes(i32 noundef %0) local_unnamed_addr #0 !dbg !4523 {
  %2 = alloca i32, align 4
  call void @llvm.dbg.value(metadata i32 %0, metadata !4525, metadata !DIExpression()), !dbg !4527
  %3 = bitcast i32* %2 to i8*, !dbg !4528
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %3) #15, !dbg !4528
  call void @llvm.dbg.value(metadata i32 0, metadata !4526, metadata !DIExpression()), !dbg !4527
  store i32 0, i32* %2, align 4, !dbg !4529
  %4 = tail call fastcc zeroext i1 @hal_uart_is_port_valid(i32 noundef %0) #14, !dbg !4530
  br i1 %4, label %5, label %8, !dbg !4532

5:                                                ; preds = %1
  %6 = tail call fastcc i32 @hal_uart_translate_port(i32 noundef %0) #14, !dbg !4533, !range !4185
  call void @llvm.dbg.value(metadata i32* %2, metadata !4526, metadata !DIExpression(DW_OP_deref)), !dbg !4527
  call void @halUART_Get_VFIFO_Length(i32 noundef %6, i32 noundef 1, i32* noundef nonnull %2) #13, !dbg !4534
  %7 = load i32, i32* %2, align 4, !dbg !4535
  call void @llvm.dbg.value(metadata i32 %7, metadata !4526, metadata !DIExpression()), !dbg !4527
  br label %8, !dbg !4536

8:                                                ; preds = %1, %5
  %9 = phi i32 [ %7, %5 ], [ 0, %1 ], !dbg !4527
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %3) #15, !dbg !4537
  ret i32 %9, !dbg !4537
}

; Function Attrs: noinline nounwind optsize
define dso_local i32 @hal_uart_register_callback(i32 noundef %0, void (i32, i8*)* noundef %1, i8* noundef %2) local_unnamed_addr #0 !dbg !4538 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !4542, metadata !DIExpression()), !dbg !4546
  call void @llvm.dbg.value(metadata void (i32, i8*)* %1, metadata !4543, metadata !DIExpression()), !dbg !4546
  call void @llvm.dbg.value(metadata i8* %2, metadata !4544, metadata !DIExpression()), !dbg !4546
  %4 = tail call fastcc zeroext i1 @hal_uart_is_port_valid(i32 noundef %0) #14, !dbg !4547
  %5 = icmp ne void (i32, i8*)* %1, null
  %6 = and i1 %5, %4, !dbg !4549
  br i1 %6, label %7, label %18, !dbg !4549

7:                                                ; preds = %3
  %8 = getelementptr inbounds [2 x %struct.uart_context_t], [2 x %struct.uart_context_t]* @g_uart_context_table, i32 0, i32 %0, i32 3, i32 0, !dbg !4550
  store void (i32, i8*)* %1, void (i32, i8*)** %8, align 4, !dbg !4551
  %9 = getelementptr inbounds [2 x %struct.uart_context_t], [2 x %struct.uart_context_t]* @g_uart_context_table, i32 0, i32 %0, i32 3, i32 1, !dbg !4552
  store i8* %2, i8** %9, align 4, !dbg !4553
  %10 = getelementptr inbounds [2 x %struct.uart_context_t], [2 x %struct.uart_context_t]* @g_uart_context_table, i32 0, i32 %0, i32 2, !dbg !4554
  store i8 1, i8* %10, align 4, !dbg !4555
  %11 = tail call fastcc i32 @hal_uart_translate_port(i32 noundef %0) #14, !dbg !4556
  %12 = tail call fastcc void ()* @hal_uart_map_receive_callback(i32 noundef %0) #14, !dbg !4557
  tail call void @halUART_VDMA_Rx_Register_Callback(i32 noundef %11, void ()* noundef %12) #13, !dbg !4558
  tail call void @halUART_VDMA_Rx_Register_TO_Callback(i32 noundef %11, void ()* noundef %12) #13, !dbg !4559
  %13 = icmp eq i32 %11, 0, !dbg !4560
  br i1 %13, label %14, label %15, !dbg !4562

14:                                               ; preds = %7
  tail call void @DMA_Vfifo_Register_Callback(i32 noundef 14, void ()* noundef nonnull @hal_uart_send_callback0) #13, !dbg !4563
  br label %16, !dbg !4565

15:                                               ; preds = %7
  tail call void @DMA_Vfifo_Register_Callback(i32 noundef 16, void ()* noundef nonnull @hal_uart_send_callback1) #13, !dbg !4566
  br label %16

16:                                               ; preds = %15, %14
  %17 = tail call fastcc i32 @uart_channel_to_dma_channel(i32 noundef %11, i1 noundef zeroext false) #14, !dbg !4568, !range !4401
  call void @llvm.dbg.value(metadata i32 %17, metadata !4545, metadata !DIExpression()), !dbg !4546
  tail call void @DMA_Vfifo_enable_interrupt(i32 noundef %17) #13, !dbg !4569
  br label %18, !dbg !4570

18:                                               ; preds = %3, %16
  %19 = phi i32 [ 0, %16 ], [ -4, %3 ], !dbg !4546
  ret i32 %19, !dbg !4571
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize readnone willreturn
define internal fastcc void ()* @hal_uart_map_receive_callback(i32 noundef %0) unnamed_addr #10 !dbg !356 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !362, metadata !DIExpression()), !dbg !4572
  %2 = getelementptr inbounds [2 x void ()*], [2 x void ()*]* @hal_uart_map_receive_callback.func_tbl, i32 0, i32 %0, !dbg !4573
  %3 = load void ()*, void ()** %2, align 4, !dbg !4573
  ret void ()* %3, !dbg !4574
}

; Function Attrs: noinline nounwind optsize
define internal void @hal_uart_send_callback0() #0 !dbg !4575 {
  %1 = load i8, i8* getelementptr inbounds ([2 x %struct.uart_context_t], [2 x %struct.uart_context_t]* @g_uart_context_table, i32 0, i32 0, i32 2), align 4, !dbg !4581, !range !3864
  %2 = icmp eq i8 %1, 0, !dbg !4581
  br i1 %2, label %8, label %3, !dbg !4582

3:                                                ; preds = %0
  %4 = load void (i32, i8*)*, void (i32, i8*)** getelementptr inbounds ([2 x %struct.uart_context_t], [2 x %struct.uart_context_t]* @g_uart_context_table, i32 0, i32 0, i32 3, i32 0), align 4, !dbg !4583
  %5 = icmp eq void (i32, i8*)* %4, null, !dbg !4585
  br i1 %5, label %8, label %6, !dbg !4586

6:                                                ; preds = %3
  %7 = load i8*, i8** getelementptr inbounds ([2 x %struct.uart_context_t], [2 x %struct.uart_context_t]* @g_uart_context_table, i32 0, i32 0, i32 3, i32 1), align 4, !dbg !4587
  tail call void %4(i32 noundef 2, i8* noundef %7) #13, !dbg !4589
  br label %8, !dbg !4590

8:                                                ; preds = %3, %6, %0
  %9 = tail call fastcc i32 @hal_uart_translate_port(i32 noundef 0) #14, !dbg !4591, !range !4185
  tail call fastcc void @hal_uart_check_irq_disable(i32 noundef %9, i1 noundef zeroext false) #14, !dbg !4592
  ret void, !dbg !4593
}

; Function Attrs: noinline nounwind optsize
define internal void @hal_uart_send_callback1() #0 !dbg !4594 {
  %1 = load i8, i8* getelementptr inbounds ([2 x %struct.uart_context_t], [2 x %struct.uart_context_t]* @g_uart_context_table, i32 0, i32 1, i32 2), align 4, !dbg !4599, !range !3864
  %2 = icmp eq i8 %1, 0, !dbg !4599
  br i1 %2, label %8, label %3, !dbg !4600

3:                                                ; preds = %0
  %4 = load void (i32, i8*)*, void (i32, i8*)** getelementptr inbounds ([2 x %struct.uart_context_t], [2 x %struct.uart_context_t]* @g_uart_context_table, i32 0, i32 1, i32 3, i32 0), align 4, !dbg !4601
  %5 = icmp eq void (i32, i8*)* %4, null, !dbg !4603
  br i1 %5, label %8, label %6, !dbg !4604

6:                                                ; preds = %3
  %7 = load i8*, i8** getelementptr inbounds ([2 x %struct.uart_context_t], [2 x %struct.uart_context_t]* @g_uart_context_table, i32 0, i32 1, i32 3, i32 1), align 4, !dbg !4605
  tail call void %4(i32 noundef 2, i8* noundef %7) #13, !dbg !4607
  br label %8, !dbg !4608

8:                                                ; preds = %3, %6, %0
  %9 = tail call fastcc i32 @hal_uart_translate_port(i32 noundef 1) #14, !dbg !4609, !range !4185
  tail call fastcc void @hal_uart_check_irq_disable(i32 noundef %9, i1 noundef zeroext false) #14, !dbg !4610
  ret void, !dbg !4611
}

; Function Attrs: noinline nounwind optsize
define internal fastcc void @hal_uart_check_irq_disable(i32 noundef %0, i1 noundef zeroext %1) unnamed_addr #0 !dbg !4612 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  call void @llvm.dbg.value(metadata i32 %0, metadata !4616, metadata !DIExpression()), !dbg !4623
  call void @llvm.dbg.value(metadata i1 %1, metadata !4617, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !4623
  %5 = bitcast i32* %3 to i8*, !dbg !4624
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %5) #15, !dbg !4624
  %6 = bitcast i32* %4 to i8*, !dbg !4624
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %6) #15, !dbg !4624
  call void @llvm.dbg.value(metadata !DIArgList([2 x %struct.uart_context_t]* @g_uart_context_table, i32 %0), metadata !4620, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_constu, 64, DW_OP_mul, DW_OP_plus, DW_OP_plus_uconst, 36, DW_OP_stack_value)), !dbg !4623
  br i1 %1, label %7, label %12, !dbg !4625

7:                                                ; preds = %2
  call void @llvm.dbg.value(metadata !DIArgList([2 x %struct.uart_context_t]* @g_uart_context_table, i32 %0), metadata !4620, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_constu, 64, DW_OP_mul, DW_OP_plus, DW_OP_plus_uconst, 36, DW_OP_stack_value)), !dbg !4623
  call void @llvm.dbg.value(metadata i32* %3, metadata !4618, metadata !DIExpression(DW_OP_deref)), !dbg !4623
  call void @halUART_Get_VFIFO_Length(i32 noundef %0, i32 noundef 1, i32* noundef nonnull %3) #13, !dbg !4626
  %8 = load i32, i32* %3, align 4, !dbg !4629
  call void @llvm.dbg.value(metadata i32 %8, metadata !4618, metadata !DIExpression()), !dbg !4623
  %9 = getelementptr inbounds [2 x %struct.uart_context_t], [2 x %struct.uart_context_t]* @g_uart_context_table, i32 0, i32 %0, i32 5, i32 5, !dbg !4631
  %10 = load i32, i32* %9, align 4, !dbg !4631
  %11 = icmp ult i32 %8, %10, !dbg !4632
  br i1 %11, label %22, label %20, !dbg !4633

12:                                               ; preds = %2
  call void @llvm.dbg.value(metadata i32* %4, metadata !4619, metadata !DIExpression(DW_OP_deref)), !dbg !4623
  call void @halUART_Get_VFIFO_Length(i32 noundef %0, i32 noundef 0, i32* noundef nonnull %4) #13, !dbg !4634
  %13 = load i32, i32* %4, align 4, !dbg !4636
  call void @llvm.dbg.value(metadata i32 %13, metadata !4619, metadata !DIExpression()), !dbg !4623
  %14 = getelementptr inbounds [2 x %struct.uart_context_t], [2 x %struct.uart_context_t]* @g_uart_context_table, i32 0, i32 %0, i32 5, i32 1, !dbg !4638
  %15 = load i32, i32* %14, align 4, !dbg !4638
  %16 = getelementptr inbounds [2 x %struct.uart_context_t], [2 x %struct.uart_context_t]* @g_uart_context_table, i32 0, i32 %0, i32 5, i32 2, !dbg !4639
  %17 = load i32, i32* %16, align 4, !dbg !4639
  %18 = sub i32 %15, %17, !dbg !4640
  %19 = icmp ult i32 %13, %18, !dbg !4641
  br i1 %19, label %22, label %20, !dbg !4642

20:                                               ; preds = %12, %7
  %21 = call fastcc i32 @uart_channel_to_dma_channel(i32 noundef %0, i1 noundef zeroext %1) #14, !dbg !4643, !range !4401
  call void @DMA_Vfifo_disable_interrupt(i32 noundef %21) #13, !dbg !4643
  br label %22, !dbg !4644

22:                                               ; preds = %20, %12, %7
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %6) #15, !dbg !4644
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %5) #15, !dbg !4644
  ret void, !dbg !4644
}

; Function Attrs: optsize
declare dso_local void @DMA_Vfifo_disable_interrupt(i32 noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize
define internal void @hal_uart_receive_callback0() #0 !dbg !4645 {
  %1 = load i8, i8* getelementptr inbounds ([2 x %struct.uart_context_t], [2 x %struct.uart_context_t]* @g_uart_context_table, i32 0, i32 0, i32 2), align 4, !dbg !4650, !range !3864
  %2 = icmp eq i8 %1, 0, !dbg !4650
  br i1 %2, label %11, label %3, !dbg !4651

3:                                                ; preds = %0
  %4 = tail call i32 @hal_uart_get_available_receive_bytes(i32 noundef 0) #14, !dbg !4652
  %5 = icmp eq i32 %4, 0, !dbg !4653
  br i1 %5, label %11, label %6, !dbg !4654

6:                                                ; preds = %3
  %7 = load void (i32, i8*)*, void (i32, i8*)** getelementptr inbounds ([2 x %struct.uart_context_t], [2 x %struct.uart_context_t]* @g_uart_context_table, i32 0, i32 0, i32 3, i32 0), align 4, !dbg !4655
  %8 = icmp eq void (i32, i8*)* %7, null, !dbg !4657
  br i1 %8, label %11, label %9, !dbg !4658

9:                                                ; preds = %6
  %10 = load i8*, i8** getelementptr inbounds ([2 x %struct.uart_context_t], [2 x %struct.uart_context_t]* @g_uart_context_table, i32 0, i32 0, i32 3, i32 1), align 4, !dbg !4659
  tail call void %7(i32 noundef 1, i8* noundef %10) #13, !dbg !4661
  br label %11, !dbg !4662

11:                                               ; preds = %6, %9, %3, %0
  %12 = tail call fastcc i32 @hal_uart_translate_port(i32 noundef 0) #14, !dbg !4663, !range !4185
  tail call fastcc void @hal_uart_check_irq_disable(i32 noundef %12, i1 noundef zeroext true) #14, !dbg !4664
  ret void, !dbg !4665
}

; Function Attrs: noinline nounwind optsize
define internal void @hal_uart_receive_callback1() #0 !dbg !4666 {
  %1 = load i8, i8* getelementptr inbounds ([2 x %struct.uart_context_t], [2 x %struct.uart_context_t]* @g_uart_context_table, i32 0, i32 1, i32 2), align 4, !dbg !4671, !range !3864
  %2 = icmp eq i8 %1, 0, !dbg !4671
  br i1 %2, label %11, label %3, !dbg !4672

3:                                                ; preds = %0
  %4 = tail call i32 @hal_uart_get_available_receive_bytes(i32 noundef 1) #14, !dbg !4673
  %5 = icmp eq i32 %4, 0, !dbg !4674
  br i1 %5, label %11, label %6, !dbg !4675

6:                                                ; preds = %3
  %7 = load void (i32, i8*)*, void (i32, i8*)** getelementptr inbounds ([2 x %struct.uart_context_t], [2 x %struct.uart_context_t]* @g_uart_context_table, i32 0, i32 1, i32 3, i32 0), align 4, !dbg !4676
  %8 = icmp eq void (i32, i8*)* %7, null, !dbg !4678
  br i1 %8, label %11, label %9, !dbg !4679

9:                                                ; preds = %6
  %10 = load i8*, i8** getelementptr inbounds ([2 x %struct.uart_context_t], [2 x %struct.uart_context_t]* @g_uart_context_table, i32 0, i32 1, i32 3, i32 1), align 4, !dbg !4680
  tail call void %7(i32 noundef 1, i8* noundef %10) #13, !dbg !4682
  br label %11, !dbg !4683

11:                                               ; preds = %6, %9, %3, %0
  %12 = tail call fastcc i32 @hal_uart_translate_port(i32 noundef 1) #14, !dbg !4684, !range !4185
  tail call fastcc void @hal_uart_check_irq_disable(i32 noundef %12, i1 noundef zeroext true) #14, !dbg !4685
  ret void, !dbg !4686
}

; Function Attrs: noinline nounwind optsize
define dso_local i32 @hal_uart_set_baudrate(i32 noundef %0, i32 noundef %1) local_unnamed_addr #0 !dbg !4687 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !4691, metadata !DIExpression()), !dbg !4693
  call void @llvm.dbg.value(metadata i32 %1, metadata !4692, metadata !DIExpression()), !dbg !4693
  %3 = tail call fastcc zeroext i1 @hal_uart_is_port_valid(i32 noundef %0) #14, !dbg !4694
  %4 = icmp ult i32 %1, 13
  %5 = and i1 %4, %3, !dbg !4696
  br i1 %5, label %6, label %10, !dbg !4696

6:                                                ; preds = %2
  %7 = getelementptr inbounds [2 x %struct.uart_context_t], [2 x %struct.uart_context_t]* @g_uart_context_table, i32 0, i32 %0, i32 1, !dbg !4697
  %8 = getelementptr inbounds %struct.hal_uart_config_t, %struct.hal_uart_config_t* %7, i32 0, i32 0, !dbg !4698
  store i32 %1, i32* %8, align 4, !dbg !4699
  %9 = tail call i32 @hal_uart_set_format(i32 noundef %0, %struct.hal_uart_config_t* noundef nonnull %7) #14, !dbg !4700
  br label %10, !dbg !4701

10:                                               ; preds = %2, %6
  %11 = phi i32 [ %9, %6 ], [ -4, %2 ], !dbg !4693
  ret i32 %11, !dbg !4702
}

; Function Attrs: noinline nounwind optsize
define dso_local i32 @hal_uart_set_dma(i32 noundef %0, %struct.hal_uart_dma_config_t* noundef %1) local_unnamed_addr #0 !dbg !4703 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !4709, metadata !DIExpression()), !dbg !4711
  call void @llvm.dbg.value(metadata %struct.hal_uart_dma_config_t* %1, metadata !4710, metadata !DIExpression()), !dbg !4711
  %3 = tail call fastcc zeroext i1 @hal_uart_is_port_valid(i32 noundef %0) #14, !dbg !4712
  br i1 %3, label %4, label %28, !dbg !4714

4:                                                ; preds = %2
  %5 = tail call fastcc zeroext i1 @hal_uart_is_dma_config_valid(%struct.hal_uart_dma_config_t* noundef %1) #14, !dbg !4715
  br i1 %5, label %6, label %28, !dbg !4717

6:                                                ; preds = %4
  %7 = getelementptr inbounds [2 x %struct.uart_context_t], [2 x %struct.uart_context_t]* @g_uart_context_table, i32 0, i32 %0, i32 4, !dbg !4718
  store i8 1, i8* %7, align 4, !dbg !4719
  %8 = getelementptr inbounds [2 x %struct.uart_context_t], [2 x %struct.uart_context_t]* @g_uart_context_table, i32 0, i32 %0, i32 5, !dbg !4720
  %9 = bitcast %struct.hal_uart_dma_config_t* %8 to i8*, !dbg !4721
  %10 = bitcast %struct.hal_uart_dma_config_t* %1 to i8*, !dbg !4722
  %11 = tail call i8* @memcpy(i8* noundef nonnull %9, i8* noundef %10, i32 noundef 28) #13, !dbg !4723
  tail call void @DMA_Init() #13, !dbg !4724
  tail call void @DMA_Vfifo_init() #13, !dbg !4725
  %12 = tail call fastcc i32 @hal_uart_translate_port(i32 noundef %0) #14, !dbg !4726
  %13 = getelementptr inbounds %struct.hal_uart_dma_config_t, %struct.hal_uart_dma_config_t* %1, i32 0, i32 3, !dbg !4727
  %14 = load i8*, i8** %13, align 4, !dbg !4727
  %15 = getelementptr inbounds %struct.hal_uart_dma_config_t, %struct.hal_uart_dma_config_t* %1, i32 0, i32 4, !dbg !4728
  %16 = load i32, i32* %15, align 4, !dbg !4728
  %17 = getelementptr inbounds %struct.hal_uart_dma_config_t, %struct.hal_uart_dma_config_t* %1, i32 0, i32 6, !dbg !4729
  %18 = load i32, i32* %17, align 4, !dbg !4729
  %19 = getelementptr inbounds %struct.hal_uart_dma_config_t, %struct.hal_uart_dma_config_t* %1, i32 0, i32 5, !dbg !4730
  %20 = load i32, i32* %19, align 4, !dbg !4730
  %21 = tail call fastcc i32 @hal_uart_translate_timeout(i32 noundef 5000) #14, !dbg !4731
  tail call void @halUART_Rx_VFIFO_Initialize(i32 noundef %12, i8* noundef %14, i32 noundef %16, i32 noundef %18, i32 noundef %20, i32 noundef %21) #13, !dbg !4732
  %22 = getelementptr inbounds %struct.hal_uart_dma_config_t, %struct.hal_uart_dma_config_t* %1, i32 0, i32 0, !dbg !4733
  %23 = load i8*, i8** %22, align 4, !dbg !4733
  %24 = getelementptr inbounds %struct.hal_uart_dma_config_t, %struct.hal_uart_dma_config_t* %1, i32 0, i32 1, !dbg !4734
  %25 = load i32, i32* %24, align 4, !dbg !4734
  %26 = getelementptr inbounds %struct.hal_uart_dma_config_t, %struct.hal_uart_dma_config_t* %1, i32 0, i32 2, !dbg !4735
  %27 = load i32, i32* %26, align 4, !dbg !4735
  tail call void @halUART_Tx_VFIFO_Initialize(i32 noundef %12, i8* noundef %23, i32 noundef %25, i32 noundef %27) #13, !dbg !4736
  br label %28, !dbg !4737

28:                                               ; preds = %4, %2, %6
  %29 = phi i32 [ 0, %6 ], [ -4, %2 ], [ -4, %4 ], !dbg !4711
  ret i32 %29, !dbg !4738
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize readonly willreturn
define internal fastcc zeroext i1 @hal_uart_is_dma_config_valid(%struct.hal_uart_dma_config_t* noundef readonly %0) unnamed_addr #7 !dbg !4739 {
  call void @llvm.dbg.value(metadata %struct.hal_uart_dma_config_t* %0, metadata !4743, metadata !DIExpression()), !dbg !4744
  %2 = icmp eq %struct.hal_uart_dma_config_t* %0, null, !dbg !4745
  br i1 %2, label %27, label %3, !dbg !4747

3:                                                ; preds = %1
  %4 = getelementptr inbounds %struct.hal_uart_dma_config_t, %struct.hal_uart_dma_config_t* %0, i32 0, i32 3, !dbg !4748
  %5 = load i8*, i8** %4, align 4, !dbg !4748
  %6 = icmp eq i8* %5, null, !dbg !4750
  br i1 %6, label %27, label %7, !dbg !4751

7:                                                ; preds = %3
  %8 = getelementptr inbounds %struct.hal_uart_dma_config_t, %struct.hal_uart_dma_config_t* %0, i32 0, i32 4, !dbg !4752
  %9 = load i32, i32* %8, align 4, !dbg !4752
  %10 = getelementptr inbounds %struct.hal_uart_dma_config_t, %struct.hal_uart_dma_config_t* %0, i32 0, i32 5, !dbg !4754
  %11 = load i32, i32* %10, align 4, !dbg !4754
  %12 = icmp ult i32 %9, %11, !dbg !4755
  br i1 %12, label %27, label %13, !dbg !4756

13:                                               ; preds = %7
  %14 = getelementptr inbounds %struct.hal_uart_dma_config_t, %struct.hal_uart_dma_config_t* %0, i32 0, i32 6, !dbg !4757
  %15 = load i32, i32* %14, align 4, !dbg !4757
  %16 = icmp ult i32 %9, %15, !dbg !4759
  br i1 %16, label %27, label %17, !dbg !4760

17:                                               ; preds = %13
  %18 = getelementptr inbounds %struct.hal_uart_dma_config_t, %struct.hal_uart_dma_config_t* %0, i32 0, i32 0, !dbg !4761
  %19 = load i8*, i8** %18, align 4, !dbg !4761
  %20 = icmp eq i8* %19, null, !dbg !4763
  br i1 %20, label %27, label %21, !dbg !4764

21:                                               ; preds = %17
  %22 = getelementptr inbounds %struct.hal_uart_dma_config_t, %struct.hal_uart_dma_config_t* %0, i32 0, i32 1, !dbg !4765
  %23 = load i32, i32* %22, align 4, !dbg !4765
  %24 = getelementptr inbounds %struct.hal_uart_dma_config_t, %struct.hal_uart_dma_config_t* %0, i32 0, i32 2, !dbg !4767
  %25 = load i32, i32* %24, align 4, !dbg !4767
  %26 = icmp uge i32 %23, %25, !dbg !4768
  br label %27, !dbg !4769

27:                                               ; preds = %21, %17, %13, %7, %3, %1
  %28 = phi i1 [ false, %1 ], [ false, %3 ], [ false, %7 ], [ false, %13 ], [ false, %17 ], [ %26, %21 ], !dbg !4744
  ret i1 %28, !dbg !4770
}

; Function Attrs: optsize
declare dso_local void @DMA_Init() local_unnamed_addr #2

; Function Attrs: optsize
declare dso_local void @DMA_Vfifo_init() local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize
define internal fastcc i32 @hal_uart_translate_timeout(i32 noundef %0) unnamed_addr #0 !dbg !4771 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !4773, metadata !DIExpression()), !dbg !4775
  %2 = tail call i32 @top_mcu_freq_get() #13, !dbg !4776
  %3 = udiv i32 %2, 1000000, !dbg !4777
  call void @llvm.dbg.value(metadata i32 %3, metadata !4774, metadata !DIExpression()), !dbg !4775
  %4 = mul i32 %3, %0, !dbg !4778
  ret i32 %4, !dbg !4779
}

; Function Attrs: noinline nounwind optsize
define dso_local i32 @hal_uart_set_hardware_flowcontrol(i32 noundef %0) local_unnamed_addr #0 !dbg !4780 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !4782, metadata !DIExpression()), !dbg !4784
  %2 = tail call fastcc zeroext i1 @hal_uart_is_port_valid(i32 noundef %0) #14, !dbg !4785
  br i1 %2, label %3, label %8, !dbg !4787

3:                                                ; preds = %1
  %4 = icmp eq i32 %0, 0, !dbg !4788
  %5 = icmp eq i32 %0, 1, !dbg !4788
  %6 = select i1 %5, i32 1, i32 2, !dbg !4788
  %7 = select i1 %4, i32 0, i32 %6, !dbg !4788
  call void @llvm.dbg.value(metadata i32 %7, metadata !4783, metadata !DIExpression()), !dbg !4784
  tail call void @uart_set_hardware_flowcontrol(i32 noundef %7) #13, !dbg !4789
  br label %8, !dbg !4790

8:                                                ; preds = %1, %3
  %9 = phi i32 [ 0, %3 ], [ -4, %1 ], !dbg !4784
  ret i32 %9, !dbg !4791
}

; Function Attrs: noinline nounwind optsize
define dso_local i32 @hal_uart_set_software_flowcontrol(i32 noundef %0, i8 noundef zeroext %1, i8 noundef zeroext %2, i8 noundef zeroext %3) local_unnamed_addr #0 !dbg !4792 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !4796, metadata !DIExpression()), !dbg !4801
  call void @llvm.dbg.value(metadata i8 %1, metadata !4797, metadata !DIExpression()), !dbg !4801
  call void @llvm.dbg.value(metadata i8 %2, metadata !4798, metadata !DIExpression()), !dbg !4801
  call void @llvm.dbg.value(metadata i8 %3, metadata !4799, metadata !DIExpression()), !dbg !4801
  %5 = tail call fastcc zeroext i1 @hal_uart_is_port_valid(i32 noundef %0) #14, !dbg !4802
  br i1 %5, label %6, label %11, !dbg !4804

6:                                                ; preds = %4
  %7 = icmp eq i32 %0, 0, !dbg !4805
  %8 = icmp eq i32 %0, 1, !dbg !4805
  %9 = select i1 %8, i32 1, i32 2, !dbg !4805
  %10 = select i1 %7, i32 0, i32 %9, !dbg !4805
  call void @llvm.dbg.value(metadata i32 %10, metadata !4800, metadata !DIExpression()), !dbg !4801
  tail call void @uart_set_software_flowcontrol(i32 noundef %10, i8 noundef zeroext %1, i8 noundef zeroext %2, i8 noundef zeroext %3) #13, !dbg !4806
  br label %11, !dbg !4807

11:                                               ; preds = %4, %6
  %12 = phi i32 [ 0, %6 ], [ -4, %4 ], !dbg !4801
  ret i32 %12, !dbg !4808
}

; Function Attrs: noinline nounwind optsize
define dso_local i32 @hal_uart_disable_flowcontrol(i32 noundef %0) local_unnamed_addr #0 !dbg !4809 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !4811, metadata !DIExpression()), !dbg !4813
  %2 = tail call fastcc zeroext i1 @hal_uart_is_port_valid(i32 noundef %0) #14, !dbg !4814
  br i1 %2, label %3, label %8, !dbg !4816

3:                                                ; preds = %1
  %4 = icmp eq i32 %0, 0, !dbg !4817
  %5 = icmp eq i32 %0, 1, !dbg !4817
  %6 = select i1 %5, i32 1, i32 2, !dbg !4817
  %7 = select i1 %4, i32 0, i32 %6, !dbg !4817
  call void @llvm.dbg.value(metadata i32 %7, metadata !4812, metadata !DIExpression()), !dbg !4813
  tail call void @uart_disable_flowcontrol(i32 noundef %7) #13, !dbg !4818
  br label %8, !dbg !4819

8:                                                ; preds = %1, %3
  %9 = phi i32 [ 0, %3 ], [ -4, %1 ], !dbg !4813
  ret i32 %9, !dbg !4820
}

; Function Attrs: noinline nounwind optsize
define dso_local i32 @hal_uart_set_dma_timeout(i32 noundef %0, i32 noundef %1) local_unnamed_addr #0 !dbg !4821 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !4825, metadata !DIExpression()), !dbg !4827
  call void @llvm.dbg.value(metadata i32 %1, metadata !4826, metadata !DIExpression()), !dbg !4827
  %3 = tail call fastcc zeroext i1 @hal_uart_is_port_valid(i32 noundef %0) #14, !dbg !4828
  br i1 %3, label %4, label %8, !dbg !4830

4:                                                ; preds = %2
  %5 = icmp eq i32 %0, 0, !dbg !4831
  %6 = tail call fastcc i32 @hal_uart_translate_timeout(i32 noundef %1) #14, !dbg !4833
  %7 = select i1 %5, i32 15, i32 17
  tail call void @DMA_Vfifo_Set_timeout(i32 noundef %7, i32 noundef %6) #13, !dbg !4833
  br label %8, !dbg !4834

8:                                                ; preds = %4, %2
  %9 = phi i32 [ -4, %2 ], [ 0, %4 ], !dbg !4827
  ret i32 %9, !dbg !4834
}

; Function Attrs: optsize
declare dso_local void @DMA_Vfifo_Set_timeout(i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize
define dso_local i32 @hal_wdt_init(%struct.hal_wdt_config_t* noundef readonly %0) local_unnamed_addr #0 !dbg !4835 {
  call void @llvm.dbg.value(metadata %struct.hal_wdt_config_t* %0, metadata !4846, metadata !DIExpression()), !dbg !4847
  %2 = icmp eq %struct.hal_wdt_config_t* %0, null, !dbg !4848
  br i1 %2, label %15, label %3, !dbg !4850

3:                                                ; preds = %1
  %4 = getelementptr inbounds %struct.hal_wdt_config_t, %struct.hal_wdt_config_t* %0, i32 0, i32 0, !dbg !4851
  %5 = load i32, i32* %4, align 4, !dbg !4851
  %6 = icmp ult i32 %5, 2, !dbg !4853
  br i1 %6, label %7, label %15, !dbg !4853

7:                                                ; preds = %3
  store i32 %5, i32* @s_hal_mode, align 4, !dbg !4854
  %8 = trunc i32 %5 to i8, !dbg !4855
  tail call void @halWDTConfig(i8 noundef zeroext %8, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 1) #13, !dbg !4856
  %9 = getelementptr inbounds %struct.hal_wdt_config_t, %struct.hal_wdt_config_t* %0, i32 0, i32 1, !dbg !4857
  %10 = load i32, i32* %9, align 4, !dbg !4857
  %11 = mul i32 %10, 1000, !dbg !4858
  %12 = lshr i32 %11, 5, !dbg !4859
  %13 = trunc i32 %12 to i16, !dbg !4860
  %14 = add i16 %13, -1, !dbg !4860
  tail call void @halWDTSetTimeout(i16 noundef zeroext %14) #13, !dbg !4861
  br label %15, !dbg !4862

15:                                               ; preds = %3, %1, %7
  %16 = phi i32 [ 0, %7 ], [ -2, %1 ], [ -2, %3 ], !dbg !4847
  ret i32 %16, !dbg !4863
}

; Function Attrs: noinline nounwind optsize
define dso_local i32 @hal_wdt_deinit() local_unnamed_addr #0 !dbg !4864 {
  tail call void @halWDTEnable(i8 noundef zeroext 0) #13, !dbg !4867
  store i1 false, i1* @s_hal_enable, align 1, !dbg !4868
  ret i32 0, !dbg !4869
}

; Function Attrs: noinline nounwind optsize
define dso_local i32 @hal_wdt_enable(i32 noundef %0) local_unnamed_addr #0 !dbg !4870 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !4874, metadata !DIExpression()), !dbg !4875
  %2 = icmp eq i32 %0, -889275714, !dbg !4876
  br i1 %2, label %3, label %4, !dbg !4878

3:                                                ; preds = %1
  store i1 true, i1* @s_hal_enable, align 1, !dbg !4879
  tail call void @halWDTEnable(i8 noundef zeroext 1) #13, !dbg !4880
  br label %4, !dbg !4881

4:                                                ; preds = %1, %3
  %5 = phi i32 [ 0, %3 ], [ -1, %1 ], !dbg !4875
  ret i32 %5, !dbg !4882
}

; Function Attrs: noinline nounwind optsize
define dso_local i32 @hal_wdt_disable(i32 noundef %0) local_unnamed_addr #0 !dbg !4883 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !4885, metadata !DIExpression()), !dbg !4886
  %2 = icmp eq i32 %0, -889323419, !dbg !4887
  br i1 %2, label %3, label %4, !dbg !4889

3:                                                ; preds = %1
  store i1 false, i1* @s_hal_enable, align 1, !dbg !4890
  tail call void @halWDTEnable(i8 noundef zeroext 0) #13, !dbg !4891
  br label %4, !dbg !4892

4:                                                ; preds = %1, %3
  %5 = phi i32 [ 0, %3 ], [ -1, %1 ], !dbg !4886
  ret i32 %5, !dbg !4893
}

; Function Attrs: noinline nounwind optsize
define dso_local i32 @hal_wdt_feed(i32 noundef %0) local_unnamed_addr #0 !dbg !4894 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !4896, metadata !DIExpression()), !dbg !4897
  %2 = icmp eq i32 %0, -559035650, !dbg !4898
  br i1 %2, label %3, label %5, !dbg !4900

3:                                                ; preds = %1
  tail call void @halWDTRestart() #13, !dbg !4901
  %4 = tail call i32 @hal_gpt_delay_us(i32 noundef 123) #13, !dbg !4902
  br label %5, !dbg !4903

5:                                                ; preds = %1, %3
  %6 = phi i32 [ 0, %3 ], [ -1, %1 ], !dbg !4897
  ret i32 %6, !dbg !4904
}

; Function Attrs: noinline nounwind optsize
define dso_local void (i32)* @hal_wdt_register_callback(void (i32)* noundef %0) local_unnamed_addr #0 !dbg !4905 {
  call void @llvm.dbg.value(metadata void (i32)* %0, metadata !4910, metadata !DIExpression()), !dbg !4912
  %2 = load void (i32)*, void (i32)** @s_hal_wdt_callback, align 4, !dbg !4913
  call void @llvm.dbg.value(metadata void (i32)* %2, metadata !4911, metadata !DIExpression()), !dbg !4912
  store void (i32)* %0, void (i32)** @s_hal_wdt_callback, align 4, !dbg !4914
  %3 = tail call i32 @hal_nvic_register_isr_handler(i32 noundef 10, void (i32)* noundef nonnull @hal_wdt_isr) #13, !dbg !4915
  %4 = tail call i32 @hal_nvic_set_priority(i32 noundef 10, i32 noundef 5) #13, !dbg !4916
  %5 = tail call i32 @hal_nvic_enable_irq(i32 noundef 10) #13, !dbg !4917
  ret void (i32)* %2, !dbg !4918
}

; Function Attrs: noinline nounwind optsize
define internal void @hal_wdt_isr(i32 noundef %0) #0 !dbg !4919 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !4921, metadata !DIExpression()), !dbg !4922
  %2 = load void (i32)*, void (i32)** @s_hal_wdt_callback, align 4, !dbg !4923
  %3 = icmp eq void (i32)* %2, null, !dbg !4923
  br i1 %3, label %5, label %4, !dbg !4925

4:                                                ; preds = %1
  tail call void %2(i32 noundef 0) #13, !dbg !4926
  br label %5, !dbg !4928

5:                                                ; preds = %4, %1
  ret void, !dbg !4929
}

; Function Attrs: noinline nounwind optsize
define dso_local i32 @hal_wdt_software_reset() local_unnamed_addr #0 !dbg !4930 {
  tail call void @halWDTSoftwareReset() #13, !dbg !4931
  ret i32 0, !dbg !4932
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize readonly willreturn
define dso_local zeroext i1 @hal_wdt_get_enable_status() local_unnamed_addr #7 !dbg !4933 {
  %1 = load i1, i1* @s_hal_enable, align 1, !dbg !4936
  ret i1 %1, !dbg !4937
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize readonly willreturn
define dso_local i32 @hal_wdt_get_mode() local_unnamed_addr #7 !dbg !4938 {
  %1 = load i32, i32* @s_hal_mode, align 4, !dbg !4941
  ret i32 %1, !dbg !4942
}

; Function Attrs: noinline nounwind optsize
define dso_local i32 @hal_wdt_get_reset_status() local_unnamed_addr #0 !dbg !4943 {
  %1 = tail call i32 @halWDTReadInterruptStatus() #13, !dbg !4948
  call void @llvm.dbg.value(metadata i32 %1, metadata !4947, metadata !DIExpression()), !dbg !4949
  %2 = and i32 %1, 32768, !dbg !4950
  %3 = icmp eq i32 %2, 0, !dbg !4952
  %4 = and i32 %1, 16384, !dbg !4953
  %5 = icmp eq i32 %4, 0, !dbg !4953
  %6 = select i1 %5, i32 2, i32 1, !dbg !4953
  %7 = select i1 %3, i32 %6, i32 0, !dbg !4953
  ret i32 %7, !dbg !4954
}

; Function Attrs: noinline nounwind optsize
define dso_local i32 @__io_putchar(i32 noundef returned %0) local_unnamed_addr #0 !dbg !4955 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !4959, metadata !DIExpression()), !dbg !4960
  %2 = trunc i32 %0 to i8, !dbg !4961
  tail call void @hal_uart_put_char(i32 noundef 0, i8 noundef zeroext %2) #13, !dbg !4962
  ret i32 %0, !dbg !4963
}

; Function Attrs: noinline noreturn nounwind optsize
define dso_local i32 @main() local_unnamed_addr #12 !dbg !4964 {
  tail call fastcc void @SystemClock_Config() #14, !dbg !4965
  tail call fastcc void @prvSetupHardware() #14, !dbg !4966
  tail call void asm sideeffect "cpsie i", "~{memory}"() #15, !dbg !4967, !srcloc !4970
  tail call void asm sideeffect "cpsie f", "~{memory}"() #15, !dbg !4971, !srcloc !4974
  %1 = tail call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.25, i32 0, i32 0)) #13, !dbg !4975
  %2 = tail call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1.26, i32 0, i32 0)) #13, !dbg !4976
  %3 = tail call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.25, i32 0, i32 0)) #13, !dbg !4977
  tail call fastcc void @wdt_feed_watchdog_example() #14, !dbg !4978
  br label %4, !dbg !4979

4:                                                ; preds = %4, %0
  br label %4, !dbg !4980, !llvm.loop !4983
}

; Function Attrs: noinline nounwind optsize
define internal fastcc void @SystemClock_Config() unnamed_addr #0 !dbg !4986 {
  tail call void @top_xtal_init() #13, !dbg !4987
  ret void, !dbg !4988
}

; Function Attrs: noinline nounwind optsize
define internal fastcc void @prvSetupHardware() unnamed_addr #0 !dbg !4989 {
  tail call fastcc void @plain_log_uart_init() #14, !dbg !4990
  ret void, !dbg !4991
}

; Function Attrs: noinline nounwind optsize
define internal fastcc void @wdt_feed_watchdog_example() unnamed_addr #0 !dbg !4992 {
  %1 = alloca %struct.hal_wdt_config_t, align 4
  %2 = bitcast %struct.hal_wdt_config_t* %1 to i8*, !dbg !5001
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %2) #15, !dbg !5001
  call void @llvm.dbg.declare(metadata %struct.hal_wdt_config_t* %1, metadata !4994, metadata !DIExpression()), !dbg !5002
  %3 = getelementptr inbounds %struct.hal_wdt_config_t, %struct.hal_wdt_config_t* %1, i32 0, i32 0, !dbg !5003
  store i32 0, i32* %3, align 4, !dbg !5004
  %4 = getelementptr inbounds %struct.hal_wdt_config_t, %struct.hal_wdt_config_t* %1, i32 0, i32 1, !dbg !5005
  store i32 4, i32* %4, align 4, !dbg !5006
  %5 = tail call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str.2.27, i32 0, i32 0)) #13, !dbg !5007
  %6 = call i32 @hal_wdt_init(%struct.hal_wdt_config_t* noundef nonnull %1) #13, !dbg !5008
  call void @llvm.dbg.value(metadata i32 %6, metadata !5000, metadata !DIExpression()), !dbg !5009
  %7 = icmp eq i32 %6, 0, !dbg !5010
  br i1 %7, label %8, label %14, !dbg !5012

8:                                                ; preds = %0
  %9 = call i32 @hal_wdt_enable(i32 noundef -889275714) #13, !dbg !5013
  call void @llvm.dbg.value(metadata i32 %9, metadata !5000, metadata !DIExpression()), !dbg !5009
  %10 = icmp eq i32 %9, 0, !dbg !5014
  br i1 %10, label %11, label %14, !dbg !5016

11:                                               ; preds = %8
  %12 = call i32 @hal_gpt_delay_ms(i32 noundef 1000) #13, !dbg !5017
  %13 = call i32 @hal_wdt_feed(i32 noundef -559035650) #13, !dbg !5018
  br label %14, !dbg !5019

14:                                               ; preds = %8, %0, %11
  %15 = phi i8* [ getelementptr inbounds ([33 x i8], [33 x i8]* @.str.5, i32 0, i32 0), %11 ], [ getelementptr inbounds ([28 x i8], [28 x i8]* @.str.3.28, i32 0, i32 0), %0 ], [ getelementptr inbounds ([20 x i8], [20 x i8]* @.str.4.29, i32 0, i32 0), %8 ]
  %16 = call i32 (i8*, ...) @printf(i8* noundef %15) #13, !dbg !5009
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %2) #15, !dbg !5019
  ret void, !dbg !5019
}

; Function Attrs: noinline nounwind optsize
define internal fastcc void @plain_log_uart_init() unnamed_addr #0 !dbg !5020 {
  %1 = alloca %struct.hal_uart_config_t, align 4
  %2 = bitcast %struct.hal_uart_config_t* %1 to i8*, !dbg !5030
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %2) #15, !dbg !5030
  call void @llvm.dbg.declare(metadata %struct.hal_uart_config_t* %1, metadata !5022, metadata !DIExpression()), !dbg !5031
  %3 = tail call i32 @hal_gpio_init(i32 noundef 2) #13, !dbg !5032
  %4 = tail call i32 @hal_gpio_init(i32 noundef 3) #13, !dbg !5033
  %5 = tail call i32 @hal_pinmux_set_function(i32 noundef 2, i8 noundef zeroext 7) #13, !dbg !5034
  %6 = tail call i32 @hal_pinmux_set_function(i32 noundef 3, i8 noundef zeroext 7) #13, !dbg !5035
  %7 = getelementptr inbounds %struct.hal_uart_config_t, %struct.hal_uart_config_t* %1, i32 0, i32 0, !dbg !5036
  store i32 9, i32* %7, align 4, !dbg !5037
  %8 = getelementptr inbounds %struct.hal_uart_config_t, %struct.hal_uart_config_t* %1, i32 0, i32 1, !dbg !5038
  store i32 3, i32* %8, align 4, !dbg !5039
  %9 = getelementptr inbounds %struct.hal_uart_config_t, %struct.hal_uart_config_t* %1, i32 0, i32 2, !dbg !5040
  store i32 0, i32* %9, align 4, !dbg !5041
  %10 = getelementptr inbounds %struct.hal_uart_config_t, %struct.hal_uart_config_t* %1, i32 0, i32 3, !dbg !5042
  store i32 0, i32* %10, align 4, !dbg !5043
  %11 = call i32 @hal_uart_init(i32 noundef 0, %struct.hal_uart_config_t* noundef nonnull %1) #13, !dbg !5044
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %2) #15, !dbg !5045
  ret void, !dbg !5045
}

; Function Attrs: nofree noinline norecurse nounwind optsize
define dso_local i32 @SysTick_Set(i32 noundef %0) local_unnamed_addr #3 !dbg !5046 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !5048, metadata !DIExpression()), !dbg !5050
  %2 = add i32 %0, -1, !dbg !5051
  %3 = icmp ugt i32 %2, 16777215, !dbg !5053
  br i1 %3, label %8, label %4, !dbg !5054

4:                                                ; preds = %1
  %5 = load volatile i32, i32* inttoptr (i32 -536813552 to i32*), align 16, !dbg !5055
  call void @llvm.dbg.value(metadata i32 %5, metadata !5049, metadata !DIExpression()), !dbg !5050
  %6 = load volatile i32, i32* inttoptr (i32 -536813552 to i32*), align 16, !dbg !5056
  %7 = and i32 %6, -4, !dbg !5056
  store volatile i32 %7, i32* inttoptr (i32 -536813552 to i32*), align 16, !dbg !5056
  store volatile i32 %2, i32* inttoptr (i32 -536813548 to i32*), align 4, !dbg !5057
  store volatile i32 0, i32* inttoptr (i32 -536813544 to i32*), align 8, !dbg !5058
  store volatile i32 %5, i32* inttoptr (i32 -536813552 to i32*), align 16, !dbg !5059
  br label %8, !dbg !5060

8:                                                ; preds = %1, %4
  %9 = phi i32 [ 0, %4 ], [ 1, %1 ], !dbg !5050
  ret i32 %9, !dbg !5061
}

; Function Attrs: nofree noinline norecurse nounwind optsize
define dso_local void @SysInitStatus_Set() local_unnamed_addr #3 !dbg !5062 {
  store volatile i32 1, i32* @System_Initialize_Done, align 4, !dbg !5063
  ret void, !dbg !5064
}

; Function Attrs: mustprogress nofree noinline norecurse nounwind optsize willreturn
define dso_local i32 @SysInitStatus_Query() local_unnamed_addr #4 !dbg !5065 {
  %1 = load volatile i32, i32* @System_Initialize_Done, align 4, !dbg !5066
  ret i32 %1, !dbg !5067
}

; Function Attrs: noinline nounwind optsize
define dso_local void @SystemCoreClockUpdate() local_unnamed_addr #0 !dbg !5068 {
  %1 = tail call i32 @top_mcu_freq_get() #13, !dbg !5069
  store i32 %1, i32* @SystemCoreClock, align 4, !dbg !5070
  ret void, !dbg !5071
}

; Function Attrs: nofree noinline norecurse nounwind optsize
define dso_local void @SystemInit() local_unnamed_addr #3 !dbg !5072 {
  %1 = load volatile i32, i32* inttoptr (i32 -536810104 to i32*), align 8, !dbg !5073
  %2 = or i32 %1, 15728640, !dbg !5073
  store volatile i32 %2, i32* inttoptr (i32 -536810104 to i32*), align 8, !dbg !5073
  store volatile i32 536870912, i32* inttoptr (i32 -536810232 to i32*), align 8, !dbg !5074
  %3 = load volatile i32, i32* inttoptr (i32 -536810204 to i32*), align 4, !dbg !5075
  %4 = or i32 %3, 458752, !dbg !5075
  store volatile i32 %4, i32* inttoptr (i32 -536810204 to i32*), align 4, !dbg !5075
  ret void, !dbg !5076
}

; Function Attrs: nofree noinline norecurse nounwind optsize
define dso_local void @CachePreInit() local_unnamed_addr #3 !dbg !5077 {
  store volatile i32 0, i32* inttoptr (i32 22216704 to i32*), align 65536, !dbg !5078
  store volatile i32 19, i32* inttoptr (i32 22216708 to i32*), align 4, !dbg !5079
  store volatile i32 3, i32* inttoptr (i32 22216708 to i32*), align 4, !dbg !5080
  store volatile i32 268931328, i32* inttoptr (i32 22282240 to i32*), align 262144, !dbg !5081
  store volatile i32 269713408, i32* inttoptr (i32 22282304 to i32*), align 64, !dbg !5082
  store volatile i32 1, i32* inttoptr (i32 22216748 to i32*), align 4, !dbg !5083
  store volatile i32 781, i32* inttoptr (i32 22216704 to i32*), align 65536, !dbg !5084
  ret void, !dbg !5085
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize readnone willreturn
define dso_local i32 @_close(i32 noundef %0) local_unnamed_addr #10 !dbg !5086 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !5088, metadata !DIExpression()), !dbg !5089
  ret i32 0, !dbg !5090
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize readnone willreturn
define dso_local i32 @_fstat(i32 noundef %0, %struct.stat* nocapture noundef readnone %1) local_unnamed_addr #10 !dbg !5091 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !5141, metadata !DIExpression()), !dbg !5143
  call void @llvm.dbg.value(metadata %struct.stat* %1, metadata !5142, metadata !DIExpression()), !dbg !5143
  ret i32 0, !dbg !5144
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize readnone willreturn
define dso_local i32 @_isatty(i32 noundef %0) local_unnamed_addr #10 !dbg !5145 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !5147, metadata !DIExpression()), !dbg !5148
  ret i32 1, !dbg !5149
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize readnone willreturn
define dso_local i32 @_lseek(i32 noundef %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #10 !dbg !5150 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !5154, metadata !DIExpression()), !dbg !5157
  call void @llvm.dbg.value(metadata i32 %1, metadata !5155, metadata !DIExpression()), !dbg !5157
  call void @llvm.dbg.value(metadata i32 %2, metadata !5156, metadata !DIExpression()), !dbg !5157
  ret i32 0, !dbg !5158
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize readnone willreturn
define dso_local i32 @_open(i8* nocapture noundef readnone %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #10 !dbg !5159 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !5163, metadata !DIExpression()), !dbg !5166
  call void @llvm.dbg.value(metadata i32 %1, metadata !5164, metadata !DIExpression()), !dbg !5166
  call void @llvm.dbg.value(metadata i32 %2, metadata !5165, metadata !DIExpression()), !dbg !5166
  ret i32 -1, !dbg !5167
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize readnone willreturn
define dso_local i32 @_read(i32 noundef %0, i8* nocapture noundef readnone %1, i32 noundef %2) local_unnamed_addr #10 !dbg !5168 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !5172, metadata !DIExpression()), !dbg !5175
  call void @llvm.dbg.value(metadata i8* %1, metadata !5173, metadata !DIExpression()), !dbg !5175
  call void @llvm.dbg.value(metadata i32 %2, metadata !5174, metadata !DIExpression()), !dbg !5175
  ret i32 0, !dbg !5176
}

; Function Attrs: noinline nounwind optsize
define dso_local i32 @_write(i32 noundef %0, i8* nocapture noundef readonly %1, i32 noundef returned %2) local_unnamed_addr #0 !dbg !5177 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !5179, metadata !DIExpression()), !dbg !5183
  call void @llvm.dbg.value(metadata i8* %1, metadata !5180, metadata !DIExpression()), !dbg !5183
  call void @llvm.dbg.value(metadata i32 %2, metadata !5181, metadata !DIExpression()), !dbg !5183
  call void @llvm.dbg.value(metadata i32 0, metadata !5182, metadata !DIExpression()), !dbg !5183
  %4 = icmp sgt i32 %2, 0, !dbg !5184
  br i1 %4, label %5, label %14, !dbg !5187

5:                                                ; preds = %3, %5
  %6 = phi i32 [ %12, %5 ], [ 0, %3 ]
  %7 = phi i8* [ %8, %5 ], [ %1, %3 ]
  call void @llvm.dbg.value(metadata i32 %6, metadata !5182, metadata !DIExpression()), !dbg !5183
  call void @llvm.dbg.value(metadata i8* %7, metadata !5180, metadata !DIExpression()), !dbg !5183
  %8 = getelementptr inbounds i8, i8* %7, i32 1, !dbg !5188
  call void @llvm.dbg.value(metadata i8* %8, metadata !5180, metadata !DIExpression()), !dbg !5183
  %9 = load i8, i8* %7, align 1, !dbg !5190
  %10 = zext i8 %9 to i32, !dbg !5190
  %11 = tail call i32 @__io_putchar(i32 noundef %10) #13, !dbg !5191
  %12 = add nuw nsw i32 %6, 1, !dbg !5192
  call void @llvm.dbg.value(metadata i32 %12, metadata !5182, metadata !DIExpression()), !dbg !5183
  %13 = icmp eq i32 %12, %2, !dbg !5184
  br i1 %13, label %14, label %5, !dbg !5187, !llvm.loop !5193

14:                                               ; preds = %5, %3
  ret i32 %2, !dbg !5195
}

; Function Attrs: noinline nounwind optsize
define dso_local i8* @_sbrk_r(%struct._reent* nocapture noundef readnone %0, i32 noundef %1) local_unnamed_addr #0 !dbg !512 {
  call void @llvm.dbg.value(metadata %struct._reent* %0, metadata !715, metadata !DIExpression()), !dbg !5196
  call void @llvm.dbg.value(metadata i32 %1, metadata !716, metadata !DIExpression()), !dbg !5196
  %3 = tail call i8* asm sideeffect "MRS $0, msp\0A", "=r"() #15, !dbg !5197, !srcloc !5198
  call void @llvm.dbg.value(metadata i8* %3, metadata !718, metadata !DIExpression()), !dbg !5196
  %4 = load i8*, i8** @_sbrk_r.heap_end, align 4, !dbg !5199
  %5 = icmp eq i8* %4, null, !dbg !5201
  %6 = select i1 %5, i8* @end, i8* %4, !dbg !5202
  call void @llvm.dbg.value(metadata i8* %6, metadata !717, metadata !DIExpression()), !dbg !5196
  %7 = getelementptr inbounds i8, i8* %6, i32 %1, !dbg !5203
  %8 = icmp ult i8* %3, %7, !dbg !5205
  %9 = xor i1 %8, true, !dbg !5206
  %10 = or i1 %5, %9, !dbg !5206
  br i1 %10, label %11, label %13, !dbg !5206

11:                                               ; preds = %2
  %12 = select i1 %8, i8* %6, i8* %7, !dbg !5207
  store i8* %12, i8** @_sbrk_r.heap_end, align 4, !dbg !5206
  br label %13, !dbg !5206

13:                                               ; preds = %2, %11
  %14 = select i1 %8, i8* inttoptr (i32 -1 to i8*), i8* %6, !dbg !5207
  ret i8* %14, !dbg !5206
}

; Function Attrs: noinline noreturn nounwind optsize
define dso_local void @_exit(i32 noundef %0) local_unnamed_addr #12 !dbg !5208 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !5210, metadata !DIExpression()), !dbg !5211
  %2 = tail call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.36, i32 0, i32 0)) #13, !dbg !5212
  br label %3, !dbg !5213

3:                                                ; preds = %1, %3
  br label %3, !dbg !5213, !llvm.loop !5214
}

; Function Attrs: noinline nounwind optsize
define dso_local i32 @_kill(i32 noundef %0, i32 noundef %1) local_unnamed_addr #0 !dbg !5216 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !5220, metadata !DIExpression()), !dbg !5222
  call void @llvm.dbg.value(metadata i32 %1, metadata !5221, metadata !DIExpression()), !dbg !5222
  %3 = tail call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1.37, i32 0, i32 0), i32 noundef %1) #13, !dbg !5223
  ret i32 -1, !dbg !5224
}

; Function Attrs: noinline nounwind optsize
define dso_local i32 @_getpid() local_unnamed_addr #0 !dbg !5225 {
  %1 = tail call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2.38, i32 0, i32 0)) #13, !dbg !5230
  ret i32 0, !dbg !5231
}

attributes #0 = { noinline nounwind optsize "frame-pointer"="all" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="cortex-m4" "target-features"="+armv7e-m,+dsp,+fp16,+hwdiv,+strict-align,+thumb-mode,+vfp2sp,+vfp3d16sp,+vfp4d16sp,-aes,-bf16,-cdecp0,-cdecp1,-cdecp2,-cdecp3,-cdecp4,-cdecp5,-cdecp6,-cdecp7,-crc,-crypto,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16fml,-fp64,-fullfp16,-hwdiv-arm,-i8mm,-lob,-mve,-mve.fp,-neon,-pacbti,-ras,-sb,-sha2,-vfp2,-vfp3,-vfp3d16,-vfp3sp,-vfp4,-vfp4d16,-vfp4sp" }
attributes #1 = { nofree nosync nounwind readnone speculatable willreturn }
attributes #2 = { optsize "frame-pointer"="all" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="cortex-m4" "target-features"="+armv7e-m,+dsp,+fp16,+hwdiv,+strict-align,+thumb-mode,+vfp2sp,+vfp3d16sp,+vfp4d16sp,-aes,-bf16,-cdecp0,-cdecp1,-cdecp2,-cdecp3,-cdecp4,-cdecp5,-cdecp6,-cdecp7,-crc,-crypto,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16fml,-fp64,-fullfp16,-hwdiv-arm,-i8mm,-lob,-mve,-mve.fp,-neon,-pacbti,-ras,-sb,-sha2,-vfp2,-vfp3,-vfp3d16,-vfp3sp,-vfp4,-vfp4d16,-vfp4sp" }
attributes #3 = { nofree noinline norecurse nounwind optsize "frame-pointer"="all" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="cortex-m4" "target-features"="+armv7e-m,+dsp,+fp16,+hwdiv,+strict-align,+thumb-mode,+vfp2sp,+vfp3d16sp,+vfp4d16sp,-aes,-bf16,-cdecp0,-cdecp1,-cdecp2,-cdecp3,-cdecp4,-cdecp5,-cdecp6,-cdecp7,-crc,-crypto,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16fml,-fp64,-fullfp16,-hwdiv-arm,-i8mm,-lob,-mve,-mve.fp,-neon,-pacbti,-ras,-sb,-sha2,-vfp2,-vfp3,-vfp3d16,-vfp3sp,-vfp4,-vfp4d16,-vfp4sp" }
attributes #4 = { mustprogress nofree noinline norecurse nounwind optsize willreturn "frame-pointer"="all" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="cortex-m4" "target-features"="+armv7e-m,+dsp,+fp16,+hwdiv,+strict-align,+thumb-mode,+vfp2sp,+vfp3d16sp,+vfp4d16sp,-aes,-bf16,-cdecp0,-cdecp1,-cdecp2,-cdecp3,-cdecp4,-cdecp5,-cdecp6,-cdecp7,-crc,-crypto,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16fml,-fp64,-fullfp16,-hwdiv-arm,-i8mm,-lob,-mve,-mve.fp,-neon,-pacbti,-ras,-sb,-sha2,-vfp2,-vfp3,-vfp3d16,-vfp3sp,-vfp4,-vfp4d16,-vfp4sp" }
attributes #5 = { nofree noinline norecurse noreturn nounwind optsize "frame-pointer"="all" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="cortex-m4" "target-features"="+armv7e-m,+dsp,+fp16,+hwdiv,+strict-align,+thumb-mode,+vfp2sp,+vfp3d16sp,+vfp4d16sp,-aes,-bf16,-cdecp0,-cdecp1,-cdecp2,-cdecp3,-cdecp4,-cdecp5,-cdecp6,-cdecp7,-crc,-crypto,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16fml,-fp64,-fullfp16,-hwdiv-arm,-i8mm,-lob,-mve,-mve.fp,-neon,-pacbti,-ras,-sb,-sha2,-vfp2,-vfp3,-vfp3d16,-vfp3sp,-vfp4,-vfp4d16,-vfp4sp" }
attributes #6 = { argmemonly nofree nosync nounwind willreturn }
attributes #7 = { mustprogress nofree noinline norecurse nosync nounwind optsize readonly willreturn "frame-pointer"="all" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="cortex-m4" "target-features"="+armv7e-m,+dsp,+fp16,+hwdiv,+strict-align,+thumb-mode,+vfp2sp,+vfp3d16sp,+vfp4d16sp,-aes,-bf16,-cdecp0,-cdecp1,-cdecp2,-cdecp3,-cdecp4,-cdecp5,-cdecp6,-cdecp7,-crc,-crypto,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16fml,-fp64,-fullfp16,-hwdiv-arm,-i8mm,-lob,-mve,-mve.fp,-neon,-pacbti,-ras,-sb,-sha2,-vfp2,-vfp3,-vfp3d16,-vfp3sp,-vfp4,-vfp4d16,-vfp4sp" }
attributes #8 = { nofree noinline nounwind optsize "frame-pointer"="all" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="cortex-m4" "target-features"="+armv7e-m,+dsp,+fp16,+hwdiv,+strict-align,+thumb-mode,+vfp2sp,+vfp3d16sp,+vfp4d16sp,-aes,-bf16,-cdecp0,-cdecp1,-cdecp2,-cdecp3,-cdecp4,-cdecp5,-cdecp6,-cdecp7,-crc,-crypto,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16fml,-fp64,-fullfp16,-hwdiv-arm,-i8mm,-lob,-mve,-mve.fp,-neon,-pacbti,-ras,-sb,-sha2,-vfp2,-vfp3,-vfp3d16,-vfp3sp,-vfp4,-vfp4d16,-vfp4sp" }
attributes #9 = { nofree nosync nounwind willreturn }
attributes #10 = { mustprogress nofree noinline norecurse nosync nounwind optsize readnone willreturn "frame-pointer"="all" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="cortex-m4" "target-features"="+armv7e-m,+dsp,+fp16,+hwdiv,+strict-align,+thumb-mode,+vfp2sp,+vfp3d16sp,+vfp4d16sp,-aes,-bf16,-cdecp0,-cdecp1,-cdecp2,-cdecp3,-cdecp4,-cdecp5,-cdecp6,-cdecp7,-crc,-crypto,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16fml,-fp64,-fullfp16,-hwdiv-arm,-i8mm,-lob,-mve,-mve.fp,-neon,-pacbti,-ras,-sb,-sha2,-vfp2,-vfp3,-vfp3d16,-vfp3sp,-vfp4,-vfp4d16,-vfp4sp" }
attributes #11 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn writeonly "frame-pointer"="all" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="cortex-m4" "target-features"="+armv7e-m,+dsp,+fp16,+hwdiv,+strict-align,+thumb-mode,+vfp2sp,+vfp3d16sp,+vfp4d16sp,-aes,-bf16,-cdecp0,-cdecp1,-cdecp2,-cdecp3,-cdecp4,-cdecp5,-cdecp6,-cdecp7,-crc,-crypto,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16fml,-fp64,-fullfp16,-hwdiv-arm,-i8mm,-lob,-mve,-mve.fp,-neon,-pacbti,-ras,-sb,-sha2,-vfp2,-vfp3,-vfp3d16,-vfp3sp,-vfp4,-vfp4d16,-vfp4sp" }
attributes #12 = { noinline noreturn nounwind optsize "frame-pointer"="all" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="cortex-m4" "target-features"="+armv7e-m,+dsp,+fp16,+hwdiv,+strict-align,+thumb-mode,+vfp2sp,+vfp3d16sp,+vfp4d16sp,-aes,-bf16,-cdecp0,-cdecp1,-cdecp2,-cdecp3,-cdecp4,-cdecp5,-cdecp6,-cdecp7,-crc,-crypto,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16fml,-fp64,-fullfp16,-hwdiv-arm,-i8mm,-lob,-mve,-mve.fp,-neon,-pacbti,-ras,-sb,-sha2,-vfp2,-vfp3,-vfp3d16,-vfp3sp,-vfp4,-vfp4d16,-vfp4sp" }
attributes #13 = { nobuiltin nounwind optsize "no-builtins" }
attributes #14 = { nobuiltin optsize "no-builtins" }
attributes #15 = { nounwind }

!llvm.dbg.cu = !{!2, !735, !744, !825, !882, !927, !961, !85, !102, !964, !140, !966, !245, !299, !409, !1037, !442, !710, !721}
!llvm.ident = !{!1040, !1040, !1040, !1040, !1040, !1040, !1040, !1040, !1040, !1040, !1040, !1040, !1040, !1040, !1040, !1040, !1040, !1040, !1040}
!llvm.module.flags = !{!1041, !1042, !1043, !1044, !1045, !1046, !1047, !1048, !1049}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "g_u4ClkCnt1ms", scope: !2, file: !3, line: 71, type: !79, isLocal: false, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C99, file: !3, producer: "Ubuntu clang version 14.0.6", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !57, globals: !62, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "../../../../../driver/chip/mt7687/src/common/gpt.c", directory: "/home/mjshen/RTOSExploration/Embedded-GUI-for-MT2523/project/mt7687_hdk/hal_examples/wdt_feed_watchdog/GCC")
!4 = !{!5, !11}
!5 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !6, line: 121, baseType: !7, size: 32, elements: !8)
!6 = !DIFile(filename: "../../../../../driver/chip/mt7687/inc/type_def.h", directory: "/home/mjshen/RTOSExploration/Embedded-GUI-for-MT2523/project/mt7687_hdk/hal_examples/wdt_feed_watchdog/GCC")
!7 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!8 = !{!9, !10}
!9 = !DIEnumerator(name: "KAL_FALSE", value: 0)
!10 = !DIEnumerator(name: "KAL_TRUE", value: 1)
!11 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "IRQn", file: !12, line: 47, baseType: !13, size: 32, elements: !14)
!12 = !DIFile(filename: "../../../../../driver/CMSIS/Device/MTK/mt7687/Include/mt7687.h", directory: "/home/mjshen/RTOSExploration/Embedded-GUI-for-MT2523/project/mt7687_hdk/hal_examples/wdt_feed_watchdog/GCC")
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
!66 = !DIFile(filename: "../../../../../driver/chip/mt7687/src/common/include/gpt.h", directory: "/home/mjshen/RTOSExploration/Embedded-GUI-for-MT2523/project/mt7687_hdk/hal_examples/wdt_feed_watchdog/GCC")
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
!86 = !DIFile(filename: "../../../../../driver/chip/mt7687/src/common/top.c", directory: "/home/mjshen/RTOSExploration/Embedded-GUI-for-MT2523/project/mt7687_hdk/hal_examples/wdt_feed_watchdog/GCC")
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
!103 = !DIFile(filename: "../../../../../driver/chip/mt7687/src/common/uart.c", directory: "/home/mjshen/RTOSExploration/Embedded-GUI-for-MT2523/project/mt7687_hdk/hal_examples/wdt_feed_watchdog/GCC")
!104 = !{!105, !111}
!105 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !106, line: 71, baseType: !7, size: 32, elements: !107)
!106 = !DIFile(filename: "../../../../../driver/chip/mt7687/src/common/include/uart.h", directory: "/home/mjshen/RTOSExploration/Embedded-GUI-for-MT2523/project/mt7687_hdk/hal_examples/wdt_feed_watchdog/GCC")
!107 = !{!108, !109, !110}
!108 = !DIEnumerator(name: "UART_PORT0", value: 0)
!109 = !DIEnumerator(name: "UART_PORT1", value: 1)
!110 = !DIEnumerator(name: "UART_MAX_PORT", value: 2)
!111 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !112, line: 129, baseType: !7, size: 32, elements: !113)
!112 = !DIFile(filename: "../../../../../driver/chip/mt7687/inc/dma_sw.h", directory: "/home/mjshen/RTOSExploration/Embedded-GUI-for-MT2523/project/mt7687_hdk/hal_examples/wdt_feed_watchdog/GCC")
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
!141 = !DIFile(filename: "../../../../../driver/chip/mt7687/src/hal_nvic.c", directory: "/home/mjshen/RTOSExploration/Embedded-GUI-for-MT2523/project/mt7687_hdk/hal_examples/wdt_feed_watchdog/GCC")
!142 = !{!143, !11}
!143 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !144, line: 152, baseType: !13, size: 32, elements: !145)
!144 = !DIFile(filename: "../../../../../driver/chip/inc/hal_nvic.h", directory: "/home/mjshen/RTOSExploration/Embedded-GUI-for-MT2523/project/mt7687_hdk/hal_examples/wdt_feed_watchdog/GCC")
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
!158 = !DIFile(filename: "../../../../../driver/CMSIS/Include/core_cm4.h", directory: "/home/mjshen/RTOSExploration/Embedded-GUI-for-MT2523/project/mt7687_hdk/hal_examples/wdt_feed_watchdog/GCC")
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
!246 = !DIFile(filename: "../../../../../driver/chip/mt7687/src/hal_gpt.c", directory: "/home/mjshen/RTOSExploration/Embedded-GUI-for-MT2523/project/mt7687_hdk/hal_examples/wdt_feed_watchdog/GCC")
!247 = !{!248, !256, !264, !268, !273}
!248 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !249, line: 387, baseType: !13, size: 32, elements: !250)
!249 = !DIFile(filename: "../../../../../driver/chip/inc/hal_gpt.h", directory: "/home/mjshen/RTOSExploration/Embedded-GUI-for-MT2523/project/mt7687_hdk/hal_examples/wdt_feed_watchdog/GCC")
!250 = !{!251, !252, !253, !254, !255}
!251 = !DIEnumerator(name: "HAL_GPT_STATUS_ERROR_PORT_USED", value: -4)
!252 = !DIEnumerator(name: "HAL_GPT_STATUS_ERROR", value: -3)
!253 = !DIEnumerator(name: "HAL_GPT_STATUS_ERROR_PORT", value: -2)
!254 = !DIEnumerator(name: "HAL_GPT_STATUS_INVALID_PARAMETER", value: -1)
!255 = !DIEnumerator(name: "HAL_GPT_STATUS_OK", value: 0)
!256 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !257, line: 657, baseType: !7, size: 32, elements: !258)
!257 = !DIFile(filename: "../../../../../driver/chip/mt7687/inc/hal_platform.h", directory: "/home/mjshen/RTOSExploration/Embedded-GUI-for-MT2523/project/mt7687_hdk/hal_examples/wdt_feed_watchdog/GCC")
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
!300 = !DIFile(filename: "../../../../../driver/chip/mt7687/src/hal_uart.c", directory: "/home/mjshen/RTOSExploration/Embedded-GUI-for-MT2523/project/mt7687_hdk/hal_examples/wdt_feed_watchdog/GCC")
!301 = !{!302, !310, !315, !331, !337, !341, !105, !111, !346}
!302 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !303, line: 345, baseType: !13, size: 32, elements: !304)
!303 = !DIFile(filename: "../../../../../driver/chip/inc/hal_uart.h", directory: "/home/mjshen/RTOSExploration/Embedded-GUI-for-MT2523/project/mt7687_hdk/hal_examples/wdt_feed_watchdog/GCC")
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
!408 = distinct !DIGlobalVariable(name: "s_hal_mode", scope: !409, file: !410, line: 44, type: !438, isLocal: true, isDefinition: true)
!409 = distinct !DICompileUnit(language: DW_LANG_C99, file: !410, producer: "Ubuntu clang version 14.0.6", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !411, retainedTypes: !427, globals: !428, splitDebugInlining: false, nameTableKind: None)
!410 = !DIFile(filename: "../../../../../driver/chip/mt7687/src/hal_wdt.c", directory: "/home/mjshen/RTOSExploration/Embedded-GUI-for-MT2523/project/mt7687_hdk/hal_examples/wdt_feed_watchdog/GCC")
!411 = !{!412, !418, !422, !11}
!412 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !413, line: 194, baseType: !13, size: 32, elements: !414)
!413 = !DIFile(filename: "../../../../../driver/chip/inc/hal_wdt.h", directory: "/home/mjshen/RTOSExploration/Embedded-GUI-for-MT2523/project/mt7687_hdk/hal_examples/wdt_feed_watchdog/GCC")
!414 = !{!415, !416, !417}
!415 = !DIEnumerator(name: "HAL_WDT_STATUS_INVALID_PARAMETER", value: -2)
!416 = !DIEnumerator(name: "HAL_WDT_STATUS_INVALID_MAGIC", value: -1)
!417 = !DIEnumerator(name: "HAL_WDT_STATUS_OK", value: 0)
!418 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !413, line: 210, baseType: !7, size: 32, elements: !419)
!419 = !{!420, !421}
!420 = !DIEnumerator(name: "HAL_WDT_MODE_RESET", value: 0)
!421 = !DIEnumerator(name: "HAL_WDT_MODE_INTERRUPT", value: 1)
!422 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !413, line: 202, baseType: !7, size: 32, elements: !423)
!423 = !{!424, !425, !426}
!424 = !DIEnumerator(name: "HAL_WDT_TIMEOUT_RESET", value: 0)
!425 = !DIEnumerator(name: "HAL_WDT_SOFTWARE_RESET", value: 1)
!426 = !DIEnumerator(name: "HAL_WDT_NONE_RESET", value: 2)
!427 = !{!61, !92}
!428 = !{!429, !436, !407}
!429 = !DIGlobalVariableExpression(var: !430, expr: !DIExpression())
!430 = distinct !DIGlobalVariable(name: "s_hal_wdt_callback", scope: !409, file: !410, line: 42, type: !431, isLocal: true, isDefinition: true)
!431 = !DIDerivedType(tag: DW_TAG_typedef, name: "hal_wdt_callback_t", file: !413, line: 246, baseType: !432)
!432 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !433, size: 32)
!433 = !DISubroutineType(types: !434)
!434 = !{null, !435}
!435 = !DIDerivedType(tag: DW_TAG_typedef, name: "hal_wdt_reset_status_t", file: !413, line: 206, baseType: !422)
!436 = !DIGlobalVariableExpression(var: !437, expr: !DIExpression())
!437 = distinct !DIGlobalVariable(name: "s_hal_enable", scope: !409, file: !410, line: 43, type: !296, isLocal: true, isDefinition: true)
!438 = !DIDerivedType(tag: DW_TAG_typedef, name: "hal_wdt_mode_t", file: !413, line: 213, baseType: !418)
!439 = !DIGlobalVariableExpression(var: !437, expr: !DIExpression(DW_OP_deref_size, 1, DW_OP_constu, 1, DW_OP_mul, DW_OP_constu, 0, DW_OP_plus, DW_OP_stack_value))
!440 = !DIGlobalVariableExpression(var: !441, expr: !DIExpression())
!441 = distinct !DIGlobalVariable(name: "SystemCoreClock", scope: !442, file: !443, line: 59, type: !92, isLocal: false, isDefinition: true)
!442 = distinct !DICompileUnit(language: DW_LANG_C99, file: !443, producer: "Ubuntu clang version 14.0.6", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !444, globals: !507, splitDebugInlining: false, nameTableKind: None)
!443 = !DIFile(filename: "../../../../../project/mt7687_hdk/hal_examples/wdt_feed_watchdog/src/system_mt7687.c", directory: "/home/mjshen/RTOSExploration/Embedded-GUI-for-MT2523/project/mt7687_hdk/hal_examples/wdt_feed_watchdog/GCC")
!444 = !{!445, !453, !478}
!445 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !446, size: 32)
!446 = !DIDerivedType(tag: DW_TAG_typedef, name: "SysTick_Type", file: !158, line: 656, baseType: !447)
!447 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !158, line: 650, size: 128, elements: !448)
!448 = !{!449, !450, !451, !452}
!449 = !DIDerivedType(tag: DW_TAG_member, name: "CTRL", scope: !447, file: !158, line: 652, baseType: !91, size: 32)
!450 = !DIDerivedType(tag: DW_TAG_member, name: "LOAD", scope: !447, file: !158, line: 653, baseType: !91, size: 32, offset: 32)
!451 = !DIDerivedType(tag: DW_TAG_member, name: "VAL", scope: !447, file: !158, line: 654, baseType: !91, size: 32, offset: 64)
!452 = !DIDerivedType(tag: DW_TAG_member, name: "CALIB", scope: !447, file: !158, line: 655, baseType: !197, size: 32, offset: 96)
!453 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !454, size: 32)
!454 = !DIDerivedType(tag: DW_TAG_typedef, name: "SCB_Type", file: !158, line: 418, baseType: !455)
!455 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !158, line: 395, size: 1120, elements: !456)
!456 = !{!457, !458, !459, !460, !461, !462, !463, !464, !465, !466, !467, !468, !469, !470, !471, !472, !473, !474, !475, !476, !477}
!457 = !DIDerivedType(tag: DW_TAG_member, name: "CPUID", scope: !455, file: !158, line: 397, baseType: !197, size: 32)
!458 = !DIDerivedType(tag: DW_TAG_member, name: "ICSR", scope: !455, file: !158, line: 398, baseType: !91, size: 32, offset: 32)
!459 = !DIDerivedType(tag: DW_TAG_member, name: "VTOR", scope: !455, file: !158, line: 399, baseType: !91, size: 32, offset: 64)
!460 = !DIDerivedType(tag: DW_TAG_member, name: "AIRCR", scope: !455, file: !158, line: 400, baseType: !91, size: 32, offset: 96)
!461 = !DIDerivedType(tag: DW_TAG_member, name: "SCR", scope: !455, file: !158, line: 401, baseType: !91, size: 32, offset: 128)
!462 = !DIDerivedType(tag: DW_TAG_member, name: "CCR", scope: !455, file: !158, line: 402, baseType: !91, size: 32, offset: 160)
!463 = !DIDerivedType(tag: DW_TAG_member, name: "SHP", scope: !455, file: !158, line: 403, baseType: !204, size: 96, offset: 192)
!464 = !DIDerivedType(tag: DW_TAG_member, name: "SHCSR", scope: !455, file: !158, line: 404, baseType: !91, size: 32, offset: 288)
!465 = !DIDerivedType(tag: DW_TAG_member, name: "CFSR", scope: !455, file: !158, line: 405, baseType: !91, size: 32, offset: 320)
!466 = !DIDerivedType(tag: DW_TAG_member, name: "HFSR", scope: !455, file: !158, line: 406, baseType: !91, size: 32, offset: 352)
!467 = !DIDerivedType(tag: DW_TAG_member, name: "DFSR", scope: !455, file: !158, line: 407, baseType: !91, size: 32, offset: 384)
!468 = !DIDerivedType(tag: DW_TAG_member, name: "MMFAR", scope: !455, file: !158, line: 408, baseType: !91, size: 32, offset: 416)
!469 = !DIDerivedType(tag: DW_TAG_member, name: "BFAR", scope: !455, file: !158, line: 409, baseType: !91, size: 32, offset: 448)
!470 = !DIDerivedType(tag: DW_TAG_member, name: "AFSR", scope: !455, file: !158, line: 410, baseType: !91, size: 32, offset: 480)
!471 = !DIDerivedType(tag: DW_TAG_member, name: "PFR", scope: !455, file: !158, line: 411, baseType: !215, size: 64, offset: 512)
!472 = !DIDerivedType(tag: DW_TAG_member, name: "DFR", scope: !455, file: !158, line: 412, baseType: !197, size: 32, offset: 576)
!473 = !DIDerivedType(tag: DW_TAG_member, name: "ADR", scope: !455, file: !158, line: 413, baseType: !197, size: 32, offset: 608)
!474 = !DIDerivedType(tag: DW_TAG_member, name: "MMFR", scope: !455, file: !158, line: 414, baseType: !221, size: 128, offset: 640)
!475 = !DIDerivedType(tag: DW_TAG_member, name: "ISAR", scope: !455, file: !158, line: 415, baseType: !225, size: 160, offset: 768)
!476 = !DIDerivedType(tag: DW_TAG_member, name: "RESERVED0", scope: !455, file: !158, line: 416, baseType: !229, size: 160, offset: 928)
!477 = !DIDerivedType(tag: DW_TAG_member, name: "CPACR", scope: !455, file: !158, line: 417, baseType: !91, size: 32, offset: 1088)
!478 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !479, size: 32)
!479 = !DIDerivedType(tag: DW_TAG_typedef, name: "CACHE_REGISTER_T", file: !480, line: 72, baseType: !481)
!480 = !DIFile(filename: "../../../../../driver/chip/mt7687/inc/hal_cache_hw.h", directory: "/home/mjshen/RTOSExploration/Embedded-GUI-for-MT2523/project/mt7687_hdk/hal_examples/wdt_feed_watchdog/GCC")
!481 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !480, line: 56, size: 525312, elements: !482)
!482 = !{!483, !484, !485, !486, !487, !488, !489, !490, !491, !492, !493, !497, !498, !502, !506}
!483 = !DIDerivedType(tag: DW_TAG_member, name: "CACHE_CON", scope: !481, file: !480, line: 57, baseType: !91, size: 32)
!484 = !DIDerivedType(tag: DW_TAG_member, name: "CACHE_OP", scope: !481, file: !480, line: 58, baseType: !91, size: 32, offset: 32)
!485 = !DIDerivedType(tag: DW_TAG_member, name: "CACHE_HCNT0L", scope: !481, file: !480, line: 59, baseType: !91, size: 32, offset: 64)
!486 = !DIDerivedType(tag: DW_TAG_member, name: "CACHE_HCNT0U", scope: !481, file: !480, line: 60, baseType: !91, size: 32, offset: 96)
!487 = !DIDerivedType(tag: DW_TAG_member, name: "CACHE_CCNT0L", scope: !481, file: !480, line: 61, baseType: !91, size: 32, offset: 128)
!488 = !DIDerivedType(tag: DW_TAG_member, name: "CACHE_CCNT0U", scope: !481, file: !480, line: 62, baseType: !91, size: 32, offset: 160)
!489 = !DIDerivedType(tag: DW_TAG_member, name: "CACHE_HCNT1L", scope: !481, file: !480, line: 63, baseType: !91, size: 32, offset: 192)
!490 = !DIDerivedType(tag: DW_TAG_member, name: "CACHE_HCNT1U", scope: !481, file: !480, line: 64, baseType: !91, size: 32, offset: 224)
!491 = !DIDerivedType(tag: DW_TAG_member, name: "CACHE_CCNT1L", scope: !481, file: !480, line: 65, baseType: !91, size: 32, offset: 256)
!492 = !DIDerivedType(tag: DW_TAG_member, name: "CACHE_CCNT1U", scope: !481, file: !480, line: 66, baseType: !91, size: 32, offset: 288)
!493 = !DIDerivedType(tag: DW_TAG_member, name: "RESERVED0", scope: !481, file: !480, line: 67, baseType: !494, size: 32, offset: 320)
!494 = !DICompositeType(tag: DW_TAG_array_type, baseType: !92, size: 32, elements: !495)
!495 = !{!496}
!496 = !DISubrange(count: 1)
!497 = !DIDerivedType(tag: DW_TAG_member, name: "CACHE_REGION_EN", scope: !481, file: !480, line: 68, baseType: !91, size: 32, offset: 352)
!498 = !DIDerivedType(tag: DW_TAG_member, name: "RESERVED1", scope: !481, file: !480, line: 69, baseType: !499, size: 523904, offset: 384)
!499 = !DICompositeType(tag: DW_TAG_array_type, baseType: !92, size: 523904, elements: !500)
!500 = !{!501}
!501 = !DISubrange(count: 16372)
!502 = !DIDerivedType(tag: DW_TAG_member, name: "CACHE_ENTRY_N", scope: !481, file: !480, line: 70, baseType: !503, size: 512, offset: 524288)
!503 = !DICompositeType(tag: DW_TAG_array_type, baseType: !91, size: 512, elements: !504)
!504 = !{!505}
!505 = !DISubrange(count: 16)
!506 = !DIDerivedType(tag: DW_TAG_member, name: "CACHE_END_ENTRY_N", scope: !481, file: !480, line: 71, baseType: !503, size: 512, offset: 524800)
!507 = !{!440, !508}
!508 = !DIGlobalVariableExpression(var: !509, expr: !DIExpression())
!509 = distinct !DIGlobalVariable(name: "System_Initialize_Done", scope: !442, file: !443, line: 61, type: !91, isLocal: true, isDefinition: true)
!510 = !DIGlobalVariableExpression(var: !511, expr: !DIExpression())
!511 = distinct !DIGlobalVariable(name: "heap_end", scope: !512, file: !513, line: 66, type: !518, isLocal: true, isDefinition: true)
!512 = distinct !DISubprogram(name: "_sbrk_r", scope: !513, file: !513, line: 63, type: !514, scopeLine: 64, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !710, retainedNodes: !714)
!513 = !DIFile(filename: "../../../../../project/mt7687_hdk/hal_examples/wdt_feed_watchdog/GCC/syscalls.c", directory: "/home/mjshen/RTOSExploration/Embedded-GUI-for-MT2523/project/mt7687_hdk/hal_examples/wdt_feed_watchdog/GCC")
!514 = !DISubroutineType(types: !515)
!515 = !{!516, !519, !709}
!516 = !DIDerivedType(tag: DW_TAG_typedef, name: "caddr_t", file: !517, line: 123, baseType: !518)
!517 = !DIFile(filename: "gcc-arm-none-eabi-10.3-2021.10/bin/../lib/gcc/arm-none-eabi/10.3.1/../../../../arm-none-eabi/include/sys/types.h", directory: "/home/mjshen/RTOSExploration")
!518 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !352, size: 32)
!519 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !520, size: 32)
!520 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_reent", file: !521, line: 377, size: 1920, elements: !522)
!521 = !DIFile(filename: "gcc-arm-none-eabi-10.3-2021.10/bin/../lib/gcc/arm-none-eabi/10.3.1/../../../../arm-none-eabi/include/sys/reent.h", directory: "/home/mjshen/RTOSExploration")
!522 = !{!523, !524, !598, !599, !600, !601, !602, !603, !604, !607, !628, !632, !633, !634, !635, !645, !658, !659, !664, !683, !684, !691, !692, !708}
!523 = !DIDerivedType(tag: DW_TAG_member, name: "_errno", scope: !520, file: !521, line: 381, baseType: !13, size: 32)
!524 = !DIDerivedType(tag: DW_TAG_member, name: "_stdin", scope: !520, file: !521, line: 386, baseType: !525, size: 32, offset: 32)
!525 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !526, size: 32)
!526 = !DIDerivedType(tag: DW_TAG_typedef, name: "__FILE", file: !521, line: 292, baseType: !527)
!527 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__sFILE", file: !521, line: 186, size: 832, elements: !528)
!528 = !{!529, !531, !532, !533, !535, !536, !541, !542, !543, !544, !548, !554, !561, !565, !566, !567, !568, !572, !574, !575, !576, !578, !584, !597}
!529 = !DIDerivedType(tag: DW_TAG_member, name: "_p", scope: !527, file: !521, line: 187, baseType: !530, size: 32)
!530 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !134, size: 32)
!531 = !DIDerivedType(tag: DW_TAG_member, name: "_r", scope: !527, file: !521, line: 188, baseType: !13, size: 32, offset: 32)
!532 = !DIDerivedType(tag: DW_TAG_member, name: "_w", scope: !527, file: !521, line: 189, baseType: !13, size: 32, offset: 64)
!533 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !527, file: !521, line: 190, baseType: !534, size: 16, offset: 96)
!534 = !DIBasicType(name: "short", size: 16, encoding: DW_ATE_signed)
!535 = !DIDerivedType(tag: DW_TAG_member, name: "_file", scope: !527, file: !521, line: 191, baseType: !534, size: 16, offset: 112)
!536 = !DIDerivedType(tag: DW_TAG_member, name: "_bf", scope: !527, file: !521, line: 192, baseType: !537, size: 64, offset: 128)
!537 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__sbuf", file: !521, line: 122, size: 64, elements: !538)
!538 = !{!539, !540}
!539 = !DIDerivedType(tag: DW_TAG_member, name: "_base", scope: !537, file: !521, line: 123, baseType: !530, size: 32)
!540 = !DIDerivedType(tag: DW_TAG_member, name: "_size", scope: !537, file: !521, line: 124, baseType: !13, size: 32, offset: 32)
!541 = !DIDerivedType(tag: DW_TAG_member, name: "_lbfsize", scope: !527, file: !521, line: 193, baseType: !13, size: 32, offset: 192)
!542 = !DIDerivedType(tag: DW_TAG_member, name: "_data", scope: !527, file: !521, line: 196, baseType: !519, size: 32, offset: 224)
!543 = !DIDerivedType(tag: DW_TAG_member, name: "_cookie", scope: !527, file: !521, line: 200, baseType: !153, size: 32, offset: 256)
!544 = !DIDerivedType(tag: DW_TAG_member, name: "_read", scope: !527, file: !521, line: 202, baseType: !545, size: 32, offset: 288)
!545 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !546, size: 32)
!546 = !DISubroutineType(types: !547)
!547 = !{!13, !519, !153, !518, !13}
!548 = !DIDerivedType(tag: DW_TAG_member, name: "_write", scope: !527, file: !521, line: 204, baseType: !549, size: 32, offset: 320)
!549 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !550, size: 32)
!550 = !DISubroutineType(types: !551)
!551 = !{!13, !519, !153, !552, !13}
!552 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !553, size: 32)
!553 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !352)
!554 = !DIDerivedType(tag: DW_TAG_member, name: "_seek", scope: !527, file: !521, line: 207, baseType: !555, size: 32, offset: 352)
!555 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !556, size: 32)
!556 = !DISubroutineType(types: !557)
!557 = !{!558, !519, !153, !558, !13}
!558 = !DIDerivedType(tag: DW_TAG_typedef, name: "_fpos_t", file: !559, line: 116, baseType: !560)
!559 = !DIFile(filename: "gcc-arm-none-eabi-10.3-2021.10/bin/../lib/gcc/arm-none-eabi/10.3.1/../../../../arm-none-eabi/include/sys/_types.h", directory: "/home/mjshen/RTOSExploration")
!560 = !DIBasicType(name: "long", size: 32, encoding: DW_ATE_signed)
!561 = !DIDerivedType(tag: DW_TAG_member, name: "_close", scope: !527, file: !521, line: 208, baseType: !562, size: 32, offset: 384)
!562 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !563, size: 32)
!563 = !DISubroutineType(types: !564)
!564 = !{!13, !519, !153}
!565 = !DIDerivedType(tag: DW_TAG_member, name: "_ub", scope: !527, file: !521, line: 211, baseType: !537, size: 64, offset: 416)
!566 = !DIDerivedType(tag: DW_TAG_member, name: "_up", scope: !527, file: !521, line: 212, baseType: !530, size: 32, offset: 480)
!567 = !DIDerivedType(tag: DW_TAG_member, name: "_ur", scope: !527, file: !521, line: 213, baseType: !13, size: 32, offset: 512)
!568 = !DIDerivedType(tag: DW_TAG_member, name: "_ubuf", scope: !527, file: !521, line: 216, baseType: !569, size: 24, offset: 544)
!569 = !DICompositeType(tag: DW_TAG_array_type, baseType: !134, size: 24, elements: !570)
!570 = !{!571}
!571 = !DISubrange(count: 3)
!572 = !DIDerivedType(tag: DW_TAG_member, name: "_nbuf", scope: !527, file: !521, line: 217, baseType: !573, size: 8, offset: 568)
!573 = !DICompositeType(tag: DW_TAG_array_type, baseType: !134, size: 8, elements: !495)
!574 = !DIDerivedType(tag: DW_TAG_member, name: "_lb", scope: !527, file: !521, line: 220, baseType: !537, size: 64, offset: 576)
!575 = !DIDerivedType(tag: DW_TAG_member, name: "_blksize", scope: !527, file: !521, line: 223, baseType: !13, size: 32, offset: 640)
!576 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !527, file: !521, line: 224, baseType: !577, size: 32, offset: 672)
!577 = !DIDerivedType(tag: DW_TAG_typedef, name: "_off_t", file: !559, line: 46, baseType: !560)
!578 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !527, file: !521, line: 231, baseType: !579, size: 32, offset: 704)
!579 = !DIDerivedType(tag: DW_TAG_typedef, name: "_flock_t", file: !521, line: 35, baseType: !580)
!580 = !DIDerivedType(tag: DW_TAG_typedef, name: "_LOCK_T", file: !581, line: 34, baseType: !582)
!581 = !DIFile(filename: "gcc-arm-none-eabi-10.3-2021.10/bin/../lib/gcc/arm-none-eabi/10.3.1/../../../../arm-none-eabi/include/sys/lock.h", directory: "/home/mjshen/RTOSExploration")
!582 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !583, size: 32)
!583 = !DICompositeType(tag: DW_TAG_structure_type, name: "__lock", file: !581, line: 33, flags: DIFlagFwdDecl)
!584 = !DIDerivedType(tag: DW_TAG_member, name: "_mbstate", scope: !527, file: !521, line: 233, baseType: !585, size: 64, offset: 736)
!585 = !DIDerivedType(tag: DW_TAG_typedef, name: "_mbstate_t", file: !559, line: 170, baseType: !586)
!586 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !559, line: 162, size: 64, elements: !587)
!587 = !{!588, !589}
!588 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !586, file: !559, line: 164, baseType: !13, size: 32)
!589 = !DIDerivedType(tag: DW_TAG_member, name: "__value", scope: !586, file: !559, line: 169, baseType: !590, size: 32, offset: 32)
!590 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !586, file: !559, line: 165, size: 32, elements: !591)
!591 = !{!592, !595}
!592 = !DIDerivedType(tag: DW_TAG_member, name: "__wch", scope: !590, file: !559, line: 167, baseType: !593, size: 32)
!593 = !DIDerivedType(tag: DW_TAG_typedef, name: "wint_t", file: !594, line: 116, baseType: !13)
!594 = !DIFile(filename: "/usr/lib/llvm-14/lib/clang/14.0.6/include/stddef.h", directory: "")
!595 = !DIDerivedType(tag: DW_TAG_member, name: "__wchb", scope: !590, file: !559, line: 168, baseType: !596, size: 32)
!596 = !DICompositeType(tag: DW_TAG_array_type, baseType: !134, size: 32, elements: !222)
!597 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !527, file: !521, line: 234, baseType: !13, size: 32, offset: 800)
!598 = !DIDerivedType(tag: DW_TAG_member, name: "_stdout", scope: !520, file: !521, line: 386, baseType: !525, size: 32, offset: 64)
!599 = !DIDerivedType(tag: DW_TAG_member, name: "_stderr", scope: !520, file: !521, line: 386, baseType: !525, size: 32, offset: 96)
!600 = !DIDerivedType(tag: DW_TAG_member, name: "_inc", scope: !520, file: !521, line: 388, baseType: !13, size: 32, offset: 128)
!601 = !DIDerivedType(tag: DW_TAG_member, name: "_emergency", scope: !520, file: !521, line: 390, baseType: !518, size: 32, offset: 160)
!602 = !DIDerivedType(tag: DW_TAG_member, name: "__sdidinit", scope: !520, file: !521, line: 392, baseType: !13, size: 32, offset: 192)
!603 = !DIDerivedType(tag: DW_TAG_member, name: "_unspecified_locale_info", scope: !520, file: !521, line: 394, baseType: !13, size: 32, offset: 224)
!604 = !DIDerivedType(tag: DW_TAG_member, name: "_locale", scope: !520, file: !521, line: 395, baseType: !605, size: 32, offset: 256)
!605 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !606, size: 32)
!606 = !DICompositeType(tag: DW_TAG_structure_type, name: "__locale_t", file: !521, line: 45, flags: DIFlagFwdDecl)
!607 = !DIDerivedType(tag: DW_TAG_member, name: "_mp", scope: !520, file: !521, line: 397, baseType: !608, size: 32, offset: 288)
!608 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !609, size: 32)
!609 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_mprec", file: !521, line: 349, size: 128, elements: !610)
!610 = !{!611, !624, !625, !626}
!611 = !DIDerivedType(tag: DW_TAG_member, name: "_result", scope: !609, file: !521, line: 352, baseType: !612, size: 32)
!612 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !613, size: 32)
!613 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_Bigint", file: !521, line: 52, size: 192, elements: !614)
!614 = !{!615, !616, !617, !618, !619, !620}
!615 = !DIDerivedType(tag: DW_TAG_member, name: "_next", scope: !613, file: !521, line: 54, baseType: !612, size: 32)
!616 = !DIDerivedType(tag: DW_TAG_member, name: "_k", scope: !613, file: !521, line: 55, baseType: !13, size: 32, offset: 32)
!617 = !DIDerivedType(tag: DW_TAG_member, name: "_maxwds", scope: !613, file: !521, line: 55, baseType: !13, size: 32, offset: 64)
!618 = !DIDerivedType(tag: DW_TAG_member, name: "_sign", scope: !613, file: !521, line: 55, baseType: !13, size: 32, offset: 96)
!619 = !DIDerivedType(tag: DW_TAG_member, name: "_wds", scope: !613, file: !521, line: 55, baseType: !13, size: 32, offset: 128)
!620 = !DIDerivedType(tag: DW_TAG_member, name: "_x", scope: !613, file: !521, line: 56, baseType: !621, size: 32, offset: 160)
!621 = !DICompositeType(tag: DW_TAG_array_type, baseType: !622, size: 32, elements: !495)
!622 = !DIDerivedType(tag: DW_TAG_typedef, name: "__ULong", file: !521, line: 22, baseType: !623)
!623 = !DIBasicType(name: "unsigned long", size: 32, encoding: DW_ATE_unsigned)
!624 = !DIDerivedType(tag: DW_TAG_member, name: "_result_k", scope: !609, file: !521, line: 353, baseType: !13, size: 32, offset: 32)
!625 = !DIDerivedType(tag: DW_TAG_member, name: "_p5s", scope: !609, file: !521, line: 354, baseType: !612, size: 32, offset: 64)
!626 = !DIDerivedType(tag: DW_TAG_member, name: "_freelist", scope: !609, file: !521, line: 355, baseType: !627, size: 32, offset: 96)
!627 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !612, size: 32)
!628 = !DIDerivedType(tag: DW_TAG_member, name: "__cleanup", scope: !520, file: !521, line: 399, baseType: !629, size: 32, offset: 320)
!629 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !630, size: 32)
!630 = !DISubroutineType(types: !631)
!631 = !{null, !519}
!632 = !DIDerivedType(tag: DW_TAG_member, name: "_gamma_signgam", scope: !520, file: !521, line: 401, baseType: !13, size: 32, offset: 352)
!633 = !DIDerivedType(tag: DW_TAG_member, name: "_cvtlen", scope: !520, file: !521, line: 404, baseType: !13, size: 32, offset: 384)
!634 = !DIDerivedType(tag: DW_TAG_member, name: "_cvtbuf", scope: !520, file: !521, line: 405, baseType: !518, size: 32, offset: 416)
!635 = !DIDerivedType(tag: DW_TAG_member, name: "_r48", scope: !520, file: !521, line: 407, baseType: !636, size: 32, offset: 448)
!636 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !637, size: 32)
!637 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_rand48", file: !521, line: 324, size: 192, elements: !638)
!638 = !{!639, !641, !642, !643}
!639 = !DIDerivedType(tag: DW_TAG_member, name: "_seed", scope: !637, file: !521, line: 325, baseType: !640, size: 48)
!640 = !DICompositeType(tag: DW_TAG_array_type, baseType: !132, size: 48, elements: !570)
!641 = !DIDerivedType(tag: DW_TAG_member, name: "_mult", scope: !637, file: !521, line: 326, baseType: !640, size: 48, offset: 48)
!642 = !DIDerivedType(tag: DW_TAG_member, name: "_add", scope: !637, file: !521, line: 327, baseType: !132, size: 16, offset: 96)
!643 = !DIDerivedType(tag: DW_TAG_member, name: "_rand_next", scope: !637, file: !521, line: 330, baseType: !644, size: 64, offset: 128)
!644 = !DIBasicType(name: "unsigned long long", size: 64, encoding: DW_ATE_unsigned)
!645 = !DIDerivedType(tag: DW_TAG_member, name: "_localtime_buf", scope: !520, file: !521, line: 408, baseType: !646, size: 32, offset: 480)
!646 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !647, size: 32)
!647 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__tm", file: !521, line: 60, size: 288, elements: !648)
!648 = !{!649, !650, !651, !652, !653, !654, !655, !656, !657}
!649 = !DIDerivedType(tag: DW_TAG_member, name: "__tm_sec", scope: !647, file: !521, line: 62, baseType: !13, size: 32)
!650 = !DIDerivedType(tag: DW_TAG_member, name: "__tm_min", scope: !647, file: !521, line: 63, baseType: !13, size: 32, offset: 32)
!651 = !DIDerivedType(tag: DW_TAG_member, name: "__tm_hour", scope: !647, file: !521, line: 64, baseType: !13, size: 32, offset: 64)
!652 = !DIDerivedType(tag: DW_TAG_member, name: "__tm_mday", scope: !647, file: !521, line: 65, baseType: !13, size: 32, offset: 96)
!653 = !DIDerivedType(tag: DW_TAG_member, name: "__tm_mon", scope: !647, file: !521, line: 66, baseType: !13, size: 32, offset: 128)
!654 = !DIDerivedType(tag: DW_TAG_member, name: "__tm_year", scope: !647, file: !521, line: 67, baseType: !13, size: 32, offset: 160)
!655 = !DIDerivedType(tag: DW_TAG_member, name: "__tm_wday", scope: !647, file: !521, line: 68, baseType: !13, size: 32, offset: 192)
!656 = !DIDerivedType(tag: DW_TAG_member, name: "__tm_yday", scope: !647, file: !521, line: 69, baseType: !13, size: 32, offset: 224)
!657 = !DIDerivedType(tag: DW_TAG_member, name: "__tm_isdst", scope: !647, file: !521, line: 70, baseType: !13, size: 32, offset: 256)
!658 = !DIDerivedType(tag: DW_TAG_member, name: "_asctime_buf", scope: !520, file: !521, line: 409, baseType: !518, size: 32, offset: 512)
!659 = !DIDerivedType(tag: DW_TAG_member, name: "_sig_func", scope: !520, file: !521, line: 412, baseType: !660, size: 32, offset: 544)
!660 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !661, size: 32)
!661 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !662, size: 32)
!662 = !DISubroutineType(types: !663)
!663 = !{null, !13}
!664 = !DIDerivedType(tag: DW_TAG_member, name: "_atexit", scope: !520, file: !521, line: 416, baseType: !665, size: 32, offset: 576)
!665 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !666, size: 32)
!666 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_atexit", file: !521, line: 90, size: 1120, elements: !667)
!667 = !{!668, !669, !670, !674}
!668 = !DIDerivedType(tag: DW_TAG_member, name: "_next", scope: !666, file: !521, line: 91, baseType: !665, size: 32)
!669 = !DIDerivedType(tag: DW_TAG_member, name: "_ind", scope: !666, file: !521, line: 92, baseType: !13, size: 32, offset: 32)
!670 = !DIDerivedType(tag: DW_TAG_member, name: "_fns", scope: !666, file: !521, line: 93, baseType: !671, size: 1024, offset: 64)
!671 = !DICompositeType(tag: DW_TAG_array_type, baseType: !74, size: 1024, elements: !672)
!672 = !{!673}
!673 = !DISubrange(count: 32)
!674 = !DIDerivedType(tag: DW_TAG_member, name: "_on_exit_args_ptr", scope: !666, file: !521, line: 94, baseType: !675, size: 32, offset: 1088)
!675 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !676, size: 32)
!676 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_on_exit_args", file: !521, line: 79, size: 2112, elements: !677)
!677 = !{!678, !680, !681, !682}
!678 = !DIDerivedType(tag: DW_TAG_member, name: "_fnargs", scope: !676, file: !521, line: 80, baseType: !679, size: 1024)
!679 = !DICompositeType(tag: DW_TAG_array_type, baseType: !153, size: 1024, elements: !672)
!680 = !DIDerivedType(tag: DW_TAG_member, name: "_dso_handle", scope: !676, file: !521, line: 81, baseType: !679, size: 1024, offset: 1024)
!681 = !DIDerivedType(tag: DW_TAG_member, name: "_fntypes", scope: !676, file: !521, line: 83, baseType: !622, size: 32, offset: 2048)
!682 = !DIDerivedType(tag: DW_TAG_member, name: "_is_cxa", scope: !676, file: !521, line: 86, baseType: !622, size: 32, offset: 2080)
!683 = !DIDerivedType(tag: DW_TAG_member, name: "_atexit0", scope: !520, file: !521, line: 417, baseType: !666, size: 1120, offset: 608)
!684 = !DIDerivedType(tag: DW_TAG_member, name: "__sglue", scope: !520, file: !521, line: 420, baseType: !685, size: 96, offset: 1728)
!685 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_glue", file: !521, line: 296, size: 96, elements: !686)
!686 = !{!687, !689, !690}
!687 = !DIDerivedType(tag: DW_TAG_member, name: "_next", scope: !685, file: !521, line: 298, baseType: !688, size: 32)
!688 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !685, size: 32)
!689 = !DIDerivedType(tag: DW_TAG_member, name: "_niobs", scope: !685, file: !521, line: 299, baseType: !13, size: 32, offset: 32)
!690 = !DIDerivedType(tag: DW_TAG_member, name: "_iobs", scope: !685, file: !521, line: 300, baseType: !525, size: 32, offset: 64)
!691 = !DIDerivedType(tag: DW_TAG_member, name: "__sf", scope: !520, file: !521, line: 421, baseType: !525, size: 32, offset: 1824)
!692 = !DIDerivedType(tag: DW_TAG_member, name: "_misc", scope: !520, file: !521, line: 422, baseType: !693, size: 32, offset: 1856)
!693 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !694, size: 32)
!694 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_misc_reent", file: !521, line: 359, size: 640, elements: !695)
!695 = !{!696, !697, !698, !699, !700, !702, !703, !704, !705, !706, !707}
!696 = !DIDerivedType(tag: DW_TAG_member, name: "_strtok_last", scope: !694, file: !521, line: 362, baseType: !518, size: 32)
!697 = !DIDerivedType(tag: DW_TAG_member, name: "_mblen_state", scope: !694, file: !521, line: 363, baseType: !585, size: 64, offset: 32)
!698 = !DIDerivedType(tag: DW_TAG_member, name: "_wctomb_state", scope: !694, file: !521, line: 364, baseType: !585, size: 64, offset: 96)
!699 = !DIDerivedType(tag: DW_TAG_member, name: "_mbtowc_state", scope: !694, file: !521, line: 365, baseType: !585, size: 64, offset: 160)
!700 = !DIDerivedType(tag: DW_TAG_member, name: "_l64a_buf", scope: !694, file: !521, line: 366, baseType: !701, size: 64, offset: 224)
!701 = !DICompositeType(tag: DW_TAG_array_type, baseType: !352, size: 64, elements: !163)
!702 = !DIDerivedType(tag: DW_TAG_member, name: "_getdate_err", scope: !694, file: !521, line: 367, baseType: !13, size: 32, offset: 288)
!703 = !DIDerivedType(tag: DW_TAG_member, name: "_mbrlen_state", scope: !694, file: !521, line: 368, baseType: !585, size: 64, offset: 320)
!704 = !DIDerivedType(tag: DW_TAG_member, name: "_mbrtowc_state", scope: !694, file: !521, line: 369, baseType: !585, size: 64, offset: 384)
!705 = !DIDerivedType(tag: DW_TAG_member, name: "_mbsrtowcs_state", scope: !694, file: !521, line: 370, baseType: !585, size: 64, offset: 448)
!706 = !DIDerivedType(tag: DW_TAG_member, name: "_wcrtomb_state", scope: !694, file: !521, line: 371, baseType: !585, size: 64, offset: 512)
!707 = !DIDerivedType(tag: DW_TAG_member, name: "_wcsrtombs_state", scope: !694, file: !521, line: 372, baseType: !585, size: 64, offset: 576)
!708 = !DIDerivedType(tag: DW_TAG_member, name: "_signal_buf", scope: !520, file: !521, line: 423, baseType: !518, size: 32, offset: 1888)
!709 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !594, line: 46, baseType: !7)
!710 = distinct !DICompileUnit(language: DW_LANG_C99, file: !711, producer: "Ubuntu clang version 14.0.6", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !712, globals: !713, splitDebugInlining: false, nameTableKind: None)
!711 = !DIFile(filename: "syscalls.c", directory: "/home/mjshen/RTOSExploration/Embedded-GUI-for-MT2523/project/mt7687_hdk/hal_examples/wdt_feed_watchdog/GCC")
!712 = !{!518, !516}
!713 = !{!510}
!714 = !{!715, !716, !717, !718}
!715 = !DILocalVariable(name: "r", arg: 1, scope: !512, file: !513, line: 63, type: !519)
!716 = !DILocalVariable(name: "nbytes", arg: 2, scope: !512, file: !513, line: 63, type: !709)
!717 = !DILocalVariable(name: "prev_heap_end", scope: !512, file: !513, line: 67, type: !518)
!718 = !DILocalVariable(name: "stack", scope: !512, file: !513, line: 68, type: !518)
!719 = !DIGlobalVariableExpression(var: !720, expr: !DIExpression())
!720 = distinct !DIGlobalVariable(name: "build_date_time_str", scope: !721, file: !726, line: 4, type: !732, isLocal: false, isDefinition: true)
!721 = distinct !DICompileUnit(language: DW_LANG_C99, file: !722, producer: "Ubuntu clang version 14.0.6", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, globals: !723, splitDebugInlining: false, nameTableKind: None)
!722 = !DIFile(filename: "/home/mjshen/RTOSExploration/Embedded-GUI-for-MT2523/project/mt7687_hdk/hal_examples/wdt_feed_watchdog/GCC/build/middleware/MTK/verno/verno.c", directory: "/home/mjshen/RTOSExploration/Embedded-GUI-for-MT2523/project/mt7687_hdk/hal_examples/wdt_feed_watchdog/GCC")
!723 = !{!719, !724, !730}
!724 = !DIGlobalVariableExpression(var: !725, expr: !DIExpression())
!725 = distinct !DIGlobalVariable(name: "sw_verno_str", scope: !721, file: !726, line: 5, type: !727, isLocal: false, isDefinition: true)
!726 = !DIFile(filename: "build/middleware/MTK/verno/verno.c", directory: "/home/mjshen/RTOSExploration/Embedded-GUI-for-MT2523/project/mt7687_hdk/hal_examples/wdt_feed_watchdog/GCC")
!727 = !DICompositeType(tag: DW_TAG_array_type, baseType: !352, size: 88, elements: !728)
!728 = !{!729}
!729 = !DISubrange(count: 11)
!730 = !DIGlobalVariableExpression(var: !731, expr: !DIExpression())
!731 = distinct !DIGlobalVariable(name: "hw_verno_str", scope: !721, file: !726, line: 6, type: !727, isLocal: false, isDefinition: true)
!732 = !DICompositeType(tag: DW_TAG_array_type, baseType: !352, size: 248, elements: !733)
!733 = !{!734}
!734 = !DISubrange(count: 31)
!735 = distinct !DICompileUnit(language: DW_LANG_C99, file: !736, producer: "Ubuntu clang version 14.0.6", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !737, retainedTypes: !743, splitDebugInlining: false, nameTableKind: None)
!736 = !DIFile(filename: "../../../../../driver/chip/mt7687/src/common/hal_gpio_7687.c", directory: "/home/mjshen/RTOSExploration/Embedded-GUI-for-MT2523/project/mt7687_hdk/hal_examples/wdt_feed_watchdog/GCC")
!737 = !{!738}
!738 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !739, line: 1209, baseType: !7, size: 32, elements: !740)
!739 = !DIFile(filename: "../../../../../driver/chip/mt7687/src/common/include/hal_gpio_7687.h", directory: "/home/mjshen/RTOSExploration/Embedded-GUI-for-MT2523/project/mt7687_hdk/hal_examples/wdt_feed_watchdog/GCC")
!740 = !{!741, !742}
!741 = !DIEnumerator(name: "ePAD_CONTROL_BY_N9", value: 0)
!742 = !DIEnumerator(name: "ePAD_CONTROL_BY_CM4", value: 1)
!743 = !{!58, !60}
!744 = distinct !DICompileUnit(language: DW_LANG_C99, file: !745, producer: "Ubuntu clang version 14.0.6", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !746, retainedTypes: !824, splitDebugInlining: false, nameTableKind: None)
!745 = !DIFile(filename: "../../../../../driver/chip/mt7687/src/common/hal_pinmux.c", directory: "/home/mjshen/RTOSExploration/Embedded-GUI-for-MT2523/project/mt7687_hdk/hal_examples/wdt_feed_watchdog/GCC")
!746 = !{!747}
!747 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !748, line: 150, baseType: !7, size: 32, elements: !749)
!748 = !DIFile(filename: "../../../../../driver/chip/mt7687/src/common/include/hal_pinmux.h", directory: "/home/mjshen/RTOSExploration/Embedded-GUI-for-MT2523/project/mt7687_hdk/hal_examples/wdt_feed_watchdog/GCC")
!749 = !{!750, !751, !752, !753, !754, !755, !756, !757, !758, !759, !760, !761, !762, !763, !764, !765, !766, !767, !768, !769, !770, !771, !772, !773, !774, !775, !776, !777, !778, !779, !780, !781, !782, !783, !784, !785, !786, !787, !788, !789, !790, !791, !792, !793, !794, !795, !796, !797, !798, !799, !800, !801, !802, !803, !804, !805, !806, !807, !808, !809, !810, !811, !812, !813, !814, !815, !816, !817, !818, !819, !820, !821, !822, !823}
!750 = !DIEnumerator(name: "ePAD_ANTSEL0", value: 0)
!751 = !DIEnumerator(name: "ePAD_ANTSEL1", value: 1)
!752 = !DIEnumerator(name: "ePAD_ANTSEL2", value: 2)
!753 = !DIEnumerator(name: "ePAD_ANTSEL3", value: 3)
!754 = !DIEnumerator(name: "ePAD_ANTSEL4", value: 4)
!755 = !DIEnumerator(name: "ePAD_ANTSEL5", value: 5)
!756 = !DIEnumerator(name: "ePAD_ANTSEL6", value: 6)
!757 = !DIEnumerator(name: "ePAD_ANTSEL7", value: 7)
!758 = !DIEnumerator(name: "ePAD_IN_GPIO8", value: 8)
!759 = !DIEnumerator(name: "ePAD_IN_GPIO9", value: 9)
!760 = !DIEnumerator(name: "ePAD_IN_GPIO10", value: 10)
!761 = !DIEnumerator(name: "ePAD_IN_GPIO11", value: 11)
!762 = !DIEnumerator(name: "ePAD_IN_GPIO12", value: 12)
!763 = !DIEnumerator(name: "ePAD_IN_GPIO13", value: 13)
!764 = !DIEnumerator(name: "ePAD_IN_GPIO14", value: 14)
!765 = !DIEnumerator(name: "ePAD_IN_GPIO15", value: 15)
!766 = !DIEnumerator(name: "ePAD_IN_GPIO16", value: 16)
!767 = !DIEnumerator(name: "ePAD_IN_GPIO17", value: 17)
!768 = !DIEnumerator(name: "ePAD_IN_GPIO18", value: 18)
!769 = !DIEnumerator(name: "ePAD_IN_GPIO19", value: 19)
!770 = !DIEnumerator(name: "ePAD_IN_GPIO20", value: 20)
!771 = !DIEnumerator(name: "ePAD_IN_GPIO21", value: 21)
!772 = !DIEnumerator(name: "ePAD_IN_GPIO22", value: 22)
!773 = !DIEnumerator(name: "ePAD_IN_UART0_TXD", value: 23)
!774 = !DIEnumerator(name: "ePAD_PERST_N", value: 24)
!775 = !DIEnumerator(name: "ePAD_WAKE_N", value: 25)
!776 = !DIEnumerator(name: "ePAD_CLK_REQ_N", value: 26)
!777 = !DIEnumerator(name: "ePAD_SDIO_CLK", value: 27)
!778 = !DIEnumerator(name: "ePAD_SDIO_CMD", value: 28)
!779 = !DIEnumerator(name: "ePAD_SDIO_DAT3", value: 29)
!780 = !DIEnumerator(name: "ePAD_SDIO_DAT2", value: 30)
!781 = !DIEnumerator(name: "ePAD_SDIO_DAT1", value: 31)
!782 = !DIEnumerator(name: "ePAD_SDIO_DAT0", value: 32)
!783 = !DIEnumerator(name: "ePAD_GPIO0", value: 33)
!784 = !DIEnumerator(name: "ePAD_GPIO1", value: 34)
!785 = !DIEnumerator(name: "ePAD_UART_DBG", value: 35)
!786 = !DIEnumerator(name: "ePAD_UART_RX", value: 36)
!787 = !DIEnumerator(name: "ePAD_UART_TX", value: 37)
!788 = !DIEnumerator(name: "ePAD_UART_RTS", value: 38)
!789 = !DIEnumerator(name: "ePAD_UART_CTS", value: 39)
!790 = !DIEnumerator(name: "ePAD_IN_GPIO44", value: 40)
!791 = !DIEnumerator(name: "ePAD_IN_GPIO45", value: 41)
!792 = !DIEnumerator(name: "ePAD_IN_GPIO46", value: 42)
!793 = !DIEnumerator(name: "ePAD_IN_GPIO47", value: 43)
!794 = !DIEnumerator(name: "ePAD_IN_GPIO48", value: 44)
!795 = !DIEnumerator(name: "ePAD_IN_GPIO49", value: 45)
!796 = !DIEnumerator(name: "ePAD_IN_GPIO50", value: 46)
!797 = !DIEnumerator(name: "ePAD_IN_GPIO51", value: 47)
!798 = !DIEnumerator(name: "ePAD_IN_GPIO52", value: 48)
!799 = !DIEnumerator(name: "ePAD_IN_GPIO53", value: 49)
!800 = !DIEnumerator(name: "ePAD_IN_GPIO54", value: 50)
!801 = !DIEnumerator(name: "ePAD_IN_PWM2", value: 51)
!802 = !DIEnumerator(name: "ePAD_IN_PWM3", value: 52)
!803 = !DIEnumerator(name: "ePAD_IN_PWM4", value: 53)
!804 = !DIEnumerator(name: "ePAD_IN_PWM5", value: 54)
!805 = !DIEnumerator(name: "ePAD_IN_PWM6", value: 55)
!806 = !DIEnumerator(name: "ePAD_IN_PWM7", value: 56)
!807 = !DIEnumerator(name: "ePAD_WF_RF_DIS_B", value: 57)
!808 = !DIEnumerator(name: "ePAD_BT_RF_DIS_B", value: 58)
!809 = !DIEnumerator(name: "ePAD_WF_LED_B", value: 59)
!810 = !DIEnumerator(name: "ePAD_BT_LED_B", value: 60)
!811 = !DIEnumerator(name: "ePAD_IN_ADC4", value: 61)
!812 = !DIEnumerator(name: "ePAD_IN_ADC5", value: 62)
!813 = !DIEnumerator(name: "ePAD_IN_ADC6", value: 63)
!814 = !DIEnumerator(name: "ePAD_IN_ADC7", value: 64)
!815 = !DIEnumerator(name: "ePAD_IN_ADC8", value: 65)
!816 = !DIEnumerator(name: "ePAD_IN_ADC9", value: 66)
!817 = !DIEnumerator(name: "ePAD_IN_ADC10", value: 67)
!818 = !DIEnumerator(name: "ePAD_IN_ADC11", value: 68)
!819 = !DIEnumerator(name: "ePAD_IN_ADC12", value: 69)
!820 = !DIEnumerator(name: "ePAD_IN_ADC13", value: 70)
!821 = !DIEnumerator(name: "ePAD_IN_ADC14", value: 71)
!822 = !DIEnumerator(name: "ePAD_IN_ADC15", value: 72)
!823 = !DIEnumerator(name: "ePAD_NUM", value: 73)
!824 = !{!58, !80}
!825 = distinct !DICompileUnit(language: DW_LANG_C99, file: !826, producer: "Ubuntu clang version 14.0.6", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !827, retainedTypes: !828, splitDebugInlining: false, nameTableKind: None)
!826 = !DIFile(filename: "../../../../../driver/chip/mt7687/src/common/low_hal_wdt.c", directory: "/home/mjshen/RTOSExploration/Embedded-GUI-for-MT2523/project/mt7687_hdk/hal_examples/wdt_feed_watchdog/GCC")
!827 = !{!11}
!828 = !{!88, !829, !80, !61, !58, !92, !840, !857, !154}
!829 = !DIDerivedType(tag: DW_TAG_typedef, name: "P_IOT_WDT_TypeDef", file: !830, line: 849, baseType: !831)
!830 = !DIFile(filename: "../../../../../driver/CMSIS/Device/MTK/mt7687/Include/mt7687_cm4_hw_memmap.h", directory: "/home/mjshen/RTOSExploration/Embedded-GUI-for-MT2523/project/mt7687_hdk/hal_examples/wdt_feed_watchdog/GCC")
!831 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !832, size: 32)
!832 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IOT_WDT_TypeDef", file: !830, line: 842, size: 192, elements: !833)
!833 = !{!834, !835, !836, !837, !838, !839}
!834 = !DIDerivedType(tag: DW_TAG_member, name: "WDT_MODE", scope: !832, file: !830, line: 843, baseType: !79, size: 32)
!835 = !DIDerivedType(tag: DW_TAG_member, name: "WDT_LENGTH", scope: !832, file: !830, line: 844, baseType: !79, size: 32, offset: 32)
!836 = !DIDerivedType(tag: DW_TAG_member, name: "WDT_RESTART", scope: !832, file: !830, line: 845, baseType: !79, size: 32, offset: 64)
!837 = !DIDerivedType(tag: DW_TAG_member, name: "WDT_STA", scope: !832, file: !830, line: 846, baseType: !79, size: 32, offset: 96)
!838 = !DIDerivedType(tag: DW_TAG_member, name: "WDT_INTERVAL", scope: !832, file: !830, line: 847, baseType: !79, size: 32, offset: 128)
!839 = !DIDerivedType(tag: DW_TAG_member, name: "WDT_SWRST", scope: !832, file: !830, line: 848, baseType: !79, size: 32, offset: 160)
!840 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !841, size: 32)
!841 = !DIDerivedType(tag: DW_TAG_typedef, name: "NVIC_Type", file: !158, line: 378, baseType: !842)
!842 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !158, line: 363, size: 28704, elements: !843)
!843 = !{!844, !845, !846, !847, !848, !849, !850, !851, !852, !853, !854, !855, !856}
!844 = !DIDerivedType(tag: DW_TAG_member, name: "ISER", scope: !842, file: !158, line: 365, baseType: !162, size: 256)
!845 = !DIDerivedType(tag: DW_TAG_member, name: "RESERVED0", scope: !842, file: !158, line: 366, baseType: !166, size: 768, offset: 256)
!846 = !DIDerivedType(tag: DW_TAG_member, name: "ICER", scope: !842, file: !158, line: 367, baseType: !162, size: 256, offset: 1024)
!847 = !DIDerivedType(tag: DW_TAG_member, name: "RSERVED1", scope: !842, file: !158, line: 368, baseType: !166, size: 768, offset: 1280)
!848 = !DIDerivedType(tag: DW_TAG_member, name: "ISPR", scope: !842, file: !158, line: 369, baseType: !162, size: 256, offset: 2048)
!849 = !DIDerivedType(tag: DW_TAG_member, name: "RESERVED2", scope: !842, file: !158, line: 370, baseType: !166, size: 768, offset: 2304)
!850 = !DIDerivedType(tag: DW_TAG_member, name: "ICPR", scope: !842, file: !158, line: 371, baseType: !162, size: 256, offset: 3072)
!851 = !DIDerivedType(tag: DW_TAG_member, name: "RESERVED3", scope: !842, file: !158, line: 372, baseType: !166, size: 768, offset: 3328)
!852 = !DIDerivedType(tag: DW_TAG_member, name: "IABR", scope: !842, file: !158, line: 373, baseType: !162, size: 256, offset: 4096)
!853 = !DIDerivedType(tag: DW_TAG_member, name: "RESERVED4", scope: !842, file: !158, line: 374, baseType: !177, size: 1792, offset: 4352)
!854 = !DIDerivedType(tag: DW_TAG_member, name: "IP", scope: !842, file: !158, line: 375, baseType: !181, size: 1920, offset: 6144)
!855 = !DIDerivedType(tag: DW_TAG_member, name: "RESERVED5", scope: !842, file: !158, line: 376, baseType: !188, size: 20608, offset: 8064)
!856 = !DIDerivedType(tag: DW_TAG_member, name: "STIR", scope: !842, file: !158, line: 377, baseType: !91, size: 32, offset: 28672)
!857 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !858, size: 32)
!858 = !DIDerivedType(tag: DW_TAG_typedef, name: "SCB_Type", file: !158, line: 418, baseType: !859)
!859 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !158, line: 395, size: 1120, elements: !860)
!860 = !{!861, !862, !863, !864, !865, !866, !867, !868, !869, !870, !871, !872, !873, !874, !875, !876, !877, !878, !879, !880, !881}
!861 = !DIDerivedType(tag: DW_TAG_member, name: "CPUID", scope: !859, file: !158, line: 397, baseType: !197, size: 32)
!862 = !DIDerivedType(tag: DW_TAG_member, name: "ICSR", scope: !859, file: !158, line: 398, baseType: !91, size: 32, offset: 32)
!863 = !DIDerivedType(tag: DW_TAG_member, name: "VTOR", scope: !859, file: !158, line: 399, baseType: !91, size: 32, offset: 64)
!864 = !DIDerivedType(tag: DW_TAG_member, name: "AIRCR", scope: !859, file: !158, line: 400, baseType: !91, size: 32, offset: 96)
!865 = !DIDerivedType(tag: DW_TAG_member, name: "SCR", scope: !859, file: !158, line: 401, baseType: !91, size: 32, offset: 128)
!866 = !DIDerivedType(tag: DW_TAG_member, name: "CCR", scope: !859, file: !158, line: 402, baseType: !91, size: 32, offset: 160)
!867 = !DIDerivedType(tag: DW_TAG_member, name: "SHP", scope: !859, file: !158, line: 403, baseType: !204, size: 96, offset: 192)
!868 = !DIDerivedType(tag: DW_TAG_member, name: "SHCSR", scope: !859, file: !158, line: 404, baseType: !91, size: 32, offset: 288)
!869 = !DIDerivedType(tag: DW_TAG_member, name: "CFSR", scope: !859, file: !158, line: 405, baseType: !91, size: 32, offset: 320)
!870 = !DIDerivedType(tag: DW_TAG_member, name: "HFSR", scope: !859, file: !158, line: 406, baseType: !91, size: 32, offset: 352)
!871 = !DIDerivedType(tag: DW_TAG_member, name: "DFSR", scope: !859, file: !158, line: 407, baseType: !91, size: 32, offset: 384)
!872 = !DIDerivedType(tag: DW_TAG_member, name: "MMFAR", scope: !859, file: !158, line: 408, baseType: !91, size: 32, offset: 416)
!873 = !DIDerivedType(tag: DW_TAG_member, name: "BFAR", scope: !859, file: !158, line: 409, baseType: !91, size: 32, offset: 448)
!874 = !DIDerivedType(tag: DW_TAG_member, name: "AFSR", scope: !859, file: !158, line: 410, baseType: !91, size: 32, offset: 480)
!875 = !DIDerivedType(tag: DW_TAG_member, name: "PFR", scope: !859, file: !158, line: 411, baseType: !215, size: 64, offset: 512)
!876 = !DIDerivedType(tag: DW_TAG_member, name: "DFR", scope: !859, file: !158, line: 412, baseType: !197, size: 32, offset: 576)
!877 = !DIDerivedType(tag: DW_TAG_member, name: "ADR", scope: !859, file: !158, line: 413, baseType: !197, size: 32, offset: 608)
!878 = !DIDerivedType(tag: DW_TAG_member, name: "MMFR", scope: !859, file: !158, line: 414, baseType: !221, size: 128, offset: 640)
!879 = !DIDerivedType(tag: DW_TAG_member, name: "ISAR", scope: !859, file: !158, line: 415, baseType: !225, size: 160, offset: 768)
!880 = !DIDerivedType(tag: DW_TAG_member, name: "RESERVED0", scope: !859, file: !158, line: 416, baseType: !229, size: 160, offset: 928)
!881 = !DIDerivedType(tag: DW_TAG_member, name: "CPACR", scope: !859, file: !158, line: 417, baseType: !91, size: 32, offset: 1088)
!882 = distinct !DICompileUnit(language: DW_LANG_C99, file: !883, producer: "Ubuntu clang version 14.0.6", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !884, splitDebugInlining: false, nameTableKind: None)
!883 = !DIFile(filename: "../../../../../driver/chip/mt7687/src/common/nvic.c", directory: "/home/mjshen/RTOSExploration/Embedded-GUI-for-MT2523/project/mt7687_hdk/hal_examples/wdt_feed_watchdog/GCC")
!884 = !{!885, !910}
!885 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !886, size: 32)
!886 = !DIDerivedType(tag: DW_TAG_typedef, name: "SCB_Type", file: !158, line: 418, baseType: !887)
!887 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !158, line: 395, size: 1120, elements: !888)
!888 = !{!889, !890, !891, !892, !893, !894, !895, !896, !897, !898, !899, !900, !901, !902, !903, !904, !905, !906, !907, !908, !909}
!889 = !DIDerivedType(tag: DW_TAG_member, name: "CPUID", scope: !887, file: !158, line: 397, baseType: !197, size: 32)
!890 = !DIDerivedType(tag: DW_TAG_member, name: "ICSR", scope: !887, file: !158, line: 398, baseType: !91, size: 32, offset: 32)
!891 = !DIDerivedType(tag: DW_TAG_member, name: "VTOR", scope: !887, file: !158, line: 399, baseType: !91, size: 32, offset: 64)
!892 = !DIDerivedType(tag: DW_TAG_member, name: "AIRCR", scope: !887, file: !158, line: 400, baseType: !91, size: 32, offset: 96)
!893 = !DIDerivedType(tag: DW_TAG_member, name: "SCR", scope: !887, file: !158, line: 401, baseType: !91, size: 32, offset: 128)
!894 = !DIDerivedType(tag: DW_TAG_member, name: "CCR", scope: !887, file: !158, line: 402, baseType: !91, size: 32, offset: 160)
!895 = !DIDerivedType(tag: DW_TAG_member, name: "SHP", scope: !887, file: !158, line: 403, baseType: !204, size: 96, offset: 192)
!896 = !DIDerivedType(tag: DW_TAG_member, name: "SHCSR", scope: !887, file: !158, line: 404, baseType: !91, size: 32, offset: 288)
!897 = !DIDerivedType(tag: DW_TAG_member, name: "CFSR", scope: !887, file: !158, line: 405, baseType: !91, size: 32, offset: 320)
!898 = !DIDerivedType(tag: DW_TAG_member, name: "HFSR", scope: !887, file: !158, line: 406, baseType: !91, size: 32, offset: 352)
!899 = !DIDerivedType(tag: DW_TAG_member, name: "DFSR", scope: !887, file: !158, line: 407, baseType: !91, size: 32, offset: 384)
!900 = !DIDerivedType(tag: DW_TAG_member, name: "MMFAR", scope: !887, file: !158, line: 408, baseType: !91, size: 32, offset: 416)
!901 = !DIDerivedType(tag: DW_TAG_member, name: "BFAR", scope: !887, file: !158, line: 409, baseType: !91, size: 32, offset: 448)
!902 = !DIDerivedType(tag: DW_TAG_member, name: "AFSR", scope: !887, file: !158, line: 410, baseType: !91, size: 32, offset: 480)
!903 = !DIDerivedType(tag: DW_TAG_member, name: "PFR", scope: !887, file: !158, line: 411, baseType: !215, size: 64, offset: 512)
!904 = !DIDerivedType(tag: DW_TAG_member, name: "DFR", scope: !887, file: !158, line: 412, baseType: !197, size: 32, offset: 576)
!905 = !DIDerivedType(tag: DW_TAG_member, name: "ADR", scope: !887, file: !158, line: 413, baseType: !197, size: 32, offset: 608)
!906 = !DIDerivedType(tag: DW_TAG_member, name: "MMFR", scope: !887, file: !158, line: 414, baseType: !221, size: 128, offset: 640)
!907 = !DIDerivedType(tag: DW_TAG_member, name: "ISAR", scope: !887, file: !158, line: 415, baseType: !225, size: 160, offset: 768)
!908 = !DIDerivedType(tag: DW_TAG_member, name: "RESERVED0", scope: !887, file: !158, line: 416, baseType: !229, size: 160, offset: 928)
!909 = !DIDerivedType(tag: DW_TAG_member, name: "CPACR", scope: !887, file: !158, line: 417, baseType: !91, size: 32, offset: 1088)
!910 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !911, size: 32)
!911 = !DIDerivedType(tag: DW_TAG_typedef, name: "NVIC_Type", file: !158, line: 378, baseType: !912)
!912 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !158, line: 363, size: 28704, elements: !913)
!913 = !{!914, !915, !916, !917, !918, !919, !920, !921, !922, !923, !924, !925, !926}
!914 = !DIDerivedType(tag: DW_TAG_member, name: "ISER", scope: !912, file: !158, line: 365, baseType: !162, size: 256)
!915 = !DIDerivedType(tag: DW_TAG_member, name: "RESERVED0", scope: !912, file: !158, line: 366, baseType: !166, size: 768, offset: 256)
!916 = !DIDerivedType(tag: DW_TAG_member, name: "ICER", scope: !912, file: !158, line: 367, baseType: !162, size: 256, offset: 1024)
!917 = !DIDerivedType(tag: DW_TAG_member, name: "RSERVED1", scope: !912, file: !158, line: 368, baseType: !166, size: 768, offset: 1280)
!918 = !DIDerivedType(tag: DW_TAG_member, name: "ISPR", scope: !912, file: !158, line: 369, baseType: !162, size: 256, offset: 2048)
!919 = !DIDerivedType(tag: DW_TAG_member, name: "RESERVED2", scope: !912, file: !158, line: 370, baseType: !166, size: 768, offset: 2304)
!920 = !DIDerivedType(tag: DW_TAG_member, name: "ICPR", scope: !912, file: !158, line: 371, baseType: !162, size: 256, offset: 3072)
!921 = !DIDerivedType(tag: DW_TAG_member, name: "RESERVED3", scope: !912, file: !158, line: 372, baseType: !166, size: 768, offset: 3328)
!922 = !DIDerivedType(tag: DW_TAG_member, name: "IABR", scope: !912, file: !158, line: 373, baseType: !162, size: 256, offset: 4096)
!923 = !DIDerivedType(tag: DW_TAG_member, name: "RESERVED4", scope: !912, file: !158, line: 374, baseType: !177, size: 1792, offset: 4352)
!924 = !DIDerivedType(tag: DW_TAG_member, name: "IP", scope: !912, file: !158, line: 375, baseType: !181, size: 1920, offset: 6144)
!925 = !DIDerivedType(tag: DW_TAG_member, name: "RESERVED5", scope: !912, file: !158, line: 376, baseType: !188, size: 20608, offset: 8064)
!926 = !DIDerivedType(tag: DW_TAG_member, name: "STIR", scope: !912, file: !158, line: 377, baseType: !91, size: 32, offset: 28672)
!927 = distinct !DICompileUnit(language: DW_LANG_C99, file: !928, producer: "Ubuntu clang version 14.0.6", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !929, splitDebugInlining: false, nameTableKind: None)
!928 = !DIFile(filename: "../../../../../driver/chip/mt7687/src/common/pinmux.c", directory: "/home/mjshen/RTOSExploration/Embedded-GUI-for-MT2523/project/mt7687_hdk/hal_examples/wdt_feed_watchdog/GCC")
!929 = !{!930, !747}
!930 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !931, line: 55, baseType: !7, size: 32, elements: !932)
!931 = !DIFile(filename: "../../../../../driver/chip/mt7687/src/common/include/pinmux.h", directory: "/home/mjshen/RTOSExploration/Embedded-GUI-for-MT2523/project/mt7687_hdk/hal_examples/wdt_feed_watchdog/GCC")
!932 = !{!933, !934, !935, !936, !937, !938, !939, !940, !941, !942, !943, !944, !945, !946, !947, !948, !949, !950, !951, !952, !953, !954, !955, !956, !957, !958, !959, !960}
!933 = !DIEnumerator(name: "eIOT_GPIO_IDX_0", value: 0)
!934 = !DIEnumerator(name: "eIOT_GPIO_IDX_1", value: 1)
!935 = !DIEnumerator(name: "eIOT_GPIO_IDX_2", value: 2)
!936 = !DIEnumerator(name: "eIOT_GPIO_IDX_3", value: 3)
!937 = !DIEnumerator(name: "eIOT_GPIO_IDX_4", value: 4)
!938 = !DIEnumerator(name: "eIOT_GPIO_IDX_5", value: 5)
!939 = !DIEnumerator(name: "eIOT_GPIO_IDX_6", value: 6)
!940 = !DIEnumerator(name: "eIOT_GPIO_IDX_7", value: 7)
!941 = !DIEnumerator(name: "eIOT_GPIO_IDX_24", value: 24)
!942 = !DIEnumerator(name: "eIOT_GPIO_IDX_25", value: 25)
!943 = !DIEnumerator(name: "eIOT_GPIO_IDX_26", value: 26)
!944 = !DIEnumerator(name: "eIOT_GPIO_IDX_27", value: 27)
!945 = !DIEnumerator(name: "eIOT_GPIO_IDX_28", value: 28)
!946 = !DIEnumerator(name: "eIOT_GPIO_IDX_29", value: 29)
!947 = !DIEnumerator(name: "eIOT_GPIO_IDX_30", value: 30)
!948 = !DIEnumerator(name: "eIOT_GPIO_IDX_31", value: 31)
!949 = !DIEnumerator(name: "eIOT_GPIO_IDX_32", value: 32)
!950 = !DIEnumerator(name: "eIOT_GPIO_IDX_33", value: 33)
!951 = !DIEnumerator(name: "eIOT_GPIO_IDX_34", value: 34)
!952 = !DIEnumerator(name: "eIOT_GPIO_IDX_35", value: 35)
!953 = !DIEnumerator(name: "eIOT_GPIO_IDX_36", value: 36)
!954 = !DIEnumerator(name: "eIOT_GPIO_IDX_37", value: 37)
!955 = !DIEnumerator(name: "eIOT_GPIO_IDX_38", value: 38)
!956 = !DIEnumerator(name: "eIOT_GPIO_IDX_39", value: 39)
!957 = !DIEnumerator(name: "eIOT_GPIO_IDX_57", value: 57)
!958 = !DIEnumerator(name: "eIOT_GPIO_IDX_58", value: 58)
!959 = !DIEnumerator(name: "eIOT_GPIO_IDX_59", value: 59)
!960 = !DIEnumerator(name: "eIOT_GPIO_IDX_60", value: 60)
!961 = distinct !DICompileUnit(language: DW_LANG_C99, file: !962, producer: "Ubuntu clang version 14.0.6", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !963, splitDebugInlining: false, nameTableKind: None)
!962 = !DIFile(filename: "../../../../../driver/chip/mt7687/src/common/timer.c", directory: "/home/mjshen/RTOSExploration/Embedded-GUI-for-MT2523/project/mt7687_hdk/hal_examples/wdt_feed_watchdog/GCC")
!963 = !{!560, !58}
!964 = distinct !DICompileUnit(language: DW_LANG_C99, file: !965, producer: "Ubuntu clang version 14.0.6", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!965 = !DIFile(filename: "../../../../../driver/chip/mt7687/src/hal_log.c", directory: "/home/mjshen/RTOSExploration/Embedded-GUI-for-MT2523/project/mt7687_hdk/hal_examples/wdt_feed_watchdog/GCC")
!966 = distinct !DICompileUnit(language: DW_LANG_C99, file: !967, producer: "Ubuntu clang version 14.0.6", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !968, retainedTypes: !1032, splitDebugInlining: false, nameTableKind: None)
!967 = !DIFile(filename: "../../../../../driver/chip/mt7687/src/hal_gpio.c", directory: "/home/mjshen/RTOSExploration/Embedded-GUI-for-MT2523/project/mt7687_hdk/hal_examples/wdt_feed_watchdog/GCC")
!968 = !{!969, !976, !930, !1007, !1013, !1017, !1021, !1027}
!969 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !970, line: 233, baseType: !13, size: 32, elements: !971)
!970 = !DIFile(filename: "../../../../../driver/chip/inc/hal_gpio.h", directory: "/home/mjshen/RTOSExploration/Embedded-GUI-for-MT2523/project/mt7687_hdk/hal_examples/wdt_feed_watchdog/GCC")
!971 = !{!972, !973, !974, !975}
!972 = !DIEnumerator(name: "HAL_PINMUX_STATUS_ERROR", value: -3)
!973 = !DIEnumerator(name: "HAL_PINMUX_STATUS_ERROR_PORT", value: -2)
!974 = !DIEnumerator(name: "HAL_PINMUX_STATUS_INVALID_FUNCTION", value: -1)
!975 = !DIEnumerator(name: "HAL_PINMUX_STATUS_OK", value: 0)
!976 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !257, line: 249, baseType: !7, size: 32, elements: !977)
!977 = !{!978, !979, !980, !981, !982, !983, !984, !985, !986, !987, !988, !989, !990, !991, !992, !993, !994, !995, !996, !997, !998, !999, !1000, !1001, !1002, !1003, !1004, !1005, !1006}
!978 = !DIEnumerator(name: "HAL_GPIO_0", value: 0)
!979 = !DIEnumerator(name: "HAL_GPIO_1", value: 1)
!980 = !DIEnumerator(name: "HAL_GPIO_2", value: 2)
!981 = !DIEnumerator(name: "HAL_GPIO_3", value: 3)
!982 = !DIEnumerator(name: "HAL_GPIO_4", value: 4)
!983 = !DIEnumerator(name: "HAL_GPIO_5", value: 5)
!984 = !DIEnumerator(name: "HAL_GPIO_6", value: 6)
!985 = !DIEnumerator(name: "HAL_GPIO_7", value: 7)
!986 = !DIEnumerator(name: "HAL_GPIO_24", value: 24)
!987 = !DIEnumerator(name: "HAL_GPIO_25", value: 25)
!988 = !DIEnumerator(name: "HAL_GPIO_26", value: 26)
!989 = !DIEnumerator(name: "HAL_GPIO_27", value: 27)
!990 = !DIEnumerator(name: "HAL_GPIO_28", value: 28)
!991 = !DIEnumerator(name: "HAL_GPIO_29", value: 29)
!992 = !DIEnumerator(name: "HAL_GPIO_30", value: 30)
!993 = !DIEnumerator(name: "HAL_GPIO_31", value: 31)
!994 = !DIEnumerator(name: "HAL_GPIO_32", value: 32)
!995 = !DIEnumerator(name: "HAL_GPIO_33", value: 33)
!996 = !DIEnumerator(name: "HAL_GPIO_34", value: 34)
!997 = !DIEnumerator(name: "HAL_GPIO_35", value: 35)
!998 = !DIEnumerator(name: "HAL_GPIO_36", value: 36)
!999 = !DIEnumerator(name: "HAL_GPIO_37", value: 37)
!1000 = !DIEnumerator(name: "HAL_GPIO_38", value: 38)
!1001 = !DIEnumerator(name: "HAL_GPIO_39", value: 39)
!1002 = !DIEnumerator(name: "HAL_GPIO_57", value: 57)
!1003 = !DIEnumerator(name: "HAL_GPIO_58", value: 58)
!1004 = !DIEnumerator(name: "HAL_GPIO_59", value: 59)
!1005 = !DIEnumerator(name: "HAL_GPIO_60", value: 60)
!1006 = !DIEnumerator(name: "HAL_GPIO_MAX", value: 61)
!1007 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !970, line: 224, baseType: !13, size: 32, elements: !1008)
!1008 = !{!1009, !1010, !1011, !1012}
!1009 = !DIEnumerator(name: "HAL_GPIO_STATUS_ERROR", value: -3)
!1010 = !DIEnumerator(name: "HAL_GPIO_STATUS_ERROR_PIN", value: -2)
!1011 = !DIEnumerator(name: "HAL_GPIO_STATUS_INVALID_PARAMETER", value: -1)
!1012 = !DIEnumerator(name: "HAL_GPIO_STATUS_OK", value: 0)
!1013 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !970, line: 217, baseType: !7, size: 32, elements: !1014)
!1014 = !{!1015, !1016}
!1015 = !DIEnumerator(name: "HAL_GPIO_DATA_LOW", value: 0)
!1016 = !DIEnumerator(name: "HAL_GPIO_DATA_HIGH", value: 1)
!1017 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !970, line: 210, baseType: !7, size: 32, elements: !1018)
!1018 = !{!1019, !1020}
!1019 = !DIEnumerator(name: "HAL_GPIO_DIRECTION_INPUT", value: 0)
!1020 = !DIEnumerator(name: "HAL_GPIO_DIRECTION_OUTPUT", value: 1)
!1021 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !970, line: 242, baseType: !7, size: 32, elements: !1022)
!1022 = !{!1023, !1024, !1025, !1026}
!1023 = !DIEnumerator(name: "HAL_GPIO_DRIVING_CURRENT_4MA", value: 0)
!1024 = !DIEnumerator(name: "HAL_GPIO_DRIVING_CURRENT_8MA", value: 1)
!1025 = !DIEnumerator(name: "HAL_GPIO_DRIVING_CURRENT_12MA", value: 2)
!1026 = !DIEnumerator(name: "HAL_GPIO_DRIVING_CURRENT_16MA", value: 3)
!1027 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !1028, line: 57, baseType: !7, size: 32, elements: !1029)
!1028 = !DIFile(filename: "../../../../../driver/chip/mt7687/src/common/include/low_hal_gpio.h", directory: "/home/mjshen/RTOSExploration/Embedded-GUI-for-MT2523/project/mt7687_hdk/hal_examples/wdt_feed_watchdog/GCC")
!1029 = !{!1030, !1031}
!1030 = !DIEnumerator(name: "eDirection_IN", value: 0)
!1031 = !DIEnumerator(name: "eDirection_OUT", value: 1)
!1032 = !{!1033, !153, !1034, !183, !1035, !1036}
!1033 = !DIDerivedType(tag: DW_TAG_typedef, name: "ENUM_IOT_GPIO_NAME_T", file: !931, line: 87, baseType: !930)
!1034 = !DIDerivedType(tag: DW_TAG_typedef, name: "hal_gpio_data_t", file: !970, line: 220, baseType: !1013)
!1035 = !DIDerivedType(tag: DW_TAG_typedef, name: "hal_gpio_driving_current_t", file: !970, line: 247, baseType: !1021)
!1036 = !DIDerivedType(tag: DW_TAG_typedef, name: "ENUM_DIR_T", file: !1028, line: 60, baseType: !1027)
!1037 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1038, producer: "Ubuntu clang version 14.0.6", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !1039, splitDebugInlining: false, nameTableKind: None)
!1038 = !DIFile(filename: "../../../../../project/mt7687_hdk/hal_examples/wdt_feed_watchdog/src/main.c", directory: "/home/mjshen/RTOSExploration/Embedded-GUI-for-MT2523/project/mt7687_hdk/hal_examples/wdt_feed_watchdog/GCC")
!1039 = !{!310, !315, !331, !337, !341, !976, !418, !412}
!1040 = !{!"Ubuntu clang version 14.0.6"}
!1041 = !{i32 7, !"Dwarf Version", i32 2}
!1042 = !{i32 2, !"Debug Info Version", i32 3}
!1043 = !{i32 1, !"wchar_size", i32 4}
!1044 = !{i32 1, !"min_enum_size", i32 4}
!1045 = !{i32 1, !"branch-target-enforcement", i32 0}
!1046 = !{i32 1, !"sign-return-address", i32 0}
!1047 = !{i32 1, !"sign-return-address-all", i32 0}
!1048 = !{i32 1, !"sign-return-address-with-bkey", i32 0}
!1049 = !{i32 7, !"frame-pointer", i32 2}
!1050 = distinct !DISubprogram(name: "GPT_ResetTimer", scope: !3, file: !3, line: 73, type: !1051, scopeLine: 74, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1053)
!1051 = !DISubroutineType(types: !1052)
!1052 = !{null, !60, !60, !296}
!1053 = !{!1054, !1055, !1056}
!1054 = !DILocalVariable(name: "timerNum", arg: 1, scope: !1050, file: !3, line: 73, type: !60)
!1055 = !DILocalVariable(name: "countValue", arg: 2, scope: !1050, file: !3, line: 73, type: !60)
!1056 = !DILocalVariable(name: "autoRepeat", arg: 3, scope: !1050, file: !3, line: 73, type: !296)
!1057 = !DILocation(line: 0, scope: !1050)
!1058 = !DILocation(line: 75, column: 5, scope: !1059)
!1059 = distinct !DILexicalBlock(scope: !1050, file: !3, line: 75, column: 5)
!1060 = !DILocation(line: 75, column: 5, scope: !1050)
!1061 = !DILocation(line: 75, column: 5, scope: !1062)
!1062 = distinct !DILexicalBlock(scope: !1059, file: !3, line: 75, column: 5)
!1063 = distinct !{!1063, !1061, !1061}
!1064 = !DILocation(line: 77, column: 9, scope: !1050)
!1065 = !DILocation(line: 78, column: 30, scope: !1066)
!1066 = distinct !DILexicalBlock(scope: !1067, file: !3, line: 77, column: 24)
!1067 = distinct !DILexicalBlock(scope: !1050, file: !3, line: 77, column: 9)
!1068 = !DILocation(line: 0, scope: !1069)
!1069 = distinct !DILexicalBlock(scope: !1066, file: !3, line: 79, column: 13)
!1070 = !DILocation(line: 79, column: 13, scope: !1066)
!1071 = !DILocation(line: 80, column: 34, scope: !1072)
!1072 = distinct !DILexicalBlock(scope: !1069, file: !3, line: 79, column: 37)
!1073 = !DILocation(line: 81, column: 9, scope: !1072)
!1074 = !DILocation(line: 82, column: 34, scope: !1075)
!1075 = distinct !DILexicalBlock(scope: !1069, file: !3, line: 81, column: 16)
!1076 = !DILocation(line: 85, column: 30, scope: !1077)
!1077 = distinct !DILexicalBlock(scope: !1078, file: !3, line: 84, column: 31)
!1078 = distinct !DILexicalBlock(scope: !1067, file: !3, line: 84, column: 16)
!1079 = !DILocation(line: 0, scope: !1080)
!1080 = distinct !DILexicalBlock(scope: !1077, file: !3, line: 86, column: 13)
!1081 = !DILocation(line: 86, column: 13, scope: !1077)
!1082 = !DILocation(line: 87, column: 34, scope: !1083)
!1083 = distinct !DILexicalBlock(scope: !1080, file: !3, line: 86, column: 37)
!1084 = !DILocation(line: 88, column: 9, scope: !1083)
!1085 = !DILocation(line: 89, column: 34, scope: !1086)
!1086 = distinct !DILexicalBlock(scope: !1080, file: !3, line: 88, column: 16)
!1087 = !DILocation(line: 92, column: 1, scope: !1050)
!1088 = distinct !DISubprogram(name: "GPT_Start", scope: !3, file: !3, line: 94, type: !1089, scopeLine: 95, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1091)
!1089 = !DISubroutineType(types: !1090)
!1090 = !{null, !60}
!1091 = !{!1092}
!1092 = !DILocalVariable(name: "timerNum", arg: 1, scope: !1088, file: !3, line: 94, type: !60)
!1093 = !DILocation(line: 0, scope: !1088)
!1094 = !DILocation(line: 96, column: 5, scope: !1088)
!1095 = !DILocation(line: 96, column: 5, scope: !1096)
!1096 = distinct !DILexicalBlock(scope: !1097, file: !3, line: 96, column: 5)
!1097 = distinct !DILexicalBlock(scope: !1088, file: !3, line: 96, column: 5)
!1098 = distinct !{!1098, !1095, !1095}
!1099 = !DILocation(line: 99, column: 30, scope: !1100)
!1100 = distinct !DILexicalBlock(scope: !1101, file: !3, line: 98, column: 24)
!1101 = distinct !DILexicalBlock(scope: !1088, file: !3, line: 98, column: 9)
!1102 = !DILocation(line: 100, column: 9, scope: !1100)
!1103 = !DILocation(line: 101, column: 5, scope: !1100)
!1104 = !DILocation(line: 102, column: 30, scope: !1105)
!1105 = distinct !DILexicalBlock(scope: !1106, file: !3, line: 101, column: 31)
!1106 = distinct !DILexicalBlock(scope: !1101, file: !3, line: 101, column: 16)
!1107 = !DILocation(line: 103, column: 9, scope: !1105)
!1108 = !DILocation(line: 104, column: 5, scope: !1105)
!1109 = !DILocation(line: 105, column: 30, scope: !1110)
!1110 = distinct !DILexicalBlock(scope: !1111, file: !3, line: 104, column: 31)
!1111 = distinct !DILexicalBlock(scope: !1106, file: !3, line: 104, column: 16)
!1112 = !DILocation(line: 106, column: 5, scope: !1110)
!1113 = !DILocation(line: 108, column: 1, scope: !1088)
!1114 = distinct !DISubprogram(name: "GPT_Stop", scope: !3, file: !3, line: 110, type: !1089, scopeLine: 111, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1115)
!1115 = !{!1116}
!1116 = !DILocalVariable(name: "timerNum", arg: 1, scope: !1114, file: !3, line: 110, type: !60)
!1117 = !DILocation(line: 0, scope: !1114)
!1118 = !DILocation(line: 112, column: 9, scope: !1114)
!1119 = !DILocation(line: 113, column: 30, scope: !1120)
!1120 = distinct !DILexicalBlock(scope: !1121, file: !3, line: 112, column: 24)
!1121 = distinct !DILexicalBlock(scope: !1114, file: !3, line: 112, column: 9)
!1122 = !DILocation(line: 114, column: 30, scope: !1120)
!1123 = !DILocation(line: 115, column: 31, scope: !1120)
!1124 = !DILocation(line: 117, column: 5, scope: !1120)
!1125 = !DILocation(line: 118, column: 30, scope: !1126)
!1126 = distinct !DILexicalBlock(scope: !1127, file: !3, line: 117, column: 31)
!1127 = distinct !DILexicalBlock(scope: !1121, file: !3, line: 117, column: 16)
!1128 = !DILocation(line: 119, column: 30, scope: !1126)
!1129 = !DILocation(line: 120, column: 31, scope: !1126)
!1130 = !DILocation(line: 121, column: 5, scope: !1126)
!1131 = !DILocation(line: 122, column: 30, scope: !1132)
!1132 = distinct !DILexicalBlock(scope: !1133, file: !3, line: 121, column: 31)
!1133 = distinct !DILexicalBlock(scope: !1127, file: !3, line: 121, column: 16)
!1134 = !DILocation(line: 123, column: 5, scope: !1132)
!1135 = !DILocation(line: 124, column: 30, scope: !1136)
!1136 = distinct !DILexicalBlock(scope: !1137, file: !3, line: 123, column: 31)
!1137 = distinct !DILexicalBlock(scope: !1133, file: !3, line: 123, column: 16)
!1138 = !DILocation(line: 125, column: 5, scope: !1136)
!1139 = !DILocation(line: 128, column: 1, scope: !1114)
!1140 = distinct !DISubprogram(name: "GPT_INT_Handler", scope: !3, file: !3, line: 130, type: !238, scopeLine: 131, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1141)
!1141 = !{!1142, !1143}
!1142 = !DILocalVariable(name: "irq_number", arg: 1, scope: !1140, file: !3, line: 130, type: !152)
!1143 = !DILocalVariable(name: "GPT_Status", scope: !1140, file: !3, line: 132, type: !131)
!1144 = !DILocation(line: 0, scope: !1140)
!1145 = !DILocation(line: 135, column: 18, scope: !1140)
!1146 = !DILocation(line: 136, column: 26, scope: !1140)
!1147 = !DILocation(line: 136, column: 24, scope: !1140)
!1148 = !DILocation(line: 138, column: 20, scope: !1149)
!1149 = distinct !DILexicalBlock(scope: !1140, file: !3, line: 138, column: 9)
!1150 = !DILocation(line: 138, column: 9, scope: !1140)
!1151 = !DILocation(line: 141, column: 27, scope: !1152)
!1152 = distinct !DILexicalBlock(scope: !1149, file: !3, line: 141, column: 16)
!1153 = !DILocation(line: 141, column: 16, scope: !1149)
!1154 = !DILocation(line: 0, scope: !1149)
!1155 = !DILocation(line: 145, column: 1, scope: !1140)
!1156 = distinct !DISubprogram(name: "GPT_init", scope: !3, file: !3, line: 147, type: !1157, scopeLine: 148, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1159)
!1157 = !DISubroutineType(types: !1158)
!1158 = !{null, !60, !60, !74}
!1159 = !{!1160, !1161, !1162}
!1160 = !DILocalVariable(name: "timerNum", arg: 1, scope: !1156, file: !3, line: 147, type: !60)
!1161 = !DILocalVariable(name: "speed_32us", arg: 2, scope: !1156, file: !3, line: 147, type: !60)
!1162 = !DILocalVariable(name: "GPT_Callback", arg: 3, scope: !1156, file: !3, line: 147, type: !74)
!1163 = !DILocation(line: 0, scope: !1156)
!1164 = !DILocation(line: 149, column: 5, scope: !1156)
!1165 = !DILocation(line: 149, column: 5, scope: !1166)
!1166 = distinct !DILexicalBlock(scope: !1167, file: !3, line: 149, column: 5)
!1167 = distinct !DILexicalBlock(scope: !1156, file: !3, line: 149, column: 5)
!1168 = distinct !{!1168, !1165, !1165}
!1169 = !DILocation(line: 149, column: 5, scope: !1167)
!1170 = !DILocation(line: 151, column: 23, scope: !1171)
!1171 = distinct !DILexicalBlock(scope: !1156, file: !3, line: 151, column: 9)
!1172 = !DILocation(line: 152, column: 9, scope: !1173)
!1173 = distinct !DILexicalBlock(scope: !1171, file: !3, line: 151, column: 41)
!1174 = !DILocation(line: 153, column: 9, scope: !1173)
!1175 = !DILocation(line: 154, column: 9, scope: !1173)
!1176 = !DILocation(line: 155, column: 5, scope: !1173)
!1177 = !DILocation(line: 157, column: 9, scope: !1156)
!1178 = !DILocation(line: 158, column: 37, scope: !1179)
!1179 = distinct !DILexicalBlock(scope: !1180, file: !3, line: 157, column: 24)
!1180 = distinct !DILexicalBlock(scope: !1156, file: !3, line: 157, column: 9)
!1181 = !DILocation(line: 159, column: 30, scope: !1179)
!1182 = !DILocation(line: 160, column: 45, scope: !1179)
!1183 = !DILocation(line: 160, column: 30, scope: !1179)
!1184 = !DILocation(line: 161, column: 5, scope: !1179)
!1185 = !DILocation(line: 162, column: 37, scope: !1186)
!1186 = distinct !DILexicalBlock(scope: !1187, file: !3, line: 161, column: 31)
!1187 = distinct !DILexicalBlock(scope: !1180, file: !3, line: 161, column: 16)
!1188 = !DILocation(line: 163, column: 30, scope: !1186)
!1189 = !DILocation(line: 164, column: 45, scope: !1186)
!1190 = !DILocation(line: 164, column: 30, scope: !1186)
!1191 = !DILocation(line: 165, column: 5, scope: !1186)
!1192 = !DILocation(line: 166, column: 59, scope: !1193)
!1193 = distinct !DILexicalBlock(scope: !1194, file: !3, line: 165, column: 31)
!1194 = distinct !DILexicalBlock(scope: !1187, file: !3, line: 165, column: 16)
!1195 = !DILocation(line: 166, column: 45, scope: !1193)
!1196 = !DILocation(line: 166, column: 30, scope: !1193)
!1197 = !DILocation(line: 167, column: 5, scope: !1193)
!1198 = !DILocation(line: 168, column: 59, scope: !1199)
!1199 = distinct !DILexicalBlock(scope: !1200, file: !3, line: 167, column: 31)
!1200 = distinct !DILexicalBlock(scope: !1194, file: !3, line: 167, column: 16)
!1201 = !DILocation(line: 168, column: 45, scope: !1199)
!1202 = !DILocation(line: 168, column: 30, scope: !1199)
!1203 = !DILocation(line: 169, column: 30, scope: !1199)
!1204 = !DILocation(line: 170, column: 5, scope: !1199)
!1205 = !DILocation(line: 171, column: 1, scope: !1156)
!1206 = distinct !DISubprogram(name: "GPT_return_current_count", scope: !3, file: !3, line: 173, type: !1207, scopeLine: 174, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1209)
!1207 = !DISubroutineType(types: !1208)
!1208 = !{!60, !60}
!1209 = !{!1210, !1211}
!1210 = !DILocalVariable(name: "timerNum", arg: 1, scope: !1206, file: !3, line: 173, type: !60)
!1211 = !DILocalVariable(name: "current_count", scope: !1206, file: !3, line: 175, type: !60)
!1212 = !DILocation(line: 0, scope: !1206)
!1213 = !DILocation(line: 177, column: 5, scope: !1206)
!1214 = !DILocation(line: 177, column: 5, scope: !1215)
!1215 = distinct !DILexicalBlock(scope: !1216, file: !3, line: 177, column: 5)
!1216 = distinct !DILexicalBlock(scope: !1206, file: !3, line: 177, column: 5)
!1217 = distinct !{!1217, !1214, !1214}
!1218 = !DILocation(line: 183, column: 5, scope: !1219)
!1219 = distinct !DILexicalBlock(scope: !1220, file: !3, line: 181, column: 31)
!1220 = distinct !DILexicalBlock(scope: !1221, file: !3, line: 181, column: 16)
!1221 = distinct !DILexicalBlock(scope: !1206, file: !3, line: 179, column: 9)
!1222 = !DILocation(line: 185, column: 5, scope: !1223)
!1223 = distinct !DILexicalBlock(scope: !1224, file: !3, line: 183, column: 31)
!1224 = distinct !DILexicalBlock(scope: !1220, file: !3, line: 183, column: 16)
!1225 = !DILocation(line: 187, column: 5, scope: !1226)
!1226 = distinct !DILexicalBlock(scope: !1227, file: !3, line: 185, column: 31)
!1227 = distinct !DILexicalBlock(scope: !1224, file: !3, line: 185, column: 16)
!1228 = !DILocation(line: 0, scope: !1221)
!1229 = !DILocation(line: 189, column: 5, scope: !1206)
!1230 = distinct !DISubprogram(name: "CM4_GPT2Init", scope: !3, file: !3, line: 193, type: !75, scopeLine: 194, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1231)
!1231 = !{}
!1232 = !DILocation(line: 195, column: 5, scope: !1230)
!1233 = !DILocation(line: 196, column: 1, scope: !1230)
!1234 = distinct !DISubprogram(name: "CM4_GPT4Init", scope: !3, file: !3, line: 198, type: !75, scopeLine: 199, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1231)
!1235 = !DILocation(line: 200, column: 5, scope: !1234)
!1236 = !DILocation(line: 201, column: 1, scope: !1234)
!1237 = distinct !DISubprogram(name: "halGPIO_ConfDirection", scope: !736, file: !736, line: 54, type: !1238, scopeLine: 55, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !735, retainedNodes: !1241)
!1238 = !DISubroutineType(types: !1239)
!1239 = !{!1240, !80, !133}
!1240 = !DIDerivedType(tag: DW_TAG_typedef, name: "INT32", file: !6, line: 56, baseType: !13)
!1241 = !{!1242, !1243, !1244, !1246}
!1242 = !DILocalVariable(name: "GPIO_pin", arg: 1, scope: !1237, file: !736, line: 54, type: !80)
!1243 = !DILocalVariable(name: "outEnable", arg: 2, scope: !1237, file: !736, line: 54, type: !133)
!1244 = !DILocalVariable(name: "no", scope: !1237, file: !736, line: 57, type: !1245)
!1245 = !DIDerivedType(tag: DW_TAG_typedef, name: "UINT16", file: !6, line: 60, baseType: !132)
!1246 = !DILocalVariable(name: "remainder", scope: !1237, file: !736, line: 58, type: !1245)
!1247 = !DILocation(line: 0, scope: !1237)
!1248 = !DILocation(line: 59, column: 19, scope: !1237)
!1249 = !DILocation(line: 60, column: 17, scope: !1237)
!1250 = !DILocation(line: 61, column: 5, scope: !1237)
!1251 = !DILocation(line: 65, column: 27, scope: !1252)
!1252 = distinct !DILexicalBlock(scope: !1253, file: !736, line: 65, column: 17)
!1253 = distinct !DILexicalBlock(scope: !1237, file: !736, line: 61, column: 17)
!1254 = !DILocation(line: 0, scope: !1252)
!1255 = !DILocation(line: 65, column: 17, scope: !1253)
!1256 = !DILocation(line: 66, column: 21, scope: !1257)
!1257 = distinct !DILexicalBlock(scope: !1252, file: !736, line: 65, column: 33)
!1258 = !DILocation(line: 67, column: 73, scope: !1259)
!1259 = distinct !DILexicalBlock(scope: !1260, file: !736, line: 66, column: 38)
!1260 = distinct !DILexicalBlock(scope: !1257, file: !736, line: 66, column: 21)
!1261 = !DILocation(line: 67, column: 69, scope: !1259)
!1262 = !DILocation(line: 67, column: 66, scope: !1259)
!1263 = !DILocation(line: 68, column: 17, scope: !1259)
!1264 = !DILocation(line: 68, column: 28, scope: !1260)
!1265 = !DILocation(line: 69, column: 77, scope: !1266)
!1266 = distinct !DILexicalBlock(scope: !1267, file: !736, line: 68, column: 45)
!1267 = distinct !DILexicalBlock(scope: !1260, file: !736, line: 68, column: 28)
!1268 = !DILocation(line: 70, column: 77, scope: !1266)
!1269 = !DILocation(line: 71, column: 17, scope: !1266)
!1270 = !DILocation(line: 72, column: 77, scope: !1271)
!1271 = distinct !DILexicalBlock(scope: !1272, file: !736, line: 71, column: 45)
!1272 = distinct !DILexicalBlock(scope: !1267, file: !736, line: 71, column: 28)
!1273 = !DILocation(line: 73, column: 77, scope: !1271)
!1274 = !DILocation(line: 74, column: 17, scope: !1271)
!1275 = !DILocation(line: 75, column: 79, scope: !1276)
!1276 = distinct !DILexicalBlock(scope: !1277, file: !736, line: 74, column: 45)
!1277 = distinct !DILexicalBlock(scope: !1272, file: !736, line: 74, column: 28)
!1278 = !DILocation(line: 76, column: 79, scope: !1276)
!1279 = !DILocation(line: 77, column: 17, scope: !1276)
!1280 = !DILocation(line: 78, column: 79, scope: !1281)
!1281 = distinct !DILexicalBlock(scope: !1282, file: !736, line: 77, column: 45)
!1282 = distinct !DILexicalBlock(scope: !1277, file: !736, line: 77, column: 28)
!1283 = !DILocation(line: 79, column: 79, scope: !1281)
!1284 = !DILocation(line: 80, column: 17, scope: !1281)
!1285 = !DILocation(line: 81, column: 79, scope: !1286)
!1286 = distinct !DILexicalBlock(scope: !1287, file: !736, line: 80, column: 45)
!1287 = distinct !DILexicalBlock(scope: !1282, file: !736, line: 80, column: 28)
!1288 = !DILocation(line: 82, column: 79, scope: !1286)
!1289 = !DILocation(line: 83, column: 17, scope: !1286)
!1290 = !DILocation(line: 85, column: 17, scope: !1257)
!1291 = !DILocation(line: 86, column: 13, scope: !1257)
!1292 = !DILocation(line: 88, column: 21, scope: !1293)
!1293 = distinct !DILexicalBlock(scope: !1252, file: !736, line: 86, column: 20)
!1294 = !DILocation(line: 89, column: 72, scope: !1295)
!1295 = distinct !DILexicalBlock(scope: !1296, file: !736, line: 88, column: 38)
!1296 = distinct !DILexicalBlock(scope: !1293, file: !736, line: 88, column: 21)
!1297 = !DILocation(line: 89, column: 66, scope: !1295)
!1298 = !DILocation(line: 90, column: 17, scope: !1295)
!1299 = !DILocation(line: 90, column: 28, scope: !1296)
!1300 = !DILocation(line: 91, column: 77, scope: !1301)
!1301 = distinct !DILexicalBlock(scope: !1302, file: !736, line: 90, column: 45)
!1302 = distinct !DILexicalBlock(scope: !1296, file: !736, line: 90, column: 28)
!1303 = !DILocation(line: 92, column: 17, scope: !1301)
!1304 = !DILocation(line: 93, column: 77, scope: !1305)
!1305 = distinct !DILexicalBlock(scope: !1306, file: !736, line: 92, column: 45)
!1306 = distinct !DILexicalBlock(scope: !1302, file: !736, line: 92, column: 28)
!1307 = !DILocation(line: 94, column: 17, scope: !1305)
!1308 = !DILocation(line: 95, column: 79, scope: !1309)
!1309 = distinct !DILexicalBlock(scope: !1310, file: !736, line: 94, column: 45)
!1310 = distinct !DILexicalBlock(scope: !1306, file: !736, line: 94, column: 28)
!1311 = !DILocation(line: 96, column: 17, scope: !1309)
!1312 = !DILocation(line: 97, column: 79, scope: !1313)
!1313 = distinct !DILexicalBlock(scope: !1314, file: !736, line: 96, column: 45)
!1314 = distinct !DILexicalBlock(scope: !1310, file: !736, line: 96, column: 28)
!1315 = !DILocation(line: 98, column: 17, scope: !1313)
!1316 = !DILocation(line: 99, column: 79, scope: !1317)
!1317 = distinct !DILexicalBlock(scope: !1318, file: !736, line: 98, column: 45)
!1318 = distinct !DILexicalBlock(scope: !1314, file: !736, line: 98, column: 28)
!1319 = !DILocation(line: 100, column: 17, scope: !1317)
!1320 = !DILocation(line: 103, column: 17, scope: !1293)
!1321 = !DILocation(line: 109, column: 27, scope: !1322)
!1322 = distinct !DILexicalBlock(scope: !1253, file: !736, line: 109, column: 17)
!1323 = !DILocation(line: 0, scope: !1322)
!1324 = !DILocation(line: 109, column: 17, scope: !1253)
!1325 = !DILocation(line: 110, column: 21, scope: !1326)
!1326 = distinct !DILexicalBlock(scope: !1322, file: !736, line: 109, column: 33)
!1327 = !DILocation(line: 111, column: 73, scope: !1328)
!1328 = distinct !DILexicalBlock(scope: !1329, file: !736, line: 110, column: 36)
!1329 = distinct !DILexicalBlock(scope: !1326, file: !736, line: 110, column: 21)
!1330 = !DILocation(line: 111, column: 69, scope: !1328)
!1331 = !DILocation(line: 111, column: 66, scope: !1328)
!1332 = !DILocation(line: 112, column: 17, scope: !1328)
!1333 = !DILocation(line: 113, column: 79, scope: !1334)
!1334 = distinct !DILexicalBlock(scope: !1329, file: !736, line: 112, column: 24)
!1335 = !DILocation(line: 114, column: 79, scope: !1334)
!1336 = !DILocation(line: 117, column: 17, scope: !1326)
!1337 = !DILocation(line: 118, column: 13, scope: !1326)
!1338 = !DILocation(line: 120, column: 21, scope: !1339)
!1339 = distinct !DILexicalBlock(scope: !1322, file: !736, line: 118, column: 20)
!1340 = !DILocation(line: 121, column: 72, scope: !1341)
!1341 = distinct !DILexicalBlock(scope: !1342, file: !736, line: 120, column: 36)
!1342 = distinct !DILexicalBlock(scope: !1339, file: !736, line: 120, column: 21)
!1343 = !DILocation(line: 121, column: 66, scope: !1341)
!1344 = !DILocation(line: 122, column: 17, scope: !1341)
!1345 = !DILocation(line: 123, column: 79, scope: !1346)
!1346 = distinct !DILexicalBlock(scope: !1342, file: !736, line: 122, column: 24)
!1347 = !DILocation(line: 126, column: 17, scope: !1339)
!1348 = !DILocation(line: 133, column: 1, scope: !1237)
!1349 = distinct !DISubprogram(name: "halGPO_Write", scope: !736, file: !736, line: 136, type: !1238, scopeLine: 137, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !735, retainedNodes: !1350)
!1350 = !{!1351, !1352, !1353, !1354}
!1351 = !DILocalVariable(name: "GPIO_pin", arg: 1, scope: !1349, file: !736, line: 136, type: !80)
!1352 = !DILocalVariable(name: "writeValue", arg: 2, scope: !1349, file: !736, line: 136, type: !133)
!1353 = !DILocalVariable(name: "no", scope: !1349, file: !736, line: 138, type: !1245)
!1354 = !DILocalVariable(name: "remainder", scope: !1349, file: !736, line: 139, type: !1245)
!1355 = !DILocation(line: 0, scope: !1349)
!1356 = !DILocation(line: 140, column: 19, scope: !1349)
!1357 = !DILocation(line: 141, column: 17, scope: !1349)
!1358 = !DILocation(line: 142, column: 5, scope: !1349)
!1359 = !DILocation(line: 145, column: 17, scope: !1360)
!1360 = distinct !DILexicalBlock(scope: !1361, file: !736, line: 145, column: 17)
!1361 = distinct !DILexicalBlock(scope: !1349, file: !736, line: 142, column: 17)
!1362 = !DILocation(line: 0, scope: !1360)
!1363 = !DILocation(line: 145, column: 17, scope: !1361)
!1364 = !DILocation(line: 146, column: 17, scope: !1365)
!1365 = distinct !DILexicalBlock(scope: !1360, file: !736, line: 145, column: 29)
!1366 = !DILocation(line: 147, column: 13, scope: !1365)
!1367 = !DILocation(line: 148, column: 17, scope: !1368)
!1368 = distinct !DILexicalBlock(scope: !1360, file: !736, line: 147, column: 20)
!1369 = !DILocation(line: 153, column: 17, scope: !1370)
!1370 = distinct !DILexicalBlock(scope: !1361, file: !736, line: 153, column: 17)
!1371 = !DILocation(line: 0, scope: !1370)
!1372 = !DILocation(line: 153, column: 17, scope: !1361)
!1373 = !DILocation(line: 154, column: 17, scope: !1374)
!1374 = distinct !DILexicalBlock(scope: !1370, file: !736, line: 153, column: 29)
!1375 = !DILocation(line: 155, column: 13, scope: !1374)
!1376 = !DILocation(line: 156, column: 17, scope: !1377)
!1377 = distinct !DILexicalBlock(scope: !1370, file: !736, line: 155, column: 20)
!1378 = !DILocation(line: 163, column: 1, scope: !1349)
!1379 = distinct !DISubprogram(name: "halgetGPIO_DOUT", scope: !736, file: !736, line: 169, type: !1380, scopeLine: 170, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !735, retainedNodes: !1382)
!1380 = !DISubroutineType(types: !1381)
!1381 = !{!133, !80}
!1382 = !{!1383, !1384, !1385, !1386}
!1383 = !DILocalVariable(name: "GPIO_pin", arg: 1, scope: !1379, file: !736, line: 169, type: !80)
!1384 = !DILocalVariable(name: "no", scope: !1379, file: !736, line: 171, type: !1245)
!1385 = !DILocalVariable(name: "remainder", scope: !1379, file: !736, line: 172, type: !1245)
!1386 = !DILocalVariable(name: "dout", scope: !1379, file: !736, line: 175, type: !133)
!1387 = !DILocation(line: 0, scope: !1379)
!1388 = !DILocation(line: 173, column: 19, scope: !1379)
!1389 = !DILocation(line: 174, column: 17, scope: !1379)
!1390 = !DILocation(line: 177, column: 5, scope: !1379)
!1391 = !DILocation(line: 183, column: 13, scope: !1392)
!1392 = distinct !DILexicalBlock(scope: !1379, file: !736, line: 177, column: 17)
!1393 = !DILocation(line: 0, scope: !1392)
!1394 = !DILocation(line: 187, column: 5, scope: !1379)
!1395 = !DILocation(line: 188, column: 1, scope: !1379)
!1396 = distinct !DISubprogram(name: "halgetGPIO_DIN", scope: !736, file: !736, line: 189, type: !1380, scopeLine: 190, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !735, retainedNodes: !1397)
!1397 = !{!1398, !1399, !1400, !1401}
!1398 = !DILocalVariable(name: "GPIO_pin", arg: 1, scope: !1396, file: !736, line: 189, type: !80)
!1399 = !DILocalVariable(name: "no", scope: !1396, file: !736, line: 191, type: !1245)
!1400 = !DILocalVariable(name: "remainder", scope: !1396, file: !736, line: 192, type: !1245)
!1401 = !DILocalVariable(name: "din", scope: !1396, file: !736, line: 195, type: !133)
!1402 = !DILocation(line: 0, scope: !1396)
!1403 = !DILocation(line: 193, column: 19, scope: !1396)
!1404 = !DILocation(line: 194, column: 17, scope: !1396)
!1405 = !DILocation(line: 196, column: 5, scope: !1396)
!1406 = !DILocation(line: 203, column: 13, scope: !1407)
!1407 = distinct !DILexicalBlock(scope: !1396, file: !736, line: 196, column: 17)
!1408 = !DILocation(line: 0, scope: !1407)
!1409 = !DILocation(line: 208, column: 5, scope: !1396)
!1410 = !DILocation(line: 209, column: 1, scope: !1396)
!1411 = distinct !DISubprogram(name: "halgetGPIO_OutEnable", scope: !736, file: !736, line: 210, type: !1380, scopeLine: 211, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !735, retainedNodes: !1412)
!1412 = !{!1413, !1414, !1415, !1416}
!1413 = !DILocalVariable(name: "GPIO_pin", arg: 1, scope: !1411, file: !736, line: 210, type: !80)
!1414 = !DILocalVariable(name: "no", scope: !1411, file: !736, line: 212, type: !1245)
!1415 = !DILocalVariable(name: "remainder", scope: !1411, file: !736, line: 213, type: !1245)
!1416 = !DILocalVariable(name: "outEnable", scope: !1411, file: !736, line: 216, type: !133)
!1417 = !DILocation(line: 0, scope: !1411)
!1418 = !DILocation(line: 214, column: 19, scope: !1411)
!1419 = !DILocation(line: 215, column: 17, scope: !1411)
!1420 = !DILocation(line: 218, column: 5, scope: !1411)
!1421 = !DILocation(line: 224, column: 13, scope: !1422)
!1422 = distinct !DILexicalBlock(scope: !1411, file: !736, line: 218, column: 17)
!1423 = !DILocation(line: 0, scope: !1422)
!1424 = !DILocation(line: 228, column: 5, scope: !1411)
!1425 = !DILocation(line: 229, column: 1, scope: !1411)
!1426 = distinct !DISubprogram(name: "halGPIO_PullUp_SET", scope: !736, file: !736, line: 232, type: !1427, scopeLine: 233, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !735, retainedNodes: !1429)
!1427 = !DISubroutineType(types: !1428)
!1428 = !{!1240, !80}
!1429 = !{!1430, !1431, !1432}
!1430 = !DILocalVariable(name: "GPIO_pin", arg: 1, scope: !1426, file: !736, line: 232, type: !80)
!1431 = !DILocalVariable(name: "no", scope: !1426, file: !736, line: 234, type: !1245)
!1432 = !DILocalVariable(name: "remainder", scope: !1426, file: !736, line: 235, type: !1245)
!1433 = !DILocation(line: 0, scope: !1426)
!1434 = !DILocation(line: 236, column: 19, scope: !1426)
!1435 = !DILocation(line: 237, column: 17, scope: !1426)
!1436 = !DILocation(line: 238, column: 5, scope: !1426)
!1437 = !DILocation(line: 239, column: 5, scope: !1426)
!1438 = !DILocation(line: 241, column: 27, scope: !1439)
!1439 = distinct !DILexicalBlock(scope: !1440, file: !736, line: 241, column: 17)
!1440 = distinct !DILexicalBlock(scope: !1426, file: !736, line: 239, column: 17)
!1441 = !DILocation(line: 241, column: 17, scope: !1440)
!1442 = !DILocation(line: 241, column: 17, scope: !1439)
!1443 = !DILocation(line: 242, column: 17, scope: !1444)
!1444 = distinct !DILexicalBlock(scope: !1439, file: !736, line: 241, column: 34)
!1445 = !DILocation(line: 243, column: 13, scope: !1444)
!1446 = !DILocation(line: 243, column: 24, scope: !1439)
!1447 = !DILocation(line: 244, column: 73, scope: !1448)
!1448 = distinct !DILexicalBlock(scope: !1449, file: !736, line: 243, column: 41)
!1449 = distinct !DILexicalBlock(scope: !1439, file: !736, line: 243, column: 24)
!1450 = !DILocation(line: 245, column: 73, scope: !1448)
!1451 = !DILocation(line: 246, column: 13, scope: !1448)
!1452 = !DILocation(line: 247, column: 73, scope: !1453)
!1453 = distinct !DILexicalBlock(scope: !1454, file: !736, line: 246, column: 41)
!1454 = distinct !DILexicalBlock(scope: !1449, file: !736, line: 246, column: 24)
!1455 = !DILocation(line: 248, column: 73, scope: !1453)
!1456 = !DILocation(line: 249, column: 13, scope: !1453)
!1457 = !DILocation(line: 250, column: 75, scope: !1458)
!1458 = distinct !DILexicalBlock(scope: !1459, file: !736, line: 249, column: 41)
!1459 = distinct !DILexicalBlock(scope: !1454, file: !736, line: 249, column: 24)
!1460 = !DILocation(line: 251, column: 75, scope: !1458)
!1461 = !DILocation(line: 252, column: 13, scope: !1458)
!1462 = !DILocation(line: 253, column: 75, scope: !1463)
!1463 = distinct !DILexicalBlock(scope: !1464, file: !736, line: 252, column: 41)
!1464 = distinct !DILexicalBlock(scope: !1459, file: !736, line: 252, column: 24)
!1465 = !DILocation(line: 254, column: 75, scope: !1463)
!1466 = !DILocation(line: 255, column: 13, scope: !1463)
!1467 = !DILocation(line: 256, column: 75, scope: !1468)
!1468 = distinct !DILexicalBlock(scope: !1469, file: !736, line: 255, column: 41)
!1469 = distinct !DILexicalBlock(scope: !1464, file: !736, line: 255, column: 24)
!1470 = !DILocation(line: 257, column: 75, scope: !1468)
!1471 = !DILocation(line: 258, column: 13, scope: !1468)
!1472 = !DILocation(line: 261, column: 18, scope: !1473)
!1473 = distinct !DILexicalBlock(scope: !1440, file: !736, line: 261, column: 17)
!1474 = !DILocation(line: 261, column: 17, scope: !1440)
!1475 = !DILocation(line: 262, column: 75, scope: !1476)
!1476 = distinct !DILexicalBlock(scope: !1473, file: !736, line: 261, column: 29)
!1477 = !DILocation(line: 263, column: 75, scope: !1476)
!1478 = !DILocation(line: 264, column: 13, scope: !1476)
!1479 = !DILocation(line: 265, column: 17, scope: !1480)
!1480 = distinct !DILexicalBlock(scope: !1473, file: !736, line: 264, column: 20)
!1481 = !DILocation(line: 272, column: 1, scope: !1426)
!1482 = distinct !DISubprogram(name: "halGPIO_PullDown_RESET", scope: !736, file: !736, line: 359, type: !1427, scopeLine: 360, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !735, retainedNodes: !1483)
!1483 = !{!1484, !1485, !1486}
!1484 = !DILocalVariable(name: "GPIO_pin", arg: 1, scope: !1482, file: !736, line: 359, type: !80)
!1485 = !DILocalVariable(name: "no", scope: !1482, file: !736, line: 362, type: !1245)
!1486 = !DILocalVariable(name: "remainder", scope: !1482, file: !736, line: 363, type: !1245)
!1487 = !DILocation(line: 0, scope: !1482)
!1488 = !DILocation(line: 364, column: 19, scope: !1482)
!1489 = !DILocation(line: 365, column: 17, scope: !1482)
!1490 = !DILocation(line: 367, column: 5, scope: !1482)
!1491 = !DILocation(line: 369, column: 27, scope: !1492)
!1492 = distinct !DILexicalBlock(scope: !1493, file: !736, line: 369, column: 17)
!1493 = distinct !DILexicalBlock(scope: !1482, file: !736, line: 367, column: 17)
!1494 = !DILocation(line: 369, column: 17, scope: !1493)
!1495 = !DILocation(line: 369, column: 17, scope: !1492)
!1496 = !DILocation(line: 370, column: 17, scope: !1497)
!1497 = distinct !DILexicalBlock(scope: !1492, file: !736, line: 369, column: 34)
!1498 = !DILocation(line: 371, column: 13, scope: !1497)
!1499 = !DILocation(line: 371, column: 24, scope: !1492)
!1500 = !DILocation(line: 372, column: 73, scope: !1501)
!1501 = distinct !DILexicalBlock(scope: !1502, file: !736, line: 371, column: 41)
!1502 = distinct !DILexicalBlock(scope: !1492, file: !736, line: 371, column: 24)
!1503 = !DILocation(line: 373, column: 73, scope: !1501)
!1504 = !DILocation(line: 374, column: 13, scope: !1501)
!1505 = !DILocation(line: 375, column: 73, scope: !1506)
!1506 = distinct !DILexicalBlock(scope: !1507, file: !736, line: 374, column: 41)
!1507 = distinct !DILexicalBlock(scope: !1502, file: !736, line: 374, column: 24)
!1508 = !DILocation(line: 376, column: 73, scope: !1506)
!1509 = !DILocation(line: 377, column: 13, scope: !1506)
!1510 = !DILocation(line: 378, column: 75, scope: !1511)
!1511 = distinct !DILexicalBlock(scope: !1512, file: !736, line: 377, column: 41)
!1512 = distinct !DILexicalBlock(scope: !1507, file: !736, line: 377, column: 24)
!1513 = !DILocation(line: 379, column: 75, scope: !1511)
!1514 = !DILocation(line: 380, column: 13, scope: !1511)
!1515 = !DILocation(line: 381, column: 75, scope: !1516)
!1516 = distinct !DILexicalBlock(scope: !1517, file: !736, line: 380, column: 41)
!1517 = distinct !DILexicalBlock(scope: !1512, file: !736, line: 380, column: 24)
!1518 = !DILocation(line: 382, column: 75, scope: !1516)
!1519 = !DILocation(line: 383, column: 13, scope: !1516)
!1520 = !DILocation(line: 384, column: 75, scope: !1521)
!1521 = distinct !DILexicalBlock(scope: !1522, file: !736, line: 383, column: 41)
!1522 = distinct !DILexicalBlock(scope: !1517, file: !736, line: 383, column: 24)
!1523 = !DILocation(line: 385, column: 75, scope: !1521)
!1524 = !DILocation(line: 386, column: 13, scope: !1521)
!1525 = !DILocation(line: 389, column: 18, scope: !1526)
!1526 = distinct !DILexicalBlock(scope: !1493, file: !736, line: 389, column: 17)
!1527 = !DILocation(line: 389, column: 17, scope: !1493)
!1528 = !DILocation(line: 390, column: 75, scope: !1529)
!1529 = distinct !DILexicalBlock(scope: !1526, file: !736, line: 389, column: 29)
!1530 = !DILocation(line: 391, column: 75, scope: !1529)
!1531 = !DILocation(line: 392, column: 13, scope: !1529)
!1532 = !DILocation(line: 393, column: 17, scope: !1533)
!1533 = distinct !DILexicalBlock(scope: !1526, file: !736, line: 392, column: 20)
!1534 = !DILocation(line: 401, column: 1, scope: !1482)
!1535 = distinct !DISubprogram(name: "halGPIO_PullUp_RESET", scope: !736, file: !736, line: 274, type: !1427, scopeLine: 275, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !735, retainedNodes: !1536)
!1536 = !{!1537, !1538, !1539}
!1537 = !DILocalVariable(name: "GPIO_pin", arg: 1, scope: !1535, file: !736, line: 274, type: !80)
!1538 = !DILocalVariable(name: "no", scope: !1535, file: !736, line: 276, type: !1245)
!1539 = !DILocalVariable(name: "remainder", scope: !1535, file: !736, line: 277, type: !1245)
!1540 = !DILocation(line: 0, scope: !1535)
!1541 = !DILocation(line: 278, column: 19, scope: !1535)
!1542 = !DILocation(line: 279, column: 17, scope: !1535)
!1543 = !DILocation(line: 281, column: 5, scope: !1535)
!1544 = !DILocation(line: 283, column: 27, scope: !1545)
!1545 = distinct !DILexicalBlock(scope: !1546, file: !736, line: 283, column: 17)
!1546 = distinct !DILexicalBlock(scope: !1535, file: !736, line: 281, column: 17)
!1547 = !DILocation(line: 283, column: 17, scope: !1546)
!1548 = !DILocation(line: 283, column: 17, scope: !1545)
!1549 = !DILocation(line: 284, column: 17, scope: !1550)
!1550 = distinct !DILexicalBlock(scope: !1545, file: !736, line: 283, column: 34)
!1551 = !DILocation(line: 285, column: 13, scope: !1550)
!1552 = !DILocation(line: 285, column: 24, scope: !1545)
!1553 = !DILocation(line: 286, column: 73, scope: !1554)
!1554 = distinct !DILexicalBlock(scope: !1555, file: !736, line: 285, column: 41)
!1555 = distinct !DILexicalBlock(scope: !1545, file: !736, line: 285, column: 24)
!1556 = !DILocation(line: 287, column: 73, scope: !1554)
!1557 = !DILocation(line: 288, column: 13, scope: !1554)
!1558 = !DILocation(line: 289, column: 73, scope: !1559)
!1559 = distinct !DILexicalBlock(scope: !1560, file: !736, line: 288, column: 41)
!1560 = distinct !DILexicalBlock(scope: !1555, file: !736, line: 288, column: 24)
!1561 = !DILocation(line: 290, column: 73, scope: !1559)
!1562 = !DILocation(line: 291, column: 13, scope: !1559)
!1563 = !DILocation(line: 292, column: 75, scope: !1564)
!1564 = distinct !DILexicalBlock(scope: !1565, file: !736, line: 291, column: 41)
!1565 = distinct !DILexicalBlock(scope: !1560, file: !736, line: 291, column: 24)
!1566 = !DILocation(line: 293, column: 75, scope: !1564)
!1567 = !DILocation(line: 294, column: 13, scope: !1564)
!1568 = !DILocation(line: 295, column: 75, scope: !1569)
!1569 = distinct !DILexicalBlock(scope: !1570, file: !736, line: 294, column: 41)
!1570 = distinct !DILexicalBlock(scope: !1565, file: !736, line: 294, column: 24)
!1571 = !DILocation(line: 296, column: 75, scope: !1569)
!1572 = !DILocation(line: 297, column: 13, scope: !1569)
!1573 = !DILocation(line: 298, column: 75, scope: !1574)
!1574 = distinct !DILexicalBlock(scope: !1575, file: !736, line: 297, column: 41)
!1575 = distinct !DILexicalBlock(scope: !1570, file: !736, line: 297, column: 24)
!1576 = !DILocation(line: 299, column: 75, scope: !1574)
!1577 = !DILocation(line: 300, column: 13, scope: !1574)
!1578 = !DILocation(line: 303, column: 18, scope: !1579)
!1579 = distinct !DILexicalBlock(scope: !1546, file: !736, line: 303, column: 17)
!1580 = !DILocation(line: 303, column: 17, scope: !1546)
!1581 = !DILocation(line: 304, column: 75, scope: !1582)
!1582 = distinct !DILexicalBlock(scope: !1579, file: !736, line: 303, column: 29)
!1583 = !DILocation(line: 305, column: 75, scope: !1582)
!1584 = !DILocation(line: 306, column: 13, scope: !1582)
!1585 = !DILocation(line: 307, column: 17, scope: !1586)
!1586 = distinct !DILexicalBlock(scope: !1579, file: !736, line: 306, column: 20)
!1587 = !DILocation(line: 314, column: 1, scope: !1535)
!1588 = distinct !DISubprogram(name: "halGPIO_PullDown_SET", scope: !736, file: !736, line: 316, type: !1427, scopeLine: 317, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !735, retainedNodes: !1589)
!1589 = !{!1590, !1591, !1592}
!1590 = !DILocalVariable(name: "GPIO_pin", arg: 1, scope: !1588, file: !736, line: 316, type: !80)
!1591 = !DILocalVariable(name: "no", scope: !1588, file: !736, line: 318, type: !1245)
!1592 = !DILocalVariable(name: "remainder", scope: !1588, file: !736, line: 319, type: !1245)
!1593 = !DILocation(line: 0, scope: !1588)
!1594 = !DILocation(line: 320, column: 19, scope: !1588)
!1595 = !DILocation(line: 321, column: 17, scope: !1588)
!1596 = !DILocation(line: 322, column: 5, scope: !1588)
!1597 = !DILocation(line: 323, column: 5, scope: !1588)
!1598 = !DILocation(line: 325, column: 27, scope: !1599)
!1599 = distinct !DILexicalBlock(scope: !1600, file: !736, line: 325, column: 17)
!1600 = distinct !DILexicalBlock(scope: !1588, file: !736, line: 323, column: 17)
!1601 = !DILocation(line: 325, column: 17, scope: !1600)
!1602 = !DILocation(line: 325, column: 17, scope: !1599)
!1603 = !DILocation(line: 326, column: 17, scope: !1604)
!1604 = distinct !DILexicalBlock(scope: !1599, file: !736, line: 325, column: 34)
!1605 = !DILocation(line: 327, column: 13, scope: !1604)
!1606 = !DILocation(line: 327, column: 24, scope: !1599)
!1607 = !DILocation(line: 328, column: 73, scope: !1608)
!1608 = distinct !DILexicalBlock(scope: !1609, file: !736, line: 327, column: 41)
!1609 = distinct !DILexicalBlock(scope: !1599, file: !736, line: 327, column: 24)
!1610 = !DILocation(line: 329, column: 73, scope: !1608)
!1611 = !DILocation(line: 330, column: 13, scope: !1608)
!1612 = !DILocation(line: 331, column: 73, scope: !1613)
!1613 = distinct !DILexicalBlock(scope: !1614, file: !736, line: 330, column: 41)
!1614 = distinct !DILexicalBlock(scope: !1609, file: !736, line: 330, column: 24)
!1615 = !DILocation(line: 332, column: 73, scope: !1613)
!1616 = !DILocation(line: 333, column: 13, scope: !1613)
!1617 = !DILocation(line: 334, column: 75, scope: !1618)
!1618 = distinct !DILexicalBlock(scope: !1619, file: !736, line: 333, column: 41)
!1619 = distinct !DILexicalBlock(scope: !1614, file: !736, line: 333, column: 24)
!1620 = !DILocation(line: 335, column: 75, scope: !1618)
!1621 = !DILocation(line: 336, column: 13, scope: !1618)
!1622 = !DILocation(line: 337, column: 75, scope: !1623)
!1623 = distinct !DILexicalBlock(scope: !1624, file: !736, line: 336, column: 41)
!1624 = distinct !DILexicalBlock(scope: !1619, file: !736, line: 336, column: 24)
!1625 = !DILocation(line: 338, column: 75, scope: !1623)
!1626 = !DILocation(line: 339, column: 13, scope: !1623)
!1627 = !DILocation(line: 340, column: 75, scope: !1628)
!1628 = distinct !DILexicalBlock(scope: !1629, file: !736, line: 339, column: 41)
!1629 = distinct !DILexicalBlock(scope: !1624, file: !736, line: 339, column: 24)
!1630 = !DILocation(line: 341, column: 75, scope: !1628)
!1631 = !DILocation(line: 342, column: 13, scope: !1628)
!1632 = !DILocation(line: 345, column: 18, scope: !1633)
!1633 = distinct !DILexicalBlock(scope: !1600, file: !736, line: 345, column: 17)
!1634 = !DILocation(line: 345, column: 17, scope: !1600)
!1635 = !DILocation(line: 346, column: 75, scope: !1636)
!1636 = distinct !DILexicalBlock(scope: !1633, file: !736, line: 345, column: 29)
!1637 = !DILocation(line: 347, column: 75, scope: !1636)
!1638 = !DILocation(line: 348, column: 13, scope: !1636)
!1639 = !DILocation(line: 349, column: 17, scope: !1640)
!1640 = distinct !DILexicalBlock(scope: !1633, file: !736, line: 348, column: 20)
!1641 = !DILocation(line: 357, column: 1, scope: !1588)
!1642 = distinct !DISubprogram(name: "halGPIO_SetDriving", scope: !736, file: !736, line: 404, type: !1238, scopeLine: 405, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !735, retainedNodes: !1643)
!1643 = !{!1644, !1645, !1646, !1647}
!1644 = !DILocalVariable(name: "GPIO_pin", arg: 1, scope: !1642, file: !736, line: 404, type: !80)
!1645 = !DILocalVariable(name: "GPIO_driving", arg: 2, scope: !1642, file: !736, line: 404, type: !133)
!1646 = !DILocalVariable(name: "no", scope: !1642, file: !736, line: 406, type: !1245)
!1647 = !DILocalVariable(name: "remainder", scope: !1642, file: !736, line: 407, type: !1245)
!1648 = !DILocation(line: 0, scope: !1642)
!1649 = !DILocation(line: 408, column: 19, scope: !1642)
!1650 = !DILocation(line: 409, column: 17, scope: !1642)
!1651 = !DILocation(line: 411, column: 5, scope: !1642)
!1652 = !DILocation(line: 413, column: 84, scope: !1653)
!1653 = distinct !DILexicalBlock(scope: !1642, file: !736, line: 411, column: 17)
!1654 = !DILocation(line: 413, column: 70, scope: !1653)
!1655 = !DILocation(line: 413, column: 64, scope: !1653)
!1656 = !DILocation(line: 413, column: 61, scope: !1653)
!1657 = !DILocation(line: 414, column: 79, scope: !1653)
!1658 = !DILocation(line: 414, column: 83, scope: !1653)
!1659 = !DILocation(line: 414, column: 88, scope: !1653)
!1660 = !DILocation(line: 414, column: 61, scope: !1653)
!1661 = !DILocation(line: 415, column: 13, scope: !1653)
!1662 = !DILocation(line: 417, column: 27, scope: !1663)
!1663 = distinct !DILexicalBlock(scope: !1653, file: !736, line: 417, column: 17)
!1664 = !DILocation(line: 417, column: 17, scope: !1653)
!1665 = !DILocation(line: 418, column: 88, scope: !1666)
!1666 = distinct !DILexicalBlock(scope: !1663, file: !736, line: 417, column: 33)
!1667 = !DILocation(line: 418, column: 74, scope: !1666)
!1668 = !DILocation(line: 418, column: 68, scope: !1666)
!1669 = !DILocation(line: 418, column: 65, scope: !1666)
!1670 = !DILocation(line: 419, column: 83, scope: !1666)
!1671 = !DILocation(line: 419, column: 87, scope: !1666)
!1672 = !DILocation(line: 419, column: 92, scope: !1666)
!1673 = !DILocation(line: 419, column: 65, scope: !1666)
!1674 = !DILocation(line: 420, column: 13, scope: !1666)
!1675 = !DILocation(line: 420, column: 24, scope: !1663)
!1676 = !DILocation(line: 421, column: 73, scope: !1677)
!1677 = distinct !DILexicalBlock(scope: !1678, file: !736, line: 420, column: 41)
!1678 = distinct !DILexicalBlock(scope: !1663, file: !736, line: 420, column: 24)
!1679 = !DILocation(line: 422, column: 91, scope: !1677)
!1680 = !DILocation(line: 422, column: 100, scope: !1677)
!1681 = !DILocation(line: 422, column: 73, scope: !1677)
!1682 = !DILocation(line: 423, column: 73, scope: !1677)
!1683 = !DILocation(line: 424, column: 13, scope: !1677)
!1684 = !DILocation(line: 425, column: 73, scope: !1685)
!1685 = distinct !DILexicalBlock(scope: !1686, file: !736, line: 424, column: 41)
!1686 = distinct !DILexicalBlock(scope: !1678, file: !736, line: 424, column: 24)
!1687 = !DILocation(line: 426, column: 91, scope: !1685)
!1688 = !DILocation(line: 426, column: 100, scope: !1685)
!1689 = !DILocation(line: 426, column: 73, scope: !1685)
!1690 = !DILocation(line: 427, column: 73, scope: !1685)
!1691 = !DILocation(line: 428, column: 13, scope: !1685)
!1692 = !DILocation(line: 429, column: 75, scope: !1693)
!1693 = distinct !DILexicalBlock(scope: !1694, file: !736, line: 428, column: 41)
!1694 = distinct !DILexicalBlock(scope: !1686, file: !736, line: 428, column: 24)
!1695 = !DILocation(line: 430, column: 93, scope: !1693)
!1696 = !DILocation(line: 430, column: 102, scope: !1693)
!1697 = !DILocation(line: 430, column: 75, scope: !1693)
!1698 = !DILocation(line: 431, column: 75, scope: !1693)
!1699 = !DILocation(line: 432, column: 13, scope: !1693)
!1700 = !DILocation(line: 433, column: 75, scope: !1701)
!1701 = distinct !DILexicalBlock(scope: !1702, file: !736, line: 432, column: 41)
!1702 = distinct !DILexicalBlock(scope: !1694, file: !736, line: 432, column: 24)
!1703 = !DILocation(line: 434, column: 93, scope: !1701)
!1704 = !DILocation(line: 434, column: 102, scope: !1701)
!1705 = !DILocation(line: 434, column: 75, scope: !1701)
!1706 = !DILocation(line: 435, column: 75, scope: !1701)
!1707 = !DILocation(line: 436, column: 13, scope: !1701)
!1708 = !DILocation(line: 437, column: 75, scope: !1709)
!1709 = distinct !DILexicalBlock(scope: !1710, file: !736, line: 436, column: 41)
!1710 = distinct !DILexicalBlock(scope: !1702, file: !736, line: 436, column: 24)
!1711 = !DILocation(line: 438, column: 93, scope: !1709)
!1712 = !DILocation(line: 438, column: 102, scope: !1709)
!1713 = !DILocation(line: 438, column: 75, scope: !1709)
!1714 = !DILocation(line: 439, column: 75, scope: !1709)
!1715 = !DILocation(line: 440, column: 13, scope: !1709)
!1716 = !DILocation(line: 443, column: 18, scope: !1717)
!1717 = distinct !DILexicalBlock(scope: !1653, file: !736, line: 443, column: 17)
!1718 = !DILocation(line: 443, column: 17, scope: !1653)
!1719 = !DILocation(line: 444, column: 75, scope: !1720)
!1720 = distinct !DILexicalBlock(scope: !1717, file: !736, line: 443, column: 29)
!1721 = !DILocation(line: 445, column: 93, scope: !1720)
!1722 = !DILocation(line: 445, column: 102, scope: !1720)
!1723 = !DILocation(line: 445, column: 75, scope: !1720)
!1724 = !DILocation(line: 446, column: 75, scope: !1720)
!1725 = !DILocation(line: 447, column: 13, scope: !1720)
!1726 = !DILocation(line: 448, column: 88, scope: !1727)
!1727 = distinct !DILexicalBlock(scope: !1717, file: !736, line: 447, column: 20)
!1728 = !DILocation(line: 448, column: 74, scope: !1727)
!1729 = !DILocation(line: 448, column: 68, scope: !1727)
!1730 = !DILocation(line: 448, column: 65, scope: !1727)
!1731 = !DILocation(line: 449, column: 83, scope: !1727)
!1732 = !DILocation(line: 449, column: 87, scope: !1727)
!1733 = !DILocation(line: 449, column: 92, scope: !1727)
!1734 = !DILocation(line: 449, column: 65, scope: !1727)
!1735 = !DILocation(line: 453, column: 84, scope: !1653)
!1736 = !DILocation(line: 453, column: 70, scope: !1653)
!1737 = !DILocation(line: 453, column: 64, scope: !1653)
!1738 = !DILocation(line: 453, column: 61, scope: !1653)
!1739 = !DILocation(line: 454, column: 79, scope: !1653)
!1740 = !DILocation(line: 454, column: 83, scope: !1653)
!1741 = !DILocation(line: 454, column: 88, scope: !1653)
!1742 = !DILocation(line: 454, column: 61, scope: !1653)
!1743 = !DILocation(line: 455, column: 13, scope: !1653)
!1744 = !DILocation(line: 460, column: 1, scope: !1642)
!1745 = distinct !DISubprogram(name: "halGPIO_GetDriving", scope: !736, file: !736, line: 463, type: !1746, scopeLine: 464, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !735, retainedNodes: !1749)
!1746 = !DISubroutineType(types: !1747)
!1747 = !{!1240, !80, !1748}
!1748 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !133, size: 32)
!1749 = !{!1750, !1751, !1752, !1753, !1754}
!1750 = !DILocalVariable(name: "GPIO_pin", arg: 1, scope: !1745, file: !736, line: 463, type: !80)
!1751 = !DILocalVariable(name: "GPIO_driving", arg: 2, scope: !1745, file: !736, line: 463, type: !1748)
!1752 = !DILocalVariable(name: "no", scope: !1745, file: !736, line: 465, type: !1245)
!1753 = !DILocalVariable(name: "remainder", scope: !1745, file: !736, line: 466, type: !1245)
!1754 = !DILocalVariable(name: "temp", scope: !1745, file: !736, line: 467, type: !80)
!1755 = !DILocation(line: 0, scope: !1745)
!1756 = !DILocation(line: 468, column: 19, scope: !1745)
!1757 = !DILocation(line: 469, column: 17, scope: !1745)
!1758 = !DILocation(line: 471, column: 5, scope: !1745)
!1759 = !DILocation(line: 473, column: 20, scope: !1760)
!1760 = distinct !DILexicalBlock(scope: !1745, file: !736, line: 471, column: 17)
!1761 = !DILocation(line: 474, column: 40, scope: !1760)
!1762 = !DILocation(line: 474, column: 26, scope: !1760)
!1763 = !DILocation(line: 474, column: 18, scope: !1760)
!1764 = !DILocation(line: 475, column: 40, scope: !1760)
!1765 = !DILocation(line: 475, column: 29, scope: !1760)
!1766 = !DILocation(line: 476, column: 13, scope: !1760)
!1767 = !DILocation(line: 478, column: 27, scope: !1768)
!1768 = distinct !DILexicalBlock(scope: !1760, file: !736, line: 478, column: 17)
!1769 = !DILocation(line: 478, column: 17, scope: !1760)
!1770 = !DILocation(line: 479, column: 24, scope: !1771)
!1771 = distinct !DILexicalBlock(scope: !1768, file: !736, line: 478, column: 33)
!1772 = !DILocation(line: 480, column: 44, scope: !1771)
!1773 = !DILocation(line: 480, column: 30, scope: !1771)
!1774 = !DILocation(line: 480, column: 22, scope: !1771)
!1775 = !DILocation(line: 481, column: 44, scope: !1771)
!1776 = !DILocation(line: 481, column: 33, scope: !1771)
!1777 = !DILocation(line: 482, column: 13, scope: !1771)
!1778 = !DILocation(line: 482, column: 24, scope: !1768)
!1779 = !DILocation(line: 483, column: 24, scope: !1780)
!1780 = distinct !DILexicalBlock(scope: !1781, file: !736, line: 482, column: 41)
!1781 = distinct !DILexicalBlock(scope: !1768, file: !736, line: 482, column: 24)
!1782 = !DILocation(line: 485, column: 53, scope: !1780)
!1783 = !DILocation(line: 485, column: 33, scope: !1780)
!1784 = !DILocation(line: 486, column: 13, scope: !1780)
!1785 = !DILocation(line: 487, column: 24, scope: !1786)
!1786 = distinct !DILexicalBlock(scope: !1787, file: !736, line: 486, column: 41)
!1787 = distinct !DILexicalBlock(scope: !1781, file: !736, line: 486, column: 24)
!1788 = !DILocation(line: 489, column: 53, scope: !1786)
!1789 = !DILocation(line: 489, column: 33, scope: !1786)
!1790 = !DILocation(line: 490, column: 13, scope: !1786)
!1791 = !DILocation(line: 491, column: 24, scope: !1792)
!1792 = distinct !DILexicalBlock(scope: !1793, file: !736, line: 490, column: 41)
!1793 = distinct !DILexicalBlock(scope: !1787, file: !736, line: 490, column: 24)
!1794 = !DILocation(line: 493, column: 53, scope: !1792)
!1795 = !DILocation(line: 493, column: 33, scope: !1792)
!1796 = !DILocation(line: 494, column: 13, scope: !1792)
!1797 = !DILocation(line: 495, column: 24, scope: !1798)
!1798 = distinct !DILexicalBlock(scope: !1799, file: !736, line: 494, column: 41)
!1799 = distinct !DILexicalBlock(scope: !1793, file: !736, line: 494, column: 24)
!1800 = !DILocation(line: 497, column: 53, scope: !1798)
!1801 = !DILocation(line: 497, column: 33, scope: !1798)
!1802 = !DILocation(line: 498, column: 13, scope: !1798)
!1803 = !DILocation(line: 499, column: 24, scope: !1804)
!1804 = distinct !DILexicalBlock(scope: !1805, file: !736, line: 498, column: 41)
!1805 = distinct !DILexicalBlock(scope: !1799, file: !736, line: 498, column: 24)
!1806 = !DILocation(line: 501, column: 53, scope: !1804)
!1807 = !DILocation(line: 501, column: 33, scope: !1804)
!1808 = !DILocation(line: 502, column: 13, scope: !1804)
!1809 = !DILocation(line: 505, column: 18, scope: !1810)
!1810 = distinct !DILexicalBlock(scope: !1760, file: !736, line: 505, column: 17)
!1811 = !DILocation(line: 505, column: 17, scope: !1760)
!1812 = !DILocation(line: 506, column: 24, scope: !1813)
!1813 = distinct !DILexicalBlock(scope: !1810, file: !736, line: 505, column: 29)
!1814 = !DILocation(line: 508, column: 53, scope: !1813)
!1815 = !DILocation(line: 508, column: 33, scope: !1813)
!1816 = !DILocation(line: 509, column: 13, scope: !1813)
!1817 = !DILocation(line: 510, column: 24, scope: !1818)
!1818 = distinct !DILexicalBlock(scope: !1810, file: !736, line: 509, column: 20)
!1819 = !DILocation(line: 511, column: 44, scope: !1818)
!1820 = !DILocation(line: 511, column: 30, scope: !1818)
!1821 = !DILocation(line: 511, column: 22, scope: !1818)
!1822 = !DILocation(line: 512, column: 44, scope: !1818)
!1823 = !DILocation(line: 512, column: 33, scope: !1818)
!1824 = !DILocation(line: 516, column: 20, scope: !1760)
!1825 = !DILocation(line: 517, column: 40, scope: !1760)
!1826 = !DILocation(line: 517, column: 26, scope: !1760)
!1827 = !DILocation(line: 517, column: 18, scope: !1760)
!1828 = !DILocation(line: 518, column: 40, scope: !1760)
!1829 = !DILocation(line: 518, column: 29, scope: !1760)
!1830 = !DILocation(line: 519, column: 13, scope: !1760)
!1831 = !DILocation(line: 0, scope: !1760)
!1832 = !DILocation(line: 524, column: 1, scope: !1745)
!1833 = distinct !DISubprogram(name: "topPAD_Control_GPIO", scope: !736, file: !736, line: 526, type: !1834, scopeLine: 527, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !735, retainedNodes: !1837)
!1834 = !DISubroutineType(types: !1835)
!1835 = !{null, !80, !1836}
!1836 = !DIDerivedType(tag: DW_TAG_typedef, name: "ENUM_TOP_PAD_CONTROL_T", file: !739, line: 1212, baseType: !738)
!1837 = !{!1838, !1839, !1840, !1841}
!1838 = !DILocalVariable(name: "GPIO_pin", arg: 1, scope: !1833, file: !736, line: 526, type: !80)
!1839 = !DILocalVariable(name: "ePadControl", arg: 2, scope: !1833, file: !736, line: 526, type: !1836)
!1840 = !DILocalVariable(name: "no", scope: !1833, file: !736, line: 529, type: !1245)
!1841 = !DILocalVariable(name: "remainder", scope: !1833, file: !736, line: 530, type: !1245)
!1842 = !DILocation(line: 0, scope: !1833)
!1843 = !DILocation(line: 531, column: 19, scope: !1833)
!1844 = !DILocation(line: 532, column: 17, scope: !1833)
!1845 = !DILocation(line: 534, column: 9, scope: !1833)
!1846 = !DILocation(line: 536, column: 9, scope: !1847)
!1847 = distinct !DILexicalBlock(scope: !1848, file: !736, line: 534, column: 45)
!1848 = distinct !DILexicalBlock(scope: !1833, file: !736, line: 534, column: 9)
!1849 = !DILocation(line: 538, column: 56, scope: !1850)
!1850 = distinct !DILexicalBlock(scope: !1847, file: !736, line: 536, column: 21)
!1851 = !DILocation(line: 538, column: 53, scope: !1850)
!1852 = !DILocation(line: 538, column: 47, scope: !1850)
!1853 = !DILocation(line: 539, column: 17, scope: !1850)
!1854 = !DILocation(line: 541, column: 56, scope: !1850)
!1855 = !DILocation(line: 541, column: 53, scope: !1850)
!1856 = !DILocation(line: 541, column: 47, scope: !1850)
!1857 = !DILocation(line: 542, column: 17, scope: !1850)
!1858 = !DILocation(line: 548, column: 9, scope: !1859)
!1859 = distinct !DILexicalBlock(scope: !1860, file: !736, line: 547, column: 51)
!1860 = distinct !DILexicalBlock(scope: !1848, file: !736, line: 547, column: 16)
!1861 = !DILocation(line: 550, column: 57, scope: !1862)
!1862 = distinct !DILexicalBlock(scope: !1859, file: !736, line: 548, column: 21)
!1863 = !DILocation(line: 550, column: 54, scope: !1862)
!1864 = !DILocation(line: 550, column: 50, scope: !1862)
!1865 = !DILocation(line: 550, column: 47, scope: !1862)
!1866 = !DILocation(line: 551, column: 17, scope: !1862)
!1867 = !DILocation(line: 553, column: 57, scope: !1862)
!1868 = !DILocation(line: 553, column: 54, scope: !1862)
!1869 = !DILocation(line: 553, column: 50, scope: !1862)
!1870 = !DILocation(line: 553, column: 47, scope: !1862)
!1871 = !DILocation(line: 554, column: 17, scope: !1862)
!1872 = !DILocation(line: 560, column: 1, scope: !1833)
!1873 = distinct !DISubprogram(name: "halPinmuxTopOnPadFunc", scope: !745, file: !745, line: 85, type: !1874, scopeLine: 86, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !744, retainedNodes: !1878)
!1874 = !DISubroutineType(types: !1875)
!1875 = !{!1876, !1877, !133}
!1876 = !DIDerivedType(tag: DW_TAG_typedef, name: "VOID", file: !6, line: 79, baseType: null)
!1877 = !DIDerivedType(tag: DW_TAG_typedef, name: "ENUM_PAD_NAME_T", file: !748, line: 225, baseType: !747)
!1878 = !{!1879, !1880, !1881}
!1879 = !DILocalVariable(name: "ePadIndex", arg: 1, scope: !1873, file: !745, line: 85, type: !1877)
!1880 = !DILocalVariable(name: "ucFunc", arg: 2, scope: !1873, file: !745, line: 85, type: !133)
!1881 = !DILocalVariable(name: "temp", scope: !1873, file: !745, line: 87, type: !92)
!1882 = !DILocation(line: 0, scope: !1873)
!1883 = !DILocation(line: 88, column: 5, scope: !1873)
!1884 = !DILocation(line: 91, column: 20, scope: !1885)
!1885 = distinct !DILexicalBlock(scope: !1873, file: !745, line: 88, column: 24)
!1886 = !DILocation(line: 92, column: 18, scope: !1885)
!1887 = !DILocation(line: 93, column: 66, scope: !1885)
!1888 = !DILocation(line: 93, column: 63, scope: !1885)
!1889 = !DILocation(line: 93, column: 56, scope: !1885)
!1890 = !DILocation(line: 94, column: 13, scope: !1885)
!1891 = !DILocation(line: 97, column: 20, scope: !1885)
!1892 = !DILocation(line: 98, column: 18, scope: !1885)
!1893 = !DILocation(line: 99, column: 67, scope: !1885)
!1894 = !DILocation(line: 99, column: 74, scope: !1885)
!1895 = !DILocation(line: 99, column: 64, scope: !1885)
!1896 = !DILocation(line: 99, column: 56, scope: !1885)
!1897 = !DILocation(line: 100, column: 13, scope: !1885)
!1898 = !DILocation(line: 103, column: 20, scope: !1885)
!1899 = !DILocation(line: 104, column: 18, scope: !1885)
!1900 = !DILocation(line: 105, column: 67, scope: !1885)
!1901 = !DILocation(line: 105, column: 74, scope: !1885)
!1902 = !DILocation(line: 105, column: 64, scope: !1885)
!1903 = !DILocation(line: 105, column: 56, scope: !1885)
!1904 = !DILocation(line: 106, column: 13, scope: !1885)
!1905 = !DILocation(line: 109, column: 20, scope: !1885)
!1906 = !DILocation(line: 110, column: 18, scope: !1885)
!1907 = !DILocation(line: 111, column: 67, scope: !1885)
!1908 = !DILocation(line: 111, column: 74, scope: !1885)
!1909 = !DILocation(line: 111, column: 64, scope: !1885)
!1910 = !DILocation(line: 111, column: 56, scope: !1885)
!1911 = !DILocation(line: 112, column: 13, scope: !1885)
!1912 = !DILocation(line: 115, column: 20, scope: !1885)
!1913 = !DILocation(line: 116, column: 18, scope: !1885)
!1914 = !DILocation(line: 117, column: 67, scope: !1885)
!1915 = !DILocation(line: 117, column: 74, scope: !1885)
!1916 = !DILocation(line: 117, column: 64, scope: !1885)
!1917 = !DILocation(line: 117, column: 56, scope: !1885)
!1918 = !DILocation(line: 118, column: 13, scope: !1885)
!1919 = !DILocation(line: 121, column: 20, scope: !1885)
!1920 = !DILocation(line: 122, column: 18, scope: !1885)
!1921 = !DILocation(line: 123, column: 67, scope: !1885)
!1922 = !DILocation(line: 123, column: 74, scope: !1885)
!1923 = !DILocation(line: 123, column: 64, scope: !1885)
!1924 = !DILocation(line: 123, column: 56, scope: !1885)
!1925 = !DILocation(line: 124, column: 13, scope: !1885)
!1926 = !DILocation(line: 127, column: 20, scope: !1885)
!1927 = !DILocation(line: 128, column: 18, scope: !1885)
!1928 = !DILocation(line: 129, column: 67, scope: !1885)
!1929 = !DILocation(line: 129, column: 74, scope: !1885)
!1930 = !DILocation(line: 129, column: 64, scope: !1885)
!1931 = !DILocation(line: 129, column: 56, scope: !1885)
!1932 = !DILocation(line: 130, column: 13, scope: !1885)
!1933 = !DILocation(line: 133, column: 20, scope: !1885)
!1934 = !DILocation(line: 134, column: 18, scope: !1885)
!1935 = !DILocation(line: 135, column: 67, scope: !1885)
!1936 = !DILocation(line: 135, column: 74, scope: !1885)
!1937 = !DILocation(line: 135, column: 64, scope: !1885)
!1938 = !DILocation(line: 135, column: 56, scope: !1885)
!1939 = !DILocation(line: 136, column: 13, scope: !1885)
!1940 = !DILocation(line: 139, column: 20, scope: !1885)
!1941 = !DILocation(line: 140, column: 18, scope: !1885)
!1942 = !DILocation(line: 141, column: 67, scope: !1885)
!1943 = !DILocation(line: 141, column: 64, scope: !1885)
!1944 = !DILocation(line: 141, column: 56, scope: !1885)
!1945 = !DILocation(line: 142, column: 13, scope: !1885)
!1946 = !DILocation(line: 145, column: 20, scope: !1885)
!1947 = !DILocation(line: 146, column: 18, scope: !1885)
!1948 = !DILocation(line: 147, column: 67, scope: !1885)
!1949 = !DILocation(line: 147, column: 74, scope: !1885)
!1950 = !DILocation(line: 147, column: 64, scope: !1885)
!1951 = !DILocation(line: 147, column: 56, scope: !1885)
!1952 = !DILocation(line: 148, column: 13, scope: !1885)
!1953 = !DILocation(line: 151, column: 20, scope: !1885)
!1954 = !DILocation(line: 152, column: 18, scope: !1885)
!1955 = !DILocation(line: 153, column: 67, scope: !1885)
!1956 = !DILocation(line: 153, column: 74, scope: !1885)
!1957 = !DILocation(line: 153, column: 64, scope: !1885)
!1958 = !DILocation(line: 153, column: 56, scope: !1885)
!1959 = !DILocation(line: 154, column: 13, scope: !1885)
!1960 = !DILocation(line: 157, column: 20, scope: !1885)
!1961 = !DILocation(line: 158, column: 18, scope: !1885)
!1962 = !DILocation(line: 159, column: 67, scope: !1885)
!1963 = !DILocation(line: 159, column: 74, scope: !1885)
!1964 = !DILocation(line: 159, column: 64, scope: !1885)
!1965 = !DILocation(line: 159, column: 56, scope: !1885)
!1966 = !DILocation(line: 160, column: 29, scope: !1967)
!1967 = distinct !DILexicalBlock(scope: !1885, file: !745, line: 160, column: 17)
!1968 = !DILocation(line: 161, column: 17, scope: !1969)
!1969 = distinct !DILexicalBlock(scope: !1967, file: !745, line: 160, column: 60)
!1970 = !DILocation(line: 162, column: 13, scope: !1969)
!1971 = !DILocation(line: 166, column: 20, scope: !1885)
!1972 = !DILocation(line: 167, column: 18, scope: !1885)
!1973 = !DILocation(line: 168, column: 67, scope: !1885)
!1974 = !DILocation(line: 168, column: 74, scope: !1885)
!1975 = !DILocation(line: 168, column: 64, scope: !1885)
!1976 = !DILocation(line: 168, column: 56, scope: !1885)
!1977 = !DILocation(line: 169, column: 29, scope: !1978)
!1978 = distinct !DILexicalBlock(scope: !1885, file: !745, line: 169, column: 17)
!1979 = !DILocation(line: 170, column: 17, scope: !1980)
!1980 = distinct !DILexicalBlock(scope: !1978, file: !745, line: 169, column: 45)
!1981 = !DILocation(line: 171, column: 13, scope: !1980)
!1982 = !DILocation(line: 175, column: 20, scope: !1885)
!1983 = !DILocation(line: 176, column: 18, scope: !1885)
!1984 = !DILocation(line: 177, column: 67, scope: !1885)
!1985 = !DILocation(line: 177, column: 74, scope: !1885)
!1986 = !DILocation(line: 177, column: 64, scope: !1885)
!1987 = !DILocation(line: 177, column: 56, scope: !1885)
!1988 = !DILocation(line: 178, column: 19, scope: !1989)
!1989 = distinct !DILexicalBlock(scope: !1885, file: !745, line: 178, column: 17)
!1990 = !DILocation(line: 178, column: 17, scope: !1885)
!1991 = !DILocation(line: 179, column: 17, scope: !1992)
!1992 = distinct !DILexicalBlock(scope: !1989, file: !745, line: 178, column: 30)
!1993 = !DILocation(line: 180, column: 13, scope: !1992)
!1994 = !DILocation(line: 184, column: 20, scope: !1885)
!1995 = !DILocation(line: 185, column: 18, scope: !1885)
!1996 = !DILocation(line: 186, column: 67, scope: !1885)
!1997 = !DILocation(line: 186, column: 74, scope: !1885)
!1998 = !DILocation(line: 186, column: 64, scope: !1885)
!1999 = !DILocation(line: 186, column: 56, scope: !1885)
!2000 = !DILocation(line: 187, column: 29, scope: !2001)
!2001 = distinct !DILexicalBlock(scope: !1885, file: !745, line: 187, column: 17)
!2002 = !DILocation(line: 188, column: 17, scope: !2003)
!2003 = distinct !DILexicalBlock(scope: !2001, file: !745, line: 187, column: 45)
!2004 = !DILocation(line: 189, column: 13, scope: !2003)
!2005 = !DILocation(line: 193, column: 20, scope: !1885)
!2006 = !DILocation(line: 194, column: 18, scope: !1885)
!2007 = !DILocation(line: 195, column: 67, scope: !1885)
!2008 = !DILocation(line: 195, column: 74, scope: !1885)
!2009 = !DILocation(line: 195, column: 64, scope: !1885)
!2010 = !DILocation(line: 195, column: 56, scope: !1885)
!2011 = !DILocation(line: 196, column: 29, scope: !2012)
!2012 = distinct !DILexicalBlock(scope: !1885, file: !745, line: 196, column: 17)
!2013 = !DILocation(line: 197, column: 17, scope: !2014)
!2014 = distinct !DILexicalBlock(scope: !2012, file: !745, line: 196, column: 45)
!2015 = !DILocation(line: 198, column: 13, scope: !2014)
!2016 = !DILocation(line: 202, column: 20, scope: !1885)
!2017 = !DILocation(line: 203, column: 18, scope: !1885)
!2018 = !DILocation(line: 204, column: 67, scope: !1885)
!2019 = !DILocation(line: 204, column: 64, scope: !1885)
!2020 = !DILocation(line: 204, column: 56, scope: !1885)
!2021 = !DILocation(line: 205, column: 29, scope: !2022)
!2022 = distinct !DILexicalBlock(scope: !1885, file: !745, line: 205, column: 17)
!2023 = !DILocation(line: 206, column: 17, scope: !2024)
!2024 = distinct !DILexicalBlock(scope: !2022, file: !745, line: 205, column: 45)
!2025 = !DILocation(line: 207, column: 13, scope: !2024)
!2026 = !DILocation(line: 211, column: 20, scope: !1885)
!2027 = !DILocation(line: 212, column: 18, scope: !1885)
!2028 = !DILocation(line: 213, column: 67, scope: !1885)
!2029 = !DILocation(line: 213, column: 74, scope: !1885)
!2030 = !DILocation(line: 213, column: 64, scope: !1885)
!2031 = !DILocation(line: 213, column: 56, scope: !1885)
!2032 = !DILocation(line: 214, column: 13, scope: !1885)
!2033 = !DILocation(line: 217, column: 20, scope: !1885)
!2034 = !DILocation(line: 218, column: 18, scope: !1885)
!2035 = !DILocation(line: 219, column: 67, scope: !1885)
!2036 = !DILocation(line: 219, column: 74, scope: !1885)
!2037 = !DILocation(line: 219, column: 64, scope: !1885)
!2038 = !DILocation(line: 219, column: 56, scope: !1885)
!2039 = !DILocation(line: 220, column: 13, scope: !1885)
!2040 = !DILocation(line: 223, column: 20, scope: !1885)
!2041 = !DILocation(line: 224, column: 18, scope: !1885)
!2042 = !DILocation(line: 225, column: 67, scope: !1885)
!2043 = !DILocation(line: 225, column: 74, scope: !1885)
!2044 = !DILocation(line: 225, column: 64, scope: !1885)
!2045 = !DILocation(line: 225, column: 56, scope: !1885)
!2046 = !DILocation(line: 226, column: 13, scope: !1885)
!2047 = !DILocation(line: 229, column: 20, scope: !1885)
!2048 = !DILocation(line: 230, column: 18, scope: !1885)
!2049 = !DILocation(line: 231, column: 67, scope: !1885)
!2050 = !DILocation(line: 231, column: 74, scope: !1885)
!2051 = !DILocation(line: 231, column: 64, scope: !1885)
!2052 = !DILocation(line: 231, column: 56, scope: !1885)
!2053 = !DILocation(line: 232, column: 13, scope: !1885)
!2054 = !DILocation(line: 235, column: 20, scope: !1885)
!2055 = !DILocation(line: 236, column: 18, scope: !1885)
!2056 = !DILocation(line: 237, column: 66, scope: !1885)
!2057 = !DILocation(line: 237, column: 73, scope: !1885)
!2058 = !DILocation(line: 237, column: 63, scope: !1885)
!2059 = !DILocation(line: 237, column: 56, scope: !1885)
!2060 = !DILocation(line: 238, column: 13, scope: !1885)
!2061 = !DILocation(line: 241, column: 20, scope: !1885)
!2062 = !DILocation(line: 242, column: 18, scope: !1885)
!2063 = !DILocation(line: 243, column: 67, scope: !1885)
!2064 = !DILocation(line: 243, column: 74, scope: !1885)
!2065 = !DILocation(line: 243, column: 64, scope: !1885)
!2066 = !DILocation(line: 243, column: 56, scope: !1885)
!2067 = !DILocation(line: 244, column: 13, scope: !1885)
!2068 = !DILocation(line: 247, column: 20, scope: !1885)
!2069 = !DILocation(line: 248, column: 18, scope: !1885)
!2070 = !DILocation(line: 249, column: 67, scope: !1885)
!2071 = !DILocation(line: 249, column: 74, scope: !1885)
!2072 = !DILocation(line: 249, column: 64, scope: !1885)
!2073 = !DILocation(line: 249, column: 56, scope: !1885)
!2074 = !DILocation(line: 250, column: 13, scope: !1885)
!2075 = !DILocation(line: 253, column: 20, scope: !1885)
!2076 = !DILocation(line: 254, column: 18, scope: !1885)
!2077 = !DILocation(line: 255, column: 67, scope: !1885)
!2078 = !DILocation(line: 255, column: 74, scope: !1885)
!2079 = !DILocation(line: 255, column: 64, scope: !1885)
!2080 = !DILocation(line: 255, column: 56, scope: !1885)
!2081 = !DILocation(line: 256, column: 13, scope: !1885)
!2082 = !DILocation(line: 259, column: 20, scope: !1885)
!2083 = !DILocation(line: 260, column: 18, scope: !1885)
!2084 = !DILocation(line: 261, column: 67, scope: !1885)
!2085 = !DILocation(line: 261, column: 74, scope: !1885)
!2086 = !DILocation(line: 261, column: 64, scope: !1885)
!2087 = !DILocation(line: 261, column: 56, scope: !1885)
!2088 = !DILocation(line: 262, column: 13, scope: !1885)
!2089 = !DILocation(line: 265, column: 20, scope: !1885)
!2090 = !DILocation(line: 266, column: 18, scope: !1885)
!2091 = !DILocation(line: 267, column: 67, scope: !1885)
!2092 = !DILocation(line: 267, column: 74, scope: !1885)
!2093 = !DILocation(line: 267, column: 64, scope: !1885)
!2094 = !DILocation(line: 267, column: 56, scope: !1885)
!2095 = !DILocation(line: 268, column: 13, scope: !1885)
!2096 = !DILocation(line: 271, column: 20, scope: !1885)
!2097 = !DILocation(line: 272, column: 18, scope: !1885)
!2098 = !DILocation(line: 273, column: 67, scope: !1885)
!2099 = !DILocation(line: 273, column: 74, scope: !1885)
!2100 = !DILocation(line: 273, column: 64, scope: !1885)
!2101 = !DILocation(line: 273, column: 56, scope: !1885)
!2102 = !DILocation(line: 274, column: 13, scope: !1885)
!2103 = !DILocation(line: 278, column: 1, scope: !1873)
!2104 = distinct !DISubprogram(name: "halWDTCRWrite", scope: !826, file: !826, line: 91, type: !2105, scopeLine: 92, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !825, retainedNodes: !2107)
!2105 = !DISubroutineType(types: !2106)
!2106 = !{!1876, !96, !80}
!2107 = !{!2108, !2109}
!2108 = !DILocalVariable(name: "pu4CRAddr", arg: 1, scope: !2104, file: !826, line: 91, type: !96)
!2109 = !DILocalVariable(name: "u4Value", arg: 2, scope: !2104, file: !826, line: 91, type: !80)
!2110 = !DILocation(line: 0, scope: !2104)
!2111 = !DILocation(line: 93, column: 27, scope: !2104)
!2112 = !DILocation(line: 95, column: 5, scope: !2104)
!2113 = !DILocation(line: 96, column: 5, scope: !2104)
!2114 = !DILocation(line: 97, column: 1, scope: !2104)
!2115 = distinct !DISubprogram(name: "halWDTReadInterruptStatus", scope: !826, file: !826, line: 99, type: !2116, scopeLine: 100, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !825, retainedNodes: !2118)
!2116 = !DISubroutineType(types: !2117)
!2117 = !{!80}
!2118 = !{!2119}
!2119 = !DILocalVariable(name: "pWDTTypeDef", scope: !2115, file: !826, line: 101, type: !829)
!2120 = !DILocation(line: 0, scope: !2115)
!2121 = !DILocation(line: 103, column: 26, scope: !2115)
!2122 = !DILocation(line: 103, column: 5, scope: !2115)
!2123 = distinct !DISubprogram(name: "halWDTRestart", scope: !826, file: !826, line: 106, type: !2124, scopeLine: 107, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !825, retainedNodes: !2126)
!2124 = !DISubroutineType(types: !2125)
!2125 = !{!1876}
!2126 = !{!2127}
!2127 = !DILocalVariable(name: "pWDTTypeDef", scope: !2123, file: !826, line: 108, type: !829)
!2128 = !DILocation(line: 0, scope: !2123)
!2129 = !DILocation(line: 113, column: 5, scope: !2123)
!2130 = !DILocation(line: 114, column: 1, scope: !2123)
!2131 = distinct !DISubprogram(name: "halWDTSetTimeout", scope: !826, file: !826, line: 117, type: !2132, scopeLine: 118, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !825, retainedNodes: !2134)
!2132 = !DISubroutineType(types: !2133)
!2133 = !{!1876, !1245}
!2134 = !{!2135, !2136, !2137}
!2135 = !DILocalVariable(name: "u2Timeout", arg: 1, scope: !2131, file: !826, line: 117, type: !1245)
!2136 = !DILocalVariable(name: "pWDTTypeDef", scope: !2131, file: !826, line: 119, type: !829)
!2137 = !DILocalVariable(name: "u4Val", scope: !2131, file: !826, line: 120, type: !80)
!2138 = !DILocation(line: 0, scope: !2131)
!2139 = !DILocation(line: 124, column: 27, scope: !2131)
!2140 = !DILocation(line: 126, column: 11, scope: !2131)
!2141 = !DILocation(line: 130, column: 15, scope: !2131)
!2142 = !DILocation(line: 130, column: 25, scope: !2131)
!2143 = !DILocation(line: 130, column: 11, scope: !2131)
!2144 = !DILocation(line: 132, column: 5, scope: !2131)
!2145 = !DILocation(line: 133, column: 5, scope: !2131)
!2146 = !DILocation(line: 134, column: 1, scope: !2131)
!2147 = distinct !DISubprogram(name: "WDT_LISR", scope: !826, file: !826, line: 136, type: !2148, scopeLine: 137, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !825, retainedNodes: !2150)
!2148 = !DISubroutineType(types: !2149)
!2149 = !{!1876, !152}
!2150 = !{!2151}
!2151 = !DILocalVariable(name: "irq_number", arg: 1, scope: !2147, file: !826, line: 136, type: !152)
!2152 = !DILocation(line: 0, scope: !2147)
!2153 = !DILocation(line: 138, column: 5, scope: !2147)
!2154 = !DILocation(line: 141, column: 48, scope: !2147)
!2155 = !DILocation(line: 142, column: 48, scope: !2147)
!2156 = !DILocation(line: 145, column: 41, scope: !2147)
!2157 = !DILocation(line: 148, column: 41, scope: !2147)
!2158 = !DILocation(line: 150, column: 5, scope: !2147)
!2159 = distinct !{!2159, !2158, !2160}
!2160 = !DILocation(line: 150, column: 14, scope: !2147)
!2161 = distinct !DISubprogram(name: "NVIC_DisableIRQ", scope: !158, file: !158, line: 1507, type: !2162, scopeLine: 1508, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !825, retainedNodes: !2164)
!2162 = !DISubroutineType(types: !2163)
!2163 = !{null, !61}
!2164 = !{!2165}
!2165 = !DILocalVariable(name: "IRQn", arg: 1, scope: !2161, file: !158, line: 1507, type: !61)
!2166 = !DILocation(line: 0, scope: !2161)
!2167 = !DILocation(line: 1509, column: 39, scope: !2161)
!2168 = !DILocation(line: 1510, column: 1, scope: !2161)
!2169 = distinct !DISubprogram(name: "halWDTConfig", scope: !826, file: !826, line: 152, type: !2170, scopeLine: 153, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !825, retainedNodes: !2172)
!2170 = !DISubroutineType(types: !2171)
!2171 = !{!1876, !133, !133, !133, !133}
!2172 = !{!2173, !2174, !2175, !2176, !2177, !2178, !2179}
!2173 = !DILocalVariable(name: "ucIRQ", arg: 1, scope: !2169, file: !826, line: 152, type: !133)
!2174 = !DILocalVariable(name: "ucExtEn", arg: 2, scope: !2169, file: !826, line: 152, type: !133)
!2175 = !DILocalVariable(name: "ucExtPolarity", arg: 3, scope: !2169, file: !826, line: 152, type: !133)
!2176 = !DILocalVariable(name: "ucGlobalRest", arg: 4, scope: !2169, file: !826, line: 152, type: !133)
!2177 = !DILocalVariable(name: "pWDTTypeDef", scope: !2169, file: !826, line: 155, type: !829)
!2178 = !DILocalVariable(name: "u4Val", scope: !2169, file: !826, line: 156, type: !80)
!2179 = !DILocalVariable(name: "efuse_buffer", scope: !2169, file: !826, line: 157, type: !183)
!2180 = !DILocation(line: 0, scope: !2169)
!2181 = !DILocation(line: 157, column: 5, scope: !2169)
!2182 = !DILocation(line: 161, column: 27, scope: !2169)
!2183 = !DILocation(line: 171, column: 11, scope: !2184)
!2184 = distinct !DILexicalBlock(scope: !2169, file: !826, line: 171, column: 9)
!2185 = !DILocation(line: 171, column: 9, scope: !2169)
!2186 = !DILocation(line: 178, column: 9, scope: !2169)
!2187 = !DILocation(line: 179, column: 9, scope: !2188)
!2188 = distinct !DILexicalBlock(scope: !2189, file: !826, line: 178, column: 21)
!2189 = distinct !DILexicalBlock(scope: !2169, file: !826, line: 178, column: 9)
!2190 = !DILocation(line: 180, column: 16, scope: !2191)
!2191 = distinct !DILexicalBlock(scope: !2188, file: !826, line: 180, column: 13)
!2192 = !DILocation(line: 180, column: 66, scope: !2191)
!2193 = !DILocation(line: 180, column: 75, scope: !2191)
!2194 = !DILocation(line: 182, column: 19, scope: !2195)
!2195 = distinct !DILexicalBlock(scope: !2191, file: !826, line: 181, column: 51)
!2196 = !DILocation(line: 184, column: 13, scope: !2195)
!2197 = !DILocation(line: 185, column: 13, scope: !2195)
!2198 = !DILocation(line: 186, column: 13, scope: !2195)
!2199 = !DILocation(line: 187, column: 9, scope: !2195)
!2200 = !DILocation(line: 195, column: 11, scope: !2201)
!2201 = distinct !DILexicalBlock(scope: !2169, file: !826, line: 195, column: 9)
!2202 = !DILocation(line: 195, column: 9, scope: !2169)
!2203 = !DILocation(line: 205, column: 11, scope: !2204)
!2204 = distinct !DILexicalBlock(scope: !2169, file: !826, line: 205, column: 9)
!2205 = !DILocation(line: 205, column: 9, scope: !2169)
!2206 = !DILocation(line: 212, column: 5, scope: !2169)
!2207 = !DILocation(line: 215, column: 11, scope: !2208)
!2208 = distinct !DILexicalBlock(scope: !2169, file: !826, line: 215, column: 9)
!2209 = !DILocation(line: 0, scope: !2208)
!2210 = !DILocation(line: 215, column: 9, scope: !2169)
!2211 = !DILocation(line: 222, column: 1, scope: !2169)
!2212 = distinct !DISubprogram(name: "NVIC_SetPriority", scope: !158, file: !158, line: 1577, type: !2213, scopeLine: 1578, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !825, retainedNodes: !2215)
!2213 = !DISubroutineType(types: !2214)
!2214 = !{null, !61, !92}
!2215 = !{!2216, !2217}
!2216 = !DILocalVariable(name: "IRQn", arg: 1, scope: !2212, file: !158, line: 1577, type: !61)
!2217 = !DILocalVariable(name: "priority", arg: 2, scope: !2212, file: !158, line: 1577, type: !92)
!2218 = !DILocation(line: 0, scope: !2212)
!2219 = !DILocation(line: 1582, column: 32, scope: !2220)
!2220 = distinct !DILexicalBlock(scope: !2221, file: !158, line: 1581, column: 8)
!2221 = distinct !DILexicalBlock(scope: !2212, file: !158, line: 1579, column: 6)
!2222 = !DILocation(line: 1583, column: 1, scope: !2212)
!2223 = distinct !DISubprogram(name: "NVIC_EnableIRQ", scope: !158, file: !158, line: 1494, type: !2162, scopeLine: 1495, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !825, retainedNodes: !2224)
!2224 = !{!2225}
!2225 = !DILocalVariable(name: "IRQn", arg: 1, scope: !2223, file: !158, line: 1494, type: !61)
!2226 = !DILocation(line: 0, scope: !2223)
!2227 = !DILocation(line: 1497, column: 46, scope: !2223)
!2228 = !DILocation(line: 1498, column: 1, scope: !2223)
!2229 = distinct !DISubprogram(name: "halWDTEnable", scope: !826, file: !826, line: 224, type: !2230, scopeLine: 225, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !825, retainedNodes: !2232)
!2230 = !DISubroutineType(types: !2231)
!2231 = !{!1876, !133}
!2232 = !{!2233, !2234, !2235}
!2233 = !DILocalVariable(name: "ucEnable", arg: 1, scope: !2229, file: !826, line: 224, type: !133)
!2234 = !DILocalVariable(name: "pWDTTypeDef", scope: !2229, file: !826, line: 226, type: !829)
!2235 = !DILocalVariable(name: "u4Val", scope: !2229, file: !826, line: 227, type: !80)
!2236 = !DILocation(line: 0, scope: !2229)
!2237 = !DILocation(line: 231, column: 27, scope: !2229)
!2238 = !DILocation(line: 242, column: 11, scope: !2239)
!2239 = distinct !DILexicalBlock(scope: !2229, file: !826, line: 242, column: 9)
!2240 = !DILocation(line: 242, column: 9, scope: !2229)
!2241 = !DILocation(line: 248, column: 5, scope: !2229)
!2242 = !DILocation(line: 250, column: 1, scope: !2229)
!2243 = distinct !DISubprogram(name: "halWDTSoftwareReset", scope: !826, file: !826, line: 252, type: !2124, scopeLine: 253, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !825, retainedNodes: !2244)
!2244 = !{!2245, !2246}
!2245 = !DILocalVariable(name: "pWDTTypeDef", scope: !2243, file: !826, line: 254, type: !829)
!2246 = !DILocalVariable(name: "efuse_buffer", scope: !2243, file: !826, line: 255, type: !183)
!2247 = !DILocation(line: 0, scope: !2243)
!2248 = !DILocation(line: 255, column: 5, scope: !2243)
!2249 = !DILocation(line: 258, column: 5, scope: !2243)
!2250 = !DILocation(line: 259, column: 12, scope: !2251)
!2251 = distinct !DILexicalBlock(scope: !2243, file: !826, line: 259, column: 9)
!2252 = !DILocation(line: 259, column: 62, scope: !2251)
!2253 = !DILocation(line: 259, column: 71, scope: !2251)
!2254 = !DILocation(line: 261, column: 9, scope: !2255)
!2255 = distinct !DILexicalBlock(scope: !2251, file: !826, line: 260, column: 47)
!2256 = !DILocation(line: 262, column: 5, scope: !2255)
!2257 = !DILocation(line: 264, column: 9, scope: !2258)
!2258 = distinct !DILexicalBlock(scope: !2251, file: !826, line: 262, column: 12)
!2259 = !DILocation(line: 266, column: 1, scope: !2243)
!2260 = distinct !DISubprogram(name: "NVIC_SetupVectorTable", scope: !883, file: !883, line: 47, type: !2261, scopeLine: 48, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !882, retainedNodes: !2263)
!2261 = !DISubroutineType(types: !2262)
!2262 = !{null, !92}
!2263 = !{!2264}
!2264 = !DILocalVariable(name: "addr", arg: 1, scope: !2260, file: !883, line: 47, type: !92)
!2265 = !DILocation(line: 0, scope: !2260)
!2266 = !DILocation(line: 49, column: 15, scope: !2260)
!2267 = !DILocation(line: 51, column: 5, scope: !2260)
!2268 = !{i64 2624}
!2269 = !DILocation(line: 52, column: 5, scope: !2260)
!2270 = !{i64 2651}
!2271 = !DILocation(line: 53, column: 1, scope: !2260)
!2272 = distinct !DISubprogram(name: "NVIC_SWInt", scope: !883, file: !883, line: 56, type: !2273, scopeLine: 57, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !882, retainedNodes: !2275)
!2273 = !DISubroutineType(types: !2274)
!2274 = !{null, !7}
!2275 = !{!2276}
!2276 = !DILocalVariable(name: "source", arg: 1, scope: !2272, file: !883, line: 56, type: !7)
!2277 = !DILocation(line: 0, scope: !2272)
!2278 = !DILocation(line: 58, column: 16, scope: !2272)
!2279 = !DILocation(line: 59, column: 1, scope: !2272)
!2280 = distinct !DISubprogram(name: "save_and_set_interrupt_mask", scope: !883, file: !883, line: 61, type: !2281, scopeLine: 62, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !882, retainedNodes: !2283)
!2281 = !DISubroutineType(types: !2282)
!2282 = !{!92}
!2283 = !{!2284}
!2284 = !DILocalVariable(name: "mask", scope: !2280, file: !883, line: 63, type: !92)
!2285 = !DILocation(line: 470, column: 3, scope: !2286, inlinedAt: !2290)
!2286 = distinct !DISubprogram(name: "__get_PRIMASK", scope: !2287, file: !2287, line: 466, type: !2281, scopeLine: 467, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !882, retainedNodes: !2288)
!2287 = !DIFile(filename: "../../../../../driver/CMSIS/Include/core_cmFunc.h", directory: "/home/mjshen/RTOSExploration/Embedded-GUI-for-MT2523/project/mt7687_hdk/hal_examples/wdt_feed_watchdog/GCC")
!2288 = !{!2289}
!2289 = !DILocalVariable(name: "result", scope: !2286, file: !2287, line: 468, type: !92)
!2290 = distinct !DILocation(line: 64, column: 5, scope: !2291)
!2291 = distinct !DILexicalBlock(scope: !2280, file: !883, line: 64, column: 5)
!2292 = !{i64 302173}
!2293 = !DILocation(line: 0, scope: !2286, inlinedAt: !2290)
!2294 = !DILocation(line: 0, scope: !2280)
!2295 = !DILocation(line: 330, column: 3, scope: !2296, inlinedAt: !2297)
!2296 = distinct !DISubprogram(name: "__disable_irq", scope: !2287, file: !2287, line: 328, type: !75, scopeLine: 329, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !882, retainedNodes: !1231)
!2297 = distinct !DILocation(line: 64, column: 5, scope: !2291)
!2298 = !{i64 298837}
!2299 = !DILocation(line: 65, column: 5, scope: !2280)
!2300 = distinct !DISubprogram(name: "restore_interrupt_mask", scope: !883, file: !883, line: 68, type: !2261, scopeLine: 69, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !882, retainedNodes: !2301)
!2301 = !{!2302}
!2302 = !DILocalVariable(name: "mask", arg: 1, scope: !2300, file: !883, line: 68, type: !92)
!2303 = !DILocation(line: 0, scope: !2300)
!2304 = !DILocalVariable(name: "priMask", arg: 1, scope: !2305, file: !2287, line: 481, type: !92)
!2305 = distinct !DISubprogram(name: "__set_PRIMASK", scope: !2287, file: !2287, line: 481, type: !2261, scopeLine: 482, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !882, retainedNodes: !2306)
!2306 = !{!2304}
!2307 = !DILocation(line: 0, scope: !2305, inlinedAt: !2308)
!2308 = distinct !DILocation(line: 70, column: 5, scope: !2309)
!2309 = distinct !DILexicalBlock(scope: !2300, file: !883, line: 70, column: 5)
!2310 = !DILocation(line: 483, column: 3, scope: !2305, inlinedAt: !2308)
!2311 = !{i64 302491}
!2312 = !DILocation(line: 71, column: 1, scope: !2300)
!2313 = distinct !DISubprogram(name: "pinmux_config", scope: !928, file: !928, line: 54, type: !2314, scopeLine: 55, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !927, retainedNodes: !2316)
!2314 = !DISubroutineType(types: !2315)
!2315 = !{!154, !1033, !92}
!2316 = !{!2317, !2318, !2319}
!2317 = !DILocalVariable(name: "gpio_index", arg: 1, scope: !2313, file: !928, line: 54, type: !1033)
!2318 = !DILocalVariable(name: "function", arg: 2, scope: !2313, file: !928, line: 54, type: !92)
!2319 = !DILocalVariable(name: "ePadIndex", scope: !2313, file: !928, line: 56, type: !1877)
!2320 = !DILocation(line: 0, scope: !2313)
!2321 = !DILocation(line: 60, column: 5, scope: !2313)
!2322 = !DILocation(line: 205, column: 38, scope: !2313)
!2323 = !DILocation(line: 205, column: 5, scope: !2313)
!2324 = !DILocation(line: 207, column: 5, scope: !2313)
!2325 = !DILocation(line: 208, column: 1, scope: !2313)
!2326 = distinct !DISubprogram(name: "get_current_count", scope: !962, file: !962, line: 56, type: !2281, scopeLine: 57, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !961, retainedNodes: !1231)
!2327 = !DILocation(line: 58, column: 12, scope: !2326)
!2328 = !DILocation(line: 58, column: 5, scope: !2326)
!2329 = distinct !DISubprogram(name: "delay_time", scope: !962, file: !962, line: 62, type: !1089, scopeLine: 63, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !961, retainedNodes: !2330)
!2330 = !{!2331, !2332, !2333}
!2331 = !DILocalVariable(name: "count", arg: 1, scope: !2329, file: !962, line: 62, type: !60)
!2332 = !DILocalVariable(name: "end_count", scope: !2329, file: !962, line: 64, type: !60)
!2333 = !DILocalVariable(name: "current", scope: !2329, file: !962, line: 64, type: !60)
!2334 = !DILocation(line: 0, scope: !2329)
!2335 = !DILocation(line: 66, column: 17, scope: !2329)
!2336 = !DILocation(line: 66, column: 37, scope: !2329)
!2337 = !DILocation(line: 66, column: 45, scope: !2329)
!2338 = !DILocation(line: 67, column: 15, scope: !2329)
!2339 = !DILocation(line: 68, column: 12, scope: !2329)
!2340 = !DILocation(line: 68, column: 5, scope: !2329)
!2341 = !DILocation(line: 69, column: 19, scope: !2342)
!2342 = distinct !DILexicalBlock(scope: !2329, file: !962, line: 68, column: 45)
!2343 = distinct !{!2343, !2340, !2344}
!2344 = !DILocation(line: 70, column: 5, scope: !2329)
!2345 = !DILocation(line: 72, column: 1, scope: !2329)
!2346 = distinct !DISubprogram(name: "delay_time_for_gpt4", scope: !962, file: !962, line: 75, type: !1089, scopeLine: 76, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !961, retainedNodes: !2347)
!2347 = !{!2348, !2349, !2350}
!2348 = !DILocalVariable(name: "count", arg: 1, scope: !2346, file: !962, line: 75, type: !60)
!2349 = !DILocalVariable(name: "end_count", scope: !2346, file: !962, line: 77, type: !60)
!2350 = !DILocalVariable(name: "current", scope: !2346, file: !962, line: 77, type: !60)
!2351 = !DILocation(line: 0, scope: !2346)
!2352 = !DILocation(line: 79, column: 17, scope: !2346)
!2353 = !DILocation(line: 79, column: 42, scope: !2346)
!2354 = !DILocation(line: 79, column: 50, scope: !2346)
!2355 = !DILocation(line: 80, column: 15, scope: !2346)
!2356 = !DILocation(line: 81, column: 12, scope: !2346)
!2357 = !DILocation(line: 81, column: 5, scope: !2346)
!2358 = !DILocation(line: 82, column: 19, scope: !2359)
!2359 = distinct !DILexicalBlock(scope: !2346, file: !962, line: 81, column: 45)
!2360 = distinct !{!2360, !2357, !2361}
!2361 = !DILocation(line: 83, column: 5, scope: !2346)
!2362 = !DILocation(line: 85, column: 1, scope: !2346)
!2363 = distinct !DISubprogram(name: "get_current_gpt4_count", scope: !962, file: !962, line: 95, type: !2281, scopeLine: 96, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !961, retainedNodes: !1231)
!2364 = !DILocation(line: 97, column: 13, scope: !2363)
!2365 = !DILocation(line: 97, column: 5, scope: !2363)
!2366 = distinct !DISubprogram(name: "delay_ms", scope: !962, file: !962, line: 107, type: !2261, scopeLine: 108, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !961, retainedNodes: !2367)
!2367 = !{!2368, !2369}
!2368 = !DILocalVariable(name: "ms", arg: 1, scope: !2366, file: !962, line: 107, type: !92)
!2369 = !DILocalVariable(name: "count", scope: !2366, file: !962, line: 109, type: !92)
!2370 = !DILocation(line: 0, scope: !2366)
!2371 = !DILocation(line: 111, column: 17, scope: !2366)
!2372 = !DILocation(line: 112, column: 17, scope: !2366)
!2373 = !DILocation(line: 112, column: 23, scope: !2366)
!2374 = !DILocation(line: 112, column: 11, scope: !2366)
!2375 = !DILocation(line: 113, column: 17, scope: !2366)
!2376 = !DILocation(line: 113, column: 23, scope: !2366)
!2377 = !DILocation(line: 113, column: 11, scope: !2366)
!2378 = !DILocation(line: 114, column: 17, scope: !2366)
!2379 = !DILocation(line: 114, column: 23, scope: !2366)
!2380 = !DILocation(line: 114, column: 11, scope: !2366)
!2381 = !DILocation(line: 115, column: 5, scope: !2366)
!2382 = !DILocation(line: 116, column: 1, scope: !2366)
!2383 = distinct !DISubprogram(name: "delay_us", scope: !962, file: !962, line: 120, type: !2261, scopeLine: 121, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !961, retainedNodes: !2384)
!2384 = !{!2385, !2386, !2387}
!2385 = !DILocalVariable(name: "us", arg: 1, scope: !2383, file: !962, line: 120, type: !92)
!2386 = !DILocalVariable(name: "count", scope: !2383, file: !962, line: 122, type: !92)
!2387 = !DILocalVariable(name: "ticks_per_us", scope: !2383, file: !962, line: 123, type: !92)
!2388 = !DILocation(line: 0, scope: !2383)
!2389 = !DILocation(line: 125, column: 20, scope: !2383)
!2390 = !DILocation(line: 125, column: 39, scope: !2383)
!2391 = !DILocation(line: 126, column: 26, scope: !2383)
!2392 = !DILocation(line: 128, column: 5, scope: !2383)
!2393 = !DILocation(line: 129, column: 1, scope: !2383)
!2394 = distinct !DISubprogram(name: "drvTMR_init", scope: !962, file: !962, line: 133, type: !2395, scopeLine: 134, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !961, retainedNodes: !2397)
!2395 = !DISubroutineType(types: !2396)
!2396 = !{null, !92, !92, !296, !74}
!2397 = !{!2398, !2399, !2400, !2401}
!2398 = !DILocalVariable(name: "timerNum", arg: 1, scope: !2394, file: !962, line: 133, type: !92)
!2399 = !DILocalVariable(name: "countValue", arg: 2, scope: !2394, file: !962, line: 133, type: !92)
!2400 = !DILocalVariable(name: "autoRepeat", arg: 3, scope: !2394, file: !962, line: 133, type: !296)
!2401 = !DILocalVariable(name: "TMR_Callback", arg: 4, scope: !2394, file: !962, line: 133, type: !74)
!2402 = !DILocation(line: 0, scope: !2394)
!2403 = !DILocation(line: 136, column: 5, scope: !2394)
!2404 = !DILocation(line: 138, column: 18, scope: !2405)
!2405 = distinct !DILexicalBlock(scope: !2394, file: !962, line: 138, column: 9)
!2406 = !DILocation(line: 138, column: 9, scope: !2394)
!2407 = !DILocation(line: 139, column: 30, scope: !2408)
!2408 = distinct !DILexicalBlock(scope: !2405, file: !962, line: 138, column: 27)
!2409 = !DILocation(line: 141, column: 5, scope: !2408)
!2410 = !DILocation(line: 142, column: 30, scope: !2411)
!2411 = distinct !DILexicalBlock(scope: !2405, file: !962, line: 141, column: 12)
!2412 = !DILocation(line: 0, scope: !2405)
!2413 = !DILocation(line: 146, column: 5, scope: !2394)
!2414 = !DILocation(line: 147, column: 1, scope: !2394)
!2415 = distinct !DISubprogram(name: "TMR_Start", scope: !962, file: !962, line: 149, type: !2261, scopeLine: 150, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !961, retainedNodes: !2416)
!2416 = !{!2417}
!2417 = !DILocalVariable(name: "timerNum", arg: 1, scope: !2415, file: !962, line: 149, type: !92)
!2418 = !DILocation(line: 0, scope: !2415)
!2419 = !DILocation(line: 151, column: 5, scope: !2415)
!2420 = !DILocation(line: 152, column: 1, scope: !2415)
!2421 = distinct !DISubprogram(name: "TMR_Stop", scope: !962, file: !962, line: 154, type: !2261, scopeLine: 155, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !961, retainedNodes: !2422)
!2422 = !{!2423}
!2423 = !DILocalVariable(name: "timerNum", arg: 1, scope: !2421, file: !962, line: 154, type: !92)
!2424 = !DILocation(line: 0, scope: !2421)
!2425 = !DILocation(line: 156, column: 5, scope: !2421)
!2426 = !DILocation(line: 157, column: 1, scope: !2421)
!2427 = distinct !DISubprogram(name: "drvGPT2Init", scope: !962, file: !962, line: 160, type: !75, scopeLine: 161, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !961, retainedNodes: !1231)
!2428 = !DILocation(line: 162, column: 5, scope: !2427)
!2429 = !DILocation(line: 163, column: 1, scope: !2427)
!2430 = distinct !DISubprogram(name: "drvGPT4Init", scope: !962, file: !962, line: 165, type: !75, scopeLine: 166, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !961, retainedNodes: !1231)
!2431 = !DILocation(line: 167, column: 5, scope: !2430)
!2432 = !DILocation(line: 168, column: 1, scope: !2430)
!2433 = distinct !DISubprogram(name: "clear_TMR_INT_status_bit", scope: !962, file: !962, line: 170, type: !2261, scopeLine: 171, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !961, retainedNodes: !2434)
!2434 = !{!2435}
!2435 = !DILocalVariable(name: "timerNum", arg: 1, scope: !2433, file: !962, line: 170, type: !92)
!2436 = !DILocation(line: 0, scope: !2433)
!2437 = !DILocation(line: 172, column: 9, scope: !2433)
!2438 = !DILocation(line: 177, column: 5, scope: !2439)
!2439 = distinct !DILexicalBlock(scope: !2440, file: !962, line: 175, column: 27)
!2440 = distinct !DILexicalBlock(scope: !2433, file: !962, line: 175, column: 9)
!2441 = !DILocation(line: 178, column: 1, scope: !2433)
!2442 = distinct !DISubprogram(name: "top_xtal_init", scope: !86, file: !86, line: 52, type: !75, scopeLine: 53, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !85, retainedNodes: !2443)
!2443 = !{!2444, !2445}
!2444 = !DILocalVariable(name: "u4RegVal", scope: !2442, file: !86, line: 54, type: !92)
!2445 = !DILocalVariable(name: "reg", scope: !2442, file: !86, line: 55, type: !623)
!2446 = !DILocation(line: 0, scope: !2442)
!2447 = !DILocation(line: 55, column: 25, scope: !2442)
!2448 = !DILocation(line: 56, column: 16, scope: !2442)
!2449 = !DILocation(line: 56, column: 23, scope: !2442)
!2450 = !DILocation(line: 58, column: 16, scope: !2442)
!2451 = !DILocation(line: 61, column: 5, scope: !2442)
!2452 = !DILocation(line: 59, column: 14, scope: !2442)
!2453 = !DILocation(line: 0, scope: !2454)
!2454 = distinct !DILexicalBlock(scope: !2442, file: !86, line: 61, column: 18)
!2455 = !DILocation(line: 87, column: 38, scope: !2442)
!2456 = !DILocation(line: 88, column: 21, scope: !2442)
!2457 = !DILocation(line: 88, column: 19, scope: !2442)
!2458 = !DILocation(line: 89, column: 5, scope: !2442)
!2459 = !DILocation(line: 90, column: 17, scope: !2442)
!2460 = !DILocation(line: 90, column: 33, scope: !2442)
!2461 = !DILocation(line: 90, column: 5, scope: !2442)
!2462 = !DILocation(line: 91, column: 1, scope: !2442)
!2463 = distinct !DISubprogram(name: "top_xtal_freq_get", scope: !86, file: !86, line: 98, type: !2281, scopeLine: 99, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !85, retainedNodes: !1231)
!2464 = !DILocation(line: 100, column: 12, scope: !2463)
!2465 = !DILocation(line: 100, column: 5, scope: !2463)
!2466 = distinct !DISubprogram(name: "top_mcu_freq_get", scope: !86, file: !86, line: 108, type: !2281, scopeLine: 109, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !85, retainedNodes: !1231)
!2467 = !DILocation(line: 110, column: 12, scope: !2466)
!2468 = !DILocation(line: 110, column: 5, scope: !2466)
!2469 = distinct !DISubprogram(name: "cmnPLL1ON", scope: !86, file: !86, line: 118, type: !75, scopeLine: 119, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !85, retainedNodes: !2470)
!2470 = !{!2471, !2472}
!2471 = !DILocalVariable(name: "reg", scope: !2469, file: !86, line: 120, type: !91)
!2472 = !DILocalVariable(name: "pTopCfgCM4PWRCtl", scope: !2469, file: !86, line: 121, type: !90)
!2473 = !DILocation(line: 120, column: 5, scope: !2469)
!2474 = !DILocation(line: 120, column: 23, scope: !2469)
!2475 = !DILocation(line: 0, scope: !2469)
!2476 = !DILocation(line: 123, column: 11, scope: !2469)
!2477 = !DILocation(line: 123, column: 9, scope: !2469)
!2478 = !DILocation(line: 124, column: 12, scope: !2469)
!2479 = !DILocation(line: 124, column: 16, scope: !2469)
!2480 = !DILocation(line: 124, column: 39, scope: !2469)
!2481 = !DILocation(line: 124, column: 9, scope: !2469)
!2482 = !DILocation(line: 126, column: 9, scope: !2483)
!2483 = distinct !DILexicalBlock(scope: !2469, file: !86, line: 126, column: 9)
!2484 = !DILocation(line: 126, column: 13, scope: !2483)
!2485 = !DILocation(line: 126, column: 9, scope: !2469)
!2486 = !DILocation(line: 127, column: 15, scope: !2487)
!2487 = distinct !DILexicalBlock(scope: !2483, file: !86, line: 126, column: 47)
!2488 = !DILocation(line: 127, column: 13, scope: !2487)
!2489 = !DILocation(line: 128, column: 15, scope: !2487)
!2490 = !DILocation(line: 128, column: 19, scope: !2487)
!2491 = !DILocation(line: 128, column: 13, scope: !2487)
!2492 = !DILocation(line: 129, column: 15, scope: !2487)
!2493 = !DILocation(line: 129, column: 19, scope: !2487)
!2494 = !DILocation(line: 129, column: 13, scope: !2487)
!2495 = !DILocation(line: 130, column: 46, scope: !2487)
!2496 = !DILocation(line: 130, column: 9, scope: !2487)
!2497 = !DILocation(line: 132, column: 9, scope: !2487)
!2498 = !DILocation(line: 133, column: 19, scope: !2499)
!2499 = distinct !DILexicalBlock(scope: !2487, file: !86, line: 132, column: 12)
!2500 = !DILocation(line: 133, column: 17, scope: !2499)
!2501 = !DILocation(line: 134, column: 19, scope: !2499)
!2502 = !DILocation(line: 134, column: 23, scope: !2499)
!2503 = !DILocation(line: 134, column: 17, scope: !2499)
!2504 = !DILocation(line: 135, column: 19, scope: !2487)
!2505 = !DILocation(line: 135, column: 18, scope: !2487)
!2506 = !DILocation(line: 135, column: 9, scope: !2499)
!2507 = distinct !{!2507, !2497, !2508}
!2508 = !DILocation(line: 135, column: 22, scope: !2487)
!2509 = !DILocation(line: 138, column: 1, scope: !2469)
!2510 = distinct !DISubprogram(name: "cmnReadRegister32", scope: !2511, file: !2511, line: 176, type: !2512, scopeLine: 177, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !85, retainedNodes: !2516)
!2511 = !DIFile(filename: "../../../../../driver/CMSIS/Device/MTK/mt7687/Include/system_mt7687.h", directory: "/home/mjshen/RTOSExploration/Embedded-GUI-for-MT2523/project/mt7687_hdk/hal_examples/wdt_feed_watchdog/GCC")
!2512 = !DISubroutineType(types: !2513)
!2513 = !{!92, !2514}
!2514 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2515, size: 32)
!2515 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: null)
!2516 = !{!2517}
!2517 = !DILocalVariable(name: "Register", arg: 1, scope: !2510, file: !2511, line: 176, type: !2514)
!2518 = !DILocation(line: 0, scope: !2510)
!2519 = !DILocation(line: 178, column: 13, scope: !2510)
!2520 = !DILocation(line: 178, column: 12, scope: !2510)
!2521 = !DILocation(line: 178, column: 5, scope: !2510)
!2522 = distinct !DISubprogram(name: "cmnWriteRegister32", scope: !2511, file: !2511, line: 171, type: !2523, scopeLine: 172, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !85, retainedNodes: !2525)
!2523 = !DISubroutineType(types: !2524)
!2524 = !{null, !2514, !92}
!2525 = !{!2526, !2527}
!2526 = !DILocalVariable(name: "Register", arg: 1, scope: !2522, file: !2511, line: 171, type: !2514)
!2527 = !DILocalVariable(name: "Value", arg: 2, scope: !2522, file: !2511, line: 171, type: !92)
!2528 = !DILocation(line: 0, scope: !2522)
!2529 = !DILocation(line: 173, column: 6, scope: !2522)
!2530 = !DILocation(line: 173, column: 36, scope: !2522)
!2531 = !DILocation(line: 174, column: 1, scope: !2522)
!2532 = distinct !DISubprogram(name: "cmnPLL1ON_PLL2ON", scope: !86, file: !86, line: 145, type: !2533, scopeLine: 146, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !85, retainedNodes: !2535)
!2533 = !DISubroutineType(types: !2534)
!2534 = !{null, !183}
!2535 = !{!2536, !2537, !2538}
!2536 = !DILocalVariable(name: "fg960M", arg: 1, scope: !2532, file: !86, line: 145, type: !183)
!2537 = !DILocalVariable(name: "reg", scope: !2532, file: !86, line: 147, type: !91)
!2538 = !DILocalVariable(name: "pTopCfgCM4PWRCtl", scope: !2532, file: !86, line: 148, type: !90)
!2539 = !DILocation(line: 0, scope: !2532)
!2540 = !DILocation(line: 147, column: 5, scope: !2532)
!2541 = !DILocation(line: 147, column: 23, scope: !2532)
!2542 = !DILocation(line: 150, column: 11, scope: !2532)
!2543 = !DILocation(line: 150, column: 9, scope: !2532)
!2544 = !DILocation(line: 151, column: 12, scope: !2532)
!2545 = !DILocation(line: 151, column: 16, scope: !2532)
!2546 = !DILocation(line: 151, column: 39, scope: !2532)
!2547 = !DILocation(line: 151, column: 9, scope: !2532)
!2548 = !DILocation(line: 153, column: 9, scope: !2549)
!2549 = distinct !DILexicalBlock(scope: !2532, file: !86, line: 153, column: 9)
!2550 = !DILocation(line: 153, column: 13, scope: !2549)
!2551 = !DILocation(line: 153, column: 9, scope: !2532)
!2552 = !DILocation(line: 154, column: 15, scope: !2553)
!2553 = distinct !DILexicalBlock(scope: !2549, file: !86, line: 153, column: 45)
!2554 = !DILocation(line: 154, column: 13, scope: !2553)
!2555 = !DILocation(line: 155, column: 15, scope: !2553)
!2556 = !DILocation(line: 155, column: 19, scope: !2553)
!2557 = !DILocation(line: 155, column: 13, scope: !2553)
!2558 = !DILocation(line: 156, column: 15, scope: !2553)
!2559 = !DILocation(line: 156, column: 19, scope: !2553)
!2560 = !DILocation(line: 156, column: 13, scope: !2553)
!2561 = !DILocation(line: 157, column: 15, scope: !2553)
!2562 = !DILocation(line: 157, column: 13, scope: !2553)
!2563 = !DILocation(line: 158, column: 46, scope: !2553)
!2564 = !DILocation(line: 158, column: 9, scope: !2553)
!2565 = !DILocation(line: 160, column: 15, scope: !2553)
!2566 = !DILocation(line: 160, column: 13, scope: !2553)
!2567 = !DILocation(line: 161, column: 15, scope: !2553)
!2568 = !DILocation(line: 161, column: 19, scope: !2553)
!2569 = !DILocation(line: 161, column: 13, scope: !2553)
!2570 = !DILocation(line: 162, column: 15, scope: !2553)
!2571 = !DILocation(line: 162, column: 19, scope: !2553)
!2572 = !DILocation(line: 162, column: 13, scope: !2553)
!2573 = !DILocation(line: 163, column: 15, scope: !2553)
!2574 = !DILocation(line: 163, column: 19, scope: !2553)
!2575 = !DILocation(line: 163, column: 13, scope: !2553)
!2576 = !DILocation(line: 164, column: 46, scope: !2553)
!2577 = !DILocation(line: 164, column: 9, scope: !2553)
!2578 = !DILocation(line: 166, column: 9, scope: !2553)
!2579 = !DILocation(line: 167, column: 19, scope: !2580)
!2580 = distinct !DILexicalBlock(scope: !2553, file: !86, line: 166, column: 12)
!2581 = !DILocation(line: 167, column: 17, scope: !2580)
!2582 = !DILocation(line: 168, column: 19, scope: !2580)
!2583 = !DILocation(line: 168, column: 23, scope: !2580)
!2584 = !DILocation(line: 168, column: 17, scope: !2580)
!2585 = !DILocation(line: 169, column: 19, scope: !2553)
!2586 = !DILocation(line: 169, column: 18, scope: !2553)
!2587 = !DILocation(line: 169, column: 9, scope: !2580)
!2588 = distinct !{!2588, !2578, !2589}
!2589 = !DILocation(line: 169, column: 22, scope: !2553)
!2590 = !DILocation(line: 171, column: 15, scope: !2553)
!2591 = !DILocation(line: 171, column: 13, scope: !2553)
!2592 = !DILocation(line: 172, column: 15, scope: !2553)
!2593 = !DILocation(line: 172, column: 19, scope: !2553)
!2594 = !DILocation(line: 172, column: 13, scope: !2553)
!2595 = !DILocation(line: 173, column: 15, scope: !2553)
!2596 = !DILocation(line: 173, column: 19, scope: !2553)
!2597 = !DILocation(line: 173, column: 13, scope: !2553)
!2598 = !DILocation(line: 174, column: 5, scope: !2553)
!2599 = !DILocation(line: 176, column: 11, scope: !2532)
!2600 = !DILocation(line: 176, column: 9, scope: !2532)
!2601 = !DILocation(line: 177, column: 9, scope: !2602)
!2602 = distinct !DILexicalBlock(scope: !2532, file: !86, line: 177, column: 9)
!2603 = !DILocation(line: 0, scope: !2602)
!2604 = !DILocation(line: 177, column: 9, scope: !2532)
!2605 = !DILocation(line: 178, column: 19, scope: !2606)
!2606 = distinct !DILexicalBlock(scope: !2602, file: !86, line: 177, column: 17)
!2607 = !DILocation(line: 178, column: 13, scope: !2606)
!2608 = !DILocation(line: 179, column: 5, scope: !2606)
!2609 = !DILocation(line: 180, column: 13, scope: !2610)
!2610 = distinct !DILexicalBlock(scope: !2602, file: !86, line: 179, column: 12)
!2611 = !DILocation(line: 182, column: 42, scope: !2532)
!2612 = !DILocation(line: 182, column: 5, scope: !2532)
!2613 = !DILocation(line: 184, column: 1, scope: !2532)
!2614 = distinct !DISubprogram(name: "cmnPLL1OFF_PLL2OFF", scope: !86, file: !86, line: 191, type: !75, scopeLine: 192, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !85, retainedNodes: !2615)
!2615 = !{!2616, !2617}
!2616 = !DILocalVariable(name: "reg", scope: !2614, file: !86, line: 193, type: !91)
!2617 = !DILocalVariable(name: "pTopCfgCM4PWRCtl", scope: !2614, file: !86, line: 194, type: !90)
!2618 = !DILocation(line: 193, column: 5, scope: !2614)
!2619 = !DILocation(line: 193, column: 23, scope: !2614)
!2620 = !DILocation(line: 0, scope: !2614)
!2621 = !DILocation(line: 196, column: 11, scope: !2614)
!2622 = !DILocation(line: 196, column: 9, scope: !2614)
!2623 = !DILocation(line: 197, column: 11, scope: !2614)
!2624 = !DILocation(line: 197, column: 15, scope: !2614)
!2625 = !DILocation(line: 197, column: 9, scope: !2614)
!2626 = !DILocation(line: 198, column: 11, scope: !2614)
!2627 = !DILocation(line: 198, column: 15, scope: !2614)
!2628 = !DILocation(line: 198, column: 9, scope: !2614)
!2629 = !DILocation(line: 199, column: 11, scope: !2614)
!2630 = !DILocation(line: 199, column: 9, scope: !2614)
!2631 = !DILocation(line: 200, column: 42, scope: !2614)
!2632 = !DILocation(line: 200, column: 5, scope: !2614)
!2633 = !DILocation(line: 202, column: 11, scope: !2614)
!2634 = !DILocation(line: 202, column: 9, scope: !2614)
!2635 = !DILocation(line: 203, column: 11, scope: !2614)
!2636 = !DILocation(line: 203, column: 15, scope: !2614)
!2637 = !DILocation(line: 203, column: 9, scope: !2614)
!2638 = !DILocation(line: 204, column: 11, scope: !2614)
!2639 = !DILocation(line: 204, column: 15, scope: !2614)
!2640 = !DILocation(line: 204, column: 9, scope: !2614)
!2641 = !DILocation(line: 205, column: 11, scope: !2614)
!2642 = !DILocation(line: 205, column: 9, scope: !2614)
!2643 = !DILocation(line: 206, column: 42, scope: !2614)
!2644 = !DILocation(line: 206, column: 5, scope: !2614)
!2645 = !DILocation(line: 209, column: 1, scope: !2614)
!2646 = distinct !DISubprogram(name: "cmnCpuClkConfigureToXtal", scope: !86, file: !86, line: 216, type: !75, scopeLine: 217, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !85, retainedNodes: !2647)
!2647 = !{!2648, !2649}
!2648 = !DILocalVariable(name: "reg", scope: !2646, file: !86, line: 218, type: !91)
!2649 = !DILocalVariable(name: "pTopCfgCM4CKG", scope: !2646, file: !86, line: 219, type: !90)
!2650 = !DILocation(line: 218, column: 5, scope: !2646)
!2651 = !DILocation(line: 218, column: 23, scope: !2646)
!2652 = !DILocation(line: 0, scope: !2646)
!2653 = !DILocation(line: 222, column: 11, scope: !2646)
!2654 = !DILocation(line: 222, column: 9, scope: !2646)
!2655 = !DILocation(line: 223, column: 11, scope: !2646)
!2656 = !DILocation(line: 223, column: 15, scope: !2646)
!2657 = !DILocation(line: 223, column: 9, scope: !2646)
!2658 = !DILocation(line: 224, column: 11, scope: !2646)
!2659 = !DILocation(line: 224, column: 9, scope: !2646)
!2660 = !DILocation(line: 225, column: 39, scope: !2646)
!2661 = !DILocation(line: 225, column: 5, scope: !2646)
!2662 = !DILocation(line: 228, column: 11, scope: !2646)
!2663 = !DILocation(line: 228, column: 9, scope: !2646)
!2664 = !DILocation(line: 229, column: 11, scope: !2646)
!2665 = !DILocation(line: 229, column: 15, scope: !2646)
!2666 = !DILocation(line: 229, column: 9, scope: !2646)
!2667 = !DILocation(line: 230, column: 11, scope: !2646)
!2668 = !DILocation(line: 230, column: 9, scope: !2646)
!2669 = !DILocation(line: 231, column: 39, scope: !2646)
!2670 = !DILocation(line: 231, column: 5, scope: !2646)
!2671 = !DILocation(line: 233, column: 5, scope: !2646)
!2672 = !DILocation(line: 233, column: 12, scope: !2646)
!2673 = !DILocation(line: 233, column: 19, scope: !2646)
!2674 = !DILocation(line: 233, column: 16, scope: !2646)
!2675 = distinct !{!2675, !2671, !2676}
!2676 = !DILocation(line: 233, column: 52, scope: !2646)
!2677 = !DILocation(line: 235, column: 21, scope: !2646)
!2678 = !DILocation(line: 235, column: 19, scope: !2646)
!2679 = !DILocation(line: 236, column: 5, scope: !2646)
!2680 = !DILocation(line: 237, column: 17, scope: !2646)
!2681 = !DILocation(line: 237, column: 33, scope: !2646)
!2682 = !DILocation(line: 237, column: 5, scope: !2646)
!2683 = !DILocation(line: 239, column: 1, scope: !2646)
!2684 = distinct !DISubprogram(name: "cmnCpuClkConfigureTo192M", scope: !86, file: !86, line: 246, type: !75, scopeLine: 247, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !85, retainedNodes: !2685)
!2685 = !{!2686, !2687}
!2686 = !DILocalVariable(name: "reg", scope: !2684, file: !86, line: 248, type: !91)
!2687 = !DILocalVariable(name: "pTopCfgCM4CKG", scope: !2684, file: !86, line: 249, type: !90)
!2688 = !DILocation(line: 248, column: 5, scope: !2684)
!2689 = !DILocation(line: 248, column: 23, scope: !2684)
!2690 = !DILocation(line: 0, scope: !2684)
!2691 = !DILocation(line: 252, column: 5, scope: !2684)
!2692 = !DILocation(line: 255, column: 11, scope: !2684)
!2693 = !DILocation(line: 255, column: 9, scope: !2684)
!2694 = !DILocation(line: 256, column: 11, scope: !2684)
!2695 = !DILocation(line: 256, column: 15, scope: !2684)
!2696 = !DILocation(line: 256, column: 9, scope: !2684)
!2697 = !DILocation(line: 257, column: 11, scope: !2684)
!2698 = !DILocation(line: 257, column: 15, scope: !2684)
!2699 = !DILocation(line: 257, column: 9, scope: !2684)
!2700 = !DILocation(line: 258, column: 39, scope: !2684)
!2701 = !DILocation(line: 258, column: 5, scope: !2684)
!2702 = !DILocation(line: 260, column: 5, scope: !2684)
!2703 = !DILocation(line: 260, column: 12, scope: !2684)
!2704 = !DILocation(line: 260, column: 19, scope: !2684)
!2705 = !DILocation(line: 260, column: 16, scope: !2684)
!2706 = distinct !{!2706, !2702, !2707}
!2707 = !DILocation(line: 260, column: 52, scope: !2684)
!2708 = !DILocation(line: 263, column: 11, scope: !2684)
!2709 = !DILocation(line: 263, column: 9, scope: !2684)
!2710 = !DILocation(line: 264, column: 11, scope: !2684)
!2711 = !DILocation(line: 264, column: 15, scope: !2684)
!2712 = !DILocation(line: 264, column: 9, scope: !2684)
!2713 = !DILocation(line: 265, column: 11, scope: !2684)
!2714 = !DILocation(line: 265, column: 15, scope: !2684)
!2715 = !DILocation(line: 265, column: 9, scope: !2684)
!2716 = !DILocation(line: 266, column: 39, scope: !2684)
!2717 = !DILocation(line: 266, column: 5, scope: !2684)
!2718 = !DILocation(line: 269, column: 11, scope: !2684)
!2719 = !DILocation(line: 269, column: 9, scope: !2684)
!2720 = !DILocation(line: 270, column: 11, scope: !2684)
!2721 = !DILocation(line: 270, column: 15, scope: !2684)
!2722 = !DILocation(line: 270, column: 9, scope: !2684)
!2723 = !DILocation(line: 271, column: 11, scope: !2684)
!2724 = !DILocation(line: 271, column: 15, scope: !2684)
!2725 = !DILocation(line: 271, column: 9, scope: !2684)
!2726 = !DILocation(line: 272, column: 39, scope: !2684)
!2727 = !DILocation(line: 272, column: 5, scope: !2684)
!2728 = !DILocation(line: 273, column: 19, scope: !2684)
!2729 = !DILocation(line: 274, column: 5, scope: !2684)
!2730 = !DILocation(line: 275, column: 17, scope: !2684)
!2731 = !DILocation(line: 275, column: 33, scope: !2684)
!2732 = !DILocation(line: 275, column: 5, scope: !2684)
!2733 = !DILocation(line: 277, column: 1, scope: !2684)
!2734 = distinct !DISubprogram(name: "cmnCpuClkConfigureTo160M", scope: !86, file: !86, line: 284, type: !75, scopeLine: 285, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !85, retainedNodes: !2735)
!2735 = !{!2736, !2737}
!2736 = !DILocalVariable(name: "reg", scope: !2734, file: !86, line: 286, type: !91)
!2737 = !DILocalVariable(name: "pTopCfgCM4CKG", scope: !2734, file: !86, line: 287, type: !90)
!2738 = !DILocation(line: 286, column: 5, scope: !2734)
!2739 = !DILocation(line: 286, column: 23, scope: !2734)
!2740 = !DILocation(line: 0, scope: !2734)
!2741 = !DILocation(line: 290, column: 5, scope: !2734)
!2742 = !DILocation(line: 293, column: 11, scope: !2734)
!2743 = !DILocation(line: 293, column: 9, scope: !2734)
!2744 = !DILocation(line: 294, column: 11, scope: !2734)
!2745 = !DILocation(line: 294, column: 15, scope: !2734)
!2746 = !DILocation(line: 294, column: 9, scope: !2734)
!2747 = !DILocation(line: 295, column: 11, scope: !2734)
!2748 = !DILocation(line: 295, column: 15, scope: !2734)
!2749 = !DILocation(line: 295, column: 9, scope: !2734)
!2750 = !DILocation(line: 296, column: 39, scope: !2734)
!2751 = !DILocation(line: 296, column: 5, scope: !2734)
!2752 = !DILocation(line: 298, column: 5, scope: !2734)
!2753 = !DILocation(line: 298, column: 12, scope: !2734)
!2754 = !DILocation(line: 298, column: 19, scope: !2734)
!2755 = !DILocation(line: 298, column: 16, scope: !2734)
!2756 = distinct !{!2756, !2752, !2757}
!2757 = !DILocation(line: 298, column: 52, scope: !2734)
!2758 = !DILocation(line: 301, column: 11, scope: !2734)
!2759 = !DILocation(line: 301, column: 9, scope: !2734)
!2760 = !DILocation(line: 302, column: 11, scope: !2734)
!2761 = !DILocation(line: 302, column: 15, scope: !2734)
!2762 = !DILocation(line: 302, column: 9, scope: !2734)
!2763 = !DILocation(line: 303, column: 11, scope: !2734)
!2764 = !DILocation(line: 303, column: 15, scope: !2734)
!2765 = !DILocation(line: 303, column: 9, scope: !2734)
!2766 = !DILocation(line: 304, column: 39, scope: !2734)
!2767 = !DILocation(line: 304, column: 5, scope: !2734)
!2768 = !DILocation(line: 307, column: 11, scope: !2734)
!2769 = !DILocation(line: 307, column: 9, scope: !2734)
!2770 = !DILocation(line: 308, column: 11, scope: !2734)
!2771 = !DILocation(line: 308, column: 15, scope: !2734)
!2772 = !DILocation(line: 308, column: 9, scope: !2734)
!2773 = !DILocation(line: 309, column: 11, scope: !2734)
!2774 = !DILocation(line: 309, column: 15, scope: !2734)
!2775 = !DILocation(line: 309, column: 9, scope: !2734)
!2776 = !DILocation(line: 310, column: 39, scope: !2734)
!2777 = !DILocation(line: 310, column: 5, scope: !2734)
!2778 = !DILocation(line: 311, column: 19, scope: !2734)
!2779 = !DILocation(line: 312, column: 5, scope: !2734)
!2780 = !DILocation(line: 313, column: 17, scope: !2734)
!2781 = !DILocation(line: 313, column: 33, scope: !2734)
!2782 = !DILocation(line: 313, column: 5, scope: !2734)
!2783 = !DILocation(line: 315, column: 1, scope: !2734)
!2784 = distinct !DISubprogram(name: "cmnCpuClkConfigureTo64M", scope: !86, file: !86, line: 323, type: !75, scopeLine: 324, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !85, retainedNodes: !2785)
!2785 = !{!2786, !2787}
!2786 = !DILocalVariable(name: "reg", scope: !2784, file: !86, line: 325, type: !91)
!2787 = !DILocalVariable(name: "pTopCfgCM4CKG", scope: !2784, file: !86, line: 326, type: !90)
!2788 = !DILocation(line: 325, column: 5, scope: !2784)
!2789 = !DILocation(line: 325, column: 23, scope: !2784)
!2790 = !DILocation(line: 0, scope: !2784)
!2791 = !DILocation(line: 329, column: 5, scope: !2784)
!2792 = !DILocation(line: 332, column: 11, scope: !2784)
!2793 = !DILocation(line: 332, column: 9, scope: !2784)
!2794 = !DILocation(line: 333, column: 11, scope: !2784)
!2795 = !DILocation(line: 333, column: 15, scope: !2784)
!2796 = !DILocation(line: 333, column: 9, scope: !2784)
!2797 = !DILocation(line: 334, column: 11, scope: !2784)
!2798 = !DILocation(line: 334, column: 9, scope: !2784)
!2799 = !DILocation(line: 335, column: 39, scope: !2784)
!2800 = !DILocation(line: 335, column: 5, scope: !2784)
!2801 = !DILocation(line: 337, column: 5, scope: !2784)
!2802 = !DILocation(line: 337, column: 12, scope: !2784)
!2803 = !DILocation(line: 337, column: 19, scope: !2784)
!2804 = !DILocation(line: 337, column: 16, scope: !2784)
!2805 = distinct !{!2805, !2801, !2806}
!2806 = !DILocation(line: 337, column: 52, scope: !2784)
!2807 = !DILocation(line: 340, column: 11, scope: !2784)
!2808 = !DILocation(line: 340, column: 9, scope: !2784)
!2809 = !DILocation(line: 341, column: 11, scope: !2784)
!2810 = !DILocation(line: 341, column: 15, scope: !2784)
!2811 = !DILocation(line: 341, column: 9, scope: !2784)
!2812 = !DILocation(line: 342, column: 11, scope: !2784)
!2813 = !DILocation(line: 342, column: 15, scope: !2784)
!2814 = !DILocation(line: 342, column: 9, scope: !2784)
!2815 = !DILocation(line: 343, column: 39, scope: !2784)
!2816 = !DILocation(line: 343, column: 5, scope: !2784)
!2817 = !DILocation(line: 344, column: 19, scope: !2784)
!2818 = !DILocation(line: 345, column: 5, scope: !2784)
!2819 = !DILocation(line: 346, column: 17, scope: !2784)
!2820 = !DILocation(line: 346, column: 33, scope: !2784)
!2821 = !DILocation(line: 346, column: 5, scope: !2784)
!2822 = !DILocation(line: 348, column: 1, scope: !2784)
!2823 = distinct !DISubprogram(name: "cmnSerialFlashClkConfToXtal", scope: !86, file: !86, line: 353, type: !75, scopeLine: 354, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !85, retainedNodes: !2824)
!2824 = !{!2825, !2826}
!2825 = !DILocalVariable(name: "reg", scope: !2823, file: !86, line: 355, type: !79)
!2826 = !DILocalVariable(name: "pTopCfgHclk", scope: !2823, file: !86, line: 356, type: !96)
!2827 = !DILocation(line: 355, column: 5, scope: !2823)
!2828 = !DILocation(line: 355, column: 21, scope: !2823)
!2829 = !DILocation(line: 0, scope: !2823)
!2830 = !DILocation(line: 358, column: 11, scope: !2823)
!2831 = !DILocation(line: 358, column: 9, scope: !2823)
!2832 = !DILocation(line: 359, column: 11, scope: !2823)
!2833 = !DILocation(line: 359, column: 15, scope: !2823)
!2834 = !DILocation(line: 359, column: 9, scope: !2823)
!2835 = !DILocation(line: 360, column: 11, scope: !2823)
!2836 = !DILocation(line: 360, column: 9, scope: !2823)
!2837 = !DILocation(line: 361, column: 37, scope: !2823)
!2838 = !DILocation(line: 361, column: 5, scope: !2823)
!2839 = !DILocation(line: 362, column: 1, scope: !2823)
!2840 = distinct !DISubprogram(name: "getc", scope: !103, file: !103, line: 68, type: !2841, scopeLine: 69, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !102, retainedNodes: !2843)
!2841 = !DISubroutineType(types: !2842)
!2842 = !{!13}
!2843 = !{!2844}
!2844 = !DILocalVariable(name: "rc", scope: !2840, file: !103, line: 71, type: !13)
!2845 = !DILocation(line: 71, column: 14, scope: !2840)
!2846 = !DILocation(line: 0, scope: !2840)
!2847 = !DILocation(line: 72, column: 5, scope: !2840)
!2848 = distinct !DISubprogram(name: "getc_nowait", scope: !103, file: !103, line: 80, type: !2841, scopeLine: 81, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !102, retainedNodes: !2849)
!2849 = !{!2850}
!2850 = !DILocalVariable(name: "c", scope: !2848, file: !103, line: 82, type: !352)
!2851 = !DILocation(line: 84, column: 9, scope: !2852)
!2852 = distinct !DILexicalBlock(scope: !2848, file: !103, line: 84, column: 9)
!2853 = !DILocation(line: 84, column: 40, scope: !2852)
!2854 = !DILocation(line: 84, column: 9, scope: !2848)
!2855 = !DILocation(line: 85, column: 13, scope: !2856)
!2856 = distinct !DILexicalBlock(scope: !2852, file: !103, line: 84, column: 47)
!2857 = !DILocation(line: 86, column: 16, scope: !2856)
!2858 = !DILocation(line: 0, scope: !2848)
!2859 = !DILocation(line: 86, column: 9, scope: !2856)
!2860 = !DILocation(line: 0, scope: !2852)
!2861 = !DILocation(line: 90, column: 1, scope: !2848)
!2862 = distinct !DISubprogram(name: "uart_output_char", scope: !103, file: !103, line: 93, type: !2863, scopeLine: 94, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !102, retainedNodes: !2866)
!2863 = !DISubroutineType(types: !2864)
!2864 = !{null, !2865, !134}
!2865 = !DIDerivedType(tag: DW_TAG_typedef, name: "UART_PORT", file: !106, line: 75, baseType: !105)
!2866 = !{!2867, !2868, !2869}
!2867 = !DILocalVariable(name: "port_no", arg: 1, scope: !2862, file: !103, line: 93, type: !2865)
!2868 = !DILocalVariable(name: "c", arg: 2, scope: !2862, file: !103, line: 93, type: !134)
!2869 = !DILocalVariable(name: "base", scope: !2862, file: !103, line: 95, type: !7)
!2870 = !DILocation(line: 0, scope: !2862)
!2871 = !DILocation(line: 95, column: 25, scope: !2862)
!2872 = !DILocation(line: 97, column: 5, scope: !2862)
!2873 = !DILocation(line: 97, column: 14, scope: !2862)
!2874 = !DILocation(line: 97, column: 42, scope: !2862)
!2875 = !DILocation(line: 97, column: 12, scope: !2862)
!2876 = distinct !{!2876, !2872, !2877}
!2877 = !DILocation(line: 98, column: 9, scope: !2862)
!2878 = !DILocation(line: 99, column: 35, scope: !2862)
!2879 = !DILocation(line: 99, column: 5, scope: !2862)
!2880 = !DILocation(line: 99, column: 33, scope: !2862)
!2881 = !DILocation(line: 102, column: 1, scope: !2862)
!2882 = distinct !DISubprogram(name: "uart_input_char", scope: !103, file: !103, line: 106, type: !2883, scopeLine: 107, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !102, retainedNodes: !2885)
!2883 = !DISubroutineType(types: !2884)
!2884 = !{!183, !2865}
!2885 = !{!2886, !2887, !2888}
!2886 = !DILocalVariable(name: "port_no", arg: 1, scope: !2882, file: !103, line: 106, type: !2865)
!2887 = !DILocalVariable(name: "base", scope: !2882, file: !103, line: 108, type: !7)
!2888 = !DILocalVariable(name: "c", scope: !2882, file: !103, line: 109, type: !352)
!2889 = !DILocation(line: 0, scope: !2882)
!2890 = !DILocation(line: 108, column: 25, scope: !2882)
!2891 = !DILocation(line: 111, column: 5, scope: !2882)
!2892 = !DILocation(line: 111, column: 14, scope: !2882)
!2893 = !DILocation(line: 111, column: 42, scope: !2882)
!2894 = !DILocation(line: 111, column: 12, scope: !2882)
!2895 = distinct !{!2895, !2891, !2896}
!2896 = !DILocation(line: 112, column: 9, scope: !2882)
!2897 = !DILocation(line: 114, column: 9, scope: !2882)
!2898 = !DILocation(line: 116, column: 5, scope: !2882)
!2899 = distinct !DISubprogram(name: "uart_input_char_unblocking", scope: !103, file: !103, line: 120, type: !2900, scopeLine: 121, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !102, retainedNodes: !2902)
!2900 = !DISubroutineType(types: !2901)
!2901 = !{!92, !2865}
!2902 = !{!2903, !2904, !2905}
!2903 = !DILocalVariable(name: "port_no", arg: 1, scope: !2899, file: !103, line: 120, type: !2865)
!2904 = !DILocalVariable(name: "base", scope: !2899, file: !103, line: 122, type: !7)
!2905 = !DILocalVariable(name: "c", scope: !2899, file: !103, line: 123, type: !352)
!2906 = !DILocation(line: 0, scope: !2899)
!2907 = !DILocation(line: 122, column: 25, scope: !2899)
!2908 = !DILocation(line: 125, column: 9, scope: !2909)
!2909 = distinct !DILexicalBlock(scope: !2899, file: !103, line: 125, column: 9)
!2910 = !DILocation(line: 125, column: 37, scope: !2909)
!2911 = !DILocation(line: 125, column: 9, scope: !2899)
!2912 = !DILocation(line: 126, column: 13, scope: !2913)
!2913 = distinct !DILexicalBlock(scope: !2909, file: !103, line: 125, column: 44)
!2914 = !DILocation(line: 127, column: 16, scope: !2913)
!2915 = !DILocation(line: 127, column: 9, scope: !2913)
!2916 = !DILocation(line: 0, scope: !2909)
!2917 = !DILocation(line: 131, column: 1, scope: !2899)
!2918 = distinct !DISubprogram(name: "halUART_HWInit", scope: !103, file: !103, line: 136, type: !2919, scopeLine: 137, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !102, retainedNodes: !2921)
!2919 = !DISubroutineType(types: !2920)
!2920 = !{null, !2865}
!2921 = !{!2922}
!2922 = !DILocalVariable(name: "u_port", arg: 1, scope: !2918, file: !103, line: 136, type: !2865)
!2923 = !DILocation(line: 0, scope: !2918)
!2924 = !DILocation(line: 139, column: 5, scope: !2918)
!2925 = !DILocation(line: 140, column: 9, scope: !2918)
!2926 = !DILocation(line: 153, column: 5, scope: !2927)
!2927 = distinct !DILexicalBlock(scope: !2928, file: !103, line: 147, column: 38)
!2928 = distinct !DILexicalBlock(scope: !2929, file: !103, line: 147, column: 16)
!2929 = distinct !DILexicalBlock(scope: !2918, file: !103, line: 140, column: 9)
!2930 = !DILocation(line: 0, scope: !2929)
!2931 = !DILocation(line: 155, column: 1, scope: !2918)
!2932 = distinct !DISubprogram(name: "halUART_SetFormat", scope: !103, file: !103, line: 158, type: !2933, scopeLine: 159, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !102, retainedNodes: !2937)
!2933 = !DISubroutineType(types: !2934)
!2934 = !{null, !2865, !92, !2935, !2935, !2935}
!2935 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint16_t", file: !93, line: 36, baseType: !2936)
!2936 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint16_t", file: !95, line: 57, baseType: !132)
!2937 = !{!2938, !2939, !2940, !2941, !2942, !2943, !2944, !2945, !2946, !2947, !2948, !2949, !2950, !2951, !2953, !2954}
!2938 = !DILocalVariable(name: "u_port", arg: 1, scope: !2932, file: !103, line: 158, type: !2865)
!2939 = !DILocalVariable(name: "baudrate", arg: 2, scope: !2932, file: !103, line: 158, type: !92)
!2940 = !DILocalVariable(name: "databit", arg: 3, scope: !2932, file: !103, line: 158, type: !2935)
!2941 = !DILocalVariable(name: "parity", arg: 4, scope: !2932, file: !103, line: 158, type: !2935)
!2942 = !DILocalVariable(name: "stopbit", arg: 5, scope: !2932, file: !103, line: 158, type: !2935)
!2943 = !DILocalVariable(name: "control_word", scope: !2932, file: !103, line: 160, type: !2935)
!2944 = !DILocalVariable(name: "UART_BASE", scope: !2932, file: !103, line: 161, type: !92)
!2945 = !DILocalVariable(name: "data", scope: !2932, file: !103, line: 162, type: !92)
!2946 = !DILocalVariable(name: "uart_lcr", scope: !2932, file: !103, line: 162, type: !92)
!2947 = !DILocalVariable(name: "high_speed_div", scope: !2932, file: !103, line: 162, type: !92)
!2948 = !DILocalVariable(name: "sample_count", scope: !2932, file: !103, line: 162, type: !92)
!2949 = !DILocalVariable(name: "sample_point", scope: !2932, file: !103, line: 162, type: !92)
!2950 = !DILocalVariable(name: "fraction", scope: !2932, file: !103, line: 162, type: !92)
!2951 = !DILocalVariable(name: "fraction_L_mapping", scope: !2932, file: !103, line: 163, type: !2952)
!2952 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2935, size: 176, elements: !728)
!2953 = !DILocalVariable(name: "fraction_M_mapping", scope: !2932, file: !103, line: 164, type: !2952)
!2954 = !DILocalVariable(name: "status", scope: !2932, file: !103, line: 165, type: !154)
!2955 = !DILocation(line: 0, scope: !2932)
!2956 = !DILocation(line: 163, column: 15, scope: !2932)
!2957 = !DILocation(line: 164, column: 15, scope: !2932)
!2958 = !DILocation(line: 166, column: 20, scope: !2932)
!2959 = !DILocation(line: 166, column: 18, scope: !2932)
!2960 = !DILocation(line: 168, column: 9, scope: !2932)
!2961 = !DILocation(line: 176, column: 5, scope: !2932)
!2962 = !DILocation(line: 176, column: 44, scope: !2932)
!2963 = !DILocation(line: 177, column: 16, scope: !2932)
!2964 = !DILocation(line: 178, column: 50, scope: !2932)
!2965 = !DILocation(line: 178, column: 38, scope: !2932)
!2966 = !DILocation(line: 179, column: 12, scope: !2932)
!2967 = !DILocation(line: 179, column: 25, scope: !2932)
!2968 = !DILocation(line: 180, column: 28, scope: !2932)
!2969 = !DILocation(line: 180, column: 34, scope: !2932)
!2970 = !DILocation(line: 182, column: 29, scope: !2971)
!2971 = distinct !DILexicalBlock(scope: !2932, file: !103, line: 181, column: 5)
!2972 = !DILocation(line: 182, column: 46, scope: !2971)
!2973 = !DILocation(line: 183, column: 26, scope: !2974)
!2974 = distinct !DILexicalBlock(scope: !2971, file: !103, line: 183, column: 13)
!2975 = !DILocation(line: 183, column: 13, scope: !2971)
!2976 = !DILocation(line: 192, column: 30, scope: !2932)
!2977 = !DILocation(line: 192, column: 35, scope: !2932)
!2978 = !DILocation(line: 192, column: 46, scope: !2932)
!2979 = !DILocation(line: 192, column: 74, scope: !2932)
!2980 = !DILocation(line: 192, column: 53, scope: !2932)
!2981 = !DILocation(line: 192, column: 80, scope: !2932)
!2982 = !DILocation(line: 193, column: 56, scope: !2932)
!2983 = !DILocation(line: 193, column: 5, scope: !2932)
!2984 = !DILocation(line: 193, column: 38, scope: !2932)
!2985 = !DILocation(line: 194, column: 57, scope: !2932)
!2986 = !DILocation(line: 194, column: 63, scope: !2932)
!2987 = !DILocation(line: 194, column: 5, scope: !2932)
!2988 = !DILocation(line: 194, column: 38, scope: !2932)
!2989 = !DILocation(line: 195, column: 5, scope: !2932)
!2990 = !DILocation(line: 195, column: 45, scope: !2932)
!2991 = !DILocation(line: 196, column: 5, scope: !2932)
!2992 = !DILocation(line: 196, column: 47, scope: !2932)
!2993 = !DILocation(line: 197, column: 46, scope: !2932)
!2994 = !DILocation(line: 197, column: 5, scope: !2932)
!2995 = !DILocation(line: 197, column: 44, scope: !2932)
!2996 = !DILocation(line: 198, column: 46, scope: !2932)
!2997 = !DILocation(line: 198, column: 5, scope: !2932)
!2998 = !DILocation(line: 198, column: 44, scope: !2932)
!2999 = !DILocation(line: 199, column: 38, scope: !2932)
!3000 = !DILocation(line: 200, column: 5, scope: !2932)
!3001 = !DILocation(line: 200, column: 38, scope: !2932)
!3002 = !DILocation(line: 202, column: 20, scope: !2932)
!3003 = !DILocation(line: 203, column: 18, scope: !2932)
!3004 = !DILocation(line: 205, column: 18, scope: !2932)
!3005 = !DILocation(line: 207, column: 18, scope: !2932)
!3006 = !DILocation(line: 208, column: 18, scope: !2932)
!3007 = !DILocation(line: 209, column: 5, scope: !2932)
!3008 = !DILocation(line: 213, column: 1, scope: !2932)
!3009 = distinct !DISubprogram(name: "halUART_Get_VFIFO_Length", scope: !103, file: !103, line: 215, type: !3010, scopeLine: 216, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !102, retainedNodes: !3013)
!3010 = !DISubroutineType(types: !3011)
!3011 = !{null, !2865, !154, !3012}
!3012 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !92, size: 32)
!3013 = !{!3014, !3015, !3016}
!3014 = !DILocalVariable(name: "u_port", arg: 1, scope: !3009, file: !103, line: 215, type: !2865)
!3015 = !DILocalVariable(name: "is_rx", arg: 2, scope: !3009, file: !103, line: 215, type: !154)
!3016 = !DILocalVariable(name: "length", arg: 3, scope: !3009, file: !103, line: 215, type: !3012)
!3017 = !DILocation(line: 0, scope: !3009)
!3018 = !DILocation(line: 217, column: 16, scope: !3019)
!3019 = distinct !DILexicalBlock(scope: !3009, file: !103, line: 217, column: 9)
!3020 = !DILocation(line: 0, scope: !3019)
!3021 = !DILocation(line: 217, column: 9, scope: !3009)
!3022 = !DILocation(line: 218, column: 13, scope: !3023)
!3023 = distinct !DILexicalBlock(scope: !3019, file: !103, line: 217, column: 31)
!3024 = !DILocation(line: 219, column: 23, scope: !3025)
!3025 = distinct !DILexicalBlock(scope: !3026, file: !103, line: 218, column: 20)
!3026 = distinct !DILexicalBlock(scope: !3023, file: !103, line: 218, column: 13)
!3027 = !DILocation(line: 220, column: 9, scope: !3025)
!3028 = !DILocation(line: 221, column: 23, scope: !3029)
!3029 = distinct !DILexicalBlock(scope: !3026, file: !103, line: 220, column: 16)
!3030 = !DILocation(line: 221, column: 21, scope: !3029)
!3031 = !DILocation(line: 222, column: 24, scope: !3029)
!3032 = !DILocation(line: 222, column: 21, scope: !3029)
!3033 = !DILocation(line: 225, column: 13, scope: !3034)
!3034 = distinct !DILexicalBlock(scope: !3019, file: !103, line: 224, column: 12)
!3035 = !DILocation(line: 226, column: 23, scope: !3036)
!3036 = distinct !DILexicalBlock(scope: !3037, file: !103, line: 225, column: 20)
!3037 = distinct !DILexicalBlock(scope: !3034, file: !103, line: 225, column: 13)
!3038 = !DILocation(line: 227, column: 9, scope: !3036)
!3039 = !DILocation(line: 228, column: 23, scope: !3040)
!3040 = distinct !DILexicalBlock(scope: !3037, file: !103, line: 227, column: 16)
!3041 = !DILocation(line: 228, column: 21, scope: !3040)
!3042 = !DILocation(line: 229, column: 24, scope: !3040)
!3043 = !DILocation(line: 229, column: 21, scope: !3040)
!3044 = !DILocation(line: 233, column: 5, scope: !3009)
!3045 = distinct !DISubprogram(name: "halUART_Read_VFIFO_Data", scope: !103, file: !103, line: 236, type: !3046, scopeLine: 237, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !102, retainedNodes: !3048)
!3046 = !DISubroutineType(types: !3047)
!3047 = !{null, !2865, !400, !92}
!3048 = !{!3049, !3050, !3051, !3052}
!3049 = !DILocalVariable(name: "u_port", arg: 1, scope: !3045, file: !103, line: 236, type: !2865)
!3050 = !DILocalVariable(name: "data", arg: 2, scope: !3045, file: !103, line: 236, type: !400)
!3051 = !DILocalVariable(name: "length", arg: 3, scope: !3045, file: !103, line: 236, type: !92)
!3052 = !DILocalVariable(name: "idx", scope: !3045, file: !103, line: 238, type: !80)
!3053 = !DILocation(line: 0, scope: !3045)
!3054 = !DILocation(line: 239, column: 23, scope: !3055)
!3055 = distinct !DILexicalBlock(scope: !3056, file: !103, line: 239, column: 5)
!3056 = distinct !DILexicalBlock(scope: !3045, file: !103, line: 239, column: 5)
!3057 = !DILocation(line: 239, column: 5, scope: !3056)
!3058 = !DILocation(line: 240, column: 13, scope: !3059)
!3059 = distinct !DILexicalBlock(scope: !3055, file: !103, line: 239, column: 40)
!3060 = !DILocation(line: 244, column: 9, scope: !3061)
!3061 = distinct !DILexicalBlock(scope: !3062, file: !103, line: 242, column: 42)
!3062 = distinct !DILexicalBlock(scope: !3063, file: !103, line: 242, column: 20)
!3063 = distinct !DILexicalBlock(scope: !3059, file: !103, line: 240, column: 13)
!3064 = !DILocation(line: 0, scope: !3063)
!3065 = !DILocation(line: 239, column: 36, scope: !3055)
!3066 = distinct !{!3066, !3057, !3067}
!3067 = !DILocation(line: 246, column: 5, scope: !3056)
!3068 = !DILocation(line: 249, column: 1, scope: !3045)
!3069 = distinct !DISubprogram(name: "halUART_Write_VFIFO_Data", scope: !103, file: !103, line: 251, type: !3070, scopeLine: 252, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !102, retainedNodes: !3074)
!3070 = !DISubroutineType(types: !3071)
!3071 = !{null, !2865, !3072, !92}
!3072 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3073, size: 32)
!3073 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !183)
!3074 = !{!3075, !3076, !3077, !3078}
!3075 = !DILocalVariable(name: "u_port", arg: 1, scope: !3069, file: !103, line: 251, type: !2865)
!3076 = !DILocalVariable(name: "data", arg: 2, scope: !3069, file: !103, line: 251, type: !3072)
!3077 = !DILocalVariable(name: "length", arg: 3, scope: !3069, file: !103, line: 251, type: !92)
!3078 = !DILocalVariable(name: "idx", scope: !3069, file: !103, line: 253, type: !80)
!3079 = !DILocation(line: 0, scope: !3069)
!3080 = !DILocation(line: 254, column: 23, scope: !3081)
!3081 = distinct !DILexicalBlock(scope: !3082, file: !103, line: 254, column: 5)
!3082 = distinct !DILexicalBlock(scope: !3069, file: !103, line: 254, column: 5)
!3083 = !DILocation(line: 254, column: 5, scope: !3082)
!3084 = !DILocation(line: 255, column: 13, scope: !3085)
!3085 = distinct !DILexicalBlock(scope: !3081, file: !103, line: 254, column: 40)
!3086 = !DILocation(line: 256, column: 61, scope: !3087)
!3087 = distinct !DILexicalBlock(scope: !3088, file: !103, line: 255, column: 35)
!3088 = distinct !DILexicalBlock(scope: !3085, file: !103, line: 255, column: 13)
!3089 = !DILocation(line: 256, column: 59, scope: !3087)
!3090 = !DILocation(line: 257, column: 9, scope: !3087)
!3091 = !DILocation(line: 258, column: 61, scope: !3092)
!3092 = distinct !DILexicalBlock(scope: !3093, file: !103, line: 257, column: 42)
!3093 = distinct !DILexicalBlock(scope: !3088, file: !103, line: 257, column: 20)
!3094 = !DILocation(line: 258, column: 59, scope: !3092)
!3095 = !DILocation(line: 259, column: 9, scope: !3092)
!3096 = !DILocation(line: 254, column: 36, scope: !3081)
!3097 = distinct !{!3097, !3083, !3098}
!3098 = !DILocation(line: 261, column: 5, scope: !3082)
!3099 = !DILocation(line: 264, column: 1, scope: !3069)
!3100 = distinct !DISubprogram(name: "halUART_Tx_VFIFO_Initialize", scope: !103, file: !103, line: 266, type: !3101, scopeLine: 267, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !102, retainedNodes: !3103)
!3101 = !DISubroutineType(types: !3102)
!3102 = !{null, !2865, !400, !92, !92}
!3103 = !{!3104, !3105, !3106, !3107}
!3104 = !DILocalVariable(name: "u_port", arg: 1, scope: !3100, file: !103, line: 266, type: !2865)
!3105 = !DILocalVariable(name: "vfifo_buffer", arg: 2, scope: !3100, file: !103, line: 266, type: !400)
!3106 = !DILocalVariable(name: "buffer_length", arg: 3, scope: !3100, file: !103, line: 266, type: !92)
!3107 = !DILocalVariable(name: "threshold", arg: 4, scope: !3100, file: !103, line: 266, type: !92)
!3108 = !DILocation(line: 0, scope: !3100)
!3109 = !DILocation(line: 268, column: 9, scope: !3100)
!3110 = !DILocation(line: 274, column: 5, scope: !3111)
!3111 = distinct !DILexicalBlock(scope: !3112, file: !103, line: 271, column: 38)
!3112 = distinct !DILexicalBlock(scope: !3113, file: !103, line: 271, column: 16)
!3113 = distinct !DILexicalBlock(scope: !3100, file: !103, line: 268, column: 9)
!3114 = !DILocation(line: 0, scope: !3113)
!3115 = !DILocation(line: 276, column: 1, scope: !3100)
!3116 = distinct !DISubprogram(name: "halUART_Rx_VFIFO_Initialize", scope: !103, file: !103, line: 278, type: !3117, scopeLine: 279, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !102, retainedNodes: !3119)
!3117 = !DISubroutineType(types: !3118)
!3118 = !{null, !2865, !400, !92, !92, !92, !92}
!3119 = !{!3120, !3121, !3122, !3123, !3124, !3125}
!3120 = !DILocalVariable(name: "u_port", arg: 1, scope: !3116, file: !103, line: 278, type: !2865)
!3121 = !DILocalVariable(name: "vfifo_buffer", arg: 2, scope: !3116, file: !103, line: 278, type: !400)
!3122 = !DILocalVariable(name: "buffer_length", arg: 3, scope: !3116, file: !103, line: 278, type: !92)
!3123 = !DILocalVariable(name: "alert_length", arg: 4, scope: !3116, file: !103, line: 278, type: !92)
!3124 = !DILocalVariable(name: "threshold", arg: 5, scope: !3116, file: !103, line: 278, type: !92)
!3125 = !DILocalVariable(name: "timeout", arg: 6, scope: !3116, file: !103, line: 278, type: !92)
!3126 = !DILocation(line: 0, scope: !3116)
!3127 = !DILocation(line: 280, column: 9, scope: !3116)
!3128 = !DILocation(line: 286, column: 5, scope: !3129)
!3129 = distinct !DILexicalBlock(scope: !3130, file: !103, line: 283, column: 38)
!3130 = distinct !DILexicalBlock(scope: !3131, file: !103, line: 283, column: 16)
!3131 = distinct !DILexicalBlock(scope: !3116, file: !103, line: 280, column: 9)
!3132 = !DILocation(line: 0, scope: !3131)
!3133 = !DILocation(line: 288, column: 1, scope: !3116)
!3134 = distinct !DISubprogram(name: "halUART_VDMA_Rx_Register_Callback", scope: !103, file: !103, line: 290, type: !3135, scopeLine: 291, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !102, retainedNodes: !3137)
!3135 = !DISubroutineType(types: !3136)
!3136 = !{null, !2865, !359}
!3137 = !{!3138, !3139}
!3138 = !DILocalVariable(name: "u_port", arg: 1, scope: !3134, file: !103, line: 290, type: !2865)
!3139 = !DILocalVariable(name: "func", arg: 2, scope: !3134, file: !103, line: 290, type: !359)
!3140 = !DILocation(line: 0, scope: !3134)
!3141 = !DILocation(line: 292, column: 9, scope: !3134)
!3142 = !DILocation(line: 296, column: 5, scope: !3143)
!3143 = distinct !DILexicalBlock(scope: !3144, file: !103, line: 294, column: 38)
!3144 = distinct !DILexicalBlock(scope: !3145, file: !103, line: 294, column: 16)
!3145 = distinct !DILexicalBlock(scope: !3134, file: !103, line: 292, column: 9)
!3146 = !DILocation(line: 0, scope: !3145)
!3147 = !DILocation(line: 298, column: 1, scope: !3134)
!3148 = distinct !DISubprogram(name: "halUART_VDMA_Rx_Register_TO_Callback", scope: !103, file: !103, line: 300, type: !3135, scopeLine: 301, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !102, retainedNodes: !3149)
!3149 = !{!3150, !3151}
!3150 = !DILocalVariable(name: "u_port", arg: 1, scope: !3148, file: !103, line: 300, type: !2865)
!3151 = !DILocalVariable(name: "func", arg: 2, scope: !3148, file: !103, line: 300, type: !359)
!3152 = !DILocation(line: 0, scope: !3148)
!3153 = !DILocation(line: 302, column: 9, scope: !3148)
!3154 = !DILocation(line: 306, column: 5, scope: !3155)
!3155 = distinct !DILexicalBlock(scope: !3156, file: !103, line: 304, column: 38)
!3156 = distinct !DILexicalBlock(scope: !3157, file: !103, line: 304, column: 16)
!3157 = distinct !DILexicalBlock(scope: !3148, file: !103, line: 302, column: 9)
!3158 = !DILocation(line: 0, scope: !3157)
!3159 = !DILocation(line: 308, column: 1, scope: !3148)
!3160 = distinct !DISubprogram(name: "uart_set_hardware_flowcontrol", scope: !103, file: !103, line: 310, type: !2919, scopeLine: 311, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !102, retainedNodes: !3161)
!3161 = !{!3162, !3163, !3164, !3165}
!3162 = !DILocalVariable(name: "u_port", arg: 1, scope: !3160, file: !103, line: 310, type: !2865)
!3163 = !DILocalVariable(name: "base", scope: !3160, file: !103, line: 312, type: !7)
!3164 = !DILocalVariable(name: "EFR", scope: !3160, file: !103, line: 313, type: !2935)
!3165 = !DILocalVariable(name: "LCR", scope: !3160, file: !103, line: 313, type: !2935)
!3166 = !DILocation(line: 0, scope: !3160)
!3167 = !DILocation(line: 312, column: 25, scope: !3160)
!3168 = !DILocation(line: 315, column: 11, scope: !3160)
!3169 = !DILocation(line: 317, column: 33, scope: !3160)
!3170 = !DILocation(line: 318, column: 11, scope: !3160)
!3171 = !DILocation(line: 320, column: 35, scope: !3160)
!3172 = !DILocation(line: 320, column: 33, scope: !3160)
!3173 = !DILocation(line: 322, column: 5, scope: !3160)
!3174 = !DILocation(line: 322, column: 39, scope: !3160)
!3175 = !DILocation(line: 324, column: 33, scope: !3160)
!3176 = !DILocation(line: 325, column: 5, scope: !3160)
!3177 = !DILocation(line: 325, column: 33, scope: !3160)
!3178 = !DILocation(line: 327, column: 35, scope: !3160)
!3179 = !DILocation(line: 327, column: 33, scope: !3160)
!3180 = !DILocation(line: 328, column: 1, scope: !3160)
!3181 = distinct !DISubprogram(name: "uart_set_software_flowcontrol", scope: !103, file: !103, line: 330, type: !3182, scopeLine: 331, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !102, retainedNodes: !3184)
!3182 = !DISubroutineType(types: !3183)
!3183 = !{null, !2865, !183, !183, !183}
!3184 = !{!3185, !3186, !3187, !3188, !3189, !3190, !3191}
!3185 = !DILocalVariable(name: "u_port", arg: 1, scope: !3181, file: !103, line: 330, type: !2865)
!3186 = !DILocalVariable(name: "xon", arg: 2, scope: !3181, file: !103, line: 330, type: !183)
!3187 = !DILocalVariable(name: "xoff", arg: 3, scope: !3181, file: !103, line: 330, type: !183)
!3188 = !DILocalVariable(name: "escape_character", arg: 4, scope: !3181, file: !103, line: 330, type: !183)
!3189 = !DILocalVariable(name: "base", scope: !3181, file: !103, line: 332, type: !7)
!3190 = !DILocalVariable(name: "EFR", scope: !3181, file: !103, line: 333, type: !2935)
!3191 = !DILocalVariable(name: "LCR", scope: !3181, file: !103, line: 333, type: !2935)
!3192 = !DILocation(line: 0, scope: !3181)
!3193 = !DILocation(line: 332, column: 25, scope: !3181)
!3194 = !DILocation(line: 335, column: 11, scope: !3181)
!3195 = !DILocation(line: 337, column: 33, scope: !3181)
!3196 = !DILocation(line: 338, column: 36, scope: !3181)
!3197 = !DILocation(line: 338, column: 5, scope: !3181)
!3198 = !DILocation(line: 338, column: 34, scope: !3181)
!3199 = !DILocation(line: 339, column: 5, scope: !3181)
!3200 = !DILocation(line: 339, column: 34, scope: !3181)
!3201 = !DILocation(line: 340, column: 37, scope: !3181)
!3202 = !DILocation(line: 340, column: 5, scope: !3181)
!3203 = !DILocation(line: 340, column: 35, scope: !3181)
!3204 = !DILocation(line: 341, column: 5, scope: !3181)
!3205 = !DILocation(line: 341, column: 35, scope: !3181)
!3206 = !DILocation(line: 343, column: 11, scope: !3181)
!3207 = !DILocation(line: 345, column: 35, scope: !3181)
!3208 = !DILocation(line: 345, column: 33, scope: !3181)
!3209 = !DILocation(line: 347, column: 35, scope: !3181)
!3210 = !DILocation(line: 347, column: 33, scope: !3181)
!3211 = !DILocation(line: 349, column: 43, scope: !3181)
!3212 = !DILocation(line: 349, column: 5, scope: !3181)
!3213 = !DILocation(line: 349, column: 41, scope: !3181)
!3214 = !DILocation(line: 350, column: 5, scope: !3181)
!3215 = !DILocation(line: 350, column: 39, scope: !3181)
!3216 = !DILocation(line: 351, column: 1, scope: !3181)
!3217 = distinct !DISubprogram(name: "uart_disable_flowcontrol", scope: !103, file: !103, line: 353, type: !2919, scopeLine: 354, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !102, retainedNodes: !3218)
!3218 = !{!3219, !3220, !3221}
!3219 = !DILocalVariable(name: "u_port", arg: 1, scope: !3217, file: !103, line: 353, type: !2865)
!3220 = !DILocalVariable(name: "base", scope: !3217, file: !103, line: 355, type: !7)
!3221 = !DILocalVariable(name: "LCR", scope: !3217, file: !103, line: 356, type: !2935)
!3222 = !DILocation(line: 0, scope: !3217)
!3223 = !DILocation(line: 355, column: 25, scope: !3217)
!3224 = !DILocation(line: 358, column: 11, scope: !3217)
!3225 = !DILocation(line: 360, column: 33, scope: !3217)
!3226 = !DILocation(line: 362, column: 5, scope: !3217)
!3227 = !DILocation(line: 362, column: 33, scope: !3217)
!3228 = !DILocation(line: 364, column: 33, scope: !3217)
!3229 = !DILocation(line: 366, column: 35, scope: !3217)
!3230 = !DILocation(line: 366, column: 33, scope: !3217)
!3231 = !DILocation(line: 367, column: 1, scope: !3217)
!3232 = distinct !DISubprogram(name: "uart_reset_default_value", scope: !103, file: !103, line: 436, type: !2919, scopeLine: 437, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !102, retainedNodes: !3233)
!3233 = !{!3234, !3235}
!3234 = !DILocalVariable(name: "u_port", arg: 1, scope: !3232, file: !103, line: 436, type: !2865)
!3235 = !DILocalVariable(name: "base", scope: !3232, file: !103, line: 438, type: !7)
!3236 = !DILocation(line: 0, scope: !3232)
!3237 = !DILocation(line: 438, column: 25, scope: !3232)
!3238 = !DILocation(line: 440, column: 5, scope: !3232)
!3239 = !DILocation(line: 440, column: 33, scope: !3232)
!3240 = !DILocation(line: 441, column: 5, scope: !3232)
!3241 = !DILocation(line: 441, column: 33, scope: !3232)
!3242 = !DILocation(line: 442, column: 5, scope: !3232)
!3243 = !DILocation(line: 442, column: 34, scope: !3232)
!3244 = !DILocation(line: 443, column: 5, scope: !3232)
!3245 = !DILocation(line: 443, column: 35, scope: !3232)
!3246 = !DILocation(line: 445, column: 33, scope: !3232)
!3247 = !DILocation(line: 446, column: 5, scope: !3232)
!3248 = !DILocation(line: 446, column: 33, scope: !3232)
!3249 = !DILocation(line: 447, column: 5, scope: !3232)
!3250 = !DILocation(line: 447, column: 33, scope: !3232)
!3251 = !DILocation(line: 449, column: 33, scope: !3232)
!3252 = !DILocation(line: 450, column: 33, scope: !3232)
!3253 = !DILocation(line: 451, column: 33, scope: !3232)
!3254 = !DILocation(line: 453, column: 33, scope: !3232)
!3255 = !DILocation(line: 454, column: 33, scope: !3232)
!3256 = !DILocation(line: 455, column: 33, scope: !3232)
!3257 = !DILocation(line: 457, column: 33, scope: !3232)
!3258 = !DILocation(line: 458, column: 5, scope: !3232)
!3259 = !DILocation(line: 458, column: 33, scope: !3232)
!3260 = !DILocation(line: 459, column: 5, scope: !3232)
!3261 = !DILocation(line: 459, column: 39, scope: !3232)
!3262 = !DILocation(line: 460, column: 5, scope: !3232)
!3263 = !DILocation(line: 460, column: 40, scope: !3232)
!3264 = !DILocation(line: 461, column: 5, scope: !3232)
!3265 = !DILocation(line: 461, column: 42, scope: !3232)
!3266 = !DILocation(line: 462, column: 5, scope: !3232)
!3267 = !DILocation(line: 462, column: 42, scope: !3232)
!3268 = !DILocation(line: 463, column: 5, scope: !3232)
!3269 = !DILocation(line: 463, column: 35, scope: !3232)
!3270 = !DILocation(line: 464, column: 5, scope: !3232)
!3271 = !DILocation(line: 464, column: 41, scope: !3232)
!3272 = !DILocation(line: 465, column: 5, scope: !3232)
!3273 = !DILocation(line: 465, column: 39, scope: !3232)
!3274 = !DILocation(line: 466, column: 5, scope: !3232)
!3275 = !DILocation(line: 466, column: 38, scope: !3232)
!3276 = !DILocation(line: 467, column: 5, scope: !3232)
!3277 = !DILocation(line: 467, column: 42, scope: !3232)
!3278 = !DILocation(line: 468, column: 5, scope: !3232)
!3279 = !DILocation(line: 468, column: 45, scope: !3232)
!3280 = !DILocation(line: 469, column: 5, scope: !3232)
!3281 = !DILocation(line: 469, column: 39, scope: !3232)
!3282 = !DILocation(line: 470, column: 5, scope: !3232)
!3283 = !DILocation(line: 470, column: 39, scope: !3232)
!3284 = !DILocation(line: 471, column: 5, scope: !3232)
!3285 = !DILocation(line: 471, column: 42, scope: !3232)
!3286 = !DILocation(line: 472, column: 1, scope: !3232)
!3287 = distinct !DISubprogram(name: "uart_query_empty", scope: !103, file: !103, line: 474, type: !2919, scopeLine: 475, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !102, retainedNodes: !3288)
!3288 = !{!3289, !3290}
!3289 = !DILocalVariable(name: "u_port", arg: 1, scope: !3287, file: !103, line: 474, type: !2865)
!3290 = !DILocalVariable(name: "base", scope: !3287, file: !103, line: 476, type: !7)
!3291 = !DILocation(line: 0, scope: !3287)
!3292 = !DILocation(line: 476, column: 25, scope: !3287)
!3293 = !DILocation(line: 478, column: 5, scope: !3287)
!3294 = !DILocation(line: 478, column: 14, scope: !3287)
!3295 = !DILocation(line: 478, column: 42, scope: !3287)
!3296 = !DILocation(line: 478, column: 12, scope: !3287)
!3297 = distinct !{!3297, !3293, !3298}
!3298 = !DILocation(line: 478, column: 50, scope: !3287)
!3299 = !DILocation(line: 479, column: 1, scope: !3287)
!3300 = distinct !DISubprogram(name: "log_hal_fatal_internal", scope: !965, file: !965, line: 64, type: !3301, scopeLine: 65, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !964, retainedNodes: !3303)
!3301 = !DISubroutineType(types: !3302)
!3302 = !{null, !552, !13, !552, null}
!3303 = !{!3304, !3305, !3306, !3307, !3316}
!3304 = !DILocalVariable(name: "func", arg: 1, scope: !3300, file: !965, line: 64, type: !552)
!3305 = !DILocalVariable(name: "line", arg: 2, scope: !3300, file: !965, line: 64, type: !13)
!3306 = !DILocalVariable(name: "message", arg: 3, scope: !3300, file: !965, line: 64, type: !552)
!3307 = !DILocalVariable(name: "ap", scope: !3300, file: !965, line: 66, type: !3308)
!3308 = !DIDerivedType(tag: DW_TAG_typedef, name: "va_list", file: !3309, line: 46, baseType: !3310)
!3309 = !DIFile(filename: "gcc-arm-none-eabi-10.3-2021.10/bin/../lib/gcc/arm-none-eabi/10.3.1/../../../../arm-none-eabi/include/stdio.h", directory: "/home/mjshen/RTOSExploration")
!3310 = !DIDerivedType(tag: DW_TAG_typedef, name: "__gnuc_va_list", file: !3311, line: 32, baseType: !3312)
!3311 = !DIFile(filename: "/usr/lib/llvm-14/lib/clang/14.0.6/include/stdarg.h", directory: "")
!3312 = !DIDerivedType(tag: DW_TAG_typedef, name: "__builtin_va_list", file: !965, baseType: !3313)
!3313 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__va_list", size: 32, elements: !3314)
!3314 = !{!3315}
!3315 = !DIDerivedType(tag: DW_TAG_member, name: "__ap", scope: !3313, file: !965, line: 66, baseType: !153, size: 32)
!3316 = !DILocalVariable(name: "mask", scope: !3300, file: !965, line: 68, type: !92)
!3317 = !DILocation(line: 0, scope: !3300)
!3318 = !DILocation(line: 66, column: 5, scope: !3300)
!3319 = !DILocation(line: 66, column: 13, scope: !3300)
!3320 = !DILocation(line: 68, column: 5, scope: !3300)
!3321 = !DILocation(line: 69, column: 5, scope: !3300)
!3322 = !DILocation(line: 71, column: 5, scope: !3300)
!3323 = !DILocation(line: 72, column: 5, scope: !3300)
!3324 = !DILocation(line: 73, column: 5, scope: !3300)
!3325 = !DILocation(line: 75, column: 37, scope: !3300)
!3326 = !DILocation(line: 75, column: 5, scope: !3300)
!3327 = !DILocation(line: 77, column: 1, scope: !3300)
!3328 = distinct !DISubprogram(name: "log_hal_error_internal", scope: !965, file: !965, line: 78, type: !3301, scopeLine: 79, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !964, retainedNodes: !3329)
!3329 = !{!3330, !3331, !3332, !3333, !3334}
!3330 = !DILocalVariable(name: "func", arg: 1, scope: !3328, file: !965, line: 78, type: !552)
!3331 = !DILocalVariable(name: "line", arg: 2, scope: !3328, file: !965, line: 78, type: !13)
!3332 = !DILocalVariable(name: "message", arg: 3, scope: !3328, file: !965, line: 78, type: !552)
!3333 = !DILocalVariable(name: "ap", scope: !3328, file: !965, line: 80, type: !3308)
!3334 = !DILocalVariable(name: "mask", scope: !3328, file: !965, line: 82, type: !92)
!3335 = !DILocation(line: 0, scope: !3328)
!3336 = !DILocation(line: 80, column: 5, scope: !3328)
!3337 = !DILocation(line: 80, column: 13, scope: !3328)
!3338 = !DILocation(line: 82, column: 5, scope: !3328)
!3339 = !DILocation(line: 83, column: 5, scope: !3328)
!3340 = !DILocation(line: 85, column: 5, scope: !3328)
!3341 = !DILocation(line: 86, column: 5, scope: !3328)
!3342 = !DILocation(line: 87, column: 5, scope: !3328)
!3343 = !DILocation(line: 89, column: 37, scope: !3328)
!3344 = !DILocation(line: 89, column: 5, scope: !3328)
!3345 = !DILocation(line: 91, column: 1, scope: !3328)
!3346 = distinct !DISubprogram(name: "log_hal_warning_internal", scope: !965, file: !965, line: 92, type: !3301, scopeLine: 93, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !964, retainedNodes: !3347)
!3347 = !{!3348, !3349, !3350, !3351, !3352}
!3348 = !DILocalVariable(name: "func", arg: 1, scope: !3346, file: !965, line: 92, type: !552)
!3349 = !DILocalVariable(name: "line", arg: 2, scope: !3346, file: !965, line: 92, type: !13)
!3350 = !DILocalVariable(name: "message", arg: 3, scope: !3346, file: !965, line: 92, type: !552)
!3351 = !DILocalVariable(name: "ap", scope: !3346, file: !965, line: 94, type: !3308)
!3352 = !DILocalVariable(name: "mask", scope: !3346, file: !965, line: 96, type: !92)
!3353 = !DILocation(line: 0, scope: !3346)
!3354 = !DILocation(line: 94, column: 5, scope: !3346)
!3355 = !DILocation(line: 94, column: 13, scope: !3346)
!3356 = !DILocation(line: 96, column: 5, scope: !3346)
!3357 = !DILocation(line: 97, column: 5, scope: !3346)
!3358 = !DILocation(line: 99, column: 5, scope: !3346)
!3359 = !DILocation(line: 100, column: 5, scope: !3346)
!3360 = !DILocation(line: 101, column: 5, scope: !3346)
!3361 = !DILocation(line: 103, column: 37, scope: !3346)
!3362 = !DILocation(line: 103, column: 5, scope: !3346)
!3363 = !DILocation(line: 105, column: 1, scope: !3346)
!3364 = distinct !DISubprogram(name: "log_hal_info_internal", scope: !965, file: !965, line: 106, type: !3301, scopeLine: 107, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !964, retainedNodes: !3365)
!3365 = !{!3366, !3367, !3368, !3369, !3370}
!3366 = !DILocalVariable(name: "func", arg: 1, scope: !3364, file: !965, line: 106, type: !552)
!3367 = !DILocalVariable(name: "line", arg: 2, scope: !3364, file: !965, line: 106, type: !13)
!3368 = !DILocalVariable(name: "message", arg: 3, scope: !3364, file: !965, line: 106, type: !552)
!3369 = !DILocalVariable(name: "ap", scope: !3364, file: !965, line: 108, type: !3308)
!3370 = !DILocalVariable(name: "mask", scope: !3364, file: !965, line: 110, type: !92)
!3371 = !DILocation(line: 0, scope: !3364)
!3372 = !DILocation(line: 108, column: 5, scope: !3364)
!3373 = !DILocation(line: 108, column: 13, scope: !3364)
!3374 = !DILocation(line: 110, column: 5, scope: !3364)
!3375 = !DILocation(line: 111, column: 5, scope: !3364)
!3376 = !DILocation(line: 113, column: 5, scope: !3364)
!3377 = !DILocation(line: 114, column: 5, scope: !3364)
!3378 = !DILocation(line: 115, column: 5, scope: !3364)
!3379 = !DILocation(line: 117, column: 37, scope: !3364)
!3380 = !DILocation(line: 117, column: 5, scope: !3364)
!3381 = !DILocation(line: 119, column: 1, scope: !3364)
!3382 = distinct !DISubprogram(name: "log_hal_dump_internal", scope: !965, file: !965, line: 121, type: !3383, scopeLine: 122, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !964, retainedNodes: !3387)
!3383 = !DISubroutineType(types: !3384)
!3384 = !{null, !552, !13, !552, !3385, !13, null}
!3385 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3386, size: 32)
!3386 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!3387 = !{!3388, !3389, !3390, !3391, !3392}
!3388 = !DILocalVariable(name: "func", arg: 1, scope: !3382, file: !965, line: 121, type: !552)
!3389 = !DILocalVariable(name: "line", arg: 2, scope: !3382, file: !965, line: 121, type: !13)
!3390 = !DILocalVariable(name: "message", arg: 3, scope: !3382, file: !965, line: 121, type: !552)
!3391 = !DILocalVariable(name: "data", arg: 4, scope: !3382, file: !965, line: 121, type: !3385)
!3392 = !DILocalVariable(name: "length", arg: 5, scope: !3382, file: !965, line: 121, type: !13)
!3393 = !DILocation(line: 0, scope: !3382)
!3394 = !DILocation(line: 123, column: 1, scope: !3382)
!3395 = distinct !DISubprogram(name: "hal_nvic_init", scope: !141, file: !141, line: 60, type: !3396, scopeLine: 61, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !140, retainedNodes: !1231)
!3396 = !DISubroutineType(types: !3397)
!3397 = !{!3398}
!3398 = !DIDerivedType(tag: DW_TAG_typedef, name: "hal_nvic_status_t", file: !144, line: 158, baseType: !143)
!3399 = !DILocation(line: 62, column: 5, scope: !3395)
!3400 = distinct !DISubprogram(name: "hal_nvic_enable_irq", scope: !141, file: !141, line: 65, type: !3401, scopeLine: 66, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !140, retainedNodes: !3403)
!3401 = !DISubroutineType(types: !3402)
!3402 = !{!3398, !152}
!3403 = !{!3404, !3405}
!3404 = !DILocalVariable(name: "irq_number", arg: 1, scope: !3400, file: !141, line: 65, type: !152)
!3405 = !DILocalVariable(name: "status", scope: !3400, file: !141, line: 67, type: !3398)
!3406 = !DILocation(line: 0, scope: !3400)
!3407 = !DILocation(line: 69, column: 40, scope: !3408)
!3408 = distinct !DILexicalBlock(scope: !3400, file: !141, line: 69, column: 9)
!3409 = !DILocation(line: 73, column: 9, scope: !3410)
!3410 = distinct !DILexicalBlock(scope: !3408, file: !141, line: 72, column: 12)
!3411 = !DILocation(line: 77, column: 5, scope: !3400)
!3412 = !DILocation(line: 78, column: 1, scope: !3400)
!3413 = distinct !DISubprogram(name: "NVIC_EnableIRQ", scope: !158, file: !158, line: 1494, type: !2162, scopeLine: 1495, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !140, retainedNodes: !3414)
!3414 = !{!3415}
!3415 = !DILocalVariable(name: "IRQn", arg: 1, scope: !3413, file: !158, line: 1494, type: !61)
!3416 = !DILocation(line: 0, scope: !3413)
!3417 = !DILocation(line: 1497, column: 91, scope: !3413)
!3418 = !DILocation(line: 1497, column: 61, scope: !3413)
!3419 = !DILocation(line: 1497, column: 40, scope: !3413)
!3420 = !DILocation(line: 1497, column: 3, scope: !3413)
!3421 = !DILocation(line: 1497, column: 46, scope: !3413)
!3422 = !DILocation(line: 1498, column: 1, scope: !3413)
!3423 = distinct !DISubprogram(name: "hal_nvic_disable_irq", scope: !141, file: !141, line: 80, type: !3401, scopeLine: 81, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !140, retainedNodes: !3424)
!3424 = !{!3425, !3426}
!3425 = !DILocalVariable(name: "irq_number", arg: 1, scope: !3423, file: !141, line: 80, type: !152)
!3426 = !DILocalVariable(name: "status", scope: !3423, file: !141, line: 82, type: !3398)
!3427 = !DILocation(line: 0, scope: !3423)
!3428 = !DILocation(line: 84, column: 40, scope: !3429)
!3429 = distinct !DILexicalBlock(scope: !3423, file: !141, line: 84, column: 9)
!3430 = !DILocation(line: 88, column: 9, scope: !3431)
!3431 = distinct !DILexicalBlock(scope: !3429, file: !141, line: 87, column: 12)
!3432 = !DILocation(line: 92, column: 5, scope: !3423)
!3433 = !DILocation(line: 93, column: 1, scope: !3423)
!3434 = distinct !DISubprogram(name: "NVIC_DisableIRQ", scope: !158, file: !158, line: 1507, type: !2162, scopeLine: 1508, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !140, retainedNodes: !3435)
!3435 = !{!3436}
!3436 = !DILocalVariable(name: "IRQn", arg: 1, scope: !3434, file: !158, line: 1507, type: !61)
!3437 = !DILocation(line: 0, scope: !3434)
!3438 = !DILocation(line: 1509, column: 65, scope: !3434)
!3439 = !DILocation(line: 1509, column: 44, scope: !3434)
!3440 = !DILocation(line: 1509, column: 32, scope: !3434)
!3441 = !DILocation(line: 1509, column: 3, scope: !3434)
!3442 = !DILocation(line: 1509, column: 39, scope: !3434)
!3443 = !DILocation(line: 1510, column: 1, scope: !3434)
!3444 = distinct !DISubprogram(name: "hal_nvic_get_pending_irq", scope: !141, file: !141, line: 95, type: !3445, scopeLine: 96, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !140, retainedNodes: !3447)
!3445 = !DISubroutineType(types: !3446)
!3446 = !{!92, !152}
!3447 = !{!3448, !3449}
!3448 = !DILocalVariable(name: "irq_number", arg: 1, scope: !3444, file: !141, line: 95, type: !152)
!3449 = !DILocalVariable(name: "ret", scope: !3444, file: !141, line: 97, type: !92)
!3450 = !DILocation(line: 0, scope: !3444)
!3451 = !DILocation(line: 99, column: 40, scope: !3452)
!3452 = distinct !DILexicalBlock(scope: !3444, file: !141, line: 99, column: 9)
!3453 = !DILocation(line: 102, column: 15, scope: !3454)
!3454 = distinct !DILexicalBlock(scope: !3452, file: !141, line: 101, column: 12)
!3455 = !DILocation(line: 105, column: 5, scope: !3444)
!3456 = !DILocation(line: 106, column: 1, scope: !3444)
!3457 = distinct !DISubprogram(name: "NVIC_GetPendingIRQ", scope: !158, file: !158, line: 1523, type: !3458, scopeLine: 1524, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !140, retainedNodes: !3460)
!3458 = !DISubroutineType(types: !3459)
!3459 = !{!92, !61}
!3460 = !{!3461}
!3461 = !DILocalVariable(name: "IRQn", arg: 1, scope: !3457, file: !158, line: 1523, type: !61)
!3462 = !DILocation(line: 0, scope: !3457)
!3463 = !DILocation(line: 1525, column: 51, scope: !3457)
!3464 = !DILocation(line: 1525, column: 23, scope: !3457)
!3465 = !DILocation(line: 1525, column: 83, scope: !3457)
!3466 = !DILocation(line: 1525, column: 22, scope: !3457)
!3467 = !DILocation(line: 1525, column: 3, scope: !3457)
!3468 = distinct !DISubprogram(name: "hal_nvic_set_pending_irq", scope: !141, file: !141, line: 108, type: !3401, scopeLine: 109, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !140, retainedNodes: !3469)
!3469 = !{!3470, !3471}
!3470 = !DILocalVariable(name: "irq_number", arg: 1, scope: !3468, file: !141, line: 108, type: !152)
!3471 = !DILocalVariable(name: "status", scope: !3468, file: !141, line: 110, type: !3398)
!3472 = !DILocation(line: 0, scope: !3468)
!3473 = !DILocation(line: 112, column: 40, scope: !3474)
!3474 = distinct !DILexicalBlock(scope: !3468, file: !141, line: 112, column: 9)
!3475 = !DILocation(line: 116, column: 9, scope: !3476)
!3476 = distinct !DILexicalBlock(scope: !3474, file: !141, line: 115, column: 12)
!3477 = !DILocation(line: 120, column: 5, scope: !3468)
!3478 = !DILocation(line: 121, column: 1, scope: !3468)
!3479 = distinct !DISubprogram(name: "NVIC_SetPendingIRQ", scope: !158, file: !158, line: 1535, type: !2162, scopeLine: 1536, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !140, retainedNodes: !3480)
!3480 = !{!3481}
!3481 = !DILocalVariable(name: "IRQn", arg: 1, scope: !3479, file: !158, line: 1535, type: !61)
!3482 = !DILocation(line: 0, scope: !3479)
!3483 = !DILocation(line: 1537, column: 65, scope: !3479)
!3484 = !DILocation(line: 1537, column: 44, scope: !3479)
!3485 = !DILocation(line: 1537, column: 32, scope: !3479)
!3486 = !DILocation(line: 1537, column: 3, scope: !3479)
!3487 = !DILocation(line: 1537, column: 39, scope: !3479)
!3488 = !DILocation(line: 1538, column: 1, scope: !3479)
!3489 = distinct !DISubprogram(name: "hal_nvic_clear_pending_irq", scope: !141, file: !141, line: 123, type: !3401, scopeLine: 124, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !140, retainedNodes: !3490)
!3490 = !{!3491, !3492}
!3491 = !DILocalVariable(name: "irq_number", arg: 1, scope: !3489, file: !141, line: 123, type: !152)
!3492 = !DILocalVariable(name: "status", scope: !3489, file: !141, line: 125, type: !3398)
!3493 = !DILocation(line: 0, scope: !3489)
!3494 = !DILocation(line: 127, column: 40, scope: !3495)
!3495 = distinct !DILexicalBlock(scope: !3489, file: !141, line: 127, column: 9)
!3496 = !DILocation(line: 131, column: 9, scope: !3497)
!3497 = distinct !DILexicalBlock(scope: !3495, file: !141, line: 130, column: 12)
!3498 = !DILocation(line: 135, column: 5, scope: !3489)
!3499 = !DILocation(line: 136, column: 1, scope: !3489)
!3500 = distinct !DISubprogram(name: "NVIC_ClearPendingIRQ", scope: !158, file: !158, line: 1547, type: !2162, scopeLine: 1548, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !140, retainedNodes: !3501)
!3501 = !{!3502}
!3502 = !DILocalVariable(name: "IRQn", arg: 1, scope: !3500, file: !158, line: 1547, type: !61)
!3503 = !DILocation(line: 0, scope: !3500)
!3504 = !DILocation(line: 1549, column: 65, scope: !3500)
!3505 = !DILocation(line: 1549, column: 44, scope: !3500)
!3506 = !DILocation(line: 1549, column: 32, scope: !3500)
!3507 = !DILocation(line: 1549, column: 3, scope: !3500)
!3508 = !DILocation(line: 1549, column: 39, scope: !3500)
!3509 = !DILocation(line: 1550, column: 1, scope: !3500)
!3510 = distinct !DISubprogram(name: "hal_nvic_set_priority", scope: !141, file: !141, line: 138, type: !3511, scopeLine: 139, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !140, retainedNodes: !3513)
!3511 = !DISubroutineType(types: !3512)
!3512 = !{!3398, !152, !92}
!3513 = !{!3514, !3515, !3516}
!3514 = !DILocalVariable(name: "irq_number", arg: 1, scope: !3510, file: !141, line: 138, type: !152)
!3515 = !DILocalVariable(name: "priority", arg: 2, scope: !3510, file: !141, line: 138, type: !92)
!3516 = !DILocalVariable(name: "status", scope: !3510, file: !141, line: 140, type: !3398)
!3517 = !DILocation(line: 0, scope: !3510)
!3518 = !DILocation(line: 142, column: 40, scope: !3519)
!3519 = distinct !DILexicalBlock(scope: !3510, file: !141, line: 142, column: 9)
!3520 = !DILocation(line: 146, column: 9, scope: !3521)
!3521 = distinct !DILexicalBlock(scope: !3519, file: !141, line: 145, column: 12)
!3522 = !DILocation(line: 150, column: 5, scope: !3510)
!3523 = !DILocation(line: 151, column: 1, scope: !3510)
!3524 = distinct !DISubprogram(name: "NVIC_SetPriority", scope: !158, file: !158, line: 1577, type: !2213, scopeLine: 1578, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !140, retainedNodes: !3525)
!3525 = !{!3526, !3527}
!3526 = !DILocalVariable(name: "IRQn", arg: 1, scope: !3524, file: !158, line: 1577, type: !61)
!3527 = !DILocalVariable(name: "priority", arg: 2, scope: !3524, file: !158, line: 1577, type: !92)
!3528 = !DILocation(line: 0, scope: !3524)
!3529 = !DILocation(line: 1582, column: 34, scope: !3530)
!3530 = distinct !DILexicalBlock(scope: !3531, file: !158, line: 1581, column: 8)
!3531 = distinct !DILexicalBlock(scope: !3524, file: !158, line: 1579, column: 6)
!3532 = !DILocation(line: 1582, column: 5, scope: !3530)
!3533 = !DILocation(line: 1582, column: 32, scope: !3530)
!3534 = !DILocation(line: 1583, column: 1, scope: !3524)
!3535 = distinct !DISubprogram(name: "hal_nvic_get_priority", scope: !141, file: !141, line: 153, type: !3445, scopeLine: 154, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !140, retainedNodes: !3536)
!3536 = !{!3537, !3538}
!3537 = !DILocalVariable(name: "irq_number", arg: 1, scope: !3535, file: !141, line: 153, type: !152)
!3538 = !DILocalVariable(name: "ret", scope: !3535, file: !141, line: 155, type: !92)
!3539 = !DILocation(line: 0, scope: !3535)
!3540 = !DILocation(line: 157, column: 40, scope: !3541)
!3541 = distinct !DILexicalBlock(scope: !3535, file: !141, line: 157, column: 9)
!3542 = !DILocation(line: 160, column: 15, scope: !3543)
!3543 = distinct !DILexicalBlock(scope: !3541, file: !141, line: 159, column: 12)
!3544 = !DILocation(line: 163, column: 5, scope: !3535)
!3545 = !DILocation(line: 164, column: 1, scope: !3535)
!3546 = distinct !DISubprogram(name: "NVIC_GetPriority", scope: !158, file: !158, line: 1597, type: !3458, scopeLine: 1598, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !140, retainedNodes: !3547)
!3547 = !{!3548}
!3548 = !DILocalVariable(name: "IRQn", arg: 1, scope: !3546, file: !158, line: 1597, type: !61)
!3549 = !DILocation(line: 0, scope: !3546)
!3550 = !DILocation(line: 1603, column: 23, scope: !3551)
!3551 = distinct !DILexicalBlock(scope: !3552, file: !158, line: 1602, column: 8)
!3552 = distinct !DILexicalBlock(scope: !3546, file: !158, line: 1600, column: 6)
!3553 = !DILocation(line: 1603, column: 60, scope: !3551)
!3554 = !DILocation(line: 1604, column: 1, scope: !3546)
!3555 = distinct !DISubprogram(name: "Flash_ReturnReady", scope: !141, file: !141, line: 173, type: !75, scopeLine: 174, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !140, retainedNodes: !1231)
!3556 = !DILocation(line: 175, column: 1, scope: !3555)
!3557 = distinct !DISubprogram(name: "isrC_main", scope: !141, file: !141, line: 178, type: !3396, scopeLine: 179, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !140, retainedNodes: !3558)
!3558 = !{!3559, !3560}
!3559 = !DILocalVariable(name: "status", scope: !3557, file: !141, line: 180, type: !3398)
!3560 = !DILocalVariable(name: "irq_number", scope: !3557, file: !141, line: 181, type: !152)
!3561 = !DILocation(line: 0, scope: !3557)
!3562 = !DILocation(line: 188, column: 34, scope: !3557)
!3563 = !DILocation(line: 189, column: 24, scope: !3564)
!3564 = distinct !DILexicalBlock(scope: !3557, file: !141, line: 189, column: 9)
!3565 = !DILocation(line: 192, column: 48, scope: !3566)
!3566 = distinct !DILexicalBlock(scope: !3564, file: !141, line: 192, column: 16)
!3567 = !DILocation(line: 192, column: 62, scope: !3566)
!3568 = !DILocation(line: 192, column: 16, scope: !3564)
!3569 = !DILocation(line: 194, column: 9, scope: !3570)
!3570 = distinct !DILexicalBlock(scope: !3566, file: !141, line: 192, column: 71)
!3571 = !DILocation(line: 195, column: 9, scope: !3570)
!3572 = !DILocation(line: 197, column: 55, scope: !3573)
!3573 = distinct !DILexicalBlock(scope: !3566, file: !141, line: 196, column: 12)
!3574 = !DILocation(line: 197, column: 41, scope: !3573)
!3575 = !DILocation(line: 197, column: 53, scope: !3573)
!3576 = !DILocation(line: 198, column: 41, scope: !3573)
!3577 = !DILocation(line: 198, column: 9, scope: !3573)
!3578 = !DILocation(line: 202, column: 5, scope: !3557)
!3579 = !DILocation(line: 203, column: 1, scope: !3557)
!3580 = distinct !DISubprogram(name: "get_current_irq", scope: !141, file: !141, line: 166, type: !2281, scopeLine: 167, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !140, retainedNodes: !3581)
!3581 = !{!3582}
!3582 = !DILocalVariable(name: "irq_num", scope: !3580, file: !141, line: 168, type: !92)
!3583 = !DILocation(line: 168, column: 31, scope: !3580)
!3584 = !DILocation(line: 168, column: 36, scope: !3580)
!3585 = !DILocation(line: 0, scope: !3580)
!3586 = !DILocation(line: 169, column: 21, scope: !3580)
!3587 = !DILocation(line: 169, column: 5, scope: !3580)
!3588 = distinct !DISubprogram(name: "get_pending_irq", scope: !141, file: !141, line: 55, type: !2281, scopeLine: 56, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !140, retainedNodes: !1231)
!3589 = !DILocation(line: 57, column: 19, scope: !3588)
!3590 = !DILocation(line: 57, column: 51, scope: !3588)
!3591 = !DILocation(line: 57, column: 5, scope: !3588)
!3592 = distinct !DISubprogram(name: "hal_nvic_register_isr_handler", scope: !141, file: !141, line: 205, type: !3593, scopeLine: 206, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !140, retainedNodes: !3596)
!3593 = !DISubroutineType(types: !3594)
!3594 = !{!3398, !152, !3595}
!3595 = !DIDerivedType(tag: DW_TAG_typedef, name: "hal_nvic_isr_t", file: !144, line: 175, baseType: !237)
!3596 = !{!3597, !3598, !3599}
!3597 = !DILocalVariable(name: "irq_number", arg: 1, scope: !3592, file: !141, line: 205, type: !152)
!3598 = !DILocalVariable(name: "callback", arg: 2, scope: !3592, file: !141, line: 205, type: !3595)
!3599 = !DILocalVariable(name: "mask", scope: !3592, file: !141, line: 207, type: !92)
!3600 = !DILocation(line: 0, scope: !3592)
!3601 = !DILocation(line: 209, column: 24, scope: !3602)
!3602 = distinct !DILexicalBlock(scope: !3592, file: !141, line: 209, column: 9)
!3603 = !DILocation(line: 213, column: 12, scope: !3592)
!3604 = !DILocation(line: 214, column: 5, scope: !3592)
!3605 = !DILocation(line: 215, column: 37, scope: !3592)
!3606 = !DILocation(line: 215, column: 51, scope: !3592)
!3607 = !DILocation(line: 216, column: 37, scope: !3592)
!3608 = !DILocation(line: 216, column: 49, scope: !3592)
!3609 = !DILocation(line: 217, column: 5, scope: !3592)
!3610 = !DILocation(line: 219, column: 5, scope: !3592)
!3611 = !DILocation(line: 220, column: 1, scope: !3592)
!3612 = distinct !DISubprogram(name: "hal_nvic_save_and_set_interrupt_mask", scope: !141, file: !141, line: 222, type: !3613, scopeLine: 223, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !140, retainedNodes: !3615)
!3613 = !DISubroutineType(types: !3614)
!3614 = !{!3398, !3012}
!3615 = !{!3616}
!3616 = !DILocalVariable(name: "mask", arg: 1, scope: !3612, file: !141, line: 222, type: !3012)
!3617 = !DILocation(line: 0, scope: !3612)
!3618 = !DILocation(line: 224, column: 13, scope: !3612)
!3619 = !DILocation(line: 224, column: 11, scope: !3612)
!3620 = !DILocation(line: 225, column: 5, scope: !3612)
!3621 = distinct !DISubprogram(name: "hal_nvic_restore_interrupt_mask", scope: !141, file: !141, line: 228, type: !3622, scopeLine: 229, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !140, retainedNodes: !3624)
!3622 = !DISubroutineType(types: !3623)
!3623 = !{!3398, !92}
!3624 = !{!3625}
!3625 = !DILocalVariable(name: "mask", arg: 1, scope: !3621, file: !141, line: 228, type: !92)
!3626 = !DILocation(line: 0, scope: !3621)
!3627 = !DILocation(line: 230, column: 5, scope: !3621)
!3628 = !DILocation(line: 231, column: 5, scope: !3621)
!3629 = distinct !DISubprogram(name: "hal_pinmux_set_function", scope: !967, file: !967, line: 50, type: !3630, scopeLine: 51, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !966, retainedNodes: !3634)
!3630 = !DISubroutineType(types: !3631)
!3631 = !{!3632, !3633, !183}
!3632 = !DIDerivedType(tag: DW_TAG_typedef, name: "hal_pinmux_status_t", file: !970, line: 238, baseType: !969)
!3633 = !DIDerivedType(tag: DW_TAG_typedef, name: "hal_gpio_pin_t", file: !257, line: 281, baseType: !976)
!3634 = !{!3635, !3636, !3637}
!3635 = !DILocalVariable(name: "gpio_pin", arg: 1, scope: !3629, file: !967, line: 50, type: !3633)
!3636 = !DILocalVariable(name: "function_index", arg: 2, scope: !3629, file: !967, line: 50, type: !183)
!3637 = !DILocalVariable(name: "ret_value", scope: !3629, file: !967, line: 52, type: !154)
!3638 = !DILocation(line: 0, scope: !3629)
!3639 = !DILocation(line: 53, column: 18, scope: !3640)
!3640 = distinct !DILexicalBlock(scope: !3629, file: !967, line: 53, column: 9)
!3641 = !DILocation(line: 53, column: 9, scope: !3629)
!3642 = !DILocation(line: 57, column: 24, scope: !3643)
!3643 = distinct !DILexicalBlock(scope: !3629, file: !967, line: 57, column: 9)
!3644 = !DILocation(line: 57, column: 9, scope: !3629)
!3645 = !DILocation(line: 57, column: 9, scope: !3643)
!3646 = !DILocation(line: 60, column: 17, scope: !3629)
!3647 = !DILocation(line: 61, column: 12, scope: !3629)
!3648 = !DILocation(line: 61, column: 5, scope: !3629)
!3649 = !DILocation(line: 62, column: 1, scope: !3629)
!3650 = distinct !DISubprogram(name: "hal_gpio_init", scope: !967, file: !967, line: 64, type: !3651, scopeLine: 65, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !966, retainedNodes: !3654)
!3651 = !DISubroutineType(types: !3652)
!3652 = !{!3653, !3633}
!3653 = !DIDerivedType(tag: DW_TAG_typedef, name: "hal_gpio_status_t", file: !970, line: 229, baseType: !1007)
!3654 = !{!3655}
!3655 = !DILocalVariable(name: "gpio_pin", arg: 1, scope: !3650, file: !967, line: 64, type: !3633)
!3656 = !DILocation(line: 0, scope: !3650)
!3657 = !DILocation(line: 66, column: 5, scope: !3650)
!3658 = distinct !DISubprogram(name: "hal_gpio_deinit", scope: !967, file: !967, line: 69, type: !3651, scopeLine: 70, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !966, retainedNodes: !3659)
!3659 = !{!3660}
!3660 = !DILocalVariable(name: "gpio_pin", arg: 1, scope: !3658, file: !967, line: 69, type: !3633)
!3661 = !DILocation(line: 0, scope: !3658)
!3662 = !DILocation(line: 71, column: 5, scope: !3658)
!3663 = distinct !DISubprogram(name: "hal_gpio_get_input", scope: !967, file: !967, line: 74, type: !3664, scopeLine: 75, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !966, retainedNodes: !3667)
!3664 = !DISubroutineType(types: !3665)
!3665 = !{!3653, !3633, !3666}
!3666 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1034, size: 32)
!3667 = !{!3668, !3669, !3670}
!3668 = !DILocalVariable(name: "gpio_pin", arg: 1, scope: !3663, file: !967, line: 74, type: !3633)
!3669 = !DILocalVariable(name: "gpio_data", arg: 2, scope: !3663, file: !967, line: 74, type: !3666)
!3670 = !DILocalVariable(name: "status", scope: !3663, file: !967, line: 76, type: !3671)
!3671 = !DIDerivedType(tag: DW_TAG_typedef, name: "gpio_status", file: !1028, line: 67, baseType: !3672)
!3672 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1028, line: 62, size: 64, elements: !3673)
!3673 = !{!3674, !3675, !3676, !3677}
!3674 = !DIDerivedType(tag: DW_TAG_member, name: "GPIO_PIN", scope: !3672, file: !1028, line: 63, baseType: !92, size: 32)
!3675 = !DIDerivedType(tag: DW_TAG_member, name: "GPIO_OUTEN", scope: !3672, file: !1028, line: 64, baseType: !183, size: 8, offset: 32)
!3676 = !DIDerivedType(tag: DW_TAG_member, name: "GPI_DIN", scope: !3672, file: !1028, line: 65, baseType: !183, size: 8, offset: 40)
!3677 = !DIDerivedType(tag: DW_TAG_member, name: "GPO_DOUT", scope: !3672, file: !1028, line: 66, baseType: !183, size: 8, offset: 48)
!3678 = !DILocation(line: 0, scope: !3663)
!3679 = !DILocation(line: 77, column: 14, scope: !3680)
!3680 = distinct !DILexicalBlock(scope: !3663, file: !967, line: 77, column: 9)
!3681 = !DILocation(line: 77, column: 9, scope: !3663)
!3682 = !DILocation(line: 81, column: 18, scope: !3683)
!3683 = distinct !DILexicalBlock(scope: !3663, file: !967, line: 81, column: 9)
!3684 = !DILocation(line: 81, column: 9, scope: !3663)
!3685 = !DILocation(line: 85, column: 14, scope: !3663)
!3686 = !DILocation(line: 86, column: 18, scope: !3663)
!3687 = !DILocation(line: 86, column: 16, scope: !3663)
!3688 = !DILocation(line: 87, column: 5, scope: !3663)
!3689 = !DILocation(line: 88, column: 1, scope: !3663)
!3690 = distinct !DISubprogram(name: "hal_gpio_set_output", scope: !967, file: !967, line: 90, type: !3691, scopeLine: 91, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !966, retainedNodes: !3693)
!3691 = !DISubroutineType(types: !3692)
!3692 = !{!3653, !3633, !1034}
!3693 = !{!3694, !3695, !3696}
!3694 = !DILocalVariable(name: "gpio_pin", arg: 1, scope: !3690, file: !967, line: 90, type: !3633)
!3695 = !DILocalVariable(name: "gpio_data", arg: 2, scope: !3690, file: !967, line: 90, type: !1034)
!3696 = !DILocalVariable(name: "ret_value", scope: !3690, file: !967, line: 92, type: !154)
!3697 = !DILocation(line: 0, scope: !3690)
!3698 = !DILocation(line: 93, column: 18, scope: !3699)
!3699 = distinct !DILexicalBlock(scope: !3690, file: !967, line: 93, column: 9)
!3700 = !DILocation(line: 93, column: 9, scope: !3690)
!3701 = !DILocation(line: 97, column: 60, scope: !3690)
!3702 = !DILocation(line: 97, column: 17, scope: !3690)
!3703 = !DILocation(line: 98, column: 12, scope: !3690)
!3704 = !DILocation(line: 98, column: 5, scope: !3690)
!3705 = !DILocation(line: 99, column: 1, scope: !3690)
!3706 = distinct !DISubprogram(name: "hal_gpio_get_output", scope: !967, file: !967, line: 101, type: !3664, scopeLine: 102, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !966, retainedNodes: !3707)
!3707 = !{!3708, !3709, !3710}
!3708 = !DILocalVariable(name: "gpio_pin", arg: 1, scope: !3706, file: !967, line: 101, type: !3633)
!3709 = !DILocalVariable(name: "gpio_data", arg: 2, scope: !3706, file: !967, line: 101, type: !3666)
!3710 = !DILocalVariable(name: "status", scope: !3706, file: !967, line: 103, type: !3671)
!3711 = !DILocation(line: 0, scope: !3706)
!3712 = !DILocation(line: 104, column: 18, scope: !3713)
!3713 = distinct !DILexicalBlock(scope: !3706, file: !967, line: 104, column: 9)
!3714 = !DILocation(line: 104, column: 9, scope: !3706)
!3715 = !DILocation(line: 108, column: 14, scope: !3716)
!3716 = distinct !DILexicalBlock(scope: !3706, file: !967, line: 108, column: 9)
!3717 = !DILocation(line: 108, column: 9, scope: !3706)
!3718 = !DILocation(line: 112, column: 14, scope: !3706)
!3719 = !DILocation(line: 113, column: 18, scope: !3706)
!3720 = !DILocation(line: 113, column: 16, scope: !3706)
!3721 = !DILocation(line: 114, column: 5, scope: !3706)
!3722 = !DILocation(line: 115, column: 1, scope: !3706)
!3723 = distinct !DISubprogram(name: "hal_gpio_set_direction", scope: !967, file: !967, line: 117, type: !3724, scopeLine: 118, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !966, retainedNodes: !3727)
!3724 = !DISubroutineType(types: !3725)
!3725 = !{!3653, !3633, !3726}
!3726 = !DIDerivedType(tag: DW_TAG_typedef, name: "hal_gpio_direction_t", file: !970, line: 213, baseType: !1017)
!3727 = !{!3728, !3729, !3730}
!3728 = !DILocalVariable(name: "gpio_pin", arg: 1, scope: !3723, file: !967, line: 117, type: !3633)
!3729 = !DILocalVariable(name: "direction", arg: 2, scope: !3723, file: !967, line: 117, type: !3726)
!3730 = !DILocalVariable(name: "ret_value", scope: !3723, file: !967, line: 119, type: !154)
!3731 = !DILocation(line: 0, scope: !3723)
!3732 = !DILocation(line: 120, column: 18, scope: !3733)
!3733 = distinct !DILexicalBlock(scope: !3723, file: !967, line: 120, column: 9)
!3734 = !DILocation(line: 120, column: 9, scope: !3723)
!3735 = !DILocation(line: 123, column: 17, scope: !3723)
!3736 = !DILocation(line: 125, column: 12, scope: !3723)
!3737 = !DILocation(line: 125, column: 5, scope: !3723)
!3738 = !DILocation(line: 126, column: 1, scope: !3723)
!3739 = distinct !DISubprogram(name: "hal_gpio_get_direction", scope: !967, file: !967, line: 128, type: !3740, scopeLine: 129, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !966, retainedNodes: !3743)
!3740 = !DISubroutineType(types: !3741)
!3741 = !{!3653, !3633, !3742}
!3742 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3726, size: 32)
!3743 = !{!3744, !3745, !3746}
!3744 = !DILocalVariable(name: "gpio_pin", arg: 1, scope: !3739, file: !967, line: 128, type: !3633)
!3745 = !DILocalVariable(name: "direction", arg: 2, scope: !3739, file: !967, line: 128, type: !3742)
!3746 = !DILocalVariable(name: "status", scope: !3739, file: !967, line: 131, type: !3671)
!3747 = !DILocation(line: 0, scope: !3739)
!3748 = !DILocation(line: 132, column: 18, scope: !3749)
!3749 = distinct !DILexicalBlock(scope: !3739, file: !967, line: 132, column: 9)
!3750 = !DILocation(line: 132, column: 9, scope: !3739)
!3751 = !DILocation(line: 136, column: 14, scope: !3752)
!3752 = distinct !DILexicalBlock(scope: !3739, file: !967, line: 136, column: 9)
!3753 = !DILocation(line: 136, column: 9, scope: !3739)
!3754 = !DILocation(line: 140, column: 14, scope: !3739)
!3755 = !DILocation(line: 141, column: 18, scope: !3739)
!3756 = !DILocation(line: 141, column: 16, scope: !3739)
!3757 = !DILocation(line: 142, column: 5, scope: !3739)
!3758 = !DILocation(line: 143, column: 1, scope: !3739)
!3759 = distinct !DISubprogram(name: "hal_gpio_toggle_pin", scope: !967, file: !967, line: 146, type: !3651, scopeLine: 147, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !966, retainedNodes: !3760)
!3760 = !{!3761, !3762}
!3761 = !DILocalVariable(name: "gpio_pin", arg: 1, scope: !3759, file: !967, line: 146, type: !3633)
!3762 = !DILocalVariable(name: "status", scope: !3759, file: !967, line: 148, type: !3671)
!3763 = !DILocation(line: 0, scope: !3759)
!3764 = !DILocation(line: 149, column: 18, scope: !3765)
!3765 = distinct !DILexicalBlock(scope: !3759, file: !967, line: 149, column: 9)
!3766 = !DILocation(line: 149, column: 9, scope: !3759)
!3767 = !DILocation(line: 153, column: 14, scope: !3759)
!3768 = !DILocation(line: 154, column: 76, scope: !3759)
!3769 = !DILocation(line: 154, column: 12, scope: !3759)
!3770 = !DILocation(line: 154, column: 5, scope: !3759)
!3771 = !DILocation(line: 155, column: 1, scope: !3759)
!3772 = distinct !DISubprogram(name: "hal_gpio_pull_up", scope: !967, file: !967, line: 157, type: !3651, scopeLine: 158, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !966, retainedNodes: !3773)
!3773 = !{!3774, !3775}
!3774 = !DILocalVariable(name: "gpio_pin", arg: 1, scope: !3772, file: !967, line: 157, type: !3633)
!3775 = !DILocalVariable(name: "ret_value", scope: !3772, file: !967, line: 159, type: !154)
!3776 = !DILocation(line: 0, scope: !3772)
!3777 = !DILocation(line: 160, column: 18, scope: !3778)
!3778 = distinct !DILexicalBlock(scope: !3772, file: !967, line: 160, column: 9)
!3779 = !DILocation(line: 160, column: 9, scope: !3772)
!3780 = !DILocation(line: 164, column: 17, scope: !3772)
!3781 = !DILocation(line: 165, column: 19, scope: !3782)
!3782 = distinct !DILexicalBlock(scope: !3772, file: !967, line: 165, column: 9)
!3783 = !DILocation(line: 165, column: 9, scope: !3772)
!3784 = !DILocation(line: 168, column: 17, scope: !3772)
!3785 = !DILocation(line: 169, column: 12, scope: !3772)
!3786 = !DILocation(line: 169, column: 5, scope: !3772)
!3787 = !DILocation(line: 170, column: 1, scope: !3772)
!3788 = distinct !DISubprogram(name: "hal_gpio_pull_down", scope: !967, file: !967, line: 172, type: !3651, scopeLine: 173, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !966, retainedNodes: !3789)
!3789 = !{!3790, !3791}
!3790 = !DILocalVariable(name: "gpio_pin", arg: 1, scope: !3788, file: !967, line: 172, type: !3633)
!3791 = !DILocalVariable(name: "ret_value", scope: !3788, file: !967, line: 174, type: !154)
!3792 = !DILocation(line: 0, scope: !3788)
!3793 = !DILocation(line: 175, column: 18, scope: !3794)
!3794 = distinct !DILexicalBlock(scope: !3788, file: !967, line: 175, column: 9)
!3795 = !DILocation(line: 175, column: 9, scope: !3788)
!3796 = !DILocation(line: 179, column: 17, scope: !3788)
!3797 = !DILocation(line: 180, column: 19, scope: !3798)
!3798 = distinct !DILexicalBlock(scope: !3788, file: !967, line: 180, column: 9)
!3799 = !DILocation(line: 180, column: 9, scope: !3788)
!3800 = !DILocation(line: 183, column: 17, scope: !3788)
!3801 = !DILocation(line: 184, column: 12, scope: !3788)
!3802 = !DILocation(line: 184, column: 5, scope: !3788)
!3803 = !DILocation(line: 185, column: 1, scope: !3788)
!3804 = distinct !DISubprogram(name: "hal_gpio_disable_pull", scope: !967, file: !967, line: 187, type: !3651, scopeLine: 188, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !966, retainedNodes: !3805)
!3805 = !{!3806, !3807}
!3806 = !DILocalVariable(name: "gpio_pin", arg: 1, scope: !3804, file: !967, line: 187, type: !3633)
!3807 = !DILocalVariable(name: "ret_value", scope: !3804, file: !967, line: 189, type: !154)
!3808 = !DILocation(line: 0, scope: !3804)
!3809 = !DILocation(line: 191, column: 18, scope: !3810)
!3810 = distinct !DILexicalBlock(scope: !3804, file: !967, line: 191, column: 9)
!3811 = !DILocation(line: 191, column: 9, scope: !3804)
!3812 = !DILocation(line: 195, column: 17, scope: !3804)
!3813 = !DILocation(line: 196, column: 12, scope: !3804)
!3814 = !DILocation(line: 196, column: 5, scope: !3804)
!3815 = !DILocation(line: 197, column: 1, scope: !3804)
!3816 = distinct !DISubprogram(name: "hal_gpio_set_driving_current", scope: !967, file: !967, line: 200, type: !3817, scopeLine: 201, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !966, retainedNodes: !3819)
!3817 = !DISubroutineType(types: !3818)
!3818 = !{!3653, !3633, !1035}
!3819 = !{!3820, !3821, !3822}
!3820 = !DILocalVariable(name: "gpio_pin", arg: 1, scope: !3816, file: !967, line: 200, type: !3633)
!3821 = !DILocalVariable(name: "driving", arg: 2, scope: !3816, file: !967, line: 200, type: !1035)
!3822 = !DILocalVariable(name: "ret_value", scope: !3816, file: !967, line: 202, type: !154)
!3823 = !DILocation(line: 0, scope: !3816)
!3824 = !DILocation(line: 204, column: 18, scope: !3825)
!3825 = distinct !DILexicalBlock(scope: !3816, file: !967, line: 204, column: 9)
!3826 = !DILocation(line: 204, column: 9, scope: !3816)
!3827 = !DILocation(line: 208, column: 64, scope: !3816)
!3828 = !DILocation(line: 208, column: 17, scope: !3816)
!3829 = !DILocation(line: 210, column: 12, scope: !3816)
!3830 = !DILocation(line: 210, column: 5, scope: !3816)
!3831 = !DILocation(line: 211, column: 1, scope: !3816)
!3832 = distinct !DISubprogram(name: "hal_gpio_get_driving_current", scope: !967, file: !967, line: 214, type: !3833, scopeLine: 215, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !966, retainedNodes: !3836)
!3833 = !DISubroutineType(types: !3834)
!3834 = !{!3653, !3633, !3835}
!3835 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1035, size: 32)
!3836 = !{!3837, !3838, !3839, !3840}
!3837 = !DILocalVariable(name: "gpio_pin", arg: 1, scope: !3832, file: !967, line: 214, type: !3633)
!3838 = !DILocalVariable(name: "driving", arg: 2, scope: !3832, file: !967, line: 214, type: !3835)
!3839 = !DILocalVariable(name: "ret_value", scope: !3832, file: !967, line: 216, type: !154)
!3840 = !DILocalVariable(name: "value", scope: !3832, file: !967, line: 217, type: !183)
!3841 = !DILocation(line: 0, scope: !3832)
!3842 = !DILocation(line: 217, column: 5, scope: !3832)
!3843 = !DILocation(line: 219, column: 18, scope: !3844)
!3844 = distinct !DILexicalBlock(scope: !3832, file: !967, line: 219, column: 9)
!3845 = !DILocation(line: 219, column: 9, scope: !3832)
!3846 = !DILocation(line: 223, column: 17, scope: !3832)
!3847 = !DILocation(line: 225, column: 44, scope: !3832)
!3848 = !DILocation(line: 225, column: 16, scope: !3832)
!3849 = !DILocation(line: 225, column: 14, scope: !3832)
!3850 = !DILocation(line: 227, column: 12, scope: !3832)
!3851 = !DILocation(line: 227, column: 5, scope: !3832)
!3852 = !DILocation(line: 228, column: 1, scope: !3832)
!3853 = distinct !DISubprogram(name: "hal_gpt_init", scope: !246, file: !246, line: 82, type: !3854, scopeLine: 83, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !245, retainedNodes: !3858)
!3854 = !DISubroutineType(types: !3855)
!3855 = !{!3856, !3857}
!3856 = !DIDerivedType(tag: DW_TAG_typedef, name: "hal_gpt_status_t", file: !249, line: 393, baseType: !248)
!3857 = !DIDerivedType(tag: DW_TAG_typedef, name: "hal_gpt_port_t", file: !257, line: 663, baseType: !256)
!3858 = !{!3859}
!3859 = !DILocalVariable(name: "gpt_port", arg: 1, scope: !3853, file: !246, line: 82, type: !3857)
!3860 = !DILocation(line: 0, scope: !3853)
!3861 = !DILocation(line: 84, column: 9, scope: !3862)
!3862 = distinct !DILexicalBlock(scope: !3853, file: !246, line: 84, column: 9)
!3863 = !DILocation(line: 84, column: 33, scope: !3862)
!3864 = !{i8 0, i8 2}
!3865 = !DILocation(line: 84, column: 9, scope: !3853)
!3866 = !DILocation(line: 88, column: 9, scope: !3867)
!3867 = distinct !DILexicalBlock(scope: !3853, file: !246, line: 88, column: 9)
!3868 = !DILocation(line: 88, column: 9, scope: !3853)
!3869 = !DILocation(line: 89, column: 9, scope: !3870)
!3870 = distinct !DILexicalBlock(scope: !3867, file: !246, line: 88, column: 50)
!3871 = !DILocation(line: 90, column: 9, scope: !3870)
!3872 = !DILocation(line: 92, column: 12, scope: !3853)
!3873 = !DILocation(line: 92, column: 5, scope: !3853)
!3874 = !DILocation(line: 96, column: 43, scope: !3853)
!3875 = !DILocation(line: 98, column: 5, scope: !3853)
!3876 = !DILocation(line: 99, column: 1, scope: !3853)
!3877 = distinct !DISubprogram(name: "hal_gpt_is_port_valid", scope: !246, file: !246, line: 63, type: !3878, scopeLine: 64, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !245, retainedNodes: !3880)
!3878 = !DISubroutineType(types: !3879)
!3879 = !{!296, !3857}
!3880 = !{!3881}
!3881 = !DILocalVariable(name: "gpt_port", arg: 1, scope: !3877, file: !246, line: 63, type: !3857)
!3882 = !DILocation(line: 0, scope: !3877)
!3883 = !DILocation(line: 65, column: 19, scope: !3884)
!3884 = distinct !DILexicalBlock(scope: !3877, file: !246, line: 65, column: 9)
!3885 = !DILocation(line: 65, column: 34, scope: !3884)
!3886 = !DILocation(line: 70, column: 1, scope: !3877)
!3887 = distinct !DISubprogram(name: "hal_gpt_deinit", scope: !246, file: !246, line: 101, type: !3854, scopeLine: 102, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !245, retainedNodes: !3888)
!3888 = !{!3889}
!3889 = !DILocalVariable(name: "gpt_port", arg: 1, scope: !3887, file: !246, line: 101, type: !3857)
!3890 = !DILocation(line: 0, scope: !3887)
!3891 = !DILocation(line: 103, column: 9, scope: !3892)
!3892 = distinct !DILexicalBlock(scope: !3887, file: !246, line: 103, column: 9)
!3893 = !DILocation(line: 103, column: 9, scope: !3887)
!3894 = !DILocation(line: 104, column: 9, scope: !3895)
!3895 = distinct !DILexicalBlock(scope: !3892, file: !246, line: 103, column: 50)
!3896 = !DILocation(line: 105, column: 9, scope: !3895)
!3897 = !DILocation(line: 108, column: 9, scope: !3898)
!3898 = distinct !DILexicalBlock(scope: !3887, file: !246, line: 108, column: 9)
!3899 = !DILocation(line: 108, column: 33, scope: !3898)
!3900 = !DILocation(line: 108, column: 48, scope: !3898)
!3901 = !DILocation(line: 108, column: 9, scope: !3887)
!3902 = !DILocation(line: 109, column: 9, scope: !3903)
!3903 = distinct !DILexicalBlock(scope: !3898, file: !246, line: 108, column: 68)
!3904 = !DILocation(line: 110, column: 9, scope: !3903)
!3905 = !DILocation(line: 113, column: 12, scope: !3887)
!3906 = !DILocation(line: 113, column: 5, scope: !3887)
!3907 = !DILocation(line: 116, column: 29, scope: !3887)
!3908 = !DILocation(line: 116, column: 43, scope: !3887)
!3909 = !DILocation(line: 117, column: 5, scope: !3887)
!3910 = !DILocation(line: 118, column: 1, scope: !3887)
!3911 = distinct !DISubprogram(name: "hal_gpt_get_free_run_count", scope: !246, file: !246, line: 120, type: !3912, scopeLine: 121, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !245, retainedNodes: !3915)
!3912 = !DISubroutineType(types: !3913)
!3913 = !{!3856, !3914, !3012}
!3914 = !DIDerivedType(tag: DW_TAG_typedef, name: "hal_gpt_clock_source_t", file: !257, line: 674, baseType: !268)
!3915 = !{!3916, !3917}
!3916 = !DILocalVariable(name: "clock_source", arg: 1, scope: !3911, file: !246, line: 120, type: !3914)
!3917 = !DILocalVariable(name: "count", arg: 2, scope: !3911, file: !246, line: 120, type: !3012)
!3918 = !DILocation(line: 0, scope: !3911)
!3919 = !DILocation(line: 122, column: 9, scope: !3911)
!3920 = !DILocation(line: 123, column: 50, scope: !3921)
!3921 = distinct !DILexicalBlock(scope: !3922, file: !246, line: 123, column: 13)
!3922 = distinct !DILexicalBlock(scope: !3923, file: !246, line: 122, column: 51)
!3923 = distinct !DILexicalBlock(scope: !3911, file: !246, line: 122, column: 9)
!3924 = !DILocation(line: 123, column: 65, scope: !3921)
!3925 = !DILocation(line: 123, column: 13, scope: !3922)
!3926 = !DILocation(line: 124, column: 13, scope: !3927)
!3927 = distinct !DILexicalBlock(scope: !3921, file: !246, line: 123, column: 86)
!3928 = !DILocation(line: 125, column: 9, scope: !3927)
!3929 = !DILocation(line: 126, column: 18, scope: !3922)
!3930 = !DILocation(line: 126, column: 16, scope: !3922)
!3931 = !DILocation(line: 127, column: 49, scope: !3922)
!3932 = !DILocation(line: 128, column: 5, scope: !3922)
!3933 = !DILocation(line: 129, column: 50, scope: !3934)
!3934 = distinct !DILexicalBlock(scope: !3935, file: !246, line: 129, column: 13)
!3935 = distinct !DILexicalBlock(scope: !3936, file: !246, line: 128, column: 57)
!3936 = distinct !DILexicalBlock(scope: !3923, file: !246, line: 128, column: 16)
!3937 = !DILocation(line: 129, column: 65, scope: !3934)
!3938 = !DILocation(line: 129, column: 13, scope: !3935)
!3939 = !DILocation(line: 130, column: 13, scope: !3940)
!3940 = distinct !DILexicalBlock(scope: !3934, file: !246, line: 129, column: 86)
!3941 = !DILocation(line: 131, column: 9, scope: !3940)
!3942 = !DILocation(line: 132, column: 18, scope: !3935)
!3943 = !DILocation(line: 132, column: 46, scope: !3935)
!3944 = !DILocation(line: 132, column: 65, scope: !3935)
!3945 = !DILocation(line: 132, column: 43, scope: !3935)
!3946 = !DILocation(line: 132, column: 16, scope: !3935)
!3947 = !DILocation(line: 133, column: 49, scope: !3935)
!3948 = !DILocation(line: 134, column: 5, scope: !3935)
!3949 = !DILocation(line: 135, column: 50, scope: !3950)
!3950 = distinct !DILexicalBlock(scope: !3951, file: !246, line: 135, column: 13)
!3951 = distinct !DILexicalBlock(scope: !3952, file: !246, line: 134, column: 58)
!3952 = distinct !DILexicalBlock(scope: !3936, file: !246, line: 134, column: 16)
!3953 = !DILocation(line: 135, column: 65, scope: !3950)
!3954 = !DILocation(line: 135, column: 13, scope: !3951)
!3955 = !DILocation(line: 136, column: 13, scope: !3956)
!3956 = distinct !DILexicalBlock(scope: !3950, file: !246, line: 135, column: 86)
!3957 = !DILocation(line: 137, column: 9, scope: !3956)
!3958 = !DILocation(line: 138, column: 18, scope: !3951)
!3959 = !DILocation(line: 138, column: 16, scope: !3951)
!3960 = !DILocation(line: 139, column: 49, scope: !3951)
!3961 = !DILocation(line: 141, column: 9, scope: !3962)
!3962 = distinct !DILexicalBlock(scope: !3952, file: !246, line: 140, column: 11)
!3963 = !DILocation(line: 142, column: 9, scope: !3962)
!3964 = !DILocation(line: 146, column: 1, scope: !3911)
!3965 = distinct !DISubprogram(name: "hal_gpt_get_duration_count", scope: !246, file: !246, line: 148, type: !3966, scopeLine: 149, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !245, retainedNodes: !3968)
!3966 = !DISubroutineType(types: !3967)
!3967 = !{!3856, !92, !92, !3012}
!3968 = !{!3969, !3970, !3971}
!3969 = !DILocalVariable(name: "start_count", arg: 1, scope: !3965, file: !246, line: 148, type: !92)
!3970 = !DILocalVariable(name: "end_count", arg: 2, scope: !3965, file: !246, line: 148, type: !92)
!3971 = !DILocalVariable(name: "duration_count", arg: 3, scope: !3965, file: !246, line: 148, type: !3012)
!3972 = !DILocation(line: 0, scope: !3965)
!3973 = !DILocation(line: 150, column: 24, scope: !3974)
!3974 = distinct !DILexicalBlock(scope: !3965, file: !246, line: 150, column: 9)
!3975 = !DILocation(line: 150, column: 9, scope: !3965)
!3976 = !DILocation(line: 0, scope: !3977)
!3977 = distinct !DILexicalBlock(scope: !3965, file: !246, line: 154, column: 9)
!3978 = !DILocation(line: 160, column: 5, scope: !3965)
!3979 = !DILocation(line: 161, column: 1, scope: !3965)
!3980 = distinct !DISubprogram(name: "hal_gpt_get_running_status", scope: !246, file: !246, line: 163, type: !3981, scopeLine: 165, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !245, retainedNodes: !3984)
!3981 = !DISubroutineType(types: !3982)
!3982 = !{!3856, !3857, !3983}
!3983 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !284, size: 32)
!3984 = !{!3985, !3986}
!3985 = !DILocalVariable(name: "gpt_port", arg: 1, scope: !3980, file: !246, line: 163, type: !3857)
!3986 = !DILocalVariable(name: "running_status", arg: 2, scope: !3980, file: !246, line: 164, type: !3983)
!3987 = !DILocation(line: 0, scope: !3980)
!3988 = !DILocation(line: 166, column: 18, scope: !3989)
!3989 = distinct !DILexicalBlock(scope: !3980, file: !246, line: 166, column: 9)
!3990 = !DILocation(line: 166, column: 9, scope: !3980)
!3991 = !DILocation(line: 167, column: 9, scope: !3992)
!3992 = distinct !DILexicalBlock(scope: !3989, file: !246, line: 166, column: 34)
!3993 = !DILocation(line: 168, column: 9, scope: !3992)
!3994 = !DILocation(line: 170, column: 47, scope: !3980)
!3995 = !DILocation(line: 170, column: 21, scope: !3980)
!3996 = !DILocation(line: 171, column: 5, scope: !3980)
!3997 = !DILocation(line: 172, column: 1, scope: !3980)
!3998 = distinct !DISubprogram(name: "hal_gpt_register_callback", scope: !246, file: !246, line: 174, type: !3999, scopeLine: 177, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !245, retainedNodes: !4001)
!3999 = !DISubroutineType(types: !4000)
!4000 = !{!3856, !3857, !290, !153}
!4001 = !{!4002, !4003, !4004}
!4002 = !DILocalVariable(name: "gpt_port", arg: 1, scope: !3998, file: !246, line: 174, type: !3857)
!4003 = !DILocalVariable(name: "callback", arg: 2, scope: !3998, file: !246, line: 175, type: !290)
!4004 = !DILocalVariable(name: "user_data", arg: 3, scope: !3998, file: !246, line: 176, type: !153)
!4005 = !DILocation(line: 0, scope: !3998)
!4006 = !DILocation(line: 178, column: 9, scope: !4007)
!4007 = distinct !DILexicalBlock(scope: !3998, file: !246, line: 178, column: 9)
!4008 = !DILocation(line: 178, column: 9, scope: !3998)
!4009 = !DILocation(line: 179, column: 9, scope: !4010)
!4010 = distinct !DILexicalBlock(scope: !4007, file: !246, line: 178, column: 50)
!4011 = !DILocation(line: 180, column: 9, scope: !4010)
!4012 = !DILocation(line: 182, column: 33, scope: !4013)
!4013 = distinct !DILexicalBlock(scope: !3998, file: !246, line: 182, column: 9)
!4014 = !DILocation(line: 182, column: 47, scope: !4013)
!4015 = !DILocation(line: 182, column: 9, scope: !3998)
!4016 = !DILocation(line: 185, column: 18, scope: !4017)
!4017 = distinct !DILexicalBlock(scope: !3998, file: !246, line: 185, column: 9)
!4018 = !DILocation(line: 185, column: 9, scope: !3998)
!4019 = !DILocation(line: 188, column: 46, scope: !3998)
!4020 = !DILocation(line: 188, column: 56, scope: !3998)
!4021 = !DILocation(line: 189, column: 46, scope: !3998)
!4022 = !DILocation(line: 189, column: 56, scope: !3998)
!4023 = !DILocation(line: 190, column: 5, scope: !3998)
!4024 = !DILocation(line: 191, column: 1, scope: !3998)
!4025 = distinct !DISubprogram(name: "hal_gpt_start_timer_ms", scope: !246, file: !246, line: 218, type: !4026, scopeLine: 219, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !245, retainedNodes: !4029)
!4026 = !DISubroutineType(types: !4027)
!4027 = !{!3856, !3857, !92, !4028}
!4028 = !DIDerivedType(tag: DW_TAG_typedef, name: "hal_gpt_timer_type_t", file: !249, line: 383, baseType: !273)
!4029 = !{!4030, !4031, !4032}
!4030 = !DILocalVariable(name: "gpt_port", arg: 1, scope: !4025, file: !246, line: 218, type: !3857)
!4031 = !DILocalVariable(name: "timeout_time_ms", arg: 2, scope: !4025, file: !246, line: 218, type: !92)
!4032 = !DILocalVariable(name: "timer_type", arg: 3, scope: !4025, file: !246, line: 218, type: !4028)
!4033 = !DILocation(line: 0, scope: !4025)
!4034 = !DILocation(line: 220, column: 9, scope: !4035)
!4035 = distinct !DILexicalBlock(scope: !4025, file: !246, line: 220, column: 9)
!4036 = !DILocation(line: 220, column: 9, scope: !4025)
!4037 = !DILocation(line: 221, column: 9, scope: !4038)
!4038 = distinct !DILexicalBlock(scope: !4035, file: !246, line: 220, column: 50)
!4039 = !DILocation(line: 222, column: 9, scope: !4038)
!4040 = !DILocation(line: 225, column: 33, scope: !4041)
!4041 = distinct !DILexicalBlock(scope: !4025, file: !246, line: 225, column: 9)
!4042 = !DILocation(line: 225, column: 47, scope: !4041)
!4043 = !DILocation(line: 225, column: 9, scope: !4025)
!4044 = !DILocation(line: 229, column: 25, scope: !4045)
!4045 = distinct !DILexicalBlock(scope: !4025, file: !246, line: 229, column: 9)
!4046 = !DILocation(line: 229, column: 9, scope: !4025)
!4047 = !DILocation(line: 234, column: 17, scope: !4025)
!4048 = !DILocation(line: 235, column: 17, scope: !4025)
!4049 = !DILocation(line: 236, column: 17, scope: !4025)
!4050 = !DILocation(line: 233, column: 5, scope: !4025)
!4051 = !DILocation(line: 237, column: 5, scope: !4025)
!4052 = !DILocation(line: 238, column: 29, scope: !4025)
!4053 = !DILocation(line: 238, column: 44, scope: !4025)
!4054 = !DILocation(line: 239, column: 5, scope: !4025)
!4055 = !DILocation(line: 240, column: 1, scope: !4025)
!4056 = distinct !DISubprogram(name: "hal_gpt_translate_timeout_time", scope: !246, file: !246, line: 72, type: !4057, scopeLine: 73, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !245, retainedNodes: !4059)
!4057 = !DISubroutineType(types: !4058)
!4058 = !{!92, !92}
!4059 = !{!4060}
!4060 = !DILocalVariable(name: "mili_seconds", arg: 1, scope: !4056, file: !246, line: 72, type: !92)
!4061 = !DILocation(line: 0, scope: !4056)
!4062 = !DILocation(line: 74, column: 37, scope: !4056)
!4063 = !DILocation(line: 74, column: 47, scope: !4056)
!4064 = !DILocation(line: 74, column: 63, scope: !4056)
!4065 = !DILocation(line: 74, column: 42, scope: !4056)
!4066 = !DILocation(line: 74, column: 73, scope: !4056)
!4067 = !DILocation(line: 74, column: 89, scope: !4056)
!4068 = !DILocation(line: 74, column: 68, scope: !4056)
!4069 = !DILocation(line: 74, column: 100, scope: !4056)
!4070 = !DILocation(line: 74, column: 116, scope: !4056)
!4071 = !DILocation(line: 74, column: 95, scope: !4056)
!4072 = !DILocation(line: 74, column: 5, scope: !4056)
!4073 = distinct !DISubprogram(name: "hal_gpt_translate_type", scope: !246, file: !246, line: 77, type: !4074, scopeLine: 78, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !245, retainedNodes: !4076)
!4074 = !DISubroutineType(types: !4075)
!4075 = !{!296, !4028}
!4076 = !{!4077}
!4077 = !DILocalVariable(name: "type", arg: 1, scope: !4073, file: !246, line: 77, type: !4028)
!4078 = !DILocation(line: 0, scope: !4073)
!4079 = !DILocation(line: 79, column: 38, scope: !4073)
!4080 = !DILocation(line: 79, column: 5, scope: !4073)
!4081 = distinct !DISubprogram(name: "hal_gpt_map_callback", scope: !246, file: !246, line: 213, type: !4082, scopeLine: 214, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !245, retainedNodes: !4085)
!4082 = !DISubroutineType(types: !4083)
!4083 = !{!4084, !3857}
!4084 = !DIDerivedType(tag: DW_TAG_typedef, name: "hal_gpt_internal_callback_t", file: !246, line: 211, baseType: !74)
!4085 = !{!4086}
!4086 = !DILocalVariable(name: "gpt_port", arg: 1, scope: !4081, file: !246, line: 213, type: !3857)
!4087 = !DILocation(line: 0, scope: !4081)
!4088 = !DILocation(line: 215, column: 23, scope: !4081)
!4089 = !DILocation(line: 215, column: 12, scope: !4081)
!4090 = !DILocation(line: 215, column: 5, scope: !4081)
!4091 = distinct !DISubprogram(name: "hal_gpt_callback0", scope: !246, file: !246, line: 193, type: !75, scopeLine: 194, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !245, retainedNodes: !4092)
!4092 = !{!4093}
!4093 = !DILocalVariable(name: "context", scope: !4091, file: !246, line: 195, type: !4094)
!4094 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !286, size: 32)
!4095 = !DILocation(line: 196, column: 26, scope: !4096)
!4096 = distinct !DILexicalBlock(scope: !4091, file: !246, line: 196, column: 9)
!4097 = !DILocation(line: 196, column: 14, scope: !4096)
!4098 = !DILocation(line: 196, column: 9, scope: !4091)
!4099 = !DILocation(line: 197, column: 36, scope: !4100)
!4100 = distinct !DILexicalBlock(scope: !4096, file: !246, line: 196, column: 36)
!4101 = !DILocation(line: 197, column: 9, scope: !4100)
!4102 = !DILocation(line: 198, column: 5, scope: !4100)
!4103 = !DILocation(line: 199, column: 45, scope: !4091)
!4104 = !DILocation(line: 200, column: 1, scope: !4091)
!4105 = distinct !DISubprogram(name: "hal_gpt_callback1", scope: !246, file: !246, line: 202, type: !75, scopeLine: 203, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !245, retainedNodes: !4106)
!4106 = !{!4107}
!4107 = !DILocalVariable(name: "context", scope: !4105, file: !246, line: 204, type: !4094)
!4108 = !DILocation(line: 205, column: 26, scope: !4109)
!4109 = distinct !DILexicalBlock(scope: !4105, file: !246, line: 205, column: 9)
!4110 = !DILocation(line: 205, column: 14, scope: !4109)
!4111 = !DILocation(line: 205, column: 9, scope: !4105)
!4112 = !DILocation(line: 206, column: 36, scope: !4113)
!4113 = distinct !DILexicalBlock(scope: !4109, file: !246, line: 205, column: 36)
!4114 = !DILocation(line: 206, column: 9, scope: !4113)
!4115 = !DILocation(line: 207, column: 5, scope: !4113)
!4116 = !DILocation(line: 208, column: 45, scope: !4105)
!4117 = !DILocation(line: 209, column: 1, scope: !4105)
!4118 = distinct !DISubprogram(name: "hal_gpt_stop_timer", scope: !246, file: !246, line: 242, type: !3854, scopeLine: 243, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !245, retainedNodes: !4119)
!4119 = !{!4120}
!4120 = !DILocalVariable(name: "gpt_port", arg: 1, scope: !4118, file: !246, line: 242, type: !3857)
!4121 = !DILocation(line: 0, scope: !4118)
!4122 = !DILocation(line: 244, column: 9, scope: !4123)
!4123 = distinct !DILexicalBlock(scope: !4118, file: !246, line: 244, column: 9)
!4124 = !DILocation(line: 244, column: 9, scope: !4118)
!4125 = !DILocation(line: 245, column: 9, scope: !4126)
!4126 = distinct !DILexicalBlock(scope: !4123, file: !246, line: 244, column: 50)
!4127 = !DILocation(line: 246, column: 9, scope: !4126)
!4128 = !DILocation(line: 248, column: 5, scope: !4118)
!4129 = !DILocation(line: 249, column: 29, scope: !4118)
!4130 = !DILocation(line: 249, column: 44, scope: !4118)
!4131 = !DILocation(line: 250, column: 5, scope: !4118)
!4132 = !DILocation(line: 251, column: 1, scope: !4118)
!4133 = distinct !DISubprogram(name: "hal_gpt_delay_ms", scope: !246, file: !246, line: 253, type: !4134, scopeLine: 254, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !245, retainedNodes: !4136)
!4134 = !DISubroutineType(types: !4135)
!4135 = !{!3856, !92}
!4136 = !{!4137}
!4137 = !DILocalVariable(name: "ms", arg: 1, scope: !4133, file: !246, line: 253, type: !92)
!4138 = !DILocation(line: 0, scope: !4133)
!4139 = !DILocation(line: 255, column: 46, scope: !4140)
!4140 = distinct !DILexicalBlock(scope: !4133, file: !246, line: 255, column: 9)
!4141 = !DILocation(line: 255, column: 61, scope: !4140)
!4142 = !DILocation(line: 255, column: 9, scope: !4133)
!4143 = !DILocation(line: 256, column: 9, scope: !4144)
!4144 = distinct !DILexicalBlock(scope: !4140, file: !246, line: 255, column: 82)
!4145 = !DILocation(line: 257, column: 5, scope: !4144)
!4146 = !DILocation(line: 258, column: 5, scope: !4133)
!4147 = !DILocation(line: 259, column: 57, scope: !4133)
!4148 = !DILocation(line: 260, column: 5, scope: !4133)
!4149 = distinct !DISubprogram(name: "hal_gpt_delay_us", scope: !246, file: !246, line: 264, type: !4134, scopeLine: 265, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !245, retainedNodes: !4150)
!4150 = !{!4151}
!4151 = !DILocalVariable(name: "us", arg: 1, scope: !4149, file: !246, line: 264, type: !92)
!4152 = !DILocation(line: 0, scope: !4149)
!4153 = !DILocation(line: 266, column: 46, scope: !4154)
!4154 = distinct !DILexicalBlock(scope: !4149, file: !246, line: 266, column: 9)
!4155 = !DILocation(line: 266, column: 61, scope: !4154)
!4156 = !DILocation(line: 266, column: 9, scope: !4149)
!4157 = !DILocation(line: 267, column: 9, scope: !4158)
!4158 = distinct !DILexicalBlock(scope: !4154, file: !246, line: 266, column: 82)
!4159 = !DILocation(line: 268, column: 5, scope: !4158)
!4160 = !DILocation(line: 269, column: 5, scope: !4149)
!4161 = !DILocation(line: 270, column: 57, scope: !4149)
!4162 = !DILocation(line: 271, column: 5, scope: !4149)
!4163 = distinct !DISubprogram(name: "hal_uart_init", scope: !300, file: !300, line: 234, type: !4164, scopeLine: 235, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !299, retainedNodes: !4168)
!4164 = !DISubroutineType(types: !4165)
!4165 = !{!4166, !360, !4167}
!4166 = !DIDerivedType(tag: DW_TAG_typedef, name: "hal_uart_status_t", file: !303, line: 351, baseType: !302)
!4167 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !371, size: 32)
!4168 = !{!4169, !4170}
!4169 = !DILocalVariable(name: "uart_port", arg: 1, scope: !4163, file: !300, line: 234, type: !360)
!4170 = !DILocalVariable(name: "uart_config", arg: 2, scope: !4163, file: !300, line: 234, type: !4167)
!4171 = !DILocation(line: 0, scope: !4163)
!4172 = !DILocation(line: 236, column: 10, scope: !4173)
!4173 = distinct !DILexicalBlock(scope: !4163, file: !300, line: 236, column: 9)
!4174 = !DILocation(line: 236, column: 9, scope: !4163)
!4175 = !DILocation(line: 239, column: 41, scope: !4176)
!4176 = distinct !DILexicalBlock(scope: !4163, file: !300, line: 239, column: 9)
!4177 = !DILocation(line: 239, column: 9, scope: !4163)
!4178 = !DILocation(line: 242, column: 5, scope: !4163)
!4179 = !DILocation(line: 243, column: 45, scope: !4163)
!4180 = !DILocation(line: 243, column: 12, scope: !4163)
!4181 = !DILocation(line: 244, column: 12, scope: !4163)
!4182 = !DILocation(line: 243, column: 5, scope: !4163)
!4183 = !DILocation(line: 245, column: 58, scope: !4163)
!4184 = !DILocation(line: 246, column: 30, scope: !4163)
!4185 = !{i32 0, i32 2}
!4186 = !DILocation(line: 246, column: 5, scope: !4163)
!4187 = !DILocation(line: 247, column: 5, scope: !4163)
!4188 = !DILocation(line: 249, column: 31, scope: !4189)
!4189 = distinct !DILexicalBlock(scope: !4163, file: !300, line: 249, column: 9)
!4190 = !DILocation(line: 249, column: 28, scope: !4189)
!4191 = !DILocation(line: 261, column: 1, scope: !4163)
!4192 = distinct !DISubprogram(name: "hal_uart_is_config_valid", scope: !300, file: !300, line: 93, type: !4193, scopeLine: 94, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !299, retainedNodes: !4197)
!4193 = !DISubroutineType(types: !4194)
!4194 = !{!296, !360, !4195}
!4195 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4196, size: 32)
!4196 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !371)
!4197 = !{!4198, !4199}
!4198 = !DILocalVariable(name: "uart_port", arg: 1, scope: !4192, file: !300, line: 93, type: !360)
!4199 = !DILocalVariable(name: "uart_config", arg: 2, scope: !4192, file: !300, line: 93, type: !4195)
!4200 = !DILocation(line: 0, scope: !4192)
!4201 = !DILocation(line: 95, column: 10, scope: !4202)
!4202 = distinct !DILexicalBlock(scope: !4192, file: !300, line: 95, column: 9)
!4203 = !DILocation(line: 95, column: 9, scope: !4192)
!4204 = !DILocation(line: 101, column: 23, scope: !4205)
!4205 = distinct !DILexicalBlock(scope: !4192, file: !300, line: 101, column: 9)
!4206 = !DILocation(line: 101, column: 32, scope: !4205)
!4207 = !DILocation(line: 101, column: 60, scope: !4205)
!4208 = !DILocation(line: 102, column: 27, scope: !4205)
!4209 = !DILocation(line: 102, column: 34, scope: !4205)
!4210 = !DILocation(line: 102, column: 58, scope: !4205)
!4211 = !DILocation(line: 103, column: 27, scope: !4205)
!4212 = !DILocation(line: 103, column: 36, scope: !4205)
!4213 = !DILocation(line: 103, column: 59, scope: !4205)
!4214 = !DILocation(line: 104, column: 27, scope: !4205)
!4215 = !DILocation(line: 104, column: 39, scope: !4205)
!4216 = !DILocation(line: 101, column: 9, scope: !4192)
!4217 = !DILocation(line: 109, column: 1, scope: !4192)
!4218 = distinct !DISubprogram(name: "hal_uart_translate_port", scope: !300, file: !300, line: 139, type: !4219, scopeLine: 140, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !299, retainedNodes: !4221)
!4219 = !DISubroutineType(types: !4220)
!4220 = !{!2865, !360}
!4221 = !{!4222}
!4222 = !DILocalVariable(name: "uart_port", arg: 1, scope: !4218, file: !300, line: 139, type: !360)
!4223 = !DILocation(line: 0, scope: !4218)
!4224 = !DILocation(line: 141, column: 24, scope: !4218)
!4225 = !DILocation(line: 141, column: 12, scope: !4218)
!4226 = !DILocation(line: 141, column: 5, scope: !4218)
!4227 = distinct !DISubprogram(name: "hal_uart_set_format", scope: !300, file: !300, line: 593, type: !4228, scopeLine: 594, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !299, retainedNodes: !4230)
!4228 = !DISubroutineType(types: !4229)
!4229 = !{!4166, !360, !4195}
!4230 = !{!4231, !4232}
!4231 = !DILocalVariable(name: "uart_port", arg: 1, scope: !4227, file: !300, line: 593, type: !360)
!4232 = !DILocalVariable(name: "config", arg: 2, scope: !4227, file: !300, line: 593, type: !4195)
!4233 = !DILocation(line: 0, scope: !4227)
!4234 = !DILocation(line: 595, column: 10, scope: !4235)
!4235 = distinct !DILexicalBlock(scope: !4227, file: !300, line: 595, column: 9)
!4236 = !DILocation(line: 595, column: 9, scope: !4227)
!4237 = !DILocation(line: 598, column: 45, scope: !4227)
!4238 = !DILocation(line: 598, column: 12, scope: !4227)
!4239 = !DILocation(line: 598, column: 59, scope: !4227)
!4240 = !DILocation(line: 598, column: 5, scope: !4227)
!4241 = !DILocation(line: 599, column: 23, scope: !4227)
!4242 = !DILocation(line: 600, column: 59, scope: !4227)
!4243 = !DILocation(line: 600, column: 23, scope: !4227)
!4244 = !DILocation(line: 601, column: 62, scope: !4227)
!4245 = !DILocation(line: 601, column: 23, scope: !4227)
!4246 = !DILocation(line: 602, column: 57, scope: !4227)
!4247 = !DILocation(line: 602, column: 23, scope: !4227)
!4248 = !DILocation(line: 603, column: 58, scope: !4227)
!4249 = !DILocation(line: 603, column: 23, scope: !4227)
!4250 = !DILocation(line: 599, column: 5, scope: !4227)
!4251 = !DILocation(line: 604, column: 5, scope: !4227)
!4252 = !DILocation(line: 605, column: 1, scope: !4227)
!4253 = distinct !DISubprogram(name: "hal_uart_translate_baudrate", scope: !300, file: !300, line: 145, type: !4254, scopeLine: 146, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !299, retainedNodes: !4256)
!4254 = !DISubroutineType(types: !4255)
!4255 = !{!92, !375}
!4256 = !{!4257, !4258}
!4257 = !DILocalVariable(name: "bandrate", arg: 1, scope: !4253, file: !300, line: 145, type: !375)
!4258 = !DILocalVariable(name: "baudrate_tbl", scope: !4253, file: !300, line: 147, type: !4259)
!4259 = !DICompositeType(tag: DW_TAG_array_type, baseType: !92, size: 416, elements: !4260)
!4260 = !{!4261}
!4261 = !DISubrange(count: 13)
!4262 = !DILocation(line: 0, scope: !4253)
!4263 = !DILocation(line: 147, column: 14, scope: !4253)
!4264 = !DILocation(line: 151, column: 12, scope: !4253)
!4265 = !DILocation(line: 151, column: 5, scope: !4253)
!4266 = distinct !DISubprogram(name: "hal_uart_translate_word_length", scope: !300, file: !300, line: 155, type: !4267, scopeLine: 156, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !299, retainedNodes: !4269)
!4267 = !DISubroutineType(types: !4268)
!4268 = !{!2935, !377}
!4269 = !{!4270, !4271}
!4270 = !DILocalVariable(name: "word_length", arg: 1, scope: !4266, file: !300, line: 155, type: !377)
!4271 = !DILocalVariable(name: "databit_tbl", scope: !4266, file: !300, line: 157, type: !4272)
!4272 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2935, size: 64, elements: !222)
!4273 = !DILocation(line: 0, scope: !4266)
!4274 = !DILocation(line: 157, column: 14, scope: !4266)
!4275 = !DILocation(line: 160, column: 12, scope: !4266)
!4276 = !DILocation(line: 160, column: 5, scope: !4266)
!4277 = distinct !DISubprogram(name: "hal_uart_translate_parity", scope: !300, file: !300, line: 164, type: !4278, scopeLine: 165, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !299, retainedNodes: !4280)
!4278 = !DISubroutineType(types: !4279)
!4279 = !{!2935, !381}
!4280 = !{!4281, !4282}
!4281 = !DILocalVariable(name: "parity", arg: 1, scope: !4277, file: !300, line: 164, type: !381)
!4282 = !DILocalVariable(name: "parity_tbl", scope: !4277, file: !300, line: 166, type: !4283)
!4283 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2935, size: 80, elements: !226)
!4284 = !DILocation(line: 0, scope: !4277)
!4285 = !DILocation(line: 166, column: 14, scope: !4277)
!4286 = !DILocation(line: 169, column: 12, scope: !4277)
!4287 = !DILocation(line: 169, column: 5, scope: !4277)
!4288 = distinct !DISubprogram(name: "hal_uart_translate_stopbit", scope: !300, file: !300, line: 173, type: !4289, scopeLine: 174, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !299, retainedNodes: !4291)
!4289 = !DISubroutineType(types: !4290)
!4290 = !{!2935, !379}
!4291 = !{!4292, !4293}
!4292 = !DILocalVariable(name: "stopbit", arg: 1, scope: !4288, file: !300, line: 173, type: !379)
!4293 = !DILocalVariable(name: "stopbit_tbl", scope: !4288, file: !300, line: 175, type: !4294)
!4294 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2935, size: 48, elements: !570)
!4295 = !DILocation(line: 0, scope: !4288)
!4296 = !DILocation(line: 175, column: 14, scope: !4288)
!4297 = !DILocation(line: 178, column: 12, scope: !4288)
!4298 = !DILocation(line: 178, column: 5, scope: !4288)
!4299 = distinct !DISubprogram(name: "hal_uart_is_port_valid", scope: !300, file: !300, line: 87, type: !4300, scopeLine: 88, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !299, retainedNodes: !4302)
!4300 = !DISubroutineType(types: !4301)
!4301 = !{!296, !360}
!4302 = !{!4303}
!4303 = !DILocalVariable(name: "uart_port", arg: 1, scope: !4299, file: !300, line: 87, type: !360)
!4304 = !DILocation(line: 0, scope: !4299)
!4305 = !DILocation(line: 89, column: 23, scope: !4299)
!4306 = !DILocation(line: 89, column: 5, scope: !4299)
!4307 = distinct !DISubprogram(name: "hal_uart_deinit", scope: !300, file: !300, line: 264, type: !4308, scopeLine: 265, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !299, retainedNodes: !4310)
!4308 = !DISubroutineType(types: !4309)
!4309 = !{!4166, !360}
!4310 = !{!4311}
!4311 = !DILocalVariable(name: "uart_port", arg: 1, scope: !4307, file: !300, line: 264, type: !360)
!4312 = !DILocation(line: 0, scope: !4307)
!4313 = !DILocation(line: 266, column: 10, scope: !4314)
!4314 = distinct !DILexicalBlock(scope: !4307, file: !300, line: 266, column: 9)
!4315 = !DILocation(line: 266, column: 9, scope: !4307)
!4316 = !DILocation(line: 269, column: 41, scope: !4317)
!4317 = distinct !DILexicalBlock(scope: !4307, file: !300, line: 269, column: 9)
!4318 = !DILocation(line: 269, column: 62, scope: !4317)
!4319 = !DILocation(line: 269, column: 9, scope: !4307)
!4320 = !DILocation(line: 272, column: 5, scope: !4307)
!4321 = !DILocation(line: 275, column: 22, scope: !4307)
!4322 = !DILocation(line: 275, column: 5, scope: !4307)
!4323 = !DILocation(line: 284, column: 5, scope: !4307)
!4324 = !DILocation(line: 286, column: 5, scope: !4307)
!4325 = !DILocation(line: 287, column: 1, scope: !4307)
!4326 = distinct !DISubprogram(name: "hal_uart_put_char", scope: !300, file: !300, line: 290, type: !4327, scopeLine: 291, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !299, retainedNodes: !4329)
!4327 = !DISubroutineType(types: !4328)
!4328 = !{null, !360, !352}
!4329 = !{!4330, !4331, !4332}
!4330 = !DILocalVariable(name: "uart_port", arg: 1, scope: !4326, file: !300, line: 290, type: !360)
!4331 = !DILocalVariable(name: "byte", arg: 2, scope: !4326, file: !300, line: 290, type: !352)
!4332 = !DILocalVariable(name: "int_no", scope: !4326, file: !300, line: 292, type: !2865)
!4333 = !DILocation(line: 0, scope: !4326)
!4334 = !DILocation(line: 292, column: 26, scope: !4326)
!4335 = !DILocation(line: 294, column: 16, scope: !4336)
!4336 = distinct !DILexicalBlock(scope: !4326, file: !300, line: 294, column: 9)
!4337 = !DILocation(line: 294, column: 9, scope: !4326)
!4338 = !DILocation(line: 295, column: 9, scope: !4339)
!4339 = distinct !DILexicalBlock(scope: !4336, file: !300, line: 294, column: 34)
!4340 = !DILocation(line: 296, column: 5, scope: !4339)
!4341 = !DILocation(line: 299, column: 1, scope: !4326)
!4342 = distinct !DISubprogram(name: "hal_uart_send_polling", scope: !300, file: !300, line: 302, type: !4343, scopeLine: 303, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !299, retainedNodes: !4345)
!4343 = !DISubroutineType(types: !4344)
!4344 = !{!92, !360, !3072, !92}
!4345 = !{!4346, !4347, !4348, !4349, !4350}
!4346 = !DILocalVariable(name: "uart_port", arg: 1, scope: !4342, file: !300, line: 302, type: !360)
!4347 = !DILocalVariable(name: "data", arg: 2, scope: !4342, file: !300, line: 302, type: !3072)
!4348 = !DILocalVariable(name: "size", arg: 3, scope: !4342, file: !300, line: 302, type: !92)
!4349 = !DILocalVariable(name: "int_no", scope: !4342, file: !300, line: 304, type: !2865)
!4350 = !DILocalVariable(name: "index", scope: !4342, file: !300, line: 305, type: !92)
!4351 = !DILocation(line: 0, scope: !4342)
!4352 = !DILocation(line: 304, column: 26, scope: !4342)
!4353 = !DILocation(line: 307, column: 14, scope: !4354)
!4354 = distinct !DILexicalBlock(scope: !4342, file: !300, line: 307, column: 9)
!4355 = !DILocation(line: 307, column: 9, scope: !4342)
!4356 = !DILocation(line: 313, column: 53, scope: !4357)
!4357 = distinct !DILexicalBlock(scope: !4358, file: !300, line: 312, column: 48)
!4358 = distinct !DILexicalBlock(scope: !4359, file: !300, line: 312, column: 9)
!4359 = distinct !DILexicalBlock(scope: !4360, file: !300, line: 312, column: 9)
!4360 = distinct !DILexicalBlock(scope: !4361, file: !300, line: 311, column: 33)
!4361 = distinct !DILexicalBlock(scope: !4342, file: !300, line: 311, column: 9)
!4362 = !DILocation(line: 313, column: 13, scope: !4357)
!4363 = !DILocation(line: 312, column: 44, scope: !4358)
!4364 = !DILocation(line: 312, column: 31, scope: !4358)
!4365 = !DILocation(line: 312, column: 9, scope: !4359)
!4366 = distinct !{!4366, !4365, !4367}
!4367 = !DILocation(line: 314, column: 9, scope: !4359)
!4368 = !DILocation(line: 318, column: 1, scope: !4342)
!4369 = distinct !DISubprogram(name: "hal_uart_send_dma", scope: !300, file: !300, line: 320, type: !4343, scopeLine: 321, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !299, retainedNodes: !4370)
!4370 = !{!4371, !4372, !4373, !4374, !4375, !4376}
!4371 = !DILocalVariable(name: "uart_port", arg: 1, scope: !4369, file: !300, line: 320, type: !360)
!4372 = !DILocalVariable(name: "data", arg: 2, scope: !4369, file: !300, line: 320, type: !3072)
!4373 = !DILocalVariable(name: "size", arg: 3, scope: !4369, file: !300, line: 320, type: !92)
!4374 = !DILocalVariable(name: "actual_space", scope: !4369, file: !300, line: 322, type: !92)
!4375 = !DILocalVariable(name: "send_size", scope: !4369, file: !300, line: 322, type: !92)
!4376 = !DILocalVariable(name: "ch", scope: !4369, file: !300, line: 323, type: !4377)
!4377 = !DIDerivedType(tag: DW_TAG_typedef, name: "DMA_VFIFO_CHANNEL", file: !112, line: 144, baseType: !111)
!4378 = !DILocation(line: 0, scope: !4369)
!4379 = !DILocation(line: 322, column: 5, scope: !4369)
!4380 = !DILocation(line: 328, column: 10, scope: !4381)
!4381 = distinct !DILexicalBlock(scope: !4369, file: !300, line: 328, column: 9)
!4382 = !DILocation(line: 328, column: 9, scope: !4369)
!4383 = !DILocation(line: 332, column: 15, scope: !4384)
!4384 = distinct !DILexicalBlock(scope: !4369, file: !300, line: 332, column: 9)
!4385 = !DILocation(line: 332, column: 24, scope: !4384)
!4386 = !DILocation(line: 335, column: 42, scope: !4387)
!4387 = distinct !DILexicalBlock(scope: !4369, file: !300, line: 335, column: 9)
!4388 = !DILocation(line: 335, column: 9, scope: !4369)
!4389 = !DILocation(line: 349, column: 30, scope: !4369)
!4390 = !DILocation(line: 349, column: 5, scope: !4369)
!4391 = !DILocation(line: 350, column: 9, scope: !4392)
!4392 = distinct !DILexicalBlock(scope: !4369, file: !300, line: 350, column: 9)
!4393 = !DILocation(line: 350, column: 22, scope: !4392)
!4394 = !DILocation(line: 355, column: 5, scope: !4369)
!4395 = !DILocation(line: 357, column: 22, scope: !4396)
!4396 = distinct !DILexicalBlock(scope: !4369, file: !300, line: 357, column: 9)
!4397 = !DILocation(line: 357, column: 19, scope: !4396)
!4398 = !DILocation(line: 357, column: 9, scope: !4369)
!4399 = !DILocation(line: 358, column: 14, scope: !4400)
!4400 = distinct !DILexicalBlock(scope: !4396, file: !300, line: 357, column: 36)
!4401 = !{i32 14, i32 18}
!4402 = !DILocation(line: 359, column: 9, scope: !4400)
!4403 = !DILocation(line: 360, column: 5, scope: !4400)
!4404 = !DILocation(line: 362, column: 1, scope: !4369)
!4405 = distinct !DISubprogram(name: "uart_channel_to_dma_channel", scope: !300, file: !300, line: 191, type: !4406, scopeLine: 192, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !299, retainedNodes: !4408)
!4406 = !DISubroutineType(types: !4407)
!4407 = !{!4377, !2865, !296}
!4408 = !{!4409, !4410, !4411}
!4409 = !DILocalVariable(name: "port", arg: 1, scope: !4405, file: !300, line: 191, type: !2865)
!4410 = !DILocalVariable(name: "is_rx", arg: 2, scope: !4405, file: !300, line: 191, type: !296)
!4411 = !DILocalVariable(name: "ch", scope: !4405, file: !300, line: 193, type: !4377)
!4412 = !DILocation(line: 0, scope: !4405)
!4413 = !DILocation(line: 195, column: 14, scope: !4414)
!4414 = distinct !DILexicalBlock(scope: !4405, file: !300, line: 195, column: 9)
!4415 = !DILocation(line: 195, column: 9, scope: !4405)
!4416 = !DILocation(line: 209, column: 5, scope: !4405)
!4417 = distinct !DISubprogram(name: "hal_uart_get_char", scope: !300, file: !300, line: 365, type: !4418, scopeLine: 366, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !299, retainedNodes: !4420)
!4418 = !DISubroutineType(types: !4419)
!4419 = !{!352, !360}
!4420 = !{!4421, !4422}
!4421 = !DILocalVariable(name: "uart_port", arg: 1, scope: !4417, file: !300, line: 365, type: !360)
!4422 = !DILocalVariable(name: "int_no", scope: !4417, file: !300, line: 367, type: !2865)
!4423 = !DILocation(line: 0, scope: !4417)
!4424 = !DILocation(line: 367, column: 26, scope: !4417)
!4425 = !DILocation(line: 369, column: 16, scope: !4426)
!4426 = distinct !DILexicalBlock(scope: !4417, file: !300, line: 369, column: 9)
!4427 = !DILocation(line: 369, column: 9, scope: !4417)
!4428 = !DILocation(line: 370, column: 22, scope: !4429)
!4429 = distinct !DILexicalBlock(scope: !4426, file: !300, line: 369, column: 33)
!4430 = !DILocation(line: 370, column: 9, scope: !4429)
!4431 = !DILocation(line: 0, scope: !4426)
!4432 = !DILocation(line: 375, column: 1, scope: !4417)
!4433 = distinct !DISubprogram(name: "hal_uart_get_char_unblocking", scope: !300, file: !300, line: 377, type: !4434, scopeLine: 378, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !299, retainedNodes: !4436)
!4434 = !DISubroutineType(types: !4435)
!4435 = !{!92, !360}
!4436 = !{!4437, !4438}
!4437 = !DILocalVariable(name: "uart_port", arg: 1, scope: !4433, file: !300, line: 377, type: !360)
!4438 = !DILocalVariable(name: "int_no", scope: !4433, file: !300, line: 379, type: !2865)
!4439 = !DILocation(line: 0, scope: !4433)
!4440 = !DILocation(line: 379, column: 26, scope: !4433)
!4441 = !DILocation(line: 381, column: 16, scope: !4442)
!4442 = distinct !DILexicalBlock(scope: !4433, file: !300, line: 381, column: 9)
!4443 = !DILocation(line: 381, column: 9, scope: !4433)
!4444 = !DILocation(line: 382, column: 16, scope: !4445)
!4445 = distinct !DILexicalBlock(scope: !4442, file: !300, line: 381, column: 33)
!4446 = !DILocation(line: 382, column: 9, scope: !4445)
!4447 = !DILocation(line: 0, scope: !4442)
!4448 = !DILocation(line: 387, column: 1, scope: !4433)
!4449 = distinct !DISubprogram(name: "hal_uart_receive_polling", scope: !300, file: !300, line: 390, type: !4450, scopeLine: 391, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !299, retainedNodes: !4452)
!4450 = !DISubroutineType(types: !4451)
!4451 = !{!92, !360, !400, !92}
!4452 = !{!4453, !4454, !4455, !4456, !4457}
!4453 = !DILocalVariable(name: "uart_port", arg: 1, scope: !4449, file: !300, line: 390, type: !360)
!4454 = !DILocalVariable(name: "buffer", arg: 2, scope: !4449, file: !300, line: 390, type: !400)
!4455 = !DILocalVariable(name: "size", arg: 3, scope: !4449, file: !300, line: 390, type: !92)
!4456 = !DILocalVariable(name: "int_no", scope: !4449, file: !300, line: 392, type: !2865)
!4457 = !DILocalVariable(name: "index", scope: !4449, file: !300, line: 393, type: !92)
!4458 = !DILocation(line: 0, scope: !4449)
!4459 = !DILocation(line: 392, column: 26, scope: !4449)
!4460 = !DILocation(line: 395, column: 16, scope: !4461)
!4461 = distinct !DILexicalBlock(scope: !4449, file: !300, line: 395, column: 9)
!4462 = !DILocation(line: 395, column: 9, scope: !4449)
!4463 = !DILocation(line: 401, column: 38, scope: !4464)
!4464 = distinct !DILexicalBlock(scope: !4465, file: !300, line: 400, column: 48)
!4465 = distinct !DILexicalBlock(scope: !4466, file: !300, line: 400, column: 9)
!4466 = distinct !DILexicalBlock(scope: !4467, file: !300, line: 400, column: 9)
!4467 = distinct !DILexicalBlock(scope: !4468, file: !300, line: 399, column: 33)
!4468 = distinct !DILexicalBlock(scope: !4449, file: !300, line: 399, column: 9)
!4469 = !DILocation(line: 401, column: 13, scope: !4464)
!4470 = !DILocation(line: 401, column: 27, scope: !4464)
!4471 = !DILocation(line: 400, column: 44, scope: !4465)
!4472 = !DILocation(line: 400, column: 31, scope: !4465)
!4473 = !DILocation(line: 400, column: 9, scope: !4466)
!4474 = distinct !{!4474, !4473, !4475}
!4475 = !DILocation(line: 402, column: 9, scope: !4466)
!4476 = !DILocation(line: 406, column: 1, scope: !4449)
!4477 = distinct !DISubprogram(name: "hal_uart_receive_dma", scope: !300, file: !300, line: 408, type: !4450, scopeLine: 409, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !299, retainedNodes: !4478)
!4478 = !{!4479, !4480, !4481, !4482, !4483, !4484}
!4479 = !DILocalVariable(name: "uart_port", arg: 1, scope: !4477, file: !300, line: 408, type: !360)
!4480 = !DILocalVariable(name: "buffer", arg: 2, scope: !4477, file: !300, line: 408, type: !400)
!4481 = !DILocalVariable(name: "size", arg: 3, scope: !4477, file: !300, line: 408, type: !92)
!4482 = !DILocalVariable(name: "actual_size", scope: !4477, file: !300, line: 410, type: !92)
!4483 = !DILocalVariable(name: "receive_size", scope: !4477, file: !300, line: 410, type: !92)
!4484 = !DILocalVariable(name: "ch", scope: !4477, file: !300, line: 411, type: !4377)
!4485 = !DILocation(line: 0, scope: !4477)
!4486 = !DILocation(line: 410, column: 5, scope: !4477)
!4487 = !DILocation(line: 413, column: 10, scope: !4488)
!4488 = distinct !DILexicalBlock(scope: !4477, file: !300, line: 413, column: 9)
!4489 = !DILocation(line: 413, column: 9, scope: !4477)
!4490 = !DILocation(line: 417, column: 17, scope: !4491)
!4491 = distinct !DILexicalBlock(scope: !4477, file: !300, line: 417, column: 9)
!4492 = !DILocation(line: 417, column: 26, scope: !4491)
!4493 = !DILocation(line: 421, column: 30, scope: !4477)
!4494 = !DILocation(line: 421, column: 5, scope: !4477)
!4495 = !DILocation(line: 422, column: 9, scope: !4496)
!4496 = distinct !DILexicalBlock(scope: !4477, file: !300, line: 422, column: 9)
!4497 = !DILocation(line: 422, column: 21, scope: !4496)
!4498 = !DILocation(line: 427, column: 5, scope: !4477)
!4499 = !DILocation(line: 429, column: 25, scope: !4500)
!4500 = distinct !DILexicalBlock(scope: !4477, file: !300, line: 429, column: 9)
!4501 = !DILocation(line: 429, column: 22, scope: !4500)
!4502 = !DILocation(line: 429, column: 9, scope: !4477)
!4503 = !DILocation(line: 430, column: 14, scope: !4504)
!4504 = distinct !DILexicalBlock(scope: !4500, file: !300, line: 429, column: 38)
!4505 = !DILocation(line: 431, column: 9, scope: !4504)
!4506 = !DILocation(line: 432, column: 5, scope: !4504)
!4507 = !DILocation(line: 435, column: 1, scope: !4477)
!4508 = distinct !DISubprogram(name: "hal_uart_get_available_send_space", scope: !300, file: !300, line: 438, type: !4434, scopeLine: 439, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !299, retainedNodes: !4509)
!4509 = !{!4510, !4511}
!4510 = !DILocalVariable(name: "uart_port", arg: 1, scope: !4508, file: !300, line: 438, type: !360)
!4511 = !DILocalVariable(name: "length", scope: !4508, file: !300, line: 440, type: !92)
!4512 = !DILocation(line: 0, scope: !4508)
!4513 = !DILocation(line: 440, column: 5, scope: !4508)
!4514 = !DILocation(line: 440, column: 14, scope: !4508)
!4515 = !DILocation(line: 442, column: 10, scope: !4516)
!4516 = distinct !DILexicalBlock(scope: !4508, file: !300, line: 442, column: 9)
!4517 = !DILocation(line: 442, column: 9, scope: !4508)
!4518 = !DILocation(line: 446, column: 30, scope: !4508)
!4519 = !DILocation(line: 446, column: 5, scope: !4508)
!4520 = !DILocation(line: 447, column: 12, scope: !4508)
!4521 = !DILocation(line: 447, column: 5, scope: !4508)
!4522 = !DILocation(line: 448, column: 1, scope: !4508)
!4523 = distinct !DISubprogram(name: "hal_uart_get_available_receive_bytes", scope: !300, file: !300, line: 451, type: !4434, scopeLine: 452, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !299, retainedNodes: !4524)
!4524 = !{!4525, !4526}
!4525 = !DILocalVariable(name: "uart_port", arg: 1, scope: !4523, file: !300, line: 451, type: !360)
!4526 = !DILocalVariable(name: "length", scope: !4523, file: !300, line: 453, type: !92)
!4527 = !DILocation(line: 0, scope: !4523)
!4528 = !DILocation(line: 453, column: 5, scope: !4523)
!4529 = !DILocation(line: 453, column: 14, scope: !4523)
!4530 = !DILocation(line: 455, column: 10, scope: !4531)
!4531 = distinct !DILexicalBlock(scope: !4523, file: !300, line: 455, column: 9)
!4532 = !DILocation(line: 455, column: 9, scope: !4523)
!4533 = !DILocation(line: 459, column: 30, scope: !4523)
!4534 = !DILocation(line: 459, column: 5, scope: !4523)
!4535 = !DILocation(line: 461, column: 12, scope: !4523)
!4536 = !DILocation(line: 461, column: 5, scope: !4523)
!4537 = !DILocation(line: 462, column: 1, scope: !4523)
!4538 = distinct !DISubprogram(name: "hal_uart_register_callback", scope: !300, file: !300, line: 543, type: !4539, scopeLine: 546, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !299, retainedNodes: !4541)
!4539 = !DISubroutineType(types: !4540)
!4540 = !{!4166, !360, !388, !153}
!4541 = !{!4542, !4543, !4544, !4545}
!4542 = !DILocalVariable(name: "uart_port", arg: 1, scope: !4538, file: !300, line: 543, type: !360)
!4543 = !DILocalVariable(name: "user_callback", arg: 2, scope: !4538, file: !300, line: 544, type: !388)
!4544 = !DILocalVariable(name: "user_data", arg: 3, scope: !4538, file: !300, line: 545, type: !153)
!4545 = !DILocalVariable(name: "ch", scope: !4538, file: !300, line: 547, type: !4377)
!4546 = !DILocation(line: 0, scope: !4538)
!4547 = !DILocation(line: 549, column: 10, scope: !4548)
!4548 = distinct !DILexicalBlock(scope: !4538, file: !300, line: 549, column: 9)
!4549 = !DILocation(line: 549, column: 9, scope: !4538)
!4550 = !DILocation(line: 556, column: 53, scope: !4538)
!4551 = !DILocation(line: 556, column: 62, scope: !4538)
!4552 = !DILocation(line: 557, column: 53, scope: !4538)
!4553 = !DILocation(line: 557, column: 63, scope: !4538)
!4554 = !DILocation(line: 558, column: 37, scope: !4538)
!4555 = !DILocation(line: 558, column: 54, scope: !4538)
!4556 = !DILocation(line: 560, column: 39, scope: !4538)
!4557 = !DILocation(line: 561, column: 39, scope: !4538)
!4558 = !DILocation(line: 560, column: 5, scope: !4538)
!4559 = !DILocation(line: 562, column: 5, scope: !4538)
!4560 = !DILocation(line: 564, column: 44, scope: !4561)
!4561 = distinct !DILexicalBlock(scope: !4538, file: !300, line: 564, column: 9)
!4562 = !DILocation(line: 564, column: 9, scope: !4538)
!4563 = !DILocation(line: 565, column: 9, scope: !4564)
!4564 = distinct !DILexicalBlock(scope: !4561, file: !300, line: 564, column: 59)
!4565 = !DILocation(line: 566, column: 5, scope: !4564)
!4566 = !DILocation(line: 567, column: 9, scope: !4567)
!4567 = distinct !DILexicalBlock(scope: !4561, file: !300, line: 566, column: 12)
!4568 = !DILocation(line: 569, column: 10, scope: !4538)
!4569 = !DILocation(line: 570, column: 5, scope: !4538)
!4570 = !DILocation(line: 578, column: 5, scope: !4538)
!4571 = !DILocation(line: 579, column: 1, scope: !4538)
!4572 = !DILocation(line: 0, scope: !356)
!4573 = !DILocation(line: 539, column: 12, scope: !356)
!4574 = !DILocation(line: 539, column: 5, scope: !356)
!4575 = distinct !DISubprogram(name: "hal_uart_send_callback0", scope: !300, file: !300, line: 511, type: !75, scopeLine: 512, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !299, retainedNodes: !4576)
!4576 = !{!4577}
!4577 = !DILocalVariable(name: "callback_context", scope: !4578, file: !300, line: 514, type: !4580)
!4578 = distinct !DILexicalBlock(scope: !4579, file: !300, line: 513, column: 60)
!4579 = distinct !DILexicalBlock(scope: !4575, file: !300, line: 513, column: 9)
!4580 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !384, size: 32)
!4581 = !DILocation(line: 513, column: 42, scope: !4579)
!4582 = !DILocation(line: 513, column: 9, scope: !4575)
!4583 = !DILocation(line: 515, column: 39, scope: !4584)
!4584 = distinct !DILexicalBlock(scope: !4578, file: !300, line: 515, column: 13)
!4585 = !DILocation(line: 515, column: 18, scope: !4584)
!4586 = !DILocation(line: 515, column: 13, scope: !4578)
!4587 = !DILocation(line: 516, column: 89, scope: !4588)
!4588 = distinct !DILexicalBlock(scope: !4584, file: !300, line: 515, column: 49)
!4589 = !DILocation(line: 516, column: 13, scope: !4588)
!4590 = !DILocation(line: 517, column: 9, scope: !4588)
!4591 = !DILocation(line: 519, column: 32, scope: !4575)
!4592 = !DILocation(line: 519, column: 5, scope: !4575)
!4593 = !DILocation(line: 520, column: 1, scope: !4575)
!4594 = distinct !DISubprogram(name: "hal_uart_send_callback1", scope: !300, file: !300, line: 523, type: !75, scopeLine: 524, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !299, retainedNodes: !4595)
!4595 = !{!4596}
!4596 = !DILocalVariable(name: "callback_context", scope: !4597, file: !300, line: 526, type: !4580)
!4597 = distinct !DILexicalBlock(scope: !4598, file: !300, line: 525, column: 60)
!4598 = distinct !DILexicalBlock(scope: !4594, file: !300, line: 525, column: 9)
!4599 = !DILocation(line: 525, column: 42, scope: !4598)
!4600 = !DILocation(line: 525, column: 9, scope: !4594)
!4601 = !DILocation(line: 527, column: 39, scope: !4602)
!4602 = distinct !DILexicalBlock(scope: !4597, file: !300, line: 527, column: 13)
!4603 = !DILocation(line: 527, column: 18, scope: !4602)
!4604 = !DILocation(line: 527, column: 13, scope: !4597)
!4605 = !DILocation(line: 528, column: 89, scope: !4606)
!4606 = distinct !DILexicalBlock(scope: !4602, file: !300, line: 527, column: 49)
!4607 = !DILocation(line: 528, column: 13, scope: !4606)
!4608 = !DILocation(line: 529, column: 9, scope: !4606)
!4609 = !DILocation(line: 531, column: 32, scope: !4594)
!4610 = !DILocation(line: 531, column: 5, scope: !4594)
!4611 = !DILocation(line: 532, column: 1, scope: !4594)
!4612 = distinct !DISubprogram(name: "hal_uart_check_irq_disable", scope: !300, file: !300, line: 464, type: !4613, scopeLine: 465, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !299, retainedNodes: !4615)
!4613 = !DISubroutineType(types: !4614)
!4614 = !{null, !2865, !296}
!4615 = !{!4616, !4617, !4618, !4619, !4620, !4622}
!4616 = !DILocalVariable(name: "uart_port", arg: 1, scope: !4612, file: !300, line: 464, type: !2865)
!4617 = !DILocalVariable(name: "is_rx", arg: 2, scope: !4612, file: !300, line: 464, type: !296)
!4618 = !DILocalVariable(name: "avail_size", scope: !4612, file: !300, line: 466, type: !92)
!4619 = !DILocalVariable(name: "avail_space", scope: !4612, file: !300, line: 466, type: !92)
!4620 = !DILocalVariable(name: "dma_config", scope: !4612, file: !300, line: 467, type: !4621)
!4621 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !396, size: 32)
!4622 = !DILocalVariable(name: "ch", scope: !4612, file: !300, line: 468, type: !4377)
!4623 = !DILocation(line: 0, scope: !4612)
!4624 = !DILocation(line: 466, column: 5, scope: !4612)
!4625 = !DILocation(line: 471, column: 9, scope: !4612)
!4626 = !DILocation(line: 472, column: 9, scope: !4627)
!4627 = distinct !DILexicalBlock(scope: !4628, file: !300, line: 471, column: 16)
!4628 = distinct !DILexicalBlock(scope: !4612, file: !300, line: 471, column: 9)
!4629 = !DILocation(line: 473, column: 13, scope: !4630)
!4630 = distinct !DILexicalBlock(scope: !4627, file: !300, line: 473, column: 13)
!4631 = !DILocation(line: 473, column: 39, scope: !4630)
!4632 = !DILocation(line: 473, column: 24, scope: !4630)
!4633 = !DILocation(line: 473, column: 13, scope: !4627)
!4634 = !DILocation(line: 478, column: 9, scope: !4635)
!4635 = distinct !DILexicalBlock(scope: !4628, file: !300, line: 477, column: 12)
!4636 = !DILocation(line: 479, column: 13, scope: !4637)
!4637 = distinct !DILexicalBlock(scope: !4635, file: !300, line: 479, column: 13)
!4638 = !DILocation(line: 479, column: 40, scope: !4637)
!4639 = !DILocation(line: 479, column: 77, scope: !4637)
!4640 = !DILocation(line: 479, column: 63, scope: !4637)
!4641 = !DILocation(line: 479, column: 25, scope: !4637)
!4642 = !DILocation(line: 479, column: 13, scope: !4635)
!4643 = !DILocation(line: 0, scope: !4628)
!4644 = !DILocation(line: 484, column: 1, scope: !4612)
!4645 = distinct !DISubprogram(name: "hal_uart_receive_callback0", scope: !300, file: !300, line: 486, type: !75, scopeLine: 487, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !299, retainedNodes: !4646)
!4646 = !{!4647}
!4647 = !DILocalVariable(name: "callback_context", scope: !4648, file: !300, line: 490, type: !4580)
!4648 = distinct !DILexicalBlock(scope: !4649, file: !300, line: 489, column: 70)
!4649 = distinct !DILexicalBlock(scope: !4645, file: !300, line: 488, column: 9)
!4650 = !DILocation(line: 488, column: 43, scope: !4649)
!4651 = !DILocation(line: 488, column: 61, scope: !4649)
!4652 = !DILocation(line: 489, column: 14, scope: !4649)
!4653 = !DILocation(line: 489, column: 63, scope: !4649)
!4654 = !DILocation(line: 488, column: 9, scope: !4645)
!4655 = !DILocation(line: 491, column: 39, scope: !4656)
!4656 = distinct !DILexicalBlock(scope: !4648, file: !300, line: 491, column: 13)
!4657 = !DILocation(line: 491, column: 18, scope: !4656)
!4658 = !DILocation(line: 491, column: 13, scope: !4648)
!4659 = !DILocation(line: 492, column: 88, scope: !4660)
!4660 = distinct !DILexicalBlock(scope: !4656, file: !300, line: 491, column: 49)
!4661 = !DILocation(line: 492, column: 13, scope: !4660)
!4662 = !DILocation(line: 493, column: 9, scope: !4660)
!4663 = !DILocation(line: 495, column: 32, scope: !4645)
!4664 = !DILocation(line: 495, column: 5, scope: !4645)
!4665 = !DILocation(line: 496, column: 1, scope: !4645)
!4666 = distinct !DISubprogram(name: "hal_uart_receive_callback1", scope: !300, file: !300, line: 499, type: !75, scopeLine: 500, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !299, retainedNodes: !4667)
!4667 = !{!4668}
!4668 = !DILocalVariable(name: "callback_context", scope: !4669, file: !300, line: 503, type: !4580)
!4669 = distinct !DILexicalBlock(scope: !4670, file: !300, line: 502, column: 70)
!4670 = distinct !DILexicalBlock(scope: !4666, file: !300, line: 501, column: 9)
!4671 = !DILocation(line: 501, column: 43, scope: !4670)
!4672 = !DILocation(line: 501, column: 61, scope: !4670)
!4673 = !DILocation(line: 502, column: 14, scope: !4670)
!4674 = !DILocation(line: 502, column: 63, scope: !4670)
!4675 = !DILocation(line: 501, column: 9, scope: !4666)
!4676 = !DILocation(line: 504, column: 39, scope: !4677)
!4677 = distinct !DILexicalBlock(scope: !4669, file: !300, line: 504, column: 13)
!4678 = !DILocation(line: 504, column: 18, scope: !4677)
!4679 = !DILocation(line: 504, column: 13, scope: !4669)
!4680 = !DILocation(line: 505, column: 88, scope: !4681)
!4681 = distinct !DILexicalBlock(scope: !4677, file: !300, line: 504, column: 49)
!4682 = !DILocation(line: 505, column: 13, scope: !4681)
!4683 = !DILocation(line: 506, column: 9, scope: !4681)
!4684 = !DILocation(line: 508, column: 32, scope: !4666)
!4685 = !DILocation(line: 508, column: 5, scope: !4666)
!4686 = !DILocation(line: 509, column: 1, scope: !4666)
!4687 = distinct !DISubprogram(name: "hal_uart_set_baudrate", scope: !300, file: !300, line: 582, type: !4688, scopeLine: 583, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !299, retainedNodes: !4690)
!4688 = !DISubroutineType(types: !4689)
!4689 = !{!4166, !360, !375}
!4690 = !{!4691, !4692}
!4691 = !DILocalVariable(name: "uart_port", arg: 1, scope: !4687, file: !300, line: 582, type: !360)
!4692 = !DILocalVariable(name: "baudrate", arg: 2, scope: !4687, file: !300, line: 582, type: !375)
!4693 = !DILocation(line: 0, scope: !4687)
!4694 = !DILocation(line: 584, column: 11, scope: !4695)
!4695 = distinct !DILexicalBlock(scope: !4687, file: !300, line: 584, column: 9)
!4696 = !DILocation(line: 584, column: 46, scope: !4695)
!4697 = !DILocation(line: 588, column: 37, scope: !4687)
!4698 = !DILocation(line: 588, column: 50, scope: !4687)
!4699 = !DILocation(line: 588, column: 59, scope: !4687)
!4700 = !DILocation(line: 589, column: 12, scope: !4687)
!4701 = !DILocation(line: 589, column: 5, scope: !4687)
!4702 = !DILocation(line: 590, column: 1, scope: !4687)
!4703 = distinct !DISubprogram(name: "hal_uart_set_dma", scope: !300, file: !300, line: 608, type: !4704, scopeLine: 609, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !299, retainedNodes: !4708)
!4704 = !DISubroutineType(types: !4705)
!4705 = !{!4166, !360, !4706}
!4706 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4707, size: 32)
!4707 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !396)
!4708 = !{!4709, !4710}
!4709 = !DILocalVariable(name: "uart_port", arg: 1, scope: !4703, file: !300, line: 608, type: !360)
!4710 = !DILocalVariable(name: "uart_dma_config", arg: 2, scope: !4703, file: !300, line: 608, type: !4706)
!4711 = !DILocation(line: 0, scope: !4703)
!4712 = !DILocation(line: 610, column: 10, scope: !4713)
!4713 = distinct !DILexicalBlock(scope: !4703, file: !300, line: 610, column: 9)
!4714 = !DILocation(line: 610, column: 9, scope: !4703)
!4715 = !DILocation(line: 614, column: 10, scope: !4716)
!4716 = distinct !DILexicalBlock(scope: !4703, file: !300, line: 614, column: 9)
!4717 = !DILocation(line: 614, column: 9, scope: !4703)
!4718 = !DILocation(line: 618, column: 37, scope: !4703)
!4719 = !DILocation(line: 618, column: 56, scope: !4703)
!4720 = !DILocation(line: 619, column: 45, scope: !4703)
!4721 = !DILocation(line: 619, column: 12, scope: !4703)
!4722 = !DILocation(line: 620, column: 12, scope: !4703)
!4723 = !DILocation(line: 619, column: 5, scope: !4703)
!4724 = !DILocation(line: 621, column: 5, scope: !4703)
!4725 = !DILocation(line: 622, column: 5, scope: !4703)
!4726 = !DILocation(line: 623, column: 33, scope: !4703)
!4727 = !DILocation(line: 624, column: 50, scope: !4703)
!4728 = !DILocation(line: 625, column: 50, scope: !4703)
!4729 = !DILocation(line: 626, column: 50, scope: !4703)
!4730 = !DILocation(line: 627, column: 50, scope: !4703)
!4731 = !DILocation(line: 628, column: 33, scope: !4703)
!4732 = !DILocation(line: 623, column: 5, scope: !4703)
!4733 = !DILocation(line: 630, column: 50, scope: !4703)
!4734 = !DILocation(line: 631, column: 50, scope: !4703)
!4735 = !DILocation(line: 632, column: 50, scope: !4703)
!4736 = !DILocation(line: 629, column: 5, scope: !4703)
!4737 = !DILocation(line: 634, column: 5, scope: !4703)
!4738 = !DILocation(line: 635, column: 1, scope: !4703)
!4739 = distinct !DISubprogram(name: "hal_uart_is_dma_config_valid", scope: !300, file: !300, line: 112, type: !4740, scopeLine: 113, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !299, retainedNodes: !4742)
!4740 = !DISubroutineType(types: !4741)
!4741 = !{!296, !4706}
!4742 = !{!4743}
!4743 = !DILocalVariable(name: "dma_config", arg: 1, scope: !4739, file: !300, line: 112, type: !4706)
!4744 = !DILocation(line: 0, scope: !4739)
!4745 = !DILocation(line: 114, column: 14, scope: !4746)
!4746 = distinct !DILexicalBlock(scope: !4739, file: !300, line: 114, column: 9)
!4747 = !DILocation(line: 114, column: 9, scope: !4739)
!4748 = !DILocation(line: 117, column: 29, scope: !4749)
!4749 = distinct !DILexicalBlock(scope: !4739, file: !300, line: 117, column: 9)
!4750 = !DILocation(line: 117, column: 14, scope: !4749)
!4751 = !DILocation(line: 117, column: 9, scope: !4739)
!4752 = !DILocation(line: 120, column: 21, scope: !4753)
!4753 = distinct !DILexicalBlock(scope: !4739, file: !300, line: 120, column: 9)
!4754 = !DILocation(line: 120, column: 61, scope: !4753)
!4755 = !DILocation(line: 120, column: 47, scope: !4753)
!4756 = !DILocation(line: 120, column: 9, scope: !4739)
!4757 = !DILocation(line: 123, column: 61, scope: !4758)
!4758 = distinct !DILexicalBlock(scope: !4739, file: !300, line: 123, column: 9)
!4759 = !DILocation(line: 123, column: 47, scope: !4758)
!4760 = !DILocation(line: 123, column: 9, scope: !4739)
!4761 = !DILocation(line: 126, column: 29, scope: !4762)
!4762 = distinct !DILexicalBlock(scope: !4739, file: !300, line: 126, column: 9)
!4763 = !DILocation(line: 126, column: 14, scope: !4762)
!4764 = !DILocation(line: 126, column: 9, scope: !4739)
!4765 = !DILocation(line: 129, column: 21, scope: !4766)
!4766 = distinct !DILexicalBlock(scope: !4739, file: !300, line: 129, column: 9)
!4767 = !DILocation(line: 129, column: 58, scope: !4766)
!4768 = !DILocation(line: 129, column: 44, scope: !4766)
!4769 = !DILocation(line: 129, column: 9, scope: !4739)
!4770 = !DILocation(line: 136, column: 1, scope: !4739)
!4771 = distinct !DISubprogram(name: "hal_uart_translate_timeout", scope: !300, file: !300, line: 182, type: !4057, scopeLine: 183, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !299, retainedNodes: !4772)
!4772 = !{!4773, !4774}
!4773 = !DILocalVariable(name: "timeout_us", arg: 1, scope: !4771, file: !300, line: 182, type: !92)
!4774 = !DILocalVariable(name: "ticks_per_us", scope: !4771, file: !300, line: 184, type: !92)
!4775 = !DILocation(line: 0, scope: !4771)
!4776 = !DILocation(line: 186, column: 20, scope: !4771)
!4777 = !DILocation(line: 186, column: 39, scope: !4771)
!4778 = !DILocation(line: 188, column: 25, scope: !4771)
!4779 = !DILocation(line: 188, column: 5, scope: !4771)
!4780 = distinct !DISubprogram(name: "hal_uart_set_hardware_flowcontrol", scope: !300, file: !300, line: 637, type: !4308, scopeLine: 638, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !299, retainedNodes: !4781)
!4781 = !{!4782, !4783}
!4782 = !DILocalVariable(name: "uart_port", arg: 1, scope: !4780, file: !300, line: 637, type: !360)
!4783 = !DILocalVariable(name: "int_no", scope: !4780, file: !300, line: 639, type: !2865)
!4784 = !DILocation(line: 0, scope: !4780)
!4785 = !DILocation(line: 641, column: 10, scope: !4786)
!4786 = distinct !DILexicalBlock(scope: !4780, file: !300, line: 641, column: 9)
!4787 = !DILocation(line: 641, column: 9, scope: !4780)
!4788 = !DILocation(line: 645, column: 14, scope: !4780)
!4789 = !DILocation(line: 646, column: 5, scope: !4780)
!4790 = !DILocation(line: 648, column: 5, scope: !4780)
!4791 = !DILocation(line: 649, column: 1, scope: !4780)
!4792 = distinct !DISubprogram(name: "hal_uart_set_software_flowcontrol", scope: !300, file: !300, line: 651, type: !4793, scopeLine: 655, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !299, retainedNodes: !4795)
!4793 = !DISubroutineType(types: !4794)
!4794 = !{!4166, !360, !183, !183, !183}
!4795 = !{!4796, !4797, !4798, !4799, !4800}
!4796 = !DILocalVariable(name: "uart_port", arg: 1, scope: !4792, file: !300, line: 651, type: !360)
!4797 = !DILocalVariable(name: "xon", arg: 2, scope: !4792, file: !300, line: 652, type: !183)
!4798 = !DILocalVariable(name: "xoff", arg: 3, scope: !4792, file: !300, line: 653, type: !183)
!4799 = !DILocalVariable(name: "escape_character", arg: 4, scope: !4792, file: !300, line: 654, type: !183)
!4800 = !DILocalVariable(name: "int_no", scope: !4792, file: !300, line: 656, type: !2865)
!4801 = !DILocation(line: 0, scope: !4792)
!4802 = !DILocation(line: 658, column: 10, scope: !4803)
!4803 = distinct !DILexicalBlock(scope: !4792, file: !300, line: 658, column: 9)
!4804 = !DILocation(line: 658, column: 9, scope: !4792)
!4805 = !DILocation(line: 662, column: 14, scope: !4792)
!4806 = !DILocation(line: 663, column: 5, scope: !4792)
!4807 = !DILocation(line: 665, column: 5, scope: !4792)
!4808 = !DILocation(line: 666, column: 1, scope: !4792)
!4809 = distinct !DISubprogram(name: "hal_uart_disable_flowcontrol", scope: !300, file: !300, line: 668, type: !4308, scopeLine: 669, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !299, retainedNodes: !4810)
!4810 = !{!4811, !4812}
!4811 = !DILocalVariable(name: "uart_port", arg: 1, scope: !4809, file: !300, line: 668, type: !360)
!4812 = !DILocalVariable(name: "int_no", scope: !4809, file: !300, line: 670, type: !2865)
!4813 = !DILocation(line: 0, scope: !4809)
!4814 = !DILocation(line: 672, column: 10, scope: !4815)
!4815 = distinct !DILexicalBlock(scope: !4809, file: !300, line: 672, column: 9)
!4816 = !DILocation(line: 672, column: 9, scope: !4809)
!4817 = !DILocation(line: 676, column: 14, scope: !4809)
!4818 = !DILocation(line: 677, column: 5, scope: !4809)
!4819 = !DILocation(line: 679, column: 5, scope: !4809)
!4820 = !DILocation(line: 680, column: 1, scope: !4809)
!4821 = distinct !DISubprogram(name: "hal_uart_set_dma_timeout", scope: !300, file: !300, line: 683, type: !4822, scopeLine: 684, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !299, retainedNodes: !4824)
!4822 = !DISubroutineType(types: !4823)
!4823 = !{!4166, !360, !92}
!4824 = !{!4825, !4826}
!4825 = !DILocalVariable(name: "uart_port", arg: 1, scope: !4821, file: !300, line: 683, type: !360)
!4826 = !DILocalVariable(name: "timeout", arg: 2, scope: !4821, file: !300, line: 683, type: !92)
!4827 = !DILocation(line: 0, scope: !4821)
!4828 = !DILocation(line: 685, column: 10, scope: !4829)
!4829 = distinct !DILexicalBlock(scope: !4821, file: !300, line: 685, column: 9)
!4830 = !DILocation(line: 685, column: 9, scope: !4821)
!4831 = !DILocation(line: 689, column: 19, scope: !4832)
!4832 = distinct !DILexicalBlock(scope: !4821, file: !300, line: 689, column: 9)
!4833 = !DILocation(line: 0, scope: !4832)
!4834 = !DILocation(line: 696, column: 1, scope: !4821)
!4835 = distinct !DISubprogram(name: "hal_wdt_init", scope: !410, file: !410, line: 55, type: !4836, scopeLine: 56, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !409, retainedNodes: !4845)
!4836 = !DISubroutineType(types: !4837)
!4837 = !{!4838, !4839}
!4838 = !DIDerivedType(tag: DW_TAG_typedef, name: "hal_wdt_status_t", file: !413, line: 198, baseType: !412)
!4839 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4840, size: 32)
!4840 = !DIDerivedType(tag: DW_TAG_typedef, name: "hal_wdt_config_t", file: !413, line: 228, baseType: !4841)
!4841 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !413, line: 225, size: 64, elements: !4842)
!4842 = !{!4843, !4844}
!4843 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !4841, file: !413, line: 226, baseType: !438, size: 32)
!4844 = !DIDerivedType(tag: DW_TAG_member, name: "seconds", scope: !4841, file: !413, line: 227, baseType: !92, size: 32, offset: 32)
!4845 = !{!4846}
!4846 = !DILocalVariable(name: "wdt_config", arg: 1, scope: !4835, file: !410, line: 55, type: !4839)
!4847 = !DILocation(line: 0, scope: !4835)
!4848 = !DILocation(line: 57, column: 10, scope: !4849)
!4849 = distinct !DILexicalBlock(scope: !4835, file: !410, line: 57, column: 9)
!4850 = !DILocation(line: 57, column: 9, scope: !4835)
!4851 = !DILocation(line: 61, column: 21, scope: !4852)
!4852 = distinct !DILexicalBlock(scope: !4835, file: !410, line: 61, column: 9)
!4853 = !DILocation(line: 61, column: 48, scope: !4852)
!4854 = !DILocation(line: 66, column: 16, scope: !4835)
!4855 = !DILocation(line: 69, column: 18, scope: !4835)
!4856 = !DILocation(line: 69, column: 5, scope: !4835)
!4857 = !DILocation(line: 70, column: 37, scope: !4835)
!4858 = !DILocation(line: 70, column: 46, scope: !4835)
!4859 = !DILocation(line: 70, column: 54, scope: !4835)
!4860 = !DILocation(line: 70, column: 22, scope: !4835)
!4861 = !DILocation(line: 70, column: 5, scope: !4835)
!4862 = !DILocation(line: 72, column: 5, scope: !4835)
!4863 = !DILocation(line: 73, column: 1, scope: !4835)
!4864 = distinct !DISubprogram(name: "hal_wdt_deinit", scope: !410, file: !410, line: 75, type: !4865, scopeLine: 76, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !409, retainedNodes: !1231)
!4865 = !DISubroutineType(types: !4866)
!4866 = !{!4838}
!4867 = !DILocation(line: 78, column: 5, scope: !4864)
!4868 = !DILocation(line: 79, column: 18, scope: !4864)
!4869 = !DILocation(line: 80, column: 5, scope: !4864)
!4870 = distinct !DISubprogram(name: "hal_wdt_enable", scope: !410, file: !410, line: 84, type: !4871, scopeLine: 85, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !409, retainedNodes: !4873)
!4871 = !DISubroutineType(types: !4872)
!4872 = !{!4838, !92}
!4873 = !{!4874}
!4874 = !DILocalVariable(name: "magic", arg: 1, scope: !4870, file: !410, line: 84, type: !92)
!4875 = !DILocation(line: 0, scope: !4870)
!4876 = !DILocation(line: 86, column: 15, scope: !4877)
!4877 = distinct !DILexicalBlock(scope: !4870, file: !410, line: 86, column: 9)
!4878 = !DILocation(line: 86, column: 9, scope: !4870)
!4879 = !DILocation(line: 90, column: 18, scope: !4870)
!4880 = !DILocation(line: 93, column: 5, scope: !4870)
!4881 = !DILocation(line: 95, column: 5, scope: !4870)
!4882 = !DILocation(line: 96, column: 1, scope: !4870)
!4883 = distinct !DISubprogram(name: "hal_wdt_disable", scope: !410, file: !410, line: 99, type: !4871, scopeLine: 100, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !409, retainedNodes: !4884)
!4884 = !{!4885}
!4885 = !DILocalVariable(name: "magic", arg: 1, scope: !4883, file: !410, line: 99, type: !92)
!4886 = !DILocation(line: 0, scope: !4883)
!4887 = !DILocation(line: 101, column: 15, scope: !4888)
!4888 = distinct !DILexicalBlock(scope: !4883, file: !410, line: 101, column: 9)
!4889 = !DILocation(line: 101, column: 9, scope: !4883)
!4890 = !DILocation(line: 105, column: 18, scope: !4883)
!4891 = !DILocation(line: 108, column: 5, scope: !4883)
!4892 = !DILocation(line: 110, column: 5, scope: !4883)
!4893 = !DILocation(line: 111, column: 1, scope: !4883)
!4894 = distinct !DISubprogram(name: "hal_wdt_feed", scope: !410, file: !410, line: 114, type: !4871, scopeLine: 115, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !409, retainedNodes: !4895)
!4895 = !{!4896}
!4896 = !DILocalVariable(name: "magic", arg: 1, scope: !4894, file: !410, line: 114, type: !92)
!4897 = !DILocation(line: 0, scope: !4894)
!4898 = !DILocation(line: 116, column: 15, scope: !4899)
!4899 = distinct !DILexicalBlock(scope: !4894, file: !410, line: 116, column: 9)
!4900 = !DILocation(line: 116, column: 9, scope: !4894)
!4901 = !DILocation(line: 121, column: 5, scope: !4894)
!4902 = !DILocation(line: 123, column: 5, scope: !4894)
!4903 = !DILocation(line: 125, column: 5, scope: !4894)
!4904 = !DILocation(line: 126, column: 1, scope: !4894)
!4905 = distinct !DISubprogram(name: "hal_wdt_register_callback", scope: !410, file: !410, line: 129, type: !4906, scopeLine: 130, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !409, retainedNodes: !4909)
!4906 = !DISubroutineType(types: !4907)
!4907 = !{!431, !4908}
!4908 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !431)
!4909 = !{!4910, !4911}
!4910 = !DILocalVariable(name: "wdt_callback", arg: 1, scope: !4905, file: !410, line: 129, type: !4908)
!4911 = !DILocalVariable(name: "old_callback", scope: !4905, file: !410, line: 131, type: !431)
!4912 = !DILocation(line: 0, scope: !4905)
!4913 = !DILocation(line: 133, column: 26, scope: !4905)
!4914 = !DILocation(line: 134, column: 24, scope: !4905)
!4915 = !DILocation(line: 137, column: 5, scope: !4905)
!4916 = !DILocation(line: 138, column: 5, scope: !4905)
!4917 = !DILocation(line: 139, column: 5, scope: !4905)
!4918 = !DILocation(line: 141, column: 5, scope: !4905)
!4919 = distinct !DISubprogram(name: "hal_wdt_isr", scope: !410, file: !410, line: 46, type: !238, scopeLine: 47, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !409, retainedNodes: !4920)
!4920 = !{!4921}
!4921 = !DILocalVariable(name: "irq_number", arg: 1, scope: !4919, file: !410, line: 46, type: !152)
!4922 = !DILocation(line: 0, scope: !4919)
!4923 = !DILocation(line: 48, column: 9, scope: !4924)
!4924 = distinct !DILexicalBlock(scope: !4919, file: !410, line: 48, column: 9)
!4925 = !DILocation(line: 48, column: 9, scope: !4919)
!4926 = !DILocation(line: 49, column: 9, scope: !4927)
!4927 = distinct !DILexicalBlock(scope: !4924, file: !410, line: 48, column: 29)
!4928 = !DILocation(line: 50, column: 5, scope: !4927)
!4929 = !DILocation(line: 52, column: 1, scope: !4919)
!4930 = distinct !DISubprogram(name: "hal_wdt_software_reset", scope: !410, file: !410, line: 144, type: !4865, scopeLine: 145, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !409, retainedNodes: !1231)
!4931 = !DILocation(line: 146, column: 5, scope: !4930)
!4932 = !DILocation(line: 147, column: 5, scope: !4930)
!4933 = distinct !DISubprogram(name: "hal_wdt_get_enable_status", scope: !410, file: !410, line: 151, type: !4934, scopeLine: 152, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !409, retainedNodes: !1231)
!4934 = !DISubroutineType(types: !4935)
!4935 = !{!296}
!4936 = !DILocation(line: 153, column: 12, scope: !4933)
!4937 = !DILocation(line: 153, column: 5, scope: !4933)
!4938 = distinct !DISubprogram(name: "hal_wdt_get_mode", scope: !410, file: !410, line: 157, type: !4939, scopeLine: 158, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !409, retainedNodes: !1231)
!4939 = !DISubroutineType(types: !4940)
!4940 = !{!438}
!4941 = !DILocation(line: 159, column: 12, scope: !4938)
!4942 = !DILocation(line: 159, column: 5, scope: !4938)
!4943 = distinct !DISubprogram(name: "hal_wdt_get_reset_status", scope: !410, file: !410, line: 162, type: !4944, scopeLine: 163, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !409, retainedNodes: !4946)
!4944 = !DISubroutineType(types: !4945)
!4945 = !{!435}
!4946 = !{!4947}
!4947 = !DILocalVariable(name: "return_status", scope: !4943, file: !410, line: 164, type: !92)
!4948 = !DILocation(line: 165, column: 21, scope: !4943)
!4949 = !DILocation(line: 0, scope: !4943)
!4950 = !DILocation(line: 166, column: 29, scope: !4951)
!4951 = distinct !DILexicalBlock(scope: !4943, file: !410, line: 166, column: 9)
!4952 = !DILocation(line: 166, column: 11, scope: !4951)
!4953 = !DILocation(line: 166, column: 9, scope: !4943)
!4954 = !DILocation(line: 172, column: 1, scope: !4943)
!4955 = distinct !DISubprogram(name: "__io_putchar", scope: !1038, file: !1038, line: 54, type: !4956, scopeLine: 58, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !1037, retainedNodes: !4958)
!4956 = !DISubroutineType(types: !4957)
!4957 = !{!13, !13}
!4958 = !{!4959}
!4959 = !DILocalVariable(name: "ch", arg: 1, scope: !4955, file: !1038, line: 54, type: !13)
!4960 = !DILocation(line: 0, scope: !4955)
!4961 = !DILocation(line: 61, column: 35, scope: !4955)
!4962 = !DILocation(line: 61, column: 5, scope: !4955)
!4963 = !DILocation(line: 62, column: 5, scope: !4955)
!4964 = distinct !DISubprogram(name: "main", scope: !1038, file: !1038, line: 141, type: !2841, scopeLine: 142, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !1037, retainedNodes: !1231)
!4965 = !DILocation(line: 144, column: 5, scope: !4964)
!4966 = !DILocation(line: 147, column: 5, scope: !4964)
!4967 = !DILocation(line: 319, column: 3, scope: !4968, inlinedAt: !4969)
!4968 = distinct !DISubprogram(name: "__enable_irq", scope: !2287, file: !2287, line: 317, type: !75, scopeLine: 318, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1037, retainedNodes: !1231)
!4969 = distinct !DILocation(line: 150, column: 5, scope: !4964)
!4970 = !{i64 508457}
!4971 = !DILocation(line: 496, column: 3, scope: !4972, inlinedAt: !4973)
!4972 = distinct !DISubprogram(name: "__enable_fault_irq", scope: !2287, file: !2287, line: 494, type: !75, scopeLine: 495, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1037, retainedNodes: !1231)
!4973 = distinct !DILocation(line: 151, column: 5, scope: !4964)
!4974 = !{i64 512732}
!4975 = !DILocation(line: 154, column: 5, scope: !4964)
!4976 = !DILocation(line: 157, column: 5, scope: !4964)
!4977 = !DILocation(line: 158, column: 5, scope: !4964)
!4978 = !DILocation(line: 160, column: 5, scope: !4964)
!4979 = !DILocation(line: 162, column: 5, scope: !4964)
!4980 = !DILocation(line: 162, column: 5, scope: !4981)
!4981 = distinct !DILexicalBlock(scope: !4982, file: !1038, line: 162, column: 5)
!4982 = distinct !DILexicalBlock(scope: !4964, file: !1038, line: 162, column: 5)
!4983 = distinct !{!4983, !4984, !4985}
!4984 = !DILocation(line: 162, column: 5, scope: !4982)
!4985 = !DILocation(line: 162, column: 13, scope: !4982)
!4986 = distinct !DISubprogram(name: "SystemClock_Config", scope: !1038, file: !1038, line: 91, type: !75, scopeLine: 92, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1037, retainedNodes: !1231)
!4987 = !DILocation(line: 93, column: 5, scope: !4986)
!4988 = !DILocation(line: 94, column: 1, scope: !4986)
!4989 = distinct !DISubprogram(name: "prvSetupHardware", scope: !1038, file: !1038, line: 100, type: !75, scopeLine: 101, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1037, retainedNodes: !1231)
!4990 = !DILocation(line: 104, column: 5, scope: !4989)
!4991 = !DILocation(line: 106, column: 1, scope: !4989)
!4992 = distinct !DISubprogram(name: "wdt_feed_watchdog_example", scope: !1038, file: !1038, line: 113, type: !75, scopeLine: 114, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1037, retainedNodes: !4993)
!4993 = !{!4994, !5000}
!4994 = !DILocalVariable(name: "wdt_init", scope: !4992, file: !1038, line: 115, type: !4995)
!4995 = !DIDerivedType(tag: DW_TAG_typedef, name: "hal_wdt_config_t", file: !413, line: 228, baseType: !4996)
!4996 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !413, line: 225, size: 64, elements: !4997)
!4997 = !{!4998, !4999}
!4998 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !4996, file: !413, line: 226, baseType: !438, size: 32)
!4999 = !DIDerivedType(tag: DW_TAG_member, name: "seconds", scope: !4996, file: !413, line: 227, baseType: !92, size: 32, offset: 32)
!5000 = !DILocalVariable(name: "my_ret", scope: !4992, file: !1038, line: 118, type: !4838)
!5001 = !DILocation(line: 115, column: 5, scope: !4992)
!5002 = !DILocation(line: 115, column: 22, scope: !4992)
!5003 = !DILocation(line: 116, column: 14, scope: !4992)
!5004 = !DILocation(line: 116, column: 19, scope: !4992)
!5005 = !DILocation(line: 117, column: 14, scope: !4992)
!5006 = !DILocation(line: 117, column: 22, scope: !4992)
!5007 = !DILocation(line: 120, column: 5, scope: !4992)
!5008 = !DILocation(line: 122, column: 14, scope: !4992)
!5009 = !DILocation(line: 0, scope: !4992)
!5010 = !DILocation(line: 123, column: 27, scope: !5011)
!5011 = distinct !DILexicalBlock(scope: !4992, file: !1038, line: 123, column: 9)
!5012 = !DILocation(line: 123, column: 9, scope: !4992)
!5013 = !DILocation(line: 127, column: 14, scope: !4992)
!5014 = !DILocation(line: 128, column: 27, scope: !5015)
!5015 = distinct !DILexicalBlock(scope: !4992, file: !1038, line: 128, column: 9)
!5016 = !DILocation(line: 128, column: 9, scope: !4992)
!5017 = !DILocation(line: 133, column: 5, scope: !4992)
!5018 = !DILocation(line: 135, column: 5, scope: !4992)
!5019 = !DILocation(line: 139, column: 1, scope: !4992)
!5020 = distinct !DISubprogram(name: "plain_log_uart_init", scope: !1038, file: !1038, line: 70, type: !75, scopeLine: 71, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1037, retainedNodes: !5021)
!5021 = !{!5022}
!5022 = !DILocalVariable(name: "uart_config", scope: !5020, file: !1038, line: 72, type: !5023)
!5023 = !DIDerivedType(tag: DW_TAG_typedef, name: "hal_uart_config_t", file: !303, line: 378, baseType: !5024)
!5024 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !303, line: 373, size: 128, elements: !5025)
!5025 = !{!5026, !5027, !5028, !5029}
!5026 = !DIDerivedType(tag: DW_TAG_member, name: "baudrate", scope: !5024, file: !303, line: 374, baseType: !375, size: 32)
!5027 = !DIDerivedType(tag: DW_TAG_member, name: "word_length", scope: !5024, file: !303, line: 375, baseType: !377, size: 32, offset: 32)
!5028 = !DIDerivedType(tag: DW_TAG_member, name: "stop_bit", scope: !5024, file: !303, line: 376, baseType: !379, size: 32, offset: 64)
!5029 = !DIDerivedType(tag: DW_TAG_member, name: "parity", scope: !5024, file: !303, line: 377, baseType: !381, size: 32, offset: 96)
!5030 = !DILocation(line: 72, column: 5, scope: !5020)
!5031 = !DILocation(line: 72, column: 23, scope: !5020)
!5032 = !DILocation(line: 74, column: 5, scope: !5020)
!5033 = !DILocation(line: 75, column: 5, scope: !5020)
!5034 = !DILocation(line: 76, column: 5, scope: !5020)
!5035 = !DILocation(line: 77, column: 5, scope: !5020)
!5036 = !DILocation(line: 80, column: 17, scope: !5020)
!5037 = !DILocation(line: 80, column: 26, scope: !5020)
!5038 = !DILocation(line: 81, column: 17, scope: !5020)
!5039 = !DILocation(line: 81, column: 29, scope: !5020)
!5040 = !DILocation(line: 82, column: 17, scope: !5020)
!5041 = !DILocation(line: 82, column: 26, scope: !5020)
!5042 = !DILocation(line: 83, column: 17, scope: !5020)
!5043 = !DILocation(line: 83, column: 24, scope: !5020)
!5044 = !DILocation(line: 84, column: 5, scope: !5020)
!5045 = !DILocation(line: 85, column: 1, scope: !5020)
!5046 = distinct !DISubprogram(name: "SysTick_Set", scope: !443, file: !443, line: 70, type: !4057, scopeLine: 71, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !442, retainedNodes: !5047)
!5047 = !{!5048, !5049}
!5048 = !DILocalVariable(name: "ticks", arg: 1, scope: !5046, file: !443, line: 70, type: !92)
!5049 = !DILocalVariable(name: "val", scope: !5046, file: !443, line: 72, type: !92)
!5050 = !DILocation(line: 0, scope: !5046)
!5051 = !DILocation(line: 74, column: 16, scope: !5052)
!5052 = distinct !DILexicalBlock(scope: !5046, file: !443, line: 74, column: 9)
!5053 = !DILocation(line: 74, column: 21, scope: !5052)
!5054 = !DILocation(line: 74, column: 9, scope: !5046)
!5055 = !DILocation(line: 78, column: 20, scope: !5046)
!5056 = !DILocation(line: 80, column: 19, scope: !5046)
!5057 = !DILocation(line: 83, column: 20, scope: !5046)
!5058 = !DILocation(line: 84, column: 20, scope: !5046)
!5059 = !DILocation(line: 86, column: 19, scope: !5046)
!5060 = !DILocation(line: 88, column: 5, scope: !5046)
!5061 = !DILocation(line: 89, column: 1, scope: !5046)
!5062 = distinct !DISubprogram(name: "SysInitStatus_Set", scope: !443, file: !443, line: 98, type: !75, scopeLine: 99, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !442, retainedNodes: !1231)
!5063 = !DILocation(line: 100, column: 28, scope: !5062)
!5064 = !DILocation(line: 101, column: 1, scope: !5062)
!5065 = distinct !DISubprogram(name: "SysInitStatus_Query", scope: !443, file: !443, line: 110, type: !2281, scopeLine: 111, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !442, retainedNodes: !1231)
!5066 = !DILocation(line: 112, column: 12, scope: !5065)
!5067 = !DILocation(line: 112, column: 5, scope: !5065)
!5068 = distinct !DISubprogram(name: "SystemCoreClockUpdate", scope: !443, file: !443, line: 122, type: !75, scopeLine: 123, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !442, retainedNodes: !1231)
!5069 = !DILocation(line: 124, column: 23, scope: !5068)
!5070 = !DILocation(line: 124, column: 21, scope: !5068)
!5071 = !DILocation(line: 125, column: 1, scope: !5068)
!5072 = distinct !DISubprogram(name: "SystemInit", scope: !443, file: !443, line: 136, type: !75, scopeLine: 137, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !442, retainedNodes: !1231)
!5073 = !DILocation(line: 140, column: 16, scope: !5072)
!5074 = !DILocation(line: 144, column: 16, scope: !5072)
!5075 = !DILocation(line: 147, column: 16, scope: !5072)
!5076 = !DILocation(line: 150, column: 1, scope: !5072)
!5077 = distinct !DISubprogram(name: "CachePreInit", scope: !443, file: !443, line: 158, type: !75, scopeLine: 159, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !442, retainedNodes: !1231)
!5078 = !DILocation(line: 161, column: 22, scope: !5077)
!5079 = !DILocation(line: 164, column: 21, scope: !5077)
!5080 = !DILocation(line: 167, column: 21, scope: !5077)
!5081 = !DILocation(line: 170, column: 29, scope: !5077)
!5082 = !DILocation(line: 171, column: 33, scope: !5077)
!5083 = !DILocation(line: 173, column: 28, scope: !5077)
!5084 = !DILocation(line: 178, column: 30, scope: !5077)
!5085 = !DILocation(line: 192, column: 1, scope: !5077)
!5086 = distinct !DISubprogram(name: "_close", scope: !513, file: !513, line: 11, type: !4956, scopeLine: 12, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !710, retainedNodes: !5087)
!5087 = !{!5088}
!5088 = !DILocalVariable(name: "file", arg: 1, scope: !5086, file: !513, line: 11, type: !13)
!5089 = !DILocation(line: 0, scope: !5086)
!5090 = !DILocation(line: 13, column: 5, scope: !5086)
!5091 = distinct !DISubprogram(name: "_fstat", scope: !513, file: !513, line: 16, type: !5092, scopeLine: 17, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !710, retainedNodes: !5140)
!5092 = !DISubroutineType(types: !5093)
!5093 = !{!13, !13, !5094}
!5094 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5095, size: 32)
!5095 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "stat", file: !5096, line: 27, size: 704, elements: !5097)
!5096 = !DIFile(filename: "gcc-arm-none-eabi-10.3-2021.10/bin/../lib/gcc/arm-none-eabi/10.3.1/../../../../arm-none-eabi/include/sys/stat.h", directory: "/home/mjshen/RTOSExploration")
!5097 = !{!5098, !5101, !5104, !5107, !5110, !5113, !5116, !5117, !5120, !5130, !5131, !5132, !5135, !5138}
!5098 = !DIDerivedType(tag: DW_TAG_member, name: "st_dev", scope: !5095, file: !5096, line: 29, baseType: !5099, size: 16)
!5099 = !DIDerivedType(tag: DW_TAG_typedef, name: "dev_t", file: !517, line: 161, baseType: !5100)
!5100 = !DIDerivedType(tag: DW_TAG_typedef, name: "__dev_t", file: !559, line: 56, baseType: !534)
!5101 = !DIDerivedType(tag: DW_TAG_member, name: "st_ino", scope: !5095, file: !5096, line: 30, baseType: !5102, size: 16, offset: 16)
!5102 = !DIDerivedType(tag: DW_TAG_typedef, name: "ino_t", file: !517, line: 139, baseType: !5103)
!5103 = !DIDerivedType(tag: DW_TAG_typedef, name: "__ino_t", file: !559, line: 75, baseType: !132)
!5104 = !DIDerivedType(tag: DW_TAG_member, name: "st_mode", scope: !5095, file: !5096, line: 31, baseType: !5105, size: 32, offset: 32)
!5105 = !DIDerivedType(tag: DW_TAG_typedef, name: "mode_t", file: !517, line: 189, baseType: !5106)
!5106 = !DIDerivedType(tag: DW_TAG_typedef, name: "__mode_t", file: !559, line: 90, baseType: !94)
!5107 = !DIDerivedType(tag: DW_TAG_member, name: "st_nlink", scope: !5095, file: !5096, line: 32, baseType: !5108, size: 16, offset: 64)
!5108 = !DIDerivedType(tag: DW_TAG_typedef, name: "nlink_t", file: !517, line: 194, baseType: !5109)
!5109 = !DIDerivedType(tag: DW_TAG_typedef, name: "__nlink_t", file: !559, line: 209, baseType: !132)
!5110 = !DIDerivedType(tag: DW_TAG_member, name: "st_uid", scope: !5095, file: !5096, line: 33, baseType: !5111, size: 16, offset: 80)
!5111 = !DIDerivedType(tag: DW_TAG_typedef, name: "uid_t", file: !517, line: 165, baseType: !5112)
!5112 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uid_t", file: !559, line: 60, baseType: !132)
!5113 = !DIDerivedType(tag: DW_TAG_member, name: "st_gid", scope: !5095, file: !5096, line: 34, baseType: !5114, size: 16, offset: 96)
!5114 = !DIDerivedType(tag: DW_TAG_typedef, name: "gid_t", file: !517, line: 169, baseType: !5115)
!5115 = !DIDerivedType(tag: DW_TAG_typedef, name: "__gid_t", file: !559, line: 63, baseType: !132)
!5116 = !DIDerivedType(tag: DW_TAG_member, name: "st_rdev", scope: !5095, file: !5096, line: 35, baseType: !5099, size: 16, offset: 112)
!5117 = !DIDerivedType(tag: DW_TAG_member, name: "st_size", scope: !5095, file: !5096, line: 36, baseType: !5118, size: 32, offset: 128)
!5118 = !DIDerivedType(tag: DW_TAG_typedef, name: "off_t", file: !517, line: 157, baseType: !5119)
!5119 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off_t", file: !559, line: 102, baseType: !577)
!5120 = !DIDerivedType(tag: DW_TAG_member, name: "st_atim", scope: !5095, file: !5096, line: 42, baseType: !5121, size: 128, offset: 192)
!5121 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timespec", file: !5122, line: 47, size: 128, elements: !5123)
!5122 = !DIFile(filename: "gcc-arm-none-eabi-10.3-2021.10/bin/../lib/gcc/arm-none-eabi/10.3.1/../../../../arm-none-eabi/include/sys/_timespec.h", directory: "/home/mjshen/RTOSExploration")
!5123 = !{!5124, !5129}
!5124 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !5121, file: !5122, line: 48, baseType: !5125, size: 64)
!5125 = !DIDerivedType(tag: DW_TAG_typedef, name: "time_t", file: !5126, line: 42, baseType: !5127)
!5126 = !DIFile(filename: "gcc-arm-none-eabi-10.3-2021.10/bin/../lib/gcc/arm-none-eabi/10.3.1/../../../../arm-none-eabi/include/sys/_timeval.h", directory: "/home/mjshen/RTOSExploration")
!5127 = !DIDerivedType(tag: DW_TAG_typedef, name: "__int_least64_t", file: !95, line: 200, baseType: !5128)
!5128 = !DIBasicType(name: "long long", size: 64, encoding: DW_ATE_signed)
!5129 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !5121, file: !5122, line: 49, baseType: !560, size: 32, offset: 64)
!5130 = !DIDerivedType(tag: DW_TAG_member, name: "st_mtim", scope: !5095, file: !5096, line: 43, baseType: !5121, size: 128, offset: 320)
!5131 = !DIDerivedType(tag: DW_TAG_member, name: "st_ctim", scope: !5095, file: !5096, line: 44, baseType: !5121, size: 128, offset: 448)
!5132 = !DIDerivedType(tag: DW_TAG_member, name: "st_blksize", scope: !5095, file: !5096, line: 45, baseType: !5133, size: 32, offset: 576)
!5133 = !DIDerivedType(tag: DW_TAG_typedef, name: "blksize_t", file: !517, line: 102, baseType: !5134)
!5134 = !DIDerivedType(tag: DW_TAG_typedef, name: "__blksize_t", file: !559, line: 34, baseType: !560)
!5135 = !DIDerivedType(tag: DW_TAG_member, name: "st_blocks", scope: !5095, file: !5096, line: 46, baseType: !5136, size: 32, offset: 608)
!5136 = !DIDerivedType(tag: DW_TAG_typedef, name: "blkcnt_t", file: !517, line: 97, baseType: !5137)
!5137 = !DIDerivedType(tag: DW_TAG_typedef, name: "__blkcnt_t", file: !559, line: 30, baseType: !560)
!5138 = !DIDerivedType(tag: DW_TAG_member, name: "st_spare4", scope: !5095, file: !5096, line: 48, baseType: !5139, size: 64, offset: 640)
!5139 = !DICompositeType(tag: DW_TAG_array_type, baseType: !560, size: 64, elements: !216)
!5140 = !{!5141, !5142}
!5141 = !DILocalVariable(name: "file", arg: 1, scope: !5091, file: !513, line: 16, type: !13)
!5142 = !DILocalVariable(name: "st", arg: 2, scope: !5091, file: !513, line: 16, type: !5094)
!5143 = !DILocation(line: 0, scope: !5091)
!5144 = !DILocation(line: 18, column: 5, scope: !5091)
!5145 = distinct !DISubprogram(name: "_isatty", scope: !513, file: !513, line: 22, type: !4956, scopeLine: 23, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !710, retainedNodes: !5146)
!5146 = !{!5147}
!5147 = !DILocalVariable(name: "file", arg: 1, scope: !5145, file: !513, line: 22, type: !13)
!5148 = !DILocation(line: 0, scope: !5145)
!5149 = !DILocation(line: 24, column: 5, scope: !5145)
!5150 = distinct !DISubprogram(name: "_lseek", scope: !513, file: !513, line: 27, type: !5151, scopeLine: 28, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !710, retainedNodes: !5153)
!5151 = !DISubroutineType(types: !5152)
!5152 = !{!13, !13, !13, !13}
!5153 = !{!5154, !5155, !5156}
!5154 = !DILocalVariable(name: "file", arg: 1, scope: !5150, file: !513, line: 27, type: !13)
!5155 = !DILocalVariable(name: "ptr", arg: 2, scope: !5150, file: !513, line: 27, type: !13)
!5156 = !DILocalVariable(name: "dir", arg: 3, scope: !5150, file: !513, line: 27, type: !13)
!5157 = !DILocation(line: 0, scope: !5150)
!5158 = !DILocation(line: 29, column: 5, scope: !5150)
!5159 = distinct !DISubprogram(name: "_open", scope: !513, file: !513, line: 32, type: !5160, scopeLine: 33, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !710, retainedNodes: !5162)
!5160 = !DISubroutineType(types: !5161)
!5161 = !{!13, !552, !13, !13}
!5162 = !{!5163, !5164, !5165}
!5163 = !DILocalVariable(name: "name", arg: 1, scope: !5159, file: !513, line: 32, type: !552)
!5164 = !DILocalVariable(name: "flags", arg: 2, scope: !5159, file: !513, line: 32, type: !13)
!5165 = !DILocalVariable(name: "mode", arg: 3, scope: !5159, file: !513, line: 32, type: !13)
!5166 = !DILocation(line: 0, scope: !5159)
!5167 = !DILocation(line: 34, column: 5, scope: !5159)
!5168 = distinct !DISubprogram(name: "_read", scope: !513, file: !513, line: 37, type: !5169, scopeLine: 38, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !710, retainedNodes: !5171)
!5169 = !DISubroutineType(types: !5170)
!5170 = !{!13, !13, !518, !13}
!5171 = !{!5172, !5173, !5174}
!5172 = !DILocalVariable(name: "file", arg: 1, scope: !5168, file: !513, line: 37, type: !13)
!5173 = !DILocalVariable(name: "ptr", arg: 2, scope: !5168, file: !513, line: 37, type: !518)
!5174 = !DILocalVariable(name: "len", arg: 3, scope: !5168, file: !513, line: 37, type: !13)
!5175 = !DILocation(line: 0, scope: !5168)
!5176 = !DILocation(line: 39, column: 5, scope: !5168)
!5177 = distinct !DISubprogram(name: "_write", scope: !513, file: !513, line: 52, type: !5169, scopeLine: 53, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !710, retainedNodes: !5178)
!5178 = !{!5179, !5180, !5181, !5182}
!5179 = !DILocalVariable(name: "file", arg: 1, scope: !5177, file: !513, line: 52, type: !13)
!5180 = !DILocalVariable(name: "ptr", arg: 2, scope: !5177, file: !513, line: 52, type: !518)
!5181 = !DILocalVariable(name: "len", arg: 3, scope: !5177, file: !513, line: 52, type: !13)
!5182 = !DILocalVariable(name: "i", scope: !5177, file: !513, line: 54, type: !13)
!5183 = !DILocation(line: 0, scope: !5177)
!5184 = !DILocation(line: 56, column: 19, scope: !5185)
!5185 = distinct !DILexicalBlock(scope: !5186, file: !513, line: 56, column: 5)
!5186 = distinct !DILexicalBlock(scope: !5177, file: !513, line: 56, column: 5)
!5187 = !DILocation(line: 56, column: 5, scope: !5186)
!5188 = !DILocation(line: 57, column: 26, scope: !5189)
!5189 = distinct !DILexicalBlock(scope: !5185, file: !513, line: 56, column: 31)
!5190 = !DILocation(line: 57, column: 22, scope: !5189)
!5191 = !DILocation(line: 57, column: 9, scope: !5189)
!5192 = !DILocation(line: 56, column: 27, scope: !5185)
!5193 = distinct !{!5193, !5187, !5194}
!5194 = !DILocation(line: 58, column: 5, scope: !5186)
!5195 = !DILocation(line: 60, column: 5, scope: !5177)
!5196 = !DILocation(line: 0, scope: !512)
!5197 = !DILocation(line: 70, column: 5, scope: !512)
!5198 = !{i64 1109}
!5199 = !DILocation(line: 72, column: 14, scope: !5200)
!5200 = distinct !DILexicalBlock(scope: !512, file: !513, line: 72, column: 9)
!5201 = !DILocation(line: 72, column: 11, scope: !5200)
!5202 = !DILocation(line: 72, column: 9, scope: !512)
!5203 = !DILocation(line: 78, column: 32, scope: !5204)
!5204 = distinct !DILexicalBlock(scope: !512, file: !513, line: 78, column: 9)
!5205 = !DILocation(line: 78, column: 15, scope: !5204)
!5206 = !DILocation(line: 89, column: 1, scope: !512)
!5207 = !DILocation(line: 78, column: 9, scope: !512)
!5208 = distinct !DISubprogram(name: "_exit", scope: !513, file: !513, line: 91, type: !662, scopeLine: 92, flags: DIFlagPrototyped | DIFlagNoReturn, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !710, retainedNodes: !5209)
!5209 = !{!5210}
!5210 = !DILocalVariable(name: "__status", arg: 1, scope: !5208, file: !513, line: 91, type: !13)
!5211 = !DILocation(line: 0, scope: !5208)
!5212 = !DILocation(line: 93, column: 5, scope: !5208)
!5213 = !DILocation(line: 94, column: 5, scope: !5208)
!5214 = distinct !{!5214, !5213, !5215}
!5215 = !DILocation(line: 96, column: 5, scope: !5208)
!5216 = distinct !DISubprogram(name: "_kill", scope: !513, file: !513, line: 100, type: !5217, scopeLine: 101, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !710, retainedNodes: !5219)
!5217 = !DISubroutineType(types: !5218)
!5218 = !{!13, !13, !13}
!5219 = !{!5220, !5221}
!5220 = !DILocalVariable(name: "pid", arg: 1, scope: !5216, file: !513, line: 100, type: !13)
!5221 = !DILocalVariable(name: "sig", arg: 2, scope: !5216, file: !513, line: 100, type: !13)
!5222 = !DILocation(line: 0, scope: !5216)
!5223 = !DILocation(line: 102, column: 5, scope: !5216)
!5224 = !DILocation(line: 103, column: 5, scope: !5216)
!5225 = distinct !DISubprogram(name: "_getpid", scope: !513, file: !513, line: 107, type: !5226, scopeLine: 108, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !710, retainedNodes: !1231)
!5226 = !DISubroutineType(types: !5227)
!5227 = !{!5228}
!5228 = !DIDerivedType(tag: DW_TAG_typedef, name: "pid_t", file: !517, line: 174, baseType: !5229)
!5229 = !DIDerivedType(tag: DW_TAG_typedef, name: "__pid_t", file: !559, line: 52, baseType: !13)
!5230 = !DILocation(line: 109, column: 5, scope: !5225)
!5231 = !DILocation(line: 110, column: 5, scope: !5225)
