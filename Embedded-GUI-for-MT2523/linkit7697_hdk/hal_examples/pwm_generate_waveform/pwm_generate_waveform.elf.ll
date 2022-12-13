; ModuleID = './build/pwm_generate_waveform.elf.bc'
source_filename = "llvm-link"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "thumbv7em-none-unknown-eabihf"

%union.CACHE_CON_Type = type { %struct.anon }
%struct.anon = type { i32 }
%struct.CACHE_ENTRY_Type = type { %union.CACHE_CON_Type, %union.CACHE_CON_Type }
%struct.nvic_function_t = type { void (i32)*, i32 }
%struct.hal_gpt_context_t = type { i32, %struct.hal_gpt_callback_context, i8 }
%struct.hal_gpt_callback_context = type { void (i8*)*, i8* }
%struct.uart_context_t = type { i8, %struct.hal_uart_config_t, i8, %struct.hal_uart_callback_config_t, i8, %struct.hal_uart_dma_config_t }
%struct.hal_uart_config_t = type { i32, i32, i32, i32 }
%struct.hal_uart_callback_config_t = type { void (i32, i8*)*, i8* }
%struct.hal_uart_dma_config_t = type { i8*, i32, i32, i8*, i32, i32, i32 }
%struct.IOT_PWM_TypeDef = type { i32, i32, i32 }
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
@switch.table.halPWMQuery = private unnamed_addr constant [4 x i32] [i32 20000000, i32 40000000, i32 26000000, i32 52000000], align 4
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
@.str.5 = private unnamed_addr constant [50 x i8] c"../../../../../driver/chip/mt7687/src/hal_cache.c\00", align 1
@__func__.hal_cache_region_config = private unnamed_addr constant [24 x i8] c"hal_cache_region_config\00", align 1
@.str.1.6 = private unnamed_addr constant [2 x i8] c"0\00", align 1
@nvic_function_table = dso_local local_unnamed_addr global [96 x %struct.nvic_function_t] zeroinitializer, align 4, !dbg !223
@__FUNCTION__.isrC_main = private unnamed_addr constant [10 x i8] c"isrC_main\00", align 1
@.str.11 = private unnamed_addr constant [25 x i8] c"ERROR: no IRQ handler! \0A\00", align 1
@g_gpt_context = internal global [5 x %struct.hal_gpt_context_t] zeroinitializer, align 4, !dbg !327
@__FUNCTION__.hal_gpt_init = private unnamed_addr constant [13 x i8] c"hal_gpt_init\00", align 1
@.str.18 = private unnamed_addr constant [18 x i8] c"Invalid port: %d.\00", align 1
@__FUNCTION__.hal_gpt_deinit = private unnamed_addr constant [15 x i8] c"hal_gpt_deinit\00", align 1
@.str.1.19 = private unnamed_addr constant [23 x i8] c"Should call  port: %d.\00", align 1
@__FUNCTION__.hal_gpt_get_free_run_count = private unnamed_addr constant [27 x i8] c"hal_gpt_get_free_run_count\00", align 1
@.str.2 = private unnamed_addr constant [23 x i8] c"Invalid parameter: %d.\00", align 1
@__FUNCTION__.hal_gpt_get_running_status = private unnamed_addr constant [27 x i8] c"hal_gpt_get_running_status\00", align 1
@.str.3 = private unnamed_addr constant [45 x i8] c"Invalid hal_gpt_stop_timer to stop port: %d.\00", align 1
@__FUNCTION__.hal_gpt_register_callback = private unnamed_addr constant [26 x i8] c"hal_gpt_register_callback\00", align 1
@.str.4 = private unnamed_addr constant [51 x i8] c"Invalid port: %d. Only port 0 or 1 works as timer.\00", align 1
@__FUNCTION__.hal_gpt_start_timer_ms = private unnamed_addr constant [23 x i8] c"hal_gpt_start_timer_ms\00", align 1
@__FUNCTION__.hal_gpt_stop_timer = private unnamed_addr constant [19 x i8] c"hal_gpt_stop_timer\00", align 1
@init_time = internal unnamed_addr global i1 false, align 4, !dbg !380
@__FUNCTION__.hal_pwm_init = private unnamed_addr constant [13 x i8] c"hal_pwm_init\00", align 1
@.str.22 = private unnamed_addr constant [40 x i8] c" Second init,which is abnormal behavior\00", align 1
@.str.1.23 = private unnamed_addr constant [15 x i8] c"pwm_init fail.\00", align 1
@.str.2.24 = private unnamed_addr constant [26 x i8] c"invalid source clock: %d.\00", align 1
@g_source_clock = internal unnamed_addr global i32 0, align 4, !dbg !441
@__FUNCTION__.hal_pwm_set_frequency = private unnamed_addr constant [22 x i8] c"hal_pwm_set_frequency\00", align 1
@.str.3.25 = private unnamed_addr constant [20 x i8] c"Invalid channel: %d\00", align 1
@.str.4.26 = private unnamed_addr constant [20 x i8] c"pwm not initilized.\00", align 1
@.str.5.27 = private unnamed_addr constant [24 x i8] c"frequency cannot be %lu\00", align 1
@.str.6 = private unnamed_addr constant [31 x i8] c"hal_pwm_calc_total_count fail.\00", align 1
@.str.7 = private unnamed_addr constant [14 x i8] c"pwm_set fail.\00", align 1
@__FUNCTION__.hal_pwm_set_duty_cycle = private unnamed_addr constant [23 x i8] c"hal_pwm_set_duty_cycle\00", align 1
@.str.8 = private unnamed_addr constant [22 x i8] c"frequency is invalid.\00", align 1
@__FUNCTION__.hal_pwm_start = private unnamed_addr constant [14 x i8] c"hal_pwm_start\00", align 1
@__FUNCTION__.hal_pwm_stop = private unnamed_addr constant [13 x i8] c"hal_pwm_stop\00", align 1
@__FUNCTION__.hal_pwm_get_frequency = private unnamed_addr constant [22 x i8] c"hal_pwm_get_frequency\00", align 1
@.str.9 = private unnamed_addr constant [18 x i8] c"frequency is null\00", align 1
@__FUNCTION__.hal_pwm_get_duty_cycle = private unnamed_addr constant [23 x i8] c"hal_pwm_get_duty_cycle\00", align 1
@__FUNCTION__.hal_pwm_get_running_status = private unnamed_addr constant [27 x i8] c"hal_pwm_get_running_status\00", align 1
@hal_pwm_calc_total_count.source_clock_table = internal unnamed_addr constant [6 x i32] [i32 32700, i32 2000000, i32 20000000, i32 26000000, i32 40000000, i32 52000000], align 4, !dbg !445
@__FUNCTION__.hal_pwm_calc_total_count = private unnamed_addr constant [25 x i8] c"hal_pwm_calc_total_count\00", align 1
@.str.10 = private unnamed_addr constant [64 x i8] c"target frequency %lu cannot be generated with source clock %lu.\00", align 1
@g_uart_context_table = internal global [2 x %struct.uart_context_t] zeroinitializer, align 4, !dbg !461
@hal_uart_map_receive_callback.func_tbl = internal unnamed_addr constant [2 x void ()*] [void ()* @hal_uart_receive_callback0, void ()* @hal_uart_receive_callback1], align 4, !dbg !518
@__const.hal_uart_translate_baudrate.baudrate_tbl = private unnamed_addr constant [13 x i32] [i32 110, i32 300, i32 1200, i32 2400, i32 4800, i32 9600, i32 19200, i32 38400, i32 57600, i32 115200, i32 230400, i32 460800, i32 921600], align 4
@__const.hal_uart_translate_word_length.databit_tbl = private unnamed_addr constant [4 x i16] [i16 0, i16 1, i16 2, i16 3], align 2
@__const.hal_uart_translate_parity.parity_tbl = private unnamed_addr constant [5 x i16] [i16 0, i16 8, i16 24, i16 0, i16 0], align 2
@__const.hal_uart_translate_stopbit.stopbit_tbl = private unnamed_addr constant [3 x i16] [i16 0, i16 4, i16 4], align 2
@.str.28 = private unnamed_addr constant [5 x i8] c"\0D\0A\0D\0A\00", align 1
@.str.1.29 = private unnamed_addr constant [20 x i8] c"welcome to main()\0D\0A\00", align 1
@.str.2.30 = private unnamed_addr constant [29 x i8] c"\0D\0A ---pwm_example begin---\0D\0A\00", align 1
@.str.3.31 = private unnamed_addr constant [35 x i8] c"\0D\0A ---pwm_example finished!!!---\0D\0A\00", align 1
@SystemCoreClock = dso_local local_unnamed_addr global i32 40000000, align 4, !dbg !571
@System_Initialize_Done = internal global i32 0, align 4, !dbg !629
@_sbrk_r.heap_end = internal unnamed_addr global i8* null, align 4, !dbg !631
@end = external dso_local global i8, align 1
@.str.38 = private unnamed_addr constant [7 x i8] c"_exit\0A\00", align 1
@.str.1.39 = private unnamed_addr constant [10 x i8] c"_kill %d\0A\00", align 1
@.str.2.40 = private unnamed_addr constant [9 x i8] c"_getpid\0A\00", align 1
@build_date_time_str = dso_local local_unnamed_addr global [31 x i8] c"2022/12/13 08:07:23 GMT +00:00\00", align 1, !dbg !840
@sw_verno_str = dso_local local_unnamed_addr global [11 x i8] c"SDK_V4.6.1\00", align 1, !dbg !845
@hw_verno_str = dso_local local_unnamed_addr global [15 x i8] c"linkit7697_hdk\00", align 1, !dbg !851

; Function Attrs: noinline nounwind optsize
define dso_local void @GPT_ResetTimer(i32 noundef %0, i32 noundef %1, i1 noundef zeroext %2) local_unnamed_addr #0 !dbg !1160 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !1164, metadata !DIExpression()), !dbg !1167
  call void @llvm.dbg.value(metadata i32 %1, metadata !1165, metadata !DIExpression()), !dbg !1167
  call void @llvm.dbg.value(metadata i1 %2, metadata !1166, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1167
  %4 = icmp ugt i32 %0, 1, !dbg !1168
  br i1 %4, label %5, label %8, !dbg !1170

5:                                                ; preds = %3
  %6 = tail call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i32 0, i32 0), i8* noundef getelementptr inbounds ([51 x i8], [51 x i8]* @.str.1, i32 0, i32 0), i32 noundef 75) #13, !dbg !1171
  br label %7, !dbg !1171

7:                                                ; preds = %5, %7
  br label %7, !dbg !1171, !llvm.loop !1173

8:                                                ; preds = %3
  switch i32 %0, label %21 [
    i32 0, label %9
    i32 1, label %15
  ], !dbg !1174

9:                                                ; preds = %8
  store volatile i32 %1, i32* inttoptr (i32 -2096824300 to i32*), align 4, !dbg !1175
  %10 = load volatile i32, i32* inttoptr (i32 -2096824304 to i32*), align 16, !dbg !1178
  br i1 %2, label %11, label %13, !dbg !1180

11:                                               ; preds = %9
  %12 = or i32 %10, 2, !dbg !1181
  store volatile i32 %12, i32* inttoptr (i32 -2096824304 to i32*), align 16, !dbg !1181
  br label %21, !dbg !1183

13:                                               ; preds = %9
  %14 = and i32 %10, -3, !dbg !1184
  store volatile i32 %14, i32* inttoptr (i32 -2096824304 to i32*), align 16, !dbg !1184
  br label %21

15:                                               ; preds = %8
  store volatile i32 %1, i32* inttoptr (i32 -2096824284 to i32*), align 4, !dbg !1186
  %16 = load volatile i32, i32* inttoptr (i32 -2096824288 to i32*), align 32, !dbg !1189
  br i1 %2, label %17, label %19, !dbg !1191

17:                                               ; preds = %15
  %18 = or i32 %16, 2, !dbg !1192
  store volatile i32 %18, i32* inttoptr (i32 -2096824288 to i32*), align 32, !dbg !1192
  br label %21, !dbg !1194

19:                                               ; preds = %15
  %20 = and i32 %16, -3, !dbg !1195
  store volatile i32 %20, i32* inttoptr (i32 -2096824288 to i32*), align 32, !dbg !1195
  br label %21

21:                                               ; preds = %8, %19, %17, %11, %13
  ret void, !dbg !1197
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.value(metadata, metadata, metadata) #1

; Function Attrs: optsize
declare dso_local i32 @printf(i8* noundef, ...) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize
define dso_local void @GPT_Start(i32 noundef %0) local_unnamed_addr #0 !dbg !1198 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !1202, metadata !DIExpression()), !dbg !1203
  switch i32 %0, label %2 [
    i32 0, label %5
    i32 1, label %9
    i32 4, label %13
  ], !dbg !1204

2:                                                ; preds = %1
  %3 = tail call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i32 0, i32 0), i8* noundef getelementptr inbounds ([51 x i8], [51 x i8]* @.str.1, i32 0, i32 0), i32 noundef 96) #13, !dbg !1205
  br label %4, !dbg !1205

4:                                                ; preds = %2, %4
  br label %4, !dbg !1205, !llvm.loop !1208

5:                                                ; preds = %1
  %6 = load volatile i32, i32* inttoptr (i32 -2096824304 to i32*), align 16, !dbg !1209
  %7 = or i32 %6, 1, !dbg !1209
  store volatile i32 %7, i32* inttoptr (i32 -2096824304 to i32*), align 16, !dbg !1209
  %8 = tail call i32 @hal_nvic_enable_irq(i32 noundef 24) #13, !dbg !1212
  br label %16, !dbg !1213

9:                                                ; preds = %1
  %10 = load volatile i32, i32* inttoptr (i32 -2096824288 to i32*), align 32, !dbg !1214
  %11 = or i32 %10, 1, !dbg !1214
  store volatile i32 %11, i32* inttoptr (i32 -2096824288 to i32*), align 32, !dbg !1214
  %12 = tail call i32 @hal_nvic_enable_irq(i32 noundef 24) #13, !dbg !1217
  br label %16, !dbg !1218

13:                                               ; preds = %1
  %14 = load volatile i32, i32* inttoptr (i32 -2096824224 to i32*), align 32, !dbg !1219
  %15 = or i32 %14, 1, !dbg !1219
  store volatile i32 %15, i32* inttoptr (i32 -2096824224 to i32*), align 32, !dbg !1219
  br label %16, !dbg !1222

16:                                               ; preds = %9, %13, %5
  ret void, !dbg !1223
}

; Function Attrs: nofree noinline norecurse nounwind optsize
define dso_local void @GPT_Stop(i32 noundef %0) local_unnamed_addr #3 !dbg !1224 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !1226, metadata !DIExpression()), !dbg !1227
  switch i32 %0, label %18 [
    i32 0, label %2
    i32 1, label %7
    i32 2, label %12
    i32 4, label %15
  ], !dbg !1228

2:                                                ; preds = %1
  %3 = load volatile i32, i32* inttoptr (i32 -2096824316 to i32*), align 4, !dbg !1229
  %4 = and i32 %3, -2, !dbg !1229
  store volatile i32 %4, i32* inttoptr (i32 -2096824316 to i32*), align 4, !dbg !1229
  %5 = load volatile i32, i32* inttoptr (i32 -2096824304 to i32*), align 16, !dbg !1232
  %6 = and i32 %5, -2, !dbg !1232
  store volatile i32 %6, i32* inttoptr (i32 -2096824304 to i32*), align 16, !dbg !1232
  store volatile i32 1, i32* inttoptr (i32 -2096824320 to i32*), align 65536, !dbg !1233
  br label %18, !dbg !1234

7:                                                ; preds = %1
  %8 = load volatile i32, i32* inttoptr (i32 -2096824316 to i32*), align 4, !dbg !1235
  %9 = and i32 %8, -3, !dbg !1235
  store volatile i32 %9, i32* inttoptr (i32 -2096824316 to i32*), align 4, !dbg !1235
  %10 = load volatile i32, i32* inttoptr (i32 -2096824288 to i32*), align 32, !dbg !1238
  %11 = and i32 %10, -2, !dbg !1238
  store volatile i32 %11, i32* inttoptr (i32 -2096824288 to i32*), align 32, !dbg !1238
  store volatile i32 2, i32* inttoptr (i32 -2096824320 to i32*), align 65536, !dbg !1239
  br label %18, !dbg !1240

12:                                               ; preds = %1
  %13 = load volatile i32, i32* inttoptr (i32 -2096824272 to i32*), align 16, !dbg !1241
  %14 = and i32 %13, -2, !dbg !1241
  store volatile i32 %14, i32* inttoptr (i32 -2096824272 to i32*), align 16, !dbg !1241
  br label %18, !dbg !1244

15:                                               ; preds = %1
  %16 = load volatile i32, i32* inttoptr (i32 -2096824224 to i32*), align 32, !dbg !1245
  %17 = and i32 %16, -2, !dbg !1245
  store volatile i32 %17, i32* inttoptr (i32 -2096824224 to i32*), align 32, !dbg !1245
  br label %18, !dbg !1248

18:                                               ; preds = %1, %7, %15, %12, %2
  ret void, !dbg !1249
}

; Function Attrs: noinline nounwind optsize
define dso_local void @GPT_INT_Handler(i32 %0) #0 !dbg !1250 {
  call void @llvm.dbg.value(metadata i32 undef, metadata !1252, metadata !DIExpression()), !dbg !1254
  call void @llvm.dbg.value(metadata i32 undef, metadata !1252, metadata !DIExpression()), !dbg !1254
  %2 = load volatile i32, i32* inttoptr (i32 -2096824320 to i32*), align 65536, !dbg !1255
  %3 = and i32 %2, 65535, !dbg !1256
  call void @llvm.dbg.value(metadata i32 %2, metadata !1253, metadata !DIExpression()), !dbg !1254
  store volatile i32 %3, i32* inttoptr (i32 -2096824320 to i32*), align 65536, !dbg !1257
  %4 = and i32 %2, 1, !dbg !1258
  %5 = icmp eq i32 %4, 0, !dbg !1258
  br i1 %5, label %6, label %9, !dbg !1260

6:                                                ; preds = %1
  %7 = and i32 %2, 2, !dbg !1261
  %8 = icmp eq i32 %7, 0, !dbg !1261
  br i1 %8, label %13, label %9, !dbg !1263

9:                                                ; preds = %6, %1
  %10 = phi i32 [ 0, %1 ], [ 1, %6 ]
  %11 = phi void ()** [ @GPTTimer.0, %1 ], [ @GPTTimer.1, %6 ]
  tail call void @clear_TMR_INT_status_bit(i32 noundef %10) #13, !dbg !1264
  %12 = load void ()*, void ()** %11, align 4, !dbg !1264
  tail call void %12() #13, !dbg !1264
  br label %13, !dbg !1265

13:                                               ; preds = %9, %6
  ret void, !dbg !1265
}

; Function Attrs: noinline nounwind optsize
define dso_local void @GPT_init(i32 noundef %0, i32 noundef %1, void ()* noundef %2) local_unnamed_addr #0 !dbg !1266 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !1270, metadata !DIExpression()), !dbg !1273
  call void @llvm.dbg.value(metadata i32 %1, metadata !1271, metadata !DIExpression()), !dbg !1273
  call void @llvm.dbg.value(metadata void ()* %2, metadata !1272, metadata !DIExpression()), !dbg !1273
  switch i32 %0, label %4 [
    i32 4, label %7
    i32 2, label %7
    i32 1, label %7
    i32 0, label %7
  ], !dbg !1274

4:                                                ; preds = %3
  %5 = tail call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i32 0, i32 0), i8* noundef getelementptr inbounds ([51 x i8], [51 x i8]* @.str.1, i32 0, i32 0), i32 noundef 149) #13, !dbg !1275
  br label %6, !dbg !1275

6:                                                ; preds = %4, %6
  br label %6, !dbg !1275, !llvm.loop !1278

7:                                                ; preds = %3, %3, %3, %3
  %8 = icmp ult i32 %0, 2, !dbg !1279
  br i1 %8, label %9, label %13, !dbg !1280

9:                                                ; preds = %7
  %10 = tail call i32 @hal_nvic_register_isr_handler(i32 noundef 24, void (i32)* noundef nonnull @GPT_INT_Handler) #13, !dbg !1282
  %11 = tail call i32 @hal_nvic_set_priority(i32 noundef 24, i32 noundef 5) #13, !dbg !1284
  %12 = tail call i32 @hal_nvic_enable_irq(i32 noundef 24) #13, !dbg !1285
  br label %13, !dbg !1286

13:                                               ; preds = %7, %9
  switch i32 %0, label %36 [
    i32 0, label %14
    i32 1, label %20
    i32 2, label %26
    i32 4, label %31
  ], !dbg !1287

14:                                               ; preds = %13
  store void ()* %2, void ()** @GPTTimer.0, align 4, !dbg !1288
  %15 = load volatile i32, i32* inttoptr (i32 -2096824316 to i32*), align 4, !dbg !1291
  %16 = or i32 %15, 1, !dbg !1291
  store volatile i32 %16, i32* inttoptr (i32 -2096824316 to i32*), align 4, !dbg !1291
  %17 = shl i32 %1, 2, !dbg !1292
  %18 = load volatile i32, i32* inttoptr (i32 -2096824304 to i32*), align 16, !dbg !1293
  %19 = or i32 %18, %17, !dbg !1293
  store volatile i32 %19, i32* inttoptr (i32 -2096824304 to i32*), align 16, !dbg !1293
  br label %36, !dbg !1294

20:                                               ; preds = %13
  store void ()* %2, void ()** @GPTTimer.1, align 4, !dbg !1295
  %21 = load volatile i32, i32* inttoptr (i32 -2096824316 to i32*), align 4, !dbg !1298
  %22 = or i32 %21, 2, !dbg !1298
  store volatile i32 %22, i32* inttoptr (i32 -2096824316 to i32*), align 4, !dbg !1298
  %23 = shl i32 %1, 2, !dbg !1299
  %24 = load volatile i32, i32* inttoptr (i32 -2096824288 to i32*), align 32, !dbg !1300
  %25 = or i32 %24, %23, !dbg !1300
  store volatile i32 %25, i32* inttoptr (i32 -2096824288 to i32*), align 32, !dbg !1300
  br label %36, !dbg !1301

26:                                               ; preds = %13
  %27 = shl i32 %1, 1, !dbg !1302
  %28 = or i32 %27, 1, !dbg !1305
  %29 = load volatile i32, i32* inttoptr (i32 -2096824272 to i32*), align 16, !dbg !1306
  %30 = or i32 %29, %28, !dbg !1306
  store volatile i32 %30, i32* inttoptr (i32 -2096824272 to i32*), align 16, !dbg !1306
  br label %36, !dbg !1307

31:                                               ; preds = %13
  %32 = shl i32 %1, 1, !dbg !1308
  %33 = or i32 %32, 1, !dbg !1311
  %34 = load volatile i32, i32* inttoptr (i32 -2096824224 to i32*), align 32, !dbg !1312
  %35 = or i32 %34, %33, !dbg !1312
  store volatile i32 %35, i32* inttoptr (i32 -2096824224 to i32*), align 32, !dbg !1312
  store volatile i32 0, i32* inttoptr (i32 -2096824220 to i32*), align 4, !dbg !1313
  br label %36, !dbg !1314

36:                                               ; preds = %13, %20, %31, %26, %14
  ret void, !dbg !1315
}

; Function Attrs: noinline nounwind optsize
define dso_local i32 @GPT_return_current_count(i32 noundef %0) local_unnamed_addr #0 !dbg !1316 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !1320, metadata !DIExpression()), !dbg !1322
  switch i32 %0, label %2 [
    i32 0, label %8
    i32 1, label %5
    i32 2, label %6
    i32 4, label %7
  ], !dbg !1323

2:                                                ; preds = %1
  %3 = tail call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i32 0, i32 0), i8* noundef getelementptr inbounds ([51 x i8], [51 x i8]* @.str.1, i32 0, i32 0), i32 noundef 177) #13, !dbg !1324
  br label %4, !dbg !1324

4:                                                ; preds = %4, %2
  br label %4, !dbg !1324, !llvm.loop !1327

5:                                                ; preds = %1
  call void @llvm.dbg.value(metadata i32 undef, metadata !1321, metadata !DIExpression()), !dbg !1322
  br label %8, !dbg !1328

6:                                                ; preds = %1
  call void @llvm.dbg.value(metadata i32 undef, metadata !1321, metadata !DIExpression()), !dbg !1322
  br label %8, !dbg !1332

7:                                                ; preds = %1
  call void @llvm.dbg.value(metadata i32 undef, metadata !1321, metadata !DIExpression()), !dbg !1322
  br label %8, !dbg !1335

8:                                                ; preds = %1, %5, %7, %6
  %9 = phi i32* [ inttoptr (i32 -2096824252 to i32*), %5 ], [ inttoptr (i32 -2096824268 to i32*), %6 ], [ inttoptr (i32 -2096824216 to i32*), %7 ], [ inttoptr (i32 -2096824256 to i32*), %1 ]
  %10 = load volatile i32, i32* %9, align 4, !dbg !1338
  call void @llvm.dbg.value(metadata i32 %10, metadata !1321, metadata !DIExpression()), !dbg !1322
  ret i32 %10, !dbg !1339
}

; Function Attrs: noinline nounwind optsize
define dso_local void @CM4_GPT2Init() local_unnamed_addr #0 !dbg !1340 {
  tail call void @GPT_init(i32 noundef 2, i32 noundef 1, void ()* noundef null) #14, !dbg !1342
  ret void, !dbg !1343
}

; Function Attrs: noinline nounwind optsize
define dso_local void @CM4_GPT4Init() local_unnamed_addr #0 !dbg !1344 {
  tail call void @GPT_init(i32 noundef 4, i32 noundef 1, void ()* noundef null) #14, !dbg !1345
  ret void, !dbg !1346
}

; Function Attrs: nofree noinline norecurse nounwind optsize
define dso_local zeroext i8 @halPWMResetAll() local_unnamed_addr #3 !dbg !1347 {
  call void @llvm.dbg.value(metadata i8 0, metadata !1352, metadata !DIExpression()), !dbg !1353
  %1 = load volatile i32, i32* inttoptr (i32 -2097109504 to i32*), align 512, !dbg !1354
  %2 = or i32 %1, 8, !dbg !1354
  store volatile i32 %2, i32* inttoptr (i32 -2097109504 to i32*), align 512, !dbg !1354
  %3 = load volatile i32, i32* inttoptr (i32 -2097109504 to i32*), align 512, !dbg !1355
  %4 = and i32 %3, -9, !dbg !1355
  store volatile i32 %4, i32* inttoptr (i32 -2097109504 to i32*), align 512, !dbg !1355
  ret i8 0, !dbg !1356
}

; Function Attrs: nofree noinline norecurse nounwind optsize
define dso_local zeroext i8 @halPWMClockSelect(i8 noundef zeroext %0) local_unnamed_addr #3 !dbg !1357 {
  call void @llvm.dbg.value(metadata i8 %0, metadata !1361, metadata !DIExpression()), !dbg !1364
  call void @llvm.dbg.value(metadata i8 0, metadata !1362, metadata !DIExpression()), !dbg !1364
  call void @llvm.dbg.value(metadata i32 0, metadata !1363, metadata !DIExpression()), !dbg !1364
  %2 = icmp ugt i8 %0, 2, !dbg !1365
  br i1 %2, label %9, label %3, !dbg !1367

3:                                                ; preds = %1
  %4 = zext i8 %0 to i32, !dbg !1368
  %5 = load volatile i32, i32* inttoptr (i32 -2097109504 to i32*), align 512, !dbg !1369
  call void @llvm.dbg.value(metadata i32 %5, metadata !1363, metadata !DIExpression()), !dbg !1364
  %6 = and i32 %5, -7, !dbg !1370
  call void @llvm.dbg.value(metadata i32 %6, metadata !1363, metadata !DIExpression()), !dbg !1364
  %7 = shl nuw nsw i32 %4, 1, !dbg !1371
  %8 = or i32 %6, %7, !dbg !1372
  call void @llvm.dbg.value(metadata i32 %8, metadata !1363, metadata !DIExpression()), !dbg !1364
  store volatile i32 %8, i32* inttoptr (i32 -2097109504 to i32*), align 512, !dbg !1373
  br label %9, !dbg !1374

9:                                                ; preds = %1, %3
  %10 = phi i8 [ 0, %3 ], [ 1, %1 ], !dbg !1364
  ret i8 %10, !dbg !1375
}

; Function Attrs: nofree noinline norecurse nounwind optsize
define dso_local zeroext i8 @halPWMEnable(i8 noundef zeroext %0, i8 noundef zeroext %1, i8 noundef zeroext %2, i8 noundef zeroext %3) local_unnamed_addr #3 !dbg !1376 {
  call void @llvm.dbg.value(metadata i8 %0, metadata !1380, metadata !DIExpression()), !dbg !1387
  call void @llvm.dbg.value(metadata i8 %1, metadata !1381, metadata !DIExpression()), !dbg !1387
  call void @llvm.dbg.value(metadata i8 %2, metadata !1382, metadata !DIExpression()), !dbg !1387
  call void @llvm.dbg.value(metadata i8 %3, metadata !1383, metadata !DIExpression()), !dbg !1387
  call void @llvm.dbg.value(metadata i8 0, metadata !1384, metadata !DIExpression()), !dbg !1387
  call void @llvm.dbg.value(metadata %struct.IOT_PWM_TypeDef* null, metadata !1385, metadata !DIExpression()), !dbg !1387
  call void @llvm.dbg.value(metadata i32 0, metadata !1386, metadata !DIExpression()), !dbg !1387
  %5 = zext i8 %0 to i32, !dbg !1388
  %6 = shl nuw nsw i32 %5, 4, !dbg !1389
  %7 = getelementptr inbounds i8, i8* inttoptr (i32 -2097109248 to i8*), i32 %6, !dbg !1390
  call void @llvm.dbg.value(metadata i8* %7, metadata !1385, metadata !DIExpression()), !dbg !1387
  %8 = bitcast i8* %7 to i32*, !dbg !1391
  %9 = load volatile i32, i32* %8, align 16, !dbg !1391
  call void @llvm.dbg.value(metadata i32 %9, metadata !1386, metadata !DIExpression()), !dbg !1387
  call void @llvm.dbg.value(metadata i32 %9, metadata !1386, metadata !DIExpression(DW_OP_constu, 16, DW_OP_or, DW_OP_stack_value)), !dbg !1387
  %10 = icmp eq i8 %1, 0, !dbg !1392
  %11 = or i32 %9, 48, !dbg !1394
  %12 = and i32 %9, -61, !dbg !1394
  %13 = or i32 %12, 16, !dbg !1394
  %14 = select i1 %10, i32 %13, i32 %11, !dbg !1394
  call void @llvm.dbg.value(metadata i32 undef, metadata !1386, metadata !DIExpression()), !dbg !1387
  %15 = icmp eq i8 %2, 0, !dbg !1395
  %16 = and i32 %14, -13, !dbg !1397
  %17 = select i1 %15, i32 0, i32 8, !dbg !1397
  call void @llvm.dbg.value(metadata !DIArgList(i32 %14, i32 %17), metadata !1386, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_constu, 18446744073709551603, DW_OP_and, DW_OP_LLVM_arg, 1, DW_OP_or, DW_OP_stack_value)), !dbg !1387
  %18 = icmp eq i8 %3, 0, !dbg !1398
  %19 = select i1 %18, i32 0, i32 4, !dbg !1400
  %20 = or i32 %19, %17, !dbg !1397
  %21 = or i32 %20, %16, !dbg !1400
  call void @llvm.dbg.value(metadata i32 %21, metadata !1386, metadata !DIExpression()), !dbg !1387
  store volatile i32 %21, i32* %8, align 16, !dbg !1401
  ret i8 0, !dbg !1402
}

; Function Attrs: nofree noinline norecurse nounwind optsize
define dso_local zeroext i8 @halPWMDisable(i8 noundef zeroext %0) local_unnamed_addr #3 !dbg !1403 {
  call void @llvm.dbg.value(metadata i8 %0, metadata !1407, metadata !DIExpression()), !dbg !1410
  call void @llvm.dbg.value(metadata i8 0, metadata !1408, metadata !DIExpression()), !dbg !1410
  call void @llvm.dbg.value(metadata %struct.IOT_PWM_TypeDef* null, metadata !1409, metadata !DIExpression()), !dbg !1410
  %2 = zext i8 %0 to i32, !dbg !1411
  %3 = shl nuw nsw i32 %2, 4, !dbg !1412
  %4 = getelementptr inbounds i8, i8* inttoptr (i32 -2097109248 to i8*), i32 %3, !dbg !1413
  call void @llvm.dbg.value(metadata i8* %4, metadata !1409, metadata !DIExpression()), !dbg !1410
  %5 = bitcast i8* %4 to i32*, !dbg !1414
  %6 = load volatile i32, i32* %5, align 16, !dbg !1415
  %7 = and i32 %6, -17, !dbg !1415
  store volatile i32 %7, i32* %5, align 16, !dbg !1415
  ret i8 0, !dbg !1416
}

; Function Attrs: noinline nounwind optsize
define dso_local zeroext i8 @halPWMKick(i8 noundef zeroext %0) local_unnamed_addr #0 !dbg !1417 {
  call void @llvm.dbg.value(metadata i8 %0, metadata !1419, metadata !DIExpression()), !dbg !1422
  call void @llvm.dbg.value(metadata i8 0, metadata !1420, metadata !DIExpression()), !dbg !1422
  call void @llvm.dbg.value(metadata %struct.IOT_PWM_TypeDef* null, metadata !1421, metadata !DIExpression()), !dbg !1422
  %2 = zext i8 %0 to i32, !dbg !1423
  %3 = shl nuw nsw i32 %2, 4, !dbg !1424
  %4 = getelementptr inbounds i8, i8* inttoptr (i32 -2097109248 to i8*), i32 %3, !dbg !1425
  call void @llvm.dbg.value(metadata i8* %4, metadata !1421, metadata !DIExpression()), !dbg !1422
  %5 = bitcast i8* %4 to i32*, !dbg !1426
  %6 = load volatile i32, i32* %5, align 16, !dbg !1427
  %7 = or i32 %6, 1, !dbg !1427
  store volatile i32 %7, i32* %5, align 16, !dbg !1427
  %8 = tail call i32 @hal_gpt_delay_us(i32 noundef 125) #13, !dbg !1428
  ret i8 0, !dbg !1429
}

; Function Attrs: nofree noinline norecurse nounwind optsize
define dso_local zeroext i8 @halPWMConfig(i8 noundef zeroext %0, i8 noundef zeroext %1, i16 noundef zeroext %2, i32 noundef %3) local_unnamed_addr #3 !dbg !1430 {
  call void @llvm.dbg.value(metadata i8 %0, metadata !1436, metadata !DIExpression()), !dbg !1451
  call void @llvm.dbg.value(metadata i8 %1, metadata !1437, metadata !DIExpression()), !dbg !1451
  call void @llvm.dbg.value(metadata i16 %2, metadata !1438, metadata !DIExpression()), !dbg !1451
  call void @llvm.dbg.value(metadata i32 %3, metadata !1439, metadata !DIExpression()), !dbg !1451
  call void @llvm.dbg.value(metadata i8 0, metadata !1440, metadata !DIExpression()), !dbg !1451
  call void @llvm.dbg.value(metadata i8 0, metadata !1441, metadata !DIExpression()), !dbg !1451
  call void @llvm.dbg.value(metadata i32 0, metadata !1442, metadata !DIExpression()), !dbg !1451
  call void @llvm.dbg.value(metadata i32 0, metadata !1443, metadata !DIExpression()), !dbg !1451
  call void @llvm.dbg.value(metadata i16 0, metadata !1444, metadata !DIExpression()), !dbg !1451
  call void @llvm.dbg.value(metadata i16 0, metadata !1445, metadata !DIExpression()), !dbg !1451
  call void @llvm.dbg.value(metadata %struct.IOT_PWM_TypeDef* null, metadata !1446, metadata !DIExpression()), !dbg !1451
  call void @llvm.dbg.value(metadata i32 0, metadata !1447, metadata !DIExpression()), !dbg !1451
  %5 = zext i8 %0 to i32, !dbg !1452
  %6 = shl nuw nsw i32 %5, 4, !dbg !1453
  %7 = getelementptr inbounds i8, i8* inttoptr (i32 -2097109248 to i8*), i32 %6, !dbg !1454
  call void @llvm.dbg.value(metadata i8* %7, metadata !1446, metadata !DIExpression()), !dbg !1451
  %8 = load i8, i8* inttoptr (i32 -2097109504 to i8*), align 512, !dbg !1455
  %9 = lshr i8 %8, 1, !dbg !1456
  %10 = and i8 %9, 3, !dbg !1456
  call void @llvm.dbg.value(metadata i8 %10, metadata !1441, metadata !DIExpression()), !dbg !1451
  %11 = zext i8 %10 to i32, !dbg !1457
  switch i32 %11, label %47 [
    i32 0, label %21
    i32 1, label %12
    i32 2, label %13
  ], !dbg !1458

12:                                               ; preds = %4
  call void @llvm.dbg.value(metadata i32 2000000, metadata !1442, metadata !DIExpression()), !dbg !1451
  br label %21, !dbg !1459

13:                                               ; preds = %4
  call void @llvm.dbg.value(metadata i8 0, metadata !1448, metadata !DIExpression()), !dbg !1460
  %14 = load volatile i32, i32* inttoptr (i32 -2097118784 to i32*), align 64, !dbg !1461
  %15 = lshr i32 %14, 13, !dbg !1462
  %16 = and i32 %15, 7, !dbg !1463
  call void @llvm.dbg.value(metadata i32 %16, metadata !1448, metadata !DIExpression()), !dbg !1460
  %17 = icmp ult i32 %16, 4, !dbg !1464
  br i1 %17, label %18, label %21, !dbg !1464

18:                                               ; preds = %13
  %19 = getelementptr inbounds [4 x i32], [4 x i32]* @switch.table.halPWMQuery, i32 0, i32 %16, !dbg !1464
  %20 = load i32, i32* %19, align 4, !dbg !1464
  br label %21, !dbg !1464

21:                                               ; preds = %13, %18, %4, %12
  %22 = phi i32 [ 2000000, %12 ], [ 32700, %4 ], [ %20, %18 ], [ 0, %13 ], !dbg !1465
  call void @llvm.dbg.value(metadata i32 %22, metadata !1442, metadata !DIExpression()), !dbg !1451
  %23 = udiv i32 %22, %3, !dbg !1466
  call void @llvm.dbg.value(metadata i32 %23, metadata !1443, metadata !DIExpression()), !dbg !1451
  call void @llvm.dbg.value(metadata i16 %2, metadata !1444, metadata !DIExpression()), !dbg !1451
  %24 = trunc i32 %23 to i16, !dbg !1467
  %25 = sub i16 %24, %2, !dbg !1467
  call void @llvm.dbg.value(metadata i16 %25, metadata !1445, metadata !DIExpression()), !dbg !1451
  %26 = icmp eq i16 %25, 1, !dbg !1468
  %27 = zext i1 %26 to i16, !dbg !1470
  %28 = add i16 %27, %2, !dbg !1470
  %29 = select i1 %26, i16 0, i16 %25, !dbg !1470
  call void @llvm.dbg.value(metadata i16 %29, metadata !1445, metadata !DIExpression()), !dbg !1451
  call void @llvm.dbg.value(metadata i16 %28, metadata !1444, metadata !DIExpression()), !dbg !1451
  %30 = icmp eq i8 %1, 0, !dbg !1471
  br i1 %30, label %31, label %39, !dbg !1473

31:                                               ; preds = %21
  %32 = getelementptr inbounds i8, i8* %7, i32 4, !dbg !1474
  %33 = bitcast i8* %32 to i32*, !dbg !1474
  %34 = load volatile i32, i32* %33, align 4, !dbg !1474
  call void @llvm.dbg.value(metadata i32 %34, metadata !1447, metadata !DIExpression()), !dbg !1451
  call void @llvm.dbg.value(metadata i32 %34, metadata !1447, metadata !DIExpression(DW_OP_constu, 65535, DW_OP_and, DW_OP_stack_value)), !dbg !1451
  %35 = zext i16 %29 to i32, !dbg !1476
  %36 = shl nuw i32 %35, 16, !dbg !1477
  call void @llvm.dbg.value(metadata !DIArgList(i32 %34, i32 %36), metadata !1447, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_constu, 65535, DW_OP_and, DW_OP_LLVM_arg, 1, DW_OP_or, DW_OP_stack_value)), !dbg !1451
  call void @llvm.dbg.value(metadata i32 %36, metadata !1447, metadata !DIExpression()), !dbg !1451
  %37 = zext i16 %28 to i32, !dbg !1478
  %38 = or i32 %36, %37, !dbg !1479
  call void @llvm.dbg.value(metadata i32 %38, metadata !1447, metadata !DIExpression()), !dbg !1451
  store volatile i32 %38, i32* %33, align 4, !dbg !1480
  br label %47, !dbg !1481

39:                                               ; preds = %21
  %40 = getelementptr inbounds i8, i8* %7, i32 8, !dbg !1482
  %41 = bitcast i8* %40 to i32*, !dbg !1482
  %42 = load volatile i32, i32* %41, align 8, !dbg !1482
  call void @llvm.dbg.value(metadata i32 %42, metadata !1447, metadata !DIExpression()), !dbg !1451
  call void @llvm.dbg.value(metadata i32 %42, metadata !1447, metadata !DIExpression(DW_OP_constu, 65535, DW_OP_and, DW_OP_stack_value)), !dbg !1451
  %43 = zext i16 %29 to i32, !dbg !1484
  %44 = shl nuw i32 %43, 16, !dbg !1485
  call void @llvm.dbg.value(metadata !DIArgList(i32 %42, i32 %44), metadata !1447, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_constu, 65535, DW_OP_and, DW_OP_LLVM_arg, 1, DW_OP_or, DW_OP_stack_value)), !dbg !1451
  call void @llvm.dbg.value(metadata i32 %44, metadata !1447, metadata !DIExpression()), !dbg !1451
  %45 = zext i16 %28 to i32, !dbg !1486
  %46 = or i32 %44, %45, !dbg !1487
  call void @llvm.dbg.value(metadata i32 %46, metadata !1447, metadata !DIExpression()), !dbg !1451
  store volatile i32 %46, i32* %41, align 8, !dbg !1488
  br label %47

47:                                               ; preds = %31, %39, %4
  %48 = phi i8 [ 1, %4 ], [ 0, %39 ], [ 0, %31 ], !dbg !1451
  ret i8 %48, !dbg !1489
}

; Function Attrs: nofree noinline norecurse nounwind optsize
define dso_local zeroext i8 @halPWMStateConfig(i8 noundef zeroext %0, i16 noundef zeroext %1, i16 noundef zeroext %2, i8 noundef zeroext %3) local_unnamed_addr #3 !dbg !1490 {
  call void @llvm.dbg.value(metadata i8 %0, metadata !1494, metadata !DIExpression()), !dbg !1501
  call void @llvm.dbg.value(metadata i16 %1, metadata !1495, metadata !DIExpression()), !dbg !1501
  call void @llvm.dbg.value(metadata i16 %2, metadata !1496, metadata !DIExpression()), !dbg !1501
  call void @llvm.dbg.value(metadata i8 %3, metadata !1497, metadata !DIExpression()), !dbg !1501
  call void @llvm.dbg.value(metadata i8 0, metadata !1498, metadata !DIExpression()), !dbg !1501
  call void @llvm.dbg.value(metadata %struct.IOT_PWM_TypeDef* null, metadata !1499, metadata !DIExpression()), !dbg !1501
  call void @llvm.dbg.value(metadata i32 0, metadata !1500, metadata !DIExpression()), !dbg !1501
  %5 = zext i16 %1 to i32, !dbg !1502
  %6 = and i32 %5, 61440, !dbg !1504
  %7 = icmp eq i32 %6, 0, !dbg !1504
  br i1 %7, label %8, label %27, !dbg !1505

8:                                                ; preds = %4
  %9 = zext i16 %2 to i32, !dbg !1506
  %10 = and i32 %9, 61440, !dbg !1507
  %11 = icmp eq i32 %10, 0, !dbg !1507
  br i1 %11, label %12, label %27, !dbg !1508

12:                                               ; preds = %8
  %13 = zext i8 %0 to i32, !dbg !1509
  %14 = shl nuw nsw i32 %13, 4, !dbg !1510
  %15 = getelementptr inbounds i8, i8* inttoptr (i32 -2097109248 to i8*), i32 %14, !dbg !1511
  call void @llvm.dbg.value(metadata i8* %15, metadata !1499, metadata !DIExpression()), !dbg !1501
  %16 = bitcast i8* %15 to i32*, !dbg !1512
  %17 = load volatile i32, i32* %16, align 16, !dbg !1512
  call void @llvm.dbg.value(metadata i32 %17, metadata !1500, metadata !DIExpression()), !dbg !1501
  %18 = and i32 %17, 253, !dbg !1513
  call void @llvm.dbg.value(metadata i32 %17, metadata !1500, metadata !DIExpression(DW_OP_constu, 255, DW_OP_and, DW_OP_stack_value)), !dbg !1501
  %19 = shl nuw nsw i32 %5, 8, !dbg !1514
  call void @llvm.dbg.value(metadata !DIArgList(i32 %17, i32 %19), metadata !1500, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_constu, 253, DW_OP_and, DW_OP_LLVM_arg, 1, DW_OP_or, DW_OP_stack_value)), !dbg !1501
  %20 = and i32 %19, 1048320, !dbg !1515
  %21 = or i32 %20, %18, !dbg !1515
  call void @llvm.dbg.value(metadata !DIArgList(i32 %18, i32 %20), metadata !1500, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_or, DW_OP_stack_value)), !dbg !1501
  %22 = shl i32 %9, 20, !dbg !1516
  %23 = or i32 %21, %22, !dbg !1517
  call void @llvm.dbg.value(metadata !DIArgList(i32 %21, i32 %22), metadata !1500, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_or, DW_OP_stack_value)), !dbg !1501
  %24 = icmp eq i8 %3, 0, !dbg !1518
  %25 = select i1 %24, i32 0, i32 2, !dbg !1520
  %26 = or i32 %23, %25, !dbg !1520
  call void @llvm.dbg.value(metadata i32 %26, metadata !1500, metadata !DIExpression()), !dbg !1501
  store volatile i32 %26, i32* %16, align 16, !dbg !1521
  br label %27, !dbg !1522

27:                                               ; preds = %4, %8, %12
  %28 = phi i8 [ 0, %12 ], [ 1, %8 ], [ 1, %4 ], !dbg !1501
  ret i8 %28, !dbg !1523
}

; Function Attrs: mustprogress nofree noinline norecurse nounwind optsize willreturn
define dso_local zeroext i8 @halPWMQuery(i8 noundef zeroext %0, i8 noundef zeroext %1, i16* nocapture noundef writeonly %2, i32* nocapture noundef writeonly %3, i8* nocapture noundef writeonly %4) local_unnamed_addr #4 !dbg !1524 {
  call void @llvm.dbg.value(metadata i8 %0, metadata !1529, metadata !DIExpression()), !dbg !1545
  call void @llvm.dbg.value(metadata i8 %1, metadata !1530, metadata !DIExpression()), !dbg !1545
  call void @llvm.dbg.value(metadata i16* %2, metadata !1531, metadata !DIExpression()), !dbg !1545
  call void @llvm.dbg.value(metadata i32* %3, metadata !1532, metadata !DIExpression()), !dbg !1545
  call void @llvm.dbg.value(metadata i8* %4, metadata !1533, metadata !DIExpression()), !dbg !1545
  call void @llvm.dbg.value(metadata i8 0, metadata !1534, metadata !DIExpression()), !dbg !1545
  call void @llvm.dbg.value(metadata i8 0, metadata !1535, metadata !DIExpression()), !dbg !1545
  call void @llvm.dbg.value(metadata i32 0, metadata !1536, metadata !DIExpression()), !dbg !1545
  call void @llvm.dbg.value(metadata i32 0, metadata !1537, metadata !DIExpression()), !dbg !1545
  call void @llvm.dbg.value(metadata i16 0, metadata !1538, metadata !DIExpression()), !dbg !1545
  call void @llvm.dbg.value(metadata i16 0, metadata !1539, metadata !DIExpression()), !dbg !1545
  call void @llvm.dbg.value(metadata %struct.IOT_PWM_TypeDef* null, metadata !1540, metadata !DIExpression()), !dbg !1545
  call void @llvm.dbg.value(metadata i32 0, metadata !1541, metadata !DIExpression()), !dbg !1545
  %6 = zext i8 %0 to i32, !dbg !1546
  %7 = shl nuw nsw i32 %6, 4, !dbg !1547
  %8 = getelementptr inbounds i8, i8* inttoptr (i32 -2097109248 to i8*), i32 %7, !dbg !1548
  call void @llvm.dbg.value(metadata i8* %8, metadata !1540, metadata !DIExpression()), !dbg !1545
  %9 = bitcast i8* %8 to i32*, !dbg !1549
  %10 = load volatile i32, i32* %9, align 16, !dbg !1549
  call void @llvm.dbg.value(metadata i32 %10, metadata !1541, metadata !DIExpression()), !dbg !1545
  %11 = and i32 %10, 16, !dbg !1550
  %12 = icmp eq i32 %11, 0, !dbg !1550
  br i1 %12, label %18, label %13, !dbg !1552

13:                                               ; preds = %5
  store i8 1, i8* %4, align 1, !dbg !1553
  %14 = load i8, i8* inttoptr (i32 -2097109504 to i8*), align 512, !dbg !1555
  %15 = lshr i8 %14, 1, !dbg !1556
  %16 = and i8 %15, 3, !dbg !1556
  call void @llvm.dbg.value(metadata i8 %16, metadata !1535, metadata !DIExpression()), !dbg !1545
  %17 = zext i8 %16 to i32, !dbg !1557
  switch i32 %17, label %52 [
    i32 0, label %28
    i32 1, label %19
    i32 2, label %20
  ], !dbg !1558

18:                                               ; preds = %5
  store i8 0, i8* %4, align 1, !dbg !1559
  br label %49, !dbg !1561

19:                                               ; preds = %13
  call void @llvm.dbg.value(metadata i32 2000000, metadata !1536, metadata !DIExpression()), !dbg !1545
  br label %28, !dbg !1562

20:                                               ; preds = %13
  call void @llvm.dbg.value(metadata i8 0, metadata !1542, metadata !DIExpression()), !dbg !1563
  %21 = load volatile i32, i32* inttoptr (i32 -2097118784 to i32*), align 64, !dbg !1564
  %22 = lshr i32 %21, 13, !dbg !1565
  %23 = and i32 %22, 7, !dbg !1566
  call void @llvm.dbg.value(metadata i32 %23, metadata !1542, metadata !DIExpression()), !dbg !1563
  %24 = icmp ult i32 %23, 4, !dbg !1567
  br i1 %24, label %25, label %28, !dbg !1567

25:                                               ; preds = %20
  %26 = getelementptr inbounds [4 x i32], [4 x i32]* @switch.table.halPWMQuery, i32 0, i32 %23, !dbg !1567
  %27 = load i32, i32* %26, align 4, !dbg !1567
  br label %28, !dbg !1567

28:                                               ; preds = %20, %25, %13, %19
  %29 = phi i32 [ 2000000, %19 ], [ 32700, %13 ], [ %27, %25 ], [ 0, %20 ], !dbg !1568
  call void @llvm.dbg.value(metadata i32 %29, metadata !1536, metadata !DIExpression()), !dbg !1545
  %30 = icmp eq i8 %1, 0, !dbg !1569
  br i1 %30, label %31, label %37, !dbg !1571

31:                                               ; preds = %28
  %32 = getelementptr inbounds i8, i8* %8, i32 4, !dbg !1572
  %33 = bitcast i8* %32 to i32*, !dbg !1572
  %34 = load volatile i32, i32* %33, align 4, !dbg !1572
  call void @llvm.dbg.value(metadata i32 %34, metadata !1541, metadata !DIExpression()), !dbg !1545
  %35 = and i32 %34, 65535, !dbg !1574
  call void @llvm.dbg.value(metadata i32 %35, metadata !1538, metadata !DIExpression(DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 16, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1545
  %36 = and i32 %34, -65536, !dbg !1575
  call void @llvm.dbg.value(metadata i32 %36, metadata !1539, metadata !DIExpression(DW_OP_constu, 16, DW_OP_shr, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 16, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1545
  br label %41, !dbg !1576

37:                                               ; preds = %28
  %38 = getelementptr inbounds i8, i8* %8, i32 8, !dbg !1577
  %39 = bitcast i8* %38 to i32*, !dbg !1577
  %40 = load volatile i32, i32* %39, align 8, !dbg !1577
  call void @llvm.dbg.value(metadata i32 %40, metadata !1541, metadata !DIExpression()), !dbg !1545
  call void @llvm.dbg.value(metadata i32 %40, metadata !1538, metadata !DIExpression(DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 16, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1545
  call void @llvm.dbg.value(metadata i32 %40, metadata !1539, metadata !DIExpression(DW_OP_constu, 16, DW_OP_shr, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 16, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1545
  br label %41

41:                                               ; preds = %37, %31
  %42 = phi i32 [ %35, %31 ], [ %40, %37 ]
  %43 = phi i32 [ %36, %31 ], [ %40, %37 ]
  %44 = lshr i32 %43, 16, !dbg !1579
  %45 = trunc i32 %42 to i16, !dbg !1579
  call void @llvm.dbg.value(metadata i32 %44, metadata !1539, metadata !DIExpression(DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 16, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1545
  call void @llvm.dbg.value(metadata i16 %45, metadata !1538, metadata !DIExpression()), !dbg !1545
  %46 = and i32 %42, 65535, !dbg !1580
  %47 = add nuw nsw i32 %44, %46, !dbg !1581
  call void @llvm.dbg.value(metadata i32 %47, metadata !1537, metadata !DIExpression()), !dbg !1545
  %48 = udiv i32 %29, %47, !dbg !1582
  br label %49, !dbg !1583

49:                                               ; preds = %18, %41
  %50 = phi i32 [ %48, %41 ], [ 0, %18 ]
  %51 = phi i16 [ %45, %41 ], [ 0, %18 ]
  store i32 %50, i32* %3, align 4, !dbg !1545
  store i16 %51, i16* %2, align 2, !dbg !1545
  br label %52, !dbg !1584

52:                                               ; preds = %49, %13
  %53 = phi i8 [ 1, %13 ], [ 0, %49 ], !dbg !1545
  ret i8 %53, !dbg !1584
}

; Function Attrs: nofree noinline norecurse nounwind optsize
define dso_local i32 @halGPIO_ConfDirection(i32 noundef %0, i8 noundef zeroext %1) local_unnamed_addr #3 !dbg !1585 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !1590, metadata !DIExpression()), !dbg !1594
  call void @llvm.dbg.value(metadata i8 %1, metadata !1591, metadata !DIExpression()), !dbg !1594
  %3 = lshr i32 %0, 5, !dbg !1595
  call void @llvm.dbg.value(metadata i32 %3, metadata !1592, metadata !DIExpression(DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 16, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1594
  %4 = trunc i32 %0 to i16, !dbg !1596
  %5 = and i16 %4, 31, !dbg !1596
  call void @llvm.dbg.value(metadata i16 %4, metadata !1593, metadata !DIExpression(DW_OP_constu, 31, DW_OP_and, DW_OP_stack_value)), !dbg !1594
  %6 = trunc i32 %3 to i16, !dbg !1597
  switch i16 %6, label %97 [
    i16 0, label %7
    i16 1, label %70
  ], !dbg !1597

7:                                                ; preds = %2
  %8 = icmp eq i8 %1, 1, !dbg !1598
  %9 = zext i16 %5 to i32, !dbg !1601
  %10 = icmp ult i16 %5, 27, !dbg !1601
  br i1 %8, label %11, label %46, !dbg !1602

11:                                               ; preds = %7
  br i1 %10, label %12, label %17, !dbg !1603

12:                                               ; preds = %11
  %13 = shl nuw i32 1, %9, !dbg !1605
  %14 = xor i32 %13, -1, !dbg !1608
  %15 = load volatile i32, i32* inttoptr (i32 -2097106688 to i32*), align 256, !dbg !1609
  %16 = and i32 %15, %14, !dbg !1609
  store volatile i32 %16, i32* inttoptr (i32 -2097106688 to i32*), align 256, !dbg !1609
  br label %44, !dbg !1610

17:                                               ; preds = %11
  %18 = trunc i32 %0 to i5, !dbg !1611
  switch i5 %18, label %39 [
    i5 -5, label %19
    i5 -4, label %24
    i5 -3, label %29
    i5 -2, label %34
  ], !dbg !1611

19:                                               ; preds = %17
  %20 = load volatile i32, i32* inttoptr (i32 -2130563000 to i32*), align 8, !dbg !1612
  %21 = and i32 %20, -3, !dbg !1612
  store volatile i32 %21, i32* inttoptr (i32 -2130563000 to i32*), align 8, !dbg !1612
  %22 = load volatile i32, i32* inttoptr (i32 -2130563000 to i32*), align 8, !dbg !1615
  %23 = or i32 %22, 2048, !dbg !1615
  store volatile i32 %23, i32* inttoptr (i32 -2130563000 to i32*), align 8, !dbg !1615
  br label %44, !dbg !1616

24:                                               ; preds = %17
  %25 = load volatile i32, i32* inttoptr (i32 -2130562996 to i32*), align 4, !dbg !1617
  %26 = and i32 %25, -3, !dbg !1617
  store volatile i32 %26, i32* inttoptr (i32 -2130562996 to i32*), align 4, !dbg !1617
  %27 = load volatile i32, i32* inttoptr (i32 -2130562996 to i32*), align 4, !dbg !1620
  %28 = or i32 %27, 2048, !dbg !1620
  store volatile i32 %28, i32* inttoptr (i32 -2130562996 to i32*), align 4, !dbg !1620
  br label %44, !dbg !1621

29:                                               ; preds = %17
  %30 = load volatile i32, i32* inttoptr (i32 -2130562980 to i32*), align 4, !dbg !1622
  %31 = and i32 %30, -3, !dbg !1622
  store volatile i32 %31, i32* inttoptr (i32 -2130562980 to i32*), align 4, !dbg !1622
  %32 = load volatile i32, i32* inttoptr (i32 -2130562980 to i32*), align 4, !dbg !1625
  %33 = or i32 %32, 2048, !dbg !1625
  store volatile i32 %33, i32* inttoptr (i32 -2130562980 to i32*), align 4, !dbg !1625
  br label %44, !dbg !1626

34:                                               ; preds = %17
  %35 = load volatile i32, i32* inttoptr (i32 -2130562984 to i32*), align 8, !dbg !1627
  %36 = and i32 %35, -3, !dbg !1627
  store volatile i32 %36, i32* inttoptr (i32 -2130562984 to i32*), align 8, !dbg !1627
  %37 = load volatile i32, i32* inttoptr (i32 -2130562984 to i32*), align 8, !dbg !1630
  %38 = or i32 %37, 2048, !dbg !1630
  store volatile i32 %38, i32* inttoptr (i32 -2130562984 to i32*), align 8, !dbg !1630
  br label %44, !dbg !1631

39:                                               ; preds = %17
  %40 = load volatile i32, i32* inttoptr (i32 -2130562988 to i32*), align 4, !dbg !1632
  %41 = and i32 %40, -3, !dbg !1632
  store volatile i32 %41, i32* inttoptr (i32 -2130562988 to i32*), align 4, !dbg !1632
  %42 = load volatile i32, i32* inttoptr (i32 -2130562988 to i32*), align 4, !dbg !1635
  %43 = or i32 %42, 2048, !dbg !1635
  store volatile i32 %43, i32* inttoptr (i32 -2130562988 to i32*), align 4, !dbg !1635
  br label %44, !dbg !1636

44:                                               ; preds = %19, %29, %39, %34, %24, %12
  %45 = shl nuw i32 1, %9, !dbg !1637
  store volatile i32 %45, i32* inttoptr (i32 -2097106796 to i32*), align 4, !dbg !1637
  br label %97, !dbg !1638

46:                                               ; preds = %7
  br i1 %10, label %47, label %51, !dbg !1639

47:                                               ; preds = %46
  %48 = shl nuw i32 1, %9, !dbg !1641
  %49 = load volatile i32, i32* inttoptr (i32 -2097106688 to i32*), align 256, !dbg !1644
  %50 = or i32 %49, %48, !dbg !1644
  store volatile i32 %50, i32* inttoptr (i32 -2097106688 to i32*), align 256, !dbg !1644
  br label %68, !dbg !1645

51:                                               ; preds = %46
  %52 = trunc i32 %0 to i5, !dbg !1646
  switch i5 %52, label %65 [
    i5 -5, label %53
    i5 -4, label %56
    i5 -3, label %59
    i5 -2, label %62
  ], !dbg !1646

53:                                               ; preds = %51
  %54 = load volatile i32, i32* inttoptr (i32 -2130563000 to i32*), align 8, !dbg !1647
  %55 = or i32 %54, 2050, !dbg !1647
  store volatile i32 %55, i32* inttoptr (i32 -2130563000 to i32*), align 8, !dbg !1647
  br label %68, !dbg !1650

56:                                               ; preds = %51
  %57 = load volatile i32, i32* inttoptr (i32 -2130562996 to i32*), align 4, !dbg !1651
  %58 = or i32 %57, 2050, !dbg !1651
  store volatile i32 %58, i32* inttoptr (i32 -2130562996 to i32*), align 4, !dbg !1651
  br label %68, !dbg !1654

59:                                               ; preds = %51
  %60 = load volatile i32, i32* inttoptr (i32 -2130562980 to i32*), align 4, !dbg !1655
  %61 = or i32 %60, 2050, !dbg !1655
  store volatile i32 %61, i32* inttoptr (i32 -2130562980 to i32*), align 4, !dbg !1655
  br label %68, !dbg !1658

62:                                               ; preds = %51
  %63 = load volatile i32, i32* inttoptr (i32 -2130562984 to i32*), align 8, !dbg !1659
  %64 = or i32 %63, 2050, !dbg !1659
  store volatile i32 %64, i32* inttoptr (i32 -2130562984 to i32*), align 8, !dbg !1659
  br label %68, !dbg !1662

65:                                               ; preds = %51
  %66 = load volatile i32, i32* inttoptr (i32 -2130562988 to i32*), align 4, !dbg !1663
  %67 = or i32 %66, 2050, !dbg !1663
  store volatile i32 %67, i32* inttoptr (i32 -2130562988 to i32*), align 4, !dbg !1663
  br label %68, !dbg !1666

68:                                               ; preds = %53, %59, %65, %62, %56, %47
  %69 = shl nuw i32 1, %9, !dbg !1667
  store volatile i32 %69, i32* inttoptr (i32 -2097106792 to i32*), align 8, !dbg !1667
  br label %97

70:                                               ; preds = %2
  %71 = icmp eq i8 %1, 1, !dbg !1668
  %72 = zext i16 %5 to i32, !dbg !1670
  %73 = icmp eq i16 %5, 0, !dbg !1670
  br i1 %71, label %74, label %87, !dbg !1671

74:                                               ; preds = %70
  br i1 %73, label %80, label %75, !dbg !1672

75:                                               ; preds = %74
  %76 = shl nuw i32 1, %72, !dbg !1674
  %77 = xor i32 %76, -1, !dbg !1677
  %78 = load volatile i32, i32* inttoptr (i32 -2097106684 to i32*), align 4, !dbg !1678
  %79 = and i32 %78, %77, !dbg !1678
  store volatile i32 %79, i32* inttoptr (i32 -2097106684 to i32*), align 4, !dbg !1678
  br label %85, !dbg !1679

80:                                               ; preds = %74
  %81 = load volatile i32, i32* inttoptr (i32 -2130562992 to i32*), align 16, !dbg !1680
  %82 = and i32 %81, -3, !dbg !1680
  store volatile i32 %82, i32* inttoptr (i32 -2130562992 to i32*), align 16, !dbg !1680
  %83 = load volatile i32, i32* inttoptr (i32 -2130562992 to i32*), align 16, !dbg !1682
  %84 = or i32 %83, 2048, !dbg !1682
  store volatile i32 %84, i32* inttoptr (i32 -2130562992 to i32*), align 16, !dbg !1682
  br label %85

85:                                               ; preds = %80, %75
  %86 = phi i32 [ 1, %80 ], [ %76, %75 ], !dbg !1683
  store volatile i32 %86, i32* inttoptr (i32 -2097106780 to i32*), align 4, !dbg !1683
  br label %97, !dbg !1684

87:                                               ; preds = %70
  br i1 %73, label %92, label %88, !dbg !1685

88:                                               ; preds = %87
  %89 = shl nuw i32 1, %72, !dbg !1687
  %90 = load volatile i32, i32* inttoptr (i32 -2097106684 to i32*), align 4, !dbg !1690
  %91 = or i32 %90, %89, !dbg !1690
  store volatile i32 %91, i32* inttoptr (i32 -2097106684 to i32*), align 4, !dbg !1690
  br label %95, !dbg !1691

92:                                               ; preds = %87
  %93 = load volatile i32, i32* inttoptr (i32 -2130562992 to i32*), align 16, !dbg !1692
  %94 = or i32 %93, 2050, !dbg !1692
  store volatile i32 %94, i32* inttoptr (i32 -2130562992 to i32*), align 16, !dbg !1692
  br label %95

95:                                               ; preds = %92, %88
  %96 = phi i32 [ 1, %92 ], [ %89, %88 ], !dbg !1694
  store volatile i32 %96, i32* inttoptr (i32 -2097106776 to i32*), align 8, !dbg !1694
  br label %97

97:                                               ; preds = %68, %44, %95, %85, %2
  %98 = phi i32 [ -1, %2 ], [ 0, %85 ], [ 0, %95 ], [ 0, %44 ], [ 0, %68 ], !dbg !1594
  ret i32 %98, !dbg !1695
}

; Function Attrs: nofree noinline norecurse nounwind optsize
define dso_local i32 @halGPO_Write(i32 noundef %0, i8 noundef zeroext %1) local_unnamed_addr #3 !dbg !1696 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !1698, metadata !DIExpression()), !dbg !1702
  call void @llvm.dbg.value(metadata i8 %1, metadata !1699, metadata !DIExpression()), !dbg !1702
  %3 = lshr i32 %0, 5, !dbg !1703
  call void @llvm.dbg.value(metadata i32 %3, metadata !1700, metadata !DIExpression(DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 16, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1702
  %4 = trunc i32 %0 to i16, !dbg !1704
  %5 = and i16 %4, 31, !dbg !1704
  call void @llvm.dbg.value(metadata i16 %5, metadata !1701, metadata !DIExpression()), !dbg !1702
  %6 = trunc i32 %3 to i16, !dbg !1705
  switch i16 %6, label %19 [
    i16 0, label %7
    i16 1, label %13
  ], !dbg !1705

7:                                                ; preds = %2
  %8 = icmp eq i8 %1, 0, !dbg !1706
  %9 = zext i16 %5 to i32, !dbg !1709
  %10 = shl nuw i32 1, %9, !dbg !1709
  br i1 %8, label %12, label %11, !dbg !1710

11:                                               ; preds = %7
  store volatile i32 %10, i32* inttoptr (i32 -2097106844 to i32*), align 4, !dbg !1711
  br label %19, !dbg !1713

12:                                               ; preds = %7
  store volatile i32 %10, i32* inttoptr (i32 -2097106840 to i32*), align 8, !dbg !1714
  br label %19

13:                                               ; preds = %2
  %14 = icmp eq i8 %1, 0, !dbg !1716
  %15 = zext i16 %5 to i32, !dbg !1718
  %16 = shl nuw i32 1, %15, !dbg !1718
  br i1 %14, label %18, label %17, !dbg !1719

17:                                               ; preds = %13
  store volatile i32 %16, i32* inttoptr (i32 -2097106828 to i32*), align 4, !dbg !1720
  br label %19, !dbg !1722

18:                                               ; preds = %13
  store volatile i32 %16, i32* inttoptr (i32 -2097106824 to i32*), align 8, !dbg !1723
  br label %19

19:                                               ; preds = %12, %11, %18, %17, %2
  %20 = phi i32 [ -1, %2 ], [ 0, %17 ], [ 0, %18 ], [ 0, %11 ], [ 0, %12 ], !dbg !1702
  ret i32 %20, !dbg !1725
}

; Function Attrs: mustprogress nofree noinline norecurse nounwind optsize willreturn
define dso_local zeroext i8 @halgetGPIO_DOUT(i32 noundef %0) local_unnamed_addr #4 !dbg !1726 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !1730, metadata !DIExpression()), !dbg !1734
  %2 = lshr i32 %0, 5, !dbg !1735
  call void @llvm.dbg.value(metadata i32 %2, metadata !1731, metadata !DIExpression(DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 16, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1734
  %3 = and i32 %0, 31, !dbg !1736
  call void @llvm.dbg.value(metadata i32 %0, metadata !1732, metadata !DIExpression(DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 16, DW_ATE_unsigned, DW_OP_constu, 31, DW_OP_and, DW_OP_stack_value)), !dbg !1734
  call void @llvm.dbg.value(metadata i8 0, metadata !1733, metadata !DIExpression()), !dbg !1734
  %4 = trunc i32 %2 to i16, !dbg !1737
  switch i16 %4, label %12 [
    i16 0, label %6
    i16 1, label %5
  ], !dbg !1737

5:                                                ; preds = %1
  call void @llvm.dbg.value(metadata i32 %9, metadata !1733, metadata !DIExpression(DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_constu, 1, DW_OP_and, DW_OP_stack_value)), !dbg !1734
  br label %6, !dbg !1738

6:                                                ; preds = %1, %5
  %7 = phi i32* [ inttoptr (i32 -2097106832 to i32*), %5 ], [ inttoptr (i32 -2097106848 to i32*), %1 ]
  %8 = load volatile i32, i32* %7, align 16, !dbg !1740
  %9 = lshr i32 %8, %3, !dbg !1740
  %10 = trunc i32 %9 to i8, !dbg !1740
  %11 = and i8 %10, 1, !dbg !1740
  call void @llvm.dbg.value(metadata i8 %11, metadata !1733, metadata !DIExpression()), !dbg !1734
  br label %12, !dbg !1741

12:                                               ; preds = %1, %6
  %13 = phi i8 [ %11, %6 ], [ 0, %1 ], !dbg !1734
  ret i8 %13, !dbg !1742
}

; Function Attrs: mustprogress nofree noinline norecurse nounwind optsize willreturn
define dso_local zeroext i8 @halgetGPIO_DIN(i32 noundef %0) local_unnamed_addr #4 !dbg !1743 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !1745, metadata !DIExpression()), !dbg !1749
  %2 = lshr i32 %0, 5, !dbg !1750
  call void @llvm.dbg.value(metadata i32 %2, metadata !1746, metadata !DIExpression(DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 16, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1749
  %3 = and i32 %0, 31, !dbg !1751
  call void @llvm.dbg.value(metadata i32 %0, metadata !1747, metadata !DIExpression(DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 16, DW_ATE_unsigned, DW_OP_constu, 31, DW_OP_and, DW_OP_stack_value)), !dbg !1749
  call void @llvm.dbg.value(metadata i8 0, metadata !1748, metadata !DIExpression()), !dbg !1749
  %4 = trunc i32 %2 to i16, !dbg !1752
  switch i16 %4, label %12 [
    i16 0, label %6
    i16 1, label %5
  ], !dbg !1752

5:                                                ; preds = %1
  call void @llvm.dbg.value(metadata i32 %9, metadata !1748, metadata !DIExpression(DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_constu, 1, DW_OP_and, DW_OP_stack_value)), !dbg !1749
  br label %6, !dbg !1753

6:                                                ; preds = %1, %5
  %7 = phi i32* [ inttoptr (i32 -2097106748 to i32*), %5 ], [ inttoptr (i32 -2097106752 to i32*), %1 ]
  %8 = load volatile i32, i32* %7, align 4, !dbg !1755
  %9 = lshr i32 %8, %3, !dbg !1755
  %10 = trunc i32 %9 to i8, !dbg !1755
  %11 = and i8 %10, 1, !dbg !1755
  call void @llvm.dbg.value(metadata i8 %11, metadata !1748, metadata !DIExpression()), !dbg !1749
  br label %12, !dbg !1756

12:                                               ; preds = %1, %6
  %13 = phi i8 [ %11, %6 ], [ 0, %1 ], !dbg !1749
  ret i8 %13, !dbg !1757
}

; Function Attrs: mustprogress nofree noinline norecurse nounwind optsize willreturn
define dso_local zeroext i8 @halgetGPIO_OutEnable(i32 noundef %0) local_unnamed_addr #4 !dbg !1758 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !1760, metadata !DIExpression()), !dbg !1764
  %2 = lshr i32 %0, 5, !dbg !1765
  call void @llvm.dbg.value(metadata i32 %2, metadata !1761, metadata !DIExpression(DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 16, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1764
  %3 = and i32 %0, 31, !dbg !1766
  call void @llvm.dbg.value(metadata i32 %0, metadata !1762, metadata !DIExpression(DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 16, DW_ATE_unsigned, DW_OP_constu, 31, DW_OP_and, DW_OP_stack_value)), !dbg !1764
  call void @llvm.dbg.value(metadata i8 0, metadata !1763, metadata !DIExpression()), !dbg !1764
  %4 = trunc i32 %2 to i16, !dbg !1767
  switch i16 %4, label %12 [
    i16 0, label %6
    i16 1, label %5
  ], !dbg !1767

5:                                                ; preds = %1
  call void @llvm.dbg.value(metadata i32 %9, metadata !1763, metadata !DIExpression(DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_constu, 1, DW_OP_and, DW_OP_stack_value)), !dbg !1764
  br label %6, !dbg !1768

6:                                                ; preds = %1, %5
  %7 = phi i32* [ inttoptr (i32 -2097106784 to i32*), %5 ], [ inttoptr (i32 -2097106800 to i32*), %1 ]
  %8 = load volatile i32, i32* %7, align 16, !dbg !1770
  %9 = lshr i32 %8, %3, !dbg !1770
  %10 = trunc i32 %9 to i8, !dbg !1770
  %11 = and i8 %10, 1, !dbg !1770
  call void @llvm.dbg.value(metadata i8 %11, metadata !1763, metadata !DIExpression()), !dbg !1764
  br label %12, !dbg !1771

12:                                               ; preds = %1, %6
  %13 = phi i8 [ %11, %6 ], [ 0, %1 ], !dbg !1764
  ret i8 %13, !dbg !1772
}

; Function Attrs: nofree noinline norecurse nounwind optsize
define dso_local i32 @halGPIO_PullUp_SET(i32 noundef %0) local_unnamed_addr #3 !dbg !1773 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !1777, metadata !DIExpression()), !dbg !1780
  %2 = lshr i32 %0, 5, !dbg !1781
  call void @llvm.dbg.value(metadata i32 %2, metadata !1778, metadata !DIExpression(DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 16, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1780
  %3 = trunc i32 %0 to i16, !dbg !1782
  %4 = and i16 %3, 31, !dbg !1782
  call void @llvm.dbg.value(metadata i16 %3, metadata !1779, metadata !DIExpression(DW_OP_constu, 31, DW_OP_and, DW_OP_stack_value)), !dbg !1780
  %5 = tail call i32 @halGPIO_PullDown_RESET(i32 noundef %0) #14, !dbg !1783
  %6 = trunc i32 %2 to i16, !dbg !1784
  switch i16 %6, label %49 [
    i16 0, label %7
    i16 1, label %39
  ], !dbg !1784

7:                                                ; preds = %1
  %8 = icmp ult i16 %4, 27, !dbg !1785
  br i1 %8, label %9, label %12, !dbg !1788

9:                                                ; preds = %7
  %10 = zext i16 %4 to i32, !dbg !1789
  %11 = shl nuw nsw i32 1, %10, !dbg !1790
  store volatile i32 %11, i32* inttoptr (i32 -2097106940 to i32*), align 4, !dbg !1790
  br label %49, !dbg !1792

12:                                               ; preds = %7
  %13 = trunc i32 %0 to i5, !dbg !1793
  switch i5 %13, label %34 [
    i5 -5, label %14
    i5 -4, label %19
    i5 -3, label %24
    i5 -2, label %29
  ], !dbg !1793

14:                                               ; preds = %12
  %15 = load volatile i32, i32* inttoptr (i32 -2130563000 to i32*), align 8, !dbg !1794
  %16 = and i32 %15, -29, !dbg !1794
  store volatile i32 %16, i32* inttoptr (i32 -2130563000 to i32*), align 8, !dbg !1794
  %17 = load volatile i32, i32* inttoptr (i32 -2130563000 to i32*), align 8, !dbg !1797
  %18 = or i32 %17, 2052, !dbg !1797
  store volatile i32 %18, i32* inttoptr (i32 -2130563000 to i32*), align 8, !dbg !1797
  br label %49, !dbg !1798

19:                                               ; preds = %12
  %20 = load volatile i32, i32* inttoptr (i32 -2130562996 to i32*), align 4, !dbg !1799
  %21 = and i32 %20, -29, !dbg !1799
  store volatile i32 %21, i32* inttoptr (i32 -2130562996 to i32*), align 4, !dbg !1799
  %22 = load volatile i32, i32* inttoptr (i32 -2130562996 to i32*), align 4, !dbg !1802
  %23 = or i32 %22, 2052, !dbg !1802
  store volatile i32 %23, i32* inttoptr (i32 -2130562996 to i32*), align 4, !dbg !1802
  br label %49, !dbg !1803

24:                                               ; preds = %12
  %25 = load volatile i32, i32* inttoptr (i32 -2130562980 to i32*), align 4, !dbg !1804
  %26 = and i32 %25, -29, !dbg !1804
  store volatile i32 %26, i32* inttoptr (i32 -2130562980 to i32*), align 4, !dbg !1804
  %27 = load volatile i32, i32* inttoptr (i32 -2130562980 to i32*), align 4, !dbg !1807
  %28 = or i32 %27, 2052, !dbg !1807
  store volatile i32 %28, i32* inttoptr (i32 -2130562980 to i32*), align 4, !dbg !1807
  br label %49, !dbg !1808

29:                                               ; preds = %12
  %30 = load volatile i32, i32* inttoptr (i32 -2130562984 to i32*), align 8, !dbg !1809
  %31 = and i32 %30, -29, !dbg !1809
  store volatile i32 %31, i32* inttoptr (i32 -2130562984 to i32*), align 8, !dbg !1809
  %32 = load volatile i32, i32* inttoptr (i32 -2130562984 to i32*), align 8, !dbg !1812
  %33 = or i32 %32, 2052, !dbg !1812
  store volatile i32 %33, i32* inttoptr (i32 -2130562984 to i32*), align 8, !dbg !1812
  br label %49, !dbg !1813

34:                                               ; preds = %12
  %35 = load volatile i32, i32* inttoptr (i32 -2130562988 to i32*), align 4, !dbg !1814
  %36 = and i32 %35, -29, !dbg !1814
  store volatile i32 %36, i32* inttoptr (i32 -2130562988 to i32*), align 4, !dbg !1814
  %37 = load volatile i32, i32* inttoptr (i32 -2130562988 to i32*), align 4, !dbg !1817
  %38 = or i32 %37, 2052, !dbg !1817
  store volatile i32 %38, i32* inttoptr (i32 -2130562988 to i32*), align 4, !dbg !1817
  br label %49, !dbg !1818

39:                                               ; preds = %1
  %40 = icmp eq i16 %4, 0, !dbg !1819
  br i1 %40, label %41, label %46, !dbg !1821

41:                                               ; preds = %39
  %42 = load volatile i32, i32* inttoptr (i32 -2130562992 to i32*), align 16, !dbg !1822
  %43 = and i32 %42, -29, !dbg !1822
  store volatile i32 %43, i32* inttoptr (i32 -2130562992 to i32*), align 16, !dbg !1822
  %44 = load volatile i32, i32* inttoptr (i32 -2130562992 to i32*), align 16, !dbg !1824
  %45 = or i32 %44, 2052, !dbg !1824
  store volatile i32 %45, i32* inttoptr (i32 -2130562992 to i32*), align 16, !dbg !1824
  br label %49, !dbg !1825

46:                                               ; preds = %39
  %47 = zext i16 %4 to i32, !dbg !1826
  %48 = shl nuw i32 1, %47, !dbg !1826
  store volatile i32 %48, i32* inttoptr (i32 -2097106924 to i32*), align 4, !dbg !1826
  br label %49

49:                                               ; preds = %14, %24, %34, %29, %19, %9, %46, %41, %1
  %50 = phi i32 [ -1, %1 ], [ 0, %41 ], [ 0, %46 ], [ 0, %9 ], [ 0, %19 ], [ 0, %29 ], [ 0, %34 ], [ 0, %24 ], [ 0, %14 ], !dbg !1780
  ret i32 %50, !dbg !1828
}

; Function Attrs: nofree noinline norecurse nounwind optsize
define dso_local i32 @halGPIO_PullDown_RESET(i32 noundef %0) local_unnamed_addr #3 !dbg !1829 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !1831, metadata !DIExpression()), !dbg !1834
  %2 = lshr i32 %0, 5, !dbg !1835
  call void @llvm.dbg.value(metadata i32 %2, metadata !1832, metadata !DIExpression(DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 16, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1834
  %3 = trunc i32 %0 to i16, !dbg !1836
  %4 = and i16 %3, 31, !dbg !1836
  call void @llvm.dbg.value(metadata i16 %3, metadata !1833, metadata !DIExpression(DW_OP_constu, 31, DW_OP_and, DW_OP_stack_value)), !dbg !1834
  %5 = trunc i32 %2 to i16, !dbg !1837
  switch i16 %5, label %48 [
    i16 0, label %6
    i16 1, label %38
  ], !dbg !1837

6:                                                ; preds = %1
  %7 = icmp ult i16 %4, 27, !dbg !1838
  br i1 %7, label %8, label %11, !dbg !1841

8:                                                ; preds = %6
  %9 = zext i16 %4 to i32, !dbg !1842
  %10 = shl nuw nsw i32 1, %9, !dbg !1843
  store volatile i32 %10, i32* inttoptr (i32 -2097106888 to i32*), align 8, !dbg !1843
  br label %48, !dbg !1845

11:                                               ; preds = %6
  %12 = trunc i32 %0 to i5, !dbg !1846
  switch i5 %12, label %33 [
    i5 -5, label %13
    i5 -4, label %18
    i5 -3, label %23
    i5 -2, label %28
  ], !dbg !1846

13:                                               ; preds = %11
  %14 = load volatile i32, i32* inttoptr (i32 -2130563000 to i32*), align 8, !dbg !1847
  %15 = and i32 %14, -29, !dbg !1847
  store volatile i32 %15, i32* inttoptr (i32 -2130563000 to i32*), align 8, !dbg !1847
  %16 = load volatile i32, i32* inttoptr (i32 -2130563000 to i32*), align 8, !dbg !1850
  %17 = or i32 %16, 2048, !dbg !1850
  store volatile i32 %17, i32* inttoptr (i32 -2130563000 to i32*), align 8, !dbg !1850
  br label %48, !dbg !1851

18:                                               ; preds = %11
  %19 = load volatile i32, i32* inttoptr (i32 -2130562996 to i32*), align 4, !dbg !1852
  %20 = and i32 %19, -29, !dbg !1852
  store volatile i32 %20, i32* inttoptr (i32 -2130562996 to i32*), align 4, !dbg !1852
  %21 = load volatile i32, i32* inttoptr (i32 -2130562996 to i32*), align 4, !dbg !1855
  %22 = or i32 %21, 2048, !dbg !1855
  store volatile i32 %22, i32* inttoptr (i32 -2130562996 to i32*), align 4, !dbg !1855
  br label %48, !dbg !1856

23:                                               ; preds = %11
  %24 = load volatile i32, i32* inttoptr (i32 -2130562980 to i32*), align 4, !dbg !1857
  %25 = and i32 %24, -29, !dbg !1857
  store volatile i32 %25, i32* inttoptr (i32 -2130562980 to i32*), align 4, !dbg !1857
  %26 = load volatile i32, i32* inttoptr (i32 -2130562980 to i32*), align 4, !dbg !1860
  %27 = or i32 %26, 2048, !dbg !1860
  store volatile i32 %27, i32* inttoptr (i32 -2130562980 to i32*), align 4, !dbg !1860
  br label %48, !dbg !1861

28:                                               ; preds = %11
  %29 = load volatile i32, i32* inttoptr (i32 -2130562984 to i32*), align 8, !dbg !1862
  %30 = and i32 %29, -29, !dbg !1862
  store volatile i32 %30, i32* inttoptr (i32 -2130562984 to i32*), align 8, !dbg !1862
  %31 = load volatile i32, i32* inttoptr (i32 -2130562984 to i32*), align 8, !dbg !1865
  %32 = or i32 %31, 2048, !dbg !1865
  store volatile i32 %32, i32* inttoptr (i32 -2130562984 to i32*), align 8, !dbg !1865
  br label %48, !dbg !1866

33:                                               ; preds = %11
  %34 = load volatile i32, i32* inttoptr (i32 -2130562988 to i32*), align 4, !dbg !1867
  %35 = and i32 %34, -29, !dbg !1867
  store volatile i32 %35, i32* inttoptr (i32 -2130562988 to i32*), align 4, !dbg !1867
  %36 = load volatile i32, i32* inttoptr (i32 -2130562988 to i32*), align 4, !dbg !1870
  %37 = or i32 %36, 2048, !dbg !1870
  store volatile i32 %37, i32* inttoptr (i32 -2130562988 to i32*), align 4, !dbg !1870
  br label %48, !dbg !1871

38:                                               ; preds = %1
  %39 = icmp eq i16 %4, 0, !dbg !1872
  br i1 %39, label %40, label %45, !dbg !1874

40:                                               ; preds = %38
  %41 = load volatile i32, i32* inttoptr (i32 -2130562992 to i32*), align 16, !dbg !1875
  %42 = and i32 %41, -29, !dbg !1875
  store volatile i32 %42, i32* inttoptr (i32 -2130562992 to i32*), align 16, !dbg !1875
  %43 = load volatile i32, i32* inttoptr (i32 -2130562992 to i32*), align 16, !dbg !1877
  %44 = or i32 %43, 2048, !dbg !1877
  store volatile i32 %44, i32* inttoptr (i32 -2130562992 to i32*), align 16, !dbg !1877
  br label %48, !dbg !1878

45:                                               ; preds = %38
  %46 = zext i16 %4 to i32, !dbg !1879
  %47 = shl nuw i32 1, %46, !dbg !1879
  store volatile i32 %47, i32* inttoptr (i32 -2097106872 to i32*), align 8, !dbg !1879
  br label %48

48:                                               ; preds = %13, %23, %33, %28, %18, %8, %45, %40, %1
  %49 = phi i32 [ -1, %1 ], [ 0, %40 ], [ 0, %45 ], [ 0, %8 ], [ 0, %18 ], [ 0, %28 ], [ 0, %33 ], [ 0, %23 ], [ 0, %13 ], !dbg !1834
  ret i32 %49, !dbg !1881
}

; Function Attrs: nofree noinline norecurse nounwind optsize
define dso_local i32 @halGPIO_PullUp_RESET(i32 noundef %0) local_unnamed_addr #3 !dbg !1882 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !1884, metadata !DIExpression()), !dbg !1887
  %2 = lshr i32 %0, 5, !dbg !1888
  call void @llvm.dbg.value(metadata i32 %2, metadata !1885, metadata !DIExpression(DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 16, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1887
  %3 = trunc i32 %0 to i16, !dbg !1889
  %4 = and i16 %3, 31, !dbg !1889
  call void @llvm.dbg.value(metadata i16 %3, metadata !1886, metadata !DIExpression(DW_OP_constu, 31, DW_OP_and, DW_OP_stack_value)), !dbg !1887
  %5 = trunc i32 %2 to i16, !dbg !1890
  switch i16 %5, label %48 [
    i16 0, label %6
    i16 1, label %38
  ], !dbg !1890

6:                                                ; preds = %1
  %7 = icmp ult i16 %4, 27, !dbg !1891
  br i1 %7, label %8, label %11, !dbg !1894

8:                                                ; preds = %6
  %9 = zext i16 %4 to i32, !dbg !1895
  %10 = shl nuw nsw i32 1, %9, !dbg !1896
  store volatile i32 %10, i32* inttoptr (i32 -2097106936 to i32*), align 8, !dbg !1896
  br label %48, !dbg !1898

11:                                               ; preds = %6
  %12 = trunc i32 %0 to i5, !dbg !1899
  switch i5 %12, label %33 [
    i5 -5, label %13
    i5 -4, label %18
    i5 -3, label %23
    i5 -2, label %28
  ], !dbg !1899

13:                                               ; preds = %11
  %14 = load volatile i32, i32* inttoptr (i32 -2130563000 to i32*), align 8, !dbg !1900
  %15 = and i32 %14, -29, !dbg !1900
  store volatile i32 %15, i32* inttoptr (i32 -2130563000 to i32*), align 8, !dbg !1900
  %16 = load volatile i32, i32* inttoptr (i32 -2130563000 to i32*), align 8, !dbg !1903
  %17 = or i32 %16, 2048, !dbg !1903
  store volatile i32 %17, i32* inttoptr (i32 -2130563000 to i32*), align 8, !dbg !1903
  br label %48, !dbg !1904

18:                                               ; preds = %11
  %19 = load volatile i32, i32* inttoptr (i32 -2130562996 to i32*), align 4, !dbg !1905
  %20 = and i32 %19, -29, !dbg !1905
  store volatile i32 %20, i32* inttoptr (i32 -2130562996 to i32*), align 4, !dbg !1905
  %21 = load volatile i32, i32* inttoptr (i32 -2130562996 to i32*), align 4, !dbg !1908
  %22 = or i32 %21, 2048, !dbg !1908
  store volatile i32 %22, i32* inttoptr (i32 -2130562996 to i32*), align 4, !dbg !1908
  br label %48, !dbg !1909

23:                                               ; preds = %11
  %24 = load volatile i32, i32* inttoptr (i32 -2130562980 to i32*), align 4, !dbg !1910
  %25 = and i32 %24, -29, !dbg !1910
  store volatile i32 %25, i32* inttoptr (i32 -2130562980 to i32*), align 4, !dbg !1910
  %26 = load volatile i32, i32* inttoptr (i32 -2130562980 to i32*), align 4, !dbg !1913
  %27 = or i32 %26, 2048, !dbg !1913
  store volatile i32 %27, i32* inttoptr (i32 -2130562980 to i32*), align 4, !dbg !1913
  br label %48, !dbg !1914

28:                                               ; preds = %11
  %29 = load volatile i32, i32* inttoptr (i32 -2130562984 to i32*), align 8, !dbg !1915
  %30 = and i32 %29, -29, !dbg !1915
  store volatile i32 %30, i32* inttoptr (i32 -2130562984 to i32*), align 8, !dbg !1915
  %31 = load volatile i32, i32* inttoptr (i32 -2130562984 to i32*), align 8, !dbg !1918
  %32 = or i32 %31, 2048, !dbg !1918
  store volatile i32 %32, i32* inttoptr (i32 -2130562984 to i32*), align 8, !dbg !1918
  br label %48, !dbg !1919

33:                                               ; preds = %11
  %34 = load volatile i32, i32* inttoptr (i32 -2130562988 to i32*), align 4, !dbg !1920
  %35 = and i32 %34, -29, !dbg !1920
  store volatile i32 %35, i32* inttoptr (i32 -2130562988 to i32*), align 4, !dbg !1920
  %36 = load volatile i32, i32* inttoptr (i32 -2130562988 to i32*), align 4, !dbg !1923
  %37 = or i32 %36, 2048, !dbg !1923
  store volatile i32 %37, i32* inttoptr (i32 -2130562988 to i32*), align 4, !dbg !1923
  br label %48, !dbg !1924

38:                                               ; preds = %1
  %39 = icmp eq i16 %4, 0, !dbg !1925
  br i1 %39, label %40, label %45, !dbg !1927

40:                                               ; preds = %38
  %41 = load volatile i32, i32* inttoptr (i32 -2130562992 to i32*), align 16, !dbg !1928
  %42 = and i32 %41, -29, !dbg !1928
  store volatile i32 %42, i32* inttoptr (i32 -2130562992 to i32*), align 16, !dbg !1928
  %43 = load volatile i32, i32* inttoptr (i32 -2130562992 to i32*), align 16, !dbg !1930
  %44 = or i32 %43, 2048, !dbg !1930
  store volatile i32 %44, i32* inttoptr (i32 -2130562992 to i32*), align 16, !dbg !1930
  br label %48, !dbg !1931

45:                                               ; preds = %38
  %46 = zext i16 %4 to i32, !dbg !1932
  %47 = shl nuw i32 1, %46, !dbg !1932
  store volatile i32 %47, i32* inttoptr (i32 -2097106920 to i32*), align 8, !dbg !1932
  br label %48

48:                                               ; preds = %13, %23, %33, %28, %18, %8, %45, %40, %1
  %49 = phi i32 [ -1, %1 ], [ 0, %40 ], [ 0, %45 ], [ 0, %8 ], [ 0, %18 ], [ 0, %28 ], [ 0, %33 ], [ 0, %23 ], [ 0, %13 ], !dbg !1887
  ret i32 %49, !dbg !1934
}

; Function Attrs: nofree noinline norecurse nounwind optsize
define dso_local i32 @halGPIO_PullDown_SET(i32 noundef %0) local_unnamed_addr #3 !dbg !1935 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !1937, metadata !DIExpression()), !dbg !1940
  %2 = lshr i32 %0, 5, !dbg !1941
  call void @llvm.dbg.value(metadata i32 %2, metadata !1938, metadata !DIExpression(DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 16, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1940
  %3 = trunc i32 %0 to i16, !dbg !1942
  %4 = and i16 %3, 31, !dbg !1942
  call void @llvm.dbg.value(metadata i16 %3, metadata !1939, metadata !DIExpression(DW_OP_constu, 31, DW_OP_and, DW_OP_stack_value)), !dbg !1940
  %5 = tail call i32 @halGPIO_PullUp_RESET(i32 noundef %0) #14, !dbg !1943
  %6 = trunc i32 %2 to i16, !dbg !1944
  switch i16 %6, label %49 [
    i16 0, label %7
    i16 1, label %39
  ], !dbg !1944

7:                                                ; preds = %1
  %8 = icmp ult i16 %4, 27, !dbg !1945
  br i1 %8, label %9, label %12, !dbg !1948

9:                                                ; preds = %7
  %10 = zext i16 %4 to i32, !dbg !1949
  %11 = shl nuw nsw i32 1, %10, !dbg !1950
  store volatile i32 %11, i32* inttoptr (i32 -2097106892 to i32*), align 4, !dbg !1950
  br label %49, !dbg !1952

12:                                               ; preds = %7
  %13 = trunc i32 %0 to i5, !dbg !1953
  switch i5 %13, label %34 [
    i5 -5, label %14
    i5 -4, label %19
    i5 -3, label %24
    i5 -2, label %29
  ], !dbg !1953

14:                                               ; preds = %12
  %15 = load volatile i32, i32* inttoptr (i32 -2130563000 to i32*), align 8, !dbg !1954
  %16 = and i32 %15, -29, !dbg !1954
  store volatile i32 %16, i32* inttoptr (i32 -2130563000 to i32*), align 8, !dbg !1954
  %17 = load volatile i32, i32* inttoptr (i32 -2130563000 to i32*), align 8, !dbg !1957
  %18 = or i32 %17, 2068, !dbg !1957
  store volatile i32 %18, i32* inttoptr (i32 -2130563000 to i32*), align 8, !dbg !1957
  br label %49, !dbg !1958

19:                                               ; preds = %12
  %20 = load volatile i32, i32* inttoptr (i32 -2130562996 to i32*), align 4, !dbg !1959
  %21 = and i32 %20, -29, !dbg !1959
  store volatile i32 %21, i32* inttoptr (i32 -2130562996 to i32*), align 4, !dbg !1959
  %22 = load volatile i32, i32* inttoptr (i32 -2130562996 to i32*), align 4, !dbg !1962
  %23 = or i32 %22, 2068, !dbg !1962
  store volatile i32 %23, i32* inttoptr (i32 -2130562996 to i32*), align 4, !dbg !1962
  br label %49, !dbg !1963

24:                                               ; preds = %12
  %25 = load volatile i32, i32* inttoptr (i32 -2130562980 to i32*), align 4, !dbg !1964
  %26 = and i32 %25, -29, !dbg !1964
  store volatile i32 %26, i32* inttoptr (i32 -2130562980 to i32*), align 4, !dbg !1964
  %27 = load volatile i32, i32* inttoptr (i32 -2130562980 to i32*), align 4, !dbg !1967
  %28 = or i32 %27, 2068, !dbg !1967
  store volatile i32 %28, i32* inttoptr (i32 -2130562980 to i32*), align 4, !dbg !1967
  br label %49, !dbg !1968

29:                                               ; preds = %12
  %30 = load volatile i32, i32* inttoptr (i32 -2130562984 to i32*), align 8, !dbg !1969
  %31 = and i32 %30, -29, !dbg !1969
  store volatile i32 %31, i32* inttoptr (i32 -2130562984 to i32*), align 8, !dbg !1969
  %32 = load volatile i32, i32* inttoptr (i32 -2130562984 to i32*), align 8, !dbg !1972
  %33 = or i32 %32, 2068, !dbg !1972
  store volatile i32 %33, i32* inttoptr (i32 -2130562984 to i32*), align 8, !dbg !1972
  br label %49, !dbg !1973

34:                                               ; preds = %12
  %35 = load volatile i32, i32* inttoptr (i32 -2130562988 to i32*), align 4, !dbg !1974
  %36 = and i32 %35, -29, !dbg !1974
  store volatile i32 %36, i32* inttoptr (i32 -2130562988 to i32*), align 4, !dbg !1974
  %37 = load volatile i32, i32* inttoptr (i32 -2130562988 to i32*), align 4, !dbg !1977
  %38 = or i32 %37, 2068, !dbg !1977
  store volatile i32 %38, i32* inttoptr (i32 -2130562988 to i32*), align 4, !dbg !1977
  br label %49, !dbg !1978

39:                                               ; preds = %1
  %40 = icmp eq i16 %4, 0, !dbg !1979
  br i1 %40, label %41, label %46, !dbg !1981

41:                                               ; preds = %39
  %42 = load volatile i32, i32* inttoptr (i32 -2130562992 to i32*), align 16, !dbg !1982
  %43 = and i32 %42, -29, !dbg !1982
  store volatile i32 %43, i32* inttoptr (i32 -2130562992 to i32*), align 16, !dbg !1982
  %44 = load volatile i32, i32* inttoptr (i32 -2130562992 to i32*), align 16, !dbg !1984
  %45 = or i32 %44, 2068, !dbg !1984
  store volatile i32 %45, i32* inttoptr (i32 -2130562992 to i32*), align 16, !dbg !1984
  br label %49, !dbg !1985

46:                                               ; preds = %39
  %47 = zext i16 %4 to i32, !dbg !1986
  %48 = shl nuw i32 1, %47, !dbg !1986
  store volatile i32 %48, i32* inttoptr (i32 -2097106876 to i32*), align 4, !dbg !1986
  br label %49

49:                                               ; preds = %14, %24, %34, %29, %19, %9, %46, %41, %1
  %50 = phi i32 [ -1, %1 ], [ 0, %41 ], [ 0, %46 ], [ 0, %9 ], [ 0, %19 ], [ 0, %29 ], [ 0, %34 ], [ 0, %24 ], [ 0, %14 ], !dbg !1940
  ret i32 %50, !dbg !1988
}

; Function Attrs: nofree noinline norecurse nounwind optsize
define dso_local i32 @halGPIO_SetDriving(i32 noundef %0, i8 noundef zeroext %1) local_unnamed_addr #3 !dbg !1989 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !1991, metadata !DIExpression()), !dbg !1995
  call void @llvm.dbg.value(metadata i8 %1, metadata !1992, metadata !DIExpression()), !dbg !1995
  %3 = lshr i32 %0, 4, !dbg !1996
  call void @llvm.dbg.value(metadata i32 %3, metadata !1993, metadata !DIExpression(DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 16, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1995
  %4 = trunc i32 %0 to i16, !dbg !1997
  %5 = and i16 %4, 15, !dbg !1997
  call void @llvm.dbg.value(metadata i16 %4, metadata !1994, metadata !DIExpression(DW_OP_constu, 15, DW_OP_and, DW_OP_stack_value)), !dbg !1995
  %6 = trunc i32 %3 to i16, !dbg !1998
  switch i16 %6, label %131 [
    i16 0, label %7
    i16 1, label %20
    i16 2, label %92
    i16 3, label %118
  ], !dbg !1998

7:                                                ; preds = %2
  %8 = shl nuw nsw i16 %5, 1, !dbg !1999
  %9 = zext i16 %8 to i32, !dbg !1999
  %10 = shl nuw i32 3, %9, !dbg !2001
  %11 = xor i32 %10, -1, !dbg !2002
  %12 = load volatile i32, i32* inttoptr (i32 -2097106736 to i32*), align 16, !dbg !2003
  %13 = and i32 %12, %11, !dbg !2003
  store volatile i32 %13, i32* inttoptr (i32 -2097106736 to i32*), align 16, !dbg !2003
  %14 = lshr i8 %1, 2, !dbg !2004
  %15 = zext i8 %14 to i32, !dbg !2004
  %16 = add nsw i32 %15, -1, !dbg !2005
  %17 = shl i32 %16, %9, !dbg !2006
  %18 = load volatile i32, i32* inttoptr (i32 -2097106736 to i32*), align 16, !dbg !2007
  %19 = or i32 %18, %17, !dbg !2007
  store volatile i32 %19, i32* inttoptr (i32 -2097106736 to i32*), align 16, !dbg !2007
  br label %131, !dbg !2008

20:                                               ; preds = %2
  %21 = icmp ult i16 %5, 11, !dbg !2009
  br i1 %21, label %22, label %35, !dbg !2011

22:                                               ; preds = %20
  %23 = shl nuw nsw i16 %5, 1, !dbg !2012
  %24 = zext i16 %23 to i32, !dbg !2012
  %25 = shl nuw nsw i32 3, %24, !dbg !2014
  %26 = xor i32 %25, -1, !dbg !2015
  %27 = load volatile i32, i32* inttoptr (i32 -2097106732 to i32*), align 4, !dbg !2016
  %28 = and i32 %27, %26, !dbg !2016
  store volatile i32 %28, i32* inttoptr (i32 -2097106732 to i32*), align 4, !dbg !2016
  %29 = lshr i8 %1, 2, !dbg !2017
  %30 = zext i8 %29 to i32, !dbg !2017
  %31 = add nsw i32 %30, -1, !dbg !2018
  %32 = shl nsw i32 %31, %24, !dbg !2019
  %33 = load volatile i32, i32* inttoptr (i32 -2097106732 to i32*), align 4, !dbg !2020
  %34 = or i32 %33, %32, !dbg !2020
  store volatile i32 %34, i32* inttoptr (i32 -2097106732 to i32*), align 4, !dbg !2020
  br label %131, !dbg !2021

35:                                               ; preds = %20
  %36 = trunc i32 %0 to i4, !dbg !2022
  switch i4 %36, label %81 [
    i4 -5, label %37
    i4 -4, label %48
    i4 -3, label %59
    i4 -2, label %70
  ], !dbg !2022

37:                                               ; preds = %35
  %38 = load volatile i32, i32* inttoptr (i32 -2130563000 to i32*), align 8, !dbg !2023
  %39 = and i32 %38, -449, !dbg !2023
  store volatile i32 %39, i32* inttoptr (i32 -2130563000 to i32*), align 8, !dbg !2023
  %40 = lshr i8 %1, 1, !dbg !2026
  %41 = zext i8 %40 to i32, !dbg !2026
  %42 = shl nuw nsw i32 %41, 6, !dbg !2027
  %43 = add nsw i32 %42, -64, !dbg !2027
  %44 = load volatile i32, i32* inttoptr (i32 -2130563000 to i32*), align 8, !dbg !2028
  %45 = or i32 %44, %43, !dbg !2028
  store volatile i32 %45, i32* inttoptr (i32 -2130563000 to i32*), align 8, !dbg !2028
  %46 = load volatile i32, i32* inttoptr (i32 -2130563000 to i32*), align 8, !dbg !2029
  %47 = or i32 %46, 2048, !dbg !2029
  store volatile i32 %47, i32* inttoptr (i32 -2130563000 to i32*), align 8, !dbg !2029
  br label %131, !dbg !2030

48:                                               ; preds = %35
  %49 = load volatile i32, i32* inttoptr (i32 -2130562996 to i32*), align 4, !dbg !2031
  %50 = and i32 %49, -449, !dbg !2031
  store volatile i32 %50, i32* inttoptr (i32 -2130562996 to i32*), align 4, !dbg !2031
  %51 = lshr i8 %1, 1, !dbg !2034
  %52 = zext i8 %51 to i32, !dbg !2034
  %53 = shl nuw nsw i32 %52, 6, !dbg !2035
  %54 = add nsw i32 %53, -64, !dbg !2035
  %55 = load volatile i32, i32* inttoptr (i32 -2130562996 to i32*), align 4, !dbg !2036
  %56 = or i32 %55, %54, !dbg !2036
  store volatile i32 %56, i32* inttoptr (i32 -2130562996 to i32*), align 4, !dbg !2036
  %57 = load volatile i32, i32* inttoptr (i32 -2130562996 to i32*), align 4, !dbg !2037
  %58 = or i32 %57, 2048, !dbg !2037
  store volatile i32 %58, i32* inttoptr (i32 -2130562996 to i32*), align 4, !dbg !2037
  br label %131, !dbg !2038

59:                                               ; preds = %35
  %60 = load volatile i32, i32* inttoptr (i32 -2130562980 to i32*), align 4, !dbg !2039
  %61 = and i32 %60, -449, !dbg !2039
  store volatile i32 %61, i32* inttoptr (i32 -2130562980 to i32*), align 4, !dbg !2039
  %62 = lshr i8 %1, 1, !dbg !2042
  %63 = zext i8 %62 to i32, !dbg !2042
  %64 = shl nuw nsw i32 %63, 6, !dbg !2043
  %65 = add nsw i32 %64, -64, !dbg !2043
  %66 = load volatile i32, i32* inttoptr (i32 -2130562980 to i32*), align 4, !dbg !2044
  %67 = or i32 %66, %65, !dbg !2044
  store volatile i32 %67, i32* inttoptr (i32 -2130562980 to i32*), align 4, !dbg !2044
  %68 = load volatile i32, i32* inttoptr (i32 -2130562980 to i32*), align 4, !dbg !2045
  %69 = or i32 %68, 2048, !dbg !2045
  store volatile i32 %69, i32* inttoptr (i32 -2130562980 to i32*), align 4, !dbg !2045
  br label %131, !dbg !2046

70:                                               ; preds = %35
  %71 = load volatile i32, i32* inttoptr (i32 -2130562984 to i32*), align 8, !dbg !2047
  %72 = and i32 %71, -449, !dbg !2047
  store volatile i32 %72, i32* inttoptr (i32 -2130562984 to i32*), align 8, !dbg !2047
  %73 = lshr i8 %1, 1, !dbg !2050
  %74 = zext i8 %73 to i32, !dbg !2050
  %75 = shl nuw nsw i32 %74, 6, !dbg !2051
  %76 = add nsw i32 %75, -64, !dbg !2051
  %77 = load volatile i32, i32* inttoptr (i32 -2130562984 to i32*), align 8, !dbg !2052
  %78 = or i32 %77, %76, !dbg !2052
  store volatile i32 %78, i32* inttoptr (i32 -2130562984 to i32*), align 8, !dbg !2052
  %79 = load volatile i32, i32* inttoptr (i32 -2130562984 to i32*), align 8, !dbg !2053
  %80 = or i32 %79, 2048, !dbg !2053
  store volatile i32 %80, i32* inttoptr (i32 -2130562984 to i32*), align 8, !dbg !2053
  br label %131, !dbg !2054

81:                                               ; preds = %35
  %82 = load volatile i32, i32* inttoptr (i32 -2130562988 to i32*), align 4, !dbg !2055
  %83 = and i32 %82, -449, !dbg !2055
  store volatile i32 %83, i32* inttoptr (i32 -2130562988 to i32*), align 4, !dbg !2055
  %84 = lshr i8 %1, 1, !dbg !2058
  %85 = zext i8 %84 to i32, !dbg !2058
  %86 = shl nuw nsw i32 %85, 6, !dbg !2059
  %87 = add nsw i32 %86, -64, !dbg !2059
  %88 = load volatile i32, i32* inttoptr (i32 -2130562988 to i32*), align 4, !dbg !2060
  %89 = or i32 %88, %87, !dbg !2060
  store volatile i32 %89, i32* inttoptr (i32 -2130562988 to i32*), align 4, !dbg !2060
  %90 = load volatile i32, i32* inttoptr (i32 -2130562988 to i32*), align 4, !dbg !2061
  %91 = or i32 %90, 2048, !dbg !2061
  store volatile i32 %91, i32* inttoptr (i32 -2130562988 to i32*), align 4, !dbg !2061
  br label %131, !dbg !2062

92:                                               ; preds = %2
  %93 = icmp eq i16 %5, 0, !dbg !2063
  br i1 %93, label %94, label %105, !dbg !2065

94:                                               ; preds = %92
  %95 = load volatile i32, i32* inttoptr (i32 -2130562992 to i32*), align 16, !dbg !2066
  %96 = and i32 %95, -449, !dbg !2066
  store volatile i32 %96, i32* inttoptr (i32 -2130562992 to i32*), align 16, !dbg !2066
  %97 = lshr i8 %1, 1, !dbg !2068
  %98 = zext i8 %97 to i32, !dbg !2068
  %99 = shl nuw nsw i32 %98, 6, !dbg !2069
  %100 = add nsw i32 %99, -64, !dbg !2069
  %101 = load volatile i32, i32* inttoptr (i32 -2130562992 to i32*), align 16, !dbg !2070
  %102 = or i32 %101, %100, !dbg !2070
  store volatile i32 %102, i32* inttoptr (i32 -2130562992 to i32*), align 16, !dbg !2070
  %103 = load volatile i32, i32* inttoptr (i32 -2130562992 to i32*), align 16, !dbg !2071
  %104 = or i32 %103, 2048, !dbg !2071
  store volatile i32 %104, i32* inttoptr (i32 -2130562992 to i32*), align 16, !dbg !2071
  br label %131, !dbg !2072

105:                                              ; preds = %92
  %106 = shl nuw nsw i16 %5, 1, !dbg !2073
  %107 = zext i16 %106 to i32, !dbg !2073
  %108 = shl nuw i32 3, %107, !dbg !2075
  %109 = xor i32 %108, -1, !dbg !2076
  %110 = load volatile i32, i32* inttoptr (i32 -2097106728 to i32*), align 8, !dbg !2077
  %111 = and i32 %110, %109, !dbg !2077
  store volatile i32 %111, i32* inttoptr (i32 -2097106728 to i32*), align 8, !dbg !2077
  %112 = lshr i8 %1, 2, !dbg !2078
  %113 = zext i8 %112 to i32, !dbg !2078
  %114 = add nsw i32 %113, -1, !dbg !2079
  %115 = shl i32 %114, %107, !dbg !2080
  %116 = load volatile i32, i32* inttoptr (i32 -2097106728 to i32*), align 8, !dbg !2081
  %117 = or i32 %116, %115, !dbg !2081
  store volatile i32 %117, i32* inttoptr (i32 -2097106728 to i32*), align 8, !dbg !2081
  br label %131

118:                                              ; preds = %2
  %119 = shl nuw nsw i16 %5, 1, !dbg !2082
  %120 = zext i16 %119 to i32, !dbg !2082
  %121 = shl nuw i32 3, %120, !dbg !2083
  %122 = xor i32 %121, -1, !dbg !2084
  %123 = load volatile i32, i32* inttoptr (i32 -2097106724 to i32*), align 4, !dbg !2085
  %124 = and i32 %123, %122, !dbg !2085
  store volatile i32 %124, i32* inttoptr (i32 -2097106724 to i32*), align 4, !dbg !2085
  %125 = lshr i8 %1, 2, !dbg !2086
  %126 = zext i8 %125 to i32, !dbg !2086
  %127 = add nsw i32 %126, -1, !dbg !2087
  %128 = shl i32 %127, %120, !dbg !2088
  %129 = load volatile i32, i32* inttoptr (i32 -2097106724 to i32*), align 4, !dbg !2089
  %130 = or i32 %129, %128, !dbg !2089
  store volatile i32 %130, i32* inttoptr (i32 -2097106724 to i32*), align 4, !dbg !2089
  br label %131, !dbg !2090

131:                                              ; preds = %7, %118, %37, %59, %81, %70, %48, %22, %105, %94, %2
  %132 = phi i32 [ -1, %2 ], [ 0, %94 ], [ 0, %105 ], [ 0, %22 ], [ 0, %48 ], [ 0, %70 ], [ 0, %81 ], [ 0, %59 ], [ 0, %37 ], [ 0, %118 ], [ 0, %7 ], !dbg !1995
  ret i32 %132, !dbg !2091
}

; Function Attrs: mustprogress nofree noinline norecurse nounwind optsize willreturn
define dso_local i32 @halGPIO_GetDriving(i32 noundef %0, i8* nocapture noundef writeonly %1) local_unnamed_addr #4 !dbg !2092 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !2096, metadata !DIExpression()), !dbg !2101
  call void @llvm.dbg.value(metadata i8* %1, metadata !2097, metadata !DIExpression()), !dbg !2101
  %3 = lshr i32 %0, 4, !dbg !2102
  call void @llvm.dbg.value(metadata i32 %3, metadata !2098, metadata !DIExpression(DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 16, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !2101
  %4 = trunc i32 %0 to i16, !dbg !2103
  %5 = and i16 %4, 15, !dbg !2103
  call void @llvm.dbg.value(metadata i16 %4, metadata !2099, metadata !DIExpression(DW_OP_constu, 15, DW_OP_and, DW_OP_stack_value)), !dbg !2101
  %6 = trunc i32 %3 to i16, !dbg !2104
  switch i16 %6, label %91 [
    i16 0, label %7
    i16 1, label %17
    i16 2, label %61
    i16 3, label %79
  ], !dbg !2104

7:                                                ; preds = %2
  %8 = load volatile i32, i32* inttoptr (i32 -2097106736 to i32*), align 16, !dbg !2105
  call void @llvm.dbg.value(metadata i32 %8, metadata !2100, metadata !DIExpression()), !dbg !2101
  %9 = shl nuw nsw i16 %5, 1, !dbg !2107
  %10 = zext i16 %9 to i32, !dbg !2107
  %11 = shl nuw i32 3, %10, !dbg !2108
  %12 = and i32 %8, %11, !dbg !2109
  call void @llvm.dbg.value(metadata i32 %12, metadata !2100, metadata !DIExpression()), !dbg !2101
  %13 = lshr i32 %12, %10, !dbg !2110
  %14 = trunc i32 %13 to i8, !dbg !2111
  %15 = shl i8 %14, 2, !dbg !2111
  %16 = add i8 %15, 4, !dbg !2111
  br label %89, !dbg !2112

17:                                               ; preds = %2
  %18 = icmp ult i16 %5, 11, !dbg !2113
  br i1 %18, label %19, label %29, !dbg !2115

19:                                               ; preds = %17
  %20 = load volatile i32, i32* inttoptr (i32 -2097106732 to i32*), align 4, !dbg !2116
  call void @llvm.dbg.value(metadata i32 %20, metadata !2100, metadata !DIExpression()), !dbg !2101
  %21 = shl nuw nsw i16 %5, 1, !dbg !2118
  %22 = zext i16 %21 to i32, !dbg !2118
  %23 = shl nuw nsw i32 3, %22, !dbg !2119
  %24 = and i32 %20, %23, !dbg !2120
  call void @llvm.dbg.value(metadata i32 %24, metadata !2100, metadata !DIExpression()), !dbg !2101
  %25 = lshr i32 %24, %22, !dbg !2121
  %26 = trunc i32 %25 to i8, !dbg !2122
  %27 = shl i8 %26, 2, !dbg !2122
  %28 = add i8 %27, 4, !dbg !2122
  br label %89, !dbg !2123

29:                                               ; preds = %17
  %30 = trunc i32 %0 to i4, !dbg !2124
  switch i4 %30, label %55 [
    i4 -5, label %31
    i4 -4, label %37
    i4 -3, label %43
    i4 -2, label %49
  ], !dbg !2124

31:                                               ; preds = %29
  %32 = load volatile i32, i32* inttoptr (i32 -2130563000 to i32*), align 8, !dbg !2125
  call void @llvm.dbg.value(metadata i32 %32, metadata !2100, metadata !DIExpression()), !dbg !2101
  call void @llvm.dbg.value(metadata i32 %32, metadata !2100, metadata !DIExpression(DW_OP_constu, 448, DW_OP_and, DW_OP_stack_value)), !dbg !2101
  %33 = lshr i32 %32, 5, !dbg !2128
  %34 = trunc i32 %33 to i8, !dbg !2129
  %35 = and i8 %34, 14, !dbg !2129
  %36 = add nuw nsw i8 %35, 2, !dbg !2129
  br label %89, !dbg !2130

37:                                               ; preds = %29
  %38 = load volatile i32, i32* inttoptr (i32 -2130562996 to i32*), align 4, !dbg !2131
  call void @llvm.dbg.value(metadata i32 %38, metadata !2100, metadata !DIExpression()), !dbg !2101
  call void @llvm.dbg.value(metadata i32 %38, metadata !2100, metadata !DIExpression(DW_OP_constu, 448, DW_OP_and, DW_OP_stack_value)), !dbg !2101
  %39 = lshr i32 %38, 5, !dbg !2134
  %40 = trunc i32 %39 to i8, !dbg !2135
  %41 = and i8 %40, 14, !dbg !2135
  %42 = add nuw nsw i8 %41, 2, !dbg !2135
  br label %89, !dbg !2136

43:                                               ; preds = %29
  %44 = load volatile i32, i32* inttoptr (i32 -2130562980 to i32*), align 4, !dbg !2137
  call void @llvm.dbg.value(metadata i32 %44, metadata !2100, metadata !DIExpression()), !dbg !2101
  call void @llvm.dbg.value(metadata i32 %44, metadata !2100, metadata !DIExpression(DW_OP_constu, 448, DW_OP_and, DW_OP_stack_value)), !dbg !2101
  %45 = lshr i32 %44, 5, !dbg !2140
  %46 = trunc i32 %45 to i8, !dbg !2141
  %47 = and i8 %46, 14, !dbg !2141
  %48 = add nuw nsw i8 %47, 2, !dbg !2141
  br label %89, !dbg !2142

49:                                               ; preds = %29
  %50 = load volatile i32, i32* inttoptr (i32 -2130562984 to i32*), align 8, !dbg !2143
  call void @llvm.dbg.value(metadata i32 %50, metadata !2100, metadata !DIExpression()), !dbg !2101
  call void @llvm.dbg.value(metadata i32 %50, metadata !2100, metadata !DIExpression(DW_OP_constu, 448, DW_OP_and, DW_OP_stack_value)), !dbg !2101
  %51 = lshr i32 %50, 5, !dbg !2146
  %52 = trunc i32 %51 to i8, !dbg !2147
  %53 = and i8 %52, 14, !dbg !2147
  %54 = add nuw nsw i8 %53, 2, !dbg !2147
  br label %89, !dbg !2148

55:                                               ; preds = %29
  %56 = load volatile i32, i32* inttoptr (i32 -2130562988 to i32*), align 4, !dbg !2149
  call void @llvm.dbg.value(metadata i32 %56, metadata !2100, metadata !DIExpression()), !dbg !2101
  call void @llvm.dbg.value(metadata i32 %56, metadata !2100, metadata !DIExpression(DW_OP_constu, 448, DW_OP_and, DW_OP_stack_value)), !dbg !2101
  %57 = lshr i32 %56, 5, !dbg !2152
  %58 = trunc i32 %57 to i8, !dbg !2153
  %59 = and i8 %58, 14, !dbg !2153
  %60 = add nuw nsw i8 %59, 2, !dbg !2153
  br label %89, !dbg !2154

61:                                               ; preds = %2
  %62 = icmp eq i16 %5, 0, !dbg !2155
  br i1 %62, label %63, label %69, !dbg !2157

63:                                               ; preds = %61
  %64 = load volatile i32, i32* inttoptr (i32 -2130562992 to i32*), align 16, !dbg !2158
  call void @llvm.dbg.value(metadata i32 %64, metadata !2100, metadata !DIExpression()), !dbg !2101
  call void @llvm.dbg.value(metadata i32 %64, metadata !2100, metadata !DIExpression(DW_OP_constu, 448, DW_OP_and, DW_OP_stack_value)), !dbg !2101
  %65 = lshr i32 %64, 5, !dbg !2160
  %66 = trunc i32 %65 to i8, !dbg !2161
  %67 = and i8 %66, 14, !dbg !2161
  %68 = add nuw nsw i8 %67, 2, !dbg !2161
  br label %89, !dbg !2162

69:                                               ; preds = %61
  %70 = load volatile i32, i32* inttoptr (i32 -2097106728 to i32*), align 8, !dbg !2163
  call void @llvm.dbg.value(metadata i32 %70, metadata !2100, metadata !DIExpression()), !dbg !2101
  %71 = shl nuw nsw i16 %5, 1, !dbg !2165
  %72 = zext i16 %71 to i32, !dbg !2165
  %73 = shl nuw i32 3, %72, !dbg !2166
  %74 = and i32 %70, %73, !dbg !2167
  call void @llvm.dbg.value(metadata i32 %74, metadata !2100, metadata !DIExpression()), !dbg !2101
  %75 = lshr i32 %74, %72, !dbg !2168
  %76 = trunc i32 %75 to i8, !dbg !2169
  %77 = shl i8 %76, 2, !dbg !2169
  %78 = add i8 %77, 4, !dbg !2169
  br label %89

79:                                               ; preds = %2
  %80 = load volatile i32, i32* inttoptr (i32 -2097106724 to i32*), align 4, !dbg !2170
  call void @llvm.dbg.value(metadata i32 %80, metadata !2100, metadata !DIExpression()), !dbg !2101
  %81 = shl nuw nsw i16 %5, 1, !dbg !2171
  %82 = zext i16 %81 to i32, !dbg !2171
  %83 = shl nuw i32 3, %82, !dbg !2172
  %84 = and i32 %80, %83, !dbg !2173
  call void @llvm.dbg.value(metadata i32 %84, metadata !2100, metadata !DIExpression()), !dbg !2101
  %85 = lshr i32 %84, %82, !dbg !2174
  %86 = trunc i32 %85 to i8, !dbg !2175
  %87 = shl i8 %86, 2, !dbg !2175
  %88 = add i8 %87, 4, !dbg !2175
  br label %89, !dbg !2176

89:                                               ; preds = %63, %69, %19, %37, %49, %55, %43, %31, %79, %7
  %90 = phi i8 [ %16, %7 ], [ %88, %79 ], [ %36, %31 ], [ %48, %43 ], [ %60, %55 ], [ %54, %49 ], [ %42, %37 ], [ %28, %19 ], [ %78, %69 ], [ %68, %63 ]
  store i8 %90, i8* %1, align 1, !dbg !2177
  br label %91, !dbg !2178

91:                                               ; preds = %89, %2
  %92 = phi i32 [ -1, %2 ], [ 0, %89 ], !dbg !2101
  ret i32 %92, !dbg !2178
}

; Function Attrs: nofree noinline norecurse nounwind optsize
define dso_local void @topPAD_Control_GPIO(i32 noundef %0, i32 noundef %1) local_unnamed_addr #3 !dbg !2179 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !2184, metadata !DIExpression()), !dbg !2188
  call void @llvm.dbg.value(metadata i32 %1, metadata !2185, metadata !DIExpression()), !dbg !2188
  %3 = lshr i32 %0, 5, !dbg !2189
  call void @llvm.dbg.value(metadata i32 %3, metadata !2186, metadata !DIExpression(DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 16, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !2188
  %4 = trunc i32 %0 to i16, !dbg !2190
  %5 = and i16 %4, 31, !dbg !2190
  call void @llvm.dbg.value(metadata i16 %5, metadata !2187, metadata !DIExpression()), !dbg !2188
  switch i32 %1, label %32 [
    i32 1, label %6
    i32 0, label %18
  ], !dbg !2191

6:                                                ; preds = %2
  call void @llvm.dbg.value(metadata i32 %3, metadata !2186, metadata !DIExpression()), !dbg !2188
  %7 = trunc i32 %3 to i16, !dbg !2192
  switch i16 %7, label %32 [
    i16 0, label %8
    i16 1, label %13
  ], !dbg !2192

8:                                                ; preds = %6
  %9 = zext i16 %5 to i32, !dbg !2195
  %10 = shl nuw i32 1, %9, !dbg !2197
  %11 = load volatile i32, i32* inttoptr (i32 -2130571136 to i32*), align 128, !dbg !2198
  %12 = or i32 %11, %10, !dbg !2198
  store volatile i32 %12, i32* inttoptr (i32 -2130571136 to i32*), align 128, !dbg !2198
  br label %32, !dbg !2199

13:                                               ; preds = %6
  %14 = zext i16 %5 to i32, !dbg !2200
  %15 = shl nuw i32 1, %14, !dbg !2201
  %16 = load volatile i32, i32* inttoptr (i32 -2130571132 to i32*), align 4, !dbg !2202
  %17 = or i32 %16, %15, !dbg !2202
  store volatile i32 %17, i32* inttoptr (i32 -2130571132 to i32*), align 4, !dbg !2202
  br label %32, !dbg !2203

18:                                               ; preds = %2
  %19 = trunc i32 %3 to i16, !dbg !2204
  switch i16 %19, label %32 [
    i16 0, label %20
    i16 1, label %26
  ], !dbg !2204

20:                                               ; preds = %18
  %21 = zext i16 %5 to i32, !dbg !2207
  %22 = shl nuw i32 1, %21, !dbg !2209
  %23 = xor i32 %22, -1, !dbg !2210
  %24 = load volatile i32, i32* inttoptr (i32 -2130571136 to i32*), align 128, !dbg !2211
  %25 = and i32 %24, %23, !dbg !2211
  store volatile i32 %25, i32* inttoptr (i32 -2130571136 to i32*), align 128, !dbg !2211
  br label %32, !dbg !2212

26:                                               ; preds = %18
  %27 = zext i16 %5 to i32, !dbg !2213
  %28 = shl nuw i32 1, %27, !dbg !2214
  %29 = xor i32 %28, -1, !dbg !2215
  %30 = load volatile i32, i32* inttoptr (i32 -2130571132 to i32*), align 4, !dbg !2216
  %31 = and i32 %30, %29, !dbg !2216
  store volatile i32 %31, i32* inttoptr (i32 -2130571132 to i32*), align 4, !dbg !2216
  br label %32, !dbg !2217

32:                                               ; preds = %2, %18, %26, %20, %8, %13, %6
  ret void, !dbg !2218
}

; Function Attrs: noinline nounwind optsize
define dso_local void @halPinmuxTopOnPadFunc(i32 noundef %0, i8 noundef zeroext %1) local_unnamed_addr #0 !dbg !2219 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !2225, metadata !DIExpression()), !dbg !2228
  call void @llvm.dbg.value(metadata i8 %1, metadata !2226, metadata !DIExpression()), !dbg !2228
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
  ], !dbg !2229

3:                                                ; preds = %2
  %4 = load volatile i32, i32* inttoptr (i32 -2130563040 to i32*), align 32, !dbg !2230
  call void @llvm.dbg.value(metadata i32 %4, metadata !2227, metadata !DIExpression()), !dbg !2228
  %5 = and i32 %4, -16, !dbg !2232
  call void @llvm.dbg.value(metadata i32 %5, metadata !2227, metadata !DIExpression()), !dbg !2228
  %6 = zext i8 %1 to i32, !dbg !2233
  %7 = or i32 %5, %6, !dbg !2234
  store volatile i32 %7, i32* inttoptr (i32 -2130563040 to i32*), align 32, !dbg !2235
  br label %187, !dbg !2236

8:                                                ; preds = %2
  %9 = load volatile i32, i32* inttoptr (i32 -2130563040 to i32*), align 32, !dbg !2237
  call void @llvm.dbg.value(metadata i32 %9, metadata !2227, metadata !DIExpression()), !dbg !2228
  %10 = and i32 %9, -241, !dbg !2238
  call void @llvm.dbg.value(metadata i32 %10, metadata !2227, metadata !DIExpression()), !dbg !2228
  %11 = zext i8 %1 to i32, !dbg !2239
  %12 = shl nuw nsw i32 %11, 4, !dbg !2240
  %13 = or i32 %10, %12, !dbg !2241
  store volatile i32 %13, i32* inttoptr (i32 -2130563040 to i32*), align 32, !dbg !2242
  br label %187, !dbg !2243

14:                                               ; preds = %2
  %15 = load volatile i32, i32* inttoptr (i32 -2130563040 to i32*), align 32, !dbg !2244
  call void @llvm.dbg.value(metadata i32 %15, metadata !2227, metadata !DIExpression()), !dbg !2228
  %16 = and i32 %15, -3841, !dbg !2245
  call void @llvm.dbg.value(metadata i32 %16, metadata !2227, metadata !DIExpression()), !dbg !2228
  %17 = zext i8 %1 to i32, !dbg !2246
  %18 = shl nuw nsw i32 %17, 8, !dbg !2247
  %19 = or i32 %16, %18, !dbg !2248
  store volatile i32 %19, i32* inttoptr (i32 -2130563040 to i32*), align 32, !dbg !2249
  br label %187, !dbg !2250

20:                                               ; preds = %2
  %21 = load volatile i32, i32* inttoptr (i32 -2130563040 to i32*), align 32, !dbg !2251
  call void @llvm.dbg.value(metadata i32 %21, metadata !2227, metadata !DIExpression()), !dbg !2228
  %22 = and i32 %21, -61441, !dbg !2252
  call void @llvm.dbg.value(metadata i32 %22, metadata !2227, metadata !DIExpression()), !dbg !2228
  %23 = zext i8 %1 to i32, !dbg !2253
  %24 = shl nuw nsw i32 %23, 12, !dbg !2254
  %25 = or i32 %22, %24, !dbg !2255
  store volatile i32 %25, i32* inttoptr (i32 -2130563040 to i32*), align 32, !dbg !2256
  br label %187, !dbg !2257

26:                                               ; preds = %2
  %27 = load volatile i32, i32* inttoptr (i32 -2130563040 to i32*), align 32, !dbg !2258
  call void @llvm.dbg.value(metadata i32 %27, metadata !2227, metadata !DIExpression()), !dbg !2228
  %28 = and i32 %27, -983041, !dbg !2259
  call void @llvm.dbg.value(metadata i32 %28, metadata !2227, metadata !DIExpression()), !dbg !2228
  %29 = zext i8 %1 to i32, !dbg !2260
  %30 = shl nuw nsw i32 %29, 16, !dbg !2261
  %31 = or i32 %28, %30, !dbg !2262
  store volatile i32 %31, i32* inttoptr (i32 -2130563040 to i32*), align 32, !dbg !2263
  br label %187, !dbg !2264

32:                                               ; preds = %2
  %33 = load volatile i32, i32* inttoptr (i32 -2130563040 to i32*), align 32, !dbg !2265
  call void @llvm.dbg.value(metadata i32 %33, metadata !2227, metadata !DIExpression()), !dbg !2228
  %34 = and i32 %33, -15728641, !dbg !2266
  call void @llvm.dbg.value(metadata i32 %34, metadata !2227, metadata !DIExpression()), !dbg !2228
  %35 = zext i8 %1 to i32, !dbg !2267
  %36 = shl nuw nsw i32 %35, 20, !dbg !2268
  %37 = or i32 %34, %36, !dbg !2269
  store volatile i32 %37, i32* inttoptr (i32 -2130563040 to i32*), align 32, !dbg !2270
  br label %187, !dbg !2271

38:                                               ; preds = %2
  %39 = load volatile i32, i32* inttoptr (i32 -2130563040 to i32*), align 32, !dbg !2272
  call void @llvm.dbg.value(metadata i32 %39, metadata !2227, metadata !DIExpression()), !dbg !2228
  %40 = and i32 %39, -251658241, !dbg !2273
  call void @llvm.dbg.value(metadata i32 %40, metadata !2227, metadata !DIExpression()), !dbg !2228
  %41 = zext i8 %1 to i32, !dbg !2274
  %42 = shl nuw i32 %41, 24, !dbg !2275
  %43 = or i32 %40, %42, !dbg !2276
  store volatile i32 %43, i32* inttoptr (i32 -2130563040 to i32*), align 32, !dbg !2277
  br label %187, !dbg !2278

44:                                               ; preds = %2
  %45 = load volatile i32, i32* inttoptr (i32 -2130563040 to i32*), align 32, !dbg !2279
  call void @llvm.dbg.value(metadata i32 %45, metadata !2227, metadata !DIExpression()), !dbg !2228
  %46 = and i32 %45, 268435455, !dbg !2280
  call void @llvm.dbg.value(metadata i32 %46, metadata !2227, metadata !DIExpression()), !dbg !2228
  %47 = zext i8 %1 to i32, !dbg !2281
  %48 = shl i32 %47, 28, !dbg !2282
  %49 = or i32 %46, %48, !dbg !2283
  store volatile i32 %49, i32* inttoptr (i32 -2130563040 to i32*), align 32, !dbg !2284
  br label %187, !dbg !2285

50:                                               ; preds = %2
  %51 = load volatile i32, i32* inttoptr (i32 -2130563028 to i32*), align 4, !dbg !2286
  call void @llvm.dbg.value(metadata i32 %51, metadata !2227, metadata !DIExpression()), !dbg !2228
  %52 = and i32 %51, -16, !dbg !2287
  call void @llvm.dbg.value(metadata i32 %52, metadata !2227, metadata !DIExpression()), !dbg !2228
  %53 = zext i8 %1 to i32, !dbg !2288
  %54 = or i32 %52, %53, !dbg !2289
  store volatile i32 %54, i32* inttoptr (i32 -2130563028 to i32*), align 4, !dbg !2290
  br label %187, !dbg !2291

55:                                               ; preds = %2
  %56 = load volatile i32, i32* inttoptr (i32 -2130563028 to i32*), align 4, !dbg !2292
  call void @llvm.dbg.value(metadata i32 %56, metadata !2227, metadata !DIExpression()), !dbg !2228
  %57 = and i32 %56, -241, !dbg !2293
  call void @llvm.dbg.value(metadata i32 %57, metadata !2227, metadata !DIExpression()), !dbg !2228
  %58 = zext i8 %1 to i32, !dbg !2294
  %59 = shl nuw nsw i32 %58, 4, !dbg !2295
  %60 = or i32 %57, %59, !dbg !2296
  store volatile i32 %60, i32* inttoptr (i32 -2130563028 to i32*), align 4, !dbg !2297
  br label %187, !dbg !2298

61:                                               ; preds = %2
  %62 = load volatile i32, i32* inttoptr (i32 -2130563028 to i32*), align 4, !dbg !2299
  call void @llvm.dbg.value(metadata i32 %62, metadata !2227, metadata !DIExpression()), !dbg !2228
  %63 = and i32 %62, -3841, !dbg !2300
  call void @llvm.dbg.value(metadata i32 %63, metadata !2227, metadata !DIExpression()), !dbg !2228
  %64 = zext i8 %1 to i32, !dbg !2301
  %65 = shl nuw nsw i32 %64, 8, !dbg !2302
  %66 = or i32 %63, %65, !dbg !2303
  store volatile i32 %66, i32* inttoptr (i32 -2130563028 to i32*), align 4, !dbg !2304
  br label %187, !dbg !2305

67:                                               ; preds = %2
  %68 = load volatile i32, i32* inttoptr (i32 -2130563028 to i32*), align 4, !dbg !2306
  call void @llvm.dbg.value(metadata i32 %68, metadata !2227, metadata !DIExpression()), !dbg !2228
  %69 = and i32 %68, -61441, !dbg !2307
  call void @llvm.dbg.value(metadata i32 %69, metadata !2227, metadata !DIExpression()), !dbg !2228
  %70 = zext i8 %1 to i32, !dbg !2308
  %71 = shl nuw nsw i32 %70, 12, !dbg !2309
  %72 = or i32 %69, %71, !dbg !2310
  store volatile i32 %72, i32* inttoptr (i32 -2130563028 to i32*), align 4, !dbg !2311
  switch i8 %1, label %187 [
    i8 5, label %73
    i8 4, label %73
    i8 2, label %73
  ], !dbg !2312

73:                                               ; preds = %67, %67, %67
  %74 = tail call i32 @halGPIO_ConfDirection(i32 noundef 27, i8 noundef zeroext 0) #13, !dbg !2314
  br label %187, !dbg !2316

75:                                               ; preds = %2
  %76 = load volatile i32, i32* inttoptr (i32 -2130563028 to i32*), align 4, !dbg !2317
  call void @llvm.dbg.value(metadata i32 %76, metadata !2227, metadata !DIExpression()), !dbg !2228
  %77 = and i32 %76, -983041, !dbg !2318
  call void @llvm.dbg.value(metadata i32 %77, metadata !2227, metadata !DIExpression()), !dbg !2228
  %78 = zext i8 %1 to i32, !dbg !2319
  %79 = shl nuw nsw i32 %78, 16, !dbg !2320
  %80 = or i32 %77, %79, !dbg !2321
  store volatile i32 %80, i32* inttoptr (i32 -2130563028 to i32*), align 4, !dbg !2322
  %81 = and i8 %1, -2, !dbg !2323
  %82 = icmp eq i8 %81, 4, !dbg !2323
  br i1 %82, label %83, label %187, !dbg !2323

83:                                               ; preds = %75
  %84 = tail call i32 @halGPIO_ConfDirection(i32 noundef 28, i8 noundef zeroext 0) #13, !dbg !2325
  br label %187, !dbg !2327

85:                                               ; preds = %2
  %86 = load volatile i32, i32* inttoptr (i32 -2130563028 to i32*), align 4, !dbg !2328
  call void @llvm.dbg.value(metadata i32 %86, metadata !2227, metadata !DIExpression()), !dbg !2228
  %87 = and i32 %86, -15728641, !dbg !2329
  call void @llvm.dbg.value(metadata i32 %87, metadata !2227, metadata !DIExpression()), !dbg !2228
  %88 = zext i8 %1 to i32, !dbg !2330
  %89 = shl nuw nsw i32 %88, 20, !dbg !2331
  %90 = or i32 %87, %89, !dbg !2332
  store volatile i32 %90, i32* inttoptr (i32 -2130563028 to i32*), align 4, !dbg !2333
  %91 = icmp eq i8 %1, 6, !dbg !2334
  br i1 %91, label %92, label %187, !dbg !2336

92:                                               ; preds = %85
  %93 = tail call i32 @halGPIO_ConfDirection(i32 noundef 29, i8 noundef zeroext 0) #13, !dbg !2337
  br label %187, !dbg !2339

94:                                               ; preds = %2
  %95 = load volatile i32, i32* inttoptr (i32 -2130563028 to i32*), align 4, !dbg !2340
  call void @llvm.dbg.value(metadata i32 %95, metadata !2227, metadata !DIExpression()), !dbg !2228
  %96 = and i32 %95, -251658241, !dbg !2341
  call void @llvm.dbg.value(metadata i32 %96, metadata !2227, metadata !DIExpression()), !dbg !2228
  %97 = zext i8 %1 to i32, !dbg !2342
  %98 = shl nuw i32 %97, 24, !dbg !2343
  %99 = or i32 %96, %98, !dbg !2344
  store volatile i32 %99, i32* inttoptr (i32 -2130563028 to i32*), align 4, !dbg !2345
  switch i8 %1, label %187 [
    i8 7, label %100
    i8 4, label %100
  ], !dbg !2346

100:                                              ; preds = %94, %94
  %101 = tail call i32 @halGPIO_ConfDirection(i32 noundef 30, i8 noundef zeroext 0) #13, !dbg !2348
  br label %187, !dbg !2350

102:                                              ; preds = %2
  %103 = load volatile i32, i32* inttoptr (i32 -2130563028 to i32*), align 4, !dbg !2351
  call void @llvm.dbg.value(metadata i32 %103, metadata !2227, metadata !DIExpression()), !dbg !2228
  %104 = and i32 %103, 268435455, !dbg !2352
  call void @llvm.dbg.value(metadata i32 %104, metadata !2227, metadata !DIExpression()), !dbg !2228
  %105 = zext i8 %1 to i32, !dbg !2353
  %106 = shl i32 %105, 28, !dbg !2354
  %107 = or i32 %104, %106, !dbg !2355
  store volatile i32 %107, i32* inttoptr (i32 -2130563028 to i32*), align 4, !dbg !2356
  %108 = and i8 %1, -3, !dbg !2357
  %109 = icmp eq i8 %108, 4, !dbg !2357
  br i1 %109, label %110, label %187, !dbg !2357

110:                                              ; preds = %102
  %111 = tail call i32 @halGPIO_ConfDirection(i32 noundef 31, i8 noundef zeroext 0) #13, !dbg !2359
  br label %187, !dbg !2361

112:                                              ; preds = %2
  %113 = load volatile i32, i32* inttoptr (i32 -2130563024 to i32*), align 16, !dbg !2362
  call void @llvm.dbg.value(metadata i32 %113, metadata !2227, metadata !DIExpression()), !dbg !2228
  %114 = and i32 %113, -16, !dbg !2363
  call void @llvm.dbg.value(metadata i32 %114, metadata !2227, metadata !DIExpression()), !dbg !2228
  %115 = zext i8 %1 to i32, !dbg !2364
  %116 = or i32 %114, %115, !dbg !2365
  store volatile i32 %116, i32* inttoptr (i32 -2130563024 to i32*), align 16, !dbg !2366
  %117 = and i8 %1, -3, !dbg !2367
  %118 = icmp eq i8 %117, 4, !dbg !2367
  br i1 %118, label %119, label %187, !dbg !2367

119:                                              ; preds = %112
  %120 = tail call i32 @halGPIO_ConfDirection(i32 noundef 32, i8 noundef zeroext 0) #13, !dbg !2369
  br label %187, !dbg !2371

121:                                              ; preds = %2
  %122 = load volatile i32, i32* inttoptr (i32 -2130563024 to i32*), align 16, !dbg !2372
  call void @llvm.dbg.value(metadata i32 %122, metadata !2227, metadata !DIExpression()), !dbg !2228
  %123 = and i32 %122, -241, !dbg !2373
  call void @llvm.dbg.value(metadata i32 %123, metadata !2227, metadata !DIExpression()), !dbg !2228
  %124 = zext i8 %1 to i32, !dbg !2374
  %125 = shl nuw nsw i32 %124, 4, !dbg !2375
  %126 = or i32 %123, %125, !dbg !2376
  store volatile i32 %126, i32* inttoptr (i32 -2130563024 to i32*), align 16, !dbg !2377
  br label %187, !dbg !2378

127:                                              ; preds = %2
  %128 = load volatile i32, i32* inttoptr (i32 -2130563024 to i32*), align 16, !dbg !2379
  call void @llvm.dbg.value(metadata i32 %128, metadata !2227, metadata !DIExpression()), !dbg !2228
  %129 = and i32 %128, -3841, !dbg !2380
  call void @llvm.dbg.value(metadata i32 %129, metadata !2227, metadata !DIExpression()), !dbg !2228
  %130 = zext i8 %1 to i32, !dbg !2381
  %131 = shl nuw nsw i32 %130, 8, !dbg !2382
  %132 = or i32 %129, %131, !dbg !2383
  store volatile i32 %132, i32* inttoptr (i32 -2130563024 to i32*), align 16, !dbg !2384
  br label %187, !dbg !2385

133:                                              ; preds = %2
  %134 = load volatile i32, i32* inttoptr (i32 -2130563024 to i32*), align 16, !dbg !2386
  call void @llvm.dbg.value(metadata i32 %134, metadata !2227, metadata !DIExpression()), !dbg !2228
  %135 = and i32 %134, -61441, !dbg !2387
  call void @llvm.dbg.value(metadata i32 %135, metadata !2227, metadata !DIExpression()), !dbg !2228
  %136 = zext i8 %1 to i32, !dbg !2388
  %137 = shl nuw nsw i32 %136, 12, !dbg !2389
  %138 = or i32 %135, %137, !dbg !2390
  store volatile i32 %138, i32* inttoptr (i32 -2130563024 to i32*), align 16, !dbg !2391
  br label %187, !dbg !2392

139:                                              ; preds = %2
  %140 = load volatile i32, i32* inttoptr (i32 -2130563024 to i32*), align 16, !dbg !2393
  call void @llvm.dbg.value(metadata i32 %140, metadata !2227, metadata !DIExpression()), !dbg !2228
  %141 = and i32 %140, -983041, !dbg !2394
  call void @llvm.dbg.value(metadata i32 %141, metadata !2227, metadata !DIExpression()), !dbg !2228
  %142 = zext i8 %1 to i32, !dbg !2395
  %143 = shl nuw nsw i32 %142, 16, !dbg !2396
  %144 = or i32 %141, %143, !dbg !2397
  store volatile i32 %144, i32* inttoptr (i32 -2130563024 to i32*), align 16, !dbg !2398
  br label %187, !dbg !2399

145:                                              ; preds = %2
  %146 = load volatile i32, i32* inttoptr (i32 -2130563024 to i32*), align 16, !dbg !2400
  call void @llvm.dbg.value(metadata i32 %146, metadata !2227, metadata !DIExpression()), !dbg !2228
  %147 = and i32 %146, -15728641, !dbg !2401
  call void @llvm.dbg.value(metadata i32 %147, metadata !2227, metadata !DIExpression()), !dbg !2228
  %148 = zext i8 %1 to i32, !dbg !2402
  %149 = shl nuw nsw i32 %148, 20, !dbg !2403
  %150 = or i32 %147, %149, !dbg !2404
  store volatile i32 %150, i32* inttoptr (i32 -2130563024 to i32*), align 16, !dbg !2405
  br label %187, !dbg !2406

151:                                              ; preds = %2
  %152 = load volatile i32, i32* inttoptr (i32 -2130563024 to i32*), align 16, !dbg !2407
  call void @llvm.dbg.value(metadata i32 %152, metadata !2227, metadata !DIExpression()), !dbg !2228
  %153 = and i32 %152, -251658241, !dbg !2408
  call void @llvm.dbg.value(metadata i32 %153, metadata !2227, metadata !DIExpression()), !dbg !2228
  %154 = zext i8 %1 to i32, !dbg !2409
  %155 = shl nuw i32 %154, 24, !dbg !2410
  %156 = or i32 %153, %155, !dbg !2411
  store volatile i32 %156, i32* inttoptr (i32 -2130563024 to i32*), align 16, !dbg !2412
  br label %187, !dbg !2413

157:                                              ; preds = %2
  %158 = load volatile i32, i32* inttoptr (i32 -2130563024 to i32*), align 16, !dbg !2414
  call void @llvm.dbg.value(metadata i32 %158, metadata !2227, metadata !DIExpression()), !dbg !2228
  %159 = and i32 %158, 268435455, !dbg !2415
  call void @llvm.dbg.value(metadata i32 %159, metadata !2227, metadata !DIExpression()), !dbg !2228
  %160 = zext i8 %1 to i32, !dbg !2416
  %161 = shl i32 %160, 28, !dbg !2417
  %162 = or i32 %159, %161, !dbg !2418
  store volatile i32 %162, i32* inttoptr (i32 -2130563024 to i32*), align 16, !dbg !2419
  br label %187, !dbg !2420

163:                                              ; preds = %2
  %164 = load volatile i32, i32* inttoptr (i32 -2130563012 to i32*), align 4, !dbg !2421
  call void @llvm.dbg.value(metadata i32 %164, metadata !2227, metadata !DIExpression()), !dbg !2228
  %165 = and i32 %164, -241, !dbg !2422
  call void @llvm.dbg.value(metadata i32 %165, metadata !2227, metadata !DIExpression()), !dbg !2228
  %166 = zext i8 %1 to i32, !dbg !2423
  %167 = shl nuw nsw i32 %166, 4, !dbg !2424
  %168 = or i32 %165, %167, !dbg !2425
  store volatile i32 %168, i32* inttoptr (i32 -2130563012 to i32*), align 4, !dbg !2426
  br label %187, !dbg !2427

169:                                              ; preds = %2
  %170 = load volatile i32, i32* inttoptr (i32 -2130563012 to i32*), align 4, !dbg !2428
  call void @llvm.dbg.value(metadata i32 %170, metadata !2227, metadata !DIExpression()), !dbg !2228
  %171 = and i32 %170, -3841, !dbg !2429
  call void @llvm.dbg.value(metadata i32 %171, metadata !2227, metadata !DIExpression()), !dbg !2228
  %172 = zext i8 %1 to i32, !dbg !2430
  %173 = shl nuw nsw i32 %172, 8, !dbg !2431
  %174 = or i32 %171, %173, !dbg !2432
  store volatile i32 %174, i32* inttoptr (i32 -2130563012 to i32*), align 4, !dbg !2433
  br label %187, !dbg !2434

175:                                              ; preds = %2
  %176 = load volatile i32, i32* inttoptr (i32 -2130563012 to i32*), align 4, !dbg !2435
  call void @llvm.dbg.value(metadata i32 %176, metadata !2227, metadata !DIExpression()), !dbg !2228
  %177 = and i32 %176, -61441, !dbg !2436
  call void @llvm.dbg.value(metadata i32 %177, metadata !2227, metadata !DIExpression()), !dbg !2228
  %178 = zext i8 %1 to i32, !dbg !2437
  %179 = shl nuw nsw i32 %178, 12, !dbg !2438
  %180 = or i32 %177, %179, !dbg !2439
  store volatile i32 %180, i32* inttoptr (i32 -2130563012 to i32*), align 4, !dbg !2440
  br label %187, !dbg !2441

181:                                              ; preds = %2
  %182 = load volatile i32, i32* inttoptr (i32 -2130563012 to i32*), align 4, !dbg !2442
  call void @llvm.dbg.value(metadata i32 %182, metadata !2227, metadata !DIExpression()), !dbg !2228
  %183 = and i32 %182, -983041, !dbg !2443
  call void @llvm.dbg.value(metadata i32 %183, metadata !2227, metadata !DIExpression()), !dbg !2228
  %184 = zext i8 %1 to i32, !dbg !2444
  %185 = shl nuw nsw i32 %184, 16, !dbg !2445
  %186 = or i32 %183, %185, !dbg !2446
  store volatile i32 %186, i32* inttoptr (i32 -2130563012 to i32*), align 4, !dbg !2447
  br label %187, !dbg !2448

187:                                              ; preds = %94, %67, %2, %119, %112, %110, %102, %100, %85, %92, %83, %75, %73, %181, %175, %169, %163, %157, %151, %145, %139, %133, %127, %121, %61, %55, %50, %44, %38, %32, %26, %20, %14, %8, %3
  ret void, !dbg !2449
}

; Function Attrs: noinline nounwind optsize
define dso_local void @NVIC_SetupVectorTable(i32 noundef %0) local_unnamed_addr #0 !dbg !2450 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !2454, metadata !DIExpression()), !dbg !2455
  store volatile i32 %0, i32* inttoptr (i32 -536810232 to i32*), align 8, !dbg !2456
  tail call void asm sideeffect "dsb", ""() #15, !dbg !2457, !srcloc !2458
  tail call void asm sideeffect "isb", ""() #15, !dbg !2459, !srcloc !2460
  ret void, !dbg !2461
}

; Function Attrs: nofree noinline norecurse nounwind optsize
define dso_local void @NVIC_SWInt(i32 noundef %0) local_unnamed_addr #3 !dbg !2462 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !2466, metadata !DIExpression()), !dbg !2467
  store volatile i32 %0, i32* inttoptr (i32 -536809728 to i32*), align 256, !dbg !2468
  ret void, !dbg !2469
}

; Function Attrs: noinline nounwind optsize
define dso_local i32 @save_and_set_interrupt_mask() local_unnamed_addr #0 section ".ramTEXT" !dbg !2470 {
  %1 = tail call i32 asm sideeffect "MRS $0, primask", "=r"() #15, !dbg !2475, !srcloc !2482
  call void @llvm.dbg.value(metadata i32 %1, metadata !2479, metadata !DIExpression()) #15, !dbg !2483
  call void @llvm.dbg.value(metadata i32 %1, metadata !2474, metadata !DIExpression()), !dbg !2484
  tail call void asm sideeffect "cpsid i", "~{memory}"() #15, !dbg !2485, !srcloc !2488
  ret i32 %1, !dbg !2489
}

; Function Attrs: noinline nounwind optsize
define dso_local void @restore_interrupt_mask(i32 noundef %0) local_unnamed_addr #0 section ".ramTEXT" !dbg !2490 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !2492, metadata !DIExpression()), !dbg !2493
  call void @llvm.dbg.value(metadata i32 %0, metadata !2494, metadata !DIExpression()) #15, !dbg !2497
  tail call void asm sideeffect "MSR primask, $0", "r,~{memory}"(i32 %0) #15, !dbg !2500, !srcloc !2501
  ret void, !dbg !2502
}

; Function Attrs: noinline nounwind optsize
define dso_local i32 @pinmux_config(i32 noundef %0, i32 noundef %1) local_unnamed_addr #0 !dbg !2503 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !2507, metadata !DIExpression()), !dbg !2510
  call void @llvm.dbg.value(metadata i32 %1, metadata !2508, metadata !DIExpression()), !dbg !2510
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
  ], !dbg !2511

3:                                                ; preds = %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2
  call void @llvm.dbg.value(metadata i32 %0, metadata !2509, metadata !DIExpression()), !dbg !2510
  %4 = trunc i32 %1 to i8, !dbg !2512
  tail call void @halPinmuxTopOnPadFunc(i32 noundef %0, i8 noundef zeroext %4) #13, !dbg !2513
  br label %5, !dbg !2514

5:                                                ; preds = %2, %3
  %6 = phi i32 [ 0, %3 ], [ -1, %2 ], !dbg !2510
  ret i32 %6, !dbg !2515
}

; Function Attrs: noinline nounwind optsize
define dso_local i32 @pwm_init(i8 noundef zeroext %0) local_unnamed_addr #0 !dbg !2516 {
  call void @llvm.dbg.value(metadata i8 %0, metadata !2520, metadata !DIExpression()), !dbg !2522
  call void @llvm.dbg.value(metadata i32 0, metadata !2521, metadata !DIExpression()), !dbg !2522
  %2 = icmp ugt i8 %0, 2, !dbg !2523
  br i1 %2, label %8, label %3, !dbg !2525

3:                                                ; preds = %1
  %4 = tail call zeroext i8 @halPWMResetAll() #13, !dbg !2526
  %5 = tail call zeroext i8 @halPWMClockSelect(i8 noundef zeroext %0) #13, !dbg !2527
  %6 = icmp ne i8 %5, 0, !dbg !2527
  %7 = sext i1 %6 to i32, !dbg !2522
  br label %8, !dbg !2522

8:                                                ; preds = %3, %1
  %9 = phi i32 [ -1, %1 ], [ %7, %3 ], !dbg !2522
  ret i32 %9, !dbg !2529
}

; Function Attrs: noinline nounwind optsize
define dso_local i32 @pwm_set(i8 noundef zeroext %0, i32 noundef %1, i16 noundef zeroext %2, i8 noundef zeroext %3) local_unnamed_addr #0 !dbg !2530 {
  call void @llvm.dbg.value(metadata i8 %0, metadata !2534, metadata !DIExpression()), !dbg !2544
  call void @llvm.dbg.value(metadata i32 %1, metadata !2535, metadata !DIExpression()), !dbg !2544
  call void @llvm.dbg.value(metadata i16 %2, metadata !2536, metadata !DIExpression()), !dbg !2544
  call void @llvm.dbg.value(metadata i8 %3, metadata !2537, metadata !DIExpression()), !dbg !2544
  call void @llvm.dbg.value(metadata i32 0, metadata !2538, metadata !DIExpression()), !dbg !2544
  call void @llvm.dbg.value(metadata i8 0, metadata !2539, metadata !DIExpression()), !dbg !2544
  call void @llvm.dbg.value(metadata i16 0, metadata !2540, metadata !DIExpression()), !dbg !2544
  call void @llvm.dbg.value(metadata i16 1, metadata !2541, metadata !DIExpression()), !dbg !2544
  call void @llvm.dbg.value(metadata i16 0, metadata !2542, metadata !DIExpression()), !dbg !2544
  call void @llvm.dbg.value(metadata i8 0, metadata !2543, metadata !DIExpression()), !dbg !2544
  %5 = icmp eq i8 %3, 0, !dbg !2545
  br i1 %5, label %6, label %15, !dbg !2547

6:                                                ; preds = %4
  %7 = tail call zeroext i8 @halPWMConfig(i8 noundef zeroext %0, i8 noundef zeroext 0, i16 noundef zeroext 0, i32 noundef %1) #13, !dbg !2548
  %8 = icmp eq i8 %7, 0, !dbg !2548
  br i1 %8, label %9, label %28, !dbg !2551

9:                                                ; preds = %6
  %10 = tail call zeroext i8 @halPWMKick(i8 noundef zeroext %0) #13, !dbg !2552
  %11 = icmp eq i8 %10, 0, !dbg !2552
  br i1 %11, label %12, label %28, !dbg !2554

12:                                               ; preds = %9
  %13 = tail call zeroext i8 @halPWMDisable(i8 noundef zeroext %0) #13, !dbg !2555
  %14 = icmp eq i8 %13, 0, !dbg !2555
  br i1 %14, label %27, label %28, !dbg !2557

15:                                               ; preds = %4
  call void @llvm.dbg.value(metadata i16 %2, metadata !2540, metadata !DIExpression()), !dbg !2544
  %16 = tail call zeroext i8 @halPWMEnable(i8 noundef zeroext %0, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0) #13, !dbg !2558
  %17 = icmp eq i8 %16, 0, !dbg !2558
  br i1 %17, label %18, label %28, !dbg !2561

18:                                               ; preds = %15
  %19 = tail call zeroext i8 @halPWMConfig(i8 noundef zeroext %0, i8 noundef zeroext 0, i16 noundef zeroext %2, i32 noundef %1) #13, !dbg !2562
  %20 = icmp eq i8 %19, 0, !dbg !2562
  br i1 %20, label %21, label %28, !dbg !2564

21:                                               ; preds = %18
  %22 = tail call zeroext i8 @halPWMStateConfig(i8 noundef zeroext %0, i16 noundef zeroext 1, i16 noundef zeroext 0, i8 noundef zeroext 0) #13, !dbg !2565
  %23 = icmp eq i8 %22, 0, !dbg !2565
  br i1 %23, label %24, label %28, !dbg !2567

24:                                               ; preds = %21
  %25 = tail call zeroext i8 @halPWMKick(i8 noundef zeroext %0) #13, !dbg !2568
  %26 = icmp eq i8 %25, 0, !dbg !2568
  br i1 %26, label %27, label %28, !dbg !2570

27:                                               ; preds = %24, %12
  br label %28, !dbg !2571

28:                                               ; preds = %24, %21, %18, %15, %12, %9, %6, %27
  %29 = phi i32 [ 0, %27 ], [ -1, %6 ], [ -1, %9 ], [ -1, %12 ], [ -1, %15 ], [ -1, %18 ], [ -1, %21 ], [ -1, %24 ], !dbg !2544
  ret i32 %29, !dbg !2572
}

; Function Attrs: noinline nounwind optsize
define dso_local i32 @pwm_get(i8 noundef zeroext %0, i32* noundef %1, i16* noundef %2, i8* noundef %3) local_unnamed_addr #0 !dbg !2573 {
  call void @llvm.dbg.value(metadata i8 %0, metadata !2578, metadata !DIExpression()), !dbg !2584
  call void @llvm.dbg.value(metadata i32* %1, metadata !2579, metadata !DIExpression()), !dbg !2584
  call void @llvm.dbg.value(metadata i16* %2, metadata !2580, metadata !DIExpression()), !dbg !2584
  call void @llvm.dbg.value(metadata i8* %3, metadata !2581, metadata !DIExpression()), !dbg !2584
  call void @llvm.dbg.value(metadata i32 0, metadata !2582, metadata !DIExpression()), !dbg !2584
  call void @llvm.dbg.value(metadata i8 0, metadata !2583, metadata !DIExpression()), !dbg !2584
  %5 = tail call zeroext i8 @halPWMQuery(i8 noundef zeroext %0, i8 noundef zeroext 0, i16* noundef %2, i32* noundef %1, i8* noundef %3) #13, !dbg !2585
  ret i32 0, !dbg !2586
}

; Function Attrs: noinline nounwind optsize
define dso_local i32 @get_current_count() local_unnamed_addr #0 !dbg !2587 {
  %1 = tail call i32 @GPT_return_current_count(i32 noundef 2) #13, !dbg !2588
  ret i32 %1, !dbg !2589
}

; Function Attrs: noinline nounwind optsize
define dso_local void @delay_time(i32 noundef %0) local_unnamed_addr #0 !dbg !2590 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !2592, metadata !DIExpression()), !dbg !2595
  %2 = tail call i32 @get_current_count() #14, !dbg !2596
  %3 = add i32 %2, %0, !dbg !2597
  %4 = xor i32 %3, -1, !dbg !2598
  call void @llvm.dbg.value(metadata i32 %3, metadata !2593, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !2595
  %5 = tail call i32 @get_current_count() #14, !dbg !2599
  call void @llvm.dbg.value(metadata i32 %5, metadata !2594, metadata !DIExpression()), !dbg !2595
  %6 = add i32 %5, %4, !dbg !2600
  %7 = icmp slt i32 %6, 0, !dbg !2600
  br i1 %7, label %8, label %12, !dbg !2601

8:                                                ; preds = %1, %8
  %9 = tail call i32 @get_current_count() #14, !dbg !2602
  call void @llvm.dbg.value(metadata i32 %9, metadata !2594, metadata !DIExpression()), !dbg !2595
  %10 = add i32 %9, %4, !dbg !2600
  %11 = icmp slt i32 %10, 0, !dbg !2600
  br i1 %11, label %8, label %12, !dbg !2601, !llvm.loop !2604

12:                                               ; preds = %8, %1
  ret void, !dbg !2606
}

; Function Attrs: noinline nounwind optsize
define dso_local void @delay_time_for_gpt4(i32 noundef %0) local_unnamed_addr #0 !dbg !2607 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !2609, metadata !DIExpression()), !dbg !2612
  %2 = tail call i32 @get_current_gpt4_count() #14, !dbg !2613
  %3 = add i32 %2, %0, !dbg !2614
  %4 = xor i32 %3, -1, !dbg !2615
  call void @llvm.dbg.value(metadata i32 %3, metadata !2610, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !2612
  %5 = tail call i32 @get_current_gpt4_count() #14, !dbg !2616
  call void @llvm.dbg.value(metadata i32 %5, metadata !2611, metadata !DIExpression()), !dbg !2612
  %6 = add i32 %5, %4, !dbg !2617
  %7 = icmp slt i32 %6, 0, !dbg !2617
  br i1 %7, label %8, label %12, !dbg !2618

8:                                                ; preds = %1, %8
  %9 = tail call i32 @get_current_gpt4_count() #14, !dbg !2619
  call void @llvm.dbg.value(metadata i32 %9, metadata !2611, metadata !DIExpression()), !dbg !2612
  %10 = add i32 %9, %4, !dbg !2617
  %11 = icmp slt i32 %10, 0, !dbg !2617
  br i1 %11, label %8, label %12, !dbg !2618, !llvm.loop !2621

12:                                               ; preds = %8, %1
  ret void, !dbg !2623
}

; Function Attrs: noinline nounwind optsize
define dso_local i32 @get_current_gpt4_count() local_unnamed_addr #0 !dbg !2624 {
  %1 = tail call i32 @GPT_return_current_count(i32 noundef 4) #13, !dbg !2625
  ret i32 %1, !dbg !2626
}

; Function Attrs: noinline nounwind optsize
define dso_local void @delay_ms(i32 noundef %0) local_unnamed_addr #0 !dbg !2627 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !2629, metadata !DIExpression()), !dbg !2631
  %2 = shl i32 %0, 5, !dbg !2632
  call void @llvm.dbg.value(metadata i32 %2, metadata !2630, metadata !DIExpression()), !dbg !2631
  %3 = mul i32 %0, 7, !dbg !2633
  %4 = udiv i32 %3, 10, !dbg !2634
  %5 = add i32 %4, %2, !dbg !2635
  call void @llvm.dbg.value(metadata i32 %5, metadata !2630, metadata !DIExpression()), !dbg !2631
  %6 = mul i32 %0, 6, !dbg !2636
  %7 = udiv i32 %6, 100, !dbg !2637
  %8 = add i32 %5, %7, !dbg !2638
  call void @llvm.dbg.value(metadata i32 %8, metadata !2630, metadata !DIExpression()), !dbg !2631
  %9 = shl i32 %0, 3, !dbg !2639
  %10 = udiv i32 %9, 1000, !dbg !2640
  %11 = add i32 %8, %10, !dbg !2641
  call void @llvm.dbg.value(metadata i32 %11, metadata !2630, metadata !DIExpression()), !dbg !2631
  tail call void @delay_time(i32 noundef %11) #14, !dbg !2642
  ret void, !dbg !2643
}

; Function Attrs: noinline nounwind optsize
define dso_local void @delay_us(i32 noundef %0) local_unnamed_addr #0 !dbg !2644 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !2646, metadata !DIExpression()), !dbg !2649
  %2 = tail call i32 @top_mcu_freq_get() #13, !dbg !2650
  %3 = udiv i32 %2, 1000000, !dbg !2651
  call void @llvm.dbg.value(metadata i32 %3, metadata !2648, metadata !DIExpression()), !dbg !2649
  %4 = mul i32 %3, %0, !dbg !2652
  call void @llvm.dbg.value(metadata i32 %4, metadata !2647, metadata !DIExpression()), !dbg !2649
  tail call void @delay_time_for_gpt4(i32 noundef %4) #14, !dbg !2653
  ret void, !dbg !2654
}

; Function Attrs: noinline nounwind optsize
define dso_local void @drvTMR_init(i32 noundef %0, i32 noundef %1, i1 noundef zeroext %2, void ()* noundef %3) local_unnamed_addr #0 !dbg !2655 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !2659, metadata !DIExpression()), !dbg !2663
  call void @llvm.dbg.value(metadata i32 %1, metadata !2660, metadata !DIExpression()), !dbg !2663
  call void @llvm.dbg.value(metadata i1 %2, metadata !2661, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !2663
  call void @llvm.dbg.value(metadata void ()* %3, metadata !2662, metadata !DIExpression()), !dbg !2663
  tail call void @GPT_Stop(i32 noundef %0) #13, !dbg !2664
  %5 = icmp eq i32 %0, 0, !dbg !2665
  br i1 %5, label %6, label %7, !dbg !2667

6:                                                ; preds = %4
  store volatile i32 0, i32* inttoptr (i32 -2096824304 to i32*), align 16, !dbg !2668
  br label %8, !dbg !2670

7:                                                ; preds = %4
  store volatile i32 0, i32* inttoptr (i32 -2096824288 to i32*), align 32, !dbg !2671
  br label %8

8:                                                ; preds = %7, %6
  %9 = phi i32 [ %0, %7 ], [ 0, %6 ]
  tail call void @GPT_init(i32 noundef %9, i32 noundef 1, void ()* noundef %3) #13, !dbg !2673
  tail call void @GPT_ResetTimer(i32 noundef %0, i32 noundef %1, i1 noundef zeroext %2) #13, !dbg !2674
  ret void, !dbg !2675
}

; Function Attrs: noinline nounwind optsize
define dso_local void @TMR_Start(i32 noundef %0) local_unnamed_addr #0 !dbg !2676 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !2678, metadata !DIExpression()), !dbg !2679
  tail call void @GPT_Start(i32 noundef %0) #13, !dbg !2680
  ret void, !dbg !2681
}

; Function Attrs: noinline nounwind optsize
define dso_local void @TMR_Stop(i32 noundef %0) local_unnamed_addr #0 !dbg !2682 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !2684, metadata !DIExpression()), !dbg !2685
  tail call void @GPT_Stop(i32 noundef %0) #13, !dbg !2686
  ret void, !dbg !2687
}

; Function Attrs: noinline nounwind optsize
define dso_local void @drvGPT2Init() local_unnamed_addr #0 !dbg !2688 {
  tail call void @CM4_GPT2Init() #13, !dbg !2689
  ret void, !dbg !2690
}

; Function Attrs: noinline nounwind optsize
define dso_local void @drvGPT4Init() local_unnamed_addr #0 !dbg !2691 {
  tail call void @CM4_GPT4Init() #13, !dbg !2692
  ret void, !dbg !2693
}

; Function Attrs: nofree noinline norecurse nounwind optsize
define dso_local void @clear_TMR_INT_status_bit(i32 noundef %0) local_unnamed_addr #3 !dbg !2694 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !2696, metadata !DIExpression()), !dbg !2697
  switch i32 %0, label %5 [
    i32 0, label %3
    i32 1, label %2
  ], !dbg !2698

2:                                                ; preds = %1
  br label %3, !dbg !2699

3:                                                ; preds = %1, %2
  %4 = phi i32 [ 2, %2 ], [ 1, %1 ]
  store volatile i32 %4, i32* inttoptr (i32 -2096824320 to i32*), align 65536, !dbg !2697
  br label %5, !dbg !2702

5:                                                ; preds = %3, %1
  ret void, !dbg !2702
}

; Function Attrs: noinline nounwind optsize
define dso_local void @top_xtal_init() local_unnamed_addr #0 !dbg !2703 {
  call void @llvm.dbg.value(metadata i32 0, metadata !2705, metadata !DIExpression()), !dbg !2707
  %1 = load volatile i32, i32* inttoptr (i32 -2097118784 to i32*), align 64, !dbg !2708
  call void @llvm.dbg.value(metadata i32 %1, metadata !2706, metadata !DIExpression()), !dbg !2707
  %2 = lshr i32 %1, 13, !dbg !2709
  %3 = and i32 %2, 7, !dbg !2710
  call void @llvm.dbg.value(metadata i32 %3, metadata !2706, metadata !DIExpression()), !dbg !2707
  %4 = load volatile i32, i32* inttoptr (i32 -2097118792 to i32*), align 8, !dbg !2711
  call void @llvm.dbg.value(metadata i32 %4, metadata !2705, metadata !DIExpression()), !dbg !2707
  call void @llvm.dbg.value(metadata i32 %4, metadata !2705, metadata !DIExpression(DW_OP_constu, 18446744073709549568, DW_OP_and, DW_OP_stack_value)), !dbg !2707
  %5 = getelementptr inbounds [8 x i32], [8 x i32]* @switch.table.top_xtal_init, i32 0, i32 %3, !dbg !2712
  %6 = load i32, i32* %5, align 4, !dbg !2712
  %7 = getelementptr inbounds [8 x i32], [8 x i32]* @switch.table.top_xtal_init.1, i32 0, i32 %3, !dbg !2712
  %8 = load i32, i32* %7, align 4, !dbg !2712
  %9 = and i32 %4, -2048, !dbg !2713
  call void @llvm.dbg.value(metadata i32 %9, metadata !2705, metadata !DIExpression()), !dbg !2707
  store i32 %6, i32* @gXtalFreq, align 4, !dbg !2714
  %10 = or i32 %9, %8, !dbg !2714
  call void @llvm.dbg.value(metadata i32 %10, metadata !2705, metadata !DIExpression()), !dbg !2707
  store volatile i32 %10, i32* inttoptr (i32 -2097118792 to i32*), align 8, !dbg !2716
  %11 = load i32, i32* @gXtalFreq, align 4, !dbg !2717
  store i32 %11, i32* @gCpuFrequency, align 4, !dbg !2718
  tail call void @SystemCoreClockUpdate() #13, !dbg !2719
  %12 = load i32, i32* @SystemCoreClock, align 4, !dbg !2720
  %13 = udiv i32 %12, 1000, !dbg !2721
  %14 = tail call i32 @SysTick_Set(i32 noundef %13) #13, !dbg !2722
  ret void, !dbg !2723
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize readonly willreturn
define dso_local i32 @top_xtal_freq_get() local_unnamed_addr #5 !dbg !2724 {
  %1 = load i32, i32* @gXtalFreq, align 4, !dbg !2725
  ret i32 %1, !dbg !2726
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize readonly willreturn
define dso_local i32 @top_mcu_freq_get() local_unnamed_addr #5 !dbg !2727 {
  %1 = load i32, i32* @gCpuFrequency, align 4, !dbg !2728
  ret i32 %1, !dbg !2729
}

; Function Attrs: nofree noinline nounwind optsize
define dso_local void @cmnPLL1ON() local_unnamed_addr #6 !dbg !2730 {
  %1 = alloca i32, align 4
  %2 = bitcast i32* %1 to i8*, !dbg !2734
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %2), !dbg !2734
  call void @llvm.dbg.declare(metadata i32* %1, metadata !2732, metadata !DIExpression()), !dbg !2735
  call void @llvm.dbg.value(metadata i32* inttoptr (i32 -2097118792 to i32*), metadata !2733, metadata !DIExpression()), !dbg !2736
  %3 = tail call fastcc i32 @cmnReadRegister32(i8* noundef nonnull inttoptr (i32 -2097118792 to i8*)) #14, !dbg !2737
  store volatile i32 %3, i32* %1, align 4, !dbg !2738
  %4 = load volatile i32, i32* %1, align 4, !dbg !2739
  %5 = lshr i32 %4, 28, !dbg !2740
  %6 = and i32 %5, 3, !dbg !2741
  store volatile i32 %6, i32* %1, align 4, !dbg !2742
  %7 = load volatile i32, i32* %1, align 4, !dbg !2743
  %8 = icmp eq i32 %7, 0, !dbg !2745
  br i1 %8, label %9, label %22, !dbg !2746

9:                                                ; preds = %0
  %10 = tail call fastcc i32 @cmnReadRegister32(i8* noundef nonnull inttoptr (i32 -2097118792 to i8*)) #14, !dbg !2747
  store volatile i32 %10, i32* %1, align 4, !dbg !2749
  %11 = load volatile i32, i32* %1, align 4, !dbg !2750
  %12 = and i32 %11, -16777217, !dbg !2751
  store volatile i32 %12, i32* %1, align 4, !dbg !2752
  %13 = load volatile i32, i32* %1, align 4, !dbg !2753
  %14 = or i32 %13, 536870912, !dbg !2754
  store volatile i32 %14, i32* %1, align 4, !dbg !2755
  %15 = load volatile i32, i32* %1, align 4, !dbg !2756
  tail call fastcc void @cmnWriteRegister32(i8* noundef nonnull inttoptr (i32 -2097118792 to i8*), i32 noundef %15) #14, !dbg !2757
  br label %16, !dbg !2758

16:                                               ; preds = %16, %9
  %17 = tail call fastcc i32 @cmnReadRegister32(i8* noundef nonnull inttoptr (i32 -2097118792 to i8*)) #14, !dbg !2759
  store volatile i32 %17, i32* %1, align 4, !dbg !2761
  %18 = load volatile i32, i32* %1, align 4, !dbg !2762
  %19 = and i32 %18, 134217728, !dbg !2763
  store volatile i32 %19, i32* %1, align 4, !dbg !2764
  %20 = load volatile i32, i32* %1, align 4, !dbg !2765
  %21 = icmp eq i32 %20, 0, !dbg !2766
  br i1 %21, label %16, label %22, !dbg !2767, !llvm.loop !2768

22:                                               ; preds = %16, %0
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %2), !dbg !2770
  ret void, !dbg !2770
}

; Function Attrs: argmemonly nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0i8(i64 immarg, i8* nocapture) #7

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: mustprogress nofree noinline norecurse nounwind optsize willreturn
define internal fastcc i32 @cmnReadRegister32(i8* noundef %0) unnamed_addr #4 !dbg !2771 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !2778, metadata !DIExpression()), !dbg !2779
  %2 = bitcast i8* %0 to i32*, !dbg !2780
  %3 = load volatile i32, i32* %2, align 4, !dbg !2781
  ret i32 %3, !dbg !2782
}

; Function Attrs: nofree noinline norecurse nounwind optsize
define internal fastcc void @cmnWriteRegister32(i8* noundef %0, i32 noundef %1) unnamed_addr #3 !dbg !2783 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !2787, metadata !DIExpression()), !dbg !2789
  call void @llvm.dbg.value(metadata i32 %1, metadata !2788, metadata !DIExpression()), !dbg !2789
  %3 = bitcast i8* %0 to i32*, !dbg !2790
  store volatile i32 %1, i32* %3, align 4, !dbg !2791
  ret void, !dbg !2792
}

; Function Attrs: argmemonly nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0i8(i64 immarg, i8* nocapture) #7

; Function Attrs: nofree noinline nounwind optsize
define dso_local void @cmnPLL1ON_PLL2ON(i8 noundef zeroext %0) local_unnamed_addr #6 !dbg !2793 {
  %2 = alloca i32, align 4
  call void @llvm.dbg.value(metadata i8 %0, metadata !2797, metadata !DIExpression()), !dbg !2800
  %3 = bitcast i32* %2 to i8*, !dbg !2801
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %3), !dbg !2801
  call void @llvm.dbg.declare(metadata i32* %2, metadata !2798, metadata !DIExpression()), !dbg !2802
  call void @llvm.dbg.value(metadata i32* inttoptr (i32 -2097118792 to i32*), metadata !2799, metadata !DIExpression()), !dbg !2800
  %4 = tail call fastcc i32 @cmnReadRegister32(i8* noundef nonnull inttoptr (i32 -2097118792 to i8*)) #14, !dbg !2803
  store volatile i32 %4, i32* %2, align 4, !dbg !2804
  %5 = load volatile i32, i32* %2, align 4, !dbg !2805
  %6 = lshr i32 %5, 28, !dbg !2806
  %7 = and i32 %6, 3, !dbg !2807
  store volatile i32 %7, i32* %2, align 4, !dbg !2808
  %8 = load volatile i32, i32* %2, align 4, !dbg !2809
  %9 = icmp eq i32 %8, 3, !dbg !2811
  br i1 %9, label %38, label %10, !dbg !2812

10:                                               ; preds = %1
  %11 = tail call fastcc i32 @cmnReadRegister32(i8* noundef nonnull inttoptr (i32 -2097118792 to i8*)) #14, !dbg !2813
  store volatile i32 %11, i32* %2, align 4, !dbg !2815
  %12 = load volatile i32, i32* %2, align 4, !dbg !2816
  %13 = and i32 %12, -262145, !dbg !2817
  store volatile i32 %13, i32* %2, align 4, !dbg !2818
  %14 = load volatile i32, i32* %2, align 4, !dbg !2819
  %15 = and i32 %14, -16777217, !dbg !2820
  store volatile i32 %15, i32* %2, align 4, !dbg !2821
  %16 = load volatile i32, i32* %2, align 4, !dbg !2822
  store volatile i32 %16, i32* %2, align 4, !dbg !2823
  %17 = load volatile i32, i32* %2, align 4, !dbg !2824
  tail call fastcc void @cmnWriteRegister32(i8* noundef nonnull inttoptr (i32 -2097118792 to i8*), i32 noundef %17) #14, !dbg !2825
  %18 = tail call fastcc i32 @cmnReadRegister32(i8* noundef nonnull inttoptr (i32 -2097118792 to i8*)) #14, !dbg !2826
  store volatile i32 %18, i32* %2, align 4, !dbg !2827
  %19 = load volatile i32, i32* %2, align 4, !dbg !2828
  %20 = and i32 %19, -805306369, !dbg !2829
  store volatile i32 %20, i32* %2, align 4, !dbg !2830
  %21 = load volatile i32, i32* %2, align 4, !dbg !2831
  %22 = and i32 %21, -16777217, !dbg !2832
  store volatile i32 %22, i32* %2, align 4, !dbg !2833
  %23 = load volatile i32, i32* %2, align 4, !dbg !2834
  %24 = or i32 %23, 805306368, !dbg !2835
  store volatile i32 %24, i32* %2, align 4, !dbg !2836
  %25 = load volatile i32, i32* %2, align 4, !dbg !2837
  tail call fastcc void @cmnWriteRegister32(i8* noundef nonnull inttoptr (i32 -2097118792 to i8*), i32 noundef %25) #14, !dbg !2838
  br label %26, !dbg !2839

26:                                               ; preds = %26, %10
  %27 = tail call fastcc i32 @cmnReadRegister32(i8* noundef nonnull inttoptr (i32 -2097118792 to i8*)) #14, !dbg !2840
  store volatile i32 %27, i32* %2, align 4, !dbg !2842
  %28 = load volatile i32, i32* %2, align 4, !dbg !2843
  %29 = and i32 %28, 67108864, !dbg !2844
  store volatile i32 %29, i32* %2, align 4, !dbg !2845
  %30 = load volatile i32, i32* %2, align 4, !dbg !2846
  %31 = icmp eq i32 %30, 0, !dbg !2847
  br i1 %31, label %26, label %32, !dbg !2848, !llvm.loop !2849

32:                                               ; preds = %26
  %33 = tail call fastcc i32 @cmnReadRegister32(i8* noundef nonnull inttoptr (i32 -2097118792 to i8*)) #14, !dbg !2851
  store volatile i32 %33, i32* %2, align 4, !dbg !2852
  %34 = load volatile i32, i32* %2, align 4, !dbg !2853
  %35 = and i32 %34, -262145, !dbg !2854
  store volatile i32 %35, i32* %2, align 4, !dbg !2855
  %36 = load volatile i32, i32* %2, align 4, !dbg !2856
  %37 = and i32 %36, -16777217, !dbg !2857
  store volatile i32 %37, i32* %2, align 4, !dbg !2858
  br label %38, !dbg !2859

38:                                               ; preds = %32, %1
  %39 = tail call fastcc i32 @cmnReadRegister32(i8* noundef nonnull inttoptr (i32 -2097118792 to i8*)) #14, !dbg !2860
  store volatile i32 %39, i32* %2, align 4, !dbg !2861
  %40 = icmp eq i8 %0, 0, !dbg !2862
  %41 = load volatile i32, i32* %2, align 4, !dbg !2864
  br i1 %40, label %44, label %42, !dbg !2865

42:                                               ; preds = %38
  %43 = or i32 %41, 262144, !dbg !2866
  store volatile i32 %43, i32* %2, align 4, !dbg !2868
  br label %45, !dbg !2869

44:                                               ; preds = %38
  store volatile i32 %41, i32* %2, align 4, !dbg !2870
  br label %45

45:                                               ; preds = %44, %42
  %46 = load volatile i32, i32* %2, align 4, !dbg !2872
  tail call fastcc void @cmnWriteRegister32(i8* noundef nonnull inttoptr (i32 -2097118792 to i8*), i32 noundef %46) #14, !dbg !2873
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %3), !dbg !2874
  ret void, !dbg !2874
}

; Function Attrs: nofree noinline nounwind optsize
define dso_local void @cmnPLL1OFF_PLL2OFF() local_unnamed_addr #6 !dbg !2875 {
  %1 = alloca i32, align 4
  %2 = bitcast i32* %1 to i8*, !dbg !2879
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %2), !dbg !2879
  call void @llvm.dbg.declare(metadata i32* %1, metadata !2877, metadata !DIExpression()), !dbg !2880
  call void @llvm.dbg.value(metadata i32* inttoptr (i32 -2097118792 to i32*), metadata !2878, metadata !DIExpression()), !dbg !2881
  %3 = tail call fastcc i32 @cmnReadRegister32(i8* noundef nonnull inttoptr (i32 -2097118792 to i8*)) #14, !dbg !2882
  store volatile i32 %3, i32* %1, align 4, !dbg !2883
  %4 = load volatile i32, i32* %1, align 4, !dbg !2884
  %5 = and i32 %4, -805306369, !dbg !2885
  store volatile i32 %5, i32* %1, align 4, !dbg !2886
  %6 = load volatile i32, i32* %1, align 4, !dbg !2887
  %7 = and i32 %6, -16777217, !dbg !2888
  store volatile i32 %7, i32* %1, align 4, !dbg !2889
  %8 = load volatile i32, i32* %1, align 4, !dbg !2890
  store volatile i32 %8, i32* %1, align 4, !dbg !2891
  %9 = load volatile i32, i32* %1, align 4, !dbg !2892
  tail call fastcc void @cmnWriteRegister32(i8* noundef nonnull inttoptr (i32 -2097118792 to i8*), i32 noundef %9) #14, !dbg !2893
  %10 = tail call fastcc i32 @cmnReadRegister32(i8* noundef nonnull inttoptr (i32 -2097118792 to i8*)) #14, !dbg !2894
  store volatile i32 %10, i32* %1, align 4, !dbg !2895
  %11 = load volatile i32, i32* %1, align 4, !dbg !2896
  %12 = and i32 %11, -262145, !dbg !2897
  store volatile i32 %12, i32* %1, align 4, !dbg !2898
  %13 = load volatile i32, i32* %1, align 4, !dbg !2899
  %14 = and i32 %13, -16777217, !dbg !2900
  store volatile i32 %14, i32* %1, align 4, !dbg !2901
  %15 = load volatile i32, i32* %1, align 4, !dbg !2902
  store volatile i32 %15, i32* %1, align 4, !dbg !2903
  %16 = load volatile i32, i32* %1, align 4, !dbg !2904
  tail call fastcc void @cmnWriteRegister32(i8* noundef nonnull inttoptr (i32 -2097118792 to i8*), i32 noundef %16) #14, !dbg !2905
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %2), !dbg !2906
  ret void, !dbg !2906
}

; Function Attrs: noinline nounwind optsize
define dso_local void @cmnCpuClkConfigureToXtal() local_unnamed_addr #0 !dbg !2907 {
  %1 = alloca i32, align 4
  %2 = bitcast i32* %1 to i8*, !dbg !2911
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %2), !dbg !2911
  call void @llvm.dbg.declare(metadata i32* %1, metadata !2909, metadata !DIExpression()), !dbg !2912
  call void @llvm.dbg.value(metadata i32* inttoptr (i32 -2097118800 to i32*), metadata !2910, metadata !DIExpression()), !dbg !2913
  %3 = tail call fastcc i32 @cmnReadRegister32(i8* noundef nonnull inttoptr (i32 -2097118800 to i8*)) #14, !dbg !2914
  store volatile i32 %3, i32* %1, align 4, !dbg !2915
  %4 = load volatile i32, i32* %1, align 4, !dbg !2916
  %5 = and i32 %4, -8, !dbg !2917
  store volatile i32 %5, i32* %1, align 4, !dbg !2918
  %6 = load volatile i32, i32* %1, align 4, !dbg !2919
  store volatile i32 %6, i32* %1, align 4, !dbg !2920
  %7 = load volatile i32, i32* %1, align 4, !dbg !2921
  tail call fastcc void @cmnWriteRegister32(i8* noundef nonnull inttoptr (i32 -2097118800 to i8*), i32 noundef %7) #14, !dbg !2922
  %8 = tail call fastcc i32 @cmnReadRegister32(i8* noundef nonnull inttoptr (i32 -2097118800 to i8*)) #14, !dbg !2923
  store volatile i32 %8, i32* %1, align 4, !dbg !2924
  %9 = load volatile i32, i32* %1, align 4, !dbg !2925
  %10 = and i32 %9, -49153, !dbg !2926
  store volatile i32 %10, i32* %1, align 4, !dbg !2927
  %11 = load volatile i32, i32* %1, align 4, !dbg !2928
  store volatile i32 %11, i32* %1, align 4, !dbg !2929
  %12 = load volatile i32, i32* %1, align 4, !dbg !2930
  tail call fastcc void @cmnWriteRegister32(i8* noundef nonnull inttoptr (i32 -2097118800 to i8*), i32 noundef %12) #14, !dbg !2931
  br label %13, !dbg !2932

13:                                               ; preds = %13, %0
  %14 = load volatile i32, i32* %1, align 4, !dbg !2933
  %15 = tail call fastcc i32 @cmnReadRegister32(i8* noundef nonnull inttoptr (i32 -2097118800 to i8*)) #14, !dbg !2934
  %16 = icmp eq i32 %14, %15, !dbg !2935
  br i1 %16, label %17, label %13, !dbg !2932, !llvm.loop !2936

17:                                               ; preds = %13
  %18 = tail call i32 @top_xtal_freq_get() #14, !dbg !2938
  store i32 %18, i32* @gCpuFrequency, align 4, !dbg !2939
  tail call void @SystemCoreClockUpdate() #13, !dbg !2940
  %19 = load i32, i32* @SystemCoreClock, align 4, !dbg !2941
  %20 = udiv i32 %19, 1000, !dbg !2942
  %21 = tail call i32 @SysTick_Set(i32 noundef %20) #13, !dbg !2943
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %2), !dbg !2944
  ret void, !dbg !2944
}

; Function Attrs: noinline nounwind optsize
define dso_local void @cmnCpuClkConfigureTo192M() local_unnamed_addr #0 !dbg !2945 {
  %1 = alloca i32, align 4
  %2 = bitcast i32* %1 to i8*, !dbg !2949
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %2), !dbg !2949
  call void @llvm.dbg.declare(metadata i32* %1, metadata !2947, metadata !DIExpression()), !dbg !2950
  call void @llvm.dbg.value(metadata i32* inttoptr (i32 -2097118800 to i32*), metadata !2948, metadata !DIExpression()), !dbg !2951
  tail call void @cmnPLL1ON_PLL2ON(i8 noundef zeroext 1) #14, !dbg !2952
  %3 = tail call fastcc i32 @cmnReadRegister32(i8* noundef nonnull inttoptr (i32 -2097118800 to i8*)) #14, !dbg !2953
  store volatile i32 %3, i32* %1, align 4, !dbg !2954
  %4 = load volatile i32, i32* %1, align 4, !dbg !2955
  %5 = and i32 %4, -49153, !dbg !2956
  store volatile i32 %5, i32* %1, align 4, !dbg !2957
  %6 = load volatile i32, i32* %1, align 4, !dbg !2958
  %7 = or i32 %6, 16384, !dbg !2959
  store volatile i32 %7, i32* %1, align 4, !dbg !2960
  %8 = load volatile i32, i32* %1, align 4, !dbg !2961
  tail call fastcc void @cmnWriteRegister32(i8* noundef nonnull inttoptr (i32 -2097118800 to i8*), i32 noundef %8) #14, !dbg !2962
  br label %9, !dbg !2963

9:                                                ; preds = %9, %0
  %10 = load volatile i32, i32* %1, align 4, !dbg !2964
  %11 = tail call fastcc i32 @cmnReadRegister32(i8* noundef nonnull inttoptr (i32 -2097118800 to i8*)) #14, !dbg !2965
  %12 = icmp eq i32 %10, %11, !dbg !2966
  br i1 %12, label %13, label %9, !dbg !2963, !llvm.loop !2967

13:                                               ; preds = %9
  %14 = tail call fastcc i32 @cmnReadRegister32(i8* noundef nonnull inttoptr (i32 -2097118800 to i8*)) #14, !dbg !2969
  store volatile i32 %14, i32* %1, align 4, !dbg !2970
  %15 = load volatile i32, i32* %1, align 4, !dbg !2971
  %16 = and i32 %15, -1009, !dbg !2972
  store volatile i32 %16, i32* %1, align 4, !dbg !2973
  %17 = load volatile i32, i32* %1, align 4, !dbg !2974
  %18 = or i32 %17, 128, !dbg !2975
  store volatile i32 %18, i32* %1, align 4, !dbg !2976
  %19 = load volatile i32, i32* %1, align 4, !dbg !2977
  tail call fastcc void @cmnWriteRegister32(i8* noundef nonnull inttoptr (i32 -2097118800 to i8*), i32 noundef %19) #14, !dbg !2978
  %20 = tail call fastcc i32 @cmnReadRegister32(i8* noundef nonnull inttoptr (i32 -2097118800 to i8*)) #14, !dbg !2979
  store volatile i32 %20, i32* %1, align 4, !dbg !2980
  %21 = load volatile i32, i32* %1, align 4, !dbg !2981
  %22 = and i32 %21, -8, !dbg !2982
  store volatile i32 %22, i32* %1, align 4, !dbg !2983
  %23 = load volatile i32, i32* %1, align 4, !dbg !2984
  %24 = or i32 %23, 4, !dbg !2985
  store volatile i32 %24, i32* %1, align 4, !dbg !2986
  %25 = load volatile i32, i32* %1, align 4, !dbg !2987
  tail call fastcc void @cmnWriteRegister32(i8* noundef nonnull inttoptr (i32 -2097118800 to i8*), i32 noundef %25) #14, !dbg !2988
  store i32 192000000, i32* @gCpuFrequency, align 4, !dbg !2989
  tail call void @SystemCoreClockUpdate() #13, !dbg !2990
  %26 = load i32, i32* @SystemCoreClock, align 4, !dbg !2991
  %27 = udiv i32 %26, 1000, !dbg !2992
  %28 = tail call i32 @SysTick_Set(i32 noundef %27) #13, !dbg !2993
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %2), !dbg !2994
  ret void, !dbg !2994
}

; Function Attrs: noinline nounwind optsize
define dso_local void @cmnCpuClkConfigureTo160M() local_unnamed_addr #0 !dbg !2995 {
  %1 = alloca i32, align 4
  %2 = bitcast i32* %1 to i8*, !dbg !2999
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %2), !dbg !2999
  call void @llvm.dbg.declare(metadata i32* %1, metadata !2997, metadata !DIExpression()), !dbg !3000
  call void @llvm.dbg.value(metadata i32* inttoptr (i32 -2097118800 to i32*), metadata !2998, metadata !DIExpression()), !dbg !3001
  tail call void @cmnPLL1ON_PLL2ON(i8 noundef zeroext 0) #14, !dbg !3002
  %3 = tail call fastcc i32 @cmnReadRegister32(i8* noundef nonnull inttoptr (i32 -2097118800 to i8*)) #14, !dbg !3003
  store volatile i32 %3, i32* %1, align 4, !dbg !3004
  %4 = load volatile i32, i32* %1, align 4, !dbg !3005
  %5 = and i32 %4, -49153, !dbg !3006
  store volatile i32 %5, i32* %1, align 4, !dbg !3007
  %6 = load volatile i32, i32* %1, align 4, !dbg !3008
  %7 = or i32 %6, 32768, !dbg !3009
  store volatile i32 %7, i32* %1, align 4, !dbg !3010
  %8 = load volatile i32, i32* %1, align 4, !dbg !3011
  tail call fastcc void @cmnWriteRegister32(i8* noundef nonnull inttoptr (i32 -2097118800 to i8*), i32 noundef %8) #14, !dbg !3012
  br label %9, !dbg !3013

9:                                                ; preds = %9, %0
  %10 = load volatile i32, i32* %1, align 4, !dbg !3014
  %11 = tail call fastcc i32 @cmnReadRegister32(i8* noundef nonnull inttoptr (i32 -2097118800 to i8*)) #14, !dbg !3015
  %12 = icmp eq i32 %10, %11, !dbg !3016
  br i1 %12, label %13, label %9, !dbg !3013, !llvm.loop !3017

13:                                               ; preds = %9
  %14 = tail call fastcc i32 @cmnReadRegister32(i8* noundef nonnull inttoptr (i32 -2097118800 to i8*)) #14, !dbg !3019
  store volatile i32 %14, i32* %1, align 4, !dbg !3020
  %15 = load volatile i32, i32* %1, align 4, !dbg !3021
  %16 = and i32 %15, -1009, !dbg !3022
  store volatile i32 %16, i32* %1, align 4, !dbg !3023
  %17 = load volatile i32, i32* %1, align 4, !dbg !3024
  %18 = or i32 %17, 32, !dbg !3025
  store volatile i32 %18, i32* %1, align 4, !dbg !3026
  %19 = load volatile i32, i32* %1, align 4, !dbg !3027
  tail call fastcc void @cmnWriteRegister32(i8* noundef nonnull inttoptr (i32 -2097118800 to i8*), i32 noundef %19) #14, !dbg !3028
  %20 = tail call fastcc i32 @cmnReadRegister32(i8* noundef nonnull inttoptr (i32 -2097118800 to i8*)) #14, !dbg !3029
  store volatile i32 %20, i32* %1, align 4, !dbg !3030
  %21 = load volatile i32, i32* %1, align 4, !dbg !3031
  %22 = and i32 %21, -8, !dbg !3032
  store volatile i32 %22, i32* %1, align 4, !dbg !3033
  %23 = load volatile i32, i32* %1, align 4, !dbg !3034
  %24 = or i32 %23, 4, !dbg !3035
  store volatile i32 %24, i32* %1, align 4, !dbg !3036
  %25 = load volatile i32, i32* %1, align 4, !dbg !3037
  tail call fastcc void @cmnWriteRegister32(i8* noundef nonnull inttoptr (i32 -2097118800 to i8*), i32 noundef %25) #14, !dbg !3038
  store i32 160000000, i32* @gCpuFrequency, align 4, !dbg !3039
  tail call void @SystemCoreClockUpdate() #13, !dbg !3040
  %26 = load i32, i32* @SystemCoreClock, align 4, !dbg !3041
  %27 = udiv i32 %26, 1000, !dbg !3042
  %28 = tail call i32 @SysTick_Set(i32 noundef %27) #13, !dbg !3043
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %2), !dbg !3044
  ret void, !dbg !3044
}

; Function Attrs: noinline nounwind optsize
define dso_local void @cmnCpuClkConfigureTo64M() local_unnamed_addr #0 !dbg !3045 {
  %1 = alloca i32, align 4
  %2 = bitcast i32* %1 to i8*, !dbg !3049
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %2), !dbg !3049
  call void @llvm.dbg.declare(metadata i32* %1, metadata !3047, metadata !DIExpression()), !dbg !3050
  call void @llvm.dbg.value(metadata i32* inttoptr (i32 -2097118800 to i32*), metadata !3048, metadata !DIExpression()), !dbg !3051
  tail call void @cmnPLL1ON() #14, !dbg !3052
  %3 = tail call fastcc i32 @cmnReadRegister32(i8* noundef nonnull inttoptr (i32 -2097118800 to i8*)) #14, !dbg !3053
  store volatile i32 %3, i32* %1, align 4, !dbg !3054
  %4 = load volatile i32, i32* %1, align 4, !dbg !3055
  %5 = and i32 %4, -49153, !dbg !3056
  store volatile i32 %5, i32* %1, align 4, !dbg !3057
  %6 = load volatile i32, i32* %1, align 4, !dbg !3058
  store volatile i32 %6, i32* %1, align 4, !dbg !3059
  %7 = load volatile i32, i32* %1, align 4, !dbg !3060
  tail call fastcc void @cmnWriteRegister32(i8* noundef nonnull inttoptr (i32 -2097118800 to i8*), i32 noundef %7) #14, !dbg !3061
  br label %8, !dbg !3062

8:                                                ; preds = %8, %0
  %9 = load volatile i32, i32* %1, align 4, !dbg !3063
  %10 = tail call fastcc i32 @cmnReadRegister32(i8* noundef nonnull inttoptr (i32 -2097118800 to i8*)) #14, !dbg !3064
  %11 = icmp eq i32 %9, %10, !dbg !3065
  br i1 %11, label %12, label %8, !dbg !3062, !llvm.loop !3066

12:                                               ; preds = %8
  %13 = tail call fastcc i32 @cmnReadRegister32(i8* noundef nonnull inttoptr (i32 -2097118800 to i8*)) #14, !dbg !3068
  store volatile i32 %13, i32* %1, align 4, !dbg !3069
  %14 = load volatile i32, i32* %1, align 4, !dbg !3070
  %15 = and i32 %14, -8, !dbg !3071
  store volatile i32 %15, i32* %1, align 4, !dbg !3072
  %16 = load volatile i32, i32* %1, align 4, !dbg !3073
  %17 = or i32 %16, 2, !dbg !3074
  store volatile i32 %17, i32* %1, align 4, !dbg !3075
  %18 = load volatile i32, i32* %1, align 4, !dbg !3076
  tail call fastcc void @cmnWriteRegister32(i8* noundef nonnull inttoptr (i32 -2097118800 to i8*), i32 noundef %18) #14, !dbg !3077
  store i32 64000000, i32* @gCpuFrequency, align 4, !dbg !3078
  tail call void @SystemCoreClockUpdate() #13, !dbg !3079
  %19 = load i32, i32* @SystemCoreClock, align 4, !dbg !3080
  %20 = udiv i32 %19, 1000, !dbg !3081
  %21 = tail call i32 @SysTick_Set(i32 noundef %20) #13, !dbg !3082
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %2), !dbg !3083
  ret void, !dbg !3083
}

; Function Attrs: nofree noinline nounwind optsize
define dso_local void @cmnSerialFlashClkConfToXtal() local_unnamed_addr #6 section ".ramTEXT" !dbg !3084 {
  %1 = alloca i32, align 4
  %2 = bitcast i32* %1 to i8*, !dbg !3088
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %2), !dbg !3088
  call void @llvm.dbg.declare(metadata i32* %1, metadata !3086, metadata !DIExpression()), !dbg !3089
  call void @llvm.dbg.value(metadata i32* inttoptr (i32 -2097118796 to i32*), metadata !3087, metadata !DIExpression()), !dbg !3090
  %3 = tail call fastcc i32 @cmnReadRegister32(i8* noundef nonnull inttoptr (i32 -2097118796 to i8*)) #14, !dbg !3091
  store volatile i32 %3, i32* %1, align 4, !dbg !3092
  %4 = load volatile i32, i32* %1, align 4, !dbg !3093
  %5 = and i32 %4, -24577, !dbg !3094
  store volatile i32 %5, i32* %1, align 4, !dbg !3095
  %6 = load volatile i32, i32* %1, align 4, !dbg !3096
  store volatile i32 %6, i32* %1, align 4, !dbg !3097
  %7 = load volatile i32, i32* %1, align 4, !dbg !3098
  tail call fastcc void @cmnWriteRegister32(i8* noundef nonnull inttoptr (i32 -2097118796 to i8*), i32 noundef %7) #14, !dbg !3099
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %2), !dbg !3100
  ret void, !dbg !3100
}

; Function Attrs: mustprogress nofree noinline norecurse nounwind optsize willreturn
define dso_local i32 @getc() local_unnamed_addr #4 !dbg !3101 {
  %1 = tail call i32 @getc_nowait() #14, !dbg !3106
  call void @llvm.dbg.value(metadata i32 %1, metadata !3105, metadata !DIExpression()), !dbg !3107
  ret i32 %1, !dbg !3108
}

; Function Attrs: mustprogress nofree noinline norecurse nounwind optsize willreturn
define dso_local i32 @getc_nowait() local_unnamed_addr #4 !dbg !3109 {
  %1 = load volatile i32, i32* inttoptr (i32 -2096955372 to i32*), align 4, !dbg !3112
  %2 = and i32 %1, 1, !dbg !3114
  %3 = icmp eq i32 %2, 0, !dbg !3114
  br i1 %3, label %7, label %4, !dbg !3115

4:                                                ; preds = %0
  %5 = load volatile i32, i32* inttoptr (i32 -2096955392 to i32*), align 65536, !dbg !3116
  %6 = and i32 %5, 255, !dbg !3118
  call void @llvm.dbg.value(metadata i32 %5, metadata !3111, metadata !DIExpression()), !dbg !3119
  br label %7, !dbg !3120

7:                                                ; preds = %0, %4
  %8 = phi i32 [ %6, %4 ], [ -1, %0 ], !dbg !3121
  ret i32 %8, !dbg !3122
}

; Function Attrs: nofree noinline norecurse nounwind optsize
define dso_local void @uart_output_char(i32 noundef %0, i8 noundef zeroext %1) local_unnamed_addr #3 !dbg !3123 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !3128, metadata !DIExpression()), !dbg !3131
  call void @llvm.dbg.value(metadata i8 %1, metadata !3129, metadata !DIExpression()), !dbg !3131
  %3 = icmp eq i32 %0, 0, !dbg !3132
  %4 = select i1 %3, i32 -2096955392, i32 -2096889856, !dbg !3132
  call void @llvm.dbg.value(metadata i32 %4, metadata !3130, metadata !DIExpression()), !dbg !3131
  %5 = or i32 %4, 20
  %6 = inttoptr i32 %5 to i32*
  br label %7, !dbg !3133

7:                                                ; preds = %7, %2
  %8 = load volatile i32, i32* %6, align 4, !dbg !3134
  %9 = and i32 %8, 32, !dbg !3135
  %10 = icmp eq i32 %9, 0, !dbg !3136
  br i1 %10, label %7, label %11, !dbg !3133, !llvm.loop !3137

11:                                               ; preds = %7
  %12 = zext i8 %1 to i32, !dbg !3139
  %13 = inttoptr i32 %4 to i32*, !dbg !3140
  store volatile i32 %12, i32* %13, align 65536, !dbg !3141
  ret void, !dbg !3142
}

; Function Attrs: nofree noinline norecurse nounwind optsize
define dso_local zeroext i8 @uart_input_char(i32 noundef %0) local_unnamed_addr #3 !dbg !3143 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !3147, metadata !DIExpression()), !dbg !3150
  %2 = icmp eq i32 %0, 0, !dbg !3151
  %3 = select i1 %2, i32 -2096955392, i32 -2096889856, !dbg !3151
  call void @llvm.dbg.value(metadata i32 %3, metadata !3148, metadata !DIExpression()), !dbg !3150
  %4 = or i32 %3, 20
  %5 = inttoptr i32 %4 to i32*
  br label %6, !dbg !3152

6:                                                ; preds = %6, %1
  %7 = load volatile i32, i32* %5, align 4, !dbg !3153
  %8 = and i32 %7, 1, !dbg !3154
  %9 = icmp eq i32 %8, 0, !dbg !3155
  br i1 %9, label %6, label %10, !dbg !3152, !llvm.loop !3156

10:                                               ; preds = %6
  %11 = inttoptr i32 %3 to i32*, !dbg !3158
  %12 = load volatile i32, i32* %11, align 65536, !dbg !3158
  %13 = trunc i32 %12 to i8, !dbg !3158
  call void @llvm.dbg.value(metadata i8 %13, metadata !3149, metadata !DIExpression()), !dbg !3150
  ret i8 %13, !dbg !3159
}

; Function Attrs: mustprogress nofree noinline norecurse nounwind optsize willreturn
define dso_local i32 @uart_input_char_unblocking(i32 noundef %0) local_unnamed_addr #4 !dbg !3160 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !3164, metadata !DIExpression()), !dbg !3167
  %2 = icmp eq i32 %0, 0, !dbg !3168
  %3 = select i1 %2, i32 -2096955392, i32 -2096889856, !dbg !3168
  call void @llvm.dbg.value(metadata i32 %3, metadata !3165, metadata !DIExpression()), !dbg !3167
  %4 = or i32 %3, 20, !dbg !3169
  %5 = inttoptr i32 %4 to i32*, !dbg !3169
  %6 = load volatile i32, i32* %5, align 4, !dbg !3169
  %7 = and i32 %6, 1, !dbg !3171
  %8 = icmp eq i32 %7, 0, !dbg !3171
  br i1 %8, label %13, label %9, !dbg !3172

9:                                                ; preds = %1
  %10 = inttoptr i32 %3 to i32*, !dbg !3173
  %11 = load volatile i32, i32* %10, align 65536, !dbg !3173
  %12 = and i32 %11, 255, !dbg !3175
  call void @llvm.dbg.value(metadata i32 %11, metadata !3166, metadata !DIExpression()), !dbg !3167
  br label %13, !dbg !3176

13:                                               ; preds = %1, %9
  %14 = phi i32 [ %12, %9 ], [ -1, %1 ], !dbg !3177
  ret i32 %14, !dbg !3178
}

; Function Attrs: noinline nounwind optsize
define dso_local void @halUART_HWInit(i32 noundef %0) local_unnamed_addr #0 !dbg !3179 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !3183, metadata !DIExpression()), !dbg !3184
  tail call void @halUART_SetFormat(i32 noundef %0, i32 noundef 115200, i16 noundef zeroext 3, i16 noundef zeroext 0, i16 noundef zeroext 0) #14, !dbg !3185
  switch i32 %0, label %7 [
    i32 0, label %3
    i32 1, label %2
  ], !dbg !3186

2:                                                ; preds = %1
  br label %3, !dbg !3187

3:                                                ; preds = %1, %2
  %4 = phi i32* [ inttoptr (i32 -2096889780 to i32*), %2 ], [ inttoptr (i32 -2096955316 to i32*), %1 ]
  %5 = load volatile i32, i32* %4, align 4, !dbg !3191
  %6 = or i32 %5, 1, !dbg !3191
  store volatile i32 %6, i32* %4, align 4, !dbg !3191
  br label %7, !dbg !3192

7:                                                ; preds = %3, %1
  ret void, !dbg !3192
}

; Function Attrs: noinline nounwind optsize
define dso_local void @halUART_SetFormat(i32 noundef %0, i32 noundef %1, i16 noundef zeroext %2, i16 noundef zeroext %3, i16 noundef zeroext %4) local_unnamed_addr #0 !dbg !3193 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !3197, metadata !DIExpression()), !dbg !3214
  call void @llvm.dbg.value(metadata i32 %1, metadata !3198, metadata !DIExpression()), !dbg !3214
  call void @llvm.dbg.value(metadata i16 %2, metadata !3199, metadata !DIExpression()), !dbg !3214
  call void @llvm.dbg.value(metadata i16 %3, metadata !3200, metadata !DIExpression()), !dbg !3214
  call void @llvm.dbg.value(metadata i16 %4, metadata !3201, metadata !DIExpression()), !dbg !3214
  call void @llvm.dbg.value(metadata i32 -2096955392, metadata !3203, metadata !DIExpression()), !dbg !3214
  call void @llvm.dbg.declare(metadata [11 x i16]* @__const.halUART_SetFormat.fraction_L_mapping, metadata !3210, metadata !DIExpression()), !dbg !3215
  call void @llvm.dbg.declare(metadata [11 x i16]* @__const.halUART_SetFormat.fraction_M_mapping, metadata !3212, metadata !DIExpression()), !dbg !3216
  call void @llvm.dbg.value(metadata i32 0, metadata !3213, metadata !DIExpression()), !dbg !3214
  %6 = tail call i32 @top_xtal_freq_get() #13, !dbg !3217
  store i32 %6, i32* @gUartClkFreq, align 4, !dbg !3218
  %7 = icmp eq i32 %0, 1, !dbg !3219
  %8 = select i1 %7, i32 -2096889856, i32 -2096955392, !dbg !3219
  call void @llvm.dbg.value(metadata i32 %8, metadata !3203, metadata !DIExpression()), !dbg !3214
  %9 = or i32 %8, 36, !dbg !3220
  %10 = inttoptr i32 %9 to i32*, !dbg !3220
  store volatile i32 3, i32* %10, align 4, !dbg !3221
  %11 = or i32 %8, 12, !dbg !3222
  %12 = inttoptr i32 %11 to i32*, !dbg !3222
  %13 = load volatile i32, i32* %12, align 4, !dbg !3222
  call void @llvm.dbg.value(metadata i32 %13, metadata !3205, metadata !DIExpression()), !dbg !3214
  %14 = or i32 %13, 128, !dbg !3223
  store volatile i32 %14, i32* %12, align 4, !dbg !3224
  %15 = load i32, i32* @gUartClkFreq, align 4, !dbg !3225
  %16 = udiv i32 %15, %1, !dbg !3226
  call void @llvm.dbg.value(metadata i32 %16, metadata !3204, metadata !DIExpression()), !dbg !3214
  %17 = lshr i32 %16, 8, !dbg !3227
  %18 = add nuw nsw i32 %17, 1, !dbg !3228
  call void @llvm.dbg.value(metadata i32 %18, metadata !3206, metadata !DIExpression()), !dbg !3214
  %19 = udiv i32 %16, %18, !dbg !3229
  %20 = add i32 %19, -1, !dbg !3231
  call void @llvm.dbg.value(metadata i32 %20, metadata !3207, metadata !DIExpression()), !dbg !3214
  %21 = icmp eq i32 %20, 3, !dbg !3232
  %22 = lshr i32 %20, 1, !dbg !3234
  %23 = add nsw i32 %22, -1, !dbg !3234
  %24 = select i1 %21, i32 0, i32 %23, !dbg !3234
  call void @llvm.dbg.value(metadata i32 %24, metadata !3208, metadata !DIExpression()), !dbg !3214
  call void @llvm.dbg.value(metadata i32 undef, metadata !3213, metadata !DIExpression()), !dbg !3214
  %25 = mul i32 %15, 10, !dbg !3235
  %26 = udiv i32 %25, %1, !dbg !3236
  %27 = udiv i32 %26, %16, !dbg !3237
  %28 = mul i32 %19, -10, !dbg !3238
  %29 = add i32 %27, %28, !dbg !3239
  %30 = urem i32 %29, 10, !dbg !3240
  call void @llvm.dbg.value(metadata i32 %30, metadata !3209, metadata !DIExpression()), !dbg !3214
  %31 = and i32 %18, 255, !dbg !3241
  %32 = inttoptr i32 %8 to i32*, !dbg !3242
  store volatile i32 %31, i32* %32, align 65536, !dbg !3243
  %33 = lshr i32 %18, 8, !dbg !3244
  %34 = and i32 %33, 255, !dbg !3245
  %35 = or i32 %8, 4, !dbg !3246
  %36 = inttoptr i32 %35 to i32*, !dbg !3246
  store volatile i32 %34, i32* %36, align 4, !dbg !3247
  %37 = or i32 %8, 40, !dbg !3248
  %38 = inttoptr i32 %37 to i32*, !dbg !3248
  store volatile i32 %20, i32* %38, align 8, !dbg !3249
  %39 = or i32 %8, 44, !dbg !3250
  %40 = inttoptr i32 %39 to i32*, !dbg !3250
  store volatile i32 %24, i32* %40, align 4, !dbg !3251
  %41 = getelementptr inbounds [11 x i16], [11 x i16]* @__const.halUART_SetFormat.fraction_M_mapping, i32 0, i32 %30, !dbg !3252
  %42 = load i16, i16* %41, align 2, !dbg !3252
  %43 = zext i16 %42 to i32, !dbg !3252
  %44 = or i32 %8, 88, !dbg !3253
  %45 = inttoptr i32 %44 to i32*, !dbg !3253
  store volatile i32 %43, i32* %45, align 8, !dbg !3254
  %46 = getelementptr inbounds [11 x i16], [11 x i16]* @__const.halUART_SetFormat.fraction_L_mapping, i32 0, i32 %30, !dbg !3255
  %47 = load i16, i16* %46, align 2, !dbg !3255
  %48 = zext i16 %47 to i32, !dbg !3255
  %49 = or i32 %8, 84, !dbg !3256
  %50 = inttoptr i32 %49 to i32*, !dbg !3256
  store volatile i32 %48, i32* %50, align 4, !dbg !3257
  store volatile i32 %13, i32* %12, align 4, !dbg !3258
  %51 = or i32 %8, 8, !dbg !3259
  %52 = inttoptr i32 %51 to i32*, !dbg !3259
  store volatile i32 71, i32* %52, align 8, !dbg !3260
  %53 = inttoptr i32 %11 to i16*, !dbg !3261
  %54 = load volatile i16, i16* %53, align 4, !dbg !3261
  call void @llvm.dbg.value(metadata i16 %54, metadata !3202, metadata !DIExpression()), !dbg !3214
  %55 = and i16 %54, -64, !dbg !3262
  call void @llvm.dbg.value(metadata i16 %54, metadata !3202, metadata !DIExpression(DW_OP_constu, 18446744073709551608, DW_OP_and, DW_OP_stack_value)), !dbg !3214
  call void @llvm.dbg.value(metadata !DIArgList(i16 %54, i16 %2), metadata !3202, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_constu, 18446744073709551552, DW_OP_and, DW_OP_LLVM_arg, 1, DW_OP_or, DW_OP_stack_value)), !dbg !3214
  %56 = and i16 %2, -61, !dbg !3263
  call void @llvm.dbg.value(metadata !DIArgList(i16 %54, i16 %56), metadata !3202, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_constu, 18446744073709551552, DW_OP_and, DW_OP_LLVM_arg, 1, DW_OP_or, DW_OP_stack_value)), !dbg !3214
  call void @llvm.dbg.value(metadata !DIArgList(i16 %55, i16 %4, i16 %56), metadata !3202, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 2, DW_OP_or, DW_OP_LLVM_arg, 1, DW_OP_or, DW_OP_stack_value)), !dbg !3214
  %57 = and i16 %4, -57, !dbg !3264
  call void @llvm.dbg.value(metadata i16 undef, metadata !3202, metadata !DIExpression()), !dbg !3214
  %58 = or i16 %56, %3, !dbg !3263
  %59 = or i16 %58, %57, !dbg !3264
  %60 = or i16 %59, %55, !dbg !3265
  call void @llvm.dbg.value(metadata i16 %60, metadata !3202, metadata !DIExpression()), !dbg !3214
  store volatile i16 %60, i16* %53, align 4, !dbg !3266
  ret void, !dbg !3267
}

; Function Attrs: mustprogress nofree noinline norecurse nounwind optsize willreturn
define dso_local void @halUART_Get_VFIFO_Length(i32 noundef %0, i32 noundef %1, i32* nocapture noundef writeonly %2) local_unnamed_addr #4 !dbg !3268 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !3272, metadata !DIExpression()), !dbg !3275
  call void @llvm.dbg.value(metadata i32 %1, metadata !3273, metadata !DIExpression()), !dbg !3275
  call void @llvm.dbg.value(metadata i32* %2, metadata !3274, metadata !DIExpression()), !dbg !3275
  %4 = icmp eq i32 %0, 0, !dbg !3276
  %5 = icmp eq i32 %1, 0, !dbg !3278
  br i1 %4, label %6, label %16, !dbg !3279

6:                                                ; preds = %3
  br i1 %5, label %10, label %7, !dbg !3280

7:                                                ; preds = %6
  %8 = load volatile i16, i16* inttoptr (i32 -2097082568 to i16*), align 8, !dbg !3282
  %9 = zext i16 %8 to i32, !dbg !3282
  br label %26, !dbg !3285

10:                                               ; preds = %6
  %11 = load volatile i16, i16* inttoptr (i32 -2097082812 to i16*), align 4, !dbg !3286
  %12 = zext i16 %11 to i32, !dbg !3286
  store i32 %12, i32* %2, align 4, !dbg !3288
  %13 = load volatile i16, i16* inttoptr (i32 -2097082824 to i16*), align 8, !dbg !3289
  %14 = zext i16 %13 to i32, !dbg !3289
  %15 = sub nsw i32 %12, %14, !dbg !3290
  br label %26

16:                                               ; preds = %3
  br i1 %5, label %20, label %17, !dbg !3291

17:                                               ; preds = %16
  %18 = load volatile i16, i16* inttoptr (i32 -2097082056 to i16*), align 8, !dbg !3293
  %19 = zext i16 %18 to i32, !dbg !3293
  br label %26, !dbg !3296

20:                                               ; preds = %16
  %21 = load volatile i16, i16* inttoptr (i32 -2097082300 to i16*), align 4, !dbg !3297
  %22 = zext i16 %21 to i32, !dbg !3297
  store i32 %22, i32* %2, align 4, !dbg !3299
  %23 = load volatile i16, i16* inttoptr (i32 -2097082312 to i16*), align 8, !dbg !3300
  %24 = zext i16 %23 to i32, !dbg !3300
  %25 = sub nsw i32 %22, %24, !dbg !3301
  br label %26

26:                                               ; preds = %17, %20, %7, %10
  %27 = phi i32 [ %19, %17 ], [ %25, %20 ], [ %9, %7 ], [ %15, %10 ]
  store i32 %27, i32* %2, align 4, !dbg !3278
  ret void, !dbg !3302
}

; Function Attrs: nofree noinline norecurse nounwind optsize
define dso_local void @halUART_Read_VFIFO_Data(i32 noundef %0, i8* nocapture noundef writeonly %1, i32 noundef %2) local_unnamed_addr #3 !dbg !3303 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !3307, metadata !DIExpression()), !dbg !3311
  call void @llvm.dbg.value(metadata i8* %1, metadata !3308, metadata !DIExpression()), !dbg !3311
  call void @llvm.dbg.value(metadata i32 %2, metadata !3309, metadata !DIExpression()), !dbg !3311
  call void @llvm.dbg.value(metadata i32 0, metadata !3310, metadata !DIExpression()), !dbg !3311
  call void @llvm.dbg.value(metadata i32 0, metadata !3310, metadata !DIExpression()), !dbg !3311
  %4 = icmp eq i32 %2, 0, !dbg !3312
  br i1 %4, label %15, label %5, !dbg !3315

5:                                                ; preds = %3, %12
  %6 = phi i32 [ %13, %12 ], [ 0, %3 ]
  call void @llvm.dbg.value(metadata i32 %6, metadata !3310, metadata !DIExpression()), !dbg !3311
  switch i32 %0, label %12 [
    i32 0, label %8
    i32 1, label %7
  ], !dbg !3316

7:                                                ; preds = %5
  br label %8, !dbg !3318

8:                                                ; preds = %5, %7
  %9 = phi i8* [ inttoptr (i32 2030044416 to i8*), %7 ], [ inttoptr (i32 2030043904 to i8*), %5 ]
  %10 = load volatile i8, i8* %9, align 256, !dbg !3322
  %11 = getelementptr inbounds i8, i8* %1, i32 %6, !dbg !3322
  store i8 %10, i8* %11, align 1, !dbg !3322
  br label %12, !dbg !3323

12:                                               ; preds = %8, %5
  %13 = add nuw i32 %6, 1, !dbg !3323
  call void @llvm.dbg.value(metadata i32 %13, metadata !3310, metadata !DIExpression()), !dbg !3311
  %14 = icmp eq i32 %13, %2, !dbg !3312
  br i1 %14, label %15, label %5, !dbg !3315, !llvm.loop !3324

15:                                               ; preds = %12, %3
  ret void, !dbg !3326
}

; Function Attrs: nofree noinline norecurse nounwind optsize
define dso_local void @halUART_Write_VFIFO_Data(i32 noundef %0, i8* nocapture noundef readonly %1, i32 noundef %2) local_unnamed_addr #3 !dbg !3327 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !3333, metadata !DIExpression()), !dbg !3337
  call void @llvm.dbg.value(metadata i8* %1, metadata !3334, metadata !DIExpression()), !dbg !3337
  call void @llvm.dbg.value(metadata i32 %2, metadata !3335, metadata !DIExpression()), !dbg !3337
  call void @llvm.dbg.value(metadata i32 0, metadata !3336, metadata !DIExpression()), !dbg !3337
  call void @llvm.dbg.value(metadata i32 0, metadata !3336, metadata !DIExpression()), !dbg !3337
  %4 = icmp eq i32 %2, 0, !dbg !3338
  br i1 %4, label %16, label %5, !dbg !3341

5:                                                ; preds = %3, %13
  %6 = phi i32 [ %14, %13 ], [ 0, %3 ]
  call void @llvm.dbg.value(metadata i32 %6, metadata !3336, metadata !DIExpression()), !dbg !3337
  switch i32 %0, label %13 [
    i32 0, label %7
    i32 1, label %10
  ], !dbg !3342

7:                                                ; preds = %5
  %8 = getelementptr inbounds i8, i8* %1, i32 %6, !dbg !3344
  %9 = load i8, i8* %8, align 1, !dbg !3344
  store volatile i8 %9, i8* inttoptr (i32 2030043648 to i8*), align 512, !dbg !3347
  br label %13, !dbg !3348

10:                                               ; preds = %5
  %11 = getelementptr inbounds i8, i8* %1, i32 %6, !dbg !3349
  %12 = load i8, i8* %11, align 1, !dbg !3349
  store volatile i8 %12, i8* inttoptr (i32 2030044160 to i8*), align 1024, !dbg !3352
  br label %13, !dbg !3353

13:                                               ; preds = %5, %7, %10
  %14 = add nuw i32 %6, 1, !dbg !3354
  call void @llvm.dbg.value(metadata i32 %14, metadata !3336, metadata !DIExpression()), !dbg !3337
  %15 = icmp eq i32 %14, %2, !dbg !3338
  br i1 %15, label %16, label %5, !dbg !3341, !llvm.loop !3355

16:                                               ; preds = %13, %3
  ret void, !dbg !3357
}

; Function Attrs: noinline nounwind optsize
define dso_local void @halUART_Tx_VFIFO_Initialize(i32 noundef %0, i8* noundef %1, i32 noundef %2, i32 noundef %3) local_unnamed_addr #0 !dbg !3358 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !3362, metadata !DIExpression()), !dbg !3366
  call void @llvm.dbg.value(metadata i8* %1, metadata !3363, metadata !DIExpression()), !dbg !3366
  call void @llvm.dbg.value(metadata i32 %2, metadata !3364, metadata !DIExpression()), !dbg !3366
  call void @llvm.dbg.value(metadata i32 %3, metadata !3365, metadata !DIExpression()), !dbg !3366
  switch i32 %0, label %9 [
    i32 0, label %6
    i32 1, label %5
  ], !dbg !3367

5:                                                ; preds = %4
  br label %6, !dbg !3368

6:                                                ; preds = %4, %5
  %7 = phi i32 [ 16, %5 ], [ 14, %4 ]
  %8 = ptrtoint i8* %1 to i32, !dbg !3372
  tail call void @DMA_Vfifo_SetAdrs(i32 noundef %8, i32 noundef %2, i32 noundef %7, i32 noundef 0, i32 noundef %3, i32 noundef 0) #13, !dbg !3372
  tail call void @DMA_Vfifo_Flush(i32 noundef %7) #13, !dbg !3372
  br label %9, !dbg !3373

9:                                                ; preds = %6, %4
  ret void, !dbg !3373
}

; Function Attrs: optsize
declare dso_local void @DMA_Vfifo_SetAdrs(i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare dso_local void @DMA_Vfifo_Flush(i32 noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize
define dso_local void @halUART_Rx_VFIFO_Initialize(i32 noundef %0, i8* noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %5) local_unnamed_addr #0 !dbg !3374 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !3378, metadata !DIExpression()), !dbg !3384
  call void @llvm.dbg.value(metadata i8* %1, metadata !3379, metadata !DIExpression()), !dbg !3384
  call void @llvm.dbg.value(metadata i32 %2, metadata !3380, metadata !DIExpression()), !dbg !3384
  call void @llvm.dbg.value(metadata i32 %3, metadata !3381, metadata !DIExpression()), !dbg !3384
  call void @llvm.dbg.value(metadata i32 %4, metadata !3382, metadata !DIExpression()), !dbg !3384
  call void @llvm.dbg.value(metadata i32 %5, metadata !3383, metadata !DIExpression()), !dbg !3384
  switch i32 %0, label %11 [
    i32 0, label %8
    i32 1, label %7
  ], !dbg !3385

7:                                                ; preds = %6
  br label %8, !dbg !3386

8:                                                ; preds = %6, %7
  %9 = phi i32 [ 17, %7 ], [ 15, %6 ]
  %10 = ptrtoint i8* %1 to i32, !dbg !3390
  tail call void @DMA_Vfifo_SetAdrs(i32 noundef %10, i32 noundef %2, i32 noundef %9, i32 noundef %3, i32 noundef %4, i32 noundef %5) #13, !dbg !3390
  tail call void @DMA_Vfifo_Flush(i32 noundef %9) #13, !dbg !3390
  br label %11, !dbg !3391

11:                                               ; preds = %8, %6
  ret void, !dbg !3391
}

; Function Attrs: noinline nounwind optsize
define dso_local void @halUART_VDMA_Rx_Register_Callback(i32 noundef %0, void ()* noundef %1) local_unnamed_addr #0 !dbg !3392 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !3396, metadata !DIExpression()), !dbg !3398
  call void @llvm.dbg.value(metadata void ()* %1, metadata !3397, metadata !DIExpression()), !dbg !3398
  switch i32 %0, label %6 [
    i32 0, label %4
    i32 1, label %3
  ], !dbg !3399

3:                                                ; preds = %2
  br label %4, !dbg !3400

4:                                                ; preds = %2, %3
  %5 = phi i32 [ 17, %3 ], [ 15, %2 ]
  tail call void @DMA_Vfifo_Register_Callback(i32 noundef %5, void ()* noundef %1) #13, !dbg !3404
  br label %6, !dbg !3405

6:                                                ; preds = %4, %2
  ret void, !dbg !3405
}

; Function Attrs: optsize
declare dso_local void @DMA_Vfifo_Register_Callback(i32 noundef, void ()* noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize
define dso_local void @halUART_VDMA_Rx_Register_TO_Callback(i32 noundef %0, void ()* noundef %1) local_unnamed_addr #0 !dbg !3406 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !3408, metadata !DIExpression()), !dbg !3410
  call void @llvm.dbg.value(metadata void ()* %1, metadata !3409, metadata !DIExpression()), !dbg !3410
  switch i32 %0, label %6 [
    i32 0, label %4
    i32 1, label %3
  ], !dbg !3411

3:                                                ; preds = %2
  br label %4, !dbg !3412

4:                                                ; preds = %2, %3
  %5 = phi i32 [ 17, %3 ], [ 15, %2 ]
  tail call void @DMA_Vfifo_Register_TO_Callback(i32 noundef %5, void ()* noundef %1) #13, !dbg !3416
  br label %6, !dbg !3417

6:                                                ; preds = %4, %2
  ret void, !dbg !3417
}

; Function Attrs: optsize
declare dso_local void @DMA_Vfifo_Register_TO_Callback(i32 noundef, void ()* noundef) local_unnamed_addr #2

; Function Attrs: nofree noinline norecurse nounwind optsize
define dso_local void @uart_set_hardware_flowcontrol(i32 noundef %0) local_unnamed_addr #3 !dbg !3418 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !3420, metadata !DIExpression()), !dbg !3424
  %2 = icmp eq i32 %0, 0, !dbg !3425
  %3 = select i1 %2, i32 -2096955392, i32 -2096889856, !dbg !3425
  call void @llvm.dbg.value(metadata i32 %3, metadata !3421, metadata !DIExpression()), !dbg !3424
  %4 = or i32 %3, 12, !dbg !3426
  %5 = inttoptr i32 %4 to i32*, !dbg !3426
  %6 = load volatile i32, i32* %5, align 4, !dbg !3426
  call void @llvm.dbg.value(metadata i32 %6, metadata !3423, metadata !DIExpression(DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 16, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !3424
  store volatile i32 191, i32* %5, align 4, !dbg !3427
  %7 = or i32 %3, 8, !dbg !3428
  %8 = inttoptr i32 %7 to i32*, !dbg !3428
  %9 = load volatile i32, i32* %8, align 8, !dbg !3428
  call void @llvm.dbg.value(metadata i32 %9, metadata !3422, metadata !DIExpression()), !dbg !3424
  %10 = and i32 %9, 65327, !dbg !3429
  %11 = or i32 %10, 208, !dbg !3429
  call void @llvm.dbg.value(metadata i32 %9, metadata !3422, metadata !DIExpression(DW_OP_constu, 208, DW_OP_or, DW_OP_stack_value)), !dbg !3424
  store volatile i32 %11, i32* %8, align 8, !dbg !3430
  %12 = or i32 %3, 68, !dbg !3431
  %13 = inttoptr i32 %12 to i32*, !dbg !3431
  store volatile i32 0, i32* %13, align 4, !dbg !3432
  store volatile i32 0, i32* %5, align 4, !dbg !3433
  %14 = or i32 %3, 16, !dbg !3434
  %15 = inttoptr i32 %14 to i32*, !dbg !3434
  store volatile i32 2, i32* %15, align 16, !dbg !3435
  %16 = and i32 %6, 65535, !dbg !3436
  store volatile i32 %16, i32* %5, align 4, !dbg !3437
  ret void, !dbg !3438
}

; Function Attrs: nofree noinline norecurse nounwind optsize
define dso_local void @uart_set_software_flowcontrol(i32 noundef %0, i8 noundef zeroext %1, i8 noundef zeroext %2, i8 noundef zeroext %3) local_unnamed_addr #3 !dbg !3439 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !3443, metadata !DIExpression()), !dbg !3450
  call void @llvm.dbg.value(metadata i8 %1, metadata !3444, metadata !DIExpression()), !dbg !3450
  call void @llvm.dbg.value(metadata i8 %2, metadata !3445, metadata !DIExpression()), !dbg !3450
  call void @llvm.dbg.value(metadata i8 %3, metadata !3446, metadata !DIExpression()), !dbg !3450
  %5 = icmp eq i32 %0, 0, !dbg !3451
  %6 = select i1 %5, i32 -2096955392, i32 -2096889856, !dbg !3451
  call void @llvm.dbg.value(metadata i32 %6, metadata !3447, metadata !DIExpression()), !dbg !3450
  %7 = or i32 %6, 12, !dbg !3452
  %8 = inttoptr i32 %7 to i32*, !dbg !3452
  %9 = load volatile i32, i32* %8, align 4, !dbg !3452
  call void @llvm.dbg.value(metadata i32 %9, metadata !3449, metadata !DIExpression(DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 16, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !3450
  store volatile i32 191, i32* %8, align 4, !dbg !3453
  %10 = zext i8 %1 to i32, !dbg !3454
  %11 = or i32 %6, 16, !dbg !3455
  %12 = inttoptr i32 %11 to i32*, !dbg !3455
  store volatile i32 %10, i32* %12, align 16, !dbg !3456
  %13 = or i32 %6, 20, !dbg !3457
  %14 = inttoptr i32 %13 to i32*, !dbg !3457
  store volatile i32 %10, i32* %14, align 4, !dbg !3458
  %15 = zext i8 %2 to i32, !dbg !3459
  %16 = or i32 %6, 24, !dbg !3460
  %17 = inttoptr i32 %16 to i32*, !dbg !3460
  store volatile i32 %15, i32* %17, align 8, !dbg !3461
  %18 = or i32 %6, 28, !dbg !3462
  %19 = inttoptr i32 %18 to i32*, !dbg !3462
  store volatile i32 %15, i32* %19, align 4, !dbg !3463
  %20 = or i32 %6, 8, !dbg !3464
  %21 = inttoptr i32 %20 to i32*, !dbg !3464
  %22 = load volatile i32, i32* %21, align 8, !dbg !3464
  call void @llvm.dbg.value(metadata i32 %22, metadata !3448, metadata !DIExpression()), !dbg !3450
  %23 = and i32 %22, 65525, !dbg !3465
  %24 = or i32 %23, 10, !dbg !3465
  call void @llvm.dbg.value(metadata i32 %22, metadata !3448, metadata !DIExpression(DW_OP_constu, 10, DW_OP_or, DW_OP_stack_value)), !dbg !3450
  store volatile i32 %24, i32* %21, align 8, !dbg !3466
  %25 = and i32 %9, 65535, !dbg !3467
  store volatile i32 %25, i32* %8, align 4, !dbg !3468
  %26 = zext i8 %3 to i32, !dbg !3469
  %27 = or i32 %6, 64, !dbg !3470
  %28 = inttoptr i32 %27 to i32*, !dbg !3470
  store volatile i32 %26, i32* %28, align 64, !dbg !3471
  %29 = or i32 %6, 68, !dbg !3472
  %30 = inttoptr i32 %29 to i32*, !dbg !3472
  store volatile i32 1, i32* %30, align 4, !dbg !3473
  ret void, !dbg !3474
}

; Function Attrs: nofree noinline norecurse nounwind optsize
define dso_local void @uart_disable_flowcontrol(i32 noundef %0) local_unnamed_addr #3 !dbg !3475 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !3477, metadata !DIExpression()), !dbg !3480
  %2 = icmp eq i32 %0, 0, !dbg !3481
  %3 = select i1 %2, i32 -2096955392, i32 -2096889856, !dbg !3481
  call void @llvm.dbg.value(metadata i32 %3, metadata !3478, metadata !DIExpression()), !dbg !3480
  %4 = or i32 %3, 12, !dbg !3482
  %5 = inttoptr i32 %4 to i32*, !dbg !3482
  %6 = load volatile i32, i32* %5, align 4, !dbg !3482
  call void @llvm.dbg.value(metadata i32 %6, metadata !3479, metadata !DIExpression(DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 16, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !3480
  store volatile i32 191, i32* %5, align 4, !dbg !3483
  %7 = or i32 %3, 8, !dbg !3484
  %8 = inttoptr i32 %7 to i32*, !dbg !3484
  store volatile i32 0, i32* %8, align 8, !dbg !3485
  store volatile i32 0, i32* %5, align 4, !dbg !3486
  %9 = and i32 %6, 65535, !dbg !3487
  store volatile i32 %9, i32* %5, align 4, !dbg !3488
  ret void, !dbg !3489
}

; Function Attrs: nofree noinline norecurse nounwind optsize
define dso_local void @uart_reset_default_value(i32 noundef %0) local_unnamed_addr #3 !dbg !3490 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !3492, metadata !DIExpression()), !dbg !3494
  %2 = icmp eq i32 %0, 0, !dbg !3495
  %3 = select i1 %2, i32 -2096955392, i32 -2096889856, !dbg !3495
  call void @llvm.dbg.value(metadata i32 %3, metadata !3493, metadata !DIExpression()), !dbg !3494
  %4 = or i32 %3, 12, !dbg !3496
  %5 = inttoptr i32 %4 to i32*, !dbg !3496
  store volatile i32 191, i32* %5, align 4, !dbg !3497
  %6 = or i32 %3, 8, !dbg !3498
  %7 = inttoptr i32 %6 to i32*, !dbg !3498
  store volatile i32 16, i32* %7, align 8, !dbg !3499
  %8 = or i32 %3, 16, !dbg !3500
  %9 = inttoptr i32 %8 to i32*, !dbg !3500
  store volatile i32 0, i32* %9, align 16, !dbg !3501
  %10 = or i32 %3, 24, !dbg !3502
  %11 = inttoptr i32 %10 to i32*, !dbg !3502
  store volatile i32 0, i32* %11, align 8, !dbg !3503
  store volatile i32 128, i32* %5, align 4, !dbg !3504
  %12 = inttoptr i32 %3 to i32*, !dbg !3505
  store volatile i32 0, i32* %12, align 65536, !dbg !3506
  %13 = or i32 %3, 4, !dbg !3507
  %14 = inttoptr i32 %13 to i32*, !dbg !3507
  store volatile i32 0, i32* %14, align 4, !dbg !3508
  store volatile i32 0, i32* %5, align 4, !dbg !3509
  store volatile i32 0, i32* %14, align 4, !dbg !3510
  store volatile i32 0, i32* %7, align 8, !dbg !3511
  store volatile i32 191, i32* %5, align 4, !dbg !3512
  store volatile i32 0, i32* %7, align 8, !dbg !3513
  store volatile i32 0, i32* %5, align 4, !dbg !3514
  store volatile i32 0, i32* %9, align 16, !dbg !3515
  %15 = or i32 %3, 28, !dbg !3516
  %16 = inttoptr i32 %15 to i32*, !dbg !3516
  store volatile i32 0, i32* %16, align 4, !dbg !3517
  %17 = or i32 %3, 36, !dbg !3518
  %18 = inttoptr i32 %17 to i32*, !dbg !3518
  store volatile i32 0, i32* %18, align 4, !dbg !3519
  %19 = or i32 %3, 40, !dbg !3520
  %20 = inttoptr i32 %19 to i32*, !dbg !3520
  store volatile i32 0, i32* %20, align 8, !dbg !3521
  %21 = or i32 %3, 44, !dbg !3522
  %22 = inttoptr i32 %21 to i32*, !dbg !3522
  store volatile i32 0, i32* %22, align 4, !dbg !3523
  %23 = or i32 %3, 52, !dbg !3524
  %24 = inttoptr i32 %23 to i32*, !dbg !3524
  store volatile i32 0, i32* %24, align 4, !dbg !3525
  %25 = or i32 %3, 60, !dbg !3526
  %26 = inttoptr i32 %25 to i32*, !dbg !3526
  store volatile i32 0, i32* %26, align 4, !dbg !3527
  %27 = or i32 %3, 64, !dbg !3528
  %28 = inttoptr i32 %27 to i32*, !dbg !3528
  store volatile i32 0, i32* %28, align 64, !dbg !3529
  %29 = or i32 %3, 68, !dbg !3530
  %30 = inttoptr i32 %29 to i32*, !dbg !3530
  store volatile i32 0, i32* %30, align 4, !dbg !3531
  %31 = or i32 %3, 72, !dbg !3532
  %32 = inttoptr i32 %31 to i32*, !dbg !3532
  store volatile i32 0, i32* %32, align 8, !dbg !3533
  %33 = or i32 %3, 76, !dbg !3534
  %34 = inttoptr i32 %33 to i32*, !dbg !3534
  store volatile i32 0, i32* %34, align 4, !dbg !3535
  %35 = or i32 %3, 80, !dbg !3536
  %36 = inttoptr i32 %35 to i32*, !dbg !3536
  store volatile i32 0, i32* %36, align 16, !dbg !3537
  %37 = or i32 %3, 84, !dbg !3538
  %38 = inttoptr i32 %37 to i32*, !dbg !3538
  store volatile i32 0, i32* %38, align 4, !dbg !3539
  %39 = or i32 %3, 88, !dbg !3540
  %40 = inttoptr i32 %39 to i32*, !dbg !3540
  store volatile i32 0, i32* %40, align 8, !dbg !3541
  %41 = or i32 %3, 96, !dbg !3542
  %42 = inttoptr i32 %41 to i32*, !dbg !3542
  store volatile i32 0, i32* %42, align 32, !dbg !3543
  ret void, !dbg !3544
}

; Function Attrs: nofree noinline norecurse nounwind optsize
define dso_local void @uart_query_empty(i32 noundef %0) local_unnamed_addr #3 !dbg !3545 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !3547, metadata !DIExpression()), !dbg !3549
  %2 = icmp eq i32 %0, 0, !dbg !3550
  call void @llvm.dbg.value(metadata i32 undef, metadata !3548, metadata !DIExpression()), !dbg !3549
  %3 = select i1 %2, i32 -2096955372, i32 -2096889836
  %4 = inttoptr i32 %3 to i32*
  br label %5, !dbg !3551

5:                                                ; preds = %5, %1
  %6 = load volatile i32, i32* %4, align 4, !dbg !3552
  %7 = and i32 %6, 64, !dbg !3553
  %8 = icmp eq i32 %7, 0, !dbg !3554
  br i1 %8, label %5, label %9, !dbg !3551, !llvm.loop !3555

9:                                                ; preds = %5
  ret void, !dbg !3557
}

; Function Attrs: noinline nounwind optsize
define dso_local void @log_hal_fatal_internal(i8* nocapture noundef readnone %0, i32 noundef %1, i8* noundef %2, ...) local_unnamed_addr #0 !dbg !3558 {
  %4 = alloca %struct.__va_list, align 4
  %5 = alloca i32, align 4
  call void @llvm.dbg.value(metadata i8* %0, metadata !3562, metadata !DIExpression()), !dbg !3575
  call void @llvm.dbg.value(metadata i32 %1, metadata !3563, metadata !DIExpression()), !dbg !3575
  call void @llvm.dbg.value(metadata i8* %2, metadata !3564, metadata !DIExpression()), !dbg !3575
  %6 = bitcast %struct.__va_list* %4 to i8*, !dbg !3576
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %6) #15, !dbg !3576
  call void @llvm.dbg.declare(metadata %struct.__va_list* %4, metadata !3565, metadata !DIExpression()), !dbg !3577
  %7 = bitcast i32* %5 to i8*, !dbg !3578
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %7) #15, !dbg !3578
  call void @llvm.dbg.value(metadata i32* %5, metadata !3574, metadata !DIExpression(DW_OP_deref)), !dbg !3575
  %8 = call i32 @hal_nvic_save_and_set_interrupt_mask(i32* noundef nonnull %5) #13, !dbg !3579
  call void @llvm.va_start(i8* nonnull %6), !dbg !3580
  %9 = bitcast %struct.__va_list* %4 to i32*, !dbg !3581
  %10 = load i32, i32* %9, align 4, !dbg !3581
  %11 = insertvalue [1 x i32] poison, i32 %10, 0, !dbg !3581
  %12 = call i32 @vprintf(i8* noundef %2, [1 x i32] %11) #13, !dbg !3581
  call void @llvm.va_end(i8* nonnull %6), !dbg !3582
  %13 = load i32, i32* %5, align 4, !dbg !3583
  call void @llvm.dbg.value(metadata i32 %13, metadata !3574, metadata !DIExpression()), !dbg !3575
  %14 = call i32 @hal_nvic_restore_interrupt_mask(i32 noundef %13) #13, !dbg !3584
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %7) #15, !dbg !3585
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %6) #15, !dbg !3585
  ret void, !dbg !3585
}

; Function Attrs: nofree nosync nounwind willreturn
declare void @llvm.va_start(i8*) #8

; Function Attrs: optsize
declare dso_local i32 @vprintf(i8* noundef, [1 x i32]) local_unnamed_addr #2

; Function Attrs: nofree nosync nounwind willreturn
declare void @llvm.va_end(i8*) #8

; Function Attrs: noinline nounwind optsize
define dso_local void @log_hal_error_internal(i8* nocapture noundef readnone %0, i32 noundef %1, i8* noundef %2, ...) local_unnamed_addr #0 !dbg !3586 {
  %4 = alloca %struct.__va_list, align 4
  %5 = alloca i32, align 4
  call void @llvm.dbg.value(metadata i8* %0, metadata !3588, metadata !DIExpression()), !dbg !3593
  call void @llvm.dbg.value(metadata i32 %1, metadata !3589, metadata !DIExpression()), !dbg !3593
  call void @llvm.dbg.value(metadata i8* %2, metadata !3590, metadata !DIExpression()), !dbg !3593
  %6 = bitcast %struct.__va_list* %4 to i8*, !dbg !3594
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %6) #15, !dbg !3594
  call void @llvm.dbg.declare(metadata %struct.__va_list* %4, metadata !3591, metadata !DIExpression()), !dbg !3595
  %7 = bitcast i32* %5 to i8*, !dbg !3596
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %7) #15, !dbg !3596
  call void @llvm.dbg.value(metadata i32* %5, metadata !3592, metadata !DIExpression(DW_OP_deref)), !dbg !3593
  %8 = call i32 @hal_nvic_save_and_set_interrupt_mask(i32* noundef nonnull %5) #13, !dbg !3597
  call void @llvm.va_start(i8* nonnull %6), !dbg !3598
  %9 = bitcast %struct.__va_list* %4 to i32*, !dbg !3599
  %10 = load i32, i32* %9, align 4, !dbg !3599
  %11 = insertvalue [1 x i32] poison, i32 %10, 0, !dbg !3599
  %12 = call i32 @vprintf(i8* noundef %2, [1 x i32] %11) #13, !dbg !3599
  call void @llvm.va_end(i8* nonnull %6), !dbg !3600
  %13 = load i32, i32* %5, align 4, !dbg !3601
  call void @llvm.dbg.value(metadata i32 %13, metadata !3592, metadata !DIExpression()), !dbg !3593
  %14 = call i32 @hal_nvic_restore_interrupt_mask(i32 noundef %13) #13, !dbg !3602
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %7) #15, !dbg !3603
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %6) #15, !dbg !3603
  ret void, !dbg !3603
}

; Function Attrs: noinline nounwind optsize
define dso_local void @log_hal_warning_internal(i8* nocapture noundef readnone %0, i32 noundef %1, i8* noundef %2, ...) local_unnamed_addr #0 !dbg !3604 {
  %4 = alloca %struct.__va_list, align 4
  %5 = alloca i32, align 4
  call void @llvm.dbg.value(metadata i8* %0, metadata !3606, metadata !DIExpression()), !dbg !3611
  call void @llvm.dbg.value(metadata i32 %1, metadata !3607, metadata !DIExpression()), !dbg !3611
  call void @llvm.dbg.value(metadata i8* %2, metadata !3608, metadata !DIExpression()), !dbg !3611
  %6 = bitcast %struct.__va_list* %4 to i8*, !dbg !3612
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %6) #15, !dbg !3612
  call void @llvm.dbg.declare(metadata %struct.__va_list* %4, metadata !3609, metadata !DIExpression()), !dbg !3613
  %7 = bitcast i32* %5 to i8*, !dbg !3614
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %7) #15, !dbg !3614
  call void @llvm.dbg.value(metadata i32* %5, metadata !3610, metadata !DIExpression(DW_OP_deref)), !dbg !3611
  %8 = call i32 @hal_nvic_save_and_set_interrupt_mask(i32* noundef nonnull %5) #13, !dbg !3615
  call void @llvm.va_start(i8* nonnull %6), !dbg !3616
  %9 = bitcast %struct.__va_list* %4 to i32*, !dbg !3617
  %10 = load i32, i32* %9, align 4, !dbg !3617
  %11 = insertvalue [1 x i32] poison, i32 %10, 0, !dbg !3617
  %12 = call i32 @vprintf(i8* noundef %2, [1 x i32] %11) #13, !dbg !3617
  call void @llvm.va_end(i8* nonnull %6), !dbg !3618
  %13 = load i32, i32* %5, align 4, !dbg !3619
  call void @llvm.dbg.value(metadata i32 %13, metadata !3610, metadata !DIExpression()), !dbg !3611
  %14 = call i32 @hal_nvic_restore_interrupt_mask(i32 noundef %13) #13, !dbg !3620
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %7) #15, !dbg !3621
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %6) #15, !dbg !3621
  ret void, !dbg !3621
}

; Function Attrs: noinline nounwind optsize
define dso_local void @log_hal_info_internal(i8* nocapture noundef readnone %0, i32 noundef %1, i8* noundef %2, ...) local_unnamed_addr #0 !dbg !3622 {
  %4 = alloca %struct.__va_list, align 4
  %5 = alloca i32, align 4
  call void @llvm.dbg.value(metadata i8* %0, metadata !3624, metadata !DIExpression()), !dbg !3629
  call void @llvm.dbg.value(metadata i32 %1, metadata !3625, metadata !DIExpression()), !dbg !3629
  call void @llvm.dbg.value(metadata i8* %2, metadata !3626, metadata !DIExpression()), !dbg !3629
  %6 = bitcast %struct.__va_list* %4 to i8*, !dbg !3630
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %6) #15, !dbg !3630
  call void @llvm.dbg.declare(metadata %struct.__va_list* %4, metadata !3627, metadata !DIExpression()), !dbg !3631
  %7 = bitcast i32* %5 to i8*, !dbg !3632
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %7) #15, !dbg !3632
  call void @llvm.dbg.value(metadata i32* %5, metadata !3628, metadata !DIExpression(DW_OP_deref)), !dbg !3629
  %8 = call i32 @hal_nvic_save_and_set_interrupt_mask(i32* noundef nonnull %5) #13, !dbg !3633
  call void @llvm.va_start(i8* nonnull %6), !dbg !3634
  %9 = bitcast %struct.__va_list* %4 to i32*, !dbg !3635
  %10 = load i32, i32* %9, align 4, !dbg !3635
  %11 = insertvalue [1 x i32] poison, i32 %10, 0, !dbg !3635
  %12 = call i32 @vprintf(i8* noundef %2, [1 x i32] %11) #13, !dbg !3635
  call void @llvm.va_end(i8* nonnull %6), !dbg !3636
  %13 = load i32, i32* %5, align 4, !dbg !3637
  call void @llvm.dbg.value(metadata i32 %13, metadata !3628, metadata !DIExpression()), !dbg !3629
  %14 = call i32 @hal_nvic_restore_interrupt_mask(i32 noundef %13) #13, !dbg !3638
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %7) #15, !dbg !3639
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %6) #15, !dbg !3639
  ret void, !dbg !3639
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize readnone willreturn
define dso_local void @log_hal_dump_internal(i8* nocapture noundef %0, i32 noundef %1, i8* nocapture noundef %2, i8* nocapture noundef %3, i32 noundef %4, ...) local_unnamed_addr #9 !dbg !3640 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !3646, metadata !DIExpression()), !dbg !3651
  call void @llvm.dbg.value(metadata i32 %1, metadata !3647, metadata !DIExpression()), !dbg !3651
  call void @llvm.dbg.value(metadata i8* %2, metadata !3648, metadata !DIExpression()), !dbg !3651
  call void @llvm.dbg.value(metadata i8* %3, metadata !3649, metadata !DIExpression()), !dbg !3651
  call void @llvm.dbg.value(metadata i32 %4, metadata !3650, metadata !DIExpression()), !dbg !3651
  ret void, !dbg !3652
}

; Function Attrs: noinline nounwind optsize
define dso_local i32 @hal_cache_init() local_unnamed_addr #0 !dbg !3653 {
  %1 = tail call i32 @save_and_set_interrupt_mask() #13, !dbg !3661
  call void @llvm.dbg.value(metadata i32 %1, metadata !3660, metadata !DIExpression()), !dbg !3662
  %2 = load volatile i8, i8* @g_cache_status, align 1, !dbg !3663, !range !3665
  %3 = icmp eq i8 %2, 0, !dbg !3663
  br i1 %3, label %5, label %4, !dbg !3666

4:                                                ; preds = %0
  tail call void @restore_interrupt_mask(i32 noundef %1) #13, !dbg !3667
  br label %15, !dbg !3669

5:                                                ; preds = %0
  store volatile i8 1, i8* @g_cache_status, align 1, !dbg !3670
  tail call void @restore_interrupt_mask(i32 noundef %1) #13, !dbg !3672
  %6 = tail call i32 @hal_cache_invalidate_all_cache_lines() #14, !dbg !3673
  store volatile i32 0, i32* inttoptr (i32 22216704 to i32*), align 65536, !dbg !3674
  store volatile i32 0, i32* inttoptr (i32 22216748 to i32*), align 4, !dbg !3675
  store i32 0, i32* getelementptr inbounds (%union.CACHE_CON_Type, %union.CACHE_CON_Type* @g_cache_con, i32 0, i32 0, i32 0), align 4, !dbg !3676
  store i32 0, i32* @g_cache_region_en, align 4, !dbg !3677
  call void @llvm.dbg.value(metadata i32 0, metadata !3658, metadata !DIExpression()), !dbg !3662
  br label %7, !dbg !3678

7:                                                ; preds = %5, %7
  %8 = phi i32 [ 0, %5 ], [ %13, %7 ]
  call void @llvm.dbg.value(metadata i32 %8, metadata !3658, metadata !DIExpression()), !dbg !3662
  %9 = getelementptr inbounds [16 x i32], [16 x i32]* inttoptr (i32 22282240 to [16 x i32]*), i32 0, i32 %8, !dbg !3680
  store volatile i32 0, i32* %9, align 4, !dbg !3683
  %10 = getelementptr inbounds [16 x i32], [16 x i32]* inttoptr (i32 22282304 to [16 x i32]*), i32 0, i32 %8, !dbg !3684
  store volatile i32 0, i32* %10, align 4, !dbg !3685
  %11 = getelementptr inbounds [16 x %struct.CACHE_ENTRY_Type], [16 x %struct.CACHE_ENTRY_Type]* @g_cache_entry, i32 0, i32 %8, i32 0, i32 0, i32 0, !dbg !3686
  store i32 0, i32* %11, align 4, !dbg !3687
  %12 = getelementptr inbounds [16 x %struct.CACHE_ENTRY_Type], [16 x %struct.CACHE_ENTRY_Type]* @g_cache_entry, i32 0, i32 %8, i32 1, i32 0, i32 0, !dbg !3688
  store i32 0, i32* %12, align 4, !dbg !3689
  %13 = add nuw nsw i32 %8, 1, !dbg !3690
  call void @llvm.dbg.value(metadata i32 %13, metadata !3658, metadata !DIExpression()), !dbg !3662
  %14 = icmp eq i32 %13, 16, !dbg !3691
  br i1 %14, label %15, label %7, !dbg !3678, !llvm.loop !3692

15:                                               ; preds = %7, %4
  %16 = phi i32 [ -6, %4 ], [ 0, %7 ], !dbg !3662
  ret i32 %16, !dbg !3694
}

; Function Attrs: noinline nounwind optsize
define dso_local i32 @hal_cache_invalidate_all_cache_lines() local_unnamed_addr #0 section ".ramTEXT" !dbg !3695 {
  %1 = tail call i32 @save_and_set_interrupt_mask() #13, !dbg !3698
  call void @llvm.dbg.value(metadata i32 %1, metadata !3697, metadata !DIExpression()), !dbg !3699
  %2 = load volatile i32, i32* inttoptr (i32 22216708 to i32*), align 4, !dbg !3700
  %3 = and i32 %2, -31, !dbg !3700
  store volatile i32 %3, i32* inttoptr (i32 22216708 to i32*), align 4, !dbg !3700
  %4 = load volatile i32, i32* inttoptr (i32 22216708 to i32*), align 4, !dbg !3701
  %5 = or i32 %4, 19, !dbg !3701
  store volatile i32 %5, i32* inttoptr (i32 22216708 to i32*), align 4, !dbg !3701
  %6 = load volatile i32, i32* inttoptr (i32 22216708 to i32*), align 4, !dbg !3702
  %7 = and i32 %6, -31, !dbg !3702
  store volatile i32 %7, i32* inttoptr (i32 22216708 to i32*), align 4, !dbg !3702
  %8 = load volatile i32, i32* inttoptr (i32 22216708 to i32*), align 4, !dbg !3703
  %9 = or i32 %8, 3, !dbg !3703
  store volatile i32 %9, i32* inttoptr (i32 22216708 to i32*), align 4, !dbg !3703
  tail call void asm sideeffect "isb", ""() #15, !dbg !3704, !srcloc !3708
  tail call void @restore_interrupt_mask(i32 noundef %1) #13, !dbg !3709
  ret i32 0, !dbg !3710
}

; Function Attrs: noinline nounwind optsize
define dso_local i32 @hal_cache_deinit() local_unnamed_addr #0 !dbg !3711 {
  %1 = tail call i32 @hal_cache_invalidate_all_cache_lines() #14, !dbg !3714
  store volatile i32 0, i32* inttoptr (i32 22216704 to i32*), align 65536, !dbg !3715
  store volatile i32 0, i32* inttoptr (i32 22216748 to i32*), align 4, !dbg !3716
  store i32 0, i32* getelementptr inbounds (%union.CACHE_CON_Type, %union.CACHE_CON_Type* @g_cache_con, i32 0, i32 0, i32 0), align 4, !dbg !3717
  store i32 0, i32* @g_cache_region_en, align 4, !dbg !3718
  call void @llvm.dbg.value(metadata i32 0, metadata !3713, metadata !DIExpression()), !dbg !3719
  br label %2, !dbg !3720

2:                                                ; preds = %0, %2
  %3 = phi i32 [ 0, %0 ], [ %8, %2 ]
  call void @llvm.dbg.value(metadata i32 %3, metadata !3713, metadata !DIExpression()), !dbg !3719
  %4 = getelementptr inbounds [16 x i32], [16 x i32]* inttoptr (i32 22282240 to [16 x i32]*), i32 0, i32 %3, !dbg !3722
  store volatile i32 0, i32* %4, align 4, !dbg !3725
  %5 = getelementptr inbounds [16 x i32], [16 x i32]* inttoptr (i32 22282304 to [16 x i32]*), i32 0, i32 %3, !dbg !3726
  store volatile i32 0, i32* %5, align 4, !dbg !3727
  %6 = getelementptr inbounds [16 x %struct.CACHE_ENTRY_Type], [16 x %struct.CACHE_ENTRY_Type]* @g_cache_entry, i32 0, i32 %3, i32 0, i32 0, i32 0, !dbg !3728
  store i32 0, i32* %6, align 4, !dbg !3729
  %7 = getelementptr inbounds [16 x %struct.CACHE_ENTRY_Type], [16 x %struct.CACHE_ENTRY_Type]* @g_cache_entry, i32 0, i32 %3, i32 1, i32 0, i32 0, !dbg !3730
  store i32 0, i32* %7, align 4, !dbg !3731
  %8 = add nuw nsw i32 %3, 1, !dbg !3732
  call void @llvm.dbg.value(metadata i32 %8, metadata !3713, metadata !DIExpression()), !dbg !3719
  %9 = icmp eq i32 %8, 16, !dbg !3733
  br i1 %9, label %10, label %2, !dbg !3720, !llvm.loop !3734

10:                                               ; preds = %2
  store volatile i8 0, i8* @g_cache_status, align 1, !dbg !3736
  ret i32 0, !dbg !3737
}

; Function Attrs: nofree noinline norecurse nounwind optsize
define dso_local i32 @hal_cache_enable() local_unnamed_addr #3 !dbg !3738 {
  %1 = load i32, i32* getelementptr inbounds (%union.CACHE_CON_Type, %union.CACHE_CON_Type* @g_cache_con, i32 0, i32 0, i32 0), align 4, !dbg !3739
  %2 = and i32 %1, 768, !dbg !3741
  %3 = icmp eq i32 %2, 0, !dbg !3741
  br i1 %3, label %8, label %4, !dbg !3742

4:                                                ; preds = %0
  %5 = load volatile i32, i32* inttoptr (i32 22216704 to i32*), align 65536, !dbg !3743
  %6 = or i32 %5, 13, !dbg !3743
  store volatile i32 %6, i32* inttoptr (i32 22216704 to i32*), align 65536, !dbg !3743
  %7 = load volatile i32, i32* inttoptr (i32 22216704 to i32*), align 65536, !dbg !3744
  store i32 %7, i32* getelementptr inbounds (%union.CACHE_CON_Type, %union.CACHE_CON_Type* @g_cache_con, i32 0, i32 0, i32 0), align 4, !dbg !3745
  br label %8, !dbg !3746

8:                                                ; preds = %0, %4
  %9 = phi i32 [ 0, %4 ], [ -5, %0 ], !dbg !3747
  ret i32 %9, !dbg !3748
}

; Function Attrs: noinline nounwind optsize
define dso_local i32 @hal_cache_disable() local_unnamed_addr #0 !dbg !3749 {
  %1 = tail call i32 @save_and_set_interrupt_mask() #13, !dbg !3752
  call void @llvm.dbg.value(metadata i32 %1, metadata !3751, metadata !DIExpression()), !dbg !3753
  %2 = load volatile i32, i32* inttoptr (i32 22216704 to i32*), align 65536, !dbg !3754
  %3 = and i32 %2, 1, !dbg !3756
  %4 = icmp eq i32 %3, 0, !dbg !3756
  br i1 %4, label %7, label %5, !dbg !3757

5:                                                ; preds = %0
  %6 = tail call i32 @hal_cache_invalidate_all_cache_lines() #14, !dbg !3758
  br label %7, !dbg !3760

7:                                                ; preds = %5, %0
  %8 = load volatile i32, i32* inttoptr (i32 22216704 to i32*), align 65536, !dbg !3761
  %9 = and i32 %8, -2, !dbg !3761
  store volatile i32 %9, i32* inttoptr (i32 22216704 to i32*), align 65536, !dbg !3761
  %10 = load volatile i32, i32* inttoptr (i32 22216704 to i32*), align 65536, !dbg !3762
  store i32 %10, i32* getelementptr inbounds (%union.CACHE_CON_Type, %union.CACHE_CON_Type* @g_cache_con, i32 0, i32 0, i32 0), align 4, !dbg !3763
  tail call void @restore_interrupt_mask(i32 noundef %1) #13, !dbg !3764
  ret i32 0, !dbg !3765
}

; Function Attrs: nofree noinline norecurse nounwind optsize
define dso_local i32 @hal_cache_region_enable(i32 noundef %0) local_unnamed_addr #3 !dbg !3766 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !3770, metadata !DIExpression()), !dbg !3771
  %2 = icmp ugt i32 %0, 15, !dbg !3772
  br i1 %2, label %13, label %3, !dbg !3774

3:                                                ; preds = %1
  %4 = getelementptr inbounds [16 x i32], [16 x i32]* inttoptr (i32 22282240 to [16 x i32]*), i32 0, i32 %0, !dbg !3775
  %5 = load volatile i32, i32* %4, align 4, !dbg !3775
  %6 = and i32 %5, 256, !dbg !3777
  %7 = icmp eq i32 %6, 0, !dbg !3777
  br i1 %7, label %13, label %8, !dbg !3778

8:                                                ; preds = %3
  %9 = shl nuw nsw i32 1, %0, !dbg !3779
  %10 = load volatile i32, i32* inttoptr (i32 22216748 to i32*), align 4, !dbg !3781
  %11 = or i32 %10, %9, !dbg !3781
  store volatile i32 %11, i32* inttoptr (i32 22216748 to i32*), align 4, !dbg !3781
  %12 = load volatile i32, i32* inttoptr (i32 22216748 to i32*), align 4, !dbg !3782
  store i32 %12, i32* @g_cache_region_en, align 4, !dbg !3783
  br label %13, !dbg !3784

13:                                               ; preds = %3, %1, %8
  %14 = phi i32 [ 0, %8 ], [ -4, %1 ], [ -1, %3 ], !dbg !3771
  ret i32 %14, !dbg !3785
}

; Function Attrs: nofree noinline norecurse nounwind optsize
define dso_local i32 @hal_cache_region_disable(i32 noundef %0) local_unnamed_addr #3 !dbg !3786 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !3788, metadata !DIExpression()), !dbg !3789
  %2 = icmp ugt i32 %0, 15, !dbg !3790
  br i1 %2, label %11, label %3, !dbg !3792

3:                                                ; preds = %1
  %4 = shl nuw nsw i32 1, %0, !dbg !3793
  %5 = xor i32 %4, -1, !dbg !3794
  %6 = load volatile i32, i32* inttoptr (i32 22216748 to i32*), align 4, !dbg !3795
  %7 = and i32 %6, %5, !dbg !3795
  store volatile i32 %7, i32* inttoptr (i32 22216748 to i32*), align 4, !dbg !3795
  %8 = load volatile i32, i32* inttoptr (i32 22216748 to i32*), align 4, !dbg !3796
  store i32 %8, i32* @g_cache_region_en, align 4, !dbg !3797
  %9 = getelementptr inbounds [16 x %struct.CACHE_ENTRY_Type], [16 x %struct.CACHE_ENTRY_Type]* @g_cache_entry, i32 0, i32 %0, i32 0, i32 0, i32 0, !dbg !3798
  store i32 0, i32* %9, align 4, !dbg !3799
  %10 = getelementptr inbounds [16 x %struct.CACHE_ENTRY_Type], [16 x %struct.CACHE_ENTRY_Type]* @g_cache_entry, i32 0, i32 %0, i32 1, i32 0, i32 0, !dbg !3800
  store i32 0, i32* %10, align 4, !dbg !3801
  br label %11, !dbg !3802

11:                                               ; preds = %1, %3
  %12 = phi i32 [ 0, %3 ], [ -4, %1 ], !dbg !3789
  ret i32 %12, !dbg !3803
}

; Function Attrs: nofree noinline norecurse nounwind optsize
define dso_local i32 @hal_cache_set_size(i32 noundef %0) local_unnamed_addr #3 !dbg !3804 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !3809, metadata !DIExpression()), !dbg !3810
  %2 = icmp ugt i32 %0, 3, !dbg !3811
  br i1 %2, label %13, label %3, !dbg !3813

3:                                                ; preds = %1
  %4 = load volatile i32, i32* inttoptr (i32 22216704 to i32*), align 65536, !dbg !3814
  %5 = and i32 %4, -769, !dbg !3814
  store volatile i32 %5, i32* inttoptr (i32 22216704 to i32*), align 65536, !dbg !3814
  %6 = shl nuw nsw i32 %0, 8, !dbg !3815
  %7 = load volatile i32, i32* inttoptr (i32 22216704 to i32*), align 65536, !dbg !3816
  %8 = or i32 %7, %6, !dbg !3816
  store volatile i32 %8, i32* inttoptr (i32 22216704 to i32*), align 65536, !dbg !3816
  %9 = icmp eq i32 %0, 0, !dbg !3817
  br i1 %9, label %10, label %11, !dbg !3819

10:                                               ; preds = %3
  store volatile i32 0, i32* inttoptr (i32 22216704 to i32*), align 65536, !dbg !3820
  br label %11, !dbg !3822

11:                                               ; preds = %10, %3
  %12 = load volatile i32, i32* inttoptr (i32 22216704 to i32*), align 65536, !dbg !3823
  store i32 %12, i32* getelementptr inbounds (%union.CACHE_CON_Type, %union.CACHE_CON_Type* @g_cache_con, i32 0, i32 0, i32 0), align 4, !dbg !3824
  br label %13, !dbg !3825

13:                                               ; preds = %1, %11
  %14 = phi i32 [ 0, %11 ], [ -5, %1 ], !dbg !3810
  ret i32 %14, !dbg !3826
}

; Function Attrs: noinline nounwind optsize
define dso_local i32 @hal_cache_region_config(i32 noundef %0, %struct.hal_cache_region_config_t* noundef readonly %1) local_unnamed_addr #0 !dbg !3827 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !3838, metadata !DIExpression()), !dbg !3840
  call void @llvm.dbg.value(metadata %struct.hal_cache_region_config_t* %1, metadata !3839, metadata !DIExpression()), !dbg !3840
  %3 = icmp ugt i32 %0, 15, !dbg !3841
  br i1 %3, label %30, label %4, !dbg !3843

4:                                                ; preds = %2
  %5 = icmp eq %struct.hal_cache_region_config_t* %1, null, !dbg !3844
  br i1 %5, label %30, label %6, !dbg !3846

6:                                                ; preds = %4
  %7 = getelementptr inbounds %struct.hal_cache_region_config_t, %struct.hal_cache_region_config_t* %1, i32 0, i32 0, !dbg !3847
  %8 = load i32, i32* %7, align 4, !dbg !3847
  %9 = and i32 %8, 4095, !dbg !3849
  %10 = icmp eq i32 %9, 0, !dbg !3849
  br i1 %10, label %12, label %11, !dbg !3850

11:                                               ; preds = %6
  tail call void @__assert_func(i8* noundef getelementptr inbounds ([50 x i8], [50 x i8]* @.str.5, i32 0, i32 0), i32 noundef 251, i8* noundef getelementptr inbounds ([24 x i8], [24 x i8]* @__func__.hal_cache_region_config, i32 0, i32 0), i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1.6, i32 0, i32 0)) #16, !dbg !3851
  unreachable, !dbg !3851

12:                                               ; preds = %6
  %13 = getelementptr inbounds %struct.hal_cache_region_config_t, %struct.hal_cache_region_config_t* %1, i32 0, i32 1, !dbg !3853
  %14 = load i32, i32* %13, align 4, !dbg !3853
  %15 = and i32 %14, 4095, !dbg !3855
  %16 = icmp eq i32 %15, 0, !dbg !3855
  br i1 %16, label %18, label %17, !dbg !3856

17:                                               ; preds = %12
  tail call void @__assert_func(i8* noundef getelementptr inbounds ([50 x i8], [50 x i8]* @.str.5, i32 0, i32 0), i32 noundef 257, i8* noundef getelementptr inbounds ([24 x i8], [24 x i8]* @__func__.hal_cache_region_config, i32 0, i32 0), i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1.6, i32 0, i32 0)) #16, !dbg !3857
  unreachable, !dbg !3857

18:                                               ; preds = %12
  %19 = getelementptr inbounds [16 x i32], [16 x i32]* inttoptr (i32 22282240 to [16 x i32]*), i32 0, i32 %0, !dbg !3859
  store volatile i32 %8, i32* %19, align 4, !dbg !3860
  %20 = load i32, i32* %7, align 4, !dbg !3861
  %21 = load i32, i32* %13, align 4, !dbg !3862
  %22 = add i32 %21, %20, !dbg !3863
  %23 = getelementptr inbounds [16 x i32], [16 x i32]* inttoptr (i32 22282304 to [16 x i32]*), i32 0, i32 %0, !dbg !3864
  store volatile i32 %22, i32* %23, align 4, !dbg !3865
  %24 = load volatile i32, i32* %19, align 4, !dbg !3866
  %25 = or i32 %24, 256, !dbg !3866
  store volatile i32 %25, i32* %19, align 4, !dbg !3866
  %26 = load volatile i32, i32* %19, align 4, !dbg !3867
  %27 = getelementptr inbounds [16 x %struct.CACHE_ENTRY_Type], [16 x %struct.CACHE_ENTRY_Type]* @g_cache_entry, i32 0, i32 %0, i32 0, i32 0, i32 0, !dbg !3868
  store i32 %26, i32* %27, align 4, !dbg !3869
  %28 = load volatile i32, i32* %23, align 4, !dbg !3870
  %29 = getelementptr inbounds [16 x %struct.CACHE_ENTRY_Type], [16 x %struct.CACHE_ENTRY_Type]* @g_cache_entry, i32 0, i32 %0, i32 1, i32 0, i32 0, !dbg !3871
  store i32 %28, i32* %29, align 4, !dbg !3872
  br label %30, !dbg !3873

30:                                               ; preds = %4, %2, %18
  %31 = phi i32 [ 0, %18 ], [ -4, %2 ], [ -7, %4 ], !dbg !3840
  ret i32 %31, !dbg !3874
}

; Function Attrs: noreturn optsize
declare dso_local void @__assert_func(i8* noundef, i32 noundef, i8* noundef, i8* noundef) local_unnamed_addr #10

; Function Attrs: noinline nounwind optsize
define dso_local i32 @hal_cache_invalidate_one_cache_line(i32 noundef %0) local_unnamed_addr #0 section ".ramTEXT" !dbg !3875 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !3879, metadata !DIExpression()), !dbg !3881
  %2 = and i32 %0, 31, !dbg !3882
  %3 = icmp eq i32 %2, 0, !dbg !3882
  br i1 %3, label %4, label %9, !dbg !3884

4:                                                ; preds = %1
  %5 = tail call i32 @save_and_set_interrupt_mask() #13, !dbg !3885
  call void @llvm.dbg.value(metadata i32 %5, metadata !3880, metadata !DIExpression()), !dbg !3881
  %6 = and i32 %0, -32, !dbg !3886
  store volatile i32 %6, i32* inttoptr (i32 22216708 to i32*), align 4, !dbg !3887
  %7 = load volatile i32, i32* inttoptr (i32 22216708 to i32*), align 4, !dbg !3888
  %8 = or i32 %7, 5, !dbg !3888
  store volatile i32 %8, i32* inttoptr (i32 22216708 to i32*), align 4, !dbg !3888
  tail call void asm sideeffect "isb", ""() #15, !dbg !3889, !srcloc !3708
  tail call void @restore_interrupt_mask(i32 noundef %5) #13, !dbg !3891
  br label %9, !dbg !3892

9:                                                ; preds = %1, %4
  %10 = phi i32 [ 0, %4 ], [ -7, %1 ], !dbg !3881
  ret i32 %10, !dbg !3893
}

; Function Attrs: noinline nounwind optsize
define dso_local i32 @hal_cache_invalidate_multiple_cache_lines(i32 noundef %0, i32 noundef %1) local_unnamed_addr #0 section ".ramTEXT" !dbg !3894 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !3898, metadata !DIExpression()), !dbg !3902
  call void @llvm.dbg.value(metadata i32 %1, metadata !3899, metadata !DIExpression()), !dbg !3902
  %3 = add i32 %1, %0, !dbg !3903
  call void @llvm.dbg.value(metadata i32 %3, metadata !3901, metadata !DIExpression()), !dbg !3902
  %4 = or i32 %1, %0, !dbg !3904
  %5 = and i32 %4, 31, !dbg !3904
  %6 = icmp eq i32 %5, 0, !dbg !3904
  br i1 %6, label %7, label %16, !dbg !3904

7:                                                ; preds = %2
  %8 = tail call i32 @save_and_set_interrupt_mask() #13, !dbg !3906
  call void @llvm.dbg.value(metadata i32 %8, metadata !3900, metadata !DIExpression()), !dbg !3902
  call void @llvm.dbg.value(metadata i32 %0, metadata !3898, metadata !DIExpression()), !dbg !3902
  %9 = icmp ugt i32 %3, %0, !dbg !3907
  br i1 %9, label %10, label %15, !dbg !3908

10:                                               ; preds = %7, %10
  %11 = phi i32 [ %13, %10 ], [ %0, %7 ]
  call void @llvm.dbg.value(metadata i32 %11, metadata !3898, metadata !DIExpression()), !dbg !3902
  %12 = tail call i32 @hal_cache_invalidate_one_cache_line(i32 noundef %11) #14, !dbg !3909
  %13 = add i32 %11, 32, !dbg !3911
  call void @llvm.dbg.value(metadata i32 %13, metadata !3898, metadata !DIExpression()), !dbg !3902
  %14 = icmp ult i32 %13, %3, !dbg !3907
  br i1 %14, label %10, label %15, !dbg !3908, !llvm.loop !3912

15:                                               ; preds = %10, %7
  tail call void asm sideeffect "isb", ""() #15, !dbg !3914, !srcloc !3708
  tail call void @restore_interrupt_mask(i32 noundef %8) #13, !dbg !3916
  br label %16, !dbg !3917

16:                                               ; preds = %2, %15
  %17 = phi i32 [ 0, %15 ], [ -7, %2 ], !dbg !3902
  ret i32 %17, !dbg !3918
}

; Function Attrs: noinline nounwind optsize
define dso_local i32 @hal_cache_flush_one_cache_line(i32 noundef %0) local_unnamed_addr #0 section ".ramTEXT" !dbg !3919 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !3921, metadata !DIExpression()), !dbg !3923
  %2 = and i32 %0, 31, !dbg !3924
  %3 = icmp eq i32 %2, 0, !dbg !3924
  br i1 %3, label %4, label %9, !dbg !3926

4:                                                ; preds = %1
  %5 = tail call i32 @save_and_set_interrupt_mask() #13, !dbg !3927
  call void @llvm.dbg.value(metadata i32 %5, metadata !3922, metadata !DIExpression()), !dbg !3923
  %6 = and i32 %0, -32, !dbg !3928
  store volatile i32 %6, i32* inttoptr (i32 22216708 to i32*), align 4, !dbg !3929
  %7 = load volatile i32, i32* inttoptr (i32 22216708 to i32*), align 4, !dbg !3930
  %8 = or i32 %7, 21, !dbg !3930
  store volatile i32 %8, i32* inttoptr (i32 22216708 to i32*), align 4, !dbg !3930
  tail call void asm sideeffect "isb", ""() #15, !dbg !3931, !srcloc !3708
  tail call void @restore_interrupt_mask(i32 noundef %5) #13, !dbg !3933
  br label %9, !dbg !3934

9:                                                ; preds = %1, %4
  %10 = phi i32 [ 0, %4 ], [ -7, %1 ], !dbg !3923
  ret i32 %10, !dbg !3935
}

; Function Attrs: noinline nounwind optsize
define dso_local i32 @hal_cache_flush_multiple_cache_lines(i32 noundef %0, i32 noundef %1) local_unnamed_addr #0 section ".ramTEXT" !dbg !3936 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !3938, metadata !DIExpression()), !dbg !3942
  call void @llvm.dbg.value(metadata i32 %1, metadata !3939, metadata !DIExpression()), !dbg !3942
  %3 = add i32 %1, %0, !dbg !3943
  call void @llvm.dbg.value(metadata i32 %3, metadata !3941, metadata !DIExpression()), !dbg !3942
  %4 = or i32 %1, %0, !dbg !3944
  %5 = and i32 %4, 31, !dbg !3944
  %6 = icmp eq i32 %5, 0, !dbg !3944
  br i1 %6, label %7, label %16, !dbg !3944

7:                                                ; preds = %2
  %8 = tail call i32 @save_and_set_interrupt_mask() #13, !dbg !3946
  call void @llvm.dbg.value(metadata i32 %8, metadata !3940, metadata !DIExpression()), !dbg !3942
  call void @llvm.dbg.value(metadata i32 %0, metadata !3938, metadata !DIExpression()), !dbg !3942
  %9 = icmp ugt i32 %3, %0, !dbg !3947
  br i1 %9, label %10, label %15, !dbg !3948

10:                                               ; preds = %7, %10
  %11 = phi i32 [ %13, %10 ], [ %0, %7 ]
  call void @llvm.dbg.value(metadata i32 %11, metadata !3938, metadata !DIExpression()), !dbg !3942
  %12 = tail call i32 @hal_cache_flush_one_cache_line(i32 noundef %11) #14, !dbg !3949
  %13 = add i32 %11, 32, !dbg !3951
  call void @llvm.dbg.value(metadata i32 %13, metadata !3938, metadata !DIExpression()), !dbg !3942
  %14 = icmp ult i32 %13, %3, !dbg !3947
  br i1 %14, label %10, label %15, !dbg !3948, !llvm.loop !3952

15:                                               ; preds = %10, %7
  tail call void asm sideeffect "isb", ""() #15, !dbg !3954, !srcloc !3708
  tail call void @restore_interrupt_mask(i32 noundef %8) #13, !dbg !3956
  br label %16, !dbg !3957

16:                                               ; preds = %2, %15
  %17 = phi i32 [ 0, %15 ], [ -7, %2 ], !dbg !3942
  ret i32 %17, !dbg !3958
}

; Function Attrs: noinline nounwind optsize
define dso_local i32 @hal_cache_flush_all_cache_lines() local_unnamed_addr #0 section ".ramTEXT" !dbg !3959 {
  %1 = tail call i32 @save_and_set_interrupt_mask() #13, !dbg !3962
  call void @llvm.dbg.value(metadata i32 %1, metadata !3961, metadata !DIExpression()), !dbg !3963
  %2 = load volatile i32, i32* inttoptr (i32 22216708 to i32*), align 4, !dbg !3964
  %3 = and i32 %2, -31, !dbg !3964
  store volatile i32 %3, i32* inttoptr (i32 22216708 to i32*), align 4, !dbg !3964
  %4 = load volatile i32, i32* inttoptr (i32 22216708 to i32*), align 4, !dbg !3965
  %5 = or i32 %4, 19, !dbg !3965
  store volatile i32 %5, i32* inttoptr (i32 22216708 to i32*), align 4, !dbg !3965
  tail call void asm sideeffect "isb", ""() #15, !dbg !3966, !srcloc !3708
  tail call void @restore_interrupt_mask(i32 noundef %1) #13, !dbg !3968
  ret i32 0, !dbg !3969
}

; Function Attrs: nofree noinline norecurse nounwind optsize
define dso_local zeroext i1 @hal_cache_is_cacheable(i32 noundef %0) local_unnamed_addr #3 !dbg !3970 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !3974, metadata !DIExpression()), !dbg !3976
  %2 = load volatile i32, i32* inttoptr (i32 22216704 to i32*), align 65536, !dbg !3977
  %3 = and i32 %2, 8, !dbg !3979
  %4 = icmp eq i32 %3, 0, !dbg !3979
  br i1 %4, label %23, label %5, !dbg !3980

5:                                                ; preds = %1, %20
  %6 = phi i32 [ %21, %20 ], [ 0, %1 ]
  call void @llvm.dbg.value(metadata i32 %6, metadata !3975, metadata !DIExpression()), !dbg !3976
  %7 = load volatile i32, i32* inttoptr (i32 22216748 to i32*), align 4, !dbg !3981
  %8 = shl nuw nsw i32 1, %6, !dbg !3986
  %9 = and i32 %7, %8, !dbg !3987
  %10 = icmp eq i32 %9, 0, !dbg !3987
  br i1 %10, label %20, label %11, !dbg !3988

11:                                               ; preds = %5
  %12 = getelementptr inbounds [16 x i32], [16 x i32]* inttoptr (i32 22282240 to [16 x i32]*), i32 0, i32 %6, !dbg !3989
  %13 = load volatile i32, i32* %12, align 4, !dbg !3989
  %14 = and i32 %13, -257, !dbg !3992
  %15 = icmp ugt i32 %14, %0, !dbg !3993
  br i1 %15, label %20, label %16, !dbg !3994

16:                                               ; preds = %11
  %17 = getelementptr inbounds [16 x i32], [16 x i32]* inttoptr (i32 22282304 to [16 x i32]*), i32 0, i32 %6, !dbg !3995
  %18 = load volatile i32, i32* %17, align 4, !dbg !3995
  %19 = icmp ugt i32 %18, %0, !dbg !3996
  br i1 %19, label %23, label %20, !dbg !3997

20:                                               ; preds = %5, %16, %11
  %21 = add nuw nsw i32 %6, 1, !dbg !3998
  call void @llvm.dbg.value(metadata i32 %21, metadata !3975, metadata !DIExpression()), !dbg !3976
  %22 = icmp eq i32 %21, 16, !dbg !3999
  br i1 %22, label %23, label %5, !dbg !4000, !llvm.loop !4001

23:                                               ; preds = %20, %16, %1
  %24 = phi i1 [ false, %1 ], [ false, %20 ], [ true, %16 ], !dbg !3976
  ret i1 %24, !dbg !4003
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize readnone willreturn
define dso_local i32 @hal_nvic_init() local_unnamed_addr #9 !dbg !4004 {
  ret i32 0, !dbg !4008
}

; Function Attrs: nofree noinline norecurse nounwind optsize
define dso_local i32 @hal_nvic_enable_irq(i32 noundef %0) local_unnamed_addr #3 !dbg !4009 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !4013, metadata !DIExpression()), !dbg !4015
  call void @llvm.dbg.value(metadata i32 -1, metadata !4014, metadata !DIExpression()), !dbg !4015
  %2 = icmp ugt i32 %0, 95, !dbg !4016
  br i1 %2, label %4, label %3, !dbg !4016

3:                                                ; preds = %1
  tail call fastcc void @NVIC_EnableIRQ(i32 noundef %0) #14, !dbg !4018
  call void @llvm.dbg.value(metadata i32 0, metadata !4014, metadata !DIExpression()), !dbg !4015
  br label %4, !dbg !4020

4:                                                ; preds = %1, %3
  %5 = phi i32 [ 0, %3 ], [ -3, %1 ], !dbg !4015
  ret i32 %5, !dbg !4021
}

; Function Attrs: nofree noinline norecurse nounwind optsize
define internal fastcc void @NVIC_EnableIRQ(i32 noundef %0) unnamed_addr #3 !dbg !4022 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !4026, metadata !DIExpression()), !dbg !4027
  %2 = and i32 %0, 31, !dbg !4028
  %3 = shl nuw i32 1, %2, !dbg !4029
  %4 = lshr i32 %0, 5, !dbg !4030
  %5 = getelementptr inbounds [8 x i32], [8 x i32]* inttoptr (i32 -536813312 to [8 x i32]*), i32 0, i32 %4, !dbg !4031
  store volatile i32 %3, i32* %5, align 4, !dbg !4032
  ret void, !dbg !4033
}

; Function Attrs: nofree noinline norecurse nounwind optsize
define dso_local i32 @hal_nvic_disable_irq(i32 noundef %0) local_unnamed_addr #3 !dbg !4034 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !4036, metadata !DIExpression()), !dbg !4038
  call void @llvm.dbg.value(metadata i32 -1, metadata !4037, metadata !DIExpression()), !dbg !4038
  %2 = icmp ugt i32 %0, 95, !dbg !4039
  br i1 %2, label %4, label %3, !dbg !4039

3:                                                ; preds = %1
  tail call fastcc void @NVIC_DisableIRQ(i32 noundef %0) #14, !dbg !4041
  call void @llvm.dbg.value(metadata i32 0, metadata !4037, metadata !DIExpression()), !dbg !4038
  br label %4, !dbg !4043

4:                                                ; preds = %1, %3
  %5 = phi i32 [ 0, %3 ], [ -3, %1 ], !dbg !4038
  ret i32 %5, !dbg !4044
}

; Function Attrs: nofree noinline norecurse nounwind optsize
define internal fastcc void @NVIC_DisableIRQ(i32 noundef %0) unnamed_addr #3 !dbg !4045 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !4047, metadata !DIExpression()), !dbg !4048
  %2 = and i32 %0, 31, !dbg !4049
  %3 = shl nuw i32 1, %2, !dbg !4050
  %4 = lshr i32 %0, 5, !dbg !4051
  %5 = getelementptr inbounds [8 x i32], [8 x i32]* inttoptr (i32 -536813184 to [8 x i32]*), i32 0, i32 %4, !dbg !4052
  store volatile i32 %3, i32* %5, align 4, !dbg !4053
  ret void, !dbg !4054
}

; Function Attrs: mustprogress nofree noinline norecurse nounwind optsize willreturn
define dso_local i32 @hal_nvic_get_pending_irq(i32 noundef %0) local_unnamed_addr #4 !dbg !4055 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !4059, metadata !DIExpression()), !dbg !4061
  call void @llvm.dbg.value(metadata i32 255, metadata !4060, metadata !DIExpression()), !dbg !4061
  %2 = icmp ugt i32 %0, 95, !dbg !4062
  br i1 %2, label %5, label %3, !dbg !4062

3:                                                ; preds = %1
  %4 = tail call fastcc i32 @NVIC_GetPendingIRQ(i32 noundef %0) #14, !dbg !4064
  call void @llvm.dbg.value(metadata i32 %4, metadata !4060, metadata !DIExpression()), !dbg !4061
  br label %5, !dbg !4066

5:                                                ; preds = %1, %3
  %6 = phi i32 [ %4, %3 ], [ 255, %1 ], !dbg !4061
  ret i32 %6, !dbg !4067
}

; Function Attrs: mustprogress nofree noinline norecurse nounwind optsize willreturn
define internal fastcc i32 @NVIC_GetPendingIRQ(i32 noundef %0) unnamed_addr #4 !dbg !4068 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !4072, metadata !DIExpression()), !dbg !4073
  %2 = lshr i32 %0, 5, !dbg !4074
  %3 = getelementptr inbounds [8 x i32], [8 x i32]* inttoptr (i32 -536813056 to [8 x i32]*), i32 0, i32 %2, !dbg !4075
  %4 = load volatile i32, i32* %3, align 4, !dbg !4075
  %5 = and i32 %0, 31, !dbg !4076
  %6 = lshr i32 %4, %5, !dbg !4077
  %7 = and i32 %6, 1, !dbg !4077
  ret i32 %7, !dbg !4078
}

; Function Attrs: nofree noinline norecurse nounwind optsize
define dso_local i32 @hal_nvic_set_pending_irq(i32 noundef %0) local_unnamed_addr #3 !dbg !4079 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !4081, metadata !DIExpression()), !dbg !4083
  call void @llvm.dbg.value(metadata i32 -1, metadata !4082, metadata !DIExpression()), !dbg !4083
  %2 = icmp ugt i32 %0, 95, !dbg !4084
  br i1 %2, label %4, label %3, !dbg !4084

3:                                                ; preds = %1
  tail call fastcc void @NVIC_SetPendingIRQ(i32 noundef %0) #14, !dbg !4086
  call void @llvm.dbg.value(metadata i32 0, metadata !4082, metadata !DIExpression()), !dbg !4083
  br label %4, !dbg !4088

4:                                                ; preds = %1, %3
  %5 = phi i32 [ 0, %3 ], [ -3, %1 ], !dbg !4083
  ret i32 %5, !dbg !4089
}

; Function Attrs: nofree noinline norecurse nounwind optsize
define internal fastcc void @NVIC_SetPendingIRQ(i32 noundef %0) unnamed_addr #3 !dbg !4090 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !4092, metadata !DIExpression()), !dbg !4093
  %2 = and i32 %0, 31, !dbg !4094
  %3 = shl nuw i32 1, %2, !dbg !4095
  %4 = lshr i32 %0, 5, !dbg !4096
  %5 = getelementptr inbounds [8 x i32], [8 x i32]* inttoptr (i32 -536813056 to [8 x i32]*), i32 0, i32 %4, !dbg !4097
  store volatile i32 %3, i32* %5, align 4, !dbg !4098
  ret void, !dbg !4099
}

; Function Attrs: nofree noinline norecurse nounwind optsize
define dso_local i32 @hal_nvic_clear_pending_irq(i32 noundef %0) local_unnamed_addr #3 !dbg !4100 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !4102, metadata !DIExpression()), !dbg !4104
  call void @llvm.dbg.value(metadata i32 -1, metadata !4103, metadata !DIExpression()), !dbg !4104
  %2 = icmp ugt i32 %0, 95, !dbg !4105
  br i1 %2, label %4, label %3, !dbg !4105

3:                                                ; preds = %1
  tail call fastcc void @NVIC_ClearPendingIRQ(i32 noundef %0) #14, !dbg !4107
  call void @llvm.dbg.value(metadata i32 0, metadata !4103, metadata !DIExpression()), !dbg !4104
  br label %4, !dbg !4109

4:                                                ; preds = %1, %3
  %5 = phi i32 [ 0, %3 ], [ -3, %1 ], !dbg !4104
  ret i32 %5, !dbg !4110
}

; Function Attrs: nofree noinline norecurse nounwind optsize
define internal fastcc void @NVIC_ClearPendingIRQ(i32 noundef %0) unnamed_addr #3 !dbg !4111 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !4113, metadata !DIExpression()), !dbg !4114
  %2 = and i32 %0, 31, !dbg !4115
  %3 = shl nuw i32 1, %2, !dbg !4116
  %4 = lshr i32 %0, 5, !dbg !4117
  %5 = getelementptr inbounds [8 x i32], [8 x i32]* inttoptr (i32 -536812928 to [8 x i32]*), i32 0, i32 %4, !dbg !4118
  store volatile i32 %3, i32* %5, align 4, !dbg !4119
  ret void, !dbg !4120
}

; Function Attrs: nofree noinline norecurse nounwind optsize
define dso_local i32 @hal_nvic_set_priority(i32 noundef %0, i32 noundef %1) local_unnamed_addr #3 !dbg !4121 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !4125, metadata !DIExpression()), !dbg !4128
  call void @llvm.dbg.value(metadata i32 %1, metadata !4126, metadata !DIExpression()), !dbg !4128
  call void @llvm.dbg.value(metadata i32 -1, metadata !4127, metadata !DIExpression()), !dbg !4128
  %3 = icmp ugt i32 %0, 95, !dbg !4129
  br i1 %3, label %5, label %4, !dbg !4129

4:                                                ; preds = %2
  tail call fastcc void @NVIC_SetPriority(i32 noundef %0, i32 noundef %1) #14, !dbg !4131
  call void @llvm.dbg.value(metadata i32 0, metadata !4127, metadata !DIExpression()), !dbg !4128
  br label %5, !dbg !4133

5:                                                ; preds = %2, %4
  %6 = phi i32 [ 0, %4 ], [ -3, %2 ], !dbg !4128
  ret i32 %6, !dbg !4134
}

; Function Attrs: nofree noinline norecurse nounwind optsize
define internal fastcc void @NVIC_SetPriority(i32 noundef %0, i32 noundef %1) unnamed_addr #3 !dbg !4135 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !4139, metadata !DIExpression()), !dbg !4141
  call void @llvm.dbg.value(metadata i32 %1, metadata !4140, metadata !DIExpression()), !dbg !4141
  %3 = trunc i32 %1 to i8, !dbg !4142
  %4 = shl i8 %3, 5, !dbg !4142
  %5 = getelementptr inbounds [240 x i8], [240 x i8]* inttoptr (i32 -536812544 to [240 x i8]*), i32 0, i32 %0, !dbg !4145
  store volatile i8 %4, i8* %5, align 1, !dbg !4146
  ret void, !dbg !4147
}

; Function Attrs: mustprogress nofree noinline norecurse nounwind optsize willreturn
define dso_local i32 @hal_nvic_get_priority(i32 noundef %0) local_unnamed_addr #4 !dbg !4148 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !4150, metadata !DIExpression()), !dbg !4152
  call void @llvm.dbg.value(metadata i32 68, metadata !4151, metadata !DIExpression()), !dbg !4152
  %2 = icmp ugt i32 %0, 95, !dbg !4153
  br i1 %2, label %5, label %3, !dbg !4153

3:                                                ; preds = %1
  %4 = tail call fastcc i32 @NVIC_GetPriority(i32 noundef %0) #14, !dbg !4155
  call void @llvm.dbg.value(metadata i32 %4, metadata !4151, metadata !DIExpression()), !dbg !4152
  br label %5, !dbg !4157

5:                                                ; preds = %1, %3
  %6 = phi i32 [ %4, %3 ], [ 68, %1 ], !dbg !4152
  ret i32 %6, !dbg !4158
}

; Function Attrs: mustprogress nofree noinline norecurse nounwind optsize willreturn
define internal fastcc i32 @NVIC_GetPriority(i32 noundef %0) unnamed_addr #4 !dbg !4159 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !4161, metadata !DIExpression()), !dbg !4162
  %2 = getelementptr inbounds [240 x i8], [240 x i8]* inttoptr (i32 -536812544 to [240 x i8]*), i32 0, i32 %0, !dbg !4163
  %3 = load volatile i8, i8* %2, align 1, !dbg !4163
  %4 = lshr i8 %3, 5, !dbg !4166
  %5 = zext i8 %4 to i32, !dbg !4166
  ret i32 %5, !dbg !4167
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize readnone willreturn
define dso_local void @Flash_ReturnReady() local_unnamed_addr #9 !dbg !4168 {
  ret void, !dbg !4169
}

; Function Attrs: noinline nounwind optsize
define dso_local i32 @isrC_main() local_unnamed_addr #0 section ".ramTEXT" !dbg !4170 {
  call void @llvm.dbg.value(metadata i32 -1, metadata !4172, metadata !DIExpression()), !dbg !4174
  %1 = tail call fastcc i32 @get_current_irq() #14, !dbg !4175
  call void @llvm.dbg.value(metadata i32 %1, metadata !4173, metadata !DIExpression()), !dbg !4174
  %2 = icmp ugt i32 %1, 95, !dbg !4176
  br i1 %2, label %12, label %3, !dbg !4176

3:                                                ; preds = %0
  %4 = getelementptr inbounds [96 x %struct.nvic_function_t], [96 x %struct.nvic_function_t]* @nvic_function_table, i32 0, i32 %1, i32 0, !dbg !4178
  %5 = load void (i32)*, void (i32)** %4, align 4, !dbg !4178
  %6 = icmp eq void (i32)* %5, null, !dbg !4180
  br i1 %6, label %7, label %8, !dbg !4181

7:                                                ; preds = %3
  call void @llvm.dbg.value(metadata i32 -4, metadata !4172, metadata !DIExpression()), !dbg !4174
  tail call void (i8*, i32, i8*, ...) @log_hal_error_internal(i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @__FUNCTION__.isrC_main, i32 0, i32 0), i32 noundef 194, i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @.str.11, i32 0, i32 0)) #13, !dbg !4182
  br label %12, !dbg !4184

8:                                                ; preds = %3
  %9 = tail call fastcc i32 @get_pending_irq() #14, !dbg !4185
  %10 = getelementptr inbounds [96 x %struct.nvic_function_t], [96 x %struct.nvic_function_t]* @nvic_function_table, i32 0, i32 %1, i32 1, !dbg !4187
  store i32 %9, i32* %10, align 4, !dbg !4188
  %11 = load void (i32)*, void (i32)** %4, align 4, !dbg !4189
  tail call void %11(i32 noundef %1) #13, !dbg !4190
  call void @llvm.dbg.value(metadata i32 0, metadata !4172, metadata !DIExpression()), !dbg !4174
  br label %12, !dbg !4191

12:                                               ; preds = %0, %8, %7
  %13 = phi i32 [ -4, %7 ], [ 0, %8 ], [ -3, %0 ], !dbg !4174
  ret i32 %13, !dbg !4192
}

; Function Attrs: mustprogress nofree noinline norecurse nounwind optsize willreturn
define internal fastcc i32 @get_current_irq() unnamed_addr #4 !dbg !4193 {
  %1 = load volatile i32, i32* inttoptr (i32 -536810236 to i32*), align 4, !dbg !4196
  %2 = and i32 %1, 511, !dbg !4197
  call void @llvm.dbg.value(metadata i32 %2, metadata !4195, metadata !DIExpression()), !dbg !4198
  %3 = add nsw i32 %2, -16, !dbg !4199
  ret i32 %3, !dbg !4200
}

; Function Attrs: mustprogress nofree noinline norecurse nounwind optsize willreturn
define internal fastcc i32 @get_pending_irq() unnamed_addr #4 !dbg !4201 {
  %1 = load volatile i32, i32* inttoptr (i32 -536810236 to i32*), align 4, !dbg !4202
  %2 = lshr i32 %1, 22, !dbg !4203
  %3 = and i32 %2, 1, !dbg !4203
  ret i32 %3, !dbg !4204
}

; Function Attrs: noinline nounwind optsize
define dso_local i32 @hal_nvic_register_isr_handler(i32 noundef %0, void (i32)* noundef %1) local_unnamed_addr #0 !dbg !4205 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !4210, metadata !DIExpression()), !dbg !4213
  call void @llvm.dbg.value(metadata void (i32)* %1, metadata !4211, metadata !DIExpression()), !dbg !4213
  %3 = icmp ugt i32 %0, 95, !dbg !4214
  %4 = icmp eq void (i32)* %1, null
  %5 = or i1 %3, %4, !dbg !4214
  br i1 %5, label %10, label %6, !dbg !4214

6:                                                ; preds = %2
  %7 = tail call i32 @save_and_set_interrupt_mask() #13, !dbg !4216
  call void @llvm.dbg.value(metadata i32 %7, metadata !4212, metadata !DIExpression()), !dbg !4213
  tail call fastcc void @NVIC_ClearPendingIRQ(i32 noundef %0) #14, !dbg !4217
  %8 = getelementptr inbounds [96 x %struct.nvic_function_t], [96 x %struct.nvic_function_t]* @nvic_function_table, i32 0, i32 %0, i32 0, !dbg !4218
  store void (i32)* %1, void (i32)** %8, align 4, !dbg !4219
  %9 = getelementptr inbounds [96 x %struct.nvic_function_t], [96 x %struct.nvic_function_t]* @nvic_function_table, i32 0, i32 %0, i32 1, !dbg !4220
  store i32 0, i32* %9, align 4, !dbg !4221
  tail call void @restore_interrupt_mask(i32 noundef %7) #13, !dbg !4222
  br label %10, !dbg !4223

10:                                               ; preds = %2, %6
  %11 = phi i32 [ 0, %6 ], [ -2, %2 ], !dbg !4213
  ret i32 %11, !dbg !4224
}

; Function Attrs: noinline nounwind optsize
define dso_local i32 @hal_nvic_save_and_set_interrupt_mask(i32* nocapture noundef writeonly %0) local_unnamed_addr #0 !dbg !4225 {
  call void @llvm.dbg.value(metadata i32* %0, metadata !4229, metadata !DIExpression()), !dbg !4230
  %2 = tail call i32 @save_and_set_interrupt_mask() #13, !dbg !4231
  store i32 %2, i32* %0, align 4, !dbg !4232
  ret i32 0, !dbg !4233
}

; Function Attrs: noinline nounwind optsize
define dso_local i32 @hal_nvic_restore_interrupt_mask(i32 noundef %0) local_unnamed_addr #0 !dbg !4234 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !4238, metadata !DIExpression()), !dbg !4239
  tail call void @restore_interrupt_mask(i32 noundef %0) #13, !dbg !4240
  ret i32 0, !dbg !4241
}

; Function Attrs: noinline nounwind optsize
define dso_local i32 @hal_pinmux_set_function(i32 noundef %0, i8 noundef zeroext %1) local_unnamed_addr #0 !dbg !4242 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !4248, metadata !DIExpression()), !dbg !4251
  call void @llvm.dbg.value(metadata i8 %1, metadata !4249, metadata !DIExpression()), !dbg !4251
  %3 = icmp ugt i32 %0, 60, !dbg !4252
  br i1 %3, label %11, label %4, !dbg !4254

4:                                                ; preds = %2
  %5 = icmp ugt i8 %1, 15, !dbg !4255
  br i1 %5, label %11, label %6, !dbg !4257

6:                                                ; preds = %4
  %7 = zext i8 %1 to i32, !dbg !4258
  %8 = tail call i32 @pinmux_config(i32 noundef %0, i32 noundef %7) #13, !dbg !4259
  call void @llvm.dbg.value(metadata i32 %8, metadata !4250, metadata !DIExpression()), !dbg !4251
  %9 = icmp slt i32 %8, 0, !dbg !4260
  %10 = select i1 %9, i32 -3, i32 0, !dbg !4260
  br label %11, !dbg !4261

11:                                               ; preds = %4, %2, %6
  %12 = phi i32 [ %10, %6 ], [ -2, %2 ], [ -1, %4 ], !dbg !4251
  ret i32 %12, !dbg !4262
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize readnone willreturn
define dso_local i32 @hal_gpio_init(i32 noundef %0) local_unnamed_addr #9 !dbg !4263 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !4268, metadata !DIExpression()), !dbg !4269
  ret i32 0, !dbg !4270
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize readnone willreturn
define dso_local i32 @hal_gpio_deinit(i32 noundef %0) local_unnamed_addr #9 !dbg !4271 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !4273, metadata !DIExpression()), !dbg !4274
  ret i32 0, !dbg !4275
}

; Function Attrs: noinline nounwind optsize
define dso_local i32 @hal_gpio_get_input(i32 noundef %0, i32* noundef writeonly %1) local_unnamed_addr #0 !dbg !4276 {
  %3 = alloca %struct.gpio_status, align 4
  call void @llvm.dbg.value(metadata i32 %0, metadata !4281, metadata !DIExpression()), !dbg !4291
  call void @llvm.dbg.value(metadata i32* %1, metadata !4282, metadata !DIExpression()), !dbg !4291
  %4 = icmp eq i32* %1, null, !dbg !4292
  br i1 %4, label %12, label %5, !dbg !4294

5:                                                ; preds = %2
  %6 = icmp ugt i32 %0, 60, !dbg !4295
  br i1 %6, label %12, label %7, !dbg !4297

7:                                                ; preds = %5
  %8 = bitcast %struct.gpio_status* %3 to i8*, !dbg !4298
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %8) #15, !dbg !4298
  call void @gpio_get_status(%struct.gpio_status* nonnull sret(%struct.gpio_status) align 4 %3, i32 noundef %0) #13, !dbg !4298
  %9 = getelementptr inbounds %struct.gpio_status, %struct.gpio_status* %3, i32 0, i32 2, !dbg !4298
  %10 = load i8, i8* %9, align 1, !dbg !4298
  call void @llvm.dbg.value(metadata i8 %10, metadata !4283, metadata !DIExpression(DW_OP_LLVM_fragment, 40, 8)), !dbg !4291
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %8) #15, !dbg !4298
  %11 = zext i8 %10 to i32, !dbg !4299
  store i32 %11, i32* %1, align 4, !dbg !4300
  br label %12, !dbg !4301

12:                                               ; preds = %5, %2, %7
  %13 = phi i32 [ 0, %7 ], [ -1, %2 ], [ -2, %5 ], !dbg !4291
  ret i32 %13, !dbg !4302
}

; Function Attrs: optsize
declare dso_local void @gpio_get_status(%struct.gpio_status* sret(%struct.gpio_status) align 4, i32 noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize
define dso_local i32 @hal_gpio_set_output(i32 noundef %0, i32 noundef %1) local_unnamed_addr #0 !dbg !4303 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !4307, metadata !DIExpression()), !dbg !4310
  call void @llvm.dbg.value(metadata i32 %1, metadata !4308, metadata !DIExpression()), !dbg !4310
  %3 = icmp ugt i32 %0, 60, !dbg !4311
  br i1 %3, label %9, label %4, !dbg !4313

4:                                                ; preds = %2
  %5 = trunc i32 %1 to i8, !dbg !4314
  %6 = tail call i32 @gpio_write(i32 noundef %0, i8 noundef zeroext %5) #13, !dbg !4315
  call void @llvm.dbg.value(metadata i32 %6, metadata !4309, metadata !DIExpression()), !dbg !4310
  %7 = icmp slt i32 %6, 0, !dbg !4316
  %8 = select i1 %7, i32 -3, i32 0, !dbg !4316
  br label %9, !dbg !4317

9:                                                ; preds = %2, %4
  %10 = phi i32 [ %8, %4 ], [ -2, %2 ], !dbg !4310
  ret i32 %10, !dbg !4318
}

; Function Attrs: optsize
declare dso_local i32 @gpio_write(i32 noundef, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize
define dso_local i32 @hal_gpio_get_output(i32 noundef %0, i32* noundef writeonly %1) local_unnamed_addr #0 !dbg !4319 {
  %3 = alloca %struct.gpio_status, align 4
  call void @llvm.dbg.value(metadata i32 %0, metadata !4321, metadata !DIExpression()), !dbg !4324
  call void @llvm.dbg.value(metadata i32* %1, metadata !4322, metadata !DIExpression()), !dbg !4324
  %4 = icmp ugt i32 %0, 60, !dbg !4325
  br i1 %4, label %12, label %5, !dbg !4327

5:                                                ; preds = %2
  %6 = icmp eq i32* %1, null, !dbg !4328
  br i1 %6, label %12, label %7, !dbg !4330

7:                                                ; preds = %5
  %8 = bitcast %struct.gpio_status* %3 to i8*, !dbg !4331
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %8) #15, !dbg !4331
  call void @gpio_get_status(%struct.gpio_status* nonnull sret(%struct.gpio_status) align 4 %3, i32 noundef %0) #13, !dbg !4331
  %9 = getelementptr inbounds %struct.gpio_status, %struct.gpio_status* %3, i32 0, i32 3, !dbg !4331
  %10 = load i8, i8* %9, align 2, !dbg !4331
  call void @llvm.dbg.value(metadata i8 %10, metadata !4323, metadata !DIExpression(DW_OP_LLVM_fragment, 48, 8)), !dbg !4324
  call void @llvm.dbg.value(metadata i8 undef, metadata !4323, metadata !DIExpression(DW_OP_LLVM_fragment, 56, 8)), !dbg !4324
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %8) #15, !dbg !4331
  %11 = zext i8 %10 to i32, !dbg !4332
  store i32 %11, i32* %1, align 4, !dbg !4333
  br label %12, !dbg !4334

12:                                               ; preds = %5, %2, %7
  %13 = phi i32 [ 0, %7 ], [ -2, %2 ], [ -1, %5 ], !dbg !4324
  ret i32 %13, !dbg !4335
}

; Function Attrs: noinline nounwind optsize
define dso_local i32 @hal_gpio_set_direction(i32 noundef %0, i32 noundef %1) local_unnamed_addr #0 !dbg !4336 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !4341, metadata !DIExpression()), !dbg !4344
  call void @llvm.dbg.value(metadata i32 %1, metadata !4342, metadata !DIExpression()), !dbg !4344
  %3 = icmp ugt i32 %0, 60, !dbg !4345
  br i1 %3, label %8, label %4, !dbg !4347

4:                                                ; preds = %2
  %5 = tail call i32 @gpio_direction(i32 noundef %0, i32 noundef %1) #13, !dbg !4348
  call void @llvm.dbg.value(metadata i32 %5, metadata !4343, metadata !DIExpression()), !dbg !4344
  %6 = icmp slt i32 %5, 0, !dbg !4349
  %7 = select i1 %6, i32 -3, i32 0, !dbg !4349
  br label %8, !dbg !4350

8:                                                ; preds = %2, %4
  %9 = phi i32 [ %7, %4 ], [ -2, %2 ], !dbg !4344
  ret i32 %9, !dbg !4351
}

; Function Attrs: optsize
declare dso_local i32 @gpio_direction(i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize
define dso_local i32 @hal_gpio_get_direction(i32 noundef %0, i32* noundef writeonly %1) local_unnamed_addr #0 !dbg !4352 {
  %3 = alloca %struct.gpio_status, align 4
  call void @llvm.dbg.value(metadata i32 %0, metadata !4357, metadata !DIExpression()), !dbg !4360
  call void @llvm.dbg.value(metadata i32* %1, metadata !4358, metadata !DIExpression()), !dbg !4360
  %4 = icmp ugt i32 %0, 60, !dbg !4361
  br i1 %4, label %13, label %5, !dbg !4363

5:                                                ; preds = %2
  %6 = icmp eq i32* %1, null, !dbg !4364
  br i1 %6, label %13, label %7, !dbg !4366

7:                                                ; preds = %5
  %8 = bitcast %struct.gpio_status* %3 to i8*, !dbg !4367
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %8) #15, !dbg !4367
  call void @gpio_get_status(%struct.gpio_status* nonnull sret(%struct.gpio_status) align 4 %3, i32 noundef %0) #13, !dbg !4367
  call void @llvm.dbg.value(metadata i32 undef, metadata !4359, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32)), !dbg !4360
  %9 = getelementptr inbounds %struct.gpio_status, %struct.gpio_status* %3, i32 0, i32 1, !dbg !4367
  %10 = load i8, i8* %9, align 4, !dbg !4367
  call void @llvm.dbg.value(metadata i8 %10, metadata !4359, metadata !DIExpression(DW_OP_LLVM_fragment, 32, 8)), !dbg !4360
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %8) #15, !dbg !4367
  %11 = icmp ne i8 %10, 0, !dbg !4368
  %12 = zext i1 %11 to i32, !dbg !4368
  store i32 %12, i32* %1, align 4, !dbg !4369
  br label %13, !dbg !4370

13:                                               ; preds = %5, %2, %7
  %14 = phi i32 [ 0, %7 ], [ -2, %2 ], [ -1, %5 ], !dbg !4360
  ret i32 %14, !dbg !4371
}

; Function Attrs: noinline nounwind optsize
define dso_local i32 @hal_gpio_toggle_pin(i32 noundef %0) local_unnamed_addr #0 !dbg !4372 {
  %2 = alloca %struct.gpio_status, align 4
  call void @llvm.dbg.value(metadata i32 %0, metadata !4374, metadata !DIExpression()), !dbg !4376
  %3 = icmp ugt i32 %0, 60, !dbg !4377
  br i1 %3, label %11, label %4, !dbg !4379

4:                                                ; preds = %1
  %5 = bitcast %struct.gpio_status* %2 to i8*, !dbg !4380
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %5) #15, !dbg !4380
  call void @gpio_get_status(%struct.gpio_status* nonnull sret(%struct.gpio_status) align 4 %2, i32 noundef %0) #13, !dbg !4380
  %6 = getelementptr inbounds %struct.gpio_status, %struct.gpio_status* %2, i32 0, i32 3, !dbg !4380
  %7 = load i8, i8* %6, align 2, !dbg !4380
  call void @llvm.dbg.value(metadata i8 %7, metadata !4375, metadata !DIExpression(DW_OP_LLVM_fragment, 48, 8)), !dbg !4376
  call void @llvm.dbg.value(metadata i8 undef, metadata !4375, metadata !DIExpression(DW_OP_LLVM_fragment, 56, 8)), !dbg !4376
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %5) #15, !dbg !4380
  %8 = xor i8 %7, 1, !dbg !4381
  %9 = zext i8 %8 to i32, !dbg !4381
  %10 = call i32 @hal_gpio_set_output(i32 noundef %0, i32 noundef %9) #14, !dbg !4382
  br label %11, !dbg !4383

11:                                               ; preds = %1, %4
  %12 = phi i32 [ %10, %4 ], [ -2, %1 ], !dbg !4376
  ret i32 %12, !dbg !4384
}

; Function Attrs: noinline nounwind optsize
define dso_local i32 @hal_gpio_pull_up(i32 noundef %0) local_unnamed_addr #0 !dbg !4385 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !4387, metadata !DIExpression()), !dbg !4389
  %2 = icmp ugt i32 %0, 60, !dbg !4390
  br i1 %2, label %10, label %3, !dbg !4392

3:                                                ; preds = %1
  %4 = tail call i32 @gpio_PullDisable(i32 noundef %0) #13, !dbg !4393
  call void @llvm.dbg.value(metadata i32 %4, metadata !4388, metadata !DIExpression()), !dbg !4389
  %5 = icmp slt i32 %4, 0, !dbg !4394
  br i1 %5, label %10, label %6, !dbg !4396

6:                                                ; preds = %3
  %7 = tail call i32 @gpio_PullUp(i32 noundef %0) #13, !dbg !4397
  call void @llvm.dbg.value(metadata i32 %7, metadata !4388, metadata !DIExpression()), !dbg !4389
  %8 = icmp slt i32 %7, 0, !dbg !4398
  %9 = select i1 %8, i32 -3, i32 0, !dbg !4398
  br label %10, !dbg !4399

10:                                               ; preds = %3, %1, %6
  %11 = phi i32 [ %9, %6 ], [ -2, %1 ], [ -3, %3 ], !dbg !4389
  ret i32 %11, !dbg !4400
}

; Function Attrs: optsize
declare dso_local i32 @gpio_PullDisable(i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare dso_local i32 @gpio_PullUp(i32 noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize
define dso_local i32 @hal_gpio_pull_down(i32 noundef %0) local_unnamed_addr #0 !dbg !4401 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !4403, metadata !DIExpression()), !dbg !4405
  %2 = icmp ugt i32 %0, 60, !dbg !4406
  br i1 %2, label %10, label %3, !dbg !4408

3:                                                ; preds = %1
  %4 = tail call i32 @gpio_PullDisable(i32 noundef %0) #13, !dbg !4409
  call void @llvm.dbg.value(metadata i32 %4, metadata !4404, metadata !DIExpression()), !dbg !4405
  %5 = icmp slt i32 %4, 0, !dbg !4410
  br i1 %5, label %10, label %6, !dbg !4412

6:                                                ; preds = %3
  %7 = tail call i32 @gpio_PullDown(i32 noundef %0) #13, !dbg !4413
  call void @llvm.dbg.value(metadata i32 %7, metadata !4404, metadata !DIExpression()), !dbg !4405
  %8 = icmp slt i32 %7, 0, !dbg !4414
  %9 = select i1 %8, i32 -3, i32 0, !dbg !4414
  br label %10, !dbg !4415

10:                                               ; preds = %3, %1, %6
  %11 = phi i32 [ %9, %6 ], [ -2, %1 ], [ -3, %3 ], !dbg !4405
  ret i32 %11, !dbg !4416
}

; Function Attrs: optsize
declare dso_local i32 @gpio_PullDown(i32 noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize
define dso_local i32 @hal_gpio_disable_pull(i32 noundef %0) local_unnamed_addr #0 !dbg !4417 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !4419, metadata !DIExpression()), !dbg !4421
  %2 = icmp ugt i32 %0, 60, !dbg !4422
  br i1 %2, label %7, label %3, !dbg !4424

3:                                                ; preds = %1
  %4 = tail call i32 @gpio_PullDisable(i32 noundef %0) #13, !dbg !4425
  call void @llvm.dbg.value(metadata i32 %4, metadata !4420, metadata !DIExpression()), !dbg !4421
  %5 = icmp slt i32 %4, 0, !dbg !4426
  %6 = select i1 %5, i32 -3, i32 0, !dbg !4426
  br label %7, !dbg !4427

7:                                                ; preds = %1, %3
  %8 = phi i32 [ %6, %3 ], [ -2, %1 ], !dbg !4421
  ret i32 %8, !dbg !4428
}

; Function Attrs: noinline nounwind optsize
define dso_local i32 @hal_gpio_set_driving_current(i32 noundef %0, i32 noundef %1) local_unnamed_addr #0 !dbg !4429 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !4433, metadata !DIExpression()), !dbg !4436
  call void @llvm.dbg.value(metadata i32 %1, metadata !4434, metadata !DIExpression()), !dbg !4436
  %3 = icmp ugt i32 %0, 60, !dbg !4437
  br i1 %3, label %9, label %4, !dbg !4439

4:                                                ; preds = %2
  %5 = trunc i32 %1 to i8, !dbg !4440
  %6 = tail call i32 @gpio_SetDriving(i32 noundef %0, i8 noundef zeroext %5) #13, !dbg !4441
  call void @llvm.dbg.value(metadata i32 %6, metadata !4435, metadata !DIExpression()), !dbg !4436
  %7 = icmp slt i32 %6, 0, !dbg !4442
  %8 = select i1 %7, i32 -3, i32 0, !dbg !4442
  br label %9, !dbg !4443

9:                                                ; preds = %2, %4
  %10 = phi i32 [ %8, %4 ], [ -2, %2 ], !dbg !4436
  ret i32 %10, !dbg !4444
}

; Function Attrs: optsize
declare dso_local i32 @gpio_SetDriving(i32 noundef, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize
define dso_local i32 @hal_gpio_get_driving_current(i32 noundef %0, i32* nocapture noundef writeonly %1) local_unnamed_addr #0 !dbg !4445 {
  %3 = alloca i8, align 1
  call void @llvm.dbg.value(metadata i32 %0, metadata !4450, metadata !DIExpression()), !dbg !4454
  call void @llvm.dbg.value(metadata i32* %1, metadata !4451, metadata !DIExpression()), !dbg !4454
  call void @llvm.lifetime.start.p0i8(i64 1, i8* nonnull %3) #15, !dbg !4455
  %4 = icmp ugt i32 %0, 60, !dbg !4456
  br i1 %4, label %11, label %5, !dbg !4458

5:                                                ; preds = %2
  call void @llvm.dbg.value(metadata i8* %3, metadata !4453, metadata !DIExpression(DW_OP_deref)), !dbg !4454
  %6 = call i32 @gpio_GetDriving(i32 noundef %0, i8* noundef nonnull %3) #13, !dbg !4459
  call void @llvm.dbg.value(metadata i32 %6, metadata !4452, metadata !DIExpression()), !dbg !4454
  %7 = load i8, i8* %3, align 1, !dbg !4460
  call void @llvm.dbg.value(metadata i8 %7, metadata !4453, metadata !DIExpression()), !dbg !4454
  %8 = zext i8 %7 to i32, !dbg !4461
  store i32 %8, i32* %1, align 4, !dbg !4462
  %9 = icmp slt i32 %6, 0, !dbg !4463
  %10 = select i1 %9, i32 -3, i32 0, !dbg !4463
  br label %11, !dbg !4464

11:                                               ; preds = %2, %5
  %12 = phi i32 [ %10, %5 ], [ -2, %2 ], !dbg !4454
  call void @llvm.lifetime.end.p0i8(i64 1, i8* nonnull %3) #15, !dbg !4465
  ret i32 %12, !dbg !4465
}

; Function Attrs: optsize
declare dso_local i32 @gpio_GetDriving(i32 noundef, i8* noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize
define dso_local i32 @hal_gpt_init(i32 noundef %0) local_unnamed_addr #0 !dbg !4466 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !4472, metadata !DIExpression()), !dbg !4473
  %2 = getelementptr inbounds [5 x %struct.hal_gpt_context_t], [5 x %struct.hal_gpt_context_t]* @g_gpt_context, i32 0, i32 %0, !dbg !4474
  %3 = getelementptr inbounds [5 x %struct.hal_gpt_context_t], [5 x %struct.hal_gpt_context_t]* @g_gpt_context, i32 0, i32 %0, i32 2, !dbg !4476
  %4 = load i8, i8* %3, align 4, !dbg !4476, !range !3665
  %5 = icmp eq i8 %4, 0, !dbg !4476
  br i1 %5, label %6, label %12, !dbg !4477

6:                                                ; preds = %1
  %7 = tail call fastcc zeroext i1 @hal_gpt_is_port_valid(i32 noundef %0) #14, !dbg !4478
  br i1 %7, label %9, label %8, !dbg !4480

8:                                                ; preds = %6
  tail call void (i8*, i32, i8*, ...) @log_hal_error_internal(i8* noundef getelementptr inbounds ([13 x i8], [13 x i8]* @__FUNCTION__.hal_gpt_init, i32 0, i32 0), i32 noundef 89, i8* noundef getelementptr inbounds ([18 x i8], [18 x i8]* @.str.18, i32 0, i32 0), i32 noundef %0) #13, !dbg !4481
  br label %12, !dbg !4483

9:                                                ; preds = %6
  %10 = bitcast %struct.hal_gpt_context_t* %2 to i8*, !dbg !4484
  %11 = tail call i8* @memset(i8* noundef nonnull %10, i32 noundef 0, i32 noundef 16) #13, !dbg !4485
  store i8 1, i8* %3, align 4, !dbg !4486
  br label %12, !dbg !4487

12:                                               ; preds = %1, %9, %8
  %13 = phi i32 [ -2, %8 ], [ 0, %9 ], [ -3, %1 ], !dbg !4473
  ret i32 %13, !dbg !4488
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize readnone willreturn
define internal fastcc zeroext i1 @hal_gpt_is_port_valid(i32 noundef %0) unnamed_addr #9 !dbg !4489 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !4493, metadata !DIExpression()), !dbg !4494
  %2 = icmp ult i32 %0, 5, !dbg !4495
  %3 = icmp ne i32 %0, 2
  %4 = and i1 %2, %3, !dbg !4497
  ret i1 %4, !dbg !4498
}

; Function Attrs: optsize
declare dso_local i8* @memset(i8* noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize
define dso_local i32 @hal_gpt_deinit(i32 noundef %0) local_unnamed_addr #0 !dbg !4499 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !4501, metadata !DIExpression()), !dbg !4502
  %2 = tail call fastcc zeroext i1 @hal_gpt_is_port_valid(i32 noundef %0) #14, !dbg !4503
  br i1 %2, label %4, label %3, !dbg !4505

3:                                                ; preds = %1
  tail call void (i8*, i32, i8*, ...) @log_hal_error_internal(i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @__FUNCTION__.hal_gpt_deinit, i32 0, i32 0), i32 noundef 104, i8* noundef getelementptr inbounds ([18 x i8], [18 x i8]* @.str.18, i32 0, i32 0), i32 noundef %0) #13, !dbg !4506
  br label %14, !dbg !4508

4:                                                ; preds = %1
  %5 = getelementptr inbounds [5 x %struct.hal_gpt_context_t], [5 x %struct.hal_gpt_context_t]* @g_gpt_context, i32 0, i32 %0, !dbg !4509
  %6 = getelementptr inbounds %struct.hal_gpt_context_t, %struct.hal_gpt_context_t* %5, i32 0, i32 0, !dbg !4511
  %7 = load i32, i32* %6, align 4, !dbg !4511
  %8 = icmp eq i32 %7, 0, !dbg !4512
  br i1 %8, label %10, label %9, !dbg !4513

9:                                                ; preds = %4
  tail call void (i8*, i32, i8*, ...) @log_hal_error_internal(i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @__FUNCTION__.hal_gpt_deinit, i32 0, i32 0), i32 noundef 109, i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1.19, i32 0, i32 0), i32 noundef %0) #13, !dbg !4514
  br label %14, !dbg !4516

10:                                               ; preds = %4
  %11 = bitcast %struct.hal_gpt_context_t* %5 to i8*, !dbg !4517
  %12 = tail call i8* @memset(i8* noundef nonnull %11, i32 noundef 0, i32 noundef 16) #13, !dbg !4518
  %13 = getelementptr inbounds [5 x %struct.hal_gpt_context_t], [5 x %struct.hal_gpt_context_t]* @g_gpt_context, i32 0, i32 %0, i32 2, !dbg !4519
  store i8 0, i8* %13, align 4, !dbg !4520
  br label %14, !dbg !4521

14:                                               ; preds = %10, %9, %3
  %15 = phi i32 [ -2, %3 ], [ -3, %9 ], [ 0, %10 ], !dbg !4502
  ret i32 %15, !dbg !4522
}

; Function Attrs: noinline nounwind optsize
define dso_local i32 @hal_gpt_get_free_run_count(i32 noundef %0, i32* nocapture noundef writeonly %1) local_unnamed_addr #0 !dbg !4523 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !4528, metadata !DIExpression()), !dbg !4530
  call void @llvm.dbg.value(metadata i32* %1, metadata !4529, metadata !DIExpression()), !dbg !4530
  switch i32 %0, label %24 [
    i32 0, label %3
    i32 1, label %9
    i32 2, label %18
  ], !dbg !4531

3:                                                ; preds = %2
  %4 = load i32, i32* getelementptr inbounds ([5 x %struct.hal_gpt_context_t], [5 x %struct.hal_gpt_context_t]* @g_gpt_context, i32 0, i32 2, i32 0), align 4, !dbg !4532
  %5 = icmp eq i32 %4, 1, !dbg !4536
  br i1 %5, label %7, label %6, !dbg !4537

6:                                                ; preds = %3
  tail call void @CM4_GPT2Init() #13, !dbg !4538
  br label %7, !dbg !4540

7:                                                ; preds = %6, %3
  %8 = tail call i32 @get_current_count() #13, !dbg !4541
  store i32 %8, i32* %1, align 4, !dbg !4542
  store i32 1, i32* getelementptr inbounds ([5 x %struct.hal_gpt_context_t], [5 x %struct.hal_gpt_context_t]* @g_gpt_context, i32 0, i32 2, i32 0), align 4, !dbg !4543
  br label %25, !dbg !4544

9:                                                ; preds = %2
  %10 = load i32, i32* getelementptr inbounds ([5 x %struct.hal_gpt_context_t], [5 x %struct.hal_gpt_context_t]* @g_gpt_context, i32 0, i32 4, i32 0), align 4, !dbg !4545
  %11 = icmp eq i32 %10, 1, !dbg !4549
  br i1 %11, label %13, label %12, !dbg !4550

12:                                               ; preds = %9
  tail call void @CM4_GPT4Init() #13, !dbg !4551
  br label %13, !dbg !4553

13:                                               ; preds = %12, %9
  %14 = tail call i32 @get_current_gpt4_count() #13, !dbg !4554
  %15 = tail call i32 @top_mcu_freq_get() #13, !dbg !4555
  %16 = udiv i32 %15, 1000000, !dbg !4556
  %17 = udiv i32 %14, %16, !dbg !4557
  store i32 %17, i32* %1, align 4, !dbg !4558
  store i32 1, i32* getelementptr inbounds ([5 x %struct.hal_gpt_context_t], [5 x %struct.hal_gpt_context_t]* @g_gpt_context, i32 0, i32 4, i32 0), align 4, !dbg !4559
  br label %25, !dbg !4560

18:                                               ; preds = %2
  %19 = load i32, i32* getelementptr inbounds ([5 x %struct.hal_gpt_context_t], [5 x %struct.hal_gpt_context_t]* @g_gpt_context, i32 0, i32 4, i32 0), align 4, !dbg !4561
  %20 = icmp eq i32 %19, 1, !dbg !4565
  br i1 %20, label %22, label %21, !dbg !4566

21:                                               ; preds = %18
  tail call void @CM4_GPT4Init() #13, !dbg !4567
  br label %22, !dbg !4569

22:                                               ; preds = %21, %18
  %23 = tail call i32 @get_current_gpt4_count() #13, !dbg !4570
  store i32 %23, i32* %1, align 4, !dbg !4571
  store i32 1, i32* getelementptr inbounds ([5 x %struct.hal_gpt_context_t], [5 x %struct.hal_gpt_context_t]* @g_gpt_context, i32 0, i32 4, i32 0), align 4, !dbg !4572
  br label %25

24:                                               ; preds = %2
  tail call void (i8*, i32, i8*, ...) @log_hal_error_internal(i8* noundef getelementptr inbounds ([27 x i8], [27 x i8]* @__FUNCTION__.hal_gpt_get_free_run_count, i32 0, i32 0), i32 noundef 141, i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str.2, i32 0, i32 0), i32 noundef %0) #13, !dbg !4573
  br label %25, !dbg !4575

25:                                               ; preds = %7, %22, %13, %24
  %26 = phi i32 [ -1, %24 ], [ 0, %13 ], [ 0, %22 ], [ 0, %7 ], !dbg !4530
  ret i32 %26, !dbg !4576
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn writeonly
define dso_local i32 @hal_gpt_get_duration_count(i32 noundef %0, i32 noundef %1, i32* noundef writeonly %2) local_unnamed_addr #11 !dbg !4577 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !4581, metadata !DIExpression()), !dbg !4584
  call void @llvm.dbg.value(metadata i32 %1, metadata !4582, metadata !DIExpression()), !dbg !4584
  call void @llvm.dbg.value(metadata i32* %2, metadata !4583, metadata !DIExpression()), !dbg !4584
  %4 = icmp eq i32* %2, null, !dbg !4585
  br i1 %4, label %7, label %5, !dbg !4587

5:                                                ; preds = %3
  %6 = sub i32 %1, %0, !dbg !4588
  store i32 %6, i32* %2, align 4, !dbg !4588
  br label %7, !dbg !4590

7:                                                ; preds = %3, %5
  %8 = phi i32 [ 0, %5 ], [ -1, %3 ], !dbg !4584
  ret i32 %8, !dbg !4591
}

; Function Attrs: noinline nounwind optsize
define dso_local i32 @hal_gpt_get_running_status(i32 noundef %0, i32* nocapture noundef writeonly %1) local_unnamed_addr #0 !dbg !4592 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !4597, metadata !DIExpression()), !dbg !4599
  call void @llvm.dbg.value(metadata i32* %1, metadata !4598, metadata !DIExpression()), !dbg !4599
  %3 = icmp ugt i32 %0, 4, !dbg !4600
  br i1 %3, label %4, label %5, !dbg !4602

4:                                                ; preds = %2
  tail call void (i8*, i32, i8*, ...) @log_hal_error_internal(i8* noundef getelementptr inbounds ([27 x i8], [27 x i8]* @__FUNCTION__.hal_gpt_get_running_status, i32 0, i32 0), i32 noundef 167, i8* noundef getelementptr inbounds ([45 x i8], [45 x i8]* @.str.3, i32 0, i32 0), i32 noundef %0) #13, !dbg !4603
  br label %8, !dbg !4605

5:                                                ; preds = %2
  %6 = getelementptr inbounds [5 x %struct.hal_gpt_context_t], [5 x %struct.hal_gpt_context_t]* @g_gpt_context, i32 0, i32 %0, i32 0, !dbg !4606
  %7 = load i32, i32* %6, align 4, !dbg !4606
  store i32 %7, i32* %1, align 4, !dbg !4607
  br label %8, !dbg !4608

8:                                                ; preds = %5, %4
  %9 = phi i32 [ -2, %4 ], [ 0, %5 ], !dbg !4599
  ret i32 %9, !dbg !4609
}

; Function Attrs: noinline nounwind optsize
define dso_local i32 @hal_gpt_register_callback(i32 noundef %0, void (i8*)* noundef %1, i8* noundef %2) local_unnamed_addr #0 !dbg !4610 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !4614, metadata !DIExpression()), !dbg !4617
  call void @llvm.dbg.value(metadata void (i8*)* %1, metadata !4615, metadata !DIExpression()), !dbg !4617
  call void @llvm.dbg.value(metadata i8* %2, metadata !4616, metadata !DIExpression()), !dbg !4617
  %4 = tail call fastcc zeroext i1 @hal_gpt_is_port_valid(i32 noundef %0) #14, !dbg !4618
  br i1 %4, label %6, label %5, !dbg !4620

5:                                                ; preds = %3
  tail call void (i8*, i32, i8*, ...) @log_hal_error_internal(i8* noundef getelementptr inbounds ([26 x i8], [26 x i8]* @__FUNCTION__.hal_gpt_register_callback, i32 0, i32 0), i32 noundef 179, i8* noundef getelementptr inbounds ([51 x i8], [51 x i8]* @.str.4, i32 0, i32 0), i32 noundef %0) #13, !dbg !4621
  br label %15, !dbg !4623

6:                                                ; preds = %3
  %7 = getelementptr inbounds [5 x %struct.hal_gpt_context_t], [5 x %struct.hal_gpt_context_t]* @g_gpt_context, i32 0, i32 %0, i32 2, !dbg !4624
  %8 = load i8, i8* %7, align 4, !dbg !4624, !range !3665
  %9 = icmp eq i8 %8, 1, !dbg !4626
  br i1 %9, label %10, label %15, !dbg !4627

10:                                               ; preds = %6
  %11 = icmp eq void (i8*)* %1, null, !dbg !4628
  br i1 %11, label %15, label %12, !dbg !4630

12:                                               ; preds = %10
  %13 = getelementptr inbounds [5 x %struct.hal_gpt_context_t], [5 x %struct.hal_gpt_context_t]* @g_gpt_context, i32 0, i32 %0, i32 1, i32 0, !dbg !4631
  store void (i8*)* %1, void (i8*)** %13, align 4, !dbg !4632
  %14 = getelementptr inbounds [5 x %struct.hal_gpt_context_t], [5 x %struct.hal_gpt_context_t]* @g_gpt_context, i32 0, i32 %0, i32 1, i32 1, !dbg !4633
  store i8* %2, i8** %14, align 4, !dbg !4634
  br label %15, !dbg !4635

15:                                               ; preds = %10, %6, %12, %5
  %16 = phi i32 [ -2, %5 ], [ 0, %12 ], [ -3, %6 ], [ -1, %10 ], !dbg !4617
  ret i32 %16, !dbg !4636
}

; Function Attrs: noinline nounwind optsize
define dso_local i32 @hal_gpt_start_timer_ms(i32 noundef %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #0 !dbg !4637 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !4642, metadata !DIExpression()), !dbg !4645
  call void @llvm.dbg.value(metadata i32 %1, metadata !4643, metadata !DIExpression()), !dbg !4645
  call void @llvm.dbg.value(metadata i32 %2, metadata !4644, metadata !DIExpression()), !dbg !4645
  %4 = tail call fastcc zeroext i1 @hal_gpt_is_port_valid(i32 noundef %0) #14, !dbg !4646
  br i1 %4, label %6, label %5, !dbg !4648

5:                                                ; preds = %3
  tail call void (i8*, i32, i8*, ...) @log_hal_error_internal(i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @__FUNCTION__.hal_gpt_start_timer_ms, i32 0, i32 0), i32 noundef 221, i8* noundef getelementptr inbounds ([51 x i8], [51 x i8]* @.str.4, i32 0, i32 0), i32 noundef %0) #13, !dbg !4649
  br label %17, !dbg !4651

6:                                                ; preds = %3
  %7 = getelementptr inbounds [5 x %struct.hal_gpt_context_t], [5 x %struct.hal_gpt_context_t]* @g_gpt_context, i32 0, i32 %0, i32 2, !dbg !4652
  %8 = load i8, i8* %7, align 4, !dbg !4652, !range !3665
  %9 = icmp eq i8 %8, 1, !dbg !4654
  br i1 %9, label %10, label %17, !dbg !4655

10:                                               ; preds = %6
  %11 = icmp ugt i32 %1, 130150523, !dbg !4656
  br i1 %11, label %17, label %12, !dbg !4658

12:                                               ; preds = %10
  %13 = tail call fastcc i32 @hal_gpt_translate_timeout_time(i32 noundef %1) #14, !dbg !4659
  %14 = tail call fastcc zeroext i1 @hal_gpt_translate_type(i32 noundef %2) #14, !dbg !4660
  %15 = tail call fastcc void ()* @hal_gpt_map_callback(i32 noundef %0) #14, !dbg !4661
  tail call void @drvTMR_init(i32 noundef %0, i32 noundef %13, i1 noundef zeroext %14, void ()* noundef nonnull %15) #13, !dbg !4662
  tail call void @TMR_Start(i32 noundef %0) #13, !dbg !4663
  %16 = getelementptr inbounds [5 x %struct.hal_gpt_context_t], [5 x %struct.hal_gpt_context_t]* @g_gpt_context, i32 0, i32 %0, i32 0, !dbg !4664
  store i32 1, i32* %16, align 4, !dbg !4665
  br label %17, !dbg !4666

17:                                               ; preds = %10, %6, %12, %5
  %18 = phi i32 [ -2, %5 ], [ 0, %12 ], [ -3, %6 ], [ -1, %10 ], !dbg !4645
  ret i32 %18, !dbg !4667
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize readnone willreturn
define internal fastcc i32 @hal_gpt_translate_timeout_time(i32 noundef %0) unnamed_addr #9 !dbg !4668 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !4672, metadata !DIExpression()), !dbg !4673
  %2 = shl i32 %0, 5, !dbg !4674
  %3 = mul i32 %0, 7, !dbg !4675
  %4 = udiv i32 %3, 10, !dbg !4676
  %5 = add i32 %4, %2, !dbg !4677
  %6 = mul i32 %0, 6, !dbg !4678
  %7 = udiv i32 %6, 100, !dbg !4679
  %8 = add i32 %5, %7, !dbg !4680
  %9 = shl i32 %0, 3, !dbg !4681
  %10 = udiv i32 %9, 1000, !dbg !4682
  %11 = add i32 %8, %10, !dbg !4683
  ret i32 %11, !dbg !4684
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize readnone willreturn
define internal fastcc zeroext i1 @hal_gpt_translate_type(i32 noundef %0) unnamed_addr #9 !dbg !4685 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !4689, metadata !DIExpression()), !dbg !4690
  %2 = icmp eq i32 %0, 1, !dbg !4691
  ret i1 %2, !dbg !4692
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize readnone willreturn
define internal fastcc nonnull void ()* @hal_gpt_map_callback(i32 noundef %0) unnamed_addr #9 !dbg !4693 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !4698, metadata !DIExpression()), !dbg !4699
  %2 = icmp eq i32 %0, 0, !dbg !4700
  %3 = select i1 %2, void ()* @hal_gpt_callback0, void ()* @hal_gpt_callback1, !dbg !4701
  ret void ()* %3, !dbg !4702
}

; Function Attrs: noinline nounwind optsize
define internal void @hal_gpt_callback0() #0 !dbg !4703 {
  %1 = load void (i8*)*, void (i8*)** getelementptr inbounds ([5 x %struct.hal_gpt_context_t], [5 x %struct.hal_gpt_context_t]* @g_gpt_context, i32 0, i32 0, i32 1, i32 0), align 4, !dbg !4707
  %2 = icmp eq void (i8*)* %1, null, !dbg !4709
  br i1 %2, label %5, label %3, !dbg !4710

3:                                                ; preds = %0
  %4 = load i8*, i8** getelementptr inbounds ([5 x %struct.hal_gpt_context_t], [5 x %struct.hal_gpt_context_t]* @g_gpt_context, i32 0, i32 0, i32 1, i32 1), align 4, !dbg !4711
  tail call void %1(i8* noundef %4) #13, !dbg !4713
  br label %5, !dbg !4714

5:                                                ; preds = %3, %0
  store i32 0, i32* getelementptr inbounds ([5 x %struct.hal_gpt_context_t], [5 x %struct.hal_gpt_context_t]* @g_gpt_context, i32 0, i32 0, i32 0), align 4, !dbg !4715
  ret void, !dbg !4716
}

; Function Attrs: noinline nounwind optsize
define internal void @hal_gpt_callback1() #0 !dbg !4717 {
  %1 = load void (i8*)*, void (i8*)** getelementptr inbounds ([5 x %struct.hal_gpt_context_t], [5 x %struct.hal_gpt_context_t]* @g_gpt_context, i32 0, i32 1, i32 1, i32 0), align 4, !dbg !4720
  %2 = icmp eq void (i8*)* %1, null, !dbg !4722
  br i1 %2, label %5, label %3, !dbg !4723

3:                                                ; preds = %0
  %4 = load i8*, i8** getelementptr inbounds ([5 x %struct.hal_gpt_context_t], [5 x %struct.hal_gpt_context_t]* @g_gpt_context, i32 0, i32 1, i32 1, i32 1), align 4, !dbg !4724
  tail call void %1(i8* noundef %4) #13, !dbg !4726
  br label %5, !dbg !4727

5:                                                ; preds = %3, %0
  store i32 0, i32* getelementptr inbounds ([5 x %struct.hal_gpt_context_t], [5 x %struct.hal_gpt_context_t]* @g_gpt_context, i32 0, i32 1, i32 0), align 4, !dbg !4728
  ret void, !dbg !4729
}

; Function Attrs: noinline nounwind optsize
define dso_local i32 @hal_gpt_stop_timer(i32 noundef %0) local_unnamed_addr #0 !dbg !4730 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !4732, metadata !DIExpression()), !dbg !4733
  %2 = tail call fastcc zeroext i1 @hal_gpt_is_port_valid(i32 noundef %0) #14, !dbg !4734
  br i1 %2, label %4, label %3, !dbg !4736

3:                                                ; preds = %1
  tail call void (i8*, i32, i8*, ...) @log_hal_error_internal(i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @__FUNCTION__.hal_gpt_stop_timer, i32 0, i32 0), i32 noundef 245, i8* noundef getelementptr inbounds ([51 x i8], [51 x i8]* @.str.4, i32 0, i32 0), i32 noundef %0) #13, !dbg !4737
  br label %6, !dbg !4739

4:                                                ; preds = %1
  tail call void @TMR_Stop(i32 noundef %0) #13, !dbg !4740
  %5 = getelementptr inbounds [5 x %struct.hal_gpt_context_t], [5 x %struct.hal_gpt_context_t]* @g_gpt_context, i32 0, i32 %0, i32 0, !dbg !4741
  store i32 0, i32* %5, align 4, !dbg !4742
  br label %6, !dbg !4743

6:                                                ; preds = %4, %3
  %7 = phi i32 [ -2, %3 ], [ 0, %4 ], !dbg !4733
  ret i32 %7, !dbg !4744
}

; Function Attrs: noinline nounwind optsize
define dso_local i32 @hal_gpt_delay_ms(i32 noundef %0) local_unnamed_addr #0 !dbg !4745 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !4749, metadata !DIExpression()), !dbg !4750
  %2 = load i32, i32* getelementptr inbounds ([5 x %struct.hal_gpt_context_t], [5 x %struct.hal_gpt_context_t]* @g_gpt_context, i32 0, i32 2, i32 0), align 4, !dbg !4751
  %3 = icmp eq i32 %2, 1, !dbg !4753
  br i1 %3, label %5, label %4, !dbg !4754

4:                                                ; preds = %1
  tail call void @CM4_GPT2Init() #13, !dbg !4755
  br label %5, !dbg !4757

5:                                                ; preds = %4, %1
  tail call void @delay_ms(i32 noundef %0) #13, !dbg !4758
  store i32 1, i32* getelementptr inbounds ([5 x %struct.hal_gpt_context_t], [5 x %struct.hal_gpt_context_t]* @g_gpt_context, i32 0, i32 2, i32 0), align 4, !dbg !4759
  ret i32 0, !dbg !4760
}

; Function Attrs: noinline nounwind optsize
define dso_local i32 @hal_gpt_delay_us(i32 noundef %0) local_unnamed_addr #0 !dbg !4761 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !4763, metadata !DIExpression()), !dbg !4764
  %2 = load i32, i32* getelementptr inbounds ([5 x %struct.hal_gpt_context_t], [5 x %struct.hal_gpt_context_t]* @g_gpt_context, i32 0, i32 4, i32 0), align 4, !dbg !4765
  %3 = icmp eq i32 %2, 1, !dbg !4767
  br i1 %3, label %5, label %4, !dbg !4768

4:                                                ; preds = %1
  tail call void @CM4_GPT4Init() #13, !dbg !4769
  br label %5, !dbg !4771

5:                                                ; preds = %4, %1
  tail call void @delay_us(i32 noundef %0) #13, !dbg !4772
  store i32 1, i32* getelementptr inbounds ([5 x %struct.hal_gpt_context_t], [5 x %struct.hal_gpt_context_t]* @g_gpt_context, i32 0, i32 4, i32 0), align 4, !dbg !4773
  ret i32 0, !dbg !4774
}

; Function Attrs: noinline nounwind optsize
define dso_local i32 @hal_pwm_init(i32 noundef %0) local_unnamed_addr #0 !dbg !4775 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !4779, metadata !DIExpression()), !dbg !4781
  %2 = load i1, i1* @init_time, align 4, !dbg !4782
  br i1 %2, label %3, label %4, !dbg !4784

3:                                                ; preds = %1
  tail call void (i8*, i32, i8*, ...) @log_hal_error_internal(i8* noundef getelementptr inbounds ([13 x i8], [13 x i8]* @__FUNCTION__.hal_pwm_init, i32 0, i32 0), i32 noundef 87, i8* noundef getelementptr inbounds ([40 x i8], [40 x i8]* @.str.22, i32 0, i32 0)) #13, !dbg !4785
  br label %13, !dbg !4787

4:                                                ; preds = %1
  %5 = tail call fastcc zeroext i8 @hal_pwm_translate_source_clock(i32 noundef %0) #14, !dbg !4788, !range !4789
  %6 = tail call i32 @pwm_init(i8 noundef zeroext %5) #13, !dbg !4790
  call void @llvm.dbg.value(metadata i32 %6, metadata !4780, metadata !DIExpression()), !dbg !4781
  %7 = icmp slt i32 %6, 0, !dbg !4791
  br i1 %7, label %8, label %9, !dbg !4793

8:                                                ; preds = %4
  tail call void (i8*, i32, i8*, ...) @log_hal_error_internal(i8* noundef getelementptr inbounds ([13 x i8], [13 x i8]* @__FUNCTION__.hal_pwm_init, i32 0, i32 0), i32 noundef 93, i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1.23, i32 0, i32 0)) #13, !dbg !4794
  br label %13, !dbg !4796

9:                                                ; preds = %4
  %10 = icmp ugt i32 %0, 5, !dbg !4797
  br i1 %10, label %11, label %12, !dbg !4799

11:                                               ; preds = %9
  tail call void (i8*, i32, i8*, ...) @log_hal_error_internal(i8* noundef getelementptr inbounds ([13 x i8], [13 x i8]* @__FUNCTION__.hal_pwm_init, i32 0, i32 0), i32 noundef 97, i8* noundef getelementptr inbounds ([26 x i8], [26 x i8]* @.str.2.24, i32 0, i32 0), i32 noundef %0) #13, !dbg !4800
  br label %13, !dbg !4802

12:                                               ; preds = %9
  store i32 %0, i32* @g_source_clock, align 4, !dbg !4803
  store i1 true, i1* @init_time, align 4, !dbg !4804
  br label %13, !dbg !4805

13:                                               ; preds = %12, %11, %8, %3
  %14 = phi i32 [ -4, %3 ], [ -4, %8 ], [ -4, %11 ], [ 0, %12 ], !dbg !4781
  ret i32 %14, !dbg !4806
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize readnone willreturn
define internal fastcc zeroext i8 @hal_pwm_translate_source_clock(i32 noundef %0) unnamed_addr #9 !dbg !4807 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !4811, metadata !DIExpression()), !dbg !4812
  %2 = icmp eq i32 %0, 1, !dbg !4813
  %3 = select i1 %2, i8 1, i8 2, !dbg !4813
  %4 = icmp eq i32 %0, 0, !dbg !4813
  %5 = select i1 %4, i8 0, i8 %3, !dbg !4813
  ret i8 %5, !dbg !4814
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn writeonly
define dso_local i32 @hal_pwm_deinit() local_unnamed_addr #11 !dbg !4815 {
  store i32 6, i32* @g_source_clock, align 4, !dbg !4818
  store i1 false, i1* @init_time, align 4, !dbg !4819
  ret i32 0, !dbg !4820
}

; Function Attrs: noinline nounwind optsize
define dso_local i32 @hal_pwm_set_frequency(i32 noundef %0, i32 noundef %1, i32* nocapture noundef writeonly %2) local_unnamed_addr #0 !dbg !4821 {
  %4 = alloca i32, align 4
  call void @llvm.dbg.value(metadata i32 %0, metadata !4826, metadata !DIExpression()), !dbg !4832
  call void @llvm.dbg.value(metadata i32 %1, metadata !4827, metadata !DIExpression()), !dbg !4832
  call void @llvm.dbg.value(metadata i32* %2, metadata !4828, metadata !DIExpression()), !dbg !4832
  call void @llvm.dbg.value(metadata i32 0, metadata !4829, metadata !DIExpression()), !dbg !4832
  %5 = tail call fastcc zeroext i1 @hal_pwm_is_channel_valid(i32 noundef %0) #14, !dbg !4833
  br i1 %5, label %7, label %6, !dbg !4835

6:                                                ; preds = %3
  tail call void (i8*, i32, i8*, ...) @log_hal_error_internal(i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @__FUNCTION__.hal_pwm_set_frequency, i32 0, i32 0), i32 noundef 119, i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str.3.25, i32 0, i32 0), i32 noundef %0) #13, !dbg !4836
  br label %32, !dbg !4838

7:                                                ; preds = %3
  %8 = load i32, i32* @g_source_clock, align 4, !dbg !4839
  %9 = icmp ugt i32 %8, 5, !dbg !4841
  br i1 %9, label %10, label %11, !dbg !4842

10:                                               ; preds = %7
  tail call void (i8*, i32, i8*, ...) @log_hal_error_internal(i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @__FUNCTION__.hal_pwm_set_frequency, i32 0, i32 0), i32 noundef 123, i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str.4.26, i32 0, i32 0)) #13, !dbg !4843
  br label %32, !dbg !4845

11:                                               ; preds = %7
  %12 = icmp eq i32 %1, 0, !dbg !4846
  br i1 %12, label %13, label %14, !dbg !4848

13:                                               ; preds = %11
  tail call void (i8*, i32, i8*, ...) @log_hal_error_internal(i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @__FUNCTION__.hal_pwm_set_frequency, i32 0, i32 0), i32 noundef 127, i8* noundef getelementptr inbounds ([24 x i8], [24 x i8]* @.str.5.27, i32 0, i32 0), i32 noundef 0) #13, !dbg !4849
  br label %32, !dbg !4851

14:                                               ; preds = %11
  %15 = bitcast i32* %4 to i8*, !dbg !4852
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %15) #15, !dbg !4852
  call void @llvm.dbg.value(metadata i32 0, metadata !4830, metadata !DIExpression()), !dbg !4832
  store i32 0, i32* %4, align 4, !dbg !4853
  call void @llvm.dbg.value(metadata i32* %4, metadata !4830, metadata !DIExpression(DW_OP_deref)), !dbg !4832
  %16 = call fastcc i32 @hal_pwm_calc_total_count(i32 noundef %8, i32 noundef %1, i32* noundef nonnull %4) #14, !dbg !4854
  %17 = icmp eq i32 %16, 0, !dbg !4856
  br i1 %17, label %19, label %18, !dbg !4857

18:                                               ; preds = %14
  tail call void (i8*, i32, i8*, ...) @log_hal_error_internal(i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @__FUNCTION__.hal_pwm_set_frequency, i32 0, i32 0), i32 noundef 132, i8* noundef getelementptr inbounds ([31 x i8], [31 x i8]* @.str.6, i32 0, i32 0)) #13, !dbg !4858
  br label %30, !dbg !4860

19:                                               ; preds = %14
  %20 = load i32, i32* %4, align 4, !dbg !4861
  call void @llvm.dbg.value(metadata i32 %20, metadata !4830, metadata !DIExpression()), !dbg !4832
  %21 = mul i32 %20, %1, !dbg !4862
  %22 = udiv i32 %21, 65535, !dbg !4863
  call void @llvm.dbg.value(metadata i32 %22, metadata !4829, metadata !DIExpression()), !dbg !4832
  %23 = icmp ugt i32 %22, %1, !dbg !4864
  br i1 %23, label %30, label %24, !dbg !4866

24:                                               ; preds = %19
  %25 = trunc i32 %0 to i8, !dbg !4867
  %26 = tail call i32 @pwm_set(i8 noundef zeroext %25, i32 noundef %1, i16 noundef zeroext 0, i8 noundef zeroext 1) #13, !dbg !4868
  call void @llvm.dbg.value(metadata i32 %26, metadata !4831, metadata !DIExpression()), !dbg !4832
  %27 = icmp slt i32 %26, 0, !dbg !4869
  br i1 %27, label %28, label %29, !dbg !4871

28:                                               ; preds = %24
  tail call void (i8*, i32, i8*, ...) @log_hal_error_internal(i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @__FUNCTION__.hal_pwm_set_frequency, i32 0, i32 0), i32 noundef 144, i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str.7, i32 0, i32 0)) #13, !dbg !4872
  br label %30, !dbg !4874

29:                                               ; preds = %24
  call void @llvm.dbg.value(metadata i32 %20, metadata !4830, metadata !DIExpression()), !dbg !4832
  store i32 %20, i32* %2, align 4, !dbg !4875
  br label %30, !dbg !4876

30:                                               ; preds = %28, %29, %19, %18
  %31 = phi i32 [ -4, %18 ], [ -1, %19 ], [ -4, %28 ], [ 0, %29 ], !dbg !4832
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %15) #15, !dbg !4877
  br label %32

32:                                               ; preds = %30, %13, %10, %6
  %33 = phi i32 [ -4, %10 ], [ -4, %13 ], [ %31, %30 ], [ -3, %6 ], !dbg !4832
  ret i32 %33, !dbg !4877
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize readnone willreturn
define internal fastcc zeroext i1 @hal_pwm_is_channel_valid(i32 noundef %0) unnamed_addr #9 !dbg !4878 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !4882, metadata !DIExpression()), !dbg !4883
  %2 = icmp ult i32 %0, 40, !dbg !4884
  ret i1 %2, !dbg !4885
}

; Function Attrs: noinline nounwind optsize
define internal fastcc i32 @hal_pwm_calc_total_count(i32 noundef %0, i32 noundef %1, i32* nocapture noundef writeonly %2) unnamed_addr #0 !dbg !447 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !453, metadata !DIExpression()), !dbg !4886
  call void @llvm.dbg.value(metadata i32 %1, metadata !454, metadata !DIExpression()), !dbg !4886
  call void @llvm.dbg.value(metadata i32* %2, metadata !455, metadata !DIExpression()), !dbg !4886
  %4 = getelementptr inbounds [6 x i32], [6 x i32]* @hal_pwm_calc_total_count.source_clock_table, i32 0, i32 %0, !dbg !4887
  %5 = load i32, i32* %4, align 4, !dbg !4887
  call void @llvm.dbg.value(metadata i32 %5, metadata !456, metadata !DIExpression()), !dbg !4886
  %6 = icmp ult i32 %5, %1, !dbg !4888
  br i1 %6, label %7, label %8, !dbg !4890

7:                                                ; preds = %3
  tail call void (i8*, i32, i8*, ...) @log_hal_error_internal(i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @__FUNCTION__.hal_pwm_calc_total_count, i32 0, i32 0), i32 noundef 75, i8* noundef getelementptr inbounds ([64 x i8], [64 x i8]* @.str.10, i32 0, i32 0), i32 noundef %1, i32 noundef %5) #13, !dbg !4891
  br label %10, !dbg !4893

8:                                                ; preds = %3
  %9 = udiv i32 %5, %1, !dbg !4894
  store i32 %9, i32* %2, align 4, !dbg !4895
  br label %10, !dbg !4896

10:                                               ; preds = %8, %7
  %11 = phi i32 [ -4, %7 ], [ 0, %8 ], !dbg !4886
  ret i32 %11, !dbg !4897
}

; Function Attrs: noinline nounwind optsize
define dso_local i32 @hal_pwm_set_duty_cycle(i32 noundef %0, i32 noundef %1) local_unnamed_addr #0 !dbg !4898 {
  %3 = alloca i32, align 4
  %4 = alloca i16, align 2
  %5 = alloca i8, align 1
  %6 = alloca i32, align 4
  call void @llvm.dbg.value(metadata i32 %0, metadata !4902, metadata !DIExpression()), !dbg !4909
  call void @llvm.dbg.value(metadata i32 %1, metadata !4903, metadata !DIExpression()), !dbg !4909
  %7 = tail call fastcc zeroext i1 @hal_pwm_is_channel_valid(i32 noundef %0) #14, !dbg !4910
  br i1 %7, label %9, label %8, !dbg !4912

8:                                                ; preds = %2
  tail call void (i8*, i32, i8*, ...) @log_hal_error_internal(i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @__FUNCTION__.hal_pwm_set_duty_cycle, i32 0, i32 0), i32 noundef 157, i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str.3.25, i32 0, i32 0), i32 noundef %0) #13, !dbg !4913
  br label %38, !dbg !4915

9:                                                ; preds = %2
  %10 = load i32, i32* @g_source_clock, align 4, !dbg !4916
  %11 = icmp ugt i32 %10, 5, !dbg !4918
  br i1 %11, label %12, label %13, !dbg !4919

12:                                               ; preds = %9
  tail call void (i8*, i32, i8*, ...) @log_hal_error_internal(i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @__FUNCTION__.hal_pwm_set_duty_cycle, i32 0, i32 0), i32 noundef 161, i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str.4.26, i32 0, i32 0)) #13, !dbg !4920
  br label %38, !dbg !4922

13:                                               ; preds = %9
  %14 = bitcast i32* %3 to i8*, !dbg !4923
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %14) #15, !dbg !4923
  call void @llvm.dbg.value(metadata i32 0, metadata !4905, metadata !DIExpression()), !dbg !4909
  store i32 0, i32* %3, align 4, !dbg !4924
  %15 = bitcast i16* %4 to i8*, !dbg !4925
  call void @llvm.lifetime.start.p0i8(i64 2, i8* nonnull %15) #15, !dbg !4925
  call void @llvm.dbg.value(metadata i16 0, metadata !4906, metadata !DIExpression()), !dbg !4909
  store i16 0, i16* %4, align 2, !dbg !4926
  call void @llvm.lifetime.start.p0i8(i64 1, i8* nonnull %5) #15, !dbg !4927
  call void @llvm.dbg.value(metadata i8 0, metadata !4907, metadata !DIExpression()), !dbg !4909
  store i8 0, i8* %5, align 1, !dbg !4928
  %16 = trunc i32 %0 to i8, !dbg !4929
  call void @llvm.dbg.value(metadata i32* %3, metadata !4905, metadata !DIExpression(DW_OP_deref)), !dbg !4909
  call void @llvm.dbg.value(metadata i16* %4, metadata !4906, metadata !DIExpression(DW_OP_deref)), !dbg !4909
  call void @llvm.dbg.value(metadata i8* %5, metadata !4907, metadata !DIExpression(DW_OP_deref)), !dbg !4909
  %17 = call i32 @pwm_get(i8 noundef zeroext %16, i32* noundef nonnull %3, i16* noundef nonnull %4, i8* noundef nonnull %5) #13, !dbg !4930
  %18 = load i32, i32* %3, align 4, !dbg !4931
  call void @llvm.dbg.value(metadata i32 %18, metadata !4905, metadata !DIExpression()), !dbg !4909
  %19 = icmp eq i32 %18, 0, !dbg !4933
  br i1 %19, label %20, label %21, !dbg !4934

20:                                               ; preds = %13
  call void (i8*, i32, i8*, ...) @log_hal_error_internal(i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @__FUNCTION__.hal_pwm_set_duty_cycle, i32 0, i32 0), i32 noundef 170, i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @.str.8, i32 0, i32 0)) #13, !dbg !4935
  br label %36, !dbg !4937

21:                                               ; preds = %13
  %22 = bitcast i32* %6 to i8*, !dbg !4938
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %22) #15, !dbg !4938
  call void @llvm.dbg.value(metadata i32 0, metadata !4908, metadata !DIExpression()), !dbg !4909
  %23 = load i32, i32* @g_source_clock, align 4, !dbg !4939
  call void @llvm.dbg.value(metadata i32 %18, metadata !4905, metadata !DIExpression()), !dbg !4909
  call void @llvm.dbg.value(metadata i32* %6, metadata !4908, metadata !DIExpression(DW_OP_deref)), !dbg !4909
  %24 = call fastcc i32 @hal_pwm_calc_total_count(i32 noundef %23, i32 noundef %18, i32* noundef nonnull %6) #14, !dbg !4941
  %25 = icmp eq i32 %24, 0, !dbg !4942
  br i1 %25, label %27, label %26, !dbg !4943

26:                                               ; preds = %21
  call void (i8*, i32, i8*, ...) @log_hal_error_internal(i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @__FUNCTION__.hal_pwm_set_duty_cycle, i32 0, i32 0), i32 noundef 175, i8* noundef getelementptr inbounds ([31 x i8], [31 x i8]* @.str.6, i32 0, i32 0)) #13, !dbg !4944
  br label %34, !dbg !4946

27:                                               ; preds = %21
  %28 = load i32, i32* %3, align 4, !dbg !4947
  call void @llvm.dbg.value(metadata i32 %28, metadata !4905, metadata !DIExpression()), !dbg !4909
  %29 = trunc i32 %1 to i16, !dbg !4948
  %30 = load i8, i8* %5, align 1, !dbg !4949
  call void @llvm.dbg.value(metadata i8 %30, metadata !4907, metadata !DIExpression()), !dbg !4909
  %31 = call i32 @pwm_set(i8 noundef zeroext %16, i32 noundef %28, i16 noundef zeroext %29, i8 noundef zeroext %30) #13, !dbg !4950
  call void @llvm.dbg.value(metadata i32 %31, metadata !4904, metadata !DIExpression()), !dbg !4909
  %32 = icmp slt i32 %31, 0, !dbg !4951
  br i1 %32, label %33, label %34, !dbg !4953

33:                                               ; preds = %27
  call void (i8*, i32, i8*, ...) @log_hal_error_internal(i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @__FUNCTION__.hal_pwm_set_duty_cycle, i32 0, i32 0), i32 noundef 183, i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str.7, i32 0, i32 0)) #13, !dbg !4954
  br label %34, !dbg !4956

34:                                               ; preds = %27, %33, %26
  %35 = phi i32 [ -4, %26 ], [ -4, %33 ], [ 0, %27 ], !dbg !4909
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %22) #15, !dbg !4957
  br label %36

36:                                               ; preds = %34, %20
  %37 = phi i32 [ -4, %20 ], [ %35, %34 ], !dbg !4909
  call void @llvm.lifetime.end.p0i8(i64 1, i8* nonnull %5) #15, !dbg !4957
  call void @llvm.lifetime.end.p0i8(i64 2, i8* nonnull %15) #15, !dbg !4957
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %14) #15, !dbg !4957
  br label %38

38:                                               ; preds = %36, %12, %8
  %39 = phi i32 [ -4, %12 ], [ %37, %36 ], [ -3, %8 ], !dbg !4909
  ret i32 %39, !dbg !4957
}

; Function Attrs: noinline nounwind optsize
define dso_local i32 @hal_pwm_start(i32 noundef %0) local_unnamed_addr #0 !dbg !4958 {
  %2 = alloca i32, align 4
  %3 = alloca i16, align 2
  %4 = alloca i8, align 1
  call void @llvm.dbg.value(metadata i32 %0, metadata !4962, metadata !DIExpression()), !dbg !4967
  %5 = tail call fastcc zeroext i1 @hal_pwm_is_channel_valid(i32 noundef %0) #14, !dbg !4968
  br i1 %5, label %7, label %6, !dbg !4970

6:                                                ; preds = %1
  tail call void (i8*, i32, i8*, ...) @log_hal_error_internal(i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @__FUNCTION__.hal_pwm_start, i32 0, i32 0), i32 noundef 194, i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str.3.25, i32 0, i32 0), i32 noundef %0) #13, !dbg !4971
  br label %22, !dbg !4973

7:                                                ; preds = %1
  %8 = bitcast i32* %2 to i8*, !dbg !4974
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %8) #15, !dbg !4974
  call void @llvm.dbg.value(metadata i32 0, metadata !4964, metadata !DIExpression()), !dbg !4967
  store i32 0, i32* %2, align 4, !dbg !4975
  %9 = bitcast i16* %3 to i8*, !dbg !4976
  call void @llvm.lifetime.start.p0i8(i64 2, i8* nonnull %9) #15, !dbg !4976
  call void @llvm.dbg.value(metadata i16 0, metadata !4965, metadata !DIExpression()), !dbg !4967
  store i16 0, i16* %3, align 2, !dbg !4977
  call void @llvm.lifetime.start.p0i8(i64 1, i8* nonnull %4) #15, !dbg !4978
  call void @llvm.dbg.value(metadata i8 0, metadata !4966, metadata !DIExpression()), !dbg !4967
  store i8 0, i8* %4, align 1, !dbg !4979
  %10 = trunc i32 %0 to i8, !dbg !4980
  call void @llvm.dbg.value(metadata i32* %2, metadata !4964, metadata !DIExpression(DW_OP_deref)), !dbg !4967
  call void @llvm.dbg.value(metadata i16* %3, metadata !4965, metadata !DIExpression(DW_OP_deref)), !dbg !4967
  call void @llvm.dbg.value(metadata i8* %4, metadata !4966, metadata !DIExpression(DW_OP_deref)), !dbg !4967
  %11 = call i32 @pwm_get(i8 noundef zeroext %10, i32* noundef nonnull %2, i16* noundef nonnull %3, i8* noundef nonnull %4) #13, !dbg !4981
  %12 = load i32, i32* %2, align 4, !dbg !4982
  call void @llvm.dbg.value(metadata i32 %12, metadata !4964, metadata !DIExpression()), !dbg !4967
  %13 = icmp eq i32 %12, 0, !dbg !4984
  br i1 %13, label %14, label %15, !dbg !4985

14:                                               ; preds = %7
  call void (i8*, i32, i8*, ...) @log_hal_error_internal(i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @__FUNCTION__.hal_pwm_start, i32 0, i32 0), i32 noundef 203, i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @.str.8, i32 0, i32 0)) #13, !dbg !4986
  br label %20, !dbg !4988

15:                                               ; preds = %7
  %16 = load i16, i16* %3, align 2, !dbg !4989
  call void @llvm.dbg.value(metadata i16 %16, metadata !4965, metadata !DIExpression()), !dbg !4967
  %17 = call i32 @pwm_set(i8 noundef zeroext %10, i32 noundef %12, i16 noundef zeroext %16, i8 noundef zeroext 1) #13, !dbg !4990
  call void @llvm.dbg.value(metadata i32 %17, metadata !4963, metadata !DIExpression()), !dbg !4967
  %18 = icmp slt i32 %17, 0, !dbg !4991
  br i1 %18, label %19, label %20, !dbg !4993

19:                                               ; preds = %15
  call void (i8*, i32, i8*, ...) @log_hal_error_internal(i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @__FUNCTION__.hal_pwm_start, i32 0, i32 0), i32 noundef 211, i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str.7, i32 0, i32 0)) #13, !dbg !4994
  br label %20, !dbg !4996

20:                                               ; preds = %15, %19, %14
  %21 = phi i32 [ -4, %14 ], [ -4, %19 ], [ 0, %15 ], !dbg !4967
  call void @llvm.lifetime.end.p0i8(i64 1, i8* nonnull %4) #15, !dbg !4997
  call void @llvm.lifetime.end.p0i8(i64 2, i8* nonnull %9) #15, !dbg !4997
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %8) #15, !dbg !4997
  br label %22

22:                                               ; preds = %20, %6
  %23 = phi i32 [ %21, %20 ], [ -3, %6 ], !dbg !4967
  ret i32 %23, !dbg !4997
}

; Function Attrs: noinline nounwind optsize
define dso_local i32 @hal_pwm_stop(i32 noundef %0) local_unnamed_addr #0 !dbg !4998 {
  %2 = alloca i32, align 4
  %3 = alloca i16, align 2
  %4 = alloca i8, align 1
  call void @llvm.dbg.value(metadata i32 %0, metadata !5000, metadata !DIExpression()), !dbg !5005
  %5 = tail call fastcc zeroext i1 @hal_pwm_is_channel_valid(i32 noundef %0) #14, !dbg !5006
  br i1 %5, label %7, label %6, !dbg !5008

6:                                                ; preds = %1
  tail call void (i8*, i32, i8*, ...) @log_hal_error_internal(i8* noundef getelementptr inbounds ([13 x i8], [13 x i8]* @__FUNCTION__.hal_pwm_stop, i32 0, i32 0), i32 noundef 221, i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str.3.25, i32 0, i32 0), i32 noundef %0) #13, !dbg !5009
  br label %22, !dbg !5011

7:                                                ; preds = %1
  %8 = bitcast i32* %2 to i8*, !dbg !5012
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %8) #15, !dbg !5012
  call void @llvm.dbg.value(metadata i32 0, metadata !5002, metadata !DIExpression()), !dbg !5005
  store i32 0, i32* %2, align 4, !dbg !5013
  %9 = bitcast i16* %3 to i8*, !dbg !5014
  call void @llvm.lifetime.start.p0i8(i64 2, i8* nonnull %9) #15, !dbg !5014
  call void @llvm.dbg.value(metadata i16 0, metadata !5003, metadata !DIExpression()), !dbg !5005
  store i16 0, i16* %3, align 2, !dbg !5015
  call void @llvm.lifetime.start.p0i8(i64 1, i8* nonnull %4) #15, !dbg !5016
  call void @llvm.dbg.value(metadata i8 0, metadata !5004, metadata !DIExpression()), !dbg !5005
  store i8 0, i8* %4, align 1, !dbg !5017
  %10 = trunc i32 %0 to i8, !dbg !5018
  call void @llvm.dbg.value(metadata i32* %2, metadata !5002, metadata !DIExpression(DW_OP_deref)), !dbg !5005
  call void @llvm.dbg.value(metadata i16* %3, metadata !5003, metadata !DIExpression(DW_OP_deref)), !dbg !5005
  call void @llvm.dbg.value(metadata i8* %4, metadata !5004, metadata !DIExpression(DW_OP_deref)), !dbg !5005
  %11 = call i32 @pwm_get(i8 noundef zeroext %10, i32* noundef nonnull %2, i16* noundef nonnull %3, i8* noundef nonnull %4) #13, !dbg !5019
  %12 = load i32, i32* %2, align 4, !dbg !5020
  call void @llvm.dbg.value(metadata i32 %12, metadata !5002, metadata !DIExpression()), !dbg !5005
  %13 = icmp eq i32 %12, 0, !dbg !5022
  br i1 %13, label %14, label %15, !dbg !5023

14:                                               ; preds = %7
  call void (i8*, i32, i8*, ...) @log_hal_error_internal(i8* noundef getelementptr inbounds ([13 x i8], [13 x i8]* @__FUNCTION__.hal_pwm_stop, i32 0, i32 0), i32 noundef 230, i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @.str.8, i32 0, i32 0)) #13, !dbg !5024
  br label %20, !dbg !5026

15:                                               ; preds = %7
  %16 = load i16, i16* %3, align 2, !dbg !5027
  call void @llvm.dbg.value(metadata i16 %16, metadata !5003, metadata !DIExpression()), !dbg !5005
  %17 = call i32 @pwm_set(i8 noundef zeroext %10, i32 noundef %12, i16 noundef zeroext %16, i8 noundef zeroext 0) #13, !dbg !5028
  call void @llvm.dbg.value(metadata i32 %17, metadata !5001, metadata !DIExpression()), !dbg !5005
  %18 = icmp slt i32 %17, 0, !dbg !5029
  br i1 %18, label %19, label %20, !dbg !5031

19:                                               ; preds = %15
  call void (i8*, i32, i8*, ...) @log_hal_error_internal(i8* noundef getelementptr inbounds ([13 x i8], [13 x i8]* @__FUNCTION__.hal_pwm_stop, i32 0, i32 0), i32 noundef 238, i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str.7, i32 0, i32 0)) #13, !dbg !5032
  br label %20, !dbg !5034

20:                                               ; preds = %15, %19, %14
  %21 = phi i32 [ -4, %14 ], [ -4, %19 ], [ 0, %15 ], !dbg !5005
  call void @llvm.lifetime.end.p0i8(i64 1, i8* nonnull %4) #15, !dbg !5035
  call void @llvm.lifetime.end.p0i8(i64 2, i8* nonnull %9) #15, !dbg !5035
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %8) #15, !dbg !5035
  br label %22

22:                                               ; preds = %20, %6
  %23 = phi i32 [ %21, %20 ], [ -3, %6 ], !dbg !5005
  ret i32 %23, !dbg !5035
}

; Function Attrs: noinline nounwind optsize
define dso_local i32 @hal_pwm_get_frequency(i32 noundef %0, i32* noundef %1) local_unnamed_addr #0 !dbg !5036 {
  %3 = alloca i16, align 2
  %4 = alloca i8, align 1
  call void @llvm.dbg.value(metadata i32 %0, metadata !5040, metadata !DIExpression()), !dbg !5044
  call void @llvm.dbg.value(metadata i32* %1, metadata !5041, metadata !DIExpression()), !dbg !5044
  %5 = tail call fastcc zeroext i1 @hal_pwm_is_channel_valid(i32 noundef %0) #14, !dbg !5045
  br i1 %5, label %7, label %6, !dbg !5047

6:                                                ; preds = %2
  tail call void (i8*, i32, i8*, ...) @log_hal_error_internal(i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @__FUNCTION__.hal_pwm_get_frequency, i32 0, i32 0), i32 noundef 247, i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str.3.25, i32 0, i32 0), i32 noundef %0) #13, !dbg !5048
  br label %14, !dbg !5050

7:                                                ; preds = %2
  %8 = icmp eq i32* %1, null, !dbg !5051
  br i1 %8, label %9, label %10, !dbg !5053

9:                                                ; preds = %7
  tail call void (i8*, i32, i8*, ...) @log_hal_error_internal(i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @__FUNCTION__.hal_pwm_get_frequency, i32 0, i32 0), i32 noundef 251, i8* noundef getelementptr inbounds ([18 x i8], [18 x i8]* @.str.9, i32 0, i32 0)) #13, !dbg !5054
  br label %14, !dbg !5056

10:                                               ; preds = %7
  %11 = bitcast i16* %3 to i8*, !dbg !5057
  call void @llvm.lifetime.start.p0i8(i64 2, i8* nonnull %11) #15, !dbg !5057
  call void @llvm.dbg.value(metadata i16 0, metadata !5042, metadata !DIExpression()), !dbg !5044
  store i16 0, i16* %3, align 2, !dbg !5058
  call void @llvm.lifetime.start.p0i8(i64 1, i8* nonnull %4) #15, !dbg !5059
  call void @llvm.dbg.value(metadata i8 0, metadata !5043, metadata !DIExpression()), !dbg !5044
  store i8 0, i8* %4, align 1, !dbg !5060
  %12 = trunc i32 %0 to i8, !dbg !5061
  call void @llvm.dbg.value(metadata i16* %3, metadata !5042, metadata !DIExpression(DW_OP_deref)), !dbg !5044
  call void @llvm.dbg.value(metadata i8* %4, metadata !5043, metadata !DIExpression(DW_OP_deref)), !dbg !5044
  %13 = call i32 @pwm_get(i8 noundef zeroext %12, i32* noundef nonnull %1, i16* noundef nonnull %3, i8* noundef nonnull %4) #13, !dbg !5062
  call void @llvm.lifetime.end.p0i8(i64 1, i8* nonnull %4) #15, !dbg !5063
  call void @llvm.lifetime.end.p0i8(i64 2, i8* nonnull %11) #15, !dbg !5063
  br label %14

14:                                               ; preds = %10, %9, %6
  %15 = phi i32 [ -3, %9 ], [ 0, %10 ], [ -3, %6 ], !dbg !5044
  ret i32 %15, !dbg !5063
}

; Function Attrs: noinline nounwind optsize
define dso_local i32 @hal_pwm_get_duty_cycle(i32 noundef %0, i32* nocapture noundef writeonly %1) local_unnamed_addr #0 !dbg !5064 {
  %3 = alloca i32, align 4
  %4 = alloca i16, align 2
  %5 = alloca i8, align 1
  %6 = alloca i32, align 4
  call void @llvm.dbg.value(metadata i32 %0, metadata !5066, metadata !DIExpression()), !dbg !5072
  call void @llvm.dbg.value(metadata i32* %1, metadata !5067, metadata !DIExpression()), !dbg !5072
  %7 = tail call fastcc zeroext i1 @hal_pwm_is_channel_valid(i32 noundef %0) #14, !dbg !5073
  br i1 %7, label %9, label %8, !dbg !5075

8:                                                ; preds = %2
  tail call void (i8*, i32, i8*, ...) @log_hal_error_internal(i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @__FUNCTION__.hal_pwm_get_duty_cycle, i32 0, i32 0), i32 noundef 264, i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str.3.25, i32 0, i32 0), i32 noundef %0) #13, !dbg !5076
  br label %30, !dbg !5078

9:                                                ; preds = %2
  %10 = bitcast i32* %3 to i8*, !dbg !5079
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %10) #15, !dbg !5079
  call void @llvm.dbg.value(metadata i32 0, metadata !5068, metadata !DIExpression()), !dbg !5072
  store i32 0, i32* %3, align 4, !dbg !5080
  %11 = bitcast i16* %4 to i8*, !dbg !5081
  call void @llvm.lifetime.start.p0i8(i64 2, i8* nonnull %11) #15, !dbg !5081
  call void @llvm.dbg.value(metadata i16 0, metadata !5069, metadata !DIExpression()), !dbg !5072
  store i16 0, i16* %4, align 2, !dbg !5082
  call void @llvm.lifetime.start.p0i8(i64 1, i8* nonnull %5) #15, !dbg !5083
  call void @llvm.dbg.value(metadata i8 0, metadata !5070, metadata !DIExpression()), !dbg !5072
  store i8 0, i8* %5, align 1, !dbg !5084
  %12 = trunc i32 %0 to i8, !dbg !5085
  call void @llvm.dbg.value(metadata i32* %3, metadata !5068, metadata !DIExpression(DW_OP_deref)), !dbg !5072
  call void @llvm.dbg.value(metadata i16* %4, metadata !5069, metadata !DIExpression(DW_OP_deref)), !dbg !5072
  call void @llvm.dbg.value(metadata i8* %5, metadata !5070, metadata !DIExpression(DW_OP_deref)), !dbg !5072
  %13 = call i32 @pwm_get(i8 noundef zeroext %12, i32* noundef nonnull %3, i16* noundef nonnull %4, i8* noundef nonnull %5) #13, !dbg !5086
  %14 = load i32, i32* %3, align 4, !dbg !5087
  call void @llvm.dbg.value(metadata i32 %14, metadata !5068, metadata !DIExpression()), !dbg !5072
  %15 = icmp eq i32 %14, 0, !dbg !5089
  br i1 %15, label %16, label %17, !dbg !5090

16:                                               ; preds = %9
  call void (i8*, i32, i8*, ...) @log_hal_error_internal(i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @__FUNCTION__.hal_pwm_get_duty_cycle, i32 0, i32 0), i32 noundef 273, i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @.str.8, i32 0, i32 0)) #13, !dbg !5091
  br label %28, !dbg !5093

17:                                               ; preds = %9
  %18 = bitcast i32* %6 to i8*, !dbg !5094
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %18) #15, !dbg !5094
  call void @llvm.dbg.value(metadata i32 0, metadata !5071, metadata !DIExpression()), !dbg !5072
  %19 = load i32, i32* @g_source_clock, align 4, !dbg !5095
  call void @llvm.dbg.value(metadata i32 %14, metadata !5068, metadata !DIExpression()), !dbg !5072
  call void @llvm.dbg.value(metadata i32* %6, metadata !5071, metadata !DIExpression(DW_OP_deref)), !dbg !5072
  %20 = call fastcc i32 @hal_pwm_calc_total_count(i32 noundef %19, i32 noundef %14, i32* noundef nonnull %6) #14, !dbg !5097
  %21 = icmp eq i32 %20, 0, !dbg !5098
  br i1 %21, label %23, label %22, !dbg !5099

22:                                               ; preds = %17
  call void (i8*, i32, i8*, ...) @log_hal_error_internal(i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @__FUNCTION__.hal_pwm_get_duty_cycle, i32 0, i32 0), i32 noundef 278, i8* noundef getelementptr inbounds ([31 x i8], [31 x i8]* @.str.6, i32 0, i32 0)) #13, !dbg !5100
  br label %26, !dbg !5102

23:                                               ; preds = %17
  %24 = load i16, i16* %4, align 2, !dbg !5103
  call void @llvm.dbg.value(metadata i16 %24, metadata !5069, metadata !DIExpression()), !dbg !5072
  %25 = zext i16 %24 to i32, !dbg !5103
  store i32 %25, i32* %1, align 4, !dbg !5104
  br label %26, !dbg !5105

26:                                               ; preds = %23, %22
  %27 = phi i32 [ -4, %22 ], [ 0, %23 ], !dbg !5072
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %18) #15, !dbg !5106
  br label %28

28:                                               ; preds = %26, %16
  %29 = phi i32 [ -4, %16 ], [ %27, %26 ], !dbg !5072
  call void @llvm.lifetime.end.p0i8(i64 1, i8* nonnull %5) #15, !dbg !5106
  call void @llvm.lifetime.end.p0i8(i64 2, i8* nonnull %11) #15, !dbg !5106
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %10) #15, !dbg !5106
  br label %30

30:                                               ; preds = %28, %8
  %31 = phi i32 [ %29, %28 ], [ -3, %8 ], !dbg !5072
  ret i32 %31, !dbg !5106
}

; Function Attrs: noinline nounwind optsize
define dso_local i32 @hal_pwm_get_running_status(i32 noundef %0, i32* nocapture noundef writeonly %1) local_unnamed_addr #0 !dbg !5107 {
  %3 = alloca i32, align 4
  %4 = alloca i16, align 2
  %5 = alloca i8, align 1
  call void @llvm.dbg.value(metadata i32 %0, metadata !5113, metadata !DIExpression()), !dbg !5118
  call void @llvm.dbg.value(metadata i32* %1, metadata !5114, metadata !DIExpression()), !dbg !5118
  %6 = tail call fastcc zeroext i1 @hal_pwm_is_channel_valid(i32 noundef %0) #14, !dbg !5119
  br i1 %6, label %8, label %7, !dbg !5121

7:                                                ; preds = %2
  tail call void (i8*, i32, i8*, ...) @log_hal_error_internal(i8* noundef getelementptr inbounds ([27 x i8], [27 x i8]* @__FUNCTION__.hal_pwm_get_running_status, i32 0, i32 0), i32 noundef 289, i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str.3.25, i32 0, i32 0), i32 noundef %0) #13, !dbg !5122
  br label %16, !dbg !5124

8:                                                ; preds = %2
  %9 = bitcast i32* %3 to i8*, !dbg !5125
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %9) #15, !dbg !5125
  call void @llvm.dbg.value(metadata i32 0, metadata !5115, metadata !DIExpression()), !dbg !5118
  store i32 0, i32* %3, align 4, !dbg !5126
  %10 = bitcast i16* %4 to i8*, !dbg !5127
  call void @llvm.lifetime.start.p0i8(i64 2, i8* nonnull %10) #15, !dbg !5127
  call void @llvm.dbg.value(metadata i16 0, metadata !5116, metadata !DIExpression()), !dbg !5118
  store i16 0, i16* %4, align 2, !dbg !5128
  call void @llvm.lifetime.start.p0i8(i64 1, i8* nonnull %5) #15, !dbg !5129
  call void @llvm.dbg.value(metadata i8 0, metadata !5117, metadata !DIExpression()), !dbg !5118
  store i8 0, i8* %5, align 1, !dbg !5130
  %11 = trunc i32 %0 to i8, !dbg !5131
  call void @llvm.dbg.value(metadata i32* %3, metadata !5115, metadata !DIExpression(DW_OP_deref)), !dbg !5118
  call void @llvm.dbg.value(metadata i16* %4, metadata !5116, metadata !DIExpression(DW_OP_deref)), !dbg !5118
  call void @llvm.dbg.value(metadata i8* %5, metadata !5117, metadata !DIExpression(DW_OP_deref)), !dbg !5118
  %12 = call i32 @pwm_get(i8 noundef zeroext %11, i32* noundef nonnull %3, i16* noundef nonnull %4, i8* noundef nonnull %5) #13, !dbg !5132
  %13 = load i8, i8* %5, align 1, !dbg !5133
  call void @llvm.dbg.value(metadata i8 %13, metadata !5117, metadata !DIExpression()), !dbg !5118
  %14 = icmp ne i8 %13, 0, !dbg !5133
  %15 = zext i1 %14 to i32, !dbg !5133
  store i32 %15, i32* %1, align 4, !dbg !5134
  call void @llvm.lifetime.end.p0i8(i64 1, i8* nonnull %5) #15, !dbg !5135
  call void @llvm.lifetime.end.p0i8(i64 2, i8* nonnull %10) #15, !dbg !5135
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %9) #15, !dbg !5135
  br label %16

16:                                               ; preds = %8, %7
  %17 = phi i32 [ 0, %8 ], [ -3, %7 ], !dbg !5118
  ret i32 %17, !dbg !5135
}

; Function Attrs: noinline nounwind optsize
define dso_local i32 @hal_uart_init(i32 noundef %0, %struct.hal_uart_config_t* noundef %1) local_unnamed_addr #0 !dbg !5136 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !5142, metadata !DIExpression()), !dbg !5144
  call void @llvm.dbg.value(metadata %struct.hal_uart_config_t* %1, metadata !5143, metadata !DIExpression()), !dbg !5144
  %3 = tail call fastcc zeroext i1 @hal_uart_is_config_valid(i32 noundef %0, %struct.hal_uart_config_t* noundef %1) #14, !dbg !5145
  br i1 %3, label %4, label %18, !dbg !5147

4:                                                ; preds = %2
  %5 = getelementptr inbounds [2 x %struct.uart_context_t], [2 x %struct.uart_context_t]* @g_uart_context_table, i32 0, i32 %0, i32 0, !dbg !5148
  %6 = load i8, i8* %5, align 4, !dbg !5148, !range !3665
  %7 = icmp eq i8 %6, 0, !dbg !5148
  br i1 %7, label %8, label %18, !dbg !5150

8:                                                ; preds = %4
  %9 = tail call i8* @memset(i8* noundef nonnull %5, i32 noundef 0, i32 noundef 64) #13, !dbg !5151
  %10 = getelementptr inbounds [2 x %struct.uart_context_t], [2 x %struct.uart_context_t]* @g_uart_context_table, i32 0, i32 %0, i32 1, !dbg !5152
  %11 = bitcast %struct.hal_uart_config_t* %10 to i8*, !dbg !5153
  %12 = bitcast %struct.hal_uart_config_t* %1 to i8*, !dbg !5154
  %13 = tail call i8* @memcpy(i8* noundef nonnull %11, i8* noundef %12, i32 noundef 16) #13, !dbg !5155
  store i8 1, i8* %5, align 4, !dbg !5156
  %14 = tail call fastcc i32 @hal_uart_translate_port(i32 noundef %0) #14, !dbg !5157, !range !5158
  tail call void @uart_reset_default_value(i32 noundef %14) #13, !dbg !5159
  tail call void @halUART_HWInit(i32 noundef %14) #13, !dbg !5160
  %15 = tail call i32 @hal_uart_set_format(i32 noundef %0, %struct.hal_uart_config_t* noundef %1) #14, !dbg !5161
  %16 = icmp eq i32 %15, 0, !dbg !5163
  %17 = select i1 %16, i32 0, i32 -4, !dbg !5144
  br label %18, !dbg !5144

18:                                               ; preds = %8, %4, %2
  %19 = phi i32 [ -4, %2 ], [ -3, %4 ], [ %17, %8 ], !dbg !5144
  ret i32 %19, !dbg !5164
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize readonly willreturn
define internal fastcc zeroext i1 @hal_uart_is_config_valid(i32 noundef %0, %struct.hal_uart_config_t* noundef readonly %1) unnamed_addr #5 !dbg !5165 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !5171, metadata !DIExpression()), !dbg !5173
  call void @llvm.dbg.value(metadata %struct.hal_uart_config_t* %1, metadata !5172, metadata !DIExpression()), !dbg !5173
  %3 = tail call fastcc zeroext i1 @hal_uart_is_port_valid(i32 noundef %0) #14, !dbg !5174
  %4 = icmp ne %struct.hal_uart_config_t* %1, null
  %5 = and i1 %4, %3, !dbg !5176
  br i1 %5, label %6, label %22, !dbg !5176

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.hal_uart_config_t, %struct.hal_uart_config_t* %1, i32 0, i32 0, !dbg !5177
  %8 = load i32, i32* %7, align 4, !dbg !5177
  %9 = icmp ugt i32 %8, 12, !dbg !5179
  br i1 %9, label %22, label %10, !dbg !5180

10:                                               ; preds = %6
  %11 = getelementptr inbounds %struct.hal_uart_config_t, %struct.hal_uart_config_t* %1, i32 0, i32 3, !dbg !5181
  %12 = load i32, i32* %11, align 4, !dbg !5181
  %13 = icmp ugt i32 %12, 2, !dbg !5182
  br i1 %13, label %22, label %14, !dbg !5183

14:                                               ; preds = %10
  %15 = getelementptr inbounds %struct.hal_uart_config_t, %struct.hal_uart_config_t* %1, i32 0, i32 2, !dbg !5184
  %16 = load i32, i32* %15, align 4, !dbg !5184
  %17 = icmp ugt i32 %16, 1, !dbg !5185
  br i1 %17, label %22, label %18, !dbg !5186

18:                                               ; preds = %14
  %19 = getelementptr inbounds %struct.hal_uart_config_t, %struct.hal_uart_config_t* %1, i32 0, i32 1, !dbg !5187
  %20 = load i32, i32* %19, align 4, !dbg !5187
  %21 = icmp ult i32 %20, 4, !dbg !5188
  br label %22, !dbg !5189

22:                                               ; preds = %18, %6, %10, %14, %2
  %23 = phi i1 [ false, %2 ], [ false, %14 ], [ false, %10 ], [ false, %6 ], [ %21, %18 ], !dbg !5173
  ret i1 %23, !dbg !5190
}

; Function Attrs: optsize
declare dso_local i8* @memcpy(i8* noundef, i8* noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize readnone willreturn
define internal fastcc i32 @hal_uart_translate_port(i32 noundef %0) unnamed_addr #9 !dbg !5191 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !5195, metadata !DIExpression()), !dbg !5196
  %2 = icmp ne i32 %0, 0, !dbg !5197
  %3 = zext i1 %2 to i32, !dbg !5198
  ret i32 %3, !dbg !5199
}

; Function Attrs: noinline nounwind optsize
define dso_local i32 @hal_uart_set_format(i32 noundef %0, %struct.hal_uart_config_t* noundef %1) local_unnamed_addr #0 !dbg !5200 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !5204, metadata !DIExpression()), !dbg !5206
  call void @llvm.dbg.value(metadata %struct.hal_uart_config_t* %1, metadata !5205, metadata !DIExpression()), !dbg !5206
  %3 = tail call fastcc zeroext i1 @hal_uart_is_config_valid(i32 noundef %0, %struct.hal_uart_config_t* noundef %1) #14, !dbg !5207
  br i1 %3, label %4, label %22, !dbg !5209

4:                                                ; preds = %2
  %5 = getelementptr inbounds [2 x %struct.uart_context_t], [2 x %struct.uart_context_t]* @g_uart_context_table, i32 0, i32 %0, i32 1, !dbg !5210
  %6 = bitcast %struct.hal_uart_config_t* %5 to i8*, !dbg !5211
  %7 = bitcast %struct.hal_uart_config_t* %1 to i8*, !dbg !5212
  %8 = tail call i8* @memcpy(i8* noundef nonnull %6, i8* noundef %7, i32 noundef 16) #13, !dbg !5213
  %9 = tail call fastcc i32 @hal_uart_translate_port(i32 noundef %0) #14, !dbg !5214
  %10 = getelementptr inbounds %struct.hal_uart_config_t, %struct.hal_uart_config_t* %1, i32 0, i32 0, !dbg !5215
  %11 = load i32, i32* %10, align 4, !dbg !5215
  %12 = tail call fastcc i32 @hal_uart_translate_baudrate(i32 noundef %11) #14, !dbg !5216
  %13 = getelementptr inbounds %struct.hal_uart_config_t, %struct.hal_uart_config_t* %1, i32 0, i32 1, !dbg !5217
  %14 = load i32, i32* %13, align 4, !dbg !5217
  %15 = tail call fastcc zeroext i16 @hal_uart_translate_word_length(i32 noundef %14) #14, !dbg !5218
  %16 = getelementptr inbounds %struct.hal_uart_config_t, %struct.hal_uart_config_t* %1, i32 0, i32 3, !dbg !5219
  %17 = load i32, i32* %16, align 4, !dbg !5219
  %18 = tail call fastcc zeroext i16 @hal_uart_translate_parity(i32 noundef %17) #14, !dbg !5220
  %19 = getelementptr inbounds %struct.hal_uart_config_t, %struct.hal_uart_config_t* %1, i32 0, i32 2, !dbg !5221
  %20 = load i32, i32* %19, align 4, !dbg !5221
  %21 = tail call fastcc zeroext i16 @hal_uart_translate_stopbit(i32 noundef %20) #14, !dbg !5222
  tail call void @halUART_SetFormat(i32 noundef %9, i32 noundef %12, i16 noundef zeroext %15, i16 noundef zeroext %18, i16 noundef zeroext %21) #13, !dbg !5223
  br label %22, !dbg !5224

22:                                               ; preds = %2, %4
  %23 = phi i32 [ 0, %4 ], [ -4, %2 ], !dbg !5206
  ret i32 %23, !dbg !5225
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize readnone willreturn
define internal fastcc i32 @hal_uart_translate_baudrate(i32 noundef %0) unnamed_addr #9 !dbg !5226 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !5230, metadata !DIExpression()), !dbg !5235
  call void @llvm.dbg.declare(metadata [13 x i32]* @__const.hal_uart_translate_baudrate.baudrate_tbl, metadata !5231, metadata !DIExpression()), !dbg !5236
  %2 = getelementptr inbounds [13 x i32], [13 x i32]* @__const.hal_uart_translate_baudrate.baudrate_tbl, i32 0, i32 %0, !dbg !5237
  %3 = load i32, i32* %2, align 4, !dbg !5237
  ret i32 %3, !dbg !5238
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize readnone willreturn
define internal fastcc zeroext i16 @hal_uart_translate_word_length(i32 noundef %0) unnamed_addr #9 !dbg !5239 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !5243, metadata !DIExpression()), !dbg !5246
  call void @llvm.dbg.declare(metadata [4 x i16]* @__const.hal_uart_translate_word_length.databit_tbl, metadata !5244, metadata !DIExpression()), !dbg !5247
  %2 = getelementptr inbounds [4 x i16], [4 x i16]* @__const.hal_uart_translate_word_length.databit_tbl, i32 0, i32 %0, !dbg !5248
  %3 = load i16, i16* %2, align 2, !dbg !5248
  ret i16 %3, !dbg !5249
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize readnone willreturn
define internal fastcc zeroext i16 @hal_uart_translate_parity(i32 noundef %0) unnamed_addr #9 !dbg !5250 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !5254, metadata !DIExpression()), !dbg !5257
  call void @llvm.dbg.declare(metadata [5 x i16]* @__const.hal_uart_translate_parity.parity_tbl, metadata !5255, metadata !DIExpression()), !dbg !5258
  %2 = getelementptr inbounds [5 x i16], [5 x i16]* @__const.hal_uart_translate_parity.parity_tbl, i32 0, i32 %0, !dbg !5259
  %3 = load i16, i16* %2, align 2, !dbg !5259
  ret i16 %3, !dbg !5260
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize readnone willreturn
define internal fastcc zeroext i16 @hal_uart_translate_stopbit(i32 noundef %0) unnamed_addr #9 !dbg !5261 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !5265, metadata !DIExpression()), !dbg !5268
  call void @llvm.dbg.declare(metadata [3 x i16]* @__const.hal_uart_translate_stopbit.stopbit_tbl, metadata !5266, metadata !DIExpression()), !dbg !5269
  %2 = getelementptr inbounds [3 x i16], [3 x i16]* @__const.hal_uart_translate_stopbit.stopbit_tbl, i32 0, i32 %0, !dbg !5270
  %3 = load i16, i16* %2, align 2, !dbg !5270
  ret i16 %3, !dbg !5271
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize readnone willreturn
define internal fastcc zeroext i1 @hal_uart_is_port_valid(i32 noundef %0) unnamed_addr #9 !dbg !5272 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !5276, metadata !DIExpression()), !dbg !5277
  %2 = icmp ult i32 %0, 2, !dbg !5278
  ret i1 %2, !dbg !5279
}

; Function Attrs: noinline nounwind optsize
define dso_local i32 @hal_uart_deinit(i32 noundef %0) local_unnamed_addr #0 !dbg !5280 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !5284, metadata !DIExpression()), !dbg !5285
  %2 = tail call fastcc zeroext i1 @hal_uart_is_port_valid(i32 noundef %0) #14, !dbg !5286
  br i1 %2, label %3, label %10, !dbg !5288

3:                                                ; preds = %1
  %4 = getelementptr inbounds [2 x %struct.uart_context_t], [2 x %struct.uart_context_t]* @g_uart_context_table, i32 0, i32 %0, i32 0, !dbg !5289
  %5 = load i8, i8* %4, align 4, !dbg !5289, !range !3665
  %6 = icmp eq i8 %5, 0, !dbg !5291
  br i1 %6, label %10, label %7, !dbg !5292

7:                                                ; preds = %3
  %8 = tail call i8* @memset(i8* noundef nonnull %4, i32 noundef 0, i32 noundef 64) #13, !dbg !5293
  %9 = tail call fastcc i32 @hal_uart_translate_port(i32 noundef %0) #14, !dbg !5294, !range !5158
  tail call void @uart_query_empty(i32 noundef %9) #13, !dbg !5295
  tail call void @uart_reset_default_value(i32 noundef %9) #13, !dbg !5296
  br label %10, !dbg !5297

10:                                               ; preds = %3, %1, %7
  %11 = phi i32 [ 0, %7 ], [ -4, %1 ], [ -2, %3 ], !dbg !5285
  ret i32 %11, !dbg !5298
}

; Function Attrs: noinline nounwind optsize
define dso_local void @hal_uart_put_char(i32 noundef %0, i8 noundef zeroext %1) local_unnamed_addr #0 !dbg !5299 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !5303, metadata !DIExpression()), !dbg !5306
  call void @llvm.dbg.value(metadata i8 %1, metadata !5304, metadata !DIExpression()), !dbg !5306
  %3 = icmp eq i32 %0, 0, !dbg !5307
  %4 = icmp eq i32 %0, 1, !dbg !5307
  %5 = select i1 %4, i32 1, i32 2, !dbg !5307
  %6 = select i1 %3, i32 0, i32 %5, !dbg !5307
  call void @llvm.dbg.value(metadata i32 %6, metadata !5305, metadata !DIExpression()), !dbg !5306
  %7 = icmp eq i32 %6, 2, !dbg !5308
  br i1 %7, label %9, label %8, !dbg !5310

8:                                                ; preds = %2
  tail call void @uart_output_char(i32 noundef %6, i8 noundef zeroext %1) #13, !dbg !5311
  br label %9, !dbg !5313

9:                                                ; preds = %2, %8
  ret void, !dbg !5314
}

; Function Attrs: noinline nounwind optsize
define dso_local i32 @hal_uart_send_polling(i32 noundef %0, i8* noundef readonly %1, i32 noundef %2) local_unnamed_addr #0 !dbg !5315 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !5319, metadata !DIExpression()), !dbg !5324
  call void @llvm.dbg.value(metadata i8* %1, metadata !5320, metadata !DIExpression()), !dbg !5324
  call void @llvm.dbg.value(metadata i32 %2, metadata !5321, metadata !DIExpression()), !dbg !5324
  %4 = icmp eq i32 %0, 0, !dbg !5325
  %5 = icmp eq i32 %0, 1, !dbg !5325
  %6 = select i1 %5, i32 1, i32 2, !dbg !5325
  %7 = select i1 %4, i32 0, i32 %6, !dbg !5325
  call void @llvm.dbg.value(metadata i32 %7, metadata !5322, metadata !DIExpression()), !dbg !5324
  %8 = icmp eq i8* %1, null, !dbg !5326
  %9 = icmp ugt i32 %7, 1
  %10 = or i1 %8, %9, !dbg !5328
  %11 = icmp eq i32 %2, 0
  %12 = or i1 %10, %11, !dbg !5328
  call void @llvm.dbg.value(metadata i32 0, metadata !5323, metadata !DIExpression()), !dbg !5324
  br i1 %12, label %19, label %13, !dbg !5328

13:                                               ; preds = %3, %13
  %14 = phi i32 [ %17, %13 ], [ 0, %3 ]
  call void @llvm.dbg.value(metadata i32 %14, metadata !5323, metadata !DIExpression()), !dbg !5324
  %15 = getelementptr inbounds i8, i8* %1, i32 %14, !dbg !5329
  %16 = load i8, i8* %15, align 1, !dbg !5329
  tail call void @uart_output_char(i32 noundef %7, i8 noundef zeroext %16) #13, !dbg !5335
  %17 = add nuw i32 %14, 1, !dbg !5336
  call void @llvm.dbg.value(metadata i32 %17, metadata !5323, metadata !DIExpression()), !dbg !5324
  %18 = icmp eq i32 %17, %2, !dbg !5337
  br i1 %18, label %19, label %13, !dbg !5338, !llvm.loop !5339

19:                                               ; preds = %13, %3
  %20 = phi i32 [ 0, %3 ], [ %2, %13 ], !dbg !5324
  ret i32 %20, !dbg !5341
}

; Function Attrs: noinline nounwind optsize
define dso_local i32 @hal_uart_send_dma(i32 noundef %0, i8* noundef %1, i32 noundef %2) local_unnamed_addr #0 !dbg !5342 {
  %4 = alloca i32, align 4
  call void @llvm.dbg.value(metadata i32 %0, metadata !5344, metadata !DIExpression()), !dbg !5351
  call void @llvm.dbg.value(metadata i8* %1, metadata !5345, metadata !DIExpression()), !dbg !5351
  call void @llvm.dbg.value(metadata i32 %2, metadata !5346, metadata !DIExpression()), !dbg !5351
  %5 = bitcast i32* %4 to i8*, !dbg !5352
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %5) #15, !dbg !5352
  %6 = tail call fastcc zeroext i1 @hal_uart_is_port_valid(i32 noundef %0) #14, !dbg !5353
  br i1 %6, label %7, label %24, !dbg !5355

7:                                                ; preds = %3
  %8 = icmp eq i8* %1, null, !dbg !5356
  %9 = icmp eq i32 %2, 0
  %10 = or i1 %8, %9, !dbg !5358
  br i1 %10, label %24, label %11, !dbg !5358

11:                                               ; preds = %7
  %12 = getelementptr inbounds [2 x %struct.uart_context_t], [2 x %struct.uart_context_t]* @g_uart_context_table, i32 0, i32 %0, i32 4, !dbg !5359
  %13 = load i8, i8* %12, align 4, !dbg !5359, !range !3665
  %14 = icmp eq i8 %13, 0, !dbg !5359
  br i1 %14, label %24, label %15, !dbg !5361

15:                                               ; preds = %11
  %16 = tail call fastcc i32 @hal_uart_translate_port(i32 noundef %0) #14, !dbg !5362, !range !5158
  call void @llvm.dbg.value(metadata i32* %4, metadata !5347, metadata !DIExpression(DW_OP_deref)), !dbg !5351
  call void @halUART_Get_VFIFO_Length(i32 noundef %16, i32 noundef 0, i32* noundef nonnull %4) #13, !dbg !5363
  %17 = load i32, i32* %4, align 4, !dbg !5364
  call void @llvm.dbg.value(metadata i32 %17, metadata !5347, metadata !DIExpression()), !dbg !5351
  %18 = icmp ult i32 %17, %2, !dbg !5366
  %19 = select i1 %18, i32 %17, i32 %2
  call void @llvm.dbg.value(metadata i32 %19, metadata !5348, metadata !DIExpression()), !dbg !5351
  call void @halUART_Write_VFIFO_Data(i32 noundef %16, i8* noundef nonnull %1, i32 noundef %19) #13, !dbg !5367
  %20 = load i32, i32* %4, align 4, !dbg !5368
  call void @llvm.dbg.value(metadata i32 %20, metadata !5347, metadata !DIExpression()), !dbg !5351
  %21 = icmp eq i32 %19, %20, !dbg !5370
  br i1 %21, label %22, label %24, !dbg !5371

22:                                               ; preds = %15
  %23 = call fastcc i32 @uart_channel_to_dma_channel(i32 noundef %16, i1 noundef zeroext false) #14, !dbg !5372, !range !5374
  call void @llvm.dbg.value(metadata i32 %23, metadata !5349, metadata !DIExpression()), !dbg !5351
  call void @DMA_Vfifo_enable_interrupt(i32 noundef %23) #13, !dbg !5375
  br label %24, !dbg !5376

24:                                               ; preds = %15, %22, %11, %7, %3
  %25 = phi i32 [ 0, %3 ], [ 0, %7 ], [ 0, %11 ], [ %19, %22 ], [ %19, %15 ], !dbg !5351
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %5) #15, !dbg !5377
  ret i32 %25, !dbg !5377
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize readnone willreturn
define internal fastcc i32 @uart_channel_to_dma_channel(i32 noundef %0, i1 noundef zeroext %1) unnamed_addr #9 !dbg !5378 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !5382, metadata !DIExpression()), !dbg !5385
  call void @llvm.dbg.value(metadata i1 %1, metadata !5383, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !5385
  %3 = icmp eq i32 %0, 0, !dbg !5386
  %4 = select i1 %1, i32 15, i32 14, !dbg !5388
  %5 = select i1 %1, i32 17, i32 16, !dbg !5388
  %6 = select i1 %3, i32 %4, i32 %5, !dbg !5388
  call void @llvm.dbg.value(metadata i32 %6, metadata !5384, metadata !DIExpression()), !dbg !5385
  ret i32 %6, !dbg !5389
}

; Function Attrs: optsize
declare dso_local void @DMA_Vfifo_enable_interrupt(i32 noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize
define dso_local zeroext i8 @hal_uart_get_char(i32 noundef %0) local_unnamed_addr #0 !dbg !5390 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !5394, metadata !DIExpression()), !dbg !5396
  %2 = icmp eq i32 %0, 0, !dbg !5397
  %3 = icmp eq i32 %0, 1, !dbg !5397
  %4 = select i1 %3, i32 1, i32 2, !dbg !5397
  %5 = select i1 %2, i32 0, i32 %4, !dbg !5397
  call void @llvm.dbg.value(metadata i32 %5, metadata !5395, metadata !DIExpression()), !dbg !5396
  %6 = icmp ult i32 %5, 2, !dbg !5398
  br i1 %6, label %7, label %9, !dbg !5400

7:                                                ; preds = %1
  %8 = tail call zeroext i8 @uart_input_char(i32 noundef %5) #13, !dbg !5401
  br label %9, !dbg !5403

9:                                                ; preds = %1, %7
  %10 = phi i8 [ %8, %7 ], [ 0, %1 ], !dbg !5404
  ret i8 %10, !dbg !5405
}

; Function Attrs: noinline nounwind optsize
define dso_local i32 @hal_uart_get_char_unblocking(i32 noundef %0) local_unnamed_addr #0 !dbg !5406 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !5410, metadata !DIExpression()), !dbg !5412
  %2 = icmp eq i32 %0, 0, !dbg !5413
  %3 = icmp eq i32 %0, 1, !dbg !5413
  %4 = select i1 %3, i32 1, i32 2, !dbg !5413
  %5 = select i1 %2, i32 0, i32 %4, !dbg !5413
  call void @llvm.dbg.value(metadata i32 %5, metadata !5411, metadata !DIExpression()), !dbg !5412
  %6 = icmp ult i32 %5, 2, !dbg !5414
  br i1 %6, label %7, label %9, !dbg !5416

7:                                                ; preds = %1
  %8 = tail call i32 @uart_input_char_unblocking(i32 noundef %5) #13, !dbg !5417
  br label %9, !dbg !5419

9:                                                ; preds = %1, %7
  %10 = phi i32 [ %8, %7 ], [ 0, %1 ], !dbg !5420
  ret i32 %10, !dbg !5421
}

; Function Attrs: noinline nounwind optsize
define dso_local i32 @hal_uart_receive_polling(i32 noundef %0, i8* noundef writeonly %1, i32 noundef %2) local_unnamed_addr #0 !dbg !5422 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !5426, metadata !DIExpression()), !dbg !5431
  call void @llvm.dbg.value(metadata i8* %1, metadata !5427, metadata !DIExpression()), !dbg !5431
  call void @llvm.dbg.value(metadata i32 %2, metadata !5428, metadata !DIExpression()), !dbg !5431
  %4 = icmp eq i32 %0, 0, !dbg !5432
  %5 = icmp eq i32 %0, 1, !dbg !5432
  %6 = select i1 %5, i32 1, i32 2, !dbg !5432
  %7 = select i1 %4, i32 0, i32 %6, !dbg !5432
  call void @llvm.dbg.value(metadata i32 %7, metadata !5429, metadata !DIExpression()), !dbg !5431
  %8 = icmp eq i8* %1, null, !dbg !5433
  %9 = icmp ugt i32 %7, 1
  %10 = or i1 %8, %9, !dbg !5435
  %11 = icmp eq i32 %2, 0
  %12 = or i1 %10, %11, !dbg !5435
  call void @llvm.dbg.value(metadata i32 0, metadata !5430, metadata !DIExpression()), !dbg !5431
  br i1 %12, label %19, label %13, !dbg !5435

13:                                               ; preds = %3, %13
  %14 = phi i32 [ %17, %13 ], [ 0, %3 ]
  call void @llvm.dbg.value(metadata i32 %14, metadata !5430, metadata !DIExpression()), !dbg !5431
  %15 = tail call zeroext i8 @uart_input_char(i32 noundef %7) #13, !dbg !5436
  %16 = getelementptr inbounds i8, i8* %1, i32 %14, !dbg !5442
  store i8 %15, i8* %16, align 1, !dbg !5443
  %17 = add nuw i32 %14, 1, !dbg !5444
  call void @llvm.dbg.value(metadata i32 %17, metadata !5430, metadata !DIExpression()), !dbg !5431
  %18 = icmp eq i32 %17, %2, !dbg !5445
  br i1 %18, label %19, label %13, !dbg !5446, !llvm.loop !5447

19:                                               ; preds = %13, %3
  %20 = phi i32 [ 0, %3 ], [ %2, %13 ], !dbg !5431
  ret i32 %20, !dbg !5449
}

; Function Attrs: noinline nounwind optsize
define dso_local i32 @hal_uart_receive_dma(i32 noundef %0, i8* noundef %1, i32 noundef %2) local_unnamed_addr #0 !dbg !5450 {
  %4 = alloca i32, align 4
  call void @llvm.dbg.value(metadata i32 %0, metadata !5452, metadata !DIExpression()), !dbg !5458
  call void @llvm.dbg.value(metadata i8* %1, metadata !5453, metadata !DIExpression()), !dbg !5458
  call void @llvm.dbg.value(metadata i32 %2, metadata !5454, metadata !DIExpression()), !dbg !5458
  %5 = bitcast i32* %4 to i8*, !dbg !5459
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %5) #15, !dbg !5459
  %6 = tail call fastcc zeroext i1 @hal_uart_is_port_valid(i32 noundef %0) #14, !dbg !5460
  br i1 %6, label %7, label %20, !dbg !5462

7:                                                ; preds = %3
  %8 = icmp eq i8* %1, null, !dbg !5463
  %9 = icmp eq i32 %2, 0
  %10 = or i1 %8, %9, !dbg !5465
  br i1 %10, label %20, label %11, !dbg !5465

11:                                               ; preds = %7
  %12 = tail call fastcc i32 @hal_uart_translate_port(i32 noundef %0) #14, !dbg !5466, !range !5158
  call void @llvm.dbg.value(metadata i32* %4, metadata !5455, metadata !DIExpression(DW_OP_deref)), !dbg !5458
  call void @halUART_Get_VFIFO_Length(i32 noundef %12, i32 noundef 1, i32* noundef nonnull %4) #13, !dbg !5467
  %13 = load i32, i32* %4, align 4, !dbg !5468
  call void @llvm.dbg.value(metadata i32 %13, metadata !5455, metadata !DIExpression()), !dbg !5458
  %14 = icmp ult i32 %13, %2, !dbg !5470
  %15 = select i1 %14, i32 %13, i32 %2
  call void @llvm.dbg.value(metadata i32 %15, metadata !5456, metadata !DIExpression()), !dbg !5458
  call void @halUART_Read_VFIFO_Data(i32 noundef %12, i8* noundef nonnull %1, i32 noundef %15) #13, !dbg !5471
  %16 = load i32, i32* %4, align 4, !dbg !5472
  call void @llvm.dbg.value(metadata i32 %16, metadata !5455, metadata !DIExpression()), !dbg !5458
  %17 = icmp eq i32 %15, %16, !dbg !5474
  br i1 %17, label %18, label %20, !dbg !5475

18:                                               ; preds = %11
  %19 = call fastcc i32 @uart_channel_to_dma_channel(i32 noundef %12, i1 noundef zeroext true) #14, !dbg !5476, !range !5374
  call void @llvm.dbg.value(metadata i32 %19, metadata !5457, metadata !DIExpression()), !dbg !5458
  call void @DMA_Vfifo_enable_interrupt(i32 noundef %19) #13, !dbg !5478
  br label %20, !dbg !5479

20:                                               ; preds = %11, %18, %7, %3
  %21 = phi i32 [ 0, %3 ], [ 0, %7 ], [ %15, %18 ], [ %15, %11 ], !dbg !5458
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %5) #15, !dbg !5480
  ret i32 %21, !dbg !5480
}

; Function Attrs: noinline nounwind optsize
define dso_local i32 @hal_uart_get_available_send_space(i32 noundef %0) local_unnamed_addr #0 !dbg !5481 {
  %2 = alloca i32, align 4
  call void @llvm.dbg.value(metadata i32 %0, metadata !5483, metadata !DIExpression()), !dbg !5485
  %3 = bitcast i32* %2 to i8*, !dbg !5486
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %3) #15, !dbg !5486
  call void @llvm.dbg.value(metadata i32 0, metadata !5484, metadata !DIExpression()), !dbg !5485
  store i32 0, i32* %2, align 4, !dbg !5487
  %4 = tail call fastcc zeroext i1 @hal_uart_is_port_valid(i32 noundef %0) #14, !dbg !5488
  br i1 %4, label %5, label %8, !dbg !5490

5:                                                ; preds = %1
  %6 = tail call fastcc i32 @hal_uart_translate_port(i32 noundef %0) #14, !dbg !5491, !range !5158
  call void @llvm.dbg.value(metadata i32* %2, metadata !5484, metadata !DIExpression(DW_OP_deref)), !dbg !5485
  call void @halUART_Get_VFIFO_Length(i32 noundef %6, i32 noundef 0, i32* noundef nonnull %2) #13, !dbg !5492
  %7 = load i32, i32* %2, align 4, !dbg !5493
  call void @llvm.dbg.value(metadata i32 %7, metadata !5484, metadata !DIExpression()), !dbg !5485
  br label %8, !dbg !5494

8:                                                ; preds = %1, %5
  %9 = phi i32 [ %7, %5 ], [ 0, %1 ], !dbg !5485
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %3) #15, !dbg !5495
  ret i32 %9, !dbg !5495
}

; Function Attrs: noinline nounwind optsize
define dso_local i32 @hal_uart_get_available_receive_bytes(i32 noundef %0) local_unnamed_addr #0 !dbg !5496 {
  %2 = alloca i32, align 4
  call void @llvm.dbg.value(metadata i32 %0, metadata !5498, metadata !DIExpression()), !dbg !5500
  %3 = bitcast i32* %2 to i8*, !dbg !5501
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %3) #15, !dbg !5501
  call void @llvm.dbg.value(metadata i32 0, metadata !5499, metadata !DIExpression()), !dbg !5500
  store i32 0, i32* %2, align 4, !dbg !5502
  %4 = tail call fastcc zeroext i1 @hal_uart_is_port_valid(i32 noundef %0) #14, !dbg !5503
  br i1 %4, label %5, label %8, !dbg !5505

5:                                                ; preds = %1
  %6 = tail call fastcc i32 @hal_uart_translate_port(i32 noundef %0) #14, !dbg !5506, !range !5158
  call void @llvm.dbg.value(metadata i32* %2, metadata !5499, metadata !DIExpression(DW_OP_deref)), !dbg !5500
  call void @halUART_Get_VFIFO_Length(i32 noundef %6, i32 noundef 1, i32* noundef nonnull %2) #13, !dbg !5507
  %7 = load i32, i32* %2, align 4, !dbg !5508
  call void @llvm.dbg.value(metadata i32 %7, metadata !5499, metadata !DIExpression()), !dbg !5500
  br label %8, !dbg !5509

8:                                                ; preds = %1, %5
  %9 = phi i32 [ %7, %5 ], [ 0, %1 ], !dbg !5500
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %3) #15, !dbg !5510
  ret i32 %9, !dbg !5510
}

; Function Attrs: noinline nounwind optsize
define dso_local i32 @hal_uart_register_callback(i32 noundef %0, void (i32, i8*)* noundef %1, i8* noundef %2) local_unnamed_addr #0 !dbg !5511 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !5515, metadata !DIExpression()), !dbg !5519
  call void @llvm.dbg.value(metadata void (i32, i8*)* %1, metadata !5516, metadata !DIExpression()), !dbg !5519
  call void @llvm.dbg.value(metadata i8* %2, metadata !5517, metadata !DIExpression()), !dbg !5519
  %4 = tail call fastcc zeroext i1 @hal_uart_is_port_valid(i32 noundef %0) #14, !dbg !5520
  %5 = icmp ne void (i32, i8*)* %1, null
  %6 = and i1 %5, %4, !dbg !5522
  br i1 %6, label %7, label %18, !dbg !5522

7:                                                ; preds = %3
  %8 = getelementptr inbounds [2 x %struct.uart_context_t], [2 x %struct.uart_context_t]* @g_uart_context_table, i32 0, i32 %0, i32 3, i32 0, !dbg !5523
  store void (i32, i8*)* %1, void (i32, i8*)** %8, align 4, !dbg !5524
  %9 = getelementptr inbounds [2 x %struct.uart_context_t], [2 x %struct.uart_context_t]* @g_uart_context_table, i32 0, i32 %0, i32 3, i32 1, !dbg !5525
  store i8* %2, i8** %9, align 4, !dbg !5526
  %10 = getelementptr inbounds [2 x %struct.uart_context_t], [2 x %struct.uart_context_t]* @g_uart_context_table, i32 0, i32 %0, i32 2, !dbg !5527
  store i8 1, i8* %10, align 4, !dbg !5528
  %11 = tail call fastcc i32 @hal_uart_translate_port(i32 noundef %0) #14, !dbg !5529
  %12 = tail call fastcc void ()* @hal_uart_map_receive_callback(i32 noundef %0) #14, !dbg !5530
  tail call void @halUART_VDMA_Rx_Register_Callback(i32 noundef %11, void ()* noundef %12) #13, !dbg !5531
  tail call void @halUART_VDMA_Rx_Register_TO_Callback(i32 noundef %11, void ()* noundef %12) #13, !dbg !5532
  %13 = icmp eq i32 %11, 0, !dbg !5533
  br i1 %13, label %14, label %15, !dbg !5535

14:                                               ; preds = %7
  tail call void @DMA_Vfifo_Register_Callback(i32 noundef 14, void ()* noundef nonnull @hal_uart_send_callback0) #13, !dbg !5536
  br label %16, !dbg !5538

15:                                               ; preds = %7
  tail call void @DMA_Vfifo_Register_Callback(i32 noundef 16, void ()* noundef nonnull @hal_uart_send_callback1) #13, !dbg !5539
  br label %16

16:                                               ; preds = %15, %14
  %17 = tail call fastcc i32 @uart_channel_to_dma_channel(i32 noundef %11, i1 noundef zeroext false) #14, !dbg !5541, !range !5374
  call void @llvm.dbg.value(metadata i32 %17, metadata !5518, metadata !DIExpression()), !dbg !5519
  tail call void @DMA_Vfifo_enable_interrupt(i32 noundef %17) #13, !dbg !5542
  br label %18, !dbg !5543

18:                                               ; preds = %3, %16
  %19 = phi i32 [ 0, %16 ], [ -4, %3 ], !dbg !5519
  ret i32 %19, !dbg !5544
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize readnone willreturn
define internal fastcc void ()* @hal_uart_map_receive_callback(i32 noundef %0) unnamed_addr #9 !dbg !520 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !526, metadata !DIExpression()), !dbg !5545
  %2 = getelementptr inbounds [2 x void ()*], [2 x void ()*]* @hal_uart_map_receive_callback.func_tbl, i32 0, i32 %0, !dbg !5546
  %3 = load void ()*, void ()** %2, align 4, !dbg !5546
  ret void ()* %3, !dbg !5547
}

; Function Attrs: noinline nounwind optsize
define internal void @hal_uart_send_callback0() #0 !dbg !5548 {
  %1 = load i8, i8* getelementptr inbounds ([2 x %struct.uart_context_t], [2 x %struct.uart_context_t]* @g_uart_context_table, i32 0, i32 0, i32 2), align 4, !dbg !5554, !range !3665
  %2 = icmp eq i8 %1, 0, !dbg !5554
  br i1 %2, label %8, label %3, !dbg !5555

3:                                                ; preds = %0
  %4 = load void (i32, i8*)*, void (i32, i8*)** getelementptr inbounds ([2 x %struct.uart_context_t], [2 x %struct.uart_context_t]* @g_uart_context_table, i32 0, i32 0, i32 3, i32 0), align 4, !dbg !5556
  %5 = icmp eq void (i32, i8*)* %4, null, !dbg !5558
  br i1 %5, label %8, label %6, !dbg !5559

6:                                                ; preds = %3
  %7 = load i8*, i8** getelementptr inbounds ([2 x %struct.uart_context_t], [2 x %struct.uart_context_t]* @g_uart_context_table, i32 0, i32 0, i32 3, i32 1), align 4, !dbg !5560
  tail call void %4(i32 noundef 2, i8* noundef %7) #13, !dbg !5562
  br label %8, !dbg !5563

8:                                                ; preds = %3, %6, %0
  %9 = tail call fastcc i32 @hal_uart_translate_port(i32 noundef 0) #14, !dbg !5564, !range !5158
  tail call fastcc void @hal_uart_check_irq_disable(i32 noundef %9, i1 noundef zeroext false) #14, !dbg !5565
  ret void, !dbg !5566
}

; Function Attrs: noinline nounwind optsize
define internal void @hal_uart_send_callback1() #0 !dbg !5567 {
  %1 = load i8, i8* getelementptr inbounds ([2 x %struct.uart_context_t], [2 x %struct.uart_context_t]* @g_uart_context_table, i32 0, i32 1, i32 2), align 4, !dbg !5572, !range !3665
  %2 = icmp eq i8 %1, 0, !dbg !5572
  br i1 %2, label %8, label %3, !dbg !5573

3:                                                ; preds = %0
  %4 = load void (i32, i8*)*, void (i32, i8*)** getelementptr inbounds ([2 x %struct.uart_context_t], [2 x %struct.uart_context_t]* @g_uart_context_table, i32 0, i32 1, i32 3, i32 0), align 4, !dbg !5574
  %5 = icmp eq void (i32, i8*)* %4, null, !dbg !5576
  br i1 %5, label %8, label %6, !dbg !5577

6:                                                ; preds = %3
  %7 = load i8*, i8** getelementptr inbounds ([2 x %struct.uart_context_t], [2 x %struct.uart_context_t]* @g_uart_context_table, i32 0, i32 1, i32 3, i32 1), align 4, !dbg !5578
  tail call void %4(i32 noundef 2, i8* noundef %7) #13, !dbg !5580
  br label %8, !dbg !5581

8:                                                ; preds = %3, %6, %0
  %9 = tail call fastcc i32 @hal_uart_translate_port(i32 noundef 1) #14, !dbg !5582, !range !5158
  tail call fastcc void @hal_uart_check_irq_disable(i32 noundef %9, i1 noundef zeroext false) #14, !dbg !5583
  ret void, !dbg !5584
}

; Function Attrs: noinline nounwind optsize
define internal fastcc void @hal_uart_check_irq_disable(i32 noundef %0, i1 noundef zeroext %1) unnamed_addr #0 !dbg !5585 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  call void @llvm.dbg.value(metadata i32 %0, metadata !5589, metadata !DIExpression()), !dbg !5596
  call void @llvm.dbg.value(metadata i1 %1, metadata !5590, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !5596
  %5 = bitcast i32* %3 to i8*, !dbg !5597
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %5) #15, !dbg !5597
  %6 = bitcast i32* %4 to i8*, !dbg !5597
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %6) #15, !dbg !5597
  call void @llvm.dbg.value(metadata !DIArgList([2 x %struct.uart_context_t]* @g_uart_context_table, i32 %0), metadata !5593, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_constu, 64, DW_OP_mul, DW_OP_plus, DW_OP_plus_uconst, 36, DW_OP_stack_value)), !dbg !5596
  br i1 %1, label %7, label %12, !dbg !5598

7:                                                ; preds = %2
  call void @llvm.dbg.value(metadata !DIArgList([2 x %struct.uart_context_t]* @g_uart_context_table, i32 %0), metadata !5593, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_constu, 64, DW_OP_mul, DW_OP_plus, DW_OP_plus_uconst, 36, DW_OP_stack_value)), !dbg !5596
  call void @llvm.dbg.value(metadata i32* %3, metadata !5591, metadata !DIExpression(DW_OP_deref)), !dbg !5596
  call void @halUART_Get_VFIFO_Length(i32 noundef %0, i32 noundef 1, i32* noundef nonnull %3) #13, !dbg !5599
  %8 = load i32, i32* %3, align 4, !dbg !5602
  call void @llvm.dbg.value(metadata i32 %8, metadata !5591, metadata !DIExpression()), !dbg !5596
  %9 = getelementptr inbounds [2 x %struct.uart_context_t], [2 x %struct.uart_context_t]* @g_uart_context_table, i32 0, i32 %0, i32 5, i32 5, !dbg !5604
  %10 = load i32, i32* %9, align 4, !dbg !5604
  %11 = icmp ult i32 %8, %10, !dbg !5605
  br i1 %11, label %22, label %20, !dbg !5606

12:                                               ; preds = %2
  call void @llvm.dbg.value(metadata i32* %4, metadata !5592, metadata !DIExpression(DW_OP_deref)), !dbg !5596
  call void @halUART_Get_VFIFO_Length(i32 noundef %0, i32 noundef 0, i32* noundef nonnull %4) #13, !dbg !5607
  %13 = load i32, i32* %4, align 4, !dbg !5609
  call void @llvm.dbg.value(metadata i32 %13, metadata !5592, metadata !DIExpression()), !dbg !5596
  %14 = getelementptr inbounds [2 x %struct.uart_context_t], [2 x %struct.uart_context_t]* @g_uart_context_table, i32 0, i32 %0, i32 5, i32 1, !dbg !5611
  %15 = load i32, i32* %14, align 4, !dbg !5611
  %16 = getelementptr inbounds [2 x %struct.uart_context_t], [2 x %struct.uart_context_t]* @g_uart_context_table, i32 0, i32 %0, i32 5, i32 2, !dbg !5612
  %17 = load i32, i32* %16, align 4, !dbg !5612
  %18 = sub i32 %15, %17, !dbg !5613
  %19 = icmp ult i32 %13, %18, !dbg !5614
  br i1 %19, label %22, label %20, !dbg !5615

20:                                               ; preds = %12, %7
  %21 = call fastcc i32 @uart_channel_to_dma_channel(i32 noundef %0, i1 noundef zeroext %1) #14, !dbg !5616, !range !5374
  call void @DMA_Vfifo_disable_interrupt(i32 noundef %21) #13, !dbg !5616
  br label %22, !dbg !5617

22:                                               ; preds = %20, %12, %7
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %6) #15, !dbg !5617
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %5) #15, !dbg !5617
  ret void, !dbg !5617
}

; Function Attrs: optsize
declare dso_local void @DMA_Vfifo_disable_interrupt(i32 noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize
define internal void @hal_uart_receive_callback0() #0 !dbg !5618 {
  %1 = load i8, i8* getelementptr inbounds ([2 x %struct.uart_context_t], [2 x %struct.uart_context_t]* @g_uart_context_table, i32 0, i32 0, i32 2), align 4, !dbg !5623, !range !3665
  %2 = icmp eq i8 %1, 0, !dbg !5623
  br i1 %2, label %11, label %3, !dbg !5624

3:                                                ; preds = %0
  %4 = tail call i32 @hal_uart_get_available_receive_bytes(i32 noundef 0) #14, !dbg !5625
  %5 = icmp eq i32 %4, 0, !dbg !5626
  br i1 %5, label %11, label %6, !dbg !5627

6:                                                ; preds = %3
  %7 = load void (i32, i8*)*, void (i32, i8*)** getelementptr inbounds ([2 x %struct.uart_context_t], [2 x %struct.uart_context_t]* @g_uart_context_table, i32 0, i32 0, i32 3, i32 0), align 4, !dbg !5628
  %8 = icmp eq void (i32, i8*)* %7, null, !dbg !5630
  br i1 %8, label %11, label %9, !dbg !5631

9:                                                ; preds = %6
  %10 = load i8*, i8** getelementptr inbounds ([2 x %struct.uart_context_t], [2 x %struct.uart_context_t]* @g_uart_context_table, i32 0, i32 0, i32 3, i32 1), align 4, !dbg !5632
  tail call void %7(i32 noundef 1, i8* noundef %10) #13, !dbg !5634
  br label %11, !dbg !5635

11:                                               ; preds = %6, %9, %3, %0
  %12 = tail call fastcc i32 @hal_uart_translate_port(i32 noundef 0) #14, !dbg !5636, !range !5158
  tail call fastcc void @hal_uart_check_irq_disable(i32 noundef %12, i1 noundef zeroext true) #14, !dbg !5637
  ret void, !dbg !5638
}

; Function Attrs: noinline nounwind optsize
define internal void @hal_uart_receive_callback1() #0 !dbg !5639 {
  %1 = load i8, i8* getelementptr inbounds ([2 x %struct.uart_context_t], [2 x %struct.uart_context_t]* @g_uart_context_table, i32 0, i32 1, i32 2), align 4, !dbg !5644, !range !3665
  %2 = icmp eq i8 %1, 0, !dbg !5644
  br i1 %2, label %11, label %3, !dbg !5645

3:                                                ; preds = %0
  %4 = tail call i32 @hal_uart_get_available_receive_bytes(i32 noundef 1) #14, !dbg !5646
  %5 = icmp eq i32 %4, 0, !dbg !5647
  br i1 %5, label %11, label %6, !dbg !5648

6:                                                ; preds = %3
  %7 = load void (i32, i8*)*, void (i32, i8*)** getelementptr inbounds ([2 x %struct.uart_context_t], [2 x %struct.uart_context_t]* @g_uart_context_table, i32 0, i32 1, i32 3, i32 0), align 4, !dbg !5649
  %8 = icmp eq void (i32, i8*)* %7, null, !dbg !5651
  br i1 %8, label %11, label %9, !dbg !5652

9:                                                ; preds = %6
  %10 = load i8*, i8** getelementptr inbounds ([2 x %struct.uart_context_t], [2 x %struct.uart_context_t]* @g_uart_context_table, i32 0, i32 1, i32 3, i32 1), align 4, !dbg !5653
  tail call void %7(i32 noundef 1, i8* noundef %10) #13, !dbg !5655
  br label %11, !dbg !5656

11:                                               ; preds = %6, %9, %3, %0
  %12 = tail call fastcc i32 @hal_uart_translate_port(i32 noundef 1) #14, !dbg !5657, !range !5158
  tail call fastcc void @hal_uart_check_irq_disable(i32 noundef %12, i1 noundef zeroext true) #14, !dbg !5658
  ret void, !dbg !5659
}

; Function Attrs: noinline nounwind optsize
define dso_local i32 @hal_uart_set_baudrate(i32 noundef %0, i32 noundef %1) local_unnamed_addr #0 !dbg !5660 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !5664, metadata !DIExpression()), !dbg !5666
  call void @llvm.dbg.value(metadata i32 %1, metadata !5665, metadata !DIExpression()), !dbg !5666
  %3 = tail call fastcc zeroext i1 @hal_uart_is_port_valid(i32 noundef %0) #14, !dbg !5667
  %4 = icmp ult i32 %1, 13
  %5 = and i1 %4, %3, !dbg !5669
  br i1 %5, label %6, label %10, !dbg !5669

6:                                                ; preds = %2
  %7 = getelementptr inbounds [2 x %struct.uart_context_t], [2 x %struct.uart_context_t]* @g_uart_context_table, i32 0, i32 %0, i32 1, !dbg !5670
  %8 = getelementptr inbounds %struct.hal_uart_config_t, %struct.hal_uart_config_t* %7, i32 0, i32 0, !dbg !5671
  store i32 %1, i32* %8, align 4, !dbg !5672
  %9 = tail call i32 @hal_uart_set_format(i32 noundef %0, %struct.hal_uart_config_t* noundef nonnull %7) #14, !dbg !5673
  br label %10, !dbg !5674

10:                                               ; preds = %2, %6
  %11 = phi i32 [ %9, %6 ], [ -4, %2 ], !dbg !5666
  ret i32 %11, !dbg !5675
}

; Function Attrs: noinline nounwind optsize
define dso_local i32 @hal_uart_set_dma(i32 noundef %0, %struct.hal_uart_dma_config_t* noundef %1) local_unnamed_addr #0 !dbg !5676 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !5682, metadata !DIExpression()), !dbg !5684
  call void @llvm.dbg.value(metadata %struct.hal_uart_dma_config_t* %1, metadata !5683, metadata !DIExpression()), !dbg !5684
  %3 = tail call fastcc zeroext i1 @hal_uart_is_port_valid(i32 noundef %0) #14, !dbg !5685
  br i1 %3, label %4, label %28, !dbg !5687

4:                                                ; preds = %2
  %5 = tail call fastcc zeroext i1 @hal_uart_is_dma_config_valid(%struct.hal_uart_dma_config_t* noundef %1) #14, !dbg !5688
  br i1 %5, label %6, label %28, !dbg !5690

6:                                                ; preds = %4
  %7 = getelementptr inbounds [2 x %struct.uart_context_t], [2 x %struct.uart_context_t]* @g_uart_context_table, i32 0, i32 %0, i32 4, !dbg !5691
  store i8 1, i8* %7, align 4, !dbg !5692
  %8 = getelementptr inbounds [2 x %struct.uart_context_t], [2 x %struct.uart_context_t]* @g_uart_context_table, i32 0, i32 %0, i32 5, !dbg !5693
  %9 = bitcast %struct.hal_uart_dma_config_t* %8 to i8*, !dbg !5694
  %10 = bitcast %struct.hal_uart_dma_config_t* %1 to i8*, !dbg !5695
  %11 = tail call i8* @memcpy(i8* noundef nonnull %9, i8* noundef %10, i32 noundef 28) #13, !dbg !5696
  tail call void @DMA_Init() #13, !dbg !5697
  tail call void @DMA_Vfifo_init() #13, !dbg !5698
  %12 = tail call fastcc i32 @hal_uart_translate_port(i32 noundef %0) #14, !dbg !5699
  %13 = getelementptr inbounds %struct.hal_uart_dma_config_t, %struct.hal_uart_dma_config_t* %1, i32 0, i32 3, !dbg !5700
  %14 = load i8*, i8** %13, align 4, !dbg !5700
  %15 = getelementptr inbounds %struct.hal_uart_dma_config_t, %struct.hal_uart_dma_config_t* %1, i32 0, i32 4, !dbg !5701
  %16 = load i32, i32* %15, align 4, !dbg !5701
  %17 = getelementptr inbounds %struct.hal_uart_dma_config_t, %struct.hal_uart_dma_config_t* %1, i32 0, i32 6, !dbg !5702
  %18 = load i32, i32* %17, align 4, !dbg !5702
  %19 = getelementptr inbounds %struct.hal_uart_dma_config_t, %struct.hal_uart_dma_config_t* %1, i32 0, i32 5, !dbg !5703
  %20 = load i32, i32* %19, align 4, !dbg !5703
  %21 = tail call fastcc i32 @hal_uart_translate_timeout(i32 noundef 5000) #14, !dbg !5704
  tail call void @halUART_Rx_VFIFO_Initialize(i32 noundef %12, i8* noundef %14, i32 noundef %16, i32 noundef %18, i32 noundef %20, i32 noundef %21) #13, !dbg !5705
  %22 = getelementptr inbounds %struct.hal_uart_dma_config_t, %struct.hal_uart_dma_config_t* %1, i32 0, i32 0, !dbg !5706
  %23 = load i8*, i8** %22, align 4, !dbg !5706
  %24 = getelementptr inbounds %struct.hal_uart_dma_config_t, %struct.hal_uart_dma_config_t* %1, i32 0, i32 1, !dbg !5707
  %25 = load i32, i32* %24, align 4, !dbg !5707
  %26 = getelementptr inbounds %struct.hal_uart_dma_config_t, %struct.hal_uart_dma_config_t* %1, i32 0, i32 2, !dbg !5708
  %27 = load i32, i32* %26, align 4, !dbg !5708
  tail call void @halUART_Tx_VFIFO_Initialize(i32 noundef %12, i8* noundef %23, i32 noundef %25, i32 noundef %27) #13, !dbg !5709
  br label %28, !dbg !5710

28:                                               ; preds = %4, %2, %6
  %29 = phi i32 [ 0, %6 ], [ -4, %2 ], [ -4, %4 ], !dbg !5684
  ret i32 %29, !dbg !5711
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize readonly willreturn
define internal fastcc zeroext i1 @hal_uart_is_dma_config_valid(%struct.hal_uart_dma_config_t* noundef readonly %0) unnamed_addr #5 !dbg !5712 {
  call void @llvm.dbg.value(metadata %struct.hal_uart_dma_config_t* %0, metadata !5716, metadata !DIExpression()), !dbg !5717
  %2 = icmp eq %struct.hal_uart_dma_config_t* %0, null, !dbg !5718
  br i1 %2, label %27, label %3, !dbg !5720

3:                                                ; preds = %1
  %4 = getelementptr inbounds %struct.hal_uart_dma_config_t, %struct.hal_uart_dma_config_t* %0, i32 0, i32 3, !dbg !5721
  %5 = load i8*, i8** %4, align 4, !dbg !5721
  %6 = icmp eq i8* %5, null, !dbg !5723
  br i1 %6, label %27, label %7, !dbg !5724

7:                                                ; preds = %3
  %8 = getelementptr inbounds %struct.hal_uart_dma_config_t, %struct.hal_uart_dma_config_t* %0, i32 0, i32 4, !dbg !5725
  %9 = load i32, i32* %8, align 4, !dbg !5725
  %10 = getelementptr inbounds %struct.hal_uart_dma_config_t, %struct.hal_uart_dma_config_t* %0, i32 0, i32 5, !dbg !5727
  %11 = load i32, i32* %10, align 4, !dbg !5727
  %12 = icmp ult i32 %9, %11, !dbg !5728
  br i1 %12, label %27, label %13, !dbg !5729

13:                                               ; preds = %7
  %14 = getelementptr inbounds %struct.hal_uart_dma_config_t, %struct.hal_uart_dma_config_t* %0, i32 0, i32 6, !dbg !5730
  %15 = load i32, i32* %14, align 4, !dbg !5730
  %16 = icmp ult i32 %9, %15, !dbg !5732
  br i1 %16, label %27, label %17, !dbg !5733

17:                                               ; preds = %13
  %18 = getelementptr inbounds %struct.hal_uart_dma_config_t, %struct.hal_uart_dma_config_t* %0, i32 0, i32 0, !dbg !5734
  %19 = load i8*, i8** %18, align 4, !dbg !5734
  %20 = icmp eq i8* %19, null, !dbg !5736
  br i1 %20, label %27, label %21, !dbg !5737

21:                                               ; preds = %17
  %22 = getelementptr inbounds %struct.hal_uart_dma_config_t, %struct.hal_uart_dma_config_t* %0, i32 0, i32 1, !dbg !5738
  %23 = load i32, i32* %22, align 4, !dbg !5738
  %24 = getelementptr inbounds %struct.hal_uart_dma_config_t, %struct.hal_uart_dma_config_t* %0, i32 0, i32 2, !dbg !5740
  %25 = load i32, i32* %24, align 4, !dbg !5740
  %26 = icmp uge i32 %23, %25, !dbg !5741
  br label %27, !dbg !5742

27:                                               ; preds = %21, %17, %13, %7, %3, %1
  %28 = phi i1 [ false, %1 ], [ false, %3 ], [ false, %7 ], [ false, %13 ], [ false, %17 ], [ %26, %21 ], !dbg !5717
  ret i1 %28, !dbg !5743
}

; Function Attrs: optsize
declare dso_local void @DMA_Init() local_unnamed_addr #2

; Function Attrs: optsize
declare dso_local void @DMA_Vfifo_init() local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize
define internal fastcc i32 @hal_uart_translate_timeout(i32 noundef %0) unnamed_addr #0 !dbg !5744 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !5746, metadata !DIExpression()), !dbg !5748
  %2 = tail call i32 @top_mcu_freq_get() #13, !dbg !5749
  %3 = udiv i32 %2, 1000000, !dbg !5750
  call void @llvm.dbg.value(metadata i32 %3, metadata !5747, metadata !DIExpression()), !dbg !5748
  %4 = mul i32 %3, %0, !dbg !5751
  ret i32 %4, !dbg !5752
}

; Function Attrs: noinline nounwind optsize
define dso_local i32 @hal_uart_set_hardware_flowcontrol(i32 noundef %0) local_unnamed_addr #0 !dbg !5753 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !5755, metadata !DIExpression()), !dbg !5757
  %2 = tail call fastcc zeroext i1 @hal_uart_is_port_valid(i32 noundef %0) #14, !dbg !5758
  br i1 %2, label %3, label %8, !dbg !5760

3:                                                ; preds = %1
  %4 = icmp eq i32 %0, 0, !dbg !5761
  %5 = icmp eq i32 %0, 1, !dbg !5761
  %6 = select i1 %5, i32 1, i32 2, !dbg !5761
  %7 = select i1 %4, i32 0, i32 %6, !dbg !5761
  call void @llvm.dbg.value(metadata i32 %7, metadata !5756, metadata !DIExpression()), !dbg !5757
  tail call void @uart_set_hardware_flowcontrol(i32 noundef %7) #13, !dbg !5762
  br label %8, !dbg !5763

8:                                                ; preds = %1, %3
  %9 = phi i32 [ 0, %3 ], [ -4, %1 ], !dbg !5757
  ret i32 %9, !dbg !5764
}

; Function Attrs: noinline nounwind optsize
define dso_local i32 @hal_uart_set_software_flowcontrol(i32 noundef %0, i8 noundef zeroext %1, i8 noundef zeroext %2, i8 noundef zeroext %3) local_unnamed_addr #0 !dbg !5765 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !5769, metadata !DIExpression()), !dbg !5774
  call void @llvm.dbg.value(metadata i8 %1, metadata !5770, metadata !DIExpression()), !dbg !5774
  call void @llvm.dbg.value(metadata i8 %2, metadata !5771, metadata !DIExpression()), !dbg !5774
  call void @llvm.dbg.value(metadata i8 %3, metadata !5772, metadata !DIExpression()), !dbg !5774
  %5 = tail call fastcc zeroext i1 @hal_uart_is_port_valid(i32 noundef %0) #14, !dbg !5775
  br i1 %5, label %6, label %11, !dbg !5777

6:                                                ; preds = %4
  %7 = icmp eq i32 %0, 0, !dbg !5778
  %8 = icmp eq i32 %0, 1, !dbg !5778
  %9 = select i1 %8, i32 1, i32 2, !dbg !5778
  %10 = select i1 %7, i32 0, i32 %9, !dbg !5778
  call void @llvm.dbg.value(metadata i32 %10, metadata !5773, metadata !DIExpression()), !dbg !5774
  tail call void @uart_set_software_flowcontrol(i32 noundef %10, i8 noundef zeroext %1, i8 noundef zeroext %2, i8 noundef zeroext %3) #13, !dbg !5779
  br label %11, !dbg !5780

11:                                               ; preds = %4, %6
  %12 = phi i32 [ 0, %6 ], [ -4, %4 ], !dbg !5774
  ret i32 %12, !dbg !5781
}

; Function Attrs: noinline nounwind optsize
define dso_local i32 @hal_uart_disable_flowcontrol(i32 noundef %0) local_unnamed_addr #0 !dbg !5782 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !5784, metadata !DIExpression()), !dbg !5786
  %2 = tail call fastcc zeroext i1 @hal_uart_is_port_valid(i32 noundef %0) #14, !dbg !5787
  br i1 %2, label %3, label %8, !dbg !5789

3:                                                ; preds = %1
  %4 = icmp eq i32 %0, 0, !dbg !5790
  %5 = icmp eq i32 %0, 1, !dbg !5790
  %6 = select i1 %5, i32 1, i32 2, !dbg !5790
  %7 = select i1 %4, i32 0, i32 %6, !dbg !5790
  call void @llvm.dbg.value(metadata i32 %7, metadata !5785, metadata !DIExpression()), !dbg !5786
  tail call void @uart_disable_flowcontrol(i32 noundef %7) #13, !dbg !5791
  br label %8, !dbg !5792

8:                                                ; preds = %1, %3
  %9 = phi i32 [ 0, %3 ], [ -4, %1 ], !dbg !5786
  ret i32 %9, !dbg !5793
}

; Function Attrs: noinline nounwind optsize
define dso_local i32 @hal_uart_set_dma_timeout(i32 noundef %0, i32 noundef %1) local_unnamed_addr #0 !dbg !5794 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !5798, metadata !DIExpression()), !dbg !5800
  call void @llvm.dbg.value(metadata i32 %1, metadata !5799, metadata !DIExpression()), !dbg !5800
  %3 = tail call fastcc zeroext i1 @hal_uart_is_port_valid(i32 noundef %0) #14, !dbg !5801
  br i1 %3, label %4, label %8, !dbg !5803

4:                                                ; preds = %2
  %5 = icmp eq i32 %0, 0, !dbg !5804
  %6 = tail call fastcc i32 @hal_uart_translate_timeout(i32 noundef %1) #14, !dbg !5806
  %7 = select i1 %5, i32 15, i32 17
  tail call void @DMA_Vfifo_Set_timeout(i32 noundef %7, i32 noundef %6) #13, !dbg !5806
  br label %8, !dbg !5807

8:                                                ; preds = %4, %2
  %9 = phi i32 [ -4, %2 ], [ 0, %4 ], !dbg !5800
  ret i32 %9, !dbg !5807
}

; Function Attrs: optsize
declare dso_local void @DMA_Vfifo_Set_timeout(i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize
define dso_local i32 @__io_putchar(i32 noundef returned %0) local_unnamed_addr #0 !dbg !5808 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !5812, metadata !DIExpression()), !dbg !5813
  %2 = trunc i32 %0 to i8, !dbg !5814
  tail call void @hal_uart_put_char(i32 noundef 0, i8 noundef zeroext %2) #13, !dbg !5815
  ret i32 %0, !dbg !5816
}

; Function Attrs: noinline noreturn nounwind optsize
define dso_local i32 @main() local_unnamed_addr #12 !dbg !5817 {
  tail call fastcc void @SystemClock_Config() #14, !dbg !5818
  tail call fastcc void @prvSetupHardware() #14, !dbg !5819
  tail call void asm sideeffect "cpsie i", "~{memory}"() #15, !dbg !5820, !srcloc !5823
  tail call void asm sideeffect "cpsie f", "~{memory}"() #15, !dbg !5824, !srcloc !5827
  %1 = tail call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.28, i32 0, i32 0)) #13, !dbg !5828
  %2 = tail call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1.29, i32 0, i32 0)) #13, !dbg !5829
  %3 = tail call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.28, i32 0, i32 0)) #13, !dbg !5830
  tail call fastcc void @pwm_generate_waveform() #14, !dbg !5831
  br label %4, !dbg !5832

4:                                                ; preds = %4, %0
  br label %4, !dbg !5833, !llvm.loop !5836
}

; Function Attrs: noinline nounwind optsize
define internal fastcc void @SystemClock_Config() unnamed_addr #0 !dbg !5839 {
  tail call void @top_xtal_init() #13, !dbg !5840
  ret void, !dbg !5841
}

; Function Attrs: noinline nounwind optsize
define internal fastcc void @prvSetupHardware() unnamed_addr #0 !dbg !5842 {
  tail call fastcc void @plain_log_uart_init() #14, !dbg !5843
  ret void, !dbg !5844
}

; Function Attrs: noinline nounwind optsize
define internal fastcc void @pwm_generate_waveform() unnamed_addr #0 !dbg !5845 {
  %1 = alloca i32, align 4
  %2 = bitcast i32* %1 to i8*, !dbg !5849
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %2) #15, !dbg !5849
  call void @llvm.dbg.value(metadata i32 0, metadata !5847, metadata !DIExpression()), !dbg !5850
  store i32 0, i32* %1, align 4, !dbg !5851
  call void @llvm.dbg.value(metadata i32 0, metadata !5848, metadata !DIExpression()), !dbg !5850
  %3 = tail call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([29 x i8], [29 x i8]* @.str.2.30, i32 0, i32 0)) #13, !dbg !5852
  %4 = tail call i32 @hal_gpio_init(i32 noundef 0) #13, !dbg !5853
  %5 = tail call i32 @hal_pinmux_set_function(i32 noundef 0, i8 noundef zeroext 9) #13, !dbg !5854
  %6 = tail call i32 @hal_pwm_init(i32 noundef 0) #13, !dbg !5855
  call void @llvm.dbg.value(metadata i32* %1, metadata !5847, metadata !DIExpression(DW_OP_deref)), !dbg !5850
  %7 = call i32 @hal_pwm_set_frequency(i32 noundef 0, i32 noundef 200, i32* noundef nonnull %1) #13, !dbg !5856
  %8 = load i32, i32* %1, align 4, !dbg !5857
  call void @llvm.dbg.value(metadata i32 %8, metadata !5847, metadata !DIExpression()), !dbg !5850
  %9 = mul i32 %8, 50, !dbg !5858
  %10 = udiv i32 %9, 100, !dbg !5859
  call void @llvm.dbg.value(metadata i32 %10, metadata !5848, metadata !DIExpression()), !dbg !5850
  %11 = call i32 @hal_pwm_set_duty_cycle(i32 noundef 0, i32 noundef %10) #13, !dbg !5860
  %12 = call i32 @hal_pwm_start(i32 noundef 0) #13, !dbg !5861
  %13 = call i32 @hal_gpio_deinit(i32 noundef 0) #13, !dbg !5862
  %14 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([35 x i8], [35 x i8]* @.str.3.31, i32 0, i32 0)) #13, !dbg !5863
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %2) #15, !dbg !5864
  ret void, !dbg !5864
}

; Function Attrs: noinline nounwind optsize
define internal fastcc void @plain_log_uart_init() unnamed_addr #0 !dbg !5865 {
  %1 = alloca %struct.hal_uart_config_t, align 4
  %2 = bitcast %struct.hal_uart_config_t* %1 to i8*, !dbg !5875
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %2) #15, !dbg !5875
  call void @llvm.dbg.declare(metadata %struct.hal_uart_config_t* %1, metadata !5867, metadata !DIExpression()), !dbg !5876
  %3 = tail call i32 @hal_pinmux_set_function(i32 noundef 0, i8 noundef zeroext 7) #13, !dbg !5877
  %4 = tail call i32 @hal_pinmux_set_function(i32 noundef 1, i8 noundef zeroext 7) #13, !dbg !5878
  %5 = tail call i32 @hal_pinmux_set_function(i32 noundef 2, i8 noundef zeroext 7) #13, !dbg !5879
  %6 = tail call i32 @hal_pinmux_set_function(i32 noundef 3, i8 noundef zeroext 7) #13, !dbg !5880
  %7 = getelementptr inbounds %struct.hal_uart_config_t, %struct.hal_uart_config_t* %1, i32 0, i32 0, !dbg !5881
  store i32 9, i32* %7, align 4, !dbg !5882
  %8 = getelementptr inbounds %struct.hal_uart_config_t, %struct.hal_uart_config_t* %1, i32 0, i32 1, !dbg !5883
  store i32 3, i32* %8, align 4, !dbg !5884
  %9 = getelementptr inbounds %struct.hal_uart_config_t, %struct.hal_uart_config_t* %1, i32 0, i32 2, !dbg !5885
  store i32 0, i32* %9, align 4, !dbg !5886
  %10 = getelementptr inbounds %struct.hal_uart_config_t, %struct.hal_uart_config_t* %1, i32 0, i32 3, !dbg !5887
  store i32 0, i32* %10, align 4, !dbg !5888
  %11 = call i32 @hal_uart_init(i32 noundef 0, %struct.hal_uart_config_t* noundef nonnull %1) #13, !dbg !5889
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %2) #15, !dbg !5890
  ret void, !dbg !5890
}

; Function Attrs: nofree noinline norecurse nounwind optsize
define dso_local i32 @SysTick_Set(i32 noundef %0) local_unnamed_addr #3 !dbg !5891 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !5893, metadata !DIExpression()), !dbg !5895
  %2 = add i32 %0, -1, !dbg !5896
  %3 = icmp ugt i32 %2, 16777215, !dbg !5898
  br i1 %3, label %8, label %4, !dbg !5899

4:                                                ; preds = %1
  %5 = load volatile i32, i32* inttoptr (i32 -536813552 to i32*), align 16, !dbg !5900
  call void @llvm.dbg.value(metadata i32 %5, metadata !5894, metadata !DIExpression()), !dbg !5895
  %6 = load volatile i32, i32* inttoptr (i32 -536813552 to i32*), align 16, !dbg !5901
  %7 = and i32 %6, -4, !dbg !5901
  store volatile i32 %7, i32* inttoptr (i32 -536813552 to i32*), align 16, !dbg !5901
  store volatile i32 %2, i32* inttoptr (i32 -536813548 to i32*), align 4, !dbg !5902
  store volatile i32 0, i32* inttoptr (i32 -536813544 to i32*), align 8, !dbg !5903
  store volatile i32 %5, i32* inttoptr (i32 -536813552 to i32*), align 16, !dbg !5904
  br label %8, !dbg !5905

8:                                                ; preds = %1, %4
  %9 = phi i32 [ 0, %4 ], [ 1, %1 ], !dbg !5895
  ret i32 %9, !dbg !5906
}

; Function Attrs: nofree noinline norecurse nounwind optsize
define dso_local void @SysInitStatus_Set() local_unnamed_addr #3 !dbg !5907 {
  store volatile i32 1, i32* @System_Initialize_Done, align 4, !dbg !5908
  ret void, !dbg !5909
}

; Function Attrs: mustprogress nofree noinline norecurse nounwind optsize willreturn
define dso_local i32 @SysInitStatus_Query() local_unnamed_addr #4 !dbg !5910 {
  %1 = load volatile i32, i32* @System_Initialize_Done, align 4, !dbg !5911
  ret i32 %1, !dbg !5912
}

; Function Attrs: noinline nounwind optsize
define dso_local void @SystemCoreClockUpdate() local_unnamed_addr #0 !dbg !5913 {
  %1 = tail call i32 @top_mcu_freq_get() #13, !dbg !5914
  store i32 %1, i32* @SystemCoreClock, align 4, !dbg !5915
  ret void, !dbg !5916
}

; Function Attrs: nofree noinline norecurse nounwind optsize
define dso_local void @SystemInit() local_unnamed_addr #3 !dbg !5917 {
  %1 = load volatile i32, i32* inttoptr (i32 -536810104 to i32*), align 8, !dbg !5918
  %2 = or i32 %1, 15728640, !dbg !5918
  store volatile i32 %2, i32* inttoptr (i32 -536810104 to i32*), align 8, !dbg !5918
  store volatile i32 536870912, i32* inttoptr (i32 -536810232 to i32*), align 8, !dbg !5919
  %3 = load volatile i32, i32* inttoptr (i32 -536810204 to i32*), align 4, !dbg !5920
  %4 = or i32 %3, 458752, !dbg !5920
  store volatile i32 %4, i32* inttoptr (i32 -536810204 to i32*), align 4, !dbg !5920
  ret void, !dbg !5921
}

; Function Attrs: nofree noinline norecurse nounwind optsize
define dso_local void @CachePreInit() local_unnamed_addr #3 !dbg !5922 {
  store volatile i32 0, i32* inttoptr (i32 22216704 to i32*), align 65536, !dbg !5923
  store volatile i32 19, i32* inttoptr (i32 22216708 to i32*), align 4, !dbg !5924
  store volatile i32 3, i32* inttoptr (i32 22216708 to i32*), align 4, !dbg !5925
  store volatile i32 268931328, i32* inttoptr (i32 22282240 to i32*), align 262144, !dbg !5926
  store volatile i32 270950400, i32* inttoptr (i32 22282304 to i32*), align 64, !dbg !5927
  store volatile i32 1, i32* inttoptr (i32 22216748 to i32*), align 4, !dbg !5928
  store volatile i32 781, i32* inttoptr (i32 22216704 to i32*), align 65536, !dbg !5929
  ret void, !dbg !5930
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize readnone willreturn
define dso_local i32 @_close(i32 noundef %0) local_unnamed_addr #9 !dbg !5931 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !5933, metadata !DIExpression()), !dbg !5934
  ret i32 0, !dbg !5935
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize readnone willreturn
define dso_local i32 @_fstat(i32 noundef %0, %struct.stat* nocapture noundef readnone %1) local_unnamed_addr #9 !dbg !5936 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !5986, metadata !DIExpression()), !dbg !5988
  call void @llvm.dbg.value(metadata %struct.stat* %1, metadata !5987, metadata !DIExpression()), !dbg !5988
  ret i32 0, !dbg !5989
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize readnone willreturn
define dso_local i32 @_isatty(i32 noundef %0) local_unnamed_addr #9 !dbg !5990 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !5992, metadata !DIExpression()), !dbg !5993
  ret i32 1, !dbg !5994
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize readnone willreturn
define dso_local i32 @_lseek(i32 noundef %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #9 !dbg !5995 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !5999, metadata !DIExpression()), !dbg !6002
  call void @llvm.dbg.value(metadata i32 %1, metadata !6000, metadata !DIExpression()), !dbg !6002
  call void @llvm.dbg.value(metadata i32 %2, metadata !6001, metadata !DIExpression()), !dbg !6002
  ret i32 0, !dbg !6003
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize readnone willreturn
define dso_local i32 @_open(i8* nocapture noundef readnone %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #9 !dbg !6004 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !6008, metadata !DIExpression()), !dbg !6011
  call void @llvm.dbg.value(metadata i32 %1, metadata !6009, metadata !DIExpression()), !dbg !6011
  call void @llvm.dbg.value(metadata i32 %2, metadata !6010, metadata !DIExpression()), !dbg !6011
  ret i32 -1, !dbg !6012
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize readnone willreturn
define dso_local i32 @_read(i32 noundef %0, i8* nocapture noundef readnone %1, i32 noundef %2) local_unnamed_addr #9 !dbg !6013 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !6017, metadata !DIExpression()), !dbg !6020
  call void @llvm.dbg.value(metadata i8* %1, metadata !6018, metadata !DIExpression()), !dbg !6020
  call void @llvm.dbg.value(metadata i32 %2, metadata !6019, metadata !DIExpression()), !dbg !6020
  ret i32 0, !dbg !6021
}

; Function Attrs: noinline nounwind optsize
define dso_local i32 @_write(i32 noundef %0, i8* nocapture noundef readonly %1, i32 noundef returned %2) local_unnamed_addr #0 !dbg !6022 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !6024, metadata !DIExpression()), !dbg !6028
  call void @llvm.dbg.value(metadata i8* %1, metadata !6025, metadata !DIExpression()), !dbg !6028
  call void @llvm.dbg.value(metadata i32 %2, metadata !6026, metadata !DIExpression()), !dbg !6028
  call void @llvm.dbg.value(metadata i32 0, metadata !6027, metadata !DIExpression()), !dbg !6028
  %4 = icmp sgt i32 %2, 0, !dbg !6029
  br i1 %4, label %5, label %14, !dbg !6032

5:                                                ; preds = %3, %5
  %6 = phi i32 [ %12, %5 ], [ 0, %3 ]
  %7 = phi i8* [ %8, %5 ], [ %1, %3 ]
  call void @llvm.dbg.value(metadata i32 %6, metadata !6027, metadata !DIExpression()), !dbg !6028
  call void @llvm.dbg.value(metadata i8* %7, metadata !6025, metadata !DIExpression()), !dbg !6028
  %8 = getelementptr inbounds i8, i8* %7, i32 1, !dbg !6033
  call void @llvm.dbg.value(metadata i8* %8, metadata !6025, metadata !DIExpression()), !dbg !6028
  %9 = load i8, i8* %7, align 1, !dbg !6035
  %10 = zext i8 %9 to i32, !dbg !6035
  %11 = tail call i32 @__io_putchar(i32 noundef %10) #13, !dbg !6036
  %12 = add nuw nsw i32 %6, 1, !dbg !6037
  call void @llvm.dbg.value(metadata i32 %12, metadata !6027, metadata !DIExpression()), !dbg !6028
  %13 = icmp eq i32 %12, %2, !dbg !6029
  br i1 %13, label %14, label %5, !dbg !6032, !llvm.loop !6038

14:                                               ; preds = %5, %3
  ret i32 %2, !dbg !6040
}

; Function Attrs: noinline nounwind optsize
define dso_local i8* @_sbrk_r(%struct._reent* nocapture noundef readnone %0, i32 noundef %1) local_unnamed_addr #0 !dbg !633 {
  call void @llvm.dbg.value(metadata %struct._reent* %0, metadata !836, metadata !DIExpression()), !dbg !6041
  call void @llvm.dbg.value(metadata i32 %1, metadata !837, metadata !DIExpression()), !dbg !6041
  %3 = tail call i8* asm sideeffect "MRS $0, msp\0A", "=r"() #15, !dbg !6042, !srcloc !6043
  call void @llvm.dbg.value(metadata i8* %3, metadata !839, metadata !DIExpression()), !dbg !6041
  %4 = load i8*, i8** @_sbrk_r.heap_end, align 4, !dbg !6044
  %5 = icmp eq i8* %4, null, !dbg !6046
  %6 = select i1 %5, i8* @end, i8* %4, !dbg !6047
  call void @llvm.dbg.value(metadata i8* %6, metadata !838, metadata !DIExpression()), !dbg !6041
  %7 = getelementptr inbounds i8, i8* %6, i32 %1, !dbg !6048
  %8 = icmp ult i8* %3, %7, !dbg !6050
  %9 = xor i1 %8, true, !dbg !6051
  %10 = or i1 %5, %9, !dbg !6051
  br i1 %10, label %11, label %13, !dbg !6051

11:                                               ; preds = %2
  %12 = select i1 %8, i8* %6, i8* %7, !dbg !6052
  store i8* %12, i8** @_sbrk_r.heap_end, align 4, !dbg !6051
  br label %13, !dbg !6051

13:                                               ; preds = %2, %11
  %14 = select i1 %8, i8* inttoptr (i32 -1 to i8*), i8* %6, !dbg !6052
  ret i8* %14, !dbg !6051
}

; Function Attrs: noinline noreturn nounwind optsize
define dso_local void @_exit(i32 noundef %0) local_unnamed_addr #12 !dbg !6053 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !6055, metadata !DIExpression()), !dbg !6056
  %2 = tail call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.38, i32 0, i32 0)) #13, !dbg !6057
  br label %3, !dbg !6058

3:                                                ; preds = %1, %3
  br label %3, !dbg !6058, !llvm.loop !6059
}

; Function Attrs: noinline nounwind optsize
define dso_local i32 @_kill(i32 noundef %0, i32 noundef %1) local_unnamed_addr #0 !dbg !6061 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !6065, metadata !DIExpression()), !dbg !6067
  call void @llvm.dbg.value(metadata i32 %1, metadata !6066, metadata !DIExpression()), !dbg !6067
  %3 = tail call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1.39, i32 0, i32 0), i32 noundef %1) #13, !dbg !6068
  ret i32 -1, !dbg !6069
}

; Function Attrs: noinline nounwind optsize
define dso_local i32 @_getpid() local_unnamed_addr #0 !dbg !6070 {
  %1 = tail call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2.40, i32 0, i32 0)) #13, !dbg !6075
  ret i32 0, !dbg !6076
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
attributes #10 = { noreturn optsize "frame-pointer"="all" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="cortex-m4" "target-features"="+armv7e-m,+dsp,+fp16,+hwdiv,+strict-align,+thumb-mode,+vfp2sp,+vfp3d16sp,+vfp4d16sp,-aes,-bf16,-cdecp0,-cdecp1,-cdecp2,-cdecp3,-cdecp4,-cdecp5,-cdecp6,-cdecp7,-crc,-crypto,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16fml,-fp64,-fullfp16,-hwdiv-arm,-i8mm,-lob,-mve,-mve.fp,-neon,-pacbti,-ras,-sb,-sha2,-vfp2,-vfp3,-vfp3d16,-vfp3sp,-vfp4,-vfp4d16,-vfp4sp" }
attributes #11 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn writeonly "frame-pointer"="all" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="cortex-m4" "target-features"="+armv7e-m,+dsp,+fp16,+hwdiv,+strict-align,+thumb-mode,+vfp2sp,+vfp3d16sp,+vfp4d16sp,-aes,-bf16,-cdecp0,-cdecp1,-cdecp2,-cdecp3,-cdecp4,-cdecp5,-cdecp6,-cdecp7,-crc,-crypto,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16fml,-fp64,-fullfp16,-hwdiv-arm,-i8mm,-lob,-mve,-mve.fp,-neon,-pacbti,-ras,-sb,-sha2,-vfp2,-vfp3,-vfp3d16,-vfp3sp,-vfp4,-vfp4d16,-vfp4sp" }
attributes #12 = { noinline noreturn nounwind optsize "frame-pointer"="all" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="cortex-m4" "target-features"="+armv7e-m,+dsp,+fp16,+hwdiv,+strict-align,+thumb-mode,+vfp2sp,+vfp3d16sp,+vfp4d16sp,-aes,-bf16,-cdecp0,-cdecp1,-cdecp2,-cdecp3,-cdecp4,-cdecp5,-cdecp6,-cdecp7,-crc,-crypto,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16fml,-fp64,-fullfp16,-hwdiv-arm,-i8mm,-lob,-mve,-mve.fp,-neon,-pacbti,-ras,-sb,-sha2,-vfp2,-vfp3,-vfp3d16,-vfp3sp,-vfp4,-vfp4d16,-vfp4sp" }
attributes #13 = { nobuiltin nounwind optsize "no-builtins" }
attributes #14 = { nobuiltin optsize "no-builtins" }
attributes #15 = { nounwind }
attributes #16 = { nobuiltin noreturn nounwind optsize "no-builtins" }

!llvm.dbg.cu = !{!2, !859, !896, !905, !986, !1031, !1065, !1071, !85, !102, !1074, !140, !225, !1076, !329, !382, !463, !1147, !573, !831, !842}
!llvm.ident = !{!1150, !1150, !1150, !1150, !1150, !1150, !1150, !1150, !1150, !1150, !1150, !1150, !1150, !1150, !1150, !1150, !1150, !1150, !1150, !1150, !1150}
!llvm.module.flags = !{!1151, !1152, !1153, !1154, !1155, !1156, !1157, !1158, !1159}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "g_u4ClkCnt1ms", scope: !2, file: !3, line: 71, type: !79, isLocal: false, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C99, file: !3, producer: "Ubuntu clang version 14.0.6", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !57, globals: !62, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "../../../../../driver/chip/mt7687/src/common/gpt.c", directory: "/home/mjshen/RTOSExploration/Embedded-GUI-for-MT2523/project/linkit7697_hdk/hal_examples/pwm_generate_waveform/GCC")
!4 = !{!5, !11}
!5 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !6, line: 121, baseType: !7, size: 32, elements: !8)
!6 = !DIFile(filename: "../../../../../driver/chip/mt7687/inc/type_def.h", directory: "/home/mjshen/RTOSExploration/Embedded-GUI-for-MT2523/project/linkit7697_hdk/hal_examples/pwm_generate_waveform/GCC")
!7 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!8 = !{!9, !10}
!9 = !DIEnumerator(name: "KAL_FALSE", value: 0)
!10 = !DIEnumerator(name: "KAL_TRUE", value: 1)
!11 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "IRQn", file: !12, line: 47, baseType: !13, size: 32, elements: !14)
!12 = !DIFile(filename: "../../../../../driver/CMSIS/Device/MTK/mt7687/Include/mt7687.h", directory: "/home/mjshen/RTOSExploration/Embedded-GUI-for-MT2523/project/linkit7697_hdk/hal_examples/pwm_generate_waveform/GCC")
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
!66 = !DIFile(filename: "../../../../../driver/chip/mt7687/src/common/include/gpt.h", directory: "/home/mjshen/RTOSExploration/Embedded-GUI-for-MT2523/project/linkit7697_hdk/hal_examples/pwm_generate_waveform/GCC")
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
!86 = !DIFile(filename: "../../../../../driver/chip/mt7687/src/common/top.c", directory: "/home/mjshen/RTOSExploration/Embedded-GUI-for-MT2523/project/linkit7697_hdk/hal_examples/pwm_generate_waveform/GCC")
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
!103 = !DIFile(filename: "../../../../../driver/chip/mt7687/src/common/uart.c", directory: "/home/mjshen/RTOSExploration/Embedded-GUI-for-MT2523/project/linkit7697_hdk/hal_examples/pwm_generate_waveform/GCC")
!104 = !{!105, !111}
!105 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !106, line: 71, baseType: !7, size: 32, elements: !107)
!106 = !DIFile(filename: "../../../../../driver/chip/mt7687/src/common/include/uart.h", directory: "/home/mjshen/RTOSExploration/Embedded-GUI-for-MT2523/project/linkit7697_hdk/hal_examples/pwm_generate_waveform/GCC")
!107 = !{!108, !109, !110}
!108 = !DIEnumerator(name: "UART_PORT0", value: 0)
!109 = !DIEnumerator(name: "UART_PORT1", value: 1)
!110 = !DIEnumerator(name: "UART_MAX_PORT", value: 2)
!111 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !112, line: 129, baseType: !7, size: 32, elements: !113)
!112 = !DIFile(filename: "../../../../../driver/chip/mt7687/inc/dma_sw.h", directory: "/home/mjshen/RTOSExploration/Embedded-GUI-for-MT2523/project/linkit7697_hdk/hal_examples/pwm_generate_waveform/GCC")
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
!141 = !DIFile(filename: "../../../../../driver/chip/mt7687/src/hal_cache.c", directory: "/home/mjshen/RTOSExploration/Embedded-GUI-for-MT2523/project/linkit7697_hdk/hal_examples/pwm_generate_waveform/GCC")
!142 = !{!143, !154, !173, !180}
!143 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !144, line: 163, baseType: !13, size: 32, elements: !145)
!144 = !DIFile(filename: "../../../../../driver/chip/inc/hal_cache.h", directory: "/home/mjshen/RTOSExploration/Embedded-GUI-for-MT2523/project/linkit7697_hdk/hal_examples/pwm_generate_waveform/GCC")
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
!181 = !DIFile(filename: "../../../../../driver/chip/mt7687/inc/hal_cache_internal.h", directory: "/home/mjshen/RTOSExploration/Embedded-GUI-for-MT2523/project/linkit7697_hdk/hal_examples/pwm_generate_waveform/GCC")
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
!192 = !DIFile(filename: "../../../../../driver/chip/mt7687/inc/hal_cache_hw.h", directory: "/home/mjshen/RTOSExploration/Embedded-GUI-for-MT2523/project/linkit7697_hdk/hal_examples/pwm_generate_waveform/GCC")
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
!226 = !DIFile(filename: "../../../../../driver/chip/mt7687/src/hal_nvic.c", directory: "/home/mjshen/RTOSExploration/Embedded-GUI-for-MT2523/project/linkit7697_hdk/hal_examples/pwm_generate_waveform/GCC")
!227 = !{!228, !11}
!228 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !229, line: 152, baseType: !13, size: 32, elements: !230)
!229 = !DIFile(filename: "../../../../../driver/chip/inc/hal_nvic.h", directory: "/home/mjshen/RTOSExploration/Embedded-GUI-for-MT2523/project/linkit7697_hdk/hal_examples/pwm_generate_waveform/GCC")
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
!242 = !DIFile(filename: "../../../../../driver/CMSIS/Include/core_cm4.h", directory: "/home/mjshen/RTOSExploration/Embedded-GUI-for-MT2523/project/linkit7697_hdk/hal_examples/pwm_generate_waveform/GCC")
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
!328 = distinct !DIGlobalVariable(name: "g_gpt_context", scope: !329, file: !330, line: 61, type: !363, isLocal: true, isDefinition: true)
!329 = distinct !DICompileUnit(language: DW_LANG_C99, file: !330, producer: "Ubuntu clang version 14.0.6", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !331, retainedTypes: !361, globals: !362, splitDebugInlining: false, nameTableKind: None)
!330 = !DIFile(filename: "../../../../../driver/chip/mt7687/src/hal_gpt.c", directory: "/home/mjshen/RTOSExploration/Embedded-GUI-for-MT2523/project/linkit7697_hdk/hal_examples/pwm_generate_waveform/GCC")
!331 = !{!332, !340, !348, !352, !357}
!332 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !333, line: 387, baseType: !13, size: 32, elements: !334)
!333 = !DIFile(filename: "../../../../../driver/chip/inc/hal_gpt.h", directory: "/home/mjshen/RTOSExploration/Embedded-GUI-for-MT2523/project/linkit7697_hdk/hal_examples/pwm_generate_waveform/GCC")
!334 = !{!335, !336, !337, !338, !339}
!335 = !DIEnumerator(name: "HAL_GPT_STATUS_ERROR_PORT_USED", value: -4)
!336 = !DIEnumerator(name: "HAL_GPT_STATUS_ERROR", value: -3)
!337 = !DIEnumerator(name: "HAL_GPT_STATUS_ERROR_PORT", value: -2)
!338 = !DIEnumerator(name: "HAL_GPT_STATUS_INVALID_PARAMETER", value: -1)
!339 = !DIEnumerator(name: "HAL_GPT_STATUS_OK", value: 0)
!340 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !341, line: 657, baseType: !7, size: 32, elements: !342)
!341 = !DIFile(filename: "../../../../../driver/chip/mt7687/inc/hal_platform.h", directory: "/home/mjshen/RTOSExploration/Embedded-GUI-for-MT2523/project/linkit7697_hdk/hal_examples/pwm_generate_waveform/GCC")
!342 = !{!343, !344, !345, !346, !347}
!343 = !DIEnumerator(name: "HAL_GPT_0", value: 0)
!344 = !DIEnumerator(name: "HAL_GPT_1", value: 1)
!345 = !DIEnumerator(name: "HAL_GPT_2", value: 2)
!346 = !DIEnumerator(name: "HAL_GPT_4", value: 4)
!347 = !DIEnumerator(name: "HAL_GPT_MAX", value: 5)
!348 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !333, line: 397, baseType: !7, size: 32, elements: !349)
!349 = !{!350, !351}
!350 = !DIEnumerator(name: "HAL_GPT_STOPPED", value: 0)
!351 = !DIEnumerator(name: "HAL_GPT_RUNNING", value: 1)
!352 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !341, line: 666, baseType: !7, size: 32, elements: !353)
!353 = !{!354, !355, !356}
!354 = !DIEnumerator(name: "HAL_GPT_CLOCK_SOURCE_32K", value: 0)
!355 = !DIEnumerator(name: "HAL_GPT_CLOCK_SOURCE_1M", value: 1)
!356 = !DIEnumerator(name: "HAL_GPT_CLOCK_SOURCE_BUS", value: 2)
!357 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !333, line: 380, baseType: !7, size: 32, elements: !358)
!358 = !{!359, !360}
!359 = !DIEnumerator(name: "HAL_GPT_TIMER_TYPE_ONE_SHOT", value: 0)
!360 = !DIEnumerator(name: "HAL_GPT_TIMER_TYPE_REPEAT", value: 1)
!361 = !{!219, !92}
!362 = !{!327}
!363 = !DICompositeType(tag: DW_TAG_array_type, baseType: !364, size: 640, elements: !310)
!364 = !DIDerivedType(tag: DW_TAG_typedef, name: "hal_gpt_context_t", file: !330, line: 55, baseType: !365)
!365 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !330, line: 51, size: 128, elements: !366)
!366 = !{!367, !369, !379}
!367 = !DIDerivedType(tag: DW_TAG_member, name: "running_status", scope: !365, file: !330, line: 52, baseType: !368, size: 32)
!368 = !DIDerivedType(tag: DW_TAG_typedef, name: "hal_gpt_running_status_t", file: !333, line: 400, baseType: !348)
!369 = !DIDerivedType(tag: DW_TAG_member, name: "callback_context", scope: !365, file: !330, line: 53, baseType: !370, size: 64, offset: 32)
!370 = !DIDerivedType(tag: DW_TAG_typedef, name: "hal_gpt_callback_context", file: !330, line: 49, baseType: !371)
!371 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !330, line: 46, size: 64, elements: !372)
!372 = !{!373, !378}
!373 = !DIDerivedType(tag: DW_TAG_member, name: "callback", scope: !371, file: !330, line: 47, baseType: !374, size: 32)
!374 = !DIDerivedType(tag: DW_TAG_typedef, name: "hal_gpt_callback_t", file: !333, line: 371, baseType: !375)
!375 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !376, size: 32)
!376 = !DISubroutineType(types: !377)
!377 = !{null, !219}
!378 = !DIDerivedType(tag: DW_TAG_member, name: "user_data", scope: !371, file: !330, line: 48, baseType: !219, size: 32, offset: 32)
!379 = !DIDerivedType(tag: DW_TAG_member, name: "has_initlized", scope: !365, file: !330, line: 54, baseType: !222, size: 8, offset: 96)
!380 = !DIGlobalVariableExpression(var: !381, expr: !DIExpression(DW_OP_deref_size, 1, DW_OP_constu, 1, DW_OP_mul, DW_OP_constu, 0, DW_OP_plus, DW_OP_stack_value))
!381 = distinct !DIGlobalVariable(name: "init_time", scope: !382, file: !383, line: 46, type: !238, isLocal: true, isDefinition: true)
!382 = distinct !DICompileUnit(language: DW_LANG_C99, file: !383, producer: "Ubuntu clang version 14.0.6", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !384, retainedTypes: !437, globals: !440, splitDebugInlining: false, nameTableKind: None)
!383 = !DIFile(filename: "../../../../../driver/chip/mt7687/src/hal_pwm.c", directory: "/home/mjshen/RTOSExploration/Embedded-GUI-for-MT2523/project/linkit7697_hdk/hal_examples/pwm_generate_waveform/GCC")
!384 = !{!385, !393, !402, !433}
!385 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !386, line: 226, baseType: !13, size: 32, elements: !387)
!386 = !DIFile(filename: "../../../../../driver/chip/inc/hal_pwm.h", directory: "/home/mjshen/RTOSExploration/Embedded-GUI-for-MT2523/project/linkit7697_hdk/hal_examples/pwm_generate_waveform/GCC")
!387 = !{!388, !389, !390, !391, !392}
!388 = !DIEnumerator(name: "HAL_PWM_STATUS_ERROR", value: -4)
!389 = !DIEnumerator(name: "HAL_PWM_STATUS_ERROR_CHANNEL", value: -3)
!390 = !DIEnumerator(name: "HAL_PWM_STATUS_INVALID_PARAMETER", value: -2)
!391 = !DIEnumerator(name: "HAL_PWM_STATUS_INVALID_FREQUENCY", value: -1)
!392 = !DIEnumerator(name: "HAL_PWM_STATUS_OK", value: 0)
!393 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !341, line: 814, baseType: !7, size: 32, elements: !394)
!394 = !{!395, !396, !397, !398, !399, !400, !401}
!395 = !DIEnumerator(name: "HAL_PWM_CLOCK_32KHZ", value: 0)
!396 = !DIEnumerator(name: "HAL_PWM_CLOCK_2MHZ", value: 1)
!397 = !DIEnumerator(name: "HAL_PWM_CLOCK_20MHZ", value: 2)
!398 = !DIEnumerator(name: "HAL_PWM_CLOCK_26MHZ", value: 3)
!399 = !DIEnumerator(name: "HAL_PWM_CLOCK_40MHZ", value: 4)
!400 = !DIEnumerator(name: "HAL_PWM_CLOCK_52MHZ", value: 5)
!401 = !DIEnumerator(name: "HAL_PWM_CLOCK_MAX", value: 6)
!402 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !341, line: 781, baseType: !7, size: 32, elements: !403)
!403 = !{!404, !405, !406, !407, !408, !409, !410, !411, !412, !413, !414, !415, !416, !417, !418, !419, !420, !421, !422, !423, !424, !425, !426, !427, !428, !429, !430, !431, !432}
!404 = !DIEnumerator(name: "HAL_PWM_0", value: 0)
!405 = !DIEnumerator(name: "HAL_PWM_1", value: 1)
!406 = !DIEnumerator(name: "HAL_PWM_2", value: 2)
!407 = !DIEnumerator(name: "HAL_PWM_3", value: 3)
!408 = !DIEnumerator(name: "HAL_PWM_4", value: 4)
!409 = !DIEnumerator(name: "HAL_PWM_5", value: 5)
!410 = !DIEnumerator(name: "HAL_PWM_18", value: 18)
!411 = !DIEnumerator(name: "HAL_PWM_19", value: 19)
!412 = !DIEnumerator(name: "HAL_PWM_20", value: 20)
!413 = !DIEnumerator(name: "HAL_PWM_21", value: 21)
!414 = !DIEnumerator(name: "HAL_PWM_22", value: 22)
!415 = !DIEnumerator(name: "HAL_PWM_23", value: 23)
!416 = !DIEnumerator(name: "HAL_PWM_24", value: 24)
!417 = !DIEnumerator(name: "HAL_PWM_25", value: 25)
!418 = !DIEnumerator(name: "HAL_PWM_26", value: 26)
!419 = !DIEnumerator(name: "HAL_PWM_27", value: 27)
!420 = !DIEnumerator(name: "HAL_PWM_28", value: 28)
!421 = !DIEnumerator(name: "HAL_PWM_29", value: 29)
!422 = !DIEnumerator(name: "HAL_PWM_30", value: 30)
!423 = !DIEnumerator(name: "HAL_PWM_31", value: 31)
!424 = !DIEnumerator(name: "HAL_PWM_32", value: 32)
!425 = !DIEnumerator(name: "HAL_PWM_33", value: 33)
!426 = !DIEnumerator(name: "HAL_PWM_34", value: 34)
!427 = !DIEnumerator(name: "HAL_PWM_35", value: 35)
!428 = !DIEnumerator(name: "HAL_PWM_36", value: 36)
!429 = !DIEnumerator(name: "HAL_PWM_37", value: 37)
!430 = !DIEnumerator(name: "HAL_PWM_38", value: 38)
!431 = !DIEnumerator(name: "HAL_PWM_39", value: 39)
!432 = !DIEnumerator(name: "HAL_PWM_MAX_CHANNEL", value: 40)
!433 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !386, line: 237, baseType: !7, size: 32, elements: !434)
!434 = !{!435, !436}
!435 = !DIEnumerator(name: "HAL_PWM_IDLE", value: 0)
!436 = !DIEnumerator(name: "HAL_PWM_BUSY", value: 1)
!437 = !{!267, !438, !219}
!438 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint16_t", file: !93, line: 36, baseType: !439)
!439 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint16_t", file: !95, line: 57, baseType: !132)
!440 = !{!441, !444, !445}
!441 = !DIGlobalVariableExpression(var: !442, expr: !DIExpression())
!442 = distinct !DIGlobalVariable(name: "g_source_clock", scope: !382, file: !383, line: 45, type: !443, isLocal: true, isDefinition: true)
!443 = !DIDerivedType(tag: DW_TAG_typedef, name: "hal_pwm_source_clock_t", file: !341, line: 822, baseType: !393)
!444 = !DIGlobalVariableExpression(var: !381, expr: !DIExpression())
!445 = !DIGlobalVariableExpression(var: !446, expr: !DIExpression())
!446 = distinct !DIGlobalVariable(name: "source_clock_table", scope: !447, file: !383, line: 69, type: !457, isLocal: true, isDefinition: true)
!447 = distinct !DISubprogram(name: "hal_pwm_calc_total_count", scope: !383, file: !383, line: 65, type: !448, scopeLine: 68, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !382, retainedNodes: !452)
!448 = !DISubroutineType(types: !449)
!449 = !{!450, !443, !92, !451}
!450 = !DIDerivedType(tag: DW_TAG_typedef, name: "hal_pwm_status_t", file: !386, line: 232, baseType: !385)
!451 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !92, size: 32)
!452 = !{!453, !454, !455, !456}
!453 = !DILocalVariable(name: "source_clock", arg: 1, scope: !447, file: !383, line: 65, type: !443)
!454 = !DILocalVariable(name: "frequency", arg: 2, scope: !447, file: !383, line: 66, type: !92)
!455 = !DILocalVariable(name: "total_count", arg: 3, scope: !447, file: !383, line: 67, type: !451)
!456 = !DILocalVariable(name: "source_clock_rate", scope: !447, file: !383, line: 72, type: !92)
!457 = !DICompositeType(tag: DW_TAG_array_type, baseType: !458, size: 192, elements: !459)
!458 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !92)
!459 = !{!460}
!460 = !DISubrange(count: 6)
!461 = !DIGlobalVariableExpression(var: !462, expr: !DIExpression())
!462 = distinct !DIGlobalVariable(name: "g_uart_context_table", scope: !463, file: !464, line: 77, type: !529, isLocal: true, isDefinition: true)
!463 = distinct !DICompileUnit(language: DW_LANG_C99, file: !464, producer: "Ubuntu clang version 14.0.6", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !465, retainedTypes: !515, globals: !517, splitDebugInlining: false, nameTableKind: None)
!464 = !DIFile(filename: "../../../../../driver/chip/mt7687/src/hal_uart.c", directory: "/home/mjshen/RTOSExploration/Embedded-GUI-for-MT2523/project/linkit7697_hdk/hal_examples/pwm_generate_waveform/GCC")
!465 = !{!466, !474, !479, !495, !501, !505, !105, !111, !510}
!466 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !467, line: 345, baseType: !13, size: 32, elements: !468)
!467 = !DIFile(filename: "../../../../../driver/chip/inc/hal_uart.h", directory: "/home/mjshen/RTOSExploration/Embedded-GUI-for-MT2523/project/linkit7697_hdk/hal_examples/pwm_generate_waveform/GCC")
!468 = !{!469, !470, !471, !472, !473}
!469 = !DIEnumerator(name: "HAL_UART_STATUS_ERROR_PARAMETER", value: -4)
!470 = !DIEnumerator(name: "HAL_UART_STATUS_ERROR_BUSY", value: -3)
!471 = !DIEnumerator(name: "HAL_UART_STATUS_ERROR_UNINITIALIZED", value: -2)
!472 = !DIEnumerator(name: "HAL_UART_STATUS_ERROR", value: -1)
!473 = !DIEnumerator(name: "HAL_UART_STATUS_OK", value: 0)
!474 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !341, line: 109, baseType: !7, size: 32, elements: !475)
!475 = !{!476, !477, !478}
!476 = !DIEnumerator(name: "HAL_UART_0", value: 0)
!477 = !DIEnumerator(name: "HAL_UART_1", value: 1)
!478 = !DIEnumerator(name: "HAL_UART_MAX", value: 2)
!479 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !467, line: 302, baseType: !7, size: 32, elements: !480)
!480 = !{!481, !482, !483, !484, !485, !486, !487, !488, !489, !490, !491, !492, !493, !494}
!481 = !DIEnumerator(name: "HAL_UART_BAUDRATE_110", value: 0)
!482 = !DIEnumerator(name: "HAL_UART_BAUDRATE_300", value: 1)
!483 = !DIEnumerator(name: "HAL_UART_BAUDRATE_1200", value: 2)
!484 = !DIEnumerator(name: "HAL_UART_BAUDRATE_2400", value: 3)
!485 = !DIEnumerator(name: "HAL_UART_BAUDRATE_4800", value: 4)
!486 = !DIEnumerator(name: "HAL_UART_BAUDRATE_9600", value: 5)
!487 = !DIEnumerator(name: "HAL_UART_BAUDRATE_19200", value: 6)
!488 = !DIEnumerator(name: "HAL_UART_BAUDRATE_38400", value: 7)
!489 = !DIEnumerator(name: "HAL_UART_BAUDRATE_57600", value: 8)
!490 = !DIEnumerator(name: "HAL_UART_BAUDRATE_115200", value: 9)
!491 = !DIEnumerator(name: "HAL_UART_BAUDRATE_230400", value: 10)
!492 = !DIEnumerator(name: "HAL_UART_BAUDRATE_460800", value: 11)
!493 = !DIEnumerator(name: "HAL_UART_BAUDRATE_921600", value: 12)
!494 = !DIEnumerator(name: "HAL_UART_BAUDRATE_MAX", value: 13)
!495 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !467, line: 321, baseType: !7, size: 32, elements: !496)
!496 = !{!497, !498, !499, !500}
!497 = !DIEnumerator(name: "HAL_UART_WORD_LENGTH_5", value: 0)
!498 = !DIEnumerator(name: "HAL_UART_WORD_LENGTH_6", value: 1)
!499 = !DIEnumerator(name: "HAL_UART_WORD_LENGTH_7", value: 2)
!500 = !DIEnumerator(name: "HAL_UART_WORD_LENGTH_8", value: 3)
!501 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !467, line: 330, baseType: !7, size: 32, elements: !502)
!502 = !{!503, !504}
!503 = !DIEnumerator(name: "HAL_UART_STOP_BIT_1", value: 0)
!504 = !DIEnumerator(name: "HAL_UART_STOP_BIT_2", value: 1)
!505 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !467, line: 337, baseType: !7, size: 32, elements: !506)
!506 = !{!507, !508, !509}
!507 = !DIEnumerator(name: "HAL_UART_PARITY_NONE", value: 0)
!508 = !DIEnumerator(name: "HAL_UART_PARITY_ODD", value: 1)
!509 = !DIEnumerator(name: "HAL_UART_PARITY_EVEN", value: 2)
!510 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !467, line: 355, baseType: !13, size: 32, elements: !511)
!511 = !{!512, !513, !514}
!512 = !DIEnumerator(name: "HAL_UART_EVENT_TRANSACTION_ERROR", value: -1)
!513 = !DIEnumerator(name: "HAL_UART_EVENT_READY_TO_READ", value: 1)
!514 = !DIEnumerator(name: "HAL_UART_EVENT_READY_TO_WRITE", value: 2)
!515 = !{!7, !219, !134, !516, !267}
!516 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_unsigned_char)
!517 = !{!461, !518}
!518 = !DIGlobalVariableExpression(var: !519, expr: !DIExpression())
!519 = distinct !DIGlobalVariable(name: "func_tbl", scope: !520, file: !464, line: 536, type: !527, isLocal: true, isDefinition: true)
!520 = distinct !DISubprogram(name: "hal_uart_map_receive_callback", scope: !464, file: !464, line: 534, type: !521, scopeLine: 535, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !463, retainedNodes: !525)
!521 = !DISubroutineType(types: !522)
!522 = !{!523, !524}
!523 = !DIDerivedType(tag: DW_TAG_typedef, name: "VOID_FUNC", file: !112, line: 197, baseType: !74)
!524 = !DIDerivedType(tag: DW_TAG_typedef, name: "hal_uart_port_t", file: !341, line: 113, baseType: !474)
!525 = !{!526}
!526 = !DILocalVariable(name: "uart_port", arg: 1, scope: !520, file: !464, line: 534, type: !524)
!527 = !DICompositeType(tag: DW_TAG_array_type, baseType: !528, size: 64, elements: !300)
!528 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !523)
!529 = !DICompositeType(tag: DW_TAG_array_type, baseType: !530, size: 1024, elements: !300)
!530 = !DIDerivedType(tag: DW_TAG_typedef, name: "uart_context_t", file: !464, line: 75, baseType: !531)
!531 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !464, line: 68, size: 512, elements: !532)
!532 = !{!533, !534, !546, !547, !558, !559}
!533 = !DIDerivedType(tag: DW_TAG_member, name: "basic_config_present", scope: !531, file: !464, line: 69, baseType: !222, size: 8)
!534 = !DIDerivedType(tag: DW_TAG_member, name: "basic_config", scope: !531, file: !464, line: 70, baseType: !535, size: 128, offset: 32)
!535 = !DIDerivedType(tag: DW_TAG_typedef, name: "hal_uart_config_t", file: !467, line: 378, baseType: !536)
!536 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !467, line: 373, size: 128, elements: !537)
!537 = !{!538, !540, !542, !544}
!538 = !DIDerivedType(tag: DW_TAG_member, name: "baudrate", scope: !536, file: !467, line: 374, baseType: !539, size: 32)
!539 = !DIDerivedType(tag: DW_TAG_typedef, name: "hal_uart_baudrate_t", file: !467, line: 317, baseType: !479)
!540 = !DIDerivedType(tag: DW_TAG_member, name: "word_length", scope: !536, file: !467, line: 375, baseType: !541, size: 32, offset: 32)
!541 = !DIDerivedType(tag: DW_TAG_typedef, name: "hal_uart_word_length_t", file: !467, line: 326, baseType: !495)
!542 = !DIDerivedType(tag: DW_TAG_member, name: "stop_bit", scope: !536, file: !467, line: 376, baseType: !543, size: 32, offset: 64)
!543 = !DIDerivedType(tag: DW_TAG_typedef, name: "hal_uart_stop_bit_t", file: !467, line: 333, baseType: !501)
!544 = !DIDerivedType(tag: DW_TAG_member, name: "parity", scope: !536, file: !467, line: 377, baseType: !545, size: 32, offset: 96)
!545 = !DIDerivedType(tag: DW_TAG_typedef, name: "hal_uart_parity_t", file: !467, line: 341, baseType: !505)
!546 = !DIDerivedType(tag: DW_TAG_member, name: "callback_present", scope: !531, file: !464, line: 71, baseType: !222, size: 8, offset: 160)
!547 = !DIDerivedType(tag: DW_TAG_member, name: "callback_config", scope: !531, file: !464, line: 72, baseType: !548, size: 64, offset: 192)
!548 = !DIDerivedType(tag: DW_TAG_typedef, name: "hal_uart_callback_config_t", file: !464, line: 66, baseType: !549)
!549 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !464, line: 63, size: 64, elements: !550)
!550 = !{!551, !557}
!551 = !DIDerivedType(tag: DW_TAG_member, name: "callback", scope: !549, file: !464, line: 64, baseType: !552, size: 32)
!552 = !DIDerivedType(tag: DW_TAG_typedef, name: "hal_uart_callback_t", file: !467, line: 410, baseType: !553)
!553 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !554, size: 32)
!554 = !DISubroutineType(types: !555)
!555 = !{null, !556, !219}
!556 = !DIDerivedType(tag: DW_TAG_typedef, name: "hal_uart_callback_event_t", file: !467, line: 359, baseType: !510)
!557 = !DIDerivedType(tag: DW_TAG_member, name: "user_data", scope: !549, file: !464, line: 65, baseType: !219, size: 32, offset: 32)
!558 = !DIDerivedType(tag: DW_TAG_member, name: "dma_config_present", scope: !531, file: !464, line: 73, baseType: !222, size: 8, offset: 256)
!559 = !DIDerivedType(tag: DW_TAG_member, name: "dma_config", scope: !531, file: !464, line: 74, baseType: !560, size: 224, offset: 288)
!560 = !DIDerivedType(tag: DW_TAG_typedef, name: "hal_uart_dma_config_t", file: !467, line: 390, baseType: !561)
!561 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !467, line: 382, size: 224, elements: !562)
!562 = !{!563, !565, !566, !567, !568, !569, !570}
!563 = !DIDerivedType(tag: DW_TAG_member, name: "send_vfifo_buffer", scope: !561, file: !467, line: 383, baseType: !564, size: 32)
!564 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !267, size: 32)
!565 = !DIDerivedType(tag: DW_TAG_member, name: "send_vfifo_buffer_size", scope: !561, file: !467, line: 384, baseType: !92, size: 32, offset: 32)
!566 = !DIDerivedType(tag: DW_TAG_member, name: "send_vfifo_threshold_size", scope: !561, file: !467, line: 385, baseType: !92, size: 32, offset: 64)
!567 = !DIDerivedType(tag: DW_TAG_member, name: "receive_vfifo_buffer", scope: !561, file: !467, line: 386, baseType: !564, size: 32, offset: 96)
!568 = !DIDerivedType(tag: DW_TAG_member, name: "receive_vfifo_buffer_size", scope: !561, file: !467, line: 387, baseType: !92, size: 32, offset: 128)
!569 = !DIDerivedType(tag: DW_TAG_member, name: "receive_vfifo_threshold_size", scope: !561, file: !467, line: 388, baseType: !92, size: 32, offset: 160)
!570 = !DIDerivedType(tag: DW_TAG_member, name: "receive_vfifo_alert_size", scope: !561, file: !467, line: 389, baseType: !92, size: 32, offset: 192)
!571 = !DIGlobalVariableExpression(var: !572, expr: !DIExpression())
!572 = distinct !DIGlobalVariable(name: "SystemCoreClock", scope: !573, file: !574, line: 59, type: !92, isLocal: false, isDefinition: true)
!573 = distinct !DICompileUnit(language: DW_LANG_C99, file: !574, producer: "Ubuntu clang version 14.0.6", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !575, globals: !628, splitDebugInlining: false, nameTableKind: None)
!574 = !DIFile(filename: "../../../../../project/linkit7697_hdk/hal_examples/pwm_generate_waveform/src/system_mt7687.c", directory: "/home/mjshen/RTOSExploration/Embedded-GUI-for-MT2523/project/linkit7697_hdk/hal_examples/pwm_generate_waveform/GCC")
!575 = !{!576, !584, !609}
!576 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !577, size: 32)
!577 = !DIDerivedType(tag: DW_TAG_typedef, name: "SysTick_Type", file: !242, line: 656, baseType: !578)
!578 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !242, line: 650, size: 128, elements: !579)
!579 = !{!580, !581, !582, !583}
!580 = !DIDerivedType(tag: DW_TAG_member, name: "CTRL", scope: !578, file: !242, line: 652, baseType: !91, size: 32)
!581 = !DIDerivedType(tag: DW_TAG_member, name: "LOAD", scope: !578, file: !242, line: 653, baseType: !91, size: 32, offset: 32)
!582 = !DIDerivedType(tag: DW_TAG_member, name: "VAL", scope: !578, file: !242, line: 654, baseType: !91, size: 32, offset: 64)
!583 = !DIDerivedType(tag: DW_TAG_member, name: "CALIB", scope: !578, file: !242, line: 655, baseType: !281, size: 32, offset: 96)
!584 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !585, size: 32)
!585 = !DIDerivedType(tag: DW_TAG_typedef, name: "SCB_Type", file: !242, line: 418, baseType: !586)
!586 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !242, line: 395, size: 1120, elements: !587)
!587 = !{!588, !589, !590, !591, !592, !593, !594, !595, !596, !597, !598, !599, !600, !601, !602, !603, !604, !605, !606, !607, !608}
!588 = !DIDerivedType(tag: DW_TAG_member, name: "CPUID", scope: !586, file: !242, line: 397, baseType: !281, size: 32)
!589 = !DIDerivedType(tag: DW_TAG_member, name: "ICSR", scope: !586, file: !242, line: 398, baseType: !91, size: 32, offset: 32)
!590 = !DIDerivedType(tag: DW_TAG_member, name: "VTOR", scope: !586, file: !242, line: 399, baseType: !91, size: 32, offset: 64)
!591 = !DIDerivedType(tag: DW_TAG_member, name: "AIRCR", scope: !586, file: !242, line: 400, baseType: !91, size: 32, offset: 96)
!592 = !DIDerivedType(tag: DW_TAG_member, name: "SCR", scope: !586, file: !242, line: 401, baseType: !91, size: 32, offset: 128)
!593 = !DIDerivedType(tag: DW_TAG_member, name: "CCR", scope: !586, file: !242, line: 402, baseType: !91, size: 32, offset: 160)
!594 = !DIDerivedType(tag: DW_TAG_member, name: "SHP", scope: !586, file: !242, line: 403, baseType: !288, size: 96, offset: 192)
!595 = !DIDerivedType(tag: DW_TAG_member, name: "SHCSR", scope: !586, file: !242, line: 404, baseType: !91, size: 32, offset: 288)
!596 = !DIDerivedType(tag: DW_TAG_member, name: "CFSR", scope: !586, file: !242, line: 405, baseType: !91, size: 32, offset: 320)
!597 = !DIDerivedType(tag: DW_TAG_member, name: "HFSR", scope: !586, file: !242, line: 406, baseType: !91, size: 32, offset: 352)
!598 = !DIDerivedType(tag: DW_TAG_member, name: "DFSR", scope: !586, file: !242, line: 407, baseType: !91, size: 32, offset: 384)
!599 = !DIDerivedType(tag: DW_TAG_member, name: "MMFAR", scope: !586, file: !242, line: 408, baseType: !91, size: 32, offset: 416)
!600 = !DIDerivedType(tag: DW_TAG_member, name: "BFAR", scope: !586, file: !242, line: 409, baseType: !91, size: 32, offset: 448)
!601 = !DIDerivedType(tag: DW_TAG_member, name: "AFSR", scope: !586, file: !242, line: 410, baseType: !91, size: 32, offset: 480)
!602 = !DIDerivedType(tag: DW_TAG_member, name: "PFR", scope: !586, file: !242, line: 411, baseType: !299, size: 64, offset: 512)
!603 = !DIDerivedType(tag: DW_TAG_member, name: "DFR", scope: !586, file: !242, line: 412, baseType: !281, size: 32, offset: 576)
!604 = !DIDerivedType(tag: DW_TAG_member, name: "ADR", scope: !586, file: !242, line: 413, baseType: !281, size: 32, offset: 608)
!605 = !DIDerivedType(tag: DW_TAG_member, name: "MMFR", scope: !586, file: !242, line: 414, baseType: !305, size: 128, offset: 640)
!606 = !DIDerivedType(tag: DW_TAG_member, name: "ISAR", scope: !586, file: !242, line: 415, baseType: !309, size: 160, offset: 768)
!607 = !DIDerivedType(tag: DW_TAG_member, name: "RESERVED0", scope: !586, file: !242, line: 416, baseType: !313, size: 160, offset: 928)
!608 = !DIDerivedType(tag: DW_TAG_member, name: "CPACR", scope: !586, file: !242, line: 417, baseType: !91, size: 32, offset: 1088)
!609 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !610, size: 32)
!610 = !DIDerivedType(tag: DW_TAG_typedef, name: "CACHE_REGISTER_T", file: !192, line: 72, baseType: !611)
!611 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !192, line: 56, size: 525312, elements: !612)
!612 = !{!613, !614, !615, !616, !617, !618, !619, !620, !621, !622, !623, !624, !625, !626, !627}
!613 = !DIDerivedType(tag: DW_TAG_member, name: "CACHE_CON", scope: !611, file: !192, line: 57, baseType: !91, size: 32)
!614 = !DIDerivedType(tag: DW_TAG_member, name: "CACHE_OP", scope: !611, file: !192, line: 58, baseType: !91, size: 32, offset: 32)
!615 = !DIDerivedType(tag: DW_TAG_member, name: "CACHE_HCNT0L", scope: !611, file: !192, line: 59, baseType: !91, size: 32, offset: 64)
!616 = !DIDerivedType(tag: DW_TAG_member, name: "CACHE_HCNT0U", scope: !611, file: !192, line: 60, baseType: !91, size: 32, offset: 96)
!617 = !DIDerivedType(tag: DW_TAG_member, name: "CACHE_CCNT0L", scope: !611, file: !192, line: 61, baseType: !91, size: 32, offset: 128)
!618 = !DIDerivedType(tag: DW_TAG_member, name: "CACHE_CCNT0U", scope: !611, file: !192, line: 62, baseType: !91, size: 32, offset: 160)
!619 = !DIDerivedType(tag: DW_TAG_member, name: "CACHE_HCNT1L", scope: !611, file: !192, line: 63, baseType: !91, size: 32, offset: 192)
!620 = !DIDerivedType(tag: DW_TAG_member, name: "CACHE_HCNT1U", scope: !611, file: !192, line: 64, baseType: !91, size: 32, offset: 224)
!621 = !DIDerivedType(tag: DW_TAG_member, name: "CACHE_CCNT1L", scope: !611, file: !192, line: 65, baseType: !91, size: 32, offset: 256)
!622 = !DIDerivedType(tag: DW_TAG_member, name: "CACHE_CCNT1U", scope: !611, file: !192, line: 66, baseType: !91, size: 32, offset: 288)
!623 = !DIDerivedType(tag: DW_TAG_member, name: "RESERVED0", scope: !611, file: !192, line: 67, baseType: !206, size: 32, offset: 320)
!624 = !DIDerivedType(tag: DW_TAG_member, name: "CACHE_REGION_EN", scope: !611, file: !192, line: 68, baseType: !91, size: 32, offset: 352)
!625 = !DIDerivedType(tag: DW_TAG_member, name: "RESERVED1", scope: !611, file: !192, line: 69, baseType: !211, size: 523904, offset: 384)
!626 = !DIDerivedType(tag: DW_TAG_member, name: "CACHE_ENTRY_N", scope: !611, file: !192, line: 70, baseType: !215, size: 512, offset: 524288)
!627 = !DIDerivedType(tag: DW_TAG_member, name: "CACHE_END_ENTRY_N", scope: !611, file: !192, line: 71, baseType: !215, size: 512, offset: 524800)
!628 = !{!571, !629}
!629 = !DIGlobalVariableExpression(var: !630, expr: !DIExpression())
!630 = distinct !DIGlobalVariable(name: "System_Initialize_Done", scope: !573, file: !574, line: 61, type: !91, isLocal: true, isDefinition: true)
!631 = !DIGlobalVariableExpression(var: !632, expr: !DIExpression())
!632 = distinct !DIGlobalVariable(name: "heap_end", scope: !633, file: !634, line: 66, type: !639, isLocal: true, isDefinition: true)
!633 = distinct !DISubprogram(name: "_sbrk_r", scope: !634, file: !634, line: 63, type: !635, scopeLine: 64, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !831, retainedNodes: !835)
!634 = !DIFile(filename: "../../../../../project/linkit7697_hdk/hal_examples/pwm_generate_waveform/GCC/syscalls.c", directory: "/home/mjshen/RTOSExploration/Embedded-GUI-for-MT2523/project/linkit7697_hdk/hal_examples/pwm_generate_waveform/GCC")
!635 = !DISubroutineType(types: !636)
!636 = !{!637, !640, !830}
!637 = !DIDerivedType(tag: DW_TAG_typedef, name: "caddr_t", file: !638, line: 123, baseType: !639)
!638 = !DIFile(filename: "gcc-arm-none-eabi-10.3-2021.10/bin/../lib/gcc/arm-none-eabi/10.3.1/../../../../arm-none-eabi/include/sys/types.h", directory: "/home/mjshen/RTOSExploration")
!639 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !516, size: 32)
!640 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !641, size: 32)
!641 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_reent", file: !642, line: 377, size: 1920, elements: !643)
!642 = !DIFile(filename: "gcc-arm-none-eabi-10.3-2021.10/bin/../lib/gcc/arm-none-eabi/10.3.1/../../../../arm-none-eabi/include/sys/reent.h", directory: "/home/mjshen/RTOSExploration")
!643 = !{!644, !645, !719, !720, !721, !722, !723, !724, !725, !728, !749, !753, !754, !755, !756, !766, !779, !780, !785, !804, !805, !812, !813, !829}
!644 = !DIDerivedType(tag: DW_TAG_member, name: "_errno", scope: !641, file: !642, line: 381, baseType: !13, size: 32)
!645 = !DIDerivedType(tag: DW_TAG_member, name: "_stdin", scope: !641, file: !642, line: 386, baseType: !646, size: 32, offset: 32)
!646 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !647, size: 32)
!647 = !DIDerivedType(tag: DW_TAG_typedef, name: "__FILE", file: !642, line: 292, baseType: !648)
!648 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__sFILE", file: !642, line: 186, size: 832, elements: !649)
!649 = !{!650, !652, !653, !654, !656, !657, !662, !663, !664, !665, !669, !675, !682, !686, !687, !688, !689, !693, !695, !696, !697, !699, !705, !718}
!650 = !DIDerivedType(tag: DW_TAG_member, name: "_p", scope: !648, file: !642, line: 187, baseType: !651, size: 32)
!651 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !134, size: 32)
!652 = !DIDerivedType(tag: DW_TAG_member, name: "_r", scope: !648, file: !642, line: 188, baseType: !13, size: 32, offset: 32)
!653 = !DIDerivedType(tag: DW_TAG_member, name: "_w", scope: !648, file: !642, line: 189, baseType: !13, size: 32, offset: 64)
!654 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !648, file: !642, line: 190, baseType: !655, size: 16, offset: 96)
!655 = !DIBasicType(name: "short", size: 16, encoding: DW_ATE_signed)
!656 = !DIDerivedType(tag: DW_TAG_member, name: "_file", scope: !648, file: !642, line: 191, baseType: !655, size: 16, offset: 112)
!657 = !DIDerivedType(tag: DW_TAG_member, name: "_bf", scope: !648, file: !642, line: 192, baseType: !658, size: 64, offset: 128)
!658 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__sbuf", file: !642, line: 122, size: 64, elements: !659)
!659 = !{!660, !661}
!660 = !DIDerivedType(tag: DW_TAG_member, name: "_base", scope: !658, file: !642, line: 123, baseType: !651, size: 32)
!661 = !DIDerivedType(tag: DW_TAG_member, name: "_size", scope: !658, file: !642, line: 124, baseType: !13, size: 32, offset: 32)
!662 = !DIDerivedType(tag: DW_TAG_member, name: "_lbfsize", scope: !648, file: !642, line: 193, baseType: !13, size: 32, offset: 192)
!663 = !DIDerivedType(tag: DW_TAG_member, name: "_data", scope: !648, file: !642, line: 196, baseType: !640, size: 32, offset: 224)
!664 = !DIDerivedType(tag: DW_TAG_member, name: "_cookie", scope: !648, file: !642, line: 200, baseType: !219, size: 32, offset: 256)
!665 = !DIDerivedType(tag: DW_TAG_member, name: "_read", scope: !648, file: !642, line: 202, baseType: !666, size: 32, offset: 288)
!666 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !667, size: 32)
!667 = !DISubroutineType(types: !668)
!668 = !{!13, !640, !219, !639, !13}
!669 = !DIDerivedType(tag: DW_TAG_member, name: "_write", scope: !648, file: !642, line: 204, baseType: !670, size: 32, offset: 320)
!670 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !671, size: 32)
!671 = !DISubroutineType(types: !672)
!672 = !{!13, !640, !219, !673, !13}
!673 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !674, size: 32)
!674 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !516)
!675 = !DIDerivedType(tag: DW_TAG_member, name: "_seek", scope: !648, file: !642, line: 207, baseType: !676, size: 32, offset: 352)
!676 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !677, size: 32)
!677 = !DISubroutineType(types: !678)
!678 = !{!679, !640, !219, !679, !13}
!679 = !DIDerivedType(tag: DW_TAG_typedef, name: "_fpos_t", file: !680, line: 116, baseType: !681)
!680 = !DIFile(filename: "gcc-arm-none-eabi-10.3-2021.10/bin/../lib/gcc/arm-none-eabi/10.3.1/../../../../arm-none-eabi/include/sys/_types.h", directory: "/home/mjshen/RTOSExploration")
!681 = !DIBasicType(name: "long", size: 32, encoding: DW_ATE_signed)
!682 = !DIDerivedType(tag: DW_TAG_member, name: "_close", scope: !648, file: !642, line: 208, baseType: !683, size: 32, offset: 384)
!683 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !684, size: 32)
!684 = !DISubroutineType(types: !685)
!685 = !{!13, !640, !219}
!686 = !DIDerivedType(tag: DW_TAG_member, name: "_ub", scope: !648, file: !642, line: 211, baseType: !658, size: 64, offset: 416)
!687 = !DIDerivedType(tag: DW_TAG_member, name: "_up", scope: !648, file: !642, line: 212, baseType: !651, size: 32, offset: 480)
!688 = !DIDerivedType(tag: DW_TAG_member, name: "_ur", scope: !648, file: !642, line: 213, baseType: !13, size: 32, offset: 512)
!689 = !DIDerivedType(tag: DW_TAG_member, name: "_ubuf", scope: !648, file: !642, line: 216, baseType: !690, size: 24, offset: 544)
!690 = !DICompositeType(tag: DW_TAG_array_type, baseType: !134, size: 24, elements: !691)
!691 = !{!692}
!692 = !DISubrange(count: 3)
!693 = !DIDerivedType(tag: DW_TAG_member, name: "_nbuf", scope: !648, file: !642, line: 217, baseType: !694, size: 8, offset: 568)
!694 = !DICompositeType(tag: DW_TAG_array_type, baseType: !134, size: 8, elements: !207)
!695 = !DIDerivedType(tag: DW_TAG_member, name: "_lb", scope: !648, file: !642, line: 220, baseType: !658, size: 64, offset: 576)
!696 = !DIDerivedType(tag: DW_TAG_member, name: "_blksize", scope: !648, file: !642, line: 223, baseType: !13, size: 32, offset: 640)
!697 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !648, file: !642, line: 224, baseType: !698, size: 32, offset: 672)
!698 = !DIDerivedType(tag: DW_TAG_typedef, name: "_off_t", file: !680, line: 46, baseType: !681)
!699 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !648, file: !642, line: 231, baseType: !700, size: 32, offset: 704)
!700 = !DIDerivedType(tag: DW_TAG_typedef, name: "_flock_t", file: !642, line: 35, baseType: !701)
!701 = !DIDerivedType(tag: DW_TAG_typedef, name: "_LOCK_T", file: !702, line: 34, baseType: !703)
!702 = !DIFile(filename: "gcc-arm-none-eabi-10.3-2021.10/bin/../lib/gcc/arm-none-eabi/10.3.1/../../../../arm-none-eabi/include/sys/lock.h", directory: "/home/mjshen/RTOSExploration")
!703 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !704, size: 32)
!704 = !DICompositeType(tag: DW_TAG_structure_type, name: "__lock", file: !702, line: 33, flags: DIFlagFwdDecl)
!705 = !DIDerivedType(tag: DW_TAG_member, name: "_mbstate", scope: !648, file: !642, line: 233, baseType: !706, size: 64, offset: 736)
!706 = !DIDerivedType(tag: DW_TAG_typedef, name: "_mbstate_t", file: !680, line: 170, baseType: !707)
!707 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !680, line: 162, size: 64, elements: !708)
!708 = !{!709, !710}
!709 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !707, file: !680, line: 164, baseType: !13, size: 32)
!710 = !DIDerivedType(tag: DW_TAG_member, name: "__value", scope: !707, file: !680, line: 169, baseType: !711, size: 32, offset: 32)
!711 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !707, file: !680, line: 165, size: 32, elements: !712)
!712 = !{!713, !716}
!713 = !DIDerivedType(tag: DW_TAG_member, name: "__wch", scope: !711, file: !680, line: 167, baseType: !714, size: 32)
!714 = !DIDerivedType(tag: DW_TAG_typedef, name: "wint_t", file: !715, line: 116, baseType: !13)
!715 = !DIFile(filename: "/usr/lib/llvm-14/lib/clang/14.0.6/include/stddef.h", directory: "")
!716 = !DIDerivedType(tag: DW_TAG_member, name: "__wchb", scope: !711, file: !680, line: 168, baseType: !717, size: 32)
!717 = !DICompositeType(tag: DW_TAG_array_type, baseType: !134, size: 32, elements: !306)
!718 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !648, file: !642, line: 234, baseType: !13, size: 32, offset: 800)
!719 = !DIDerivedType(tag: DW_TAG_member, name: "_stdout", scope: !641, file: !642, line: 386, baseType: !646, size: 32, offset: 64)
!720 = !DIDerivedType(tag: DW_TAG_member, name: "_stderr", scope: !641, file: !642, line: 386, baseType: !646, size: 32, offset: 96)
!721 = !DIDerivedType(tag: DW_TAG_member, name: "_inc", scope: !641, file: !642, line: 388, baseType: !13, size: 32, offset: 128)
!722 = !DIDerivedType(tag: DW_TAG_member, name: "_emergency", scope: !641, file: !642, line: 390, baseType: !639, size: 32, offset: 160)
!723 = !DIDerivedType(tag: DW_TAG_member, name: "__sdidinit", scope: !641, file: !642, line: 392, baseType: !13, size: 32, offset: 192)
!724 = !DIDerivedType(tag: DW_TAG_member, name: "_unspecified_locale_info", scope: !641, file: !642, line: 394, baseType: !13, size: 32, offset: 224)
!725 = !DIDerivedType(tag: DW_TAG_member, name: "_locale", scope: !641, file: !642, line: 395, baseType: !726, size: 32, offset: 256)
!726 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !727, size: 32)
!727 = !DICompositeType(tag: DW_TAG_structure_type, name: "__locale_t", file: !642, line: 45, flags: DIFlagFwdDecl)
!728 = !DIDerivedType(tag: DW_TAG_member, name: "_mp", scope: !641, file: !642, line: 397, baseType: !729, size: 32, offset: 288)
!729 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !730, size: 32)
!730 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_mprec", file: !642, line: 349, size: 128, elements: !731)
!731 = !{!732, !745, !746, !747}
!732 = !DIDerivedType(tag: DW_TAG_member, name: "_result", scope: !730, file: !642, line: 352, baseType: !733, size: 32)
!733 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !734, size: 32)
!734 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_Bigint", file: !642, line: 52, size: 192, elements: !735)
!735 = !{!736, !737, !738, !739, !740, !741}
!736 = !DIDerivedType(tag: DW_TAG_member, name: "_next", scope: !734, file: !642, line: 54, baseType: !733, size: 32)
!737 = !DIDerivedType(tag: DW_TAG_member, name: "_k", scope: !734, file: !642, line: 55, baseType: !13, size: 32, offset: 32)
!738 = !DIDerivedType(tag: DW_TAG_member, name: "_maxwds", scope: !734, file: !642, line: 55, baseType: !13, size: 32, offset: 64)
!739 = !DIDerivedType(tag: DW_TAG_member, name: "_sign", scope: !734, file: !642, line: 55, baseType: !13, size: 32, offset: 96)
!740 = !DIDerivedType(tag: DW_TAG_member, name: "_wds", scope: !734, file: !642, line: 55, baseType: !13, size: 32, offset: 128)
!741 = !DIDerivedType(tag: DW_TAG_member, name: "_x", scope: !734, file: !642, line: 56, baseType: !742, size: 32, offset: 160)
!742 = !DICompositeType(tag: DW_TAG_array_type, baseType: !743, size: 32, elements: !207)
!743 = !DIDerivedType(tag: DW_TAG_typedef, name: "__ULong", file: !642, line: 22, baseType: !744)
!744 = !DIBasicType(name: "unsigned long", size: 32, encoding: DW_ATE_unsigned)
!745 = !DIDerivedType(tag: DW_TAG_member, name: "_result_k", scope: !730, file: !642, line: 353, baseType: !13, size: 32, offset: 32)
!746 = !DIDerivedType(tag: DW_TAG_member, name: "_p5s", scope: !730, file: !642, line: 354, baseType: !733, size: 32, offset: 64)
!747 = !DIDerivedType(tag: DW_TAG_member, name: "_freelist", scope: !730, file: !642, line: 355, baseType: !748, size: 32, offset: 96)
!748 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !733, size: 32)
!749 = !DIDerivedType(tag: DW_TAG_member, name: "__cleanup", scope: !641, file: !642, line: 399, baseType: !750, size: 32, offset: 320)
!750 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !751, size: 32)
!751 = !DISubroutineType(types: !752)
!752 = !{null, !640}
!753 = !DIDerivedType(tag: DW_TAG_member, name: "_gamma_signgam", scope: !641, file: !642, line: 401, baseType: !13, size: 32, offset: 352)
!754 = !DIDerivedType(tag: DW_TAG_member, name: "_cvtlen", scope: !641, file: !642, line: 404, baseType: !13, size: 32, offset: 384)
!755 = !DIDerivedType(tag: DW_TAG_member, name: "_cvtbuf", scope: !641, file: !642, line: 405, baseType: !639, size: 32, offset: 416)
!756 = !DIDerivedType(tag: DW_TAG_member, name: "_r48", scope: !641, file: !642, line: 407, baseType: !757, size: 32, offset: 448)
!757 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !758, size: 32)
!758 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_rand48", file: !642, line: 324, size: 192, elements: !759)
!759 = !{!760, !762, !763, !764}
!760 = !DIDerivedType(tag: DW_TAG_member, name: "_seed", scope: !758, file: !642, line: 325, baseType: !761, size: 48)
!761 = !DICompositeType(tag: DW_TAG_array_type, baseType: !132, size: 48, elements: !691)
!762 = !DIDerivedType(tag: DW_TAG_member, name: "_mult", scope: !758, file: !642, line: 326, baseType: !761, size: 48, offset: 48)
!763 = !DIDerivedType(tag: DW_TAG_member, name: "_add", scope: !758, file: !642, line: 327, baseType: !132, size: 16, offset: 96)
!764 = !DIDerivedType(tag: DW_TAG_member, name: "_rand_next", scope: !758, file: !642, line: 330, baseType: !765, size: 64, offset: 128)
!765 = !DIBasicType(name: "unsigned long long", size: 64, encoding: DW_ATE_unsigned)
!766 = !DIDerivedType(tag: DW_TAG_member, name: "_localtime_buf", scope: !641, file: !642, line: 408, baseType: !767, size: 32, offset: 480)
!767 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !768, size: 32)
!768 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__tm", file: !642, line: 60, size: 288, elements: !769)
!769 = !{!770, !771, !772, !773, !774, !775, !776, !777, !778}
!770 = !DIDerivedType(tag: DW_TAG_member, name: "__tm_sec", scope: !768, file: !642, line: 62, baseType: !13, size: 32)
!771 = !DIDerivedType(tag: DW_TAG_member, name: "__tm_min", scope: !768, file: !642, line: 63, baseType: !13, size: 32, offset: 32)
!772 = !DIDerivedType(tag: DW_TAG_member, name: "__tm_hour", scope: !768, file: !642, line: 64, baseType: !13, size: 32, offset: 64)
!773 = !DIDerivedType(tag: DW_TAG_member, name: "__tm_mday", scope: !768, file: !642, line: 65, baseType: !13, size: 32, offset: 96)
!774 = !DIDerivedType(tag: DW_TAG_member, name: "__tm_mon", scope: !768, file: !642, line: 66, baseType: !13, size: 32, offset: 128)
!775 = !DIDerivedType(tag: DW_TAG_member, name: "__tm_year", scope: !768, file: !642, line: 67, baseType: !13, size: 32, offset: 160)
!776 = !DIDerivedType(tag: DW_TAG_member, name: "__tm_wday", scope: !768, file: !642, line: 68, baseType: !13, size: 32, offset: 192)
!777 = !DIDerivedType(tag: DW_TAG_member, name: "__tm_yday", scope: !768, file: !642, line: 69, baseType: !13, size: 32, offset: 224)
!778 = !DIDerivedType(tag: DW_TAG_member, name: "__tm_isdst", scope: !768, file: !642, line: 70, baseType: !13, size: 32, offset: 256)
!779 = !DIDerivedType(tag: DW_TAG_member, name: "_asctime_buf", scope: !641, file: !642, line: 409, baseType: !639, size: 32, offset: 512)
!780 = !DIDerivedType(tag: DW_TAG_member, name: "_sig_func", scope: !641, file: !642, line: 412, baseType: !781, size: 32, offset: 544)
!781 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !782, size: 32)
!782 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !783, size: 32)
!783 = !DISubroutineType(types: !784)
!784 = !{null, !13}
!785 = !DIDerivedType(tag: DW_TAG_member, name: "_atexit", scope: !641, file: !642, line: 416, baseType: !786, size: 32, offset: 576)
!786 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !787, size: 32)
!787 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_atexit", file: !642, line: 90, size: 1120, elements: !788)
!788 = !{!789, !790, !791, !795}
!789 = !DIDerivedType(tag: DW_TAG_member, name: "_next", scope: !787, file: !642, line: 91, baseType: !786, size: 32)
!790 = !DIDerivedType(tag: DW_TAG_member, name: "_ind", scope: !787, file: !642, line: 92, baseType: !13, size: 32, offset: 32)
!791 = !DIDerivedType(tag: DW_TAG_member, name: "_fns", scope: !787, file: !642, line: 93, baseType: !792, size: 1024, offset: 64)
!792 = !DICompositeType(tag: DW_TAG_array_type, baseType: !74, size: 1024, elements: !793)
!793 = !{!794}
!794 = !DISubrange(count: 32)
!795 = !DIDerivedType(tag: DW_TAG_member, name: "_on_exit_args_ptr", scope: !787, file: !642, line: 94, baseType: !796, size: 32, offset: 1088)
!796 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !797, size: 32)
!797 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_on_exit_args", file: !642, line: 79, size: 2112, elements: !798)
!798 = !{!799, !801, !802, !803}
!799 = !DIDerivedType(tag: DW_TAG_member, name: "_fnargs", scope: !797, file: !642, line: 80, baseType: !800, size: 1024)
!800 = !DICompositeType(tag: DW_TAG_array_type, baseType: !219, size: 1024, elements: !793)
!801 = !DIDerivedType(tag: DW_TAG_member, name: "_dso_handle", scope: !797, file: !642, line: 81, baseType: !800, size: 1024, offset: 1024)
!802 = !DIDerivedType(tag: DW_TAG_member, name: "_fntypes", scope: !797, file: !642, line: 83, baseType: !743, size: 32, offset: 2048)
!803 = !DIDerivedType(tag: DW_TAG_member, name: "_is_cxa", scope: !797, file: !642, line: 86, baseType: !743, size: 32, offset: 2080)
!804 = !DIDerivedType(tag: DW_TAG_member, name: "_atexit0", scope: !641, file: !642, line: 417, baseType: !787, size: 1120, offset: 608)
!805 = !DIDerivedType(tag: DW_TAG_member, name: "__sglue", scope: !641, file: !642, line: 420, baseType: !806, size: 96, offset: 1728)
!806 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_glue", file: !642, line: 296, size: 96, elements: !807)
!807 = !{!808, !810, !811}
!808 = !DIDerivedType(tag: DW_TAG_member, name: "_next", scope: !806, file: !642, line: 298, baseType: !809, size: 32)
!809 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !806, size: 32)
!810 = !DIDerivedType(tag: DW_TAG_member, name: "_niobs", scope: !806, file: !642, line: 299, baseType: !13, size: 32, offset: 32)
!811 = !DIDerivedType(tag: DW_TAG_member, name: "_iobs", scope: !806, file: !642, line: 300, baseType: !646, size: 32, offset: 64)
!812 = !DIDerivedType(tag: DW_TAG_member, name: "__sf", scope: !641, file: !642, line: 421, baseType: !646, size: 32, offset: 1824)
!813 = !DIDerivedType(tag: DW_TAG_member, name: "_misc", scope: !641, file: !642, line: 422, baseType: !814, size: 32, offset: 1856)
!814 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !815, size: 32)
!815 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_misc_reent", file: !642, line: 359, size: 640, elements: !816)
!816 = !{!817, !818, !819, !820, !821, !823, !824, !825, !826, !827, !828}
!817 = !DIDerivedType(tag: DW_TAG_member, name: "_strtok_last", scope: !815, file: !642, line: 362, baseType: !639, size: 32)
!818 = !DIDerivedType(tag: DW_TAG_member, name: "_mblen_state", scope: !815, file: !642, line: 363, baseType: !706, size: 64, offset: 32)
!819 = !DIDerivedType(tag: DW_TAG_member, name: "_wctomb_state", scope: !815, file: !642, line: 364, baseType: !706, size: 64, offset: 96)
!820 = !DIDerivedType(tag: DW_TAG_member, name: "_mbtowc_state", scope: !815, file: !642, line: 365, baseType: !706, size: 64, offset: 160)
!821 = !DIDerivedType(tag: DW_TAG_member, name: "_l64a_buf", scope: !815, file: !642, line: 366, baseType: !822, size: 64, offset: 224)
!822 = !DICompositeType(tag: DW_TAG_array_type, baseType: !516, size: 64, elements: !247)
!823 = !DIDerivedType(tag: DW_TAG_member, name: "_getdate_err", scope: !815, file: !642, line: 367, baseType: !13, size: 32, offset: 288)
!824 = !DIDerivedType(tag: DW_TAG_member, name: "_mbrlen_state", scope: !815, file: !642, line: 368, baseType: !706, size: 64, offset: 320)
!825 = !DIDerivedType(tag: DW_TAG_member, name: "_mbrtowc_state", scope: !815, file: !642, line: 369, baseType: !706, size: 64, offset: 384)
!826 = !DIDerivedType(tag: DW_TAG_member, name: "_mbsrtowcs_state", scope: !815, file: !642, line: 370, baseType: !706, size: 64, offset: 448)
!827 = !DIDerivedType(tag: DW_TAG_member, name: "_wcrtomb_state", scope: !815, file: !642, line: 371, baseType: !706, size: 64, offset: 512)
!828 = !DIDerivedType(tag: DW_TAG_member, name: "_wcsrtombs_state", scope: !815, file: !642, line: 372, baseType: !706, size: 64, offset: 576)
!829 = !DIDerivedType(tag: DW_TAG_member, name: "_signal_buf", scope: !641, file: !642, line: 423, baseType: !639, size: 32, offset: 1888)
!830 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !715, line: 46, baseType: !7)
!831 = distinct !DICompileUnit(language: DW_LANG_C99, file: !832, producer: "Ubuntu clang version 14.0.6", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !833, globals: !834, splitDebugInlining: false, nameTableKind: None)
!832 = !DIFile(filename: "syscalls.c", directory: "/home/mjshen/RTOSExploration/Embedded-GUI-for-MT2523/project/linkit7697_hdk/hal_examples/pwm_generate_waveform/GCC")
!833 = !{!639, !637}
!834 = !{!631}
!835 = !{!836, !837, !838, !839}
!836 = !DILocalVariable(name: "r", arg: 1, scope: !633, file: !634, line: 63, type: !640)
!837 = !DILocalVariable(name: "nbytes", arg: 2, scope: !633, file: !634, line: 63, type: !830)
!838 = !DILocalVariable(name: "prev_heap_end", scope: !633, file: !634, line: 67, type: !639)
!839 = !DILocalVariable(name: "stack", scope: !633, file: !634, line: 68, type: !639)
!840 = !DIGlobalVariableExpression(var: !841, expr: !DIExpression())
!841 = distinct !DIGlobalVariable(name: "build_date_time_str", scope: !842, file: !847, line: 4, type: !856, isLocal: false, isDefinition: true)
!842 = distinct !DICompileUnit(language: DW_LANG_C99, file: !843, producer: "Ubuntu clang version 14.0.6", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, globals: !844, splitDebugInlining: false, nameTableKind: None)
!843 = !DIFile(filename: "/home/mjshen/RTOSExploration/Embedded-GUI-for-MT2523/project/linkit7697_hdk/hal_examples/pwm_generate_waveform/GCC/build/middleware/MTK/verno/verno.c", directory: "/home/mjshen/RTOSExploration/Embedded-GUI-for-MT2523/project/linkit7697_hdk/hal_examples/pwm_generate_waveform/GCC")
!844 = !{!840, !845, !851}
!845 = !DIGlobalVariableExpression(var: !846, expr: !DIExpression())
!846 = distinct !DIGlobalVariable(name: "sw_verno_str", scope: !842, file: !847, line: 5, type: !848, isLocal: false, isDefinition: true)
!847 = !DIFile(filename: "build/middleware/MTK/verno/verno.c", directory: "/home/mjshen/RTOSExploration/Embedded-GUI-for-MT2523/project/linkit7697_hdk/hal_examples/pwm_generate_waveform/GCC")
!848 = !DICompositeType(tag: DW_TAG_array_type, baseType: !516, size: 88, elements: !849)
!849 = !{!850}
!850 = !DISubrange(count: 11)
!851 = !DIGlobalVariableExpression(var: !852, expr: !DIExpression())
!852 = distinct !DIGlobalVariable(name: "hw_verno_str", scope: !842, file: !847, line: 6, type: !853, isLocal: false, isDefinition: true)
!853 = !DICompositeType(tag: DW_TAG_array_type, baseType: !516, size: 120, elements: !854)
!854 = !{!855}
!855 = !DISubrange(count: 15)
!856 = !DICompositeType(tag: DW_TAG_array_type, baseType: !516, size: 248, elements: !857)
!857 = !{!858}
!858 = !DISubrange(count: 31)
!859 = distinct !DICompileUnit(language: DW_LANG_C99, file: !860, producer: "Ubuntu clang version 14.0.6", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !861, retainedTypes: !884, splitDebugInlining: false, nameTableKind: None)
!860 = !DIFile(filename: "../../../../../driver/chip/mt7687/src/common/low_hal_pwm.c", directory: "/home/mjshen/RTOSExploration/Embedded-GUI-for-MT2523/project/linkit7697_hdk/hal_examples/pwm_generate_waveform/GCC")
!861 = !{!862, !867, !873, !878}
!862 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "_ENUM_HAL_RET_T", file: !863, line: 365, baseType: !134, size: 8, elements: !864)
!863 = !DIFile(filename: "../../../../../driver/CMSIS/Device/MTK/mt7687/Include/mt7687_cm4_hw_memmap.h", directory: "/home/mjshen/RTOSExploration/Embedded-GUI-for-MT2523/project/linkit7697_hdk/hal_examples/pwm_generate_waveform/GCC")
!864 = !{!865, !866}
!865 = !DIEnumerator(name: "HAL_RET_SUCCESS", value: 0)
!866 = !DIEnumerator(name: "HAL_RET_FAIL", value: 1)
!867 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "_ENUM_PWM_CLK_T", file: !863, line: 371, baseType: !134, size: 8, elements: !868)
!868 = !{!869, !870, !871, !872}
!869 = !DIEnumerator(name: "PWM_CLK_32K", value: 0)
!870 = !DIEnumerator(name: "PWM_CLK_2M", value: 1)
!871 = !DIEnumerator(name: "PWM_CLK_XTAL", value: 2)
!872 = !DIEnumerator(name: "PWM_CLK_NUM", value: 3)
!873 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "_ENUM_PWM_STATE_T", file: !863, line: 378, baseType: !134, size: 8, elements: !874)
!874 = !{!875, !876, !877}
!875 = !DIEnumerator(name: "PWM_S0", value: 0)
!876 = !DIEnumerator(name: "PWM_S1", value: 1)
!877 = !DIEnumerator(name: "PWM_STATE_NUM", value: 2)
!878 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "_XTAL_FREQ_T", file: !863, line: 166, baseType: !7, size: 32, elements: !879)
!879 = !{!880, !881, !882, !883}
!880 = !DIEnumerator(name: "XTAL_FREQ_20M", value: 0)
!881 = !DIEnumerator(name: "XTAL_FREQ_40M", value: 1)
!882 = !DIEnumerator(name: "XTAL_FREQ_26M", value: 2)
!883 = !DIEnumerator(name: "XTAL_FREQ_52M", value: 3)
!884 = !{!80, !88, !885, !886, !893, !895}
!885 = !DIDerivedType(tag: DW_TAG_typedef, name: "PUINT8", file: !6, line: 84, baseType: !651)
!886 = !DIDerivedType(tag: DW_TAG_typedef, name: "P_IOT_PWM_TypeDef", file: !863, line: 188, baseType: !887)
!887 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !888, size: 32)
!888 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !863, line: 184, size: 96, elements: !889)
!889 = !{!890, !891, !892}
!890 = !DIDerivedType(tag: DW_TAG_member, name: "PWM_CTRL", scope: !888, file: !863, line: 185, baseType: !79, size: 32)
!891 = !DIDerivedType(tag: DW_TAG_member, name: "PWM_PARAM_S0", scope: !888, file: !863, line: 186, baseType: !79, size: 32, offset: 32)
!892 = !DIDerivedType(tag: DW_TAG_member, name: "PWM_PARAM_S1", scope: !888, file: !863, line: 187, baseType: !79, size: 32, offset: 64)
!893 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !894, size: 32)
!894 = !DIDerivedType(tag: DW_TAG_typedef, name: "IOT_PWM_TypeDef", file: !863, line: 188, baseType: !888)
!895 = !DIDerivedType(tag: DW_TAG_typedef, name: "ENUM_PWM_CLK_T", file: !863, line: 376, baseType: !867)
!896 = distinct !DICompileUnit(language: DW_LANG_C99, file: !897, producer: "Ubuntu clang version 14.0.6", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !898, retainedTypes: !904, splitDebugInlining: false, nameTableKind: None)
!897 = !DIFile(filename: "../../../../../driver/chip/mt7687/src/common/hal_gpio_7687.c", directory: "/home/mjshen/RTOSExploration/Embedded-GUI-for-MT2523/project/linkit7697_hdk/hal_examples/pwm_generate_waveform/GCC")
!898 = !{!899}
!899 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !900, line: 1209, baseType: !7, size: 32, elements: !901)
!900 = !DIFile(filename: "../../../../../driver/chip/mt7687/src/common/include/hal_gpio_7687.h", directory: "/home/mjshen/RTOSExploration/Embedded-GUI-for-MT2523/project/linkit7697_hdk/hal_examples/pwm_generate_waveform/GCC")
!901 = !{!902, !903}
!902 = !DIEnumerator(name: "ePAD_CONTROL_BY_N9", value: 0)
!903 = !DIEnumerator(name: "ePAD_CONTROL_BY_CM4", value: 1)
!904 = !{!58, !60}
!905 = distinct !DICompileUnit(language: DW_LANG_C99, file: !906, producer: "Ubuntu clang version 14.0.6", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !907, retainedTypes: !985, splitDebugInlining: false, nameTableKind: None)
!906 = !DIFile(filename: "../../../../../driver/chip/mt7687/src/common/hal_pinmux.c", directory: "/home/mjshen/RTOSExploration/Embedded-GUI-for-MT2523/project/linkit7697_hdk/hal_examples/pwm_generate_waveform/GCC")
!907 = !{!908}
!908 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !909, line: 150, baseType: !7, size: 32, elements: !910)
!909 = !DIFile(filename: "../../../../../driver/chip/mt7687/src/common/include/hal_pinmux.h", directory: "/home/mjshen/RTOSExploration/Embedded-GUI-for-MT2523/project/linkit7697_hdk/hal_examples/pwm_generate_waveform/GCC")
!910 = !{!911, !912, !913, !914, !915, !916, !917, !918, !919, !920, !921, !922, !923, !924, !925, !926, !927, !928, !929, !930, !931, !932, !933, !934, !935, !936, !937, !938, !939, !940, !941, !942, !943, !944, !945, !946, !947, !948, !949, !950, !951, !952, !953, !954, !955, !956, !957, !958, !959, !960, !961, !962, !963, !964, !965, !966, !967, !968, !969, !970, !971, !972, !973, !974, !975, !976, !977, !978, !979, !980, !981, !982, !983, !984}
!911 = !DIEnumerator(name: "ePAD_ANTSEL0", value: 0)
!912 = !DIEnumerator(name: "ePAD_ANTSEL1", value: 1)
!913 = !DIEnumerator(name: "ePAD_ANTSEL2", value: 2)
!914 = !DIEnumerator(name: "ePAD_ANTSEL3", value: 3)
!915 = !DIEnumerator(name: "ePAD_ANTSEL4", value: 4)
!916 = !DIEnumerator(name: "ePAD_ANTSEL5", value: 5)
!917 = !DIEnumerator(name: "ePAD_ANTSEL6", value: 6)
!918 = !DIEnumerator(name: "ePAD_ANTSEL7", value: 7)
!919 = !DIEnumerator(name: "ePAD_IN_GPIO8", value: 8)
!920 = !DIEnumerator(name: "ePAD_IN_GPIO9", value: 9)
!921 = !DIEnumerator(name: "ePAD_IN_GPIO10", value: 10)
!922 = !DIEnumerator(name: "ePAD_IN_GPIO11", value: 11)
!923 = !DIEnumerator(name: "ePAD_IN_GPIO12", value: 12)
!924 = !DIEnumerator(name: "ePAD_IN_GPIO13", value: 13)
!925 = !DIEnumerator(name: "ePAD_IN_GPIO14", value: 14)
!926 = !DIEnumerator(name: "ePAD_IN_GPIO15", value: 15)
!927 = !DIEnumerator(name: "ePAD_IN_GPIO16", value: 16)
!928 = !DIEnumerator(name: "ePAD_IN_GPIO17", value: 17)
!929 = !DIEnumerator(name: "ePAD_IN_GPIO18", value: 18)
!930 = !DIEnumerator(name: "ePAD_IN_GPIO19", value: 19)
!931 = !DIEnumerator(name: "ePAD_IN_GPIO20", value: 20)
!932 = !DIEnumerator(name: "ePAD_IN_GPIO21", value: 21)
!933 = !DIEnumerator(name: "ePAD_IN_GPIO22", value: 22)
!934 = !DIEnumerator(name: "ePAD_IN_UART0_TXD", value: 23)
!935 = !DIEnumerator(name: "ePAD_PERST_N", value: 24)
!936 = !DIEnumerator(name: "ePAD_WAKE_N", value: 25)
!937 = !DIEnumerator(name: "ePAD_CLK_REQ_N", value: 26)
!938 = !DIEnumerator(name: "ePAD_SDIO_CLK", value: 27)
!939 = !DIEnumerator(name: "ePAD_SDIO_CMD", value: 28)
!940 = !DIEnumerator(name: "ePAD_SDIO_DAT3", value: 29)
!941 = !DIEnumerator(name: "ePAD_SDIO_DAT2", value: 30)
!942 = !DIEnumerator(name: "ePAD_SDIO_DAT1", value: 31)
!943 = !DIEnumerator(name: "ePAD_SDIO_DAT0", value: 32)
!944 = !DIEnumerator(name: "ePAD_GPIO0", value: 33)
!945 = !DIEnumerator(name: "ePAD_GPIO1", value: 34)
!946 = !DIEnumerator(name: "ePAD_UART_DBG", value: 35)
!947 = !DIEnumerator(name: "ePAD_UART_RX", value: 36)
!948 = !DIEnumerator(name: "ePAD_UART_TX", value: 37)
!949 = !DIEnumerator(name: "ePAD_UART_RTS", value: 38)
!950 = !DIEnumerator(name: "ePAD_UART_CTS", value: 39)
!951 = !DIEnumerator(name: "ePAD_IN_GPIO44", value: 40)
!952 = !DIEnumerator(name: "ePAD_IN_GPIO45", value: 41)
!953 = !DIEnumerator(name: "ePAD_IN_GPIO46", value: 42)
!954 = !DIEnumerator(name: "ePAD_IN_GPIO47", value: 43)
!955 = !DIEnumerator(name: "ePAD_IN_GPIO48", value: 44)
!956 = !DIEnumerator(name: "ePAD_IN_GPIO49", value: 45)
!957 = !DIEnumerator(name: "ePAD_IN_GPIO50", value: 46)
!958 = !DIEnumerator(name: "ePAD_IN_GPIO51", value: 47)
!959 = !DIEnumerator(name: "ePAD_IN_GPIO52", value: 48)
!960 = !DIEnumerator(name: "ePAD_IN_GPIO53", value: 49)
!961 = !DIEnumerator(name: "ePAD_IN_GPIO54", value: 50)
!962 = !DIEnumerator(name: "ePAD_IN_PWM2", value: 51)
!963 = !DIEnumerator(name: "ePAD_IN_PWM3", value: 52)
!964 = !DIEnumerator(name: "ePAD_IN_PWM4", value: 53)
!965 = !DIEnumerator(name: "ePAD_IN_PWM5", value: 54)
!966 = !DIEnumerator(name: "ePAD_IN_PWM6", value: 55)
!967 = !DIEnumerator(name: "ePAD_IN_PWM7", value: 56)
!968 = !DIEnumerator(name: "ePAD_WF_RF_DIS_B", value: 57)
!969 = !DIEnumerator(name: "ePAD_BT_RF_DIS_B", value: 58)
!970 = !DIEnumerator(name: "ePAD_WF_LED_B", value: 59)
!971 = !DIEnumerator(name: "ePAD_BT_LED_B", value: 60)
!972 = !DIEnumerator(name: "ePAD_IN_ADC4", value: 61)
!973 = !DIEnumerator(name: "ePAD_IN_ADC5", value: 62)
!974 = !DIEnumerator(name: "ePAD_IN_ADC6", value: 63)
!975 = !DIEnumerator(name: "ePAD_IN_ADC7", value: 64)
!976 = !DIEnumerator(name: "ePAD_IN_ADC8", value: 65)
!977 = !DIEnumerator(name: "ePAD_IN_ADC9", value: 66)
!978 = !DIEnumerator(name: "ePAD_IN_ADC10", value: 67)
!979 = !DIEnumerator(name: "ePAD_IN_ADC11", value: 68)
!980 = !DIEnumerator(name: "ePAD_IN_ADC12", value: 69)
!981 = !DIEnumerator(name: "ePAD_IN_ADC13", value: 70)
!982 = !DIEnumerator(name: "ePAD_IN_ADC14", value: 71)
!983 = !DIEnumerator(name: "ePAD_IN_ADC15", value: 72)
!984 = !DIEnumerator(name: "ePAD_NUM", value: 73)
!985 = !{!58, !80}
!986 = distinct !DICompileUnit(language: DW_LANG_C99, file: !987, producer: "Ubuntu clang version 14.0.6", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !988, splitDebugInlining: false, nameTableKind: None)
!987 = !DIFile(filename: "../../../../../driver/chip/mt7687/src/common/nvic.c", directory: "/home/mjshen/RTOSExploration/Embedded-GUI-for-MT2523/project/linkit7697_hdk/hal_examples/pwm_generate_waveform/GCC")
!988 = !{!989, !1014}
!989 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !990, size: 32)
!990 = !DIDerivedType(tag: DW_TAG_typedef, name: "SCB_Type", file: !242, line: 418, baseType: !991)
!991 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !242, line: 395, size: 1120, elements: !992)
!992 = !{!993, !994, !995, !996, !997, !998, !999, !1000, !1001, !1002, !1003, !1004, !1005, !1006, !1007, !1008, !1009, !1010, !1011, !1012, !1013}
!993 = !DIDerivedType(tag: DW_TAG_member, name: "CPUID", scope: !991, file: !242, line: 397, baseType: !281, size: 32)
!994 = !DIDerivedType(tag: DW_TAG_member, name: "ICSR", scope: !991, file: !242, line: 398, baseType: !91, size: 32, offset: 32)
!995 = !DIDerivedType(tag: DW_TAG_member, name: "VTOR", scope: !991, file: !242, line: 399, baseType: !91, size: 32, offset: 64)
!996 = !DIDerivedType(tag: DW_TAG_member, name: "AIRCR", scope: !991, file: !242, line: 400, baseType: !91, size: 32, offset: 96)
!997 = !DIDerivedType(tag: DW_TAG_member, name: "SCR", scope: !991, file: !242, line: 401, baseType: !91, size: 32, offset: 128)
!998 = !DIDerivedType(tag: DW_TAG_member, name: "CCR", scope: !991, file: !242, line: 402, baseType: !91, size: 32, offset: 160)
!999 = !DIDerivedType(tag: DW_TAG_member, name: "SHP", scope: !991, file: !242, line: 403, baseType: !288, size: 96, offset: 192)
!1000 = !DIDerivedType(tag: DW_TAG_member, name: "SHCSR", scope: !991, file: !242, line: 404, baseType: !91, size: 32, offset: 288)
!1001 = !DIDerivedType(tag: DW_TAG_member, name: "CFSR", scope: !991, file: !242, line: 405, baseType: !91, size: 32, offset: 320)
!1002 = !DIDerivedType(tag: DW_TAG_member, name: "HFSR", scope: !991, file: !242, line: 406, baseType: !91, size: 32, offset: 352)
!1003 = !DIDerivedType(tag: DW_TAG_member, name: "DFSR", scope: !991, file: !242, line: 407, baseType: !91, size: 32, offset: 384)
!1004 = !DIDerivedType(tag: DW_TAG_member, name: "MMFAR", scope: !991, file: !242, line: 408, baseType: !91, size: 32, offset: 416)
!1005 = !DIDerivedType(tag: DW_TAG_member, name: "BFAR", scope: !991, file: !242, line: 409, baseType: !91, size: 32, offset: 448)
!1006 = !DIDerivedType(tag: DW_TAG_member, name: "AFSR", scope: !991, file: !242, line: 410, baseType: !91, size: 32, offset: 480)
!1007 = !DIDerivedType(tag: DW_TAG_member, name: "PFR", scope: !991, file: !242, line: 411, baseType: !299, size: 64, offset: 512)
!1008 = !DIDerivedType(tag: DW_TAG_member, name: "DFR", scope: !991, file: !242, line: 412, baseType: !281, size: 32, offset: 576)
!1009 = !DIDerivedType(tag: DW_TAG_member, name: "ADR", scope: !991, file: !242, line: 413, baseType: !281, size: 32, offset: 608)
!1010 = !DIDerivedType(tag: DW_TAG_member, name: "MMFR", scope: !991, file: !242, line: 414, baseType: !305, size: 128, offset: 640)
!1011 = !DIDerivedType(tag: DW_TAG_member, name: "ISAR", scope: !991, file: !242, line: 415, baseType: !309, size: 160, offset: 768)
!1012 = !DIDerivedType(tag: DW_TAG_member, name: "RESERVED0", scope: !991, file: !242, line: 416, baseType: !313, size: 160, offset: 928)
!1013 = !DIDerivedType(tag: DW_TAG_member, name: "CPACR", scope: !991, file: !242, line: 417, baseType: !91, size: 32, offset: 1088)
!1014 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1015, size: 32)
!1015 = !DIDerivedType(tag: DW_TAG_typedef, name: "NVIC_Type", file: !242, line: 378, baseType: !1016)
!1016 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !242, line: 363, size: 28704, elements: !1017)
!1017 = !{!1018, !1019, !1020, !1021, !1022, !1023, !1024, !1025, !1026, !1027, !1028, !1029, !1030}
!1018 = !DIDerivedType(tag: DW_TAG_member, name: "ISER", scope: !1016, file: !242, line: 365, baseType: !246, size: 256)
!1019 = !DIDerivedType(tag: DW_TAG_member, name: "RESERVED0", scope: !1016, file: !242, line: 366, baseType: !250, size: 768, offset: 256)
!1020 = !DIDerivedType(tag: DW_TAG_member, name: "ICER", scope: !1016, file: !242, line: 367, baseType: !246, size: 256, offset: 1024)
!1021 = !DIDerivedType(tag: DW_TAG_member, name: "RSERVED1", scope: !1016, file: !242, line: 368, baseType: !250, size: 768, offset: 1280)
!1022 = !DIDerivedType(tag: DW_TAG_member, name: "ISPR", scope: !1016, file: !242, line: 369, baseType: !246, size: 256, offset: 2048)
!1023 = !DIDerivedType(tag: DW_TAG_member, name: "RESERVED2", scope: !1016, file: !242, line: 370, baseType: !250, size: 768, offset: 2304)
!1024 = !DIDerivedType(tag: DW_TAG_member, name: "ICPR", scope: !1016, file: !242, line: 371, baseType: !246, size: 256, offset: 3072)
!1025 = !DIDerivedType(tag: DW_TAG_member, name: "RESERVED3", scope: !1016, file: !242, line: 372, baseType: !250, size: 768, offset: 3328)
!1026 = !DIDerivedType(tag: DW_TAG_member, name: "IABR", scope: !1016, file: !242, line: 373, baseType: !246, size: 256, offset: 4096)
!1027 = !DIDerivedType(tag: DW_TAG_member, name: "RESERVED4", scope: !1016, file: !242, line: 374, baseType: !261, size: 1792, offset: 4352)
!1028 = !DIDerivedType(tag: DW_TAG_member, name: "IP", scope: !1016, file: !242, line: 375, baseType: !265, size: 1920, offset: 6144)
!1029 = !DIDerivedType(tag: DW_TAG_member, name: "RESERVED5", scope: !1016, file: !242, line: 376, baseType: !272, size: 20608, offset: 8064)
!1030 = !DIDerivedType(tag: DW_TAG_member, name: "STIR", scope: !1016, file: !242, line: 377, baseType: !91, size: 32, offset: 28672)
!1031 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1032, producer: "Ubuntu clang version 14.0.6", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !1033, splitDebugInlining: false, nameTableKind: None)
!1032 = !DIFile(filename: "../../../../../driver/chip/mt7687/src/common/pinmux.c", directory: "/home/mjshen/RTOSExploration/Embedded-GUI-for-MT2523/project/linkit7697_hdk/hal_examples/pwm_generate_waveform/GCC")
!1033 = !{!1034, !908}
!1034 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !1035, line: 55, baseType: !7, size: 32, elements: !1036)
!1035 = !DIFile(filename: "../../../../../driver/chip/mt7687/src/common/include/pinmux.h", directory: "/home/mjshen/RTOSExploration/Embedded-GUI-for-MT2523/project/linkit7697_hdk/hal_examples/pwm_generate_waveform/GCC")
!1036 = !{!1037, !1038, !1039, !1040, !1041, !1042, !1043, !1044, !1045, !1046, !1047, !1048, !1049, !1050, !1051, !1052, !1053, !1054, !1055, !1056, !1057, !1058, !1059, !1060, !1061, !1062, !1063, !1064}
!1037 = !DIEnumerator(name: "eIOT_GPIO_IDX_0", value: 0)
!1038 = !DIEnumerator(name: "eIOT_GPIO_IDX_1", value: 1)
!1039 = !DIEnumerator(name: "eIOT_GPIO_IDX_2", value: 2)
!1040 = !DIEnumerator(name: "eIOT_GPIO_IDX_3", value: 3)
!1041 = !DIEnumerator(name: "eIOT_GPIO_IDX_4", value: 4)
!1042 = !DIEnumerator(name: "eIOT_GPIO_IDX_5", value: 5)
!1043 = !DIEnumerator(name: "eIOT_GPIO_IDX_6", value: 6)
!1044 = !DIEnumerator(name: "eIOT_GPIO_IDX_7", value: 7)
!1045 = !DIEnumerator(name: "eIOT_GPIO_IDX_24", value: 24)
!1046 = !DIEnumerator(name: "eIOT_GPIO_IDX_25", value: 25)
!1047 = !DIEnumerator(name: "eIOT_GPIO_IDX_26", value: 26)
!1048 = !DIEnumerator(name: "eIOT_GPIO_IDX_27", value: 27)
!1049 = !DIEnumerator(name: "eIOT_GPIO_IDX_28", value: 28)
!1050 = !DIEnumerator(name: "eIOT_GPIO_IDX_29", value: 29)
!1051 = !DIEnumerator(name: "eIOT_GPIO_IDX_30", value: 30)
!1052 = !DIEnumerator(name: "eIOT_GPIO_IDX_31", value: 31)
!1053 = !DIEnumerator(name: "eIOT_GPIO_IDX_32", value: 32)
!1054 = !DIEnumerator(name: "eIOT_GPIO_IDX_33", value: 33)
!1055 = !DIEnumerator(name: "eIOT_GPIO_IDX_34", value: 34)
!1056 = !DIEnumerator(name: "eIOT_GPIO_IDX_35", value: 35)
!1057 = !DIEnumerator(name: "eIOT_GPIO_IDX_36", value: 36)
!1058 = !DIEnumerator(name: "eIOT_GPIO_IDX_37", value: 37)
!1059 = !DIEnumerator(name: "eIOT_GPIO_IDX_38", value: 38)
!1060 = !DIEnumerator(name: "eIOT_GPIO_IDX_39", value: 39)
!1061 = !DIEnumerator(name: "eIOT_GPIO_IDX_57", value: 57)
!1062 = !DIEnumerator(name: "eIOT_GPIO_IDX_58", value: 58)
!1063 = !DIEnumerator(name: "eIOT_GPIO_IDX_59", value: 59)
!1064 = !DIEnumerator(name: "eIOT_GPIO_IDX_60", value: 60)
!1065 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1066, producer: "Ubuntu clang version 14.0.6", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !1067, retainedTypes: !1068, splitDebugInlining: false, nameTableKind: None)
!1066 = !DIFile(filename: "../../../../../driver/chip/mt7687/src/common/pwm.c", directory: "/home/mjshen/RTOSExploration/Embedded-GUI-for-MT2523/project/linkit7697_hdk/hal_examples/pwm_generate_waveform/GCC")
!1067 = !{!867, !873}
!1068 = !{!895, !1069, !1070}
!1069 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !80, size: 32)
!1070 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !133, size: 32)
!1071 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1072, producer: "Ubuntu clang version 14.0.6", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !1073, splitDebugInlining: false, nameTableKind: None)
!1072 = !DIFile(filename: "../../../../../driver/chip/mt7687/src/common/timer.c", directory: "/home/mjshen/RTOSExploration/Embedded-GUI-for-MT2523/project/linkit7697_hdk/hal_examples/pwm_generate_waveform/GCC")
!1073 = !{!681, !58}
!1074 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1075, producer: "Ubuntu clang version 14.0.6", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!1075 = !DIFile(filename: "../../../../../driver/chip/mt7687/src/hal_log.c", directory: "/home/mjshen/RTOSExploration/Embedded-GUI-for-MT2523/project/linkit7697_hdk/hal_examples/pwm_generate_waveform/GCC")
!1076 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1077, producer: "Ubuntu clang version 14.0.6", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !1078, retainedTypes: !1142, splitDebugInlining: false, nameTableKind: None)
!1077 = !DIFile(filename: "../../../../../driver/chip/mt7687/src/hal_gpio.c", directory: "/home/mjshen/RTOSExploration/Embedded-GUI-for-MT2523/project/linkit7697_hdk/hal_examples/pwm_generate_waveform/GCC")
!1078 = !{!1079, !1086, !1034, !1117, !1123, !1127, !1131, !1137}
!1079 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !1080, line: 233, baseType: !13, size: 32, elements: !1081)
!1080 = !DIFile(filename: "../../../../../driver/chip/inc/hal_gpio.h", directory: "/home/mjshen/RTOSExploration/Embedded-GUI-for-MT2523/project/linkit7697_hdk/hal_examples/pwm_generate_waveform/GCC")
!1081 = !{!1082, !1083, !1084, !1085}
!1082 = !DIEnumerator(name: "HAL_PINMUX_STATUS_ERROR", value: -3)
!1083 = !DIEnumerator(name: "HAL_PINMUX_STATUS_ERROR_PORT", value: -2)
!1084 = !DIEnumerator(name: "HAL_PINMUX_STATUS_INVALID_FUNCTION", value: -1)
!1085 = !DIEnumerator(name: "HAL_PINMUX_STATUS_OK", value: 0)
!1086 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !341, line: 249, baseType: !7, size: 32, elements: !1087)
!1087 = !{!1088, !1089, !1090, !1091, !1092, !1093, !1094, !1095, !1096, !1097, !1098, !1099, !1100, !1101, !1102, !1103, !1104, !1105, !1106, !1107, !1108, !1109, !1110, !1111, !1112, !1113, !1114, !1115, !1116}
!1088 = !DIEnumerator(name: "HAL_GPIO_0", value: 0)
!1089 = !DIEnumerator(name: "HAL_GPIO_1", value: 1)
!1090 = !DIEnumerator(name: "HAL_GPIO_2", value: 2)
!1091 = !DIEnumerator(name: "HAL_GPIO_3", value: 3)
!1092 = !DIEnumerator(name: "HAL_GPIO_4", value: 4)
!1093 = !DIEnumerator(name: "HAL_GPIO_5", value: 5)
!1094 = !DIEnumerator(name: "HAL_GPIO_6", value: 6)
!1095 = !DIEnumerator(name: "HAL_GPIO_7", value: 7)
!1096 = !DIEnumerator(name: "HAL_GPIO_24", value: 24)
!1097 = !DIEnumerator(name: "HAL_GPIO_25", value: 25)
!1098 = !DIEnumerator(name: "HAL_GPIO_26", value: 26)
!1099 = !DIEnumerator(name: "HAL_GPIO_27", value: 27)
!1100 = !DIEnumerator(name: "HAL_GPIO_28", value: 28)
!1101 = !DIEnumerator(name: "HAL_GPIO_29", value: 29)
!1102 = !DIEnumerator(name: "HAL_GPIO_30", value: 30)
!1103 = !DIEnumerator(name: "HAL_GPIO_31", value: 31)
!1104 = !DIEnumerator(name: "HAL_GPIO_32", value: 32)
!1105 = !DIEnumerator(name: "HAL_GPIO_33", value: 33)
!1106 = !DIEnumerator(name: "HAL_GPIO_34", value: 34)
!1107 = !DIEnumerator(name: "HAL_GPIO_35", value: 35)
!1108 = !DIEnumerator(name: "HAL_GPIO_36", value: 36)
!1109 = !DIEnumerator(name: "HAL_GPIO_37", value: 37)
!1110 = !DIEnumerator(name: "HAL_GPIO_38", value: 38)
!1111 = !DIEnumerator(name: "HAL_GPIO_39", value: 39)
!1112 = !DIEnumerator(name: "HAL_GPIO_57", value: 57)
!1113 = !DIEnumerator(name: "HAL_GPIO_58", value: 58)
!1114 = !DIEnumerator(name: "HAL_GPIO_59", value: 59)
!1115 = !DIEnumerator(name: "HAL_GPIO_60", value: 60)
!1116 = !DIEnumerator(name: "HAL_GPIO_MAX", value: 61)
!1117 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !1080, line: 224, baseType: !13, size: 32, elements: !1118)
!1118 = !{!1119, !1120, !1121, !1122}
!1119 = !DIEnumerator(name: "HAL_GPIO_STATUS_ERROR", value: -3)
!1120 = !DIEnumerator(name: "HAL_GPIO_STATUS_ERROR_PIN", value: -2)
!1121 = !DIEnumerator(name: "HAL_GPIO_STATUS_INVALID_PARAMETER", value: -1)
!1122 = !DIEnumerator(name: "HAL_GPIO_STATUS_OK", value: 0)
!1123 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !1080, line: 217, baseType: !7, size: 32, elements: !1124)
!1124 = !{!1125, !1126}
!1125 = !DIEnumerator(name: "HAL_GPIO_DATA_LOW", value: 0)
!1126 = !DIEnumerator(name: "HAL_GPIO_DATA_HIGH", value: 1)
!1127 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !1080, line: 210, baseType: !7, size: 32, elements: !1128)
!1128 = !{!1129, !1130}
!1129 = !DIEnumerator(name: "HAL_GPIO_DIRECTION_INPUT", value: 0)
!1130 = !DIEnumerator(name: "HAL_GPIO_DIRECTION_OUTPUT", value: 1)
!1131 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !1080, line: 242, baseType: !7, size: 32, elements: !1132)
!1132 = !{!1133, !1134, !1135, !1136}
!1133 = !DIEnumerator(name: "HAL_GPIO_DRIVING_CURRENT_4MA", value: 0)
!1134 = !DIEnumerator(name: "HAL_GPIO_DRIVING_CURRENT_8MA", value: 1)
!1135 = !DIEnumerator(name: "HAL_GPIO_DRIVING_CURRENT_12MA", value: 2)
!1136 = !DIEnumerator(name: "HAL_GPIO_DRIVING_CURRENT_16MA", value: 3)
!1137 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !1138, line: 57, baseType: !7, size: 32, elements: !1139)
!1138 = !DIFile(filename: "../../../../../driver/chip/mt7687/src/common/include/low_hal_gpio.h", directory: "/home/mjshen/RTOSExploration/Embedded-GUI-for-MT2523/project/linkit7697_hdk/hal_examples/pwm_generate_waveform/GCC")
!1139 = !{!1140, !1141}
!1140 = !DIEnumerator(name: "eDirection_IN", value: 0)
!1141 = !DIEnumerator(name: "eDirection_OUT", value: 1)
!1142 = !{!1143, !219, !1144, !267, !1145, !1146}
!1143 = !DIDerivedType(tag: DW_TAG_typedef, name: "ENUM_IOT_GPIO_NAME_T", file: !1035, line: 87, baseType: !1034)
!1144 = !DIDerivedType(tag: DW_TAG_typedef, name: "hal_gpio_data_t", file: !1080, line: 220, baseType: !1123)
!1145 = !DIDerivedType(tag: DW_TAG_typedef, name: "hal_gpio_driving_current_t", file: !1080, line: 247, baseType: !1131)
!1146 = !DIDerivedType(tag: DW_TAG_typedef, name: "ENUM_DIR_T", file: !1138, line: 60, baseType: !1137)
!1147 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1148, producer: "Ubuntu clang version 14.0.6", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !1149, splitDebugInlining: false, nameTableKind: None)
!1148 = !DIFile(filename: "../../../../../project/linkit7697_hdk/hal_examples/pwm_generate_waveform/src/main.c", directory: "/home/mjshen/RTOSExploration/Embedded-GUI-for-MT2523/project/linkit7697_hdk/hal_examples/pwm_generate_waveform/GCC")
!1149 = !{!474, !479, !495, !501, !505, !1086, !393, !402}
!1150 = !{!"Ubuntu clang version 14.0.6"}
!1151 = !{i32 7, !"Dwarf Version", i32 2}
!1152 = !{i32 2, !"Debug Info Version", i32 3}
!1153 = !{i32 1, !"wchar_size", i32 4}
!1154 = !{i32 1, !"min_enum_size", i32 4}
!1155 = !{i32 1, !"branch-target-enforcement", i32 0}
!1156 = !{i32 1, !"sign-return-address", i32 0}
!1157 = !{i32 1, !"sign-return-address-all", i32 0}
!1158 = !{i32 1, !"sign-return-address-with-bkey", i32 0}
!1159 = !{i32 7, !"frame-pointer", i32 2}
!1160 = distinct !DISubprogram(name: "GPT_ResetTimer", scope: !3, file: !3, line: 73, type: !1161, scopeLine: 74, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1163)
!1161 = !DISubroutineType(types: !1162)
!1162 = !{null, !60, !60, !222}
!1163 = !{!1164, !1165, !1166}
!1164 = !DILocalVariable(name: "timerNum", arg: 1, scope: !1160, file: !3, line: 73, type: !60)
!1165 = !DILocalVariable(name: "countValue", arg: 2, scope: !1160, file: !3, line: 73, type: !60)
!1166 = !DILocalVariable(name: "autoRepeat", arg: 3, scope: !1160, file: !3, line: 73, type: !222)
!1167 = !DILocation(line: 0, scope: !1160)
!1168 = !DILocation(line: 75, column: 5, scope: !1169)
!1169 = distinct !DILexicalBlock(scope: !1160, file: !3, line: 75, column: 5)
!1170 = !DILocation(line: 75, column: 5, scope: !1160)
!1171 = !DILocation(line: 75, column: 5, scope: !1172)
!1172 = distinct !DILexicalBlock(scope: !1169, file: !3, line: 75, column: 5)
!1173 = distinct !{!1173, !1171, !1171}
!1174 = !DILocation(line: 77, column: 9, scope: !1160)
!1175 = !DILocation(line: 78, column: 30, scope: !1176)
!1176 = distinct !DILexicalBlock(scope: !1177, file: !3, line: 77, column: 24)
!1177 = distinct !DILexicalBlock(scope: !1160, file: !3, line: 77, column: 9)
!1178 = !DILocation(line: 0, scope: !1179)
!1179 = distinct !DILexicalBlock(scope: !1176, file: !3, line: 79, column: 13)
!1180 = !DILocation(line: 79, column: 13, scope: !1176)
!1181 = !DILocation(line: 80, column: 34, scope: !1182)
!1182 = distinct !DILexicalBlock(scope: !1179, file: !3, line: 79, column: 37)
!1183 = !DILocation(line: 81, column: 9, scope: !1182)
!1184 = !DILocation(line: 82, column: 34, scope: !1185)
!1185 = distinct !DILexicalBlock(scope: !1179, file: !3, line: 81, column: 16)
!1186 = !DILocation(line: 85, column: 30, scope: !1187)
!1187 = distinct !DILexicalBlock(scope: !1188, file: !3, line: 84, column: 31)
!1188 = distinct !DILexicalBlock(scope: !1177, file: !3, line: 84, column: 16)
!1189 = !DILocation(line: 0, scope: !1190)
!1190 = distinct !DILexicalBlock(scope: !1187, file: !3, line: 86, column: 13)
!1191 = !DILocation(line: 86, column: 13, scope: !1187)
!1192 = !DILocation(line: 87, column: 34, scope: !1193)
!1193 = distinct !DILexicalBlock(scope: !1190, file: !3, line: 86, column: 37)
!1194 = !DILocation(line: 88, column: 9, scope: !1193)
!1195 = !DILocation(line: 89, column: 34, scope: !1196)
!1196 = distinct !DILexicalBlock(scope: !1190, file: !3, line: 88, column: 16)
!1197 = !DILocation(line: 92, column: 1, scope: !1160)
!1198 = distinct !DISubprogram(name: "GPT_Start", scope: !3, file: !3, line: 94, type: !1199, scopeLine: 95, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1201)
!1199 = !DISubroutineType(types: !1200)
!1200 = !{null, !60}
!1201 = !{!1202}
!1202 = !DILocalVariable(name: "timerNum", arg: 1, scope: !1198, file: !3, line: 94, type: !60)
!1203 = !DILocation(line: 0, scope: !1198)
!1204 = !DILocation(line: 96, column: 5, scope: !1198)
!1205 = !DILocation(line: 96, column: 5, scope: !1206)
!1206 = distinct !DILexicalBlock(scope: !1207, file: !3, line: 96, column: 5)
!1207 = distinct !DILexicalBlock(scope: !1198, file: !3, line: 96, column: 5)
!1208 = distinct !{!1208, !1205, !1205}
!1209 = !DILocation(line: 99, column: 30, scope: !1210)
!1210 = distinct !DILexicalBlock(scope: !1211, file: !3, line: 98, column: 24)
!1211 = distinct !DILexicalBlock(scope: !1198, file: !3, line: 98, column: 9)
!1212 = !DILocation(line: 100, column: 9, scope: !1210)
!1213 = !DILocation(line: 101, column: 5, scope: !1210)
!1214 = !DILocation(line: 102, column: 30, scope: !1215)
!1215 = distinct !DILexicalBlock(scope: !1216, file: !3, line: 101, column: 31)
!1216 = distinct !DILexicalBlock(scope: !1211, file: !3, line: 101, column: 16)
!1217 = !DILocation(line: 103, column: 9, scope: !1215)
!1218 = !DILocation(line: 104, column: 5, scope: !1215)
!1219 = !DILocation(line: 105, column: 30, scope: !1220)
!1220 = distinct !DILexicalBlock(scope: !1221, file: !3, line: 104, column: 31)
!1221 = distinct !DILexicalBlock(scope: !1216, file: !3, line: 104, column: 16)
!1222 = !DILocation(line: 106, column: 5, scope: !1220)
!1223 = !DILocation(line: 108, column: 1, scope: !1198)
!1224 = distinct !DISubprogram(name: "GPT_Stop", scope: !3, file: !3, line: 110, type: !1199, scopeLine: 111, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1225)
!1225 = !{!1226}
!1226 = !DILocalVariable(name: "timerNum", arg: 1, scope: !1224, file: !3, line: 110, type: !60)
!1227 = !DILocation(line: 0, scope: !1224)
!1228 = !DILocation(line: 112, column: 9, scope: !1224)
!1229 = !DILocation(line: 113, column: 30, scope: !1230)
!1230 = distinct !DILexicalBlock(scope: !1231, file: !3, line: 112, column: 24)
!1231 = distinct !DILexicalBlock(scope: !1224, file: !3, line: 112, column: 9)
!1232 = !DILocation(line: 114, column: 30, scope: !1230)
!1233 = !DILocation(line: 115, column: 31, scope: !1230)
!1234 = !DILocation(line: 117, column: 5, scope: !1230)
!1235 = !DILocation(line: 118, column: 30, scope: !1236)
!1236 = distinct !DILexicalBlock(scope: !1237, file: !3, line: 117, column: 31)
!1237 = distinct !DILexicalBlock(scope: !1231, file: !3, line: 117, column: 16)
!1238 = !DILocation(line: 119, column: 30, scope: !1236)
!1239 = !DILocation(line: 120, column: 31, scope: !1236)
!1240 = !DILocation(line: 121, column: 5, scope: !1236)
!1241 = !DILocation(line: 122, column: 30, scope: !1242)
!1242 = distinct !DILexicalBlock(scope: !1243, file: !3, line: 121, column: 31)
!1243 = distinct !DILexicalBlock(scope: !1237, file: !3, line: 121, column: 16)
!1244 = !DILocation(line: 123, column: 5, scope: !1242)
!1245 = !DILocation(line: 124, column: 30, scope: !1246)
!1246 = distinct !DILexicalBlock(scope: !1247, file: !3, line: 123, column: 31)
!1247 = distinct !DILexicalBlock(scope: !1243, file: !3, line: 123, column: 16)
!1248 = !DILocation(line: 125, column: 5, scope: !1246)
!1249 = !DILocation(line: 128, column: 1, scope: !1224)
!1250 = distinct !DISubprogram(name: "GPT_INT_Handler", scope: !3, file: !3, line: 130, type: !322, scopeLine: 131, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1251)
!1251 = !{!1252, !1253}
!1252 = !DILocalVariable(name: "irq_number", arg: 1, scope: !1250, file: !3, line: 130, type: !237)
!1253 = !DILocalVariable(name: "GPT_Status", scope: !1250, file: !3, line: 132, type: !131)
!1254 = !DILocation(line: 0, scope: !1250)
!1255 = !DILocation(line: 135, column: 18, scope: !1250)
!1256 = !DILocation(line: 136, column: 26, scope: !1250)
!1257 = !DILocation(line: 136, column: 24, scope: !1250)
!1258 = !DILocation(line: 138, column: 20, scope: !1259)
!1259 = distinct !DILexicalBlock(scope: !1250, file: !3, line: 138, column: 9)
!1260 = !DILocation(line: 138, column: 9, scope: !1250)
!1261 = !DILocation(line: 141, column: 27, scope: !1262)
!1262 = distinct !DILexicalBlock(scope: !1259, file: !3, line: 141, column: 16)
!1263 = !DILocation(line: 141, column: 16, scope: !1259)
!1264 = !DILocation(line: 0, scope: !1259)
!1265 = !DILocation(line: 145, column: 1, scope: !1250)
!1266 = distinct !DISubprogram(name: "GPT_init", scope: !3, file: !3, line: 147, type: !1267, scopeLine: 148, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1269)
!1267 = !DISubroutineType(types: !1268)
!1268 = !{null, !60, !60, !74}
!1269 = !{!1270, !1271, !1272}
!1270 = !DILocalVariable(name: "timerNum", arg: 1, scope: !1266, file: !3, line: 147, type: !60)
!1271 = !DILocalVariable(name: "speed_32us", arg: 2, scope: !1266, file: !3, line: 147, type: !60)
!1272 = !DILocalVariable(name: "GPT_Callback", arg: 3, scope: !1266, file: !3, line: 147, type: !74)
!1273 = !DILocation(line: 0, scope: !1266)
!1274 = !DILocation(line: 149, column: 5, scope: !1266)
!1275 = !DILocation(line: 149, column: 5, scope: !1276)
!1276 = distinct !DILexicalBlock(scope: !1277, file: !3, line: 149, column: 5)
!1277 = distinct !DILexicalBlock(scope: !1266, file: !3, line: 149, column: 5)
!1278 = distinct !{!1278, !1275, !1275}
!1279 = !DILocation(line: 149, column: 5, scope: !1277)
!1280 = !DILocation(line: 151, column: 23, scope: !1281)
!1281 = distinct !DILexicalBlock(scope: !1266, file: !3, line: 151, column: 9)
!1282 = !DILocation(line: 152, column: 9, scope: !1283)
!1283 = distinct !DILexicalBlock(scope: !1281, file: !3, line: 151, column: 41)
!1284 = !DILocation(line: 153, column: 9, scope: !1283)
!1285 = !DILocation(line: 154, column: 9, scope: !1283)
!1286 = !DILocation(line: 155, column: 5, scope: !1283)
!1287 = !DILocation(line: 157, column: 9, scope: !1266)
!1288 = !DILocation(line: 158, column: 37, scope: !1289)
!1289 = distinct !DILexicalBlock(scope: !1290, file: !3, line: 157, column: 24)
!1290 = distinct !DILexicalBlock(scope: !1266, file: !3, line: 157, column: 9)
!1291 = !DILocation(line: 159, column: 30, scope: !1289)
!1292 = !DILocation(line: 160, column: 45, scope: !1289)
!1293 = !DILocation(line: 160, column: 30, scope: !1289)
!1294 = !DILocation(line: 161, column: 5, scope: !1289)
!1295 = !DILocation(line: 162, column: 37, scope: !1296)
!1296 = distinct !DILexicalBlock(scope: !1297, file: !3, line: 161, column: 31)
!1297 = distinct !DILexicalBlock(scope: !1290, file: !3, line: 161, column: 16)
!1298 = !DILocation(line: 163, column: 30, scope: !1296)
!1299 = !DILocation(line: 164, column: 45, scope: !1296)
!1300 = !DILocation(line: 164, column: 30, scope: !1296)
!1301 = !DILocation(line: 165, column: 5, scope: !1296)
!1302 = !DILocation(line: 166, column: 59, scope: !1303)
!1303 = distinct !DILexicalBlock(scope: !1304, file: !3, line: 165, column: 31)
!1304 = distinct !DILexicalBlock(scope: !1297, file: !3, line: 165, column: 16)
!1305 = !DILocation(line: 166, column: 45, scope: !1303)
!1306 = !DILocation(line: 166, column: 30, scope: !1303)
!1307 = !DILocation(line: 167, column: 5, scope: !1303)
!1308 = !DILocation(line: 168, column: 59, scope: !1309)
!1309 = distinct !DILexicalBlock(scope: !1310, file: !3, line: 167, column: 31)
!1310 = distinct !DILexicalBlock(scope: !1304, file: !3, line: 167, column: 16)
!1311 = !DILocation(line: 168, column: 45, scope: !1309)
!1312 = !DILocation(line: 168, column: 30, scope: !1309)
!1313 = !DILocation(line: 169, column: 30, scope: !1309)
!1314 = !DILocation(line: 170, column: 5, scope: !1309)
!1315 = !DILocation(line: 171, column: 1, scope: !1266)
!1316 = distinct !DISubprogram(name: "GPT_return_current_count", scope: !3, file: !3, line: 173, type: !1317, scopeLine: 174, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1319)
!1317 = !DISubroutineType(types: !1318)
!1318 = !{!60, !60}
!1319 = !{!1320, !1321}
!1320 = !DILocalVariable(name: "timerNum", arg: 1, scope: !1316, file: !3, line: 173, type: !60)
!1321 = !DILocalVariable(name: "current_count", scope: !1316, file: !3, line: 175, type: !60)
!1322 = !DILocation(line: 0, scope: !1316)
!1323 = !DILocation(line: 177, column: 5, scope: !1316)
!1324 = !DILocation(line: 177, column: 5, scope: !1325)
!1325 = distinct !DILexicalBlock(scope: !1326, file: !3, line: 177, column: 5)
!1326 = distinct !DILexicalBlock(scope: !1316, file: !3, line: 177, column: 5)
!1327 = distinct !{!1327, !1324, !1324}
!1328 = !DILocation(line: 183, column: 5, scope: !1329)
!1329 = distinct !DILexicalBlock(scope: !1330, file: !3, line: 181, column: 31)
!1330 = distinct !DILexicalBlock(scope: !1331, file: !3, line: 181, column: 16)
!1331 = distinct !DILexicalBlock(scope: !1316, file: !3, line: 179, column: 9)
!1332 = !DILocation(line: 185, column: 5, scope: !1333)
!1333 = distinct !DILexicalBlock(scope: !1334, file: !3, line: 183, column: 31)
!1334 = distinct !DILexicalBlock(scope: !1330, file: !3, line: 183, column: 16)
!1335 = !DILocation(line: 187, column: 5, scope: !1336)
!1336 = distinct !DILexicalBlock(scope: !1337, file: !3, line: 185, column: 31)
!1337 = distinct !DILexicalBlock(scope: !1334, file: !3, line: 185, column: 16)
!1338 = !DILocation(line: 0, scope: !1331)
!1339 = !DILocation(line: 189, column: 5, scope: !1316)
!1340 = distinct !DISubprogram(name: "CM4_GPT2Init", scope: !3, file: !3, line: 193, type: !75, scopeLine: 194, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1341)
!1341 = !{}
!1342 = !DILocation(line: 195, column: 5, scope: !1340)
!1343 = !DILocation(line: 196, column: 1, scope: !1340)
!1344 = distinct !DISubprogram(name: "CM4_GPT4Init", scope: !3, file: !3, line: 198, type: !75, scopeLine: 199, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1341)
!1345 = !DILocation(line: 200, column: 5, scope: !1344)
!1346 = !DILocation(line: 201, column: 1, scope: !1344)
!1347 = distinct !DISubprogram(name: "halPWMResetAll", scope: !860, file: !860, line: 140, type: !1348, scopeLine: 141, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !859, retainedNodes: !1351)
!1348 = !DISubroutineType(types: !1349)
!1349 = !{!1350}
!1350 = !DIDerivedType(tag: DW_TAG_typedef, name: "ENUM_HAL_RET_T", file: !863, line: 368, baseType: !862)
!1351 = !{!1352}
!1352 = !DILocalVariable(name: "ret", scope: !1347, file: !860, line: 142, type: !1350)
!1353 = !DILocation(line: 0, scope: !1347)
!1354 = !DILocation(line: 145, column: 39, scope: !1347)
!1355 = !DILocation(line: 146, column: 39, scope: !1347)
!1356 = !DILocation(line: 148, column: 5, scope: !1347)
!1357 = distinct !DISubprogram(name: "halPWMClockSelect", scope: !860, file: !860, line: 153, type: !1358, scopeLine: 154, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !859, retainedNodes: !1360)
!1358 = !DISubroutineType(types: !1359)
!1359 = !{!1350, !895}
!1360 = !{!1361, !1362, !1363}
!1361 = !DILocalVariable(name: "ePwmClk", arg: 1, scope: !1357, file: !860, line: 153, type: !895)
!1362 = !DILocalVariable(name: "ret", scope: !1357, file: !860, line: 155, type: !1350)
!1363 = !DILocalVariable(name: "u4Val", scope: !1357, file: !860, line: 156, type: !80)
!1364 = !DILocation(line: 0, scope: !1357)
!1365 = !DILocation(line: 158, column: 17, scope: !1366)
!1366 = distinct !DILexicalBlock(scope: !1357, file: !860, line: 158, column: 9)
!1367 = !DILocation(line: 158, column: 9, scope: !1357)
!1368 = !DILocation(line: 158, column: 9, scope: !1366)
!1369 = !DILocation(line: 162, column: 13, scope: !1357)
!1370 = !DILocation(line: 163, column: 11, scope: !1357)
!1371 = !DILocation(line: 164, column: 23, scope: !1357)
!1372 = !DILocation(line: 164, column: 11, scope: !1357)
!1373 = !DILocation(line: 165, column: 39, scope: !1357)
!1374 = !DILocation(line: 167, column: 5, scope: !1357)
!1375 = !DILocation(line: 168, column: 1, scope: !1357)
!1376 = distinct !DISubprogram(name: "halPWMEnable", scope: !860, file: !860, line: 170, type: !1377, scopeLine: 171, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !859, retainedNodes: !1379)
!1377 = !DISubroutineType(types: !1378)
!1378 = !{!1350, !133, !133, !133, !133}
!1379 = !{!1380, !1381, !1382, !1383, !1384, !1385, !1386}
!1380 = !DILocalVariable(name: "ucPwmIdx", arg: 1, scope: !1376, file: !860, line: 170, type: !133)
!1381 = !DILocalVariable(name: "ucGlobalKick", arg: 2, scope: !1376, file: !860, line: 170, type: !133)
!1382 = !DILocalVariable(name: "ucIOCtrl", arg: 3, scope: !1376, file: !860, line: 170, type: !133)
!1383 = !DILocalVariable(name: "ucPolarity", arg: 4, scope: !1376, file: !860, line: 170, type: !133)
!1384 = !DILocalVariable(name: "ret", scope: !1376, file: !860, line: 172, type: !1350)
!1385 = !DILocalVariable(name: "pCRAddr", scope: !1376, file: !860, line: 173, type: !893)
!1386 = !DILocalVariable(name: "u4Val", scope: !1376, file: !860, line: 174, type: !80)
!1387 = !DILocation(line: 0, scope: !1376)
!1388 = !DILocation(line: 178, column: 79, scope: !1376)
!1389 = !DILocation(line: 178, column: 77, scope: !1376)
!1390 = !DILocation(line: 178, column: 59, scope: !1376)
!1391 = !DILocation(line: 180, column: 23, scope: !1376)
!1392 = !DILocation(line: 185, column: 9, scope: !1393)
!1393 = distinct !DILexicalBlock(scope: !1376, file: !860, line: 185, column: 9)
!1394 = !DILocation(line: 185, column: 9, scope: !1376)
!1395 = !DILocation(line: 191, column: 9, scope: !1396)
!1396 = distinct !DILexicalBlock(scope: !1376, file: !860, line: 191, column: 9)
!1397 = !DILocation(line: 191, column: 9, scope: !1376)
!1398 = !DILocation(line: 197, column: 9, scope: !1399)
!1399 = distinct !DILexicalBlock(scope: !1376, file: !860, line: 197, column: 9)
!1400 = !DILocation(line: 197, column: 9, scope: !1376)
!1401 = !DILocation(line: 203, column: 25, scope: !1376)
!1402 = !DILocation(line: 206, column: 5, scope: !1376)
!1403 = distinct !DISubprogram(name: "halPWMDisable", scope: !860, file: !860, line: 209, type: !1404, scopeLine: 210, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !859, retainedNodes: !1406)
!1404 = !DISubroutineType(types: !1405)
!1405 = !{!1350, !133}
!1406 = !{!1407, !1408, !1409}
!1407 = !DILocalVariable(name: "ucPwmIdx", arg: 1, scope: !1403, file: !860, line: 209, type: !133)
!1408 = !DILocalVariable(name: "ret", scope: !1403, file: !860, line: 211, type: !1350)
!1409 = !DILocalVariable(name: "pCRAddr", scope: !1403, file: !860, line: 212, type: !893)
!1410 = !DILocation(line: 0, scope: !1403)
!1411 = !DILocation(line: 214, column: 79, scope: !1403)
!1412 = !DILocation(line: 214, column: 77, scope: !1403)
!1413 = !DILocation(line: 214, column: 59, scope: !1403)
!1414 = !DILocation(line: 217, column: 15, scope: !1403)
!1415 = !DILocation(line: 217, column: 25, scope: !1403)
!1416 = !DILocation(line: 219, column: 5, scope: !1403)
!1417 = distinct !DISubprogram(name: "halPWMKick", scope: !860, file: !860, line: 222, type: !1404, scopeLine: 223, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !859, retainedNodes: !1418)
!1418 = !{!1419, !1420, !1421}
!1419 = !DILocalVariable(name: "ucPwmIdx", arg: 1, scope: !1417, file: !860, line: 222, type: !133)
!1420 = !DILocalVariable(name: "ret", scope: !1417, file: !860, line: 224, type: !1350)
!1421 = !DILocalVariable(name: "pCRAddr", scope: !1417, file: !860, line: 225, type: !893)
!1422 = !DILocation(line: 0, scope: !1417)
!1423 = !DILocation(line: 228, column: 79, scope: !1417)
!1424 = !DILocation(line: 228, column: 77, scope: !1417)
!1425 = !DILocation(line: 228, column: 59, scope: !1417)
!1426 = !DILocation(line: 230, column: 15, scope: !1417)
!1427 = !DILocation(line: 230, column: 25, scope: !1417)
!1428 = !DILocation(line: 233, column: 5, scope: !1417)
!1429 = !DILocation(line: 235, column: 5, scope: !1417)
!1430 = distinct !DISubprogram(name: "halPWMConfig", scope: !860, file: !860, line: 239, type: !1431, scopeLine: 240, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !859, retainedNodes: !1435)
!1431 = !DISubroutineType(types: !1432)
!1432 = !{!1350, !133, !1433, !1434, !80}
!1433 = !DIDerivedType(tag: DW_TAG_typedef, name: "ENUM_PWM_STATE_T", file: !863, line: 382, baseType: !873)
!1434 = !DIDerivedType(tag: DW_TAG_typedef, name: "UINT16", file: !6, line: 60, baseType: !132)
!1435 = !{!1436, !1437, !1438, !1439, !1440, !1441, !1442, !1443, !1444, !1445, !1446, !1447, !1448}
!1436 = !DILocalVariable(name: "ucPwmIdx", arg: 1, scope: !1430, file: !860, line: 239, type: !133)
!1437 = !DILocalVariable(name: "eState", arg: 2, scope: !1430, file: !860, line: 239, type: !1433)
!1438 = !DILocalVariable(name: "u2DutyCycle", arg: 3, scope: !1430, file: !860, line: 239, type: !1434)
!1439 = !DILocalVariable(name: "u4PwmFreq", arg: 4, scope: !1430, file: !860, line: 239, type: !80)
!1440 = !DILocalVariable(name: "ret", scope: !1430, file: !860, line: 241, type: !1350)
!1441 = !DILocalVariable(name: "ePwmClk", scope: !1430, file: !860, line: 242, type: !895)
!1442 = !DILocalVariable(name: "u4ClkFreq", scope: !1430, file: !860, line: 243, type: !80)
!1443 = !DILocalVariable(name: "u4PwmStep", scope: !1430, file: !860, line: 244, type: !80)
!1444 = !DILocalVariable(name: "u2OnTime", scope: !1430, file: !860, line: 245, type: !1434)
!1445 = !DILocalVariable(name: "u2OffTime", scope: !1430, file: !860, line: 246, type: !1434)
!1446 = !DILocalVariable(name: "pCRAddr", scope: !1430, file: !860, line: 247, type: !893)
!1447 = !DILocalVariable(name: "u4Val", scope: !1430, file: !860, line: 248, type: !80)
!1448 = !DILocalVariable(name: "ucXtal", scope: !1449, file: !860, line: 264, type: !133)
!1449 = distinct !DILexicalBlock(scope: !1450, file: !860, line: 263, column: 28)
!1450 = distinct !DILexicalBlock(scope: !1430, file: !860, line: 254, column: 22)
!1451 = !DILocation(line: 0, scope: !1430)
!1452 = !DILocation(line: 250, column: 79, scope: !1430)
!1453 = !DILocation(line: 250, column: 77, scope: !1430)
!1454 = !DILocation(line: 250, column: 59, scope: !1430)
!1455 = !DILocation(line: 252, column: 34, scope: !1430)
!1456 = !DILocation(line: 252, column: 100, scope: !1430)
!1457 = !DILocation(line: 254, column: 13, scope: !1430)
!1458 = !DILocation(line: 254, column: 5, scope: !1430)
!1459 = !DILocation(line: 261, column: 13, scope: !1450)
!1460 = !DILocation(line: 0, scope: !1449)
!1461 = !DILocation(line: 265, column: 24, scope: !1449)
!1462 = !DILocation(line: 265, column: 90, scope: !1449)
!1463 = !DILocation(line: 265, column: 22, scope: !1449)
!1464 = !DILocation(line: 267, column: 17, scope: !1449)
!1465 = !DILocation(line: 0, scope: !1450)
!1466 = !DILocation(line: 300, column: 28, scope: !1430)
!1467 = !DILocation(line: 302, column: 17, scope: !1430)
!1468 = !DILocation(line: 306, column: 19, scope: !1469)
!1469 = distinct !DILexicalBlock(scope: !1430, file: !860, line: 306, column: 9)
!1470 = !DILocation(line: 306, column: 9, scope: !1430)
!1471 = !DILocation(line: 311, column: 16, scope: !1472)
!1472 = distinct !DILexicalBlock(scope: !1430, file: !860, line: 311, column: 9)
!1473 = !DILocation(line: 311, column: 9, scope: !1430)
!1474 = !DILocation(line: 312, column: 27, scope: !1475)
!1475 = distinct !DILexicalBlock(scope: !1472, file: !860, line: 311, column: 27)
!1476 = !DILocation(line: 314, column: 19, scope: !1475)
!1477 = !DILocation(line: 314, column: 29, scope: !1475)
!1478 = !DILocation(line: 316, column: 19, scope: !1475)
!1479 = !DILocation(line: 316, column: 15, scope: !1475)
!1480 = !DILocation(line: 317, column: 33, scope: !1475)
!1481 = !DILocation(line: 318, column: 5, scope: !1475)
!1482 = !DILocation(line: 319, column: 27, scope: !1483)
!1483 = distinct !DILexicalBlock(scope: !1472, file: !860, line: 318, column: 12)
!1484 = !DILocation(line: 321, column: 19, scope: !1483)
!1485 = !DILocation(line: 321, column: 29, scope: !1483)
!1486 = !DILocation(line: 323, column: 19, scope: !1483)
!1487 = !DILocation(line: 323, column: 15, scope: !1483)
!1488 = !DILocation(line: 324, column: 33, scope: !1483)
!1489 = !DILocation(line: 330, column: 1, scope: !1430)
!1490 = distinct !DISubprogram(name: "halPWMStateConfig", scope: !860, file: !860, line: 332, type: !1491, scopeLine: 333, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !859, retainedNodes: !1493)
!1491 = !DISubroutineType(types: !1492)
!1492 = !{!1350, !133, !1434, !1434, !133}
!1493 = !{!1494, !1495, !1496, !1497, !1498, !1499, !1500}
!1494 = !DILocalVariable(name: "ucPwmIdx", arg: 1, scope: !1490, file: !860, line: 332, type: !133)
!1495 = !DILocalVariable(name: "u2S0StayCycle", arg: 2, scope: !1490, file: !860, line: 332, type: !1434)
!1496 = !DILocalVariable(name: "u2S1StayCycle", arg: 3, scope: !1490, file: !860, line: 332, type: !1434)
!1497 = !DILocalVariable(name: "ucReplayMode", arg: 4, scope: !1490, file: !860, line: 332, type: !133)
!1498 = !DILocalVariable(name: "ret", scope: !1490, file: !860, line: 334, type: !1350)
!1499 = !DILocalVariable(name: "pCRAddr", scope: !1490, file: !860, line: 335, type: !893)
!1500 = !DILocalVariable(name: "u4Val", scope: !1490, file: !860, line: 336, type: !80)
!1501 = !DILocation(line: 0, scope: !1490)
!1502 = !DILocation(line: 340, column: 10, scope: !1503)
!1503 = distinct !DILexicalBlock(scope: !1490, file: !860, line: 340, column: 9)
!1504 = !DILocation(line: 340, column: 24, scope: !1503)
!1505 = !DILocation(line: 340, column: 34, scope: !1503)
!1506 = !DILocation(line: 340, column: 39, scope: !1503)
!1507 = !DILocation(line: 340, column: 53, scope: !1503)
!1508 = !DILocation(line: 340, column: 9, scope: !1490)
!1509 = !DILocation(line: 344, column: 79, scope: !1490)
!1510 = !DILocation(line: 344, column: 77, scope: !1490)
!1511 = !DILocation(line: 344, column: 59, scope: !1490)
!1512 = !DILocation(line: 345, column: 23, scope: !1490)
!1513 = !DILocation(line: 347, column: 11, scope: !1490)
!1514 = !DILocation(line: 348, column: 29, scope: !1490)
!1515 = !DILocation(line: 350, column: 11, scope: !1490)
!1516 = !DILocation(line: 351, column: 29, scope: !1490)
!1517 = !DILocation(line: 351, column: 11, scope: !1490)
!1518 = !DILocation(line: 353, column: 9, scope: !1519)
!1519 = distinct !DILexicalBlock(scope: !1490, file: !860, line: 353, column: 9)
!1520 = !DILocation(line: 353, column: 9, scope: !1490)
!1521 = !DILocation(line: 358, column: 25, scope: !1490)
!1522 = !DILocation(line: 360, column: 5, scope: !1490)
!1523 = !DILocation(line: 361, column: 1, scope: !1490)
!1524 = distinct !DISubprogram(name: "halPWMQuery", scope: !860, file: !860, line: 365, type: !1525, scopeLine: 366, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !859, retainedNodes: !1528)
!1525 = !DISubroutineType(types: !1526)
!1526 = !{!1350, !133, !1433, !1527, !1069, !1070}
!1527 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1434, size: 32)
!1528 = !{!1529, !1530, !1531, !1532, !1533, !1534, !1535, !1536, !1537, !1538, !1539, !1540, !1541, !1542}
!1529 = !DILocalVariable(name: "ucPwmIdx", arg: 1, scope: !1524, file: !860, line: 365, type: !133)
!1530 = !DILocalVariable(name: "eState", arg: 2, scope: !1524, file: !860, line: 365, type: !1433)
!1531 = !DILocalVariable(name: "pu2DutyCycle", arg: 3, scope: !1524, file: !860, line: 365, type: !1527)
!1532 = !DILocalVariable(name: "pu4PwmFreq", arg: 4, scope: !1524, file: !860, line: 365, type: !1069)
!1533 = !DILocalVariable(name: "pucEnable", arg: 5, scope: !1524, file: !860, line: 365, type: !1070)
!1534 = !DILocalVariable(name: "ret", scope: !1524, file: !860, line: 367, type: !1350)
!1535 = !DILocalVariable(name: "ePwmClk", scope: !1524, file: !860, line: 368, type: !895)
!1536 = !DILocalVariable(name: "u4ClkFreq", scope: !1524, file: !860, line: 369, type: !80)
!1537 = !DILocalVariable(name: "u4PwmStep", scope: !1524, file: !860, line: 370, type: !80)
!1538 = !DILocalVariable(name: "u2OnTime", scope: !1524, file: !860, line: 371, type: !1434)
!1539 = !DILocalVariable(name: "u2OffTime", scope: !1524, file: !860, line: 372, type: !1434)
!1540 = !DILocalVariable(name: "pCRAddr", scope: !1524, file: !860, line: 373, type: !893)
!1541 = !DILocalVariable(name: "u4Val", scope: !1524, file: !860, line: 374, type: !80)
!1542 = !DILocalVariable(name: "ucXtal", scope: !1543, file: !860, line: 401, type: !133)
!1543 = distinct !DILexicalBlock(scope: !1544, file: !860, line: 400, column: 28)
!1544 = distinct !DILexicalBlock(scope: !1524, file: !860, line: 391, column: 22)
!1545 = !DILocation(line: 0, scope: !1524)
!1546 = !DILocation(line: 376, column: 79, scope: !1524)
!1547 = !DILocation(line: 376, column: 77, scope: !1524)
!1548 = !DILocation(line: 376, column: 59, scope: !1524)
!1549 = !DILocation(line: 378, column: 23, scope: !1524)
!1550 = !DILocation(line: 380, column: 15, scope: !1551)
!1551 = distinct !DILexicalBlock(scope: !1524, file: !860, line: 380, column: 9)
!1552 = !DILocation(line: 380, column: 9, scope: !1524)
!1553 = !DILocation(line: 381, column: 22, scope: !1554)
!1554 = distinct !DILexicalBlock(scope: !1551, file: !860, line: 380, column: 52)
!1555 = !DILocation(line: 389, column: 34, scope: !1524)
!1556 = !DILocation(line: 389, column: 100, scope: !1524)
!1557 = !DILocation(line: 391, column: 13, scope: !1524)
!1558 = !DILocation(line: 391, column: 5, scope: !1524)
!1559 = !DILocation(line: 383, column: 22, scope: !1560)
!1560 = distinct !DILexicalBlock(scope: !1551, file: !860, line: 382, column: 12)
!1561 = !DILocation(line: 386, column: 9, scope: !1560)
!1562 = !DILocation(line: 398, column: 13, scope: !1544)
!1563 = !DILocation(line: 0, scope: !1543)
!1564 = !DILocation(line: 402, column: 24, scope: !1543)
!1565 = !DILocation(line: 402, column: 90, scope: !1543)
!1566 = !DILocation(line: 402, column: 22, scope: !1543)
!1567 = !DILocation(line: 403, column: 17, scope: !1543)
!1568 = !DILocation(line: 0, scope: !1544)
!1569 = !DILocation(line: 436, column: 16, scope: !1570)
!1570 = distinct !DILexicalBlock(scope: !1524, file: !860, line: 436, column: 9)
!1571 = !DILocation(line: 436, column: 9, scope: !1524)
!1572 = !DILocation(line: 437, column: 27, scope: !1573)
!1573 = distinct !DILexicalBlock(scope: !1570, file: !860, line: 436, column: 27)
!1574 = !DILocation(line: 438, column: 28, scope: !1573)
!1575 = !DILocation(line: 439, column: 29, scope: !1573)
!1576 = !DILocation(line: 440, column: 5, scope: !1573)
!1577 = !DILocation(line: 441, column: 27, scope: !1578)
!1578 = distinct !DILexicalBlock(scope: !1570, file: !860, line: 440, column: 12)
!1579 = !DILocation(line: 0, scope: !1570)
!1580 = !DILocation(line: 446, column: 17, scope: !1524)
!1581 = !DILocation(line: 446, column: 26, scope: !1524)
!1582 = !DILocation(line: 447, column: 32, scope: !1524)
!1583 = !DILocation(line: 450, column: 5, scope: !1524)
!1584 = !DILocation(line: 451, column: 1, scope: !1524)
!1585 = distinct !DISubprogram(name: "halGPIO_ConfDirection", scope: !897, file: !897, line: 54, type: !1586, scopeLine: 55, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !896, retainedNodes: !1589)
!1586 = !DISubroutineType(types: !1587)
!1587 = !{!1588, !80, !133}
!1588 = !DIDerivedType(tag: DW_TAG_typedef, name: "INT32", file: !6, line: 56, baseType: !13)
!1589 = !{!1590, !1591, !1592, !1593}
!1590 = !DILocalVariable(name: "GPIO_pin", arg: 1, scope: !1585, file: !897, line: 54, type: !80)
!1591 = !DILocalVariable(name: "outEnable", arg: 2, scope: !1585, file: !897, line: 54, type: !133)
!1592 = !DILocalVariable(name: "no", scope: !1585, file: !897, line: 57, type: !1434)
!1593 = !DILocalVariable(name: "remainder", scope: !1585, file: !897, line: 58, type: !1434)
!1594 = !DILocation(line: 0, scope: !1585)
!1595 = !DILocation(line: 59, column: 19, scope: !1585)
!1596 = !DILocation(line: 60, column: 17, scope: !1585)
!1597 = !DILocation(line: 61, column: 5, scope: !1585)
!1598 = !DILocation(line: 65, column: 27, scope: !1599)
!1599 = distinct !DILexicalBlock(scope: !1600, file: !897, line: 65, column: 17)
!1600 = distinct !DILexicalBlock(scope: !1585, file: !897, line: 61, column: 17)
!1601 = !DILocation(line: 0, scope: !1599)
!1602 = !DILocation(line: 65, column: 17, scope: !1600)
!1603 = !DILocation(line: 66, column: 21, scope: !1604)
!1604 = distinct !DILexicalBlock(scope: !1599, file: !897, line: 65, column: 33)
!1605 = !DILocation(line: 67, column: 73, scope: !1606)
!1606 = distinct !DILexicalBlock(scope: !1607, file: !897, line: 66, column: 38)
!1607 = distinct !DILexicalBlock(scope: !1604, file: !897, line: 66, column: 21)
!1608 = !DILocation(line: 67, column: 69, scope: !1606)
!1609 = !DILocation(line: 67, column: 66, scope: !1606)
!1610 = !DILocation(line: 68, column: 17, scope: !1606)
!1611 = !DILocation(line: 68, column: 28, scope: !1607)
!1612 = !DILocation(line: 69, column: 77, scope: !1613)
!1613 = distinct !DILexicalBlock(scope: !1614, file: !897, line: 68, column: 45)
!1614 = distinct !DILexicalBlock(scope: !1607, file: !897, line: 68, column: 28)
!1615 = !DILocation(line: 70, column: 77, scope: !1613)
!1616 = !DILocation(line: 71, column: 17, scope: !1613)
!1617 = !DILocation(line: 72, column: 77, scope: !1618)
!1618 = distinct !DILexicalBlock(scope: !1619, file: !897, line: 71, column: 45)
!1619 = distinct !DILexicalBlock(scope: !1614, file: !897, line: 71, column: 28)
!1620 = !DILocation(line: 73, column: 77, scope: !1618)
!1621 = !DILocation(line: 74, column: 17, scope: !1618)
!1622 = !DILocation(line: 75, column: 79, scope: !1623)
!1623 = distinct !DILexicalBlock(scope: !1624, file: !897, line: 74, column: 45)
!1624 = distinct !DILexicalBlock(scope: !1619, file: !897, line: 74, column: 28)
!1625 = !DILocation(line: 76, column: 79, scope: !1623)
!1626 = !DILocation(line: 77, column: 17, scope: !1623)
!1627 = !DILocation(line: 78, column: 79, scope: !1628)
!1628 = distinct !DILexicalBlock(scope: !1629, file: !897, line: 77, column: 45)
!1629 = distinct !DILexicalBlock(scope: !1624, file: !897, line: 77, column: 28)
!1630 = !DILocation(line: 79, column: 79, scope: !1628)
!1631 = !DILocation(line: 80, column: 17, scope: !1628)
!1632 = !DILocation(line: 81, column: 79, scope: !1633)
!1633 = distinct !DILexicalBlock(scope: !1634, file: !897, line: 80, column: 45)
!1634 = distinct !DILexicalBlock(scope: !1629, file: !897, line: 80, column: 28)
!1635 = !DILocation(line: 82, column: 79, scope: !1633)
!1636 = !DILocation(line: 83, column: 17, scope: !1633)
!1637 = !DILocation(line: 85, column: 17, scope: !1604)
!1638 = !DILocation(line: 86, column: 13, scope: !1604)
!1639 = !DILocation(line: 88, column: 21, scope: !1640)
!1640 = distinct !DILexicalBlock(scope: !1599, file: !897, line: 86, column: 20)
!1641 = !DILocation(line: 89, column: 72, scope: !1642)
!1642 = distinct !DILexicalBlock(scope: !1643, file: !897, line: 88, column: 38)
!1643 = distinct !DILexicalBlock(scope: !1640, file: !897, line: 88, column: 21)
!1644 = !DILocation(line: 89, column: 66, scope: !1642)
!1645 = !DILocation(line: 90, column: 17, scope: !1642)
!1646 = !DILocation(line: 90, column: 28, scope: !1643)
!1647 = !DILocation(line: 91, column: 77, scope: !1648)
!1648 = distinct !DILexicalBlock(scope: !1649, file: !897, line: 90, column: 45)
!1649 = distinct !DILexicalBlock(scope: !1643, file: !897, line: 90, column: 28)
!1650 = !DILocation(line: 92, column: 17, scope: !1648)
!1651 = !DILocation(line: 93, column: 77, scope: !1652)
!1652 = distinct !DILexicalBlock(scope: !1653, file: !897, line: 92, column: 45)
!1653 = distinct !DILexicalBlock(scope: !1649, file: !897, line: 92, column: 28)
!1654 = !DILocation(line: 94, column: 17, scope: !1652)
!1655 = !DILocation(line: 95, column: 79, scope: !1656)
!1656 = distinct !DILexicalBlock(scope: !1657, file: !897, line: 94, column: 45)
!1657 = distinct !DILexicalBlock(scope: !1653, file: !897, line: 94, column: 28)
!1658 = !DILocation(line: 96, column: 17, scope: !1656)
!1659 = !DILocation(line: 97, column: 79, scope: !1660)
!1660 = distinct !DILexicalBlock(scope: !1661, file: !897, line: 96, column: 45)
!1661 = distinct !DILexicalBlock(scope: !1657, file: !897, line: 96, column: 28)
!1662 = !DILocation(line: 98, column: 17, scope: !1660)
!1663 = !DILocation(line: 99, column: 79, scope: !1664)
!1664 = distinct !DILexicalBlock(scope: !1665, file: !897, line: 98, column: 45)
!1665 = distinct !DILexicalBlock(scope: !1661, file: !897, line: 98, column: 28)
!1666 = !DILocation(line: 100, column: 17, scope: !1664)
!1667 = !DILocation(line: 103, column: 17, scope: !1640)
!1668 = !DILocation(line: 109, column: 27, scope: !1669)
!1669 = distinct !DILexicalBlock(scope: !1600, file: !897, line: 109, column: 17)
!1670 = !DILocation(line: 0, scope: !1669)
!1671 = !DILocation(line: 109, column: 17, scope: !1600)
!1672 = !DILocation(line: 110, column: 21, scope: !1673)
!1673 = distinct !DILexicalBlock(scope: !1669, file: !897, line: 109, column: 33)
!1674 = !DILocation(line: 111, column: 73, scope: !1675)
!1675 = distinct !DILexicalBlock(scope: !1676, file: !897, line: 110, column: 36)
!1676 = distinct !DILexicalBlock(scope: !1673, file: !897, line: 110, column: 21)
!1677 = !DILocation(line: 111, column: 69, scope: !1675)
!1678 = !DILocation(line: 111, column: 66, scope: !1675)
!1679 = !DILocation(line: 112, column: 17, scope: !1675)
!1680 = !DILocation(line: 113, column: 79, scope: !1681)
!1681 = distinct !DILexicalBlock(scope: !1676, file: !897, line: 112, column: 24)
!1682 = !DILocation(line: 114, column: 79, scope: !1681)
!1683 = !DILocation(line: 117, column: 17, scope: !1673)
!1684 = !DILocation(line: 118, column: 13, scope: !1673)
!1685 = !DILocation(line: 120, column: 21, scope: !1686)
!1686 = distinct !DILexicalBlock(scope: !1669, file: !897, line: 118, column: 20)
!1687 = !DILocation(line: 121, column: 72, scope: !1688)
!1688 = distinct !DILexicalBlock(scope: !1689, file: !897, line: 120, column: 36)
!1689 = distinct !DILexicalBlock(scope: !1686, file: !897, line: 120, column: 21)
!1690 = !DILocation(line: 121, column: 66, scope: !1688)
!1691 = !DILocation(line: 122, column: 17, scope: !1688)
!1692 = !DILocation(line: 123, column: 79, scope: !1693)
!1693 = distinct !DILexicalBlock(scope: !1689, file: !897, line: 122, column: 24)
!1694 = !DILocation(line: 126, column: 17, scope: !1686)
!1695 = !DILocation(line: 133, column: 1, scope: !1585)
!1696 = distinct !DISubprogram(name: "halGPO_Write", scope: !897, file: !897, line: 136, type: !1586, scopeLine: 137, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !896, retainedNodes: !1697)
!1697 = !{!1698, !1699, !1700, !1701}
!1698 = !DILocalVariable(name: "GPIO_pin", arg: 1, scope: !1696, file: !897, line: 136, type: !80)
!1699 = !DILocalVariable(name: "writeValue", arg: 2, scope: !1696, file: !897, line: 136, type: !133)
!1700 = !DILocalVariable(name: "no", scope: !1696, file: !897, line: 138, type: !1434)
!1701 = !DILocalVariable(name: "remainder", scope: !1696, file: !897, line: 139, type: !1434)
!1702 = !DILocation(line: 0, scope: !1696)
!1703 = !DILocation(line: 140, column: 19, scope: !1696)
!1704 = !DILocation(line: 141, column: 17, scope: !1696)
!1705 = !DILocation(line: 142, column: 5, scope: !1696)
!1706 = !DILocation(line: 145, column: 17, scope: !1707)
!1707 = distinct !DILexicalBlock(scope: !1708, file: !897, line: 145, column: 17)
!1708 = distinct !DILexicalBlock(scope: !1696, file: !897, line: 142, column: 17)
!1709 = !DILocation(line: 0, scope: !1707)
!1710 = !DILocation(line: 145, column: 17, scope: !1708)
!1711 = !DILocation(line: 146, column: 17, scope: !1712)
!1712 = distinct !DILexicalBlock(scope: !1707, file: !897, line: 145, column: 29)
!1713 = !DILocation(line: 147, column: 13, scope: !1712)
!1714 = !DILocation(line: 148, column: 17, scope: !1715)
!1715 = distinct !DILexicalBlock(scope: !1707, file: !897, line: 147, column: 20)
!1716 = !DILocation(line: 153, column: 17, scope: !1717)
!1717 = distinct !DILexicalBlock(scope: !1708, file: !897, line: 153, column: 17)
!1718 = !DILocation(line: 0, scope: !1717)
!1719 = !DILocation(line: 153, column: 17, scope: !1708)
!1720 = !DILocation(line: 154, column: 17, scope: !1721)
!1721 = distinct !DILexicalBlock(scope: !1717, file: !897, line: 153, column: 29)
!1722 = !DILocation(line: 155, column: 13, scope: !1721)
!1723 = !DILocation(line: 156, column: 17, scope: !1724)
!1724 = distinct !DILexicalBlock(scope: !1717, file: !897, line: 155, column: 20)
!1725 = !DILocation(line: 163, column: 1, scope: !1696)
!1726 = distinct !DISubprogram(name: "halgetGPIO_DOUT", scope: !897, file: !897, line: 169, type: !1727, scopeLine: 170, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !896, retainedNodes: !1729)
!1727 = !DISubroutineType(types: !1728)
!1728 = !{!133, !80}
!1729 = !{!1730, !1731, !1732, !1733}
!1730 = !DILocalVariable(name: "GPIO_pin", arg: 1, scope: !1726, file: !897, line: 169, type: !80)
!1731 = !DILocalVariable(name: "no", scope: !1726, file: !897, line: 171, type: !1434)
!1732 = !DILocalVariable(name: "remainder", scope: !1726, file: !897, line: 172, type: !1434)
!1733 = !DILocalVariable(name: "dout", scope: !1726, file: !897, line: 175, type: !133)
!1734 = !DILocation(line: 0, scope: !1726)
!1735 = !DILocation(line: 173, column: 19, scope: !1726)
!1736 = !DILocation(line: 174, column: 17, scope: !1726)
!1737 = !DILocation(line: 177, column: 5, scope: !1726)
!1738 = !DILocation(line: 183, column: 13, scope: !1739)
!1739 = distinct !DILexicalBlock(scope: !1726, file: !897, line: 177, column: 17)
!1740 = !DILocation(line: 0, scope: !1739)
!1741 = !DILocation(line: 187, column: 5, scope: !1726)
!1742 = !DILocation(line: 188, column: 1, scope: !1726)
!1743 = distinct !DISubprogram(name: "halgetGPIO_DIN", scope: !897, file: !897, line: 189, type: !1727, scopeLine: 190, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !896, retainedNodes: !1744)
!1744 = !{!1745, !1746, !1747, !1748}
!1745 = !DILocalVariable(name: "GPIO_pin", arg: 1, scope: !1743, file: !897, line: 189, type: !80)
!1746 = !DILocalVariable(name: "no", scope: !1743, file: !897, line: 191, type: !1434)
!1747 = !DILocalVariable(name: "remainder", scope: !1743, file: !897, line: 192, type: !1434)
!1748 = !DILocalVariable(name: "din", scope: !1743, file: !897, line: 195, type: !133)
!1749 = !DILocation(line: 0, scope: !1743)
!1750 = !DILocation(line: 193, column: 19, scope: !1743)
!1751 = !DILocation(line: 194, column: 17, scope: !1743)
!1752 = !DILocation(line: 196, column: 5, scope: !1743)
!1753 = !DILocation(line: 203, column: 13, scope: !1754)
!1754 = distinct !DILexicalBlock(scope: !1743, file: !897, line: 196, column: 17)
!1755 = !DILocation(line: 0, scope: !1754)
!1756 = !DILocation(line: 208, column: 5, scope: !1743)
!1757 = !DILocation(line: 209, column: 1, scope: !1743)
!1758 = distinct !DISubprogram(name: "halgetGPIO_OutEnable", scope: !897, file: !897, line: 210, type: !1727, scopeLine: 211, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !896, retainedNodes: !1759)
!1759 = !{!1760, !1761, !1762, !1763}
!1760 = !DILocalVariable(name: "GPIO_pin", arg: 1, scope: !1758, file: !897, line: 210, type: !80)
!1761 = !DILocalVariable(name: "no", scope: !1758, file: !897, line: 212, type: !1434)
!1762 = !DILocalVariable(name: "remainder", scope: !1758, file: !897, line: 213, type: !1434)
!1763 = !DILocalVariable(name: "outEnable", scope: !1758, file: !897, line: 216, type: !133)
!1764 = !DILocation(line: 0, scope: !1758)
!1765 = !DILocation(line: 214, column: 19, scope: !1758)
!1766 = !DILocation(line: 215, column: 17, scope: !1758)
!1767 = !DILocation(line: 218, column: 5, scope: !1758)
!1768 = !DILocation(line: 224, column: 13, scope: !1769)
!1769 = distinct !DILexicalBlock(scope: !1758, file: !897, line: 218, column: 17)
!1770 = !DILocation(line: 0, scope: !1769)
!1771 = !DILocation(line: 228, column: 5, scope: !1758)
!1772 = !DILocation(line: 229, column: 1, scope: !1758)
!1773 = distinct !DISubprogram(name: "halGPIO_PullUp_SET", scope: !897, file: !897, line: 232, type: !1774, scopeLine: 233, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !896, retainedNodes: !1776)
!1774 = !DISubroutineType(types: !1775)
!1775 = !{!1588, !80}
!1776 = !{!1777, !1778, !1779}
!1777 = !DILocalVariable(name: "GPIO_pin", arg: 1, scope: !1773, file: !897, line: 232, type: !80)
!1778 = !DILocalVariable(name: "no", scope: !1773, file: !897, line: 234, type: !1434)
!1779 = !DILocalVariable(name: "remainder", scope: !1773, file: !897, line: 235, type: !1434)
!1780 = !DILocation(line: 0, scope: !1773)
!1781 = !DILocation(line: 236, column: 19, scope: !1773)
!1782 = !DILocation(line: 237, column: 17, scope: !1773)
!1783 = !DILocation(line: 238, column: 5, scope: !1773)
!1784 = !DILocation(line: 239, column: 5, scope: !1773)
!1785 = !DILocation(line: 241, column: 27, scope: !1786)
!1786 = distinct !DILexicalBlock(scope: !1787, file: !897, line: 241, column: 17)
!1787 = distinct !DILexicalBlock(scope: !1773, file: !897, line: 239, column: 17)
!1788 = !DILocation(line: 241, column: 17, scope: !1787)
!1789 = !DILocation(line: 241, column: 17, scope: !1786)
!1790 = !DILocation(line: 242, column: 17, scope: !1791)
!1791 = distinct !DILexicalBlock(scope: !1786, file: !897, line: 241, column: 34)
!1792 = !DILocation(line: 243, column: 13, scope: !1791)
!1793 = !DILocation(line: 243, column: 24, scope: !1786)
!1794 = !DILocation(line: 244, column: 73, scope: !1795)
!1795 = distinct !DILexicalBlock(scope: !1796, file: !897, line: 243, column: 41)
!1796 = distinct !DILexicalBlock(scope: !1786, file: !897, line: 243, column: 24)
!1797 = !DILocation(line: 245, column: 73, scope: !1795)
!1798 = !DILocation(line: 246, column: 13, scope: !1795)
!1799 = !DILocation(line: 247, column: 73, scope: !1800)
!1800 = distinct !DILexicalBlock(scope: !1801, file: !897, line: 246, column: 41)
!1801 = distinct !DILexicalBlock(scope: !1796, file: !897, line: 246, column: 24)
!1802 = !DILocation(line: 248, column: 73, scope: !1800)
!1803 = !DILocation(line: 249, column: 13, scope: !1800)
!1804 = !DILocation(line: 250, column: 75, scope: !1805)
!1805 = distinct !DILexicalBlock(scope: !1806, file: !897, line: 249, column: 41)
!1806 = distinct !DILexicalBlock(scope: !1801, file: !897, line: 249, column: 24)
!1807 = !DILocation(line: 251, column: 75, scope: !1805)
!1808 = !DILocation(line: 252, column: 13, scope: !1805)
!1809 = !DILocation(line: 253, column: 75, scope: !1810)
!1810 = distinct !DILexicalBlock(scope: !1811, file: !897, line: 252, column: 41)
!1811 = distinct !DILexicalBlock(scope: !1806, file: !897, line: 252, column: 24)
!1812 = !DILocation(line: 254, column: 75, scope: !1810)
!1813 = !DILocation(line: 255, column: 13, scope: !1810)
!1814 = !DILocation(line: 256, column: 75, scope: !1815)
!1815 = distinct !DILexicalBlock(scope: !1816, file: !897, line: 255, column: 41)
!1816 = distinct !DILexicalBlock(scope: !1811, file: !897, line: 255, column: 24)
!1817 = !DILocation(line: 257, column: 75, scope: !1815)
!1818 = !DILocation(line: 258, column: 13, scope: !1815)
!1819 = !DILocation(line: 261, column: 18, scope: !1820)
!1820 = distinct !DILexicalBlock(scope: !1787, file: !897, line: 261, column: 17)
!1821 = !DILocation(line: 261, column: 17, scope: !1787)
!1822 = !DILocation(line: 262, column: 75, scope: !1823)
!1823 = distinct !DILexicalBlock(scope: !1820, file: !897, line: 261, column: 29)
!1824 = !DILocation(line: 263, column: 75, scope: !1823)
!1825 = !DILocation(line: 264, column: 13, scope: !1823)
!1826 = !DILocation(line: 265, column: 17, scope: !1827)
!1827 = distinct !DILexicalBlock(scope: !1820, file: !897, line: 264, column: 20)
!1828 = !DILocation(line: 272, column: 1, scope: !1773)
!1829 = distinct !DISubprogram(name: "halGPIO_PullDown_RESET", scope: !897, file: !897, line: 359, type: !1774, scopeLine: 360, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !896, retainedNodes: !1830)
!1830 = !{!1831, !1832, !1833}
!1831 = !DILocalVariable(name: "GPIO_pin", arg: 1, scope: !1829, file: !897, line: 359, type: !80)
!1832 = !DILocalVariable(name: "no", scope: !1829, file: !897, line: 362, type: !1434)
!1833 = !DILocalVariable(name: "remainder", scope: !1829, file: !897, line: 363, type: !1434)
!1834 = !DILocation(line: 0, scope: !1829)
!1835 = !DILocation(line: 364, column: 19, scope: !1829)
!1836 = !DILocation(line: 365, column: 17, scope: !1829)
!1837 = !DILocation(line: 367, column: 5, scope: !1829)
!1838 = !DILocation(line: 369, column: 27, scope: !1839)
!1839 = distinct !DILexicalBlock(scope: !1840, file: !897, line: 369, column: 17)
!1840 = distinct !DILexicalBlock(scope: !1829, file: !897, line: 367, column: 17)
!1841 = !DILocation(line: 369, column: 17, scope: !1840)
!1842 = !DILocation(line: 369, column: 17, scope: !1839)
!1843 = !DILocation(line: 370, column: 17, scope: !1844)
!1844 = distinct !DILexicalBlock(scope: !1839, file: !897, line: 369, column: 34)
!1845 = !DILocation(line: 371, column: 13, scope: !1844)
!1846 = !DILocation(line: 371, column: 24, scope: !1839)
!1847 = !DILocation(line: 372, column: 73, scope: !1848)
!1848 = distinct !DILexicalBlock(scope: !1849, file: !897, line: 371, column: 41)
!1849 = distinct !DILexicalBlock(scope: !1839, file: !897, line: 371, column: 24)
!1850 = !DILocation(line: 373, column: 73, scope: !1848)
!1851 = !DILocation(line: 374, column: 13, scope: !1848)
!1852 = !DILocation(line: 375, column: 73, scope: !1853)
!1853 = distinct !DILexicalBlock(scope: !1854, file: !897, line: 374, column: 41)
!1854 = distinct !DILexicalBlock(scope: !1849, file: !897, line: 374, column: 24)
!1855 = !DILocation(line: 376, column: 73, scope: !1853)
!1856 = !DILocation(line: 377, column: 13, scope: !1853)
!1857 = !DILocation(line: 378, column: 75, scope: !1858)
!1858 = distinct !DILexicalBlock(scope: !1859, file: !897, line: 377, column: 41)
!1859 = distinct !DILexicalBlock(scope: !1854, file: !897, line: 377, column: 24)
!1860 = !DILocation(line: 379, column: 75, scope: !1858)
!1861 = !DILocation(line: 380, column: 13, scope: !1858)
!1862 = !DILocation(line: 381, column: 75, scope: !1863)
!1863 = distinct !DILexicalBlock(scope: !1864, file: !897, line: 380, column: 41)
!1864 = distinct !DILexicalBlock(scope: !1859, file: !897, line: 380, column: 24)
!1865 = !DILocation(line: 382, column: 75, scope: !1863)
!1866 = !DILocation(line: 383, column: 13, scope: !1863)
!1867 = !DILocation(line: 384, column: 75, scope: !1868)
!1868 = distinct !DILexicalBlock(scope: !1869, file: !897, line: 383, column: 41)
!1869 = distinct !DILexicalBlock(scope: !1864, file: !897, line: 383, column: 24)
!1870 = !DILocation(line: 385, column: 75, scope: !1868)
!1871 = !DILocation(line: 386, column: 13, scope: !1868)
!1872 = !DILocation(line: 389, column: 18, scope: !1873)
!1873 = distinct !DILexicalBlock(scope: !1840, file: !897, line: 389, column: 17)
!1874 = !DILocation(line: 389, column: 17, scope: !1840)
!1875 = !DILocation(line: 390, column: 75, scope: !1876)
!1876 = distinct !DILexicalBlock(scope: !1873, file: !897, line: 389, column: 29)
!1877 = !DILocation(line: 391, column: 75, scope: !1876)
!1878 = !DILocation(line: 392, column: 13, scope: !1876)
!1879 = !DILocation(line: 393, column: 17, scope: !1880)
!1880 = distinct !DILexicalBlock(scope: !1873, file: !897, line: 392, column: 20)
!1881 = !DILocation(line: 401, column: 1, scope: !1829)
!1882 = distinct !DISubprogram(name: "halGPIO_PullUp_RESET", scope: !897, file: !897, line: 274, type: !1774, scopeLine: 275, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !896, retainedNodes: !1883)
!1883 = !{!1884, !1885, !1886}
!1884 = !DILocalVariable(name: "GPIO_pin", arg: 1, scope: !1882, file: !897, line: 274, type: !80)
!1885 = !DILocalVariable(name: "no", scope: !1882, file: !897, line: 276, type: !1434)
!1886 = !DILocalVariable(name: "remainder", scope: !1882, file: !897, line: 277, type: !1434)
!1887 = !DILocation(line: 0, scope: !1882)
!1888 = !DILocation(line: 278, column: 19, scope: !1882)
!1889 = !DILocation(line: 279, column: 17, scope: !1882)
!1890 = !DILocation(line: 281, column: 5, scope: !1882)
!1891 = !DILocation(line: 283, column: 27, scope: !1892)
!1892 = distinct !DILexicalBlock(scope: !1893, file: !897, line: 283, column: 17)
!1893 = distinct !DILexicalBlock(scope: !1882, file: !897, line: 281, column: 17)
!1894 = !DILocation(line: 283, column: 17, scope: !1893)
!1895 = !DILocation(line: 283, column: 17, scope: !1892)
!1896 = !DILocation(line: 284, column: 17, scope: !1897)
!1897 = distinct !DILexicalBlock(scope: !1892, file: !897, line: 283, column: 34)
!1898 = !DILocation(line: 285, column: 13, scope: !1897)
!1899 = !DILocation(line: 285, column: 24, scope: !1892)
!1900 = !DILocation(line: 286, column: 73, scope: !1901)
!1901 = distinct !DILexicalBlock(scope: !1902, file: !897, line: 285, column: 41)
!1902 = distinct !DILexicalBlock(scope: !1892, file: !897, line: 285, column: 24)
!1903 = !DILocation(line: 287, column: 73, scope: !1901)
!1904 = !DILocation(line: 288, column: 13, scope: !1901)
!1905 = !DILocation(line: 289, column: 73, scope: !1906)
!1906 = distinct !DILexicalBlock(scope: !1907, file: !897, line: 288, column: 41)
!1907 = distinct !DILexicalBlock(scope: !1902, file: !897, line: 288, column: 24)
!1908 = !DILocation(line: 290, column: 73, scope: !1906)
!1909 = !DILocation(line: 291, column: 13, scope: !1906)
!1910 = !DILocation(line: 292, column: 75, scope: !1911)
!1911 = distinct !DILexicalBlock(scope: !1912, file: !897, line: 291, column: 41)
!1912 = distinct !DILexicalBlock(scope: !1907, file: !897, line: 291, column: 24)
!1913 = !DILocation(line: 293, column: 75, scope: !1911)
!1914 = !DILocation(line: 294, column: 13, scope: !1911)
!1915 = !DILocation(line: 295, column: 75, scope: !1916)
!1916 = distinct !DILexicalBlock(scope: !1917, file: !897, line: 294, column: 41)
!1917 = distinct !DILexicalBlock(scope: !1912, file: !897, line: 294, column: 24)
!1918 = !DILocation(line: 296, column: 75, scope: !1916)
!1919 = !DILocation(line: 297, column: 13, scope: !1916)
!1920 = !DILocation(line: 298, column: 75, scope: !1921)
!1921 = distinct !DILexicalBlock(scope: !1922, file: !897, line: 297, column: 41)
!1922 = distinct !DILexicalBlock(scope: !1917, file: !897, line: 297, column: 24)
!1923 = !DILocation(line: 299, column: 75, scope: !1921)
!1924 = !DILocation(line: 300, column: 13, scope: !1921)
!1925 = !DILocation(line: 303, column: 18, scope: !1926)
!1926 = distinct !DILexicalBlock(scope: !1893, file: !897, line: 303, column: 17)
!1927 = !DILocation(line: 303, column: 17, scope: !1893)
!1928 = !DILocation(line: 304, column: 75, scope: !1929)
!1929 = distinct !DILexicalBlock(scope: !1926, file: !897, line: 303, column: 29)
!1930 = !DILocation(line: 305, column: 75, scope: !1929)
!1931 = !DILocation(line: 306, column: 13, scope: !1929)
!1932 = !DILocation(line: 307, column: 17, scope: !1933)
!1933 = distinct !DILexicalBlock(scope: !1926, file: !897, line: 306, column: 20)
!1934 = !DILocation(line: 314, column: 1, scope: !1882)
!1935 = distinct !DISubprogram(name: "halGPIO_PullDown_SET", scope: !897, file: !897, line: 316, type: !1774, scopeLine: 317, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !896, retainedNodes: !1936)
!1936 = !{!1937, !1938, !1939}
!1937 = !DILocalVariable(name: "GPIO_pin", arg: 1, scope: !1935, file: !897, line: 316, type: !80)
!1938 = !DILocalVariable(name: "no", scope: !1935, file: !897, line: 318, type: !1434)
!1939 = !DILocalVariable(name: "remainder", scope: !1935, file: !897, line: 319, type: !1434)
!1940 = !DILocation(line: 0, scope: !1935)
!1941 = !DILocation(line: 320, column: 19, scope: !1935)
!1942 = !DILocation(line: 321, column: 17, scope: !1935)
!1943 = !DILocation(line: 322, column: 5, scope: !1935)
!1944 = !DILocation(line: 323, column: 5, scope: !1935)
!1945 = !DILocation(line: 325, column: 27, scope: !1946)
!1946 = distinct !DILexicalBlock(scope: !1947, file: !897, line: 325, column: 17)
!1947 = distinct !DILexicalBlock(scope: !1935, file: !897, line: 323, column: 17)
!1948 = !DILocation(line: 325, column: 17, scope: !1947)
!1949 = !DILocation(line: 325, column: 17, scope: !1946)
!1950 = !DILocation(line: 326, column: 17, scope: !1951)
!1951 = distinct !DILexicalBlock(scope: !1946, file: !897, line: 325, column: 34)
!1952 = !DILocation(line: 327, column: 13, scope: !1951)
!1953 = !DILocation(line: 327, column: 24, scope: !1946)
!1954 = !DILocation(line: 328, column: 73, scope: !1955)
!1955 = distinct !DILexicalBlock(scope: !1956, file: !897, line: 327, column: 41)
!1956 = distinct !DILexicalBlock(scope: !1946, file: !897, line: 327, column: 24)
!1957 = !DILocation(line: 329, column: 73, scope: !1955)
!1958 = !DILocation(line: 330, column: 13, scope: !1955)
!1959 = !DILocation(line: 331, column: 73, scope: !1960)
!1960 = distinct !DILexicalBlock(scope: !1961, file: !897, line: 330, column: 41)
!1961 = distinct !DILexicalBlock(scope: !1956, file: !897, line: 330, column: 24)
!1962 = !DILocation(line: 332, column: 73, scope: !1960)
!1963 = !DILocation(line: 333, column: 13, scope: !1960)
!1964 = !DILocation(line: 334, column: 75, scope: !1965)
!1965 = distinct !DILexicalBlock(scope: !1966, file: !897, line: 333, column: 41)
!1966 = distinct !DILexicalBlock(scope: !1961, file: !897, line: 333, column: 24)
!1967 = !DILocation(line: 335, column: 75, scope: !1965)
!1968 = !DILocation(line: 336, column: 13, scope: !1965)
!1969 = !DILocation(line: 337, column: 75, scope: !1970)
!1970 = distinct !DILexicalBlock(scope: !1971, file: !897, line: 336, column: 41)
!1971 = distinct !DILexicalBlock(scope: !1966, file: !897, line: 336, column: 24)
!1972 = !DILocation(line: 338, column: 75, scope: !1970)
!1973 = !DILocation(line: 339, column: 13, scope: !1970)
!1974 = !DILocation(line: 340, column: 75, scope: !1975)
!1975 = distinct !DILexicalBlock(scope: !1976, file: !897, line: 339, column: 41)
!1976 = distinct !DILexicalBlock(scope: !1971, file: !897, line: 339, column: 24)
!1977 = !DILocation(line: 341, column: 75, scope: !1975)
!1978 = !DILocation(line: 342, column: 13, scope: !1975)
!1979 = !DILocation(line: 345, column: 18, scope: !1980)
!1980 = distinct !DILexicalBlock(scope: !1947, file: !897, line: 345, column: 17)
!1981 = !DILocation(line: 345, column: 17, scope: !1947)
!1982 = !DILocation(line: 346, column: 75, scope: !1983)
!1983 = distinct !DILexicalBlock(scope: !1980, file: !897, line: 345, column: 29)
!1984 = !DILocation(line: 347, column: 75, scope: !1983)
!1985 = !DILocation(line: 348, column: 13, scope: !1983)
!1986 = !DILocation(line: 349, column: 17, scope: !1987)
!1987 = distinct !DILexicalBlock(scope: !1980, file: !897, line: 348, column: 20)
!1988 = !DILocation(line: 357, column: 1, scope: !1935)
!1989 = distinct !DISubprogram(name: "halGPIO_SetDriving", scope: !897, file: !897, line: 404, type: !1586, scopeLine: 405, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !896, retainedNodes: !1990)
!1990 = !{!1991, !1992, !1993, !1994}
!1991 = !DILocalVariable(name: "GPIO_pin", arg: 1, scope: !1989, file: !897, line: 404, type: !80)
!1992 = !DILocalVariable(name: "GPIO_driving", arg: 2, scope: !1989, file: !897, line: 404, type: !133)
!1993 = !DILocalVariable(name: "no", scope: !1989, file: !897, line: 406, type: !1434)
!1994 = !DILocalVariable(name: "remainder", scope: !1989, file: !897, line: 407, type: !1434)
!1995 = !DILocation(line: 0, scope: !1989)
!1996 = !DILocation(line: 408, column: 19, scope: !1989)
!1997 = !DILocation(line: 409, column: 17, scope: !1989)
!1998 = !DILocation(line: 411, column: 5, scope: !1989)
!1999 = !DILocation(line: 413, column: 84, scope: !2000)
!2000 = distinct !DILexicalBlock(scope: !1989, file: !897, line: 411, column: 17)
!2001 = !DILocation(line: 413, column: 70, scope: !2000)
!2002 = !DILocation(line: 413, column: 64, scope: !2000)
!2003 = !DILocation(line: 413, column: 61, scope: !2000)
!2004 = !DILocation(line: 414, column: 79, scope: !2000)
!2005 = !DILocation(line: 414, column: 83, scope: !2000)
!2006 = !DILocation(line: 414, column: 88, scope: !2000)
!2007 = !DILocation(line: 414, column: 61, scope: !2000)
!2008 = !DILocation(line: 415, column: 13, scope: !2000)
!2009 = !DILocation(line: 417, column: 27, scope: !2010)
!2010 = distinct !DILexicalBlock(scope: !2000, file: !897, line: 417, column: 17)
!2011 = !DILocation(line: 417, column: 17, scope: !2000)
!2012 = !DILocation(line: 418, column: 88, scope: !2013)
!2013 = distinct !DILexicalBlock(scope: !2010, file: !897, line: 417, column: 33)
!2014 = !DILocation(line: 418, column: 74, scope: !2013)
!2015 = !DILocation(line: 418, column: 68, scope: !2013)
!2016 = !DILocation(line: 418, column: 65, scope: !2013)
!2017 = !DILocation(line: 419, column: 83, scope: !2013)
!2018 = !DILocation(line: 419, column: 87, scope: !2013)
!2019 = !DILocation(line: 419, column: 92, scope: !2013)
!2020 = !DILocation(line: 419, column: 65, scope: !2013)
!2021 = !DILocation(line: 420, column: 13, scope: !2013)
!2022 = !DILocation(line: 420, column: 24, scope: !2010)
!2023 = !DILocation(line: 421, column: 73, scope: !2024)
!2024 = distinct !DILexicalBlock(scope: !2025, file: !897, line: 420, column: 41)
!2025 = distinct !DILexicalBlock(scope: !2010, file: !897, line: 420, column: 24)
!2026 = !DILocation(line: 422, column: 91, scope: !2024)
!2027 = !DILocation(line: 422, column: 100, scope: !2024)
!2028 = !DILocation(line: 422, column: 73, scope: !2024)
!2029 = !DILocation(line: 423, column: 73, scope: !2024)
!2030 = !DILocation(line: 424, column: 13, scope: !2024)
!2031 = !DILocation(line: 425, column: 73, scope: !2032)
!2032 = distinct !DILexicalBlock(scope: !2033, file: !897, line: 424, column: 41)
!2033 = distinct !DILexicalBlock(scope: !2025, file: !897, line: 424, column: 24)
!2034 = !DILocation(line: 426, column: 91, scope: !2032)
!2035 = !DILocation(line: 426, column: 100, scope: !2032)
!2036 = !DILocation(line: 426, column: 73, scope: !2032)
!2037 = !DILocation(line: 427, column: 73, scope: !2032)
!2038 = !DILocation(line: 428, column: 13, scope: !2032)
!2039 = !DILocation(line: 429, column: 75, scope: !2040)
!2040 = distinct !DILexicalBlock(scope: !2041, file: !897, line: 428, column: 41)
!2041 = distinct !DILexicalBlock(scope: !2033, file: !897, line: 428, column: 24)
!2042 = !DILocation(line: 430, column: 93, scope: !2040)
!2043 = !DILocation(line: 430, column: 102, scope: !2040)
!2044 = !DILocation(line: 430, column: 75, scope: !2040)
!2045 = !DILocation(line: 431, column: 75, scope: !2040)
!2046 = !DILocation(line: 432, column: 13, scope: !2040)
!2047 = !DILocation(line: 433, column: 75, scope: !2048)
!2048 = distinct !DILexicalBlock(scope: !2049, file: !897, line: 432, column: 41)
!2049 = distinct !DILexicalBlock(scope: !2041, file: !897, line: 432, column: 24)
!2050 = !DILocation(line: 434, column: 93, scope: !2048)
!2051 = !DILocation(line: 434, column: 102, scope: !2048)
!2052 = !DILocation(line: 434, column: 75, scope: !2048)
!2053 = !DILocation(line: 435, column: 75, scope: !2048)
!2054 = !DILocation(line: 436, column: 13, scope: !2048)
!2055 = !DILocation(line: 437, column: 75, scope: !2056)
!2056 = distinct !DILexicalBlock(scope: !2057, file: !897, line: 436, column: 41)
!2057 = distinct !DILexicalBlock(scope: !2049, file: !897, line: 436, column: 24)
!2058 = !DILocation(line: 438, column: 93, scope: !2056)
!2059 = !DILocation(line: 438, column: 102, scope: !2056)
!2060 = !DILocation(line: 438, column: 75, scope: !2056)
!2061 = !DILocation(line: 439, column: 75, scope: !2056)
!2062 = !DILocation(line: 440, column: 13, scope: !2056)
!2063 = !DILocation(line: 443, column: 18, scope: !2064)
!2064 = distinct !DILexicalBlock(scope: !2000, file: !897, line: 443, column: 17)
!2065 = !DILocation(line: 443, column: 17, scope: !2000)
!2066 = !DILocation(line: 444, column: 75, scope: !2067)
!2067 = distinct !DILexicalBlock(scope: !2064, file: !897, line: 443, column: 29)
!2068 = !DILocation(line: 445, column: 93, scope: !2067)
!2069 = !DILocation(line: 445, column: 102, scope: !2067)
!2070 = !DILocation(line: 445, column: 75, scope: !2067)
!2071 = !DILocation(line: 446, column: 75, scope: !2067)
!2072 = !DILocation(line: 447, column: 13, scope: !2067)
!2073 = !DILocation(line: 448, column: 88, scope: !2074)
!2074 = distinct !DILexicalBlock(scope: !2064, file: !897, line: 447, column: 20)
!2075 = !DILocation(line: 448, column: 74, scope: !2074)
!2076 = !DILocation(line: 448, column: 68, scope: !2074)
!2077 = !DILocation(line: 448, column: 65, scope: !2074)
!2078 = !DILocation(line: 449, column: 83, scope: !2074)
!2079 = !DILocation(line: 449, column: 87, scope: !2074)
!2080 = !DILocation(line: 449, column: 92, scope: !2074)
!2081 = !DILocation(line: 449, column: 65, scope: !2074)
!2082 = !DILocation(line: 453, column: 84, scope: !2000)
!2083 = !DILocation(line: 453, column: 70, scope: !2000)
!2084 = !DILocation(line: 453, column: 64, scope: !2000)
!2085 = !DILocation(line: 453, column: 61, scope: !2000)
!2086 = !DILocation(line: 454, column: 79, scope: !2000)
!2087 = !DILocation(line: 454, column: 83, scope: !2000)
!2088 = !DILocation(line: 454, column: 88, scope: !2000)
!2089 = !DILocation(line: 454, column: 61, scope: !2000)
!2090 = !DILocation(line: 455, column: 13, scope: !2000)
!2091 = !DILocation(line: 460, column: 1, scope: !1989)
!2092 = distinct !DISubprogram(name: "halGPIO_GetDriving", scope: !897, file: !897, line: 463, type: !2093, scopeLine: 464, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !896, retainedNodes: !2095)
!2093 = !DISubroutineType(types: !2094)
!2094 = !{!1588, !80, !1070}
!2095 = !{!2096, !2097, !2098, !2099, !2100}
!2096 = !DILocalVariable(name: "GPIO_pin", arg: 1, scope: !2092, file: !897, line: 463, type: !80)
!2097 = !DILocalVariable(name: "GPIO_driving", arg: 2, scope: !2092, file: !897, line: 463, type: !1070)
!2098 = !DILocalVariable(name: "no", scope: !2092, file: !897, line: 465, type: !1434)
!2099 = !DILocalVariable(name: "remainder", scope: !2092, file: !897, line: 466, type: !1434)
!2100 = !DILocalVariable(name: "temp", scope: !2092, file: !897, line: 467, type: !80)
!2101 = !DILocation(line: 0, scope: !2092)
!2102 = !DILocation(line: 468, column: 19, scope: !2092)
!2103 = !DILocation(line: 469, column: 17, scope: !2092)
!2104 = !DILocation(line: 471, column: 5, scope: !2092)
!2105 = !DILocation(line: 473, column: 20, scope: !2106)
!2106 = distinct !DILexicalBlock(scope: !2092, file: !897, line: 471, column: 17)
!2107 = !DILocation(line: 474, column: 40, scope: !2106)
!2108 = !DILocation(line: 474, column: 26, scope: !2106)
!2109 = !DILocation(line: 474, column: 18, scope: !2106)
!2110 = !DILocation(line: 475, column: 40, scope: !2106)
!2111 = !DILocation(line: 475, column: 29, scope: !2106)
!2112 = !DILocation(line: 476, column: 13, scope: !2106)
!2113 = !DILocation(line: 478, column: 27, scope: !2114)
!2114 = distinct !DILexicalBlock(scope: !2106, file: !897, line: 478, column: 17)
!2115 = !DILocation(line: 478, column: 17, scope: !2106)
!2116 = !DILocation(line: 479, column: 24, scope: !2117)
!2117 = distinct !DILexicalBlock(scope: !2114, file: !897, line: 478, column: 33)
!2118 = !DILocation(line: 480, column: 44, scope: !2117)
!2119 = !DILocation(line: 480, column: 30, scope: !2117)
!2120 = !DILocation(line: 480, column: 22, scope: !2117)
!2121 = !DILocation(line: 481, column: 44, scope: !2117)
!2122 = !DILocation(line: 481, column: 33, scope: !2117)
!2123 = !DILocation(line: 482, column: 13, scope: !2117)
!2124 = !DILocation(line: 482, column: 24, scope: !2114)
!2125 = !DILocation(line: 483, column: 24, scope: !2126)
!2126 = distinct !DILexicalBlock(scope: !2127, file: !897, line: 482, column: 41)
!2127 = distinct !DILexicalBlock(scope: !2114, file: !897, line: 482, column: 24)
!2128 = !DILocation(line: 485, column: 53, scope: !2126)
!2129 = !DILocation(line: 485, column: 33, scope: !2126)
!2130 = !DILocation(line: 486, column: 13, scope: !2126)
!2131 = !DILocation(line: 487, column: 24, scope: !2132)
!2132 = distinct !DILexicalBlock(scope: !2133, file: !897, line: 486, column: 41)
!2133 = distinct !DILexicalBlock(scope: !2127, file: !897, line: 486, column: 24)
!2134 = !DILocation(line: 489, column: 53, scope: !2132)
!2135 = !DILocation(line: 489, column: 33, scope: !2132)
!2136 = !DILocation(line: 490, column: 13, scope: !2132)
!2137 = !DILocation(line: 491, column: 24, scope: !2138)
!2138 = distinct !DILexicalBlock(scope: !2139, file: !897, line: 490, column: 41)
!2139 = distinct !DILexicalBlock(scope: !2133, file: !897, line: 490, column: 24)
!2140 = !DILocation(line: 493, column: 53, scope: !2138)
!2141 = !DILocation(line: 493, column: 33, scope: !2138)
!2142 = !DILocation(line: 494, column: 13, scope: !2138)
!2143 = !DILocation(line: 495, column: 24, scope: !2144)
!2144 = distinct !DILexicalBlock(scope: !2145, file: !897, line: 494, column: 41)
!2145 = distinct !DILexicalBlock(scope: !2139, file: !897, line: 494, column: 24)
!2146 = !DILocation(line: 497, column: 53, scope: !2144)
!2147 = !DILocation(line: 497, column: 33, scope: !2144)
!2148 = !DILocation(line: 498, column: 13, scope: !2144)
!2149 = !DILocation(line: 499, column: 24, scope: !2150)
!2150 = distinct !DILexicalBlock(scope: !2151, file: !897, line: 498, column: 41)
!2151 = distinct !DILexicalBlock(scope: !2145, file: !897, line: 498, column: 24)
!2152 = !DILocation(line: 501, column: 53, scope: !2150)
!2153 = !DILocation(line: 501, column: 33, scope: !2150)
!2154 = !DILocation(line: 502, column: 13, scope: !2150)
!2155 = !DILocation(line: 505, column: 18, scope: !2156)
!2156 = distinct !DILexicalBlock(scope: !2106, file: !897, line: 505, column: 17)
!2157 = !DILocation(line: 505, column: 17, scope: !2106)
!2158 = !DILocation(line: 506, column: 24, scope: !2159)
!2159 = distinct !DILexicalBlock(scope: !2156, file: !897, line: 505, column: 29)
!2160 = !DILocation(line: 508, column: 53, scope: !2159)
!2161 = !DILocation(line: 508, column: 33, scope: !2159)
!2162 = !DILocation(line: 509, column: 13, scope: !2159)
!2163 = !DILocation(line: 510, column: 24, scope: !2164)
!2164 = distinct !DILexicalBlock(scope: !2156, file: !897, line: 509, column: 20)
!2165 = !DILocation(line: 511, column: 44, scope: !2164)
!2166 = !DILocation(line: 511, column: 30, scope: !2164)
!2167 = !DILocation(line: 511, column: 22, scope: !2164)
!2168 = !DILocation(line: 512, column: 44, scope: !2164)
!2169 = !DILocation(line: 512, column: 33, scope: !2164)
!2170 = !DILocation(line: 516, column: 20, scope: !2106)
!2171 = !DILocation(line: 517, column: 40, scope: !2106)
!2172 = !DILocation(line: 517, column: 26, scope: !2106)
!2173 = !DILocation(line: 517, column: 18, scope: !2106)
!2174 = !DILocation(line: 518, column: 40, scope: !2106)
!2175 = !DILocation(line: 518, column: 29, scope: !2106)
!2176 = !DILocation(line: 519, column: 13, scope: !2106)
!2177 = !DILocation(line: 0, scope: !2106)
!2178 = !DILocation(line: 524, column: 1, scope: !2092)
!2179 = distinct !DISubprogram(name: "topPAD_Control_GPIO", scope: !897, file: !897, line: 526, type: !2180, scopeLine: 527, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !896, retainedNodes: !2183)
!2180 = !DISubroutineType(types: !2181)
!2181 = !{null, !80, !2182}
!2182 = !DIDerivedType(tag: DW_TAG_typedef, name: "ENUM_TOP_PAD_CONTROL_T", file: !900, line: 1212, baseType: !899)
!2183 = !{!2184, !2185, !2186, !2187}
!2184 = !DILocalVariable(name: "GPIO_pin", arg: 1, scope: !2179, file: !897, line: 526, type: !80)
!2185 = !DILocalVariable(name: "ePadControl", arg: 2, scope: !2179, file: !897, line: 526, type: !2182)
!2186 = !DILocalVariable(name: "no", scope: !2179, file: !897, line: 529, type: !1434)
!2187 = !DILocalVariable(name: "remainder", scope: !2179, file: !897, line: 530, type: !1434)
!2188 = !DILocation(line: 0, scope: !2179)
!2189 = !DILocation(line: 531, column: 19, scope: !2179)
!2190 = !DILocation(line: 532, column: 17, scope: !2179)
!2191 = !DILocation(line: 534, column: 9, scope: !2179)
!2192 = !DILocation(line: 536, column: 9, scope: !2193)
!2193 = distinct !DILexicalBlock(scope: !2194, file: !897, line: 534, column: 45)
!2194 = distinct !DILexicalBlock(scope: !2179, file: !897, line: 534, column: 9)
!2195 = !DILocation(line: 538, column: 56, scope: !2196)
!2196 = distinct !DILexicalBlock(scope: !2193, file: !897, line: 536, column: 21)
!2197 = !DILocation(line: 538, column: 53, scope: !2196)
!2198 = !DILocation(line: 538, column: 47, scope: !2196)
!2199 = !DILocation(line: 539, column: 17, scope: !2196)
!2200 = !DILocation(line: 541, column: 56, scope: !2196)
!2201 = !DILocation(line: 541, column: 53, scope: !2196)
!2202 = !DILocation(line: 541, column: 47, scope: !2196)
!2203 = !DILocation(line: 542, column: 17, scope: !2196)
!2204 = !DILocation(line: 548, column: 9, scope: !2205)
!2205 = distinct !DILexicalBlock(scope: !2206, file: !897, line: 547, column: 51)
!2206 = distinct !DILexicalBlock(scope: !2194, file: !897, line: 547, column: 16)
!2207 = !DILocation(line: 550, column: 57, scope: !2208)
!2208 = distinct !DILexicalBlock(scope: !2205, file: !897, line: 548, column: 21)
!2209 = !DILocation(line: 550, column: 54, scope: !2208)
!2210 = !DILocation(line: 550, column: 50, scope: !2208)
!2211 = !DILocation(line: 550, column: 47, scope: !2208)
!2212 = !DILocation(line: 551, column: 17, scope: !2208)
!2213 = !DILocation(line: 553, column: 57, scope: !2208)
!2214 = !DILocation(line: 553, column: 54, scope: !2208)
!2215 = !DILocation(line: 553, column: 50, scope: !2208)
!2216 = !DILocation(line: 553, column: 47, scope: !2208)
!2217 = !DILocation(line: 554, column: 17, scope: !2208)
!2218 = !DILocation(line: 560, column: 1, scope: !2179)
!2219 = distinct !DISubprogram(name: "halPinmuxTopOnPadFunc", scope: !906, file: !906, line: 85, type: !2220, scopeLine: 86, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !905, retainedNodes: !2224)
!2220 = !DISubroutineType(types: !2221)
!2221 = !{!2222, !2223, !133}
!2222 = !DIDerivedType(tag: DW_TAG_typedef, name: "VOID", file: !6, line: 79, baseType: null)
!2223 = !DIDerivedType(tag: DW_TAG_typedef, name: "ENUM_PAD_NAME_T", file: !909, line: 225, baseType: !908)
!2224 = !{!2225, !2226, !2227}
!2225 = !DILocalVariable(name: "ePadIndex", arg: 1, scope: !2219, file: !906, line: 85, type: !2223)
!2226 = !DILocalVariable(name: "ucFunc", arg: 2, scope: !2219, file: !906, line: 85, type: !133)
!2227 = !DILocalVariable(name: "temp", scope: !2219, file: !906, line: 87, type: !92)
!2228 = !DILocation(line: 0, scope: !2219)
!2229 = !DILocation(line: 88, column: 5, scope: !2219)
!2230 = !DILocation(line: 91, column: 20, scope: !2231)
!2231 = distinct !DILexicalBlock(scope: !2219, file: !906, line: 88, column: 24)
!2232 = !DILocation(line: 92, column: 18, scope: !2231)
!2233 = !DILocation(line: 93, column: 66, scope: !2231)
!2234 = !DILocation(line: 93, column: 63, scope: !2231)
!2235 = !DILocation(line: 93, column: 56, scope: !2231)
!2236 = !DILocation(line: 94, column: 13, scope: !2231)
!2237 = !DILocation(line: 97, column: 20, scope: !2231)
!2238 = !DILocation(line: 98, column: 18, scope: !2231)
!2239 = !DILocation(line: 99, column: 67, scope: !2231)
!2240 = !DILocation(line: 99, column: 74, scope: !2231)
!2241 = !DILocation(line: 99, column: 64, scope: !2231)
!2242 = !DILocation(line: 99, column: 56, scope: !2231)
!2243 = !DILocation(line: 100, column: 13, scope: !2231)
!2244 = !DILocation(line: 103, column: 20, scope: !2231)
!2245 = !DILocation(line: 104, column: 18, scope: !2231)
!2246 = !DILocation(line: 105, column: 67, scope: !2231)
!2247 = !DILocation(line: 105, column: 74, scope: !2231)
!2248 = !DILocation(line: 105, column: 64, scope: !2231)
!2249 = !DILocation(line: 105, column: 56, scope: !2231)
!2250 = !DILocation(line: 106, column: 13, scope: !2231)
!2251 = !DILocation(line: 109, column: 20, scope: !2231)
!2252 = !DILocation(line: 110, column: 18, scope: !2231)
!2253 = !DILocation(line: 111, column: 67, scope: !2231)
!2254 = !DILocation(line: 111, column: 74, scope: !2231)
!2255 = !DILocation(line: 111, column: 64, scope: !2231)
!2256 = !DILocation(line: 111, column: 56, scope: !2231)
!2257 = !DILocation(line: 112, column: 13, scope: !2231)
!2258 = !DILocation(line: 115, column: 20, scope: !2231)
!2259 = !DILocation(line: 116, column: 18, scope: !2231)
!2260 = !DILocation(line: 117, column: 67, scope: !2231)
!2261 = !DILocation(line: 117, column: 74, scope: !2231)
!2262 = !DILocation(line: 117, column: 64, scope: !2231)
!2263 = !DILocation(line: 117, column: 56, scope: !2231)
!2264 = !DILocation(line: 118, column: 13, scope: !2231)
!2265 = !DILocation(line: 121, column: 20, scope: !2231)
!2266 = !DILocation(line: 122, column: 18, scope: !2231)
!2267 = !DILocation(line: 123, column: 67, scope: !2231)
!2268 = !DILocation(line: 123, column: 74, scope: !2231)
!2269 = !DILocation(line: 123, column: 64, scope: !2231)
!2270 = !DILocation(line: 123, column: 56, scope: !2231)
!2271 = !DILocation(line: 124, column: 13, scope: !2231)
!2272 = !DILocation(line: 127, column: 20, scope: !2231)
!2273 = !DILocation(line: 128, column: 18, scope: !2231)
!2274 = !DILocation(line: 129, column: 67, scope: !2231)
!2275 = !DILocation(line: 129, column: 74, scope: !2231)
!2276 = !DILocation(line: 129, column: 64, scope: !2231)
!2277 = !DILocation(line: 129, column: 56, scope: !2231)
!2278 = !DILocation(line: 130, column: 13, scope: !2231)
!2279 = !DILocation(line: 133, column: 20, scope: !2231)
!2280 = !DILocation(line: 134, column: 18, scope: !2231)
!2281 = !DILocation(line: 135, column: 67, scope: !2231)
!2282 = !DILocation(line: 135, column: 74, scope: !2231)
!2283 = !DILocation(line: 135, column: 64, scope: !2231)
!2284 = !DILocation(line: 135, column: 56, scope: !2231)
!2285 = !DILocation(line: 136, column: 13, scope: !2231)
!2286 = !DILocation(line: 139, column: 20, scope: !2231)
!2287 = !DILocation(line: 140, column: 18, scope: !2231)
!2288 = !DILocation(line: 141, column: 67, scope: !2231)
!2289 = !DILocation(line: 141, column: 64, scope: !2231)
!2290 = !DILocation(line: 141, column: 56, scope: !2231)
!2291 = !DILocation(line: 142, column: 13, scope: !2231)
!2292 = !DILocation(line: 145, column: 20, scope: !2231)
!2293 = !DILocation(line: 146, column: 18, scope: !2231)
!2294 = !DILocation(line: 147, column: 67, scope: !2231)
!2295 = !DILocation(line: 147, column: 74, scope: !2231)
!2296 = !DILocation(line: 147, column: 64, scope: !2231)
!2297 = !DILocation(line: 147, column: 56, scope: !2231)
!2298 = !DILocation(line: 148, column: 13, scope: !2231)
!2299 = !DILocation(line: 151, column: 20, scope: !2231)
!2300 = !DILocation(line: 152, column: 18, scope: !2231)
!2301 = !DILocation(line: 153, column: 67, scope: !2231)
!2302 = !DILocation(line: 153, column: 74, scope: !2231)
!2303 = !DILocation(line: 153, column: 64, scope: !2231)
!2304 = !DILocation(line: 153, column: 56, scope: !2231)
!2305 = !DILocation(line: 154, column: 13, scope: !2231)
!2306 = !DILocation(line: 157, column: 20, scope: !2231)
!2307 = !DILocation(line: 158, column: 18, scope: !2231)
!2308 = !DILocation(line: 159, column: 67, scope: !2231)
!2309 = !DILocation(line: 159, column: 74, scope: !2231)
!2310 = !DILocation(line: 159, column: 64, scope: !2231)
!2311 = !DILocation(line: 159, column: 56, scope: !2231)
!2312 = !DILocation(line: 160, column: 29, scope: !2313)
!2313 = distinct !DILexicalBlock(scope: !2231, file: !906, line: 160, column: 17)
!2314 = !DILocation(line: 161, column: 17, scope: !2315)
!2315 = distinct !DILexicalBlock(scope: !2313, file: !906, line: 160, column: 60)
!2316 = !DILocation(line: 162, column: 13, scope: !2315)
!2317 = !DILocation(line: 166, column: 20, scope: !2231)
!2318 = !DILocation(line: 167, column: 18, scope: !2231)
!2319 = !DILocation(line: 168, column: 67, scope: !2231)
!2320 = !DILocation(line: 168, column: 74, scope: !2231)
!2321 = !DILocation(line: 168, column: 64, scope: !2231)
!2322 = !DILocation(line: 168, column: 56, scope: !2231)
!2323 = !DILocation(line: 169, column: 29, scope: !2324)
!2324 = distinct !DILexicalBlock(scope: !2231, file: !906, line: 169, column: 17)
!2325 = !DILocation(line: 170, column: 17, scope: !2326)
!2326 = distinct !DILexicalBlock(scope: !2324, file: !906, line: 169, column: 45)
!2327 = !DILocation(line: 171, column: 13, scope: !2326)
!2328 = !DILocation(line: 175, column: 20, scope: !2231)
!2329 = !DILocation(line: 176, column: 18, scope: !2231)
!2330 = !DILocation(line: 177, column: 67, scope: !2231)
!2331 = !DILocation(line: 177, column: 74, scope: !2231)
!2332 = !DILocation(line: 177, column: 64, scope: !2231)
!2333 = !DILocation(line: 177, column: 56, scope: !2231)
!2334 = !DILocation(line: 178, column: 19, scope: !2335)
!2335 = distinct !DILexicalBlock(scope: !2231, file: !906, line: 178, column: 17)
!2336 = !DILocation(line: 178, column: 17, scope: !2231)
!2337 = !DILocation(line: 179, column: 17, scope: !2338)
!2338 = distinct !DILexicalBlock(scope: !2335, file: !906, line: 178, column: 30)
!2339 = !DILocation(line: 180, column: 13, scope: !2338)
!2340 = !DILocation(line: 184, column: 20, scope: !2231)
!2341 = !DILocation(line: 185, column: 18, scope: !2231)
!2342 = !DILocation(line: 186, column: 67, scope: !2231)
!2343 = !DILocation(line: 186, column: 74, scope: !2231)
!2344 = !DILocation(line: 186, column: 64, scope: !2231)
!2345 = !DILocation(line: 186, column: 56, scope: !2231)
!2346 = !DILocation(line: 187, column: 29, scope: !2347)
!2347 = distinct !DILexicalBlock(scope: !2231, file: !906, line: 187, column: 17)
!2348 = !DILocation(line: 188, column: 17, scope: !2349)
!2349 = distinct !DILexicalBlock(scope: !2347, file: !906, line: 187, column: 45)
!2350 = !DILocation(line: 189, column: 13, scope: !2349)
!2351 = !DILocation(line: 193, column: 20, scope: !2231)
!2352 = !DILocation(line: 194, column: 18, scope: !2231)
!2353 = !DILocation(line: 195, column: 67, scope: !2231)
!2354 = !DILocation(line: 195, column: 74, scope: !2231)
!2355 = !DILocation(line: 195, column: 64, scope: !2231)
!2356 = !DILocation(line: 195, column: 56, scope: !2231)
!2357 = !DILocation(line: 196, column: 29, scope: !2358)
!2358 = distinct !DILexicalBlock(scope: !2231, file: !906, line: 196, column: 17)
!2359 = !DILocation(line: 197, column: 17, scope: !2360)
!2360 = distinct !DILexicalBlock(scope: !2358, file: !906, line: 196, column: 45)
!2361 = !DILocation(line: 198, column: 13, scope: !2360)
!2362 = !DILocation(line: 202, column: 20, scope: !2231)
!2363 = !DILocation(line: 203, column: 18, scope: !2231)
!2364 = !DILocation(line: 204, column: 67, scope: !2231)
!2365 = !DILocation(line: 204, column: 64, scope: !2231)
!2366 = !DILocation(line: 204, column: 56, scope: !2231)
!2367 = !DILocation(line: 205, column: 29, scope: !2368)
!2368 = distinct !DILexicalBlock(scope: !2231, file: !906, line: 205, column: 17)
!2369 = !DILocation(line: 206, column: 17, scope: !2370)
!2370 = distinct !DILexicalBlock(scope: !2368, file: !906, line: 205, column: 45)
!2371 = !DILocation(line: 207, column: 13, scope: !2370)
!2372 = !DILocation(line: 211, column: 20, scope: !2231)
!2373 = !DILocation(line: 212, column: 18, scope: !2231)
!2374 = !DILocation(line: 213, column: 67, scope: !2231)
!2375 = !DILocation(line: 213, column: 74, scope: !2231)
!2376 = !DILocation(line: 213, column: 64, scope: !2231)
!2377 = !DILocation(line: 213, column: 56, scope: !2231)
!2378 = !DILocation(line: 214, column: 13, scope: !2231)
!2379 = !DILocation(line: 217, column: 20, scope: !2231)
!2380 = !DILocation(line: 218, column: 18, scope: !2231)
!2381 = !DILocation(line: 219, column: 67, scope: !2231)
!2382 = !DILocation(line: 219, column: 74, scope: !2231)
!2383 = !DILocation(line: 219, column: 64, scope: !2231)
!2384 = !DILocation(line: 219, column: 56, scope: !2231)
!2385 = !DILocation(line: 220, column: 13, scope: !2231)
!2386 = !DILocation(line: 223, column: 20, scope: !2231)
!2387 = !DILocation(line: 224, column: 18, scope: !2231)
!2388 = !DILocation(line: 225, column: 67, scope: !2231)
!2389 = !DILocation(line: 225, column: 74, scope: !2231)
!2390 = !DILocation(line: 225, column: 64, scope: !2231)
!2391 = !DILocation(line: 225, column: 56, scope: !2231)
!2392 = !DILocation(line: 226, column: 13, scope: !2231)
!2393 = !DILocation(line: 229, column: 20, scope: !2231)
!2394 = !DILocation(line: 230, column: 18, scope: !2231)
!2395 = !DILocation(line: 231, column: 67, scope: !2231)
!2396 = !DILocation(line: 231, column: 74, scope: !2231)
!2397 = !DILocation(line: 231, column: 64, scope: !2231)
!2398 = !DILocation(line: 231, column: 56, scope: !2231)
!2399 = !DILocation(line: 232, column: 13, scope: !2231)
!2400 = !DILocation(line: 235, column: 20, scope: !2231)
!2401 = !DILocation(line: 236, column: 18, scope: !2231)
!2402 = !DILocation(line: 237, column: 66, scope: !2231)
!2403 = !DILocation(line: 237, column: 73, scope: !2231)
!2404 = !DILocation(line: 237, column: 63, scope: !2231)
!2405 = !DILocation(line: 237, column: 56, scope: !2231)
!2406 = !DILocation(line: 238, column: 13, scope: !2231)
!2407 = !DILocation(line: 241, column: 20, scope: !2231)
!2408 = !DILocation(line: 242, column: 18, scope: !2231)
!2409 = !DILocation(line: 243, column: 67, scope: !2231)
!2410 = !DILocation(line: 243, column: 74, scope: !2231)
!2411 = !DILocation(line: 243, column: 64, scope: !2231)
!2412 = !DILocation(line: 243, column: 56, scope: !2231)
!2413 = !DILocation(line: 244, column: 13, scope: !2231)
!2414 = !DILocation(line: 247, column: 20, scope: !2231)
!2415 = !DILocation(line: 248, column: 18, scope: !2231)
!2416 = !DILocation(line: 249, column: 67, scope: !2231)
!2417 = !DILocation(line: 249, column: 74, scope: !2231)
!2418 = !DILocation(line: 249, column: 64, scope: !2231)
!2419 = !DILocation(line: 249, column: 56, scope: !2231)
!2420 = !DILocation(line: 250, column: 13, scope: !2231)
!2421 = !DILocation(line: 253, column: 20, scope: !2231)
!2422 = !DILocation(line: 254, column: 18, scope: !2231)
!2423 = !DILocation(line: 255, column: 67, scope: !2231)
!2424 = !DILocation(line: 255, column: 74, scope: !2231)
!2425 = !DILocation(line: 255, column: 64, scope: !2231)
!2426 = !DILocation(line: 255, column: 56, scope: !2231)
!2427 = !DILocation(line: 256, column: 13, scope: !2231)
!2428 = !DILocation(line: 259, column: 20, scope: !2231)
!2429 = !DILocation(line: 260, column: 18, scope: !2231)
!2430 = !DILocation(line: 261, column: 67, scope: !2231)
!2431 = !DILocation(line: 261, column: 74, scope: !2231)
!2432 = !DILocation(line: 261, column: 64, scope: !2231)
!2433 = !DILocation(line: 261, column: 56, scope: !2231)
!2434 = !DILocation(line: 262, column: 13, scope: !2231)
!2435 = !DILocation(line: 265, column: 20, scope: !2231)
!2436 = !DILocation(line: 266, column: 18, scope: !2231)
!2437 = !DILocation(line: 267, column: 67, scope: !2231)
!2438 = !DILocation(line: 267, column: 74, scope: !2231)
!2439 = !DILocation(line: 267, column: 64, scope: !2231)
!2440 = !DILocation(line: 267, column: 56, scope: !2231)
!2441 = !DILocation(line: 268, column: 13, scope: !2231)
!2442 = !DILocation(line: 271, column: 20, scope: !2231)
!2443 = !DILocation(line: 272, column: 18, scope: !2231)
!2444 = !DILocation(line: 273, column: 67, scope: !2231)
!2445 = !DILocation(line: 273, column: 74, scope: !2231)
!2446 = !DILocation(line: 273, column: 64, scope: !2231)
!2447 = !DILocation(line: 273, column: 56, scope: !2231)
!2448 = !DILocation(line: 274, column: 13, scope: !2231)
!2449 = !DILocation(line: 278, column: 1, scope: !2219)
!2450 = distinct !DISubprogram(name: "NVIC_SetupVectorTable", scope: !987, file: !987, line: 47, type: !2451, scopeLine: 48, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !986, retainedNodes: !2453)
!2451 = !DISubroutineType(types: !2452)
!2452 = !{null, !92}
!2453 = !{!2454}
!2454 = !DILocalVariable(name: "addr", arg: 1, scope: !2450, file: !987, line: 47, type: !92)
!2455 = !DILocation(line: 0, scope: !2450)
!2456 = !DILocation(line: 49, column: 15, scope: !2450)
!2457 = !DILocation(line: 51, column: 5, scope: !2450)
!2458 = !{i64 2624}
!2459 = !DILocation(line: 52, column: 5, scope: !2450)
!2460 = !{i64 2651}
!2461 = !DILocation(line: 53, column: 1, scope: !2450)
!2462 = distinct !DISubprogram(name: "NVIC_SWInt", scope: !987, file: !987, line: 56, type: !2463, scopeLine: 57, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !986, retainedNodes: !2465)
!2463 = !DISubroutineType(types: !2464)
!2464 = !{null, !7}
!2465 = !{!2466}
!2466 = !DILocalVariable(name: "source", arg: 1, scope: !2462, file: !987, line: 56, type: !7)
!2467 = !DILocation(line: 0, scope: !2462)
!2468 = !DILocation(line: 58, column: 16, scope: !2462)
!2469 = !DILocation(line: 59, column: 1, scope: !2462)
!2470 = distinct !DISubprogram(name: "save_and_set_interrupt_mask", scope: !987, file: !987, line: 61, type: !2471, scopeLine: 62, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !986, retainedNodes: !2473)
!2471 = !DISubroutineType(types: !2472)
!2472 = !{!92}
!2473 = !{!2474}
!2474 = !DILocalVariable(name: "mask", scope: !2470, file: !987, line: 63, type: !92)
!2475 = !DILocation(line: 470, column: 3, scope: !2476, inlinedAt: !2480)
!2476 = distinct !DISubprogram(name: "__get_PRIMASK", scope: !2477, file: !2477, line: 466, type: !2471, scopeLine: 467, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !986, retainedNodes: !2478)
!2477 = !DIFile(filename: "../../../../../driver/CMSIS/Include/core_cmFunc.h", directory: "/home/mjshen/RTOSExploration/Embedded-GUI-for-MT2523/project/linkit7697_hdk/hal_examples/pwm_generate_waveform/GCC")
!2478 = !{!2479}
!2479 = !DILocalVariable(name: "result", scope: !2476, file: !2477, line: 468, type: !92)
!2480 = distinct !DILocation(line: 64, column: 5, scope: !2481)
!2481 = distinct !DILexicalBlock(scope: !2470, file: !987, line: 64, column: 5)
!2482 = !{i64 302169}
!2483 = !DILocation(line: 0, scope: !2476, inlinedAt: !2480)
!2484 = !DILocation(line: 0, scope: !2470)
!2485 = !DILocation(line: 330, column: 3, scope: !2486, inlinedAt: !2487)
!2486 = distinct !DISubprogram(name: "__disable_irq", scope: !2477, file: !2477, line: 328, type: !75, scopeLine: 329, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !986, retainedNodes: !1341)
!2487 = distinct !DILocation(line: 64, column: 5, scope: !2481)
!2488 = !{i64 298833}
!2489 = !DILocation(line: 65, column: 5, scope: !2470)
!2490 = distinct !DISubprogram(name: "restore_interrupt_mask", scope: !987, file: !987, line: 68, type: !2451, scopeLine: 69, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !986, retainedNodes: !2491)
!2491 = !{!2492}
!2492 = !DILocalVariable(name: "mask", arg: 1, scope: !2490, file: !987, line: 68, type: !92)
!2493 = !DILocation(line: 0, scope: !2490)
!2494 = !DILocalVariable(name: "priMask", arg: 1, scope: !2495, file: !2477, line: 481, type: !92)
!2495 = distinct !DISubprogram(name: "__set_PRIMASK", scope: !2477, file: !2477, line: 481, type: !2451, scopeLine: 482, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !986, retainedNodes: !2496)
!2496 = !{!2494}
!2497 = !DILocation(line: 0, scope: !2495, inlinedAt: !2498)
!2498 = distinct !DILocation(line: 70, column: 5, scope: !2499)
!2499 = distinct !DILexicalBlock(scope: !2490, file: !987, line: 70, column: 5)
!2500 = !DILocation(line: 483, column: 3, scope: !2495, inlinedAt: !2498)
!2501 = !{i64 302487}
!2502 = !DILocation(line: 71, column: 1, scope: !2490)
!2503 = distinct !DISubprogram(name: "pinmux_config", scope: !1032, file: !1032, line: 54, type: !2504, scopeLine: 55, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !1031, retainedNodes: !2506)
!2504 = !DISubroutineType(types: !2505)
!2505 = !{!238, !1143, !92}
!2506 = !{!2507, !2508, !2509}
!2507 = !DILocalVariable(name: "gpio_index", arg: 1, scope: !2503, file: !1032, line: 54, type: !1143)
!2508 = !DILocalVariable(name: "function", arg: 2, scope: !2503, file: !1032, line: 54, type: !92)
!2509 = !DILocalVariable(name: "ePadIndex", scope: !2503, file: !1032, line: 56, type: !2223)
!2510 = !DILocation(line: 0, scope: !2503)
!2511 = !DILocation(line: 60, column: 5, scope: !2503)
!2512 = !DILocation(line: 205, column: 38, scope: !2503)
!2513 = !DILocation(line: 205, column: 5, scope: !2503)
!2514 = !DILocation(line: 207, column: 5, scope: !2503)
!2515 = !DILocation(line: 208, column: 1, scope: !2503)
!2516 = distinct !DISubprogram(name: "pwm_init", scope: !1066, file: !1066, line: 61, type: !2517, scopeLine: 62, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !1065, retainedNodes: !2519)
!2517 = !DISubroutineType(types: !2518)
!2518 = !{!238, !267}
!2519 = !{!2520, !2521}
!2520 = !DILocalVariable(name: "clock_source", arg: 1, scope: !2516, file: !1066, line: 61, type: !267)
!2521 = !DILocalVariable(name: "ret", scope: !2516, file: !1066, line: 63, type: !1588)
!2522 = !DILocation(line: 0, scope: !2516)
!2523 = !DILocation(line: 65, column: 25, scope: !2524)
!2524 = distinct !DILexicalBlock(scope: !2516, file: !1066, line: 65, column: 9)
!2525 = !DILocation(line: 65, column: 9, scope: !2516)
!2526 = !DILocation(line: 69, column: 5, scope: !2516)
!2527 = !DILocation(line: 70, column: 9, scope: !2528)
!2528 = distinct !DILexicalBlock(scope: !2516, file: !1066, line: 70, column: 9)
!2529 = !DILocation(line: 75, column: 1, scope: !2516)
!2530 = distinct !DISubprogram(name: "pwm_set", scope: !1066, file: !1066, line: 77, type: !2531, scopeLine: 78, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !1065, retainedNodes: !2533)
!2531 = !DISubroutineType(types: !2532)
!2532 = !{!238, !267, !92, !438, !267}
!2533 = !{!2534, !2535, !2536, !2537, !2538, !2539, !2540, !2541, !2542, !2543}
!2534 = !DILocalVariable(name: "index", arg: 1, scope: !2530, file: !1066, line: 77, type: !267)
!2535 = !DILocalVariable(name: "frequency", arg: 2, scope: !2530, file: !1066, line: 77, type: !92)
!2536 = !DILocalVariable(name: "duty_cycle", arg: 3, scope: !2530, file: !1066, line: 77, type: !438)
!2537 = !DILocalVariable(name: "enable", arg: 4, scope: !2530, file: !1066, line: 77, type: !267)
!2538 = !DILocalVariable(name: "ret", scope: !2530, file: !1066, line: 79, type: !1588)
!2539 = !DILocalVariable(name: "eState", scope: !2530, file: !1066, line: 80, type: !1433)
!2540 = !DILocalVariable(name: "u2DutyStep", scope: !2530, file: !1066, line: 81, type: !1434)
!2541 = !DILocalVariable(name: "u2S0StayCycle", scope: !2530, file: !1066, line: 82, type: !1434)
!2542 = !DILocalVariable(name: "u2S1StayCycle", scope: !2530, file: !1066, line: 83, type: !1434)
!2543 = !DILocalVariable(name: "ucReplayMode", scope: !2530, file: !1066, line: 84, type: !133)
!2544 = !DILocation(line: 0, scope: !2530)
!2545 = !DILocation(line: 86, column: 11, scope: !2546)
!2546 = distinct !DILexicalBlock(scope: !2530, file: !1066, line: 86, column: 9)
!2547 = !DILocation(line: 86, column: 9, scope: !2530)
!2548 = !DILocation(line: 88, column: 13, scope: !2549)
!2549 = distinct !DILexicalBlock(scope: !2550, file: !1066, line: 88, column: 13)
!2550 = distinct !DILexicalBlock(scope: !2546, file: !1066, line: 86, column: 22)
!2551 = !DILocation(line: 88, column: 13, scope: !2550)
!2552 = !DILocation(line: 92, column: 13, scope: !2553)
!2553 = distinct !DILexicalBlock(scope: !2550, file: !1066, line: 92, column: 13)
!2554 = !DILocation(line: 92, column: 13, scope: !2550)
!2555 = !DILocation(line: 97, column: 13, scope: !2556)
!2556 = distinct !DILexicalBlock(scope: !2550, file: !1066, line: 97, column: 13)
!2557 = !DILocation(line: 97, column: 13, scope: !2550)
!2558 = !DILocation(line: 103, column: 13, scope: !2559)
!2559 = distinct !DILexicalBlock(scope: !2560, file: !1066, line: 103, column: 13)
!2560 = distinct !DILexicalBlock(scope: !2546, file: !1066, line: 100, column: 12)
!2561 = !DILocation(line: 103, column: 13, scope: !2560)
!2562 = !DILocation(line: 107, column: 13, scope: !2563)
!2563 = distinct !DILexicalBlock(scope: !2560, file: !1066, line: 107, column: 13)
!2564 = !DILocation(line: 107, column: 13, scope: !2560)
!2565 = !DILocation(line: 111, column: 13, scope: !2566)
!2566 = distinct !DILexicalBlock(scope: !2560, file: !1066, line: 111, column: 13)
!2567 = !DILocation(line: 111, column: 13, scope: !2560)
!2568 = !DILocation(line: 115, column: 13, scope: !2569)
!2569 = distinct !DILexicalBlock(scope: !2560, file: !1066, line: 115, column: 13)
!2570 = !DILocation(line: 115, column: 13, scope: !2560)
!2571 = !DILocation(line: 120, column: 5, scope: !2530)
!2572 = !DILocation(line: 121, column: 1, scope: !2530)
!2573 = distinct !DISubprogram(name: "pwm_get", scope: !1066, file: !1066, line: 123, type: !2574, scopeLine: 124, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !1065, retainedNodes: !2577)
!2574 = !DISubroutineType(types: !2575)
!2575 = !{!238, !267, !451, !2576, !564}
!2576 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !438, size: 32)
!2577 = !{!2578, !2579, !2580, !2581, !2582, !2583}
!2578 = !DILocalVariable(name: "index", arg: 1, scope: !2573, file: !1066, line: 123, type: !267)
!2579 = !DILocalVariable(name: "frequency", arg: 2, scope: !2573, file: !1066, line: 123, type: !451)
!2580 = !DILocalVariable(name: "duty_cycle", arg: 3, scope: !2573, file: !1066, line: 123, type: !2576)
!2581 = !DILocalVariable(name: "status", arg: 4, scope: !2573, file: !1066, line: 123, type: !564)
!2582 = !DILocalVariable(name: "ret", scope: !2573, file: !1066, line: 125, type: !1588)
!2583 = !DILocalVariable(name: "eState", scope: !2573, file: !1066, line: 126, type: !1433)
!2584 = !DILocation(line: 0, scope: !2573)
!2585 = !DILocation(line: 128, column: 5, scope: !2573)
!2586 = !DILocation(line: 130, column: 5, scope: !2573)
!2587 = distinct !DISubprogram(name: "get_current_count", scope: !1072, file: !1072, line: 56, type: !2471, scopeLine: 57, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !1071, retainedNodes: !1341)
!2588 = !DILocation(line: 58, column: 12, scope: !2587)
!2589 = !DILocation(line: 58, column: 5, scope: !2587)
!2590 = distinct !DISubprogram(name: "delay_time", scope: !1072, file: !1072, line: 62, type: !1199, scopeLine: 63, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !1071, retainedNodes: !2591)
!2591 = !{!2592, !2593, !2594}
!2592 = !DILocalVariable(name: "count", arg: 1, scope: !2590, file: !1072, line: 62, type: !60)
!2593 = !DILocalVariable(name: "end_count", scope: !2590, file: !1072, line: 64, type: !60)
!2594 = !DILocalVariable(name: "current", scope: !2590, file: !1072, line: 64, type: !60)
!2595 = !DILocation(line: 0, scope: !2590)
!2596 = !DILocation(line: 66, column: 17, scope: !2590)
!2597 = !DILocation(line: 66, column: 37, scope: !2590)
!2598 = !DILocation(line: 66, column: 45, scope: !2590)
!2599 = !DILocation(line: 67, column: 15, scope: !2590)
!2600 = !DILocation(line: 68, column: 12, scope: !2590)
!2601 = !DILocation(line: 68, column: 5, scope: !2590)
!2602 = !DILocation(line: 69, column: 19, scope: !2603)
!2603 = distinct !DILexicalBlock(scope: !2590, file: !1072, line: 68, column: 45)
!2604 = distinct !{!2604, !2601, !2605}
!2605 = !DILocation(line: 70, column: 5, scope: !2590)
!2606 = !DILocation(line: 72, column: 1, scope: !2590)
!2607 = distinct !DISubprogram(name: "delay_time_for_gpt4", scope: !1072, file: !1072, line: 75, type: !1199, scopeLine: 76, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !1071, retainedNodes: !2608)
!2608 = !{!2609, !2610, !2611}
!2609 = !DILocalVariable(name: "count", arg: 1, scope: !2607, file: !1072, line: 75, type: !60)
!2610 = !DILocalVariable(name: "end_count", scope: !2607, file: !1072, line: 77, type: !60)
!2611 = !DILocalVariable(name: "current", scope: !2607, file: !1072, line: 77, type: !60)
!2612 = !DILocation(line: 0, scope: !2607)
!2613 = !DILocation(line: 79, column: 17, scope: !2607)
!2614 = !DILocation(line: 79, column: 42, scope: !2607)
!2615 = !DILocation(line: 79, column: 50, scope: !2607)
!2616 = !DILocation(line: 80, column: 15, scope: !2607)
!2617 = !DILocation(line: 81, column: 12, scope: !2607)
!2618 = !DILocation(line: 81, column: 5, scope: !2607)
!2619 = !DILocation(line: 82, column: 19, scope: !2620)
!2620 = distinct !DILexicalBlock(scope: !2607, file: !1072, line: 81, column: 45)
!2621 = distinct !{!2621, !2618, !2622}
!2622 = !DILocation(line: 83, column: 5, scope: !2607)
!2623 = !DILocation(line: 85, column: 1, scope: !2607)
!2624 = distinct !DISubprogram(name: "get_current_gpt4_count", scope: !1072, file: !1072, line: 95, type: !2471, scopeLine: 96, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !1071, retainedNodes: !1341)
!2625 = !DILocation(line: 97, column: 13, scope: !2624)
!2626 = !DILocation(line: 97, column: 5, scope: !2624)
!2627 = distinct !DISubprogram(name: "delay_ms", scope: !1072, file: !1072, line: 107, type: !2451, scopeLine: 108, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !1071, retainedNodes: !2628)
!2628 = !{!2629, !2630}
!2629 = !DILocalVariable(name: "ms", arg: 1, scope: !2627, file: !1072, line: 107, type: !92)
!2630 = !DILocalVariable(name: "count", scope: !2627, file: !1072, line: 109, type: !92)
!2631 = !DILocation(line: 0, scope: !2627)
!2632 = !DILocation(line: 111, column: 17, scope: !2627)
!2633 = !DILocation(line: 112, column: 17, scope: !2627)
!2634 = !DILocation(line: 112, column: 23, scope: !2627)
!2635 = !DILocation(line: 112, column: 11, scope: !2627)
!2636 = !DILocation(line: 113, column: 17, scope: !2627)
!2637 = !DILocation(line: 113, column: 23, scope: !2627)
!2638 = !DILocation(line: 113, column: 11, scope: !2627)
!2639 = !DILocation(line: 114, column: 17, scope: !2627)
!2640 = !DILocation(line: 114, column: 23, scope: !2627)
!2641 = !DILocation(line: 114, column: 11, scope: !2627)
!2642 = !DILocation(line: 115, column: 5, scope: !2627)
!2643 = !DILocation(line: 116, column: 1, scope: !2627)
!2644 = distinct !DISubprogram(name: "delay_us", scope: !1072, file: !1072, line: 120, type: !2451, scopeLine: 121, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !1071, retainedNodes: !2645)
!2645 = !{!2646, !2647, !2648}
!2646 = !DILocalVariable(name: "us", arg: 1, scope: !2644, file: !1072, line: 120, type: !92)
!2647 = !DILocalVariable(name: "count", scope: !2644, file: !1072, line: 122, type: !92)
!2648 = !DILocalVariable(name: "ticks_per_us", scope: !2644, file: !1072, line: 123, type: !92)
!2649 = !DILocation(line: 0, scope: !2644)
!2650 = !DILocation(line: 125, column: 20, scope: !2644)
!2651 = !DILocation(line: 125, column: 39, scope: !2644)
!2652 = !DILocation(line: 126, column: 26, scope: !2644)
!2653 = !DILocation(line: 128, column: 5, scope: !2644)
!2654 = !DILocation(line: 129, column: 1, scope: !2644)
!2655 = distinct !DISubprogram(name: "drvTMR_init", scope: !1072, file: !1072, line: 133, type: !2656, scopeLine: 134, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !1071, retainedNodes: !2658)
!2656 = !DISubroutineType(types: !2657)
!2657 = !{null, !92, !92, !222, !74}
!2658 = !{!2659, !2660, !2661, !2662}
!2659 = !DILocalVariable(name: "timerNum", arg: 1, scope: !2655, file: !1072, line: 133, type: !92)
!2660 = !DILocalVariable(name: "countValue", arg: 2, scope: !2655, file: !1072, line: 133, type: !92)
!2661 = !DILocalVariable(name: "autoRepeat", arg: 3, scope: !2655, file: !1072, line: 133, type: !222)
!2662 = !DILocalVariable(name: "TMR_Callback", arg: 4, scope: !2655, file: !1072, line: 133, type: !74)
!2663 = !DILocation(line: 0, scope: !2655)
!2664 = !DILocation(line: 136, column: 5, scope: !2655)
!2665 = !DILocation(line: 138, column: 18, scope: !2666)
!2666 = distinct !DILexicalBlock(scope: !2655, file: !1072, line: 138, column: 9)
!2667 = !DILocation(line: 138, column: 9, scope: !2655)
!2668 = !DILocation(line: 139, column: 30, scope: !2669)
!2669 = distinct !DILexicalBlock(scope: !2666, file: !1072, line: 138, column: 27)
!2670 = !DILocation(line: 141, column: 5, scope: !2669)
!2671 = !DILocation(line: 142, column: 30, scope: !2672)
!2672 = distinct !DILexicalBlock(scope: !2666, file: !1072, line: 141, column: 12)
!2673 = !DILocation(line: 0, scope: !2666)
!2674 = !DILocation(line: 146, column: 5, scope: !2655)
!2675 = !DILocation(line: 147, column: 1, scope: !2655)
!2676 = distinct !DISubprogram(name: "TMR_Start", scope: !1072, file: !1072, line: 149, type: !2451, scopeLine: 150, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !1071, retainedNodes: !2677)
!2677 = !{!2678}
!2678 = !DILocalVariable(name: "timerNum", arg: 1, scope: !2676, file: !1072, line: 149, type: !92)
!2679 = !DILocation(line: 0, scope: !2676)
!2680 = !DILocation(line: 151, column: 5, scope: !2676)
!2681 = !DILocation(line: 152, column: 1, scope: !2676)
!2682 = distinct !DISubprogram(name: "TMR_Stop", scope: !1072, file: !1072, line: 154, type: !2451, scopeLine: 155, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !1071, retainedNodes: !2683)
!2683 = !{!2684}
!2684 = !DILocalVariable(name: "timerNum", arg: 1, scope: !2682, file: !1072, line: 154, type: !92)
!2685 = !DILocation(line: 0, scope: !2682)
!2686 = !DILocation(line: 156, column: 5, scope: !2682)
!2687 = !DILocation(line: 157, column: 1, scope: !2682)
!2688 = distinct !DISubprogram(name: "drvGPT2Init", scope: !1072, file: !1072, line: 160, type: !75, scopeLine: 161, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !1071, retainedNodes: !1341)
!2689 = !DILocation(line: 162, column: 5, scope: !2688)
!2690 = !DILocation(line: 163, column: 1, scope: !2688)
!2691 = distinct !DISubprogram(name: "drvGPT4Init", scope: !1072, file: !1072, line: 165, type: !75, scopeLine: 166, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !1071, retainedNodes: !1341)
!2692 = !DILocation(line: 167, column: 5, scope: !2691)
!2693 = !DILocation(line: 168, column: 1, scope: !2691)
!2694 = distinct !DISubprogram(name: "clear_TMR_INT_status_bit", scope: !1072, file: !1072, line: 170, type: !2451, scopeLine: 171, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !1071, retainedNodes: !2695)
!2695 = !{!2696}
!2696 = !DILocalVariable(name: "timerNum", arg: 1, scope: !2694, file: !1072, line: 170, type: !92)
!2697 = !DILocation(line: 0, scope: !2694)
!2698 = !DILocation(line: 172, column: 9, scope: !2694)
!2699 = !DILocation(line: 177, column: 5, scope: !2700)
!2700 = distinct !DILexicalBlock(scope: !2701, file: !1072, line: 175, column: 27)
!2701 = distinct !DILexicalBlock(scope: !2694, file: !1072, line: 175, column: 9)
!2702 = !DILocation(line: 178, column: 1, scope: !2694)
!2703 = distinct !DISubprogram(name: "top_xtal_init", scope: !86, file: !86, line: 52, type: !75, scopeLine: 53, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !85, retainedNodes: !2704)
!2704 = !{!2705, !2706}
!2705 = !DILocalVariable(name: "u4RegVal", scope: !2703, file: !86, line: 54, type: !92)
!2706 = !DILocalVariable(name: "reg", scope: !2703, file: !86, line: 55, type: !744)
!2707 = !DILocation(line: 0, scope: !2703)
!2708 = !DILocation(line: 55, column: 25, scope: !2703)
!2709 = !DILocation(line: 56, column: 16, scope: !2703)
!2710 = !DILocation(line: 56, column: 23, scope: !2703)
!2711 = !DILocation(line: 58, column: 16, scope: !2703)
!2712 = !DILocation(line: 61, column: 5, scope: !2703)
!2713 = !DILocation(line: 59, column: 14, scope: !2703)
!2714 = !DILocation(line: 0, scope: !2715)
!2715 = distinct !DILexicalBlock(scope: !2703, file: !86, line: 61, column: 18)
!2716 = !DILocation(line: 87, column: 38, scope: !2703)
!2717 = !DILocation(line: 88, column: 21, scope: !2703)
!2718 = !DILocation(line: 88, column: 19, scope: !2703)
!2719 = !DILocation(line: 89, column: 5, scope: !2703)
!2720 = !DILocation(line: 90, column: 17, scope: !2703)
!2721 = !DILocation(line: 90, column: 33, scope: !2703)
!2722 = !DILocation(line: 90, column: 5, scope: !2703)
!2723 = !DILocation(line: 91, column: 1, scope: !2703)
!2724 = distinct !DISubprogram(name: "top_xtal_freq_get", scope: !86, file: !86, line: 98, type: !2471, scopeLine: 99, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !85, retainedNodes: !1341)
!2725 = !DILocation(line: 100, column: 12, scope: !2724)
!2726 = !DILocation(line: 100, column: 5, scope: !2724)
!2727 = distinct !DISubprogram(name: "top_mcu_freq_get", scope: !86, file: !86, line: 108, type: !2471, scopeLine: 109, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !85, retainedNodes: !1341)
!2728 = !DILocation(line: 110, column: 12, scope: !2727)
!2729 = !DILocation(line: 110, column: 5, scope: !2727)
!2730 = distinct !DISubprogram(name: "cmnPLL1ON", scope: !86, file: !86, line: 118, type: !75, scopeLine: 119, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !85, retainedNodes: !2731)
!2731 = !{!2732, !2733}
!2732 = !DILocalVariable(name: "reg", scope: !2730, file: !86, line: 120, type: !91)
!2733 = !DILocalVariable(name: "pTopCfgCM4PWRCtl", scope: !2730, file: !86, line: 121, type: !90)
!2734 = !DILocation(line: 120, column: 5, scope: !2730)
!2735 = !DILocation(line: 120, column: 23, scope: !2730)
!2736 = !DILocation(line: 0, scope: !2730)
!2737 = !DILocation(line: 123, column: 11, scope: !2730)
!2738 = !DILocation(line: 123, column: 9, scope: !2730)
!2739 = !DILocation(line: 124, column: 12, scope: !2730)
!2740 = !DILocation(line: 124, column: 16, scope: !2730)
!2741 = !DILocation(line: 124, column: 39, scope: !2730)
!2742 = !DILocation(line: 124, column: 9, scope: !2730)
!2743 = !DILocation(line: 126, column: 9, scope: !2744)
!2744 = distinct !DILexicalBlock(scope: !2730, file: !86, line: 126, column: 9)
!2745 = !DILocation(line: 126, column: 13, scope: !2744)
!2746 = !DILocation(line: 126, column: 9, scope: !2730)
!2747 = !DILocation(line: 127, column: 15, scope: !2748)
!2748 = distinct !DILexicalBlock(scope: !2744, file: !86, line: 126, column: 47)
!2749 = !DILocation(line: 127, column: 13, scope: !2748)
!2750 = !DILocation(line: 128, column: 15, scope: !2748)
!2751 = !DILocation(line: 128, column: 19, scope: !2748)
!2752 = !DILocation(line: 128, column: 13, scope: !2748)
!2753 = !DILocation(line: 129, column: 15, scope: !2748)
!2754 = !DILocation(line: 129, column: 19, scope: !2748)
!2755 = !DILocation(line: 129, column: 13, scope: !2748)
!2756 = !DILocation(line: 130, column: 46, scope: !2748)
!2757 = !DILocation(line: 130, column: 9, scope: !2748)
!2758 = !DILocation(line: 132, column: 9, scope: !2748)
!2759 = !DILocation(line: 133, column: 19, scope: !2760)
!2760 = distinct !DILexicalBlock(scope: !2748, file: !86, line: 132, column: 12)
!2761 = !DILocation(line: 133, column: 17, scope: !2760)
!2762 = !DILocation(line: 134, column: 19, scope: !2760)
!2763 = !DILocation(line: 134, column: 23, scope: !2760)
!2764 = !DILocation(line: 134, column: 17, scope: !2760)
!2765 = !DILocation(line: 135, column: 19, scope: !2748)
!2766 = !DILocation(line: 135, column: 18, scope: !2748)
!2767 = !DILocation(line: 135, column: 9, scope: !2760)
!2768 = distinct !{!2768, !2758, !2769}
!2769 = !DILocation(line: 135, column: 22, scope: !2748)
!2770 = !DILocation(line: 138, column: 1, scope: !2730)
!2771 = distinct !DISubprogram(name: "cmnReadRegister32", scope: !2772, file: !2772, line: 176, type: !2773, scopeLine: 177, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !85, retainedNodes: !2777)
!2772 = !DIFile(filename: "../../../../../driver/CMSIS/Device/MTK/mt7687/Include/system_mt7687.h", directory: "/home/mjshen/RTOSExploration/Embedded-GUI-for-MT2523/project/linkit7697_hdk/hal_examples/pwm_generate_waveform/GCC")
!2773 = !DISubroutineType(types: !2774)
!2774 = !{!92, !2775}
!2775 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2776, size: 32)
!2776 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: null)
!2777 = !{!2778}
!2778 = !DILocalVariable(name: "Register", arg: 1, scope: !2771, file: !2772, line: 176, type: !2775)
!2779 = !DILocation(line: 0, scope: !2771)
!2780 = !DILocation(line: 178, column: 13, scope: !2771)
!2781 = !DILocation(line: 178, column: 12, scope: !2771)
!2782 = !DILocation(line: 178, column: 5, scope: !2771)
!2783 = distinct !DISubprogram(name: "cmnWriteRegister32", scope: !2772, file: !2772, line: 171, type: !2784, scopeLine: 172, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !85, retainedNodes: !2786)
!2784 = !DISubroutineType(types: !2785)
!2785 = !{null, !2775, !92}
!2786 = !{!2787, !2788}
!2787 = !DILocalVariable(name: "Register", arg: 1, scope: !2783, file: !2772, line: 171, type: !2775)
!2788 = !DILocalVariable(name: "Value", arg: 2, scope: !2783, file: !2772, line: 171, type: !92)
!2789 = !DILocation(line: 0, scope: !2783)
!2790 = !DILocation(line: 173, column: 6, scope: !2783)
!2791 = !DILocation(line: 173, column: 36, scope: !2783)
!2792 = !DILocation(line: 174, column: 1, scope: !2783)
!2793 = distinct !DISubprogram(name: "cmnPLL1ON_PLL2ON", scope: !86, file: !86, line: 145, type: !2794, scopeLine: 146, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !85, retainedNodes: !2796)
!2794 = !DISubroutineType(types: !2795)
!2795 = !{null, !267}
!2796 = !{!2797, !2798, !2799}
!2797 = !DILocalVariable(name: "fg960M", arg: 1, scope: !2793, file: !86, line: 145, type: !267)
!2798 = !DILocalVariable(name: "reg", scope: !2793, file: !86, line: 147, type: !91)
!2799 = !DILocalVariable(name: "pTopCfgCM4PWRCtl", scope: !2793, file: !86, line: 148, type: !90)
!2800 = !DILocation(line: 0, scope: !2793)
!2801 = !DILocation(line: 147, column: 5, scope: !2793)
!2802 = !DILocation(line: 147, column: 23, scope: !2793)
!2803 = !DILocation(line: 150, column: 11, scope: !2793)
!2804 = !DILocation(line: 150, column: 9, scope: !2793)
!2805 = !DILocation(line: 151, column: 12, scope: !2793)
!2806 = !DILocation(line: 151, column: 16, scope: !2793)
!2807 = !DILocation(line: 151, column: 39, scope: !2793)
!2808 = !DILocation(line: 151, column: 9, scope: !2793)
!2809 = !DILocation(line: 153, column: 9, scope: !2810)
!2810 = distinct !DILexicalBlock(scope: !2793, file: !86, line: 153, column: 9)
!2811 = !DILocation(line: 153, column: 13, scope: !2810)
!2812 = !DILocation(line: 153, column: 9, scope: !2793)
!2813 = !DILocation(line: 154, column: 15, scope: !2814)
!2814 = distinct !DILexicalBlock(scope: !2810, file: !86, line: 153, column: 45)
!2815 = !DILocation(line: 154, column: 13, scope: !2814)
!2816 = !DILocation(line: 155, column: 15, scope: !2814)
!2817 = !DILocation(line: 155, column: 19, scope: !2814)
!2818 = !DILocation(line: 155, column: 13, scope: !2814)
!2819 = !DILocation(line: 156, column: 15, scope: !2814)
!2820 = !DILocation(line: 156, column: 19, scope: !2814)
!2821 = !DILocation(line: 156, column: 13, scope: !2814)
!2822 = !DILocation(line: 157, column: 15, scope: !2814)
!2823 = !DILocation(line: 157, column: 13, scope: !2814)
!2824 = !DILocation(line: 158, column: 46, scope: !2814)
!2825 = !DILocation(line: 158, column: 9, scope: !2814)
!2826 = !DILocation(line: 160, column: 15, scope: !2814)
!2827 = !DILocation(line: 160, column: 13, scope: !2814)
!2828 = !DILocation(line: 161, column: 15, scope: !2814)
!2829 = !DILocation(line: 161, column: 19, scope: !2814)
!2830 = !DILocation(line: 161, column: 13, scope: !2814)
!2831 = !DILocation(line: 162, column: 15, scope: !2814)
!2832 = !DILocation(line: 162, column: 19, scope: !2814)
!2833 = !DILocation(line: 162, column: 13, scope: !2814)
!2834 = !DILocation(line: 163, column: 15, scope: !2814)
!2835 = !DILocation(line: 163, column: 19, scope: !2814)
!2836 = !DILocation(line: 163, column: 13, scope: !2814)
!2837 = !DILocation(line: 164, column: 46, scope: !2814)
!2838 = !DILocation(line: 164, column: 9, scope: !2814)
!2839 = !DILocation(line: 166, column: 9, scope: !2814)
!2840 = !DILocation(line: 167, column: 19, scope: !2841)
!2841 = distinct !DILexicalBlock(scope: !2814, file: !86, line: 166, column: 12)
!2842 = !DILocation(line: 167, column: 17, scope: !2841)
!2843 = !DILocation(line: 168, column: 19, scope: !2841)
!2844 = !DILocation(line: 168, column: 23, scope: !2841)
!2845 = !DILocation(line: 168, column: 17, scope: !2841)
!2846 = !DILocation(line: 169, column: 19, scope: !2814)
!2847 = !DILocation(line: 169, column: 18, scope: !2814)
!2848 = !DILocation(line: 169, column: 9, scope: !2841)
!2849 = distinct !{!2849, !2839, !2850}
!2850 = !DILocation(line: 169, column: 22, scope: !2814)
!2851 = !DILocation(line: 171, column: 15, scope: !2814)
!2852 = !DILocation(line: 171, column: 13, scope: !2814)
!2853 = !DILocation(line: 172, column: 15, scope: !2814)
!2854 = !DILocation(line: 172, column: 19, scope: !2814)
!2855 = !DILocation(line: 172, column: 13, scope: !2814)
!2856 = !DILocation(line: 173, column: 15, scope: !2814)
!2857 = !DILocation(line: 173, column: 19, scope: !2814)
!2858 = !DILocation(line: 173, column: 13, scope: !2814)
!2859 = !DILocation(line: 174, column: 5, scope: !2814)
!2860 = !DILocation(line: 176, column: 11, scope: !2793)
!2861 = !DILocation(line: 176, column: 9, scope: !2793)
!2862 = !DILocation(line: 177, column: 9, scope: !2863)
!2863 = distinct !DILexicalBlock(scope: !2793, file: !86, line: 177, column: 9)
!2864 = !DILocation(line: 0, scope: !2863)
!2865 = !DILocation(line: 177, column: 9, scope: !2793)
!2866 = !DILocation(line: 178, column: 19, scope: !2867)
!2867 = distinct !DILexicalBlock(scope: !2863, file: !86, line: 177, column: 17)
!2868 = !DILocation(line: 178, column: 13, scope: !2867)
!2869 = !DILocation(line: 179, column: 5, scope: !2867)
!2870 = !DILocation(line: 180, column: 13, scope: !2871)
!2871 = distinct !DILexicalBlock(scope: !2863, file: !86, line: 179, column: 12)
!2872 = !DILocation(line: 182, column: 42, scope: !2793)
!2873 = !DILocation(line: 182, column: 5, scope: !2793)
!2874 = !DILocation(line: 184, column: 1, scope: !2793)
!2875 = distinct !DISubprogram(name: "cmnPLL1OFF_PLL2OFF", scope: !86, file: !86, line: 191, type: !75, scopeLine: 192, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !85, retainedNodes: !2876)
!2876 = !{!2877, !2878}
!2877 = !DILocalVariable(name: "reg", scope: !2875, file: !86, line: 193, type: !91)
!2878 = !DILocalVariable(name: "pTopCfgCM4PWRCtl", scope: !2875, file: !86, line: 194, type: !90)
!2879 = !DILocation(line: 193, column: 5, scope: !2875)
!2880 = !DILocation(line: 193, column: 23, scope: !2875)
!2881 = !DILocation(line: 0, scope: !2875)
!2882 = !DILocation(line: 196, column: 11, scope: !2875)
!2883 = !DILocation(line: 196, column: 9, scope: !2875)
!2884 = !DILocation(line: 197, column: 11, scope: !2875)
!2885 = !DILocation(line: 197, column: 15, scope: !2875)
!2886 = !DILocation(line: 197, column: 9, scope: !2875)
!2887 = !DILocation(line: 198, column: 11, scope: !2875)
!2888 = !DILocation(line: 198, column: 15, scope: !2875)
!2889 = !DILocation(line: 198, column: 9, scope: !2875)
!2890 = !DILocation(line: 199, column: 11, scope: !2875)
!2891 = !DILocation(line: 199, column: 9, scope: !2875)
!2892 = !DILocation(line: 200, column: 42, scope: !2875)
!2893 = !DILocation(line: 200, column: 5, scope: !2875)
!2894 = !DILocation(line: 202, column: 11, scope: !2875)
!2895 = !DILocation(line: 202, column: 9, scope: !2875)
!2896 = !DILocation(line: 203, column: 11, scope: !2875)
!2897 = !DILocation(line: 203, column: 15, scope: !2875)
!2898 = !DILocation(line: 203, column: 9, scope: !2875)
!2899 = !DILocation(line: 204, column: 11, scope: !2875)
!2900 = !DILocation(line: 204, column: 15, scope: !2875)
!2901 = !DILocation(line: 204, column: 9, scope: !2875)
!2902 = !DILocation(line: 205, column: 11, scope: !2875)
!2903 = !DILocation(line: 205, column: 9, scope: !2875)
!2904 = !DILocation(line: 206, column: 42, scope: !2875)
!2905 = !DILocation(line: 206, column: 5, scope: !2875)
!2906 = !DILocation(line: 209, column: 1, scope: !2875)
!2907 = distinct !DISubprogram(name: "cmnCpuClkConfigureToXtal", scope: !86, file: !86, line: 216, type: !75, scopeLine: 217, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !85, retainedNodes: !2908)
!2908 = !{!2909, !2910}
!2909 = !DILocalVariable(name: "reg", scope: !2907, file: !86, line: 218, type: !91)
!2910 = !DILocalVariable(name: "pTopCfgCM4CKG", scope: !2907, file: !86, line: 219, type: !90)
!2911 = !DILocation(line: 218, column: 5, scope: !2907)
!2912 = !DILocation(line: 218, column: 23, scope: !2907)
!2913 = !DILocation(line: 0, scope: !2907)
!2914 = !DILocation(line: 222, column: 11, scope: !2907)
!2915 = !DILocation(line: 222, column: 9, scope: !2907)
!2916 = !DILocation(line: 223, column: 11, scope: !2907)
!2917 = !DILocation(line: 223, column: 15, scope: !2907)
!2918 = !DILocation(line: 223, column: 9, scope: !2907)
!2919 = !DILocation(line: 224, column: 11, scope: !2907)
!2920 = !DILocation(line: 224, column: 9, scope: !2907)
!2921 = !DILocation(line: 225, column: 39, scope: !2907)
!2922 = !DILocation(line: 225, column: 5, scope: !2907)
!2923 = !DILocation(line: 228, column: 11, scope: !2907)
!2924 = !DILocation(line: 228, column: 9, scope: !2907)
!2925 = !DILocation(line: 229, column: 11, scope: !2907)
!2926 = !DILocation(line: 229, column: 15, scope: !2907)
!2927 = !DILocation(line: 229, column: 9, scope: !2907)
!2928 = !DILocation(line: 230, column: 11, scope: !2907)
!2929 = !DILocation(line: 230, column: 9, scope: !2907)
!2930 = !DILocation(line: 231, column: 39, scope: !2907)
!2931 = !DILocation(line: 231, column: 5, scope: !2907)
!2932 = !DILocation(line: 233, column: 5, scope: !2907)
!2933 = !DILocation(line: 233, column: 12, scope: !2907)
!2934 = !DILocation(line: 233, column: 19, scope: !2907)
!2935 = !DILocation(line: 233, column: 16, scope: !2907)
!2936 = distinct !{!2936, !2932, !2937}
!2937 = !DILocation(line: 233, column: 52, scope: !2907)
!2938 = !DILocation(line: 235, column: 21, scope: !2907)
!2939 = !DILocation(line: 235, column: 19, scope: !2907)
!2940 = !DILocation(line: 236, column: 5, scope: !2907)
!2941 = !DILocation(line: 237, column: 17, scope: !2907)
!2942 = !DILocation(line: 237, column: 33, scope: !2907)
!2943 = !DILocation(line: 237, column: 5, scope: !2907)
!2944 = !DILocation(line: 239, column: 1, scope: !2907)
!2945 = distinct !DISubprogram(name: "cmnCpuClkConfigureTo192M", scope: !86, file: !86, line: 246, type: !75, scopeLine: 247, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !85, retainedNodes: !2946)
!2946 = !{!2947, !2948}
!2947 = !DILocalVariable(name: "reg", scope: !2945, file: !86, line: 248, type: !91)
!2948 = !DILocalVariable(name: "pTopCfgCM4CKG", scope: !2945, file: !86, line: 249, type: !90)
!2949 = !DILocation(line: 248, column: 5, scope: !2945)
!2950 = !DILocation(line: 248, column: 23, scope: !2945)
!2951 = !DILocation(line: 0, scope: !2945)
!2952 = !DILocation(line: 252, column: 5, scope: !2945)
!2953 = !DILocation(line: 255, column: 11, scope: !2945)
!2954 = !DILocation(line: 255, column: 9, scope: !2945)
!2955 = !DILocation(line: 256, column: 11, scope: !2945)
!2956 = !DILocation(line: 256, column: 15, scope: !2945)
!2957 = !DILocation(line: 256, column: 9, scope: !2945)
!2958 = !DILocation(line: 257, column: 11, scope: !2945)
!2959 = !DILocation(line: 257, column: 15, scope: !2945)
!2960 = !DILocation(line: 257, column: 9, scope: !2945)
!2961 = !DILocation(line: 258, column: 39, scope: !2945)
!2962 = !DILocation(line: 258, column: 5, scope: !2945)
!2963 = !DILocation(line: 260, column: 5, scope: !2945)
!2964 = !DILocation(line: 260, column: 12, scope: !2945)
!2965 = !DILocation(line: 260, column: 19, scope: !2945)
!2966 = !DILocation(line: 260, column: 16, scope: !2945)
!2967 = distinct !{!2967, !2963, !2968}
!2968 = !DILocation(line: 260, column: 52, scope: !2945)
!2969 = !DILocation(line: 263, column: 11, scope: !2945)
!2970 = !DILocation(line: 263, column: 9, scope: !2945)
!2971 = !DILocation(line: 264, column: 11, scope: !2945)
!2972 = !DILocation(line: 264, column: 15, scope: !2945)
!2973 = !DILocation(line: 264, column: 9, scope: !2945)
!2974 = !DILocation(line: 265, column: 11, scope: !2945)
!2975 = !DILocation(line: 265, column: 15, scope: !2945)
!2976 = !DILocation(line: 265, column: 9, scope: !2945)
!2977 = !DILocation(line: 266, column: 39, scope: !2945)
!2978 = !DILocation(line: 266, column: 5, scope: !2945)
!2979 = !DILocation(line: 269, column: 11, scope: !2945)
!2980 = !DILocation(line: 269, column: 9, scope: !2945)
!2981 = !DILocation(line: 270, column: 11, scope: !2945)
!2982 = !DILocation(line: 270, column: 15, scope: !2945)
!2983 = !DILocation(line: 270, column: 9, scope: !2945)
!2984 = !DILocation(line: 271, column: 11, scope: !2945)
!2985 = !DILocation(line: 271, column: 15, scope: !2945)
!2986 = !DILocation(line: 271, column: 9, scope: !2945)
!2987 = !DILocation(line: 272, column: 39, scope: !2945)
!2988 = !DILocation(line: 272, column: 5, scope: !2945)
!2989 = !DILocation(line: 273, column: 19, scope: !2945)
!2990 = !DILocation(line: 274, column: 5, scope: !2945)
!2991 = !DILocation(line: 275, column: 17, scope: !2945)
!2992 = !DILocation(line: 275, column: 33, scope: !2945)
!2993 = !DILocation(line: 275, column: 5, scope: !2945)
!2994 = !DILocation(line: 277, column: 1, scope: !2945)
!2995 = distinct !DISubprogram(name: "cmnCpuClkConfigureTo160M", scope: !86, file: !86, line: 284, type: !75, scopeLine: 285, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !85, retainedNodes: !2996)
!2996 = !{!2997, !2998}
!2997 = !DILocalVariable(name: "reg", scope: !2995, file: !86, line: 286, type: !91)
!2998 = !DILocalVariable(name: "pTopCfgCM4CKG", scope: !2995, file: !86, line: 287, type: !90)
!2999 = !DILocation(line: 286, column: 5, scope: !2995)
!3000 = !DILocation(line: 286, column: 23, scope: !2995)
!3001 = !DILocation(line: 0, scope: !2995)
!3002 = !DILocation(line: 290, column: 5, scope: !2995)
!3003 = !DILocation(line: 293, column: 11, scope: !2995)
!3004 = !DILocation(line: 293, column: 9, scope: !2995)
!3005 = !DILocation(line: 294, column: 11, scope: !2995)
!3006 = !DILocation(line: 294, column: 15, scope: !2995)
!3007 = !DILocation(line: 294, column: 9, scope: !2995)
!3008 = !DILocation(line: 295, column: 11, scope: !2995)
!3009 = !DILocation(line: 295, column: 15, scope: !2995)
!3010 = !DILocation(line: 295, column: 9, scope: !2995)
!3011 = !DILocation(line: 296, column: 39, scope: !2995)
!3012 = !DILocation(line: 296, column: 5, scope: !2995)
!3013 = !DILocation(line: 298, column: 5, scope: !2995)
!3014 = !DILocation(line: 298, column: 12, scope: !2995)
!3015 = !DILocation(line: 298, column: 19, scope: !2995)
!3016 = !DILocation(line: 298, column: 16, scope: !2995)
!3017 = distinct !{!3017, !3013, !3018}
!3018 = !DILocation(line: 298, column: 52, scope: !2995)
!3019 = !DILocation(line: 301, column: 11, scope: !2995)
!3020 = !DILocation(line: 301, column: 9, scope: !2995)
!3021 = !DILocation(line: 302, column: 11, scope: !2995)
!3022 = !DILocation(line: 302, column: 15, scope: !2995)
!3023 = !DILocation(line: 302, column: 9, scope: !2995)
!3024 = !DILocation(line: 303, column: 11, scope: !2995)
!3025 = !DILocation(line: 303, column: 15, scope: !2995)
!3026 = !DILocation(line: 303, column: 9, scope: !2995)
!3027 = !DILocation(line: 304, column: 39, scope: !2995)
!3028 = !DILocation(line: 304, column: 5, scope: !2995)
!3029 = !DILocation(line: 307, column: 11, scope: !2995)
!3030 = !DILocation(line: 307, column: 9, scope: !2995)
!3031 = !DILocation(line: 308, column: 11, scope: !2995)
!3032 = !DILocation(line: 308, column: 15, scope: !2995)
!3033 = !DILocation(line: 308, column: 9, scope: !2995)
!3034 = !DILocation(line: 309, column: 11, scope: !2995)
!3035 = !DILocation(line: 309, column: 15, scope: !2995)
!3036 = !DILocation(line: 309, column: 9, scope: !2995)
!3037 = !DILocation(line: 310, column: 39, scope: !2995)
!3038 = !DILocation(line: 310, column: 5, scope: !2995)
!3039 = !DILocation(line: 311, column: 19, scope: !2995)
!3040 = !DILocation(line: 312, column: 5, scope: !2995)
!3041 = !DILocation(line: 313, column: 17, scope: !2995)
!3042 = !DILocation(line: 313, column: 33, scope: !2995)
!3043 = !DILocation(line: 313, column: 5, scope: !2995)
!3044 = !DILocation(line: 315, column: 1, scope: !2995)
!3045 = distinct !DISubprogram(name: "cmnCpuClkConfigureTo64M", scope: !86, file: !86, line: 323, type: !75, scopeLine: 324, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !85, retainedNodes: !3046)
!3046 = !{!3047, !3048}
!3047 = !DILocalVariable(name: "reg", scope: !3045, file: !86, line: 325, type: !91)
!3048 = !DILocalVariable(name: "pTopCfgCM4CKG", scope: !3045, file: !86, line: 326, type: !90)
!3049 = !DILocation(line: 325, column: 5, scope: !3045)
!3050 = !DILocation(line: 325, column: 23, scope: !3045)
!3051 = !DILocation(line: 0, scope: !3045)
!3052 = !DILocation(line: 329, column: 5, scope: !3045)
!3053 = !DILocation(line: 332, column: 11, scope: !3045)
!3054 = !DILocation(line: 332, column: 9, scope: !3045)
!3055 = !DILocation(line: 333, column: 11, scope: !3045)
!3056 = !DILocation(line: 333, column: 15, scope: !3045)
!3057 = !DILocation(line: 333, column: 9, scope: !3045)
!3058 = !DILocation(line: 334, column: 11, scope: !3045)
!3059 = !DILocation(line: 334, column: 9, scope: !3045)
!3060 = !DILocation(line: 335, column: 39, scope: !3045)
!3061 = !DILocation(line: 335, column: 5, scope: !3045)
!3062 = !DILocation(line: 337, column: 5, scope: !3045)
!3063 = !DILocation(line: 337, column: 12, scope: !3045)
!3064 = !DILocation(line: 337, column: 19, scope: !3045)
!3065 = !DILocation(line: 337, column: 16, scope: !3045)
!3066 = distinct !{!3066, !3062, !3067}
!3067 = !DILocation(line: 337, column: 52, scope: !3045)
!3068 = !DILocation(line: 340, column: 11, scope: !3045)
!3069 = !DILocation(line: 340, column: 9, scope: !3045)
!3070 = !DILocation(line: 341, column: 11, scope: !3045)
!3071 = !DILocation(line: 341, column: 15, scope: !3045)
!3072 = !DILocation(line: 341, column: 9, scope: !3045)
!3073 = !DILocation(line: 342, column: 11, scope: !3045)
!3074 = !DILocation(line: 342, column: 15, scope: !3045)
!3075 = !DILocation(line: 342, column: 9, scope: !3045)
!3076 = !DILocation(line: 343, column: 39, scope: !3045)
!3077 = !DILocation(line: 343, column: 5, scope: !3045)
!3078 = !DILocation(line: 344, column: 19, scope: !3045)
!3079 = !DILocation(line: 345, column: 5, scope: !3045)
!3080 = !DILocation(line: 346, column: 17, scope: !3045)
!3081 = !DILocation(line: 346, column: 33, scope: !3045)
!3082 = !DILocation(line: 346, column: 5, scope: !3045)
!3083 = !DILocation(line: 348, column: 1, scope: !3045)
!3084 = distinct !DISubprogram(name: "cmnSerialFlashClkConfToXtal", scope: !86, file: !86, line: 353, type: !75, scopeLine: 354, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !85, retainedNodes: !3085)
!3085 = !{!3086, !3087}
!3086 = !DILocalVariable(name: "reg", scope: !3084, file: !86, line: 355, type: !79)
!3087 = !DILocalVariable(name: "pTopCfgHclk", scope: !3084, file: !86, line: 356, type: !96)
!3088 = !DILocation(line: 355, column: 5, scope: !3084)
!3089 = !DILocation(line: 355, column: 21, scope: !3084)
!3090 = !DILocation(line: 0, scope: !3084)
!3091 = !DILocation(line: 358, column: 11, scope: !3084)
!3092 = !DILocation(line: 358, column: 9, scope: !3084)
!3093 = !DILocation(line: 359, column: 11, scope: !3084)
!3094 = !DILocation(line: 359, column: 15, scope: !3084)
!3095 = !DILocation(line: 359, column: 9, scope: !3084)
!3096 = !DILocation(line: 360, column: 11, scope: !3084)
!3097 = !DILocation(line: 360, column: 9, scope: !3084)
!3098 = !DILocation(line: 361, column: 37, scope: !3084)
!3099 = !DILocation(line: 361, column: 5, scope: !3084)
!3100 = !DILocation(line: 362, column: 1, scope: !3084)
!3101 = distinct !DISubprogram(name: "getc", scope: !103, file: !103, line: 68, type: !3102, scopeLine: 69, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !102, retainedNodes: !3104)
!3102 = !DISubroutineType(types: !3103)
!3103 = !{!13}
!3104 = !{!3105}
!3105 = !DILocalVariable(name: "rc", scope: !3101, file: !103, line: 71, type: !13)
!3106 = !DILocation(line: 71, column: 14, scope: !3101)
!3107 = !DILocation(line: 0, scope: !3101)
!3108 = !DILocation(line: 72, column: 5, scope: !3101)
!3109 = distinct !DISubprogram(name: "getc_nowait", scope: !103, file: !103, line: 80, type: !3102, scopeLine: 81, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !102, retainedNodes: !3110)
!3110 = !{!3111}
!3111 = !DILocalVariable(name: "c", scope: !3109, file: !103, line: 82, type: !516)
!3112 = !DILocation(line: 84, column: 9, scope: !3113)
!3113 = distinct !DILexicalBlock(scope: !3109, file: !103, line: 84, column: 9)
!3114 = !DILocation(line: 84, column: 40, scope: !3113)
!3115 = !DILocation(line: 84, column: 9, scope: !3109)
!3116 = !DILocation(line: 85, column: 13, scope: !3117)
!3117 = distinct !DILexicalBlock(scope: !3113, file: !103, line: 84, column: 47)
!3118 = !DILocation(line: 86, column: 16, scope: !3117)
!3119 = !DILocation(line: 0, scope: !3109)
!3120 = !DILocation(line: 86, column: 9, scope: !3117)
!3121 = !DILocation(line: 0, scope: !3113)
!3122 = !DILocation(line: 90, column: 1, scope: !3109)
!3123 = distinct !DISubprogram(name: "uart_output_char", scope: !103, file: !103, line: 93, type: !3124, scopeLine: 94, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !102, retainedNodes: !3127)
!3124 = !DISubroutineType(types: !3125)
!3125 = !{null, !3126, !134}
!3126 = !DIDerivedType(tag: DW_TAG_typedef, name: "UART_PORT", file: !106, line: 75, baseType: !105)
!3127 = !{!3128, !3129, !3130}
!3128 = !DILocalVariable(name: "port_no", arg: 1, scope: !3123, file: !103, line: 93, type: !3126)
!3129 = !DILocalVariable(name: "c", arg: 2, scope: !3123, file: !103, line: 93, type: !134)
!3130 = !DILocalVariable(name: "base", scope: !3123, file: !103, line: 95, type: !7)
!3131 = !DILocation(line: 0, scope: !3123)
!3132 = !DILocation(line: 95, column: 25, scope: !3123)
!3133 = !DILocation(line: 97, column: 5, scope: !3123)
!3134 = !DILocation(line: 97, column: 14, scope: !3123)
!3135 = !DILocation(line: 97, column: 42, scope: !3123)
!3136 = !DILocation(line: 97, column: 12, scope: !3123)
!3137 = distinct !{!3137, !3133, !3138}
!3138 = !DILocation(line: 98, column: 9, scope: !3123)
!3139 = !DILocation(line: 99, column: 35, scope: !3123)
!3140 = !DILocation(line: 99, column: 5, scope: !3123)
!3141 = !DILocation(line: 99, column: 33, scope: !3123)
!3142 = !DILocation(line: 102, column: 1, scope: !3123)
!3143 = distinct !DISubprogram(name: "uart_input_char", scope: !103, file: !103, line: 106, type: !3144, scopeLine: 107, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !102, retainedNodes: !3146)
!3144 = !DISubroutineType(types: !3145)
!3145 = !{!267, !3126}
!3146 = !{!3147, !3148, !3149}
!3147 = !DILocalVariable(name: "port_no", arg: 1, scope: !3143, file: !103, line: 106, type: !3126)
!3148 = !DILocalVariable(name: "base", scope: !3143, file: !103, line: 108, type: !7)
!3149 = !DILocalVariable(name: "c", scope: !3143, file: !103, line: 109, type: !516)
!3150 = !DILocation(line: 0, scope: !3143)
!3151 = !DILocation(line: 108, column: 25, scope: !3143)
!3152 = !DILocation(line: 111, column: 5, scope: !3143)
!3153 = !DILocation(line: 111, column: 14, scope: !3143)
!3154 = !DILocation(line: 111, column: 42, scope: !3143)
!3155 = !DILocation(line: 111, column: 12, scope: !3143)
!3156 = distinct !{!3156, !3152, !3157}
!3157 = !DILocation(line: 112, column: 9, scope: !3143)
!3158 = !DILocation(line: 114, column: 9, scope: !3143)
!3159 = !DILocation(line: 116, column: 5, scope: !3143)
!3160 = distinct !DISubprogram(name: "uart_input_char_unblocking", scope: !103, file: !103, line: 120, type: !3161, scopeLine: 121, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !102, retainedNodes: !3163)
!3161 = !DISubroutineType(types: !3162)
!3162 = !{!92, !3126}
!3163 = !{!3164, !3165, !3166}
!3164 = !DILocalVariable(name: "port_no", arg: 1, scope: !3160, file: !103, line: 120, type: !3126)
!3165 = !DILocalVariable(name: "base", scope: !3160, file: !103, line: 122, type: !7)
!3166 = !DILocalVariable(name: "c", scope: !3160, file: !103, line: 123, type: !516)
!3167 = !DILocation(line: 0, scope: !3160)
!3168 = !DILocation(line: 122, column: 25, scope: !3160)
!3169 = !DILocation(line: 125, column: 9, scope: !3170)
!3170 = distinct !DILexicalBlock(scope: !3160, file: !103, line: 125, column: 9)
!3171 = !DILocation(line: 125, column: 37, scope: !3170)
!3172 = !DILocation(line: 125, column: 9, scope: !3160)
!3173 = !DILocation(line: 126, column: 13, scope: !3174)
!3174 = distinct !DILexicalBlock(scope: !3170, file: !103, line: 125, column: 44)
!3175 = !DILocation(line: 127, column: 16, scope: !3174)
!3176 = !DILocation(line: 127, column: 9, scope: !3174)
!3177 = !DILocation(line: 0, scope: !3170)
!3178 = !DILocation(line: 131, column: 1, scope: !3160)
!3179 = distinct !DISubprogram(name: "halUART_HWInit", scope: !103, file: !103, line: 136, type: !3180, scopeLine: 137, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !102, retainedNodes: !3182)
!3180 = !DISubroutineType(types: !3181)
!3181 = !{null, !3126}
!3182 = !{!3183}
!3183 = !DILocalVariable(name: "u_port", arg: 1, scope: !3179, file: !103, line: 136, type: !3126)
!3184 = !DILocation(line: 0, scope: !3179)
!3185 = !DILocation(line: 139, column: 5, scope: !3179)
!3186 = !DILocation(line: 140, column: 9, scope: !3179)
!3187 = !DILocation(line: 153, column: 5, scope: !3188)
!3188 = distinct !DILexicalBlock(scope: !3189, file: !103, line: 147, column: 38)
!3189 = distinct !DILexicalBlock(scope: !3190, file: !103, line: 147, column: 16)
!3190 = distinct !DILexicalBlock(scope: !3179, file: !103, line: 140, column: 9)
!3191 = !DILocation(line: 0, scope: !3190)
!3192 = !DILocation(line: 155, column: 1, scope: !3179)
!3193 = distinct !DISubprogram(name: "halUART_SetFormat", scope: !103, file: !103, line: 158, type: !3194, scopeLine: 159, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !102, retainedNodes: !3196)
!3194 = !DISubroutineType(types: !3195)
!3195 = !{null, !3126, !92, !438, !438, !438}
!3196 = !{!3197, !3198, !3199, !3200, !3201, !3202, !3203, !3204, !3205, !3206, !3207, !3208, !3209, !3210, !3212, !3213}
!3197 = !DILocalVariable(name: "u_port", arg: 1, scope: !3193, file: !103, line: 158, type: !3126)
!3198 = !DILocalVariable(name: "baudrate", arg: 2, scope: !3193, file: !103, line: 158, type: !92)
!3199 = !DILocalVariable(name: "databit", arg: 3, scope: !3193, file: !103, line: 158, type: !438)
!3200 = !DILocalVariable(name: "parity", arg: 4, scope: !3193, file: !103, line: 158, type: !438)
!3201 = !DILocalVariable(name: "stopbit", arg: 5, scope: !3193, file: !103, line: 158, type: !438)
!3202 = !DILocalVariable(name: "control_word", scope: !3193, file: !103, line: 160, type: !438)
!3203 = !DILocalVariable(name: "UART_BASE", scope: !3193, file: !103, line: 161, type: !92)
!3204 = !DILocalVariable(name: "data", scope: !3193, file: !103, line: 162, type: !92)
!3205 = !DILocalVariable(name: "uart_lcr", scope: !3193, file: !103, line: 162, type: !92)
!3206 = !DILocalVariable(name: "high_speed_div", scope: !3193, file: !103, line: 162, type: !92)
!3207 = !DILocalVariable(name: "sample_count", scope: !3193, file: !103, line: 162, type: !92)
!3208 = !DILocalVariable(name: "sample_point", scope: !3193, file: !103, line: 162, type: !92)
!3209 = !DILocalVariable(name: "fraction", scope: !3193, file: !103, line: 162, type: !92)
!3210 = !DILocalVariable(name: "fraction_L_mapping", scope: !3193, file: !103, line: 163, type: !3211)
!3211 = !DICompositeType(tag: DW_TAG_array_type, baseType: !438, size: 176, elements: !849)
!3212 = !DILocalVariable(name: "fraction_M_mapping", scope: !3193, file: !103, line: 164, type: !3211)
!3213 = !DILocalVariable(name: "status", scope: !3193, file: !103, line: 165, type: !238)
!3214 = !DILocation(line: 0, scope: !3193)
!3215 = !DILocation(line: 163, column: 15, scope: !3193)
!3216 = !DILocation(line: 164, column: 15, scope: !3193)
!3217 = !DILocation(line: 166, column: 20, scope: !3193)
!3218 = !DILocation(line: 166, column: 18, scope: !3193)
!3219 = !DILocation(line: 168, column: 9, scope: !3193)
!3220 = !DILocation(line: 176, column: 5, scope: !3193)
!3221 = !DILocation(line: 176, column: 44, scope: !3193)
!3222 = !DILocation(line: 177, column: 16, scope: !3193)
!3223 = !DILocation(line: 178, column: 50, scope: !3193)
!3224 = !DILocation(line: 178, column: 38, scope: !3193)
!3225 = !DILocation(line: 179, column: 12, scope: !3193)
!3226 = !DILocation(line: 179, column: 25, scope: !3193)
!3227 = !DILocation(line: 180, column: 28, scope: !3193)
!3228 = !DILocation(line: 180, column: 34, scope: !3193)
!3229 = !DILocation(line: 182, column: 29, scope: !3230)
!3230 = distinct !DILexicalBlock(scope: !3193, file: !103, line: 181, column: 5)
!3231 = !DILocation(line: 182, column: 46, scope: !3230)
!3232 = !DILocation(line: 183, column: 26, scope: !3233)
!3233 = distinct !DILexicalBlock(scope: !3230, file: !103, line: 183, column: 13)
!3234 = !DILocation(line: 183, column: 13, scope: !3230)
!3235 = !DILocation(line: 192, column: 30, scope: !3193)
!3236 = !DILocation(line: 192, column: 35, scope: !3193)
!3237 = !DILocation(line: 192, column: 46, scope: !3193)
!3238 = !DILocation(line: 192, column: 74, scope: !3193)
!3239 = !DILocation(line: 192, column: 53, scope: !3193)
!3240 = !DILocation(line: 192, column: 80, scope: !3193)
!3241 = !DILocation(line: 193, column: 56, scope: !3193)
!3242 = !DILocation(line: 193, column: 5, scope: !3193)
!3243 = !DILocation(line: 193, column: 38, scope: !3193)
!3244 = !DILocation(line: 194, column: 57, scope: !3193)
!3245 = !DILocation(line: 194, column: 63, scope: !3193)
!3246 = !DILocation(line: 194, column: 5, scope: !3193)
!3247 = !DILocation(line: 194, column: 38, scope: !3193)
!3248 = !DILocation(line: 195, column: 5, scope: !3193)
!3249 = !DILocation(line: 195, column: 45, scope: !3193)
!3250 = !DILocation(line: 196, column: 5, scope: !3193)
!3251 = !DILocation(line: 196, column: 47, scope: !3193)
!3252 = !DILocation(line: 197, column: 46, scope: !3193)
!3253 = !DILocation(line: 197, column: 5, scope: !3193)
!3254 = !DILocation(line: 197, column: 44, scope: !3193)
!3255 = !DILocation(line: 198, column: 46, scope: !3193)
!3256 = !DILocation(line: 198, column: 5, scope: !3193)
!3257 = !DILocation(line: 198, column: 44, scope: !3193)
!3258 = !DILocation(line: 199, column: 38, scope: !3193)
!3259 = !DILocation(line: 200, column: 5, scope: !3193)
!3260 = !DILocation(line: 200, column: 38, scope: !3193)
!3261 = !DILocation(line: 202, column: 20, scope: !3193)
!3262 = !DILocation(line: 203, column: 18, scope: !3193)
!3263 = !DILocation(line: 205, column: 18, scope: !3193)
!3264 = !DILocation(line: 207, column: 18, scope: !3193)
!3265 = !DILocation(line: 208, column: 18, scope: !3193)
!3266 = !DILocation(line: 209, column: 5, scope: !3193)
!3267 = !DILocation(line: 213, column: 1, scope: !3193)
!3268 = distinct !DISubprogram(name: "halUART_Get_VFIFO_Length", scope: !103, file: !103, line: 215, type: !3269, scopeLine: 216, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !102, retainedNodes: !3271)
!3269 = !DISubroutineType(types: !3270)
!3270 = !{null, !3126, !238, !451}
!3271 = !{!3272, !3273, !3274}
!3272 = !DILocalVariable(name: "u_port", arg: 1, scope: !3268, file: !103, line: 215, type: !3126)
!3273 = !DILocalVariable(name: "is_rx", arg: 2, scope: !3268, file: !103, line: 215, type: !238)
!3274 = !DILocalVariable(name: "length", arg: 3, scope: !3268, file: !103, line: 215, type: !451)
!3275 = !DILocation(line: 0, scope: !3268)
!3276 = !DILocation(line: 217, column: 16, scope: !3277)
!3277 = distinct !DILexicalBlock(scope: !3268, file: !103, line: 217, column: 9)
!3278 = !DILocation(line: 0, scope: !3277)
!3279 = !DILocation(line: 217, column: 9, scope: !3268)
!3280 = !DILocation(line: 218, column: 13, scope: !3281)
!3281 = distinct !DILexicalBlock(scope: !3277, file: !103, line: 217, column: 31)
!3282 = !DILocation(line: 219, column: 23, scope: !3283)
!3283 = distinct !DILexicalBlock(scope: !3284, file: !103, line: 218, column: 20)
!3284 = distinct !DILexicalBlock(scope: !3281, file: !103, line: 218, column: 13)
!3285 = !DILocation(line: 220, column: 9, scope: !3283)
!3286 = !DILocation(line: 221, column: 23, scope: !3287)
!3287 = distinct !DILexicalBlock(scope: !3284, file: !103, line: 220, column: 16)
!3288 = !DILocation(line: 221, column: 21, scope: !3287)
!3289 = !DILocation(line: 222, column: 24, scope: !3287)
!3290 = !DILocation(line: 222, column: 21, scope: !3287)
!3291 = !DILocation(line: 225, column: 13, scope: !3292)
!3292 = distinct !DILexicalBlock(scope: !3277, file: !103, line: 224, column: 12)
!3293 = !DILocation(line: 226, column: 23, scope: !3294)
!3294 = distinct !DILexicalBlock(scope: !3295, file: !103, line: 225, column: 20)
!3295 = distinct !DILexicalBlock(scope: !3292, file: !103, line: 225, column: 13)
!3296 = !DILocation(line: 227, column: 9, scope: !3294)
!3297 = !DILocation(line: 228, column: 23, scope: !3298)
!3298 = distinct !DILexicalBlock(scope: !3295, file: !103, line: 227, column: 16)
!3299 = !DILocation(line: 228, column: 21, scope: !3298)
!3300 = !DILocation(line: 229, column: 24, scope: !3298)
!3301 = !DILocation(line: 229, column: 21, scope: !3298)
!3302 = !DILocation(line: 233, column: 5, scope: !3268)
!3303 = distinct !DISubprogram(name: "halUART_Read_VFIFO_Data", scope: !103, file: !103, line: 236, type: !3304, scopeLine: 237, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !102, retainedNodes: !3306)
!3304 = !DISubroutineType(types: !3305)
!3305 = !{null, !3126, !564, !92}
!3306 = !{!3307, !3308, !3309, !3310}
!3307 = !DILocalVariable(name: "u_port", arg: 1, scope: !3303, file: !103, line: 236, type: !3126)
!3308 = !DILocalVariable(name: "data", arg: 2, scope: !3303, file: !103, line: 236, type: !564)
!3309 = !DILocalVariable(name: "length", arg: 3, scope: !3303, file: !103, line: 236, type: !92)
!3310 = !DILocalVariable(name: "idx", scope: !3303, file: !103, line: 238, type: !80)
!3311 = !DILocation(line: 0, scope: !3303)
!3312 = !DILocation(line: 239, column: 23, scope: !3313)
!3313 = distinct !DILexicalBlock(scope: !3314, file: !103, line: 239, column: 5)
!3314 = distinct !DILexicalBlock(scope: !3303, file: !103, line: 239, column: 5)
!3315 = !DILocation(line: 239, column: 5, scope: !3314)
!3316 = !DILocation(line: 240, column: 13, scope: !3317)
!3317 = distinct !DILexicalBlock(scope: !3313, file: !103, line: 239, column: 40)
!3318 = !DILocation(line: 244, column: 9, scope: !3319)
!3319 = distinct !DILexicalBlock(scope: !3320, file: !103, line: 242, column: 42)
!3320 = distinct !DILexicalBlock(scope: !3321, file: !103, line: 242, column: 20)
!3321 = distinct !DILexicalBlock(scope: !3317, file: !103, line: 240, column: 13)
!3322 = !DILocation(line: 0, scope: !3321)
!3323 = !DILocation(line: 239, column: 36, scope: !3313)
!3324 = distinct !{!3324, !3315, !3325}
!3325 = !DILocation(line: 246, column: 5, scope: !3314)
!3326 = !DILocation(line: 249, column: 1, scope: !3303)
!3327 = distinct !DISubprogram(name: "halUART_Write_VFIFO_Data", scope: !103, file: !103, line: 251, type: !3328, scopeLine: 252, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !102, retainedNodes: !3332)
!3328 = !DISubroutineType(types: !3329)
!3329 = !{null, !3126, !3330, !92}
!3330 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3331, size: 32)
!3331 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !267)
!3332 = !{!3333, !3334, !3335, !3336}
!3333 = !DILocalVariable(name: "u_port", arg: 1, scope: !3327, file: !103, line: 251, type: !3126)
!3334 = !DILocalVariable(name: "data", arg: 2, scope: !3327, file: !103, line: 251, type: !3330)
!3335 = !DILocalVariable(name: "length", arg: 3, scope: !3327, file: !103, line: 251, type: !92)
!3336 = !DILocalVariable(name: "idx", scope: !3327, file: !103, line: 253, type: !80)
!3337 = !DILocation(line: 0, scope: !3327)
!3338 = !DILocation(line: 254, column: 23, scope: !3339)
!3339 = distinct !DILexicalBlock(scope: !3340, file: !103, line: 254, column: 5)
!3340 = distinct !DILexicalBlock(scope: !3327, file: !103, line: 254, column: 5)
!3341 = !DILocation(line: 254, column: 5, scope: !3340)
!3342 = !DILocation(line: 255, column: 13, scope: !3343)
!3343 = distinct !DILexicalBlock(scope: !3339, file: !103, line: 254, column: 40)
!3344 = !DILocation(line: 256, column: 61, scope: !3345)
!3345 = distinct !DILexicalBlock(scope: !3346, file: !103, line: 255, column: 35)
!3346 = distinct !DILexicalBlock(scope: !3343, file: !103, line: 255, column: 13)
!3347 = !DILocation(line: 256, column: 59, scope: !3345)
!3348 = !DILocation(line: 257, column: 9, scope: !3345)
!3349 = !DILocation(line: 258, column: 61, scope: !3350)
!3350 = distinct !DILexicalBlock(scope: !3351, file: !103, line: 257, column: 42)
!3351 = distinct !DILexicalBlock(scope: !3346, file: !103, line: 257, column: 20)
!3352 = !DILocation(line: 258, column: 59, scope: !3350)
!3353 = !DILocation(line: 259, column: 9, scope: !3350)
!3354 = !DILocation(line: 254, column: 36, scope: !3339)
!3355 = distinct !{!3355, !3341, !3356}
!3356 = !DILocation(line: 261, column: 5, scope: !3340)
!3357 = !DILocation(line: 264, column: 1, scope: !3327)
!3358 = distinct !DISubprogram(name: "halUART_Tx_VFIFO_Initialize", scope: !103, file: !103, line: 266, type: !3359, scopeLine: 267, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !102, retainedNodes: !3361)
!3359 = !DISubroutineType(types: !3360)
!3360 = !{null, !3126, !564, !92, !92}
!3361 = !{!3362, !3363, !3364, !3365}
!3362 = !DILocalVariable(name: "u_port", arg: 1, scope: !3358, file: !103, line: 266, type: !3126)
!3363 = !DILocalVariable(name: "vfifo_buffer", arg: 2, scope: !3358, file: !103, line: 266, type: !564)
!3364 = !DILocalVariable(name: "buffer_length", arg: 3, scope: !3358, file: !103, line: 266, type: !92)
!3365 = !DILocalVariable(name: "threshold", arg: 4, scope: !3358, file: !103, line: 266, type: !92)
!3366 = !DILocation(line: 0, scope: !3358)
!3367 = !DILocation(line: 268, column: 9, scope: !3358)
!3368 = !DILocation(line: 274, column: 5, scope: !3369)
!3369 = distinct !DILexicalBlock(scope: !3370, file: !103, line: 271, column: 38)
!3370 = distinct !DILexicalBlock(scope: !3371, file: !103, line: 271, column: 16)
!3371 = distinct !DILexicalBlock(scope: !3358, file: !103, line: 268, column: 9)
!3372 = !DILocation(line: 0, scope: !3371)
!3373 = !DILocation(line: 276, column: 1, scope: !3358)
!3374 = distinct !DISubprogram(name: "halUART_Rx_VFIFO_Initialize", scope: !103, file: !103, line: 278, type: !3375, scopeLine: 279, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !102, retainedNodes: !3377)
!3375 = !DISubroutineType(types: !3376)
!3376 = !{null, !3126, !564, !92, !92, !92, !92}
!3377 = !{!3378, !3379, !3380, !3381, !3382, !3383}
!3378 = !DILocalVariable(name: "u_port", arg: 1, scope: !3374, file: !103, line: 278, type: !3126)
!3379 = !DILocalVariable(name: "vfifo_buffer", arg: 2, scope: !3374, file: !103, line: 278, type: !564)
!3380 = !DILocalVariable(name: "buffer_length", arg: 3, scope: !3374, file: !103, line: 278, type: !92)
!3381 = !DILocalVariable(name: "alert_length", arg: 4, scope: !3374, file: !103, line: 278, type: !92)
!3382 = !DILocalVariable(name: "threshold", arg: 5, scope: !3374, file: !103, line: 278, type: !92)
!3383 = !DILocalVariable(name: "timeout", arg: 6, scope: !3374, file: !103, line: 278, type: !92)
!3384 = !DILocation(line: 0, scope: !3374)
!3385 = !DILocation(line: 280, column: 9, scope: !3374)
!3386 = !DILocation(line: 286, column: 5, scope: !3387)
!3387 = distinct !DILexicalBlock(scope: !3388, file: !103, line: 283, column: 38)
!3388 = distinct !DILexicalBlock(scope: !3389, file: !103, line: 283, column: 16)
!3389 = distinct !DILexicalBlock(scope: !3374, file: !103, line: 280, column: 9)
!3390 = !DILocation(line: 0, scope: !3389)
!3391 = !DILocation(line: 288, column: 1, scope: !3374)
!3392 = distinct !DISubprogram(name: "halUART_VDMA_Rx_Register_Callback", scope: !103, file: !103, line: 290, type: !3393, scopeLine: 291, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !102, retainedNodes: !3395)
!3393 = !DISubroutineType(types: !3394)
!3394 = !{null, !3126, !523}
!3395 = !{!3396, !3397}
!3396 = !DILocalVariable(name: "u_port", arg: 1, scope: !3392, file: !103, line: 290, type: !3126)
!3397 = !DILocalVariable(name: "func", arg: 2, scope: !3392, file: !103, line: 290, type: !523)
!3398 = !DILocation(line: 0, scope: !3392)
!3399 = !DILocation(line: 292, column: 9, scope: !3392)
!3400 = !DILocation(line: 296, column: 5, scope: !3401)
!3401 = distinct !DILexicalBlock(scope: !3402, file: !103, line: 294, column: 38)
!3402 = distinct !DILexicalBlock(scope: !3403, file: !103, line: 294, column: 16)
!3403 = distinct !DILexicalBlock(scope: !3392, file: !103, line: 292, column: 9)
!3404 = !DILocation(line: 0, scope: !3403)
!3405 = !DILocation(line: 298, column: 1, scope: !3392)
!3406 = distinct !DISubprogram(name: "halUART_VDMA_Rx_Register_TO_Callback", scope: !103, file: !103, line: 300, type: !3393, scopeLine: 301, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !102, retainedNodes: !3407)
!3407 = !{!3408, !3409}
!3408 = !DILocalVariable(name: "u_port", arg: 1, scope: !3406, file: !103, line: 300, type: !3126)
!3409 = !DILocalVariable(name: "func", arg: 2, scope: !3406, file: !103, line: 300, type: !523)
!3410 = !DILocation(line: 0, scope: !3406)
!3411 = !DILocation(line: 302, column: 9, scope: !3406)
!3412 = !DILocation(line: 306, column: 5, scope: !3413)
!3413 = distinct !DILexicalBlock(scope: !3414, file: !103, line: 304, column: 38)
!3414 = distinct !DILexicalBlock(scope: !3415, file: !103, line: 304, column: 16)
!3415 = distinct !DILexicalBlock(scope: !3406, file: !103, line: 302, column: 9)
!3416 = !DILocation(line: 0, scope: !3415)
!3417 = !DILocation(line: 308, column: 1, scope: !3406)
!3418 = distinct !DISubprogram(name: "uart_set_hardware_flowcontrol", scope: !103, file: !103, line: 310, type: !3180, scopeLine: 311, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !102, retainedNodes: !3419)
!3419 = !{!3420, !3421, !3422, !3423}
!3420 = !DILocalVariable(name: "u_port", arg: 1, scope: !3418, file: !103, line: 310, type: !3126)
!3421 = !DILocalVariable(name: "base", scope: !3418, file: !103, line: 312, type: !7)
!3422 = !DILocalVariable(name: "EFR", scope: !3418, file: !103, line: 313, type: !438)
!3423 = !DILocalVariable(name: "LCR", scope: !3418, file: !103, line: 313, type: !438)
!3424 = !DILocation(line: 0, scope: !3418)
!3425 = !DILocation(line: 312, column: 25, scope: !3418)
!3426 = !DILocation(line: 315, column: 11, scope: !3418)
!3427 = !DILocation(line: 317, column: 33, scope: !3418)
!3428 = !DILocation(line: 318, column: 11, scope: !3418)
!3429 = !DILocation(line: 320, column: 35, scope: !3418)
!3430 = !DILocation(line: 320, column: 33, scope: !3418)
!3431 = !DILocation(line: 322, column: 5, scope: !3418)
!3432 = !DILocation(line: 322, column: 39, scope: !3418)
!3433 = !DILocation(line: 324, column: 33, scope: !3418)
!3434 = !DILocation(line: 325, column: 5, scope: !3418)
!3435 = !DILocation(line: 325, column: 33, scope: !3418)
!3436 = !DILocation(line: 327, column: 35, scope: !3418)
!3437 = !DILocation(line: 327, column: 33, scope: !3418)
!3438 = !DILocation(line: 328, column: 1, scope: !3418)
!3439 = distinct !DISubprogram(name: "uart_set_software_flowcontrol", scope: !103, file: !103, line: 330, type: !3440, scopeLine: 331, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !102, retainedNodes: !3442)
!3440 = !DISubroutineType(types: !3441)
!3441 = !{null, !3126, !267, !267, !267}
!3442 = !{!3443, !3444, !3445, !3446, !3447, !3448, !3449}
!3443 = !DILocalVariable(name: "u_port", arg: 1, scope: !3439, file: !103, line: 330, type: !3126)
!3444 = !DILocalVariable(name: "xon", arg: 2, scope: !3439, file: !103, line: 330, type: !267)
!3445 = !DILocalVariable(name: "xoff", arg: 3, scope: !3439, file: !103, line: 330, type: !267)
!3446 = !DILocalVariable(name: "escape_character", arg: 4, scope: !3439, file: !103, line: 330, type: !267)
!3447 = !DILocalVariable(name: "base", scope: !3439, file: !103, line: 332, type: !7)
!3448 = !DILocalVariable(name: "EFR", scope: !3439, file: !103, line: 333, type: !438)
!3449 = !DILocalVariable(name: "LCR", scope: !3439, file: !103, line: 333, type: !438)
!3450 = !DILocation(line: 0, scope: !3439)
!3451 = !DILocation(line: 332, column: 25, scope: !3439)
!3452 = !DILocation(line: 335, column: 11, scope: !3439)
!3453 = !DILocation(line: 337, column: 33, scope: !3439)
!3454 = !DILocation(line: 338, column: 36, scope: !3439)
!3455 = !DILocation(line: 338, column: 5, scope: !3439)
!3456 = !DILocation(line: 338, column: 34, scope: !3439)
!3457 = !DILocation(line: 339, column: 5, scope: !3439)
!3458 = !DILocation(line: 339, column: 34, scope: !3439)
!3459 = !DILocation(line: 340, column: 37, scope: !3439)
!3460 = !DILocation(line: 340, column: 5, scope: !3439)
!3461 = !DILocation(line: 340, column: 35, scope: !3439)
!3462 = !DILocation(line: 341, column: 5, scope: !3439)
!3463 = !DILocation(line: 341, column: 35, scope: !3439)
!3464 = !DILocation(line: 343, column: 11, scope: !3439)
!3465 = !DILocation(line: 345, column: 35, scope: !3439)
!3466 = !DILocation(line: 345, column: 33, scope: !3439)
!3467 = !DILocation(line: 347, column: 35, scope: !3439)
!3468 = !DILocation(line: 347, column: 33, scope: !3439)
!3469 = !DILocation(line: 349, column: 43, scope: !3439)
!3470 = !DILocation(line: 349, column: 5, scope: !3439)
!3471 = !DILocation(line: 349, column: 41, scope: !3439)
!3472 = !DILocation(line: 350, column: 5, scope: !3439)
!3473 = !DILocation(line: 350, column: 39, scope: !3439)
!3474 = !DILocation(line: 351, column: 1, scope: !3439)
!3475 = distinct !DISubprogram(name: "uart_disable_flowcontrol", scope: !103, file: !103, line: 353, type: !3180, scopeLine: 354, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !102, retainedNodes: !3476)
!3476 = !{!3477, !3478, !3479}
!3477 = !DILocalVariable(name: "u_port", arg: 1, scope: !3475, file: !103, line: 353, type: !3126)
!3478 = !DILocalVariable(name: "base", scope: !3475, file: !103, line: 355, type: !7)
!3479 = !DILocalVariable(name: "LCR", scope: !3475, file: !103, line: 356, type: !438)
!3480 = !DILocation(line: 0, scope: !3475)
!3481 = !DILocation(line: 355, column: 25, scope: !3475)
!3482 = !DILocation(line: 358, column: 11, scope: !3475)
!3483 = !DILocation(line: 360, column: 33, scope: !3475)
!3484 = !DILocation(line: 362, column: 5, scope: !3475)
!3485 = !DILocation(line: 362, column: 33, scope: !3475)
!3486 = !DILocation(line: 364, column: 33, scope: !3475)
!3487 = !DILocation(line: 366, column: 35, scope: !3475)
!3488 = !DILocation(line: 366, column: 33, scope: !3475)
!3489 = !DILocation(line: 367, column: 1, scope: !3475)
!3490 = distinct !DISubprogram(name: "uart_reset_default_value", scope: !103, file: !103, line: 436, type: !3180, scopeLine: 437, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !102, retainedNodes: !3491)
!3491 = !{!3492, !3493}
!3492 = !DILocalVariable(name: "u_port", arg: 1, scope: !3490, file: !103, line: 436, type: !3126)
!3493 = !DILocalVariable(name: "base", scope: !3490, file: !103, line: 438, type: !7)
!3494 = !DILocation(line: 0, scope: !3490)
!3495 = !DILocation(line: 438, column: 25, scope: !3490)
!3496 = !DILocation(line: 440, column: 5, scope: !3490)
!3497 = !DILocation(line: 440, column: 33, scope: !3490)
!3498 = !DILocation(line: 441, column: 5, scope: !3490)
!3499 = !DILocation(line: 441, column: 33, scope: !3490)
!3500 = !DILocation(line: 442, column: 5, scope: !3490)
!3501 = !DILocation(line: 442, column: 34, scope: !3490)
!3502 = !DILocation(line: 443, column: 5, scope: !3490)
!3503 = !DILocation(line: 443, column: 35, scope: !3490)
!3504 = !DILocation(line: 445, column: 33, scope: !3490)
!3505 = !DILocation(line: 446, column: 5, scope: !3490)
!3506 = !DILocation(line: 446, column: 33, scope: !3490)
!3507 = !DILocation(line: 447, column: 5, scope: !3490)
!3508 = !DILocation(line: 447, column: 33, scope: !3490)
!3509 = !DILocation(line: 449, column: 33, scope: !3490)
!3510 = !DILocation(line: 450, column: 33, scope: !3490)
!3511 = !DILocation(line: 451, column: 33, scope: !3490)
!3512 = !DILocation(line: 453, column: 33, scope: !3490)
!3513 = !DILocation(line: 454, column: 33, scope: !3490)
!3514 = !DILocation(line: 455, column: 33, scope: !3490)
!3515 = !DILocation(line: 457, column: 33, scope: !3490)
!3516 = !DILocation(line: 458, column: 5, scope: !3490)
!3517 = !DILocation(line: 458, column: 33, scope: !3490)
!3518 = !DILocation(line: 459, column: 5, scope: !3490)
!3519 = !DILocation(line: 459, column: 39, scope: !3490)
!3520 = !DILocation(line: 460, column: 5, scope: !3490)
!3521 = !DILocation(line: 460, column: 40, scope: !3490)
!3522 = !DILocation(line: 461, column: 5, scope: !3490)
!3523 = !DILocation(line: 461, column: 42, scope: !3490)
!3524 = !DILocation(line: 462, column: 5, scope: !3490)
!3525 = !DILocation(line: 462, column: 42, scope: !3490)
!3526 = !DILocation(line: 463, column: 5, scope: !3490)
!3527 = !DILocation(line: 463, column: 35, scope: !3490)
!3528 = !DILocation(line: 464, column: 5, scope: !3490)
!3529 = !DILocation(line: 464, column: 41, scope: !3490)
!3530 = !DILocation(line: 465, column: 5, scope: !3490)
!3531 = !DILocation(line: 465, column: 39, scope: !3490)
!3532 = !DILocation(line: 466, column: 5, scope: !3490)
!3533 = !DILocation(line: 466, column: 38, scope: !3490)
!3534 = !DILocation(line: 467, column: 5, scope: !3490)
!3535 = !DILocation(line: 467, column: 42, scope: !3490)
!3536 = !DILocation(line: 468, column: 5, scope: !3490)
!3537 = !DILocation(line: 468, column: 45, scope: !3490)
!3538 = !DILocation(line: 469, column: 5, scope: !3490)
!3539 = !DILocation(line: 469, column: 39, scope: !3490)
!3540 = !DILocation(line: 470, column: 5, scope: !3490)
!3541 = !DILocation(line: 470, column: 39, scope: !3490)
!3542 = !DILocation(line: 471, column: 5, scope: !3490)
!3543 = !DILocation(line: 471, column: 42, scope: !3490)
!3544 = !DILocation(line: 472, column: 1, scope: !3490)
!3545 = distinct !DISubprogram(name: "uart_query_empty", scope: !103, file: !103, line: 474, type: !3180, scopeLine: 475, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !102, retainedNodes: !3546)
!3546 = !{!3547, !3548}
!3547 = !DILocalVariable(name: "u_port", arg: 1, scope: !3545, file: !103, line: 474, type: !3126)
!3548 = !DILocalVariable(name: "base", scope: !3545, file: !103, line: 476, type: !7)
!3549 = !DILocation(line: 0, scope: !3545)
!3550 = !DILocation(line: 476, column: 25, scope: !3545)
!3551 = !DILocation(line: 478, column: 5, scope: !3545)
!3552 = !DILocation(line: 478, column: 14, scope: !3545)
!3553 = !DILocation(line: 478, column: 42, scope: !3545)
!3554 = !DILocation(line: 478, column: 12, scope: !3545)
!3555 = distinct !{!3555, !3551, !3556}
!3556 = !DILocation(line: 478, column: 50, scope: !3545)
!3557 = !DILocation(line: 479, column: 1, scope: !3545)
!3558 = distinct !DISubprogram(name: "log_hal_fatal_internal", scope: !1075, file: !1075, line: 64, type: !3559, scopeLine: 65, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !1074, retainedNodes: !3561)
!3559 = !DISubroutineType(types: !3560)
!3560 = !{null, !673, !13, !673, null}
!3561 = !{!3562, !3563, !3564, !3565, !3574}
!3562 = !DILocalVariable(name: "func", arg: 1, scope: !3558, file: !1075, line: 64, type: !673)
!3563 = !DILocalVariable(name: "line", arg: 2, scope: !3558, file: !1075, line: 64, type: !13)
!3564 = !DILocalVariable(name: "message", arg: 3, scope: !3558, file: !1075, line: 64, type: !673)
!3565 = !DILocalVariable(name: "ap", scope: !3558, file: !1075, line: 66, type: !3566)
!3566 = !DIDerivedType(tag: DW_TAG_typedef, name: "va_list", file: !3567, line: 46, baseType: !3568)
!3567 = !DIFile(filename: "gcc-arm-none-eabi-10.3-2021.10/bin/../lib/gcc/arm-none-eabi/10.3.1/../../../../arm-none-eabi/include/stdio.h", directory: "/home/mjshen/RTOSExploration")
!3568 = !DIDerivedType(tag: DW_TAG_typedef, name: "__gnuc_va_list", file: !3569, line: 32, baseType: !3570)
!3569 = !DIFile(filename: "/usr/lib/llvm-14/lib/clang/14.0.6/include/stdarg.h", directory: "")
!3570 = !DIDerivedType(tag: DW_TAG_typedef, name: "__builtin_va_list", file: !1075, baseType: !3571)
!3571 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__va_list", size: 32, elements: !3572)
!3572 = !{!3573}
!3573 = !DIDerivedType(tag: DW_TAG_member, name: "__ap", scope: !3571, file: !1075, line: 66, baseType: !219, size: 32)
!3574 = !DILocalVariable(name: "mask", scope: !3558, file: !1075, line: 68, type: !92)
!3575 = !DILocation(line: 0, scope: !3558)
!3576 = !DILocation(line: 66, column: 5, scope: !3558)
!3577 = !DILocation(line: 66, column: 13, scope: !3558)
!3578 = !DILocation(line: 68, column: 5, scope: !3558)
!3579 = !DILocation(line: 69, column: 5, scope: !3558)
!3580 = !DILocation(line: 71, column: 5, scope: !3558)
!3581 = !DILocation(line: 72, column: 5, scope: !3558)
!3582 = !DILocation(line: 73, column: 5, scope: !3558)
!3583 = !DILocation(line: 75, column: 37, scope: !3558)
!3584 = !DILocation(line: 75, column: 5, scope: !3558)
!3585 = !DILocation(line: 77, column: 1, scope: !3558)
!3586 = distinct !DISubprogram(name: "log_hal_error_internal", scope: !1075, file: !1075, line: 78, type: !3559, scopeLine: 79, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !1074, retainedNodes: !3587)
!3587 = !{!3588, !3589, !3590, !3591, !3592}
!3588 = !DILocalVariable(name: "func", arg: 1, scope: !3586, file: !1075, line: 78, type: !673)
!3589 = !DILocalVariable(name: "line", arg: 2, scope: !3586, file: !1075, line: 78, type: !13)
!3590 = !DILocalVariable(name: "message", arg: 3, scope: !3586, file: !1075, line: 78, type: !673)
!3591 = !DILocalVariable(name: "ap", scope: !3586, file: !1075, line: 80, type: !3566)
!3592 = !DILocalVariable(name: "mask", scope: !3586, file: !1075, line: 82, type: !92)
!3593 = !DILocation(line: 0, scope: !3586)
!3594 = !DILocation(line: 80, column: 5, scope: !3586)
!3595 = !DILocation(line: 80, column: 13, scope: !3586)
!3596 = !DILocation(line: 82, column: 5, scope: !3586)
!3597 = !DILocation(line: 83, column: 5, scope: !3586)
!3598 = !DILocation(line: 85, column: 5, scope: !3586)
!3599 = !DILocation(line: 86, column: 5, scope: !3586)
!3600 = !DILocation(line: 87, column: 5, scope: !3586)
!3601 = !DILocation(line: 89, column: 37, scope: !3586)
!3602 = !DILocation(line: 89, column: 5, scope: !3586)
!3603 = !DILocation(line: 91, column: 1, scope: !3586)
!3604 = distinct !DISubprogram(name: "log_hal_warning_internal", scope: !1075, file: !1075, line: 92, type: !3559, scopeLine: 93, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !1074, retainedNodes: !3605)
!3605 = !{!3606, !3607, !3608, !3609, !3610}
!3606 = !DILocalVariable(name: "func", arg: 1, scope: !3604, file: !1075, line: 92, type: !673)
!3607 = !DILocalVariable(name: "line", arg: 2, scope: !3604, file: !1075, line: 92, type: !13)
!3608 = !DILocalVariable(name: "message", arg: 3, scope: !3604, file: !1075, line: 92, type: !673)
!3609 = !DILocalVariable(name: "ap", scope: !3604, file: !1075, line: 94, type: !3566)
!3610 = !DILocalVariable(name: "mask", scope: !3604, file: !1075, line: 96, type: !92)
!3611 = !DILocation(line: 0, scope: !3604)
!3612 = !DILocation(line: 94, column: 5, scope: !3604)
!3613 = !DILocation(line: 94, column: 13, scope: !3604)
!3614 = !DILocation(line: 96, column: 5, scope: !3604)
!3615 = !DILocation(line: 97, column: 5, scope: !3604)
!3616 = !DILocation(line: 99, column: 5, scope: !3604)
!3617 = !DILocation(line: 100, column: 5, scope: !3604)
!3618 = !DILocation(line: 101, column: 5, scope: !3604)
!3619 = !DILocation(line: 103, column: 37, scope: !3604)
!3620 = !DILocation(line: 103, column: 5, scope: !3604)
!3621 = !DILocation(line: 105, column: 1, scope: !3604)
!3622 = distinct !DISubprogram(name: "log_hal_info_internal", scope: !1075, file: !1075, line: 106, type: !3559, scopeLine: 107, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !1074, retainedNodes: !3623)
!3623 = !{!3624, !3625, !3626, !3627, !3628}
!3624 = !DILocalVariable(name: "func", arg: 1, scope: !3622, file: !1075, line: 106, type: !673)
!3625 = !DILocalVariable(name: "line", arg: 2, scope: !3622, file: !1075, line: 106, type: !13)
!3626 = !DILocalVariable(name: "message", arg: 3, scope: !3622, file: !1075, line: 106, type: !673)
!3627 = !DILocalVariable(name: "ap", scope: !3622, file: !1075, line: 108, type: !3566)
!3628 = !DILocalVariable(name: "mask", scope: !3622, file: !1075, line: 110, type: !92)
!3629 = !DILocation(line: 0, scope: !3622)
!3630 = !DILocation(line: 108, column: 5, scope: !3622)
!3631 = !DILocation(line: 108, column: 13, scope: !3622)
!3632 = !DILocation(line: 110, column: 5, scope: !3622)
!3633 = !DILocation(line: 111, column: 5, scope: !3622)
!3634 = !DILocation(line: 113, column: 5, scope: !3622)
!3635 = !DILocation(line: 114, column: 5, scope: !3622)
!3636 = !DILocation(line: 115, column: 5, scope: !3622)
!3637 = !DILocation(line: 117, column: 37, scope: !3622)
!3638 = !DILocation(line: 117, column: 5, scope: !3622)
!3639 = !DILocation(line: 119, column: 1, scope: !3622)
!3640 = distinct !DISubprogram(name: "log_hal_dump_internal", scope: !1075, file: !1075, line: 121, type: !3641, scopeLine: 122, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !1074, retainedNodes: !3645)
!3641 = !DISubroutineType(types: !3642)
!3642 = !{null, !673, !13, !673, !3643, !13, null}
!3643 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3644, size: 32)
!3644 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!3645 = !{!3646, !3647, !3648, !3649, !3650}
!3646 = !DILocalVariable(name: "func", arg: 1, scope: !3640, file: !1075, line: 121, type: !673)
!3647 = !DILocalVariable(name: "line", arg: 2, scope: !3640, file: !1075, line: 121, type: !13)
!3648 = !DILocalVariable(name: "message", arg: 3, scope: !3640, file: !1075, line: 121, type: !673)
!3649 = !DILocalVariable(name: "data", arg: 4, scope: !3640, file: !1075, line: 121, type: !3643)
!3650 = !DILocalVariable(name: "length", arg: 5, scope: !3640, file: !1075, line: 121, type: !13)
!3651 = !DILocation(line: 0, scope: !3640)
!3652 = !DILocation(line: 123, column: 1, scope: !3640)
!3653 = distinct !DISubprogram(name: "hal_cache_init", scope: !141, file: !141, line: 53, type: !3654, scopeLine: 54, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !140, retainedNodes: !3657)
!3654 = !DISubroutineType(types: !3655)
!3655 = !{!3656}
!3656 = !DIDerivedType(tag: DW_TAG_typedef, name: "hal_cache_status_t", file: !144, line: 172, baseType: !143)
!3657 = !{!3658, !3660}
!3658 = !DILocalVariable(name: "region", scope: !3653, file: !141, line: 55, type: !3659)
!3659 = !DIDerivedType(tag: DW_TAG_typedef, name: "hal_cache_region_t", file: !144, line: 204, baseType: !154)
!3660 = !DILocalVariable(name: "irq_flag", scope: !3653, file: !141, line: 56, type: !92)
!3661 = !DILocation(line: 59, column: 16, scope: !3653)
!3662 = !DILocation(line: 0, scope: !3653)
!3663 = !DILocation(line: 62, column: 9, scope: !3664)
!3664 = distinct !DILexicalBlock(scope: !3653, file: !141, line: 62, column: 9)
!3665 = !{i8 0, i8 2}
!3666 = !DILocation(line: 62, column: 9, scope: !3653)
!3667 = !DILocation(line: 64, column: 9, scope: !3668)
!3668 = distinct !DILexicalBlock(scope: !3664, file: !141, line: 62, column: 39)
!3669 = !DILocation(line: 66, column: 9, scope: !3668)
!3670 = !DILocation(line: 69, column: 24, scope: !3671)
!3671 = distinct !DILexicalBlock(scope: !3664, file: !141, line: 67, column: 12)
!3672 = !DILocation(line: 72, column: 9, scope: !3671)
!3673 = !DILocation(line: 77, column: 5, scope: !3653)
!3674 = !DILocation(line: 80, column: 22, scope: !3653)
!3675 = !DILocation(line: 81, column: 28, scope: !3653)
!3676 = !DILocation(line: 84, column: 19, scope: !3653)
!3677 = !DILocation(line: 85, column: 23, scope: !3653)
!3678 = !DILocation(line: 88, column: 5, scope: !3679)
!3679 = distinct !DILexicalBlock(scope: !3653, file: !141, line: 88, column: 5)
!3680 = !DILocation(line: 90, column: 9, scope: !3681)
!3681 = distinct !DILexicalBlock(scope: !3682, file: !141, line: 88, column: 81)
!3682 = distinct !DILexicalBlock(scope: !3679, file: !141, line: 88, column: 5)
!3683 = !DILocation(line: 90, column: 38, scope: !3681)
!3684 = !DILocation(line: 91, column: 9, scope: !3681)
!3685 = !DILocation(line: 91, column: 42, scope: !3681)
!3686 = !DILocation(line: 94, column: 45, scope: !3681)
!3687 = !DILocation(line: 94, column: 47, scope: !3681)
!3688 = !DILocation(line: 95, column: 49, scope: !3681)
!3689 = !DILocation(line: 95, column: 51, scope: !3681)
!3690 = !DILocation(line: 88, column: 77, scope: !3682)
!3691 = !DILocation(line: 88, column: 46, scope: !3682)
!3692 = distinct !{!3692, !3678, !3693}
!3693 = !DILocation(line: 96, column: 5, scope: !3679)
!3694 = !DILocation(line: 99, column: 1, scope: !3653)
!3695 = distinct !DISubprogram(name: "hal_cache_invalidate_all_cache_lines", scope: !141, file: !141, line: 327, type: !3654, scopeLine: 328, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !140, retainedNodes: !3696)
!3696 = !{!3697}
!3697 = !DILocalVariable(name: "irq_flag", scope: !3695, file: !141, line: 329, type: !92)
!3698 = !DILocation(line: 332, column: 16, scope: !3695)
!3699 = !DILocation(line: 0, scope: !3695)
!3700 = !DILocation(line: 335, column: 21, scope: !3695)
!3701 = !DILocation(line: 336, column: 21, scope: !3695)
!3702 = !DILocation(line: 339, column: 21, scope: !3695)
!3703 = !DILocation(line: 340, column: 21, scope: !3695)
!3704 = !DILocation(line: 434, column: 3, scope: !3705, inlinedAt: !3707)
!3705 = distinct !DISubprogram(name: "__ISB", scope: !3706, file: !3706, line: 432, type: !75, scopeLine: 433, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !140, retainedNodes: !1341)
!3706 = !DIFile(filename: "../../../../../driver/CMSIS/Include/core_cmInstr.h", directory: "/home/mjshen/RTOSExploration/Embedded-GUI-for-MT2523/project/linkit7697_hdk/hal_examples/pwm_generate_waveform/GCC")
!3707 = distinct !DILocation(line: 343, column: 5, scope: !3695)
!3708 = !{i64 296582}
!3709 = !DILocation(line: 346, column: 5, scope: !3695)
!3710 = !DILocation(line: 348, column: 5, scope: !3695)
!3711 = distinct !DISubprogram(name: "hal_cache_deinit", scope: !141, file: !141, line: 101, type: !3654, scopeLine: 102, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !140, retainedNodes: !3712)
!3712 = !{!3713}
!3713 = !DILocalVariable(name: "region", scope: !3711, file: !141, line: 103, type: !3659)
!3714 = !DILocation(line: 107, column: 5, scope: !3711)
!3715 = !DILocation(line: 110, column: 22, scope: !3711)
!3716 = !DILocation(line: 111, column: 28, scope: !3711)
!3717 = !DILocation(line: 114, column: 19, scope: !3711)
!3718 = !DILocation(line: 115, column: 23, scope: !3711)
!3719 = !DILocation(line: 0, scope: !3711)
!3720 = !DILocation(line: 118, column: 5, scope: !3721)
!3721 = distinct !DILexicalBlock(scope: !3711, file: !141, line: 118, column: 5)
!3722 = !DILocation(line: 120, column: 9, scope: !3723)
!3723 = distinct !DILexicalBlock(scope: !3724, file: !141, line: 118, column: 81)
!3724 = distinct !DILexicalBlock(scope: !3721, file: !141, line: 118, column: 5)
!3725 = !DILocation(line: 120, column: 38, scope: !3723)
!3726 = !DILocation(line: 121, column: 9, scope: !3723)
!3727 = !DILocation(line: 121, column: 42, scope: !3723)
!3728 = !DILocation(line: 124, column: 45, scope: !3723)
!3729 = !DILocation(line: 124, column: 47, scope: !3723)
!3730 = !DILocation(line: 125, column: 49, scope: !3723)
!3731 = !DILocation(line: 125, column: 51, scope: !3723)
!3732 = !DILocation(line: 118, column: 77, scope: !3724)
!3733 = !DILocation(line: 118, column: 46, scope: !3724)
!3734 = distinct !{!3734, !3720, !3735}
!3735 = !DILocation(line: 126, column: 5, scope: !3721)
!3736 = !DILocation(line: 129, column: 20, scope: !3711)
!3737 = !DILocation(line: 131, column: 5, scope: !3711)
!3738 = distinct !DISubprogram(name: "hal_cache_enable", scope: !141, file: !141, line: 134, type: !3654, scopeLine: 135, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !140, retainedNodes: !1341)
!3739 = !DILocation(line: 137, column: 45, scope: !3740)
!3740 = distinct !DILexicalBlock(scope: !3738, file: !141, line: 137, column: 9)
!3741 = !DILocation(line: 137, column: 28, scope: !3740)
!3742 = !DILocation(line: 137, column: 9, scope: !3738)
!3743 = !DILocation(line: 142, column: 22, scope: !3738)
!3744 = !DILocation(line: 145, column: 28, scope: !3738)
!3745 = !DILocation(line: 145, column: 19, scope: !3738)
!3746 = !DILocation(line: 147, column: 5, scope: !3738)
!3747 = !DILocation(line: 0, scope: !3738)
!3748 = !DILocation(line: 148, column: 1, scope: !3738)
!3749 = distinct !DISubprogram(name: "hal_cache_disable", scope: !141, file: !141, line: 150, type: !3654, scopeLine: 151, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !140, retainedNodes: !3750)
!3750 = !{!3751}
!3751 = !DILocalVariable(name: "irq_flag", scope: !3749, file: !141, line: 152, type: !92)
!3752 = !DILocation(line: 155, column: 16, scope: !3749)
!3753 = !DILocation(line: 0, scope: !3749)
!3754 = !DILocation(line: 158, column: 16, scope: !3755)
!3755 = distinct !DILexicalBlock(scope: !3749, file: !141, line: 158, column: 9)
!3756 = !DILocation(line: 158, column: 26, scope: !3755)
!3757 = !DILocation(line: 158, column: 9, scope: !3749)
!3758 = !DILocation(line: 160, column: 9, scope: !3759)
!3759 = distinct !DILexicalBlock(scope: !3755, file: !141, line: 158, column: 49)
!3760 = !DILocation(line: 161, column: 5, scope: !3759)
!3761 = !DILocation(line: 164, column: 22, scope: !3749)
!3762 = !DILocation(line: 167, column: 28, scope: !3749)
!3763 = !DILocation(line: 167, column: 19, scope: !3749)
!3764 = !DILocation(line: 170, column: 5, scope: !3749)
!3765 = !DILocation(line: 172, column: 5, scope: !3749)
!3766 = distinct !DISubprogram(name: "hal_cache_region_enable", scope: !141, file: !141, line: 175, type: !3767, scopeLine: 176, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !140, retainedNodes: !3769)
!3767 = !DISubroutineType(types: !3768)
!3768 = !{!3656, !3659}
!3769 = !{!3770}
!3770 = !DILocalVariable(name: "region", arg: 1, scope: !3766, file: !141, line: 175, type: !3659)
!3771 = !DILocation(line: 0, scope: !3766)
!3772 = !DILocation(line: 178, column: 16, scope: !3773)
!3773 = distinct !DILexicalBlock(scope: !3766, file: !141, line: 178, column: 9)
!3774 = !DILocation(line: 178, column: 9, scope: !3766)
!3775 = !DILocation(line: 183, column: 9, scope: !3776)
!3776 = distinct !DILexicalBlock(scope: !3766, file: !141, line: 183, column: 9)
!3777 = !DILocation(line: 183, column: 38, scope: !3776)
!3778 = !DILocation(line: 183, column: 9, scope: !3766)
!3779 = !DILocation(line: 184, column: 38, scope: !3780)
!3780 = distinct !DILexicalBlock(scope: !3776, file: !141, line: 183, column: 62)
!3781 = !DILocation(line: 184, column: 32, scope: !3780)
!3782 = !DILocation(line: 190, column: 32, scope: !3766)
!3783 = !DILocation(line: 190, column: 23, scope: !3766)
!3784 = !DILocation(line: 192, column: 5, scope: !3766)
!3785 = !DILocation(line: 193, column: 1, scope: !3766)
!3786 = distinct !DISubprogram(name: "hal_cache_region_disable", scope: !141, file: !141, line: 195, type: !3767, scopeLine: 196, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !140, retainedNodes: !3787)
!3787 = !{!3788}
!3788 = !DILocalVariable(name: "region", arg: 1, scope: !3786, file: !141, line: 195, type: !3659)
!3789 = !DILocation(line: 0, scope: !3786)
!3790 = !DILocation(line: 198, column: 16, scope: !3791)
!3791 = distinct !DILexicalBlock(scope: !3786, file: !141, line: 198, column: 9)
!3792 = !DILocation(line: 198, column: 9, scope: !3786)
!3793 = !DILocation(line: 203, column: 35, scope: !3786)
!3794 = !DILocation(line: 203, column: 31, scope: !3786)
!3795 = !DILocation(line: 203, column: 28, scope: !3786)
!3796 = !DILocation(line: 206, column: 32, scope: !3786)
!3797 = !DILocation(line: 206, column: 23, scope: !3786)
!3798 = !DILocation(line: 209, column: 41, scope: !3786)
!3799 = !DILocation(line: 209, column: 43, scope: !3786)
!3800 = !DILocation(line: 210, column: 45, scope: !3786)
!3801 = !DILocation(line: 210, column: 47, scope: !3786)
!3802 = !DILocation(line: 212, column: 5, scope: !3786)
!3803 = !DILocation(line: 213, column: 1, scope: !3786)
!3804 = distinct !DISubprogram(name: "hal_cache_set_size", scope: !141, file: !141, line: 215, type: !3805, scopeLine: 216, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !140, retainedNodes: !3808)
!3805 = !DISubroutineType(types: !3806)
!3806 = !{!3656, !3807}
!3807 = !DIDerivedType(tag: DW_TAG_typedef, name: "hal_cache_size_t", file: !144, line: 182, baseType: !173)
!3808 = !{!3809}
!3809 = !DILocalVariable(name: "cache_size", arg: 1, scope: !3804, file: !141, line: 215, type: !3807)
!3810 = !DILocation(line: 0, scope: !3804)
!3811 = !DILocation(line: 218, column: 20, scope: !3812)
!3812 = distinct !DILexicalBlock(scope: !3804, file: !141, line: 218, column: 9)
!3813 = !DILocation(line: 218, column: 9, scope: !3804)
!3814 = !DILocation(line: 223, column: 22, scope: !3804)
!3815 = !DILocation(line: 224, column: 37, scope: !3804)
!3816 = !DILocation(line: 224, column: 22, scope: !3804)
!3817 = !DILocation(line: 227, column: 20, scope: !3818)
!3818 = distinct !DILexicalBlock(scope: !3804, file: !141, line: 227, column: 9)
!3819 = !DILocation(line: 227, column: 9, scope: !3804)
!3820 = !DILocation(line: 228, column: 26, scope: !3821)
!3821 = distinct !DILexicalBlock(scope: !3818, file: !141, line: 227, column: 43)
!3822 = !DILocation(line: 229, column: 5, scope: !3821)
!3823 = !DILocation(line: 232, column: 28, scope: !3804)
!3824 = !DILocation(line: 232, column: 19, scope: !3804)
!3825 = !DILocation(line: 234, column: 5, scope: !3804)
!3826 = !DILocation(line: 235, column: 1, scope: !3804)
!3827 = distinct !DISubprogram(name: "hal_cache_region_config", scope: !141, file: !141, line: 237, type: !3828, scopeLine: 238, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !140, retainedNodes: !3837)
!3828 = !DISubroutineType(types: !3829)
!3829 = !{!3656, !3659, !3830}
!3830 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3831, size: 32)
!3831 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3832)
!3832 = !DIDerivedType(tag: DW_TAG_typedef, name: "hal_cache_region_config_t", file: !144, line: 222, baseType: !3833)
!3833 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !144, line: 219, size: 64, elements: !3834)
!3834 = !{!3835, !3836}
!3835 = !DIDerivedType(tag: DW_TAG_member, name: "cache_region_address", scope: !3833, file: !144, line: 220, baseType: !92, size: 32)
!3836 = !DIDerivedType(tag: DW_TAG_member, name: "cache_region_size", scope: !3833, file: !144, line: 221, baseType: !92, size: 32, offset: 32)
!3837 = !{!3838, !3839}
!3838 = !DILocalVariable(name: "region", arg: 1, scope: !3827, file: !141, line: 237, type: !3659)
!3839 = !DILocalVariable(name: "region_config", arg: 2, scope: !3827, file: !141, line: 237, type: !3830)
!3840 = !DILocation(line: 0, scope: !3827)
!3841 = !DILocation(line: 240, column: 16, scope: !3842)
!3842 = distinct !DILexicalBlock(scope: !3827, file: !141, line: 240, column: 9)
!3843 = !DILocation(line: 240, column: 9, scope: !3827)
!3844 = !DILocation(line: 245, column: 23, scope: !3845)
!3845 = distinct !DILexicalBlock(scope: !3827, file: !141, line: 245, column: 9)
!3846 = !DILocation(line: 245, column: 9, scope: !3827)
!3847 = !DILocation(line: 250, column: 24, scope: !3848)
!3848 = distinct !DILexicalBlock(scope: !3827, file: !141, line: 250, column: 9)
!3849 = !DILocation(line: 250, column: 45, scope: !3848)
!3850 = !DILocation(line: 250, column: 9, scope: !3827)
!3851 = !DILocation(line: 251, column: 9, scope: !3852)
!3852 = distinct !DILexicalBlock(scope: !3848, file: !141, line: 250, column: 81)
!3853 = !DILocation(line: 256, column: 24, scope: !3854)
!3854 = distinct !DILexicalBlock(scope: !3827, file: !141, line: 256, column: 9)
!3855 = !DILocation(line: 256, column: 42, scope: !3854)
!3856 = !DILocation(line: 256, column: 9, scope: !3827)
!3857 = !DILocation(line: 257, column: 9, scope: !3858)
!3858 = distinct !DILexicalBlock(scope: !3854, file: !141, line: 256, column: 78)
!3859 = !DILocation(line: 262, column: 5, scope: !3827)
!3860 = !DILocation(line: 262, column: 34, scope: !3827)
!3861 = !DILocation(line: 263, column: 55, scope: !3827)
!3862 = !DILocation(line: 263, column: 93, scope: !3827)
!3863 = !DILocation(line: 263, column: 76, scope: !3827)
!3864 = !DILocation(line: 263, column: 5, scope: !3827)
!3865 = !DILocation(line: 263, column: 38, scope: !3827)
!3866 = !DILocation(line: 266, column: 34, scope: !3827)
!3867 = !DILocation(line: 269, column: 45, scope: !3827)
!3868 = !DILocation(line: 269, column: 41, scope: !3827)
!3869 = !DILocation(line: 269, column: 43, scope: !3827)
!3870 = !DILocation(line: 270, column: 49, scope: !3827)
!3871 = !DILocation(line: 270, column: 45, scope: !3827)
!3872 = !DILocation(line: 270, column: 47, scope: !3827)
!3873 = !DILocation(line: 272, column: 5, scope: !3827)
!3874 = !DILocation(line: 273, column: 1, scope: !3827)
!3875 = distinct !DISubprogram(name: "hal_cache_invalidate_one_cache_line", scope: !141, file: !141, line: 275, type: !3876, scopeLine: 276, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !140, retainedNodes: !3878)
!3876 = !DISubroutineType(types: !3877)
!3877 = !{!3656, !92}
!3878 = !{!3879, !3880}
!3879 = !DILocalVariable(name: "address", arg: 1, scope: !3875, file: !141, line: 275, type: !92)
!3880 = !DILocalVariable(name: "irq_flag", scope: !3875, file: !141, line: 277, type: !92)
!3881 = !DILocation(line: 0, scope: !3875)
!3882 = !DILocation(line: 280, column: 17, scope: !3883)
!3883 = distinct !DILexicalBlock(scope: !3875, file: !141, line: 280, column: 9)
!3884 = !DILocation(line: 280, column: 9, scope: !3875)
!3885 = !DILocation(line: 284, column: 16, scope: !3875)
!3886 = !DILocation(line: 287, column: 32, scope: !3875)
!3887 = !DILocation(line: 287, column: 21, scope: !3875)
!3888 = !DILocation(line: 288, column: 21, scope: !3875)
!3889 = !DILocation(line: 434, column: 3, scope: !3705, inlinedAt: !3890)
!3890 = distinct !DILocation(line: 291, column: 5, scope: !3875)
!3891 = !DILocation(line: 294, column: 5, scope: !3875)
!3892 = !DILocation(line: 296, column: 5, scope: !3875)
!3893 = !DILocation(line: 297, column: 1, scope: !3875)
!3894 = distinct !DISubprogram(name: "hal_cache_invalidate_multiple_cache_lines", scope: !141, file: !141, line: 299, type: !3895, scopeLine: 300, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !140, retainedNodes: !3897)
!3895 = !DISubroutineType(types: !3896)
!3896 = !{!3656, !92, !92}
!3897 = !{!3898, !3899, !3900, !3901}
!3898 = !DILocalVariable(name: "address", arg: 1, scope: !3894, file: !141, line: 299, type: !92)
!3899 = !DILocalVariable(name: "length", arg: 2, scope: !3894, file: !141, line: 299, type: !92)
!3900 = !DILocalVariable(name: "irq_flag", scope: !3894, file: !141, line: 301, type: !92)
!3901 = !DILocalVariable(name: "end_address", scope: !3894, file: !141, line: 302, type: !92)
!3902 = !DILocation(line: 0, scope: !3894)
!3903 = !DILocation(line: 302, column: 36, scope: !3894)
!3904 = !DILocation(line: 305, column: 47, scope: !3905)
!3905 = distinct !DILexicalBlock(scope: !3894, file: !141, line: 305, column: 9)
!3906 = !DILocation(line: 310, column: 16, scope: !3894)
!3907 = !DILocation(line: 313, column: 20, scope: !3894)
!3908 = !DILocation(line: 313, column: 5, scope: !3894)
!3909 = !DILocation(line: 314, column: 9, scope: !3910)
!3910 = distinct !DILexicalBlock(scope: !3894, file: !141, line: 313, column: 35)
!3911 = !DILocation(line: 315, column: 17, scope: !3910)
!3912 = distinct !{!3912, !3908, !3913}
!3913 = !DILocation(line: 316, column: 5, scope: !3894)
!3914 = !DILocation(line: 434, column: 3, scope: !3705, inlinedAt: !3915)
!3915 = distinct !DILocation(line: 319, column: 5, scope: !3894)
!3916 = !DILocation(line: 322, column: 5, scope: !3894)
!3917 = !DILocation(line: 324, column: 5, scope: !3894)
!3918 = !DILocation(line: 325, column: 1, scope: !3894)
!3919 = distinct !DISubprogram(name: "hal_cache_flush_one_cache_line", scope: !141, file: !141, line: 351, type: !3876, scopeLine: 352, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !140, retainedNodes: !3920)
!3920 = !{!3921, !3922}
!3921 = !DILocalVariable(name: "address", arg: 1, scope: !3919, file: !141, line: 351, type: !92)
!3922 = !DILocalVariable(name: "irq_flag", scope: !3919, file: !141, line: 353, type: !92)
!3923 = !DILocation(line: 0, scope: !3919)
!3924 = !DILocation(line: 356, column: 17, scope: !3925)
!3925 = distinct !DILexicalBlock(scope: !3919, file: !141, line: 356, column: 9)
!3926 = !DILocation(line: 356, column: 9, scope: !3919)
!3927 = !DILocation(line: 361, column: 16, scope: !3919)
!3928 = !DILocation(line: 364, column: 32, scope: !3919)
!3929 = !DILocation(line: 364, column: 21, scope: !3919)
!3930 = !DILocation(line: 365, column: 21, scope: !3919)
!3931 = !DILocation(line: 434, column: 3, scope: !3705, inlinedAt: !3932)
!3932 = distinct !DILocation(line: 368, column: 5, scope: !3919)
!3933 = !DILocation(line: 371, column: 5, scope: !3919)
!3934 = !DILocation(line: 373, column: 5, scope: !3919)
!3935 = !DILocation(line: 374, column: 1, scope: !3919)
!3936 = distinct !DISubprogram(name: "hal_cache_flush_multiple_cache_lines", scope: !141, file: !141, line: 376, type: !3895, scopeLine: 377, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !140, retainedNodes: !3937)
!3937 = !{!3938, !3939, !3940, !3941}
!3938 = !DILocalVariable(name: "address", arg: 1, scope: !3936, file: !141, line: 376, type: !92)
!3939 = !DILocalVariable(name: "length", arg: 2, scope: !3936, file: !141, line: 376, type: !92)
!3940 = !DILocalVariable(name: "irq_flag", scope: !3936, file: !141, line: 378, type: !92)
!3941 = !DILocalVariable(name: "end_address", scope: !3936, file: !141, line: 379, type: !92)
!3942 = !DILocation(line: 0, scope: !3936)
!3943 = !DILocation(line: 379, column: 36, scope: !3936)
!3944 = !DILocation(line: 382, column: 47, scope: !3945)
!3945 = distinct !DILexicalBlock(scope: !3936, file: !141, line: 382, column: 9)
!3946 = !DILocation(line: 387, column: 16, scope: !3936)
!3947 = !DILocation(line: 390, column: 20, scope: !3936)
!3948 = !DILocation(line: 390, column: 5, scope: !3936)
!3949 = !DILocation(line: 391, column: 9, scope: !3950)
!3950 = distinct !DILexicalBlock(scope: !3936, file: !141, line: 390, column: 35)
!3951 = !DILocation(line: 392, column: 17, scope: !3950)
!3952 = distinct !{!3952, !3948, !3953}
!3953 = !DILocation(line: 393, column: 5, scope: !3936)
!3954 = !DILocation(line: 434, column: 3, scope: !3705, inlinedAt: !3955)
!3955 = distinct !DILocation(line: 396, column: 5, scope: !3936)
!3956 = !DILocation(line: 399, column: 5, scope: !3936)
!3957 = !DILocation(line: 401, column: 5, scope: !3936)
!3958 = !DILocation(line: 402, column: 1, scope: !3936)
!3959 = distinct !DISubprogram(name: "hal_cache_flush_all_cache_lines", scope: !141, file: !141, line: 404, type: !3654, scopeLine: 405, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !140, retainedNodes: !3960)
!3960 = !{!3961}
!3961 = !DILocalVariable(name: "irq_flag", scope: !3959, file: !141, line: 406, type: !92)
!3962 = !DILocation(line: 409, column: 16, scope: !3959)
!3963 = !DILocation(line: 0, scope: !3959)
!3964 = !DILocation(line: 412, column: 21, scope: !3959)
!3965 = !DILocation(line: 413, column: 21, scope: !3959)
!3966 = !DILocation(line: 434, column: 3, scope: !3705, inlinedAt: !3967)
!3967 = distinct !DILocation(line: 416, column: 5, scope: !3959)
!3968 = !DILocation(line: 419, column: 5, scope: !3959)
!3969 = !DILocation(line: 421, column: 5, scope: !3959)
!3970 = distinct !DISubprogram(name: "hal_cache_is_cacheable", scope: !141, file: !141, line: 424, type: !3971, scopeLine: 425, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !140, retainedNodes: !3973)
!3971 = !DISubroutineType(types: !3972)
!3972 = !{!222, !92}
!3973 = !{!3974, !3975}
!3974 = !DILocalVariable(name: "address", arg: 1, scope: !3970, file: !141, line: 424, type: !92)
!3975 = !DILocalVariable(name: "region", scope: !3970, file: !141, line: 426, type: !3659)
!3976 = !DILocation(line: 0, scope: !3970)
!3977 = !DILocation(line: 429, column: 18, scope: !3978)
!3978 = distinct !DILexicalBlock(scope: !3970, file: !141, line: 429, column: 9)
!3979 = !DILocation(line: 429, column: 28, scope: !3978)
!3980 = !DILocation(line: 429, column: 9, scope: !3970)
!3981 = !DILocation(line: 435, column: 20, scope: !3982)
!3982 = distinct !DILexicalBlock(scope: !3983, file: !141, line: 435, column: 13)
!3983 = distinct !DILexicalBlock(scope: !3984, file: !141, line: 433, column: 81)
!3984 = distinct !DILexicalBlock(scope: !3985, file: !141, line: 433, column: 5)
!3985 = distinct !DILexicalBlock(scope: !3970, file: !141, line: 433, column: 5)
!3986 = !DILocation(line: 435, column: 41, scope: !3982)
!3987 = !DILocation(line: 435, column: 36, scope: !3982)
!3988 = !DILocation(line: 435, column: 13, scope: !3983)
!3989 = !DILocation(line: 436, column: 30, scope: !3990)
!3990 = distinct !DILexicalBlock(scope: !3991, file: !141, line: 436, column: 17)
!3991 = distinct !DILexicalBlock(scope: !3982, file: !141, line: 435, column: 53)
!3992 = !DILocation(line: 436, column: 59, scope: !3990)
!3993 = !DILocation(line: 436, column: 26, scope: !3990)
!3994 = !DILocation(line: 436, column: 85, scope: !3990)
!3995 = !DILocation(line: 436, column: 99, scope: !3990)
!3996 = !DILocation(line: 436, column: 97, scope: !3990)
!3997 = !DILocation(line: 436, column: 17, scope: !3991)
!3998 = !DILocation(line: 433, column: 77, scope: !3984)
!3999 = !DILocation(line: 433, column: 46, scope: !3984)
!4000 = !DILocation(line: 433, column: 5, scope: !3985)
!4001 = distinct !{!4001, !4000, !4002}
!4002 = !DILocation(line: 440, column: 5, scope: !3985)
!4003 = !DILocation(line: 442, column: 1, scope: !3970)
!4004 = distinct !DISubprogram(name: "hal_nvic_init", scope: !226, file: !226, line: 60, type: !4005, scopeLine: 61, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !225, retainedNodes: !1341)
!4005 = !DISubroutineType(types: !4006)
!4006 = !{!4007}
!4007 = !DIDerivedType(tag: DW_TAG_typedef, name: "hal_nvic_status_t", file: !229, line: 158, baseType: !228)
!4008 = !DILocation(line: 62, column: 5, scope: !4004)
!4009 = distinct !DISubprogram(name: "hal_nvic_enable_irq", scope: !226, file: !226, line: 65, type: !4010, scopeLine: 66, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !225, retainedNodes: !4012)
!4010 = !DISubroutineType(types: !4011)
!4011 = !{!4007, !237}
!4012 = !{!4013, !4014}
!4013 = !DILocalVariable(name: "irq_number", arg: 1, scope: !4009, file: !226, line: 65, type: !237)
!4014 = !DILocalVariable(name: "status", scope: !4009, file: !226, line: 67, type: !4007)
!4015 = !DILocation(line: 0, scope: !4009)
!4016 = !DILocation(line: 69, column: 40, scope: !4017)
!4017 = distinct !DILexicalBlock(scope: !4009, file: !226, line: 69, column: 9)
!4018 = !DILocation(line: 73, column: 9, scope: !4019)
!4019 = distinct !DILexicalBlock(scope: !4017, file: !226, line: 72, column: 12)
!4020 = !DILocation(line: 77, column: 5, scope: !4009)
!4021 = !DILocation(line: 78, column: 1, scope: !4009)
!4022 = distinct !DISubprogram(name: "NVIC_EnableIRQ", scope: !242, file: !242, line: 1494, type: !4023, scopeLine: 1495, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !225, retainedNodes: !4025)
!4023 = !DISubroutineType(types: !4024)
!4024 = !{null, !61}
!4025 = !{!4026}
!4026 = !DILocalVariable(name: "IRQn", arg: 1, scope: !4022, file: !242, line: 1494, type: !61)
!4027 = !DILocation(line: 0, scope: !4022)
!4028 = !DILocation(line: 1497, column: 91, scope: !4022)
!4029 = !DILocation(line: 1497, column: 61, scope: !4022)
!4030 = !DILocation(line: 1497, column: 40, scope: !4022)
!4031 = !DILocation(line: 1497, column: 3, scope: !4022)
!4032 = !DILocation(line: 1497, column: 46, scope: !4022)
!4033 = !DILocation(line: 1498, column: 1, scope: !4022)
!4034 = distinct !DISubprogram(name: "hal_nvic_disable_irq", scope: !226, file: !226, line: 80, type: !4010, scopeLine: 81, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !225, retainedNodes: !4035)
!4035 = !{!4036, !4037}
!4036 = !DILocalVariable(name: "irq_number", arg: 1, scope: !4034, file: !226, line: 80, type: !237)
!4037 = !DILocalVariable(name: "status", scope: !4034, file: !226, line: 82, type: !4007)
!4038 = !DILocation(line: 0, scope: !4034)
!4039 = !DILocation(line: 84, column: 40, scope: !4040)
!4040 = distinct !DILexicalBlock(scope: !4034, file: !226, line: 84, column: 9)
!4041 = !DILocation(line: 88, column: 9, scope: !4042)
!4042 = distinct !DILexicalBlock(scope: !4040, file: !226, line: 87, column: 12)
!4043 = !DILocation(line: 92, column: 5, scope: !4034)
!4044 = !DILocation(line: 93, column: 1, scope: !4034)
!4045 = distinct !DISubprogram(name: "NVIC_DisableIRQ", scope: !242, file: !242, line: 1507, type: !4023, scopeLine: 1508, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !225, retainedNodes: !4046)
!4046 = !{!4047}
!4047 = !DILocalVariable(name: "IRQn", arg: 1, scope: !4045, file: !242, line: 1507, type: !61)
!4048 = !DILocation(line: 0, scope: !4045)
!4049 = !DILocation(line: 1509, column: 65, scope: !4045)
!4050 = !DILocation(line: 1509, column: 44, scope: !4045)
!4051 = !DILocation(line: 1509, column: 32, scope: !4045)
!4052 = !DILocation(line: 1509, column: 3, scope: !4045)
!4053 = !DILocation(line: 1509, column: 39, scope: !4045)
!4054 = !DILocation(line: 1510, column: 1, scope: !4045)
!4055 = distinct !DISubprogram(name: "hal_nvic_get_pending_irq", scope: !226, file: !226, line: 95, type: !4056, scopeLine: 96, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !225, retainedNodes: !4058)
!4056 = !DISubroutineType(types: !4057)
!4057 = !{!92, !237}
!4058 = !{!4059, !4060}
!4059 = !DILocalVariable(name: "irq_number", arg: 1, scope: !4055, file: !226, line: 95, type: !237)
!4060 = !DILocalVariable(name: "ret", scope: !4055, file: !226, line: 97, type: !92)
!4061 = !DILocation(line: 0, scope: !4055)
!4062 = !DILocation(line: 99, column: 40, scope: !4063)
!4063 = distinct !DILexicalBlock(scope: !4055, file: !226, line: 99, column: 9)
!4064 = !DILocation(line: 102, column: 15, scope: !4065)
!4065 = distinct !DILexicalBlock(scope: !4063, file: !226, line: 101, column: 12)
!4066 = !DILocation(line: 105, column: 5, scope: !4055)
!4067 = !DILocation(line: 106, column: 1, scope: !4055)
!4068 = distinct !DISubprogram(name: "NVIC_GetPendingIRQ", scope: !242, file: !242, line: 1523, type: !4069, scopeLine: 1524, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !225, retainedNodes: !4071)
!4069 = !DISubroutineType(types: !4070)
!4070 = !{!92, !61}
!4071 = !{!4072}
!4072 = !DILocalVariable(name: "IRQn", arg: 1, scope: !4068, file: !242, line: 1523, type: !61)
!4073 = !DILocation(line: 0, scope: !4068)
!4074 = !DILocation(line: 1525, column: 51, scope: !4068)
!4075 = !DILocation(line: 1525, column: 23, scope: !4068)
!4076 = !DILocation(line: 1525, column: 83, scope: !4068)
!4077 = !DILocation(line: 1525, column: 22, scope: !4068)
!4078 = !DILocation(line: 1525, column: 3, scope: !4068)
!4079 = distinct !DISubprogram(name: "hal_nvic_set_pending_irq", scope: !226, file: !226, line: 108, type: !4010, scopeLine: 109, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !225, retainedNodes: !4080)
!4080 = !{!4081, !4082}
!4081 = !DILocalVariable(name: "irq_number", arg: 1, scope: !4079, file: !226, line: 108, type: !237)
!4082 = !DILocalVariable(name: "status", scope: !4079, file: !226, line: 110, type: !4007)
!4083 = !DILocation(line: 0, scope: !4079)
!4084 = !DILocation(line: 112, column: 40, scope: !4085)
!4085 = distinct !DILexicalBlock(scope: !4079, file: !226, line: 112, column: 9)
!4086 = !DILocation(line: 116, column: 9, scope: !4087)
!4087 = distinct !DILexicalBlock(scope: !4085, file: !226, line: 115, column: 12)
!4088 = !DILocation(line: 120, column: 5, scope: !4079)
!4089 = !DILocation(line: 121, column: 1, scope: !4079)
!4090 = distinct !DISubprogram(name: "NVIC_SetPendingIRQ", scope: !242, file: !242, line: 1535, type: !4023, scopeLine: 1536, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !225, retainedNodes: !4091)
!4091 = !{!4092}
!4092 = !DILocalVariable(name: "IRQn", arg: 1, scope: !4090, file: !242, line: 1535, type: !61)
!4093 = !DILocation(line: 0, scope: !4090)
!4094 = !DILocation(line: 1537, column: 65, scope: !4090)
!4095 = !DILocation(line: 1537, column: 44, scope: !4090)
!4096 = !DILocation(line: 1537, column: 32, scope: !4090)
!4097 = !DILocation(line: 1537, column: 3, scope: !4090)
!4098 = !DILocation(line: 1537, column: 39, scope: !4090)
!4099 = !DILocation(line: 1538, column: 1, scope: !4090)
!4100 = distinct !DISubprogram(name: "hal_nvic_clear_pending_irq", scope: !226, file: !226, line: 123, type: !4010, scopeLine: 124, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !225, retainedNodes: !4101)
!4101 = !{!4102, !4103}
!4102 = !DILocalVariable(name: "irq_number", arg: 1, scope: !4100, file: !226, line: 123, type: !237)
!4103 = !DILocalVariable(name: "status", scope: !4100, file: !226, line: 125, type: !4007)
!4104 = !DILocation(line: 0, scope: !4100)
!4105 = !DILocation(line: 127, column: 40, scope: !4106)
!4106 = distinct !DILexicalBlock(scope: !4100, file: !226, line: 127, column: 9)
!4107 = !DILocation(line: 131, column: 9, scope: !4108)
!4108 = distinct !DILexicalBlock(scope: !4106, file: !226, line: 130, column: 12)
!4109 = !DILocation(line: 135, column: 5, scope: !4100)
!4110 = !DILocation(line: 136, column: 1, scope: !4100)
!4111 = distinct !DISubprogram(name: "NVIC_ClearPendingIRQ", scope: !242, file: !242, line: 1547, type: !4023, scopeLine: 1548, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !225, retainedNodes: !4112)
!4112 = !{!4113}
!4113 = !DILocalVariable(name: "IRQn", arg: 1, scope: !4111, file: !242, line: 1547, type: !61)
!4114 = !DILocation(line: 0, scope: !4111)
!4115 = !DILocation(line: 1549, column: 65, scope: !4111)
!4116 = !DILocation(line: 1549, column: 44, scope: !4111)
!4117 = !DILocation(line: 1549, column: 32, scope: !4111)
!4118 = !DILocation(line: 1549, column: 3, scope: !4111)
!4119 = !DILocation(line: 1549, column: 39, scope: !4111)
!4120 = !DILocation(line: 1550, column: 1, scope: !4111)
!4121 = distinct !DISubprogram(name: "hal_nvic_set_priority", scope: !226, file: !226, line: 138, type: !4122, scopeLine: 139, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !225, retainedNodes: !4124)
!4122 = !DISubroutineType(types: !4123)
!4123 = !{!4007, !237, !92}
!4124 = !{!4125, !4126, !4127}
!4125 = !DILocalVariable(name: "irq_number", arg: 1, scope: !4121, file: !226, line: 138, type: !237)
!4126 = !DILocalVariable(name: "priority", arg: 2, scope: !4121, file: !226, line: 138, type: !92)
!4127 = !DILocalVariable(name: "status", scope: !4121, file: !226, line: 140, type: !4007)
!4128 = !DILocation(line: 0, scope: !4121)
!4129 = !DILocation(line: 142, column: 40, scope: !4130)
!4130 = distinct !DILexicalBlock(scope: !4121, file: !226, line: 142, column: 9)
!4131 = !DILocation(line: 146, column: 9, scope: !4132)
!4132 = distinct !DILexicalBlock(scope: !4130, file: !226, line: 145, column: 12)
!4133 = !DILocation(line: 150, column: 5, scope: !4121)
!4134 = !DILocation(line: 151, column: 1, scope: !4121)
!4135 = distinct !DISubprogram(name: "NVIC_SetPriority", scope: !242, file: !242, line: 1577, type: !4136, scopeLine: 1578, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !225, retainedNodes: !4138)
!4136 = !DISubroutineType(types: !4137)
!4137 = !{null, !61, !92}
!4138 = !{!4139, !4140}
!4139 = !DILocalVariable(name: "IRQn", arg: 1, scope: !4135, file: !242, line: 1577, type: !61)
!4140 = !DILocalVariable(name: "priority", arg: 2, scope: !4135, file: !242, line: 1577, type: !92)
!4141 = !DILocation(line: 0, scope: !4135)
!4142 = !DILocation(line: 1582, column: 34, scope: !4143)
!4143 = distinct !DILexicalBlock(scope: !4144, file: !242, line: 1581, column: 8)
!4144 = distinct !DILexicalBlock(scope: !4135, file: !242, line: 1579, column: 6)
!4145 = !DILocation(line: 1582, column: 5, scope: !4143)
!4146 = !DILocation(line: 1582, column: 32, scope: !4143)
!4147 = !DILocation(line: 1583, column: 1, scope: !4135)
!4148 = distinct !DISubprogram(name: "hal_nvic_get_priority", scope: !226, file: !226, line: 153, type: !4056, scopeLine: 154, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !225, retainedNodes: !4149)
!4149 = !{!4150, !4151}
!4150 = !DILocalVariable(name: "irq_number", arg: 1, scope: !4148, file: !226, line: 153, type: !237)
!4151 = !DILocalVariable(name: "ret", scope: !4148, file: !226, line: 155, type: !92)
!4152 = !DILocation(line: 0, scope: !4148)
!4153 = !DILocation(line: 157, column: 40, scope: !4154)
!4154 = distinct !DILexicalBlock(scope: !4148, file: !226, line: 157, column: 9)
!4155 = !DILocation(line: 160, column: 15, scope: !4156)
!4156 = distinct !DILexicalBlock(scope: !4154, file: !226, line: 159, column: 12)
!4157 = !DILocation(line: 163, column: 5, scope: !4148)
!4158 = !DILocation(line: 164, column: 1, scope: !4148)
!4159 = distinct !DISubprogram(name: "NVIC_GetPriority", scope: !242, file: !242, line: 1597, type: !4069, scopeLine: 1598, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !225, retainedNodes: !4160)
!4160 = !{!4161}
!4161 = !DILocalVariable(name: "IRQn", arg: 1, scope: !4159, file: !242, line: 1597, type: !61)
!4162 = !DILocation(line: 0, scope: !4159)
!4163 = !DILocation(line: 1603, column: 23, scope: !4164)
!4164 = distinct !DILexicalBlock(scope: !4165, file: !242, line: 1602, column: 8)
!4165 = distinct !DILexicalBlock(scope: !4159, file: !242, line: 1600, column: 6)
!4166 = !DILocation(line: 1603, column: 60, scope: !4164)
!4167 = !DILocation(line: 1604, column: 1, scope: !4159)
!4168 = distinct !DISubprogram(name: "Flash_ReturnReady", scope: !226, file: !226, line: 173, type: !75, scopeLine: 174, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !225, retainedNodes: !1341)
!4169 = !DILocation(line: 175, column: 1, scope: !4168)
!4170 = distinct !DISubprogram(name: "isrC_main", scope: !226, file: !226, line: 178, type: !4005, scopeLine: 179, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !225, retainedNodes: !4171)
!4171 = !{!4172, !4173}
!4172 = !DILocalVariable(name: "status", scope: !4170, file: !226, line: 180, type: !4007)
!4173 = !DILocalVariable(name: "irq_number", scope: !4170, file: !226, line: 181, type: !237)
!4174 = !DILocation(line: 0, scope: !4170)
!4175 = !DILocation(line: 188, column: 34, scope: !4170)
!4176 = !DILocation(line: 189, column: 24, scope: !4177)
!4177 = distinct !DILexicalBlock(scope: !4170, file: !226, line: 189, column: 9)
!4178 = !DILocation(line: 192, column: 48, scope: !4179)
!4179 = distinct !DILexicalBlock(scope: !4177, file: !226, line: 192, column: 16)
!4180 = !DILocation(line: 192, column: 62, scope: !4179)
!4181 = !DILocation(line: 192, column: 16, scope: !4177)
!4182 = !DILocation(line: 194, column: 9, scope: !4183)
!4183 = distinct !DILexicalBlock(scope: !4179, file: !226, line: 192, column: 71)
!4184 = !DILocation(line: 195, column: 9, scope: !4183)
!4185 = !DILocation(line: 197, column: 55, scope: !4186)
!4186 = distinct !DILexicalBlock(scope: !4179, file: !226, line: 196, column: 12)
!4187 = !DILocation(line: 197, column: 41, scope: !4186)
!4188 = !DILocation(line: 197, column: 53, scope: !4186)
!4189 = !DILocation(line: 198, column: 41, scope: !4186)
!4190 = !DILocation(line: 198, column: 9, scope: !4186)
!4191 = !DILocation(line: 202, column: 5, scope: !4170)
!4192 = !DILocation(line: 203, column: 1, scope: !4170)
!4193 = distinct !DISubprogram(name: "get_current_irq", scope: !226, file: !226, line: 166, type: !2471, scopeLine: 167, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !225, retainedNodes: !4194)
!4194 = !{!4195}
!4195 = !DILocalVariable(name: "irq_num", scope: !4193, file: !226, line: 168, type: !92)
!4196 = !DILocation(line: 168, column: 31, scope: !4193)
!4197 = !DILocation(line: 168, column: 36, scope: !4193)
!4198 = !DILocation(line: 0, scope: !4193)
!4199 = !DILocation(line: 169, column: 21, scope: !4193)
!4200 = !DILocation(line: 169, column: 5, scope: !4193)
!4201 = distinct !DISubprogram(name: "get_pending_irq", scope: !226, file: !226, line: 55, type: !2471, scopeLine: 56, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !225, retainedNodes: !1341)
!4202 = !DILocation(line: 57, column: 19, scope: !4201)
!4203 = !DILocation(line: 57, column: 51, scope: !4201)
!4204 = !DILocation(line: 57, column: 5, scope: !4201)
!4205 = distinct !DISubprogram(name: "hal_nvic_register_isr_handler", scope: !226, file: !226, line: 205, type: !4206, scopeLine: 206, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !225, retainedNodes: !4209)
!4206 = !DISubroutineType(types: !4207)
!4207 = !{!4007, !237, !4208}
!4208 = !DIDerivedType(tag: DW_TAG_typedef, name: "hal_nvic_isr_t", file: !229, line: 175, baseType: !321)
!4209 = !{!4210, !4211, !4212}
!4210 = !DILocalVariable(name: "irq_number", arg: 1, scope: !4205, file: !226, line: 205, type: !237)
!4211 = !DILocalVariable(name: "callback", arg: 2, scope: !4205, file: !226, line: 205, type: !4208)
!4212 = !DILocalVariable(name: "mask", scope: !4205, file: !226, line: 207, type: !92)
!4213 = !DILocation(line: 0, scope: !4205)
!4214 = !DILocation(line: 209, column: 24, scope: !4215)
!4215 = distinct !DILexicalBlock(scope: !4205, file: !226, line: 209, column: 9)
!4216 = !DILocation(line: 213, column: 12, scope: !4205)
!4217 = !DILocation(line: 214, column: 5, scope: !4205)
!4218 = !DILocation(line: 215, column: 37, scope: !4205)
!4219 = !DILocation(line: 215, column: 51, scope: !4205)
!4220 = !DILocation(line: 216, column: 37, scope: !4205)
!4221 = !DILocation(line: 216, column: 49, scope: !4205)
!4222 = !DILocation(line: 217, column: 5, scope: !4205)
!4223 = !DILocation(line: 219, column: 5, scope: !4205)
!4224 = !DILocation(line: 220, column: 1, scope: !4205)
!4225 = distinct !DISubprogram(name: "hal_nvic_save_and_set_interrupt_mask", scope: !226, file: !226, line: 222, type: !4226, scopeLine: 223, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !225, retainedNodes: !4228)
!4226 = !DISubroutineType(types: !4227)
!4227 = !{!4007, !451}
!4228 = !{!4229}
!4229 = !DILocalVariable(name: "mask", arg: 1, scope: !4225, file: !226, line: 222, type: !451)
!4230 = !DILocation(line: 0, scope: !4225)
!4231 = !DILocation(line: 224, column: 13, scope: !4225)
!4232 = !DILocation(line: 224, column: 11, scope: !4225)
!4233 = !DILocation(line: 225, column: 5, scope: !4225)
!4234 = distinct !DISubprogram(name: "hal_nvic_restore_interrupt_mask", scope: !226, file: !226, line: 228, type: !4235, scopeLine: 229, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !225, retainedNodes: !4237)
!4235 = !DISubroutineType(types: !4236)
!4236 = !{!4007, !92}
!4237 = !{!4238}
!4238 = !DILocalVariable(name: "mask", arg: 1, scope: !4234, file: !226, line: 228, type: !92)
!4239 = !DILocation(line: 0, scope: !4234)
!4240 = !DILocation(line: 230, column: 5, scope: !4234)
!4241 = !DILocation(line: 231, column: 5, scope: !4234)
!4242 = distinct !DISubprogram(name: "hal_pinmux_set_function", scope: !1077, file: !1077, line: 50, type: !4243, scopeLine: 51, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !1076, retainedNodes: !4247)
!4243 = !DISubroutineType(types: !4244)
!4244 = !{!4245, !4246, !267}
!4245 = !DIDerivedType(tag: DW_TAG_typedef, name: "hal_pinmux_status_t", file: !1080, line: 238, baseType: !1079)
!4246 = !DIDerivedType(tag: DW_TAG_typedef, name: "hal_gpio_pin_t", file: !341, line: 281, baseType: !1086)
!4247 = !{!4248, !4249, !4250}
!4248 = !DILocalVariable(name: "gpio_pin", arg: 1, scope: !4242, file: !1077, line: 50, type: !4246)
!4249 = !DILocalVariable(name: "function_index", arg: 2, scope: !4242, file: !1077, line: 50, type: !267)
!4250 = !DILocalVariable(name: "ret_value", scope: !4242, file: !1077, line: 52, type: !238)
!4251 = !DILocation(line: 0, scope: !4242)
!4252 = !DILocation(line: 53, column: 18, scope: !4253)
!4253 = distinct !DILexicalBlock(scope: !4242, file: !1077, line: 53, column: 9)
!4254 = !DILocation(line: 53, column: 9, scope: !4242)
!4255 = !DILocation(line: 57, column: 24, scope: !4256)
!4256 = distinct !DILexicalBlock(scope: !4242, file: !1077, line: 57, column: 9)
!4257 = !DILocation(line: 57, column: 9, scope: !4242)
!4258 = !DILocation(line: 57, column: 9, scope: !4256)
!4259 = !DILocation(line: 60, column: 17, scope: !4242)
!4260 = !DILocation(line: 61, column: 12, scope: !4242)
!4261 = !DILocation(line: 61, column: 5, scope: !4242)
!4262 = !DILocation(line: 62, column: 1, scope: !4242)
!4263 = distinct !DISubprogram(name: "hal_gpio_init", scope: !1077, file: !1077, line: 64, type: !4264, scopeLine: 65, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !1076, retainedNodes: !4267)
!4264 = !DISubroutineType(types: !4265)
!4265 = !{!4266, !4246}
!4266 = !DIDerivedType(tag: DW_TAG_typedef, name: "hal_gpio_status_t", file: !1080, line: 229, baseType: !1117)
!4267 = !{!4268}
!4268 = !DILocalVariable(name: "gpio_pin", arg: 1, scope: !4263, file: !1077, line: 64, type: !4246)
!4269 = !DILocation(line: 0, scope: !4263)
!4270 = !DILocation(line: 66, column: 5, scope: !4263)
!4271 = distinct !DISubprogram(name: "hal_gpio_deinit", scope: !1077, file: !1077, line: 69, type: !4264, scopeLine: 70, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !1076, retainedNodes: !4272)
!4272 = !{!4273}
!4273 = !DILocalVariable(name: "gpio_pin", arg: 1, scope: !4271, file: !1077, line: 69, type: !4246)
!4274 = !DILocation(line: 0, scope: !4271)
!4275 = !DILocation(line: 71, column: 5, scope: !4271)
!4276 = distinct !DISubprogram(name: "hal_gpio_get_input", scope: !1077, file: !1077, line: 74, type: !4277, scopeLine: 75, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !1076, retainedNodes: !4280)
!4277 = !DISubroutineType(types: !4278)
!4278 = !{!4266, !4246, !4279}
!4279 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1144, size: 32)
!4280 = !{!4281, !4282, !4283}
!4281 = !DILocalVariable(name: "gpio_pin", arg: 1, scope: !4276, file: !1077, line: 74, type: !4246)
!4282 = !DILocalVariable(name: "gpio_data", arg: 2, scope: !4276, file: !1077, line: 74, type: !4279)
!4283 = !DILocalVariable(name: "status", scope: !4276, file: !1077, line: 76, type: !4284)
!4284 = !DIDerivedType(tag: DW_TAG_typedef, name: "gpio_status", file: !1138, line: 67, baseType: !4285)
!4285 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1138, line: 62, size: 64, elements: !4286)
!4286 = !{!4287, !4288, !4289, !4290}
!4287 = !DIDerivedType(tag: DW_TAG_member, name: "GPIO_PIN", scope: !4285, file: !1138, line: 63, baseType: !92, size: 32)
!4288 = !DIDerivedType(tag: DW_TAG_member, name: "GPIO_OUTEN", scope: !4285, file: !1138, line: 64, baseType: !267, size: 8, offset: 32)
!4289 = !DIDerivedType(tag: DW_TAG_member, name: "GPI_DIN", scope: !4285, file: !1138, line: 65, baseType: !267, size: 8, offset: 40)
!4290 = !DIDerivedType(tag: DW_TAG_member, name: "GPO_DOUT", scope: !4285, file: !1138, line: 66, baseType: !267, size: 8, offset: 48)
!4291 = !DILocation(line: 0, scope: !4276)
!4292 = !DILocation(line: 77, column: 14, scope: !4293)
!4293 = distinct !DILexicalBlock(scope: !4276, file: !1077, line: 77, column: 9)
!4294 = !DILocation(line: 77, column: 9, scope: !4276)
!4295 = !DILocation(line: 81, column: 18, scope: !4296)
!4296 = distinct !DILexicalBlock(scope: !4276, file: !1077, line: 81, column: 9)
!4297 = !DILocation(line: 81, column: 9, scope: !4276)
!4298 = !DILocation(line: 85, column: 14, scope: !4276)
!4299 = !DILocation(line: 86, column: 18, scope: !4276)
!4300 = !DILocation(line: 86, column: 16, scope: !4276)
!4301 = !DILocation(line: 87, column: 5, scope: !4276)
!4302 = !DILocation(line: 88, column: 1, scope: !4276)
!4303 = distinct !DISubprogram(name: "hal_gpio_set_output", scope: !1077, file: !1077, line: 90, type: !4304, scopeLine: 91, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !1076, retainedNodes: !4306)
!4304 = !DISubroutineType(types: !4305)
!4305 = !{!4266, !4246, !1144}
!4306 = !{!4307, !4308, !4309}
!4307 = !DILocalVariable(name: "gpio_pin", arg: 1, scope: !4303, file: !1077, line: 90, type: !4246)
!4308 = !DILocalVariable(name: "gpio_data", arg: 2, scope: !4303, file: !1077, line: 90, type: !1144)
!4309 = !DILocalVariable(name: "ret_value", scope: !4303, file: !1077, line: 92, type: !238)
!4310 = !DILocation(line: 0, scope: !4303)
!4311 = !DILocation(line: 93, column: 18, scope: !4312)
!4312 = distinct !DILexicalBlock(scope: !4303, file: !1077, line: 93, column: 9)
!4313 = !DILocation(line: 93, column: 9, scope: !4303)
!4314 = !DILocation(line: 97, column: 60, scope: !4303)
!4315 = !DILocation(line: 97, column: 17, scope: !4303)
!4316 = !DILocation(line: 98, column: 12, scope: !4303)
!4317 = !DILocation(line: 98, column: 5, scope: !4303)
!4318 = !DILocation(line: 99, column: 1, scope: !4303)
!4319 = distinct !DISubprogram(name: "hal_gpio_get_output", scope: !1077, file: !1077, line: 101, type: !4277, scopeLine: 102, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !1076, retainedNodes: !4320)
!4320 = !{!4321, !4322, !4323}
!4321 = !DILocalVariable(name: "gpio_pin", arg: 1, scope: !4319, file: !1077, line: 101, type: !4246)
!4322 = !DILocalVariable(name: "gpio_data", arg: 2, scope: !4319, file: !1077, line: 101, type: !4279)
!4323 = !DILocalVariable(name: "status", scope: !4319, file: !1077, line: 103, type: !4284)
!4324 = !DILocation(line: 0, scope: !4319)
!4325 = !DILocation(line: 104, column: 18, scope: !4326)
!4326 = distinct !DILexicalBlock(scope: !4319, file: !1077, line: 104, column: 9)
!4327 = !DILocation(line: 104, column: 9, scope: !4319)
!4328 = !DILocation(line: 108, column: 14, scope: !4329)
!4329 = distinct !DILexicalBlock(scope: !4319, file: !1077, line: 108, column: 9)
!4330 = !DILocation(line: 108, column: 9, scope: !4319)
!4331 = !DILocation(line: 112, column: 14, scope: !4319)
!4332 = !DILocation(line: 113, column: 18, scope: !4319)
!4333 = !DILocation(line: 113, column: 16, scope: !4319)
!4334 = !DILocation(line: 114, column: 5, scope: !4319)
!4335 = !DILocation(line: 115, column: 1, scope: !4319)
!4336 = distinct !DISubprogram(name: "hal_gpio_set_direction", scope: !1077, file: !1077, line: 117, type: !4337, scopeLine: 118, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !1076, retainedNodes: !4340)
!4337 = !DISubroutineType(types: !4338)
!4338 = !{!4266, !4246, !4339}
!4339 = !DIDerivedType(tag: DW_TAG_typedef, name: "hal_gpio_direction_t", file: !1080, line: 213, baseType: !1127)
!4340 = !{!4341, !4342, !4343}
!4341 = !DILocalVariable(name: "gpio_pin", arg: 1, scope: !4336, file: !1077, line: 117, type: !4246)
!4342 = !DILocalVariable(name: "direction", arg: 2, scope: !4336, file: !1077, line: 117, type: !4339)
!4343 = !DILocalVariable(name: "ret_value", scope: !4336, file: !1077, line: 119, type: !238)
!4344 = !DILocation(line: 0, scope: !4336)
!4345 = !DILocation(line: 120, column: 18, scope: !4346)
!4346 = distinct !DILexicalBlock(scope: !4336, file: !1077, line: 120, column: 9)
!4347 = !DILocation(line: 120, column: 9, scope: !4336)
!4348 = !DILocation(line: 123, column: 17, scope: !4336)
!4349 = !DILocation(line: 125, column: 12, scope: !4336)
!4350 = !DILocation(line: 125, column: 5, scope: !4336)
!4351 = !DILocation(line: 126, column: 1, scope: !4336)
!4352 = distinct !DISubprogram(name: "hal_gpio_get_direction", scope: !1077, file: !1077, line: 128, type: !4353, scopeLine: 129, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !1076, retainedNodes: !4356)
!4353 = !DISubroutineType(types: !4354)
!4354 = !{!4266, !4246, !4355}
!4355 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4339, size: 32)
!4356 = !{!4357, !4358, !4359}
!4357 = !DILocalVariable(name: "gpio_pin", arg: 1, scope: !4352, file: !1077, line: 128, type: !4246)
!4358 = !DILocalVariable(name: "direction", arg: 2, scope: !4352, file: !1077, line: 128, type: !4355)
!4359 = !DILocalVariable(name: "status", scope: !4352, file: !1077, line: 131, type: !4284)
!4360 = !DILocation(line: 0, scope: !4352)
!4361 = !DILocation(line: 132, column: 18, scope: !4362)
!4362 = distinct !DILexicalBlock(scope: !4352, file: !1077, line: 132, column: 9)
!4363 = !DILocation(line: 132, column: 9, scope: !4352)
!4364 = !DILocation(line: 136, column: 14, scope: !4365)
!4365 = distinct !DILexicalBlock(scope: !4352, file: !1077, line: 136, column: 9)
!4366 = !DILocation(line: 136, column: 9, scope: !4352)
!4367 = !DILocation(line: 140, column: 14, scope: !4352)
!4368 = !DILocation(line: 141, column: 18, scope: !4352)
!4369 = !DILocation(line: 141, column: 16, scope: !4352)
!4370 = !DILocation(line: 142, column: 5, scope: !4352)
!4371 = !DILocation(line: 143, column: 1, scope: !4352)
!4372 = distinct !DISubprogram(name: "hal_gpio_toggle_pin", scope: !1077, file: !1077, line: 146, type: !4264, scopeLine: 147, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !1076, retainedNodes: !4373)
!4373 = !{!4374, !4375}
!4374 = !DILocalVariable(name: "gpio_pin", arg: 1, scope: !4372, file: !1077, line: 146, type: !4246)
!4375 = !DILocalVariable(name: "status", scope: !4372, file: !1077, line: 148, type: !4284)
!4376 = !DILocation(line: 0, scope: !4372)
!4377 = !DILocation(line: 149, column: 18, scope: !4378)
!4378 = distinct !DILexicalBlock(scope: !4372, file: !1077, line: 149, column: 9)
!4379 = !DILocation(line: 149, column: 9, scope: !4372)
!4380 = !DILocation(line: 153, column: 14, scope: !4372)
!4381 = !DILocation(line: 154, column: 76, scope: !4372)
!4382 = !DILocation(line: 154, column: 12, scope: !4372)
!4383 = !DILocation(line: 154, column: 5, scope: !4372)
!4384 = !DILocation(line: 155, column: 1, scope: !4372)
!4385 = distinct !DISubprogram(name: "hal_gpio_pull_up", scope: !1077, file: !1077, line: 157, type: !4264, scopeLine: 158, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !1076, retainedNodes: !4386)
!4386 = !{!4387, !4388}
!4387 = !DILocalVariable(name: "gpio_pin", arg: 1, scope: !4385, file: !1077, line: 157, type: !4246)
!4388 = !DILocalVariable(name: "ret_value", scope: !4385, file: !1077, line: 159, type: !238)
!4389 = !DILocation(line: 0, scope: !4385)
!4390 = !DILocation(line: 160, column: 18, scope: !4391)
!4391 = distinct !DILexicalBlock(scope: !4385, file: !1077, line: 160, column: 9)
!4392 = !DILocation(line: 160, column: 9, scope: !4385)
!4393 = !DILocation(line: 164, column: 17, scope: !4385)
!4394 = !DILocation(line: 165, column: 19, scope: !4395)
!4395 = distinct !DILexicalBlock(scope: !4385, file: !1077, line: 165, column: 9)
!4396 = !DILocation(line: 165, column: 9, scope: !4385)
!4397 = !DILocation(line: 168, column: 17, scope: !4385)
!4398 = !DILocation(line: 169, column: 12, scope: !4385)
!4399 = !DILocation(line: 169, column: 5, scope: !4385)
!4400 = !DILocation(line: 170, column: 1, scope: !4385)
!4401 = distinct !DISubprogram(name: "hal_gpio_pull_down", scope: !1077, file: !1077, line: 172, type: !4264, scopeLine: 173, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !1076, retainedNodes: !4402)
!4402 = !{!4403, !4404}
!4403 = !DILocalVariable(name: "gpio_pin", arg: 1, scope: !4401, file: !1077, line: 172, type: !4246)
!4404 = !DILocalVariable(name: "ret_value", scope: !4401, file: !1077, line: 174, type: !238)
!4405 = !DILocation(line: 0, scope: !4401)
!4406 = !DILocation(line: 175, column: 18, scope: !4407)
!4407 = distinct !DILexicalBlock(scope: !4401, file: !1077, line: 175, column: 9)
!4408 = !DILocation(line: 175, column: 9, scope: !4401)
!4409 = !DILocation(line: 179, column: 17, scope: !4401)
!4410 = !DILocation(line: 180, column: 19, scope: !4411)
!4411 = distinct !DILexicalBlock(scope: !4401, file: !1077, line: 180, column: 9)
!4412 = !DILocation(line: 180, column: 9, scope: !4401)
!4413 = !DILocation(line: 183, column: 17, scope: !4401)
!4414 = !DILocation(line: 184, column: 12, scope: !4401)
!4415 = !DILocation(line: 184, column: 5, scope: !4401)
!4416 = !DILocation(line: 185, column: 1, scope: !4401)
!4417 = distinct !DISubprogram(name: "hal_gpio_disable_pull", scope: !1077, file: !1077, line: 187, type: !4264, scopeLine: 188, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !1076, retainedNodes: !4418)
!4418 = !{!4419, !4420}
!4419 = !DILocalVariable(name: "gpio_pin", arg: 1, scope: !4417, file: !1077, line: 187, type: !4246)
!4420 = !DILocalVariable(name: "ret_value", scope: !4417, file: !1077, line: 189, type: !238)
!4421 = !DILocation(line: 0, scope: !4417)
!4422 = !DILocation(line: 191, column: 18, scope: !4423)
!4423 = distinct !DILexicalBlock(scope: !4417, file: !1077, line: 191, column: 9)
!4424 = !DILocation(line: 191, column: 9, scope: !4417)
!4425 = !DILocation(line: 195, column: 17, scope: !4417)
!4426 = !DILocation(line: 196, column: 12, scope: !4417)
!4427 = !DILocation(line: 196, column: 5, scope: !4417)
!4428 = !DILocation(line: 197, column: 1, scope: !4417)
!4429 = distinct !DISubprogram(name: "hal_gpio_set_driving_current", scope: !1077, file: !1077, line: 200, type: !4430, scopeLine: 201, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !1076, retainedNodes: !4432)
!4430 = !DISubroutineType(types: !4431)
!4431 = !{!4266, !4246, !1145}
!4432 = !{!4433, !4434, !4435}
!4433 = !DILocalVariable(name: "gpio_pin", arg: 1, scope: !4429, file: !1077, line: 200, type: !4246)
!4434 = !DILocalVariable(name: "driving", arg: 2, scope: !4429, file: !1077, line: 200, type: !1145)
!4435 = !DILocalVariable(name: "ret_value", scope: !4429, file: !1077, line: 202, type: !238)
!4436 = !DILocation(line: 0, scope: !4429)
!4437 = !DILocation(line: 204, column: 18, scope: !4438)
!4438 = distinct !DILexicalBlock(scope: !4429, file: !1077, line: 204, column: 9)
!4439 = !DILocation(line: 204, column: 9, scope: !4429)
!4440 = !DILocation(line: 208, column: 64, scope: !4429)
!4441 = !DILocation(line: 208, column: 17, scope: !4429)
!4442 = !DILocation(line: 210, column: 12, scope: !4429)
!4443 = !DILocation(line: 210, column: 5, scope: !4429)
!4444 = !DILocation(line: 211, column: 1, scope: !4429)
!4445 = distinct !DISubprogram(name: "hal_gpio_get_driving_current", scope: !1077, file: !1077, line: 214, type: !4446, scopeLine: 215, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !1076, retainedNodes: !4449)
!4446 = !DISubroutineType(types: !4447)
!4447 = !{!4266, !4246, !4448}
!4448 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1145, size: 32)
!4449 = !{!4450, !4451, !4452, !4453}
!4450 = !DILocalVariable(name: "gpio_pin", arg: 1, scope: !4445, file: !1077, line: 214, type: !4246)
!4451 = !DILocalVariable(name: "driving", arg: 2, scope: !4445, file: !1077, line: 214, type: !4448)
!4452 = !DILocalVariable(name: "ret_value", scope: !4445, file: !1077, line: 216, type: !238)
!4453 = !DILocalVariable(name: "value", scope: !4445, file: !1077, line: 217, type: !267)
!4454 = !DILocation(line: 0, scope: !4445)
!4455 = !DILocation(line: 217, column: 5, scope: !4445)
!4456 = !DILocation(line: 219, column: 18, scope: !4457)
!4457 = distinct !DILexicalBlock(scope: !4445, file: !1077, line: 219, column: 9)
!4458 = !DILocation(line: 219, column: 9, scope: !4445)
!4459 = !DILocation(line: 223, column: 17, scope: !4445)
!4460 = !DILocation(line: 225, column: 44, scope: !4445)
!4461 = !DILocation(line: 225, column: 16, scope: !4445)
!4462 = !DILocation(line: 225, column: 14, scope: !4445)
!4463 = !DILocation(line: 227, column: 12, scope: !4445)
!4464 = !DILocation(line: 227, column: 5, scope: !4445)
!4465 = !DILocation(line: 228, column: 1, scope: !4445)
!4466 = distinct !DISubprogram(name: "hal_gpt_init", scope: !330, file: !330, line: 82, type: !4467, scopeLine: 83, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !329, retainedNodes: !4471)
!4467 = !DISubroutineType(types: !4468)
!4468 = !{!4469, !4470}
!4469 = !DIDerivedType(tag: DW_TAG_typedef, name: "hal_gpt_status_t", file: !333, line: 393, baseType: !332)
!4470 = !DIDerivedType(tag: DW_TAG_typedef, name: "hal_gpt_port_t", file: !341, line: 663, baseType: !340)
!4471 = !{!4472}
!4472 = !DILocalVariable(name: "gpt_port", arg: 1, scope: !4466, file: !330, line: 82, type: !4470)
!4473 = !DILocation(line: 0, scope: !4466)
!4474 = !DILocation(line: 84, column: 9, scope: !4475)
!4475 = distinct !DILexicalBlock(scope: !4466, file: !330, line: 84, column: 9)
!4476 = !DILocation(line: 84, column: 33, scope: !4475)
!4477 = !DILocation(line: 84, column: 9, scope: !4466)
!4478 = !DILocation(line: 88, column: 9, scope: !4479)
!4479 = distinct !DILexicalBlock(scope: !4466, file: !330, line: 88, column: 9)
!4480 = !DILocation(line: 88, column: 9, scope: !4466)
!4481 = !DILocation(line: 89, column: 9, scope: !4482)
!4482 = distinct !DILexicalBlock(scope: !4479, file: !330, line: 88, column: 50)
!4483 = !DILocation(line: 90, column: 9, scope: !4482)
!4484 = !DILocation(line: 92, column: 12, scope: !4466)
!4485 = !DILocation(line: 92, column: 5, scope: !4466)
!4486 = !DILocation(line: 96, column: 43, scope: !4466)
!4487 = !DILocation(line: 98, column: 5, scope: !4466)
!4488 = !DILocation(line: 99, column: 1, scope: !4466)
!4489 = distinct !DISubprogram(name: "hal_gpt_is_port_valid", scope: !330, file: !330, line: 63, type: !4490, scopeLine: 64, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !329, retainedNodes: !4492)
!4490 = !DISubroutineType(types: !4491)
!4491 = !{!222, !4470}
!4492 = !{!4493}
!4493 = !DILocalVariable(name: "gpt_port", arg: 1, scope: !4489, file: !330, line: 63, type: !4470)
!4494 = !DILocation(line: 0, scope: !4489)
!4495 = !DILocation(line: 65, column: 19, scope: !4496)
!4496 = distinct !DILexicalBlock(scope: !4489, file: !330, line: 65, column: 9)
!4497 = !DILocation(line: 65, column: 34, scope: !4496)
!4498 = !DILocation(line: 70, column: 1, scope: !4489)
!4499 = distinct !DISubprogram(name: "hal_gpt_deinit", scope: !330, file: !330, line: 101, type: !4467, scopeLine: 102, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !329, retainedNodes: !4500)
!4500 = !{!4501}
!4501 = !DILocalVariable(name: "gpt_port", arg: 1, scope: !4499, file: !330, line: 101, type: !4470)
!4502 = !DILocation(line: 0, scope: !4499)
!4503 = !DILocation(line: 103, column: 9, scope: !4504)
!4504 = distinct !DILexicalBlock(scope: !4499, file: !330, line: 103, column: 9)
!4505 = !DILocation(line: 103, column: 9, scope: !4499)
!4506 = !DILocation(line: 104, column: 9, scope: !4507)
!4507 = distinct !DILexicalBlock(scope: !4504, file: !330, line: 103, column: 50)
!4508 = !DILocation(line: 105, column: 9, scope: !4507)
!4509 = !DILocation(line: 108, column: 9, scope: !4510)
!4510 = distinct !DILexicalBlock(scope: !4499, file: !330, line: 108, column: 9)
!4511 = !DILocation(line: 108, column: 33, scope: !4510)
!4512 = !DILocation(line: 108, column: 48, scope: !4510)
!4513 = !DILocation(line: 108, column: 9, scope: !4499)
!4514 = !DILocation(line: 109, column: 9, scope: !4515)
!4515 = distinct !DILexicalBlock(scope: !4510, file: !330, line: 108, column: 68)
!4516 = !DILocation(line: 110, column: 9, scope: !4515)
!4517 = !DILocation(line: 113, column: 12, scope: !4499)
!4518 = !DILocation(line: 113, column: 5, scope: !4499)
!4519 = !DILocation(line: 116, column: 29, scope: !4499)
!4520 = !DILocation(line: 116, column: 43, scope: !4499)
!4521 = !DILocation(line: 117, column: 5, scope: !4499)
!4522 = !DILocation(line: 118, column: 1, scope: !4499)
!4523 = distinct !DISubprogram(name: "hal_gpt_get_free_run_count", scope: !330, file: !330, line: 120, type: !4524, scopeLine: 121, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !329, retainedNodes: !4527)
!4524 = !DISubroutineType(types: !4525)
!4525 = !{!4469, !4526, !451}
!4526 = !DIDerivedType(tag: DW_TAG_typedef, name: "hal_gpt_clock_source_t", file: !341, line: 674, baseType: !352)
!4527 = !{!4528, !4529}
!4528 = !DILocalVariable(name: "clock_source", arg: 1, scope: !4523, file: !330, line: 120, type: !4526)
!4529 = !DILocalVariable(name: "count", arg: 2, scope: !4523, file: !330, line: 120, type: !451)
!4530 = !DILocation(line: 0, scope: !4523)
!4531 = !DILocation(line: 122, column: 9, scope: !4523)
!4532 = !DILocation(line: 123, column: 50, scope: !4533)
!4533 = distinct !DILexicalBlock(scope: !4534, file: !330, line: 123, column: 13)
!4534 = distinct !DILexicalBlock(scope: !4535, file: !330, line: 122, column: 51)
!4535 = distinct !DILexicalBlock(scope: !4523, file: !330, line: 122, column: 9)
!4536 = !DILocation(line: 123, column: 65, scope: !4533)
!4537 = !DILocation(line: 123, column: 13, scope: !4534)
!4538 = !DILocation(line: 124, column: 13, scope: !4539)
!4539 = distinct !DILexicalBlock(scope: !4533, file: !330, line: 123, column: 86)
!4540 = !DILocation(line: 125, column: 9, scope: !4539)
!4541 = !DILocation(line: 126, column: 18, scope: !4534)
!4542 = !DILocation(line: 126, column: 16, scope: !4534)
!4543 = !DILocation(line: 127, column: 49, scope: !4534)
!4544 = !DILocation(line: 128, column: 5, scope: !4534)
!4545 = !DILocation(line: 129, column: 50, scope: !4546)
!4546 = distinct !DILexicalBlock(scope: !4547, file: !330, line: 129, column: 13)
!4547 = distinct !DILexicalBlock(scope: !4548, file: !330, line: 128, column: 57)
!4548 = distinct !DILexicalBlock(scope: !4535, file: !330, line: 128, column: 16)
!4549 = !DILocation(line: 129, column: 65, scope: !4546)
!4550 = !DILocation(line: 129, column: 13, scope: !4547)
!4551 = !DILocation(line: 130, column: 13, scope: !4552)
!4552 = distinct !DILexicalBlock(scope: !4546, file: !330, line: 129, column: 86)
!4553 = !DILocation(line: 131, column: 9, scope: !4552)
!4554 = !DILocation(line: 132, column: 18, scope: !4547)
!4555 = !DILocation(line: 132, column: 46, scope: !4547)
!4556 = !DILocation(line: 132, column: 65, scope: !4547)
!4557 = !DILocation(line: 132, column: 43, scope: !4547)
!4558 = !DILocation(line: 132, column: 16, scope: !4547)
!4559 = !DILocation(line: 133, column: 49, scope: !4547)
!4560 = !DILocation(line: 134, column: 5, scope: !4547)
!4561 = !DILocation(line: 135, column: 50, scope: !4562)
!4562 = distinct !DILexicalBlock(scope: !4563, file: !330, line: 135, column: 13)
!4563 = distinct !DILexicalBlock(scope: !4564, file: !330, line: 134, column: 58)
!4564 = distinct !DILexicalBlock(scope: !4548, file: !330, line: 134, column: 16)
!4565 = !DILocation(line: 135, column: 65, scope: !4562)
!4566 = !DILocation(line: 135, column: 13, scope: !4563)
!4567 = !DILocation(line: 136, column: 13, scope: !4568)
!4568 = distinct !DILexicalBlock(scope: !4562, file: !330, line: 135, column: 86)
!4569 = !DILocation(line: 137, column: 9, scope: !4568)
!4570 = !DILocation(line: 138, column: 18, scope: !4563)
!4571 = !DILocation(line: 138, column: 16, scope: !4563)
!4572 = !DILocation(line: 139, column: 49, scope: !4563)
!4573 = !DILocation(line: 141, column: 9, scope: !4574)
!4574 = distinct !DILexicalBlock(scope: !4564, file: !330, line: 140, column: 11)
!4575 = !DILocation(line: 142, column: 9, scope: !4574)
!4576 = !DILocation(line: 146, column: 1, scope: !4523)
!4577 = distinct !DISubprogram(name: "hal_gpt_get_duration_count", scope: !330, file: !330, line: 148, type: !4578, scopeLine: 149, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !329, retainedNodes: !4580)
!4578 = !DISubroutineType(types: !4579)
!4579 = !{!4469, !92, !92, !451}
!4580 = !{!4581, !4582, !4583}
!4581 = !DILocalVariable(name: "start_count", arg: 1, scope: !4577, file: !330, line: 148, type: !92)
!4582 = !DILocalVariable(name: "end_count", arg: 2, scope: !4577, file: !330, line: 148, type: !92)
!4583 = !DILocalVariable(name: "duration_count", arg: 3, scope: !4577, file: !330, line: 148, type: !451)
!4584 = !DILocation(line: 0, scope: !4577)
!4585 = !DILocation(line: 150, column: 24, scope: !4586)
!4586 = distinct !DILexicalBlock(scope: !4577, file: !330, line: 150, column: 9)
!4587 = !DILocation(line: 150, column: 9, scope: !4577)
!4588 = !DILocation(line: 0, scope: !4589)
!4589 = distinct !DILexicalBlock(scope: !4577, file: !330, line: 154, column: 9)
!4590 = !DILocation(line: 160, column: 5, scope: !4577)
!4591 = !DILocation(line: 161, column: 1, scope: !4577)
!4592 = distinct !DISubprogram(name: "hal_gpt_get_running_status", scope: !330, file: !330, line: 163, type: !4593, scopeLine: 165, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !329, retainedNodes: !4596)
!4593 = !DISubroutineType(types: !4594)
!4594 = !{!4469, !4470, !4595}
!4595 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !368, size: 32)
!4596 = !{!4597, !4598}
!4597 = !DILocalVariable(name: "gpt_port", arg: 1, scope: !4592, file: !330, line: 163, type: !4470)
!4598 = !DILocalVariable(name: "running_status", arg: 2, scope: !4592, file: !330, line: 164, type: !4595)
!4599 = !DILocation(line: 0, scope: !4592)
!4600 = !DILocation(line: 166, column: 18, scope: !4601)
!4601 = distinct !DILexicalBlock(scope: !4592, file: !330, line: 166, column: 9)
!4602 = !DILocation(line: 166, column: 9, scope: !4592)
!4603 = !DILocation(line: 167, column: 9, scope: !4604)
!4604 = distinct !DILexicalBlock(scope: !4601, file: !330, line: 166, column: 34)
!4605 = !DILocation(line: 168, column: 9, scope: !4604)
!4606 = !DILocation(line: 170, column: 47, scope: !4592)
!4607 = !DILocation(line: 170, column: 21, scope: !4592)
!4608 = !DILocation(line: 171, column: 5, scope: !4592)
!4609 = !DILocation(line: 172, column: 1, scope: !4592)
!4610 = distinct !DISubprogram(name: "hal_gpt_register_callback", scope: !330, file: !330, line: 174, type: !4611, scopeLine: 177, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !329, retainedNodes: !4613)
!4611 = !DISubroutineType(types: !4612)
!4612 = !{!4469, !4470, !374, !219}
!4613 = !{!4614, !4615, !4616}
!4614 = !DILocalVariable(name: "gpt_port", arg: 1, scope: !4610, file: !330, line: 174, type: !4470)
!4615 = !DILocalVariable(name: "callback", arg: 2, scope: !4610, file: !330, line: 175, type: !374)
!4616 = !DILocalVariable(name: "user_data", arg: 3, scope: !4610, file: !330, line: 176, type: !219)
!4617 = !DILocation(line: 0, scope: !4610)
!4618 = !DILocation(line: 178, column: 9, scope: !4619)
!4619 = distinct !DILexicalBlock(scope: !4610, file: !330, line: 178, column: 9)
!4620 = !DILocation(line: 178, column: 9, scope: !4610)
!4621 = !DILocation(line: 179, column: 9, scope: !4622)
!4622 = distinct !DILexicalBlock(scope: !4619, file: !330, line: 178, column: 50)
!4623 = !DILocation(line: 180, column: 9, scope: !4622)
!4624 = !DILocation(line: 182, column: 33, scope: !4625)
!4625 = distinct !DILexicalBlock(scope: !4610, file: !330, line: 182, column: 9)
!4626 = !DILocation(line: 182, column: 47, scope: !4625)
!4627 = !DILocation(line: 182, column: 9, scope: !4610)
!4628 = !DILocation(line: 185, column: 18, scope: !4629)
!4629 = distinct !DILexicalBlock(scope: !4610, file: !330, line: 185, column: 9)
!4630 = !DILocation(line: 185, column: 9, scope: !4610)
!4631 = !DILocation(line: 188, column: 46, scope: !4610)
!4632 = !DILocation(line: 188, column: 56, scope: !4610)
!4633 = !DILocation(line: 189, column: 46, scope: !4610)
!4634 = !DILocation(line: 189, column: 56, scope: !4610)
!4635 = !DILocation(line: 190, column: 5, scope: !4610)
!4636 = !DILocation(line: 191, column: 1, scope: !4610)
!4637 = distinct !DISubprogram(name: "hal_gpt_start_timer_ms", scope: !330, file: !330, line: 218, type: !4638, scopeLine: 219, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !329, retainedNodes: !4641)
!4638 = !DISubroutineType(types: !4639)
!4639 = !{!4469, !4470, !92, !4640}
!4640 = !DIDerivedType(tag: DW_TAG_typedef, name: "hal_gpt_timer_type_t", file: !333, line: 383, baseType: !357)
!4641 = !{!4642, !4643, !4644}
!4642 = !DILocalVariable(name: "gpt_port", arg: 1, scope: !4637, file: !330, line: 218, type: !4470)
!4643 = !DILocalVariable(name: "timeout_time_ms", arg: 2, scope: !4637, file: !330, line: 218, type: !92)
!4644 = !DILocalVariable(name: "timer_type", arg: 3, scope: !4637, file: !330, line: 218, type: !4640)
!4645 = !DILocation(line: 0, scope: !4637)
!4646 = !DILocation(line: 220, column: 9, scope: !4647)
!4647 = distinct !DILexicalBlock(scope: !4637, file: !330, line: 220, column: 9)
!4648 = !DILocation(line: 220, column: 9, scope: !4637)
!4649 = !DILocation(line: 221, column: 9, scope: !4650)
!4650 = distinct !DILexicalBlock(scope: !4647, file: !330, line: 220, column: 50)
!4651 = !DILocation(line: 222, column: 9, scope: !4650)
!4652 = !DILocation(line: 225, column: 33, scope: !4653)
!4653 = distinct !DILexicalBlock(scope: !4637, file: !330, line: 225, column: 9)
!4654 = !DILocation(line: 225, column: 47, scope: !4653)
!4655 = !DILocation(line: 225, column: 9, scope: !4637)
!4656 = !DILocation(line: 229, column: 25, scope: !4657)
!4657 = distinct !DILexicalBlock(scope: !4637, file: !330, line: 229, column: 9)
!4658 = !DILocation(line: 229, column: 9, scope: !4637)
!4659 = !DILocation(line: 234, column: 17, scope: !4637)
!4660 = !DILocation(line: 235, column: 17, scope: !4637)
!4661 = !DILocation(line: 236, column: 17, scope: !4637)
!4662 = !DILocation(line: 233, column: 5, scope: !4637)
!4663 = !DILocation(line: 237, column: 5, scope: !4637)
!4664 = !DILocation(line: 238, column: 29, scope: !4637)
!4665 = !DILocation(line: 238, column: 44, scope: !4637)
!4666 = !DILocation(line: 239, column: 5, scope: !4637)
!4667 = !DILocation(line: 240, column: 1, scope: !4637)
!4668 = distinct !DISubprogram(name: "hal_gpt_translate_timeout_time", scope: !330, file: !330, line: 72, type: !4669, scopeLine: 73, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !329, retainedNodes: !4671)
!4669 = !DISubroutineType(types: !4670)
!4670 = !{!92, !92}
!4671 = !{!4672}
!4672 = !DILocalVariable(name: "mili_seconds", arg: 1, scope: !4668, file: !330, line: 72, type: !92)
!4673 = !DILocation(line: 0, scope: !4668)
!4674 = !DILocation(line: 74, column: 37, scope: !4668)
!4675 = !DILocation(line: 74, column: 47, scope: !4668)
!4676 = !DILocation(line: 74, column: 63, scope: !4668)
!4677 = !DILocation(line: 74, column: 42, scope: !4668)
!4678 = !DILocation(line: 74, column: 73, scope: !4668)
!4679 = !DILocation(line: 74, column: 89, scope: !4668)
!4680 = !DILocation(line: 74, column: 68, scope: !4668)
!4681 = !DILocation(line: 74, column: 100, scope: !4668)
!4682 = !DILocation(line: 74, column: 116, scope: !4668)
!4683 = !DILocation(line: 74, column: 95, scope: !4668)
!4684 = !DILocation(line: 74, column: 5, scope: !4668)
!4685 = distinct !DISubprogram(name: "hal_gpt_translate_type", scope: !330, file: !330, line: 77, type: !4686, scopeLine: 78, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !329, retainedNodes: !4688)
!4686 = !DISubroutineType(types: !4687)
!4687 = !{!222, !4640}
!4688 = !{!4689}
!4689 = !DILocalVariable(name: "type", arg: 1, scope: !4685, file: !330, line: 77, type: !4640)
!4690 = !DILocation(line: 0, scope: !4685)
!4691 = !DILocation(line: 79, column: 38, scope: !4685)
!4692 = !DILocation(line: 79, column: 5, scope: !4685)
!4693 = distinct !DISubprogram(name: "hal_gpt_map_callback", scope: !330, file: !330, line: 213, type: !4694, scopeLine: 214, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !329, retainedNodes: !4697)
!4694 = !DISubroutineType(types: !4695)
!4695 = !{!4696, !4470}
!4696 = !DIDerivedType(tag: DW_TAG_typedef, name: "hal_gpt_internal_callback_t", file: !330, line: 211, baseType: !74)
!4697 = !{!4698}
!4698 = !DILocalVariable(name: "gpt_port", arg: 1, scope: !4693, file: !330, line: 213, type: !4470)
!4699 = !DILocation(line: 0, scope: !4693)
!4700 = !DILocation(line: 215, column: 23, scope: !4693)
!4701 = !DILocation(line: 215, column: 12, scope: !4693)
!4702 = !DILocation(line: 215, column: 5, scope: !4693)
!4703 = distinct !DISubprogram(name: "hal_gpt_callback0", scope: !330, file: !330, line: 193, type: !75, scopeLine: 194, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !329, retainedNodes: !4704)
!4704 = !{!4705}
!4705 = !DILocalVariable(name: "context", scope: !4703, file: !330, line: 195, type: !4706)
!4706 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !370, size: 32)
!4707 = !DILocation(line: 196, column: 26, scope: !4708)
!4708 = distinct !DILexicalBlock(scope: !4703, file: !330, line: 196, column: 9)
!4709 = !DILocation(line: 196, column: 14, scope: !4708)
!4710 = !DILocation(line: 196, column: 9, scope: !4703)
!4711 = !DILocation(line: 197, column: 36, scope: !4712)
!4712 = distinct !DILexicalBlock(scope: !4708, file: !330, line: 196, column: 36)
!4713 = !DILocation(line: 197, column: 9, scope: !4712)
!4714 = !DILocation(line: 198, column: 5, scope: !4712)
!4715 = !DILocation(line: 199, column: 45, scope: !4703)
!4716 = !DILocation(line: 200, column: 1, scope: !4703)
!4717 = distinct !DISubprogram(name: "hal_gpt_callback1", scope: !330, file: !330, line: 202, type: !75, scopeLine: 203, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !329, retainedNodes: !4718)
!4718 = !{!4719}
!4719 = !DILocalVariable(name: "context", scope: !4717, file: !330, line: 204, type: !4706)
!4720 = !DILocation(line: 205, column: 26, scope: !4721)
!4721 = distinct !DILexicalBlock(scope: !4717, file: !330, line: 205, column: 9)
!4722 = !DILocation(line: 205, column: 14, scope: !4721)
!4723 = !DILocation(line: 205, column: 9, scope: !4717)
!4724 = !DILocation(line: 206, column: 36, scope: !4725)
!4725 = distinct !DILexicalBlock(scope: !4721, file: !330, line: 205, column: 36)
!4726 = !DILocation(line: 206, column: 9, scope: !4725)
!4727 = !DILocation(line: 207, column: 5, scope: !4725)
!4728 = !DILocation(line: 208, column: 45, scope: !4717)
!4729 = !DILocation(line: 209, column: 1, scope: !4717)
!4730 = distinct !DISubprogram(name: "hal_gpt_stop_timer", scope: !330, file: !330, line: 242, type: !4467, scopeLine: 243, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !329, retainedNodes: !4731)
!4731 = !{!4732}
!4732 = !DILocalVariable(name: "gpt_port", arg: 1, scope: !4730, file: !330, line: 242, type: !4470)
!4733 = !DILocation(line: 0, scope: !4730)
!4734 = !DILocation(line: 244, column: 9, scope: !4735)
!4735 = distinct !DILexicalBlock(scope: !4730, file: !330, line: 244, column: 9)
!4736 = !DILocation(line: 244, column: 9, scope: !4730)
!4737 = !DILocation(line: 245, column: 9, scope: !4738)
!4738 = distinct !DILexicalBlock(scope: !4735, file: !330, line: 244, column: 50)
!4739 = !DILocation(line: 246, column: 9, scope: !4738)
!4740 = !DILocation(line: 248, column: 5, scope: !4730)
!4741 = !DILocation(line: 249, column: 29, scope: !4730)
!4742 = !DILocation(line: 249, column: 44, scope: !4730)
!4743 = !DILocation(line: 250, column: 5, scope: !4730)
!4744 = !DILocation(line: 251, column: 1, scope: !4730)
!4745 = distinct !DISubprogram(name: "hal_gpt_delay_ms", scope: !330, file: !330, line: 253, type: !4746, scopeLine: 254, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !329, retainedNodes: !4748)
!4746 = !DISubroutineType(types: !4747)
!4747 = !{!4469, !92}
!4748 = !{!4749}
!4749 = !DILocalVariable(name: "ms", arg: 1, scope: !4745, file: !330, line: 253, type: !92)
!4750 = !DILocation(line: 0, scope: !4745)
!4751 = !DILocation(line: 255, column: 46, scope: !4752)
!4752 = distinct !DILexicalBlock(scope: !4745, file: !330, line: 255, column: 9)
!4753 = !DILocation(line: 255, column: 61, scope: !4752)
!4754 = !DILocation(line: 255, column: 9, scope: !4745)
!4755 = !DILocation(line: 256, column: 9, scope: !4756)
!4756 = distinct !DILexicalBlock(scope: !4752, file: !330, line: 255, column: 82)
!4757 = !DILocation(line: 257, column: 5, scope: !4756)
!4758 = !DILocation(line: 258, column: 5, scope: !4745)
!4759 = !DILocation(line: 259, column: 57, scope: !4745)
!4760 = !DILocation(line: 260, column: 5, scope: !4745)
!4761 = distinct !DISubprogram(name: "hal_gpt_delay_us", scope: !330, file: !330, line: 264, type: !4746, scopeLine: 265, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !329, retainedNodes: !4762)
!4762 = !{!4763}
!4763 = !DILocalVariable(name: "us", arg: 1, scope: !4761, file: !330, line: 264, type: !92)
!4764 = !DILocation(line: 0, scope: !4761)
!4765 = !DILocation(line: 266, column: 46, scope: !4766)
!4766 = distinct !DILexicalBlock(scope: !4761, file: !330, line: 266, column: 9)
!4767 = !DILocation(line: 266, column: 61, scope: !4766)
!4768 = !DILocation(line: 266, column: 9, scope: !4761)
!4769 = !DILocation(line: 267, column: 9, scope: !4770)
!4770 = distinct !DILexicalBlock(scope: !4766, file: !330, line: 266, column: 82)
!4771 = !DILocation(line: 268, column: 5, scope: !4770)
!4772 = !DILocation(line: 269, column: 5, scope: !4761)
!4773 = !DILocation(line: 270, column: 57, scope: !4761)
!4774 = !DILocation(line: 271, column: 5, scope: !4761)
!4775 = distinct !DISubprogram(name: "hal_pwm_init", scope: !383, file: !383, line: 82, type: !4776, scopeLine: 83, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !382, retainedNodes: !4778)
!4776 = !DISubroutineType(types: !4777)
!4777 = !{!450, !443}
!4778 = !{!4779, !4780}
!4779 = !DILocalVariable(name: "source_clock", arg: 1, scope: !4775, file: !383, line: 82, type: !443)
!4780 = !DILocalVariable(name: "ret_val", scope: !4775, file: !383, line: 85, type: !238)
!4781 = !DILocation(line: 0, scope: !4775)
!4782 = !DILocation(line: 86, column: 9, scope: !4783)
!4783 = distinct !DILexicalBlock(scope: !4775, file: !383, line: 86, column: 9)
!4784 = !DILocation(line: 86, column: 9, scope: !4775)
!4785 = !DILocation(line: 87, column: 9, scope: !4786)
!4786 = distinct !DILexicalBlock(scope: !4783, file: !383, line: 86, column: 24)
!4787 = !DILocation(line: 88, column: 9, scope: !4786)
!4788 = !DILocation(line: 91, column: 24, scope: !4775)
!4789 = !{i8 0, i8 3}
!4790 = !DILocation(line: 91, column: 15, scope: !4775)
!4791 = !DILocation(line: 92, column: 17, scope: !4792)
!4792 = distinct !DILexicalBlock(scope: !4775, file: !383, line: 92, column: 9)
!4793 = !DILocation(line: 92, column: 9, scope: !4775)
!4794 = !DILocation(line: 93, column: 9, scope: !4795)
!4795 = distinct !DILexicalBlock(scope: !4792, file: !383, line: 92, column: 22)
!4796 = !DILocation(line: 94, column: 9, scope: !4795)
!4797 = !DILocation(line: 96, column: 22, scope: !4798)
!4798 = distinct !DILexicalBlock(scope: !4775, file: !383, line: 96, column: 9)
!4799 = !DILocation(line: 96, column: 9, scope: !4775)
!4800 = !DILocation(line: 97, column: 9, scope: !4801)
!4801 = distinct !DILexicalBlock(scope: !4798, file: !383, line: 96, column: 44)
!4802 = !DILocation(line: 98, column: 9, scope: !4801)
!4803 = !DILocation(line: 100, column: 20, scope: !4775)
!4804 = !DILocation(line: 101, column: 15, scope: !4775)
!4805 = !DILocation(line: 102, column: 5, scope: !4775)
!4806 = !DILocation(line: 103, column: 1, scope: !4775)
!4807 = distinct !DISubprogram(name: "hal_pwm_translate_source_clock", scope: !383, file: !383, line: 54, type: !4808, scopeLine: 55, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !382, retainedNodes: !4810)
!4808 = !DISubroutineType(types: !4809)
!4809 = !{!267, !443}
!4810 = !{!4811}
!4811 = !DILocalVariable(name: "source_clock", arg: 1, scope: !4807, file: !383, line: 54, type: !443)
!4812 = !DILocation(line: 0, scope: !4807)
!4813 = !DILocation(line: 56, column: 9, scope: !4807)
!4814 = !DILocation(line: 63, column: 1, scope: !4807)
!4815 = distinct !DISubprogram(name: "hal_pwm_deinit", scope: !383, file: !383, line: 105, type: !4816, scopeLine: 106, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !382, retainedNodes: !1341)
!4816 = !DISubroutineType(types: !4817)
!4817 = !{!450}
!4818 = !DILocation(line: 108, column: 20, scope: !4815)
!4819 = !DILocation(line: 109, column: 15, scope: !4815)
!4820 = !DILocation(line: 110, column: 5, scope: !4815)
!4821 = distinct !DISubprogram(name: "hal_pwm_set_frequency", scope: !383, file: !383, line: 113, type: !4822, scopeLine: 116, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !382, retainedNodes: !4825)
!4822 = !DISubroutineType(types: !4823)
!4823 = !{!450, !4824, !92, !451}
!4824 = !DIDerivedType(tag: DW_TAG_typedef, name: "hal_pwm_channel_t", file: !341, line: 811, baseType: !402)
!4825 = !{!4826, !4827, !4828, !4829, !4830, !4831}
!4826 = !DILocalVariable(name: "pwm_channel", arg: 1, scope: !4821, file: !383, line: 113, type: !4824)
!4827 = !DILocalVariable(name: "frequency", arg: 2, scope: !4821, file: !383, line: 114, type: !92)
!4828 = !DILocalVariable(name: "total_count", arg: 3, scope: !4821, file: !383, line: 115, type: !451)
!4829 = !DILocalVariable(name: "smallest_frequency", scope: !4821, file: !383, line: 117, type: !92)
!4830 = !DILocalVariable(name: "calculated", scope: !4821, file: !383, line: 130, type: !92)
!4831 = !DILocalVariable(name: "ret_val", scope: !4821, file: !383, line: 139, type: !238)
!4832 = !DILocation(line: 0, scope: !4821)
!4833 = !DILocation(line: 118, column: 10, scope: !4834)
!4834 = distinct !DILexicalBlock(scope: !4821, file: !383, line: 118, column: 9)
!4835 = !DILocation(line: 118, column: 9, scope: !4821)
!4836 = !DILocation(line: 119, column: 9, scope: !4837)
!4837 = distinct !DILexicalBlock(scope: !4834, file: !383, line: 118, column: 49)
!4838 = !DILocation(line: 120, column: 9, scope: !4837)
!4839 = !DILocation(line: 122, column: 9, scope: !4840)
!4840 = distinct !DILexicalBlock(scope: !4821, file: !383, line: 122, column: 9)
!4841 = !DILocation(line: 122, column: 24, scope: !4840)
!4842 = !DILocation(line: 122, column: 9, scope: !4821)
!4843 = !DILocation(line: 123, column: 9, scope: !4844)
!4844 = distinct !DILexicalBlock(scope: !4840, file: !383, line: 122, column: 46)
!4845 = !DILocation(line: 124, column: 9, scope: !4844)
!4846 = !DILocation(line: 126, column: 11, scope: !4847)
!4847 = distinct !DILexicalBlock(scope: !4821, file: !383, line: 126, column: 9)
!4848 = !DILocation(line: 126, column: 9, scope: !4821)
!4849 = !DILocation(line: 127, column: 9, scope: !4850)
!4850 = distinct !DILexicalBlock(scope: !4847, file: !383, line: 126, column: 25)
!4851 = !DILocation(line: 128, column: 9, scope: !4850)
!4852 = !DILocation(line: 130, column: 5, scope: !4821)
!4853 = !DILocation(line: 130, column: 14, scope: !4821)
!4854 = !DILocation(line: 131, column: 30, scope: !4855)
!4855 = distinct !DILexicalBlock(scope: !4821, file: !383, line: 131, column: 9)
!4856 = !DILocation(line: 131, column: 27, scope: !4855)
!4857 = !DILocation(line: 131, column: 9, scope: !4821)
!4858 = !DILocation(line: 132, column: 9, scope: !4859)
!4859 = distinct !DILexicalBlock(scope: !4855, file: !383, line: 131, column: 96)
!4860 = !DILocation(line: 133, column: 9, scope: !4859)
!4861 = !DILocation(line: 135, column: 26, scope: !4821)
!4862 = !DILocation(line: 135, column: 37, scope: !4821)
!4863 = !DILocation(line: 135, column: 49, scope: !4821)
!4864 = !DILocation(line: 136, column: 19, scope: !4865)
!4865 = distinct !DILexicalBlock(scope: !4821, file: !383, line: 136, column: 9)
!4866 = !DILocation(line: 136, column: 9, scope: !4821)
!4867 = !DILocation(line: 139, column: 31, scope: !4821)
!4868 = !DILocation(line: 139, column: 23, scope: !4821)
!4869 = !DILocation(line: 143, column: 17, scope: !4870)
!4870 = distinct !DILexicalBlock(scope: !4821, file: !383, line: 143, column: 9)
!4871 = !DILocation(line: 143, column: 9, scope: !4821)
!4872 = !DILocation(line: 144, column: 9, scope: !4873)
!4873 = distinct !DILexicalBlock(scope: !4870, file: !383, line: 143, column: 22)
!4874 = !DILocation(line: 145, column: 9, scope: !4873)
!4875 = !DILocation(line: 147, column: 18, scope: !4821)
!4876 = !DILocation(line: 148, column: 5, scope: !4821)
!4877 = !DILocation(line: 149, column: 1, scope: !4821)
!4878 = distinct !DISubprogram(name: "hal_pwm_is_channel_valid", scope: !383, file: !383, line: 49, type: !4879, scopeLine: 50, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !382, retainedNodes: !4881)
!4879 = !DISubroutineType(types: !4880)
!4880 = !{!222, !4824}
!4881 = !{!4882}
!4882 = !DILocalVariable(name: "pwm_channel", arg: 1, scope: !4878, file: !383, line: 49, type: !4824)
!4883 = !DILocation(line: 0, scope: !4878)
!4884 = !DILocation(line: 51, column: 24, scope: !4878)
!4885 = !DILocation(line: 51, column: 5, scope: !4878)
!4886 = !DILocation(line: 0, scope: !447)
!4887 = !DILocation(line: 72, column: 34, scope: !447)
!4888 = !DILocation(line: 73, column: 19, scope: !4889)
!4889 = distinct !DILexicalBlock(scope: !447, file: !383, line: 73, column: 9)
!4890 = !DILocation(line: 73, column: 9, scope: !447)
!4891 = !DILocation(line: 74, column: 9, scope: !4892)
!4892 = distinct !DILexicalBlock(scope: !4889, file: !383, line: 73, column: 40)
!4893 = !DILocation(line: 76, column: 9, scope: !4892)
!4894 = !DILocation(line: 78, column: 38, scope: !447)
!4895 = !DILocation(line: 78, column: 18, scope: !447)
!4896 = !DILocation(line: 79, column: 5, scope: !447)
!4897 = !DILocation(line: 80, column: 1, scope: !447)
!4898 = distinct !DISubprogram(name: "hal_pwm_set_duty_cycle", scope: !383, file: !383, line: 152, type: !4899, scopeLine: 153, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !382, retainedNodes: !4901)
!4899 = !DISubroutineType(types: !4900)
!4900 = !{!450, !4824, !92}
!4901 = !{!4902, !4903, !4904, !4905, !4906, !4907, !4908}
!4902 = !DILocalVariable(name: "pwm_channel", arg: 1, scope: !4898, file: !383, line: 152, type: !4824)
!4903 = !DILocalVariable(name: "duty_cycle", arg: 2, scope: !4898, file: !383, line: 152, type: !92)
!4904 = !DILocalVariable(name: "ret_val", scope: !4898, file: !383, line: 154, type: !238)
!4905 = !DILocalVariable(name: "frequency", scope: !4898, file: !383, line: 164, type: !92)
!4906 = !DILocalVariable(name: "internal_duty", scope: !4898, file: !383, line: 165, type: !438)
!4907 = !DILocalVariable(name: "pwm_enable", scope: !4898, file: !383, line: 166, type: !267)
!4908 = !DILocalVariable(name: "total_count", scope: !4898, file: !383, line: 173, type: !92)
!4909 = !DILocation(line: 0, scope: !4898)
!4910 = !DILocation(line: 156, column: 10, scope: !4911)
!4911 = distinct !DILexicalBlock(scope: !4898, file: !383, line: 156, column: 9)
!4912 = !DILocation(line: 156, column: 9, scope: !4898)
!4913 = !DILocation(line: 157, column: 9, scope: !4914)
!4914 = distinct !DILexicalBlock(scope: !4911, file: !383, line: 156, column: 49)
!4915 = !DILocation(line: 158, column: 9, scope: !4914)
!4916 = !DILocation(line: 160, column: 9, scope: !4917)
!4917 = distinct !DILexicalBlock(scope: !4898, file: !383, line: 160, column: 9)
!4918 = !DILocation(line: 160, column: 24, scope: !4917)
!4919 = !DILocation(line: 160, column: 9, scope: !4898)
!4920 = !DILocation(line: 161, column: 9, scope: !4921)
!4921 = distinct !DILexicalBlock(scope: !4917, file: !383, line: 160, column: 46)
!4922 = !DILocation(line: 162, column: 9, scope: !4921)
!4923 = !DILocation(line: 164, column: 5, scope: !4898)
!4924 = !DILocation(line: 164, column: 14, scope: !4898)
!4925 = !DILocation(line: 165, column: 5, scope: !4898)
!4926 = !DILocation(line: 165, column: 14, scope: !4898)
!4927 = !DILocation(line: 166, column: 5, scope: !4898)
!4928 = !DILocation(line: 166, column: 13, scope: !4898)
!4929 = !DILocation(line: 167, column: 13, scope: !4898)
!4930 = !DILocation(line: 167, column: 5, scope: !4898)
!4931 = !DILocation(line: 169, column: 14, scope: !4932)
!4932 = distinct !DILexicalBlock(scope: !4898, file: !383, line: 169, column: 9)
!4933 = !DILocation(line: 169, column: 11, scope: !4932)
!4934 = !DILocation(line: 169, column: 9, scope: !4898)
!4935 = !DILocation(line: 170, column: 9, scope: !4936)
!4936 = distinct !DILexicalBlock(scope: !4932, file: !383, line: 169, column: 25)
!4937 = !DILocation(line: 171, column: 9, scope: !4936)
!4938 = !DILocation(line: 173, column: 5, scope: !4898)
!4939 = !DILocation(line: 174, column: 55, scope: !4940)
!4940 = distinct !DILexicalBlock(scope: !4898, file: !383, line: 174, column: 9)
!4941 = !DILocation(line: 174, column: 30, scope: !4940)
!4942 = !DILocation(line: 174, column: 27, scope: !4940)
!4943 = !DILocation(line: 174, column: 9, scope: !4898)
!4944 = !DILocation(line: 175, column: 9, scope: !4945)
!4945 = distinct !DILexicalBlock(scope: !4940, file: !383, line: 174, column: 97)
!4946 = !DILocation(line: 176, column: 9, scope: !4945)
!4947 = !DILocation(line: 179, column: 23, scope: !4898)
!4948 = !DILocation(line: 180, column: 23, scope: !4898)
!4949 = !DILocation(line: 181, column: 23, scope: !4898)
!4950 = !DILocation(line: 178, column: 15, scope: !4898)
!4951 = !DILocation(line: 182, column: 17, scope: !4952)
!4952 = distinct !DILexicalBlock(scope: !4898, file: !383, line: 182, column: 9)
!4953 = !DILocation(line: 182, column: 9, scope: !4898)
!4954 = !DILocation(line: 183, column: 9, scope: !4955)
!4955 = distinct !DILexicalBlock(scope: !4952, file: !383, line: 182, column: 22)
!4956 = !DILocation(line: 184, column: 9, scope: !4955)
!4957 = !DILocation(line: 187, column: 1, scope: !4898)
!4958 = distinct !DISubprogram(name: "hal_pwm_start", scope: !383, file: !383, line: 189, type: !4959, scopeLine: 190, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !382, retainedNodes: !4961)
!4959 = !DISubroutineType(types: !4960)
!4960 = !{!450, !4824}
!4961 = !{!4962, !4963, !4964, !4965, !4966}
!4962 = !DILocalVariable(name: "pwm_channel", arg: 1, scope: !4958, file: !383, line: 189, type: !4824)
!4963 = !DILocalVariable(name: "ret_val", scope: !4958, file: !383, line: 192, type: !238)
!4964 = !DILocalVariable(name: "frequency", scope: !4958, file: !383, line: 197, type: !92)
!4965 = !DILocalVariable(name: "duty_cycle", scope: !4958, file: !383, line: 198, type: !438)
!4966 = !DILocalVariable(name: "pwm_enable", scope: !4958, file: !383, line: 199, type: !267)
!4967 = !DILocation(line: 0, scope: !4958)
!4968 = !DILocation(line: 193, column: 10, scope: !4969)
!4969 = distinct !DILexicalBlock(scope: !4958, file: !383, line: 193, column: 9)
!4970 = !DILocation(line: 193, column: 9, scope: !4958)
!4971 = !DILocation(line: 194, column: 9, scope: !4972)
!4972 = distinct !DILexicalBlock(scope: !4969, file: !383, line: 193, column: 49)
!4973 = !DILocation(line: 195, column: 9, scope: !4972)
!4974 = !DILocation(line: 197, column: 5, scope: !4958)
!4975 = !DILocation(line: 197, column: 14, scope: !4958)
!4976 = !DILocation(line: 198, column: 5, scope: !4958)
!4977 = !DILocation(line: 198, column: 14, scope: !4958)
!4978 = !DILocation(line: 199, column: 5, scope: !4958)
!4979 = !DILocation(line: 199, column: 13, scope: !4958)
!4980 = !DILocation(line: 200, column: 13, scope: !4958)
!4981 = !DILocation(line: 200, column: 5, scope: !4958)
!4982 = !DILocation(line: 202, column: 14, scope: !4983)
!4983 = distinct !DILexicalBlock(scope: !4958, file: !383, line: 202, column: 9)
!4984 = !DILocation(line: 202, column: 11, scope: !4983)
!4985 = !DILocation(line: 202, column: 9, scope: !4958)
!4986 = !DILocation(line: 203, column: 9, scope: !4987)
!4987 = distinct !DILexicalBlock(scope: !4983, file: !383, line: 202, column: 25)
!4988 = !DILocation(line: 204, column: 9, scope: !4987)
!4989 = !DILocation(line: 208, column: 23, scope: !4958)
!4990 = !DILocation(line: 206, column: 15, scope: !4958)
!4991 = !DILocation(line: 210, column: 17, scope: !4992)
!4992 = distinct !DILexicalBlock(scope: !4958, file: !383, line: 210, column: 9)
!4993 = !DILocation(line: 210, column: 9, scope: !4958)
!4994 = !DILocation(line: 211, column: 9, scope: !4995)
!4995 = distinct !DILexicalBlock(scope: !4992, file: !383, line: 210, column: 22)
!4996 = !DILocation(line: 212, column: 9, scope: !4995)
!4997 = !DILocation(line: 215, column: 1, scope: !4958)
!4998 = distinct !DISubprogram(name: "hal_pwm_stop", scope: !383, file: !383, line: 217, type: !4959, scopeLine: 218, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !382, retainedNodes: !4999)
!4999 = !{!5000, !5001, !5002, !5003, !5004}
!5000 = !DILocalVariable(name: "pwm_channel", arg: 1, scope: !4998, file: !383, line: 217, type: !4824)
!5001 = !DILocalVariable(name: "ret_val", scope: !4998, file: !383, line: 219, type: !238)
!5002 = !DILocalVariable(name: "frequency", scope: !4998, file: !383, line: 224, type: !92)
!5003 = !DILocalVariable(name: "duty_cycle", scope: !4998, file: !383, line: 225, type: !438)
!5004 = !DILocalVariable(name: "pwm_enable", scope: !4998, file: !383, line: 226, type: !267)
!5005 = !DILocation(line: 0, scope: !4998)
!5006 = !DILocation(line: 220, column: 10, scope: !5007)
!5007 = distinct !DILexicalBlock(scope: !4998, file: !383, line: 220, column: 9)
!5008 = !DILocation(line: 220, column: 9, scope: !4998)
!5009 = !DILocation(line: 221, column: 9, scope: !5010)
!5010 = distinct !DILexicalBlock(scope: !5007, file: !383, line: 220, column: 49)
!5011 = !DILocation(line: 222, column: 9, scope: !5010)
!5012 = !DILocation(line: 224, column: 5, scope: !4998)
!5013 = !DILocation(line: 224, column: 14, scope: !4998)
!5014 = !DILocation(line: 225, column: 5, scope: !4998)
!5015 = !DILocation(line: 225, column: 14, scope: !4998)
!5016 = !DILocation(line: 226, column: 5, scope: !4998)
!5017 = !DILocation(line: 226, column: 13, scope: !4998)
!5018 = !DILocation(line: 227, column: 13, scope: !4998)
!5019 = !DILocation(line: 227, column: 5, scope: !4998)
!5020 = !DILocation(line: 229, column: 14, scope: !5021)
!5021 = distinct !DILexicalBlock(scope: !4998, file: !383, line: 229, column: 9)
!5022 = !DILocation(line: 229, column: 11, scope: !5021)
!5023 = !DILocation(line: 229, column: 9, scope: !4998)
!5024 = !DILocation(line: 230, column: 9, scope: !5025)
!5025 = distinct !DILexicalBlock(scope: !5021, file: !383, line: 229, column: 25)
!5026 = !DILocation(line: 231, column: 9, scope: !5025)
!5027 = !DILocation(line: 235, column: 23, scope: !4998)
!5028 = !DILocation(line: 233, column: 15, scope: !4998)
!5029 = !DILocation(line: 237, column: 17, scope: !5030)
!5030 = distinct !DILexicalBlock(scope: !4998, file: !383, line: 237, column: 9)
!5031 = !DILocation(line: 237, column: 9, scope: !4998)
!5032 = !DILocation(line: 238, column: 9, scope: !5033)
!5033 = distinct !DILexicalBlock(scope: !5030, file: !383, line: 237, column: 22)
!5034 = !DILocation(line: 239, column: 9, scope: !5033)
!5035 = !DILocation(line: 242, column: 1, scope: !4998)
!5036 = distinct !DISubprogram(name: "hal_pwm_get_frequency", scope: !383, file: !383, line: 244, type: !5037, scopeLine: 245, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !382, retainedNodes: !5039)
!5037 = !DISubroutineType(types: !5038)
!5038 = !{!450, !4824, !451}
!5039 = !{!5040, !5041, !5042, !5043}
!5040 = !DILocalVariable(name: "pwm_channel", arg: 1, scope: !5036, file: !383, line: 244, type: !4824)
!5041 = !DILocalVariable(name: "frequency", arg: 2, scope: !5036, file: !383, line: 244, type: !451)
!5042 = !DILocalVariable(name: "duty_cycle", scope: !5036, file: !383, line: 254, type: !438)
!5043 = !DILocalVariable(name: "pwm_enable", scope: !5036, file: !383, line: 255, type: !267)
!5044 = !DILocation(line: 0, scope: !5036)
!5045 = !DILocation(line: 246, column: 10, scope: !5046)
!5046 = distinct !DILexicalBlock(scope: !5036, file: !383, line: 246, column: 9)
!5047 = !DILocation(line: 246, column: 9, scope: !5036)
!5048 = !DILocation(line: 247, column: 9, scope: !5049)
!5049 = distinct !DILexicalBlock(scope: !5046, file: !383, line: 246, column: 49)
!5050 = !DILocation(line: 248, column: 9, scope: !5049)
!5051 = !DILocation(line: 250, column: 14, scope: !5052)
!5052 = distinct !DILexicalBlock(scope: !5036, file: !383, line: 250, column: 9)
!5053 = !DILocation(line: 250, column: 9, scope: !5036)
!5054 = !DILocation(line: 251, column: 9, scope: !5055)
!5055 = distinct !DILexicalBlock(scope: !5052, file: !383, line: 250, column: 28)
!5056 = !DILocation(line: 252, column: 9, scope: !5055)
!5057 = !DILocation(line: 254, column: 5, scope: !5036)
!5058 = !DILocation(line: 254, column: 14, scope: !5036)
!5059 = !DILocation(line: 255, column: 5, scope: !5036)
!5060 = !DILocation(line: 255, column: 13, scope: !5036)
!5061 = !DILocation(line: 256, column: 13, scope: !5036)
!5062 = !DILocation(line: 256, column: 5, scope: !5036)
!5063 = !DILocation(line: 259, column: 1, scope: !5036)
!5064 = distinct !DISubprogram(name: "hal_pwm_get_duty_cycle", scope: !383, file: !383, line: 261, type: !5037, scopeLine: 262, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !382, retainedNodes: !5065)
!5065 = !{!5066, !5067, !5068, !5069, !5070, !5071}
!5066 = !DILocalVariable(name: "pwm_channel", arg: 1, scope: !5064, file: !383, line: 261, type: !4824)
!5067 = !DILocalVariable(name: "duty_cycle", arg: 2, scope: !5064, file: !383, line: 261, type: !451)
!5068 = !DILocalVariable(name: "frequency", scope: !5064, file: !383, line: 267, type: !92)
!5069 = !DILocalVariable(name: "working_duty_cycle", scope: !5064, file: !383, line: 268, type: !438)
!5070 = !DILocalVariable(name: "pwm_enable", scope: !5064, file: !383, line: 269, type: !267)
!5071 = !DILocalVariable(name: "total_count", scope: !5064, file: !383, line: 276, type: !92)
!5072 = !DILocation(line: 0, scope: !5064)
!5073 = !DILocation(line: 263, column: 10, scope: !5074)
!5074 = distinct !DILexicalBlock(scope: !5064, file: !383, line: 263, column: 9)
!5075 = !DILocation(line: 263, column: 9, scope: !5064)
!5076 = !DILocation(line: 264, column: 9, scope: !5077)
!5077 = distinct !DILexicalBlock(scope: !5074, file: !383, line: 263, column: 49)
!5078 = !DILocation(line: 265, column: 9, scope: !5077)
!5079 = !DILocation(line: 267, column: 5, scope: !5064)
!5080 = !DILocation(line: 267, column: 14, scope: !5064)
!5081 = !DILocation(line: 268, column: 5, scope: !5064)
!5082 = !DILocation(line: 268, column: 14, scope: !5064)
!5083 = !DILocation(line: 269, column: 5, scope: !5064)
!5084 = !DILocation(line: 269, column: 13, scope: !5064)
!5085 = !DILocation(line: 270, column: 13, scope: !5064)
!5086 = !DILocation(line: 270, column: 5, scope: !5064)
!5087 = !DILocation(line: 272, column: 14, scope: !5088)
!5088 = distinct !DILexicalBlock(scope: !5064, file: !383, line: 272, column: 9)
!5089 = !DILocation(line: 272, column: 11, scope: !5088)
!5090 = !DILocation(line: 272, column: 9, scope: !5064)
!5091 = !DILocation(line: 273, column: 9, scope: !5092)
!5092 = distinct !DILexicalBlock(scope: !5088, file: !383, line: 272, column: 25)
!5093 = !DILocation(line: 274, column: 9, scope: !5092)
!5094 = !DILocation(line: 276, column: 5, scope: !5064)
!5095 = !DILocation(line: 277, column: 55, scope: !5096)
!5096 = distinct !DILexicalBlock(scope: !5064, file: !383, line: 277, column: 9)
!5097 = !DILocation(line: 277, column: 30, scope: !5096)
!5098 = !DILocation(line: 277, column: 27, scope: !5096)
!5099 = !DILocation(line: 277, column: 9, scope: !5064)
!5100 = !DILocation(line: 278, column: 9, scope: !5101)
!5101 = distinct !DILexicalBlock(scope: !5096, file: !383, line: 277, column: 97)
!5102 = !DILocation(line: 279, column: 9, scope: !5101)
!5103 = !DILocation(line: 281, column: 19, scope: !5064)
!5104 = !DILocation(line: 281, column: 17, scope: !5064)
!5105 = !DILocation(line: 282, column: 5, scope: !5064)
!5106 = !DILocation(line: 283, column: 1, scope: !5064)
!5107 = distinct !DISubprogram(name: "hal_pwm_get_running_status", scope: !383, file: !383, line: 285, type: !5108, scopeLine: 287, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !382, retainedNodes: !5112)
!5108 = !DISubroutineType(types: !5109)
!5109 = !{!450, !4824, !5110}
!5110 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5111, size: 32)
!5111 = !DIDerivedType(tag: DW_TAG_typedef, name: "hal_pwm_running_status_t", file: !386, line: 240, baseType: !433)
!5112 = !{!5113, !5114, !5115, !5116, !5117}
!5113 = !DILocalVariable(name: "pwm_channel", arg: 1, scope: !5107, file: !383, line: 285, type: !4824)
!5114 = !DILocalVariable(name: "running_status", arg: 2, scope: !5107, file: !383, line: 286, type: !5110)
!5115 = !DILocalVariable(name: "frequency", scope: !5107, file: !383, line: 292, type: !92)
!5116 = !DILocalVariable(name: "duty_cycle", scope: !5107, file: !383, line: 293, type: !438)
!5117 = !DILocalVariable(name: "pwm_enable", scope: !5107, file: !383, line: 294, type: !267)
!5118 = !DILocation(line: 0, scope: !5107)
!5119 = !DILocation(line: 288, column: 10, scope: !5120)
!5120 = distinct !DILexicalBlock(scope: !5107, file: !383, line: 288, column: 9)
!5121 = !DILocation(line: 288, column: 9, scope: !5107)
!5122 = !DILocation(line: 289, column: 9, scope: !5123)
!5123 = distinct !DILexicalBlock(scope: !5120, file: !383, line: 288, column: 49)
!5124 = !DILocation(line: 290, column: 9, scope: !5123)
!5125 = !DILocation(line: 292, column: 5, scope: !5107)
!5126 = !DILocation(line: 292, column: 14, scope: !5107)
!5127 = !DILocation(line: 293, column: 5, scope: !5107)
!5128 = !DILocation(line: 293, column: 14, scope: !5107)
!5129 = !DILocation(line: 294, column: 5, scope: !5107)
!5130 = !DILocation(line: 294, column: 13, scope: !5107)
!5131 = !DILocation(line: 295, column: 13, scope: !5107)
!5132 = !DILocation(line: 295, column: 5, scope: !5107)
!5133 = !DILocation(line: 296, column: 23, scope: !5107)
!5134 = !DILocation(line: 296, column: 21, scope: !5107)
!5135 = !DILocation(line: 298, column: 1, scope: !5107)
!5136 = distinct !DISubprogram(name: "hal_uart_init", scope: !464, file: !464, line: 234, type: !5137, scopeLine: 235, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !463, retainedNodes: !5141)
!5137 = !DISubroutineType(types: !5138)
!5138 = !{!5139, !524, !5140}
!5139 = !DIDerivedType(tag: DW_TAG_typedef, name: "hal_uart_status_t", file: !467, line: 351, baseType: !466)
!5140 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !535, size: 32)
!5141 = !{!5142, !5143}
!5142 = !DILocalVariable(name: "uart_port", arg: 1, scope: !5136, file: !464, line: 234, type: !524)
!5143 = !DILocalVariable(name: "uart_config", arg: 2, scope: !5136, file: !464, line: 234, type: !5140)
!5144 = !DILocation(line: 0, scope: !5136)
!5145 = !DILocation(line: 236, column: 10, scope: !5146)
!5146 = distinct !DILexicalBlock(scope: !5136, file: !464, line: 236, column: 9)
!5147 = !DILocation(line: 236, column: 9, scope: !5136)
!5148 = !DILocation(line: 239, column: 41, scope: !5149)
!5149 = distinct !DILexicalBlock(scope: !5136, file: !464, line: 239, column: 9)
!5150 = !DILocation(line: 239, column: 9, scope: !5136)
!5151 = !DILocation(line: 242, column: 5, scope: !5136)
!5152 = !DILocation(line: 243, column: 45, scope: !5136)
!5153 = !DILocation(line: 243, column: 12, scope: !5136)
!5154 = !DILocation(line: 244, column: 12, scope: !5136)
!5155 = !DILocation(line: 243, column: 5, scope: !5136)
!5156 = !DILocation(line: 245, column: 58, scope: !5136)
!5157 = !DILocation(line: 246, column: 30, scope: !5136)
!5158 = !{i32 0, i32 2}
!5159 = !DILocation(line: 246, column: 5, scope: !5136)
!5160 = !DILocation(line: 247, column: 5, scope: !5136)
!5161 = !DILocation(line: 249, column: 31, scope: !5162)
!5162 = distinct !DILexicalBlock(scope: !5136, file: !464, line: 249, column: 9)
!5163 = !DILocation(line: 249, column: 28, scope: !5162)
!5164 = !DILocation(line: 261, column: 1, scope: !5136)
!5165 = distinct !DISubprogram(name: "hal_uart_is_config_valid", scope: !464, file: !464, line: 93, type: !5166, scopeLine: 94, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !463, retainedNodes: !5170)
!5166 = !DISubroutineType(types: !5167)
!5167 = !{!222, !524, !5168}
!5168 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5169, size: 32)
!5169 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !535)
!5170 = !{!5171, !5172}
!5171 = !DILocalVariable(name: "uart_port", arg: 1, scope: !5165, file: !464, line: 93, type: !524)
!5172 = !DILocalVariable(name: "uart_config", arg: 2, scope: !5165, file: !464, line: 93, type: !5168)
!5173 = !DILocation(line: 0, scope: !5165)
!5174 = !DILocation(line: 95, column: 10, scope: !5175)
!5175 = distinct !DILexicalBlock(scope: !5165, file: !464, line: 95, column: 9)
!5176 = !DILocation(line: 95, column: 9, scope: !5165)
!5177 = !DILocation(line: 101, column: 23, scope: !5178)
!5178 = distinct !DILexicalBlock(scope: !5165, file: !464, line: 101, column: 9)
!5179 = !DILocation(line: 101, column: 32, scope: !5178)
!5180 = !DILocation(line: 101, column: 60, scope: !5178)
!5181 = !DILocation(line: 102, column: 27, scope: !5178)
!5182 = !DILocation(line: 102, column: 34, scope: !5178)
!5183 = !DILocation(line: 102, column: 58, scope: !5178)
!5184 = !DILocation(line: 103, column: 27, scope: !5178)
!5185 = !DILocation(line: 103, column: 36, scope: !5178)
!5186 = !DILocation(line: 103, column: 59, scope: !5178)
!5187 = !DILocation(line: 104, column: 27, scope: !5178)
!5188 = !DILocation(line: 104, column: 39, scope: !5178)
!5189 = !DILocation(line: 101, column: 9, scope: !5165)
!5190 = !DILocation(line: 109, column: 1, scope: !5165)
!5191 = distinct !DISubprogram(name: "hal_uart_translate_port", scope: !464, file: !464, line: 139, type: !5192, scopeLine: 140, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !463, retainedNodes: !5194)
!5192 = !DISubroutineType(types: !5193)
!5193 = !{!3126, !524}
!5194 = !{!5195}
!5195 = !DILocalVariable(name: "uart_port", arg: 1, scope: !5191, file: !464, line: 139, type: !524)
!5196 = !DILocation(line: 0, scope: !5191)
!5197 = !DILocation(line: 141, column: 24, scope: !5191)
!5198 = !DILocation(line: 141, column: 12, scope: !5191)
!5199 = !DILocation(line: 141, column: 5, scope: !5191)
!5200 = distinct !DISubprogram(name: "hal_uart_set_format", scope: !464, file: !464, line: 593, type: !5201, scopeLine: 594, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !463, retainedNodes: !5203)
!5201 = !DISubroutineType(types: !5202)
!5202 = !{!5139, !524, !5168}
!5203 = !{!5204, !5205}
!5204 = !DILocalVariable(name: "uart_port", arg: 1, scope: !5200, file: !464, line: 593, type: !524)
!5205 = !DILocalVariable(name: "config", arg: 2, scope: !5200, file: !464, line: 593, type: !5168)
!5206 = !DILocation(line: 0, scope: !5200)
!5207 = !DILocation(line: 595, column: 10, scope: !5208)
!5208 = distinct !DILexicalBlock(scope: !5200, file: !464, line: 595, column: 9)
!5209 = !DILocation(line: 595, column: 9, scope: !5200)
!5210 = !DILocation(line: 598, column: 45, scope: !5200)
!5211 = !DILocation(line: 598, column: 12, scope: !5200)
!5212 = !DILocation(line: 598, column: 59, scope: !5200)
!5213 = !DILocation(line: 598, column: 5, scope: !5200)
!5214 = !DILocation(line: 599, column: 23, scope: !5200)
!5215 = !DILocation(line: 600, column: 59, scope: !5200)
!5216 = !DILocation(line: 600, column: 23, scope: !5200)
!5217 = !DILocation(line: 601, column: 62, scope: !5200)
!5218 = !DILocation(line: 601, column: 23, scope: !5200)
!5219 = !DILocation(line: 602, column: 57, scope: !5200)
!5220 = !DILocation(line: 602, column: 23, scope: !5200)
!5221 = !DILocation(line: 603, column: 58, scope: !5200)
!5222 = !DILocation(line: 603, column: 23, scope: !5200)
!5223 = !DILocation(line: 599, column: 5, scope: !5200)
!5224 = !DILocation(line: 604, column: 5, scope: !5200)
!5225 = !DILocation(line: 605, column: 1, scope: !5200)
!5226 = distinct !DISubprogram(name: "hal_uart_translate_baudrate", scope: !464, file: !464, line: 145, type: !5227, scopeLine: 146, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !463, retainedNodes: !5229)
!5227 = !DISubroutineType(types: !5228)
!5228 = !{!92, !539}
!5229 = !{!5230, !5231}
!5230 = !DILocalVariable(name: "bandrate", arg: 1, scope: !5226, file: !464, line: 145, type: !539)
!5231 = !DILocalVariable(name: "baudrate_tbl", scope: !5226, file: !464, line: 147, type: !5232)
!5232 = !DICompositeType(tag: DW_TAG_array_type, baseType: !92, size: 416, elements: !5233)
!5233 = !{!5234}
!5234 = !DISubrange(count: 13)
!5235 = !DILocation(line: 0, scope: !5226)
!5236 = !DILocation(line: 147, column: 14, scope: !5226)
!5237 = !DILocation(line: 151, column: 12, scope: !5226)
!5238 = !DILocation(line: 151, column: 5, scope: !5226)
!5239 = distinct !DISubprogram(name: "hal_uart_translate_word_length", scope: !464, file: !464, line: 155, type: !5240, scopeLine: 156, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !463, retainedNodes: !5242)
!5240 = !DISubroutineType(types: !5241)
!5241 = !{!438, !541}
!5242 = !{!5243, !5244}
!5243 = !DILocalVariable(name: "word_length", arg: 1, scope: !5239, file: !464, line: 155, type: !541)
!5244 = !DILocalVariable(name: "databit_tbl", scope: !5239, file: !464, line: 157, type: !5245)
!5245 = !DICompositeType(tag: DW_TAG_array_type, baseType: !438, size: 64, elements: !306)
!5246 = !DILocation(line: 0, scope: !5239)
!5247 = !DILocation(line: 157, column: 14, scope: !5239)
!5248 = !DILocation(line: 160, column: 12, scope: !5239)
!5249 = !DILocation(line: 160, column: 5, scope: !5239)
!5250 = distinct !DISubprogram(name: "hal_uart_translate_parity", scope: !464, file: !464, line: 164, type: !5251, scopeLine: 165, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !463, retainedNodes: !5253)
!5251 = !DISubroutineType(types: !5252)
!5252 = !{!438, !545}
!5253 = !{!5254, !5255}
!5254 = !DILocalVariable(name: "parity", arg: 1, scope: !5250, file: !464, line: 164, type: !545)
!5255 = !DILocalVariable(name: "parity_tbl", scope: !5250, file: !464, line: 166, type: !5256)
!5256 = !DICompositeType(tag: DW_TAG_array_type, baseType: !438, size: 80, elements: !310)
!5257 = !DILocation(line: 0, scope: !5250)
!5258 = !DILocation(line: 166, column: 14, scope: !5250)
!5259 = !DILocation(line: 169, column: 12, scope: !5250)
!5260 = !DILocation(line: 169, column: 5, scope: !5250)
!5261 = distinct !DISubprogram(name: "hal_uart_translate_stopbit", scope: !464, file: !464, line: 173, type: !5262, scopeLine: 174, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !463, retainedNodes: !5264)
!5262 = !DISubroutineType(types: !5263)
!5263 = !{!438, !543}
!5264 = !{!5265, !5266}
!5265 = !DILocalVariable(name: "stopbit", arg: 1, scope: !5261, file: !464, line: 173, type: !543)
!5266 = !DILocalVariable(name: "stopbit_tbl", scope: !5261, file: !464, line: 175, type: !5267)
!5267 = !DICompositeType(tag: DW_TAG_array_type, baseType: !438, size: 48, elements: !691)
!5268 = !DILocation(line: 0, scope: !5261)
!5269 = !DILocation(line: 175, column: 14, scope: !5261)
!5270 = !DILocation(line: 178, column: 12, scope: !5261)
!5271 = !DILocation(line: 178, column: 5, scope: !5261)
!5272 = distinct !DISubprogram(name: "hal_uart_is_port_valid", scope: !464, file: !464, line: 87, type: !5273, scopeLine: 88, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !463, retainedNodes: !5275)
!5273 = !DISubroutineType(types: !5274)
!5274 = !{!222, !524}
!5275 = !{!5276}
!5276 = !DILocalVariable(name: "uart_port", arg: 1, scope: !5272, file: !464, line: 87, type: !524)
!5277 = !DILocation(line: 0, scope: !5272)
!5278 = !DILocation(line: 89, column: 23, scope: !5272)
!5279 = !DILocation(line: 89, column: 5, scope: !5272)
!5280 = distinct !DISubprogram(name: "hal_uart_deinit", scope: !464, file: !464, line: 264, type: !5281, scopeLine: 265, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !463, retainedNodes: !5283)
!5281 = !DISubroutineType(types: !5282)
!5282 = !{!5139, !524}
!5283 = !{!5284}
!5284 = !DILocalVariable(name: "uart_port", arg: 1, scope: !5280, file: !464, line: 264, type: !524)
!5285 = !DILocation(line: 0, scope: !5280)
!5286 = !DILocation(line: 266, column: 10, scope: !5287)
!5287 = distinct !DILexicalBlock(scope: !5280, file: !464, line: 266, column: 9)
!5288 = !DILocation(line: 266, column: 9, scope: !5280)
!5289 = !DILocation(line: 269, column: 41, scope: !5290)
!5290 = distinct !DILexicalBlock(scope: !5280, file: !464, line: 269, column: 9)
!5291 = !DILocation(line: 269, column: 62, scope: !5290)
!5292 = !DILocation(line: 269, column: 9, scope: !5280)
!5293 = !DILocation(line: 272, column: 5, scope: !5280)
!5294 = !DILocation(line: 275, column: 22, scope: !5280)
!5295 = !DILocation(line: 275, column: 5, scope: !5280)
!5296 = !DILocation(line: 284, column: 5, scope: !5280)
!5297 = !DILocation(line: 286, column: 5, scope: !5280)
!5298 = !DILocation(line: 287, column: 1, scope: !5280)
!5299 = distinct !DISubprogram(name: "hal_uart_put_char", scope: !464, file: !464, line: 290, type: !5300, scopeLine: 291, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !463, retainedNodes: !5302)
!5300 = !DISubroutineType(types: !5301)
!5301 = !{null, !524, !516}
!5302 = !{!5303, !5304, !5305}
!5303 = !DILocalVariable(name: "uart_port", arg: 1, scope: !5299, file: !464, line: 290, type: !524)
!5304 = !DILocalVariable(name: "byte", arg: 2, scope: !5299, file: !464, line: 290, type: !516)
!5305 = !DILocalVariable(name: "int_no", scope: !5299, file: !464, line: 292, type: !3126)
!5306 = !DILocation(line: 0, scope: !5299)
!5307 = !DILocation(line: 292, column: 26, scope: !5299)
!5308 = !DILocation(line: 294, column: 16, scope: !5309)
!5309 = distinct !DILexicalBlock(scope: !5299, file: !464, line: 294, column: 9)
!5310 = !DILocation(line: 294, column: 9, scope: !5299)
!5311 = !DILocation(line: 295, column: 9, scope: !5312)
!5312 = distinct !DILexicalBlock(scope: !5309, file: !464, line: 294, column: 34)
!5313 = !DILocation(line: 296, column: 5, scope: !5312)
!5314 = !DILocation(line: 299, column: 1, scope: !5299)
!5315 = distinct !DISubprogram(name: "hal_uart_send_polling", scope: !464, file: !464, line: 302, type: !5316, scopeLine: 303, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !463, retainedNodes: !5318)
!5316 = !DISubroutineType(types: !5317)
!5317 = !{!92, !524, !3330, !92}
!5318 = !{!5319, !5320, !5321, !5322, !5323}
!5319 = !DILocalVariable(name: "uart_port", arg: 1, scope: !5315, file: !464, line: 302, type: !524)
!5320 = !DILocalVariable(name: "data", arg: 2, scope: !5315, file: !464, line: 302, type: !3330)
!5321 = !DILocalVariable(name: "size", arg: 3, scope: !5315, file: !464, line: 302, type: !92)
!5322 = !DILocalVariable(name: "int_no", scope: !5315, file: !464, line: 304, type: !3126)
!5323 = !DILocalVariable(name: "index", scope: !5315, file: !464, line: 305, type: !92)
!5324 = !DILocation(line: 0, scope: !5315)
!5325 = !DILocation(line: 304, column: 26, scope: !5315)
!5326 = !DILocation(line: 307, column: 14, scope: !5327)
!5327 = distinct !DILexicalBlock(scope: !5315, file: !464, line: 307, column: 9)
!5328 = !DILocation(line: 307, column: 9, scope: !5315)
!5329 = !DILocation(line: 313, column: 53, scope: !5330)
!5330 = distinct !DILexicalBlock(scope: !5331, file: !464, line: 312, column: 48)
!5331 = distinct !DILexicalBlock(scope: !5332, file: !464, line: 312, column: 9)
!5332 = distinct !DILexicalBlock(scope: !5333, file: !464, line: 312, column: 9)
!5333 = distinct !DILexicalBlock(scope: !5334, file: !464, line: 311, column: 33)
!5334 = distinct !DILexicalBlock(scope: !5315, file: !464, line: 311, column: 9)
!5335 = !DILocation(line: 313, column: 13, scope: !5330)
!5336 = !DILocation(line: 312, column: 44, scope: !5331)
!5337 = !DILocation(line: 312, column: 31, scope: !5331)
!5338 = !DILocation(line: 312, column: 9, scope: !5332)
!5339 = distinct !{!5339, !5338, !5340}
!5340 = !DILocation(line: 314, column: 9, scope: !5332)
!5341 = !DILocation(line: 318, column: 1, scope: !5315)
!5342 = distinct !DISubprogram(name: "hal_uart_send_dma", scope: !464, file: !464, line: 320, type: !5316, scopeLine: 321, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !463, retainedNodes: !5343)
!5343 = !{!5344, !5345, !5346, !5347, !5348, !5349}
!5344 = !DILocalVariable(name: "uart_port", arg: 1, scope: !5342, file: !464, line: 320, type: !524)
!5345 = !DILocalVariable(name: "data", arg: 2, scope: !5342, file: !464, line: 320, type: !3330)
!5346 = !DILocalVariable(name: "size", arg: 3, scope: !5342, file: !464, line: 320, type: !92)
!5347 = !DILocalVariable(name: "actual_space", scope: !5342, file: !464, line: 322, type: !92)
!5348 = !DILocalVariable(name: "send_size", scope: !5342, file: !464, line: 322, type: !92)
!5349 = !DILocalVariable(name: "ch", scope: !5342, file: !464, line: 323, type: !5350)
!5350 = !DIDerivedType(tag: DW_TAG_typedef, name: "DMA_VFIFO_CHANNEL", file: !112, line: 144, baseType: !111)
!5351 = !DILocation(line: 0, scope: !5342)
!5352 = !DILocation(line: 322, column: 5, scope: !5342)
!5353 = !DILocation(line: 328, column: 10, scope: !5354)
!5354 = distinct !DILexicalBlock(scope: !5342, file: !464, line: 328, column: 9)
!5355 = !DILocation(line: 328, column: 9, scope: !5342)
!5356 = !DILocation(line: 332, column: 15, scope: !5357)
!5357 = distinct !DILexicalBlock(scope: !5342, file: !464, line: 332, column: 9)
!5358 = !DILocation(line: 332, column: 24, scope: !5357)
!5359 = !DILocation(line: 335, column: 42, scope: !5360)
!5360 = distinct !DILexicalBlock(scope: !5342, file: !464, line: 335, column: 9)
!5361 = !DILocation(line: 335, column: 9, scope: !5342)
!5362 = !DILocation(line: 349, column: 30, scope: !5342)
!5363 = !DILocation(line: 349, column: 5, scope: !5342)
!5364 = !DILocation(line: 350, column: 9, scope: !5365)
!5365 = distinct !DILexicalBlock(scope: !5342, file: !464, line: 350, column: 9)
!5366 = !DILocation(line: 350, column: 22, scope: !5365)
!5367 = !DILocation(line: 355, column: 5, scope: !5342)
!5368 = !DILocation(line: 357, column: 22, scope: !5369)
!5369 = distinct !DILexicalBlock(scope: !5342, file: !464, line: 357, column: 9)
!5370 = !DILocation(line: 357, column: 19, scope: !5369)
!5371 = !DILocation(line: 357, column: 9, scope: !5342)
!5372 = !DILocation(line: 358, column: 14, scope: !5373)
!5373 = distinct !DILexicalBlock(scope: !5369, file: !464, line: 357, column: 36)
!5374 = !{i32 14, i32 18}
!5375 = !DILocation(line: 359, column: 9, scope: !5373)
!5376 = !DILocation(line: 360, column: 5, scope: !5373)
!5377 = !DILocation(line: 362, column: 1, scope: !5342)
!5378 = distinct !DISubprogram(name: "uart_channel_to_dma_channel", scope: !464, file: !464, line: 191, type: !5379, scopeLine: 192, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !463, retainedNodes: !5381)
!5379 = !DISubroutineType(types: !5380)
!5380 = !{!5350, !3126, !222}
!5381 = !{!5382, !5383, !5384}
!5382 = !DILocalVariable(name: "port", arg: 1, scope: !5378, file: !464, line: 191, type: !3126)
!5383 = !DILocalVariable(name: "is_rx", arg: 2, scope: !5378, file: !464, line: 191, type: !222)
!5384 = !DILocalVariable(name: "ch", scope: !5378, file: !464, line: 193, type: !5350)
!5385 = !DILocation(line: 0, scope: !5378)
!5386 = !DILocation(line: 195, column: 14, scope: !5387)
!5387 = distinct !DILexicalBlock(scope: !5378, file: !464, line: 195, column: 9)
!5388 = !DILocation(line: 195, column: 9, scope: !5378)
!5389 = !DILocation(line: 209, column: 5, scope: !5378)
!5390 = distinct !DISubprogram(name: "hal_uart_get_char", scope: !464, file: !464, line: 365, type: !5391, scopeLine: 366, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !463, retainedNodes: !5393)
!5391 = !DISubroutineType(types: !5392)
!5392 = !{!516, !524}
!5393 = !{!5394, !5395}
!5394 = !DILocalVariable(name: "uart_port", arg: 1, scope: !5390, file: !464, line: 365, type: !524)
!5395 = !DILocalVariable(name: "int_no", scope: !5390, file: !464, line: 367, type: !3126)
!5396 = !DILocation(line: 0, scope: !5390)
!5397 = !DILocation(line: 367, column: 26, scope: !5390)
!5398 = !DILocation(line: 369, column: 16, scope: !5399)
!5399 = distinct !DILexicalBlock(scope: !5390, file: !464, line: 369, column: 9)
!5400 = !DILocation(line: 369, column: 9, scope: !5390)
!5401 = !DILocation(line: 370, column: 22, scope: !5402)
!5402 = distinct !DILexicalBlock(scope: !5399, file: !464, line: 369, column: 33)
!5403 = !DILocation(line: 370, column: 9, scope: !5402)
!5404 = !DILocation(line: 0, scope: !5399)
!5405 = !DILocation(line: 375, column: 1, scope: !5390)
!5406 = distinct !DISubprogram(name: "hal_uart_get_char_unblocking", scope: !464, file: !464, line: 377, type: !5407, scopeLine: 378, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !463, retainedNodes: !5409)
!5407 = !DISubroutineType(types: !5408)
!5408 = !{!92, !524}
!5409 = !{!5410, !5411}
!5410 = !DILocalVariable(name: "uart_port", arg: 1, scope: !5406, file: !464, line: 377, type: !524)
!5411 = !DILocalVariable(name: "int_no", scope: !5406, file: !464, line: 379, type: !3126)
!5412 = !DILocation(line: 0, scope: !5406)
!5413 = !DILocation(line: 379, column: 26, scope: !5406)
!5414 = !DILocation(line: 381, column: 16, scope: !5415)
!5415 = distinct !DILexicalBlock(scope: !5406, file: !464, line: 381, column: 9)
!5416 = !DILocation(line: 381, column: 9, scope: !5406)
!5417 = !DILocation(line: 382, column: 16, scope: !5418)
!5418 = distinct !DILexicalBlock(scope: !5415, file: !464, line: 381, column: 33)
!5419 = !DILocation(line: 382, column: 9, scope: !5418)
!5420 = !DILocation(line: 0, scope: !5415)
!5421 = !DILocation(line: 387, column: 1, scope: !5406)
!5422 = distinct !DISubprogram(name: "hal_uart_receive_polling", scope: !464, file: !464, line: 390, type: !5423, scopeLine: 391, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !463, retainedNodes: !5425)
!5423 = !DISubroutineType(types: !5424)
!5424 = !{!92, !524, !564, !92}
!5425 = !{!5426, !5427, !5428, !5429, !5430}
!5426 = !DILocalVariable(name: "uart_port", arg: 1, scope: !5422, file: !464, line: 390, type: !524)
!5427 = !DILocalVariable(name: "buffer", arg: 2, scope: !5422, file: !464, line: 390, type: !564)
!5428 = !DILocalVariable(name: "size", arg: 3, scope: !5422, file: !464, line: 390, type: !92)
!5429 = !DILocalVariable(name: "int_no", scope: !5422, file: !464, line: 392, type: !3126)
!5430 = !DILocalVariable(name: "index", scope: !5422, file: !464, line: 393, type: !92)
!5431 = !DILocation(line: 0, scope: !5422)
!5432 = !DILocation(line: 392, column: 26, scope: !5422)
!5433 = !DILocation(line: 395, column: 16, scope: !5434)
!5434 = distinct !DILexicalBlock(scope: !5422, file: !464, line: 395, column: 9)
!5435 = !DILocation(line: 395, column: 9, scope: !5422)
!5436 = !DILocation(line: 401, column: 38, scope: !5437)
!5437 = distinct !DILexicalBlock(scope: !5438, file: !464, line: 400, column: 48)
!5438 = distinct !DILexicalBlock(scope: !5439, file: !464, line: 400, column: 9)
!5439 = distinct !DILexicalBlock(scope: !5440, file: !464, line: 400, column: 9)
!5440 = distinct !DILexicalBlock(scope: !5441, file: !464, line: 399, column: 33)
!5441 = distinct !DILexicalBlock(scope: !5422, file: !464, line: 399, column: 9)
!5442 = !DILocation(line: 401, column: 13, scope: !5437)
!5443 = !DILocation(line: 401, column: 27, scope: !5437)
!5444 = !DILocation(line: 400, column: 44, scope: !5438)
!5445 = !DILocation(line: 400, column: 31, scope: !5438)
!5446 = !DILocation(line: 400, column: 9, scope: !5439)
!5447 = distinct !{!5447, !5446, !5448}
!5448 = !DILocation(line: 402, column: 9, scope: !5439)
!5449 = !DILocation(line: 406, column: 1, scope: !5422)
!5450 = distinct !DISubprogram(name: "hal_uart_receive_dma", scope: !464, file: !464, line: 408, type: !5423, scopeLine: 409, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !463, retainedNodes: !5451)
!5451 = !{!5452, !5453, !5454, !5455, !5456, !5457}
!5452 = !DILocalVariable(name: "uart_port", arg: 1, scope: !5450, file: !464, line: 408, type: !524)
!5453 = !DILocalVariable(name: "buffer", arg: 2, scope: !5450, file: !464, line: 408, type: !564)
!5454 = !DILocalVariable(name: "size", arg: 3, scope: !5450, file: !464, line: 408, type: !92)
!5455 = !DILocalVariable(name: "actual_size", scope: !5450, file: !464, line: 410, type: !92)
!5456 = !DILocalVariable(name: "receive_size", scope: !5450, file: !464, line: 410, type: !92)
!5457 = !DILocalVariable(name: "ch", scope: !5450, file: !464, line: 411, type: !5350)
!5458 = !DILocation(line: 0, scope: !5450)
!5459 = !DILocation(line: 410, column: 5, scope: !5450)
!5460 = !DILocation(line: 413, column: 10, scope: !5461)
!5461 = distinct !DILexicalBlock(scope: !5450, file: !464, line: 413, column: 9)
!5462 = !DILocation(line: 413, column: 9, scope: !5450)
!5463 = !DILocation(line: 417, column: 17, scope: !5464)
!5464 = distinct !DILexicalBlock(scope: !5450, file: !464, line: 417, column: 9)
!5465 = !DILocation(line: 417, column: 26, scope: !5464)
!5466 = !DILocation(line: 421, column: 30, scope: !5450)
!5467 = !DILocation(line: 421, column: 5, scope: !5450)
!5468 = !DILocation(line: 422, column: 9, scope: !5469)
!5469 = distinct !DILexicalBlock(scope: !5450, file: !464, line: 422, column: 9)
!5470 = !DILocation(line: 422, column: 21, scope: !5469)
!5471 = !DILocation(line: 427, column: 5, scope: !5450)
!5472 = !DILocation(line: 429, column: 25, scope: !5473)
!5473 = distinct !DILexicalBlock(scope: !5450, file: !464, line: 429, column: 9)
!5474 = !DILocation(line: 429, column: 22, scope: !5473)
!5475 = !DILocation(line: 429, column: 9, scope: !5450)
!5476 = !DILocation(line: 430, column: 14, scope: !5477)
!5477 = distinct !DILexicalBlock(scope: !5473, file: !464, line: 429, column: 38)
!5478 = !DILocation(line: 431, column: 9, scope: !5477)
!5479 = !DILocation(line: 432, column: 5, scope: !5477)
!5480 = !DILocation(line: 435, column: 1, scope: !5450)
!5481 = distinct !DISubprogram(name: "hal_uart_get_available_send_space", scope: !464, file: !464, line: 438, type: !5407, scopeLine: 439, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !463, retainedNodes: !5482)
!5482 = !{!5483, !5484}
!5483 = !DILocalVariable(name: "uart_port", arg: 1, scope: !5481, file: !464, line: 438, type: !524)
!5484 = !DILocalVariable(name: "length", scope: !5481, file: !464, line: 440, type: !92)
!5485 = !DILocation(line: 0, scope: !5481)
!5486 = !DILocation(line: 440, column: 5, scope: !5481)
!5487 = !DILocation(line: 440, column: 14, scope: !5481)
!5488 = !DILocation(line: 442, column: 10, scope: !5489)
!5489 = distinct !DILexicalBlock(scope: !5481, file: !464, line: 442, column: 9)
!5490 = !DILocation(line: 442, column: 9, scope: !5481)
!5491 = !DILocation(line: 446, column: 30, scope: !5481)
!5492 = !DILocation(line: 446, column: 5, scope: !5481)
!5493 = !DILocation(line: 447, column: 12, scope: !5481)
!5494 = !DILocation(line: 447, column: 5, scope: !5481)
!5495 = !DILocation(line: 448, column: 1, scope: !5481)
!5496 = distinct !DISubprogram(name: "hal_uart_get_available_receive_bytes", scope: !464, file: !464, line: 451, type: !5407, scopeLine: 452, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !463, retainedNodes: !5497)
!5497 = !{!5498, !5499}
!5498 = !DILocalVariable(name: "uart_port", arg: 1, scope: !5496, file: !464, line: 451, type: !524)
!5499 = !DILocalVariable(name: "length", scope: !5496, file: !464, line: 453, type: !92)
!5500 = !DILocation(line: 0, scope: !5496)
!5501 = !DILocation(line: 453, column: 5, scope: !5496)
!5502 = !DILocation(line: 453, column: 14, scope: !5496)
!5503 = !DILocation(line: 455, column: 10, scope: !5504)
!5504 = distinct !DILexicalBlock(scope: !5496, file: !464, line: 455, column: 9)
!5505 = !DILocation(line: 455, column: 9, scope: !5496)
!5506 = !DILocation(line: 459, column: 30, scope: !5496)
!5507 = !DILocation(line: 459, column: 5, scope: !5496)
!5508 = !DILocation(line: 461, column: 12, scope: !5496)
!5509 = !DILocation(line: 461, column: 5, scope: !5496)
!5510 = !DILocation(line: 462, column: 1, scope: !5496)
!5511 = distinct !DISubprogram(name: "hal_uart_register_callback", scope: !464, file: !464, line: 543, type: !5512, scopeLine: 546, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !463, retainedNodes: !5514)
!5512 = !DISubroutineType(types: !5513)
!5513 = !{!5139, !524, !552, !219}
!5514 = !{!5515, !5516, !5517, !5518}
!5515 = !DILocalVariable(name: "uart_port", arg: 1, scope: !5511, file: !464, line: 543, type: !524)
!5516 = !DILocalVariable(name: "user_callback", arg: 2, scope: !5511, file: !464, line: 544, type: !552)
!5517 = !DILocalVariable(name: "user_data", arg: 3, scope: !5511, file: !464, line: 545, type: !219)
!5518 = !DILocalVariable(name: "ch", scope: !5511, file: !464, line: 547, type: !5350)
!5519 = !DILocation(line: 0, scope: !5511)
!5520 = !DILocation(line: 549, column: 10, scope: !5521)
!5521 = distinct !DILexicalBlock(scope: !5511, file: !464, line: 549, column: 9)
!5522 = !DILocation(line: 549, column: 9, scope: !5511)
!5523 = !DILocation(line: 556, column: 53, scope: !5511)
!5524 = !DILocation(line: 556, column: 62, scope: !5511)
!5525 = !DILocation(line: 557, column: 53, scope: !5511)
!5526 = !DILocation(line: 557, column: 63, scope: !5511)
!5527 = !DILocation(line: 558, column: 37, scope: !5511)
!5528 = !DILocation(line: 558, column: 54, scope: !5511)
!5529 = !DILocation(line: 560, column: 39, scope: !5511)
!5530 = !DILocation(line: 561, column: 39, scope: !5511)
!5531 = !DILocation(line: 560, column: 5, scope: !5511)
!5532 = !DILocation(line: 562, column: 5, scope: !5511)
!5533 = !DILocation(line: 564, column: 44, scope: !5534)
!5534 = distinct !DILexicalBlock(scope: !5511, file: !464, line: 564, column: 9)
!5535 = !DILocation(line: 564, column: 9, scope: !5511)
!5536 = !DILocation(line: 565, column: 9, scope: !5537)
!5537 = distinct !DILexicalBlock(scope: !5534, file: !464, line: 564, column: 59)
!5538 = !DILocation(line: 566, column: 5, scope: !5537)
!5539 = !DILocation(line: 567, column: 9, scope: !5540)
!5540 = distinct !DILexicalBlock(scope: !5534, file: !464, line: 566, column: 12)
!5541 = !DILocation(line: 569, column: 10, scope: !5511)
!5542 = !DILocation(line: 570, column: 5, scope: !5511)
!5543 = !DILocation(line: 578, column: 5, scope: !5511)
!5544 = !DILocation(line: 579, column: 1, scope: !5511)
!5545 = !DILocation(line: 0, scope: !520)
!5546 = !DILocation(line: 539, column: 12, scope: !520)
!5547 = !DILocation(line: 539, column: 5, scope: !520)
!5548 = distinct !DISubprogram(name: "hal_uart_send_callback0", scope: !464, file: !464, line: 511, type: !75, scopeLine: 512, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !463, retainedNodes: !5549)
!5549 = !{!5550}
!5550 = !DILocalVariable(name: "callback_context", scope: !5551, file: !464, line: 514, type: !5553)
!5551 = distinct !DILexicalBlock(scope: !5552, file: !464, line: 513, column: 60)
!5552 = distinct !DILexicalBlock(scope: !5548, file: !464, line: 513, column: 9)
!5553 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !548, size: 32)
!5554 = !DILocation(line: 513, column: 42, scope: !5552)
!5555 = !DILocation(line: 513, column: 9, scope: !5548)
!5556 = !DILocation(line: 515, column: 39, scope: !5557)
!5557 = distinct !DILexicalBlock(scope: !5551, file: !464, line: 515, column: 13)
!5558 = !DILocation(line: 515, column: 18, scope: !5557)
!5559 = !DILocation(line: 515, column: 13, scope: !5551)
!5560 = !DILocation(line: 516, column: 89, scope: !5561)
!5561 = distinct !DILexicalBlock(scope: !5557, file: !464, line: 515, column: 49)
!5562 = !DILocation(line: 516, column: 13, scope: !5561)
!5563 = !DILocation(line: 517, column: 9, scope: !5561)
!5564 = !DILocation(line: 519, column: 32, scope: !5548)
!5565 = !DILocation(line: 519, column: 5, scope: !5548)
!5566 = !DILocation(line: 520, column: 1, scope: !5548)
!5567 = distinct !DISubprogram(name: "hal_uart_send_callback1", scope: !464, file: !464, line: 523, type: !75, scopeLine: 524, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !463, retainedNodes: !5568)
!5568 = !{!5569}
!5569 = !DILocalVariable(name: "callback_context", scope: !5570, file: !464, line: 526, type: !5553)
!5570 = distinct !DILexicalBlock(scope: !5571, file: !464, line: 525, column: 60)
!5571 = distinct !DILexicalBlock(scope: !5567, file: !464, line: 525, column: 9)
!5572 = !DILocation(line: 525, column: 42, scope: !5571)
!5573 = !DILocation(line: 525, column: 9, scope: !5567)
!5574 = !DILocation(line: 527, column: 39, scope: !5575)
!5575 = distinct !DILexicalBlock(scope: !5570, file: !464, line: 527, column: 13)
!5576 = !DILocation(line: 527, column: 18, scope: !5575)
!5577 = !DILocation(line: 527, column: 13, scope: !5570)
!5578 = !DILocation(line: 528, column: 89, scope: !5579)
!5579 = distinct !DILexicalBlock(scope: !5575, file: !464, line: 527, column: 49)
!5580 = !DILocation(line: 528, column: 13, scope: !5579)
!5581 = !DILocation(line: 529, column: 9, scope: !5579)
!5582 = !DILocation(line: 531, column: 32, scope: !5567)
!5583 = !DILocation(line: 531, column: 5, scope: !5567)
!5584 = !DILocation(line: 532, column: 1, scope: !5567)
!5585 = distinct !DISubprogram(name: "hal_uart_check_irq_disable", scope: !464, file: !464, line: 464, type: !5586, scopeLine: 465, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !463, retainedNodes: !5588)
!5586 = !DISubroutineType(types: !5587)
!5587 = !{null, !3126, !222}
!5588 = !{!5589, !5590, !5591, !5592, !5593, !5595}
!5589 = !DILocalVariable(name: "uart_port", arg: 1, scope: !5585, file: !464, line: 464, type: !3126)
!5590 = !DILocalVariable(name: "is_rx", arg: 2, scope: !5585, file: !464, line: 464, type: !222)
!5591 = !DILocalVariable(name: "avail_size", scope: !5585, file: !464, line: 466, type: !92)
!5592 = !DILocalVariable(name: "avail_space", scope: !5585, file: !464, line: 466, type: !92)
!5593 = !DILocalVariable(name: "dma_config", scope: !5585, file: !464, line: 467, type: !5594)
!5594 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !560, size: 32)
!5595 = !DILocalVariable(name: "ch", scope: !5585, file: !464, line: 468, type: !5350)
!5596 = !DILocation(line: 0, scope: !5585)
!5597 = !DILocation(line: 466, column: 5, scope: !5585)
!5598 = !DILocation(line: 471, column: 9, scope: !5585)
!5599 = !DILocation(line: 472, column: 9, scope: !5600)
!5600 = distinct !DILexicalBlock(scope: !5601, file: !464, line: 471, column: 16)
!5601 = distinct !DILexicalBlock(scope: !5585, file: !464, line: 471, column: 9)
!5602 = !DILocation(line: 473, column: 13, scope: !5603)
!5603 = distinct !DILexicalBlock(scope: !5600, file: !464, line: 473, column: 13)
!5604 = !DILocation(line: 473, column: 39, scope: !5603)
!5605 = !DILocation(line: 473, column: 24, scope: !5603)
!5606 = !DILocation(line: 473, column: 13, scope: !5600)
!5607 = !DILocation(line: 478, column: 9, scope: !5608)
!5608 = distinct !DILexicalBlock(scope: !5601, file: !464, line: 477, column: 12)
!5609 = !DILocation(line: 479, column: 13, scope: !5610)
!5610 = distinct !DILexicalBlock(scope: !5608, file: !464, line: 479, column: 13)
!5611 = !DILocation(line: 479, column: 40, scope: !5610)
!5612 = !DILocation(line: 479, column: 77, scope: !5610)
!5613 = !DILocation(line: 479, column: 63, scope: !5610)
!5614 = !DILocation(line: 479, column: 25, scope: !5610)
!5615 = !DILocation(line: 479, column: 13, scope: !5608)
!5616 = !DILocation(line: 0, scope: !5601)
!5617 = !DILocation(line: 484, column: 1, scope: !5585)
!5618 = distinct !DISubprogram(name: "hal_uart_receive_callback0", scope: !464, file: !464, line: 486, type: !75, scopeLine: 487, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !463, retainedNodes: !5619)
!5619 = !{!5620}
!5620 = !DILocalVariable(name: "callback_context", scope: !5621, file: !464, line: 490, type: !5553)
!5621 = distinct !DILexicalBlock(scope: !5622, file: !464, line: 489, column: 70)
!5622 = distinct !DILexicalBlock(scope: !5618, file: !464, line: 488, column: 9)
!5623 = !DILocation(line: 488, column: 43, scope: !5622)
!5624 = !DILocation(line: 488, column: 61, scope: !5622)
!5625 = !DILocation(line: 489, column: 14, scope: !5622)
!5626 = !DILocation(line: 489, column: 63, scope: !5622)
!5627 = !DILocation(line: 488, column: 9, scope: !5618)
!5628 = !DILocation(line: 491, column: 39, scope: !5629)
!5629 = distinct !DILexicalBlock(scope: !5621, file: !464, line: 491, column: 13)
!5630 = !DILocation(line: 491, column: 18, scope: !5629)
!5631 = !DILocation(line: 491, column: 13, scope: !5621)
!5632 = !DILocation(line: 492, column: 88, scope: !5633)
!5633 = distinct !DILexicalBlock(scope: !5629, file: !464, line: 491, column: 49)
!5634 = !DILocation(line: 492, column: 13, scope: !5633)
!5635 = !DILocation(line: 493, column: 9, scope: !5633)
!5636 = !DILocation(line: 495, column: 32, scope: !5618)
!5637 = !DILocation(line: 495, column: 5, scope: !5618)
!5638 = !DILocation(line: 496, column: 1, scope: !5618)
!5639 = distinct !DISubprogram(name: "hal_uart_receive_callback1", scope: !464, file: !464, line: 499, type: !75, scopeLine: 500, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !463, retainedNodes: !5640)
!5640 = !{!5641}
!5641 = !DILocalVariable(name: "callback_context", scope: !5642, file: !464, line: 503, type: !5553)
!5642 = distinct !DILexicalBlock(scope: !5643, file: !464, line: 502, column: 70)
!5643 = distinct !DILexicalBlock(scope: !5639, file: !464, line: 501, column: 9)
!5644 = !DILocation(line: 501, column: 43, scope: !5643)
!5645 = !DILocation(line: 501, column: 61, scope: !5643)
!5646 = !DILocation(line: 502, column: 14, scope: !5643)
!5647 = !DILocation(line: 502, column: 63, scope: !5643)
!5648 = !DILocation(line: 501, column: 9, scope: !5639)
!5649 = !DILocation(line: 504, column: 39, scope: !5650)
!5650 = distinct !DILexicalBlock(scope: !5642, file: !464, line: 504, column: 13)
!5651 = !DILocation(line: 504, column: 18, scope: !5650)
!5652 = !DILocation(line: 504, column: 13, scope: !5642)
!5653 = !DILocation(line: 505, column: 88, scope: !5654)
!5654 = distinct !DILexicalBlock(scope: !5650, file: !464, line: 504, column: 49)
!5655 = !DILocation(line: 505, column: 13, scope: !5654)
!5656 = !DILocation(line: 506, column: 9, scope: !5654)
!5657 = !DILocation(line: 508, column: 32, scope: !5639)
!5658 = !DILocation(line: 508, column: 5, scope: !5639)
!5659 = !DILocation(line: 509, column: 1, scope: !5639)
!5660 = distinct !DISubprogram(name: "hal_uart_set_baudrate", scope: !464, file: !464, line: 582, type: !5661, scopeLine: 583, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !463, retainedNodes: !5663)
!5661 = !DISubroutineType(types: !5662)
!5662 = !{!5139, !524, !539}
!5663 = !{!5664, !5665}
!5664 = !DILocalVariable(name: "uart_port", arg: 1, scope: !5660, file: !464, line: 582, type: !524)
!5665 = !DILocalVariable(name: "baudrate", arg: 2, scope: !5660, file: !464, line: 582, type: !539)
!5666 = !DILocation(line: 0, scope: !5660)
!5667 = !DILocation(line: 584, column: 11, scope: !5668)
!5668 = distinct !DILexicalBlock(scope: !5660, file: !464, line: 584, column: 9)
!5669 = !DILocation(line: 584, column: 46, scope: !5668)
!5670 = !DILocation(line: 588, column: 37, scope: !5660)
!5671 = !DILocation(line: 588, column: 50, scope: !5660)
!5672 = !DILocation(line: 588, column: 59, scope: !5660)
!5673 = !DILocation(line: 589, column: 12, scope: !5660)
!5674 = !DILocation(line: 589, column: 5, scope: !5660)
!5675 = !DILocation(line: 590, column: 1, scope: !5660)
!5676 = distinct !DISubprogram(name: "hal_uart_set_dma", scope: !464, file: !464, line: 608, type: !5677, scopeLine: 609, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !463, retainedNodes: !5681)
!5677 = !DISubroutineType(types: !5678)
!5678 = !{!5139, !524, !5679}
!5679 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5680, size: 32)
!5680 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !560)
!5681 = !{!5682, !5683}
!5682 = !DILocalVariable(name: "uart_port", arg: 1, scope: !5676, file: !464, line: 608, type: !524)
!5683 = !DILocalVariable(name: "uart_dma_config", arg: 2, scope: !5676, file: !464, line: 608, type: !5679)
!5684 = !DILocation(line: 0, scope: !5676)
!5685 = !DILocation(line: 610, column: 10, scope: !5686)
!5686 = distinct !DILexicalBlock(scope: !5676, file: !464, line: 610, column: 9)
!5687 = !DILocation(line: 610, column: 9, scope: !5676)
!5688 = !DILocation(line: 614, column: 10, scope: !5689)
!5689 = distinct !DILexicalBlock(scope: !5676, file: !464, line: 614, column: 9)
!5690 = !DILocation(line: 614, column: 9, scope: !5676)
!5691 = !DILocation(line: 618, column: 37, scope: !5676)
!5692 = !DILocation(line: 618, column: 56, scope: !5676)
!5693 = !DILocation(line: 619, column: 45, scope: !5676)
!5694 = !DILocation(line: 619, column: 12, scope: !5676)
!5695 = !DILocation(line: 620, column: 12, scope: !5676)
!5696 = !DILocation(line: 619, column: 5, scope: !5676)
!5697 = !DILocation(line: 621, column: 5, scope: !5676)
!5698 = !DILocation(line: 622, column: 5, scope: !5676)
!5699 = !DILocation(line: 623, column: 33, scope: !5676)
!5700 = !DILocation(line: 624, column: 50, scope: !5676)
!5701 = !DILocation(line: 625, column: 50, scope: !5676)
!5702 = !DILocation(line: 626, column: 50, scope: !5676)
!5703 = !DILocation(line: 627, column: 50, scope: !5676)
!5704 = !DILocation(line: 628, column: 33, scope: !5676)
!5705 = !DILocation(line: 623, column: 5, scope: !5676)
!5706 = !DILocation(line: 630, column: 50, scope: !5676)
!5707 = !DILocation(line: 631, column: 50, scope: !5676)
!5708 = !DILocation(line: 632, column: 50, scope: !5676)
!5709 = !DILocation(line: 629, column: 5, scope: !5676)
!5710 = !DILocation(line: 634, column: 5, scope: !5676)
!5711 = !DILocation(line: 635, column: 1, scope: !5676)
!5712 = distinct !DISubprogram(name: "hal_uart_is_dma_config_valid", scope: !464, file: !464, line: 112, type: !5713, scopeLine: 113, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !463, retainedNodes: !5715)
!5713 = !DISubroutineType(types: !5714)
!5714 = !{!222, !5679}
!5715 = !{!5716}
!5716 = !DILocalVariable(name: "dma_config", arg: 1, scope: !5712, file: !464, line: 112, type: !5679)
!5717 = !DILocation(line: 0, scope: !5712)
!5718 = !DILocation(line: 114, column: 14, scope: !5719)
!5719 = distinct !DILexicalBlock(scope: !5712, file: !464, line: 114, column: 9)
!5720 = !DILocation(line: 114, column: 9, scope: !5712)
!5721 = !DILocation(line: 117, column: 29, scope: !5722)
!5722 = distinct !DILexicalBlock(scope: !5712, file: !464, line: 117, column: 9)
!5723 = !DILocation(line: 117, column: 14, scope: !5722)
!5724 = !DILocation(line: 117, column: 9, scope: !5712)
!5725 = !DILocation(line: 120, column: 21, scope: !5726)
!5726 = distinct !DILexicalBlock(scope: !5712, file: !464, line: 120, column: 9)
!5727 = !DILocation(line: 120, column: 61, scope: !5726)
!5728 = !DILocation(line: 120, column: 47, scope: !5726)
!5729 = !DILocation(line: 120, column: 9, scope: !5712)
!5730 = !DILocation(line: 123, column: 61, scope: !5731)
!5731 = distinct !DILexicalBlock(scope: !5712, file: !464, line: 123, column: 9)
!5732 = !DILocation(line: 123, column: 47, scope: !5731)
!5733 = !DILocation(line: 123, column: 9, scope: !5712)
!5734 = !DILocation(line: 126, column: 29, scope: !5735)
!5735 = distinct !DILexicalBlock(scope: !5712, file: !464, line: 126, column: 9)
!5736 = !DILocation(line: 126, column: 14, scope: !5735)
!5737 = !DILocation(line: 126, column: 9, scope: !5712)
!5738 = !DILocation(line: 129, column: 21, scope: !5739)
!5739 = distinct !DILexicalBlock(scope: !5712, file: !464, line: 129, column: 9)
!5740 = !DILocation(line: 129, column: 58, scope: !5739)
!5741 = !DILocation(line: 129, column: 44, scope: !5739)
!5742 = !DILocation(line: 129, column: 9, scope: !5712)
!5743 = !DILocation(line: 136, column: 1, scope: !5712)
!5744 = distinct !DISubprogram(name: "hal_uart_translate_timeout", scope: !464, file: !464, line: 182, type: !4669, scopeLine: 183, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !463, retainedNodes: !5745)
!5745 = !{!5746, !5747}
!5746 = !DILocalVariable(name: "timeout_us", arg: 1, scope: !5744, file: !464, line: 182, type: !92)
!5747 = !DILocalVariable(name: "ticks_per_us", scope: !5744, file: !464, line: 184, type: !92)
!5748 = !DILocation(line: 0, scope: !5744)
!5749 = !DILocation(line: 186, column: 20, scope: !5744)
!5750 = !DILocation(line: 186, column: 39, scope: !5744)
!5751 = !DILocation(line: 188, column: 25, scope: !5744)
!5752 = !DILocation(line: 188, column: 5, scope: !5744)
!5753 = distinct !DISubprogram(name: "hal_uart_set_hardware_flowcontrol", scope: !464, file: !464, line: 637, type: !5281, scopeLine: 638, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !463, retainedNodes: !5754)
!5754 = !{!5755, !5756}
!5755 = !DILocalVariable(name: "uart_port", arg: 1, scope: !5753, file: !464, line: 637, type: !524)
!5756 = !DILocalVariable(name: "int_no", scope: !5753, file: !464, line: 639, type: !3126)
!5757 = !DILocation(line: 0, scope: !5753)
!5758 = !DILocation(line: 641, column: 10, scope: !5759)
!5759 = distinct !DILexicalBlock(scope: !5753, file: !464, line: 641, column: 9)
!5760 = !DILocation(line: 641, column: 9, scope: !5753)
!5761 = !DILocation(line: 645, column: 14, scope: !5753)
!5762 = !DILocation(line: 646, column: 5, scope: !5753)
!5763 = !DILocation(line: 648, column: 5, scope: !5753)
!5764 = !DILocation(line: 649, column: 1, scope: !5753)
!5765 = distinct !DISubprogram(name: "hal_uart_set_software_flowcontrol", scope: !464, file: !464, line: 651, type: !5766, scopeLine: 655, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !463, retainedNodes: !5768)
!5766 = !DISubroutineType(types: !5767)
!5767 = !{!5139, !524, !267, !267, !267}
!5768 = !{!5769, !5770, !5771, !5772, !5773}
!5769 = !DILocalVariable(name: "uart_port", arg: 1, scope: !5765, file: !464, line: 651, type: !524)
!5770 = !DILocalVariable(name: "xon", arg: 2, scope: !5765, file: !464, line: 652, type: !267)
!5771 = !DILocalVariable(name: "xoff", arg: 3, scope: !5765, file: !464, line: 653, type: !267)
!5772 = !DILocalVariable(name: "escape_character", arg: 4, scope: !5765, file: !464, line: 654, type: !267)
!5773 = !DILocalVariable(name: "int_no", scope: !5765, file: !464, line: 656, type: !3126)
!5774 = !DILocation(line: 0, scope: !5765)
!5775 = !DILocation(line: 658, column: 10, scope: !5776)
!5776 = distinct !DILexicalBlock(scope: !5765, file: !464, line: 658, column: 9)
!5777 = !DILocation(line: 658, column: 9, scope: !5765)
!5778 = !DILocation(line: 662, column: 14, scope: !5765)
!5779 = !DILocation(line: 663, column: 5, scope: !5765)
!5780 = !DILocation(line: 665, column: 5, scope: !5765)
!5781 = !DILocation(line: 666, column: 1, scope: !5765)
!5782 = distinct !DISubprogram(name: "hal_uart_disable_flowcontrol", scope: !464, file: !464, line: 668, type: !5281, scopeLine: 669, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !463, retainedNodes: !5783)
!5783 = !{!5784, !5785}
!5784 = !DILocalVariable(name: "uart_port", arg: 1, scope: !5782, file: !464, line: 668, type: !524)
!5785 = !DILocalVariable(name: "int_no", scope: !5782, file: !464, line: 670, type: !3126)
!5786 = !DILocation(line: 0, scope: !5782)
!5787 = !DILocation(line: 672, column: 10, scope: !5788)
!5788 = distinct !DILexicalBlock(scope: !5782, file: !464, line: 672, column: 9)
!5789 = !DILocation(line: 672, column: 9, scope: !5782)
!5790 = !DILocation(line: 676, column: 14, scope: !5782)
!5791 = !DILocation(line: 677, column: 5, scope: !5782)
!5792 = !DILocation(line: 679, column: 5, scope: !5782)
!5793 = !DILocation(line: 680, column: 1, scope: !5782)
!5794 = distinct !DISubprogram(name: "hal_uart_set_dma_timeout", scope: !464, file: !464, line: 683, type: !5795, scopeLine: 684, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !463, retainedNodes: !5797)
!5795 = !DISubroutineType(types: !5796)
!5796 = !{!5139, !524, !92}
!5797 = !{!5798, !5799}
!5798 = !DILocalVariable(name: "uart_port", arg: 1, scope: !5794, file: !464, line: 683, type: !524)
!5799 = !DILocalVariable(name: "timeout", arg: 2, scope: !5794, file: !464, line: 683, type: !92)
!5800 = !DILocation(line: 0, scope: !5794)
!5801 = !DILocation(line: 685, column: 10, scope: !5802)
!5802 = distinct !DILexicalBlock(scope: !5794, file: !464, line: 685, column: 9)
!5803 = !DILocation(line: 685, column: 9, scope: !5794)
!5804 = !DILocation(line: 689, column: 19, scope: !5805)
!5805 = distinct !DILexicalBlock(scope: !5794, file: !464, line: 689, column: 9)
!5806 = !DILocation(line: 0, scope: !5805)
!5807 = !DILocation(line: 696, column: 1, scope: !5794)
!5808 = distinct !DISubprogram(name: "__io_putchar", scope: !1148, file: !1148, line: 58, type: !5809, scopeLine: 62, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !1147, retainedNodes: !5811)
!5809 = !DISubroutineType(types: !5810)
!5810 = !{!13, !13}
!5811 = !{!5812}
!5812 = !DILocalVariable(name: "ch", arg: 1, scope: !5808, file: !1148, line: 58, type: !13)
!5813 = !DILocation(line: 0, scope: !5808)
!5814 = !DILocation(line: 65, column: 35, scope: !5808)
!5815 = !DILocation(line: 65, column: 5, scope: !5808)
!5816 = !DILocation(line: 66, column: 5, scope: !5808)
!5817 = distinct !DISubprogram(name: "main", scope: !1148, file: !1148, line: 138, type: !3102, scopeLine: 139, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !1147, retainedNodes: !1341)
!5818 = !DILocation(line: 141, column: 5, scope: !5817)
!5819 = !DILocation(line: 144, column: 5, scope: !5817)
!5820 = !DILocation(line: 319, column: 3, scope: !5821, inlinedAt: !5822)
!5821 = distinct !DISubprogram(name: "__enable_irq", scope: !2477, file: !2477, line: 317, type: !75, scopeLine: 318, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1147, retainedNodes: !1341)
!5822 = distinct !DILocation(line: 147, column: 5, scope: !5817)
!5823 = !{i64 500735}
!5824 = !DILocation(line: 496, column: 3, scope: !5825, inlinedAt: !5826)
!5825 = distinct !DISubprogram(name: "__enable_fault_irq", scope: !2477, file: !2477, line: 494, type: !75, scopeLine: 495, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1147, retainedNodes: !1341)
!5826 = distinct !DILocation(line: 148, column: 5, scope: !5817)
!5827 = !{i64 505010}
!5828 = !DILocation(line: 151, column: 5, scope: !5817)
!5829 = !DILocation(line: 153, column: 5, scope: !5817)
!5830 = !DILocation(line: 154, column: 5, scope: !5817)
!5831 = !DILocation(line: 156, column: 5, scope: !5817)
!5832 = !DILocation(line: 158, column: 5, scope: !5817)
!5833 = !DILocation(line: 158, column: 5, scope: !5834)
!5834 = distinct !DILexicalBlock(scope: !5835, file: !1148, line: 158, column: 5)
!5835 = distinct !DILexicalBlock(scope: !5817, file: !1148, line: 158, column: 5)
!5836 = distinct !{!5836, !5837, !5838}
!5837 = !DILocation(line: 158, column: 5, scope: !5835)
!5838 = !DILocation(line: 158, column: 13, scope: !5835)
!5839 = distinct !DISubprogram(name: "SystemClock_Config", scope: !1148, file: !1148, line: 95, type: !75, scopeLine: 96, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1147, retainedNodes: !1341)
!5840 = !DILocation(line: 97, column: 5, scope: !5839)
!5841 = !DILocation(line: 98, column: 1, scope: !5839)
!5842 = distinct !DISubprogram(name: "prvSetupHardware", scope: !1148, file: !1148, line: 105, type: !75, scopeLine: 106, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1147, retainedNodes: !1341)
!5843 = !DILocation(line: 108, column: 5, scope: !5842)
!5844 = !DILocation(line: 109, column: 1, scope: !5842)
!5845 = distinct !DISubprogram(name: "pwm_generate_waveform", scope: !1148, file: !1148, line: 115, type: !75, scopeLine: 116, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1147, retainedNodes: !5846)
!5846 = !{!5847, !5848}
!5847 = !DILocalVariable(name: "total_count", scope: !5845, file: !1148, line: 118, type: !92)
!5848 = !DILocalVariable(name: "duty_cycle", scope: !5845, file: !1148, line: 119, type: !92)
!5849 = !DILocation(line: 118, column: 5, scope: !5845)
!5850 = !DILocation(line: 0, scope: !5845)
!5851 = !DILocation(line: 118, column: 14, scope: !5845)
!5852 = !DILocation(line: 121, column: 5, scope: !5845)
!5853 = !DILocation(line: 122, column: 5, scope: !5845)
!5854 = !DILocation(line: 125, column: 5, scope: !5845)
!5855 = !DILocation(line: 127, column: 5, scope: !5845)
!5856 = !DILocation(line: 129, column: 5, scope: !5845)
!5857 = !DILocation(line: 131, column: 19, scope: !5845)
!5858 = !DILocation(line: 131, column: 31, scope: !5845)
!5859 = !DILocation(line: 131, column: 37, scope: !5845)
!5860 = !DILocation(line: 132, column: 5, scope: !5845)
!5861 = !DILocation(line: 133, column: 5, scope: !5845)
!5862 = !DILocation(line: 134, column: 5, scope: !5845)
!5863 = !DILocation(line: 135, column: 5, scope: !5845)
!5864 = !DILocation(line: 136, column: 1, scope: !5845)
!5865 = distinct !DISubprogram(name: "plain_log_uart_init", scope: !1148, file: !1148, line: 74, type: !75, scopeLine: 75, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1147, retainedNodes: !5866)
!5866 = !{!5867}
!5867 = !DILocalVariable(name: "uart_config", scope: !5865, file: !1148, line: 76, type: !5868)
!5868 = !DIDerivedType(tag: DW_TAG_typedef, name: "hal_uart_config_t", file: !467, line: 378, baseType: !5869)
!5869 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !467, line: 373, size: 128, elements: !5870)
!5870 = !{!5871, !5872, !5873, !5874}
!5871 = !DIDerivedType(tag: DW_TAG_member, name: "baudrate", scope: !5869, file: !467, line: 374, baseType: !539, size: 32)
!5872 = !DIDerivedType(tag: DW_TAG_member, name: "word_length", scope: !5869, file: !467, line: 375, baseType: !541, size: 32, offset: 32)
!5873 = !DIDerivedType(tag: DW_TAG_member, name: "stop_bit", scope: !5869, file: !467, line: 376, baseType: !543, size: 32, offset: 64)
!5874 = !DIDerivedType(tag: DW_TAG_member, name: "parity", scope: !5869, file: !467, line: 377, baseType: !545, size: 32, offset: 96)
!5875 = !DILocation(line: 76, column: 5, scope: !5865)
!5876 = !DILocation(line: 76, column: 23, scope: !5865)
!5877 = !DILocation(line: 78, column: 5, scope: !5865)
!5878 = !DILocation(line: 79, column: 5, scope: !5865)
!5879 = !DILocation(line: 80, column: 5, scope: !5865)
!5880 = !DILocation(line: 81, column: 5, scope: !5865)
!5881 = !DILocation(line: 84, column: 17, scope: !5865)
!5882 = !DILocation(line: 84, column: 26, scope: !5865)
!5883 = !DILocation(line: 85, column: 17, scope: !5865)
!5884 = !DILocation(line: 85, column: 29, scope: !5865)
!5885 = !DILocation(line: 86, column: 17, scope: !5865)
!5886 = !DILocation(line: 86, column: 26, scope: !5865)
!5887 = !DILocation(line: 87, column: 17, scope: !5865)
!5888 = !DILocation(line: 87, column: 24, scope: !5865)
!5889 = !DILocation(line: 88, column: 5, scope: !5865)
!5890 = !DILocation(line: 89, column: 1, scope: !5865)
!5891 = distinct !DISubprogram(name: "SysTick_Set", scope: !574, file: !574, line: 70, type: !4669, scopeLine: 71, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !573, retainedNodes: !5892)
!5892 = !{!5893, !5894}
!5893 = !DILocalVariable(name: "ticks", arg: 1, scope: !5891, file: !574, line: 70, type: !92)
!5894 = !DILocalVariable(name: "val", scope: !5891, file: !574, line: 72, type: !92)
!5895 = !DILocation(line: 0, scope: !5891)
!5896 = !DILocation(line: 74, column: 16, scope: !5897)
!5897 = distinct !DILexicalBlock(scope: !5891, file: !574, line: 74, column: 9)
!5898 = !DILocation(line: 74, column: 21, scope: !5897)
!5899 = !DILocation(line: 74, column: 9, scope: !5891)
!5900 = !DILocation(line: 78, column: 20, scope: !5891)
!5901 = !DILocation(line: 80, column: 19, scope: !5891)
!5902 = !DILocation(line: 83, column: 20, scope: !5891)
!5903 = !DILocation(line: 84, column: 20, scope: !5891)
!5904 = !DILocation(line: 86, column: 19, scope: !5891)
!5905 = !DILocation(line: 88, column: 5, scope: !5891)
!5906 = !DILocation(line: 89, column: 1, scope: !5891)
!5907 = distinct !DISubprogram(name: "SysInitStatus_Set", scope: !574, file: !574, line: 98, type: !75, scopeLine: 99, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !573, retainedNodes: !1341)
!5908 = !DILocation(line: 100, column: 28, scope: !5907)
!5909 = !DILocation(line: 101, column: 1, scope: !5907)
!5910 = distinct !DISubprogram(name: "SysInitStatus_Query", scope: !574, file: !574, line: 110, type: !2471, scopeLine: 111, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !573, retainedNodes: !1341)
!5911 = !DILocation(line: 112, column: 12, scope: !5910)
!5912 = !DILocation(line: 112, column: 5, scope: !5910)
!5913 = distinct !DISubprogram(name: "SystemCoreClockUpdate", scope: !574, file: !574, line: 122, type: !75, scopeLine: 123, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !573, retainedNodes: !1341)
!5914 = !DILocation(line: 124, column: 23, scope: !5913)
!5915 = !DILocation(line: 124, column: 21, scope: !5913)
!5916 = !DILocation(line: 125, column: 1, scope: !5913)
!5917 = distinct !DISubprogram(name: "SystemInit", scope: !574, file: !574, line: 136, type: !75, scopeLine: 137, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !573, retainedNodes: !1341)
!5918 = !DILocation(line: 140, column: 16, scope: !5917)
!5919 = !DILocation(line: 144, column: 16, scope: !5917)
!5920 = !DILocation(line: 147, column: 16, scope: !5917)
!5921 = !DILocation(line: 150, column: 1, scope: !5917)
!5922 = distinct !DISubprogram(name: "CachePreInit", scope: !574, file: !574, line: 158, type: !75, scopeLine: 159, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !573, retainedNodes: !1341)
!5923 = !DILocation(line: 161, column: 22, scope: !5922)
!5924 = !DILocation(line: 164, column: 21, scope: !5922)
!5925 = !DILocation(line: 167, column: 21, scope: !5922)
!5926 = !DILocation(line: 170, column: 29, scope: !5922)
!5927 = !DILocation(line: 171, column: 33, scope: !5922)
!5928 = !DILocation(line: 173, column: 28, scope: !5922)
!5929 = !DILocation(line: 178, column: 30, scope: !5922)
!5930 = !DILocation(line: 192, column: 1, scope: !5922)
!5931 = distinct !DISubprogram(name: "_close", scope: !634, file: !634, line: 11, type: !5809, scopeLine: 12, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !831, retainedNodes: !5932)
!5932 = !{!5933}
!5933 = !DILocalVariable(name: "file", arg: 1, scope: !5931, file: !634, line: 11, type: !13)
!5934 = !DILocation(line: 0, scope: !5931)
!5935 = !DILocation(line: 13, column: 5, scope: !5931)
!5936 = distinct !DISubprogram(name: "_fstat", scope: !634, file: !634, line: 16, type: !5937, scopeLine: 17, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !831, retainedNodes: !5985)
!5937 = !DISubroutineType(types: !5938)
!5938 = !{!13, !13, !5939}
!5939 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5940, size: 32)
!5940 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "stat", file: !5941, line: 27, size: 704, elements: !5942)
!5941 = !DIFile(filename: "gcc-arm-none-eabi-10.3-2021.10/bin/../lib/gcc/arm-none-eabi/10.3.1/../../../../arm-none-eabi/include/sys/stat.h", directory: "/home/mjshen/RTOSExploration")
!5942 = !{!5943, !5946, !5949, !5952, !5955, !5958, !5961, !5962, !5965, !5975, !5976, !5977, !5980, !5983}
!5943 = !DIDerivedType(tag: DW_TAG_member, name: "st_dev", scope: !5940, file: !5941, line: 29, baseType: !5944, size: 16)
!5944 = !DIDerivedType(tag: DW_TAG_typedef, name: "dev_t", file: !638, line: 161, baseType: !5945)
!5945 = !DIDerivedType(tag: DW_TAG_typedef, name: "__dev_t", file: !680, line: 56, baseType: !655)
!5946 = !DIDerivedType(tag: DW_TAG_member, name: "st_ino", scope: !5940, file: !5941, line: 30, baseType: !5947, size: 16, offset: 16)
!5947 = !DIDerivedType(tag: DW_TAG_typedef, name: "ino_t", file: !638, line: 139, baseType: !5948)
!5948 = !DIDerivedType(tag: DW_TAG_typedef, name: "__ino_t", file: !680, line: 75, baseType: !132)
!5949 = !DIDerivedType(tag: DW_TAG_member, name: "st_mode", scope: !5940, file: !5941, line: 31, baseType: !5950, size: 32, offset: 32)
!5950 = !DIDerivedType(tag: DW_TAG_typedef, name: "mode_t", file: !638, line: 189, baseType: !5951)
!5951 = !DIDerivedType(tag: DW_TAG_typedef, name: "__mode_t", file: !680, line: 90, baseType: !94)
!5952 = !DIDerivedType(tag: DW_TAG_member, name: "st_nlink", scope: !5940, file: !5941, line: 32, baseType: !5953, size: 16, offset: 64)
!5953 = !DIDerivedType(tag: DW_TAG_typedef, name: "nlink_t", file: !638, line: 194, baseType: !5954)
!5954 = !DIDerivedType(tag: DW_TAG_typedef, name: "__nlink_t", file: !680, line: 209, baseType: !132)
!5955 = !DIDerivedType(tag: DW_TAG_member, name: "st_uid", scope: !5940, file: !5941, line: 33, baseType: !5956, size: 16, offset: 80)
!5956 = !DIDerivedType(tag: DW_TAG_typedef, name: "uid_t", file: !638, line: 165, baseType: !5957)
!5957 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uid_t", file: !680, line: 60, baseType: !132)
!5958 = !DIDerivedType(tag: DW_TAG_member, name: "st_gid", scope: !5940, file: !5941, line: 34, baseType: !5959, size: 16, offset: 96)
!5959 = !DIDerivedType(tag: DW_TAG_typedef, name: "gid_t", file: !638, line: 169, baseType: !5960)
!5960 = !DIDerivedType(tag: DW_TAG_typedef, name: "__gid_t", file: !680, line: 63, baseType: !132)
!5961 = !DIDerivedType(tag: DW_TAG_member, name: "st_rdev", scope: !5940, file: !5941, line: 35, baseType: !5944, size: 16, offset: 112)
!5962 = !DIDerivedType(tag: DW_TAG_member, name: "st_size", scope: !5940, file: !5941, line: 36, baseType: !5963, size: 32, offset: 128)
!5963 = !DIDerivedType(tag: DW_TAG_typedef, name: "off_t", file: !638, line: 157, baseType: !5964)
!5964 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off_t", file: !680, line: 102, baseType: !698)
!5965 = !DIDerivedType(tag: DW_TAG_member, name: "st_atim", scope: !5940, file: !5941, line: 42, baseType: !5966, size: 128, offset: 192)
!5966 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timespec", file: !5967, line: 47, size: 128, elements: !5968)
!5967 = !DIFile(filename: "gcc-arm-none-eabi-10.3-2021.10/bin/../lib/gcc/arm-none-eabi/10.3.1/../../../../arm-none-eabi/include/sys/_timespec.h", directory: "/home/mjshen/RTOSExploration")
!5968 = !{!5969, !5974}
!5969 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !5966, file: !5967, line: 48, baseType: !5970, size: 64)
!5970 = !DIDerivedType(tag: DW_TAG_typedef, name: "time_t", file: !5971, line: 42, baseType: !5972)
!5971 = !DIFile(filename: "gcc-arm-none-eabi-10.3-2021.10/bin/../lib/gcc/arm-none-eabi/10.3.1/../../../../arm-none-eabi/include/sys/_timeval.h", directory: "/home/mjshen/RTOSExploration")
!5972 = !DIDerivedType(tag: DW_TAG_typedef, name: "__int_least64_t", file: !95, line: 200, baseType: !5973)
!5973 = !DIBasicType(name: "long long", size: 64, encoding: DW_ATE_signed)
!5974 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !5966, file: !5967, line: 49, baseType: !681, size: 32, offset: 64)
!5975 = !DIDerivedType(tag: DW_TAG_member, name: "st_mtim", scope: !5940, file: !5941, line: 43, baseType: !5966, size: 128, offset: 320)
!5976 = !DIDerivedType(tag: DW_TAG_member, name: "st_ctim", scope: !5940, file: !5941, line: 44, baseType: !5966, size: 128, offset: 448)
!5977 = !DIDerivedType(tag: DW_TAG_member, name: "st_blksize", scope: !5940, file: !5941, line: 45, baseType: !5978, size: 32, offset: 576)
!5978 = !DIDerivedType(tag: DW_TAG_typedef, name: "blksize_t", file: !638, line: 102, baseType: !5979)
!5979 = !DIDerivedType(tag: DW_TAG_typedef, name: "__blksize_t", file: !680, line: 34, baseType: !681)
!5980 = !DIDerivedType(tag: DW_TAG_member, name: "st_blocks", scope: !5940, file: !5941, line: 46, baseType: !5981, size: 32, offset: 608)
!5981 = !DIDerivedType(tag: DW_TAG_typedef, name: "blkcnt_t", file: !638, line: 97, baseType: !5982)
!5982 = !DIDerivedType(tag: DW_TAG_typedef, name: "__blkcnt_t", file: !680, line: 30, baseType: !681)
!5983 = !DIDerivedType(tag: DW_TAG_member, name: "st_spare4", scope: !5940, file: !5941, line: 48, baseType: !5984, size: 64, offset: 640)
!5984 = !DICompositeType(tag: DW_TAG_array_type, baseType: !681, size: 64, elements: !300)
!5985 = !{!5986, !5987}
!5986 = !DILocalVariable(name: "file", arg: 1, scope: !5936, file: !634, line: 16, type: !13)
!5987 = !DILocalVariable(name: "st", arg: 2, scope: !5936, file: !634, line: 16, type: !5939)
!5988 = !DILocation(line: 0, scope: !5936)
!5989 = !DILocation(line: 18, column: 5, scope: !5936)
!5990 = distinct !DISubprogram(name: "_isatty", scope: !634, file: !634, line: 22, type: !5809, scopeLine: 23, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !831, retainedNodes: !5991)
!5991 = !{!5992}
!5992 = !DILocalVariable(name: "file", arg: 1, scope: !5990, file: !634, line: 22, type: !13)
!5993 = !DILocation(line: 0, scope: !5990)
!5994 = !DILocation(line: 24, column: 5, scope: !5990)
!5995 = distinct !DISubprogram(name: "_lseek", scope: !634, file: !634, line: 27, type: !5996, scopeLine: 28, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !831, retainedNodes: !5998)
!5996 = !DISubroutineType(types: !5997)
!5997 = !{!13, !13, !13, !13}
!5998 = !{!5999, !6000, !6001}
!5999 = !DILocalVariable(name: "file", arg: 1, scope: !5995, file: !634, line: 27, type: !13)
!6000 = !DILocalVariable(name: "ptr", arg: 2, scope: !5995, file: !634, line: 27, type: !13)
!6001 = !DILocalVariable(name: "dir", arg: 3, scope: !5995, file: !634, line: 27, type: !13)
!6002 = !DILocation(line: 0, scope: !5995)
!6003 = !DILocation(line: 29, column: 5, scope: !5995)
!6004 = distinct !DISubprogram(name: "_open", scope: !634, file: !634, line: 32, type: !6005, scopeLine: 33, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !831, retainedNodes: !6007)
!6005 = !DISubroutineType(types: !6006)
!6006 = !{!13, !673, !13, !13}
!6007 = !{!6008, !6009, !6010}
!6008 = !DILocalVariable(name: "name", arg: 1, scope: !6004, file: !634, line: 32, type: !673)
!6009 = !DILocalVariable(name: "flags", arg: 2, scope: !6004, file: !634, line: 32, type: !13)
!6010 = !DILocalVariable(name: "mode", arg: 3, scope: !6004, file: !634, line: 32, type: !13)
!6011 = !DILocation(line: 0, scope: !6004)
!6012 = !DILocation(line: 34, column: 5, scope: !6004)
!6013 = distinct !DISubprogram(name: "_read", scope: !634, file: !634, line: 37, type: !6014, scopeLine: 38, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !831, retainedNodes: !6016)
!6014 = !DISubroutineType(types: !6015)
!6015 = !{!13, !13, !639, !13}
!6016 = !{!6017, !6018, !6019}
!6017 = !DILocalVariable(name: "file", arg: 1, scope: !6013, file: !634, line: 37, type: !13)
!6018 = !DILocalVariable(name: "ptr", arg: 2, scope: !6013, file: !634, line: 37, type: !639)
!6019 = !DILocalVariable(name: "len", arg: 3, scope: !6013, file: !634, line: 37, type: !13)
!6020 = !DILocation(line: 0, scope: !6013)
!6021 = !DILocation(line: 39, column: 5, scope: !6013)
!6022 = distinct !DISubprogram(name: "_write", scope: !634, file: !634, line: 52, type: !6014, scopeLine: 53, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !831, retainedNodes: !6023)
!6023 = !{!6024, !6025, !6026, !6027}
!6024 = !DILocalVariable(name: "file", arg: 1, scope: !6022, file: !634, line: 52, type: !13)
!6025 = !DILocalVariable(name: "ptr", arg: 2, scope: !6022, file: !634, line: 52, type: !639)
!6026 = !DILocalVariable(name: "len", arg: 3, scope: !6022, file: !634, line: 52, type: !13)
!6027 = !DILocalVariable(name: "i", scope: !6022, file: !634, line: 54, type: !13)
!6028 = !DILocation(line: 0, scope: !6022)
!6029 = !DILocation(line: 56, column: 19, scope: !6030)
!6030 = distinct !DILexicalBlock(scope: !6031, file: !634, line: 56, column: 5)
!6031 = distinct !DILexicalBlock(scope: !6022, file: !634, line: 56, column: 5)
!6032 = !DILocation(line: 56, column: 5, scope: !6031)
!6033 = !DILocation(line: 57, column: 26, scope: !6034)
!6034 = distinct !DILexicalBlock(scope: !6030, file: !634, line: 56, column: 31)
!6035 = !DILocation(line: 57, column: 22, scope: !6034)
!6036 = !DILocation(line: 57, column: 9, scope: !6034)
!6037 = !DILocation(line: 56, column: 27, scope: !6030)
!6038 = distinct !{!6038, !6032, !6039}
!6039 = !DILocation(line: 58, column: 5, scope: !6031)
!6040 = !DILocation(line: 60, column: 5, scope: !6022)
!6041 = !DILocation(line: 0, scope: !633)
!6042 = !DILocation(line: 70, column: 5, scope: !633)
!6043 = !{i64 1109}
!6044 = !DILocation(line: 72, column: 14, scope: !6045)
!6045 = distinct !DILexicalBlock(scope: !633, file: !634, line: 72, column: 9)
!6046 = !DILocation(line: 72, column: 11, scope: !6045)
!6047 = !DILocation(line: 72, column: 9, scope: !633)
!6048 = !DILocation(line: 78, column: 32, scope: !6049)
!6049 = distinct !DILexicalBlock(scope: !633, file: !634, line: 78, column: 9)
!6050 = !DILocation(line: 78, column: 15, scope: !6049)
!6051 = !DILocation(line: 89, column: 1, scope: !633)
!6052 = !DILocation(line: 78, column: 9, scope: !633)
!6053 = distinct !DISubprogram(name: "_exit", scope: !634, file: !634, line: 91, type: !783, scopeLine: 92, flags: DIFlagPrototyped | DIFlagNoReturn, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !831, retainedNodes: !6054)
!6054 = !{!6055}
!6055 = !DILocalVariable(name: "__status", arg: 1, scope: !6053, file: !634, line: 91, type: !13)
!6056 = !DILocation(line: 0, scope: !6053)
!6057 = !DILocation(line: 93, column: 5, scope: !6053)
!6058 = !DILocation(line: 94, column: 5, scope: !6053)
!6059 = distinct !{!6059, !6058, !6060}
!6060 = !DILocation(line: 96, column: 5, scope: !6053)
!6061 = distinct !DISubprogram(name: "_kill", scope: !634, file: !634, line: 100, type: !6062, scopeLine: 101, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !831, retainedNodes: !6064)
!6062 = !DISubroutineType(types: !6063)
!6063 = !{!13, !13, !13}
!6064 = !{!6065, !6066}
!6065 = !DILocalVariable(name: "pid", arg: 1, scope: !6061, file: !634, line: 100, type: !13)
!6066 = !DILocalVariable(name: "sig", arg: 2, scope: !6061, file: !634, line: 100, type: !13)
!6067 = !DILocation(line: 0, scope: !6061)
!6068 = !DILocation(line: 102, column: 5, scope: !6061)
!6069 = !DILocation(line: 103, column: 5, scope: !6061)
!6070 = distinct !DISubprogram(name: "_getpid", scope: !634, file: !634, line: 107, type: !6071, scopeLine: 108, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !831, retainedNodes: !1341)
!6071 = !DISubroutineType(types: !6072)
!6072 = !{!6073}
!6073 = !DIDerivedType(tag: DW_TAG_typedef, name: "pid_t", file: !638, line: 174, baseType: !6074)
!6074 = !DIDerivedType(tag: DW_TAG_typedef, name: "__pid_t", file: !680, line: 52, baseType: !13)
!6075 = !DILocation(line: 109, column: 5, scope: !6070)
!6076 = !DILocation(line: 110, column: 5, scope: !6070)
